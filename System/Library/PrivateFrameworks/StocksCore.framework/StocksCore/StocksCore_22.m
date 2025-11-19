uint64_t sub_1DAC377F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1DACBA174();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DAC378B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 96);
      v6 = *(a2 + v3 + 88);
      v7 = *(a2 + v3 + 96);
      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) == *(a2 + v3 + 32))
        {
          v8 = *(a2 + v3 + 40);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 56))
      {
        if (!*(a2 + v3 + 56))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
        {
          v9 = *(a2 + v3 + 56);
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 72))
      {
        if (!*(a2 + v3 + 72))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 64) == *(a2 + v3 + 64))
        {
          v10 = *(a2 + v3 + 72);
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 88))
      {
        if (v5 == v7)
        {
          v11 = *(a2 + v3 + 88);
        }

        else
        {
          v11 = 0;
        }

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v12 = 0;
        if ((*(a2 + v3 + 88) & 1) != 0 || *(a1 + v3 + 80) != *(a2 + v3 + 80) || v5 != v7)
        {
          return v12;
        }
      }

      if (*(a1 + v3 + 112))
      {
        if (!*(a2 + v3 + 112))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 104) == *(a2 + v3 + 104))
        {
          v4 = *(a2 + v3 + 112);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 88;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DAC379E4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v22[87] = v5;
  v22[88] = v6;
  v22[79] = v8;
  v22[80] = v2;
  v22[77] = v3;
  v22[78] = v4;
  v9 = (MEMORY[0x1EEE9AC00](a1) + 32);
  v11 = (v10 + 32);
  for (i = v12 - 1; ; --i)
  {
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v18, v9, sizeof(v18));
    memcpy(v20, v11, sizeof(v20));
    memcpy(__src, v11, sizeof(__src));
    sub_1DAC3CD28(__dst, v16);
    sub_1DAC3CD28(v20, v16);
    v14 = _s10StocksCore13PaywallConfigV2eeoiySbAC_ACtFZ_0(v18);
    memcpy(v21, __src, sizeof(v21));
    sub_1DAC3CD84(v21);
    memcpy(v22, v18, 0x288uLL);
    sub_1DAC3CD84(v22);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v11 += 648;
    v9 += 648;
  }

  return 1;
}

uint64_t sub_1DAC37B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v15 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 64);
        v41 = *(a1 + v4 + 80);
        v42 = *(a1 + v4 + 72);
        v40 = *(a1 + v4 + 88);
        v38 = *(a1 + v4 + 96);
        v37 = *(a1 + v4 + 104);
        v34 = *(a1 + v4 + 112);
        v31 = *(a1 + v4 + 128);
        v32 = *(a1 + v4 + 120);
        v27 = *(a1 + v4 + 144);
        v28 = *(a1 + v4 + 136);
        v23 = *(a1 + v4 + 160);
        v24 = *(a1 + v4 + 152);
        v19 = *(a1 + v4 + 176);
        v20 = *(a1 + v4 + 168);
        v9 = *(v3 + v4 + 48);
        v8 = *(v3 + v4 + 56);
        v10 = *(v3 + v4 + 64);
        v11 = *(v3 + v4 + 72);
        v12 = *(v3 + v4 + 80);
        v39 = *(v3 + v4 + 88);
        v36 = *(v3 + v4 + 96);
        v35 = *(v3 + v4 + 104);
        v33 = *(v3 + v4 + 112);
        v29 = *(v3 + v4 + 128);
        v30 = *(v3 + v4 + 120);
        v25 = *(v3 + v4 + 144);
        v26 = *(v3 + v4 + 136);
        v21 = *(v3 + v4 + 160);
        v22 = *(v3 + v4 + 152);
        v17 = *(v3 + v4 + 176);
        v18 = *(v3 + v4 + 168);
        if ((*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40)) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        if ((v5 != v9 || v6 != v8) && (sub_1DACBA174() & 1) == 0 || (v7 != v10 || v42 != v11) && (sub_1DACBA174() & 1) == 0 || (v41 != v12 || v40 != v39) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        if (v38 == v36 && v37 == v35)
        {
          if (v34 != v33)
          {
            return 0;
          }
        }

        else
        {
          v13 = sub_1DACBA174();
          result = 0;
          if (v13 & 1) == 0 || ((v34 ^ v33))
          {
            return result;
          }
        }

        if ((v32 != v30 || v31 != v29) && (sub_1DACBA174() & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_1DACBA174() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DACBA174() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        v4 += 152;
        --v2;
        a1 = v15;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAC37DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 80)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 72);
      v13 = *(a1 + i + 64);
      v21 = *(a1 + i + 88);
      v22 = *(a1 + i + 80);
      v18 = *(a1 + i + 104);
      v19 = *(a1 + i + 96);
      v8 = *(a2 + i + 48);
      v7 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v9 = *(a2 + i + 72);
      v11 = *(a2 + i + 80);
      v20 = *(a2 + i + 88);
      v16 = *(a2 + i + 104);
      v17 = *(a2 + i + 96);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if ((v4 != v8 || v5 != v7) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v9 || (v13 != v10 || v6 != v9) && (sub_1DACBA174() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if ((v22 != v11 || v21 != v20) && (sub_1DACBA174() & 1) == 0 || (v19 != v17 || v18 != v16) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAC37F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v14 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 72);
        v8 = *(a1 + v4 + 80);
        v10 = *(v3 + v4 + 48);
        v9 = *(v3 + v4 + 56);
        v11 = *(v3 + v4 + 72);
        v16 = *(v3 + v4 + 64);
        v17 = *(a1 + v4 + 64);
        v12 = *(v3 + v4 + 80);
        if ((*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40)) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        if (v6)
        {
          if (!v9 || (v5 != v10 || v6 != v9) && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v9)
        {
          return 0;
        }

        if (v7)
        {
          if (!v11 || (v17 != v16 || v7 != v11) && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v11)
        {
          return 0;
        }

        if (v8 == 2)
        {
          if (v12 != 2)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v12 == 2 || ((v12 ^ v8) & 1) != 0)
          {
            return result;
          }
        }

        v4 += 56;
        --v2;
        a1 = v14;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAC38114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v20 = *(a1 + 64);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a2 + 64);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v10 = *(a2 + 40), (sub_1DACBA174() & 1) != 0))
    {
      v11 = 0;
      v12 = v2 - 1;
      v13 = v20;
      while (1)
      {
        if (v5 > 1u)
        {
          if (v5 == 2)
          {
            v16 = 0xE400000000000000;
            v17 = 1263681860;
          }

          else
          {
            v16 = 0xE800000000000000;
            v17 = 0x4554414C504D4554;
          }
        }

        else if (v5)
        {
          v16 = 0xE500000000000000;
          v17 = 0x544847494CLL;
        }

        else
        {
          v16 = 0xE700000000000000;
          v17 = 0x6E776F6E6B6E75;
        }

        if (v7 > 1u)
        {
          if (v7 == 2)
          {
            v18 = 0xE400000000000000;
            if (v17 != 1263681860)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v18 = 0xE800000000000000;
            if (v17 != 0x4554414C504D4554)
            {
              goto LABEL_31;
            }
          }
        }

        else if (v7)
        {
          v18 = 0xE500000000000000;
          if (v17 != 0x544847494CLL)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v18 = 0xE700000000000000;
          if (v17 != 0x6E776F6E6B6E75)
          {
            goto LABEL_31;
          }
        }

        if (v16 == v18)
        {
          sub_1DACB71E4();

          if (v13)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

LABEL_31:
        v21 = sub_1DACBA174();
        sub_1DACB71E4();
        sub_1DACB71E4();

        if ((v21 & 1) == 0)
        {

          return 0;
        }

        if (v13)
        {
LABEL_29:
          if ((v9 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_34;
        }

LABEL_33:
        if (v9 & 1 | (v6 != v8))
        {
          return 0;
        }

LABEL_34:
        if (!v12)
        {
          return 1;
        }

        v5 = *(a1 + v11 + 88);
        v6 = *(a1 + v11 + 96);
        v13 = *(a1 + v11 + 104);
        v7 = *(a2 + v11 + 88);
        v8 = *(a2 + v11 + 96);
        v9 = *(a2 + v11 + 104);
        if (*(a1 + v11 + 72) != *(a2 + v11 + 72) || *(a1 + v11 + 80) != *(a2 + v11 + 80))
        {
          v14 = *(a1 + v11 + 80);
          v15 = *(a2 + v11 + 80);
          if ((sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        v11 += 40;
        --v12;
      }
    }
  }

  return 0;
}

uint64_t sub_1DAC383D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646579616C65;
  v3 = 0x44636972656E6567;
  v4 = a1;
  v5 = 0xEF656D69746C6165;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0x52636972656E6567;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000001DACE2C10;
  if (a1 != 3)
  {
    v7 = 0x52544B4D6573796ELL;
    v8 = 0xEF656D69746C6165;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x655271616473616ELL;
  v10 = 0xEE00656D69746C61;
  if (a1 != 1)
  {
    v9 = 0x6C6165526573796ELL;
    v10 = 0xEC000000656D6974;
  }

  if (!a1)
  {
    v9 = 0x44636972656E6567;
    v10 = 0xEE00646579616C65;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00656D69746C61;
        if (v11 != 0x655271616473616ELL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEC000000656D6974;
        if (v11 != 0x6C6165526573796ELL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF656D69746C6165;
        if (v11 != 0x52636972656E6567)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001DACE2C10;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x52544B4D6573796ELL;
    v2 = 0xEF656D69746C6165;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_1DACBA174();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_1DAC38650(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x756F726765726F66;
      v7 = 0xEF726F6C6F43646ELL;
    }

    else
    {
      v6 = 0xD000000000000018;
      if (v3 == 4)
      {
        v7 = 0x80000001DACE1850;
      }

      else
      {
        v7 = 0x80000001DACE1D00;
      }
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x6C6562616CLL;
    if (a1 != 1)
    {
      v5 = 0x756F72676B636162;
      v4 = 0xEF726F6C6F43646ELL;
    }

    if (a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1701869940;
    }

    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v8 = 0xE400000000000000;
      goto LABEL_27;
    }

    if (a2 == 1)
    {
      v8 = 0xE500000000000000;
      v2 = 0x6C6562616CLL;
      goto LABEL_27;
    }

    v9 = 1801675106;
LABEL_26:
    v2 = v9 | 0x756F726700000000;
    v8 = 0xEF726F6C6F43646ELL;
    goto LABEL_27;
  }

  if (a2 == 3)
  {
    v9 = 1701998438;
    goto LABEL_26;
  }

  v2 = 0xD000000000000018;
  if (a2 == 4)
  {
    v8 = 0x80000001DACE1850;
  }

  else
  {
    v8 = 0x80000001DACE1D00;
  }

LABEL_27:
  if (v6 == v2 && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DACBA174();
  }

  return v10 & 1;
}

uint64_t sub_1DAC38828(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x737574617473;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x695F6D6165727473;
    }

    else
    {
      v3 = 0x65706F5F7478656ELL;
    }

    if (v2 == 3)
    {
      v4 = 0xEF6C61767265746ELL;
    }

    else
    {
      v4 = 0xE90000000000006ELL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x737574617473)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEF6C61767265746ELL;
    if (v3 != 0x695F6D6165727473)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE90000000000006ELL;
    if (v3 != 0x65706F5F7478656ELL)
    {
LABEL_34:
      v7 = sub_1DACBA174();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1DAC389C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x80000001DACE2990;
    v10 = 0xD000000000000022;
    if (a1 == 1)
    {
      v10 = 0xD000000000000026;
    }

    else
    {
      v9 = 0x80000001DACE29C0;
    }

    if (a1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0xD000000000000020;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0x80000001DACE2960;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 5)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v4 = 0x4E574F4E4B4E55;
    }

    if (a1 == 5)
    {
      v3 = 0x80000001DACE2A50;
    }

    v5 = 0x80000001DACE29F0;
    if (a1 == 3)
    {
      v6 = 0xD000000000000026;
    }

    else
    {
      v6 = 0xD000000000000025;
    }

    if (a1 != 3)
    {
      v5 = 0x80000001DACE2A20;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0x80000001DACE2960;
      if (v7 != 0xD000000000000020)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (a2 != 1)
    {
      v12 = 0x80000001DACE29C0;
      if (v7 != 0xD000000000000022)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v11 = "DataSource_Quote_NasdaqLS_FreeRealtime";
    goto LABEL_34;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v11 = "DataSource_Quote_NYSEArca_FreeRealtime";
LABEL_34:
      v12 = (v11 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000026)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v13 = "DataSource_Quote_NYSEMKT_FreeRealtime";
LABEL_43:
    v12 = (v13 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000025)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (a2 == 5)
  {
    v13 = "DataSource_Quote_Generic_FreeRealtime";
    goto LABEL_43;
  }

  v12 = 0xE700000000000000;
  if (v7 != 0x4E574F4E4B4E55)
  {
LABEL_48:
    v14 = sub_1DACBA174();
    goto LABEL_49;
  }

LABEL_46:
  if (v8 != v12)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_1DAC38BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656D616E5FLL;
  v3 = 0x65676E6168637865;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1701869940;
    }

    else
    {
      v5 = 0x65676E6168637865;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED0000656D616E5FLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x616E5F74726F6873;
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0x6C6F626D7973;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0x616E5F74726F6873;
  v8 = 0xEA0000000000656DLL;
  v9 = 0xE400000000000000;
  v10 = 1701667182;
  if (a2 != 3)
  {
    v10 = 0x6C6F626D7973;
    v9 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 1701869940;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DACBA174();
  }

  return v13 & 1;
}

uint64_t sub_1DAC38D30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "icleString";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000021;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v5 = "anfEmbedConfigurationAsset";
    }

    else
    {
      v5 = "icleString";
    }
  }

  else if (a1 == 2)
  {
    v5 = "klistedChannelIds";
    v6 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v5 = "webEmbedContentBlockers";
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = "webEmbedContentBlockerOverrides";
    v6 = 0xD000000000000019;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v3 = "anfEmbedConfigurationAsset";
    }
  }

  else if (a2 == 2)
  {
    v3 = "klistedChannelIds";
  }

  else if (a2 == 3)
  {
    v3 = "webEmbedContentBlockers";
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = "webEmbedContentBlockerOverrides";
    v2 = 0xD000000000000019;
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DACBA174();
  }

  return v7 & 1;
}

uint64_t sub_1DAC38EA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65736F6C63;
    }

    else
    {
      v4 = 1852141679;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1751607656;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7827308;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656D756C6F76;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65736F6C63;
    }

    else
    {
      v9 = 1852141679;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7827308;
    if (a2 != 3)
    {
      v6 = 0x656D756C6F76;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1751607656;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DACBA174();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DAC38FF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000617465;
  v3 = 0x6D2D7365756C6176;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736569726573;
    }

    else
    {
      v5 = 1635018093;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x636E657265666572;
    }

    else
    {
      v5 = 0x6D2D7365756C6176;
    }

    if (v4)
    {
      v6 = 0xEE006174656D2D65;
    }

    else
    {
      v6 = 0xEB00000000617465;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x736569726573;
  if (a2 != 2)
  {
    v8 = 1635018093;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x636E657265666572;
    v2 = 0xEE006174656D2D65;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3913C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72756769666E6F63;
    }

    else
    {
      v3 = 0x4E64726F6365725FLL;
    }

    if (v2)
    {
      v4 = 0xED00006E6F697461;
    }

    else
    {
      v4 = 0xEB00000000656D61;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001DACE2AB0;
    v3 = 0xD000000000000014;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001DACE2AD0;
    }

    else
    {
      v4 = 0x80000001DACE2AF0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x72756769666E6F63;
    }

    else
    {
      v9 = 0x4E64726F6365725FLL;
    }

    if (a2)
    {
      v8 = 0xED00006E6F697461;
    }

    else
    {
      v8 = 0xEB00000000656D61;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x80000001DACE2AD0;
    v6 = 0xD000000000000016;
    if (a2 != 3)
    {
      v6 = 0xD00000000000001DLL;
      v5 = 0x80000001DACE2AF0;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001DACE2AB0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_1DACBA174();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_1DAC392DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6D614E74726F6873;
  v5 = 0xE900000000000065;
  v6 = 0x4E746361706D6F63;
  v7 = 0xEB00000000656D61;
  if (a1 != 4)
  {
    v6 = 0x79546C6F626D7973;
    v7 = 0xEA00000000006570;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1701667182;
  if (a1 != 1)
  {
    v9 = 0x6C6F626D7973;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65676E6168637865;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x6D614E74726F6873)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000656D61;
      if (v10 != 0x4E746361706D6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006570;
      if (v10 != 0x79546C6F626D7973)
      {
LABEL_34:
        v13 = sub_1DACBA174();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C6F626D7973)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65676E6168637865)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1DAC394CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6F697461727564;
    }

    else
    {
      v5 = 0x69736F5079616C70;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 7107189;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F697461727564;
  if (a2 != 2)
  {
    v8 = 0x69736F5079616C70;
    v7 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v3 = 7107189;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC39610(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  v6 = 0x636E657265666572;
  v7 = 0xED00006574614465;
  if (a1 != 4)
  {
    v6 = 0x656D756C6F76;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1751607656;
  if (a1 != 1)
  {
    v9 = 7827308;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65736F6C63;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1852141679)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006574614465;
      if (v10 != 0x636E657265666572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656D756C6F76)
      {
LABEL_34:
        v13 = sub_1DACBA174();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1751607656)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7827308)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x65736F6C63)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1DAC397D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x676E615265746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x695474656B72616DLL;
    }

    else
    {
      v5 = 0x73756F6976657270;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00656E6F5A656DLL;
    }

    else
    {
      v6 = 0xED000065736F6C43;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73656972746E65;
    }

    else
    {
      v5 = 0x676E615265746164;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0x695474656B72616DLL;
  v8 = 0xEE00656E6F5A656DLL;
  if (a2 != 2)
  {
    v7 = 0x73756F6976657270;
    v8 = 0xED000065736F6C43;
  }

  if (a2)
  {
    v3 = 0x73656972746E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC39948(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x5845444E49;
  if (a1 != 6)
  {
    v5 = 0x465F4C415554554DLL;
    v4 = 0xEB00000000444E55;
  }

  v6 = 0xE300000000000000;
  v7 = 4609093;
  if (a1 != 4)
  {
    v7 = 0x53455255545546;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x435F4F5450595243;
  v9 = 0xEF59434E45525255;
  if (a1 != 2)
  {
    v8 = 0x595449555145;
    v9 = 0xE600000000000000;
  }

  v10 = 0x59434E4552525543;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x5845444E49)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEB00000000444E55;
        if (v11 != 0x465F4C415554554DLL)
        {
LABEL_45:
          v14 = sub_1DACBA174();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v11 != 4609093)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x53455255545546)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEF59434E45525255;
      if (v11 != 0x435F4F5450595243)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x595449555145)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x59434E4552525543)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1DAC39BC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1313165391;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4B52414D5F455250;
    }

    else
    {
      v4 = 0x4F485F5245544641;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000005445;
    }

    else
    {
      v5 = 0xEB00000000535255;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4445534F4C43;
    }

    else
    {
      v4 = 1313165391;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x4B52414D5F455250;
  v8 = 0xEA00000000005445;
  if (a2 != 2)
  {
    v7 = 0x4F485F5245544641;
    v8 = 0xEB00000000535255;
  }

  if (a2)
  {
    v2 = 0x4445534F4C43;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC39D14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF444559414C4544;
  v3 = 0x5F434952454E4547;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0x80000001DACE1CB0;
    v10 = 0xD000000000000011;
    if (a1 != 4)
    {
      v10 = 0xD000000000000010;
      v9 = 0x80000001DACE1CD0;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v10;
    }

    if (v4 == 3)
    {
      v8 = 0x80000001DACE1C90;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0x525F51414453414ELL;
    v6 = 0xEF454D49544C4145;
    if (a1 != 1)
    {
      v5 = 0x4145525F4553594ELL;
      v6 = 0xED0000454D49544CLL;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x5F434952454E4547;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEF444559414C4544;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000011;
      }

      else
      {
        v11 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v2 = 0x80000001DACE1CB0;
      }

      else
      {
        v2 = 0x80000001DACE1CD0;
      }

      if (v7 != v11)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x80000001DACE1C90;
    v3 = 0xD000000000000012;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEF454D49544C4145;
      if (v7 != 0x525F51414453414ELL)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xED0000454D49544CLL;
      if (v7 != 0x4145525F4553594ELL)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_34;
  }

  if (v7 != v3)
  {
LABEL_37:
    v12 = sub_1DACBA174();
    goto LABEL_38;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1DAC39F3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00004449797469;
  v3 = 0x746E456B636F7473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6174726F706D69;
    }

    else
    {
      v5 = 0x726F697270;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006563;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C6F626D7973;
    }

    else
    {
      v5 = 0x746E456B636F7473;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xED00004449797469;
    }
  }

  v7 = 0x6E6174726F706D69;
  v8 = 0xEA00000000006563;
  if (a2 != 2)
  {
    v7 = 0x726F697270;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6C6F626D7973;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3A080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x446873696C627570;
    }

    else
    {
      v4 = 0x72656469766F7270;
    }

    if (v2)
    {
      v3 = 0xEB00000000657461;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x7972616D6D7573;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7107189;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x446873696C627570;
    }

    else
    {
      v9 = 0x72656469766F7270;
    }

    if (a2)
    {
      v8 = 0xEB00000000657461;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x656C746974;
    if (a2 != 3)
    {
      v6 = 7107189;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7972616D6D7573;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DACBA174();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DAC3A204(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726F74636146;
  v3 = 0x6E6F6974756C6964;
  v4 = a1;
  v5 = 0x6573614272657375;
  v6 = 0xEC000000656E696CLL;
  if (a1 == 5)
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001DACE27C0;
  }

  v7 = 0xD000000000000015;
  if (a1 == 3)
  {
    v7 = 0x46676E6964646170;
    v8 = 0xED0000726F746361;
  }

  else
  {
    v8 = 0x80000001DACE27A0;
  }

  if (a1 <= 4u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v5;
    v9 = v6;
  }

  v10 = 0x657469726F766166;
  v11 = 0xEE0074736F6F4264;
  if (a1 != 1)
  {
    v10 = 0x65576C61626F6C67;
    v11 = 0xEC00000074686769;
  }

  if (!a1)
  {
    v10 = 0x6E6F6974756C6964;
    v11 = 0xEE00726F74636146;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_33;
    }

    if (a2 == 1)
    {
      v2 = 0xEE0074736F6F4264;
      if (v12 != 0x657469726F766166)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x65576C61626F6C67;
    v15 = 1952999273;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xED0000726F746361;
        if (v12 != 0x46676E6964646170)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v2 = 0x80000001DACE27A0;
      v3 = 0xD000000000000015;
LABEL_33:
      if (v12 != v3)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001DACE27C0;
      if (v12 != 0xD000000000000014)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x6573614272657375;
    v15 = 1701734764;
  }

  v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v12 != v14)
  {
LABEL_39:
    v16 = sub_1DACBA174();
    goto LABEL_40;
  }

LABEL_37:
  if (v13 != v2)
  {
    goto LABEL_39;
  }

  v16 = 1;
LABEL_40:

  return v16 & 1;
}

uint64_t sub_1DAC3A46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6365727065447369;
  v5 = 0xEC00000064657461;
  if (a1 != 5)
  {
    v4 = 0x6D6563616C706572;
    v5 = 0xED00004449746E65;
  }

  v6 = 0x5379616C70736964;
  v7 = 0xED00006C6F626D79;
  if (a1 != 3)
  {
    v6 = 0x746E456B636F7473;
    v7 = 0xED00004449797469;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v6 = v4;
  }

  v8 = 0xD000000000000011;
  v9 = 0x80000001DACE2B90;
  if (a1 != 1)
  {
    v8 = 0x4E79616C70736964;
    v9 = 0xEB00000000656D61;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6C6F626D7973;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 0x80000001DACE2B90;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v14 = 0xEB00000000656D61;
        if (v10 != 0x4E79616C70736964)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v10 != 0x6C6F626D7973)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 0xEC00000064657461;
      if (v10 != 0x6365727065447369)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v12 = 0x6D6563616C706572;
    v15 = 1232367205;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0x5379616C70736964;
      v13 = 0x6C6F626D79;
      goto LABEL_37;
    }

    v12 = 0x746E456B636F7473;
    v15 = 1232696425;
  }

  v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
LABEL_37:
  v14 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v10 != v12)
  {
LABEL_40:
    v16 = sub_1DACBA174();
    goto LABEL_41;
  }

LABEL_38:
  if (v11 != v14)
  {
    goto LABEL_40;
  }

  v16 = 1;
LABEL_41:

  return v16 & 1;
}

uint64_t sub_1DAC3A6E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1263681860;
    }

    else
    {
      v4 = 0x4554414C504D4554;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x544847494CLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1263681860;
  if (a2 != 2)
  {
    v8 = 0x4554414C504D4554;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x544847494CLL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3A80C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x68746E6F4D656E6FLL;
    v16 = 0x6E6F4D6565726874;
    v17 = 0xEB00000000736874;
    if (a1 != 3)
    {
      v16 = 0x68746E6F4D786973;
      v17 = 0xE900000000000073;
    }

    if (a1 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6B656557656E6FLL;
    if (a1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v18 = 0x796144656E6FLL;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x7261655965766966;
    v4 = 0xE900000000000073;
    v5 = 0xE800000000000000;
    v6 = 0x73726165596E6574;
    if (a1 != 9)
    {
      v6 = 7105633;
      v5 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x61446F5472616579;
    v8 = 0xEA00000000006574;
    v9 = 0xE700000000000000;
    v10 = 0x72616559656E6FLL;
    if (a1 != 6)
    {
      v10 = 0x73726165596F7774;
      v9 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x6B656557656E6FLL)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x796144656E6FLL)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a2 == 2)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x68746E6F4D656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 3)
    {
      v19 = 0xEB00000000736874;
      if (v11 != 0x6E6F4D6565726874)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v21 = 0x68746E6F4D786973;
LABEL_52:
    v19 = 0xE900000000000073;
    if (v11 != v21)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v19 = 0xEA00000000006574;
      if (v11 != 0x61446F5472616579)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x72616559656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v19 = 0xE800000000000000;
    v20 = 1500477300;
LABEL_57:
    if (v11 != (v20 | 0x7372616500000000))
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v21 = 0x7261655965766966;
    goto LABEL_52;
  }

  if (a2 == 9)
  {
    v19 = 0xE800000000000000;
    v20 = 1500407156;
    goto LABEL_57;
  }

  v19 = 0xE300000000000000;
  if (v11 != 7105633)
  {
LABEL_62:
    v22 = sub_1DACBA174();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_1DAC3AB50(void *a1)
{
  v3 = v1;
  sub_1DAC3D380(0, &qword_1EE11F578, sub_1DAC3D120, &type metadata for SDSMetadata.Source.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D120();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v20 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v17[1] = v3[2];
    v19 = 1;
    sub_1DAC3D174();
    sub_1DAC3D218(&qword_1EE11FB88, sub_1DAC3D284);
    sub_1DACBA074();
    v14 = v3[3];
    v15 = v3[4];
    v18 = 2;
    sub_1DACBA024();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAC3AD60()
{
  v1 = v0;
  v2 = *v0;
  v4 = v1[1];
  v3 = v1[2];
  sub_1DACBA284();
  sub_1DACB9404();
  if (!v3)
  {
    sub_1DACBA2A4();
    if (v1[4])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DACBA2A4();
    return sub_1DACBA2C4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(v7, v3);
  if (!v1[4])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = v1[3];
  sub_1DACBA2A4();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3AE20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x736C72556F676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6C7255656D6F68;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x736C72556F676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6C7255656D6F68;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3AF1C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3AFB8()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC3B040()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3B0D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC3C264();
  *a2 = result;
  return result;
}

void sub_1DAC3B108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x736C72556F676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6C7255656D6F68;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC3B160()
{
  v1 = 0x736C72556F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C7255656D6F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DAC3B1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC3C264();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC3B1DC(uint64_t a1)
{
  v2 = sub_1DAC3D120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3B218(uint64_t a1)
{
  v2 = sub_1DAC3D120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAC3B254@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC3C2B0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DAC3B2B8(void *a1)
{
  v3 = v1;
  sub_1DAC3D380(0, &qword_1EE11F580, sub_1DAC3D2D8, &type metadata for SDSMetadata.SourceLogo.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D2D8();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v21 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v20 = *(v3 + 16);
    v19 = 1;
    sub_1DAC3D3E8();
    sub_1DACBA0E4();
    v14 = v3[3];
    v15 = *(v3 + 32);
    v18 = 2;
    sub_1DACBA044();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAC3B490()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB9404();
  *(v0 + 16);
  *(v0 + 16);
  sub_1DACB9404();

  if (*(v0 + 32) == 1)
  {
    return sub_1DACBA2A4();
  }

  v4 = v0[3];
  sub_1DACBA2A4();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1E1277D90](v5);
}

uint64_t sub_1DAC3B578(void *a1)
{
  v2 = v1;
  sub_1DAC3D380(0, &qword_1EE11F588, sub_1DAC3CC2C, &type metadata for SDSMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3CC2C();
  sub_1DACBA304();
  v11 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v11;
  v14 = *(v2 + 32);
  sub_1DAC3CCD4();
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAC3B700()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1DACBA284();
  sub_1DACB9404();
  if (!v4)
  {
    sub_1DACBA2A4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DACBA2A4();
    return sub_1DACBA2C4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(v7, v4);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DACBA2A4();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3B7C8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3B880()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC3B924()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3B9D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC3C580();
  *a2 = result;
  return result;
}

void sub_1DAC3BA08(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1263681860;
  if (*v1 != 2)
  {
    v5 = 0x4554414C504D4554;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x544847494CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DAC3BA7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC3C5CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC3BAF8()
{
  v1 = 0x746E6169726176;
  if (*v0 != 1)
  {
    v1 = 0x656E696C65736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DAC3BB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC3C6A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC3BB80(uint64_t a1)
{
  v2 = sub_1DAC3D2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3BBBC(uint64_t a1)
{
  v2 = sub_1DAC3D2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAC3BBF8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC3C7C0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DAC3BC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1DACBA174()) && (sub_1DAC3A6E0(v2, v5))
  {
    if (v4)
    {
      if (v7)
      {
        return 1;
      }
    }

    else
    {
      if (v3 == v6)
      {
        v10 = v7;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DAC3BCF8()
{
  sub_1DACBA284();
  sub_1DAC3B490();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3BD3C()
{
  sub_1DACBA284();
  sub_1DAC3B490();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC3BE10(uint64_t a1)
{
  v2 = sub_1DAC3CC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3BE4C(uint64_t a1)
{
  v2 = sub_1DAC3CC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAC3BE88@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC3CA50(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DAC3BEEC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  sub_1DACB9404();
  if (!v6)
  {
    sub_1DACBA2A4();
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_1DACBA2A4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(a1, v6);
  if (!v7)
  {
    return sub_1DACBA2A4();
  }

LABEL_3:
  sub_1DACBA2A4();

  return sub_1DACB9404();
}

uint64_t sub_1DAC3BFA4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1DACBA284();
  sub_1DACB9404();
  if (!v4)
  {
    sub_1DACBA2A4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DACBA2A4();
    return sub_1DACBA2C4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(v7, v4);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DACBA2A4();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3C05C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1277D70](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 16);
      v9 = *(v5 - 1);
      v10 = *v5;
      sub_1DACB71E4();
      sub_1DACB9404();
      sub_1DACB9404();

      if (v10)
      {
        sub_1DACBA2A4();
      }

      else
      {
        sub_1DACBA2A4();
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x1E1277D90](v11);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1DAC3C194(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a2[2];
    sub_1DACB71E4();
    v8 = sub_1DAC38114(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    return v10 && (a1[3] == a2[3] && v9 == v10 || (sub_1DACBA174() & 1) != 0);
  }

  return !v10;
}

uint64_t sub_1DAC3C264()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC3C2B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1DAC3D380(0, &qword_1EE123D08, sub_1DAC3D120, &type metadata for SDSMetadata.Source.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D120();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v24;
  v28 = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v23 = v13;
  sub_1DAC3D174();
  v27 = 1;
  sub_1DAC3D218(&qword_1EE123F98, sub_1DAC3D1C4);
  sub_1DACB9F84();
  v22 = v25;
  v26 = 2;
  v16 = sub_1DACB9F34();
  v17 = v9;
  v19 = v18;
  (*(v11 + 8))(v17, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v22;
  *v12 = v23;
  v12[1] = v15;
  v12[2] = v21;
  v12[3] = v16;
  v12[4] = v19;
  return result;
}

uint64_t sub_1DAC3C580()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DAC3C5CC(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACBA2D4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1DACBA184();
    LODWORD(v4) = sub_1DAC3C580();
    __swift_destroy_boxed_opaque_existential_1(v6);
    if (v4 == 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = v4;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1DAC3C6A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAC3C7C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1DAC3D380(0, &qword_1EE123D10, sub_1DAC3D2D8, &type metadata for SDSMetadata.SourceLogo.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D2D8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v23;
  v28 = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v16 = v13;
  v26 = 1;
  sub_1DAC3D32C();
  sub_1DACB9FE4();
  v24 = v27;
  v25 = 2;
  v17 = sub_1DACB9F54();
  v18 = v9;
  v20 = v19;
  (*(v11 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v16;
  *(v12 + 8) = v15;
  *(v12 + 16) = v24;
  *(v12 + 24) = v17;
  *(v12 + 32) = v20 & 1;
  return result;
}

uint64_t sub_1DAC3CA50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1DAC3D380(0, &qword_1EE123D18, sub_1DAC3CC2C, &type metadata for SDSMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3CC2C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v20;
  sub_1DAC3CC80();
  sub_1DACB9FE4();
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  v16 = v17;
  v12 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1DAC3CC2C()
{
  result = qword_1EE1251B0;
  if (!qword_1EE1251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1251B0);
  }

  return result;
}

unint64_t sub_1DAC3CC80()
{
  result = qword_1EE125158;
  if (!qword_1EE125158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125158);
  }

  return result;
}

unint64_t sub_1DAC3CCD4()
{
  result = qword_1EE123798;
  if (!qword_1EE123798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123798);
  }

  return result;
}

uint64_t sub_1DAC3CDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAC3CE40()
{
  result = qword_1EE1252B0;
  if (!qword_1EE1252B0)
  {
    sub_1DACB7AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1252B0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAC3CEBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAC3CF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAC3CF6C()
{
  result = qword_1ECBE9370;
  if (!qword_1ECBE9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9370);
  }

  return result;
}

unint64_t sub_1DAC3CFC4()
{
  result = qword_1ECBE9378;
  if (!qword_1ECBE9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9378);
  }

  return result;
}

unint64_t sub_1DAC3D01C()
{
  result = qword_1ECBE9380;
  if (!qword_1ECBE9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9380);
  }

  return result;
}

unint64_t sub_1DAC3D074()
{
  result = qword_1EE1251A0;
  if (!qword_1EE1251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1251A0);
  }

  return result;
}

unint64_t sub_1DAC3D0CC()
{
  result = qword_1EE1251A8;
  if (!qword_1EE1251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1251A8);
  }

  return result;
}

unint64_t sub_1DAC3D120()
{
  result = qword_1EE125170;
  if (!qword_1EE125170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125170);
  }

  return result;
}

void sub_1DAC3D174()
{
  if (!qword_1EE123FA0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123FA0);
    }
  }
}

unint64_t sub_1DAC3D1C4()
{
  result = qword_1EE125178;
  if (!qword_1EE125178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125178);
  }

  return result;
}

uint64_t sub_1DAC3D218(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAC3D174();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC3D284()
{
  result = qword_1EE1237A8;
  if (!qword_1EE1237A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237A8);
  }

  return result;
}

unint64_t sub_1DAC3D2D8()
{
  result = qword_1EE125198;
  if (!qword_1EE125198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125198);
  }

  return result;
}

unint64_t sub_1DAC3D32C()
{
  result = qword_1EE125180;
  if (!qword_1EE125180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125180);
  }

  return result;
}

void sub_1DAC3D380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC3D3E8()
{
  result = qword_1EE1237B8;
  if (!qword_1EE1237B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237B8);
  }

  return result;
}

unint64_t sub_1DAC3D470()
{
  result = qword_1ECBE9388;
  if (!qword_1ECBE9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9388);
  }

  return result;
}

unint64_t sub_1DAC3D4C8()
{
  result = qword_1ECBE9390;
  if (!qword_1ECBE9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9390);
  }

  return result;
}

unint64_t sub_1DAC3D520()
{
  result = qword_1ECBE9398;
  if (!qword_1ECBE9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9398);
  }

  return result;
}

unint64_t sub_1DAC3D578()
{
  result = qword_1EE125188;
  if (!qword_1EE125188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125188);
  }

  return result;
}

unint64_t sub_1DAC3D5D0()
{
  result = qword_1EE125190;
  if (!qword_1EE125190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125190);
  }

  return result;
}

unint64_t sub_1DAC3D628()
{
  result = qword_1EE125160;
  if (!qword_1EE125160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125160);
  }

  return result;
}

unint64_t sub_1DAC3D680()
{
  result = qword_1EE125168;
  if (!qword_1EE125168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125168);
  }

  return result;
}

unint64_t sub_1DAC3D6D4()
{
  result = qword_1EE1237B0;
  if (!qword_1EE1237B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237B0);
  }

  return result;
}

uint64_t sub_1DAC3D740()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3D8A0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3D9F8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DB54()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DC78()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DDAC()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DE9C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DFE4()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E0EC()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E210()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E328()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t CohortConfig.dilutionFactor.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CohortConfig.favoritedBoost.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CohortConfig.globalWeight.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t CohortConfig.paddingFactor.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t CohortConfig.postBaselineCurvature.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t CohortConfig.preBaselineCurvature.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t CohortConfig.userBaseline.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_1DAC3E4D8()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC3E628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC3F710();
  *a2 = result;
  return result;
}

void sub_1DAC3E658(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00726F74636146;
  v4 = 0x6E6F6974756C6964;
  v5 = 0x80000001DACE27C0;
  v6 = 0x6573614272657375;
  if (v2 == 5)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xEC000000656E696CLL;
  }

  v7 = 0xED0000726F746361;
  v8 = 0xD000000000000015;
  if (v2 == 3)
  {
    v8 = 0x46676E6964646170;
  }

  else
  {
    v7 = 0x80000001DACE27A0;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xEE0074736F6F4264;
  v10 = 0x657469726F766166;
  if (v2 != 1)
  {
    v10 = 0x65576C61626F6C67;
    v9 = 0xEC00000074686769;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1DAC3E770()
{
  v1 = *v0;
  v2 = 0x6E6F6974756C6964;
  v3 = 0x6573614272657375;
  if (v1 == 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 0x46676E6964646170;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x657469726F766166;
  if (v1 != 1)
  {
    v5 = 0x65576C61626F6C67;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1DAC3E884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC3F710();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC3E8AC(uint64_t a1)
{
  v2 = sub_1DAC3ED60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3E8E8(uint64_t a1)
{
  v2 = sub_1DAC3ED60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CohortConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC3F060(0, &qword_1EE123D00, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3ED60();
  sub_1DACBA2F4();
  if (!v2)
  {
    v58[0] = 0;
    v12 = sub_1DACB9F54();
    v14 = v13;
    v15 = v12;
    v58[0] = 1;
    v16 = sub_1DACB9F54();
    v50 = v17;
    v51 = v16;
    v58[0] = 2;
    v18 = sub_1DACB9F54();
    v48 = v19;
    v49 = v18;
    v58[0] = 3;
    v20 = sub_1DACB9F54();
    v46 = v21;
    v47 = v20;
    v58[0] = 4;
    v22 = sub_1DACB9F54();
    v44 = v23;
    v45 = v22;
    v58[0] = 5;
    v24 = sub_1DACB9F54();
    v42 = v25;
    v43 = v24;
    v59 = 6;
    v26 = sub_1DACB9F54();
    v29 = v28;
    v30 = *(v7 + 8);
    v41 = v26;
    v30(v10, v6);
    v58[0] = v14 & 1;
    LOBYTE(v57[0]) = v50 & 1;
    LOBYTE(v56[0]) = v48 & 1;
    LOBYTE(v55[0]) = v46 & 1;
    LOBYTE(v54[0]) = v44 & 1;
    LOBYTE(v53[0]) = v42 & 1;
    v52 = v29 & 1;
    v31 = v50 & 1;
    v32 = v48 & 1;
    v33 = v46 & 1;
    v34 = v44 & 1;
    v35 = v42 & 1;
    *a2 = v15;
    *(a2 + 8) = v14 & 1;
    *(a2 + 9) = *v58;
    *(a2 + 12) = *&v58[3];
    *(a2 + 16) = v51;
    *(a2 + 24) = v31;
    *(a2 + 25) = v57[0];
    *(a2 + 28) = *(v57 + 3);
    *(a2 + 32) = v49;
    *(a2 + 40) = v32;
    v36 = v56[0];
    *(a2 + 44) = *(v56 + 3);
    *(a2 + 41) = v36;
    *(a2 + 48) = v47;
    *(a2 + 56) = v33;
    v37 = v55[0];
    *(a2 + 60) = *(v55 + 3);
    *(a2 + 57) = v37;
    *(a2 + 64) = v45;
    *(a2 + 72) = v34;
    v38 = v54[0];
    *(a2 + 76) = *(v54 + 3);
    *(a2 + 73) = v38;
    *(a2 + 80) = v43;
    *(a2 + 88) = v35;
    v39 = v53[0];
    *(a2 + 92) = *(v53 + 3);
    *(a2 + 89) = v39;
    *(a2 + 96) = v41;
    *(a2 + 104) = v29 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC3ED60()
{
  result = qword_1EE125138;
  if (!qword_1EE125138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125138);
  }

  return result;
}

uint64_t CohortConfig.encode(to:)(void *a1)
{
  sub_1DAC3F060(0, &qword_1EE123C38, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v28 = v1[2];
  v27 = *(v1 + 24);
  v26 = v1[4];
  v25 = *(v1 + 40);
  v24 = v1[6];
  v23 = *(v1 + 56);
  v20 = v1[8];
  v21 = *(v1 + 72);
  v18 = v1[10];
  v19 = *(v1 + 88);
  v22 = v1[12];
  v10 = *(v1 + 104);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_1DAC3ED60();
  sub_1DACBA304();
  v36 = 0;
  v16 = v29;
  sub_1DACBA044();
  if (!v16)
  {
    LODWORD(v29) = v10;
    v35 = 1;
    sub_1DACBA044();
    v34 = 2;
    sub_1DACBA044();
    v33 = 3;
    sub_1DACBA044();
    v32 = 4;
    sub_1DACBA044();
    v31 = 5;
    sub_1DACBA044();
    v30 = 6;
    sub_1DACBA044();
  }

  return (*(v4 + 8))(v7, v15);
}

void sub_1DAC3F060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC3ED60();
    v7 = a3(a1, &type metadata for CohortConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t CohortConfig.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v28 = v1;
  v29 = v0[4];
  v30 = *(v0 + 40);
  v3 = v0[6];
  v4 = *(v0 + 56);
  v5 = v0[8];
  v6 = *(v0 + 72);
  v7 = v0[10];
  v8 = *(v0 + 88);
  v9 = v0[12];
  v10 = *(v0 + 104);
  if (*(v0 + 8) == 1)
  {
    sub_1DACBA2A4();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_31:
    sub_1DACBA2A4();
    if (!v30)
    {
      goto LABEL_7;
    }

LABEL_32:
    sub_1DACBA2A4();
    if (!v4)
    {
      goto LABEL_11;
    }

LABEL_33:
    sub_1DACBA2A4();
    if (!v6)
    {
      goto LABEL_15;
    }

LABEL_34:
    sub_1DACBA2A4();
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

  v27 = *(v0 + 56);
  v18 = v0[6];
  v19 = *(v0 + 72);
  v20 = v0[8];
  v21 = *(v0 + 88);
  v22 = v0[10];
  v23 = *(v0 + 104);
  v24 = v0[12];
  v25 = *v0;
  sub_1DACBA2A4();
  if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v9 = v24;
  v10 = v23;
  v7 = v22;
  v8 = v21;
  v5 = v20;
  v6 = v19;
  v3 = v18;
  v4 = v27;
  MEMORY[0x1E1277D90](v26);
  if (v2)
  {
    goto LABEL_31;
  }

LABEL_3:
  sub_1DACBA2A4();
  if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v28;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E1277D90](v11);
  if (v30)
  {
    goto LABEL_32;
  }

LABEL_7:
  sub_1DACBA2A4();
  if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v29;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E1277D90](v12);
  if (v4)
  {
    goto LABEL_33;
  }

LABEL_11:
  sub_1DACBA2A4();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E1277D90](v13);
  if (v6)
  {
    goto LABEL_34;
  }

LABEL_15:
  sub_1DACBA2A4();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1E1277D90](v14);
  if (!v8)
  {
LABEL_19:
    sub_1DACBA2A4();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1E1277D90](v15);
    if (!v10)
    {
      goto LABEL_23;
    }

    return sub_1DACBA2A4();
  }

LABEL_35:
  sub_1DACBA2A4();
  if (v10)
  {
    return sub_1DACBA2A4();
  }

LABEL_23:
  sub_1DACBA2A4();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  return MEMORY[0x1E1277D90](v16);
}

uint64_t CohortConfig.hashValue.getter()
{
  sub_1DACBA284();
  CohortConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3F318()
{
  sub_1DACBA284();
  CohortConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3F35C()
{
  sub_1DACBA284();
  CohortConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t _s10StocksCore12CohortConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a2 + 88);
  v15 = *(a2 + 104);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v17 = *(a2 + 8);
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v18 = *(a2 + 24);
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v19 = *(a2 + 40);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v8 == *(a2 + 64))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (v13 & 1 | ((v14 & 1) == 0))
    {
      return v14 & v15;
    }
  }

  else
  {
    if (v10 == *(a2 + 80))
    {
      v22 = *(a2 + 88);
    }

    else
    {
      v22 = 1;
    }

    if ((v22 | v13))
    {
      return (v22 ^ 1) & v15;
    }
  }

  return (v12 == *(a2 + 96)) & ~v15;
}

unint64_t sub_1DAC3F500()
{
  result = qword_1ECBE93A0;
  if (!qword_1ECBE93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93A0);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DAC3F580(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC3F5A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 105) = v3;
  return result;
}

unint64_t sub_1DAC3F60C()
{
  result = qword_1ECBE93A8;
  if (!qword_1ECBE93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93A8);
  }

  return result;
}

unint64_t sub_1DAC3F664()
{
  result = qword_1EE125128;
  if (!qword_1EE125128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125128);
  }

  return result;
}

unint64_t sub_1DAC3F6BC()
{
  result = qword_1EE125130;
  if (!qword_1EE125130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125130);
  }

  return result;
}

uint64_t sub_1DAC3F710()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC3F760(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65676E6168637865;
    v7 = 0x616E5F74726F6873;
    if (a1 != 10)
    {
      v7 = 0x7079745F61746164;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x5F746B6D5F657270;
    v9 = 0x5F746B6D5F657270;
    if (a1 != 7)
    {
      v9 = 0x79636E6572727563;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F626D79735F6469;
    v2 = 0x635F74656B72616DLL;
    v3 = 0x6B6D5F7265746661;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6563697270;
    if (a1 != 1)
    {
      v4 = 0x65676E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAC3F90C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAC3F760(*a1);
  v5 = v4;
  if (v3 == sub_1DAC3F760(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC3F994()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC3F760(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3F9F8()
{
  sub_1DAC3F760(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAC3FA4C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC3F760(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3FAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC42514();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC3FADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAC3F760(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC3FB24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC42514();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC3FB4C(uint64_t a1)
{
  v2 = sub_1DAC446B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3FB88(uint64_t a1)
{
  v2 = sub_1DAC446B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC3FBC4()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC3FC14(unsigned __int8 a1)
{
  v1 = 7823730;
  v2 = 7630182;
  if (a1 != 2)
  {
    v2 = 0x756F735F61746164;
  }

  if (a1)
  {
    v1 = 0x6E69727453776172;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_1DAC3FC8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC42560(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x1D8uLL);
  }

  return result;
}

uint64_t sub_1DAC3FCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC3FD4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DAC3FDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC3FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC3FE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC3FBC4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC3FEC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAC3FC14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC3FEFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC3FC10();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC3FF24@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DAC42F28();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC3FF50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC3FFA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC3FFF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = sub_1DACB9AF4();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v51 = v45 - v10;
  v52 = *(a2 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for YahooMultiQuoteResponse.Value.CodingKeys();
  swift_getWitnessTable();
  v13 = sub_1DACBA004();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - v15;
  v53 = a3;
  v17 = type metadata accessor for YahooMultiQuoteResponse.Value();
  v46 = *(v17 - 1);
  v18 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v45 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = v16;
  v22 = v57;
  sub_1DACBA2F4();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = 0;
  v23 = sub_1DACB9FA4();
  v26 = v25;
  v27 = &v20[v17[9]];
  *v27 = v23;
  v27[1] = v25;
  v59 = 2;
  v28 = v23;
  v29 = sub_1DACB9FA4();
  v45[0] = v26;
  v45[1] = v28;
  v30 = &v20[v17[10]];
  *v30 = v29;
  v30[1] = v31;
  v58 = 3;
  v57 = 0;
  v32 = sub_1DACB9FA4();
  v33 = &v20[v17[11]];
  *v33 = v32;
  v33[1] = v34;
  sub_1DACB71E4();
  v35 = v51;
  sub_1DACBA144();
  v36 = v35;
  v37 = v52;
  if ((*(v52 + 48))(v36, 1, a2) == 1)
  {
    (*(v48 + 8))(v36, v49);
    type metadata accessor for YahooMultiQuoteResponse.Value.ValueError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v54 + 8))(v56, v55);
    v38 = v57;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = *&v20[v17[9] + 8];

    if (!v38)
    {
      v40 = *&v20[v17[10] + 8];
    }

    v41 = *&v20[v17[11] + 8];
  }

  else
  {
    (*(v54 + 8))(v56, v55);
    v42 = *(v37 + 32);
    v43 = v47;
    v42(v47, v36, a2);
    v42(v20, v43, a2);
    v44 = v46;
    (*(v46 + 16))(v50, v20, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v44 + 8))(v20, v17);
  }
}

uint64_t sub_1DAC40580(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000015;
    if (a1 == 8)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0x435F54454B52414DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x5F52414C55474552;
    v2 = 0xD000000000000014;
    if (a1 != 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x4B52414D5F455250;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAC40710(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAC40580(*a1);
  v5 = v4;
  if (v3 == sub_1DAC40580(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC40798()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC40580(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC407FC()
{
  sub_1DAC40580(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAC40850()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC40580(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC408B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC42F30();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC408E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAC40580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC40918()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC409F4()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC40ABC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC40B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC42F7C();
  *a2 = result;
  return result;
}

void sub_1DAC40BC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0xEF6C61767265746ELL;
  v8 = 0x695F6D6165727473;
  if (v2 != 3)
  {
    v8 = 0x65706F5F7478656ELL;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAC40C5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x737574617473;
  v4 = 0x695F6D6165727473;
  if (v1 != 3)
  {
    v4 = 0x65706F5F7478656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAC40CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC42F7C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC40D18(uint64_t a1)
{
  v2 = sub_1DAC4465C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC40D54(uint64_t a1)
{
  v2 = sub_1DAC4465C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DAC40D90@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC42FC8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1DAC40DE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1701667182;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1701667182;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAC40E78()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC40EE8()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC40F44()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC40FB0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DAC41010(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1701667182;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAC4103C()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DAC41064@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAC410C8(uint64_t a1)
{
  v2 = sub_1DAC44608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41104(uint64_t a1)
{
  v2 = sub_1DAC44608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41158()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC41270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC433D4();
  *a2 = result;
  return result;
}

void sub_1DAC412A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4E574F4E4B4E55;
  if (v2 == 5)
  {
    v4 = 0xD000000000000025;
    v3 = 0x80000001DACE2A50;
  }

  v5 = 0x80000001DACE29F0;
  if (v2 == 3)
  {
    v6 = 0xD000000000000026;
  }

  else
  {
    v6 = 0xD000000000000025;
  }

  if (v2 != 3)
  {
    v5 = 0x80000001DACE2A20;
  }

  if (*v1 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001DACE2960;
  v8 = 0xD000000000000020;
  v9 = 0x80000001DACE2990;
  if (v2 == 1)
  {
    v10 = 0xD000000000000026;
  }

  else
  {
    v10 = 0xD000000000000022;
  }

  if (v2 != 1)
  {
    v9 = 0x80000001DACE29C0;
  }

  if (*v1)
  {
    v8 = v10;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DAC41380@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DAC43420(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DAC413BC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAC41414(uint64_t a1)
{
  v2 = sub_1DAC450A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41450(uint64_t a1)
{
  v2 = sub_1DAC450A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC4148C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC4362C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DAC414BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676E6168637865;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x756F735F61746164;
    v4 = 0xEC00000073656372;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7365746F7571;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x65676E6168637865;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x756F735F61746164;
    v8 = 0xEC00000073656372;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7365746F7571;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC415D4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC41680()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC41718()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC417C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC437E4();
  *a2 = result;
  return result;
}

void sub_1DAC417F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x65676E6168637865;
  if (v2 != 1)
  {
    v5 = 0x756F735F61746164;
    v4 = 0xEC00000073656372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365746F7571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC41858()
{
  v1 = 0x65676E6168637865;
  if (*v0 != 1)
  {
    v1 = 0x756F735F61746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365746F7571;
  }
}

uint64_t sub_1DAC418BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC437E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC418E4(uint64_t a1)
{
  v2 = sub_1DAC453C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41920(uint64_t a1)
{
  v2 = sub_1DAC453C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC4195C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAC43830(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DAC41998@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAC419F0(uint64_t a1)
{
  v2 = sub_1DAC45660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41A2C(uint64_t a1)
{
  v2 = sub_1DAC45660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41A68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAC43AC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC41B1C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAC41B74(uint64_t a1)
{
  v2 = sub_1DAC45708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41BB0(uint64_t a1)
{
  v2 = sub_1DAC45708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41BEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAC43D7C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC41CC8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAC41D20(uint64_t a1)
{
  v2 = sub_1DAC4589C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41D5C(uint64_t a1)
{
  v2 = sub_1DAC4589C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41D98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAC44098(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC41DC4(uint64_t a1)
{
  v2 = sub_1DAC44560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41E00(uint64_t a1)
{
  v2 = sub_1DAC44560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC41E3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC443A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DAC41E6C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  sub_1DACB71E4();
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_20:

    return v5;
  }

  v3 = 0;
  v4 = (v1 + 32);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v14 = v4[2];
    v13 = v4[3];
    v15 = *(v4 + 8);
    v38 = v4[1];
    v16 = *v4;
    v41 = v15;
    v40 = v13;
    v37 = v16;
    v39 = v14;
    v17 = v38;
    sub_1DAB6A0AC(&v37, v35);
    sub_1DAB6A0AC(&v37, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1DAA4BF3C(v17, *(&v17 + 1));
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v5[3] < v24)
    {
      sub_1DAB62BD0(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1DAA4BF3C(v17, *(&v17 + 1));
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v33 = v19;
    sub_1DAB6705C();
    v19 = v33;
    if (v25)
    {
LABEL_6:
      v6 = v5[7] + 72 * v19;
      v35[0] = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v36 = *(v6 + 64);
      v35[2] = v8;
      v35[3] = v9;
      v35[1] = v7;
      v10 = v40;
      v12 = v38;
      v11 = v39;
      *(v6 + 64) = v41;
      *(v6 + 32) = v11;
      *(v6 + 48) = v10;
      *(v6 + 16) = v12;
      *v6 = v37;
      sub_1DAC422C8(v35);
      sub_1DAC422C8(&v37);
      goto LABEL_7;
    }

LABEL_15:
    v5[(v19 >> 6) + 8] |= 1 << v19;
    *(v5[6] + 16 * v19) = v17;
    v27 = v5[7] + 72 * v19;
    v28 = v41;
    v29 = v40;
    v30 = v39;
    *(v27 + 16) = v38;
    *(v27 + 32) = v30;
    *(v27 + 48) = v29;
    *(v27 + 64) = v28;
    *v27 = v37;
    sub_1DACB71E4();
    sub_1DAC422C8(&v37);
    v31 = v5[2];
    v23 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v23)
    {
      goto LABEL_23;
    }

    v5[2] = v32;
LABEL_7:
    ++v3;
    v4 = (v4 + 72);
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC420E0(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  sub_1DACB71E4();
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_20:

    return v5;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v9 = *(v4 - 2);
    v8 = *(v4 - 1);
    v10 = *v4;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1DAA4BF3C(v9, v8);
    v14 = v5[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_22;
    }

    v18 = v13;
    if (v5[3] < v17)
    {
      sub_1DAB62F30(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1DAA4BF3C(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v18)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v24 = v12;
    sub_1DAB67214();
    v12 = v24;
    if (v18)
    {
LABEL_6:
      v6 = v5[7] + 24 * v12;
      v7 = *(v6 + 8);
      *v6 = v9;
      *(v6 + 8) = v8;
      *(v6 + 16) = v10;

      goto LABEL_7;
    }

LABEL_15:
    v5[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v5[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v5[7] + 24 * v12;
    *v21 = v9;
    *(v21 + 8) = v8;
    *(v21 + 16) = v10;
    v22 = v5[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_23;
    }

    v5[2] = v23;
LABEL_7:
    ++v3;
    v4 += 24;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DAC4232C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAC42374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore23YahooMultiQuoteResponseV5ValueVy_SdGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAC423F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAC4243C(uint64_t result, int a2, int a3)
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
      *(result + 472) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC42514()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

void *sub_1DAC42560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  sub_1DAC4583C(0, &qword_1EE126D20, sub_1DAC446B0);
  v5 = v4;
  v148 = *(v4 - 8);
  v6 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC446B0();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v148;
  LOBYTE(v89) = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v86 = v11;
  LOBYTE(v89) = 8;
  v14 = sub_1DACB9F34();
  v85 = v15;
  v82 = v14;
  LOBYTE(v89) = 9;
  v16 = sub_1DACB9F34();
  v84 = v17;
  v81 = v16;
  LOBYTE(v89) = 10;
  v18 = sub_1DACB9F34();
  v83 = v19;
  v80 = v18;
  LOBYTE(v89) = 11;
  v20 = sub_1DACB9F34();
  v78 = v21;
  v79 = v20;
  sub_1DAC44704();
  LOBYTE(v88[0]) = 1;
  sub_1DAC44774();
  sub_1DACB9F84();
  v65 = v89;
  v36 = v90;
  v76 = v92;
  v77 = v91;
  v74 = v94;
  v75 = v93;
  v73 = v95;
  LOBYTE(v88[0]) = 2;
  sub_1DACB9F84();
  v71 = v90;
  v72 = v89;
  v69 = v92;
  v70 = v91;
  v67 = v94;
  v68 = v93;
  v66 = v95;
  LOBYTE(v88[0]) = 3;
  sub_1DACB9F84();
  v63 = v90;
  v64 = v89;
  v61 = v92;
  v62 = v91;
  v59 = v94;
  v60 = v93;
  v58 = v95;
  LOBYTE(v88[0]) = 4;
  sub_1DACB9F84();
  v56 = v90;
  v57 = v89;
  v54 = v92;
  v55 = v91;
  v52 = v94;
  v53 = v93;
  v51 = v95;
  LOBYTE(v88[0]) = 5;
  sub_1DACB9F84();
  v49 = v90;
  v50 = v89;
  v47 = v92;
  v48 = v91;
  v45 = v94;
  v46 = v93;
  v44 = v95;
  LOBYTE(v88[0]) = 6;
  sub_1DACB9F84();
  v42 = v90;
  v43 = v89;
  v40 = v92;
  v41 = v91;
  v38 = v94;
  v39 = v93;
  v37 = v95;
  LOBYTE(v88[0]) = 7;
  sub_1DACB9F84();
  v22 = v85;
  (*(v10 + 8))(v8, v5);
  v30 = v89;
  v31 = v90;
  v32 = v91;
  v33 = v92;
  v34 = v93;
  v35 = v94;
  v148 = v95;
  v23 = v86;
  v88[0] = v86;
  v88[1] = v13;
  v24 = v36;
  v88[2] = v65;
  v88[3] = v36;
  v88[4] = v77;
  v88[5] = v76;
  v88[6] = v75;
  v88[7] = v74;
  v88[8] = v73;
  v88[9] = v72;
  v88[10] = v71;
  v88[11] = v70;
  v88[12] = v69;
  v88[13] = v68;
  v88[14] = v67;
  v88[15] = v66;
  v88[16] = v64;
  v88[17] = v63;
  v88[18] = v62;
  v88[19] = v61;
  v88[20] = v60;
  v88[21] = v59;
  v88[22] = v58;
  v88[23] = v57;
  v88[24] = v56;
  v88[25] = v55;
  v88[26] = v54;
  v88[27] = v53;
  v88[28] = v52;
  v88[29] = v51;
  v88[30] = v50;
  v88[31] = v49;
  v88[32] = v48;
  v88[33] = v47;
  v88[34] = v46;
  v88[35] = v45;
  v88[36] = v44;
  v88[37] = v43;
  v88[38] = v42;
  v88[39] = v41;
  v88[40] = v40;
  v88[41] = v39;
  v88[42] = v38;
  v88[43] = v37;
  v88[44] = v89;
  v88[45] = v90;
  v88[46] = v91;
  v88[47] = v92;
  v88[48] = v93;
  v88[49] = v94;
  v88[50] = v95;
  v25 = v82;
  v88[51] = v82;
  v88[52] = v22;
  v26 = v80;
  v27 = v81;
  v88[53] = v81;
  v88[54] = v84;
  v88[55] = v80;
  v88[56] = v83;
  v88[57] = v79;
  v88[58] = v78;
  sub_1DAC2EB60(v88, &v89);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v89 = v23;
  v90 = v13;
  v91 = v65;
  v92 = v24;
  v93 = v77;
  v94 = v76;
  v95 = v75;
  v96 = v74;
  v97 = v73;
  v98 = v72;
  v99 = v71;
  v100 = v70;
  v101 = v69;
  v102 = v68;
  v103 = v67;
  v104 = v66;
  v105 = v64;
  v106 = v63;
  v107 = v62;
  v108 = v61;
  v109 = v60;
  v110 = v59;
  v111 = v58;
  v112 = v57;
  v113 = v56;
  v114 = v55;
  v115 = v54;
  v116 = v53;
  v117 = v52;
  v118 = v51;
  v119 = v50;
  v120 = v49;
  v121 = v48;
  v122 = v47;
  v123 = v46;
  v124 = v45;
  v125 = v44;
  v126 = v43;
  v127 = v42;
  v128 = v41;
  v129 = v40;
  v130 = v39;
  v131 = v38;
  v132 = v37;
  v133 = v30;
  v134 = v31;
  v135 = v32;
  v136 = v33;
  v137 = v34;
  v138 = v35;
  v139 = v148;
  v140 = v25;
  v141 = v85;
  v142 = v27;
  v143 = v84;
  v144 = v26;
  v145 = v83;
  v146 = v79;
  v147 = v78;
  sub_1DAC2EBBC(&v89);
  return memcpy(v87, v88, 0x1D8uLL);
}

uint64_t sub_1DAC42F30()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC42F7C()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC42FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC4583C(0, &qword_1EE126D10, sub_1DAC4465C);
  v50 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC4465C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  LOBYTE(v42[0]) = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  LOBYTE(v42[0]) = 1;
  v16 = sub_1DACB9FA4();
  v36 = v17;
  v33 = v16;
  LOBYTE(v42[0]) = 3;
  v32 = sub_1DACB9F34();
  v35 = v18;
  LOBYTE(v42[0]) = 4;
  v31 = sub_1DACB9F34();
  v34 = v19;
  LOBYTE(v42[0]) = 2;
  sub_1DACB9FA4();
  v20 = sub_1DAC42F30();
  (*(v11 + 8))(v9, v50);
  if (v20 == 10)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  LODWORD(v50) = v21;
  *&v37 = v13;
  *(&v37 + 1) = v15;
  v22 = v33;
  v30 = v15;
  v24 = v35;
  v23 = v36;
  *&v38 = v33;
  *(&v38 + 1) = v36;
  LOBYTE(v39) = v21;
  *(&v39 + 1) = v49[0];
  DWORD1(v39) = *(v49 + 3);
  v25 = v32;
  *(&v39 + 1) = v32;
  *&v40 = v35;
  v26 = v34;
  *(&v40 + 1) = v31;
  v41 = v34;
  sub_1DAB6A0AC(&v37, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v13;
  v42[1] = v30;
  v42[2] = v22;
  v42[3] = v23;
  v43 = v50;
  *v44 = v49[0];
  *&v44[3] = *(v49 + 3);
  v45 = v25;
  v46 = v24;
  v47 = v31;
  v48 = v26;
  result = sub_1DAC422C8(v42);
  v27 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v27;
  *(a2 + 64) = v41;
  v28 = v38;
  *a2 = v37;
  *(a2 + 16) = v28;
  return result;
}

uint64_t sub_1DAC433D4()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC43420(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126D00, sub_1DAC44608);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC44608();
  sub_1DACBA2F4();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1DACB9FA4();
    v12 = 1;
    sub_1DACB9FA4();
    sub_1DAC433D4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DAC4362C(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126E00, sub_1DAC450A8);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC450A8();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC450FC();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DAC437E4()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC43830(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126EA8, sub_1DAC453C8);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAC453C8();
  sub_1DACBA2F4();
  if (!v1)
  {
    v12 = 0;
    sub_1DAC4541C();
    sub_1DACB9F84();
    v9 = v13;
    v12 = 1;
    sub_1DAC45470();
    sub_1DACB9F84();
    v12 = 2;
    sub_1DAC454C4();
    sub_1DACB9F84();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DAC43AC4(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126EE0, sub_1DAC45660);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAC45660();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC45944(0, &qword_1EE126EF0, &type metadata for YahooMultiQuoteResponse.Quote, MEMORY[0x1E69E62F8]);
    sub_1DAC4575C(&qword_1EE126EF8, &qword_1EE126EF0, &type metadata for YahooMultiQuoteResponse.Quote, sub_1DAC456B4);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DAC43D7C(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126F08, sub_1DAC45708);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAC45708();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC45944(0, &qword_1EE126F18, &type metadata for YahooMultiQuoteResponse.Exchange, MEMORY[0x1E69E62F8]);
    sub_1DAC4575C(&qword_1EE126F20, &qword_1EE126F18, &type metadata for YahooMultiQuoteResponse.Exchange, sub_1DAC457E8);
    sub_1DACB9F84();
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DAC44098(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126F30, sub_1DAC4589C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAC4589C();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC45944(0, &qword_1EE126F40, &type metadata for YahooMultiQuoteResponse.DataSource, MEMORY[0x1E69E62F8]);
    sub_1DAC4575C(&qword_1EE126F48, &qword_1EE126F40, &type metadata for YahooMultiQuoteResponse.DataSource, sub_1DAC458F0);
    sub_1DACB9F84();
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DAC443A8(uint64_t *a1)
{
  sub_1DAC4583C(0, &qword_1EE126CE8, sub_1DAC44560);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC44560();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC445B4();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DAC44560()
{
  result = qword_1EE126CF0;
  if (!qword_1EE126CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126CF0);
  }

  return result;
}

unint64_t sub_1DAC445B4()
{
  result = qword_1EE126CF8;
  if (!qword_1EE126CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126CF8);
  }

  return result;
}

unint64_t sub_1DAC44608()
{
  result = qword_1EE126D08;
  if (!qword_1EE126D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126D08);
  }

  return result;
}

unint64_t sub_1DAC4465C()
{
  result = qword_1EE126D18;
  if (!qword_1EE126D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126D18);
  }

  return result;
}

unint64_t sub_1DAC446B0()
{
  result = qword_1EE126D28;
  if (!qword_1EE126D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126D28);
  }

  return result;
}

void sub_1DAC44704()
{
  if (!qword_1EE126D30)
  {
    v0 = type metadata accessor for YahooMultiQuoteResponse.Value();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126D30);
    }
  }
}

unint64_t sub_1DAC44774()
{
  result = qword_1EE126D38[0];
  if (!qword_1EE126D38[0])
  {
    sub_1DAC44704();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE126D38);
  }

  return result;
}

uint64_t sub_1DAC4482C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAC448A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1DAC449F4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1DAC44BDC()
{
  result = qword_1ECBE93B0;
  if (!qword_1ECBE93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93B0);
  }

  return result;
}

unint64_t sub_1DAC44C34()
{
  result = qword_1ECBE93B8;
  if (!qword_1ECBE93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93B8);
  }

  return result;
}

unint64_t sub_1DAC44C8C()
{
  result = qword_1ECBE93C0;
  if (!qword_1ECBE93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93C0);
  }

  return result;
}

unint64_t sub_1DAC44CE4()
{
  result = qword_1ECBE93C8;
  if (!qword_1ECBE93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93C8);
  }

  return result;
}

unint64_t sub_1DAC44D3C()
{
  result = qword_1ECBE93D0;
  if (!qword_1ECBE93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93D0);
  }

  return result;
}

unint64_t sub_1DAC44D94()
{
  result = qword_1ECBE93D8[0];
  if (!qword_1ECBE93D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE93D8);
  }

  return result;
}

unint64_t sub_1DAC44DEC()
{
  result = qword_1EE126DC0;
  if (!qword_1EE126DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DC0);
  }

  return result;
}

unint64_t sub_1DAC44E44()
{
  result = qword_1EE126DC8;
  if (!qword_1EE126DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DC8);
  }

  return result;
}

unint64_t sub_1DAC44E9C()
{
  result = qword_1EE126DD0;
  if (!qword_1EE126DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DD0);
  }

  return result;
}

unint64_t sub_1DAC44EF4()
{
  result = qword_1EE126DD8;
  if (!qword_1EE126DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DD8);
  }

  return result;
}

unint64_t sub_1DAC44F4C()
{
  result = qword_1EE126DE0;
  if (!qword_1EE126DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DE0);
  }

  return result;
}

unint64_t sub_1DAC44FA4()
{
  result = qword_1EE126DE8;
  if (!qword_1EE126DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DE8);
  }

  return result;
}

unint64_t sub_1DAC44FFC()
{
  result = qword_1EE126DF0;
  if (!qword_1EE126DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DF0);
  }

  return result;
}

unint64_t sub_1DAC45054()
{
  result = qword_1EE126DF8;
  if (!qword_1EE126DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DF8);
  }

  return result;
}

unint64_t sub_1DAC450A8()
{
  result = qword_1EE126E08;
  if (!qword_1EE126E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126E08);
  }

  return result;
}

unint64_t sub_1DAC450FC()
{
  result = qword_1EE126E10[0];
  if (!qword_1EE126E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE126E10);
  }

  return result;
}

uint64_t sub_1DAC45190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DAC451EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DAC45254()
{
  result = qword_1ECBE9460;
  if (!qword_1ECBE9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9460);
  }

  return result;
}

unint64_t sub_1DAC4531C()
{
  result = qword_1EE126E98;
  if (!qword_1EE126E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126E98);
  }

  return result;
}

unint64_t sub_1DAC45374()
{
  result = qword_1EE126EA0;
  if (!qword_1EE126EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EA0);
  }

  return result;
}

unint64_t sub_1DAC453C8()
{
  result = qword_1EE126EB0;
  if (!qword_1EE126EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EB0);
  }

  return result;
}

unint64_t sub_1DAC4541C()
{
  result = qword_1EE126EB8;
  if (!qword_1EE126EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EB8);
  }

  return result;
}

unint64_t sub_1DAC45470()
{
  result = qword_1EE126EC0;
  if (!qword_1EE126EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EC0);
  }

  return result;
}

unint64_t sub_1DAC454C4()
{
  result = qword_1EE126EC8;
  if (!qword_1EE126EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EC8);
  }

  return result;
}

unint64_t sub_1DAC4555C()
{
  result = qword_1ECBE9468;
  if (!qword_1ECBE9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9468);
  }

  return result;
}

unint64_t sub_1DAC455B4()
{
  result = qword_1EE126ED0;
  if (!qword_1EE126ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126ED0);
  }

  return result;
}

unint64_t sub_1DAC4560C()
{
  result = qword_1EE126ED8;
  if (!qword_1EE126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126ED8);
  }

  return result;
}

unint64_t sub_1DAC45660()
{
  result = qword_1EE126EE8;
  if (!qword_1EE126EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EE8);
  }

  return result;
}

unint64_t sub_1DAC456B4()
{
  result = qword_1EE126F00;
  if (!qword_1EE126F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F00);
  }

  return result;
}

unint64_t sub_1DAC45708()
{
  result = qword_1EE126F10;
  if (!qword_1EE126F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F10);
  }

  return result;
}

uint64_t sub_1DAC4575C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAC45944(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC457E8()
{
  result = qword_1EE126F28;
  if (!qword_1EE126F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F28);
  }

  return result;
}

void sub_1DAC4583C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1DACBA004();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAC4589C()
{
  result = qword_1EE126F38;
  if (!qword_1EE126F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F38);
  }

  return result;
}

unint64_t sub_1DAC458F0()
{
  result = qword_1EE126F50;
  if (!qword_1EE126F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F50);
  }

  return result;
}

void sub_1DAC45944(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC459C8()
{
  result = qword_1ECBE9480;
  if (!qword_1ECBE9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9480);
  }

  return result;
}

unint64_t sub_1DAC45A20()
{
  result = qword_1ECBE9488;
  if (!qword_1ECBE9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9488);
  }

  return result;
}

unint64_t sub_1DAC45A78()
{
  result = qword_1ECBE9490;
  if (!qword_1ECBE9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9490);
  }

  return result;
}

unint64_t sub_1DAC45AD0()
{
  result = qword_1EE126F60;
  if (!qword_1EE126F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F60);
  }

  return result;
}

unint64_t sub_1DAC45B28()
{
  result = qword_1EE126F68;
  if (!qword_1EE126F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F68);
  }

  return result;
}

unint64_t sub_1DAC45B80()
{
  result = qword_1EE126F70;
  if (!qword_1EE126F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F70);
  }

  return result;
}

unint64_t sub_1DAC45BD8()
{
  result = qword_1EE126F78;
  if (!qword_1EE126F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F78);
  }

  return result;
}

unint64_t sub_1DAC45C30()
{
  result = qword_1EE126F80;
  if (!qword_1EE126F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F80);
  }

  return result;
}

unint64_t sub_1DAC45C88()
{
  result = qword_1EE126F88;
  if (!qword_1EE126F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F88);
  }

  return result;
}

uint64_t sub_1DAC45D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v51 = type metadata accessor for SymbolEntity();
  v49 = *(v51 - 8);
  v2 = *(v49 + 64);
  v3 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v43 - v5;
  v52 = sub_1DACB7274();
  v50 = *(v52 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1DAA6AB50(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v43 - v13;
  sub_1DAA6AB50(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = &v43 - v16;
  sub_1DAA6AB50(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v44 = &v43 - v19;
  v20 = sub_1DACB78E4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB7E44();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = sub_1DACB92E4();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = sub_1DACB7904();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DAB2AF6C();
  v43 = v32;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v33 = *MEMORY[0x1E6968DF0];
  v34 = *(v21 + 104);
  v34(v24, v33, v20);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v34(v24, v33, v20);
  v35 = v44;
  sub_1DACB7914();
  (*(v30 + 56))(v35, 0, 1, v29);
  (*(v49 + 56))(v45, 1, 1, v51);
  v36 = sub_1DACB6E84();
  v37 = *(*(v36 - 8) + 56);
  v37(v46, 1, 1, v36);
  v37(v47, 1, 1, v36);
  (*(v50 + 104))(v48, *MEMORY[0x1E695A500], v52);
  sub_1DAAA1620(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v38 = sub_1DACB7014();
  v39 = v53;
  *v53 = v38;
  sub_1DAA6AB50(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  sub_1DACB6D84();
  v39[1] = sub_1DACB6D54();
  v40 = v56;
  v41 = v54;
  sub_1DAAA2C80(v56, v54);
  sub_1DAAA2C80(v41, v55);
  sub_1DACB6FC4();
  sub_1DAAD5434(v40);
  return sub_1DAAD5434(v41);
}

uint64_t sub_1DAC4644C()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE9498);
  __swift_project_value_buffer(v9, qword_1ECBE9498);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAC46668()
{
  sub_1DAA6AB50(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE94B0);
  __swift_project_value_buffer(v15, qword_1ECBE94B0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DAC469B0()
{
  sub_1DAC47E64(0, &qword_1ECBE94C8, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAC47E64(0, &qword_1ECBE94D0, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAB951C8();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAC46CF0();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAC46B80(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SymbolEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1DAAA2C80(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_1DAAA2C80(v10, v8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v10);
}

uint64_t sub_1DAC46C60(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *v1;
  sub_1DAAA2C80(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

void sub_1DAC46CF0()
{
  if (!qword_1ECBE94D8)
  {
    sub_1DAB2AF6C();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE94D8);
    }
  }
}

uint64_t (*sub_1DAC46D50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC46DE8(uint64_t *a1)
{
  v3 = *(v1 + 8);
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAC46E2C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAC46EC4@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = sub_1DACB7274();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA6AB50(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v38 - v9;
  sub_1DAA6AB50(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v38 - v12;
  sub_1DAA6AB50(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v4);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v39 = &v38 - v15;
  v16 = sub_1DACB78E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB7E44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1DACB92E4();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = sub_1DACB7904();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1DAB2AF6C();
  v40 = v28;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29 = *MEMORY[0x1E6968DF0];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30(v20, v29, v16);
  v31 = v39;
  sub_1DACB7914();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for SymbolEntity();
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  v33 = sub_1DACB6E84();
  v34 = *(*(v33 - 8) + 56);
  v34(v42, 1, 1, v33);
  v34(v43, 1, 1, v33);
  (*(v45 + 104))(v44, *MEMORY[0x1E695A500], v46);
  sub_1DAAA1620(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v35 = sub_1DACB7014();
  v36 = v47;
  *v47 = v35;
  sub_1DAA6AB50(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v36[1] = result;
  return result;
}

uint64_t sub_1DAC47514(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC4753C, 0, 0);
}

uint64_t sub_1DAC4753C()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_1DACB6D24();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = v1;
  v0[9] = 0x4000000000000000;
  v5 = *(v4 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1DAC476A8;

  return (v9)(v0 + 7, v3, v4);
}

uint64_t sub_1DAC476A8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  v2[14] = v0;

  sub_1DAAF5A24(v2[7], v2[8], v2[9]);
  if (v0)
  {
    v4 = sub_1DAC477C8;
  }

  else
  {
    v4 = sub_1DAAEBDAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC477C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

unint64_t sub_1DAC47830()
{
  result = qword_1ECBE94E0;
  if (!qword_1ECBE94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE94E0);
  }

  return result;
}

uint64_t sub_1DAC478CC(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *v1;
  sub_1DAAA2C80(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

uint64_t (*sub_1DAC4795C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

unint64_t sub_1DAC479D8()
{
  result = qword_1EE122A70;
  if (!qword_1EE122A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A70);
  }

  return result;
}

unint64_t sub_1DAC47A30()
{
  result = qword_1EE122A80;
  if (!qword_1EE122A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A80);
  }

  return result;
}

uint64_t sub_1DAC47ABC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE9498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAC47B64()
{
  sub_1DAC47E64(0, &qword_1ECBE94C8, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAC47E64(0, &qword_1ECBE94D0, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAC46CF0();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAC47D08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAC47514(a1);
}

uint64_t sub_1DAC47DA4(uint64_t a1)
{
  v2 = sub_1DAB951C8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DAC47DF0()
{
  result = qword_1ECBE94E8;
  if (!qword_1ECBE94E8)
  {
    sub_1DAC47E64(255, &qword_1ECBE94F0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE94E8);
  }

  return result;
}

void sub_1DAC47E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB951C8();
    v7 = a3(a1, &type metadata for OpenSymbolIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAC47EC8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1DACB9884();
  if (!v26)
  {
    return sub_1DACB96B4();
  }

  v48 = v26;
  v52 = sub_1DACB9DA4();
  v39 = sub_1DACB9DB4();
  sub_1DACB9D54();
  result = sub_1DACB9854();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1DACB98B4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1DACB9D94();
      result = sub_1DACB9894();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ArticleScorer.init(subscribedTags:config:currentDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  sub_1DAA4D460(a2, (a4 + 8));
  v6 = *(type metadata accessor for ArticleScorer() + 24);
  v7 = sub_1DACB7CC4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for ArticleScorer()
{
  result = qword_1EE1234A0;
  if (!qword_1EE1234A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}