uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContextWithPfx,SIValueSet<unsigned int>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 20) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = 4 * v7 + 12;
  if (v7 >= 3)
  {
    v11 = (a1 + v8);
    v9 = (a1 + 12);
    do
    {
      v12 = &v9[4 * (v7 >> 1)];
      v13 = *v12;
      if ((*v12 & 0x80000000) != 0)
      {
        v14 = *(v12 - 1);
        v12 -= 4;
        v13 = v14;
      }

      if (v12 <= v9)
      {
        break;
      }

      if (v13 == v5)
      {
        v9 = v12;
        break;
      }

      if (v13 > v5)
      {
        v11 = v12;
      }

      else
      {
        v9 = v12;
      }

      v7 = (v11 - v9) >> 2;
    }

    while (v11 > v9 && v7 > 2);
  }

  else
  {
    v9 = (a1 + 12);
  }

  v47 = a1 + 12;
  v48 = a1;
  v16 = 0;
  v53 = 0;
  v49 = a1 + 264;
  v17 = v9;
  v18 = 1;
  while (2)
  {
    v50 = v8;
    v51 = v17;
    v19 = 0;
    v20 = 0;
    v21 = a1 + v8;
    v22 = v9;
    while (1)
    {
      v23 = v20;
      while (v22 >= v21 || v6 < *v22)
      {
        if (v23)
        {
          v24 = v23 + v19;
          v25 = 1;
          if (v24 < v6)
          {
            goto LABEL_51;
          }

          v26 = v6 + 1;
          if (v26 < v19)
          {
            goto LABEL_51;
          }

          v27 = v23 + v19 - 1;
          v28 = v19 > v6;
          v29 = v19 > v6;
          if (v19 >= v6)
          {
            v19 = v6;
          }

          if (v28)
          {
            v24 = v27 + v6;
          }

          else
          {
            v27 = v23;
          }

          v30 = v27 + v26 - v24;
          if (v24 <= v6)
          {
            v23 = v30;
          }

          else
          {
            v23 = v27;
          }

          v31 = v24 <= v6 || v29;
        }

        else
        {
          v23 = 1;
          v19 = v6;
          v31 = 1;
        }

        if (SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(a2) != v6)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v31)
        {
          ++v53;
        }

        else if (a3)
        {
          SIValueSet<unsigned int>::SIValueSetInsert(*(a3 + 8), *a3 | v6);
        }

        if (*a2 >= *(a2 + 8))
        {
          v25 = 0;
          ++v16;
          goto LABEL_51;
        }

        ++v16;
        if ((*(a2 + 20) & **a2) != *(a2 + 16))
        {
          v25 = 0;
          goto LABEL_51;
        }

        v6 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
        ++v18;
      }

      v25 = 1;
LABEL_51:
      if (v22 >= v21)
      {
        break;
      }

      v32 = *v22;
      if ((v22 + 1) >= v21)
      {
        v36 = 1;
        v20 = 1;
        if (!v23)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v33 = v22[1];
        v34 = v33 & 0x7FFFFFFF;
        v35 = v33 >= 0;
        v36 = 2;
        if (v35)
        {
          v36 = 1;
          v20 = 1;
        }

        else
        {
          v20 = v34 + 1;
        }

        if (!v23)
        {
LABEL_70:
          v19 = *v22;
          goto LABEL_71;
        }
      }

      v37 = v23 + v19;
      if (v37 < v32)
      {
        break;
      }

      v38 = v20 + v32;
      if (v20 + v32 < v19)
      {
        break;
      }

      v39 = v23 - v20 + v19;
      v40 = v39 + v32;
      v41 = v19 > v32;
      if (v19 >= v32)
      {
        v19 = *v22;
      }

      if (v41)
      {
        v42 = v39;
      }

      else
      {
        v42 = v23;
      }

      if (v41)
      {
        v37 = v40;
      }

      if (v38 > v37)
      {
        v20 = v42 + v38 - v37;
      }

      else
      {
        v20 = v42;
      }

LABEL_71:
      v22 += v36;
      if (v20 + v19 >= v6)
      {
        v43 = v25;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v20 = v23;
LABEL_77:
    if (v20 == 1)
    {
      if (v51 >= v22)
      {
        if (v50 >= 257)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v9 = (v49 - (v21 - v22));
        if (v21 != v22)
        {
          memmove((v49 - (v21 - v22)), v22, v21 - v22);
          v9 = (v49 - (v21 - v22));
        }

        v8 = 264;
        a1 = v48;
      }

      else
      {
        v9 = v22;
        a1 = v48;
        v8 = v50;
      }

      *v51 = v19;
      v17 = v51 + 1;
LABEL_93:
      v21 = a1 + v8;
      if (v17 + a1 + v8 - v9 + 8 <= v49)
      {
        v44 = v25;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  if (v20)
  {
    if (v51 + 1 >= v22)
    {
      if (v50 >= 257)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v9 = (v49 - (v21 - v22));
      if (v21 != v22)
      {
        memmove((v49 - (v21 - v22)), v22, v21 - v22);
        v9 = (v49 - (v21 - v22));
      }

      v8 = 264;
      a1 = v48;
    }

    else
    {
      v9 = v22;
      a1 = v48;
      v8 = v50;
    }

    *v51 = v19;
    v51[1] = (v20 - 1) | 0x80000000;
    v17 = v51 + 2;
    goto LABEL_93;
  }

  v9 = v22;
  a1 = v48;
  v17 = v51;
LABEL_100:
  v45 = v17;
  if (v25)
  {
    if (v16 >= v18)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v16 != v18)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v46 = v21 - v9;
  if (v21 > v9)
  {
    memmove(v45, v9, v21 - v9);
    v45 = (v45 + v46);
  }

  *(a1 + 8) = (v45 - v47) >> 2;
  return v53;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::KeyHolderContext::nextKey(unsigned int **a1)
{
  v1 = *(a1 + 5);
  if (v1)
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 4) + 1);
    *(a1 + 4) = v3;
    *(a1 + 5) = v2;
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1 + 1;
    v3 = **a1;
    *a1 = v6;
    *(a1 + 4) = v3;
    if (v6 < v5)
    {
      v7 = *v6;
      if ((v7 & 0x80000000) != 0)
      {
        *a1 = (v4 + 8);
        *(a1 + 5) = v7 & 0x7FFFFFFF;
      }
    }
  }

  return v3;
}

BOOL SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::AddKey(uint64_t a1, int a2, int a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::ContainsKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a2 & a3 & 0x7FFF;
  v4 = (a1 + 10);
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 10 + 2 * v5;
    do
    {
      v8 = (v4 + (v5 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      else
      {
        v9 = *v8;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 1;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v13 = (v4 + 1);
    do
    {
      if ((v12 & 0x8000) != 0)
      {
        v15 = *(v13 - 2);
        v16 = v15 + (v12 & 0x7FFF);
        if (v3 >= v15 && v3 <= v16)
        {
          return 1;
        }

        if (v13 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v13 >= v6)
        {
          return result;
        }
      }

      v18 = *v13++;
      v12 = v18;
    }

    while (v3 != v18);
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::CloseKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = a1 + 10 + 2 * v3;
  if (v3 >= 3)
  {
    v7 = a1 + 10 + 2 * v3;
    do
    {
      v8 = (v5 + (v3 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      else
      {
        v9 = *v8;
      }

      if (v8 <= v5)
      {
        break;
      }

      if (v9 == v4)
      {
        v5 = v8;
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 1;
    }

    while (v7 > v5 && v3 > 2);
  }

  if (v5 >= v6)
  {
LABEL_31:
    result = *(v6 - 2);
    if (*(v6 - 2) < 0)
    {
      return (result & 0x7FFF) + *(v6 - 4);
    }
  }

  else
  {
    v13 = v5;
    while (1)
    {
      v14 = *v13++;
      result = v14;
      if (v4 == v14)
      {
        return a2 & a3 & 0x7FFF;
      }

      if ((result & 0x8000) != 0)
      {
        v15 = *(v5 - 1);
        v16 = v4 >= v15;
        v17 = v15 + (result & 0x7FFF);
        if (v16 && v4 <= v17)
        {
          return a2 & a3 & 0x7FFF;
        }
      }

      else if (v4 < result)
      {
        return result;
      }

      v5 = v13;
      if (v13 >= v6)
      {
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::RemoveKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = *(a1 + 8);
  v7 = a1 + 10 + 2 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 10 + 2 * v6;
    do
    {
      v10 = (v5 + (v8 & 0xFFFFFFFFFFFFFFFELL));
      v11 = *v10;
      if (v11 < 0)
      {
        v12 = *--v10;
        LOWORD(v11) = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v4 == v11)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 1;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (v4 == v15)
  {
LABEL_28:
    if (v14 >= v7)
    {
      goto LABEL_39;
    }

    v20 = *v14;
    if (v20 < 0)
    {
      *v5 = v15 + 1;
      if ((v20 & 0x7FFF) != 1)
      {
        *v14 = (v20 - 1) | 0x8000;
        return 1;
      }

      v21 = v7 - (v5 + 2);
      v22 = v14;
      v14 = v5 + 2;
    }

    else
    {
      v21 = v7 - v14;
      v22 = v5;
    }

    memmove(v22, v14, v21);
    v23 = *(a1 + 8) - 1;
    goto LABEL_40;
  }

  v16 = 0;
  while (1)
  {
    v17 = &v5[v16 + 1];
    if ((v15 & 0x8000) == 0)
    {
      result = 0;
      if (v4 < v15 || v17 >= v7)
      {
        return result;
      }

      goto LABEL_26;
    }

    v19 = v5[v16 - 1];
    if (v4 > v19 && v4 <= (v19 + (v15 & 0x7FFF)))
    {
      break;
    }

    if (v17 >= v7)
    {
      return 0;
    }

LABEL_26:
    v15 = *v17;
    ++v16;
    if (v4 == v15)
    {
      v5 = (v5 + v16 * 2);
      v14 = v5 + 1;
      goto LABEL_28;
    }
  }

  v24 = &v5[v16];
  v25 = &v5[v16 + 1];
  if ((v15 & 0x7FFF) == 1)
  {
    if (v25 < v7)
    {
      memmove(v24, &v5[v16 + 1], a1 + 2 * v6 - v5 - v16 * 2 + 8);
      LOWORD(v6) = *(a1 + 8);
    }

LABEL_39:
    v23 = v6 - 1;
LABEL_40:
    *(a1 + 8) = v23;
  }

  else
  {
    v26 = (v19 + (v15 & 0x7FFF));
    if (v4 == v26)
    {
      *v24 = (v15 - 1) | 0x8000;
    }

    else if (v4 == v19 + 1)
    {
      *v24 = v4 + 1;
      if (v4 != v26 - 1)
      {
        v27 = *(a1 + 8);
        if (v27 >= 0x3F)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
        }

        v28 = &v5[v16 - 4] - a1;
        if (v27 != v28 >> 1)
        {
          memmove(&v5[v16 + 2], &v5[v16 + 1], 2 * (v27 - (v28 >> 1)));
          LOWORD(v27) = *(a1 + 8);
        }

        *(a1 + 8) = v27 + 1;
        *v25 = (v26 + ~v4) | 0x8000;
      }
    }

    else
    {
      v5[v16] = (v4 + ~v19) | 0x8000;
      v29 = *(a1 + 8);
      if (v29 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v30 = &v5[v16 - 4] - a1;
      if (v29 != v30 >> 1)
      {
        memmove(&v5[v16 + 2], &v5[v16 + 1], 2 * (v29 - (v30 >> 1)));
        LOWORD(v29) = *(a1 + 8);
      }

      *(a1 + 8) = v29 + 1;
      *v25 = v4 + 1;
      v31 = v26 + ~v4;
      if (v31)
      {
        v32 = *(a1 + 8);
        if (v32 >= 0x3F)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
        }

        v33 = &v5[v16];
        v34 = &v5[v16 - 3] - a1;
        if (v32 != v34 >> 1)
        {
          memmove(&v5[v16 + 3], v33 + 2, 2 * (v32 - (v34 >> 1)));
          LOWORD(v32) = *(a1 + 8);
        }

        *(a1 + 8) = v32 + 1;
        v33[2] = v31 | 0x8000;
      }
    }
  }

  return 1;
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::Apply(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 10);
  v14 = v9 + 10 + 2 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[4 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      v18 = v13[1];
      if (v18 < 0)
      {
        v16 = v18 & 0x7FFF;
      }

      else
      {
        v16 = 0;
      }

      if (v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 2);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 2 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 10, v4);
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_287C3F5E0;
  *(a3 + 8) = a1 + 10;
  *(a3 + 16) = a1 + 10 + 2 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::InertContext>(uint64_t a1, unsigned __int16 **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = *(a1 + 8);
  v5 = 2 * v4 + 10;
  v6 = (a1 + 10);
  if (v4 >= 3)
  {
    v7 = (a1 + v5);
    v6 = (a1 + 10);
    do
    {
      v8 = (v6 + (v4 & 0xFFFFFFFFFFFFFFFELL));
      v9 = *v8;
      if (v9 < 0)
      {
        v10 = *--v8;
        LOWORD(v9) = v10;
      }

      if (v8 <= v6)
      {
        break;
      }

      if (v9 == v3)
      {
        v6 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v6 = v8;
      }

      v4 = v7 - v6;
    }

    while (v7 > v6 && v4 > 2);
  }

  v47 = a1 + 10;
  v13 = 0;
  v12 = 0;
  v14 = a1 + 136;
  v15 = v6;
  v16 = 1;
  v49 = a1 + 136;
  v50 = a1;
  while (2)
  {
    LOWORD(v17) = 0;
    v18 = 0;
    v19 = a1 + v5;
    v20 = v6;
    while (1)
    {
      v21 = v18;
      while (v20 >= v19 || *v20 > v3)
      {
        if (v21)
        {
          v22 = v21 + v17;
          v23 = 1;
          if (v22 < v3)
          {
            goto LABEL_42;
          }

          v24 = v3 + 1;
          if (v24 < v17)
          {
            goto LABEL_42;
          }

          v25 = v17;
          v26 = v21 + v17 - 1;
          v27 = v26 + v3;
          if (v17 > v3)
          {
            LOWORD(v17) = v3;
          }

          if (v25 <= v3)
          {
            v28 = 0;
          }

          else
          {
            v21 = v26;
            v28 = 1;
          }

          if (v25 > v3)
          {
            v22 = v27;
          }

          v29 = v21 + v24 - v22;
          if (v22 > v3)
          {
            v30 = v28;
          }

          else
          {
            v21 = v29;
            v30 = 1;
          }
        }

        else
        {
          LOWORD(v17) = v3;
          v21 = 1;
          v30 = 1;
        }

        v31 = *a2 + 2;
        v32 = **a2;
        *a2 = v31;
        if (v32 != v3)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v30;
        if (v31 >= a2[1])
        {
          v23 = 0;
          ++v13;
          goto LABEL_42;
        }

        v3 = *v31;
        ++v16;
        ++v13;
      }

      v23 = 1;
LABEL_42:
      v33 = v17;
      if (v20 >= v19)
      {
        break;
      }

      v17 = *v20;
      if ((v20 + 1) >= v19)
      {
        v36 = 1;
        v18 = 1;
        if (!v21)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v34 = v20[1];
        v35 = v34 >= 0;
        if (v34 < 0)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        if (v35)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v20[1] & 0x7FFF) + 1;
        }

        if (!v21)
        {
          goto LABEL_63;
        }
      }

      if (v21 + v33 < v17)
      {
        break;
      }

      v37 = v18 + v17;
      if (v18 + v17 < v33)
      {
        break;
      }

      v38 = v21 - v18 + v33 + v17;
      v39 = v33 > v17;
      if (v33 < v17)
      {
        LOWORD(v17) = v33;
      }

      if (v39)
      {
        v21 = v21 - v18 + v33;
        v40 = v38;
      }

      else
      {
        v40 = v21 + v33;
      }

      if (v37 > v40)
      {
        v18 = v21 + v37 - v40;
      }

      else
      {
        v18 = v21;
      }

LABEL_63:
      v20 += v36;
      if (v18 + v17 >= v3)
      {
        v41 = v23;
      }

      else
      {
        v41 = 0;
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    LOWORD(v17) = v33;
    v18 = v21;
LABEL_69:
    if (v18 == 1)
    {
      if (v15 >= v20)
      {
        if (v5 >= 133)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v6 = (v14 - (v19 - v20));
        if (v19 != v20)
        {
          v42 = v15;
          memmove((v14 - (v19 - v20)), v20, v19 - v20);
          v14 = v49;
          a1 = v50;
          v15 = v42;
        }

        v5 = 136;
      }

      else
      {
        v6 = v20;
      }

      *v15++ = v17;
LABEL_85:
      v19 = a1 + v5;
      if (v15 + a1 + v5 - v6 + 4 <= v14)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v20)
    {
      if (v5 >= 133)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v6 = (v14 - (v19 - v20));
      if (v19 != v20)
      {
        v48 = v15;
        memmove((v14 - (v19 - v20)), v20, v19 - v20);
        v15 = v48;
        v14 = v49;
        a1 = v50;
      }

      v5 = 136;
    }

    else
    {
      v6 = v20;
    }

    *v15 = v17;
    v15[1] = (v18 - 1) | 0x8000;
    v15 += 2;
    goto LABEL_85;
  }

  v6 = v20;
LABEL_92:
  if (v23)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v44 = v19 - v6;
  if (v19 > v6)
  {
    v45 = v15;
    memmove(v15, v6, v19 - v6);
    a1 = v50;
    LODWORD(v15) = v45 + v44;
  }

  *(a1 + 8) = (v15 - v47) >> 1;
  return v12;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContextWithPfx,SIValueSet<unsigned int>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 20) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = 2 * v7 + 10;
  v9 = (a1 + 10);
  if (v7 >= 3)
  {
    v10 = (a1 + v8);
    v9 = (a1 + 10);
    do
    {
      v11 = (v9 + (v7 & 0xFFFFFFFFFFFFFFFELL));
      v12 = *v11;
      if (v12 < 0)
      {
        v13 = *--v11;
        LOWORD(v12) = v13;
      }

      if (v11 <= v9)
      {
        break;
      }

      if (v12 == v5)
      {
        v9 = v11;
        break;
      }

      if (v12 > v5)
      {
        v10 = v11;
      }

      else
      {
        v9 = v11;
      }

      v7 = v10 - v9;
    }

    while (v10 > v9 && v7 > 2);
  }

  v44 = a1 + 10;
  v45 = a1;
  v16 = 0;
  v50 = 0;
  v46 = a1 + 136;
  v17 = v9;
  v18 = 1;
  v19 = v8;
  while (2)
  {
    v47 = v19;
    v48 = v17;
    LOWORD(v20) = 0;
    v21 = 0;
    v22 = a1 + v19;
    v23 = v9;
    do
    {
      v24 = v21;
      while (v23 >= v22 || *v23 > v6)
      {
        if (!v24)
        {
          v24 = 1;
          LOWORD(v20) = v6;
          goto LABEL_34;
        }

        v25 = v24 + v20;
        v26 = 1;
        if (v25 < v6)
        {
          goto LABEL_46;
        }

        v27 = v6 + 1;
        if (v27 < v20)
        {
          goto LABEL_46;
        }

        v28 = v20;
        v29 = v24 + v20 - 1;
        v30 = v20 > v6;
        if (v20 >= v6)
        {
          LOWORD(v20) = v6;
        }

        if (v28 > v6)
        {
          v24 = v29;
          v25 = v29 + v6;
        }

        if (v25 <= v6)
        {
          v24 = v24 + v27 - v25;
LABEL_34:
          v30 = 1;
        }

        if (v6 != SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(a2))
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v30)
        {
          ++v50;
        }

        else if (a3)
        {
          SIValueSet<unsigned int>::SIValueSetInsert(*(a3 + 8), *a3 | v6);
        }

        if (*a2 >= *(a2 + 8))
        {
          v26 = 0;
          ++v16;
          goto LABEL_46;
        }

        ++v16;
        if ((*(a2 + 20) & **a2) != *(a2 + 16))
        {
          v26 = 0;
          goto LABEL_46;
        }

        v6 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
        ++v18;
      }

      v26 = 1;
LABEL_46:
      v31 = v20;
      if (v23 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *v23;
      if ((v23 + 1) >= v22)
      {
        v35 = 1;
        v21 = 1;
        if (!v24)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v32 = v23[1];
        v33 = v32 & 0x7FFF;
        v34 = v32 >= 0;
        v35 = 2;
        if (v34)
        {
          v35 = 1;
          v21 = 1;
        }

        else
        {
          v21 = v33 + 1;
        }

        if (!v24)
        {
          goto LABEL_66;
        }
      }

      v36 = v24 + v31;
      if (v36 < v20 || (v37 = v21 + v20, v21 + v20 < v31))
      {
LABEL_71:
        LOWORD(v20) = v31;
        v21 = v24;
        break;
      }

      v38 = v24 - v21 + v31 + v20;
      v39 = v31 > v20;
      if (v31 < v20)
      {
        LOWORD(v20) = v31;
      }

      if (v39)
      {
        v40 = v24 - v21 + v31;
      }

      else
      {
        v40 = v24;
      }

      if (v39)
      {
        v36 = v38;
      }

      if (v37 > v36)
      {
        v21 = v40 + v37 - v36;
      }

      else
      {
        v21 = v40;
      }

LABEL_66:
      v23 += v35;
      if (v21 + v20 >= v6)
      {
        v41 = v26;
      }

      else
      {
        v41 = 0;
      }
    }

    while ((v41 & 1) != 0);
    if (v21 == 1)
    {
      if (v48 >= v23)
      {
        if (v47 >= 133)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v9 = (v46 - (v22 - v23));
        if (v22 != v23)
        {
          memmove((v46 - (v22 - v23)), v23, v22 - v23);
        }

        v19 = 136;
        a1 = v45;
      }

      else
      {
        v9 = v23;
        a1 = v45;
        v19 = v47;
      }

      *v48 = v20;
      v17 = v48 + 1;
LABEL_88:
      v22 = a1 + v19;
      if (v17 + a1 + v19 - v9 + 4 <= v46)
      {
        v42 = v26;
      }

      else
      {
        v42 = 0;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  if (v21)
  {
    if (v48 + 1 >= v23)
    {
      if (v47 >= 133)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v9 = (v46 - (v22 - v23));
      if (v22 != v23)
      {
        memmove((v46 - (v22 - v23)), v23, v22 - v23);
      }

      v19 = 136;
      a1 = v45;
    }

    else
    {
      v9 = v23;
      a1 = v45;
      v19 = v47;
    }

    *v48 = v20;
    v48[1] = (v21 - 1) | 0x8000;
    v17 = v48 + 2;
    goto LABEL_88;
  }

  v9 = v23;
  a1 = v45;
  v17 = v48;
LABEL_95:
  v43 = v17;
  if (v26)
  {
    if (v16 >= v18)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v16 != v18)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  if (v22 > v9)
  {
    memmove(v17, v9, v22 - v9);
    v43 = v17 + v22 - v9;
  }

  *(a1 + 8) = (v43 - v44) >> 1;
  return v50;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::KeyHolderContext::nextKey(__int16 **a1)
{
  if (*(a1 + 9))
  {
    --*(a1 + 9);
    v1 = *(a1 + 8) + 1;
    *(a1 + 8) = v1;
  }

  else
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = *a1 + 1;
    v1 = **a1;
    *a1 = v4;
    *(a1 + 8) = v1;
    if (v4 < v3)
    {
      v5 = *v4;
      if (v5 < 0)
      {
        *a1 = v2 + 2;
        *(a1 + 9) = v5 & 0x7FFF;
      }
    }
  }

  return v1;
}

uint64_t SIValueSet<unsigned int>::applyFun(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = *a1++;
      SIValueSet<unsigned int>::_SIValueSetInnerInsert(*a3, v6, *(a3 + 8), *(a3 + 16));
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::AddSortedKeysWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= *(a2 + 8))
  {
    return 0;
  }

  v6 = a1 + 8;
  while (1)
  {
    if ((*(a2 + 20) & *v3) != *(a2 + 16))
    {
      return 0;
    }

    Key = SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(a2);
    v8 = *(v6 + 8 * (Key >> 6));
    if (((1 << Key) & v8) == 0)
    {
      break;
    }

    if (a3)
    {
      SIValueSet<unsigned int>::SIValueSetInsert(*(a3 + 8), *a3 | Key);
    }

    v3 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      return 0;
    }
  }

  *(v6 + 8 * ((Key << 16) >> 22)) = (1 << Key) | v8;
  return 1;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::CloseKey(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a1 + 8;
  if ((*(a1 + 8 + 8 * ((a3 & a2) >> 6)) >> (a3 & a2)))
  {
    return a2;
  }

  LOWORD(v5) = a3 & a2;
  LODWORD(result) = a2;
  while (1)
  {
    v5 = (v5 + 1);
    if (v5 >= 64)
    {
      break;
    }

    result = (result + 1);
    if ((*(v3 + 8 * (v5 >> 6)) >> v5))
    {
      return result;
    }
  }

  v6 = (a3 & a2);
  LODWORD(result) = a2;
  while (v6 >= 1)
  {
    --v6;
    result = (result - 1);
    if ((*(v3 + 8 * (v6 >> 6)) >> v6))
    {
      return result;
    }
  }

  return 0;
}

BOOL SIValueSet<unsigned int>::BitmapHolder::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) >> 6));
  if ((v4 & v3) != 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 ^ v3;
  }

  return (v4 & v3) != 0;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::Apply(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v15[3] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  v15[1] = a1 + 8;
  v15[2] = 0;
  v15[0] = 0;
  result = SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(v15);
  v13 = 0;
  if (result)
  {
    v13 = 0;
    do
    {
      *&v11[4 * v13++] = SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::nextKey(v15) | a3;
      if (v13 == a2)
      {
        result = a4(v11, a2, a5);
        if (result)
        {
          goto LABEL_9;
        }

        v13 = 0;
      }

      result = SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(v15);
    }

    while ((result & 1) != 0);
  }

  if (v13)
  {
    result = a4(v11, v13, a5);
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::IsEmpty(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = a1 + 8;
  v2[2] = 0;
  return SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(v2) ^ 1;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 0);
  v4 = *(*a2 + 16);

  return v4(a2, a1 + 8, 512);
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  *a3 = &unk_287C3F680;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1 + 8;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 16) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 16) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::nextKey(int *a1)
{
  v1 = *(a1 + 8);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 8) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 8) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  v6 = *a1;
  *(a1 + 8) = v1 + 1;
  return v6 | v1;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerContains(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 8 * ((a2 >> (60 - 4 * a3)) & 0xF));
  if (result)
  {
    v4 = a3 + 2;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> (64 - 4 * v4++)) & 0xF));
    }

    while ((result & 1) != 0);
  }

  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerInsert(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v7 = 60 - 4 * a3;
  v8 = 60 - 4 * a3;
  v9 = (a2 >> v8) & 0xF;
  v10 = *(a1 + 8 * v9);
  if (v10)
  {
    do
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v7 = 56 - 4 * v5;
      v8 = 56 - 4 * v5;
      v9 = (a2 >> v8) & 0xF;
      v10 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v9);
      ++v5;
    }

    while ((v10 & 1) != 0);
  }

  else
  {
    v11 = a1;
  }

  if (v7 < 13)
  {
    if (!v10)
    {
      v10 = MEMORY[0x26D680300](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
      *v10 = &unk_287C3F890;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 0u;
      *(v10 + 120) = 0u;
      *(v10 + 136) = 0u;
      *(v10 + 152) = 0u;
      *(v10 + 168) = 0u;
      *(v10 + 184) = 0u;
      *(v10 + 200) = 0u;
      *(v10 + 216) = 0u;
      *(v10 + 232) = 0u;
      *(v10 + 248) = 0u;
      *(v10 + 8) = 0u;
      *(v10 + 264) = 0u;
      *(v10 + 280) = 0u;
      *(v10 + 296) = 0u;
      *(v10 + 312) = 0u;
      *(v10 + 328) = 0u;
      *(v10 + 344) = 0u;
      *(v10 + 360) = 0u;
      *(v10 + 376) = 0u;
      *(v10 + 392) = 0u;
      *(v10 + 408) = 0u;
      *(v10 + 424) = 0u;
      *(v10 + 440) = 0u;
      *(v10 + 456) = 0u;
      *(v10 + 472) = 0u;
      *(v10 + 488) = 0u;
      *(v10 + 504) = 0u;
      *(v11 + 8 * v9) = v10;
    }

    v13 = a2 & ~(-1 << v8);
    v14 = *(v10 + 8 + 8 * (v13 >> 6));
    if ((v14 & (1 << v13)) != 0)
    {
      return 0;
    }

    else
    {
      *(v10 + 8 + 8 * ((v13 << 16) >> 22)) = v14 | (1 << v13);
      return 1;
    }
  }

  else
  {
    if (v10)
    {
      v12 = *v10;
    }

    else
    {
      if (v7 < 0x20u)
      {
        v16 = *(a4 + 16);
        if (v7 < 0x10u)
        {
          v10 = MEMORY[0x26D680300](v16, 136, 0x1081040C0A9C235, 0);
          v12 = &unk_287C3F7F0;
          *v10 = &unk_287C3F7F0;
          *(v10 + 8) = 0u;
          *(v10 + 24) = 0u;
          *(v10 + 40) = 0u;
          *(v10 + 56) = 0u;
          *(v10 + 72) = 0u;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 120) = 0u;
        }

        else
        {
          v10 = MEMORY[0x26D680300](v16, 264, 0x10810409D866994, 0);
          v12 = &unk_287C3F750;
          *v10 = &unk_287C3F750;
          *(v10 + 8) = 0u;
          *(v10 + 24) = 0u;
          *(v10 + 40) = 0u;
          *(v10 + 56) = 0u;
          *(v10 + 72) = 0u;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 120) = 0u;
          *(v10 + 136) = 0u;
          *(v10 + 152) = 0u;
          *(v10 + 168) = 0u;
          *(v10 + 184) = 0u;
          *(v10 + 200) = 0u;
          *(v10 + 216) = 0u;
          *(v10 + 232) = 0u;
          *(v10 + 248) = 0u;
        }
      }

      else
      {
        v10 = MEMORY[0x26D680300](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
        v12 = &unk_287C3F6B0;
        *v10 = &unk_287C3F6B0;
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 88) = 0u;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 184) = 0u;
        *(v10 + 200) = 0u;
        *(v10 + 216) = 0u;
        *(v10 + 232) = 0u;
        *(v10 + 248) = 0u;
        *(v10 + 8) = 0u;
        *(v10 + 264) = 0u;
        *(v10 + 280) = 0u;
        *(v10 + 296) = 0u;
        *(v10 + 312) = 0u;
        *(v10 + 328) = 0u;
        *(v10 + 344) = 0u;
        *(v10 + 360) = 0u;
        *(v10 + 376) = 0u;
        *(v10 + 392) = 0u;
        *(v10 + 408) = 0u;
        *(v10 + 424) = 0u;
        *(v10 + 440) = 0u;
        *(v10 + 456) = 0u;
        *(v10 + 472) = 0u;
        *(v10 + 488) = 0u;
        *(v10 + 504) = 0u;
      }

      *(v11 + 8 * v9) = v10;
    }

    v15 = (*v12)(v10, a2, ~(-1 << v8));
    if ((*(*v10 + 56))(v10) >= 0x3E)
    {
      *(v11 + 8 * v9) = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v10, v5, a4);
    }
  }

  return v15;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetBurstRLE(void *a1, int a2, uint64_t a3)
{
  v6 = SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_alloc_level(a3);
  v7 = v6;
  v8 = 0;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v11[0] = v6;
  v11[1] = (a2 + 1);
  v11[2] = a3;
  do
  {
    if (*(v6 + v8))
    {
      SIValueSet<unsigned int>::_SIValueSetBurstRLE();
    }

    v8 += 8;
  }

  while (v8 != 128);
  v9 = 64 - 4 * (a2 + 1);
  if (v9 <= 31)
  {
    if (v9 < 16)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Apply(a1, 128, 0, SIValueSet<unsigned long long>::applyFun, v11);
    }

    else
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Apply(a1, 128, 0, SIValueSet<unsigned long long>::applyFun, v11);
    }
  }

  else
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Apply(a1, 128, 0, SIValueSet<unsigned long long>::applyFun, v11);
  }

  (*(*a1 + 72))(a1);
  CFAllocatorDeallocate(*(a3 + 16), a1);
  return v7 | 1;
}

BOOL SIValueSet<unsigned long long>::BitmapHolder::AddKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) << 16 >> 22));
  if ((v4 & v3) == 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 | v3;
  }

  return (v4 & v3) == 0;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::ContainsKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
      if (v7 > v4)
      {
        v11 = v5 >= 2;
        v12 = v5 == 2;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    while (!v12 && v11);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v13 = *v4;
  if (*v4 != v3)
  {
    v14 = v4 + 1;
    do
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v16 = *(v14 - 2);
        v17 = v16 + (v13 & 0x7FFFFFFFFFFFFFFFLL);
        if (v3 >= v16)
        {
          v18 = v3 >= v17;
          v19 = v3 == v17;
        }

        else
        {
          v18 = 1;
          v19 = 0;
        }

        if (v19 || !v18)
        {
          return 1;
        }

        if (v14 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v13 > v3 || v14 >= v6)
        {
          return result;
        }
      }

      v20 = *v14++;
      v13 = v20;
    }

    while (v20 != v3);
  }

  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::CloseKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = (a1 + 16);
  v6 = a1 + 16 + 8 * v3;
  if (v3 >= 3)
  {
    v7 = a1 + 16 + 8 * v3;
    do
    {
      v8 = &v5[v3 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v5)
      {
        break;
      }

      if (v9 == v4)
      {
        v5 = v8;
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 3;
    }

    while (v7 > v5 && v3 > 2);
  }

  if (v5 >= v6)
  {
LABEL_30:
    result = *(v6 - 8);
    if ((result & 0x8000000000000000) != 0)
    {
      return *(v6 - 16) + (result & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v13 = v5;
    while (1)
    {
      v14 = *v13++;
      result = v14;
      if (v14 == v4)
      {
        return a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        v15 = *(v5 - 1);
        if (v4 >= v15 && v4 <= v15 + (result & 0x7FFFFFFFFFFFFFFFLL))
        {
          return a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else if (result > v4)
      {
        return result;
      }

      v5 = v13;
      if (v13 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = (a1 + 16);
  v6 = *(a1 + 8);
  v7 = a1 + 16 + 8 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 16 + 8 * v6;
    do
    {
      v10 = &v5[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x8000000000000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v11 == v4)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 3;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (*v5 != v4)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v5[v16 + 1];
      if ((v15 & 0x8000000000000000) != 0)
      {
        v19 = v5[v16 - 1];
        v20 = v19 + (v15 & 0x7FFFFFFFFFFFFFFFLL);
        if (v4 > v19 && v4 <= v20)
        {
          v24 = &v5[v16];
          v25 = &v5[v16 + 1];
          if ((v15 & 0x7FFFFFFFFFFFFFFFLL) == 1)
          {
            if (v25 < v7)
            {
              v23 = a1 + 8 * v6 - v5 - v16 * 8 + 8;
              v14 = &v5[v16 + 1];
LABEL_40:
              memmove(v24, v14, v23);
              v6 = *(a1 + 8);
            }

LABEL_41:
            *(a1 + 8) = v6 - 1;
          }

          else if (v4 == v20)
          {
            *v24 = (v15 - 1) | 0x8000000000000000;
          }

          else if (v4 == v19 + 1)
          {
            *v24 = v4 + 1;
            v26 = v20 + ~v4;
            if (v26)
            {
              v27 = *(a1 + 8);
              if (v27 >= 0x3F)
              {
                SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
              }

              v28 = &v5[v16 - 1] - a1;
              v29 = v28 >> 3;
              if (v27 != v28 >> 3)
              {
                memmove(&v5[v16 + 2], &v5[v16 + 1], 8 * (v27 - (v28 >> 3)));
                v29 = *(a1 + 8);
              }

              *(a1 + 8) = v29 + 1;
              *v25 = v26 | 0x8000000000000000;
            }
          }

          else
          {
            v5[v16] = (v4 + ~v19) | 0x8000000000000000;
            v30 = *(a1 + 8);
            if (v30 >= 0x3F)
            {
              SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
            }

            v31 = v5 - a1;
            v32 = &v5[v16 - 1] - a1;
            v33 = v32 >> 3;
            if (v30 != v32 >> 3)
            {
              memmove(&v5[v16 + 2], &v5[v16 + 1], 8 * (v30 - (v32 >> 3)));
              v33 = *(a1 + 8);
            }

            *(a1 + 8) = v33 + 1;
            *v25 = v4 + 1;
            v34 = v20 + ~v4;
            if (v34)
            {
              v35 = *(a1 + 8);
              if (v35 >= 0x3F)
              {
                SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
              }

              v36 = &v5[v16];
              v37 = &v31[v16 * 8] >> 3;
              if (v35 != v37)
              {
                memmove(&v5[v16 + 3], v36 + 2, 8 * (v35 - (&v31[v16 * 8] >> 3)));
                v37 = *(a1 + 8);
              }

              *(a1 + 8) = v37 + 1;
              v36[2] = v34 | 0x8000000000000000;
            }
          }

          return 1;
        }

        if (v17 >= v7)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v15 > v4 || v17 >= v7)
        {
          return result;
        }
      }

      v15 = *v17;
      ++v16;
      if (*v17 == v4)
      {
        v5 = (v5 + v16 * 8);
        v14 = v5 + 1;
        break;
      }
    }
  }

  if (v14 >= v7)
  {
    goto LABEL_41;
  }

  v22 = *v14;
  if ((*v14 & 0x8000000000000000) == 0)
  {
    v23 = v7 - v14;
    v24 = v5;
    goto LABEL_40;
  }

  *v5 = v4 + 1;
  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 1)
  {
    v23 = v7 - (v5 + 2);
    v24 = v14;
    v14 = v5 + 2;
    goto LABEL_40;
  }

  *v14 = (v22 - 1) | 0x8000000000000000;
  return 1;
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Apply(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 16);
  v14 = v9 + 16 + 8 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 8);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 8 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 16, v4);
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::valueIterator(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_287C3F720;
  a3[1] = a1 + 16;
  a3[2] = a1 + 16 + 8 * v3;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>(uint64_t a1, unint64_t **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  v42 = a1 + 16;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  v13 = 0;
  v12 = 0;
  v14 = a1 + 520;
  v15 = v4;
  v16 = 1;
  v45 = a1 + 520;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    v19 = v4;
    while (1)
    {
      v20 = v18;
      while (v19 >= v6 || v3 < *v19)
      {
        if (v20)
        {
          v21 = 1;
          if (v20 + v17 < v3)
          {
            goto LABEL_39;
          }

          v22 = v3 + 1;
          if (v3 + 1 < v17)
          {
            goto LABEL_39;
          }

          v23 = v20 + v17 - 1;
          v24 = v17 > v3;
          v25 = v17 > v3;
          if (v17 >= v3)
          {
            v17 = v3;
          }

          if (v24)
          {
            v20 = v23;
          }

          if (v22 <= v20 + v17)
          {
            v26 = v25;
          }

          else
          {
            v20 = v22 - v17;
            v26 = 1;
          }
        }

        else
        {
          v20 = 1;
          v17 = v3;
          v26 = 1;
        }

        v27 = *a2 + 1;
        v28 = **a2;
        *a2 = v27;
        if (v28 != v3)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v26;
        if (v27 >= a2[1])
        {
          v21 = 0;
          ++v13;
          goto LABEL_39;
        }

        v3 = *v27;
        ++v16;
        ++v13;
      }

      v21 = 1;
LABEL_39:
      if (v19 >= v6)
      {
        break;
      }

      v29 = *v19;
      if ((v19 + 1) >= v6)
      {
        v31 = 1;
        v18 = 1;
        if (!v20)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v30 = v19[1];
        if (v30 < 0)
        {
          v31 = 2;
        }

        else
        {
          v31 = 1;
        }

        if (v30 < 0)
        {
          v18 = (v30 & 0x7FFFFFFFFFFFFFFFLL) + 1;
        }

        else
        {
          v18 = 1;
        }

        if (!v20)
        {
LABEL_58:
          v17 = *v19;
          goto LABEL_59;
        }
      }

      if (v20 + v17 < v29)
      {
        break;
      }

      v32 = v18 + v29;
      if (v18 + v29 < v17)
      {
        break;
      }

      v33 = v20 + v17 - v18;
      v34 = v17 > v29;
      if (v17 >= v29)
      {
        v17 = *v19;
      }

      if (v34)
      {
        v20 = v33;
      }

      if (v32 > v20 + v17)
      {
        v18 = v32 - v17;
      }

      else
      {
        v18 = v20;
      }

LABEL_59:
      v19 += v31;
      if (v3 <= v18 + v17)
      {
        v35 = v21;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v18 = v20;
LABEL_65:
    v36 = v18 - 1;
    if (v18 == 1)
    {
      if (v15 >= v19)
      {
        if (v6 + 16 > v14)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v4 = (v14 - (v6 - v19));
        if (v6 != v19)
        {
          v37 = v15;
          memmove((v14 - (v6 - v19)), v19, v6 - v19);
          v14 = v45;
          v15 = v37;
        }

        v6 = v14;
      }

      else
      {
        v4 = v19;
      }

      *v15++ = v17;
LABEL_81:
      if (v15 + v6 - v4 + 16 <= v14)
      {
        v38 = v21;
      }

      else
      {
        v38 = 0;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v19)
    {
      if (v6 + 16 > v14)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v4 = (v14 - (v6 - v19));
      if (v6 != v19)
      {
        v44 = v15;
        memmove((v14 - (v6 - v19)), v19, v6 - v19);
        v15 = v44;
        v14 = v45;
      }

      v6 = v14;
    }

    else
    {
      v4 = v19;
    }

    *v15 = v17;
    v15[1] = v36 | 0x8000000000000000;
    v15 += 2;
    goto LABEL_81;
  }

  v4 = v19;
LABEL_88:
  if (v21)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v39 = v6 - v4;
  if (v6 > v4)
  {
    v40 = v15;
    memmove(v15, v4, v6 - v4);
    v15 = (v40 + v39);
  }

  *(a1 + 8) = (v15 - v42) >> 3;
  return v12;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContextWithPfx,SIValueSet<unsigned long long>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v7 = v6;
  v8 = *(a1 + 8);
  v9 = a1 + 16 + 8 * v8;
  if (v8 >= 3)
  {
    v12 = a1 + 16 + 8 * v8;
    v10 = (a1 + 16);
    do
    {
      v13 = &v10[v8 >> 1];
      v14 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        v15 = *--v13;
        v14 = v15;
      }

      if (v13 <= v10)
      {
        break;
      }

      if (v14 == v6)
      {
        v10 = v13;
        break;
      }

      if (v14 > v6)
      {
        v12 = v13;
      }

      else
      {
        v10 = v13;
      }

      v8 = (v12 - v10) >> 3;
    }

    while (v12 > v10 && v8 > 2);
  }

  else
  {
    v10 = (a1 + 16);
  }

  v47 = a1 + 16;
  v48 = a1;
  v17 = 0;
  v51 = 0;
  v18 = a1 + 520;
  v19 = v10;
  v20 = 1;
  v49 = v18;
  while (2)
  {
    v50 = v19;
    v21 = 0;
    v22 = 0;
    v23 = v10;
    while (1)
    {
      v24 = v22;
      while (v23 >= v9 || v7 < *v23)
      {
        if (v24)
        {
          v25 = 1;
          if (v24 + v21 < v7)
          {
            goto LABEL_50;
          }

          v26 = v7 + 1;
          if (v7 + 1 < v21)
          {
            goto LABEL_50;
          }

          v27 = v24 + v21 - 1;
          v28 = v21 > v7;
          v29 = v21 > v7;
          if (v21 >= v7)
          {
            v21 = v7;
          }

          if (!v28)
          {
            v27 = v24;
          }

          if (v26 > v27 + v21)
          {
            v24 = v26 - v21;
          }

          else
          {
            v24 = v27;
          }

          v30 = v26 > v27 + v21 || v29;
        }

        else
        {
          v24 = 1;
          v21 = v7;
          v30 = 1;
        }

        if (SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2) != v7)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v30)
        {
          ++v51;
        }

        else if (a3)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | v7);
        }

        if (*a2 >= *(a2 + 8))
        {
          v25 = 0;
          ++v17;
          goto LABEL_50;
        }

        ++v17;
        if ((*(a2 + 24) & **a2) != *(a2 + 16))
        {
          v25 = 0;
          goto LABEL_50;
        }

        v7 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
        ++v20;
      }

      v25 = 1;
LABEL_50:
      if (v23 >= v9)
      {
        break;
      }

      v31 = *v23;
      if ((v23 + 1) >= v9)
      {
        v35 = 1;
        v22 = 1;
        if (!v24)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v32 = v23[1];
        v33 = v32 & 0x7FFFFFFFFFFFFFFFLL;
        v34 = v32 >= 0;
        v22 = 1;
        v35 = 2;
        if (v34)
        {
          v35 = 1;
        }

        else
        {
          v22 = v33 + 1;
        }

        if (!v24)
        {
LABEL_66:
          v21 = *v23;
          goto LABEL_67;
        }
      }

      if (v24 + v21 < v31)
      {
        break;
      }

      v36 = v22 + v31;
      if (v22 + v31 < v21)
      {
        break;
      }

      v22 = v24 + v21 - v22;
      v37 = v21 > v31;
      if (v21 >= v31)
      {
        v21 = *v23;
      }

      if (!v37)
      {
        v22 = v24;
      }

      if (v36 > v22 + v21)
      {
        v22 = v36 - v21;
      }

LABEL_67:
      v23 += v35;
      if (v7 <= v22 + v21)
      {
        v38 = v25;
      }

      else
      {
        v38 = 0;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v22 = v24;
LABEL_73:
    v39 = v22 - 1;
    if (v22 == 1)
    {
      v40 = v49;
      v41 = v50;
      if (v50 >= v23)
      {
        if (v9 + 16 > v49)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v10 = (v49 - (v9 - v23));
        if (v9 != v23)
        {
          memmove((v49 - (v9 - v23)), v23, v9 - v23);
          v10 = (v49 - (v9 - v23));
          v40 = v49;
          v41 = v50;
        }

        v9 = v40;
      }

      else
      {
        v10 = v23;
      }

      *v41 = v21;
      v19 = v41 + 1;
LABEL_89:
      if (v19 + v9 - v10 + 16 <= v40)
      {
        v44 = v25;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v40 = v49;
  v19 = v50;
  if (v22)
  {
    if (v50 + 1 >= v23)
    {
      if (v9 + 16 > v49)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v10 = (v49 - (v9 - v23));
      v42 = v9 - v23;
      if (v9 != v23)
      {
        v43 = (v49 - (v9 - v23));
        memmove(v43, v23, v42);
        v10 = v43;
        v40 = v49;
        v19 = v50;
      }

      v9 = v40;
    }

    else
    {
      v10 = v23;
    }

    *v19 = v21;
    v19[1] = v39 | 0x8000000000000000;
    v19 += 2;
    goto LABEL_89;
  }

  v10 = v23;
LABEL_96:
  if (v25)
  {
    if (v17 >= v20)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v17 != v20)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v45 = v9 - v10;
  if (v9 > v10)
  {
    v46 = v19;
    memmove(v19, v10, v9 - v10);
    v19 = (v46 + v45);
  }

  *(v48 + 8) = (v19 - v47) >> 3;
  return v51;
}

uint64_t SIValueSet<unsigned long long>::FlatContextWithPfx::peek(uint64_t **a1)
{
  v1 = **a1;
  v2 = a1[3];
  if ((v2 & v1) != a1[2])
  {
    SIValueSet<unsigned int>::FlatContextWithPfx::peek();
  }

  return v1 & ~v2;
}

uint64_t SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(uint64_t **a1)
{
  v1 = *(*a1)++;
  v2 = a1[3];
  if ((v2 & v1) != a1[2])
  {
    SIValueSet<unsigned int>::FlatContextWithPfx::nextKey();
  }

  return v1 & ~v2;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::ContainsKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 12 + 4 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 2;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v13 = v4 + 1;
    do
    {
      if ((v12 & 0x80000000) != 0)
      {
        v15 = *(v13 - 2);
        v16 = v15 + (v12 & 0x7FFFFFFF);
        if (v3 >= v15 && v3 <= v16)
        {
          return 1;
        }

        if (v13 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v13 >= v6)
        {
          return result;
        }
      }

      v18 = *v13++;
      v12 = v18;
    }

    while (v3 != v18);
  }

  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::CloseKey(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = a1 + 12;
  v6 = a1 + 12 + 4 * v3;
  v7 = (a1 + 12);
  if (v3 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v3;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v4)
      {
        v7 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
  }

  if (v7 >= v6)
  {
LABEL_30:
    result = *(v5 + 4 * (v3 - 1));
    if ((result & 0x80000000) != 0)
    {
      return *(v5 + 4 * (v3 - 2)) + (result & 0x7FFFFFFF);
    }
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v16 = *v15++;
      result = v16;
      if (v4 == v16)
      {
        return a2 & a3 & 0x7FFFFFFF;
      }

      if ((result & 0x80000000) != 0)
      {
        v17 = *(v7 - 1);
        if (v4 >= v17 && v4 <= v17 + (result & 0x7FFFFFFF))
        {
          return a2 & a3 & 0x7FFFFFFF;
        }
      }

      else if (v4 < result)
      {
        return result;
      }

      v7 = v15;
      if (v15 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::RemoveKey(uint64_t a1, int a2, int a3)
{
  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = (a1 + 12);
  v6 = *(a1 + 8);
  v7 = a1 + 12 + 4 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v6;
    do
    {
      v10 = &v5[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v11 == v4)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 2;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (v4 == v15)
  {
LABEL_31:
    if (v14 >= v7)
    {
      goto LABEL_41;
    }

    v22 = *v14;
    if ((*v14 & 0x80000000) != 0)
    {
      *v5 = v15 + 1;
      if ((v22 & 0x7FFFFFFF) != 1)
      {
        *v14 = (v22 - 1) | 0x80000000;
        return 1;
      }

      v23 = v7 - (v5 + 2);
      v24 = v14;
      v14 = v5 + 2;
    }

    else
    {
      v23 = v7 - v14;
      v24 = v5;
    }

    memmove(v24, v14, v23);
    v25 = *(a1 + 8) - 1;
    goto LABEL_42;
  }

  v16 = 0;
  while (1)
  {
    v17 = &v5[v16 + 1];
    if ((v15 & 0x80000000) == 0)
    {
      result = 0;
      if (v4 < v15 || v17 >= v7)
      {
        return result;
      }

      goto LABEL_29;
    }

    v19 = v5[v16 - 1];
    v20 = v19 + (v15 & 0x7FFFFFFF);
    if (v4 > v19 && v4 <= v20)
    {
      break;
    }

    if (v17 >= v7)
    {
      return 0;
    }

LABEL_29:
    v15 = *v17;
    ++v16;
    if (v4 == v15)
    {
      v5 = (v5 + v16 * 4);
      v14 = v5 + 1;
      goto LABEL_31;
    }
  }

  v26 = &v5[v16];
  v27 = &v5[v16 + 1];
  if ((v15 & 0x7FFFFFFF) == 1)
  {
    if (v27 < v7)
    {
      memmove(v26, &v5[v16 + 1], a1 + 4 * v6 - v5 - v16 * 4 + 8);
      v6 = *(a1 + 8);
    }

LABEL_41:
    v25 = v6 - 1;
LABEL_42:
    *(a1 + 8) = v25;
  }

  else if (v4 == v20)
  {
    *v26 = (v15 - 1) | 0x80000000;
  }

  else if (v4 == v19 + 1)
  {
    *v26 = v4 + 1;
    if (v20 != v4 + 1)
    {
      v28 = *(a1 + 8);
      if (v28 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v29 = &v5[v16 - 2] - a1;
      if (v28 != v29 >> 2)
      {
        memmove(&v5[v16 + 2], &v5[v16 + 1], 4 * (v28 - (v29 >> 2)));
        LODWORD(v28) = *(a1 + 8);
      }

      *(a1 + 8) = v28 + 1;
      *v27 = (v20 + ~v4) | 0x80000000;
    }
  }

  else
  {
    v5[v16] = (v4 + ~v19) | 0x80000000;
    v30 = *(a1 + 8);
    if (v30 >= 0x3F)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
    }

    v31 = &v5[v16 - 2] - a1;
    if (v30 != v31 >> 2)
    {
      memmove(&v5[v16 + 2], &v5[v16 + 1], 4 * (v30 - (v31 >> 2)));
      LODWORD(v30) = *(a1 + 8);
    }

    *(a1 + 8) = v30 + 1;
    *v27 = v4 + 1;
    v32 = v20 + ~v4;
    if (v32)
    {
      v33 = *(a1 + 8);
      if (v33 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v34 = &v5[v16];
      v35 = &v5[v16 - 1] - a1;
      if (v33 != v35 >> 2)
      {
        memmove(&v5[v16 + 3], v34 + 2, 4 * (v33 - (v35 >> 2)));
        LODWORD(v33) = *(a1 + 8);
      }

      *(a1 + 8) = v33 + 1;
      v34[2] = v32 | 0x80000000;
    }
  }

  return 1;
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Apply(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 12);
  v14 = v9 + 12 + 4 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFF;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 4);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 4 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 12, v4);
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::valueIterator(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_287C3F7C0;
  a3[1] = a1 + 12;
  a3[2] = a1 + 12 + 4 * v3;
  a3[3] = 0;
  a3[4] = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::InertContext>(uint64_t a1, unsigned int **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = 4 * v5 + 12;
  v49 = a1 + 12;
  if (v5 >= 3)
  {
    v7 = (a1 + v6);
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = v7 - v4;
    }

    while (v7 > v4 && v5 > 2);
  }

  v13 = 0;
  v12 = 0;
  v14 = a1 + 264;
  v15 = v4;
  v16 = 1;
  v51 = a1 + 264;
  v52 = a1;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    v19 = a1 + v6;
    v20 = v4;
    while (1)
    {
      v21 = v18;
      while (v20 >= v19 || v3 < *v20)
      {
        if (v21)
        {
          v22 = v21 + v17;
          v23 = 1;
          if (v22 < v3)
          {
            goto LABEL_41;
          }

          v24 = v3 + 1;
          if (v24 < v17)
          {
            goto LABEL_41;
          }

          v25 = v21 + v17 - 1;
          v26 = v25 + v3;
          v27 = v17 > v3;
          if (v17 <= v3)
          {
            v28 = 0;
          }

          else
          {
            v17 = v3;
            v21 = v25;
            v28 = 1;
          }

          if (v27)
          {
            v22 = v26;
          }

          v29 = v21 + v24 - v22;
          if (v22 > v3)
          {
            v30 = v28;
          }

          else
          {
            v21 = v29;
            v30 = 1;
          }
        }

        else
        {
          v17 = v3;
          v21 = 1;
          v30 = 1;
        }

        v31 = *a2 + 2;
        v32 = **a2;
        *a2 = v31;
        if (v3 != v32)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v30;
        if (v31 >= a2[1])
        {
          v23 = 0;
          ++v13;
          goto LABEL_41;
        }

        v3 = *v31;
        ++v16;
        ++v13;
      }

      v23 = 1;
LABEL_41:
      if (v20 >= v19)
      {
        break;
      }

      v33 = *v20;
      if ((v20 + 1) >= v19)
      {
        v37 = 1;
        v18 = 1;
        if (!v21)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v34 = v20[1];
        v35 = v34 & 0x7FFFFFFF;
        v36 = v34 >= 0;
        if (v34 < 0)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }

        if (v36)
        {
          v18 = 1;
        }

        else
        {
          v18 = v35 + 1;
        }

        if (!v21)
        {
LABEL_61:
          v17 = *v20;
          goto LABEL_62;
        }
      }

      v38 = v21 + v17;
      if (v38 < v33)
      {
        break;
      }

      v39 = v18 + v33;
      if (v18 + v33 < v17)
      {
        break;
      }

      v40 = v21 - v18 + v17;
      v41 = v17 > v33;
      if (v17 >= v33)
      {
        v17 = *v20;
      }

      if (v41)
      {
        v21 = v40;
        v42 = v40 + v33;
      }

      else
      {
        v42 = v38;
      }

      if (v39 > v42)
      {
        v18 = v21 + v39 - v42;
      }

      else
      {
        v18 = v21;
      }

LABEL_62:
      v20 += v37;
      if (v18 + v17 >= v3)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v18 = v21;
LABEL_68:
    if (v18 == 1)
    {
      if (v15 >= v20)
      {
        if (v6 >= 257)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v4 = (v14 - (v19 - v20));
        if (v19 != v20)
        {
          v44 = v15;
          memmove((v14 - (v19 - v20)), v20, v19 - v20);
          v14 = v51;
          a1 = v52;
          v15 = v44;
        }

        v6 = 264;
      }

      else
      {
        v4 = v20;
      }

      *v15++ = v17;
LABEL_84:
      v19 = a1 + v6;
      if (v15 + a1 + v6 - v4 + 8 <= v14)
      {
        v45 = v23;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 & 1) == 0)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v20)
    {
      if (v6 >= 257)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v4 = (v14 - (v19 - v20));
      if (v19 != v20)
      {
        v50 = v15;
        memmove((v14 - (v19 - v20)), v20, v19 - v20);
        v15 = v50;
        v14 = v51;
        a1 = v52;
      }

      v6 = 264;
    }

    else
    {
      v4 = v20;
    }

    *v15 = v17;
    v15[1] = (v18 - 1) | 0x80000000;
    v15 += 2;
    goto LABEL_84;
  }

  v4 = v20;
LABEL_91:
  if (v23)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v46 = v19 - v4;
  if (v19 > v4)
  {
    v47 = v15;
    memmove(v15, v4, v19 - v4);
    a1 = v52;
    v15 = (v47 + v46);
  }

  *(a1 + 8) = (v15 - v49) >> 2;
  return v12;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContextWithPfx,SIValueSet<unsigned long long>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = 4 * v7 + 12;
  if (v7 >= 3)
  {
    v11 = (a1 + v8);
    v9 = (a1 + 12);
    do
    {
      v12 = &v9[4 * (v7 >> 1)];
      v13 = *v12;
      if ((*v12 & 0x80000000) != 0)
      {
        v14 = *(v12 - 1);
        v12 -= 4;
        v13 = v14;
      }

      if (v12 <= v9)
      {
        break;
      }

      if (v13 == v5)
      {
        v9 = v12;
        break;
      }

      if (v13 > v5)
      {
        v11 = v12;
      }

      else
      {
        v9 = v12;
      }

      v7 = (v11 - v9) >> 2;
    }

    while (v11 > v9 && v7 > 2);
  }

  else
  {
    v9 = (a1 + 12);
  }

  v47 = a1 + 12;
  v48 = a1;
  v16 = 0;
  v53 = 0;
  v49 = a1 + 264;
  v17 = v9;
  v18 = 1;
  while (2)
  {
    v50 = v8;
    v51 = v17;
    v19 = 0;
    v20 = 0;
    v21 = a1 + v8;
    v22 = v9;
    while (1)
    {
      v23 = v20;
      while (v22 >= v21 || v6 < *v22)
      {
        if (v23)
        {
          v24 = v23 + v19;
          v25 = 1;
          if (v24 < v6)
          {
            goto LABEL_51;
          }

          v26 = v6 + 1;
          if (v26 < v19)
          {
            goto LABEL_51;
          }

          v27 = v23 + v19 - 1;
          v28 = v19 > v6;
          v29 = v19 > v6;
          if (v19 >= v6)
          {
            v19 = v6;
          }

          if (v28)
          {
            v24 = v27 + v6;
          }

          else
          {
            v27 = v23;
          }

          v30 = v27 + v26 - v24;
          if (v24 <= v6)
          {
            v23 = v30;
          }

          else
          {
            v23 = v27;
          }

          v31 = v24 <= v6 || v29;
        }

        else
        {
          v23 = 1;
          v19 = v6;
          v31 = 1;
        }

        if (v6 != SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2))
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v31)
        {
          ++v53;
        }

        else if (a3)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | v6);
        }

        if (*a2 >= *(a2 + 8))
        {
          v25 = 0;
          ++v16;
          goto LABEL_51;
        }

        ++v16;
        if ((*(a2 + 24) & **a2) != *(a2 + 16))
        {
          v25 = 0;
          goto LABEL_51;
        }

        v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
        ++v18;
      }

      v25 = 1;
LABEL_51:
      if (v22 >= v21)
      {
        break;
      }

      v32 = *v22;
      if ((v22 + 1) >= v21)
      {
        v36 = 1;
        v20 = 1;
        if (!v23)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v33 = v22[1];
        v34 = v33 & 0x7FFFFFFF;
        v35 = v33 >= 0;
        v36 = 2;
        if (v35)
        {
          v36 = 1;
          v20 = 1;
        }

        else
        {
          v20 = v34 + 1;
        }

        if (!v23)
        {
LABEL_70:
          v19 = *v22;
          goto LABEL_71;
        }
      }

      v37 = v23 + v19;
      if (v37 < v32)
      {
        break;
      }

      v38 = v20 + v32;
      if (v20 + v32 < v19)
      {
        break;
      }

      v39 = v23 - v20 + v19;
      v40 = v39 + v32;
      v41 = v19 > v32;
      if (v19 >= v32)
      {
        v19 = *v22;
      }

      if (v41)
      {
        v42 = v39;
      }

      else
      {
        v42 = v23;
      }

      if (v41)
      {
        v37 = v40;
      }

      if (v38 > v37)
      {
        v20 = v42 + v38 - v37;
      }

      else
      {
        v20 = v42;
      }

LABEL_71:
      v22 += v36;
      if (v20 + v19 >= v6)
      {
        v43 = v25;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v20 = v23;
LABEL_77:
    if (v20 == 1)
    {
      if (v51 >= v22)
      {
        if (v50 >= 257)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v9 = (v49 - (v21 - v22));
        if (v21 != v22)
        {
          memmove((v49 - (v21 - v22)), v22, v21 - v22);
          v9 = (v49 - (v21 - v22));
        }

        v8 = 264;
        a1 = v48;
      }

      else
      {
        v9 = v22;
        a1 = v48;
        v8 = v50;
      }

      *v51 = v19;
      v17 = v51 + 1;
LABEL_93:
      v21 = a1 + v8;
      if (v17 + a1 + v8 - v9 + 8 <= v49)
      {
        v44 = v25;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  if (v20)
  {
    if (v51 + 1 >= v22)
    {
      if (v50 >= 257)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v9 = (v49 - (v21 - v22));
      if (v21 != v22)
      {
        memmove((v49 - (v21 - v22)), v22, v21 - v22);
        v9 = (v49 - (v21 - v22));
      }

      v8 = 264;
      a1 = v48;
    }

    else
    {
      v9 = v22;
      a1 = v48;
      v8 = v50;
    }

    *v51 = v19;
    v51[1] = (v20 - 1) | 0x80000000;
    v17 = v51 + 2;
    goto LABEL_93;
  }

  v9 = v22;
  a1 = v48;
  v17 = v51;
LABEL_100:
  v45 = v17;
  if (v25)
  {
    if (v16 >= v18)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v16 != v18)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v46 = v21 - v9;
  if (v21 > v9)
  {
    memmove(v45, v9, v21 - v9);
    v45 = (v45 + v46);
  }

  *(a1 + 8) = (v45 - v47) >> 2;
  return v53;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::ContainsKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a2 & a3 & 0x7FFF;
  v4 = (a1 + 10);
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 10 + 2 * v5;
    do
    {
      v8 = (v4 + (v5 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      else
      {
        v9 = *v8;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 1;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v13 = (v4 + 1);
    v14 = v12;
    do
    {
      if (v14 < 0)
      {
        v16 = *(v13 - 2);
        v17 = v16 + (v14 & 0x7FFF);
        if (v3 >= v16 && v3 <= v17)
        {
          return 1;
        }

        if (v13 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v13 >= v6)
        {
          return result;
        }
      }

      v19 = *v13++;
      v12 = v19;
      v14 = v19;
    }

    while (v3 != v19);
  }

  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::CloseKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = a1 + 10 + 2 * v3;
  if (v3 >= 3)
  {
    v7 = a1 + 10 + 2 * v3;
    do
    {
      v8 = (v5 + (v3 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      else
      {
        v9 = *v8;
      }

      if (v8 <= v5)
      {
        break;
      }

      if (v9 == v4)
      {
        v5 = v8;
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 1;
    }

    while (v7 > v5 && v3 > 2);
  }

  if (v5 >= v6)
  {
LABEL_31:
    result = *(v6 - 2);
    if (*(v6 - 2) < 0)
    {
      return (result & 0x7FFF) + *(v6 - 4);
    }
  }

  else
  {
    v13 = v5;
    while (1)
    {
      v14 = *v13++;
      result = v14;
      if (v4 == v14)
      {
        return a2 & a3 & 0x7FFF;
      }

      if ((result & 0x8000) != 0)
      {
        v15 = *(v5 - 1);
        if (v4 >= v15 && v4 <= v15 + (result & 0x7FFF))
        {
          return a2 & a3 & 0x7FFF;
        }
      }

      else if (v4 < result)
      {
        return result;
      }

      v5 = v13;
      if (v13 >= v6)
      {
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::RemoveKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = *(a1 + 8);
  v7 = a1 + 10 + 2 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 10 + 2 * v6;
    do
    {
      v10 = (v5 + (v8 & 0xFFFFFFFFFFFFFFFELL));
      v11 = *v10;
      if (v11 < 0)
      {
        v12 = *--v10;
        LOWORD(v11) = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v4 == v11)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 1;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (v4 == v15)
  {
LABEL_31:
    if (v14 >= v7)
    {
      goto LABEL_41;
    }

    v22 = *v14;
    if (v22 < 0)
    {
      *v5 = v15 + 1;
      if ((v22 & 0x7FFF) != 1)
      {
        *v14 = (v22 - 1) | 0x8000;
        return 1;
      }

      v23 = v7 - (v5 + 2);
      v24 = v14;
      v14 = v5 + 2;
    }

    else
    {
      v23 = v7 - v14;
      v24 = v5;
    }

    memmove(v24, v14, v23);
    v25 = *(a1 + 8) - 1;
    goto LABEL_42;
  }

  v16 = 0;
  while (1)
  {
    v17 = &v5[v16 + 1];
    if ((v15 & 0x8000) == 0)
    {
      result = 0;
      if (v4 < v15 || v17 >= v7)
      {
        return result;
      }

      goto LABEL_29;
    }

    v19 = v5[v16 - 1];
    v20 = (v19 + (v15 & 0x7FFF));
    if (v4 > v19 && v4 <= v20)
    {
      break;
    }

    if (v17 >= v7)
    {
      return 0;
    }

LABEL_29:
    v15 = *v17;
    ++v16;
    if (v4 == v15)
    {
      v5 = (v5 + v16 * 2);
      v14 = v5 + 1;
      goto LABEL_31;
    }
  }

  v26 = &v5[v16];
  v27 = &v5[v16 + 1];
  if ((v15 & 0x7FFF) == 1)
  {
    if (v27 < v7)
    {
      memmove(v26, &v5[v16 + 1], a1 + 2 * v6 - v5 - v16 * 2 + 8);
      LOWORD(v6) = *(a1 + 8);
    }

LABEL_41:
    v25 = v6 - 1;
LABEL_42:
    *(a1 + 8) = v25;
  }

  else if (v4 == v20)
  {
    *v26 = (v15 - 1) | 0x8000;
  }

  else if (v4 == v19 + 1)
  {
    *v26 = v4 + 1;
    if (v20 - 1 != v4)
    {
      v28 = *(a1 + 8);
      if (v28 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v29 = &v5[v16 - 4] - a1;
      if (v28 != v29 >> 1)
      {
        memmove(&v5[v16 + 2], &v5[v16 + 1], 2 * (v28 - (v29 >> 1)));
        LOWORD(v28) = *(a1 + 8);
      }

      *(a1 + 8) = v28 + 1;
      *v27 = (v20 + ~v4) | 0x8000;
    }
  }

  else
  {
    v5[v16] = (v4 + ~v19) | 0x8000;
    v30 = *(a1 + 8);
    if (v30 >= 0x3F)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
    }

    v31 = &v5[v16 - 4] - a1;
    if (v30 != v31 >> 1)
    {
      memmove(&v5[v16 + 2], &v5[v16 + 1], 2 * (v30 - (v31 >> 1)));
      LOWORD(v30) = *(a1 + 8);
    }

    *(a1 + 8) = v30 + 1;
    *v27 = v4 + 1;
    v32 = v20 + ~v4;
    if (v32)
    {
      v33 = *(a1 + 8);
      if (v33 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v34 = &v5[v16];
      v35 = &v5[v16 - 3] - a1;
      if (v33 != v35 >> 1)
      {
        memmove(&v5[v16 + 3], v34 + 2, 2 * (v33 - (v35 >> 1)));
        LOWORD(v33) = *(a1 + 8);
      }

      *(a1 + 8) = v33 + 1;
      v34[2] = v32 | 0x8000;
    }
  }

  return 1;
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Apply(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 10);
  v14 = v9 + 10 + 2 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      v18 = v13[1];
      if (v18 < 0)
      {
        v16 = v18 & 0x7FFF;
      }

      else
      {
        v16 = 0;
      }

      if (v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 2);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 2 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 10, v4);
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::valueIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_287C3F860;
  *(a3 + 8) = a1 + 10;
  *(a3 + 16) = a1 + 10 + 2 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::InertContext>(uint64_t a1, unsigned __int16 **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = *(a1 + 8);
  v5 = 2 * v4 + 10;
  v6 = (a1 + 10);
  if (v4 >= 3)
  {
    v7 = (a1 + v5);
    v6 = (a1 + 10);
    do
    {
      v8 = (v6 + (v4 & 0xFFFFFFFFFFFFFFFELL));
      v9 = *v8;
      if (v9 < 0)
      {
        v10 = *--v8;
        LOWORD(v9) = v10;
      }

      if (v8 <= v6)
      {
        break;
      }

      if (v9 == v3)
      {
        v6 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v6 = v8;
      }

      v4 = v7 - v6;
    }

    while (v7 > v6 && v4 > 2);
  }

  v47 = a1 + 10;
  v13 = 0;
  v12 = 0;
  v14 = a1 + 136;
  v15 = v6;
  v16 = 1;
  v49 = a1 + 136;
  v50 = a1;
  while (2)
  {
    LOWORD(v17) = 0;
    v18 = 0;
    v19 = a1 + v5;
    v20 = v6;
    while (1)
    {
      v21 = v18;
      while (v20 >= v19 || *v20 > v3)
      {
        if (v21)
        {
          v22 = v21 + v17;
          v23 = 1;
          if (v22 < v3)
          {
            goto LABEL_42;
          }

          v24 = v3 + 1;
          if (v24 < v17)
          {
            goto LABEL_42;
          }

          v25 = v17;
          v26 = v21 + v17 - 1;
          v27 = v26 + v3;
          if (v17 > v3)
          {
            LOWORD(v17) = v3;
          }

          if (v25 <= v3)
          {
            v28 = 0;
          }

          else
          {
            v21 = v26;
            v28 = 1;
          }

          if (v25 > v3)
          {
            v22 = v27;
          }

          v29 = v21 + v24 - v22;
          if (v22 > v3)
          {
            v30 = v28;
          }

          else
          {
            v21 = v29;
            v30 = 1;
          }
        }

        else
        {
          LOWORD(v17) = v3;
          v21 = 1;
          v30 = 1;
        }

        v31 = *a2 + 4;
        v32 = **a2;
        *a2 = v31;
        if (v32 != v3)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v30;
        if (v31 >= a2[1])
        {
          v23 = 0;
          ++v13;
          goto LABEL_42;
        }

        v3 = *v31;
        ++v16;
        ++v13;
      }

      v23 = 1;
LABEL_42:
      v33 = v17;
      if (v20 >= v19)
      {
        break;
      }

      v17 = *v20;
      if ((v20 + 1) >= v19)
      {
        v36 = 1;
        v18 = 1;
        if (!v21)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v34 = v20[1];
        v35 = v34 >= 0;
        if (v34 < 0)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        if (v35)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v20[1] & 0x7FFF) + 1;
        }

        if (!v21)
        {
          goto LABEL_63;
        }
      }

      if (v21 + v33 < v17)
      {
        break;
      }

      v37 = v18 + v17;
      if (v18 + v17 < v33)
      {
        break;
      }

      v38 = v21 - v18 + v33 + v17;
      v39 = v33 > v17;
      if (v33 < v17)
      {
        LOWORD(v17) = v33;
      }

      if (v39)
      {
        v21 = v21 - v18 + v33;
        v40 = v38;
      }

      else
      {
        v40 = v21 + v33;
      }

      if (v37 > v40)
      {
        v18 = v21 + v37 - v40;
      }

      else
      {
        v18 = v21;
      }

LABEL_63:
      v20 += v36;
      if (v18 + v17 >= v3)
      {
        v41 = v23;
      }

      else
      {
        v41 = 0;
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    LOWORD(v17) = v33;
    v18 = v21;
LABEL_69:
    if (v18 == 1)
    {
      if (v15 >= v20)
      {
        if (v5 >= 133)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v6 = (v14 - (v19 - v20));
        if (v19 != v20)
        {
          v42 = v15;
          memmove((v14 - (v19 - v20)), v20, v19 - v20);
          v14 = v49;
          a1 = v50;
          v15 = v42;
        }

        v5 = 136;
      }

      else
      {
        v6 = v20;
      }

      *v15++ = v17;
LABEL_85:
      v19 = a1 + v5;
      if (v15 + a1 + v5 - v6 + 4 <= v14)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v20)
    {
      if (v5 >= 133)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v6 = (v14 - (v19 - v20));
      if (v19 != v20)
      {
        v48 = v15;
        memmove((v14 - (v19 - v20)), v20, v19 - v20);
        v15 = v48;
        v14 = v49;
        a1 = v50;
      }

      v5 = 136;
    }

    else
    {
      v6 = v20;
    }

    *v15 = v17;
    v15[1] = (v18 - 1) | 0x8000;
    v15 += 2;
    goto LABEL_85;
  }

  v6 = v20;
LABEL_92:
  if (v23)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v44 = v19 - v6;
  if (v19 > v6)
  {
    v45 = v15;
    memmove(v15, v6, v19 - v6);
    a1 = v50;
    LODWORD(v15) = v45 + v44;
  }

  *(a1 + 8) = (v15 - v47) >> 1;
  return v12;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContextWithPfx,SIValueSet<unsigned long long>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = 2 * v7 + 10;
  v9 = (a1 + 10);
  if (v7 >= 3)
  {
    v10 = (a1 + v8);
    v9 = (a1 + 10);
    do
    {
      v11 = (v9 + (v7 & 0xFFFFFFFFFFFFFFFELL));
      v12 = *v11;
      if (v12 < 0)
      {
        v13 = *--v11;
        LOWORD(v12) = v13;
      }

      if (v11 <= v9)
      {
        break;
      }

      if (v12 == v5)
      {
        v9 = v11;
        break;
      }

      if (v12 > v5)
      {
        v10 = v11;
      }

      else
      {
        v9 = v11;
      }

      v7 = v10 - v9;
    }

    while (v10 > v9 && v7 > 2);
  }

  v44 = a1 + 10;
  v45 = a1;
  v16 = 0;
  v50 = 0;
  v46 = a1 + 136;
  v17 = v9;
  v18 = 1;
  v19 = v8;
  while (2)
  {
    v47 = v19;
    v48 = v17;
    LOWORD(v20) = 0;
    v21 = 0;
    v22 = a1 + v19;
    v23 = v9;
    do
    {
      v24 = v21;
      while (v23 >= v22 || *v23 > v6)
      {
        if (!v24)
        {
          v24 = 1;
          LOWORD(v20) = v6;
          goto LABEL_34;
        }

        v25 = v24 + v20;
        v26 = 1;
        if (v25 < v6)
        {
          goto LABEL_46;
        }

        v27 = v6 + 1;
        if (v27 < v20)
        {
          goto LABEL_46;
        }

        v28 = v20;
        v29 = v24 + v20 - 1;
        v30 = v20 > v6;
        if (v20 >= v6)
        {
          LOWORD(v20) = v6;
        }

        if (v28 > v6)
        {
          v24 = v29;
          v25 = v29 + v6;
        }

        if (v25 <= v6)
        {
          v24 = v24 + v27 - v25;
LABEL_34:
          v30 = 1;
        }

        if (v6 != SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2))
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v30)
        {
          ++v50;
        }

        else if (a3)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | v6);
        }

        if (*a2 >= *(a2 + 8))
        {
          v26 = 0;
          ++v16;
          goto LABEL_46;
        }

        ++v16;
        if ((*(a2 + 24) & **a2) != *(a2 + 16))
        {
          v26 = 0;
          goto LABEL_46;
        }

        ++v18;
        v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
      }

      v26 = 1;
LABEL_46:
      v31 = v20;
      if (v23 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *v23;
      if ((v23 + 1) >= v22)
      {
        v35 = 1;
        v21 = 1;
        if (!v24)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v32 = v23[1];
        v33 = v32 & 0x7FFF;
        v34 = v32 >= 0;
        v35 = 2;
        if (v34)
        {
          v35 = 1;
          v21 = 1;
        }

        else
        {
          v21 = v33 + 1;
        }

        if (!v24)
        {
          goto LABEL_66;
        }
      }

      v36 = v24 + v31;
      if (v36 < v20 || (v37 = v21 + v20, v21 + v20 < v31))
      {
LABEL_71:
        LOWORD(v20) = v31;
        v21 = v24;
        break;
      }

      v38 = v24 - v21 + v31 + v20;
      v39 = v31 > v20;
      if (v31 < v20)
      {
        LOWORD(v20) = v31;
      }

      if (v39)
      {
        v40 = v24 - v21 + v31;
      }

      else
      {
        v40 = v24;
      }

      if (v39)
      {
        v36 = v38;
      }

      if (v37 > v36)
      {
        v21 = v40 + v37 - v36;
      }

      else
      {
        v21 = v40;
      }

LABEL_66:
      v23 += v35;
      if (v21 + v20 >= v6)
      {
        v41 = v26;
      }

      else
      {
        v41 = 0;
      }
    }

    while ((v41 & 1) != 0);
    if (v21 == 1)
    {
      if (v48 >= v23)
      {
        if (v47 >= 133)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v9 = (v46 - (v22 - v23));
        if (v22 != v23)
        {
          memmove((v46 - (v22 - v23)), v23, v22 - v23);
        }

        v19 = 136;
        a1 = v45;
      }

      else
      {
        v9 = v23;
        a1 = v45;
        v19 = v47;
      }

      *v48 = v20;
      v17 = v48 + 1;
LABEL_88:
      v22 = a1 + v19;
      if (v17 + a1 + v19 - v9 + 4 <= v46)
      {
        v42 = v26;
      }

      else
      {
        v42 = 0;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  if (v21)
  {
    if (v48 + 1 >= v23)
    {
      if (v47 >= 133)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v9 = (v46 - (v22 - v23));
      if (v22 != v23)
      {
        memmove((v46 - (v22 - v23)), v23, v22 - v23);
      }

      v19 = 136;
      a1 = v45;
    }

    else
    {
      v9 = v23;
      a1 = v45;
      v19 = v47;
    }

    *v48 = v20;
    v48[1] = (v21 - 1) | 0x8000;
    v17 = v48 + 2;
    goto LABEL_88;
  }

  v9 = v23;
  a1 = v45;
  v17 = v48;
LABEL_95:
  v43 = v17;
  if (v26)
  {
    if (v16 >= v18)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v16 != v18)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  if (v22 > v9)
  {
    memmove(v17, v9, v22 - v9);
    v43 = v17 + v22 - v9;
  }

  *(a1 + 8) = (v43 - v44) >> 1;
  return v50;
}

uint64_t SIValueSet<unsigned long long>::applyFun(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = *a1++;
      SIValueSet<unsigned long long>::_SIValueSetInnerInsert(*a3, v6, *(a3 + 8), *(a3 + 16));
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::AddSortedKeysWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= *(a2 + 8))
  {
    return 0;
  }

  v6 = a1 + 8;
  while (1)
  {
    if ((*(a2 + 24) & *v3) != *(a2 + 16))
    {
      return 0;
    }

    Key = SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2);
    v8 = *(v6 + 8 * (Key >> 6));
    if (((1 << Key) & v8) == 0)
    {
      break;
    }

    if (a3)
    {
      SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | Key);
    }

    v3 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      return 0;
    }
  }

  *(v6 + 8 * ((Key << 16) >> 22)) = (1 << Key) | v8;
  return 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::CloseKey(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 + 8;
  if ((*(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) >> (a3 & a2)))
  {
    return a2;
  }

  LOWORD(v5) = a3 & a2;
  result = a2;
  while (1)
  {
    v5 = (v5 + 1);
    if (v5 >= 64)
    {
      break;
    }

    ++result;
    if ((*(v3 + 8 * (v5 >> 6)) >> v5))
    {
      return result;
    }
  }

  v6 = (a3 & a2);
  result = a2;
  while (v6 >= 1)
  {
    --v6;
    --result;
    if ((*(v3 + 8 * (v6 >> 6)) >> v6))
    {
      return result;
    }
  }

  return 0;
}

BOOL SIValueSet<unsigned long long>::BitmapHolder::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) << 16 >> 22));
  if ((v4 & v3) != 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 ^ v3;
  }

  return (v4 & v3) != 0;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::Apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v15[3] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  v15[1] = a1 + 8;
  v15[2] = 0;
  v15[0] = 0;
  result = SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(v15);
  v13 = 0;
  if (result)
  {
    v13 = 0;
    do
    {
      *&v11[8 * v13++] = SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::nextKey(v15) | a3;
      if (v13 == a2)
      {
        result = a4(v11, a2, a5);
        if (result)
        {
          goto LABEL_9;
        }

        v13 = 0;
      }

      result = SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(v15);
    }

    while ((result & 1) != 0);
  }

  if (v13)
  {
    result = a4(v11, v13, a5);
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::IsEmpty(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = a1 + 8;
  v2[2] = 0;
  return SIValueSet<unsigned int>::BitmapHolder::BitmapHolderContext::hasMore(v2) ^ 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 0);
  v4 = *(*a2 + 16);

  return v4(a2, a1 + 8, 512);
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::valueIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_287C3F900;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1 + 8;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::nextKey(uint64_t *a1)
{
  v1 = *(a1 + 8);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = a1[1];
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 8) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 8) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  v6 = *a1;
  *(a1 + 8) = v1 + 1;
  return v6 | v1;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerRemove(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = (a2 >> (60 - 4 * a3)) & 0xF;
  v7 = *(a1 + 8 * v6);
  if (v7)
  {
    do
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v6 = (a2 >> (56 - 4 * v5)) & 0xF;
      v7 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 8 * v6);
      ++v5;
    }

    while ((v7 & 1) != 0);
  }

  else
  {
    v8 = a1;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = (*(*v7 + 32))(v7);
  v10 = (*(*v7 + 56))(v7);
  if (v10 >= 0x3E)
  {
    v11 = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v7, v5, a4);
LABEL_10:
    *(v8 + 8 * v6) = v11;
    return v9;
  }

  if (!v10)
  {
    (*(*v7 + 72))(v7);
    CFAllocatorDeallocate(*(a4 + 16), v7);
    v11 = 0;
    goto LABEL_10;
  }

  return v9;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerIterate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v12 = (a3 + 1);
  v13 = 64 - 4 * (a3 + 1);
  do
  {
    result = *(a1 + 8 * v11);
    if (result)
    {
      v15 = v11 << v13;
      if (result)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerIterate(result & 0xFFFFFFFFFFFFFFFELL, v15 | a2, v12, a4, a5, a6);
      }

      else
      {
        result = (*(*result + 40))(result, a6, v15 | a2, a4, a5);
      }
    }

    ++v11;
  }

  while (v11 != 16);
  return result;
}

CFStringRef SIStringCopyComposedString(const __CFString *a1, CFIndex a2, CFIndex a3)
{
  result = 0;
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v5 <= 299)
  {
    v20 = 0;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v5, 0x8000100u);
    v9 = MaximumSizeForEncoding + 1;
    MEMORY[0x28223BE20](MaximumSizeForEncoding);
    v11 = (&v18 - v10);
    bzero(&v18 - v10, v12);
    v22.location = a2;
    v22.length = a3;
    CFStringGetCharacters(a1, v22, v11);
    v19 = 0;
    MEMORY[0x28223BE20](v13);
    v15 = &v18 - v14;
    bzero(&v18 - v14, v9);
    if (CFStringEncodingUnicodeToBytes())
    {
      result = 0;
    }

    else
    {
      v16 = v19;
      v15[v19] = 0;
      result = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v15, v16, 0x8000100u, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *SIStringCopyIndexableStringForLocale(const __CFLocale *a1, const __CFString *a2, CFIndex a3, CFIndex a4)
{
  MutableCopy = 0;
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v5 <= 299)
  {
    v26 = 0;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v5, 0x8000100u);
    v11 = MaximumSizeForEncoding + 1;
    MEMORY[0x28223BE20](MaximumSizeForEncoding);
    v13 = (&v24 - v12);
    bzero(&v24 - v12, v14);
    v28.location = a3;
    v28.length = a4;
    CFStringGetCharacters(a2, v28, v13);
    v25 = 0;
    MEMORY[0x28223BE20](v15);
    v17 = &v24 - v16;
    bzero(&v24 - v16, v11);
    if (CFStringEncodingUnicodeToBytes() || (v18 = v25, v17[v25] = 0, v19 = *MEMORY[0x277CBECE8], (v20 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v17, v18, 0x8000100u, 0, *MEMORY[0x277CBED00])) == 0))
    {
      MutableCopy = 0;
    }

    else
    {
      v21 = v20;
      MutableCopy = CFStringCreateMutableCopy(v19, v11, v20);
      CFStringFold(MutableCopy, 0x181uLL, a1);
      CFRelease(v21);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

uint64_t SILanguagesGetLocale(unsigned int a1)
{
  if (a1 - 59 < 0xFFFFFFC7)
  {
    return 0;
  }

  v3 = SILanguagesGetLocale::gLocales[a1];
  if (!v3)
  {
    v9 = v1;
    v10 = v2;
    v4 = a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __SILanguagesGetLocale_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    v8 = a1;
    if (SILanguagesGetLocale::onceLocalesToken[a1] != -1)
    {
      v6 = a1;
      dispatch_once(&SILanguagesGetLocale::onceLocalesToken[a1], block);
      v4 = v6;
    }

    return SILanguagesGetLocale::gLocales[v4];
  }

  return v3;
}

CFLocaleRef __SILanguagesGetLocale_block_invoke(CFLocaleRef result)
{
  v1 = *(result + 8);
  if ((v1 - 1) <= 0x39)
  {
    v2 = result;
    result = CFLocaleCreate(*MEMORY[0x277CBECE8], gLanguageTags[v1]);
    SILanguagesGetLocale::gLocales[*(v2 + 8)] = result;
  }

  return result;
}

__CFString *SILanguagesGetLanguage(int a1)
{
  if ((a1 - 1) > 0x39)
  {
    return 0;
  }

  else
  {
    return gLanguageTags[a1];
  }
}

uint64_t SILanguagesGetLanguageID(const __CFLocale *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MEMORY[0x26D680710]();
  if (CFStringHasPrefix(v2, @"und"))
  {
    return 1;
  }

  v3 = MEMORY[0x26D680E30](a1);
  if (v3 <= 1)
  {
    Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEED0]);
    if (CFStringHasPrefix(Value, @"hr"))
    {
      return 6;
    }

    else if (CFStringHasPrefix(Value, @"cs"))
    {
      return 7;
    }

    else if (CFStringHasPrefix(Value, @"el"))
    {
      return 14;
    }

    else if (CFStringHasPrefix(Value, @"sk"))
    {
      return 28;
    }

    else if (CFStringHasPrefix(Value, @"hy"))
    {
      return 35;
    }

    else
    {
      if (CFStringHasPrefix(Value, @"bn"))
      {
        return 36;
      }

      if (CFStringHasPrefix(Value, @"pa"))
      {
        return 37;
      }

      if (CFStringHasPrefix(Value, @"bn"))
      {
        return 36;
      }

      else if (CFStringHasPrefix(Value, @"gu"))
      {
        return 38;
      }

      else if (CFStringHasPrefix(Value, @"or"))
      {
        return 39;
      }

      else if (CFStringHasPrefix(Value, @"ta"))
      {
        return 40;
      }

      else if (CFStringHasPrefix(Value, @"te"))
      {
        return 41;
      }

      else if (CFStringHasPrefix(Value, @"kn"))
      {
        return 42;
      }

      else if (CFStringHasPrefix(Value, @"ml"))
      {
        return 43;
      }

      else if (CFStringHasPrefix(Value, @"si"))
      {
        return 44;
      }

      else if (CFStringHasPrefix(Value, @"lo"))
      {
        return 45;
      }

      else if (CFStringHasPrefix(Value, @"bo"))
      {
        return 46;
      }

      else if (CFStringHasPrefix(Value, @"my"))
      {
        return 47;
      }

      else if (CFStringHasPrefix(Value, @"ka"))
      {
        return 48;
      }

      else if (CFStringHasPrefix(Value, @"am"))
      {
        return 49;
      }

      else if (CFStringHasPrefix(Value, @"chr"))
      {
        return 50;
      }

      else if (CFStringHasPrefix(Value, @"iu"))
      {
        return 51;
      }

      else if (CFStringHasPrefix(Value, @"km"))
      {
        return 52;
      }

      else if (CFStringHasPrefix(Value, @"mn"))
      {
        return 53;
      }

      else if (CFStringHasPrefix(Value, @"id"))
      {
        return 57;
      }

      else if (CFStringHasPrefix(Value, @"kk"))
      {
        return 58;
      }
    }
  }

  return v3;
}

uint64_t SILanguagesGetLanguageIDForIdentifier(CFLocaleIdentifier localeIdentifier)
{
  if (!localeIdentifier)
  {
    return 0;
  }

  v1 = CFLocaleCreate(*MEMORY[0x277CBECE8], localeIdentifier);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  LanguageID = SILanguagesGetLanguageID(v1);
  CFRelease(v2);
  return LanguageID;
}

const __CFLocale *SILanguagesCopyLocaleIdentifier(unsigned int a1, CFIndex a2)
{
  result = SILanguagesGetLocale(a1);
  if (result)
  {
    v4 = result;
    Region = SILanguagesGetRegion(a2);

    return CFLocaleCopyNormalizedLocaleIdentifierForRegion(v4, Region);
  }

  return result;
}

const void *SILanguagesGetRegion(CFIndex a1)
{
  if (getRegions(void)::onceToken == -1)
  {
    if (a1 < 0)
    {
      return 0;
    }
  }

  else
  {
    SILanguagesGetRegion_cold_1();
    if (a1 < 0)
    {
      return 0;
    }
  }

  v2 = getRegions(void)::gRegions;
  if (CFArrayGetCount(getRegions(void)::gRegions) <= a1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v2, a1);
}

const __CFLocale *SILanguagesIsCJK(const __CFLocale *result)
{
  if (result)
  {
    LanguageID = SILanguagesGetLanguageID(result);
    return ((LanguageID < 0x37) & (0x40000000300030uLL >> LanguageID));
  }

  return result;
}

CFIndex SILanguagesGetRegionID(const void *a1)
{
  if (getRegions(void)::onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return -1;
  }

  SILanguagesGetRegion_cold_1();
  if (!a1)
  {
    return -1;
  }

LABEL_3:
  v2 = getRegions(void)::gRegions;
  v4.length = CFArrayGetCount(getRegions(void)::gRegions);
  v4.location = 0;
  result = CFArrayGetFirstIndexOfValue(v2, v4, a1);
  if (result < 0)
  {
    return -1;
  }

  return result;
}

uint64_t SILanguagesGuessLanguageInStringWithHints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 2) != 0)
  {

    return MEMORY[0x282152450]();
  }

  else
  {
    v6 = NLStringTokenizerCopyBestStringLanguage();
    if (v6)
    {
      v7 = v6;
      LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier(v6);
      CFRelease(v7);
      return LanguageIDForIdentifier;
    }

    else
    {
      return 1;
    }
  }
}

CFArrayRef ___ZL10getRegionsv_block_invoke()
{
  result = CFLocaleCopyISOCountryCodes();
  getRegions(void)::gRegions = result;
  return result;
}

uint64_t SIMurmurHash3_x86_32(uint64_t a1, int a2, int a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = a3 ^ 0x971E137B;
  v5 = (a1 + (v3 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v8 = -(v3 >> 2);
    v9 = -1789642873;
    v10 = 718793509;
    do
    {
      v9 = 5 * v9 + 2071795100;
      v10 = 5 * v10 + 1808688022;
      HIDWORD(v11) = v9 * *&v5[4 * v8];
      LODWORD(v11) = HIDWORD(v11);
      v12 = (v11 >> 21) * v10;
      HIDWORD(v11) = v4;
      LODWORD(v11) = v4;
      v4 = v12 ^ (5 * (v11 >> 19) + 1390208809);
    }

    while (!__CFADD__(v8++, 1));
    v7 = 5 * v9 + 2071795100;
    v6 = 5 * v10 + 1808688022;
  }

  else
  {
    v6 = 1107688271;
    v7 = 1713515327;
  }

  v14 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v14 = v5[2] << 16;
    }

    v14 |= v5[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v15) = (v14 ^ *v5) * v7;
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 21) * v6;
  HIDWORD(v15) = v4;
  LODWORD(v15) = v4;
  v4 = v16 ^ (5 * (v15 >> 19) + 1390208809);
LABEL_17:
  v17 = -1028477387 * ((-2048144789 * (v4 ^ a2)) ^ ((-2048144789 * (v4 ^ a2)) >> 13));
  return a3 ^ HIWORD(v17) ^ v17;
}

uint64_t SIMurmurHash3_x86_32String(const __CFString *a1, int a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  v12[0] = Length;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
  v8 = v12 - v7;
  bzero(v12 - v7, v6 + 1);
  v13.location = 0;
  v13.length = Length;
  CFStringGetBytes(a1, v13, 0x8000100u, 0x2Du, 0, v8, MaximumSizeForEncoding + 1, v12);
  v9 = v12[0];
  v8[v12[0]] = 0;
  result = SIMurmurHash3_x86_32(v8, v9, a2);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t store_stream_init(uint64_t a1, _DWORD *a2, char a3)
{
  v10 = 0;
  v6 = fd_open(a2, &v10);
  v7 = v6;
  inited = store_stream_init_fd(a1, v6, v10, 0, a3);
  if (inited)
  {
    *(a1 + 56) = a2;
  }

  else
  {
    fd_close(a2, v7, v10);
  }

  return inited;
}

uint64_t store_stream_init_fd(uint64_t a1, uint64_t a2, uint64_t a3, off_t a4, char a5)
{
  memset(&v17, 0, sizeof(v17));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = -1;
  v10 = fstat(a2, &v17);
  *(a1 + 16) = v10;
  if (!v10)
  {
    st_size = 0x100000;
    *(a1 + 32) = 0x100000;
    if ((a5 & 1) == 0)
    {
      st_size = v17.st_size;
      if (v17.st_size >= 0x100000)
      {
        st_size = 0x100000;
      }

      else
      {
        *(a1 + 32) = v17.st_size;
      }
    }

    v15 = malloc_type_malloc(st_size, 0x9B7C0D93uLL);
    *(a1 + 48) = v15;
    if (v15)
    {
      *(a1 + 24) = a4;
      if (a5)
      {
LABEL_13:
        *a1 = a2;
        *(a1 + 8) = a3;
        return 1;
      }

      v16 = prot_pread(a2, v15, *(a1 + 32), a4);
      if (v16 != -1)
      {
        *(a1 + 24) += v16;
        *(a1 + 32) = v16;
        goto LABEL_13;
      }
    }
  }

  v11 = __error();
  v12 = *v11;
  *(a1 + 16) = *v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    store_stream_init_fd_cold_1(v12);
  }

  store_stream_destroy(a1);
  return 0;
}

void store_stream_destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    free(v2);
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    if (*a1 != -1)
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        fd_close(v3, *a1, *(a1 + 8));
        *a1 = -1;
      }
    }

    *(a1 + 56) = 0;
  }
}

uint64_t store_stream_flush(unsigned int *a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    goto LABEL_2;
  }

  v7 = (a1 + 2);
  v8 = *(a1 + 1);
  v9 = *a1;
  if (v8)
  {
    v10 = prot_pwrite_guarded(v9, v7, *(a1 + 6), *(a1 + 5), *(a1 + 3));
  }

  else
  {
    v10 = prot_pwrite(v9, *(a1 + 6), *(a1 + 5), *(a1 + 3));
  }

  if (*(a1 + 5) == v10)
  {
    *(a1 + 3) += v10;
  }

  else
  {
    v2 = *__error();
    a1[4] = v2;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    store_stream_flush_cold_1(v2);
  }

  v2 = a1[4];
LABEL_10:
  *(a1 + 5) = 0;
  if (a2 && !v2)
  {
    v11 = fsync(*a1);
    a1[4] = v11;
    if (v11)
    {
      v2 = *__error();
      a1[4] = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12[0] = 67109120;
        v12[1] = v2;
        _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_flush sync err:%d", v12, 8u);
        v2 = a1[4];
      }
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_2:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t data_map32_get_data_entry@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = result;
  v94 = *MEMORY[0x277D85DE8];
  *(a8 + 16) = 0;
  *a3 = 0;
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 20) = *(result + 224);
  v69 = 0;
  if (!a4)
  {
    result = data_map32_get_data(result, a2, &v69);
LABEL_14:
    if (result)
    {
      *a3 = 1;
      v29 = *(v10 + 224);
      v30 = v69 - v29;
      *a8 = result;
      *(a8 + 8) = v30;
      *(a8 + 20) = v29;
      if (v29)
      {
        result = __memcpy_chk();
      }
    }

    goto LABEL_20;
  }

  if (*(result + 220) > a2)
  {
    v12 = *(result + 1352);
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *(v12 + 4 * a2);
    if (v13 == 1)
    {
      goto LABEL_20;
    }

    v70 = 0;
    v71 = 0;
    HIBYTE(v72) = 0;
    v14 = *(result + 1328);
    if (v14 <= v13)
    {
      bzero(v84, 0x100uLL);
      v42 = *__error();
      v43 = _SILogForLogForCategory(0);
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v44)
      {
        v56 = *(v10 + 1328);
        v57 = OUTLINED_FUNCTION_10(v44, v45, v46, v47, v48, v49, v50, v51, v67, v68, v69, v70, v71, v72, *buf, *&buf[8]);
        *__s = 136316418;
        v86 = "_data_map32_get_data_entry";
        v87 = 1024;
        v88 = 446;
        v89 = 2048;
        *v90 = v13;
        *&v90[8] = 2048;
        *v91 = v56;
        *&v91[8] = 2048;
        *v92 = v10;
        *&v92[8] = 2080;
        v93 = v57;
        _os_log_error_impl(&dword_26B7AA000, v43, OS_LOG_TYPE_ERROR, "%s:%d: invalid data offset 0x%lx 0x%lx %p %s", __s, 0x3Au);
      }

      v52 = __error();
      result = 0;
      *v52 = v42;
    }

    else
    {
      data_entry_restore_32(*(result + 1320), v13, v14, &v70, &v72 + 7, a5, a6, a7);
      if (HIBYTE(v72) == 1)
      {
        bzero(__s, 0xC8uLL);
        v15 = 5;
        v16 = v13;
        do
        {
          if (v16 >= *(v10 + 1328))
          {
            break;
          }

          v17 = strlen(__s);
          sprintf(&__s[v17], "%d ", *(*(v10 + 1320) + v16++));
          --v15;
        }

        while (v15);
        bzero(v84, 0x100uLL);
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (v20)
        {
          v58 = OUTLINED_FUNCTION_10(v20, v21, v22, v23, v24, v25, v26, v27, v67, v68, v69, v70, v71, v72, *buf, *&buf[8]);
          v59 = *(v10 + 1328);
          *buf = 136316674;
          *&buf[4] = "_data_map32_get_data_entry";
          *&buf[12] = 1024;
          *&buf[14] = 442;
          v74 = 2080;
          v75 = v58;
          v76 = 2048;
          v77 = v13;
          v78 = 2048;
          v79 = v59;
          v80 = 2048;
          v81 = v70;
          v82 = 2080;
          v83 = __s;
          _os_log_error_impl(&dword_26B7AA000, v19, OS_LOG_TYPE_ERROR, "%s:%d: data_entry_restore_32 failure: %s off: 0x%lx end: 0x%lx sz: 0x%lx sz bytes: %s", buf, 0x44u);
        }

        v28 = __error();
        result = 0;
        *v28 = v18;
      }

      else
      {
        v53 = *(v10 + 224);
        v69 = v70 - v53;
        if (*(v10 + 1440))
        {
          os_unfair_lock_lock((v10 + 1436));
          v66 = *(v10 + 1440);
          if (v66)
          {
            bit_vector_set(v66, a2, v60, v61, v62, v63, v64, v65);
          }

          os_unfair_lock_unlock((v10 + 1436));
          v53 = *(v10 + 224);
        }

        result = v71 + v53;
      }
    }

    goto LABEL_14;
  }

  bzero(v84, 0x100uLL);
  v31 = __error();
  v32 = OUTLINED_FUNCTION_11(v31);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (v33)
  {
    v54 = *(v10 + 220);
    v55 = OUTLINED_FUNCTION_10(v33, v34, v35, v36, v37, v38, v39, v40, v67, v68, v69, v70, v71, v72, *buf, *&buf[8]);
    *__s = 136316418;
    v86 = "_data_map32_get_offset_entry";
    v87 = 1024;
    v88 = 422;
    v89 = 1024;
    *v90 = a2;
    *&v90[4] = 1024;
    *&v90[6] = v54;
    *v91 = 2048;
    *&v91[2] = v10;
    *v92 = 2080;
    *&v92[2] = v55;
    _os_log_error_impl(&dword_26B7AA000, v32, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", __s, 0x32u);
  }

  result = __error();
  *result = a8;
LABEL_20:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t data_map32_get_data_offset_locked(uint64_t a1, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 220) <= a2)
  {
    bzero(v28, 0x100uLL);
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 220);
      fd_name(*(a1 + 1272), v28, 0x100uLL);
      *v20 = 136316418;
      OUTLINED_FUNCTION_1();
      *&v20[7] = 422;
      v20[9] = v18;
      v21 = a2;
      v22 = v18;
      v23 = v17;
      v24 = 2048;
      v25 = a1;
      v26 = 2080;
      v27 = v19;
      _os_log_error_impl(&dword_26B7AA000, v14, OS_LOG_TYPE_ERROR, "%s:%d: invalid data id %d max %u %p %s", v20, 0x32u);
    }

    v5 = 0;
    *__error() = v13;
  }

  else
  {
    v4 = *(a1 + 1352);
    if (!v4 || (v5 = *(v4 + 4 * a2), v5 == 1))
    {
      v5 = 0;
    }

    else if (*(a1 + 1440))
    {
      os_unfair_lock_lock((a1 + 1436));
      v12 = *(a1 + 1440);
      if (v12)
      {
        bit_vector_set(v12, a2, v6, v7, v8, v9, v10, v11);
      }

      os_unfair_lock_unlock((a1 + 1436));
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

int *_data_map32_wrlock_cold_1(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = __error();
  v4 = OUTLINED_FUNCTION_11(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (a1 == -1)
    {
      v7 = *__error();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_5(&dword_26B7AA000, v8, v9, "%s:%d: _data_map32_wrlock error %d", v10, v11, v12, v13, 2u);
  }

  result = __error();
  *result = v1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int *_data_map32_rdlock_cold_1(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = __error();
  v4 = OUTLINED_FUNCTION_11(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (a1 == -1)
    {
      v7 = *__error();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_5(&dword_26B7AA000, v8, v9, "%s:%d: _data_map32_rdlock error %d", v10, v11, v12, v13, 2u);
  }

  result = __error();
  *result = v1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int *_data_map32_unlock_cold_1(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = __error();
  v4 = OUTLINED_FUNCTION_11(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (a1 == -1)
    {
      v7 = *__error();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_5(&dword_26B7AA000, v8, v9, "%s:%d: _data_map32_unlock error %d", v10, v11, v12, v13, 2u);
  }

  result = __error();
  *result = v1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void data_map32_init_with_ctx_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: hash fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: fd_truncate error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: offsets fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: fd_truncate error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: storage fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: fd_truncate error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: fd_truncate error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: header pread error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: invalid offset signature", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_10(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
  v7 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: re-build hash error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: invalid hash size 1", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_13(int *a1, int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a2;
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
  v7 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_14(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_16(unsigned int *a1, int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a2;
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_17()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: offset fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_18()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: offset fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_19()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: storage fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_20()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: fd_truncate error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_21(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void data_map32_init_with_ctx_cold_22()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: param error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _data_map32_rehash_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void data_map32_validate_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: Error mismatch hash ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_validate_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: Error mismatch hash ids ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_validate_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: Error mismatch offset ids ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_validate_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: entry exceeds storage", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_id_get_with_key_noextra_cold_1(os_unfair_lock_s *a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_9(a1);
  if (*v4)
  {
    bit_vector_set(*v4, a3, v6, v7, v8, v9, v10, v11);
  }

  os_unfair_lock_unlock(v3 + 359);
}

void _data_map32_set_seen_id_cold_1(os_unfair_lock_s *a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_9(a1);
  if (*v4)
  {
    bit_vector_set(*v4, a3, v6, v7, v8, v9, v10, v11);
  }

  os_unfair_lock_unlock(v3 + 359);
}

void data_map32_get_data_cold_1(os_unfair_lock_s *a1, uint64_t a2, CFIndex a3)
{
  OUTLINED_FUNCTION_9(a1);
  if (*v4)
  {
    bit_vector_set(*v4, a3, v6, v7, v8, v9, v10, v11);
  }

  os_unfair_lock_unlock(v3 + 359);
}

void data_map32_garbage_collect_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: storage fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_garbage_collect_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: offsets fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void data_map32_garbage_collect_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26B7AA000, v0, v1, "%s:%d: storage fd_mmap error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void bit_vector_set_cold_1(__CFBitVector *MutableCopy, uint64_t a2, uint64_t a3, CFIndex *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (MutableCopy)
  {
    v10 = MutableCopy;
  }

  else
  {
    v10 = 32;
  }

  while (1)
  {
    v10 *= 2;
    if (v10 > a2)
    {
      break;
    }

    if (v10 <= MutableCopy)
    {
      goto LABEL_6;
    }
  }

  v11 = *(a3 + 16);
  v12 = *MEMORY[0x277CBECE8];
  if (v11)
  {
    MutableCopy = CFBitVectorCreateMutableCopy(v12, v10, v11);
  }

  else
  {
    MutableCopy = CFBitVectorCreateMutable(v12, v10);
  }

  v13 = MutableCopy;
  if (!MutableCopy)
  {
LABEL_6:
    __message_assert(MutableCopy, a2, a3, a4, a5, a6, a7, a8, "bit_vector.h");
    OUTLINED_FUNCTION_0();
  }

  CFBitVectorSetCount(MutableCopy, v10);
  v14 = *(a3 + 16);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a3 + 16) = v13;
  *a4 = v10;
}

void data_entry_restore_32_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  si_analytics_log(a1, a2, a3, a4, a5, a6, a7, a8, "VIntUtils.h");
  MEMORY[0xB00] = -559038737;
  abort();
}

void si_analytics_log_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3 = 136315138;
  v4 = v1;
  _os_log_fault_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void si_get_token_info_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __message_assert_0(a1, a2, a3, a4, a5, a6, a7, a8, "VIntUtils.h");
  MEMORY[0xBAD] = -559038737;
  abort();
}

void si_calendar_release(void *__new)
{
  if (__new)
  {
    OSAtomicEnqueue(&s_si_calendar_head, __new, 0);
  }
}

void si_calendar_retain_cold_1(void *a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0xE00401D00DCF7uLL);
  *a1 = v2;
  if (qword_2804234F0 != -1)
  {
    dispatch_once(&qword_2804234F0, &__block_literal_global);
  }

  v3 = *MEMORY[0x277CBED08];
  v4 = *MEMORY[0x277CBEE80];
  v5 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBED08], *MEMORY[0x277CBEE80]);
  v2[1] = v5;
  CFCalendarSetTimeZone(v5, _MergedGlobals);
  v2[3] = _MergedGlobals;
  v6 = CFCalendarCreateWithIdentifier(v3, v4);
  v2[2] = v6;
  CFCalendarSetTimeZone(v6, qword_2804234E8);
  v2[4] = qword_2804234E8;
}

int *_expandFunctions_cold_2(double *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v7 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a1;
    v11 = 134218498;
    v12 = v8;
    v13 = 2080;
    v14 = a2;
    v15 = 2080;
    v16 = a3;
    _os_log_impl(&dword_26B7AA000, v7, OS_LOG_TYPE_DEFAULT, "Computed time (%lld) %s from %s", &v11, 0x20u);
  }

  result = __error();
  *result = v6;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void SIDataMapLookupStringKey_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SIDataMap: length didn't match expected (%ld, %ld)", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void CITokenizerCreate_cold_1()
{
  v0 = __error();
  __message_assert_1("%s:%u: failed assertion '%s' %s NLStringTokenizerCreate err:%d", "CITokenizer.c", 173, "false", "", *v0);
  OUTLINED_FUNCTION_0();
}

void CITokenizerStateInit_cold_1(int a1)
{
  v2 = __error();
  __message_assert_1("%s:%u: failed assertion '%s' %s alloc err:%d (%x)", "CITokenizer.c", 78, "state->uniChars", "", *v2, a1);
  OUTLINED_FUNCTION_0();
}

void nosymlink_chown_chmod_directory_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_26B7AA000, MEMORY[0x277D86220], v0, "Changing user ID (%u -> %u): %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void nosymlink_chown_chmod_directory_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_26B7AA000, MEMORY[0x277D86220], v0, "Changing group ID (%u -> %u): %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void nosymlink_chown_chmod_directory_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_26B7AA000, MEMORY[0x277D86220], v0, "Modifying permissions (%o -> %o): %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void createStaticLexicon(uint64_t *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_26B7AA000, log, OS_LOG_TYPE_ERROR, "Failed to create system lexicon for language ID %d, error:%@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void fd_create_sibling_protected_cold_1(uint64_t *a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x28u);
  v10 = *MEMORY[0x277D85DE8];
}

int *_fd_acquire_fd_cold_2()
{
  v0 = *__error();
  v1 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0(&dword_26B7AA000, v2, v3, "open file failed to change fdguard", v4, v5, v6, v7, 0);
  }

  result = __error();
  *result = v0;
  return result;
}

void _fd_acquire_fd_cold_3(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "_fd_acquire_fd";
  v4 = 1024;
  v5 = 1649;
  _os_log_error_impl(&dword_26B7AA000, log, OS_LOG_TYPE_ERROR, "%s:%d: fd_ptr instance was invalidated", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void fd_hold_assertion_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

void fd_hold_assertion_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void fd_drop_assertion_cold_1(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  fd_name(a1, a2, 0x400uLL);
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
  v9 = *MEMORY[0x277D85DE8];
}

int *fd_drop_assertion_cold_2()
{
  v0 = *__error();
  v1 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0(&dword_26B7AA000, v2, v3, "Unable to drop assertion as obj is invalid", v4, v5, v6, v7, 0);
  }

  result = __error();
  *result = v0;
  return result;
}

int *fd_copyfile_cold_1()
{
  v0 = *__error();
  v1 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0(&dword_26B7AA000, v2, v3, "copy file failed to change fdguard", v4, v5, v6, v7, 0);
  }

  result = __error();
  *result = v0;
  return result;
}

void fd_system_status_set_busy_cold_1(char a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "======= fd_system_status_set_busy:%d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void SIGeneralTrieAddStringKey_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1(&dword_26B7AA000, MEMORY[0x277D86220], v1, "SIGeneralTrie: length didn't match expected (%ld, %ld)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void SILanguageResourcesCreate()
{
  dispatch_once(&logger(void)::token, &__block_literal_global_102);
}

{
  dispatch_once(&logger(void)::token, &__block_literal_global_102);
}

void __SILanguageModelIsStopWord_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B7AA000, a2, OS_LOG_TYPE_ERROR, "localization (IsStopWord): %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void SILanguageResourcesRelease(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_26B7AA000, a2, OS_LOG_TYPE_DEBUG, "Releasing resources for language ID %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void SIResourcePool::acquireResourceLocked(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2(&dword_26B7AA000, v2, v3, "pool %d resource acquired, %lu active, %lu unused", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

void SIResourcePool::acquireResourceLocked(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  OUTLINED_FUNCTION_1_3(&dword_26B7AA000, a2, a3, "pool %d got compacted to zero or timeout while waiting for resource acquisition, failed to acquire", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

void SIResourcePool::releaseResource(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2(&dword_26B7AA000, v2, v3, "pool %d resource released, %lu active, %lu unused", v5, v6, v7);
  v4 = *MEMORY[0x277D85DE8];
}

void SIResourcePools::populateLocked()
{
  dispatch_once(&SIResourcePools::populateLocked(int,unsigned long,BOOL,std::function<void * ()(void)> const&)::once, &__block_literal_global_11);
}

{
  dispatch_once(&logger(void)::token, &__block_literal_global_11_0);
}

void SIResourcePools::populateLocked(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3(&dword_26B7AA000, a2, a3, "pool %d marked as 'failing'", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void ___ZN15SIResourcePools14populateLockedEimbRKNSt3__18functionIFPvvEEE_block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 96);
  OUTLINED_FUNCTION_1_3(&dword_26B7AA000, a2, a3, "pool %d marked as 'failing'", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __message_assert(a1, a2, a3, a4, a5, a6, a7, a8, "copyFile.c");
  MEMORY[0xBAD] = -559038737;
  abort();
}

void _copyFile_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_4(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  *v6 = 136315906;
  OUTLINED_FUNCTION_8();
  *&v6[7] = 208;
  v6[9] = 2048;
  v7 = v2;
  v8 = 2048;
  v9 = v3;
  _os_log_error_impl(&dword_26B7AA000, v4, OS_LOG_TYPE_ERROR, "%s:%d: write failed - expected:%lld, actual: %lld", v6, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_6()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_7()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void _copyFile_cold_8()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

void copyFileFallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void copyFileFallback_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void copyFileFallback_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void my_vm_allocate_cold_1(uint64_t a1, int a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v7 = __error();
  v8 = strerror(*v7);
  v10 = 136317186;
  v11 = "slab_allocator.h";
  v12 = 1024;
  v13 = 85;
  v14 = 2048;
  v15 = a1;
  v16 = 1024;
  v17 = 3;
  v18 = 1024;
  v19 = 4098;
  v20 = 1024;
  v21 = a2;
  v22 = 1024;
  v23 = a3;
  v24 = 1024;
  v25 = v6;
  v26 = 2080;
  v27 = v8;
  _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%u: mmap failed for addr NULL, len 0x%08lx, prot 0x%04x, flags 0x%04x, fd 0x%04x, flags %u, errno %d(%s)", &v10, 0x44u);
  v9 = *MEMORY[0x277D85DE8];
}

void SIValueSet<unsigned int>::SIValueSetInsert()
{
  __message_assert_1("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1650, "s->sharedDepth>=0", "");
  OUTLINED_FUNCTION_0();
}

{
  __message_assert_1("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1670, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0();
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>()
{
  __message_assert_1("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", "");
  OUTLINED_FUNCTION_0();
}

{
  __message_assert_1("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, "");
  OUTLINED_FUNCTION_0();
}

{
  __message_assert_1("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", "");
  OUTLINED_FUNCTION_0();
}

{
  __message_assert_1("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", "");
  OUTLINED_FUNCTION_0();
}

void store_stream_init_fd_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_init err:%d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void store_stream_flush_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_flush write err:%d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}