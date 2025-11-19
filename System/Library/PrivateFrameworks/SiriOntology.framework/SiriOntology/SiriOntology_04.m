uint64_t sub_1C057106C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = 0;
    v17 = a2 + 32;
    do
    {
      v6 = (v17 + 16 * v5);
      v7 = *v6;
      v8 = *(v6 + 1);
      sub_1C095E01C();
      result = MEMORY[0x1C68DDE90](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = (v8 + 52);
        do
        {
          v11 = *(v10 - 5);
          v12 = *(v10 - 4);
          v13 = *(v10 - 3);
          v14 = *(v10 - 2);
          v15 = *(v10 - 1);
          v16 = *v10;
          sub_1C095E01C();
          sub_1C095E01C();
          sub_1C095E01C();
          sub_1C095E01C();
          sub_1C095E01C();
          result = sub_1C095E01C();
          v10 += 6;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1C0571154(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 120);
    do
    {
      v7 = *(v5 - 11);
      v6 = *(v5 - 10);
      v8 = *(v5 - 9);
      v9 = *(v5 - 8);
      v10 = *(v5 - 6);
      v14 = *(v5 - 5);
      v11 = *(v5 - 32);
      v12 = *(v5 - 31);
      v15 = *(v5 - 7);
      v16 = *(v5 - 5);
      v19 = *(v5 - 24);
      v20 = *(v5 - 16);
      v17 = *(v5 - 1);
      v18 = *(v5 - 7);
      v21 = *v5;

      sub_1C095D7BC();
      sub_1C095D7BC();
      if (v10)
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        if (v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1C095E00C();
        if (v11)
        {
LABEL_7:
          sub_1C095E00C();
          if (v12 == 7)
          {
            goto LABEL_8;
          }

          goto LABEL_17;
        }
      }

      sub_1C095E00C();
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = v14;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x1C68DDEC0](v13);
      if (v12 == 7)
      {
LABEL_8:
        sub_1C095E00C();
        if (v19)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v12);
      if (v19)
      {
LABEL_9:
        sub_1C095E00C();
        if (v20)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1C095E00C();
      sub_1C095E01C();
      if (v20)
      {
LABEL_10:
        sub_1C095E00C();
        if (!v21)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

LABEL_19:
      sub_1C095E00C();
      sub_1C095E01C();
      if (!v21)
      {
LABEL_20:
        sub_1C095E00C();
        MEMORY[0x1C68DDE90](v17);
        goto LABEL_4;
      }

LABEL_3:
      sub_1C095E00C();
LABEL_4:

      v5 += 96;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C057134C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 33);
    do
    {
      v6 = *v5;
      if (*(v5 - 1) != 2)
      {
        sub_1C095E00C();
      }

      sub_1C095E00C();
      if (v6 == 53)
      {
        result = sub_1C095E00C();
      }

      else
      {
        sub_1C095E00C();
        result = MEMORY[0x1C68DDE90](v6);
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C05713F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 52);
    do
    {
      v6 = *(v5 - 20);
      v7 = *(v5 - 12);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_1C095D7BC();
      sub_1C095E00C();
      if (v9 != 1)
      {
        sub_1C095E01C();
      }

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C05714A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 76);
    do
    {
      v6 = *(v5 - 44);
      v7 = *(v5 - 36);
      v8 = *(v5 - 28);
      v9 = *(v5 - 20);
      v13 = *(v5 - 3);
      v10 = *(v5 - 8);
      v11 = *(v5 - 1);
      v12 = *v5;

      sub_1C095D7BC();
      if (v9)
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1C095E00C();
        if (v10)
        {
LABEL_7:
          sub_1C095E00C();
          if (!v12)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_1C095E00C();
      sub_1C095E01C();
      if (!v12)
      {
LABEL_11:
        sub_1C095E00C();
        sub_1C095E01C();
        goto LABEL_4;
      }

LABEL_3:
      sub_1C095E00C();
LABEL_4:

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C05715DC(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v28 = v6;
  while (v5)
  {
    v31 = v8;
LABEL_12:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a2 + 56) + v11);
    v34 = a1[2];
    v35 = a1[3];
    v36 = *(a1 + 8);
    v32 = *a1;
    v33 = a1[1];
    MEMORY[0x1C68DDEC0](*(*(a2 + 48) + v11));
    v13 = *(v12 + 40);
    if (v13 != 255)
    {
      v14 = *(v12 + 24);
      v15 = *(v12 + 32);
      sub_1C095E00C();
      if (v13)
      {
        MEMORY[0x1C68DDE90](1);
        if (v15)
        {
          sub_1C095E00C();

          sub_1C095D7BC();
          goto LABEL_19;
        }
      }

      else
      {
        MEMORY[0x1C68DDE90](0);
        if ((v15 & 1) == 0)
        {
          sub_1C095E00C();
          MEMORY[0x1C68DDEC0](v14);
          goto LABEL_18;
        }
      }
    }

    sub_1C095E00C();
LABEL_18:

LABEL_19:
    MEMORY[0x1C68DDEC0](*(v12 + 56));
    v16 = *(v12 + 64);
    v17 = *(v12 + 72);
    v19 = *(v12 + 80);
    v18 = *(v12 + 88);
    v20 = *(v12 + 96);

    sub_1C095D7BC();
    sub_1C095D7BC();
    if (v20)
    {
      sub_1C095E00C();
      if (v20[3])
      {
        v26 = v20[8];
        v27 = v20[9];
        v24 = v20[6];
        v25 = v20[7];
        v22 = v20[4];
        v23 = v20[5];
        v21 = v20[2];
        sub_1C095E00C();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }
    }

    else
    {
      sub_1C095E00C();
    }

    v5 &= v5 - 1;
    result = sub_1C095E03C();
    v8 = result ^ v31;
    v6 = v28;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1C68DDE90](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v31 = v8;
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C05718C8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a2 + 56) + 8 * v11);
    v16 = *(a1 + 48);
    v25[2] = *(a1 + 32);
    v25[3] = v16;
    v26 = *(a1 + 64);
    v17 = *(a1 + 16);
    v25[0] = *a1;
    v25[1] = v17;

    sub_1C095D7BC();

    if (v15 >> 62)
    {
      v21 = sub_1C095DCDC();
      MEMORY[0x1C68DDE90](v21);
      result = sub_1C095DCDC();
      v18 = result;
      if (!result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = MEMORY[0x1C68DDE90](*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_22;
    }

    v19 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1C68DDAD0](v19, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v19 + 32);
      }

      ++v19;
      v24 = *(v20 + 16);
      Node.hash(into:)(v25);
    }

    while (v18 != v19);
LABEL_4:
    v5 &= v5 - 1;

    result = sub_1C095E03C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1C68DDE90](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C0571AD0(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_1C095D7BC();

    sub_1C095D7BC();

    result = sub_1C095E03C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C68DDE90](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0571C3C(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    sub_1C095D7BC();

    if (v17 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    MEMORY[0x1C68DDEC0](*&v18);
    result = sub_1C095E03C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1C68DDE90](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12SiriOntology15TerminalElementV11ScalarValueC2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(v32, (v1 + 16), 0x20AuLL);
  memcpy(v33, v3 + 2, 0x20AuLL);
  memcpy(__dst, v4 + 2, 0x20AuLL);
  memcpy(&__dst[528], v3 + 2, 0x20AuLL);
  memcpy(v34, v4 + 2, 0x20AuLL);
  if (sub_1C0573598(v34) == 1)
  {
    memcpy(v29, &__dst[528], 0x20AuLL);
    if (sub_1C0573598(v29) == 1)
    {
      memcpy(v30, __dst, 0x20AuLL);
      sub_1C05149F8(v32, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05149F8(v33, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05145B4(v30, &qword_1EBE16C70, &unk_1C099BB20);
      goto LABEL_9;
    }

    sub_1C05149F8(v32, v30, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v30, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_7:
    memcpy(v29, __dst, 0x41AuLL);
    sub_1C05145B4(v29, &qword_1EBE16C88, &qword_1C096E860);
    return 0;
  }

  memcpy(v30, __dst, 0x20AuLL);
  memcpy(v28, __dst, 0x20AuLL);
  memcpy(v29, &__dst[528], 0x20AuLL);
  if (sub_1C0573598(v29) == 1)
  {
    memcpy(__src, __dst, 0x20AuLL);
    sub_1C05149F8(v32, v26, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v26, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v30, v26, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05735E4(__src);
    goto LABEL_7;
  }

  memcpy(__src, &__dst[528], 0x20AuLL);
  sub_1C05149F8(v32, v26, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v33, v26, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v30, v26, &qword_1EBE16C70, &unk_1C099BB20);
  v5 = _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(v28, __src);
  memcpy(v25, __src, 0x20AuLL);
  sub_1C05735E4(v25);
  memcpy(v26, v28, 0x20AuLL);
  sub_1C05735E4(v26);
  memcpy(__src, __dst, 0x20AuLL);
  sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v6 = v4[68];
  v7 = v4[69];
  v8 = v4[70];
  v9 = v4[71];
  v10 = v3[68];
  v11 = v3[69];
  v12 = v3[70];
  v13 = v3[71];
  if (!v9)
  {
    sub_1C0558910(v6, v7, v8, 0);
    if (!v13)
    {
      sub_1C0558910(v10, v11, v12, 0);
      v20 = v6;
      v21 = v7;
      v22 = v8;
      v23 = 0;
      goto LABEL_31;
    }

    sub_1C0558910(v10, v11, v12, v13);
LABEL_20:
    sub_1C0558A50(v6, v7, v8, v9);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;
LABEL_24:
    sub_1C0558A50(v15, v16, v17, v18);
    return 0;
  }

  if (!v13)
  {
    sub_1C0558910(v6, v7, v8, v9);
    sub_1C0558910(v10, v11, v12, 0);
    sub_1C0558910(v6, v7, v8, v9);

    goto LABEL_20;
  }

  if (v7)
  {
    if (!v11 || (v6 != v10 || v7 != v11) && (sub_1C095DF3C() & 1) == 0)
    {
      v14 = v7;
LABEL_23:
      sub_1C0558910(v6, v14, v8, v9);
      sub_1C0558910(v10, v11, v12, v13);
      sub_1C0558910(v6, v14, v8, v9);
      sub_1C0558A50(v10, v11, v12, v13);

      v15 = v6;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      goto LABEL_24;
    }
  }

  else if (v11)
  {
    v14 = 0;
    goto LABEL_23;
  }

  if (v8 == v12 && v9 == v13)
  {
    sub_1C0558910(v6, v7, v8, v9);
    sub_1C0558910(v10, v11, v8, v9);
    sub_1C0558910(v6, v7, v8, v9);
    sub_1C0558A50(v10, v11, v8, v9);

    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
LABEL_31:
    sub_1C0558A50(v20, v21, v22, v23);
    return 1;
  }

  v24 = sub_1C095DF3C();
  sub_1C0558910(v6, v7, v8, v9);
  sub_1C0558910(v10, v11, v12, v13);
  sub_1C0558910(v6, v7, v8, v9);
  sub_1C0558A50(v10, v11, v12, v13);

  sub_1C0558A50(v6, v7, v8, v9);
  return (v24 & 1) != 0;
}

uint64_t _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x20AuLL);
  memcpy(__src, v3, 0x20AuLL);
  memcpy(v44, v4, 0x20AuLL);
  memcpy(v45, v3, sizeof(v45));
  memcpy(v46, v4, 0x20AuLL);
  v5 = sub_1C057363C(v46);
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v13 = *sub_1C05272F0(v46);
        memcpy(v41, __src, 0x20AuLL);
        if (sub_1C057363C(v41) != 2)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = *sub_1C05272F0(v46);
        memcpy(v41, __src, 0x20AuLL);
        if (sub_1C057363C(v41) != 3)
        {
          goto LABEL_41;
        }
      }

      v20 = *sub_1C05272F0(v41);
      sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
      v10 = v13 == v20;
      return v10 & 1;
    }

    if (v5)
    {
      v18 = *sub_1C05272F0(v46);
      memcpy(v41, __src, 0x20AuLL);
      if (sub_1C057363C(v41) == 1)
      {
        v19 = *sub_1C05272F0(v41);
        sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
        v10 = v18 == v19;
        return v10 & 1;
      }
    }

    else
    {
      v11 = *sub_1C05272F0(v46);
      memcpy(v41, __src, 0x20AuLL);
      if (!sub_1C057363C(v41))
      {
        v12 = *sub_1C05272F0(v41);
        sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
        v10 = v11 == v12;
        return v10 & 1;
      }
    }

LABEL_41:
    sub_1C05735AC(__src, v41);
    sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
    v10 = 0;
    return v10 & 1;
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
    {
      v14 = sub_1C05272F0(v46);
      v7 = *v14;
      v8 = v14[1];
      memcpy(v41, __src, 0x20AuLL);
      if (sub_1C057363C(v41) == 4)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

    v30 = sub_1C05272F0(v46);
    memcpy(v41, __src, 0x20AuLL);
    if (sub_1C057363C(v41) == 5)
    {
      v31 = sub_1C05272F0(v41);
      memcpy(v40, v30, 0x20AuLL);
      memcpy(v39, v31, 0x20AuLL);
      sub_1C05735AC(__src, &v38);
      sub_1C05735AC(__dst, &v38);
      sub_1C05735AC(__src, &v38);
      sub_1C05735AC(__dst, &v38);
      v10 = _s12SiriOntology15TerminalElementV13DateTimeValueV2eeoiySbAE_AEtFZ_0(v40, v39);
      sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
      sub_1C05735E4(__src);
      sub_1C05735E4(__dst);
      return v10 & 1;
    }

    memcpy(v40, __dst, 0x20AuLL);
    v36 = sub_1C05272F0(v40);
    sub_1C0573648(v36, v39);
    goto LABEL_41;
  }

  if (v5 == 6)
  {
    v16 = *sub_1C05272F0(v46);
    memcpy(v41, __src, 0x20AuLL);
    if (sub_1C057363C(v41) == 6)
    {
      v17 = *sub_1C05272F0(v41);
      sub_1C05735AC(__src, v40);
      sub_1C05735AC(__dst, v40);
      v10 = _s12SiriOntology15TerminalElementV11ScalarValueC2eeoiySbAE_AEtFZ_0(v16);
      goto LABEL_44;
    }

    memcpy(v40, __dst, 0x20AuLL);
    v32 = *sub_1C05272F0(v40);

    goto LABEL_41;
  }

  if (v5 != 7)
  {
    v21 = sub_1C05272F0(v46);
    v23 = *v21;
    v22 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    memcpy(v41, __src, 0x20AuLL);
    if (sub_1C057363C(v41) != 8)
    {
      memcpy(v40, __dst, 0x20AuLL);
      v33 = sub_1C05272F0(v40);
      v34 = *(v33 + 8);
      v35 = *(v33 + 24);

      goto LABEL_39;
    }

    v26 = sub_1C05272F0(v41);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    if (v22)
    {
      if (v27 && (v23 == *v26 && v22 == v27 || (sub_1C095DF3C() & 1) != 0))
      {
        goto LABEL_31;
      }
    }

    else if (!v27)
    {
LABEL_31:
      if (v24 != v28 || v25 != v29)
      {
        goto LABEL_37;
      }

      sub_1C05735AC(__src, v40);
      sub_1C05735AC(__dst, v40);
      v10 = 1;
LABEL_44:
      sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
      return v10 & 1;
    }

    sub_1C05735AC(__src, v40);
    sub_1C05735AC(__dst, v40);
    v10 = 0;
    goto LABEL_44;
  }

  v6 = sub_1C05272F0(v46);
  v7 = *v6;
  v8 = v6[1];
  memcpy(v41, __src, 0x20AuLL);
  if (sub_1C057363C(v41) != 7)
  {
LABEL_18:
    memcpy(v40, __dst, 0x20AuLL);
    v15 = *(sub_1C05272F0(v40) + 8);
LABEL_39:

    goto LABEL_41;
  }

LABEL_6:
  v9 = sub_1C05272F0(v41);
  if (v7 != *v9 || v8 != v9[1])
  {
LABEL_37:
    v10 = sub_1C095DF3C();
    sub_1C05735AC(__src, v40);
    sub_1C05735AC(__dst, v40);
    goto LABEL_44;
  }

  sub_1C05735AC(__src, v40);
  sub_1C05735AC(__dst, v40);
  sub_1C05145B4(v44, &qword_1EBE16E30, &qword_1C0970508);
  v10 = 1;
  return v10 & 1;
}

uint64_t _s12SiriOntology15TerminalElementV16AdjustmentReasonV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1C095DF3C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

BOOL _s12SiriOntology15TerminalElementV6OriginV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1 + 8;
  v5 = *v1;
  memcpy(v19, v1 + 8, 0x301uLL);
  v8 = *v3;
  v6 = v3 + 8;
  v7 = v8;
  memcpy(v20, v6, 0x301uLL);
  if (v5 == 9)
  {
    if (v7 != 9)
    {
      return 0;
    }
  }

  else if (v7 == 9 || (sub_1C059221C(v5, v7) & 1) == 0)
  {
    return 0;
  }

  memcpy(v17, v4, 0x301uLL);
  memcpy(&v17[776], v6, 0x301uLL);
  memcpy(v18, v4, 0x301uLL);
  if (sub_1C05757D8(v18) == 1)
  {
    memcpy(__dst, v6, 0x301uLL);
    if (sub_1C05757D8(__dst) == 1)
    {
      memcpy(v16, v4, 0x301uLL);
      sub_1C05149F8(v19, v14, &qword_1EBE16C80, &qword_1C096E858);
      sub_1C05149F8(v20, v14, &qword_1EBE16C80, &qword_1C096E858);
      sub_1C05145B4(v16, &qword_1EBE16C80, &qword_1C096E858);
      return 1;
    }

    sub_1C05149F8(v19, v16, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C05149F8(v20, v16, &qword_1EBE16C80, &qword_1C096E858);
    goto LABEL_12;
  }

  memcpy(v16, v4, 0x301uLL);
  memcpy(v14, v4, 0x301uLL);
  memcpy(__dst, v6, 0x301uLL);
  if (sub_1C05757D8(__dst) == 1)
  {
    memcpy(__src, v4, 0x301uLL);
    sub_1C05149F8(v19, v12, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C05149F8(v20, v12, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C05149F8(v16, v12, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C0575828(__src);
LABEL_12:
    memcpy(__dst, v17, 0x609uLL);
    sub_1C05145B4(__dst, &qword_1EBE16E28, &qword_1C0970500);
    return 0;
  }

  memcpy(__src, v6, 0x301uLL);
  sub_1C05149F8(v19, v12, &qword_1EBE16C80, &qword_1C096E858);
  sub_1C05149F8(v20, v12, &qword_1EBE16C80, &qword_1C096E858);
  sub_1C05149F8(v16, v12, &qword_1EBE16C80, &qword_1C096E858);
  v10 = _s12SiriOntology15TerminalElementV12OriginDetailO2eeoiySbAE_AEtFZ_0(v14);
  memcpy(v11, __src, 0x301uLL);
  sub_1C0575828(v11);
  memcpy(v12, v14, 0x301uLL);
  sub_1C0575828(v12);
  memcpy(__src, v4, 0x301uLL);
  sub_1C05145B4(__src, &qword_1EBE16C80, &qword_1C096E858);
  return v10;
}

BOOL _s12SiriOntology15TerminalElementV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(v31, v1, 0x20AuLL);
  v5 = v4[66];
  memcpy(v32, v4 + 67, 0x309uLL);
  v6 = v4[165];
  v7 = v4[166];
  v8 = v4[167];
  memcpy(v33, v3, 0x20AuLL);
  v9 = v3[66];
  memcpy(v34, v3 + 67, 0x309uLL);
  v22 = v3[165];
  v10 = v3[166];
  v11 = v3[167];
  memcpy(v29, v4, 0x20AuLL);
  memcpy(&v29[528], v3, 0x20AuLL);
  memcpy(v35, v4, 0x20AuLL);
  if (sub_1C0573598(v35) == 1)
  {
    memcpy(__dst, v3, 0x20AuLL);
    if (sub_1C0573598(__dst) == 1)
    {
      v21 = v11;
      memcpy(v30, v4, 0x20AuLL);
      sub_1C05149F8(v31, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05149F8(v33, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05145B4(v30, &qword_1EBE16C70, &unk_1C099BB20);
      goto LABEL_10;
    }

    sub_1C05149F8(v31, v30, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v30, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_7:
    memcpy(__dst, v29, 0x41AuLL);
    v12 = &qword_1EBE16C88;
    v13 = &qword_1C096E860;
LABEL_8:
    sub_1C05145B4(__dst, v12, v13);
    return 0;
  }

  memcpy(v30, v4, 0x20AuLL);
  memcpy(v28, v4, 0x20AuLL);
  memcpy(__dst, v3, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    memcpy(__src, v4, 0x20AuLL);
    sub_1C05149F8(v31, v25, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v25, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v30, v25, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05735E4(__src);
    goto LABEL_7;
  }

  v21 = v11;
  memcpy(__src, v3, 0x20AuLL);
  sub_1C05149F8(v31, v25, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v33, v25, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v30, v25, &qword_1EBE16C70, &unk_1C099BB20);
  v14 = _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(v28);
  memcpy(v24, __src, 0x20AuLL);
  sub_1C05735E4(v24);
  memcpy(v25, v28, 0x20AuLL);
  sub_1C05735E4(v25);
  memcpy(__src, v4, 0x20AuLL);
  sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((sub_1C055B098(v5, v9) & 1) == 0)
  {
    return 0;
  }

  memcpy(v29, v32, 0x309uLL);
  memcpy(&v29[784], v34, 0x309uLL);
  memcpy(v30, v32, 0x309uLL);
  if (sub_1C0573614(v30) == 1)
  {
    memcpy(__dst, &v29[784], 0x309uLL);
    v15 = v7;
    v16 = v10;
    v17 = v8;
    v18 = v21;
    if (sub_1C0573614(__dst) == 1)
    {
      memcpy(v28, v29, 0x309uLL);
      sub_1C05149F8(v32, __src, &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05149F8(v34, __src, &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05145B4(v28, &qword_1EBE16C78, &qword_1C096E850);
      goto LABEL_20;
    }

    sub_1C05149F8(v32, v28, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05149F8(v34, v28, &qword_1EBE16C78, &qword_1C096E850);
    goto LABEL_18;
  }

  memcpy(v28, v29, 0x309uLL);
  memcpy(__src, v29, 0x309uLL);
  memcpy(__dst, &v29[784], 0x309uLL);
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v21;
  if (sub_1C0573614(__dst) == 1)
  {
    memcpy(v25, v29, 0x309uLL);
    sub_1C05149F8(v32, v24, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05149F8(v34, v24, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05149F8(v28, v24, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05758D8(v25);
LABEL_18:
    memcpy(__dst, v29, 0x619uLL);
    v12 = &unk_1EBE16E38;
    v13 = &unk_1C0970510;
    goto LABEL_8;
  }

  memcpy(v25, &v29[784], 0x309uLL);
  sub_1C05149F8(v32, v24, &qword_1EBE16C78, &qword_1C096E850);
  sub_1C05149F8(v34, v24, &qword_1EBE16C78, &qword_1C096E850);
  sub_1C05149F8(v28, v24, &qword_1EBE16C78, &qword_1C096E850);
  v19 = _s12SiriOntology15TerminalElementV6OriginV2eeoiySbAE_AEtFZ_0(__src);
  memcpy(v23, v25, 0x309uLL);
  sub_1C05758D8(v23);
  memcpy(v24, __src, 0x309uLL);
  sub_1C05758D8(v24);
  memcpy(v25, v29, 0x309uLL);
  sub_1C05145B4(v25, &qword_1EBE16C78, &qword_1C096E850);
  if (!v19)
  {
    return 0;
  }

LABEL_20:
  if (v17)
  {
    if (v18)
    {
      return ((v6 ^ v22) & 1) == 0 && (v15 == v16 && v17 == v18 || (sub_1C095DF3C() & 1) != 0);
    }

LABEL_28:

    return 0;
  }

  if (v18)
  {
    goto LABEL_28;
  }

  return 1;
}

uint64_t sub_1C0573598(uint64_t a1)
{
  v1 = *(a1 + 145);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0573614(uint64_t a1)
{
  v1 = *(a1 + 546);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12SiriOntology15TerminalElementV13DerivedOriginV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (v3 != 1)
  {
    v15[0] = *a1;
    v15[1] = v3;
    v15[2] = v5;
    v15[3] = v4;
    if (v8 != 1)
    {
      v14[0] = v7;
      v14[1] = v8;
      v14[2] = v10;
      v14[3] = v9;
      v13 = _s12SiriOntology15TerminalElementV16AdjustmentReasonV2eeoiySbAE_AEtFZ_0(v15, v14);
      sub_1C0559D40(v2, v3);
      sub_1C0559D40(v7, v8);
      sub_1C0559D40(v2, v3);

      sub_1C05756F0(v2, v3);
      if (v13)
      {
        goto LABEL_10;
      }

      return 0;
    }

    sub_1C0559D40(v2, v3);
    sub_1C0559D40(v7, 1);
    sub_1C0559D40(v2, v3);

LABEL_7:
    sub_1C05756F0(v2, v3);
    sub_1C05756F0(v7, v8);
    return 0;
  }

  sub_1C0559D40(*a1, 1);
  if (v8 != 1)
  {
    sub_1C0559D40(v7, v8);
    goto LABEL_7;
  }

  sub_1C0559D40(v7, 1);
  sub_1C05756F0(v2, 1);
LABEL_10:

  return sub_1C055B298(v6);
}

BOOL _s12SiriOntology15TerminalElementV12OriginDetailO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x301uLL);
  memcpy(__src, v3, 0x301uLL);
  memcpy(v40, v4, 0x301uLL);
  memcpy(v41, v3, sizeof(v41));
  memcpy(v42, v4, 0x301uLL);
  v5 = sub_1C0573F8C(v42);
  if (!v5)
  {
    v9 = sub_1C0527300(v42);
    v11 = *v9;
    v10 = v9[1];
    memcpy(v37, __src, 0x301uLL);
    if (sub_1C0573F8C(v37))
    {
      goto LABEL_16;
    }

    v12 = sub_1C0527300(v37);
    v13 = v12[1];
    if (v10)
    {
      if (!v13)
      {
        sub_1C05757F0(__src, v36);
        sub_1C05757F0(__dst, v36);
        v27 = v36;
        goto LABEL_17;
      }

      if (v11 == *v12 && v10 == v13)
      {
        sub_1C05757F0(__dst, v36);
        sub_1C05757F0(__src, v36);
        sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
        return 1;
      }

      v29 = sub_1C095DF3C();
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__src, v36);
      sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_1C05757F0(__src, v36);
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__src, v36);
      sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
      if (v13)
      {
        sub_1C0575828(__src);
        return 0;
      }
    }

    return 1;
  }

  if (v5 != 1)
  {
    v14 = sub_1C0527300(v42);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    memcpy(v37, __src, 0x301uLL);
    if (sub_1C0573F8C(v37) != 2)
    {
      goto LABEL_16;
    }

    v20 = sub_1C0527300(v37);
    v22 = *v20;
    v21 = v20[1];
    v24 = v20[2];
    v23 = v20[3];
    v25 = v20[4];
    if (v19)
    {
      v35[0] = v16;
      v35[1] = v15;
      v35[2] = v18;
      v35[3] = v17;
      v35[4] = v19;
      if (v25)
      {
        v30 = v22;
        v31 = v21;
        v32 = v24;
        v33 = v23;
        v34 = v25;
        sub_1C05757F0(__src, v36);
        sub_1C05757F0(__dst, v36);
        sub_1C05757F0(__dst, v36);
        sub_1C05757F0(__src, v36);
        sub_1C0575898(v16, v15, v18, v17, v19);
        v26 = _s12SiriOntology15TerminalElementV13DerivedOriginV2eeoiySbAE_AEtFZ_0(v35, &v30);
        sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
        sub_1C05756F0(v30, v31);

        sub_1C05756F0(v35[0], v35[1]);

        sub_1C0575858(v16, v15, v18, v17, v19);
        return (v26 & 1) != 0;
      }

      sub_1C05757F0(__src, v36);
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__src, v36);
      sub_1C0575898(v16, v15, v18, v17, v19);
      sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
      sub_1C05756F0(v16, v15);

LABEL_25:
      sub_1C0575858(v16, v15, v18, v17, v19);
      sub_1C0575858(v22, v21, v24, v23, v25);
      return 0;
    }

    sub_1C05757F0(__src, v36);
    sub_1C05757F0(__dst, v36);
    sub_1C05757F0(__dst, v36);
    sub_1C05757F0(__src, v36);
    sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
    if (v25)
    {
      goto LABEL_25;
    }

    sub_1C0575858(v16, v15, v18, v17, 0);
    return 1;
  }

  v6 = sub_1C0527300(v42);
  memcpy(v37, __src, 0x301uLL);
  if (sub_1C0573F8C(v37) != 1)
  {
LABEL_16:
    sub_1C05757F0(__dst, v37);
    v27 = v37;
LABEL_17:
    sub_1C05757F0(__src, v27);
    sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
    return 0;
  }

  v7 = sub_1C0527300(v37);
  memcpy(v36, v6, 0x301uLL);
  memcpy(v35, v7, 0x301uLL);
  sub_1C05757F0(__src, &v30);
  sub_1C05757F0(__dst, &v30);
  sub_1C05757F0(__dst, &v30);
  sub_1C05757F0(__src, &v30);
  v8 = static TerminalElement.MatchingSpan.== infix(_:_:)(v36);
  sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
  sub_1C0575828(__src);
  sub_1C0575828(__dst);
  return v8;
}

uint64_t _s12SiriOntology15TerminalElementV13SemanticValueV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1C095DF3C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1C095DF3C();
}

unint64_t sub_1C0573F9C()
{
  result = qword_1EBE16C90;
  if (!qword_1EBE16C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16C90);
  }

  return result;
}

uint64_t sub_1C0574050(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C05740A8()
{
  result = qword_1EBE16CB8;
  if (!qword_1EBE16CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CB8);
  }

  return result;
}

unint64_t sub_1C0574100()
{
  result = qword_1EBE16CC0;
  if (!qword_1EBE16CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CC0);
  }

  return result;
}

unint64_t sub_1C0574158()
{
  result = qword_1EBE16CC8;
  if (!qword_1EBE16CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CC8);
  }

  return result;
}

unint64_t sub_1C05741B0()
{
  result = qword_1EBE16CD0;
  if (!qword_1EBE16CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CD0);
  }

  return result;
}

unint64_t sub_1C0574208()
{
  result = qword_1EBE16CD8;
  if (!qword_1EBE16CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CD8);
  }

  return result;
}

unint64_t sub_1C0574260()
{
  result = qword_1EBE16CE0;
  if (!qword_1EBE16CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CE0);
  }

  return result;
}

unint64_t sub_1C05742B8()
{
  result = qword_1EBE16CE8;
  if (!qword_1EBE16CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CE8);
  }

  return result;
}

unint64_t sub_1C0574310()
{
  result = qword_1EBE16CF0;
  if (!qword_1EBE16CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CF0);
  }

  return result;
}

unint64_t sub_1C05743D4()
{
  result = qword_1EBE16D00;
  if (!qword_1EBE16D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D00);
  }

  return result;
}

unint64_t sub_1C057442C()
{
  result = qword_1EBE16D08;
  if (!qword_1EBE16D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D08);
  }

  return result;
}

unint64_t sub_1C0574484()
{
  result = qword_1EBE16D10;
  if (!qword_1EBE16D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV4DateVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 145);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV13DerivedOriginVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV12OriginDetailOSg(uint64_t a1)
{
  v1 = *(a1 + 538);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV6OriginVSg(uint64_t a1)
{
  v1 = *(a1 + 546);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C05745F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1344))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 528);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0574640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1336) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1344) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 528) = (a2 - 1);
      return result;
    }

    *(result + 1344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C05747FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 522))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 145);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C0574848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 522) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 144) = -a2 << 8;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 520) = 0;
      *(result + 152) = 0u;
      result += 152;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      *(result + 192) = 0u;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      *(result + 336) = 0u;
      *(result + 352) = 0u;
      return result;
    }

    *(result + 522) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C057496C(uint64_t result, char a2)
{
  v2 = *(result + 296);
  v3 = *(result + 312);
  v4 = *(result + 328);
  v5 = *(result + 344);
  v6 = *(result + 416) & 0xFFFFFFLL;
  v7 = *(result + 488) & 0xFFFFFFLL;
  v8 = *(result + 504) & 1;
  v9 = *(result + 520) & 0xFF01 | (16 * (a2 & 0xF));
  *(result + 144) = *(result + 144);
  *(result + 296) = v2;
  *(result + 312) = v3;
  *(result + 328) = v4;
  *(result + 344) = v5;
  *(result + 416) = v6;
  *(result + 488) = v7;
  *(result + 504) = v8;
  *(result + 520) = v9;
  return result;
}

uint64_t sub_1C05749E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0574A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0574AAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 777))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 546);
  v4 = -2 - v3;
  if ((-2 - v3) < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

void sub_1C0574B10(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 776) = 0;
    *(a1 + 760) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 777) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 777) = 0;
    }

    if (a2)
    {
      v3 = ~a2 << 16;
      bzero((a1 + 8), 0x218uLL);
      *(a1 + 544) = v3;
      *(a1 + 552) = 0u;
      *(a1 + 568) = 0u;
      *(a1 + 584) = 0u;
      *(a1 + 600) = 0u;
      *(a1 + 616) = 0u;
      *(a1 + 632) = 0u;
      *(a1 + 648) = 0u;
      *(a1 + 664) = 0u;
      *(a1 + 680) = 0u;
      *(a1 + 696) = 0u;
      *(a1 + 712) = 0u;
      *(a1 + 728) = 0u;
      *(a1 + 744) = 0u;
      *(a1 + 760) = 0u;
      *(a1 + 776) = 0;
    }
  }
}

uint64_t sub_1C0574C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 769))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 538);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0574CEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 760) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 768) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 769) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      v4 = -a2 << 16;
      bzero(a1, 0x218uLL);
      *(a1 + 536) = v4;
      result = 0.0;
      *(a1 + 544) = 0u;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *(a1 + 592) = 0u;
      *(a1 + 608) = 0u;
      *(a1 + 624) = 0u;
      *(a1 + 640) = 0u;
      *(a1 + 656) = 0u;
      *(a1 + 672) = 0u;
      *(a1 + 688) = 0u;
      *(a1 + 704) = 0u;
      *(a1 + 720) = 0u;
      *(a1 + 736) = 0u;
      *(a1 + 752) = 0u;
      *(a1 + 768) = 0;
      return result;
    }

    *(a1 + 769) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0574E44(uint64_t result, char a2)
{
  v2 = *(result + 672);
  v3 = *(result + 640) & 0x1010101;
  v4 = *(result + 736) & 1;
  v5 = *(result + 752) & 1;
  v6 = *(result + 768) & 1 | (a2 << 6);
  *(result + 536) = *(result + 536);
  *(result + 640) = v3;
  *(result + 672) = v2;
  *(result + 736) = v4;
  *(result + 752) = v5;
  *(result + 768) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for TerminalElement.OriginType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalElement.OriginType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0574FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0575038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0575090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 769))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 696);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C05750D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 760) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 768) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 769) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 696) = (a2 - 1);
      return result;
    }

    *(result + 769) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TerminalElement.MatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalElement.MatchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0575344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C05753A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0575418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0575460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C05754DC()
{
  result = qword_1EBE0FA30;
  if (!qword_1EBE0FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FA30);
  }

  return result;
}

unint64_t sub_1C0575530()
{
  result = qword_1EBE16D20;
  if (!qword_1EBE16D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D20);
  }

  return result;
}

uint64_t sub_1C0575584(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0575620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0575688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05756F0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C05757D8(uint64_t a1)
{
  v1 = *(a1 + 538);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0575858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1C05756F0(result, a2);
  }

  return result;
}

uint64_t sub_1C0575898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1C0559D40(result, a2);
  }

  return result;
}

uint64_t sub_1C0575908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0575968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LandmarkIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 LandmarkIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static LandmarkIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C0575AC8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1C0575B14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C0575BB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  IntentNodeTraversable.value<A>(forNode:)(inited, a1, *(*(a2 + 8) + 8), &v6);
  return v6;
}

uint64_t static UsoEntitySpanUtils.getGroupedEntitySpans(spans:maxGroups:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v50 = a2;
    v5 = 0;
    v6 = a1 + 32;
    v57 = @"homeAutomationEntityTag";
    v56 = @"homeAutomationSettingTag";
    v7 = MEMORY[0x1E69E7CC0];
    v51 = MEMORY[0x1E69E7CC0];
    v52 = a1 + 32;
    v53 = v4;
    do
    {
      v8 = (v6 + 192 * v5);
      v9 = v8[9];
      v78 = v8[8];
      v79 = v9;
      v80[0] = v8[10];
      *(v80 + 9) = *(v8 + 169);
      v10 = v8[5];
      v74 = v8[4];
      v75 = v10;
      v11 = v8[7];
      v76 = v8[6];
      v77 = v11;
      v12 = v8[1];
      v70 = *v8;
      v71 = v12;
      v13 = v8[3];
      v72 = v8[2];
      v73 = v13;
      if ((BYTE4(v78) & 1) == 0 && (BYTE12(v78) & 1) == 0)
      {
        v54 = v3;
        v55 = v7;
        v14 = *(&v77 + 1);
        v15 = *(*(&v77 + 1) + 16);
        v16 = sub_1C0521E78(&v70, &v59);
        v17 = (v14 + 56);
        v58 = -v15;
        v3 = -1;
        while (v58 + v3 != -1)
        {
          if (++v3 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v20 = *(v17 - 3);
          v19 = *(v17 - 2);
          v21 = *v17;
          if (v20 == sub_1C095D75C() && v19 == v22)
          {
            goto LABEL_23;
          }

          v24 = sub_1C095DF3C();

          if (v24)
          {
            goto LABEL_20;
          }

          if (v20 == sub_1C095D75C() && v19 == v25)
          {

LABEL_20:

LABEL_23:

LABEL_24:
            v67 = v78;
            v68 = v79;
            v69[0] = v80[0];
            *(v69 + 9) = *(v80 + 9);
            v63 = v74;
            v64 = v75;
            v65 = v76;
            v66 = v77;
            v59 = v70;
            v60 = v71;
            v61 = v72;
            v62 = v73;
            MEMORY[0x1EEE9AC00](v16);
            v49 = v27;
            v3 = v54;
            v7 = v55;
            if ((sub_1C0576244(sub_1C057CBF0, v48, v55) & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_1C0522E00(0, *(v7 + 2) + 1, 1, v7);
              }

              v29 = *(v7 + 2);
              v28 = *(v7 + 3);
              if (v29 >= v28 >> 1)
              {
                v7 = sub_1C0522E00((v28 > 1), v29 + 1, 1, v7);
              }

              *(v7 + 2) = v29 + 1;
              v30 = &v7[192 * v29];
              goto LABEL_35;
            }

            sub_1C05755CC(&v70);
LABEL_4:
            v6 = v52;
            v4 = v53;
            goto LABEL_5;
          }

          v17 += 6;
          v18 = sub_1C095DF3C();

          if (v18)
          {
            goto LABEL_24;
          }
        }

        v67 = v78;
        v68 = v79;
        v69[0] = v80[0];
        *(v69 + 9) = *(v80 + 9);
        v63 = v74;
        v64 = v75;
        v65 = v76;
        v66 = v77;
        v59 = v70;
        v60 = v71;
        v61 = v72;
        v62 = v73;
        MEMORY[0x1EEE9AC00](v16);
        v49 = v26;
        v3 = v54;
        if (sub_1C0576244(sub_1C057CFE0, v48, v51))
        {
          sub_1C05755CC(&v70);
          v7 = v55;
          goto LABEL_4;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_1C0522E00(0, *(v51 + 2) + 1, 1, v51);
        }

        v33 = *(v51 + 2);
        v32 = *(v51 + 3);
        if (v33 >= v32 >> 1)
        {
          v51 = sub_1C0522E00((v32 > 1), v33 + 1, 1, v51);
        }

        v34 = v51;
        *(v51 + 2) = v33 + 1;
        v30 = &v34[192 * v33];
LABEL_35:
        v35 = v70;
        v36 = v71;
        v37 = v73;
        *(v30 + 4) = v72;
        *(v30 + 5) = v37;
        *(v30 + 2) = v35;
        *(v30 + 3) = v36;
        v38 = v74;
        v39 = v75;
        v40 = v77;
        *(v30 + 8) = v76;
        *(v30 + 9) = v40;
        *(v30 + 6) = v38;
        *(v30 + 7) = v39;
        v41 = v78;
        v42 = v79;
        v43 = v80[0];
        *(v30 + 201) = *(v80 + 9);
        *(v30 + 11) = v42;
        *(v30 + 12) = v43;
        *(v30 + 10) = v41;
        v6 = v52;
        v4 = v53;
      }

LABEL_5:
      ++v5;
    }

    while (v5 != v4);
    v2 = v50;
    v44 = v51;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v44 = MEMORY[0x1E69E7CC0];
  }

  *&v70 = v44;

  sub_1C0579E80(&v70);
  if (v3)
  {
LABEL_41:

    __break(1u);
  }

  else
  {

    v45 = sub_1C0576448(v70, v2);

    v46 = sub_1C057C7F4(v7, v45);

    return v46;
  }

  return result;
}

uint64_t sub_1C0576198(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C0576244(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[9];
      v10 = v7[7];
      v52 = v7[8];
      v53 = v9;
      v11 = v7[9];
      v54[0] = v7[10];
      *(v54 + 9) = *(v7 + 169);
      v12 = v7[5];
      v13 = v7[3];
      v48 = v7[4];
      v49 = v12;
      v14 = v7[5];
      v15 = v7[7];
      v50 = v7[6];
      v51 = v15;
      v16 = v7[1];
      v45[0] = *v7;
      v45[1] = v16;
      v17 = v7[3];
      v19 = *v7;
      v18 = v7[1];
      v46 = v7[2];
      v47 = v17;
      v42 = v52;
      v43 = v11;
      v44[0] = v7[10];
      *(v44 + 9) = *(v7 + 169);
      v38 = v48;
      v39 = v14;
      v40 = v50;
      v41 = v10;
      v34 = v19;
      v35 = v18;
      v36 = v46;
      v37 = v13;
      sub_1C0521E78(v45, &v23);
      v20 = a1(&v34);
      if (v3)
      {
        break;
      }

      v4 = v20;
      v31 = v42;
      v32 = v43;
      v33[0] = v44[0];
      *(v33 + 9) = *(v44 + 9);
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v26 = v37;
      sub_1C05755CC(&v23);
      v21 = v8-- == 0;
      v7 += 12;
      if ((v4 | v21))
      {
        return v4 & 1;
      }
    }

    v31 = v42;
    v32 = v43;
    v33[0] = v44[0];
    *(v33 + 9) = *(v44 + 9);
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    sub_1C05755CC(&v23);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C0576448(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = -v4;
    v7 = 1;
    v8 = 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17350, &unk_1C0970B50);
      v9 = swift_allocObject();
      v10 = *(a1 + v8 + 144);
      v12 = *(a1 + v8 + 112);
      v35 = *(a1 + v8 + 128);
      v11 = v35;
      v36 = v10;
      v13 = *(a1 + v8 + 144);
      v37[0] = *(a1 + v8 + 160);
      *(v37 + 9) = *(a1 + v8 + 169);
      v14 = *(a1 + v8 + 80);
      v16 = *(a1 + v8 + 48);
      v31 = *(a1 + v8 + 64);
      v15 = v31;
      v32 = v14;
      v17 = *(a1 + v8 + 80);
      v18 = *(a1 + v8 + 112);
      v33 = *(a1 + v8 + 96);
      v19 = v33;
      v34 = v18;
      v20 = *(a1 + v8 + 16);
      v28[0] = *(a1 + v8);
      v28[1] = v20;
      v21 = *(a1 + v8 + 48);
      v23 = *(a1 + v8);
      v22 = *(a1 + v8 + 16);
      v29 = *(a1 + v8 + 32);
      v24 = v29;
      v30 = v21;
      v25 = *(a1 + v8 + 160);
      v9[11] = v13;
      v9[12] = v25;
      *(v9 + 201) = *(a1 + v8 + 169);
      v9[7] = v17;
      v9[8] = v19;
      v9[9] = v12;
      v9[10] = v11;
      v9[1] = xmmword_1C096E0C0;
      v9[2] = v23;
      v9[3] = v22;
      v9[4] = v24;
      v9[5] = v16;
      v9[6] = v15;
      v27 = v9;
      sub_1C0521E78(v28, v26);
      sub_1C05765B0(a1, &v27, v7, &v38, a2);

      ++v7;
      v8 += 192;
    }

    while (v6 + v7 != 1);
    return v38;
  }

  return result;
}

uint64_t sub_1C05765B0(uint64_t result, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a4;
  v6 = *(*a4 + 16);
  if (v6 < a5)
  {
    v7 = a4;
    v8 = a3;
    v9 = result;
    v10 = *(result + 16);
    v11 = *a2;
    v67 = *a2;
    if (v10 <= a3)
    {
      if (v6)
      {
        if (*(v11 + 16))
        {

          v45 = sub_1C057C6F4(v44);

          v46 = v5 + 4;
          do
          {
            if (!v6)
            {

              v7 = a4;
              v11 = v67;
              goto LABEL_48;
            }

            v47 = *v46++;

            v49 = sub_1C057C6F4(v48);
            v50 = sub_1C0576B90(v49, v45);

            --v6;
          }

          while ((v50 & 1) == 0);
        }
      }

      else
      {
LABEL_48:

        result = swift_isUniquelyReferenced_nonNull_native();
        *v7 = v5;
        if ((result & 1) == 0)
        {
LABEL_63:
          result = sub_1C0578F40(0, v5[2] + 1, 1, v5, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
          v5 = result;
          *v7 = result;
        }

        v61 = v5[2];
        v60 = v5[3];
        if (v61 >= v60 >> 1)
        {
          result = sub_1C0578F40((v60 > 1), v61 + 1, 1, v5, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
          v5 = result;
        }

        v5[2] = v61 + 1;
        v5[v61 + 4] = v11;
        *v7 = v5;
      }
    }

    else
    {
      v65 = result;
      v68 = 0;
      v12 = *(v11 + 16);
      v73 = v11 + 192 * v12 - 160;
      v74 = result + 32;
      v13 = a3;
      v71 = v12;
      v72 = *(result + 16);
      while (1)
      {
        if (v8 < 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v14 = (v74 + 192 * v13);
        v15 = v14[9];
        v5 = (v13 + 1);
        v84 = v14[8];
        v85 = v15;
        v86[0] = v14[10];
        *(v86 + 9) = *(v14 + 169);
        v16 = v14[5];
        v80 = v14[4];
        v81 = v16;
        v17 = v14[7];
        v82 = v14[6];
        v83 = v17;
        v18 = v14[1];
        v76 = *v14;
        v77 = v18;
        v19 = v14[3];
        v78 = v14[2];
        v79 = v19;
        if (v12)
        {
          v20 = *(v11 + 16);
          if (v12 > v20)
          {
            goto LABEL_62;
          }

          if ((BYTE4(v84) & 1) != 0 || (BYTE12(v84) & 1) != 0 || (*(v73 + 132) & 1) != 0 || (*(v73 + 140) & 1) != 0 || v84 >= *(v73 + 136) || *(v73 + 128) >= DWORD2(v84))
          {
            sub_1C0521E78(&v76, v75);

            v21 = v11;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1C0522E00(0, v20 + 1, 1, v11);
            }

            v23 = *(v21 + 2);
            v22 = *(v21 + 3);
            if (v23 >= v22 >> 1)
            {
              v21 = sub_1C0522E00((v22 > 1), v23 + 1, 1, v21);
            }

            *(v21 + 2) = v23 + 1;
            v24 = &v21[192 * v23];
            v25 = v76;
            v26 = v77;
            v27 = v79;
            *(v24 + 4) = v78;
            *(v24 + 5) = v27;
            *(v24 + 2) = v25;
            *(v24 + 3) = v26;
            v28 = v80;
            v29 = v81;
            v30 = v83;
            *(v24 + 8) = v82;
            *(v24 + 9) = v30;
            *(v24 + 6) = v28;
            *(v24 + 7) = v29;
            v31 = v84;
            v32 = v85;
            v33 = v86[0];
            *(v24 + 201) = *(v86 + 9);
            *(v24 + 11) = v32;
            *(v24 + 12) = v33;
            *(v24 + 10) = v31;
            v75[0] = v21;
            v34 = *v7;
            v35 = *(*v7 + 16);
            if (v35)
            {

              v37 = sub_1C057C6F4(v36);

              v38 = 0;
              v39 = (v34 + 32);
              while (1)
              {
                if (v35 == v38)
                {

                  v7 = a4;
                  v8 = a3;
                  v11 = v67;
                  v9 = v65;
                  goto LABEL_25;
                }

                if (v38 >= *(v34 + 16))
                {
                  break;
                }

                v7 = (v38 + 1);
                v40 = v39[v38];

                v42 = sub_1C057C6F4(v41);
                v43 = sub_1C0576B90(v42, v37);

                v38 = v7;
                if (v43)
                {

                  v7 = a4;
                  v8 = a3;
                  v11 = v67;
                  v9 = v65;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_54:

              goto LABEL_55;
            }

LABEL_25:
            sub_1C05765B0(v9, v75, v5, v7, a5);
            v68 = 1;
LABEL_26:

            v12 = v71;
            v10 = v72;
          }
        }

        if (v5 == v10)
        {
          break;
        }

        if (v5 >= v8)
        {
          v13 = v5;
          if (v5 < v10)
          {
            continue;
          }
        }

        goto LABEL_61;
      }

      if (v68)
      {
        return result;
      }

      v35 = *a2;
      v51 = *(*a2 + 16);
      if (v51 >= a5)
      {
        return result;
      }

      v39 = *v7;
      v52 = *(*v7 + 16);
      if (v52)
      {
        if (!v51)
        {
          return result;
        }

        v54 = sub_1C057C6F4(v53);

        v55 = v39 + 4;
        while (v52)
        {
          v56 = *v55++;

          v58 = sub_1C057C6F4(v57);
          v59 = sub_1C0576B90(v58, v54);

          v7 = a4;

          --v52;
          if (v59)
          {
          }
        }

        goto LABEL_54;
      }

LABEL_55:

      result = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v39;
      if ((result & 1) == 0)
      {
        result = sub_1C0578F40(0, v39[2] + 1, 1, v39, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
        v39 = result;
        *v7 = result;
      }

      v63 = v39[2];
      v62 = v39[3];
      if (v63 >= v62 >> 1)
      {
        result = sub_1C0578F40((v62 > 1), v63 + 1, 1, v39, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
        v39 = result;
      }

      v39[2] = v63 + 1;
      v39[v63 + 4] = v35;
      *v7 = v39;
    }
  }

  return result;
}

uint64_t sub_1C0576B90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v45 = (v5 + 63) >> 6;
  v8 = a1 + 56;

  v10 = 0;
  v44 = v2;
  v11 = v45;
  if (v7)
  {
    while (1)
    {
      v12 = v10;
LABEL_10:
      v13 = (*(v2 + 48) + 192 * (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v82[2] = v13[2];
      v82[3] = v14;
      v82[0] = v16;
      v82[1] = v15;
      v17 = v13[6];
      v19 = v13[4];
      v18 = v13[5];
      v82[7] = v13[7];
      v82[6] = v17;
      v82[4] = v19;
      v82[5] = v18;
      v21 = v13[9];
      v20 = v13[10];
      v22 = v13[8];
      *(v83 + 9) = *(v13 + 169);
      v83[0] = v20;
      v82[8] = v22;
      v82[9] = v21;
      v23 = v13[9];
      v79 = v13[8];
      v80 = v23;
      v81[0] = v13[10];
      *(v81 + 9) = *(v13 + 169);
      v24 = v13[5];
      v75 = v13[4];
      v76 = v24;
      v25 = v13[7];
      v77 = v13[6];
      v78 = v25;
      v26 = v13[1];
      v71 = *v13;
      v72 = v26;
      v27 = v13[3];
      v73 = v13[2];
      v74 = v27;
      if (!*(a1 + 16))
      {
        break;
      }

      v28 = *(a1 + 40);
      v68 = v13[8];
      v69 = v13[9];
      v70[0] = v13[10];
      *(v70 + 9) = *(v13 + 169);
      v64 = v13[4];
      v65 = v13[5];
      v66 = v13[6];
      v67 = v13[7];
      v60 = *v13;
      v61 = v13[1];
      v62 = v13[2];
      v63 = v13[3];
      sub_1C095DFEC();
      sub_1C0521E78(v82, v58);
      UsoEntitySpan.hash(into:)(&v47);
      v29 = sub_1C095E03C();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      if (((*(v8 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
LABEL_18:
        v68 = v79;
        v69 = v80;
        v70[0] = v81[0];
        *(v70 + 9) = *(v81 + 9);
        v64 = v75;
        v65 = v76;
        v66 = v77;
        v67 = v78;
        v60 = v71;
        v61 = v72;
        v62 = v73;
        v63 = v74;
        sub_1C05755CC(&v60);
        goto LABEL_19;
      }

      v7 &= v7 - 1;
      v32 = ~v30;
      while (1)
      {
        v33 = (*(a1 + 48) + 192 * v31);
        v34 = v33[3];
        v36 = *v33;
        v35 = v33[1];
        v58[2] = v33[2];
        v58[3] = v34;
        v58[0] = v36;
        v58[1] = v35;
        v37 = v33[7];
        v39 = v33[4];
        v38 = v33[5];
        v58[6] = v33[6];
        v58[7] = v37;
        v58[4] = v39;
        v58[5] = v38;
        v41 = v33[9];
        v40 = v33[10];
        v42 = v33[8];
        *(v59 + 9) = *(v33 + 169);
        v58[9] = v41;
        v59[0] = v40;
        v58[8] = v42;
        v55 = v33[8];
        v56 = v33[9];
        v57[0] = v33[10];
        *(v57 + 9) = *(v33 + 169);
        v51 = v33[4];
        v52 = v33[5];
        v53 = v33[6];
        v54 = v33[7];
        v47 = *v33;
        v48 = v33[1];
        v49 = v33[2];
        v50 = v33[3];
        sub_1C0521E78(v58, v46);
        v43 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v47, &v71);
        v68 = v55;
        v69 = v56;
        v70[0] = v57[0];
        *(v70 + 9) = *(v57 + 9);
        v64 = v51;
        v65 = v52;
        v66 = v53;
        v67 = v54;
        v60 = v47;
        v61 = v48;
        v62 = v49;
        v63 = v50;
        sub_1C05755CC(&v60);
        if (v43)
        {
          break;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v8 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v55 = v79;
      v56 = v80;
      v57[0] = v81[0];
      *(v57 + 9) = *(v81 + 9);
      v51 = v75;
      v52 = v76;
      v53 = v77;
      v54 = v78;
      v47 = v71;
      v48 = v72;
      v49 = v73;
      v50 = v74;
      result = sub_1C05755CC(&v47);
      v10 = v12;
      v2 = v44;
      v11 = v45;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v68 = v79;
    v69 = v80;
    v70[0] = v81[0];
    *(v70 + 9) = *(v81 + 9);
    v64 = v75;
    v65 = v76;
    v66 = v77;
    v67 = v78;
    v60 = v71;
    v61 = v72;
    v62 = v73;
    v63 = v74;
    sub_1C0521E78(v82, v58);
    sub_1C05755CC(&v60);
LABEL_19:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static UsoEntitySpanUtils.convert(from:)()
{

  v1 = 0;
  v2 = sub_1C057CCC0(v0);

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1C0579D78(*(v2 + 16), 0);
  v5 = sub_1C057C49C(&v77, (v4 + 4), v3, v2);

  sub_1C052281C();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  *&v77 = v4;
  sub_1C0579EF4(&v77);

  v6 = v77;
  v71 = *(v77 + 16);
  if (!v71)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v70 = v77 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC8];
  v69 = v77;
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_57;
    }

    v73 = v8;
    v74 = v7;
    v10 = *(v70 + 16 * v7 + 8);
    v87 = v9;
    v1 = *(v10 + 16);

    if (v1)
    {
      break;
    }

LABEL_29:
    v45 = v9[2];
    if (v45)
    {
      v46 = sub_1C0579D78(v9[2], 0);
      v72 = sub_1C057C49C(&v77, (v46 + 4), v45, v9);
      v1 = *(&v78 + 1);

      sub_1C052281C();
      if (v72 != v45)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
    }

    *&v77 = v46;
    v1 = 0;
    sub_1C0579EF4(&v77);

    v47 = v77;
    v48 = *(v77 + 16);
    if (v48)
    {
      v49 = v48 - 1;
      v50 = 40;
      v51 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v52 = *(v47 + v50);

        sub_1C0577690(v53, v75);

        v84 = v75[8];
        v85 = v75[9];
        v86[0] = v76[0];
        *(v86 + 9) = *(v76 + 9);
        *v81 = v75[4];
        *&v81[16] = v75[5];
        v82 = v75[6];
        v83 = v75[7];
        v77 = v75[0];
        v78 = v75[1];
        v79 = v75[2];
        v80 = v75[3];
        if (sub_1C057CF40(&v77) != 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1C0522E00(0, *(v51 + 2) + 1, 1, v51);
          }

          v55 = *(v51 + 2);
          v54 = *(v51 + 3);
          if (v55 >= v54 >> 1)
          {
            v51 = sub_1C0522E00((v54 > 1), v55 + 1, 1, v51);
          }

          *(v51 + 2) = v55 + 1;
          v56 = &v51[192 * v55];
          v57 = v77;
          v58 = v78;
          v59 = v80;
          *(v56 + 4) = v79;
          *(v56 + 5) = v59;
          *(v56 + 2) = v57;
          *(v56 + 3) = v58;
          v60 = *v81;
          v61 = *&v81[16];
          v62 = v83;
          *(v56 + 8) = v82;
          *(v56 + 9) = v62;
          *(v56 + 6) = v60;
          *(v56 + 7) = v61;
          v63 = v84;
          v64 = v85;
          v65 = v86[0];
          *(v56 + 201) = *(v86 + 9);
          *(v56 + 11) = v64;
          *(v56 + 12) = v65;
          *(v56 + 10) = v63;
        }

        if (!v49)
        {
          break;
        }

        --v49;
        v50 += 16;
      }
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
    }

    v8 = v73;
    if (*(v51 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1C0578F40(0, v73[2] + 1, 1, v73, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
      }

      v67 = v8[2];
      v66 = v8[3];
      if (v67 >= v66 >> 1)
      {
        v8 = sub_1C0578F40((v66 > 1), v67 + 1, 1, v8, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
      }

      v8[2] = v67 + 1;
      v8[v67 + 4] = v51;
    }

    else
    {
    }

    v7 = v74 + 1;
    v6 = v69;
    v9 = MEMORY[0x1E69E7CC8];
    if (v74 + 1 == v71)
    {

      return v8;
    }
  }

  v11 = 0;
  v12 = (v10 + 32);
  while (v11 < *(v10 + 16))
  {
    v18 = *(v12 + 73);
    v19 = v12[2];
    v20 = v12[4];
    v80 = v12[3];
    *v81 = v20;
    v21 = v12[1];
    v77 = *v12;
    v78 = v21;
    *&v81[9] = v18;
    v79 = v19;
    if (v81[0])
    {
      v22 = 0;
    }

    else
    {
      v22 = HIDWORD(v80);
    }

    v23 = sub_1C057EAB4(v22);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_55;
    }

    v28 = v24;
    if (v9[3] >= v27)
    {
      v31 = v23;
      sub_1C0518B04(&v77, v75);
      if (v28)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1C0518B04(&v77, v75);
      sub_1C057BD40(v27, 1, &unk_1EBE17460, &qword_1C0970B40);
      v9 = v87;
      v29 = sub_1C057EAB4(v22);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_59;
      }

      v31 = v29;
      if (v28)
      {
LABEL_25:
        v40 = v9[7];
        v41 = *(v40 + 8 * v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 8 * v31) = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_1C0519CF8(0, *(v41 + 2) + 1, 1, v41);
          *(v40 + 8 * v31) = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = sub_1C0519CF8((v43 > 1), v44 + 1, 1, v41);
          *(v40 + 8 * v31) = v41;
        }

        *(v41 + 2) = v44 + 1;
        v13 = &v41[96 * v44];
        v14 = v78;
        *(v13 + 2) = v77;
        *(v13 + 3) = v14;
        v15 = v79;
        v16 = v80;
        v17 = *v81;
        *(v13 + 105) = *&v81[9];
        *(v13 + 5) = v16;
        *(v13 + 6) = v17;
        *(v13 + 4) = v15;
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E48, &qword_1C09705F0);
    v32 = swift_allocObject();
    v33 = v79;
    v34 = *v81;
    v32[5] = v80;
    v32[6] = v34;
    *(v32 + 105) = *&v81[9];
    v35 = v77;
    v36 = v78;
    v32[1] = xmmword_1C096E0C0;
    v32[2] = v35;
    v32[3] = v36;
    v32[4] = v33;
    v9[(v31 >> 6) + 8] |= 1 << v31;
    *(v9[6] + 4 * v31) = v22;
    *(v9[7] + 8 * v31) = v32;
    v37 = v9[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_56;
    }

    v9[2] = v39;
LABEL_13:
    ++v11;
    v12 += 6;
    if (v1 == v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1C095DF6C();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1C0577690(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_1C057CF68(&v47);
    v6 = v50;
    a2[8] = v49;
    a2[9] = v6;
    a2[10] = *v51;
    *(a2 + 169) = *&v51[9];
    v7 = *&v48[64];
    a2[4] = *&v48[48];
    a2[5] = v7;
    v8 = *&v48[96];
    a2[6] = *&v48[80];
    a2[7] = v8;
    v9 = *v48;
    *a2 = v47;
    a2[1] = v9;
    v10 = *&v48[32];
    a2[2] = *&v48[16];
    a2[3] = v10;
    return;
  }

  v4 = *(a1 + 89);
  if (v4 == 7)
  {
    v5 = 7;
  }

  else
  {
    v11 = a1;
    UsoEntitySpan.SpanSource.init(rawValue:)(v4);
    a1 = v11;
    v5 = v47;
  }

  v39 = v5;
  v12 = 0;
  v41 = 0;
  v42 = 0.0;
  v44 = 0;
  v45 = 0;
  v13 = (a1 + 48);
  v43 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *(v13 + 2);
    v17 = *(v13 + 3);
    v18 = v13[4];
    v19 = *(v13 + 40);
    if (v12)
    {
      v20 = *(v13 + 3);

      v12 = 1;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v21 = *v13;
      v22 = *(v13 + 1);
      v23 = *v13 == 0x736E656B6F54 && v22 == 0xE600000000000000;
      if (v23 || (v24 = *v13, v25 = *(v13 + 1), (sub_1C095DF3C() & 1) != 0))
      {

        v12 = 0;
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v12 = 1;
        v42 = v21;
        v45 = v22;
        if (!v17)
        {
          goto LABEL_7;
        }
      }
    }

    if (v16 == 0x65746C615F727361 && v17 == 0xEF65766974616E72 || (sub_1C095DF3C() & 1) != 0)
    {

      if (v19)
      {
LABEL_7:

        goto LABEL_8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1C0578148(0, *(v46 + 2) + 1, 1, v46);
      }

      v27 = *(v46 + 2);
      v26 = *(v46 + 3);
      if (v27 >= v26 >> 1)
      {
        v46 = sub_1C0578148((v26 > 1), v27 + 1, 1, v46);
      }

      v28 = v18;
      *(v46 + 2) = v27 + 1;
      v29 = &v46[24 * v27];
      *(v29 + 4) = v14;
      *(v29 + 5) = v15;
      *(v29 + 12) = v28;
      v29[52] = 0;
    }

    else if (v16 == 0x64695F6D657469 && v17 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
    {

      v41 = v14;
      v44 = v15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1C057802C(0, *(v43 + 2) + 1, 1, v43);
      }

      v31 = *(v43 + 2);
      v30 = *(v43 + 3);
      if (v31 >= v30 >> 1)
      {
        v43 = sub_1C057802C((v30 > 1), v31 + 1, 1, v43);
      }

      *(v43 + 2) = v31 + 1;
      v32 = &v43[48 * v31];
      *(v32 + 4) = v16;
      *(v32 + 5) = v17;
      *(v32 + 6) = v14;
      *(v32 + 7) = v15;
      *(v32 + 16) = 0;
      v32[68] = 1;
      v33 = BYTE2(v47);
      *(v32 + 69) = v47;
      v32[71] = v33;
      *(v32 + 18) = 0;
      v32[76] = 1;
    }

LABEL_8:
    v13 += 12;
    --v3;
  }

  while (v3);
  if (v45)
  {
    *&v47 = v42;
    *(&v47 + 1) = v45;
    v48[0] = v39;
    memset(&v48[8], 0, 96);
    *&v48[104] = v43;
    LODWORD(v49) = 0;
    BYTE4(v49) = 1;
    DWORD2(v49) = 0;
    BYTE12(v49) = 1;
    *&v50 = v46;
    *(&v50 + 1) = v41;
    *v51 = v44;
    v51[8] = 3;
    *&v51[16] = 0;
    v51[24] = 1;
    nullsub_1(&v47);
  }

  else
  {

    sub_1C057CF68(&v47);
  }

  v34 = v50;
  a2[8] = v49;
  a2[9] = v34;
  a2[10] = *v51;
  *(a2 + 169) = *&v51[9];
  v35 = *&v48[64];
  a2[4] = *&v48[48];
  a2[5] = v35;
  v36 = *&v48[96];
  a2[6] = *&v48[80];
  a2[7] = v36;
  v37 = *v48;
  *a2 = v47;
  a2[1] = v37;
  v38 = *&v48[32];
  a2[2] = *&v48[16];
  a2[3] = v38;
}

unint64_t static UsoEntitySpanUtils.getAlignedString(from:using:base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 132))
  {
    return 0;
  }

  v4 = 0;
  if ((*(a1 + 140) & 1) != 0 || !a4)
  {
    return v4;
  }

  v6 = *(a2 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 128);
  v9 = *(v6 + 32);
  v10 = v7 - 1;
  if (v7 != 1)
  {
    if (v7 >= 9)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFF8 | 1;
      v12 = vdupq_n_s32(v9);
      v13 = (v6 + 128);
      v14 = v10 & 0xFFFFFFFFFFFFFFF8;
      v15 = v12;
      do
      {
        v16.i32[0] = *(v13 - 18);
        v16.i32[1] = *(v13 - 12);
        v16.i32[2] = *(v13 - 6);
        v16.i32[3] = *v13;
        v17.i32[0] = v13[6];
        v17.i32[1] = v13[12];
        v17.i32[2] = v13[18];
        v17.i32[3] = v13[24];
        v12 = vminq_u32(v16, v12);
        v15 = vminq_u32(v17, v15);
        v13 += 48;
        v14 -= 8;
      }

      while (v14);
      v9 = vminvq_u32(vminq_u32(v12, v15));
      if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 1;
    }

    v18 = v7 - v11;
    v19 = (v6 + 24 * v11 + 32);
    do
    {
      v21 = *v19;
      v19 += 6;
      v20 = v21;
      if (v21 < v9)
      {
        v9 = v20;
      }

      --v18;
    }

    while (v18);
  }

LABEL_18:
  v22 = v8 - v9;
  if (v8 < v9)
  {
    return 0;
  }

  v23 = *(a1 + 136);
  result = sub_1C095D86C();
  if (v26)
  {
    return 0;
  }

  if (v23 < v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__CFADD__(v23 - v8, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = result;
  result = sub_1C095D86C();
  if (v28)
  {
    return 0;
  }

  v29 = result;
  if (result >> 14 >= v27 >> 14)
  {

    v30 = MEMORY[0x1C68DD720](v27, v29, a3, a4);
    v4 = MEMORY[0x1C68DD760](v30);

    return v4;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1C0577D94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17208, &qword_1C09709E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C0577E98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E80, &qword_1C0970648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E88, &unk_1C0970650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C057802C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17270, &qword_1C0970A58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0578148(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17278, &unk_1C0970A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0578264(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17288, &qword_1C0970A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1C0578380(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0578608(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C0578750(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17268, &qword_1C0970A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1C0578844(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17230, &unk_1C0970A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1C057895C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C68, &unk_1C096E840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 1344);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[1344 * v8])
    {
      memmove(v12, v13, 1344 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0578A9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17238, &qword_1C0970A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17240, &qword_1C0970A20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0578BE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17250, &qword_1C0970A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C0578CFC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1C0578DE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17218, &qword_1C09709F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17220, &qword_1C09709F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0578F40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C0579090(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_1C057923C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1C0579AFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C0579C30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC0, &unk_1C0970690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0579D78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17348, &qword_1C0970B48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1C0579DFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17210, &qword_1C09709E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_1C0579E80(char **a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C0789594(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 2);
  v6[0] = (v2 + 32);
  v6[1] = v4;
  result = sub_1C057A05C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C0579EF4(void **a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C07895A8(v2);
    *a1 = v2;
  }

  v4 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v4;
  result = sub_1C095DEFC();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 4;
      do
      {
        v12 = v2[2 * v10 + 4];
        v13 = v9;
        v14 = v11;
        do
        {
          if (v12 >= *v14)
          {
            break;
          }

          v15 = v14[3];
          *(v14 + 1) = *v14;
          *v14 = v12;
          v14[1] = v15;
          v14 -= 2;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 2;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = result;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17340, &qword_1C0970B38);
      v8 = sub_1C095D9CC();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[1] = v7;
    v18 = 0;
    v17[0] = v8 + 32;
    sub_1C057AA7C(v17, &v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C057A05C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C095DEFC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C095D9CC();
        *(v5 + 16) = v2 / 2;
      }

      v8 = 0;
      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C057A2BC(v7, &v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C057A158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C057A158(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 192 * a3 - 192;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if ((*(v8 + 324) & 1) != 0 || (*(v8 + 332) & 1) != 0 || (*(v8 + 132) & 1) != 0 || (*(v8 + 140) & 1) != 0 || (v9 = *(v8 + 320), v10 = *(v8 + 128), v9 >= v10) && (v10 < v9 || (v11 = *(v8 + 328), v12 = *(v8 + 136), v12 >= v11) && (v11 != v12 || *(v8 + 208) != 2)))
      {
LABEL_4:
        ++a3;
        v5 += 192;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = v8 + 192;
      v30 = *(v8 + 320);
      v31 = *(v8 + 336);
      *v32 = *(v8 + 352);
      *&v32[9] = *(v8 + 361);
      v26 = *(v8 + 256);
      v27 = *(v8 + 272);
      v28 = *(v8 + 288);
      v29 = *(v8 + 304);
      v22 = *(v8 + 192);
      v23 = *(v8 + 208);
      v24 = *(v8 + 224);
      v25 = *(v8 + 240);
      v14 = *(v8 + 144);
      *(v8 + 320) = *(v8 + 128);
      *(v8 + 336) = v14;
      v15 = *(v8 + 176);
      *(v8 + 352) = *(v8 + 160);
      *(v8 + 368) = v15;
      v16 = *(v8 + 80);
      *(v8 + 256) = *(v8 + 64);
      *(v8 + 272) = v16;
      v17 = *(v8 + 112);
      *(v8 + 288) = *(v8 + 96);
      *(v8 + 304) = v17;
      v18 = *(v8 + 16);
      *(v8 + 192) = *v8;
      *(v8 + 208) = v18;
      v19 = *(v8 + 32);
      v20 = *(v8 + 48);
      *(v8 + 128) = v30;
      *(v8 + 144) = v31;
      *(v8 + 160) = *v32;
      *(v8 + 169) = *&v32[9];
      *(v8 + 64) = v26;
      *(v8 + 80) = v27;
      *(v8 + 96) = v28;
      *(v8 + 112) = v29;
      *v8 = v22;
      *(v8 + 16) = v23;
      *(v8 + 32) = v24;
      *(v8 + 48) = v25;
      v8 -= 192;
      *(v13 + 32) = v19;
      *(v13 + 48) = v20;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C057A2BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  __src = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_125:
    __src = *__src;
    if (!__src)
    {
      goto LABEL_163;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_157:
      result = sub_1C0789580(v7);
      v7 = result;
    }

    v94 = v7 + 16;
    v95 = *(v7 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v7[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_1C057B014((*a3 + 192 * *v96), (*a3 + 192 * *v98), (*a3 + 192 * v99), __src);
        if (v4)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_149;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_150;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_151;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_161;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *a3 + 192 * v6;
      if ((*(v10 + 132) & 1) == 0)
      {
        v11 = 0;
        if (*(v10 + 140))
        {
          goto LABEL_7;
        }

        v16 = v9 + 192 * v8;
        if (*(v16 + 132) & 1) != 0 || (*(v16 + 140))
        {
          goto LABEL_7;
        }

        v17 = *(v10 + 128);
        v18 = *(v16 + 128);
        if (v17 < v18)
        {
          v11 = 1;
          goto LABEL_7;
        }

        if (v18 >= v17)
        {
          v90 = *(v10 + 16);
          v91 = *(v10 + 136);
          v92 = *(v16 + 136);
          v11 = v91 == v92 && v90 == 2;
          if (v92 < v91)
          {
            v11 = 1;
          }

          goto LABEL_7;
        }
      }

      v11 = 0;
LABEL_7:
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v12 = v9 + 192 * v8 + 320;
        do
        {
          if ((*(v12 + 196) & 1) != 0 || (*(v12 + 204) & 1) != 0 || (*(v12 + 4) & 1) != 0 || (*(v12 + 12) & 1) != 0 || (v13 = *(v12 + 192), v13 >= *v12) && (*v12 < v13 || (v14 = *(v12 + 200), v15 = *(v12 + 8), v15 >= v14) && (v14 != v15 || *(v12 + 80) != 2)))
          {
            if (v11)
            {
              goto LABEL_30;
            }
          }

          else if (!v11)
          {
            goto LABEL_39;
          }

          ++v6;
          v12 += 192;
        }

        while (v5 != v6);
        v6 = v5;
      }

      if (v11)
      {
LABEL_30:
        if (v6 < v8)
        {
          goto LABEL_154;
        }

        if (v8 < v6)
        {
          v19 = 192 * v6 - 192;
          v20 = 192 * v8;
          v21 = v8;
          v22 = v6;
          v101 = v21;
          do
          {
            if (v21 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v23 = (v24 + v19);
              v120 = *(v24 + v20 + 128);
              v122 = *(v24 + v20 + 144);
              *v124 = *(v24 + v20 + 160);
              *&v124[9] = *(v24 + v20 + 169);
              v112 = *(v24 + v20 + 64);
              v114 = *(v24 + v20 + 80);
              v116 = *(v24 + v20 + 96);
              v118 = *(v24 + v20 + 112);
              v104 = *(v24 + v20);
              v106 = *(v24 + v20 + 16);
              v108 = *(v24 + v20 + 32);
              v110 = *(v24 + v20 + 48);
              result = memmove((v24 + v20), (v24 + v19), 0xC0uLL);
              v23[8] = v120;
              v23[9] = v122;
              v23[10] = *v124;
              *(v23 + 169) = *&v124[9];
              v23[4] = v112;
              v23[5] = v114;
              v23[6] = v116;
              v23[7] = v118;
              *v23 = v104;
              v23[1] = v106;
              v23[2] = v108;
              v23[3] = v110;
            }

            ++v21;
            v19 -= 192;
            v20 += 192;
          }

          while (v21 < v22);
          v5 = a3[1];
          v8 = v101;
        }
      }
    }

LABEL_39:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_153;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_155;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_64:
    if (v6 < v8)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0577D94(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1C0577D94((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *__src;
    if (!*__src)
    {
      goto LABEL_162;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_84:
          if (v52)
          {
            goto LABEL_140;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_143;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_147;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_98:
        if (v70)
        {
          goto LABEL_142;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_145;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_105:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_159;
        }

        v87 = *&v7[16 * v86 + 32];
        v88 = *&v7[16 * v48 + 40];
        sub_1C057B014((*a3 + 192 * v87), (*a3 + 192 * *&v7[16 * v48 + 32]), (*a3 + 192 * v88), v47);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C0789580(v7);
        }

        if (v86 >= *(v7 + 2))
        {
          goto LABEL_137;
        }

        v89 = &v7[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_1C07894EC(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_138;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_139;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_141;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_144;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_148;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_125;
    }
  }

  v25 = *a3;
  v26 = *a3 + 192 * v6 - 192;
  v27 = v8 - v6;
LABEL_49:
  v28 = v27;
  v29 = v26;
  while (1)
  {
    if ((*(v29 + 324) & 1) != 0 || (*(v29 + 332) & 1) != 0 || (*(v29 + 132) & 1) != 0 || (*(v29 + 140) & 1) != 0 || (v30 = *(v29 + 320), v31 = *(v29 + 128), v30 >= v31) && (v31 < v30 || (v32 = *(v29 + 328), v33 = *(v29 + 136), v33 >= v32) && (v32 != v33 || *(v29 + 208) != 2)))
    {
LABEL_48:
      ++v6;
      v26 += 192;
      --v27;
      if (v6 != v5)
      {
        goto LABEL_49;
      }

      v6 = v5;
      goto LABEL_64;
    }

    if (!v25)
    {
      break;
    }

    v34 = v29 + 192;
    v121 = *(v29 + 320);
    v123 = *(v29 + 336);
    *v125 = *(v29 + 352);
    *&v125[9] = *(v29 + 361);
    v113 = *(v29 + 256);
    v115 = *(v29 + 272);
    v117 = *(v29 + 288);
    v119 = *(v29 + 304);
    v105 = *(v29 + 192);
    v107 = *(v29 + 208);
    v109 = *(v29 + 224);
    v111 = *(v29 + 240);
    v35 = *(v29 + 144);
    *(v29 + 320) = *(v29 + 128);
    *(v29 + 336) = v35;
    v36 = *(v29 + 176);
    *(v29 + 352) = *(v29 + 160);
    *(v29 + 368) = v36;
    v37 = *(v29 + 80);
    *(v29 + 256) = *(v29 + 64);
    *(v29 + 272) = v37;
    v38 = *(v29 + 112);
    *(v29 + 288) = *(v29 + 96);
    *(v29 + 304) = v38;
    v39 = *(v29 + 16);
    *(v29 + 192) = *v29;
    *(v29 + 208) = v39;
    v40 = *(v29 + 32);
    v41 = *(v29 + 48);
    *(v29 + 128) = v121;
    *(v29 + 144) = v123;
    *(v29 + 160) = *v125;
    *(v29 + 169) = *&v125[9];
    *(v29 + 64) = v113;
    *(v29 + 80) = v115;
    *(v29 + 96) = v117;
    *(v29 + 112) = v119;
    *v29 = v105;
    *(v29 + 16) = v107;
    *(v29 + 32) = v109;
    *(v29 + 48) = v111;
    v29 -= 192;
    *(v34 + 32) = v40;
    *(v34 + 48) = v41;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}

uint64_t sub_1C057AA7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C0789580(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1C057B2F8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = *(v23 + 1);
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0577D94(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1C0577D94((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1C057B2F8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C057B014(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 192;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 192;
  if (v9 >= v11)
  {
    v20 = 192 * v11;
    if (__src != a2 || &a2[v20] <= __src)
    {
      memmove(__src, a2, 192 * v11);
    }

    v13 = &v4[v20];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_49:
      v28 = v6;
    }

    else
    {
      do
      {
        v21 = 0;
        v22 = v13;
        while (1)
        {
          v23 = &v22[v21];
          if ((v22[v21 - 60] & 1) == 0 && (*(v23 - 52) & 1) == 0 && (*(v6 - 60) & 1) == 0 && (*(v6 - 52) & 1) == 0)
          {
            v24 = *(v23 - 16);
            v25 = *(v6 - 16);
            if (v24 < v25)
            {
              break;
            }

            if (v25 >= v24)
            {
              v26 = *(v23 - 14);
              v27 = *(v6 - 14);
              if (v27 < v26 || v26 == v27 && *(v23 - 176) == 2)
              {
                break;
              }
            }
          }

          if (&v5[v21] != v23)
          {
            memmove(&v5[v21 - 192], v23 - 192, 0xC0uLL);
          }

          v21 -= 192;
          v13 = &v22[v21];
          if (&v22[v21] <= v4)
          {
            goto LABEL_49;
          }
        }

        v28 = v6 - 192;
        v29 = &v5[v21];
        v5 = &v5[v21 - 192];
        if (v29 != v6)
        {
          v30 = v6 - 192;
          memmove(v5, v30, 0xC0uLL);
          v28 = v30;
        }

        v13 = &v22[v21];
        if (&v22[v21] <= v4)
        {
          break;
        }

        v6 = v28;
      }

      while (v28 > v7);
      v13 = &v22[v21];
    }
  }

  else
  {
    v12 = 192 * v9;
    if (__src != __dst || &__dst[v12] <= __src)
    {
      memmove(__src, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while ((v6[132] & 1) == 0)
      {
        if (v6[140])
        {
          break;
        }

        if (v4[132])
        {
          break;
        }

        if (v4[140])
        {
          break;
        }

        v16 = *(v6 + 32);
        v17 = *(v4 + 32);
        if (v16 >= v17)
        {
          if (v17 < v16)
          {
            break;
          }

          v18 = *(v6 + 34);
          v19 = *(v4 + 34);
          if (v19 >= v18 && (v18 != v19 || v6[16] != 2))
          {
            break;
          }
        }

        v14 = v6;
        v15 = v7 == v6;
        v6 += 192;
        if (!v15)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_48;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 192;
      if (v15)
      {
        goto LABEL_10;
      }

LABEL_9:
      memmove(v7, v14, 0xC0uLL);
      goto LABEL_10;
    }

LABEL_48:
    v28 = v7;
  }

  v31 = 192 * ((v13 - v4) / 192);
  if (v28 != v4 || v28 >= &v4[v31])
  {
    memmove(v28, v4, v31);
  }

  return 1;
}

uint64_t sub_1C057B2F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 4);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1C057B4FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17440, &unk_1C09789D0);
  v40 = a2;
  result = sub_1C095DD3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1C095DFEC();
      v26 = v23[5];
      v27 = v23[6];
      __swift_project_boxed_opaque_existential_1(v23 + 2, v26);
      (*(v27 + 8))(v26, v27);
      sub_1C095D7BC();

      v28 = v23[5];
      v29 = v23[6];
      __swift_project_boxed_opaque_existential_1(v23 + 2, v28);
      (*(v29 + 16))(v28, v29);
      sub_1C095E00C();
      result = sub_1C095E03C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v24;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v24;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C057B838(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D0, &qword_1C0970AC0);
  result = sub_1C095DD3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      v23 = *(v8 + 40);
      result = sub_1C095DFDC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C057BA9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17480, &qword_1C0970A70);
  v35 = a2;
  result = sub_1C095DD3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68DDE60](*(v8 + 40), v22, 4);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C057BD40(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C095DD3C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 4 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      result = MEMORY[0x1C68DDE60](*(v10 + 40), v24, 4);
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C057BFAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17470, &qword_1C0982390);
  result = sub_1C095DD3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {

        swift_unownedRetain();
      }

      v22 = *(v8 + 40);
      result = sub_1C095DFDC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C057C22C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17228, &qword_1C0970A00);
  result = sub_1C095DD3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1C095DFDC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1C057C49C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 4 * v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C057C5F4(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C057C6F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C057CF8C();
  result = MEMORY[0x1C68DD910](v2, &type metadata for UsoEntitySpan, v3);
  v15 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[9];
      v16[8] = v5[8];
      v16[9] = v6;
      v17[0] = v5[10];
      *(v17 + 9) = *(v5 + 169);
      v7 = v5[5];
      v16[4] = v5[4];
      v16[5] = v7;
      v8 = v5[7];
      v16[6] = v5[6];
      v16[7] = v8;
      v9 = v5[1];
      v16[0] = *v5;
      v16[1] = v9;
      v10 = v5[3];
      v16[2] = v5[2];
      v16[3] = v10;
      sub_1C0521E78(v16, v13);
      sub_1C07A6750(v11, v16);
      v13[8] = v11[8];
      v13[9] = v11[9];
      v14[0] = v12[0];
      *(v14 + 9) = *(v12 + 9);
      v13[4] = v11[4];
      v13[5] = v11[5];
      v13[6] = v11[6];
      v13[7] = v11[7];
      v13[0] = v11[0];
      v13[1] = v11[1];
      v13[2] = v11[2];
      v13[3] = v11[3];
      sub_1C05755CC(v13);
      v5 += 12;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_1C057C7F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (!v3 || (v62 = a2[2]) == 0)
  {

    return v2;
  }

  v4 = 0;
  v61 = a2 + 4;
  v65 = v3 - 1;
  v66 = (a1 + 32);
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v61[v4];
    v6 = *(v5 + 16);
    if (!v6)
    {
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_38;
    }

    v63 = v2;
    v64 = v4;
    v7 = v5 + 32;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v68 = v6;
    v69 = v5;
    v67 = v5 + 32;
    while (2)
    {
      v10 = (v7 + 192 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v84 = v10[2];
      v85 = v13;
      v82 = v11;
      v83 = v12;
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[7];
      v88 = v10[6];
      v89 = v16;
      v86 = v14;
      v87 = v15;
      v17 = v10[8];
      v18 = v10[9];
      v19 = v10[10];
      *(v92 + 9) = *(v10 + 169);
      v91 = v18;
      v92[0] = v19;
      v90 = v17;
      sub_1C0521E78(&v82, &v71);
      sub_1C0521E78(&v82, &v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C0522E00(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_1C0522E00((v20 > 1), v21 + 1, 1, v9);
      }

      v22 = v83;
      *(v9 + 2) = v21 + 1;
      v23 = &v9[192 * v21];
      v24 = v82;
      v25 = v83;
      v26 = v85;
      *(v23 + 4) = v84;
      *(v23 + 5) = v26;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v27 = v86;
      v28 = v87;
      v29 = v89;
      *(v23 + 8) = v88;
      *(v23 + 9) = v29;
      *(v23 + 6) = v27;
      *(v23 + 7) = v28;
      v30 = v90;
      v31 = v91;
      v32 = v92[0];
      *(v23 + 201) = *(v92 + 9);
      *(v23 + 11) = v31;
      *(v23 + 12) = v32;
      *(v23 + 10) = v30;
      if (v22 == 1)
      {
        result = sub_1C05755CC(&v82);
        goto LABEL_33;
      }

      v34 = DWORD2(v90);
      v35 = BYTE12(v90);
      v36 = v90;
      v38 = v65;
      v37 = v66;
      v39 = BYTE4(v90);
      while (1)
      {
        v40 = v37[9];
        v79 = v37[8];
        v80 = v40;
        v81[0] = v37[10];
        *(v81 + 9) = *(v37 + 169);
        v41 = v37[5];
        v75 = v37[4];
        v76 = v41;
        v42 = v37[7];
        v77 = v37[6];
        v78 = v42;
        v43 = v37[1];
        v71 = *v37;
        v72 = v43;
        v44 = v37[3];
        v73 = v37[2];
        v74 = v44;
        if (BYTE4(v79))
        {
          if (!v39)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v79 == v36)
          {
            v45 = v39;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            goto LABEL_30;
          }
        }

        if (BYTE12(v79))
        {
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (DWORD2(v79) == v34)
          {
            v46 = v35;
          }

          else
          {
            v46 = 1;
          }

          if (v46)
          {
            goto LABEL_30;
          }
        }

        sub_1C0521E78(&v71, v70);
        v48 = *(v9 + 2);
        v47 = *(v9 + 3);
        if (v48 >= v47 >> 1)
        {
          v9 = sub_1C0522E00((v47 > 1), v48 + 1, 1, v9);
        }

        *(v9 + 2) = v48 + 1;
        v49 = &v9[192 * v48];
        v50 = v71;
        v51 = v72;
        v52 = v74;
        *(v49 + 4) = v73;
        *(v49 + 5) = v52;
        *(v49 + 2) = v50;
        *(v49 + 3) = v51;
        v53 = v75;
        v54 = v76;
        v55 = v78;
        *(v49 + 8) = v77;
        *(v49 + 9) = v55;
        *(v49 + 6) = v53;
        *(v49 + 7) = v54;
        v56 = v79;
        v57 = v80;
        v58 = v81[0];
        *(v49 + 201) = *(v81 + 9);
        *(v49 + 11) = v57;
        *(v49 + 12) = v58;
        *(v49 + 10) = v56;
LABEL_30:
        if (!v38)
        {
          break;
        }

        --v38;
        v37 += 12;
      }

      result = sub_1C05755CC(&v82);
      v6 = v68;
      v5 = v69;
      v7 = v67;
LABEL_33:
      if (++v8 != v6)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        continue;
      }

      break;
    }

    v2 = v63;
    v4 = v64;
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1C0578F40(0, v2[2] + 1, 1, v2, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
    }

    v60 = v2[2];
    v59 = v2[3];
    if (v60 >= v59 >> 1)
    {
      v2 = sub_1C0578F40((v59 > 1), v60 + 1, 1, v2, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
    }

    ++v4;
    v2[2] = v60 + 1;
    v2[v60 + 4] = v9;
  }

  while (v4 != v62);
  return v2;
}

uint64_t sub_1C057CC0C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[9];
  v16[8] = a1[8];
  v16[9] = v3;
  v17[0] = a1[10];
  *(v17 + 9) = *(a1 + 169);
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[7];
  v16[6] = a1[6];
  v16[7] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v16[2] = a1[2];
  v16[3] = v7;
  v8 = v2[9];
  v14[8] = v2[8];
  v14[9] = v8;
  v15[0] = v2[10];
  *(v15 + 9) = *(v2 + 169);
  v9 = v2[5];
  v14[4] = v2[4];
  v14[5] = v9;
  v10 = v2[7];
  v14[6] = v2[6];
  v14[7] = v10;
  v11 = v2[1];
  v14[0] = *v2;
  v14[1] = v11;
  v12 = v2[3];
  v14[2] = v2[2];
  v14[3] = v12;
  return _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(v16, v14) & 1;
}

uint64_t sub_1C057CCC0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 6)
  {
    v9 = i[4];
    v39 = i[3];
    v40[0] = v9;
    v10 = i[2];
    v37 = i[1];
    v38 = v10;
    *(v40 + 9) = *(i + 73);
    v36 = *i;
    v11 = BYTE8(v40[0]) ? 0 : DWORD1(v40[0]);
    v12 = sub_1C057EAB4(v11);
    v14 = v1[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v13;
    if (v1[3] >= v16)
    {
      v20 = v12;
      sub_1C0518B04(&v36, v35);
      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C0518B04(&v36, v35);
      sub_1C057BD40(v16, 1, &unk_1EBE17460, &qword_1C0970B40);
      v1 = v41;
      v18 = sub_1C057EAB4(v11);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v20 = v18;
      if (v17)
      {
LABEL_15:
        v29 = v1[7];
        v30 = *(v29 + 8 * v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v20) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1C0519CF8(0, *(v30 + 2) + 1, 1, v30);
          *(v29 + 8 * v20) = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        if (v33 >= v32 >> 1)
        {
          v30 = sub_1C0519CF8((v32 > 1), v33 + 1, 1, v30);
          *(v29 + 8 * v20) = v30;
        }

        *(v30 + 2) = v33 + 1;
        v4 = &v30[96 * v33];
        v5 = v37;
        *(v4 + 2) = v36;
        *(v4 + 3) = v5;
        v6 = v38;
        v7 = v39;
        v8 = v40[0];
        *(v4 + 105) = *(v40 + 9);
        *(v4 + 5) = v7;
        *(v4 + 6) = v8;
        *(v4 + 4) = v6;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E48, &qword_1C09705F0);
    v21 = swift_allocObject();
    v22 = v38;
    v23 = v40[0];
    v21[5] = v39;
    v21[6] = v23;
    *(v21 + 105) = *(v40 + 9);
    v24 = v36;
    v25 = v37;
    v21[1] = xmmword_1C096E0C0;
    v21[2] = v24;
    v21[3] = v25;
    v21[4] = v22;
    v1[(v20 >> 6) + 8] |= 1 << v20;
    *(v1[6] + 4 * v20) = v11;
    *(v1[7] + 8 * v20) = v21;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_21;
    }

    v1[2] = v28;
LABEL_4:
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C057CF40(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C057CF68(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1C057CF8C()
{
  result = qword_1EBE17358;
  if (!qword_1EBE17358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17358);
  }

  return result;
}

uint64_t sub_1C057CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*(v4 + 16) + 48);
  if (*(v6 + 16))
  {
    v9 = a4;
    v10 = *(*(v4 + 16) + 48);

    v11 = sub_1C0516A8C(a1, a2);
    if (v12)
    {
      v13 = *(*(v6 + 56) + 8 * v11);

      if (v13 >> 62)
      {
        result = sub_1C095DCDC();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C68DDAD0](0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v15 = *(v13 + 32);
        }

        goto LABEL_13;
      }
    }

    v15 = 0;
LABEL_13:
    a4 = v9;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:
  sub_1C057DA48(v15, a3, a4);
}

uint64_t sub_1C057D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + 16) + 48);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(*(v3 + 16) + 48);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v5 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = sub_1C057DD64(v13, a3);

    return v14;
  }

  __break(1u);
  return result;
}