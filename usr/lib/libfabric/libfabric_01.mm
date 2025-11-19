uint64_t monitor_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 48) + 32))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 3104);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 3104);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 3176) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_writev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(*(a1 + 80) + 48) + 40))();
  if (v7)
  {
    return v7;
  }

  if (!a4)
  {
    v11 = *(*(a1 + 88) + 48);
    v12 = (v11 + 80);
    v14 = (v11 + 3248);
    v8 = 1;
LABEL_25:
    *v14 += v8;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = (a2 + 8);
  do
  {
    v10 = *v9;
    v9 += 2;
    v8 += v10;
    --a4;
  }

  while (a4);
  v11 = *(*(a1 + 88) + 48);
  if (v8 >= 0x41)
  {
    v13 = 1;
    v15 = 2;
    v16 = 3;
    v17 = 7;
    if (v8 >= 0x400001)
    {
      v17 = 8;
    }

    if (v8 < 0x100001)
    {
      v17 = 6;
    }

    if (v8 < 0x40001)
    {
      v17 = 5;
    }

    if (v8 <= 0x10000)
    {
      v17 = 4;
    }

    if (v8 > 0x1000)
    {
      v16 = v17;
    }

    if (v8 >= 0x401)
    {
      v15 = v16;
    }

    if (v8 >= 0x201)
    {
      v13 = v15;
    }

    v12 = (v11 + 80);
    ++*(v11 + 8 * v13 + 3248);
    goto LABEL_24;
  }

  v12 = (v11 + 80);
  ++*(v11 + 3248);
  if (v8)
  {
    v13 = 0;
LABEL_24:
    v14 = (v11 + 8 * v13 + 3320);
    goto LABEL_25;
  }

LABEL_26:
  v18 = *(v11 + 6128) + 1;
  *(v11 + 6128) = v18;
  if (v18 >= dword_2A189233C)
  {
    *(v11 + 6128) = 0;
    v19 = atomic_load((*(v11 + 6136) + 6048));
    if (v19)
    {
      memcpy(*(v11 + 6136), v12, 0x17A0uLL);
      atomic_fetch_xor((*(v11 + 6136) + 6048), 1u);
      bzero(v12, 0x17A0uLL);
    }
  }

  return v7;
}

uint64_t monitor_writemsg(uint64_t a1, void *a2)
{
  v4 = (*(*(*(a1 + 80) + 48) + 48))();
  if (v4)
  {
    return v4;
  }

  v5 = a2[2];
  if (!v5)
  {
    v9 = *(*(a1 + 88) + 48);
    v10 = (v9 + 80);
    v12 = (v9 + 3392);
    v6 = 1;
LABEL_25:
    *v12 += v6;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = (*a2 + 8);
  do
  {
    v8 = *v7;
    v7 += 2;
    v6 += v8;
    --v5;
  }

  while (v5);
  v9 = *(*(a1 + 88) + 48);
  if (v6 >= 0x41)
  {
    v11 = 1;
    v13 = 2;
    v14 = 3;
    v15 = 7;
    if (v6 >= 0x400001)
    {
      v15 = 8;
    }

    if (v6 < 0x100001)
    {
      v15 = 6;
    }

    if (v6 < 0x40001)
    {
      v15 = 5;
    }

    if (v6 <= 0x10000)
    {
      v15 = 4;
    }

    if (v6 > 0x1000)
    {
      v14 = v15;
    }

    if (v6 >= 0x401)
    {
      v13 = v14;
    }

    if (v6 >= 0x201)
    {
      v11 = v13;
    }

    v10 = (v9 + 80);
    ++*(v9 + 8 * v11 + 3392);
    goto LABEL_24;
  }

  v10 = (v9 + 80);
  ++*(v9 + 3392);
  if (v6)
  {
    v11 = 0;
LABEL_24:
    v12 = (v9 + 8 * v11 + 3464);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *(v9 + 6128) + 1;
  *(v9 + 6128) = v16;
  if (v16 >= dword_2A189233C)
  {
    *(v9 + 6128) = 0;
    v17 = atomic_load((*(v9 + 6136) + 6048));
    if (v17)
    {
      memcpy(*(v9 + 6136), v10, 0x17A0uLL);
      atomic_fetch_xor((*(v9 + 6136) + 6048), 1u);
      bzero(v10, 0x17A0uLL);
    }
  }

  return v4;
}

uint64_t monitor_inject_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 48) + 56))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 3536);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 3536);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 3608) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_writedata(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 48) + 64))(*(a1 + 80));
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 3680);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 3680);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 3752) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_inject_writedata(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 48) + 72))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 1664);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 1664);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 1736) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_trecv(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 56) + 8))();
  if (!v2)
  {
    v3 = *(*(a1 + 88) + 48);
    ++*(v3 + 512);
    v4 = *(v3 + 6128) + 1;
    *(v3 + 6128) = v4;
    if (v4 >= dword_2A189233C)
    {
      *(v3 + 6128) = 0;
      v5 = atomic_load((*(v3 + 6136) + 6048));
      if (v5)
      {
        memcpy(*(v3 + 6136), (v3 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v3 + 6136) + 6048), 1u);
        bzero((v3 + 80), 0x17A0uLL);
      }
    }
  }

  return v2;
}

uint64_t monitor_trecvv(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 56) + 16))();
  if (!v2)
  {
    v3 = *(*(a1 + 88) + 48);
    ++*(v3 + 656);
    v4 = *(v3 + 6128) + 1;
    *(v3 + 6128) = v4;
    if (v4 >= dword_2A189233C)
    {
      *(v3 + 6128) = 0;
      v5 = atomic_load((*(v3 + 6136) + 6048));
      if (v5)
      {
        memcpy(*(v3 + 6136), (v3 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v3 + 6136) + 6048), 1u);
        bzero((v3 + 80), 0x17A0uLL);
      }
    }
  }

  return v2;
}

uint64_t monitor_trecvmsg(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 56) + 24))();
  if (!v2)
  {
    v3 = *(*(a1 + 88) + 48);
    ++*(v3 + 800);
    v4 = *(v3 + 6128) + 1;
    *(v3 + 6128) = v4;
    if (v4 >= dword_2A189233C)
    {
      *(v3 + 6128) = 0;
      v5 = atomic_load((*(v3 + 6136) + 6048));
      if (v5)
      {
        memcpy(*(v3 + 6136), (v3 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v3 + 6136) + 6048), 1u);
        bzero((v3 + 80), 0x17A0uLL);
      }
    }
  }

  return v2;
}

uint64_t monitor_tsend(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 56) + 32))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 1808);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 1808);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 1880) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_tsendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(*(a1 + 80) + 56) + 40))();
  if (v7)
  {
    return v7;
  }

  if (!a4)
  {
    v11 = *(*(a1 + 88) + 48);
    v12 = (v11 + 80);
    v14 = (v11 + 1952);
    v8 = 1;
LABEL_25:
    *v14 += v8;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = (a2 + 8);
  do
  {
    v10 = *v9;
    v9 += 2;
    v8 += v10;
    --a4;
  }

  while (a4);
  v11 = *(*(a1 + 88) + 48);
  if (v8 >= 0x41)
  {
    v13 = 1;
    v15 = 2;
    v16 = 3;
    v17 = 7;
    if (v8 >= 0x400001)
    {
      v17 = 8;
    }

    if (v8 < 0x100001)
    {
      v17 = 6;
    }

    if (v8 < 0x40001)
    {
      v17 = 5;
    }

    if (v8 <= 0x10000)
    {
      v17 = 4;
    }

    if (v8 > 0x1000)
    {
      v16 = v17;
    }

    if (v8 >= 0x401)
    {
      v15 = v16;
    }

    if (v8 >= 0x201)
    {
      v13 = v15;
    }

    v12 = (v11 + 80);
    ++*(v11 + 8 * v13 + 1952);
    goto LABEL_24;
  }

  v12 = (v11 + 80);
  ++*(v11 + 1952);
  if (v8)
  {
    v13 = 0;
LABEL_24:
    v14 = (v11 + 8 * v13 + 2024);
    goto LABEL_25;
  }

LABEL_26:
  v18 = *(v11 + 6128) + 1;
  *(v11 + 6128) = v18;
  if (v18 >= dword_2A189233C)
  {
    *(v11 + 6128) = 0;
    v19 = atomic_load((*(v11 + 6136) + 6048));
    if (v19)
    {
      memcpy(*(v11 + 6136), v12, 0x17A0uLL);
      atomic_fetch_xor((*(v11 + 6136) + 6048), 1u);
      bzero(v12, 0x17A0uLL);
    }
  }

  return v7;
}

uint64_t monitor_tsendmsg(uint64_t a1, void *a2)
{
  v4 = (*(*(*(a1 + 80) + 56) + 48))();
  if (v4)
  {
    return v4;
  }

  v5 = a2[2];
  if (!v5)
  {
    v9 = *(*(a1 + 88) + 48);
    v10 = (v9 + 80);
    v12 = (v9 + 2096);
    v6 = 1;
LABEL_25:
    *v12 += v6;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = (*a2 + 8);
  do
  {
    v8 = *v7;
    v7 += 2;
    v6 += v8;
    --v5;
  }

  while (v5);
  v9 = *(*(a1 + 88) + 48);
  if (v6 >= 0x41)
  {
    v11 = 1;
    v13 = 2;
    v14 = 3;
    v15 = 7;
    if (v6 >= 0x400001)
    {
      v15 = 8;
    }

    if (v6 < 0x100001)
    {
      v15 = 6;
    }

    if (v6 < 0x40001)
    {
      v15 = 5;
    }

    if (v6 <= 0x10000)
    {
      v15 = 4;
    }

    if (v6 > 0x1000)
    {
      v14 = v15;
    }

    if (v6 >= 0x401)
    {
      v13 = v14;
    }

    if (v6 >= 0x201)
    {
      v11 = v13;
    }

    v10 = (v9 + 80);
    ++*(v9 + 8 * v11 + 2096);
    goto LABEL_24;
  }

  v10 = (v9 + 80);
  ++*(v9 + 2096);
  if (v6)
  {
    v11 = 0;
LABEL_24:
    v12 = (v9 + 8 * v11 + 2168);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *(v9 + 6128) + 1;
  *(v9 + 6128) = v16;
  if (v16 >= dword_2A189233C)
  {
    *(v9 + 6128) = 0;
    v17 = atomic_load((*(v9 + 6136) + 6048));
    if (v17)
    {
      memcpy(*(v9 + 6136), v10, 0x17A0uLL);
      atomic_fetch_xor((*(v9 + 6136) + 6048), 1u);
      bzero(v10, 0x17A0uLL);
    }
  }

  return v4;
}

uint64_t monitor_tinject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 56) + 56))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 2240);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 2240);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 2312) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_tsenddata(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 56) + 64))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 2384);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 2384);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 2456) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_tinjectdata(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 56) + 72))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 2528);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 2528);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 2600) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t sock_ep_recvmsg(void *a1, uint64_t *a2, uint64_t a3)
{
  if ((*a1 - 5) < 2)
  {
    v4 = 55;
    v5 = a1;
    goto LABEL_5;
  }

  if (*a1 == 3)
  {
    v5 = *(a1[28] + 64);
    v4 = 22;
LABEL_5:
    if (!*(v5 + 84))
    {
      return -258;
    }

    v6 = a1[v4] & ((4 * a3) >> 63);
    v7 = v6 | a3;
    if (((v6 | a3) & 0x100000) == 0 || (result = sock_queue_msg_op(a1, a2, v6 | a3, 0), result == 1))
    {
      if ((v7 & 0x80000) != 0)
      {
        v21 = a2[3];
        v22 = a2[4];

        return sock_rx_peek_recv(v5, v21, 0, -1, v22, v7, 0);
      }

      else if ((v7 & 0x800000000000000) != 0)
      {
        v23 = a2[4];
        v24 = *a2;
        v25 = a2[2];

        return sock_rx_claim_recv(v5, v23, v7, 0, -1, 0, v24, v25);
      }

      else
      {
        pthread_mutex_lock((v5 + 352));
        v9 = sock_rx_new_entry(v5);
        pthread_mutex_unlock((v5 + 352));
        if (v9)
        {
          *v9 = 13;
          v10 = a2[2];
          *(v9 + 2) = v10;
          v11 = a2[4];
          v9[4] = v7;
          v9[5] = v11;
          v12 = -1;
          if ((*(v5 + 431) & 8) != 0)
          {
            v12 = a2[3];
          }

          v13 = a2[5];
          v9[6] = v12;
          v9[7] = v13;
          v9[9] = -1;
          *(v9 + 12) = 0;
          if (v10)
          {
            v14 = 0;
            v15 = 0;
            v16 = v9 + 12;
            do
            {
              *(v16 - 1) = *(*a2 + v14);
              v17 = *(*a2 + v14 + 8);
              *v16 = v17;
              v16 += 3;
              v9[3] += v17;
              ++v15;
              v14 += 16;
            }

            while (v15 < a2[2]);
          }

          pthread_mutex_lock((v5 + 352));
          v18 = *(v5 + 312);
          v19 = *v18;
          v9[35] = *v18;
          v9[36] = v18;
          *(v19 + 8) = v9 + 35;
          *v18 = (v9 + 35);
          *(v5 + 416) = v5 + 320;
          pthread_mutex_unlock((v5 + 352));
          return 0;
        }

        else
        {
          return -12;
        }
      }
    }

    return result;
  }

  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v20 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_ep_recvmsg", 82, "Invalid ep type\n");
    *__error() = v20;
  }

  return -22;
}

uint64_t sock_ep_sendmsg(void *a1, uint64_t *a2, unint64_t a3)
{
  v31 = 0;
  v32 = 0;
  __src = 0;
  v30 = 0;
  v28 = 0;
  if (*a1 == 7)
  {
    v6 = a1[39];
    v8 = 53;
    v7 = a1;
  }

  else
  {
    if (*a1 != 3)
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v11 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_ep_sendmsg", 205, "Invalid EP type\n");
        *__error() = v11;
      }

      return -22;
    }

    v6 = a1[28];
    v7 = *(v6 + 72);
    if (*(v7 + 204))
    {
      v7 = *(v7 + 304);
    }

    v8 = 12;
  }

  if (!*(v7 + 202))
  {
    return -258;
  }

  v9 = a1[v8];
  LODWORD(result) = sock_ep_get_conn(v6, v7, a2[3], &v28);
  if (result)
  {
    return result;
  }

  v12 = v9 & ((4 * a3) >> 63);
  v13 = ~(2 * a3) & 0x8000000 | a3;
  v14 = v13 | v12;
  if (((v13 | v12) & 0x100000) == 0 || (result = sock_queue_msg_op(a1, a2, v13 | v12, 1), result == 1))
  {
    v32 = 0;
    v15 = a2[2];
    if ((v14 & 0x2000000) == 0)
    {
      BYTE1(v32) = a2[2];
      v16 = 24 * v15;
LABEL_24:
      v19 = 64;
      if ((v14 & 0x20000) == 0)
      {
        v19 = 56;
      }

      v20 = v16 + v19;
      sock_tx_ctx_start(v7);
      if (*(v7 + 88) - *(v7 + 112) + *(v7 + 104) >= v20)
      {
        if (a2[2])
        {
          v21 = **a2;
        }

        else
        {
          v21 = 0;
        }

        sock_tx_ctx_write_op_send(v7, &v32, v14, a2[4], a2[3], v21, v6, v28);
        if ((v14 & 0x20000) != 0)
        {
          sock_tx_ctx_write(v7, a2 + 40, 8uLL);
        }

        v22 = a2[2];
        if ((v14 & 0x2000000) != 0)
        {
          if (v22)
          {
            v26 = 0;
            v27 = 0;
            do
            {
              sock_tx_ctx_write(v7, *(*a2 + v26), *(*a2 + v26 + 8));
              ++v27;
              v26 += 16;
            }

            while (v27 < a2[2]);
          }
        }

        else if (v22)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = (*a2 + v23);
            __src = *v25;
            v30 = v25[1];
            sock_tx_ctx_write(v7, &__src, 0x18uLL);
            ++v24;
            v23 += 16;
          }

          while (v24 < a2[2]);
        }

        sock_tx_ctx_commit(v7);
        return 0;
      }

      else
      {
        sock_tx_ctx_abort(v7);
        return -35;
      }
    }

    v16 = 0;
    if (!v15)
    {
      goto LABEL_23;
    }

    v17 = (*a2 + 8);
    do
    {
      v18 = *v17;
      v17 += 2;
      v16 += v18;
      --v15;
    }

    while (v15);
    if (v16 <= 0xFF)
    {
LABEL_23:
      BYTE1(v32) = v16;
      goto LABEL_24;
    }

    return -22;
  }

  return result;
}

uint64_t sock_ep_recv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[1] = a3;
  v9 = a4;
  v8[0] = a2;
  v7[0] = v8;
  v7[1] = &v9;
  v7[2] = 1;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = 0;
  return sock_ep_recvmsg(a1, v7, 0x2000000000000000);
}

uint64_t sock_ep_recvv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = 0;
  return sock_ep_recvmsg(a1, v7, 0x2000000000000000);
}

uint64_t sock_ep_send(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[1] = a3;
  v9 = a4;
  v8[0] = a2;
  v7[0] = v8;
  v7[1] = &v9;
  v7[2] = 1;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = 0;
  return sock_ep_sendmsg(a1, v7, 0x2000000000000000uLL);
}

uint64_t sock_ep_sendv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = 0;
  return sock_ep_sendmsg(a1, v7, 0x2000000000000000uLL);
}

uint64_t sock_ep_inject(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v5[0] = v6;
  v5[1] = 0;
  v5[2] = 1;
  v5[3] = a4;
  v5[4] = 0;
  v5[5] = 0;
  return sock_ep_sendmsg(a1, v5, 0x3000000002000000uLL);
}

uint64_t sock_ep_senddata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a2;
  v9[1] = a3;
  v8[0] = v9;
  v8[1] = a4;
  v8[2] = 1;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a5;
  return sock_ep_sendmsg(a1, v8, 0x2000000000020000uLL);
}

uint64_t sock_ep_injectdata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = v7;
  v6[1] = 0;
  v6[2] = 1;
  v6[3] = a5;
  v6[4] = 0;
  v6[5] = a4;
  return sock_ep_sendmsg(a1, v6, 0x3000000002020000uLL);
}

uint64_t sock_ep_trecvmsg(void *a1, uint64_t *a2, uint64_t a3)
{
  if ((*a1 - 5) < 2)
  {
    v4 = 55;
    v5 = a1;
    goto LABEL_5;
  }

  if (*a1 == 3)
  {
    v5 = *(a1[28] + 64);
    v4 = 22;
LABEL_5:
    if (!*(v5 + 84))
    {
      return -258;
    }

    v6 = a1[v4] & ((4 * a3) >> 63);
    v7 = v6 | a3;
    v8 = (v6 | a3) & 0xFFFFFFFFFFFEFFFFLL;
    if (((v6 | a3) & 0x100000) == 0 || (result = sock_queue_tmsg_op(a1, a2, (v6 | a3) & 0xFFFFFFFFFFFEFFFFLL, 2), result == 1))
    {
      if ((v7 & 0x80000) != 0)
      {
        v15 = a2[3];
        v16 = a2[4];
        v17 = a2[5];
        v18 = a2[6];

        return sock_rx_peek_recv(v5, v15, v16, v17, v18, v8, 1);
      }

      else if ((v7 & 0x800000000000000) != 0)
      {
        v20 = a2[5];
        v19 = a2[6];
        v21 = a2[4];
        v22 = *a2;
        v23 = a2[2];

        return sock_rx_claim_recv(v5, v19, v8, v21, v20, 1, v22, v23);
      }

      else
      {
        pthread_mutex_lock((v5 + 352));
        v10 = sock_rx_new_entry(v5);
        pthread_mutex_unlock((v5 + 352));
        if (v10)
        {
          *v10 = 14;
          v11 = a2[2];
          *(v10 + 2) = v11;
          v12 = a2[6];
          v10[4] = v8;
          v10[5] = v12;
          if ((*(v5 + 431) & 8) != 0)
          {
            v13 = a2[3];
          }

          else
          {
            v13 = -1;
          }

          v24 = a2[7];
          v10[6] = v13;
          v10[7] = v24;
          *(v10 + 4) = *(a2 + 2);
          *(v10 + 12) = 1;
          if (v11)
          {
            v25 = 0;
            v26 = 0;
            v27 = v10 + 12;
            do
            {
              *(v27 - 1) = *(*a2 + v25);
              v28 = *(*a2 + v25 + 8);
              *v27 = v28;
              v27 += 3;
              v10[3] += v28;
              ++v26;
              v25 += 16;
            }

            while (v26 < a2[2]);
          }

          pthread_mutex_lock((v5 + 352));
          v29 = *(v5 + 312);
          v30 = *v29;
          v10[35] = *v29;
          v10[36] = v29;
          *(v30 + 8) = v10 + 35;
          *v29 = (v10 + 35);
          *(v5 + 416) = v5 + 320;
          pthread_mutex_unlock((v5 + 352));
          return 0;
        }

        else
        {
          return -12;
        }
      }
    }

    return result;
  }

  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v14 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_ep_trecvmsg", 424, "Invalid ep type\n");
    *__error() = v14;
  }

  return -22;
}

uint64_t sock_ep_tsendmsg(void *a1, uint64_t *a2, unint64_t a3)
{
  v31 = 0;
  v32 = 0;
  __src = 0;
  v30 = 0;
  v28 = 0;
  if (*a1 == 7)
  {
    v8 = a1 + 53;
    v6 = a1[39];
    v7 = a1;
  }

  else
  {
    if (*a1 != 3)
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v11 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_ep_tsendmsg", 555, "Invalid EP type\n");
        *__error() = v11;
      }

      return -22;
    }

    v6 = a1[28];
    v7 = *(v6 + 72);
    if (*(v7 + 204))
    {
      v7 = *(v7 + 304);
    }

    v8 = a1 + 12;
  }

  if (!*(v7 + 202))
  {
    return -258;
  }

  v9 = *v8;
  LODWORD(result) = sock_ep_get_conn(v6, v7, a2[3], &v28);
  if (result)
  {
    return result;
  }

  v12 = v9 & ((4 * a3) >> 63);
  v13 = ~(2 * a3) & 0x8000000 | a3;
  v14 = v13 | v12;
  if (((v13 | v12) & 0x100000) == 0 || (result = sock_queue_tmsg_op(a1, a2, v13 | v12, 3), result == 1))
  {
    v32 = 1;
    v15 = a2[2];
    if ((v14 & 0x2000000) == 0)
    {
      v16 = 24 * v15;
LABEL_24:
      BYTE1(v32) = a2[2];
LABEL_25:
      v19 = 72;
      if ((v14 & 0x20000) == 0)
      {
        v19 = 64;
      }

      v20 = v16 + v19;
      sock_tx_ctx_start(v7);
      if (*(v7 + 88) - *(v7 + 112) + *(v7 + 104) >= v20)
      {
        if (a2[2])
        {
          v21 = **a2;
        }

        else
        {
          v21 = 0;
        }

        sock_tx_ctx_write_op_tsend(v7, &v32, v14, a2[6], a2[3], v21, v6, v28, a2[4]);
        if ((v14 & 0x20000) != 0)
        {
          sock_tx_ctx_write(v7, a2 + 56, 8uLL);
        }

        v22 = a2[2];
        if ((v14 & 0x2000000) != 0)
        {
          if (v22)
          {
            v26 = 0;
            v27 = 0;
            do
            {
              sock_tx_ctx_write(v7, *(*a2 + v26), *(*a2 + v26 + 8));
              ++v27;
              v26 += 16;
            }

            while (v27 < a2[2]);
          }
        }

        else if (v22)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = (*a2 + v23);
            __src = *v25;
            v30 = v25[1];
            sock_tx_ctx_write(v7, &__src, 0x18uLL);
            ++v24;
            v23 += 16;
          }

          while (v24 < a2[2]);
        }

        sock_tx_ctx_commit(v7);
        return 0;
      }

      else
      {
        sock_tx_ctx_abort(v7);
        return -35;
      }
    }

    v16 = 0;
    if (!v15)
    {
      goto LABEL_24;
    }

    v17 = (*a2 + 8);
    do
    {
      v18 = *v17;
      v17 += 2;
      v16 += v18;
      --v15;
    }

    while (v15);
    BYTE1(v32) = v16;
    if (v16 <= 0xFF)
    {
      goto LABEL_25;
    }

    return -22;
  }

  return result;
}

uint64_t sock_ep_trecv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[1] = a3;
  v11 = a4;
  v10[0] = a2;
  v9[0] = v10;
  v9[1] = &v11;
  v9[2] = 1;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v9[6] = a8;
  v9[7] = 0;
  return sock_ep_trecvmsg(a1, v9, 0x2000000000000000);
}

uint64_t sock_ep_trecvv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v9[6] = a8;
  v9[7] = 0;
  return sock_ep_trecvmsg(a1, v9, 0x2000000000000000);
}

uint64_t sock_ep_tsend(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[1] = a3;
  v10 = a4;
  v9[0] = a2;
  v8[0] = v9;
  v8[1] = &v10;
  v8[2] = 1;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = 0;
  v8[6] = a7;
  v8[7] = 0;
  return sock_ep_tsendmsg(a1, v8, 0x2000000000000000uLL);
}

uint64_t sock_ep_tsendv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = 0;
  v8[6] = a7;
  v8[7] = 0;
  return sock_ep_tsendmsg(a1, v8, 0x2000000000000000uLL);
}

uint64_t sock_ep_tinject(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = v7;
  v6[1] = 0;
  v6[2] = 1;
  v6[3] = a4;
  v6[4] = a5;
  memset(&v6[5], 0, 24);
  return sock_ep_tsendmsg(a1, v6, 0x3000000002000000uLL);
}

uint64_t sock_ep_tsenddata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = v10;
  v9[1] = a4;
  v9[2] = 1;
  v9[3] = a6;
  v9[4] = a7;
  v9[5] = 0;
  v9[6] = a8;
  v9[7] = a5;
  return sock_ep_tsendmsg(a1, v9, 0x2000000000020000uLL);
}

uint64_t sock_ep_tinjectdata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a2;
  v8[1] = a3;
  v7[0] = v8;
  v7[1] = 0;
  v7[2] = 1;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = 0;
  v7[6] = 0;
  v7[7] = a4;
  return sock_ep_tsendmsg(a1, v7, 0x3000000002020000uLL);
}

uint64_t sock_mr_verify_key(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  pthread_mutex_lock((a1 + 168));
  if (ofi_mr_map_verify(a1 + 256, a3, a4, a2, a5, &v12))
  {
    if (fi_log_enabled(&sock_prov, 0, 8))
    {
      v10 = *__error();
      fi_log(&sock_prov, 0, 8, "sock_mr_verify_key", 116, "MR check failed\n");
      *__error() = v10;
    }

    v12 = 0;
  }

  pthread_mutex_unlock((a1 + 168));
  return v12;
}

uint64_t sock_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10[0] = a2;
  v10[1] = a3;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v11[0] = v10;
  v11[1] = 1;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a9;
  v11[6] = 0;
  v11[7] = 0;
  return sock_regattr(a1, v11, a7, a8);
}

uint64_t sock_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a9;
  v10[6] = 0;
  v10[7] = 0;
  return sock_regattr(a1, v10, a7, a8);
}

uint64_t sock_regattr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4294967274;
  if (a2 && *a1 == 2 && *(a2 + 8))
  {
    v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00402DF11D18uLL);
    if (v9)
    {
      v10 = v9;
      memset(v15, 0, sizeof(v15));
      v14 = 0;
      ofi_mr_update_attr(*(*(a1 + 40) + 32), *(a1 - 112), a2, v15);
      pthread_mutex_lock((a1 + 48));
      v11 = *(a2 + 40);
      *v10 = 12;
      v10[1] = v11;
      v10[2] = &sock_mr_fi_ops;
      v10[5] = a1 - 120;
      v10[7] = a3;
      v4 = ofi_mr_map_insert(a1 + 136, v15, &v14, v10, a3);
      if (v4)
      {
        pthread_mutex_unlock((a1 + 48));
        free(v10);
      }

      else
      {
        v12 = v14;
        v10[6] = v14;
        v10[3] = v12;
        v10[4] = v12;
        pthread_mutex_unlock((a1 + 48));
        *a4 = v10;
        atomic_fetch_add((a1 + 112), 1u);
      }
    }

    else
    {
      return 4294967284;
    }
  }

  return v4;
}

uint64_t sock_mr_close(void *a1)
{
  v2 = a1[5];
  pthread_mutex_lock((v2 + 168));
  v3 = ofi_mr_map_remove(v2 + 256, a1[6]);
  if (v3)
  {
    v4 = v3;
    if (fi_log_enabled(&sock_prov, 0, 8))
    {
      v5 = *__error();
      fi_log(&sock_prov, 0, 8, "sock_mr_close", 58, "MR Erase error %d \n", v4);
      *__error() = v5;
    }
  }

  pthread_mutex_unlock((v2 + 168));
  atomic_fetch_add((v2 + 232), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t sock_mr_bind(uint64_t a1, void *a2, __int16 a3)
{
  if (*a2 == 15)
  {
    if (*(a1 + 40) == a2[4])
    {
      if ((a3 & 0x2000) != 0)
      {
        v3 = 64;
        goto LABEL_12;
      }

      return 0;
    }
  }

  else if (*a2 == 14 && *(a1 + 40) == a2[4])
  {
    if ((a3 & 0x2000) != 0)
    {
      v3 = 72;
LABEL_12:
      v4 = 0;
      *(a1 + v3) = a2;
      return v4;
    }

    return 0;
  }

  return 4294967274;
}

uint64_t sock_dgram_ep(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  result = sock_alloc_endpoint(a1, a2, &v6, a4, 3);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sock_dgram_sep(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  result = sock_alloc_endpoint(a1, a2, &v6, a4, 4);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sock_cntr_add_tx_ctx(uint64_t a1, uint64_t a2)
{
  result = fid_list_insert((a1 + 208), (a1 + 224), a2);
  if (result)
  {
    result = fi_log_enabled(&sock_prov, 0, 4);
    if (result)
    {
      v4 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_cntr_add_tx_ctx", 62, "Error in adding ctx to progress list\n");
      result = __error();
      *result = v4;
    }
  }

  else
  {
    atomic_fetch_add((a1 + 44), 1u);
  }

  return result;
}

uint64_t sock_cntr_add_rx_ctx(uint64_t a1, uint64_t a2)
{
  result = fid_list_insert((a1 + 192), (a1 + 224), a2);
  if (result)
  {
    result = fi_log_enabled(&sock_prov, 0, 4);
    if (result)
    {
      v4 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_cntr_add_rx_ctx", 80, "Error in adding ctx to progress list\n");
      result = __error();
      *result = v4;
    }
  }

  else
  {
    atomic_fetch_add((a1 + 44), 1u);
  }

  return result;
}

uint64_t sock_cntr_progress(uint64_t a1)
{
  if (*(*(a1 + 32) + 248) != 1)
  {
    pthread_mutex_lock((a1 + 224));
    for (i = *(a1 + 208); i != (a1 + 208); i = *i)
    {
      v3 = i[2];
      v4 = *(*(a1 + 32) + 288);
      if (*(v3 + 204))
      {
        sock_pe_progress_tx_ctx(v4, *(v3 + 304));
      }

      else
      {
        sock_pe_progress_ep_tx(v4, *(v3 + 312));
      }
    }

    for (j = *(a1 + 192); j != (a1 + 192); j = *j)
    {
      v6 = j[2];
      v7 = *(*(a1 + 32) + 288);
      if (*(v6 + 100))
      {
        sock_pe_progress_rx_ctx(v7, *(v6 + 216));
      }

      else
      {
        sock_pe_progress_ep_rx(v7, *(v6 + 224));
      }
    }

    pthread_mutex_unlock((a1 + 224));
  }

  return 0;
}

uint64_t sock_cntr_check_trigger_list(uint64_t a1)
{
  pthread_mutex_lock((a1 + 288));
  v2 = *(a1 + 352);
  if (v2 != (a1 + 352))
  {
    while (1)
    {
      v3 = *v2;
      v4 = atomic_load((a1 + 40));
      if (v4 >= *(v2 - 2))
      {
        break;
      }

LABEL_26:
      v2 = v3;
      if (v3 == (a1 + 352))
      {
        goto LABEL_30;
      }
    }

    v5 = *(v2 - 4);
    if (v5 > 4)
    {
      if (v5 <= 8)
      {
        if ((v5 - 6) < 3)
        {
          v6 = sock_ep_tx_atomic(v2[3], (v2 + 5), (v2 + 54), 0, v2[70], (v2 + 71), 0, v2[87], v2[4] & 0xFFFFFFFFFFEFFFFFLL);
          goto LABEL_24;
        }

        if (v5 == 5)
        {
          v6 = sock_ep_rma_writemsg(v2[3], v2 + 5, v2[4] & 0xFFFFFFFFFFEFFFFFLL);
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      if (v5 == 9)
      {
        v10 = *(v2[2] + 96);
        v11 = v10[1];
        v9 = *(*(*v10 + 24) + 32);
        goto LABEL_22;
      }

      if (v5 == 10)
      {
        v7 = *(v2[2] + 96);
        v8 = v7[1];
        v9 = *(*(*v7 + 24) + 24);
LABEL_22:
        v9();
LABEL_25:
        v12 = *v2;
        v13 = v2[1];
        *v13 = *v2;
        *(v12 + 8) = v13;
        free(v2 - 2);
        goto LABEL_26;
      }

LABEL_28:
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v14 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_cntr_check_trigger_list", 198, "unsupported op\n");
        *__error() = v14;
      }

      goto LABEL_25;
    }

    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v6 = sock_ep_sendmsg(v2[3], v2 + 5, v2[4] & 0xFFFFFFFFFFEFFFFFLL);
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      v6 = sock_ep_recvmsg(v2[3], v2 + 5, v2[4] & 0xFFFFFFFFFFEFFFFFLL);
    }

    else if (v5 == 2)
    {
      v6 = sock_ep_trecvmsg(v2[3], v2 + 5, v2[4] & 0xFFFFFFFFFFEFFFFFLL);
    }

    else if (v5 == 3)
    {
      v6 = sock_ep_tsendmsg(v2[3], v2 + 5, v2[4] & 0xFFFFFFFFFFEFFFFFLL);
    }

    else
    {
      v6 = sock_ep_rma_readmsg(v2[3], (v2 + 5), v2[4] & 0xFFFFFFFFFFEFFFFFLL);
    }

LABEL_24:
    if (v6 == -35)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_30:

  return pthread_mutex_unlock((a1 + 288));
}

uint64_t sock_cntr_inc(uint64_t a1)
{
  pthread_mutex_lock((a1 + 104));
  atomic_fetch_add((a1 + 40), 1u);
  if (atomic_load((a1 + 380)))
  {
    pthread_cond_broadcast((a1 + 56));
  }

  if (*(a1 + 376))
  {
    sock_wait_signal(*(a1 + 368));
  }

  sock_cntr_check_trigger_list(a1);

  return pthread_mutex_unlock((a1 + 104));
}

uint64_t sock_cntr_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  if (a2 && (*a2 || *(a2 + 1) > 4u || *(a2 + 2)))
  {
    return 4294967218;
  }

  v9 = malloc_type_calloc(1uLL, 0x188uLL, 0x10A00407E03CD7FuLL);
  if (!v9)
  {
    return 4294967284;
  }

  v10 = v9;
  v11 = pthread_cond_init((v9 + 56), 0);
  if (v11)
  {
LABEL_8:
    free(v10);
    return -v11;
  }

  v18 = 0;
  v19 = 0;
  if (!a2)
  {
    *(v10 + 21) = sock_cntr_attr;
    v10[23] = 0;
    goto LABEL_19;
  }

  v12 = *a2;
  v10[23] = *(a2 + 2);
  *(v10 + 21) = v12;
  v13 = *(v10 + 43);
  if (v13 <= 2)
  {
    if (v13 >= 2)
    {
      if (v13 == 2)
      {
        v14 = *(a2 + 1);
        v10[46] = v14;
        *(v10 + 94) = 1;
        v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
        if (!v15)
        {
          v11 = 12;
          goto LABEL_8;
        }

        *v15 = v15;
        v15[2] = v10;
        v17 = *(v14 + 40);
        v16 = (v14 + 40);
        *v15 = v17;
        v15[1] = v16;
        *(v17 + 8) = v15;
        *v16 = v15;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v13 == 3)
  {
    v19 = 0;
    LODWORD(v18) = 3;
    if (sock_wait_open(*(a1 + 40), &v18, v10 + 46))
    {
      v11 = 22;
      goto LABEL_8;
    }

    *(v10 + 94) = 1;
    goto LABEL_20;
  }

  if (v13 == 4)
  {
LABEL_19:
    *(v10 + 94) = 0;
  }

LABEL_20:
  pthread_mutex_init((v10 + 13), 0);
  pthread_mutex_init((v10 + 28), 0);
  *(v10 + 95) = 0;
  v10[5] = 0;
  v10[6] = 0;
  v10[26] = v10 + 26;
  v10[27] = v10 + 26;
  v10[24] = v10 + 24;
  v10[25] = v10 + 24;
  v10[44] = v10 + 44;
  v10[45] = v10 + 44;
  pthread_mutex_init((v10 + 36), 0);
  result = 0;
  *v10 = 15;
  v10[1] = a4;
  v10[2] = &sock_cntr_fi_ops;
  v10[3] = &sock_cntr_ops;
  atomic_fetch_add((a1 + 112), 1u);
  v10[4] = a1 - 120;
  *a3 = v10;
  return result;
}

uint64_t sock_cntr_close(uint64_t a1)
{
  if (atomic_load((a1 + 44)))
  {
    return 4294967280;
  }

  if (*(a1 + 376))
  {
    if (*(a1 + 172) == 3)
    {
      sock_wait_close(*(a1 + 368));
    }
  }

  pthread_mutex_lock((a1 + 104));
  pthread_mutex_unlock((a1 + 104));
  pthread_mutex_destroy((a1 + 104));
  pthread_mutex_destroy((a1 + 224));
  pthread_mutex_destroy((a1 + 288));
  pthread_cond_destroy((a1 + 56));
  atomic_fetch_add((*(a1 + 32) + 232), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t sock_cntr_control(uint64_t a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 2:
      result = 0;
      *a3 = *(a1 + 184);
      break;
    case 3:
      result = 0;
      *(a1 + 184) = *a3;
      break;
    case 5:
      if (*(*(a1 + 32) + 248) == 2)
      {
        return 4294967218;
      }

      v5 = *(a1 + 172);
      if (v5 <= 4)
      {
        if (((1 << v5) & 0x13) != 0)
        {
          result = 0;
          v6 = *(a1 + 104);
          v7 = *(a1 + 120);
          v8 = *(a1 + 152);
          *(a3 + 32) = *(a1 + 136);
          *(a3 + 48) = v8;
          *a3 = v6;
          *(a3 + 16) = v7;
          v9 = *(a1 + 56);
          v10 = *(a1 + 88);
          *(a3 + 80) = *(a1 + 72);
          *(a3 + 96) = v10;
          *(a3 + 64) = v9;
        }

        else
        {
          sock_wait_get_obj(*(a1 + 368), a3);
          return 0;
        }
      }

      else
      {
        return 4294967274;
      }

      break;
    default:
      return 4294967274;
  }

  return result;
}

uint64_t sock_cntr_readerr(uint64_t a1)
{
  if (*(*(a1 + 32) + 248) == 2)
  {
    sock_cntr_progress(a1);
  }

  pthread_mutex_lock((a1 + 104));
  if (*(a1 + 384))
  {
    *(a1 + 384) = 0;
  }

  pthread_mutex_unlock((a1 + 104));
  return atomic_load((a1 + 48));
}

uint64_t sock_cntr_add(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock((a1 + 104));
  atomic_store(atomic_fetch_add((a1 + 40), a2) + a2, (a1 + 52));
  if (atomic_load((a1 + 380)))
  {
    pthread_cond_broadcast((a1 + 56));
  }

  if (*(a1 + 376))
  {
    sock_wait_signal(*(a1 + 368));
  }

  sock_cntr_check_trigger_list(a1);
  pthread_mutex_unlock((a1 + 104));
  return 0;
}

uint64_t sock_cntr_set(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock((a1 + 104));
  atomic_store(a2, (a1 + 40));
  atomic_store(a2, (a1 + 52));
  if (atomic_load((a1 + 380)))
  {
    pthread_cond_broadcast((a1 + 56));
  }

  if (*(a1 + 376))
  {
    sock_wait_signal(*(a1 + 368));
  }

  sock_cntr_check_trigger_list(a1);
  pthread_mutex_unlock((a1 + 104));
  return 0;
}

uint64_t sock_cntr_wait(uint64_t a1, signed int a2, unsigned int a3)
{
  pthread_mutex_lock((a1 + 104));
  if (*(a1 + 384))
  {
    v6 = 4294967037;
  }

  else
  {
    v7 = atomic_load((a1 + 40));
    if (v7 >= a2)
    {
      v6 = 0;
    }

    else
    {
      atomic_fetch_add((a1 + 380), 1u);
      if ((a3 & 0x80000000) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = ofi_get_realtime_ms() + a3;
      }

      v9 = atomic_load((a1 + 40));
      if (v9 >= a2)
      {
        v11 = 0;
      }

      else
      {
        v10 = a3;
        while (1)
        {
          if (*(*(a1 + 32) + 248) == 2)
          {
            pthread_mutex_unlock((a1 + 104));
            sock_cntr_progress(a1);
            pthread_mutex_lock((a1 + 104));
            v11 = 0;
          }

          else
          {
            v11 = ofi_wait_cond((a1 + 56), (a1 + 104), v10);
          }

          realtime_ms = ofi_get_realtime_ms();
          if ((a3 & 0x80000000) == 0)
          {
            v10 = v8 - realtime_ms;
            if (v8 <= realtime_ms)
            {
              break;
            }
          }

          v9 = atomic_load((a1 + 40));
          if (v11 || v9 >= a2)
          {
            goto LABEL_20;
          }
        }

        v11 = -60;
      }

LABEL_20:
      atomic_store(v9, (a1 + 52));
      atomic_fetch_add((a1 + 380), 0xFFFFFFFF);
      sock_cntr_check_trigger_list(a1);
      if (*(a1 + 384))
      {
        v6 = 4294967037;
      }

      else
      {
        v6 = v11;
      }
    }
  }

  pthread_mutex_unlock((a1 + 104));
  return v6;
}

uint64_t sock_cntr_adderr(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock((a1 + 104));
  atomic_fetch_add((a1 + 48), a2);
  if (!*(a1 + 384))
  {
    *(a1 + 384) = 1;
  }

  pthread_cond_signal((a1 + 56));
  if (*(a1 + 376))
  {
    sock_wait_signal(*(a1 + 368));
  }

  pthread_mutex_unlock((a1 + 104));
  return 0;
}

uint64_t sock_cntr_seterr(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock((a1 + 104));
  atomic_store(a2, (a1 + 48));
  if (!*(a1 + 384))
  {
    *(a1 + 384) = 1;
  }

  pthread_cond_signal((a1 + 56));
  if (*(a1 + 376))
  {
    sock_wait_signal(*(a1 + 368));
  }

  pthread_mutex_unlock((a1 + 104));
  return 0;
}

uint64_t sock_conn_send_src_addr(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = 12300;
  sock_tx_ctx_start(a2);
  if (a2[11] - a2[14] + a2[13] > 0x67uLL)
  {
    sock_tx_ctx_write_op_send(a2, &v7, 0, 0, 0, 0, a1, a3);
    sock_tx_ctx_write(a2, *(a1 + 360), 0x30uLL);
    sock_tx_ctx_commit(a2);
    result = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    sock_tx_ctx_abort(a2);
    return -35;
  }

  return result;
}

uint64_t sock_conn_map_init(uint64_t a1, int a2)
{
  v3 = *(a1 + 224);
  v4 = a2;
  v5 = malloc_type_calloc(a2, 0x70uLL, 0x1020040C06F9C88uLL);
  *(v3 + 12840) = v5;
  if (v5)
  {
    v6 = malloc_type_calloc(v4, 0x20uLL, 0x108004019856BD9uLL);
    *(v3 + 12856) = v6;
    if (v6)
    {
      v7 = kqueue();
      *(v3 + 12848) = v7;
      if ((v7 & 0x80000000) == 0 || (v9 = *__error(), v9 < 1))
      {
        pthread_mutex_init((v3 + 12880), 0);
        result = 0;
        *(v3 + 12868) = 0;
        *(v3 + 12872) = a2;
        *(v3 + 12864) = a2;
        return result;
      }

      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v10 = -v9;
        v11 = *__error();
        v12 = strerror(v10);
        fi_log(&sock_prov, 0, 3, "sock_conn_map_init", 113, "failed to create epoll set, error - %d (%s)\n", v10, v12);
        *__error() = v11;
      }

      free(*(v3 + 12856));
    }

    free(*(v3 + 12840));
  }

  return 4294967284;
}

uint64_t sock_conn_map_destroy(uint64_t a1)
{
  v2 = *(a1 + 12868);
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(a1 + 12840) + v3);
      if (v5 != -1)
      {
        sock_pe_poll_del(*(*(a1 + 56) + 288), v5);
        sock_conn_release_entry(a1 + 12840, (*(a1 + 12840) + v3));
        v2 = *(a1 + 12868);
      }

      v3 += 112;
    }
  }

  free(*(a1 + 12840));
  *(a1 + 12840) = 0;
  free(*(a1 + 12856));
  *(a1 + 12856) = 0u;
  *(a1 + 12872) = 0;
  close(*(a1 + 12848));

  return pthread_mutex_destroy((a1 + 12880));
}

double sock_conn_release_entry(uint64_t a1, int *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  changelist.ident = *a2;
  *&changelist.filter = 196607;
  memset(&changelist.fflags, 0, 20);
  ident = changelist.ident;
  v8 = 196606;
  v10 = 0;
  v9 = 0;
  v11 = 0;
  if (kevent(v3, &changelist, 2, 0, 0, 0) < 0 && *__error() != 2)
  {
    __error();
  }

  close(*a2);
  a2[2] = 0;
  *(a2 + 11) = -1;
  *&result = 0xFFFFFFFFLL;
  *a2 = 0xFFFFFFFFLL;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t fd_set_nonblock(int a1)
{
  v1 = fi_fd_nonblock(a1);
  if (v1 && fi_log_enabled(&sock_prov, 0, 3))
  {
    v2 = *__error();
    fi_log(&sock_prov, 0, 3, "fd_set_nonblock", 231, "fi_fd_nonblock failed, errno: %d\n", v1);
    *__error() = v2;
  }

  return v1;
}

uint64_t sock_set_sockopts(int a1, char a2)
{
  v9 = 1;
  v10 = 1;
  if (setsockopt(a1, 0xFFFF, 4, &v10, 4u) && fi_log_enabled(&sock_prov, 0, 3))
  {
    v4 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_set_sockopt_reuseaddr", 281, "setsockopt reuseaddr failed\n");
    *__error() = v4;
  }

  result = setsockopt(a1, 6, 1, &v9, 4u);
  if (result)
  {
    result = fi_log_enabled(&sock_prov, 0, 3);
    if (result)
    {
      v6 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_set_sockopts", 310, "setsockopt nodelay failed\n");
      result = __error();
      *result = v6;
    }
  }

  if (a2)
  {
    result = fd_set_nonblock(a1);
  }

  if ((a2 & 4) != 0 && sock_buf_sz)
  {
    v11 = sock_buf_sz;
    if (setsockopt(a1, 0xFFFF, 4098, &v11, 4u) && fi_log_enabled(&sock_prov, 0, 3))
    {
      v7 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_set_sockopt_bufsize", 294, "setsockopt rcvbuf size failed\n");
      *__error() = v7;
    }

    result = setsockopt(a1, 0xFFFF, 4097, &v11, 4u);
    if (result)
    {
      result = fi_log_enabled(&sock_prov, 0, 3);
      if (result)
      {
        v8 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_set_sockopt_bufsize", 297, "setsockopt sndbuf size failed\n");
        result = __error();
        *result = v8;
      }
    }
  }

  return result;
}

uint64_t sock_conn_stop_listener_thread(uint64_t a1)
{
  *(a1 + 160) = 0;
  pthread_mutex_lock((a1 + 88));
  v4 = 0;
  pthread_mutex_lock((a1 + 8));
  if (!*(a1 + 80))
  {
    if (send(*(a1 + 76), &v4, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 80);
  }

  pthread_mutex_unlock((a1 + 8));
  pthread_mutex_unlock((a1 + 88));
  v2 = *(a1 + 152);
  if (v2)
  {
    pthread_join(v2, 0);
  }

  close(*(a1 + 72));
  close(*(a1 + 76));
  pthread_mutex_destroy((a1 + 8));
  close(*a1);
  pthread_mutex_destroy((a1 + 88));
  return 0;
}

uint64_t sock_conn_start_listener_thread(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  pthread_mutex_init((a1 + 88), 0);
  v2 = kqueue();
  *a1 = v2;
  if (v2 < 0)
  {
    v8 = *__error();
    if (v8 >= 1)
    {
      v3 = -v8;
      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v9 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_conn_start_listener_thread", 410, "failed to create epoll set\n");
        *__error() = v9;
      }

      goto LABEL_23;
    }
  }

  if (socketpair(1, 1, 0, (a1 + 72)) < 0)
  {
    v3 = -*__error();
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  *(a1 + 80) = 0;
  v3 = pthread_mutex_init((a1 + 8), 0);
  if (v3)
  {
LABEL_6:
    close(*(a1 + 72));
    close(*(a1 + 76));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v10 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_conn_start_listener_thread", 416, "failed to init signal\n");
      *__error() = v10;
    }

    goto LABEL_22;
  }

  v4 = fi_fd_nonblock(*(a1 + 72));
  if (v4)
  {
    v3 = v4;
    pthread_mutex_destroy((a1 + 8));
    goto LABEL_6;
  }

LABEL_7:
  v5 = *a1;
  changelist.ident = *(a1 + 72);
  *&changelist.filter = 0x1FFFF;
  memset(&changelist.fflags, 0, 20);
  ident = changelist.ident;
  v15 = 131070;
  v17 = 0;
  v16 = 0;
  v18 = 0;
  if (kevent(v5, &changelist, 2, 0, 0, 0) < 0)
  {
    v11 = *__error();
    if (v11)
    {
      v3 = -v11;
      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v7 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_conn_start_listener_thread", 424, "failed to add signal fd to epoll\n");
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  *(a1 + 160) = 1;
  *(a1 + 164) = 0;
  v3 = pthread_create((a1 + 152), 0, sock_conn_listener_thread, a1);
  result = 0;
  if ((v3 & 0x80000000) != 0)
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v7 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_conn_start_listener_thread", 433, "failed to create conn listener thread\n");
LABEL_20:
      *__error() = v7;
    }

LABEL_21:
    *(a1 + 160) = 0;
    close(*(a1 + 72));
    close(*(a1 + 76));
    pthread_mutex_destroy((a1 + 8));
LABEL_22:
    close(*a1);
LABEL_23:
    pthread_mutex_destroy((a1 + 88));
    result = v3;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_conn_listener_thread(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160))
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0;
    v18 = 0;
    while (1)
    {
      v2 = kevent(*a1, 0, 0, eventlist, 32, 0);
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      v12 = *__error();
      if (v12 < 1)
      {
        break;
      }

      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        fi_log(&sock_prov, 0, 3, "sock_conn_listener_thread", 353, "poll failed : %s\n", v15);
        *__error() = v13;
      }

LABEL_24:
      if (!*(a1 + 160))
      {
        goto LABEL_30;
      }
    }

    v2 = -v12;
LABEL_4:
    pthread_mutex_lock((a1 + 88));
    if (*(a1 + 164))
    {
      *(a1 + 164) = 0;
    }

    else if (v2 >= 1)
    {
      v3 = 0;
      v4 = v2;
      do
      {
        udata = eventlist[v3].udata;
        if (udata)
        {
          v21 = 0u;
          v22 = 0u;
          v20 = 0;
          v18 = 48;
          v6 = accept(*udata, &v20, &v18);
          if (v6 < 0)
          {
            if (fi_log_enabled(&sock_prov, 0, 3))
            {
              v9 = *__error();
              v10 = __error();
              v11 = strerror(*v10);
              fi_log(&sock_prov, 0, 3, "sock_conn_listener_thread", 385, "failed to accept: %s\n", v11);
              *__error() = v9;
            }
          }

          else
          {
            v7 = v6;
            pthread_mutex_lock((udata + 12400));
            sock_conn_map_insert((udata - 480), &v20, v7, 1);
            pthread_mutex_unlock((udata + 12400));
            sock_pe_signal(*(*(udata - 53) + 288));
          }
        }

        else
        {
          v19 = 0;
          pthread_mutex_lock((a1 + 8));
          while (*(a1 + 80))
          {
            while (recv(*(a1 + 72), &v19, 1uLL, 0) == 1)
            {
              v8 = *(a1 + 80) - 1;
              *(a1 + 80) = v8;
              if (!v8)
              {
                goto LABEL_19;
              }
            }

            if (*__error() != 35 && *__error() != 35)
            {
              sock_conn_listener_thread_cold_1();
            }

            if (fi_poll_fd(*(a1 + 72), 10000) < 1)
            {
              sock_conn_listener_thread_cold_2();
            }
          }

LABEL_19:
          pthread_mutex_unlock((a1 + 8));
        }

        ++v3;
      }

      while (v3 != v4);
    }

    pthread_mutex_unlock((a1 + 88));
    goto LABEL_24;
  }

LABEL_30:
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sock_conn_listen(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v32 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  v2 = socket(*(*(a1 + 360) + 1), 1, 6);
  if (v2 == -1)
  {
    v7 = -*__error();
    goto LABEL_25;
  }

  v3 = v2;
  sock_set_sockopts(v2, 5);
  v4 = *(a1 + 360);
  v6 = *(v4 + 16);
  v5 = *(v4 + 32);
  v33 = *v4;
  v34[0] = v6;
  v34[1] = v5;
  if (*(a1 + 352) == 1)
  {
    if (v33.sa_family != 30)
    {
      if (v33.sa_family != 27)
      {
        if (v33.sa_family != 2)
        {
          sock_conn_listen_cold_2();
        }

        *v33.sa_data = 0;
        goto LABEL_13;
      }

      *(v34 + 8) = xmmword_29ED128C0;
LABEL_15:
      v10 = 48;
      goto LABEL_18;
    }

    *v33.sa_data = 0;
    goto LABEL_17;
  }

  switch(v33.sa_family)
  {
    case 2u:
LABEL_13:
      v10 = 16;
      goto LABEL_18;
    case 0x1Bu:
      goto LABEL_15;
    case 0x1Eu:
LABEL_17:
      v10 = 28;
      goto LABEL_18;
  }

  if (fi_log_enabled(&core_prov, 0, 0))
  {
    v8 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
    v9 = __error();
    v10 = 0;
    *v9 = v8;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  v11 = (a1 + 480);
  if (bind(v3, &v33, v10))
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      fi_log(&sock_prov, 0, 3, "sock_conn_listen", 469, "failed to bind listener: %s\n", v14);
      *__error() = v12;
    }

    ofi_straddr_log_internal("sock_conn_listen", 471, 0, &sock_prov, 0, 3, "bind failed to addr: ", &v33);
    goto LABEL_23;
  }

  v32 = 48;
  if (getsockname(v3, &v33, &v32))
  {
LABEL_23:
    v7 = -*__error();
LABEL_24:
    close(v3);
    *v11 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  switch(v33.sa_family)
  {
    case 0x1Eu:
      goto LABEL_29;
    case 0x1Bu:
      LOWORD(v17) = bswap64(*(&v34[0] + 1));
      break;
    case 2u:
LABEL_29:
      v17 = bswap32(*v33.sa_data) >> 16;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 1))
      {
        v18 = *__error();
        fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
        v19 = __error();
        LOWORD(v17) = 0;
        *v19 = v18;
      }

      else
      {
        LOWORD(v17) = 0;
      }

      break;
  }

  *(a1 + 376) = v17;
  v20 = *(a1 + 360);
  if (v20)
  {
    v21 = *(v20 + 1);
    switch(v21)
    {
      case 30:
        goto LABEL_39;
      case 27:
        LOWORD(v20) = bswap64(*(v20 + 24));
LABEL_41:
        if (v20)
        {
          goto LABEL_50;
        }

        goto LABEL_45;
      case 2:
LABEL_39:
        LODWORD(v20) = bswap32(*(v20 + 2)) >> 16;
        goto LABEL_41;
    }

    if (fi_log_enabled(&core_prov, 0, 1))
    {
      v22 = *__error();
      fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
      *__error() = v22;
    }
  }

LABEL_45:
  v23 = *(a1 + 360);
  v24 = *(a1 + 376);
  v25 = *(v23 + 1);
  if (v25 != 30)
  {
    if (v25 == 27)
    {
      *(v23 + 24) = bswap64(__rev16(v24) | 0x13F0000);
      *(v23 + 32) = -1;
      goto LABEL_50;
    }

    if (v25 != 2)
    {
      sock_conn_listen_cold_2();
    }
  }

  *(v23 + 2) = __rev16(v24);
LABEL_50:
  if (listen(v3, sock_cm_def_map_sz))
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v26 = *__error();
      v27 = __error();
      v28 = strerror(*v27);
      fi_log(&sock_prov, 0, 3, "sock_conn_listen", 492, "failed to listen socket: %s\n", v28);
      *__error() = v26;
    }

    goto LABEL_23;
  }

  *(a1 + 480) = v3;
  *(a1 + 484) = 1;
  pthread_mutex_lock((*(a1 + 56) + 608));
  v29 = *(*(a1 + 56) + 520);
  changelist.ident = *(a1 + 480);
  *&changelist.filter = 0x1FFFFLL;
  changelist.data = 0;
  changelist.udata = (a1 + 480);
  ident = changelist.ident;
  v37 = 131070;
  v38 = 0;
  v39 = a1 + 480;
  v7 = 0;
  if (kevent(v29, &changelist, 2, 0, 0, 0) < 0)
  {
    v7 = -*__error();
  }

  v30 = *(a1 + 56);
  LOBYTE(changelist.ident) = 0;
  pthread_mutex_lock((v30 + 528));
  if (!*(v30 + 600))
  {
    if (send(*(v30 + 596), &changelist, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(v30 + 600);
  }

  pthread_mutex_unlock((v30 + 528));
  pthread_mutex_unlock((*(a1 + 56) + 608));
  if (v7)
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v31 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_conn_listen", 506, "failed to add fd to pollset: %d\n", v7);
      *__error() = v31;
    }

    goto LABEL_24;
  }

LABEL_25:
  v15 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sock_ep_connect(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v6 = sock_conn_retry;
  v34 = 0;
  *v35 = 0;
  if (*(a1 + 352) == 1)
  {
    v7 = *(a1 + 368);
    if (!v7)
    {
      sock_ep_connect_cold_3();
    }

    v8 = *(v7 + 32);
    v9 = *v7;
    v37 = *(v7 + 16);
    v38 = v8;
    v36 = v9;
    v10 = *(a1 + 378);
    if (v9.sa_family == 30)
    {
      goto LABEL_6;
    }

    if (v9.sa_family != 27)
    {
      if (v9.sa_family != 2)
      {
        sock_conn_listen_cold_2();
      }

LABEL_6:
      *v36.sa_data = __rev16(v10);
      goto LABEL_9;
    }

    *(&v37 + 1) = bswap64(__rev16(v10) | 0x13F0000);
    *&v38 = -1;
  }

  else
  {
    pthread_mutex_lock((*(a1 + 48) + 264));
    v11 = *(a1 + 48);
    v12 = *(v11 + 128) + 56 * a2;
    v14 = *(v12 + 16);
    v13 = *(v12 + 32);
    v36 = *v12;
    v37 = v14;
    v38 = v13;
    pthread_mutex_unlock((v11 + 264));
  }

LABEL_9:
  pthread_mutex_lock((a1 + 12880));
  *a3 = sock_ep_lookup_conn(a1, a2, &v36);
  pthread_mutex_unlock((a1 + 12880));
  if (*a3 != 1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = socket(v36.sa_family, 1, 0);
    if (v17 == -1)
    {
      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v31 = *__error();
        v32 = __error();
        fi_log(&sock_prov, 0, 3, "sock_ep_connect", 555, "failed to create conn_fd, errno: %d\n", *v32);
        *__error() = v31;
      }

      *a3 = 0;
      goto LABEL_50;
    }

    v18 = v17;
    if (fd_set_nonblock(v17))
    {
      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v33 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_connect", 562, "failed to set conn_fd nonblocking\n");
        *__error() = v33;
      }

      *a3 = 0;
      close(v18);
LABEL_50:
      result = 4294967040;
      goto LABEL_11;
    }

    switch(v36.sa_family)
    {
      case 2u:
        v19 = 16;
        break;
      case 0x1Bu:
        v19 = 48;
        break;
      case 0x1Eu:
        v19 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v20 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v21 = __error();
          v19 = 0;
          *v21 = v20;
        }

        else
        {
          v19 = 0;
        }

        break;
    }

    if ((connect(v18, &v36, v19) & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 36)
    {
      v34.fd = v18;
      v34.events = 4;
      if ((poll(&v34, 1u, sock_conn_timeout) & 0x80000000) == 0)
      {
        v35[1] = 4;
        if ((getsockopt(v18, 0xFFFF, 4103, v35, &v35[1]) & 0x80000000) == 0 && !v35[0])
        {
          break;
        }
      }
    }

    if (!--v6)
    {
      goto LABEL_55;
    }

    close(v18);
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v22 = *__error();
      v23 = __error();
      v24 = strerror(*v23);
      fi_log(&sock_prov, 0, 3, "sock_ep_connect", 618, "Connect error, retrying - %s - %d\n", v24, -1);
      *__error() = v22;
    }

    ofi_straddr_log_internal("sock_ep_connect", 620, 0, &sock_prov, 0, 3, "Retry connect to peer ", &v36);
    pthread_mutex_lock((a1 + 12880));
    *a3 = sock_ep_lookup_conn(a1, a2, &v36);
    pthread_mutex_unlock((a1 + 12880));
    if (*a3 != 1)
    {
      goto LABEL_10;
    }
  }

  pthread_mutex_lock((a1 + 12880));
  v25 = sock_conn_map_insert(a1, &v36, v18, 0);
  if (v25)
  {
    v26 = v25;
    if (*(a1 + 352) == 1)
    {
      v27 = -1;
    }

    else
    {
      v27 = a2;
    }

    *(v25 + 88) = v27;
    if (a2 >= 0x100000 || (v28 = *(a1 + 552 + 8 * (a2 >> 10))) == 0)
    {
      v26 = 0;
      goto LABEL_52;
    }

    if (!*(a1 + 4 * (a2 >> 10) + 8744))
    {
      sock_av_remove_cold_1();
    }

    v29 = *(v28 + 8 * (a2 & 0x3FF));
    *a3 = v29;
    if (v29 == 1)
    {
      if ((ofi_idm_set(a1 + 552, a2, v25) & 0x80000000) != 0 && fi_log_enabled(&sock_prov, 0, 3))
      {
        v30 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_connect", 635, "ofi_idm_set failed\n");
        *__error() = v30;
      }

LABEL_52:
      *a3 = v26;
    }

    pthread_mutex_unlock((a1 + 12880));
LABEL_10:
    result = 0;
  }

  else
  {
    pthread_mutex_unlock((a1 + 12880));
LABEL_55:
    close(v18);
    *a3 = 0;
    if (*__error() == 36)
    {
      result = 4294967261;
    }

    else
    {
      result = -*__error();
    }
  }

LABEL_11:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_conn_map_insert(uint64_t a1, __int128 *a2, int a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 12872);
  LODWORD(v9) = *(a1 + 12868);
  if (v8 == v9)
  {
    v10 = *(a1 + 12840);
    if (v8 < 1)
    {
LABEL_6:
      v13 = v8;
      v10 = malloc_type_realloc(v10, 224 * v8, 0x1020040C06F9C88uLL);
      if (!v10)
      {
        if (fi_log_enabled(&sock_prov, 0, 3))
        {
          v26 = *__error();
          fi_log(&sock_prov, 0, 3, "sock_conn_map_increase", 137, "*** realloc failed, use FI_SOCKETS_DEF_CONN_MAP_SZ forspecifying conn-map-size\n");
          v27 = __error();
          result = 0;
          *v27 = v26;
        }

        else
        {
          result = 0;
        }

        goto LABEL_14;
      }

      *(a1 + 12872) = 2 * v13;
      *(a1 + 12840) = v10;
      LODWORD(v9) = *(a1 + 12868);
      *(a1 + 12868) = v9 + 1;
    }

    else
    {
      v9 = 0;
      v11 = *(a1 + 12840);
      while (1)
      {
        v12 = *v11;
        v11 += 28;
        if (v12 == -1)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
    *(a1 + 12868) = v9 + 1;
    v10 = *(a1 + 12840);
  }

  v14 = v9;
  v15 = 112 * v9;
  v16 = &v10[v15];
  *(v16 + 11) = -1;
  *(v16 + 1) = 1;
  v17 = *a2;
  v18 = a2[2];
  *(v16 + 2) = a2[1];
  *(v16 + 3) = v18;
  *(v16 + 1) = v17;
  v19 = *(a1 + 12840) + v15;
  *v19 = a3;
  *(v19 + 80) = a1;
  if (*(a1 + 352) == 1)
  {
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  sock_set_sockopts(a3, v20);
  v21 = *(a1 + 12848);
  v22 = (*(a1 + 12840) + v15);
  changelist.ident = a3;
  *&changelist.filter = 0x1FFFFLL;
  changelist.data = 0;
  changelist.udata = v22;
  v29 = a3;
  v30 = 131070;
  v31 = 0;
  v32 = v22;
  if (kevent(v21, &changelist, 2, 0, 0, 0) < 0 && *__error() && fi_log_enabled(&sock_prov, 0, 3))
  {
    v25 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_conn_map_insert", 217, "failed to add to epoll set: %d\n", a3);
    *__error() = v25;
  }

  *(*(a1 + 12840) + 112 * v14 + 8) = a4;
  sock_pe_poll_add(*(*(a1 + 56) + 288), a3);
  result = *(a1 + 12840) + 112 * v14;
LABEL_14:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, char *a6)
{

  return fi_log(a1, 0, 1, a4, 831, a6);
}

uint64_t sock_dom_add_to_list(uint64_t a1)
{
  pthread_mutex_lock(&sock_list_lock);
  v2 = qword_2A1894830;
  v3 = *qword_2A1894830;
  *(a1 + 296) = *qword_2A1894830;
  *(a1 + 304) = v2;
  *(v3 + 8) = a1 + 296;
  *v2 = a1 + 296;

  return pthread_mutex_unlock(&sock_list_lock);
}

uint64_t sock_dom_check_list(uint64_t *a1)
{
  pthread_mutex_lock(&sock_list_lock);
  v2 = &sock_dom_list;
  while (1)
  {
    v2 = *v2;
    if (v2 == &sock_dom_list)
    {
      break;
    }

    if (v2 - 37 == a1)
    {
      v3 = 1;
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  pthread_mutex_unlock(&sock_list_lock);
  return v3;
}

uint64_t sock_dom_remove_from_list(uint64_t *a1)
{
  pthread_mutex_lock(&sock_list_lock);
  v2 = &sock_dom_list;
  while (1)
  {
    v2 = *v2;
    if (v2 == &sock_dom_list)
    {
      break;
    }

    if (v2 - 37 == a1)
    {
      v3 = a1[37];
      v4 = a1[38];
      *v4 = v3;
      *(v3 + 8) = v4;
      break;
    }
  }

  return pthread_mutex_unlock(&sock_list_lock);
}

uint64_t sock_dom_list_head()
{
  pthread_mutex_lock(&sock_list_lock);
  if (sock_dom_list == &sock_dom_list)
  {
    v0 = 0;
  }

  else
  {
    v0 = sock_dom_list - 296;
  }

  pthread_mutex_unlock(&sock_list_lock);
  return v0;
}

uint64_t sock_dom_check_manual_progress(uint64_t a1)
{
  for (i = sock_dom_list; ; i = *i)
  {
    if (i == &sock_dom_list)
    {
      return 0;
    }

    if (*(i - 17) == a1 && *(i - 12) == 2)
    {
      break;
    }
  }

  return 1;
}

uint64_t sock_fab_add_to_list(uint64_t a1)
{
  pthread_mutex_lock(&sock_list_lock);
  v2 = qword_2A1894840;
  v3 = *qword_2A1894840;
  *(a1 + 64) = *qword_2A1894840;
  *(a1 + 72) = v2;
  a1 += 64;
  *(v3 + 8) = a1;
  *v2 = a1;

  return pthread_mutex_unlock(&sock_list_lock);
}

uint64_t sock_fab_check_list(uint64_t *a1)
{
  pthread_mutex_lock(&sock_list_lock);
  v2 = &sock_fab_list;
  while (1)
  {
    v2 = *v2;
    if (v2 == &sock_fab_list)
    {
      break;
    }

    if (v2 - 8 == a1)
    {
      v3 = 1;
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  pthread_mutex_unlock(&sock_list_lock);
  return v3;
}

uint64_t sock_fab_remove_from_list(uint64_t *a1)
{
  pthread_mutex_lock(&sock_list_lock);
  v2 = &sock_fab_list;
  while (1)
  {
    v2 = *v2;
    if (v2 == &sock_fab_list)
    {
      break;
    }

    if (v2 - 8 == a1)
    {
      v3 = a1[8];
      v4 = a1[9];
      *v4 = v3;
      *(v3 + 8) = v4;
      break;
    }
  }

  return pthread_mutex_unlock(&sock_list_lock);
}

uint64_t sock_fab_list_head()
{
  pthread_mutex_lock(&sock_list_lock);
  if (sock_fab_list == &sock_fab_list)
  {
    v0 = 0;
  }

  else
  {
    v0 = sock_fab_list - 64;
  }

  pthread_mutex_unlock(&sock_list_lock);
  return v0;
}

uint64_t sock_get_src_addr(const sockaddr *a1, uint64_t a2)
{
  v4 = socket(a1->sa_family, 2, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    sa_family = a1->sa_family;
    switch(sa_family)
    {
      case 2:
        v7 = 16;
        break;
      case 27:
        v7 = 48;
        break;
      case 30:
        v7 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v9 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v10 = __error();
          v7 = 0;
          *v10 = v9;
        }

        else
        {
          v7 = 0;
        }

        break;
    }

    v14 = v7;
    if (connect(v5, a1, v7))
    {
      src_addr_from_hostname = sock_get_src_addr_from_hostname(a2, 0, a1->sa_family);
LABEL_21:
      close(v5);
      return src_addr_from_hostname;
    }

    v11 = getsockname(v5, a2, &v14);
    v12 = *(a2 + 1);
    if (v12 != 30)
    {
      if (v12 == 27)
      {
        *(a2 + 24) = xmmword_29ED128C0;
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }

      if (v12 != 2)
      {
        sock_get_src_addr_cold_1();
      }
    }

    *(a2 + 2) = 0;
    if (v11)
    {
LABEL_18:
      src_addr_from_hostname = -*__error();
      goto LABEL_21;
    }

LABEL_20:
    src_addr_from_hostname = 0;
    goto LABEL_21;
  }

  return -*__error();
}

uint64_t sock_fabric(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040AB38F223uLL);
  if (!v5)
  {
    return 4294967284;
  }

  v6 = v5;
  if ((read_default_params & 1) == 0)
  {
    fi_param_get(&sock_prov, "pe_waittime", sock_pe_waittime);
    fi_param_get(&sock_prov, "conn_timeout", &sock_conn_timeout);
    fi_param_get(&sock_prov, "max_conn_retry", &sock_conn_retry);
    fi_param_get(&sock_prov, "def_conn_map_sz", &sock_cm_def_map_sz);
    fi_param_get(&sock_prov, "def_av_sz", &sock_av_def_sz);
    fi_param_get(&sock_prov, "def_cq_sz", &sock_cq_def_sz);
    fi_param_get(&sock_prov, "def_eq_sz", &sock_eq_def_sz);
    fi_param_get(&sock_prov, "keepalive_enable", &sock_keepalive_enable);
    fi_param_get(&sock_prov, "keepalive_time", &sock_keepalive_time);
    fi_param_get(&sock_prov, "keepalive_intvl", &sock_keepalive_intvl);
    fi_param_get(&sock_prov, "keepalive_probes", &sock_keepalive_probes);
    fi_param_get(&sock_prov, "max_buf_sz", &sock_buf_sz);
    read_default_params = 1;
  }

  pthread_mutex_init((v6 + 80), 0);
  *(v6 + 6) = v6 + 48;
  *(v6 + 7) = v6 + 48;
  *v6 = 1;
  *(v6 + 1) = a3;
  *(v6 + 2) = &sock_fab_fi_ops;
  *(v6 + 3) = &sock_fab_ops;
  *a2 = v6;
  *(v6 + 10) = 0;
  pthread_mutex_lock(&sock_list_lock);
  v7 = qword_2A1894840;
  v8 = *qword_2A1894840;
  *(v6 + 8) = *qword_2A1894840;
  *(v6 + 9) = v7;
  v9 = v6 + 64;
  *(v8 + 8) = v9;
  *v7 = v9;
  pthread_mutex_unlock(&sock_list_lock);
  return 0;
}

void *fi_sockets_ini(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  fi_param_define(&sock_prov, "pe_waittime", 1, "How many milliseconds to spin while waiting for progress", a5, a6, a7, a8, v61);
  fi_param_define(&sock_prov, "conn_timeout", 1, "How many milliseconds to wait for one connection establishment", v8, v9, v10, v11, v62);
  fi_param_define(&sock_prov, "max_conn_retry", 1, "Number of connection retries before reporting as failure", v12, v13, v14, v15, v63);
  fi_param_define(&sock_prov, "def_conn_map_sz", 1, "Default connection map size", v16, v17, v18, v19, v64);
  fi_param_define(&sock_prov, "def_av_sz", 1, "Default address vector size", v20, v21, v22, v23, v65);
  fi_param_define(&sock_prov, "def_cq_sz", 1, "Default completion queue size", v24, v25, v26, v27, v66);
  fi_param_define(&sock_prov, "def_eq_sz", 1, "Default event queue size", v28, v29, v30, v31, v67);
  fi_param_define(&sock_prov, "pe_affinity", 0, "If specified, bind the progress thread to the indicated range(s) of Linux virtual processor ID(s). This option is currently not supported on OS X and Windows. Usage: id_start[-id_end[:stride]][,]", v32, v33, v34, v35, v68);
  fi_param_define(&sock_prov, "keepalive_enable", 2, "Enable keepalive support", v36, v37, v38, v39, v69);
  fi_param_define(&sock_prov, "keepalive_time", 1, "Idle time in seconds before sending the first keepalive probe", v40, v41, v42, v43, v70);
  fi_param_define(&sock_prov, "keepalive_intvl", 1, "Time in seconds between individual keepalive probes", v44, v45, v46, v47, v71);
  fi_param_define(&sock_prov, "keepalive_probes", 1, "Maximum number of keepalive probes sent before dropping the connection", v48, v49, v50, v51, v72);
  fi_param_define(&sock_prov, "iface", 0, "Specify interface name", v52, v53, v54, v55, v73);
  fi_param_define(&sock_prov, "max_buf_sz", 1, "Maximum socket send and recv buffer in bytes (i.e. SO_RCVBUF, SO_SNDBUF)", v56, v57, v58, v59, v74);
  pthread_mutex_init(&sock_list_lock, 0);
  sock_fab_list = &sock_fab_list;
  qword_2A1894840 = &sock_fab_list;
  sock_dom_list = &sock_dom_list;
  qword_2A1894830 = &sock_dom_list;
  return &sock_prov;
}

uint64_t sock_fabric_close(uint64_t a1)
{
  if (atomic_load((a1 + 40)))
  {
    return 4294967280;
  }

  sock_fab_remove_from_list(a1);
  pthread_mutex_destroy((a1 + 80));
  free(a1);
  return 0;
}

uint64_t sock_ep_cm_setname(void *a1, unsigned __int8 *__src, size_t __n)
{
  if (!__n)
  {
    return 4294967274;
  }

  v6 = __src[1];
  switch(v6)
  {
    case 2:
      v7 = 16;
      break;
    case 27:
      v7 = 48;
      break;
    case 30:
      v7 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v8 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v9 = __error();
        v7 = 0;
        *v9 = v8;
      }

      else
      {
        v7 = 0;
      }

      break;
  }

  if (v7 != __n)
  {
    return 4294967274;
  }

  if ((*a1 - 3) < 2)
  {
    v10 = a1[28];
    if (!*(v10 + 484))
    {
      memcpy(*(v10 + 360), __src, __n);
      v11 = a1[28];

      return sock_conn_listen(v11);
    }

    return 4294967274;
  }

  if (*a1 != 9)
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v13 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ep_cm_setname", 168, "Invalid argument\n");
      *__error() = v13;
    }

    return 4294967274;
  }

  if (a1[31])
  {
    return 4294967274;
  }

  memcpy(a1 + 32, __src, __n);

  return sock_pep_create_listener(a1);
}

uint64_t sock_ep_cm_getname(uint64_t a1, void *__dst, size_t *a3)
{
  if ((*a1 - 3) < 2)
  {
    v6 = *(a1 + 224);
    if (*(v6 + 396))
    {
      v7 = *a3;
      v8 = *(*(v6 + 360) + 1);
      switch(v8)
      {
        case 2:
          v9 = 16;
          break;
        case 27:
          v9 = 48;
          break;
        case 30:
          v9 = 28;
          break;
        default:
          if (fi_log_enabled(&core_prov, 0, 0))
          {
            v14 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
            *__error() = v14;
          }

          goto LABEL_23;
      }

      if (v7 < v9)
      {
LABEL_46:
        memcpy(__dst, *(*(a1 + 224) + 360), v7);
        v20 = *(*(*(a1 + 224) + 360) + 1);
LABEL_49:
        switch(v20)
        {
          case 2:
            v21 = 16;
            break;
          case 27:
            v21 = 48;
            break;
          case 30:
            v21 = 28;
            break;
          default:
            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v22 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
              v23 = __error();
              v21 = 0;
              *v23 = v22;
            }

            else
            {
              v21 = 0;
            }

            break;
        }

        *a3 = v21;
        if (v7 == v21)
        {
          return 0;
        }

        else
        {
          return 4294967039;
        }
      }

LABEL_23:
      v15 = *(*(*(a1 + 224) + 360) + 1);
      switch(v15)
      {
        case 2:
          v7 = 16;
          break;
        case 27:
          v7 = 48;
          break;
        case 30:
          v7 = 28;
          break;
        default:
          if (fi_log_enabled(&core_prov, 0, 0))
          {
            v16 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
            v7 = 0;
            *__error() = v16;
          }

          else
          {
            v7 = 0;
          }

          break;
      }

      goto LABEL_46;
    }

    return 4294967038;
  }

  if (*a1 == 9)
  {
    if (!*(a1 + 432))
    {
      return 4294967038;
    }

    v7 = *a3;
    v10 = *(a1 + 257);
    switch(v10)
    {
      case 2:
        v11 = 16;
        break;
      case 27:
        v11 = 48;
        break;
      case 30:
        v11 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v17 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          *__error() = v17;
        }

        goto LABEL_37;
    }

    if (v7 < v11)
    {
LABEL_48:
      memcpy(__dst, (a1 + 256), v7);
      v20 = *(a1 + 257);
      goto LABEL_49;
    }

LABEL_37:
    v18 = *(a1 + 257);
    switch(v18)
    {
      case 2:
        v7 = 16;
        break;
      case 27:
        v7 = 48;
        break;
      case 30:
        v7 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v19 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v7 = 0;
          *__error() = v19;
        }

        else
        {
          v7 = 0;
        }

        break;
    }

    goto LABEL_48;
  }

  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v13 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ep_cm_getname", 91, "Invalid argument\n");
    *__error() = v13;
  }

  return 4294967274;
}

uint64_t sock_ep_cm_getpeer(uint64_t a1, void *__dst, size_t *a3)
{
  v6 = *a3;
  v7 = *(*(*(a1 + 224) + 368) + 1);
  switch(v7)
  {
    case 2:
      v8 = 16;
      break;
    case 27:
      v8 = 48;
      break;
    case 30:
      v8 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v9 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        *__error() = v9;
      }

      goto LABEL_11;
  }

  if (v6 >= v8)
  {
LABEL_11:
    v10 = *(*(*(a1 + 224) + 368) + 1);
    switch(v10)
    {
      case 2:
        v6 = 16;
        break;
      case 27:
        v6 = 48;
        break;
      case 30:
        v6 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v11 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v6 = 0;
          *__error() = v11;
        }

        else
        {
          v6 = 0;
        }

        break;
    }
  }

  memcpy(__dst, *(*(a1 + 224) + 368), v6);
  v12 = *(*(*(a1 + 224) + 368) + 1);
  switch(v12)
  {
    case 2:
      v13 = 16;
      break;
    case 27:
      v13 = 48;
      break;
    case 30:
      v13 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v14 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v15 = __error();
        v13 = 0;
        *v15 = v14;
      }

      else
      {
        v13 = 0;
      }

      break;
  }

  *a3 = v13;
  if (v6 == v13)
  {
    return 0;
  }

  else
  {
    return 4294967039;
  }
}

uint64_t sock_ep_cm_connect(uint64_t a1, unsigned __int8 *__src, const void *a3, size_t a4)
{
  v4 = 4294967274;
  if (a4 <= 0x100)
  {
    if (__src)
    {
      v7 = *(a1 + 224);
      if (*(v7 + 40))
      {
        if (!*(v7 + 484))
        {
          if (sock_conn_listen(v7))
          {
            return v4;
          }

          v7 = *(a1 + 224);
        }

        v10 = *(v7 + 368);
        if (!v10)
        {
          v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
          *(*(a1 + 224) + 368) = v10;
          if (!v10)
          {
            return 4294967284;
          }
        }

        v11 = __src[1];
        switch(v11)
        {
          case 2:
            v12 = 16;
            break;
          case 27:
            v12 = 48;
            break;
          case 30:
            v12 = 28;
            break;
          default:
            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v13 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
              v14 = __error();
              v12 = 0;
              *v14 = v13;
            }

            else
            {
              v12 = 0;
            }

            break;
        }

        memcpy(v10, __src, v12);
        v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
        if (v15)
        {
          v16 = v15;
          v17 = sock_ep_cm_new_handle();
          if (v17)
          {
            *v16 = 0;
            v18 = *(a1 + 224);
            v16[2] = bswap32(*(v18 + 376)) >> 16;
            v16[3] = bswap32(a4) >> 16;
            *(v16 + 7) = *(v18 + 144);
            v19 = *(*(v18 + 360) + 1);
            if (v19 != 2 && v19 != 27 && v19 != 30 && fi_log_enabled(&core_prov, 0, 0))
            {
              v20 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
              *__error() = v20;
            }

            __memcpy_chk();
            v21 = __src[1];
            switch(v21)
            {
              case 2:
                v22 = 16;
                break;
              case 27:
                v22 = 48;
                break;
              case 30:
                v22 = 28;
                break;
              default:
                if (fi_log_enabled(&core_prov, 0, 0))
                {
                  v23 = *__error();
                  fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
                  v24 = __error();
                  v22 = 0;
                  *v24 = v23;
                }

                else
                {
                  v22 = 0;
                }

                break;
            }

            memcpy(v17 + 184, __src, v22);
            v25 = *(a1 + 224);
            v26 = *(v25 + 56);
            *(v25 + 200) = v17;
            *(v17 + 21) = a1;
            *(v17 + 3) = v16;
            if (a4)
            {
              *(v17 + 22) = a4;
              memcpy(v17 + 248, a3, a4);
            }

            v27 = socket(v17[185], 1, 0);
            if (v27 < 0)
            {
              if (fi_log_enabled(&sock_prov, 0, 3))
              {
                v31 = *__error();
                fi_log(&sock_prov, 0, 3, "sock_ep_cm_connect", 512, "no socket\n");
                *__error() = v31;
              }

              v4 = -*__error();
            }

            else
            {
              v28 = v27;
              sock_set_sockopts(v27, 2);
              v29 = v17[185];
              switch(v29)
              {
                case 2:
                  v30 = 16;
                  break;
                case 27:
                  v30 = 48;
                  break;
                case 30:
                  v30 = 28;
                  break;
                default:
                  if (fi_log_enabled(&core_prov, 0, 0))
                  {
                    v32 = *__error();
                    fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
                    v33 = __error();
                    v30 = 0;
                    *v33 = v32;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  break;
              }

              if (connect(v28, (v17 + 184), v30) < 0)
              {
                if (fi_log_enabled(&sock_prov, 0, 3))
                {
                  v35 = *__error();
                  v36 = __error();
                  v37 = strerror(*v36);
                  fi_log(&sock_prov, 0, 3, "sock_ep_cm_connect", 524, "connect failed : %s\n", v37);
                  *__error() = v35;
                }

                v4 = -*__error();
              }

              else
              {
                v34 = sock_cm_send(v28, v16, 0x40uLL);
                if (!v34)
                {
                  v42 = *(v17 + 22);
                  if (!v42 || (v34 = sock_cm_send(v28, (v17 + 248), v42), !v34))
                  {
                    *(*(a1 + 224) + 472) = 1;
                    *(v17 + 8) = v28;
                    sock_ep_cm_monitor_handle(v26 + 688, v17);
                    return 0;
                  }
                }

                v4 = v34;
              }

              if (fi_log_enabled(&sock_prov, 0, 3))
              {
                v38 = *__error();
                v39 = __error();
                v40 = strerror(*v39);
                fi_log(&sock_prov, 0, 3, "sock_ep_cm_connect", 546, "io failed : %s\n", v40);
                *__error() = v38;
              }

              close(v28);
            }
          }

          else
          {
            v4 = 4294967284;
          }

          *(*(a1 + 224) + 200) = 0;
          free(v16);
          free(v17);
        }

        else
        {
          return 4294967284;
        }
      }
    }
  }

  return v4;
}

uint64_t sock_ep_cm_accept(uint64_t a1, void *__src, size_t __n)
{
  v16 = 1;
  v3 = 4294967274;
  if (__n <= 0x100)
  {
    v5 = *(a1 + 224);
    if (*(v5 + 40))
    {
      if (!*(v5 + 484))
      {
        if (sock_conn_listen(*(a1 + 224)))
        {
          return v3;
        }

        v5 = *(a1 + 224);
      }

      v8 = *(v5 + 200);
      if (v8 && *v8 == 18)
      {
        *(v8 + 168) = a1;
        *(v8 + 176) = 0;
        *(v8 + 40) = 1;
        if (__n)
        {
          *(v8 + 176) = __n;
          memcpy((v8 + 248), __src, __n);
          v5 = *(a1 + 224);
        }

        v9 = *(v5 + 56);
        *(v5 + 378) = bswap32(*(*(v8 + 24) + 4)) >> 16;
        WORD2(v16) = bswap32(*(v5 + 376)) >> 16;
        HIWORD(v16) = bswap32(__n) >> 16;
        v10 = sock_cm_send(*(v8 + 32), &v16, 8uLL);
        if (v10)
        {
          v3 = v10;
          if (fi_log_enabled(&sock_prov, 0, 3))
          {
            v11 = *__error();
            fi_log(&sock_prov, 0, 3, "sock_ep_cm_accept", 595, "failed to reply\n");
LABEL_13:
            *__error() = v11;
          }
        }

        else
        {
          v13 = *(v8 + 176);
          if (v13)
          {
            v14 = sock_cm_send(*(v8 + 32), v8 + 248, v13);
            if (v14)
            {
              v3 = v14;
              if (!fi_log_enabled(&sock_prov, 0, 3))
              {
                return v3;
              }

              v11 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_ep_cm_accept", 602, "failed to send userdata\n");
              goto LABEL_13;
            }
          }

          sock_ep_cm_monitor_handle(v9 + 688, v8);
          sock_ep_enable(a1);
          v17[0] = *(v8 + 168);
          v17[1] = 0;
          if (sock_eq_report_event(*(v5 + 40), 2, v17, 0x10uLL, 0) && fi_log_enabled(&sock_prov, 0, 3))
          {
            v15 = *__error();
            fi_log(&sock_prov, 0, 3, "sock_ep_cm_accept", 615, "Error in writing to EQ\n");
            *__error() = v15;
          }

          v3 = 0;
          *(v5 + 472) = 2;
          *(v5 + 400) = *(v8 + 32);
        }
      }

      else if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v11 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_cm_accept", 575, "invalid handle for cm_accept\n");
        goto LABEL_13;
      }
    }
  }

  return v3;
}

uint64_t sock_ep_cm_shutdown(uint64_t a1)
{
  sock_ep_cm_shutdown_report(a1, 1);
  close(*(*(a1 + 224) + 400));
  *(*(a1 + 224) + 400) = -1;
  sock_ep_disable(a1);
  return 0;
}

uint64_t sock_msg_ep(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = 0;
  result = sock_alloc_endpoint(a1, a2, &v11, a4, 3);
  if (!result)
  {
    if (a2)
    {
      v7 = *(a2 + 64);
      if (v7)
      {
        if (*v7 == 9)
        {
          v8 = *(*(v11 + 224) + 360);
          v10 = *(v7 + 272);
          v9 = *(v7 + 288);
          *v8 = *(v7 + 256);
          v8[1] = v10;
          v8[2] = v9;
        }
      }
    }

    *a3 = v11;
  }

  return result;
}

uint64_t sock_ep_cm_signal(uint64_t a1)
{
  pthread_mutex_lock((a1 + 88));
  v3 = 0;
  pthread_mutex_lock((a1 + 8));
  if (!*(a1 + 80))
  {
    if (send(*(a1 + 76), &v3, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 80);
  }

  pthread_mutex_unlock((a1 + 8));
  return pthread_mutex_unlock((a1 + 88));
}

uint64_t sock_pep_getopt(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  result = 4294967254;
  if (!a2 && a3 == 1)
  {
    if (*a5 >= 8uLL)
    {
      result = 0;
      *a4 = 256;
    }

    else
    {
      result = 4294967039;
    }

    *a5 = 8;
  }

  return result;
}

uint64_t sock_msg_sep(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  result = sock_alloc_endpoint(a1, a2, &v6, a4, 4);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sock_msg_passive_ep(uint64_t a1, uint64_t a2, int **a3, uint64_t a4)
{
  if (!a2)
  {
    sock_msg_passive_ep_cold_1();
  }

  v8 = malloc_type_calloc(1uLL, 0x1B8uLL, 0x10A004066E9DCCFuLL);
  if (v8)
  {
    v9 = v8;
    memset(&v27, 0, sizeof(v27));
    v26 = 0;
    if (*(a2 + 48))
    {
      v10 = *(a2 + 32);
      __memcpy_chk();
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
      v27.ai_socktype = 1;
      sa_family = ofi_get_sa_family(a2);
      if (sa_family)
      {
        v19 = sa_family;
      }

      else
      {
        v19 = 2;
      }

      v27.ai_family = v19;
      v20 = "localhost";
      if (v19 == 30)
      {
        v20 = "::1";
      }

      if (v19 == 2)
      {
        v21 = "127.0.0.1";
      }

      else
      {
        v21 = v20;
      }

      if (getaddrinfo(v21, 0, &v27, &v26))
      {
        v17 = 4294967274;
LABEL_18:
        free(v9);
        return v17;
      }

      v23 = v26;
      ai_addr = v26->ai_addr;
      ai_addrlen = v26->ai_addrlen;
      __memcpy_chk();
      freeaddrinfo(v23);
    }

    v11 = *a2;
    v12 = *(a2 + 16);
    v13 = *(a2 + 48);
    *(v9 + 21) = *(a2 + 32);
    *(v9 + 22) = v13;
    *(v9 + 19) = v11;
    *(v9 + 20) = v12;
    v14 = *(a2 + 64);
    v15 = *(a2 + 80);
    v16 = *(a2 + 96);
    *(v9 + 52) = *(a2 + 112);
    *(v9 + 24) = v15;
    *(v9 + 25) = v16;
    *(v9 + 23) = v14;
    if (!socketpair(1, 1, 0, v9 + 60))
    {
      fd_set_nonblock(v9[61]);
      v17 = 0;
      *v9 = 9;
      *(v9 + 1) = a4;
      *(v9 + 2) = &sock_pep_fi_ops;
      *(v9 + 3) = &sock_pep_ops;
      *(v9 + 4) = &sock_pep_cm_ops;
      *(v9 + 5) = a1;
      *a3 = v9;
      return v17;
    }

    v17 = -*__error();
    goto LABEL_18;
  }

  return 4294967284;
}

uint64_t sock_ep_cm_start_thread(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a1 + 176))
  {
    sock_ep_cm_start_thread_cold_1();
  }

  pthread_mutex_init((a1 + 88), 0);
  *(a1 + 160) = a1 + 160;
  *(a1 + 168) = a1 + 160;
  v2 = kqueue();
  *a1 = v2;
  if ((v2 & 0x80000000) == 0 || (v8 = *__error(), v8 < 1))
  {
    if (socketpair(1, 1, 0, (a1 + 72)) < 0)
    {
      if ((-*__error() & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(a1 + 80) = 0;
      v3 = pthread_mutex_init((a1 + 8), 0);
      if (!v3)
      {
        v4 = fi_fd_nonblock(*(a1 + 72));
        if (!v4)
        {
LABEL_8:
          v5 = *a1;
          changelist.ident = *(a1 + 72);
          *&changelist.filter = 0x1FFFF;
          memset(&changelist.fflags, 0, 20);
          ident = changelist.ident;
          v16 = 131070;
          v18 = 0;
          v17 = 0;
          v19 = 0;
          if (kevent(v5, &changelist, 2, 0, 0, 0) < 0 && (v11 = *__error()) != 0)
          {
            v6 = -v11;
            if (!fi_log_enabled(&sock_prov, 0, 3))
            {
LABEL_22:
              *(a1 + 176) = 0;
              close(*(a1 + 72));
              close(*(a1 + 76));
              pthread_mutex_destroy((a1 + 8));
LABEL_23:
              close(*a1);
              goto LABEL_24;
            }

            v7 = *__error();
            fi_log(&sock_prov, 0, 3, "sock_ep_cm_start_thread", 1254, "failed to add signal fd to epoll\n");
          }

          else
          {
            *(a1 + 176) = 1;
            *(a1 + 180) = 0;
            v6 = pthread_create((a1 + 152), 0, sock_ep_cm_thread, a1);
            if (!v6)
            {
              goto LABEL_24;
            }

            if (!fi_log_enabled(&sock_prov, 0, 3))
            {
              goto LABEL_22;
            }

            v7 = *__error();
            fi_log(&sock_prov, 0, 3, "sock_ep_cm_start_thread", 1263, "failed to create conn listener thread\n");
          }

          *__error() = v7;
          goto LABEL_22;
        }

        v3 = v4;
        pthread_mutex_destroy((a1 + 8));
      }

      close(*(a1 + 72));
      close(*(a1 + 76));
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    v6 = -*__error();
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v10 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ep_cm_start_thread", 1246, "failed to init signal\n");
      *__error() = v10;
    }

    goto LABEL_23;
  }

  v6 = -v8;
  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v9 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ep_cm_start_thread", 1239, "failed to create epoll set\n");
    *__error() = v9;
  }

LABEL_24:
  v12 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sock_ep_cm_thread(uint64_t a1)
{
  v74 = *MEMORY[0x29EDCA608];
  if (*(a1 + 176))
  {
    v2 = (a1 + 160);
    while (1)
    {
      while (1)
      {
        pthread_mutex_lock((a1 + 88));
        v3 = *v2;
        if (*v2 == v2)
        {
          break;
        }

        v4 = *v3;
        v5 = v3[1];
        *v5 = *v3;
        *(v4 + 8) = v5;
        pthread_mutex_unlock((a1 + 88));
        v6 = *(v3 - 48);
        switch(v6)
        {
          case 4:
            pthread_mutex_lock((a1 + 88));
            sock_ep_cm_unmonitor_handle_locked(a1, (v3 - 29), 1);
            pthread_mutex_unlock((a1 + 88));
            pthread_mutex_lock((v3 - 23));
            *(v3 - 48) = 5;
            pthread_cond_signal((v3 - 15));
            pthread_mutex_unlock((v3 - 23));
            break;
          case 3:
            goto LABEL_17;
          case 2:
            v65[0] = 2;
            HIWORD(v65[0]) = bswap32(*(v3 - 28)) >> 16;
            if (!sock_cm_send(*(v3 - 50), v65, 8uLL))
            {
              v8 = *(v3 - 7);
              if (!v8 || !sock_cm_send(*(v3 - 50), (v3 + 2), v8) || !fi_log_enabled(&sock_prov, 0, 3))
              {
                goto LABEL_16;
              }

              v7 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_ep_cm_process_rejected", 763, "failed to send userdata\n");
              goto LABEL_10;
            }

            if (fi_log_enabled(&sock_prov, 0, 3))
            {
              v7 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_ep_cm_process_rejected", 757, "failed to reply\n");
LABEL_10:
              *__error() = v7;
            }

LABEL_16:
            pthread_mutex_lock((a1 + 88));
            sock_ep_cm_unmonitor_handle_locked(a1, (v3 - 29), 1);
            pthread_mutex_unlock((a1 + 88));
LABEL_17:
            free(*(v3 - 26));
            free(v3 - 29);
            break;
          default:
            sock_ep_cm_thread_cold_1();
        }
      }

      pthread_mutex_unlock((a1 + 88));
      v9 = kevent(*a1, 0, 0, eventlist, 32, 0);
      if (v9 < 0)
      {
        v55 = *__error();
        if (v55 >= 1)
        {
          if (fi_log_enabled(&sock_prov, 0, 3))
          {
            v56 = *__error();
            v57 = __error();
            v58 = strerror(*v57);
            fi_log(&sock_prov, 0, 3, "sock_ep_cm_thread", 1188, "poll failed : %s\n", v58);
            *__error() = v56;
          }

          goto LABEL_110;
        }

        v9 = -v55;
      }

      pthread_mutex_lock((a1 + 88));
      if ((*(a1 + 180) & 1) == 0)
      {
        break;
      }

      *(a1 + 180) = 0;
LABEL_109:
      pthread_mutex_unlock((a1 + 88));
LABEL_110:
      if (!*(a1 + 176))
      {
        goto LABEL_116;
      }
    }

    if (v9 < 1)
    {
      goto LABEL_109;
    }

    v10 = 0;
    v11 = v9;
    while (1)
    {
      udata = eventlist[v10].udata;
      if (!udata)
      {
        LOBYTE(v65[0]) = 0;
        pthread_mutex_lock((a1 + 8));
        while (*(a1 + 80))
        {
          while (recv(*(a1 + 72), v65, 1uLL, 0) == 1)
          {
            v16 = *(a1 + 80) - 1;
            *(a1 + 80) = v16;
            if (!v16)
            {
              goto LABEL_40;
            }
          }

          if (*__error() != 35 && *__error() != 35)
          {
            sock_conn_listener_thread_cold_1();
          }

          if (fi_poll_fd(*(a1 + 72), 10000) < 1)
          {
            sock_conn_listener_thread_cold_2();
          }
        }

LABEL_40:
        pthread_mutex_unlock((a1 + 8));
        goto LABEL_92;
      }

      v13 = *(udata + 8);
      if (!udata[36])
      {
        if (v13 != -1)
        {
          sock_ep_cm_thread_cold_6();
        }

        goto LABEL_92;
      }

      if (v13 == -1)
      {
        sock_ep_cm_thread_cold_5();
      }

      v64 = 0;
      if (sock_cm_recv(v13, &v64, 8uLL))
      {
        if (fi_log_enabled(&sock_prov, 0, 3))
        {
          v14 = *__error();
          fi_log(&sock_prov, 0, 3, "sock_ep_cm_handle_rx", 1149, "io failed for fd %d\n", *(udata + 8));
          *__error() = v14;
        }

        v15 = *(udata + 21);
        if (!v15)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = v64;
        if (v64 - 1 < 2)
        {
          v21 = HIWORD(v64);
          v22 = __rev16(HIWORD(v64));
          if (v22 >= 0x101)
          {
            if (fi_log_enabled(&sock_prov, 0, 3))
            {
              v23 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_ep_cm_connect_handler", 394, "CM data size too large\n");
              v24 = 0;
              *__error() = v23;
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_75;
          }

          v25 = *(udata + 8);
          v63 = *(udata + 21);
          v62 = WORD2(v64);
          if (HIWORD(v64))
          {
            v24 = malloc_type_calloc(1uLL, v22, 0xC3924C52uLL);
            if (!v24 || sock_cm_recv(v25, v24, v22))
            {
LABEL_75:
              if (fi_log_enabled(&sock_prov, 0, 3))
              {
                v32 = *__error();
                v33 = __error();
                v34 = strerror(*v33);
                fi_log(&sock_prov, 0, 3, "sock_ep_cm_connect_handler", 431, "io failed : %s\n", v34);
                *__error() = v32;
              }

              sock_ep_cm_report_connect_fail(*(udata + 21), 0, 0);
              sock_ep_cm_unmonitor_handle_locked(a1, udata, 1);
              *(*(*(udata + 21) + 224) + 200) = 0;
              v35 = *(a1 + 168);
              v36 = *v35;
              *(udata + 29) = *v35;
              v37 = udata + 232;
              *(v37 - 48) = 3;
              *(v37 + 1) = v35;
              *(v36 + 8) = v37;
              *v35 = v37;
              LOBYTE(v65[0]) = 0;
              pthread_mutex_lock((a1 + 8));
              if (!*(a1 + 80))
              {
                if (send(*(a1 + 76), v65, 1uLL, 0) != 1)
                {
                  sock_conn_stop_listener_thread_cold_1();
                }

                ++*(a1 + 80);
              }

              pthread_mutex_unlock((a1 + 8));
              v28 = 0;
            }

            else
            {
              v17 = v64;
LABEL_66:
              if (v17 == 2)
              {
                sock_ep_cm_report_connect_fail(*(udata + 21), v24, v22);
                sock_ep_cm_unmonitor_handle_locked(a1, udata, 1);
                v28 = 0;
              }

              else
              {
                v61 = v25;
                v29 = malloc_type_calloc(1uLL, 0x110uLL, 0x20040A4A59CD2uLL);
                if (!v29)
                {
                  goto LABEL_75;
                }

                v28 = v29;
                *v29 = v63;
                if (v21)
                {
                  __memcpy_chk();
                }

                v30 = *(v63 + 224);
                *(v30 + 472) = 2;
                *(v30 + 400) = v61;
                *(v30 + 378) = bswap32(v62) >> 16;
                if (sock_eq_report_event(*(v30 + 40), 2, v28, (v22 + 16), 0) && fi_log_enabled(&sock_prov, 0, 3))
                {
                  v31 = *__error();
                  fi_log(&sock_prov, 0, 3, "sock_ep_cm_connect_handler", 427, "Error in writing to EQ\n");
                  *__error() = v31;
                }
              }
            }

            free(v24);
            free(v28);
            goto LABEL_92;
          }

          v24 = 0;
          goto LABEL_66;
        }

        if (v64 != 3)
        {
          if (v64)
          {
            if (fi_log_enabled(&sock_prov, 0, 3))
            {
              v26 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_ep_cm_handle_rx", 1170, "Unexpected message type %d\n", v64);
              *__error() = v26;
            }

            goto LABEL_92;
          }

          v18 = malloc_type_calloc(1uLL, 0x140uLL, 0x1000040FA0F61DDuLL);
          v19 = v18;
          if (v18)
          {
            *v18 = v64;
            if (sock_cm_recv(*(udata + 8), (v18 + 8), 0x38uLL))
            {
              if (fi_log_enabled(&sock_prov, 0, 3))
              {
                v20 = *__error();
                fi_log(&sock_prov, 0, 3, "sock_pep_req_handler", 854, "IO failed\n");
                goto LABEL_89;
              }

LABEL_90:
              close(*(udata + 8));
              free(v19);
              v39 = udata;
LABEL_91:
              free(v39);
              goto LABEL_92;
            }

            v38 = __rev16(*(v19 + 3));
            if (v38 >= 0x101)
            {
              if (!fi_log_enabled(&sock_prov, 0, 3))
              {
                goto LABEL_90;
              }

              v20 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_pep_req_handler", 860, "CM data size is too large\n");
              goto LABEL_89;
            }

            if (*(v19 + 3) && sock_cm_recv(*(udata + 8), (v19 + 64), v38))
            {
              if (!fi_log_enabled(&sock_prov, 0, 3))
              {
                goto LABEL_90;
              }

              v20 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_pep_req_handler", 868, "IO failed for cm-data\n");
              goto LABEL_89;
            }

            v40 = *(udata + 20);
            v41 = *(v19 + 7);
            v42 = *(v40 + 312) & qword_2A1894680;
            if ((v42 & 4) != 0)
            {
              v42 |= 0x3000uLL;
            }

            if ((v42 | qword_2A1894680 & v41) != v42)
            {
              goto LABEL_103;
            }

            v43 = *(v40 + 384);
            v69 = *(v40 + 368);
            v70 = v43;
            v71 = *(v40 + 400);
            v72 = *(v40 + 416);
            v44 = *(v40 + 352);
            v67 = *(v40 + 336);
            v68 = v44;
            v45 = *(v40 + 304);
            v46 = *(v40 + 320);
            v65[0] = *(v40 + 304);
            v66 = v46;
            v65[1] = v41;
            v47 = sock_fi_info(*(*(v40 + 40) + 32), 1, v65, (v40 + 256), v19 + 8);
            if (!v47)
            {
LABEL_103:
              v52 = *(a1 + 168);
              v53 = *v52;
              *(udata + 29) = *v52;
              v54 = udata + 232;
              *(v54 - 7) = 0;
              *(v54 - 48) = 2;
              *(v54 + 1) = v52;
              *(v53 + 8) = v54;
              *v52 = v54;
              LOBYTE(v65[0]) = 0;
              pthread_mutex_lock((a1 + 8));
              if (!*(a1 + 80))
              {
                if (send(*(a1 + 76), v65, 1uLL, 0) != 1)
                {
                  sock_conn_stop_listener_thread_cold_1();
                }

                ++*(a1 + 80);
              }

              pthread_mutex_unlock((a1 + 8));
              v39 = v19;
              goto LABEL_91;
            }

            v48 = v47;
            v49 = malloc_type_calloc(1uLL, v38 + 16, 0x20040A4A59CD2uLL);
            if (v49)
            {
              v50 = v49;
              *udata = 18;
              *(udata + 3) = v19;
              *v49 = *(udata + 20);
              v49[1] = v48;
              v48[8] = udata;
              memcpy(v49 + 2, v19 + 64, v38);
              sock_ep_cm_unmonitor_handle_locked(a1, udata, 0);
              if (sock_eq_report_event(*(*(udata + 20) + 424), 1, v50, v38 + 16, 0) && fi_log_enabled(&sock_prov, 0, 3))
              {
                v51 = *__error();
                fi_log(&sock_prov, 0, 3, "sock_pep_req_handler", 904, "Error in writing to EQ\n");
                *__error() = v51;
              }

              free(v50);
              goto LABEL_92;
            }

            if (!fi_log_enabled(&sock_prov, 0, 3))
            {
              goto LABEL_90;
            }

            v20 = *__error();
            v27 = 887;
          }

          else
          {
            if (!fi_log_enabled(&sock_prov, 0, 3))
            {
              goto LABEL_90;
            }

            v20 = *__error();
            v27 = 844;
          }

          fi_log(&sock_prov, 0, 3, "sock_pep_req_handler", v27, "cannot allocate memory\n");
LABEL_89:
          *__error() = v20;
          goto LABEL_90;
        }

        v15 = *(udata + 21);
        if (!v15)
        {
          sock_ep_cm_thread_cold_2();
        }
      }

      sock_ep_cm_shutdown_report(v15, 0);
LABEL_31:
      sock_ep_cm_unmonitor_handle_locked(a1, udata, 1);
LABEL_92:
      if (++v10 == v11)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_116:
  v59 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sock_ep_cm_wait_handle_finalized(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = 4;
  pthread_mutex_lock((a1 + 88));
  v4 = *(a1 + 168);
  v5 = *v4;
  *(a2 + 232) = *v4;
  *(a2 + 240) = v4;
  *(v5 + 8) = a2 + 232;
  *v4 = a2 + 232;
  v7 = 0;
  pthread_mutex_lock((a1 + 8));
  if (!*(a1 + 80))
  {
    if (send(*(a1 + 76), &v7, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 80);
  }

  pthread_mutex_unlock((a1 + 8));
  pthread_mutex_unlock((a1 + 88));
  pthread_mutex_lock((a2 + 48));
  while (*(a2 + 40) != 5)
  {
    ofi_wait_cond((a2 + 112), (a2 + 48), 0xFFFFFFFF);
  }

  return pthread_mutex_unlock((a2 + 48));
}

uint64_t sock_ep_cm_stop_thread(uint64_t result)
{
  if (*(result + 176))
  {
    v1 = result;
    *(result + 176) = 0;
    sock_ep_cm_signal(result);
    v2 = *(v1 + 152);
    if (v2)
    {
      pthread_join(v2, 0);
    }

    close(*v1);
    close(*(v1 + 72));
    close(*(v1 + 76));
    pthread_mutex_destroy((v1 + 8));

    return pthread_mutex_destroy((v1 + 88));
  }

  return result;
}

uint64_t sock_pep_create_listener(uint64_t a1)
{
  v14 = 0;
  v2 = socket(*(a1 + 257), 1, 6);
  *(a1 + 232) = v2;
  if (v2 == -1)
  {
    return -*__error();
  }

  sock_set_sockopts(v2, 1);
  v3 = *(a1 + 232);
  v4 = *(a1 + 257);
  switch(v4)
  {
    case 2:
      v5 = 16;
      break;
    case 27:
      v5 = 48;
      break;
    case 30:
      v5 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v7 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v8 = __error();
        v5 = 0;
        *v8 = v7;
      }

      else
      {
        v5 = 0;
      }

      break;
  }

  if (bind(v3, (a1 + 256), v5))
  {
    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      goto LABEL_20;
    }

    v9 = *__error();
    v10 = __error();
    strerror(*v10);
    fi_log(&sock_prov, 0, 3, "sock_pep_create_listener", 114, "failed to bind listener: %s\n");
  }

  else
  {
    v14 = 48;
    if (getsockname(*(a1 + 232), (a1 + 256), &v14) == -1)
    {
      goto LABEL_20;
    }

    if (!listen(*(a1 + 232), sock_cm_def_map_sz))
    {
      v6 = 0;
      *(a1 + 236) = 1;
      *(a1 + 432) = 1;
      return v6;
    }

    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      goto LABEL_20;
    }

    v9 = *__error();
    v11 = __error();
    strerror(*v11);
    fi_log(&sock_prov, 0, 3, "sock_pep_create_listener", 128, "failed to listen socket: %s\n");
  }

  *__error() = v9;
LABEL_20:
  v6 = -*__error();
  v12 = *(a1 + 232);
  if (v12)
  {
    close(v12);
    *(a1 + 232) = -1;
  }

  return v6;
}

char *sock_ep_cm_new_handle()
{
  v0 = malloc_type_calloc(1uLL, 0x1F8uLL, 0x10A0040D195DE8EuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 48), 0);
    pthread_cond_init((v1 + 112), 0);
    *(v1 + 10) = 0;
  }

  return v1;
}

uint64_t sock_cm_send(int a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  while (2)
  {
    if (a3 - v6 >= 0x7FFFFFFF)
    {
      v7 = 0x7FFFFFFFLL;
    }

    else
    {
      v7 = a3 - v6;
    }

    while (1)
    {
      v8 = send(a1, (a2 + v6), v7, 0x80000);
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() != 35 && *__error() != 35)
      {
        if (fi_log_enabled(&sock_prov, 0, 3))
        {
          v11 = *__error();
          v12 = __error();
          v13 = strerror(*v12);
          fi_log(&sock_prov, 0, 3, "sock_cm_send", 197, "failed to write to fd: %s\n", v13);
          *__error() = v11;
        }

        return 4294967291;
      }
    }

    v6 += v8;
    if (v6 < a3)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sock_ep_cm_monitor_handle(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((a1 + 88));
  if (!*(a2 + 36))
  {
    *(a2 + 36) = 1;
    v4 = *a1;
    changelist.ident = *(a2 + 32);
    *&changelist.filter = 0x1FFFFLL;
    changelist.data = 0;
    changelist.udata = a2;
    ident = changelist.ident;
    v11 = 131070;
    v12 = 0;
    v13 = a2;
    if (kevent(v4, &changelist, 2, 0, 0, 0) < 0 && (v5 = *__error()) != 0)
    {
      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v6 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_cm_monitor_handle", 240, "failed to monitor fd %d: %d\n", *(a2 + 32), -v5);
        *__error() = v6;
      }

      *(a2 + 36) = 0;
    }

    else
    {
      LOBYTE(changelist.ident) = 0;
      pthread_mutex_lock((a1 + 8));
      if (!*(a1 + 80))
      {
        if (send(*(a1 + 76), &changelist, 1uLL, 0) != 1)
        {
          sock_conn_stop_listener_thread_cold_1();
        }

        ++*(a1 + 80);
      }

      pthread_mutex_unlock((a1 + 8));
    }
  }

  result = pthread_mutex_unlock((a1 + 88));
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_ep_cm_shutdown_report(uint64_t a1, int a2)
{
  v9[1] = 0;
  v8 = 0;
  pthread_mutex_lock((*(a1 + 224) + 408));
  v4 = *(a1 + 224);
  v5 = *(v4 + 472);
  if ((v5 - 1) >= 2)
  {
    if (v5)
    {
      sock_ep_cm_shutdown_report_cold_1();
    }

    return pthread_mutex_unlock((v4 + 408));
  }

  else
  {
    *(v4 + 472) = 0;
    pthread_mutex_unlock((v4 + 408));
    if (v5 == 2)
    {
      if (a2)
      {
        LOBYTE(v8) = 3;
        sock_cm_send(*(*(a1 + 224) + 400), &v8, 8uLL);
      }

      v9[0] = a1;
      result = sock_eq_report_event(*(*(a1 + 224) + 40), 3, v9, 0x10uLL, 0);
      if (result)
      {
        result = fi_log_enabled(&sock_prov, 0, 3);
        if (result)
        {
          v7 = *__error();
          fi_log(&sock_prov, 0, 3, "sock_ep_cm_shutdown_report", 319, "Error in writing to EQ\n");
LABEL_15:
          result = __error();
          *result = v7;
        }
      }
    }

    else
    {
      result = sock_eq_report_error(*(*(a1 + 224) + 40), a1, 0, 0, 61, -61, 0, 0);
      if (result)
      {
        result = fi_log_enabled(&sock_prov, 0, 3);
        if (result)
        {
          v7 = *__error();
          fi_log(&sock_prov, 0, 3, "sock_ep_cm_shutdown_report", 326, "Error in writing to EQ\n");
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

uint64_t sock_pep_fi_close(uint64_t a1)
{
  v4 = 0;
  *(a1 + 236) = 0;
  send(*(a1 + 240), &v4, 1uLL, 0);
  v2 = *(a1 + 248);
  if (v2)
  {
    pthread_join(v2, 0);
  }

  sock_ep_cm_stop_thread(a1 + 48);
  close(*(a1 + 240));
  close(*(a1 + 244));
  free(a1);
  return 0;
}

uint64_t sock_pep_fi_bind(uint64_t a1, void *a2)
{
  if (*a2 != 13)
  {
    return 4294967274;
  }

  if (*(a1 + 40) == a2[8])
  {
    result = 0;
    *(a1 + 424) = a2;
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v3 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_pep_fi_bind", 680, "Cannot bind Passive EP and EQ on different fabric\n");
      *__error() = v3;
    }

    return 4294967274;
  }

  return result;
}

uint64_t sock_pep_listen(uint64_t a1)
{
  v1 = (a1 + 248);
  if (*(a1 + 248))
  {
    return 0;
  }

  if (sock_ep_cm_start_thread(a1 + 48))
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v4 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_pep_listen", 985, "Couldn't create listener thread\n");
LABEL_13:
      *__error() = v4;
    }
  }

  else if (*(a1 + 236) || !sock_pep_create_listener(a1))
  {
    result = pthread_create(v1, 0, sock_pep_listener_thread, a1);
    if (!result)
    {
      return result;
    }

    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v4 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_pep_start_listener_thread", 971, "Couldn't create listener thread\n");
      goto LABEL_13;
    }
  }

  else if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v4 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_pep_listen", 990, "Failed to create pep thread\n");
    goto LABEL_13;
  }

  return 4294967274;
}

uint64_t sock_pep_reject(uint64_t a1, uint64_t a2, void *__src, size_t __n)
{
  if (!*(a2 + 24) || *a2 != 18 || *(a2 + 40) == 1)
  {
    return 4294967274;
  }

  *(a2 + 176) = 0;
  if (__n)
  {
    memcpy((a2 + 248), __src, __n);
    *(a2 + 176) = __n;
  }

  *(a2 + 40) = 2;
  pthread_mutex_lock((a1 + 136));
  v8 = *(a1 + 216);
  v9 = *v8;
  *(a2 + 232) = *v8;
  *(a2 + 240) = v8;
  v10 = a2 + 232;
  *(v9 + 8) = v10;
  *v8 = v10;
  v11 = 0;
  pthread_mutex_lock((a1 + 56));
  if (!*(a1 + 128))
  {
    if (send(*(a1 + 124), &v11, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 128);
  }

  pthread_mutex_unlock((a1 + 56));
  pthread_mutex_unlock((a1 + 136));
  return 0;
}

uint64_t sock_pep_listener_thread(int *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11.fd = a1[58];
  v12 = a1[61];
  v13 = 1;
  v11.events = 1;
  if (a1[59])
  {
    while (poll(&v11, 2u, -1) >= 1)
    {
      if (v14)
      {
        recv(a1[61], &v10, 1uLL, 0);
      }

      else
      {
        v2 = accept(a1[58], 0, 0);
        if (v2 < 0)
        {
          if (fi_log_enabled(&sock_prov, 0, 3))
          {
            v5 = *__error();
            v6 = __error();
            fi_log(&sock_prov, 0, 3, "sock_pep_listener_thread", 943, "failed to accept: %d\n", *v6);
            *__error() = v5;
          }
        }

        else
        {
          v3 = v2;
          sock_set_sockopts(v2, 2);
          v4 = sock_ep_cm_new_handle();
          if (!v4)
          {
            if (fi_log_enabled(&sock_prov, 0, 3))
            {
              v7 = *__error();
              fi_log(&sock_prov, 0, 3, "sock_pep_listener_thread", 950, "cannot allocate memory\n");
              *__error() = v7;
            }

            close(v3);
            break;
          }

          *(v4 + 8) = v3;
          *(v4 + 20) = a1;
          sock_ep_cm_monitor_handle((a1 + 12), v4);
        }
      }

      if (!a1[59])
      {
        break;
      }
    }
  }

  close(a1[58]);
  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

int *sock_ep_cm_unmonitor_handle_locked(int *result, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a2 + 36))
  {
    v5 = result;
    v6 = *result;
    changelist.ident = *(a2 + 32);
    *&changelist.filter = 196607;
    memset(&changelist.fflags, 0, 20);
    ident = changelist.ident;
    v12 = 196606;
    v14 = 0;
    v13 = 0;
    v15 = 0;
    result = kevent(v6, &changelist, 2, 0, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      result = __error();
      if (*result != 2)
      {
        result = __error();
        v7 = *result;
        if (*result)
        {
          result = fi_log_enabled(&sock_prov, 0, 3);
          if (result)
          {
            v8 = *__error();
            fi_log(&sock_prov, 0, 3, "sock_ep_cm_unmonitor_handle_locked", 260, "failed to unmonitor fd %d: %d\n", *(a2 + 32), -v7);
            result = __error();
            *result = v8;
          }
        }
      }
    }

    *(a2 + 36) = 0;
    *(v5 + 180) = 1;
  }

  if (a3)
  {
    result = *(a2 + 32);
    if (result != -1)
    {
      result = close(result);
      *(a2 + 32) = -1;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_cm_recv(int a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = a3 - v6 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3 - v6;
    v8 = recv(a1, (a2 + v6), v7, 0);
    if (v8 <= 0)
    {
      break;
    }

LABEL_7:
    v6 += v8;
    if (v6 >= a3)
    {
      return 0;
    }
  }

  while (v8 < 0 && (*__error() == 35 || *__error() == 35))
  {
    v8 = recv(a1, (a2 + v6), v7, 0);
    if (v8 >= 1)
    {
      goto LABEL_7;
    }
  }

  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    fi_log(&sock_prov, 0, 3, "sock_cm_recv", 216, "failed to read from fd: %s\n", v11);
    *__error() = v9;
  }

  return 4294967291;
}

uint64_t sock_ep_cm_report_connect_fail(uint64_t a1, const void *a2, size_t a3)
{
  pthread_mutex_lock((*(a1 + 224) + 408));
  v6 = *(a1 + 224);
  if (*(v6 + 472) == 1)
  {
    *(v6 + 472) = 0;
    pthread_mutex_unlock((v6 + 408));
    result = sock_eq_report_error(*(*(a1 + 224) + 40), a1, 0, 0, 61, -61, a2, a3);
    if (result)
    {
      result = fi_log_enabled(&sock_prov, 0, 3);
      if (result)
      {
        v8 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_cm_report_connect_fail", 367, "Error in writing to EQ\n");
        result = __error();
        *result = v8;
      }
    }
  }

  else
  {

    return pthread_mutex_unlock((v6 + 408));
  }

  return result;
}

uint64_t sock_rdm_ep(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  result = sock_alloc_endpoint(a1, a2, &v6, a4, 3);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sock_rdm_sep(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  result = sock_alloc_endpoint(a1, a2, &v6, a4, 4);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

void *sock_rx_new_entry(void *a1)
{
  if (!a1[61])
  {
    result = malloc_type_calloc(a1[59], 0x138uLL, 0x1020040A7832CD7uLL);
    a1[61] = result;
    if (!result)
    {
      return result;
    }

    a1[62] = 0;
    a1[63] = 0;
    v4 = a1[59];
    if (v4)
    {
      v5 = result + 37;
      a1[62] = result + 37;
      result[37] = 0;
      a1[63] = result + 37;
      v6 = a1[61];
      *(v6 + 13) = 1;
      v7 = v4 - 1;
      if (v7)
      {
        v8 = 608;
        do
        {
          if (!a1[62])
          {
            v5 = a1 + 62;
          }

          v9 = (v6 + v8);
          *v5 = v6 + v8;
          *v9 = 0;
          a1[63] = v6 + v8;
          v6 = a1[61];
          *(v6 + v8 - 283) = 1;
          v8 += 312;
          v5 = v9;
          --v7;
        }

        while (v7);
      }
    }
  }

  v2 = a1[62];
  if (v2)
  {
    if (v2 == a1[63])
    {
      a1[62] = 0;
      a1[63] = 0;
    }

    else
    {
      a1[62] = *v2;
    }

    result = v2 - 37;
    v2[1] = a1;
    goto LABEL_17;
  }

  result = malloc_type_calloc(1uLL, 0x138uLL, 0x1020040A7832CD7uLL);
  if (result)
  {
LABEL_17:
    *(result + 12) = 0;
    result[35] = result + 35;
    result[36] = result + 35;
    --a1[13];
  }

  return result;
}

void sock_rx_release_entry(void *a1)
{
  if (*(a1 + 13))
  {
    v1 = *(a1 + 38);
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 17) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 38) = 0;
    *(a1 + 38) = v1;
    *(a1 + 13) = 1;
    v2 = a1 + 296;
    v3 = *(v1 + 496);
    if (!v3)
    {
      *(v1 + 504) = v2;
    }

    *v2 = v3;
    *(v1 + 496) = v2;
  }

  else
  {
    free(a1);
  }
}

_WORD *sock_rx_new_buffered_entry(void *a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, a2 + 312, 0x1020040A7832CD7uLL);
  if (result)
  {
    result[4] = 257;
    *(result + 2) = 1;
    *(result + 11) = result + 156;
    *(result + 12) = a2;
    *(result + 3) = a2;
    a1[14] += a2;
    v5 = a1[41];
    v6 = *v5;
    *(result + 35) = *v5;
    *(result + 36) = v5;
    *(v6 + 8) = result + 140;
    *v5 = (result + 140);
    a1[52] = a1 + 40;
  }

  return result;
}

void *sock_rx_get_entry(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = (a1 + 304);
  v5 = *(a1 + 304);
  if (v5 == (a1 + 304))
  {
    return 0;
  }

  while (1)
  {
    if (!*(v5 - 271) && *(v5 - 268) == a4 && ((*(v5 - 27) ^ a3) & ~*(v5 - 26)) == 0)
    {
      v10 = *(v5 - 29);
      v11 = v10 == a2 || a2 == -1;
      if (v11 || v10 == -1)
      {
        break;
      }

      v13 = *(a1 + 232);
      if (v13)
      {
        if (!sock_av_compare_addr(v13, a2, v10))
        {
          break;
        }
      }
    }

    v5 = *v5;
    if (v5 == v4)
    {
      return 0;
    }
  }

  result = v5 - 35;
  *(v5 - 271) = 1;
  return result;
}

void *sock_rx_get_buffered_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a1 + 320);
  v6 = *(a1 + 320);
  if (v6 == (a1 + 320))
  {
    return 0;
  }

  v11 = ~a4;
  while (1)
  {
    if (!*(v6 - 271) && *(v6 - 268) == a5 && !*(v6 - 270) && ((*(v6 - 27) ^ a3) & v11) == 0)
    {
      v12 = *(v6 - 29);
      if (v12 == a2)
      {
        break;
      }

      if (a2 == -1)
      {
        break;
      }

      if (v12 == -1)
      {
        break;
      }

      v13 = *(a1 + 232);
      if (v13)
      {
        if (!sock_av_compare_addr(v13, a2, v12))
        {
          break;
        }
      }
    }

    v6 = *v6;
    if (v6 == v5)
    {
      return 0;
    }
  }

  return v6 - 35;
}

uint64_t rxm_ep_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[1] = a3;
  v18 = a4;
  v16[2] = a7;
  v17[0] = a2;
  v16[0] = a6;
  v16[1] = a3;
  *&v9 = v17;
  *(&v9 + 1) = &v18;
  v10 = 1;
  v11 = a5;
  v12 = v16;
  v13 = 1;
  v14 = a8;
  v15 = 0;
  return rxm_ep_rma_common(a1, &v9, *(a1 + 144), fi_readmsg, 256);
}

uint64_t rxm_ep_readv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[0] = a6;
  v8 = 0;
  if (a4)
  {
    v9 = (a2 + 8);
    v10 = a4;
    do
    {
      v11 = *v9;
      v9 += 2;
      v8 += v11;
      --v10;
    }

    while (v10);
  }

  v20[1] = v8;
  v20[2] = a7;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = v20;
  v17 = 1;
  v18 = a8;
  v19 = 0;
  return rxm_ep_rma_common(a1, &v13, *(a1 + 144), fi_readmsg, 256);
}

uint64_t rxm_ep_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[2] = a7;
  v18 = a4;
  v17[0] = a6;
  v17[1] = a3;
  v16[0] = a2;
  v16[1] = a3;
  *&v9 = v16;
  *(&v9 + 1) = &v18;
  v10 = 1;
  v11 = a5;
  v12 = v17;
  v13 = 1;
  v14 = a8;
  v15 = 0;
  return rxm_ep_generic_writemsg(a1, &v9, *(a1 + 144));
}

uint64_t rxm_ep_writev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[0] = a6;
  v8 = 0;
  if (a4)
  {
    v9 = (a2 + 8);
    v10 = a4;
    do
    {
      v11 = *v9;
      v9 += 2;
      v8 += v11;
      --v10;
    }

    while (v10);
  }

  v20[1] = v8;
  v20[2] = a7;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = v20;
  v17 = 1;
  v18 = a8;
  v19 = 0;
  return rxm_ep_generic_writemsg(a1, &v13, *(a1 + 144));
}

uint64_t rxm_ep_inject_write(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a4, &v16);
  if (!conn)
  {
    if (*(a1 + 12952) < a3 || *(a1 + 200))
    {
      v19[0] = a5;
      v19[1] = a3;
      v19[2] = a6;
      v18[0] = a2;
      v18[1] = a3;
      v17[0] = v18;
      v17[1] = 0;
      v17[2] = 1;
      v17[3] = a4;
      v17[4] = v19;
      v17[5] = 1;
      v17[6] = 0;
      v17[7] = 0;
      conn = rxm_ep_rma_emulate_inject_msg(a1, v16, a3, v17, 0x2000000);
    }

    else
    {
      v14 = (*(*(*(v16 + 16) + 48) + 56))();
      conn = v14;
      if (v14)
      {
        if (v14 == -35)
        {
          rxm_ep_do_progress(a1);
        }

        else if (fi_log_enabled(&rxm_prov, 0, 4))
        {
          v15 = *__error();
          fi_log(&rxm_prov, 0, 4, "rxm_ep_inject_write", 458, "fi_inject_write for MSG provider failed: %zd\n", conn);
          *__error() = v15;
        }
      }
    }
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_ep_writedata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[2] = a8;
  v19 = a4;
  v18[0] = a7;
  v18[1] = a3;
  v17[0] = a2;
  v17[1] = a3;
  *&v10 = v17;
  *(&v10 + 1) = &v19;
  v11 = 1;
  v12 = a6;
  v13 = v18;
  v14 = 1;
  v15 = a9;
  v16 = a5;
  return rxm_ep_generic_writemsg(a1, &v10, *(a1 + 144) | 0x20000);
}

uint64_t rxm_ep_inject_writedata(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v18);
  if (!conn)
  {
    if (*(a1 + 12952) < a3 || *(a1 + 200))
    {
      v21[0] = a6;
      v21[1] = a3;
      v21[2] = a7;
      v20[0] = a2;
      v20[1] = a3;
      v19[0] = v20;
      v19[1] = 0;
      v19[2] = 1;
      v19[3] = a5;
      v19[4] = v21;
      v19[5] = 1;
      v19[6] = 0;
      v19[7] = a4;
      conn = rxm_ep_rma_emulate_inject_msg(a1, v18, a3, v19, 33685504);
    }

    else
    {
      v16 = (*(*(*(v18 + 16) + 48) + 72))();
      conn = v16;
      if (v16)
      {
        if (v16 == -35)
        {
          rxm_ep_do_progress(a1);
        }

        else if (fi_log_enabled(&rxm_prov, 0, 4))
        {
          v17 = *__error();
          fi_log(&rxm_prov, 0, 4, "rxm_ep_inject_writedata", 493, "fi_inject_writedata for MSG provider failed: %zd\n", conn);
          *__error() = v17;
        }
      }
    }
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_read_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 48) + 8))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_readv_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 48) + 16))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_readmsg_thru(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*(v6 + 16) + 48) + 24))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_write_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 48) + 32))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_writev_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 48) + 40))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_writemsg_thru(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*(v6 + 16) + 48) + 48))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_inject_write_thru(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a4, &v8);
  if (!conn)
  {
    conn = (*(*(*(v8 + 16) + 48) + 56))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_writedata_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a6, &v10);
  if (!conn)
  {
    conn = (*(*(*(v10 + 16) + 48) + 64))(*(v10 + 16));
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_inject_writedata_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 48) + 72))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_ep_rma_common(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t (*a4)(void, __int128 *, uint64_t), __int16 a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  v29 = *a2;
  v30 = v5;
  v6 = a2[3];
  v31 = a2[2];
  v32 = v6;
  memset(v33, 0, sizeof(v33));
  if (*(a2 + 5) > *(*(*(a1 + 424) + 72) + 64))
  {
    rxm_ep_rma_common_cold_1();
  }

  v28 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 3), &v28);
  if (!conn)
  {
    tx_buf = rxm_get_tx_buf(a1);
    if (!tx_buf)
    {
      conn = -35;
      goto LABEL_3;
    }

    v18 = tx_buf;
    *(tx_buf + 8) = 2;
    *(tx_buf + 409) = 0;
    tx_buf[7] = *(a2 + 6);
    tx_buf[8] = a3;
    if (*(a1 + 12928) == 1)
    {
      v19 = v30;
      if (*(a1 + 12929) == 1)
      {
        if (v30)
        {
          v20 = *(&v29 + 1);
          v21 = v33;
          do
          {
            v22 = *v20++;
            *v21++ = *(*(v22 + 40) + 24);
            --v19;
          }

          while (v19);
        }
      }

      else
      {
        v23 = tx_buf + 9;
        v24 = rxm_msg_mr_regv(a1, v29, v30, 0xFFFFFFFFFFFFFFFFLL, a5 & 0x300, tx_buf + 18, v16, v17);
        if (v24)
        {
          conn = v24;
          goto LABEL_21;
        }

        if (v19)
        {
          v25 = v33;
          v26 = v19;
          do
          {
            v27 = *v23++;
            *v25++ = *(v27 + 24);
            --v26;
          }

          while (v26);
        }

        *(v18 + 104) = v19;
      }
    }

    *(&v29 + 1) = v33;
    *&v32 = v18;
    conn = a4(*(v28 + 16), &v29, a3);
    if (!conn)
    {
      goto LABEL_3;
    }

    if (*(a1 + 12928) == 1 && (*(a1 + 12929) & 1) == 0)
    {
      rxm_msg_mr_closev((v18 + 72), *(v18 + 104));
    }

LABEL_21:
    rxm_free_tx_buf(a1, v18);
  }

LABEL_3:
  (*(a1 + 392))(a1 + 312);
  v13 = *MEMORY[0x29EDCA608];
  return conn;
}

uint64_t rxm_ep_generic_writemsg(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if ((a3 & 0x2000000) != 0)
  {
    v26 = 0;
    v7 = *(a2 + 2);
    if (v7)
    {
      v8 = 0;
      v9 = (*a2 + 8);
      do
      {
        v10 = *v9;
        v9 += 2;
        v8 += v10;
        --v7;
      }

      while (v7);
      if (v8 > *(*(*(a1 + 424) + 72) + 40))
      {
        rxm_ep_generic_writemsg_cold_1();
      }
    }

    else
    {
      v8 = 0;
    }

    (*(a1 + 384))(a1 + 312);
    conn = rxm_get_conn(a1, *(a2 + 3), &v26);
    if (!conn)
    {
      if (v8 > *(*(*(a1 + 424) + 72) + 40) || (a3 & 0x1000000) != 0 || *(a1 + 200) || *(a2 + 2) > 1uLL || *(a2 + 5) >= 2uLL)
      {
        conn = rxm_ep_rma_emulate_inject_msg(a1, v26, v8, a2, a3);
      }

      else
      {
        v12 = *(v26 + 16);
        v13 = **a2;
        v14 = *(*a2 + 8);
        if ((a3 & 0x20000) != 0)
        {
          v20 = *(a2 + 7);
          v21 = *(a2 + 3);
          v22 = *(a2 + 4);
          v23 = *v22;
          v24 = v22[2];
          v19 = (*(*(v12 + 48) + 72))();
        }

        else
        {
          v15 = *(a2 + 3);
          v16 = *(a2 + 4);
          v17 = *v16;
          v18 = v16[2];
          v19 = (*(*(v12 + 48) + 56))();
        }

        conn = v19;
        if (v19)
        {
          if (v19 == -35)
          {
            rxm_ep_do_progress(a1);
          }

          else if (fi_log_enabled(&rxm_prov, 0, 4))
          {
            v25 = *__error();
            fi_log(&rxm_prov, 0, 4, "rxm_ep_rma_inject_common", 314, "fi_inject_write* forMSG provider failed: %zd\n", conn);
            *__error() = v25;
          }
        }
      }
    }

    (*(a1 + 392))(a1 + 312);
    return conn;
  }

  else
  {

    return rxm_ep_rma_common(a1, a2, a3, fi_writemsg, 512);
  }
}

uint64_t rxm_ep_rma_emulate_inject_msg(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 40) > *(*(*(a1 + 424) + 72) + 64))
  {
    rxm_ep_rma_emulate_inject_msg_cold_2();
  }

  tx_buf = rxm_get_tx_buf(a1);
  if (!tx_buf)
  {
    return -35;
  }

  v11 = tx_buf;
  *(tx_buf + 8) = 2;
  *(tx_buf + 409) = 0;
  tx_buf[56] = a3;
  tx_buf[8] = a5;
  v12 = *(a4 + 56);
  tx_buf[7] = *(a4 + 48);
  v13 = *(a4 + 24);
  v26[6] = tx_buf;
  v26[7] = v12;
  v26[3] = v13;
  v14 = tx_buf + 59;
  v15 = rxm_copy_hmem_iov(*(a4 + 8), (tx_buf + 59), a3, *a4, *(a4 + 16), 0, 0);
  if (v15 != *(v11 + 448))
  {
    rxm_ep_rma_emulate_inject_msg_cold_1();
  }

  v27[0] = v14;
  v27[1] = v15;
  v26[0] = v27;
  v26[1] = v11 + 40;
  v21 = *(a4 + 32);
  v22 = *(a4 + 40);
  v26[2] = 1;
  v26[4] = v21;
  v26[5] = v22;
  v23 = (*(*(*(a2 + 16) + 48) + 48))(*(a2 + 16), v26, a5 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000, v16, v17, v18, v19, v20);
  v24 = v23;
  if (v23)
  {
    if (v23 == -35)
    {
      rxm_ep_do_progress(a1);
    }

    rxm_free_tx_buf(a1, v11);
  }

  return v24;
}

uint64_t rxm_finish_eager_send(uint64_t result, uint64_t a2)
{
  if ((ofi_tx_flags[*(a2 + 442)] & 0x800) == 0)
  {
    rxm_finish_eager_send_cold_1();
  }

  v2 = result;
  if (*(a2 + 67))
  {
    v3 = *(a2 + 56);
    result = (*(*(*(*(result + 136) + 288) + 24) + 8))();
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    v5 = *(*(*(v4 + 216) + 24) + 8);

    return v5();
  }

  return result;
}

uint64_t rxm_process_seg_data(uint64_t a1)
{
  v18 = 0;
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = v2[13];
  v5 = v2[9];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v2[10];
  if (v6)
  {
    v7 = *v6;
    if (v7)
    {
      v8 = *(v7 + 64);
      v18 = v8;
      hmem_iface = *(v7 + 56);
      goto LABEL_8;
    }
  }

  if (rxm_detect_hmem_iface)
  {
    hmem_iface = ofi_get_hmem_iface(*v4, &v18, 0);
    v8 = v18;
    v10 = *(a1 + 104);
    v4 = *(v10 + 104);
    v5 = *(v10 + 72);
  }

  else
  {
LABEL_7:
    v8 = 0;
    hmem_iface = 0;
  }

LABEL_8:
  v11 = (a1 + 288);
  v12 = ofi_copy_to_hmem_iov(hmem_iface, v8, v4, v5, v3[5], a1 + 288, *(a1 + 226));
  if (v12 != *(a1 + 226))
  {
    rxm_process_seg_data_cold_1();
  }

  v13 = v3[5] + v12;
  v3[5] = v13;
  if ((~*(a1 + 248) & 3) != 0)
  {
    *(a1 + 104) = 0;
    v17 = *(a1 + 216);
    if (v17 != v11)
    {
      free(v17);
      *(a1 + 216) = v11;
    }

    if (*(a1 + 144) == 1 && (*(*(a1 + 48) + 12824) || *(*(a1 + 96) + 16)))
    {
      rxm_post_recv(a1);
    }

    else
    {
      ofi_buf_free(a1);
    }

    return 0;
  }

  else
  {
    if (!*(*(a1 + 104) + 88))
    {
      v14 = *v3;
      v15 = v3[1];
      *v15 = *v3;
      *(v14 + 8) = v15;
    }

    ofi_buf_free(*(a1 + 112));
    rxm_finish_recv(a1, v13);
    return 1;
  }
}

uint64_t rxm_finish_recv(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 264) <= a2)
  {
    v7 = *(a1 + 104);
    if ((*(v7 + 56) & 0x1000000) != 0 || (v8 = *(a1 + 48), (*(*(v8 + 424) + 22) & 8) != 0))
    {
      v9 = *(v7 + 64);
      v10 = *(a1 + 260);
      v11 = **(v7 + 104);
      rxm_cq_write_recv_comp(a1);
      v8 = *(a1 + 48);
    }

    v12 = *(v8 + 184);
    if (v12)
    {
      (*(*(*(v12 + 216) + 24) + 8))();
    }
  }

  else
  {
    v4 = *(a1 + 48);
    if ((*(v4 + 295) & 0x20) != 0)
    {
      v5 = *(v4 + 184);
      if (v5)
      {
        (*(*(*(v5 + 216) + 24) + 16))();
      }
    }

    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v6 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_cq_write_error_trunc", 173, "Message truncated: recv buf length: %zu message length: %llu\n", a2, *(a1 + 264));
      *__error() = v6;
    }

    if (ofi_peer_cq_write_error_trunc(*(*(a1 + 48) + 120), *(*(a1 + 104) + 64), *(*(a1 + 104) + 56) | *(a1 + 260), *(a1 + 264), **(*(a1 + 104) + 104), *(a1 + 272), *(a1 + 280), *(a1 + 264) - a2))
    {
      rxm_finish_recv_cold_1();
    }
  }

  (*(*(*(*(a1 + 48) + 12872) + 80) + 48))(*(a1 + 104));
  v13 = *(a1 + 216);
  if (v13 != (a1 + 288))
  {
    free(v13);
    *(a1 + 216) = a1 + 288;
  }

  if (*(a1 + 144) == 1 && (*(*(a1 + 48) + 12824) || *(*(a1 + 96) + 16)))
  {

    return rxm_post_recv(a1);
  }

  else
  {

    return ofi_buf_free(a1);
  }
}

uint64_t rxm_handle_unexp_sar(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 112);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  for (i = v5; i != v4; i = *v4)
  {
    v6 = (i - 10);
    v8 = *i;
    v7 = i[1];
    *v7 = v8;
    *(v8 + 8) = v7;
    rxm_process_seg_data(v6);
  }

  *(a1 + 88) = 0;
  return 0;
}

uint64_t rxm_rndv_read(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  if (v2[4] >= *(a1 + 264))
  {
    v4 = *(a1 + 264);
  }

  else
  {
    v4 = v2[4];
  }

  v2[4] = v4;
  *(a1 + 32) = 10;
  v5 = rxm_rndv_xfer(*(a1 + 48), *(v3 + 16), *(a1 + 168), v2[13], v2[10], v2[9], v4, a1);
  if (v5)
  {
    rxm_cq_write_rx_error(*(a1 + 48), 0);
  }

  return v5;
}

uint64_t rxm_rndv_xfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a7;
  v35 = *MEMORY[0x29EDCA608];
  v31 = 0;
  v32 = 0;
  v30 = 0;
  memset(v33, 0, sizeof(v33));
  if (*(a3 + 96))
  {
    v9 = a7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    result = 0;
LABEL_7:
    if (v8)
    {
      rxm_rndv_xfer_cold_1();
    }
  }

  else
  {
    v18 = (a3 + 16);
    v19 = 1;
    while (1)
    {
      v20 = *(v18 - 1) >= v8 ? v8 : *(v18 - 1);
      LODWORD(result) = ofi_copy_iov_desc(v34, v33, &v30, a4, a5, a6, &v32, &v31, v20);
      if (result)
      {
        break;
      }

      v8 -= v20;
      result = (*(*(a1 + 13072) + 16))(a2, v34, v33, v30, 0, *(v18 - 2), *v18, a8);
      if (result)
      {
        if (result != -35)
        {
          goto LABEL_7;
        }

        v29 = 0;
        result = (*(*(a1 + 13072) + 24))(&v29, v19 - 1, v34, v33, v30, a8);
        if (result)
        {
          goto LABEL_7;
        }

        v21 = v29;
        v22 = *(v29 + 8);
        if (v22[8] == v22 + 8)
        {
          v23 = *(v22[3] + 13040);
          v24 = *v23;
          v22[6] = *v23;
          v22[7] = v23;
          *(v24 + 8) = v22 + 6;
          *v23 = (v22 + 6);
        }

        v25 = v22[9];
        v26 = *v25;
        *(v21 + 16) = *v25;
        *(v21 + 24) = v25;
        v27 = v21 + 16;
        *(v26 + 8) = v27;
        *v25 = v27;
      }

      result = 0;
      if (v19 < *(a3 + 96))
      {
        ++v19;
        v18 += 3;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    result = result;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

int *rxm_cq_write_rx_error(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    rxm_cq_write_rx_error_cold_1();
  }

  v3 = *(a1 + 8 * ofi_get_cntr_index_from_rx_op_cntr_idx[a2] + 176);
  if (v3)
  {
    (*(*(*(v3 + 216) + 24) + 16))();
  }

  result = (*(*(*(*(a1 + 120) + 288) + 24) + 16))();
  if (result)
  {
    result = fi_log_enabled(&rxm_prov, 0, 6);
    if (result)
    {
      v5 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_cq_write_rx_error", 1580, "Unable to ofi_peer_cq_write_error\n");
      result = __error();
      *result = v5;
    }
  }

  return result;
}

uint64_t rxm_handle_eager(uint64_t a1)
{
  v2 = rxm_copy_hmem_iov(*(*(a1 + 104) + 80), *(a1 + 216), *(a1 + 264), *(*(a1 + 104) + 104), *(*(a1 + 104) + 72), 0, 1);
  if (v2 != *(a1 + 264))
  {
    rxm_handle_eager_cold_1();
  }

  return rxm_finish_recv(a1, v2);
}

uint64_t rxm_handle_coll_eager(uint64_t a1)
{
  v20 = 0;
  v2 = *(a1 + 104);
  v3 = v2[13];
  v4 = v2[9];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v2[10];
  if (v5)
  {
    v6 = *v5;
    if (v6)
    {
      v7 = *(v6 + 64);
      v20 = v7;
      hmem_iface = *(v6 + 56);
      goto LABEL_8;
    }
  }

  if (rxm_detect_hmem_iface)
  {
    hmem_iface = ofi_get_hmem_iface(*v3, &v20, 0);
    v7 = v20;
    v9 = *(a1 + 104);
    v3 = *(v9 + 104);
    v4 = *(v9 + 72);
  }

  else
  {
LABEL_7:
    v7 = 0;
    hmem_iface = 0;
  }

LABEL_8:
  v10 = ofi_copy_to_hmem_iov(hmem_iface, v7, v3, v4, 0, *(a1 + 216), *(a1 + 264));
  if (v10 != *(a1 + 264))
  {
    rxm_handle_coll_eager_cold_1();
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 12848);
  if (!v12)
  {
    return rxm_finish_recv(a1, v10);
  }

  v13 = *(a1 + 280);
  if ((v13 & 0x8000000000000000) == 0)
  {
    return rxm_finish_recv(a1, v10);
  }

  v16 = *(*(a1 + 104) + 64);
  v17 = 0u;
  v18 = 0u;
  v19 = v13;
  (*(v12 + 8))(*(v11 + 12832), &v16, 0);
  (*(*(*(*(a1 + 48) + 12872) + 80) + 48))(*(a1 + 104));
  v15 = *(a1 + 216);
  if (v15 != (a1 + 288))
  {
    free(v15);
    *(a1 + 216) = a1 + 288;
  }

  if (*(a1 + 144) == 1 && (*(*(a1 + 48) + 12824) || *(*(a1 + 96) + 16)))
  {
    return rxm_post_recv(a1);
  }

  else
  {
    return ofi_buf_free(a1);
  }
}

uint64_t rxm_handle_rx_buf(uint64_t a1)
{
  v2 = *(a1 + 225);
  if (v2 == 2)
  {
    rxm_replace_rx_buf(a1);
    v6 = *(a1 + 48);
    if (*(a1 + 96))
    {
      goto LABEL_12;
    }

    if (!*(v6 + 12824))
    {
      rxm_handle_rx_buf_cold_3();
    }

    v7 = *(a1 + 232);
    v8 = *(v6 + 8 * (v7 >> 10) + 448);
    if (!v8 || !*(v6 + 4 * (v7 >> 10) + 8640))
    {
      sock_av_remove_cold_1();
    }

    v9 = *(v8 + 8 * (*(a1 + 232) & 0x3FFLL));
    *(a1 + 96) = v9;
    if (v9)
    {
LABEL_12:
      *(a1 + 168) = a1 + 288;
      *(a1 + 176) = 0;
      v10 = *(a1 + 104);
      if (*(v6 + 12929) == 1)
      {
        if (v10[9])
        {
          v11 = 0;
          do
          {
            v12 = v10[10];
            v13 = *(v12 + 8 * v11);
            *(v12 + 8 * v11) = *(*(v13 + 40) + 24);
            *(a1 + 184 + 8 * v11++) = *(v13 + 40);
            v10 = *(a1 + 104);
          }

          while (v10[9] > v11);
        }
      }

      else
      {
        if (v10[4] >= *(a1 + 264))
        {
          v15 = *(a1 + 264);
        }

        else
        {
          v15 = v10[4];
        }

        LODWORD(result) = rxm_msg_mr_regv(v6, v10[13], v10[9], v15, **(v6 + 13072), (a1 + 184), v4, v5);
        if (result)
        {
          return result;
        }

        v16 = *(a1 + 104);
        if (*(v16 + 72))
        {
          v17 = 0;
          do
          {
            v18 = *(a1 + 184 + 8 * v17);
            if (!v18)
            {
              break;
            }

            *(*(v16 + 80) + 8 * v17++) = *(v18 + 24);
            v16 = *(a1 + 104);
          }

          while (*(v16 + 72) > v17);
        }
      }

      if (*(*(a1 + 168) + 96) - 5 <= 0xFFFFFFFB)
      {
        rxm_handle_rx_buf_cold_1();
      }

      v14 = *(*(*(a1 + 48) + 13072) + 8);

      return v14(a1);
    }

    else
    {
      return -256;
    }
  }

  else
  {
    if (v2 == 1)
    {
      rxm_handle_seg_data(a1);
    }

    else
    {
      if (*(a1 + 225))
      {
        rxm_handle_rx_buf_cold_4();
      }

      (*(*(*(a1 + 48) + 13064) + 8))(a1);
    }

    return 0;
  }
}

uint64_t rxm_handle_seg_data(uint64_t result)
{
  v2 = *(result + 112);
  if (v2[2] == v2 + 2)
  {

    return rxm_process_seg_data(result);
  }

  else
  {
    v3 = v2[3];
    v4 = *v3;
    *(result + 80) = *v3;
    *(result + 88) = v3;
    *(v4 + 8) = result + 80;
    *v3 = result + 80;
    if ((~*(result + 248) & 3) == 0)
    {
      v6 = *v2;
      v5 = v2[1];
      *v5 = v6;
      *(v6 + 8) = v5;
    }

    v7 = *(result + 96);
    v10 = *(v7 + 96);
    v9 = (v7 + 96);
    v8 = v10;
    if (v10 != v9)
    {
      v11 = *(result + 104);
      v12 = *(result + 240);
      do
      {
        v13 = *v8;
        if (v12 == v8[20])
        {
          v14 = v8[1];
          *v14 = v13;
          v13[1] = v14;
          v8[3] = v11;
          result = rxm_process_seg_data((v8 - 10));
          if (result)
          {
            break;
          }
        }

        v8 = v13;
      }

      while (v13 != v9);
    }
  }

  return result;
}

uint64_t rxm_rndv_send_wr_data(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    rxm_rndv_send_wr_data_cold_8();
  }

  v2 = *(*(a1 + 48) + 13000);
  if ((v2[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(*(*(a1 + 48) + 13000)))
    {
      v12 = -12;
      goto LABEL_40;
    }

    v3 = *v2;
  }

  if (v3 == v2[1])
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v3 = v3;
  v4 = *(*(a1 + 48) + 13016);
  if ((*(v4 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v5 = *v4;
  if (*v4)
  {
LABEL_13:
    if (v5 == *(v4 + 8))
    {
      *v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = *v5;
    }

    if (atomic_fetch_add((v5[2] + 76), 1u) == -1)
    {
      sock_pe_acquire_entry_cold_4();
    }

    if (*v5 == v5)
    {
      sock_pe_acquire_entry_cold_3();
    }

    *v5 = v5;
    *(a1 + 112) = v5 + 6;
    v5[14] = v3 + 6;
    *(v3 + 457) = 7;
    v8 = *(a1 + 104);
    v9 = *(a1 + 240);
    v3[58] = *(*(a1 + 96) + 32);
    v3[59] = v9;
    rxm_rndv_hdr_init(*(a1 + 48), (v3 + 65), *(v8 + 104), *(v8 + 72), (a1 + 184));
    v10 = v3[11];
    v11 = (*(*(*(*(a1 + 96) + 16) + 40) + 32))();
    if (!v11)
    {
      v7 = 0;
      *(a1 + 32) = 14;
      return v7;
    }

    v12 = v11;
    if (v11 == -35)
    {
      v13 = rxm_ep_alloc_deferred_tx_entry(*(a1 + 48), *(a1 + 96), 0);
      if (v13)
      {
        v13[5] = a1;
        v13[6] = 168;
        v14 = v13[1];
        if (v14[8] == v14 + 8)
        {
          v15 = *(v14[3] + 13040);
          v16 = *v15;
          v14[6] = *v15;
          v14[7] = v15;
          *(v16 + 8) = v14 + 6;
          *v15 = (v14 + 6);
        }

        v7 = 0;
        v17 = v14[9];
        v18 = *v17;
        v13[2] = *v17;
        v13[3] = v17;
        v19 = v13 + 2;
        *(v18 + 8) = v19;
        *v17 = v19;
        return v7;
      }
    }

    *(*(a1 + 112) + 64) = 0;
    ofi_buf_free(*(a1 + 112));
    ofi_buf_free((v3 + 6));
LABEL_40:
    rxm_rndv_send_wr_data_cold_3(v12);
  }

  if (!ofi_bufpool_grow(*(*(a1 + 48) + 13016)))
  {
    v5 = *v4;
    goto LABEL_13;
  }

  *(a1 + 112) = 0;
  if (fi_log_enabled(&rxm_prov, 0, 6))
  {
    v6 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_rndv_send_wr_data", 1021, "Failed to allocated proto info buf\n");
    *__error() = v6;
  }

  return -12;
}

uint64_t rxm_finish_coll_eager_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 12832);
  if (v11 && (v12 = *(a2 + 464), v12 < 0))
  {
    v18 = v8;
    v19 = v9;
    v14 = *(a2 + 56);
    v15 = 0u;
    v16 = 0u;
    v17 = v12;
    return (*(*(a1 + 12848) + 8))(v11, &v14, 0, a4, a5, a6, a7, a8);
  }

  else
  {

    return rxm_finish_eager_send(a1, a2);
  }
}

uint64_t rxm_handle_comp(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if ((v4 & 0x2000) != 0)
  {
    v6 = a2[2];
    v7 = a2[4];
    (*(*(*(*(a1 + 120) + 288) + 24) + 8))();
    v8 = *(a1 + 216);
    if (v8)
    {
      (*(*(*(v8 + 216) + 24) + 8))();
    }

    v5 = *a2;
    if (v5)
    {
      v9 = *(v5 + 216);
      if (v9 != (v5 + 288))
      {
        free(v9);
        *(v5 + 216) = v5 + 288;
      }

      if (*(v5 + 144) == 1 && (*(*(v5 + 48) + 12824) || *(*(v5 + 96) + 16)))
      {
        rxm_post_recv(v5);
      }

      else
      {
LABEL_50:
        ofi_buf_free(v5);
      }
    }

    return 0;
  }

  v5 = *a2;
  switch(*(*a2 + 32))
  {
    case 0:
    case 1:
      (**(a1 + 13064))(a1, *a2);
      goto LABEL_4;
    case 2:
      if ((v4 & 0x304) == 0)
      {
        rxm_handle_comp_cold_18();
      }

      if ((a2[1] & 0x300) != 0x100 && (a2[1] & 0x300) != 0x200)
      {
        rxm_handle_comp_cold_17();
      }

      if (*(v5 + 67))
      {
        v19 = *(v5 + 56);
        (*(*(*(*(a1 + 136) + 288) + 24) + 8))();
      }

      if ((v4 & 0x200) != 0)
      {
        v20 = *(a1 + 200);
        if (!v20)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v20 = *(a1 + 192);
        if (!v20)
        {
          goto LABEL_67;
        }
      }

      (*(*(*(v20 + 216) + 24) + 8))();
LABEL_67:
      if ((*(v5 + 67) & 2) == 0 && (*(a1 + 12929) & 1) == 0 && *(a1 + 12928) == 1)
      {
        rxm_msg_mr_closev((v5 + 72), *(v5 + 104));
      }

LABEL_4:
      rxm_free_tx_buf(a1, v5);
      return 0;
    case 3:
      if ((v4 & 0x1000) != 0)
      {
        rxm_handle_comp_cold_14();
      }

      if (*(v5 + 256) != 2 || *(v5 + 224) != 4)
      {
        rxm_handle_comp_cold_15();
      }

      v21 = *(v5 + 225);
      if (v21 <= 3)
      {
        if (*(v5 + 225) <= 1u)
        {
          if (*(v5 + 225))
          {
            v26 = *a2;

            return rxm_sar_handle_segment(v26);
          }

          goto LABEL_84;
        }

        if (v21 == 2)
        {
LABEL_84:
          v28 = *a2;

          return rxm_handle_recv_comp(v28);
        }

        if (v21 != 3)
        {
          goto LABEL_110;
        }

        rxm_rndv_handle_rd_done(a1, *a2);
        return 0;
      }

      if (*(v5 + 225) <= 5u)
      {
        if (v21 == 4)
        {
          v29 = *a2;

          return rxm_handle_atomic_req(a1, v29);
        }

        else
        {
          if (v21 != 5)
          {
            goto LABEL_110;
          }

          v27 = *a2;

          return rxm_handle_atomic_resp(a1, v27);
        }
      }

      else
      {
        if (v21 == 6)
        {
          rxm_handle_credit(a1, *a2);
          return 0;
        }

        if (v21 != 7)
        {
          if (v21 == 8)
          {
            return rxm_rndv_handle_wr_done(*a2);
          }

LABEL_110:
          rxm_handle_comp_cold_16();
        }

        v30 = *a2;

        return rxm_rndv_handle_wr_data(v30);
      }

    case 4:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_13();
      }

      v15 = ofi_tx_flags[*(v5 + 442)];
      v16 = *(v5 + 56);
      v17 = *(v5 + 64);
      if (rxm_complete_sar(a1, *a2))
      {
        if ((v17 & 0x1000000) != 0)
        {
          (*(*(*(*(a1 + 136) + 288) + 24) + 8))();
        }

        v18 = *(a1 + 176);
        if (v18)
        {
          (*(*(*(v18 + 216) + 24) + 8))();
        }
      }

      return 0;
    case 5:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_19();
      }

      goto LABEL_50;
    case 6:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_12();
      }

      result = 0;
      if (*(a1 + 13072) == &rxm_rndv_ops_write)
      {
        v14 = 8;
      }

      else
      {
        v14 = 7;
      }

      goto LABEL_64;
    case 7:
    case 8:
      rxm_handle_comp_cold_11();
    case 0xA:
      if ((v4 & 0x100) == 0)
      {
        rxm_handle_comp_cold_10();
      }

      v22 = *(v5 + 168);
      v23 = *(v5 + 176) + 1;
      *(v5 + 176) = v23;
      if (v23 >= *(v22 + 96))
      {
        rxm_rndv_send_rd_done(v5);
      }

      return 0;
    case 0xB:
      if ((v4 & 0x200) == 0)
      {
        rxm_handle_comp_cold_9();
      }

      v24 = *(v5 + 288);
      v25 = *(v5 + 280) + 1;
      *(v5 + 280) = v25;
      if (v25 >= v24)
      {
        rxm_rndv_send_wr_done(a1, v5);
      }

      return 0;
    case 0xC:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_7();
      }

      goto LABEL_53;
    case 0xD:
    case 0x10:
      if ((v4 & 0xA00) == 0)
      {
        rxm_handle_comp_cold_5();
      }

      rxm_rndv_tx_finish(a1, *a2);
      return 0;
    case 0xE:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_6();
      }

      result = 0;
      v11 = *(*(v5 + 48) + 13056);
      v12 = *v11;
      *(v5 + 152) = *v11;
      *(v5 + 160) = v11;
      v13 = v5 + 152;
      *(v12 + 8) = v13;
      *v11 = v13;
      *(v13 - 120) = 9;
      return result;
    case 0x11:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_4();
      }

LABEL_53:
      rxm_rndv_rx_finish(*a2);
      return 0;
    case 0x12:
      rxm_handle_comp_cold_3();
    case 0x13:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_2();
      }

      return 0;
    case 0x14:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_1();
      }

      goto LABEL_50;
    case 0x15:
      if ((v4 & 0x800) == 0)
      {
        rxm_handle_comp_cold_8();
      }

      result = 0;
      v14 = 11;
LABEL_64:
      *(v5 + 32) = v14;
      return result;
    default:
      rxm_handle_comp_cold_20();
  }
}

uint64_t rxm_handle_recv_comp(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v2[1609];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v4 = v2[53];
  if ((*(v4 + 15) & 0xA) != 0)
  {
    if (v2[1603])
    {
      v5 = *(a1 + 232);
      v6 = v2[(v5 >> 10) + 56];
      if (!v6 || !*(v2 + (v5 >> 10) + 2160))
      {
        sock_av_remove_cold_1();
      }

      v7 = *(v6 + 8 * (*(a1 + 232) & 0x3FFLL));
      *(a1 + 96) = v7;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *(a1 + 96);
      if (v7)
      {
LABEL_6:
        v8 = *(*(v7 + 8) + 8);
        v4 = v2[53];
        goto LABEL_8;
      }
    }

    return -256;
  }

  v8 = -1;
LABEL_8:
  v21 = v8;
  if ((*(v4 + 22) & 8) != 0)
  {
    v13 = *(a1 + 225);
    if (v13 == 1)
    {
      v13 = *(a1 + 248) & 3;
      if (v13 != 1)
      {
        v14 = *(*(a1 + 96) + 104);
        v15 = *v14;
        *(a1 + 80) = *v14;
        *(a1 + 88) = v14;
        *(v15 + 8) = a1 + 80;
        *v14 = a1 + 80;
        rxm_replace_rx_buf(a1);
        LOBYTE(v13) = *(a1 + 225);
        v2 = *(a1 + 48);
      }
    }

    if (v13)
    {
      v16 = ofi_rx_flags[*(a1 + 258)] | *(a1 + 260) | 0x40000;
    }

    else
    {
      v16 = ofi_rx_flags[*(a1 + 258)] | *(a1 + 260);
    }

    *(a1 + 128) = v2;
    v17 = *(a1 + 264);
    rxm_cq_write_recv_comp(a1);
    return 0;
  }

  else
  {
    if (*(a1 + 258) == 1)
    {
      v18 = *(a1 + 280);
      v22 = *(a1 + 264);
      v23 = v18;
      v19 = (*(*(v3 + 80) + 16))(v3, &v21, &v24);
      v10 = v24;
      if (v19 == -2)
      {
        v24[11] = a1;
        *(a1 + 104) = v10;
        if ((*(a1 + 262) & 2) != 0)
        {
          v20 = v10[7] | 0x20000;
          v10[6] = *(a1 + 272);
          v10[7] = v20;
        }

        if (*(a1 + 225) == 1)
        {
          rxm_init_sar_proto(a1);
        }

        rxm_replace_rx_buf(a1);
        LODWORD(result) = (*(*(v3 + 80) + 32))(v24);
        return result;
      }
    }

    else
    {
      if (*(a1 + 258))
      {
        rxm_handle_recv_comp_cold_2();
      }

      v22 = *(a1 + 264);
      v9 = (*(*(v3 + 80) + 8))(v3, &v21, &v24);
      v10 = v24;
      if (v9 == -2)
      {
        v24[11] = a1;
        *(a1 + 104) = v10;
        if ((*(a1 + 262) & 2) != 0)
        {
          v11 = v10[7] | 0x20000;
          v10[6] = *(a1 + 272);
          v10[7] = v11;
        }

        if (*(a1 + 225) == 1)
        {
          rxm_init_sar_proto(a1);
        }

        rxm_replace_rx_buf(a1);
        LODWORD(result) = (*(*(v3 + 80) + 24))(v24);
        return result;
      }
    }

    v10[11] = 0;
    *(a1 + 104) = v10;
    if (*(a1 + 225) == 1)
    {
      rxm_init_sar_proto(a1);
    }

    return rxm_handle_rx_buf(a1);
  }
}

uint64_t rxm_rndv_handle_rd_done(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 13000);
  v3 = *(a2 + 240);
  v4 = v2[11];
  if (v3 / v4 >= v2[5])
  {
    rxm_rndv_handle_rd_done_cold_1();
  }

  v5 = *(*(v2[4] + 8 * (v3 / v4)) + 40) + v2[2] * (v3 % v4);
  if (*(v5 - 48) != v5 - 48)
  {
    rxm_rndv_handle_rd_done_cold_2();
  }

  if (*(v5 + 424) != v3)
  {
    rxm_rndv_handle_rd_done_cold_3();
  }

  v8 = *(a2 + 216);
  v9 = a2 + 288;
  if (v8 != (a2 + 288))
  {
    free(v8);
    *(a2 + 216) = v9;
  }

  if (*(a2 + 144) == 1 && (*(*(a2 + 48) + 12824) || *(*(a2 + 96) + 16)))
  {
    result = rxm_post_recv(a2);
  }

  else
  {
    result = ofi_buf_free(a2);
  }

  v11 = *(v5 + 32);
  if (v11 == 7)
  {

    return rxm_rndv_tx_finish(a1, v5);
  }

  else
  {
    if (v11 != 6)
    {
      rxm_rndv_handle_rd_done_cold_4();
    }

    *(v5 + 32) = 13;
  }

  return result;
}

uint64_t rxm_rndv_handle_wr_done(uint64_t a1)
{
  v2 = (*(a1 + 48) + 13048);
  v3 = *v2;
  if (*v2 == v2)
  {
LABEL_5:
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v4 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_rndv_handle_wr_done", 383, "Failed to find rndv wait entry for msg_id: 0x%llx, conn_id: 0x%llx\n", *(a1 + 240), *(a1 + 232));
      *__error() = v4;
    }

    v5 = 4294967274;
  }

  else
  {
    while (*(a1 + 240) != v3[11] || *(a1 + 232) != v3[10])
    {
      v3 = *v3;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    v8 = *v3;
    v9 = v3[1];
    *v9 = *v3;
    v8[1] = v9;
    v10 = *(v3 - 30);
    if (v10 == 9)
    {
      rxm_rndv_rx_finish((v3 - 19));
      v5 = 0;
    }

    else
    {
      if (v10 != 14)
      {
        rxm_rndv_handle_wr_done_cold_1();
      }

      v5 = 0;
      *(v3 - 30) = 17;
    }
  }

  v6 = *(a1 + 216);
  if (v6 != (a1 + 288))
  {
    free(v6);
    *(a1 + 216) = a1 + 288;
  }

  if (*(a1 + 144) == 1 && (*(*(a1 + 48) + 12824) || *(*(a1 + 96) + 16)))
  {
    rxm_post_recv(a1);
  }

  else
  {
    ofi_buf_free(a1);
  }

  return v5;
}

uint64_t rxm_rndv_handle_wr_data(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 13000);
  v2 = *(a1 + 240);
  v3 = v1[11];
  if (v2 / v3 >= v1[5])
  {
    rxm_rndv_handle_rd_done_cold_1();
  }

  v4 = *(*(v1[4] + 8 * (v2 / v3)) + 40) + v1[2] * (v2 % v3);
  if (*(v4 - 48) != v4 - 48)
  {
    rxm_rndv_handle_rd_done_cold_2();
  }

  v6 = a1 + 288;
  v7 = *(v4 + 448);
  v8 = *(a1 + 384);
  *(v4 + 400) = v8;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  memcpy((v4 + 304), (a1 + 288), 24 * v8);
  v9 = *(v4 + 400);
  if (*(v4 + 400))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v7 > v12)
      {
        *(v4 + 288) = ++v10;
        v12 += *(v4 + 304 + 24 * v11 + 8);
      }

      ++v11;
      --v9;
    }

    while (v9);
  }

  v13 = *(v4 + 32);
  if (v13 != 6 && v13 != 8)
  {
    rxm_rndv_handle_wr_data_cold_3();
  }

  if (v13 == 8)
  {
    v15 = 11;
  }

  else
  {
    v15 = 21;
  }

  *(v4 + 32) = v15;
  v16 = rxm_rndv_xfer(*(a1 + 48), *(*(v4 + 272) + 16), v6, v4 + 176, v4 + 240, *(v4 + 104), v7, v4);
  if (v16)
  {
    rxm_cq_write_rx_error(*(a1 + 48), 0);
  }

  v17 = *(a1 + 216);
  if (v17 != v6)
  {
    free(v17);
    *(a1 + 216) = v6;
  }

  if (*(a1 + 144) == 1 && (*(*(a1 + 48) + 12824) || *(*(a1 + 96) + 16)))
  {
    rxm_post_recv(a1);
  }

  else
  {
    ofi_buf_free(a1);
  }

  return v16;
}

uint64_t rxm_sar_handle_segment(void *a1)
{
  v1 = a1[6];
  v2 = a1[29];
  v3 = *(v1 + 8 * (v2 >> 10) + 448);
  if (!v3 || !*(v1 + 4 * (v2 >> 10) + 8640))
  {
    sock_av_remove_cold_1();
  }

  v4 = *(v3 + 8 * (a1[29] & 0x3FFLL));
  a1[12] = v4;
  if (!v4)
  {
    return -256;
  }

  v5 = (v4 + 80);
  v6 = (v4 + 80);
  while (1)
  {
    v6 = *v6;
    if (v6 == v5)
    {
      break;
    }

    if (a1[30] == v6[7])
    {
      a1[13] = v6[4];
      a1[14] = v6;
      rxm_handle_seg_data(a1);
      return 0;
    }
  }

  return rxm_handle_recv_comp(a1);
}

uint64_t rxm_handle_atomic_req(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 281);
  v59 = *(a2 + 280);
  v5 = ofi_datatype_size(v59);
  if ((*(a2 + 120) & 0xFFFFFFFFFFFDFBFFLL) != 0)
  {
    rxm_handle_atomic_req_cold_1();
  }

  v60 = *(a2 + 258);
  if ((v60 - 6) >= 3u)
  {
    rxm_handle_atomic_req_cold_2();
  }

  v9 = v5;
  v10 = *(a1 + 80);
  v11 = *(a2 + 48);
  if (!*(v11 + 12824))
  {
    if (*(a2 + 96))
    {
      goto LABEL_7;
    }

    return -256;
  }

  v12 = *(a2 + 232);
  v13 = *(v11 + 8 * (v12 >> 10) + 448);
  if (!v13 || !*(v11 + 4 * (v12 >> 10) + 8640))
  {
    sock_av_remove_cold_1();
  }

  v14 = *(v13 + 8 * (*(a2 + 232) & 0x3FFLL));
  *(a2 + 96) = v14;
  if (!v14)
  {
    return -256;
  }

LABEL_7:
  v15 = *(a1 + 13000);
  if ((v15[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v16 = *v15;
  if (!*v15)
  {
    if (ofi_bufpool_grow(*(a1 + 13000)))
    {
      if (fi_log_enabled(&rxm_prov, 0, 4))
      {
        v18 = *__error();
        fi_log(&rxm_prov, 0, 4, "rxm_handle_atomic_req", 1254, "Unable to allocate for atomic response\n");
        *__error() = v18;
      }

      return -12;
    }

    v16 = *v15;
  }

  if (v16 == v15[1])
  {
    *v15 = 0;
    v15[1] = 0;
  }

  else
  {
    *v15 = *v16;
  }

  if (atomic_fetch_add((v16[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v16 == v16)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v16 = v16;
  *(v16 + 457) = 4;
  if (!*(a2 + 282))
  {
    v39 = 0;
LABEL_59:
    v45 = *(a1 + 8 * ofi_get_cntr_index_from_rx_op_cntr_idx[v60] + 176);
    if (v45)
    {
      (*(*(*(v45 + 216) + 24) + 8))();
    }

    v46 = (v16 + 6);
    v47 = a1;
    v48 = a2;
    v49 = v39;
    v50 = 0;
    return rxm_atomic_send_resp(v47, v48, v46, v49, v50, v6, v7, v8);
  }

  v19 = 0;
  v20 = a2 + 288;
  do
  {
    if (v4 == 10)
    {
      v21 = 4096;
    }

    else
    {
      v21 = ofi_rx_mr_flags[*(a2 + 258)];
    }

    v22 = ofi_mr_verify(v10 + 232, *(v20 + 8) * v9, v20, *(v20 + 16), v21);
    if (v22)
    {
      v40 = v22;
      if (fi_log_enabled(&rxm_prov, 0, 4))
      {
        v44 = *__error();
        fi_log(&rxm_prov, 0, 4, "rxm_handle_atomic_req", 1268, "Atomic RMA MR verify error %ld\n", v40);
        *__error() = v44;
      }

      return rxm_atomic_send_resp(a1, a2, (v16 + 6), 0, 4294967283, v41, v42, v43);
    }

    v20 += 24;
    ++v19;
  }

  while (v19 < *(a2 + 282));
  v52 = v16;
  v53 = a1;
  if (!*(a2 + 282))
  {
    v27 = 0;
LABEL_54:
    if (v60 == 6)
    {
      v39 = 0;
    }

    else
    {
      v39 = v27;
    }

    if (v60 >= 0xA)
    {
      rxm_cq_write_rx_error_cold_1();
    }

    v16 = v52;
    a1 = v53;
    goto LABEL_59;
  }

  v23 = 0;
  v24 = 296;
  v25 = *(a2 + 282);
  do
  {
    v23 += *(a2 + v24);
    v24 += 24;
    --v25;
  }

  while (v25);
  v26 = 0;
  v27 = 0;
  v57 = a2 + 384;
  v58 = v9;
  v55 = v16 + 66;
  v56 = a2 + 384 + v23 * v9;
  v28 = (a2 + 304);
  v54 = v10;
  while (1)
  {
    v29 = v4;
    map_entry = rxm_mr_get_map_entry(v10, *v28);
    v31 = *(v28 - 1);
    v32 = v31 * v58;
    if (*(map_entry + 14))
    {
      break;
    }

    v4 = v29;
    rxm_do_atomic(v60, *(v28 - 2), v57 + v27, v56 + v27, v55 + v27, *(v28 - 1), v59, v29);
LABEL_45:
    v28 += 3;
    v27 += v32;
    ++v26;
    v10 = v54;
    if (v26 >= *(a2 + 282))
    {
      goto LABEL_54;
    }
  }

  v33 = map_entry;
  v34 = map_entry[6];
  v61[0] = *(v28 - 2);
  v61[1] = v31 * v58;
  pthread_mutex_lock((v34 + 424));
  v35 = *(v34 + 416);
  if ((*(v35 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v36 = *v35;
  if (*v35)
  {
LABEL_36:
    if (v36 == *(v35 + 8))
    {
      *v35 = 0;
      *(v35 + 8) = 0;
    }

    else
    {
      *v35 = *v36;
    }

    if (atomic_fetch_add((v36[2] + 76), 1u) == -1)
    {
      sock_pe_acquire_entry_cold_4();
    }

    if (*v36 == v36)
    {
      sock_pe_acquire_entry_cold_3();
    }

    *v36 = v36;
    v37 = (v36 + 6);
    pthread_mutex_unlock((v34 + 424));
    pthread_mutex_lock((v33 + 11));
    if (ofi_copy_from_hmem_iov(v37, v32, *(v33 + 14), 0, v61, 1uLL, 0) != v32)
    {
      rxm_handle_atomic_req_cold_6();
    }

    v38 = v31;
    v4 = v29;
    rxm_do_atomic(v60, v37, v57 + v27, v56 + v27, v55 + v27, v38, v59, v29);
    if (ofi_copy_to_hmem_iov(*(v33 + 14), 0, v61, 1uLL, 0, v37, v32) != v32)
    {
      rxm_handle_atomic_req_cold_7();
    }

    pthread_mutex_unlock((v33 + 11));
    pthread_mutex_lock((v34 + 424));
    ofi_buf_free(v37);
    pthread_mutex_unlock((v34 + 424));
    goto LABEL_45;
  }

  if (!ofi_bufpool_grow(*(v34 + 416)))
  {
    v36 = *v35;
    goto LABEL_36;
  }

  pthread_mutex_unlock((v34 + 424));
  if (fi_log_enabled(&rxm_prov, 0, 4))
  {
    v51 = *__error();
    fi_log(&rxm_prov, 0, 4, "rxm_handle_atomic_req", 1295, "Atomic operation failed %ld\n", -12);
    *__error() = v51;
  }

  v47 = v53;
  v46 = (v52 + 6);
  v48 = a2;
  v49 = 0;
  v50 = 4294967284;
  return rxm_atomic_send_resp(v47, v48, v46, v49, v50, v6, v7, v8);
}

uint64_t rxm_handle_atomic_resp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 13000);
  v3 = *(a2 + 240);
  v4 = v2[11];
  if (v3 / v4 >= v2[5])
  {
    rxm_rndv_handle_rd_done_cold_1();
  }

  v25 = 0;
  v5 = *(*(v2[4] + 8 * (v3 / v4)) + 40) + v2[2] * (v3 % v4);
  if (*(v5 - 48) != v5 - 48)
  {
    rxm_rndv_handle_rd_done_cold_2();
  }

  v8 = (v5 + 72);
  if (!*(v5 + 168))
  {
    goto LABEL_8;
  }

  v9 = *(v5 + 136);
  if (v9)
  {
    v25 = *(v9 + 64);
    hmem_iface = *(v9 + 56);
    goto LABEL_9;
  }

  if (rxm_detect_hmem_iface)
  {
    hmem_iface = ofi_get_hmem_iface(*v8, &v25, 0);
  }

  else
  {
LABEL_8:
    hmem_iface = 0;
  }

LABEL_9:
  if ((*(a2 + 120) & 0xFFFFFFFFFFFDFBFFLL) != 0)
  {
    rxm_handle_atomic_resp_cold_3();
  }

  v11 = (a2 + 288);
  v12 = *(a2 + 288);
  if (v12)
  {
    v13 = bswap32(v12);
    if (!fi_log_enabled(&rxm_prov, 0, 6))
    {
LABEL_32:
      v22 = *(v5 + 56);
      rxm_cq_write_tx_error(a1, *(v5 + 442));
      goto LABEL_33;
    }

    v14 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_handle_atomic_resp", 1345, "bad atomic response status %d\n", bswap32(*v11));
LABEL_31:
    *__error() = v14;
    goto LABEL_32;
  }

  if (*(v5 + 168))
  {
    v15 = 0;
    v16 = 0;
    v17 = *(v5 + 168);
    do
    {
      v15 += v8[2 * v16++ + 1];
      --v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  if (v15 != bswap32(*(a2 + 292)))
  {
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v14 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_handle_atomic_resp", 1353, "result size mismatch\n");
LABEL_30:
      v13 = -5;
      goto LABEL_31;
    }

LABEL_41:
    v13 = -5;
    goto LABEL_32;
  }

  if (ofi_copy_to_hmem_iov(hmem_iface, v25, v5 + 72, *(v5 + 168), 0, a2 + 296, v15) != v15)
  {
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v14 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_handle_atomic_resp", 1362, "copy length error\n");
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  if ((*(v5 + 64) & 0x3000000) == 0x1000000)
  {
    v18 = *(v5 + 56);
    v19 = ofi_tx_flags[*(v5 + 442)];
    (*(*(*(*(a1 + 136) + 288) + 24) + 8))();
  }

  v20 = *(v5 + 442);
  if (v20 >= 0xA)
  {
    rxm_handle_atomic_resp_cold_4();
  }

  v21 = *(a1 + 8 * ofi_get_cntr_index_from_tx_op_cntr_idx[v20] + 176);
  if (v21)
  {
    (*(*(*(v21 + 216) + 24) + 8))();
  }

  v13 = 0;
LABEL_33:
  v23 = *(a2 + 216);
  if (v23 != v11)
  {
    free(v23);
    *(a2 + 216) = v11;
  }

  if (*(a2 + 144) == 1 && (*(*(a2 + 48) + 12824) || *(*(a2 + 96) + 16)))
  {
    rxm_post_recv(a2);
  }

  else
  {
    ofi_buf_free(a2);
  }

  rxm_free_tx_buf(a1, v5);
  return v13;
}

uint64_t rxm_handle_credit(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 56) != 3)
  {
    rxm_handle_credit_cold_1();
  }

  v3 = *(a2 + 248);
  (*(*(*(a1 + 80) + 408) + 24))();
  v4 = *(a2 + 216);
  if (v4 != (a2 + 288))
  {
    free(v4);
    *(a2 + 216) = a2 + 288;
  }

  if (*(a2 + 144) == 1 && (*(*(a2 + 48) + 12824) || *(*(a2 + 96) + 16)))
  {

    return rxm_post_recv(a2);
  }

  else
  {

    return ofi_buf_free(a2);
  }
}

uint64_t rxm_rndv_send_rd_done(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    rxm_rndv_send_rd_done_cold_10();
  }

  if (*(a1 + 32) != 10)
  {
    rxm_rndv_send_rd_done_cold_1();
  }

  v2 = *(*(a1 + 48) + 13000);
  if ((v2[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(*(*(a1 + 48) + 13000)))
    {
      v10 = -12;
LABEL_38:
      rxm_rndv_send_rd_done_cold_5(v10);
    }

    v3 = *v2;
  }

  if (v3 == v2[1])
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v3 = v3;
  v4 = *(*(a1 + 48) + 13016);
  if ((*(v4 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v5 = *v4;
  if (!*v4)
  {
    if (ofi_bufpool_grow(*(*(a1 + 48) + 13016)))
    {
      rxm_rndv_send_rd_done_cold_4(a1);
    }

    v5 = *v4;
  }

  if (v5 == *(v4 + 8))
  {
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    *v4 = *v5;
  }

  if (atomic_fetch_add((v5[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v5 == v5)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v5 = v5;
  *(a1 + 112) = v5 + 6;
  v5[14] = v3 + 6;
  *(v3 + 457) = 3;
  v6 = *(a1 + 96);
  v7 = *(a1 + 240);
  v3[58] = *(v6 + 32);
  v3[59] = v7;
  v8 = v3[11];
  result = (*(*(*(v6 + 16) + 40) + 32))();
  if (!result)
  {
    *(a1 + 32) = 12;
    return result;
  }

  v10 = result;
  if (result != -35 || (v11 = rxm_ep_alloc_deferred_tx_entry(*(a1 + 48), *(a1 + 96), 0)) == 0)
  {
    *(*(a1 + 112) + 64) = 0;
    ofi_buf_free(*(a1 + 112));
    ofi_buf_free((v3 + 6));
    goto LABEL_38;
  }

  v11[5] = a1;
  v11[6] = 64;
  v12 = v11[1];
  if (v12[8] == v12 + 8)
  {
    v13 = *(v12[3] + 13040);
    v14 = *v13;
    v12[6] = *v13;
    v12[7] = v13;
    *(v14 + 8) = v12 + 6;
    *v13 = (v12 + 6);
  }

  v15 = v12[9];
  v16 = *v15;
  v11[2] = *v15;
  v11[3] = v15;
  result = (v11 + 2);
  *(v16 + 8) = result;
  *v15 = result;
  return result;
}

uint64_t rxm_rndv_send_wr_done(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 11)
  {
    rxm_rndv_send_wr_done_cold_1();
  }

  v3 = *(a1 + 13000);
  if ((v3[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v5 = *v3;
  if (!*v3)
  {
    if (ofi_bufpool_grow(*(a1 + 13000)))
    {
      v9 = -12;
LABEL_24:
      rxm_rndv_send_wr_done_cold_3(v9);
    }

    v5 = *v3;
  }

  if (v5 == v3[1])
  {
    *v3 = 0;
    v3[1] = 0;
  }

  else
  {
    *v3 = *v5;
  }

  if (atomic_fetch_add((v5[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v5 == v5)
  {
    sock_pe_acquire_entry_cold_3();
  }

  v6 = (v5 + 6);
  *v5 = v5;
  *(a2 + 296) = v5 + 6;
  *(v5 + 457) = 8;
  *(v5 + 29) = *(a2 + 416);
  v7 = v5[11];
  result = (*(*(*(*(a2 + 272) + 16) + 40) + 32))();
  if (!result)
  {
    *(a2 + 32) = 16;
    return result;
  }

  v9 = result;
  if (result != -35 || (v10 = rxm_ep_alloc_deferred_tx_entry(a1, *(a2 + 272), 1)) == 0)
  {
    ofi_buf_free(v6);
    *(a2 + 296) = 0;
    goto LABEL_24;
  }

  v10[5] = a2;
  v11 = v10[1];
  if (v11[8] == v11 + 8)
  {
    v12 = *(v11[3] + 13040);
    v13 = *v12;
    v11[6] = *v12;
    v11[7] = v12;
    *(v13 + 8) = v11 + 6;
    *v12 = (v11 + 6);
  }

  v14 = v11[9];
  v15 = *v14;
  v10[2] = *v14;
  v10[3] = v14;
  result = (v10 + 2);
  *(v15 + 8) = result;
  *v14 = result;
  return result;
}

uint64_t rxm_rndv_rx_finish(uint64_t a1)
{
  *(a1 + 32) = 18;
  v2 = *(a1 + 112);
  if (*(v2 + 64))
  {
    ofi_buf_free(*(a1 + 112));
    ofi_buf_free(*(v2 + 64));
  }

  if ((*(*(a1 + 48) + 12929) & 1) == 0)
  {
    rxm_msg_mr_closev((a1 + 184), *(*(a1 + 104) + 72));
  }

  v3 = *(*(a1 + 104) + 32);

  return rxm_finish_recv(a1, v3);
}

uint64_t rxm_rndv_tx_finish(uint64_t a1, uint64_t a2)
{
  if ((ofi_tx_flags[*(a2 + 442)] & 0x800) == 0)
  {
    rxm_rndv_tx_finish_cold_1();
  }

  *(a2 + 32) = 18;
  if ((*(a1 + 12929) & 1) == 0)
  {
    rxm_msg_mr_closev((a2 + 72), *(a2 + 104));
  }

  if (*(a2 + 67))
  {
    v4 = *(a2 + 56);
    v5 = ofi_tx_flags[*(a2 + 442)];
    (*(*(*(*(a1 + 136) + 288) + 24) + 8))();
  }

  if (*(a1 + 13072) == &rxm_rndv_ops_write)
  {
    v6 = *(a2 + 296);
    if (v6)
    {
      ofi_buf_free(v6);
      *(a2 + 296) = 0;
    }
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    (*(*(*(v7 + 216) + 24) + 8))();
  }

  return rxm_free_tx_buf(a1, a2);
}

uint64_t rxm_cq_write_tx_error(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    rxm_handle_atomic_resp_cold_4();
  }

  v3 = *(a1 + 8 * ofi_get_cntr_index_from_tx_op_cntr_idx[a2] + 176);
  if (v3)
  {
    (*(*(*(v3 + 216) + 24) + 16))();
  }

  result = (*(*(*(*(a1 + 136) + 288) + 24) + 16))();
  if (result)
  {
    rxm_cq_write_tx_error_cold_1();
  }

  return result;
}

uint64_t rxm_cq_write_error_all(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v22 = 0;
  v18 = 0;
  v21 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v19 = -a2;
  v20 = a2;
  v9 = *(result + 136);
  if (v9)
  {
    result = (*(*(*(v9 + 288) + 24) + 16))(*(v9 + 288), &v15, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      rxm_cq_write_error_all_cold_1();
    }
  }

  v10 = v8[15];
  if (v10)
  {
    result = (*(*(*(v10 + 288) + 24) + 16))(*(v10 + 288), &v15, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      rxm_cq_write_error_all_cold_2();
    }
  }

  v11 = v8[22];
  if (v11)
  {
    result = (*(*(*(v11 + 216) + 24) + 16))(*(v11 + 216), a2, a3, a4, a5, a6, a7, a8, v15, *(&v15 + 1), v16);
  }

  v12 = v8[23];
  if (v12)
  {
    result = (*(*(*(v12 + 216) + 24) + 16))();
  }

  v13 = v8[25];
  if (v13)
  {
    result = (*(*(*(v13 + 216) + 24) + 16))();
  }

  v14 = v8[24];
  if (v14)
  {
    return (*(*(*(v14 + 216) + 24) + 16))();
  }

  return result;
}

uint64_t rxm_handle_comp_error(uint64_t a1)
{
  v2 = (*(*(*(a1 + 12880) + 24) + 24))();
  if (v2 < 0)
  {
    v9 = v2;
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v16 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_handle_comp_error", 1625, "unable to fi_cq_readerr on msg cq\n");
      *__error() = v16;
    }

    v17 = a1;
    v18 = v9;
    return rxm_cq_write_error_all(v17, v18, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v3 = *__error();
      v4 = fi_strerror(0);
      v5 = (*(*(*(a1 + 12880) + 24) + 56))();
      fi_log(&rxm_prov, 0, 6, "rxm_handle_comp_error", 1636, "fi_cq_readerr: err: %s (%d), prov_err: %s (%d)\n", v4, 0, v5, 0);
      *__error() = v3;
    }

    v6 = *(a1 + 136);
    v7 = *(a1 + 176);
    switch(MEMORY[0x20])
    {
      case 0:
      case 6:
      case 0x10:
      case 0x13:
        v8 = ofi_tx_flags[MEMORY[0x1BA]];
        goto LABEL_6;
      case 1:
        result = rxm_free_tx_buf(a1, 0);
        if (v7)
        {
          return (*(*(*(v7 + 216) + 24) + 16))();
        }

        return result;
      case 2:
        if ((MEMORY[0x43] & 2) == 0 && (*(a1 + 12929) & 1) == 0 && *(a1 + 12928) == 1)
        {
          rxm_msg_mr_closev(0x48, MEMORY[0x68]);
        }

LABEL_6:
        rxm_free_tx_buf(a1, 0);
        goto LABEL_17;
      case 3:
        if (MEMORY[0x68])
        {
          goto LABEL_15;
        }

        return ofi_buf_free(0);
      case 4:
        v21 = ofi_tx_flags[MEMORY[0x1BA]];
        result = rxm_complete_sar(a1, 0);
        if ((result & 1) == 0)
        {
          return result;
        }

        goto LABEL_17;
      case 5:
      case 0x14:
        return ofi_buf_free(0);
      case 0xA:
      case 0xC:
      case 0xE:
LABEL_15:
        if (!MEMORY[0x68])
        {
          rxm_handle_comp_error_cold_1();
        }

        v24 = *(MEMORY[0x68] + 64);
        v25 = *(MEMORY[0x68] + 56);
        v6 = *(MEMORY[0x30] + 120);
        v7 = *(MEMORY[0x30] + 184);
        goto LABEL_17;
      case 0xB:
      case 0x15:
        v20 = ofi_tx_flags[MEMORY[0x1BA]];
LABEL_17:
        if (v7)
        {
          (*(*(*(v7 + 216) + 24) + 16))();
        }

        if (!v6)
        {
          rxm_handle_comp_error_cold_3();
        }

        result = (*(*(*(v6 + 288) + 24) + 16))();
        if (result)
        {
          rxm_handle_comp_error_cold_2();
        }

        return result;
      case 0xD:
        result = rxm_rndv_tx_finish(a1, 0);
        break;
      case 0x11:
        result = rxm_rndv_rx_finish(0);
        break;
      default:
        if (fi_log_enabled(&rxm_prov, 0, 6))
        {
          v22 = *__error();
          v23 = (*(*(*(a1 + 12880) + 24) + 56))();
          fi_log(&rxm_prov, 0, 6, "rxm_handle_comp_error", 1722, "Invalid state!\nmsg cq error info: %s\n", v23);
          *__error() = v22;
        }

        v17 = a1;
        v18 = 4294967038;
        return rxm_cq_write_error_all(v17, v18, v10, v11, v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t rxm_complete_sar(uint64_t a1, uint64_t a2)
{
  if ((ofi_tx_flags[*(a2 + 442)] & 0x800) == 0)
  {
    rxm_complete_sar_cold_3();
  }

  v4 = *(a2 + 432) & 3;
  if (v4 == 3)
  {
    v6 = *(a1 + 13000);
    v7 = *(a2 + 424);
    v8 = v6[11];
    if (v7 / v8 >= v6[5])
    {
      rxm_rndv_handle_rd_done_cold_1();
    }

    v9 = *(*(v6[4] + 8 * (v7 / v8)) + 40) + v6[2] * (v7 % v8);
    if (*(v9 - 48) != v9 - 48)
    {
      rxm_rndv_handle_rd_done_cold_2();
    }

    rxm_free_tx_buf(a1, v9);
    rxm_free_tx_buf(a1, a2);
    return 1;
  }

  else
  {
    if (v4 == 2)
    {
      rxm_free_tx_buf(a1, a2);
    }

    return 0;
  }
}

uint64_t rxm_thru_comp(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 120;
  if ((a2[1] & 0x3400) == 0)
  {
    v3 = 136;
  }

  v4 = *(a1 + v3);
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a2;
  if ((*(*(*(v4 + 288) + 24) + 8))())
  {
    rxm_thru_comp_cold_1();
  }

  v9 = *(v4 + 40);
  if (v9)
  {
    (*(v9 + 72))();
  }

  return 0;
}

uint64_t rxm_thru_comp_error(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v2 = *(a1 + 12880);
  v19 = -1;
  v3 = (*(*(v2 + 24) + 24))(v2);
  if (v3 < 0)
  {
    v6 = v3;
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v13 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_thru_comp_error", 1768, "unable to fi_cq_readerr on msg cq\n");
      *__error() = v13;
    }

    return rxm_cq_write_error_all(a1, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v4 = 120;
    if ((WORD4(v14) & 0x400) == 0)
    {
      v4 = 136;
    }

    result = (*(*(*(*(a1 + v4) + 288) + 24) + 16))();
    if (result)
    {
      rxm_thru_comp_error_cold_1();
    }
  }

  return result;
}

uint64_t rxm_cq_owner_write(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[8];
  if ((v8 & 0x1000000000) != 0)
  {
    v11 = a2[6];
    v12[0] = a2[7];
    v12[1] = v8;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    return (*(*(v11 + 12856) + 8))(*(v11 + 12840), v12, a8);
  }

  else
  {
    v9 = a2[7];
    return (*(*(*(a1 - 56) + 24) + 8))();
  }
}