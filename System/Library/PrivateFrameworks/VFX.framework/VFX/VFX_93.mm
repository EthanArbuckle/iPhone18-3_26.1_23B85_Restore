uint64_t sub_1AF83CA24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F630);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v35 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v19 = v18 | (v8 << 6);
LABEL_14:
      v23 = *(*(v5 + 48) + 8 * v19);
      v24 = *(v5 + 56) + 40 * v19;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v38 = *(v24 + 32);
        v36 = v25;
        v37 = v26;
      }

      else
      {
        sub_1AF85B49C(v24, &v36);
      }

      v27 = sub_1AFDFF278();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = (63 - v28) >> 6;
        do
        {
          if (v30 + 1 == v31)
          {
            v30 = 0;
          }

          else
          {
            ++v30;
          }

          v32 = *(v13 + 8 * v30);
        }

        while (v32 == -1);
        v14 = __clz(__rbit64(~v32)) + (v30 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v23;
      v15 = *(v7 + 56) + 40 * v14;
      v16 = v36;
      v17 = v37;
      *(v15 + 32) = v38;
      *v15 = v16;
      *(v15 + 16) = v17;
      ++*(v7 + 16);
    }

    v20 = v8 << 6;
    while (1)
    {
      v21 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v22 = *(v5 + 8 * v8 + 72);
      v20 += 64;
      ++v8;
      if (v22)
      {
        v11 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v8 = v21;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v35 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83CCCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F638);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + 4 * v21);
    if ((a2 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + 4 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83CF64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85A128();
  v36 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v35 = v2;
  v8 = 0;
  v34 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(v5 + 48) + 24 * v21;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(*(v5 + 56) + 8 * v21);
    if ((v36 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 24 * v18;
    *v19 = v26;
    *(v19 + 8) = v27;
    *(v19 + 16) = v28;
    *(*(v7 + 56) + 8 * v18) = v29;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v35;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83D2FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF43D8B0();
  v38 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v37 = v2;
  v8 = 0;
  v36 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = *(v5 + 48) + 96 * v22;
    v27 = *v26;
    v28 = *(v26 + 8);
    v49 = *(v26 + 16);
    v48 = *(v26 + 24);
    v47 = *(v26 + 32);
    v46 = *(v26 + 40);
    v45 = *(v26 + 48);
    v44 = *(v26 + 56);
    v43 = *(v26 + 64);
    v42 = *(v26 + 72);
    v41 = *(v26 + 80);
    *v50 = *(v26 + 89);
    v29 = *(v26 + 88);
    *&v50[3] = *(v26 + 92);
    v30 = *(v5 + 56) + 24 * v22;
    v31 = *v30;
    v40 = *(v30 + 8);
    v39 = *(v30 + 16);
    if ((v38 & 1) == 0)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    sub_1AFDFF2C8();
    MEMORY[0x1B271ACB0](v28);
    MEMORY[0x1B271ACB0](v49);
    MEMORY[0x1B271ACB0](v48);
    MEMORY[0x1B271ACB0](v47);
    MEMORY[0x1B271ACB0](v46);
    MEMORY[0x1B271ACB0](v45);
    MEMORY[0x1B271ACB0](v44);
    MEMORY[0x1B271ACB0](v43);
    MEMORY[0x1B271ACB0](v42);
    MEMORY[0x1B271ACB0](v41);
    sub_1AFDFF2A8();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v32)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v33 = *(v13 + 8 * v17);
      }

      while (v33 == -1);
      v18 = __clz(__rbit64(~v33)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 96 * v18;
    *v19 = v27;
    *(v19 + 8) = v28;
    *(v19 + 16) = v49;
    *(v19 + 24) = v48;
    *(v19 + 32) = v47;
    *(v19 + 40) = v46;
    *(v19 + 48) = v45;
    *(v19 + 56) = v44;
    *(v19 + 64) = v43;
    *(v19 + 72) = v42;
    *(v19 + 80) = v41;
    *(v19 + 88) = v29;
    *(v19 + 89) = *v50;
    *(v19 + 92) = *&v50[3];
    v20 = *(v7 + 56) + 24 * v18;
    *v20 = v31;
    *(v20 + 8) = v40;
    *(v20 + 16) = v39;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v38)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v37;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v37;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83D6EC(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v31 = (v6 + 64);
  v32 = v4;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v9 << 6);
LABEL_15:
    v25 = *(*(v6 + 48) + 8 * v21);
    v26 = *(*(v6 + 56) + 8 * v21);
    if ((a2 & 1) == 0)
    {
    }

    v15 = sub_1AFDFF278();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v27)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v8 + 48) + 8 * v19) = v25;
    *(*(v8 + 56) + 8 * v19) = v26;
    ++*(v8 + 16);
  }

  v22 = v9 << 6;
  while (1)
  {
    v23 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v24 = *(v6 + 8 * v9 + 72);
    v22 += 64;
    ++v9;
    if (v24)
    {
      v12 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v9 = v23;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v6 + 32);
    v4 = v32;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v32;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF83D93C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF447B78();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83DB88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633B40);
  v40 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v38 = (v5 + 64);
  v39 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
    if (v40)
    {
LABEL_10:
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(v5 + 56) + (v17 << 6);
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v41 = *v19;
      v42 = *(v19 + 32);
      v43 = *(v19 + 48);
      v22 = *(v19 + 56);
    }

    else
    {
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * v17);
      v26 = (*(v5 + 56) + (v17 << 6));
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[3];
      *v44 = *v26;
      *&v44[16] = v27;
      v45 = v28;
      v46 = v29;
      v22 = *(&v29 + 1);
      v21 = BYTE8(v27);
      v41 = *v44;
      v20 = v27;
      sub_1AF44222C(v44, &v42);
      v42 = v45;
      v43 = v46;
    }

    v30 = sub_1AFDFF278();
    v31 = -1 << *(v7 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = (63 - v31) >> 6;
      do
      {
        if (v33 + 1 == v34)
        {
          v33 = 0;
        }

        else
        {
          ++v33;
        }

        v35 = *(v13 + 8 * v33);
      }

      while (v35 == -1);
      v14 = __clz(__rbit64(~v35)) + (v33 << 6);
    }

    *&v44[7] = v42;
    *&v44[23] = v43;
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v18;
    v15 = *(v7 + 56) + (v14 << 6);
    *v15 = v41;
    *(v15 + 16) = v20;
    *(v15 + 24) = v21;
    *(v15 + 40) = *&v44[15];
    *(v15 + 25) = *v44;
    *(v15 + 56) = v22;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v17 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      if (v40)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  if (v40)
  {
    v36 = 1 << *(v5 + 32);
    v3 = v39;
    if (v36 >= 64)
    {
      bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v39;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83DEB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85A1E8();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v21 = v20 | (v8 << 6);
LABEL_15:
      v32 = *(*(v5 + 48) + 8 * v21);
      v25 = (*(v5 + 56) + 32 * v21);
      v30 = v25[1];
      v31 = *v25;
      if ((a2 & 1) == 0)
      {
      }

      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v14 = sub_1AFDFF2F8();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v26)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v27 = *(v13 + 8 * v17);
        }

        while (v27 == -1);
        v18 = __clz(__rbit64(~v27)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v32;
      v19 = (*(v7 + 56) + 32 * v18);
      *v19 = v31;
      v19[1] = v30;
      ++*(v7 + 16);
    }

    v22 = v8 << 6;
    while (1)
    {
      v23 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v24 = *(v5 + 8 * v8 + 72);
      v22 += 64;
      ++v8;
      if (v24)
      {
        v11 = (v24 - 1) & v24;
        v21 = __clz(__rbit64(v24)) + v22;
        v8 = v23;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83E15C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB630B80);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v34 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = (*(v5 + 56) + 32 * v22);
    v35 = v29[1];
    v36 = *v29;
    if ((a2 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = (*(v7 + 56) + 32 * v18);
    *v20 = v36;
    v20[1] = v35;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83E42C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AF859FA4(0, &qword_1EB63F3D8, MEMORY[0x1E6968FB0], sub_1AF859F00);
  v42 = a2;
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v12 = 0;
  v13 = *(v9 + 64);
  v37 = (v9 + 64);
  v38 = v2;
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v39 = (v6 + 16);
  v40 = v6;
  v43 = (v6 + 32);
  v18 = v10 + 64;
  v45 = v5;
  v19 = v41;
  while (v16)
  {
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v12 << 6);
LABEL_14:
    v26 = *(v6 + 72);
    v27 = *(v9 + 48) + v26 * v22;
    if (v42)
    {
      (*v43)(v19, v27, v45);
    }

    else
    {
      (*v39)(v19, v27, v45);
    }

    v44 = *(*(v9 + 56) + 8 * v22);
    sub_1AF859F00();
    v28 = sub_1AFDFCCF8();
    v29 = -1 << *(v11 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v29) >> 6;
      do
      {
        if (v31 + 1 == v32)
        {
          v31 = 0;
        }

        else
        {
          ++v31;
        }

        v33 = *(v18 + 8 * v31);
      }

      while (v33 == -1);
      v20 = __clz(__rbit64(~v33)) + (v31 << 6);
    }

    v19 = v41;
    *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    (*v43)((*(v11 + 48) + v26 * v20), v19, v45);
    *(*(v11 + 56) + 8 * v20) = v44;
    ++*(v11 + 16);
    v6 = v40;
  }

  v23 = v12 << 6;
  while (1)
  {
    v24 = v12 + 1;
    if (v12 + 1 >= v17)
    {
      break;
    }

    v25 = *(v9 + 8 * v12 + 72);
    v23 += 64;
    ++v12;
    if (v25)
    {
      v16 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v12 = v24;
      goto LABEL_14;
    }
  }

  if (v42)
  {
    v34 = 1 << *(v9 + 32);
    v3 = v38;
    if (v34 >= 64)
    {
      bzero(v37, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v34;
    }

    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v38;
LABEL_31:
  *v3 = v11;
  return result;
}

uint64_t sub_1AF83E7DC(uint64_t a1, int a2, void (*a3)(void, __n128))
{
  v5 = v3;
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  a3(0, v10);
  v45 = a2;
  v14 = sub_1AFDFE5A8();
  v15 = v14;
  if (!*(v13 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *(v13 + 64);
  v41 = (v13 + 64);
  v42 = v3;
  v18 = 1 << *(v13 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v43 = (v8 + 16);
  v44 = v8;
  v46 = (v8 + 32);
  v22 = v14 + 64;
  v48 = v7;
  v23 = v12;
  while (v20)
  {
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v16 << 6);
LABEL_14:
    v30 = *(v8 + 72);
    v31 = *(v13 + 48) + v30 * v26;
    if (v45)
    {
      (*v46)(v23, v31, v48);
      v47 = *(*(v13 + 56) + 8 * v26);
    }

    else
    {
      (*v43)(v23, v31, v48);
      v47 = *(*(v13 + 56) + 8 * v26);
    }

    sub_1AF4644D8();
    v32 = v23;
    v33 = sub_1AFDFCCF8();
    v34 = -1 << *(v15 + 32);
    v35 = v33 & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) != 0)
    {
      v24 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v8 = v44;
    }

    else
    {
      v37 = (63 - v34) >> 6;
      v8 = v44;
      do
      {
        if (v36 + 1 == v37)
        {
          v36 = 0;
        }

        else
        {
          ++v36;
        }

        v38 = *(v22 + 8 * v36);
      }

      while (v38 == -1);
      v24 = __clz(__rbit64(~v38)) + (v36 << 6);
    }

    *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    (*v46)((*(v15 + 48) + v30 * v24), v32, v48);
    *(*(v15 + 56) + 8 * v24) = v47;
    v23 = v32;
    ++*(v15 + 16);
  }

  v27 = v16 << 6;
  while (1)
  {
    v28 = v16 + 1;
    if (v16 + 1 >= v21)
    {
      break;
    }

    v29 = *(v13 + 8 * v16 + 72);
    v27 += 64;
    ++v16;
    if (v29)
    {
      v20 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) + v27;
      v16 = v28;
      goto LABEL_14;
    }
  }

  if (v45)
  {
    v39 = 1 << *(v13 + 32);
    v5 = v42;
    if (v39 >= 64)
    {
      bzero(v41, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v41 = -1 << v39;
    }

    *(v13 + 16) = 0;
    goto LABEL_30;
  }

  v5 = v42;
LABEL_31:
  *v5 = v15;
  return result;
}

uint64_t sub_1AF83EB68(uint64_t a1, int a2, void (*a3)(void, __n128))
{
  v5 = v3;
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  a3(0, v10);
  v45 = a2;
  v14 = sub_1AFDFE5A8();
  v15 = v14;
  if (!*(v13 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *(v13 + 64);
  v41 = (v13 + 64);
  v42 = v3;
  v18 = 1 << *(v13 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v43 = (v8 + 16);
  v44 = v8;
  v46 = (v8 + 32);
  v22 = v14 + 64;
  v48 = v7;
  v23 = v12;
  while (v20)
  {
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v16 << 6);
LABEL_14:
    v30 = *(v8 + 72);
    v31 = *(v13 + 48) + v30 * v26;
    if (v45)
    {
      (*v46)(v23, v31, v48);
      v47 = *(*(v13 + 56) + 8 * v26);
    }

    else
    {
      (*v43)(v23, v31, v48);
      v47 = *(*(v13 + 56) + 8 * v26);
    }

    sub_1AF4644D8();
    v32 = v23;
    v33 = sub_1AFDFCCF8();
    v34 = -1 << *(v15 + 32);
    v35 = v33 & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) != 0)
    {
      v24 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v8 = v44;
    }

    else
    {
      v37 = (63 - v34) >> 6;
      v8 = v44;
      do
      {
        if (v36 + 1 == v37)
        {
          v36 = 0;
        }

        else
        {
          ++v36;
        }

        v38 = *(v22 + 8 * v36);
      }

      while (v38 == -1);
      v24 = __clz(__rbit64(~v38)) + (v36 << 6);
    }

    *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    (*v46)((*(v15 + 48) + v30 * v24), v32, v48);
    *(*(v15 + 56) + 8 * v24) = v47;
    v23 = v32;
    ++*(v15 + 16);
  }

  v27 = v16 << 6;
  while (1)
  {
    v28 = v16 + 1;
    if (v16 + 1 >= v21)
    {
      break;
    }

    v29 = *(v13 + 8 * v16 + 72);
    v27 += 64;
    ++v16;
    if (v29)
    {
      v20 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) + v27;
      v16 = v28;
      goto LABEL_14;
    }
  }

  if (v45)
  {
    v39 = 1 << *(v13 + 32);
    v5 = v42;
    if (v39 >= 64)
    {
      bzero(v41, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v41 = -1 << v39;
    }

    *(v13 + 16) = 0;
    goto LABEL_30;
  }

  v5 = v42;
LABEL_31:
  *v5 = v15;
  return result;
}

uint64_t sub_1AF83EEF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638370);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83F150(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF447520();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v30 = *(*(v5 + 48) + 8 * v20);
      v29 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = v29;
      }

      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v14 = sub_1AFDFF2F8();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v30;
      *(*(v7 + 56) + 16 * v18) = v29;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83F3CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638758);
  v34 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {

      sub_1AF442064(v28);
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83F674(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF444520();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 48) + 8 * v20);
      v30 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_1AF442064(*(&v30 + 1));
      }

      v14 = sub_1AFDFF278();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v24;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF83F8C4(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_1AFDFC318();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v6);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1AF85A8E8();
  v47 = a2;
  v9 = sub_1AFDFE5A8();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v11 = 0;
  v12 = *(v8 + 64);
  v41 = (v8 + 64);
  v42 = v2;
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v43 = (v5 + 8);
  v44 = (v5 + 16);
  v17 = v9 + 64;
  v18 = v46;
  while (v15)
  {
    v27 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v28 = v27 | (v11 << 6);
LABEL_15:
    v32 = (*(v8 + 48) + 16 * v28);
    v34 = *v32;
    v33 = v32[1];
    v35 = *(*(v8 + 56) + 8 * v28);
    if ((v47 & 1) == 0)
    {

      sub_1AF442064(v35);
    }

    v48 = v35;
    sub_1AFDFF288();
    v19 = v45;
    (*v44)(v45, v34 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v18);
    sub_1AF4644D8();
    sub_1AFDFCD08();
    (*v43)(v19, v18);
    MEMORY[0x1B271ACB0](v33);
    v20 = sub_1AFDFF2F8();
    v21 = -1 << *(v10 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v17 + 8 * (v22 >> 6))) != 0)
    {
      v24 = __clz(__rbit64((-1 << v22) & ~*(v17 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = (63 - v21) >> 6;
      do
      {
        if (v23 + 1 == v36)
        {
          v23 = 0;
        }

        else
        {
          ++v23;
        }

        v37 = *(v17 + 8 * v23);
      }

      while (v37 == -1);
      v24 = __clz(__rbit64(~v37)) + (v23 << 6);
    }

    v25 = v48;
    *(v17 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v26 = (*(v10 + 48) + 16 * v24);
    *v26 = v34;
    v26[1] = v33;
    *(*(v10 + 56) + 8 * v24) = v25;
    ++*(v10 + 16);
  }

  v29 = v11 << 6;
  while (1)
  {
    v30 = v11 + 1;
    if (v11 + 1 >= v16)
    {
      break;
    }

    v31 = *(v8 + 8 * v11 + 72);
    v29 += 64;
    ++v11;
    if (v31)
    {
      v15 = (v31 - 1) & v31;
      v28 = __clz(__rbit64(v31)) + v29;
      v11 = v30;
      goto LABEL_15;
    }
  }

  if (v47)
  {
    v38 = 1 << *(v8 + 32);
    v3 = v42;
    if (v38 >= 64)
    {
      bzero(v41, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v41 = -1 << v38;
    }

    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v42;
LABEL_30:
  *v3 = v10;
  return result;
}

uint64_t sub_1AF83FC34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85A7B8();
  v34 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = *(v5 + 56) + 32 * v21;
    v27 = *v26;
    v28 = *(v26 + 16);
    v35 = *(v26 + 24);
    v36 = *(v26 + 8);
    if ((v34 & 1) == 0)
    {
      sub_1AF443EE0(v25);
    }

    sub_1AFDFF288();
    sub_1AFAA0C08(v37, v25);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = *(v7 + 56) + 32 * v18;
    *v19 = v27;
    *(v19 + 8) = v36;
    *(v19 + 16) = v28;
    *(v19 + 24) = v35;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF83FECC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F600);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(*(v5 + 48) + 4 * v17);
      v22 = (*(v5 + 56) + 80 * v17);
      v34 = v22[2];
      *v35 = v22[3];
      *&v35[9] = *(v22 + 57);
      v32 = *v22;
      v33 = v22[1];
      v23 = MEMORY[0x1B271AC80](*(v7 + 40), v21, 4);
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v13 + 8 * v26);
        }

        while (v28 == -1);
        v14 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 4 * v14) = v21;
      v15 = (*(v7 + 56) + 80 * v14);
      v15[2] = v34;
      v15[3] = *v35;
      *(v15 + 57) = *&v35[9];
      *v15 = v32;
      v15[1] = v33;
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v31)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v29;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF840164(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v7 = v6;
  v9 = *v6;
  sub_1AF85A2F4(0, a3, a4, a5, a6);
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v12 = 0;
  v34 = (v9 + 64);
  v35 = v7;
  v13 = 1 << *(v9 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 64;
  while (v15)
  {
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v12 << 6);
LABEL_15:
    v28 = *(*(v9 + 48) + 8 * v24);
    v29 = *(*(v9 + 56) + 8 * v24);
    if ((a2 & 1) == 0)
    {
    }

    v18 = sub_1AFDFF278();
    v19 = -1 << *(v11 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v17 + 8 * (v20 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v20) & ~*(v17 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v19) >> 6;
      do
      {
        if (v21 + 1 == v30)
        {
          v21 = 0;
        }

        else
        {
          ++v21;
        }

        v31 = *(v17 + 8 * v21);
      }

      while (v31 == -1);
      v22 = __clz(__rbit64(~v31)) + (v21 << 6);
    }

    *(v17 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v28;
    *(*(v11 + 56) + 8 * v22) = v29;
    ++*(v11 + 16);
  }

  v25 = v12 << 6;
  while (1)
  {
    v26 = v12 + 1;
    if (v12 + 1 >= v16)
    {
      break;
    }

    v27 = *(v9 + 8 * v12 + 72);
    v25 += 64;
    ++v12;
    if (v27)
    {
      v15 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) + v25;
      v12 = v26;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v32 = 1 << *(v9 + 32);
    v7 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v9 + 16) = 0;
    goto LABEL_29;
  }

  v7 = v35;
LABEL_30:
  *v7 = v11;
  return result;
}

uint64_t sub_1AF8403C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &unk_1ED722FF0);
  v48 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v46 = (v5 + 64);
  v47 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
    if (v48)
    {
LABEL_10:
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(v5 + 56) + 240 * v17;
      v57 = *v19;
      v58 = *(v19 + 16);
      v49 = *(v19 + 32);
      v50 = *(v19 + 48);
      v51 = *(v19 + 64);
      v52 = *(v19 + 80);
      v53 = *(v19 + 96);
      v54 = *(v19 + 112);
      v20 = *(v19 + 128);
      v21 = *(v19 + 130);
      v22 = *(v19 + 136);
      v61 = *(v19 + 144);
      v59 = *(v19 + 168);
      v60 = *(v19 + 160);
      v55 = *(v19 + 176);
      v56 = *(v19 + 192);
      v62 = *(v19 + 208);
      v63 = *(v19 + 209);
      v64 = *(v19 + 210);
      v66 = *(v19 + 211);
      v65 = *(v19 + 216);
      v67 = *(v19 + 232);
    }

    else
    {
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * v17);
      v26 = (*(v5 + 56) + 240 * v17);
      v28 = v26[1];
      v27 = v26[2];
      v69 = *v26;
      v70 = v28;
      v71 = v27;
      v29 = v26[6];
      v31 = v26[3];
      v30 = v26[4];
      v74 = v26[5];
      v75 = v29;
      v72 = v31;
      v73 = v30;
      v32 = v26[10];
      v34 = v26[7];
      v33 = v26[8];
      v78 = v26[9];
      v79 = v32;
      v76 = v34;
      v77 = v33;
      v35 = v26[14];
      v37 = v26[11];
      v36 = v26[12];
      *v82 = v26[13];
      *&v82[16] = v35;
      v80 = v37;
      v81 = v36;
      v67 = *(&v35 + 1);
      v65 = *&v82[8];
      v66 = v82[3];
      v63 = v82[1];
      v64 = v82[2];
      v62 = v82[0];
      v61 = v78;
      v59 = *(&v79 + 1);
      v60 = v79;
      v55 = v37;
      v56 = v36;
      v57 = v69;
      v58 = v70;
      v22 = *(&v77 + 1);
      v21 = WORD1(v77);
      v20 = v77;
      v53 = v75;
      v54 = v76;
      v51 = v73;
      v52 = v74;
      v49 = v27;
      v50 = v72;
      sub_1AF442498(&v69, v68);
    }

    v38 = sub_1AFDFF278();
    v39 = -1 << *(v7 + 32);
    v40 = v38 & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v13 + 8 * (v40 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v40) & ~*(v13 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = (63 - v39) >> 6;
      do
      {
        if (v41 + 1 == v42)
        {
          v41 = 0;
        }

        else
        {
          ++v41;
        }

        v43 = *(v13 + 8 * v41);
      }

      while (v43 == -1);
      v14 = __clz(__rbit64(~v43)) + (v41 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v18;
    v15 = *(v7 + 56) + 240 * v14;
    *v15 = v57;
    *(v15 + 16) = v58;
    *(v15 + 32) = v49;
    *(v15 + 48) = v50;
    *(v15 + 64) = v51;
    *(v15 + 80) = v52;
    *(v15 + 96) = v53;
    *(v15 + 112) = v54;
    *(v15 + 128) = v20;
    *(v15 + 130) = v21;
    *(v15 + 136) = v22;
    *(v15 + 144) = v61;
    *(v15 + 160) = v60;
    *(v15 + 168) = v59;
    *(v15 + 176) = v55;
    *(v15 + 192) = v56;
    *(v15 + 208) = v62;
    *(v15 + 209) = v63;
    *(v15 + 210) = v64;
    *(v15 + 211) = v66;
    *(v15 + 216) = v65;
    *(v15 + 232) = v67;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v17 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      if (v48)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  if (v48)
  {
    v44 = 1 << *(v5 + 32);
    v3 = v47;
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v47;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8407F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF444B08();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v31 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(v5 + 48);
    v25 = *(v24 + 8 * v20);
    v26 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
      sub_1AF443EE0(*(v24 + 8 * v20));
    }

    sub_1AFDFF288();
    sub_1AFAA0C08(v32, v25);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v27)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v28 = *(v13 + 8 * v17);
      }

      while (v28 == -1);
      v18 = __clz(__rbit64(~v28)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    *(*(v7 + 56) + 8 * v18) = v26;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF840A58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF444BC0();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v31 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(v5 + 48);
    v25 = *(v24 + 8 * v20);
    v26 = *(*(v5 + 56) + v20);
    if ((a2 & 1) == 0)
    {
      sub_1AF443EE0(*(v24 + 8 * v20));
    }

    sub_1AFDFF288();
    sub_1AFAA0C08(v32, v25);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v27)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v28 = *(v13 + 8 * v17);
      }

      while (v28 == -1);
      v18 = __clz(__rbit64(~v28)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    *(*(v7 + 56) + v18) = v26;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF840CBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638790);
  v36 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v35 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 40 * v22;
    v30 = *v29;
    v39 = *(v29 + 16);
    v37 = *(v29 + 32);
    v38 = *(v29 + 8);
    if ((v36 & 1) == 0)
    {

      sub_1AF443EE0(v30);
      sub_1AF444224(v39);
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v31)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v32 = *(v13 + 8 * v17);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = *(v7 + 56) + 40 * v18;
    *v20 = v30;
    *(v20 + 8) = v38;
    *(v20 + 16) = v39;
    *(v20 + 32) = v37;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF840FA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85A4E4();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFF2A8();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF841224(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF447C50();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 8 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF841470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1EB638600, type metadata accessor for BufferSlice);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(*(v5 + 48) + 8 * v17);
      v22 = (*(v5 + 56) + 16 * v17);
      v23 = v22[1];
      v24 = *v22;
      v25 = sub_1AFDFF278();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = (63 - v26) >> 6;
        do
        {
          if (v28 + 1 == v29)
          {
            v28 = 0;
          }

          else
          {
            ++v28;
          }

          v30 = *(v13 + 8 * v28);
        }

        while (v30 == -1);
        v14 = __clz(__rbit64(~v30)) + (v28 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v21;
      v15 = (*(v7 + 56) + 16 * v14);
      *v15 = v24;
      v15[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v33)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF8416F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85A66C();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v37 = a2;
  v8 = 0;
  v36 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v8 << 6);
LABEL_14:
    v22 = (*(v5 + 48) + 2 * v18);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(v5 + 56) + 16 * v18);
    v26 = v25[1];
    v27 = *v25;
    sub_1AFDFF288();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v28 = sub_1AFDFF2F8();
    v29 = -1 << *(v7 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v29) >> 6;
      do
      {
        if (v31 + 1 == v32)
        {
          v31 = 0;
        }

        else
        {
          ++v31;
        }

        v33 = *(v13 + 8 * v31);
      }

      while (v33 == -1);
      v14 = __clz(__rbit64(~v33)) + (v31 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = (*(v7 + 48) + 2 * v14);
    *v15 = v23;
    v15[1] = v24;
    v16 = (*(v7 + 56) + 16 * v14);
    *v16 = v27;
    v16[1] = v26;
    ++*(v7 + 16);
  }

  v19 = v8 << 6;
  while (1)
  {
    v20 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v21 = *(v5 + 8 * v8 + 72);
    v19 += 64;
    ++v8;
    if (v21)
    {
      v11 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) + v19;
      v8 = v20;
      goto LABEL_14;
    }
  }

  if (v37)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v2;
LABEL_28:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF841984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB638548);
  v36 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v35 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 32 * v22;
    v30 = *v29;
    v38 = *(v29 + 8);
    v37 = *(v29 + 24);
    if ((v36 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v31)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v32 = *(v13 + 8 * v17);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = *(v7 + 56) + 32 * v18;
    *v20 = v30;
    *(v20 + 8) = v38;
    *(v20 + 24) = v37;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF841C54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF443DB4(0, &qword_1EB6386A0, sub_1AF443AFC);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v31 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
      v26 = v25;
    }

    sub_1AFDFF288();
    sub_1AFBF62E0(v24);
    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v27)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v28 = *(v13 + 8 * v17);
      }

      while (v28 == -1);
      v18 = __clz(__rbit64(~v28)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF841EF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F410);
  v34 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + v21);
    if ((v34 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF8421CC(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  sub_1AF85B2F0(0, a3, a4, a5);
  v51 = a2;
  v9 = sub_1AFDFE5A8();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_36:

    goto LABEL_37;
  }

  v11 = 0;
  v48 = (v8 + 64);
  v49 = v5;
  v12 = 1 << *(v8 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v8 + 64);
  v50 = (v12 + 63) >> 6;
  v15 = v9 + 64;
  while (v14)
  {
    v21 = __clz(__rbit64(v14));
    v22 = (v14 - 1) & v14;
    v23 = v21 | (v11 << 6);
LABEL_14:
    v53 = v22;
    v27 = *(v8 + 48) + 72 * v23;
    if (v51)
    {
      v29 = *v27;
      v28 = *(v27 + 8);
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v56 = *(v27 + 32);
      v57 = *(v27 + 48);
      v54 = *(v27 + 64);
      v32 = *(v27 + 68);
      v55 = *(*(v8 + 56) + 8 * v23);
    }

    else
    {
      v33 = *(v27 + 16);
      v34 = *(v27 + 32);
      v35 = *(v27 + 48);
      *&v59[13] = *(v27 + 61);
      *v59 = v35;
      v36 = *v27;
      v58[1] = v33;
      v58[2] = v34;
      v58[0] = v36;
      v37 = *(*(v8 + 56) + 8 * v23);
      v54 = *&v59[16];
      v32 = v59[20];
      v56 = v34;
      v57 = *v59;
      v38 = v10;
      v39 = *(&v33 + 1);
      v31 = v33;
      v28 = *(&v36 + 1);
      v29 = v36;
      sub_1AF6B74A0(v58, v60);
      v55 = v37;
      v30 = v39;
      v10 = v38;
    }

    v60[0] = v32;
    sub_1AFDFF288();
    v52 = v29;
    sub_1AFDFD038();
    sub_1AFDFD038();
    sub_1AFDFF2A8();
    if (*(&v56 + 1))
    {
      sub_1AFDFD038();
    }

    sub_1AFDFF2A8();
    if (*(&v57 + 1))
    {
      sub_1AFDFD038();
    }

    sub_1AFDFF2A8();
    if (!v32)
    {
      sub_1AFDFF2C8();
    }

    v40 = sub_1AFDFF2F8();
    v41 = -1 << *(v10 + 32);
    v42 = v40 & ~v41;
    v43 = v42 >> 6;
    if (((-1 << v42) & ~*(v15 + 8 * (v42 >> 6))) != 0)
    {
      v16 = __clz(__rbit64((-1 << v42) & ~*(v15 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v18 = v56;
      v17 = v57;
      v19 = v30;
      v14 = v53;
    }

    else
    {
      v44 = (63 - v41) >> 6;
      v18 = v56;
      v17 = v57;
      v19 = v30;
      v14 = v53;
      do
      {
        if (v43 + 1 == v44)
        {
          v43 = 0;
        }

        else
        {
          ++v43;
        }

        v45 = *(v15 + 8 * v43);
      }

      while (v45 == -1);
      v16 = __clz(__rbit64(~v45)) + (v43 << 6);
    }

    *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v20 = *(v10 + 48) + 72 * v16;
    *v20 = v52;
    *(v20 + 8) = v28;
    *(v20 + 16) = v31;
    *(v20 + 24) = v19;
    *(v20 + 32) = v18;
    *(v20 + 48) = v17;
    *(v20 + 64) = v54;
    *(v20 + 68) = v60[0];
    *(*(v10 + 56) + 8 * v16) = v55;
    ++*(v10 + 16);
  }

  v24 = v11 << 6;
  while (1)
  {
    v25 = v11 + 1;
    if (v11 + 1 >= v50)
    {
      break;
    }

    v26 = *(v8 + 8 * v11 + 72);
    v24 += 64;
    ++v11;
    if (v26)
    {
      v22 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v11 = v25;
      goto LABEL_14;
    }
  }

  if (v51)
  {
    v46 = 1 << *(v8 + 32);
    v6 = v49;
    if (v46 >= 64)
    {
      bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v46;
    }

    *(v8 + 16) = 0;
    goto LABEL_36;
  }

  v6 = v49;
LABEL_37:
  *v6 = v10;
  return result;
}

uint64_t sub_1AF8425F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B160();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(v5 + 48) + 32 * v17;
      if (a2)
      {
        sub_1AF640200(v21, v32);
        sub_1AF640200(*(v5 + 56) + 32 * v17, v31);
      }

      else
      {
        sub_1AF44596C(v21, v32);
        sub_1AF44596C(*(v5 + 56) + 32 * v17, v31);
      }

      sub_1AFDFF288();
      sub_1AFDFD038();
      v22 = sub_1AFDFF2F8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = 32 * v14;
      sub_1AF640200(v32, *(v7 + 48) + 32 * v14);
      sub_1AF640200(v31, *(v7 + 56) + v15);
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF842894(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B214();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v31 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
      v26 = v25;
    }

    sub_1AFDFF288();
    sub_1AFDFD038();

    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v27)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v28 = *(v13 + 8 * v17);
      }

      while (v28 == -1);
      v18 = __clz(__rbit64(~v28)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF842C00(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v36 = a2;
  v7 = sub_1AFDFE5A8();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
  v35 = (v6 + 64);
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v22 = v21 | (v9 << 6);
LABEL_15:
    v26 = (*(v6 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v6 + 56) + 8 * v22);
    if ((v36 & 1) == 0)
    {

      v30 = v29;
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v15 = sub_1AFDFF2F8();
    v16 = -1 << *(v8 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v16) >> 6;
      do
      {
        if (v18 + 1 == v31)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        v32 = *(v14 + 8 * v18);
      }

      while (v32 == -1);
      v19 = __clz(__rbit64(~v32)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = (*(v8 + 48) + 16 * v19);
    *v20 = v27;
    v20[1] = v28;
    *(*(v8 + 56) + 8 * v19) = v29;
    ++*(v8 + 16);
  }

  v23 = v9 << 6;
  while (1)
  {
    v24 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v25 = *(v6 + 8 * v9 + 72);
    v23 += 64;
    ++v9;
    if (v25)
    {
      v12 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v9 = v24;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  v4 = v3;
LABEL_30:
  *v4 = v8;
  return result;
}

uint64_t sub_1AF843010(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

unint64_t sub_1AF843078(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 48) + 8 * result) = a2;
  ++*(a3 + 16);
  return result;
}

uint64_t sub_1AF8430AC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AFDFC318();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3 & 1;
  ++a4[2];
  return result;
}

uint64_t sub_1AF843160(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1AFDFC318();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  ++a5[2];
  return result;
}

unint64_t sub_1AF843220(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  ++a6[2];
  return result;
}

__n128 sub_1AF843268(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = *(a3 + 136);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v6 = a4[7] + 144 * a1;
  *v6 = v4;
  *(v6 + 8) = *(a3 + 1);
  *(v6 + 24) = *(a3 + 3);
  *(v6 + 40) = *(a3 + 5);
  *(v6 + 56) = *(a3 + 7);
  *(v6 + 72) = *(a3 + 9);
  *(v6 + 88) = *(a3 + 11);
  *(v6 + 104) = *(a3 + 13);
  result = *(a3 + 15);
  *(v6 + 120) = result;
  *(v6 + 136) = v5;
  ++a4[2];
  return result;
}

unint64_t sub_1AF8432F8(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 12 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  ++a5[2];
  return result;
}

uint64_t sub_1AF843344(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1AFDFE488();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 32 * a1);
  ++a4[2];
  return result;
}

unint64_t sub_1AF843404(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  ++a5[2];
  return result;
}

uint64_t sub_1AF843444(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  ++a4[2];
  return result;
}

unint64_t sub_1AF843518(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  ++a5[2];
  return result;
}

unint64_t sub_1AF843558(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  ++a4[2];
  return result;
}

uint64_t sub_1AF843594(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1AFDFC318();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  ++a5[2];
  return result;
}

uint64_t sub_1AF84364C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1AFDFC128();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  ++a5[2];
  return result;
}

uint64_t sub_1AF843704(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AFDFC128();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  ++a4[2];
  return result;
}

__n128 sub_1AF8437B4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v4 = a4[7] + 80 * a1;
  v5 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a3 + 64);
  result = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = result;
  ++a4[2];
  return result;
}

uint64_t sub_1AF84380C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 8 * a1;
  *v7 = a2;
  *(v7 + 4) = BYTE4(a2) & 1;
  v8 = a4[7];
  v9 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  result = sub_1AF0D6D88(a3, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  ++a4[2];
  return result;
}

unint64_t sub_1AF8438B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  ++a6[2];
  return result;
}

uint64_t sub_1AF843900(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TextureCache.TextureKey();
  sub_1AF0D6D88(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TextureCache.TextureKey);
  result = sub_1AF446690(a3, a4[7] + 104 * a1);
  ++a4[2];
  return result;
}

uint64_t sub_1AF8439B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam();
  result = sub_1AF0D6D88(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  ++a5[2];
  return result;
}

uint64_t sub_1AF843A5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 8 * a1;
  *v7 = a2;
  *(v7 + 4) = BYTE4(a2) & 1;
  v8 = a4[7];
  v9 = sub_1AFDFC128();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
  ++a4[2];
  return result;
}

uint64_t sub_1AF843B0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TextureCache.TextureKey();
  result = sub_1AF0D6D88(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TextureCache.TextureKey);
  *(a4[7] + 8 * a1) = a3;
  ++a4[2];
  return result;
}

__n128 sub_1AF843BB8(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  v7 = *(a4 + 44);
  v8 = *(a4 + 48);
  v9 = *(a4 + 50);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6] + 16 * a1;
  *v10 = a2;
  *(v10 + 8) = a3;
  v11 = a5[7] + 72 * a1;
  *v11 = *a4;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = *(a4 + 32);
  *(v11 + 36) = *(a4 + 36);
  *(v11 + 44) = v7;
  *(v11 + 50) = v9;
  *(v11 + 48) = v8;
  result = *(a4 + 56);
  *(v11 + 56) = result;
  ++a5[2];
  return result;
}

__n128 sub_1AF843C48(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v4 = a4[7] + 120 * a1;
  v5 = *(a3 + 80);
  *(v4 + 64) = *(a3 + 64);
  *(v4 + 80) = v5;
  *(v4 + 96) = *(a3 + 96);
  *(v4 + 112) = *(a3 + 112);
  v6 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v6;
  result = *(a3 + 32);
  v8 = *(a3 + 48);
  *(v4 + 32) = result;
  *(v4 + 48) = v8;
  ++a4[2];
  return result;
}

uint64_t sub_1AF843CB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AFDFC318();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  ++a4[2];
  return result;
}

__n128 sub_1AF843D60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a5[6] + 16 * a1);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * a1;
  result = *a4;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  *(v6 + 32) = *(a4 + 32);
  ++a5[2];
  return result;
}

__n128 sub_1AF843DB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v4 = a4[6] + 72 * a1;
  v5 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v5;
  *(v4 + 61) = *(a2 + 61);
  result = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = result;
  *(a4[7] + 8 * a1) = a3;
  ++a4[2];
  return result;
}

uint64_t sub_1AF843E24()
{
  v1 = v0;
  sub_1AF85B890(0, &unk_1EB630B90);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      ;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF843FA0()
{
  v1 = v0;
  sub_1AF85A824(0, &unk_1EB630BA0, &qword_1EB630DA0, &unk_1EB632390, type metadata accessor for AuthoringNode);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = (v2 + 64);
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= &v6[8 * v7])
    {
      memmove(v5, v6, 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_13:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_13;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF844124()
{
  v1 = v0;
  v29 = sub_1AFDFC318();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v2);
  v28 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF859FA4(0, &qword_1EB630C48, MEMORY[0x1E69695A8], sub_1AF4644D8);
  v4 = *v0;
  v5 = sub_1AFDFE598();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v31 + 32;
    v27[2] = v31 + 16;
    if (v14)
    {
      do
      {
        v32 = (v14 - 1) & v14;
        v16 = __clz(__rbit64(v14)) | (v10 << 6);
LABEL_16:
        v20 = v31;
        v21 = *(v31 + 72) * v16;
        v22 = v28;
        v23 = v29;
        (*(v31 + 16))(v28, *(v4 + 48) + v21, v29);
        v24 = *(*(v4 + 56) + v16);
        v25 = v30;
        (*(v20 + 32))(*(v30 + 48) + v21, v22, v23);
        *(*(v25 + 56) + v16) = v24;
        v14 = v32;
      }

      while (v32);
    }

    v17 = v10 << 6;
    while (1)
    {
      v18 = v10 + 1;
      if (v10 + 1 >= v15)
      {
        break;
      }

      v19 = *(v4 + 8 * v10 + 72);
      v17 += 64;
      ++v10;
      if (v19)
      {
        v32 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v10 = v18;
        goto LABEL_16;
      }
    }

    v1 = v27[0];
    v6 = v30;
  }

  else
  {
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1AF8443C0()
{
  v1 = v0;
  v37 = sub_1AFDFC318();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF85A9E8(0, &qword_1EB630C30, sub_1AF444718);
  v4 = *v0;
  v5 = sub_1AFDFE598();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v15;
    v16 = v6;
    if (v14)
    {
      do
      {
        v40 = (v14 - 1) & v14;
        v17 = __clz(__rbit64(v14)) | (v10 << 6);
LABEL_13:
        v21 = v39;
        v22 = *(v39 + 72) * v17;
        v23 = v36;
        v24 = v37;
        (*(v39 + 16))(v36, *(v4 + 48) + v22, v37);
        v25 = 16 * v17;
        v26 = *(v4 + 56) + 16 * v17;
        v27 = *v26;
        v28 = *(v26 + 8);
        (*(v21 + 32))(*(v16 + 48) + v22, v23, v24);
        v29 = *(v16 + 56) + v25;
        *v29 = v27;
        *(v29 + 8) = v28;
        sub_1AF85AA64(v27, v28);
        v15 = v35;
        v14 = v40;
      }

      while (v40);
    }

    v18 = v10 << 6;
    while (1)
    {
      v19 = v10 + 1;
      if (v10 + 1 >= v15)
      {
        break;
      }

      v20 = *(v4 + 8 * v10 + 72);
      v18 += 64;
      ++v10;
      if (v20)
      {
        v40 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v10 = v19;
        goto LABEL_13;
      }
    }

    v1 = v32;
    v6 = v38;
  }

  else
  {
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1AF844684()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB633190);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 56) + 16 * v14);
      v20 = *v18;
      v19 = v18[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = (*(v4 + 56) + 16 * v14);
      *v21 = v20;
      v21[1] = v19;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF844804()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F4E0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];
      v22 = 88 * v14;
      sub_1AF4455CC(*(v2 + 56) + 88 * v14, v30);
      v23 = (*(v4 + 48) + v18);
      *v23 = v21;
      v23[1] = v20;
      v24 = *(v4 + 56) + v22;
      v25 = v30[1];
      *v24 = v30[0];
      v26 = v30[2];
      v27 = v30[3];
      v28 = v30[4];
      *(v24 + 80) = v31;
      *(v24 + 48) = v27;
      *(v24 + 64) = v28;
      *(v24 + 16) = v25;
      *(v24 + 32) = v26;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 8 * v8 + 72);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8449D0()
{
  v1 = v0;
  sub_1AF43D014();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF844B3C()
{
  v1 = v0;
  sub_1AF85A824(0, &unk_1EB63F670, &unk_1EB638D40, &qword_1EB63F680, type metadata accessor for Node);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = (v2 + 64);
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= &v6[8 * v7])
    {
      memmove(v5, v6, 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_13:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_13;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF844CD8(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      *(*(v5 + 56) + 8 * v15) = v19;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF844E34()
{
  v1 = v0;
  sub_1AF446A3C();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 32 * v14);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = (*(v4 + 48) + 32 * v14);
      v21 = v18[1];
      *v20 = *v18;
      v20[1] = v21;
      *(*(v4 + 56) + 8 * v14) = v19;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF844FAC()
{
  v1 = v0;
  sub_1AF446040();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF845100()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED726B10);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 56) + 24 * v14);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = (*(v4 + 56) + 24 * v14);
      *v22 = v19;
      v22[1] = v20;
      v22[2] = v21;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8452C0()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED726B00);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84543C(unint64_t *a1)
{
  v2 = v1;
  sub_1AF85B890(0, a1);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 8 * v15) = v20)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v20 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= i)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v19 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        v15 = v19 + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF845590()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED72F7E0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];
      v22 = 24 * v14;
      v23 = *(v2 + 56) + v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      LOBYTE(v23) = *(v23 + 16);
      v26 = (*(v4 + 48) + v18);
      *v26 = v21;
      v26[1] = v20;
      v27 = *(v4 + 56) + v22;
      *v27 = v24;
      *(v27 + 8) = v25;
      *(v27 + 16) = v23;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF845728()
{
  v1 = v0;
  sub_1AF859E94(0, &qword_1EB63F668, type metadata accessor for RGResource);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF845894()
{
  v1 = v0;
  sub_1AF44657C();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 16 * v14);
      v19 = v18[1];
      v20 = *(*(v2 + 56) + 8 * v14);
      v21 = (*(v4 + 48) + 16 * v14);
      *v21 = *v18;
      v21[1] = v19;
      *(*(v4 + 56) + 8 * v14) = v20;

      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8459FC()
{
  v1 = v0;
  sub_1AF85B5B0();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF845B40()
{
  v1 = v0;
  sub_1AF859E94(0, &qword_1EB630BC8, sub_1AF448148);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 8 * v14;
      v19 = *(*(v2 + 48) + 8 * v14);
      v20 = 144 * v14;
      v21 = (*(v2 + 56) + v20);
      v23 = v21[1];
      v22 = v21[2];
      v24 = v21[4];
      v40 = v21[3];
      v41 = v24;
      v26 = v21[6];
      v25 = v21[7];
      v27 = v21[5];
      *(v44 + 9) = *(v21 + 121);
      v43 = v26;
      v44[0] = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      *(*(v4 + 48) + v18) = v19;
      v28 = (*(v4 + 56) + v20);
      *v28 = v37;
      v29 = v38;
      v30 = v39;
      v31 = v41;
      v28[3] = v40;
      v28[4] = v31;
      v28[1] = v29;
      v28[2] = v30;
      v32 = v42;
      v33 = v43;
      v34 = v44[0];
      *(v28 + 121) = *(v44 + 9);
      v28[6] = v33;
      v28[7] = v34;
      v28[5] = v32;
      sub_1AF85A058(&v37, &v36, sub_1AF448148);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 8 * v8 + 72);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF845D54()
{
  v1 = v0;
  sub_1AF85B728();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(v2 + 56) + 12 * v14;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 12 * v14;
      *v21 = v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF845EAC()
{
  v1 = v0;
  sub_1AF859E94(0, &qword_1ED726B30, sub_1AF445EE0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 16) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(v2 + 56) + 24 * v14;
      v20 = *(v19 + 16);
      v21 = *v19;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + 24 * v14;
      *v22 = v21;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF846030(void (*a1)(void, __n128), void (*a2)(_BYTE *, uint64_t))
{
  v31 = a2;
  v4 = v2;
  v5 = sub_1AFDFE488();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0, v8);
  v11 = *v2;
  v12 = sub_1AFDFE598();
  v13 = v12;
  if (*(v11 + 16))
  {
    v30[0] = v4;
    v14 = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 64 + 8 * v15)
    {
      memmove(v14, (v11 + 64), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 64);
    v21 = (v18 + 63) >> 6;
    v30[1] = v6 + 32;
    v30[2] = v6 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v23 = v22 | (v17 << 6);
LABEL_16:
      v27 = *(v6 + 72) * v23;
      (*(v6 + 16))(v10, *(v11 + 48) + v27, v5);
      v28 = 32 * v23;
      sub_1AF0D5A54(*(v11 + 56) + v28, v32);
      (*(v6 + 32))(*(v13 + 48) + v27, v10, v5);
      v31(v32, *(v13 + 56) + v28);
    }

    v24 = v17 << 6;
    while (1)
    {
      v25 = v17 + 1;
      if (v17 + 1 >= v21)
      {
        break;
      }

      v26 = *(v11 + 8 * v17 + 72);
      v24 += 64;
      ++v17;
      if (v26)
      {
        v20 = (v26 - 1) & v26;
        v23 = __clz(__rbit64(v26)) + v24;
        v17 = v25;
        goto LABEL_16;
      }
    }

    v4 = v30[0];
  }

  else
  {
  }

  *v4 = v13;
  return result;
}

uint64_t sub_1AF846294()
{
  v1 = v0;
  sub_1AF447EC4();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 16 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8463F0()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED7307E0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 8 * v15;
        v20 = *(*(v2 + 48) + 8 * v15);
        sub_1AF7472D8();
        *(*(v4 + 48) + v19) = v20;
        sub_1AF0D5D54(v22, *(v4 + 56) + v19);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84657C()
{
  v1 = v0;
  v36 = sub_1AFDFC318();
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v32 - v6;
  sub_1AF85AED0(0, &unk_1EB632910, MEMORY[0x1E69E6EC8]);
  v7 = *v0;
  v8 = sub_1AFDFE598();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v39 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v40 + 4;
    v35 = v40 + 2;
    v19 = v40;
    if (v17)
    {
      do
      {
        v41 = (v17 - 1) & v17;
        v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_13:
        v24 = v19[9] * v20;
        v25 = v19[2];
        v27 = v36;
        v26 = v37;
        v25(v37, *(v7 + 48) + v24, v36);
        v28 = v38;
        v25(v38, *(v7 + 56) + v24, v27);
        v29 = v39;
        v30 = v19[4];
        v30(*(v39 + 48) + v24, v26, v27);
        v30(*(v29 + 56) + v24, v28, v27);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13 << 6;
    while (1)
    {
      v22 = v13 + 1;
      if (v13 + 1 >= v18)
      {
        break;
      }

      v23 = *(v7 + 8 * v13 + 72);
      v21 += 64;
      ++v13;
      if (v23)
      {
        v41 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v13 = v22;
        goto LABEL_13;
      }
    }

    v1 = v33;
    v9 = v39;
  }

  else
  {
  }

  *v1 = v9;
  return result;
}

uint64_t sub_1AF846868()
{
  v1 = v0;
  sub_1AF85AB20();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8469BC()
{
  v1 = v0;
  sub_1AF859DB8();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF846B30(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = (*(v3 + 48) + 16 * v15);
      v20 = v19[1];
      v21 = *(*(v3 + 56) + 8 * v15);
      v22 = (*(v5 + 48) + 16 * v15);
      *v22 = *v19;
      v22[1] = v20;
      *(*(v5 + 56) + 8 * v15) = v21;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF846CB8(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = (*(v3 + 48) + 16 * v15);
      v20 = v19[1];
      v21 = *(*(v3 + 56) + 8 * v15);
      v22 = (*(v5 + 48) + 16 * v15);
      *v22 = *v19;
      v22[1] = v20;
      *(*(v5 + 56) + 8 * v15) = v21;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF846E40()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB6331A0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF846FA0()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB638310);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v25 + 16) = v23)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(v2 + 56) + 80 * v14;
      v20 = *(v19 + 32);
      v21 = *(v19 + 48);
      v22 = *(v19 + 64);
      v24 = *v19;
      v23 = *(v19 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v25 = *(v4 + 56) + 80 * v14;
      *(v25 + 64) = v22;
      *(v25 + 32) = v20;
      *(v25 + 48) = v21;
      *v25 = v24;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF847128()
{
  v1 = v0;
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF85A9E8(0, &unk_1EB63F4B0, sub_1AF43FD98);
  v7 = *v0;
  v8 = sub_1AFDFE598();
  v9 = v8;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 64);
    v17 = (v14 + 63) >> 6;
    v30 = v3 + 32;
    v31 = v3 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v19 = v18 | (v13 << 6);
LABEL_13:
      v23 = *(v3 + 72) * v19;
      (*(v3 + 16))(v6, *(v7 + 48) + v23, v2);
      v24 = 16 * v19;
      v25 = *(v9 + 48);
      v26 = *(v3 + 32);
      v32 = *(*(v7 + 56) + v24);
      v26(v25 + v23, v6, v2);
      *(*(v9 + 56) + v24) = v32;
    }

    v20 = v13 << 6;
    while (1)
    {
      v21 = v13 + 1;
      if (v13 + 1 >= v17)
      {
        break;
      }

      v22 = *(v7 + 8 * v13 + 72);
      v20 += 64;
      ++v13;
      if (v22)
      {
        v16 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v13 = v21;
        goto LABEL_13;
      }
    }

    v1 = v29;
  }

  else
  {
  }

  *v1 = v9;
  return result;
}

uint64_t sub_1AF847398()
{
  v1 = v0;
  sub_1AF44519C();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      *(*(v4 + 56) + 16 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84750C()
{
  v1 = v0;
  sub_1AF85AD10();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 48) + 40 * v14);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = *(*(v2 + 56) + 8 * v14);
      v25 = (*(v4 + 48) + 40 * v14);
      *v25 = *v18;
      v25[1] = v20;
      v25[2] = v21;
      v25[3] = v22;
      v25[4] = v23;
      *(*(v4 + 56) + 8 * v14) = v24;
      sub_1AF687F90(v19, v20);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8476A0()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB63F580);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = (*(v2 + 56) + 40 * v14);
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v23 = v18[4];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v24 = (*(v4 + 56) + 40 * v14);
      *v24 = v19;
      v24[1] = v20;
      v24[2] = v22;
      v24[3] = v21;
      v24[4] = v23;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF847854()
{
  sub_1AF447618();
  v25 = v0;
  v1 = *v0;
  v2 = sub_1AFDFE598();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_16:
      v17 = (*(v1 + 48) + 40 * v13);
      v18 = v17[1];
      v20 = v17[2];
      v19 = v17[3];
      v21 = v17[4];
      v22 = *(*(v1 + 56) + 8 * v13);
      v23 = (*(v3 + 48) + 40 * v13);
      *v23 = *v17;
      v23[1] = v18;
      v23[2] = v20;
      v23[3] = v19;
      v23[4] = v21;
      *(*(v3 + 56) + 8 * v13) = v22;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
    }

    v14 = v7 << 6;
    while (1)
    {
      v15 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        break;
      }

      v16 = *(v1 + 72 + 8 * v7);
      v14 += 64;
      ++v7;
      if (v16)
      {
        v10 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v7 = v15;
        goto LABEL_16;
      }
    }
  }

  *v25 = v3;
  return result;
}

uint64_t sub_1AF847A00()
{
  v1 = v0;
  sub_1AF447808();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 8 * v14;
      v19 = *(*(v2 + 48) + 8 * v14);
      v20 = 56 * v14;
      v21 = *(v2 + 56) + v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v28 = *(v21 + 48);
      *(*(v4 + 48) + v18) = v19;
      v29 = *(v4 + 56) + v20;
      *v29 = v22;
      *(v29 + 8) = v23;
      *(v29 + 16) = v24;
      *(v29 + 24) = v25;
      *(v29 + 32) = v26;
      *(v29 + 40) = v27;
      *(v29 + 48) = v28;
      sub_1AF447894(v22, v23, v24, v25, v26, v27, v28);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF847B80(unint64_t *a1)
{
  v2 = v1;
  sub_1AF85B890(0, a1);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + v15) = v20)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v20 = *(*(v3 + 56) + v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= i)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v19 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        v15 = v19 + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF847CD0()
{
  v1 = v0;
  sub_1AF447910();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 8 * v15;
        v20 = *(*(v2 + 48) + 8 * v15);
        v21 = 72 * v15;
        v22 = *(v2 + 56) + v21;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        *(*(v4 + 48) + v19) = v20;
        v26 = *(v4 + 56) + v21;
        *v26 = v32;
        v27 = v33;
        v28 = v34;
        v29 = v35;
        *(v26 + 64) = v36;
        *(v26 + 32) = v28;
        *(v26 + 48) = v29;
        *(v26 + 16) = v27;
        sub_1AF0D9CA4(&v32, v31, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF847EAC()
{
  v1 = v0;
  v35 = sub_1AFDFC128();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF859FA4(0, &qword_1EB638680, MEMORY[0x1E6968FB0], sub_1AF859F00);
  v4 = *v0;
  v5 = sub_1AFDFE598();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v16 = v34;
    if (v14)
    {
      do
      {
        v39 = (v14 - 1) & v14;
        v17 = __clz(__rbit64(v14)) | (v10 << 6);
LABEL_16:
        v21 = v37;
        v22 = *(v37 + 72) * v17;
        v23 = v35;
        (*(v37 + 16))(v16, *(v4 + 48) + v22, v35);
        v24 = 16 * v17;
        v25 = (*(v4 + 56) + 16 * v17);
        v26 = v25[1];
        v38 = *v25;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v16, v23);
        v28 = (*(v27 + 56) + v24);
        *v28 = v38;
        v28[1] = v26;

        v14 = v39;
      }

      while (v39);
    }

    v18 = v10 << 6;
    while (1)
    {
      v19 = v10 + 1;
      if (v10 + 1 >= v15)
      {
        break;
      }

      v20 = *(v4 + 8 * v10 + 72);
      v18 += 64;
      ++v10;
      if (v20)
      {
        v39 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v10 = v19;
        goto LABEL_16;
      }
    }

    v1 = v31;
    v6 = v36;
  }

  else
  {
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1AF848198()
{
  v1 = v0;
  sub_1AF43BDD0();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 8 * v14);
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = v18;
      *(*(v4 + 56) + 8 * v14) = v19;
      v20 = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8482F4()
{
  v1 = v0;
  sub_1AF859FA4(0, &qword_1EB630C10, type metadata accessor for VertexLayoutDescriptor, sub_1AF85A024);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF848480()
{
  v1 = v0;
  sub_1AF43CD30();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 16 * v14);
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = v18;
      *(*(v4 + 56) + 8 * v14) = v19;
      sub_1AF43C9F0(v18, *(&v18 + 1));
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8485E0()
{
  v1 = v0;
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF859FA4(0, &qword_1EB638240, MEMORY[0x1E6968FB0], sub_1AF859F00);
  v7 = *v0;
  v8 = sub_1AFDFE598();
  v9 = v8;
  if (*(v7 + 16))
  {
    v27 = v1;
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 64);
    v17 = (v14 + 63) >> 6;
    v28 = v3 + 32;
    for (i = v3 + 16; v16; *(*(v9 + 56) + 8 * v19) = v24)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v19 = v18 | (v13 << 6);
LABEL_16:
      v23 = *(v3 + 72) * v19;
      (*(v3 + 16))(v6, *(v7 + 48) + v23, v2);
      v24 = *(*(v7 + 56) + 8 * v19);
      (*(v3 + 32))(*(v9 + 48) + v23, v6, v2);
    }

    v20 = v13 << 6;
    while (1)
    {
      v21 = v13 + 1;
      if (v13 + 1 >= v17)
      {
        break;
      }

      v22 = *(v7 + 8 * v13 + 72);
      v20 += 64;
      ++v13;
      if (v22)
      {
        v16 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v13 = v21;
        goto LABEL_16;
      }
    }

    v1 = v27;
  }

  else
  {
  }

  *v1 = v9;
  return result;
}

uint64_t sub_1AF84885C(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1AF43CDE8(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1AFDFE598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    for (i = (v13 + 63) >> 6; v15; v24 = v22)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_16:
      v22 = *(*(v6 + 48) + 8 * v18);
      v23 = *(*(v6 + 56) + 8 * v18);
      *(*(v8 + 48) + 8 * v18) = v22;
      *(*(v8 + 56) + 8 * v18) = v23;
    }

    v19 = v12 << 6;
    while (1)
    {
      v20 = v12 + 1;
      if (v12 + 1 >= i)
      {
        break;
      }

      v21 = *(v6 + 72 + 8 * v12);
      v19 += 64;
      ++v12;
      if (v21)
      {
        v15 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v12 = v20;
        goto LABEL_16;
      }
    }
  }

  *v5 = v8;
  return result;
}

uint64_t sub_1AF8489C0()
{
  v1 = v0;
  sub_1AF4493DC();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF848B00()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED723000);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(v2 + 56) + 24 * v14;
      v19 = *(v18 + 16);
      v20 = *v18;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 24 * v14;
      *v21 = v20;
      *(v21 + 16) = v19;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF848C90()
{
  v1 = v0;
  sub_1AF859E94(0, &qword_1ED7307D8, sub_1AF0D54FC);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = 8 * v15;
        v20 = *(*(v2 + 48) + 8 * v15);
        sub_1AF85A058(*(v2 + 56) + 8 * v15, v22, sub_1AF0D54FC);
        *(*(v4 + 48) + v19) = v20;
        sub_1AF0D6D88(v22, *(v4 + 56) + v19, sub_1AF0D54FC);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF848E50()
{
  v1 = v0;
  sub_1AF0D7EAC();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = *(*(v2 + 48) + v15);
        v20 = (*(v2 + 56) + 80 * v15);
        v22 = v20[1];
        v21 = v20[2];
        v23 = v20[4];
        v33 = v20[3];
        v34 = v23;
        v30 = *v20;
        v31 = v22;
        v32 = v21;
        *(*(v4 + 48) + v15) = v19;
        v24 = (*(v4 + 56) + 80 * v15);
        *v24 = v30;
        v25 = v31;
        v26 = v32;
        v27 = v34;
        v24[3] = v33;
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
        sub_1AF0D8EDC(&v30, &v29);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF848FE4()
{
  v1 = v0;
  sub_1AF447A18();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v15 = v14 | (v8 << 6);
LABEL_16:
        v19 = *(*(v2 + 48) + 8 * v15);
        memcpy(__dst, (*(v2 + 56) + 440 * v15), 0x1B1uLL);
        *(*(v4 + 48) + 8 * v15) = v19;
        memcpy((*(v4 + 56) + 440 * v15), __dst, 0x1B1uLL);
        sub_1AF0D9CA4(__dst, v21, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      }

      while (v12);
    }

    v16 = v8 << 6;
    while (1)
    {
      v17 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v18 = *(v2 + 8 * v8 + 72);
      v16 += 64;
      ++v8;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v8 = v17;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF849198()
{
  v1 = v0;
  sub_1AF85B044();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(v2 + 48) + 32 * v14;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = *(*(v2 + 56) + 8 * v14);
      v23 = *(v4 + 48) + 32 * v14;
      *v23 = *v18;
      *(v23 + 8) = v19;
      *(v23 + 16) = v21;
      *(v23 + 24) = v20;
      *(*(v4 + 56) + 8 * v14) = v22;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF849328(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      *(*(v5 + 56) + 8 * v15) = v19;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF8494C8()
{
  v1 = v0;
  v2 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF68B08C();
  v6 = *v0;
  v7 = sub_1AFDFE598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v19 = v18 | (v12 << 6);
LABEL_16:
        v23 = 8 * v19;
        v24 = *(v6 + 48) + 8 * v19;
        v25 = *v24;
        v26 = *(v24 + 4);
        v27 = *(v31 + 72) * v19;
        sub_1AF85A058(*(v6 + 56) + v27, v5, type metadata accessor for GraphScriptingConfig.ScriptInfo);
        v28 = *(v8 + 48) + v23;
        *v28 = v25;
        *(v28 + 4) = v26;
        sub_1AF0D6D88(v5, *(v8 + 56) + v27, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      }

      while (v16);
    }

    v20 = v12 << 6;
    while (1)
    {
      v21 = v12 + 1;
      if (v12 + 1 >= v17)
      {
        break;
      }

      v22 = *(v6 + 8 * v12 + 72);
      v20 += 64;
      ++v12;
      if (v22)
      {
        v16 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v12 = v21;
        goto LABEL_16;
      }
    }

    v1 = v30;
  }

  else
  {
  }

  *v1 = v8;
  return result;
}

uint64_t sub_1AF849704()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB633B70);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(v2 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v4 + 48) + v18);
      *v25 = v21;
      v25[1] = v20;
      v26 = (*(v4 + 56) + v18);
      *v26 = v23;
      v26[1] = v24;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF8498A8()
{
  v1 = v0;
  sub_1AF859E94(0, &unk_1EB63F530, sub_1AF444CB4);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      v22 = 24 * v14;
      v23 = (*(v2 + 56) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = (*(v4 + 48) + v18);
      *v27 = v20;
      v27[1] = v21;
      v28 = (*(v4 + 56) + v22);
      *v28 = v24;
      v28[1] = v25;
      v28[2] = v26;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF849A64()
{
  sub_1AF85B890(0, &qword_1EB633B60);
  v29 = v0;
  v1 = *v0;
  v30 = sub_1AFDFE598();
  if (*(v1 + 16))
  {
    v2 = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v1 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v11 = v10 | (v5 << 6);
LABEL_16:
      v15 = 16 * v11;
      v16 = (*(v1 + 48) + 16 * v11);
      v18 = *v16;
      v17 = v16[1];
      v19 = 40 * v11;
      v20 = (*(v1 + 56) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v26 = (*(v30 + 48) + v15);
      *v26 = v18;
      v26[1] = v17;
      v27 = (*(v30 + 56) + v19);
      *v27 = v21;
      v27[1] = v22;
      v27[2] = v23;
      v27[3] = v24;
      v27[4] = v25;

      sub_1AF687F90(v21, v22);
    }

    v12 = v5 << 6;
    while (1)
    {
      v13 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v14 = *(v1 + 72 + 8 * v5);
      v12 += 64;
      ++v5;
      if (v14)
      {
        v8 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) + v12;
        v5 = v13;
        goto LABEL_16;
      }
    }
  }

  *v29 = v30;
  return result;
}

uint64_t sub_1AF849C58(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1AFDFE598();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_16:
      v19 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      *(*(v5 + 56) + 8 * v15) = v19;
    }

    v16 = v9 << 6;
    while (1)
    {
      v17 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v18 = *(v3 + 72 + 8 * v9);
      v16 += 64;
      ++v9;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1AF849DB4()
{
  v1 = v0;
  sub_1AF85AF40();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 32 * v14;
      v19 = *(v2 + 48) + 32 * v14;
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      LOBYTE(v19) = *(v19 + 24);
      v23 = 16 * v14;
      v24 = *(v4 + 48) + v18;
      v25 = *(*(v2 + 56) + v23);
      *v24 = v21;
      *(v24 + 8) = v20;
      *(v24 + 16) = v22;
      *(v24 + 24) = v19;
      *(*(v4 + 56) + v23) = v25;

      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF849F40()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB6328C8);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      *(*(v4 + 56) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A0B4()
{
  v1 = v0;
  sub_1AF85A72C();
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A1F4()
{
  v1 = v0;
  sub_1AF859E94(0, &unk_1ED722FE0, sub_1AF43FD98);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 56) + 16 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A37C()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1EB633B50);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(v2 + 56) + v18);
      v23 = v22[1];
      v24 = (*(v4 + 48) + v18);
      v25 = *v22;
      *v24 = v21;
      v24[1] = v20;
      v26 = (*(v4 + 56) + v18);
      *v26 = v25;
      v26[1] = v23;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A514()
{
  v1 = v0;
  sub_1AF85B890(0, &qword_1ED726AC0);
  v2 = *v0;
  v3 = sub_1AFDFE598();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 72 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF84A698()
{
  v1 = v0;
  v2 = type metadata accessor for TextureCache.TextureKey();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AF859FA4(0, &qword_1ED723090, type metadata accessor for TextureCache.TextureKey, sub_1AF85A24C);
  v7 = *v0;
  v8 = sub_1AFDFE598();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 64);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v19 = v18 | (v13 << 6);
LABEL_13:
      v23 = *(v3 + 72) * v19;
      sub_1AF85A058(*(v7 + 48) + v23, v6, type metadata accessor for TextureCache.TextureKey);
      v24 = 104 * v19;
      sub_1AF74EA6C(*(v7 + 56) + v24, v27);
      sub_1AF0D6D88(v6, *(v9 + 48) + v23, type metadata accessor for TextureCache.TextureKey);
      sub_1AF446690(v27, *(v9 + 56) + v24);
    }

    v20 = v13 << 6;
    while (1)
    {
      v21 = v13 + 1;
      if (v13 + 1 >= v17)
      {
        break;
      }

      v22 = *(v7 + 8 * v13 + 72);
      v20 += 64;
      ++v13;
      if (v22)
      {
        v16 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) + v20;
        v13 = v21;
        goto LABEL_13;
      }
    }

    v1 = v26;
  }

  else
  {
  }

  *v1 = v9;
  return result;
}