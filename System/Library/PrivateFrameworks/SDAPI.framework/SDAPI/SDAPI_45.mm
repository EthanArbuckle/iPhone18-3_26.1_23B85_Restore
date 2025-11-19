uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByOutLinksIgnoreNodes(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 24 * a2 + 12);
  v7 = *(v5 + 24 * a3 + 12);
  if (v6 == v7)
  {
    v8 = *(v5 + 24 * a2 + 20);
    if (v8 == -2)
    {
      return 0;
    }

    else
    {
      v9 = (v5 + 24 * a3 + 20);
      while (1)
      {
        v10 = *v9;
        result = Lattice<PhonemeLatticeLC>::cmpOutLink(a1, v8, *v9);
        if (result)
        {
          break;
        }

        v11 = *(a1 + 128);
        v12 = v11 + 24 * v8;
        v9 = (v11 + 24 * v10 + 20);
        v8 = *(v12 + 20);
        if (v8 == -2)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::createLink(uint64_t a1, int a2, int a3, __int16 *a4)
{
  v7 = *a4;
  v8 = *(a1 + 120);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = *(*(a1 + 112) + 4 * v9);
    *(a1 + 120) = v9;
    v11 = *(a1 + 128);
  }

  else
  {
    v10 = *(a1 + 136);
    v12 = v10;
    if (v10 == *(a1 + 140))
    {
      DgnArray<CWIDAC>::reallocElts(a1 + 128, 1, 1);
      v12 = *(a1 + 136);
    }

    v11 = *(a1 + 128);
    *(v11 + 24 * v12) = -1;
    *(a1 + 136) = v12 + 1;
  }

  v13 = v11 + 24 * v10;
  *v13 = v7;
  v14 = *(a1 + 104);
  *(v13 + 4) = v14;
  *(v13 + 8) = a2;
  *(v13 + 12) = a3;
  *(v13 + 16) = 0x100000001;
  if (v14 == *(a1 + 108))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 96, 1, 1);
    v14 = *(a1 + 104);
  }

  *(*(a1 + 96) + 4 * v14) = v10;
  ++*(a1 + 104);
  return v10;
}

void Lattice<PhonemeLatticeLC>::connectInLink(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 128);
  v6 = *(v4 + 24 * a2 + 12);
  v7 = *(a1 + 80);
  v8 = v7 + 24 * v6;
  v11 = *(v8 + 16);
  v10 = (v8 + 16);
  v9 = v11;
  if (v11 == -2)
  {
    v12 = -2;
  }

  else
  {
    do
    {
      v13 = Lattice<PhonemeLatticeLC>::cmpInLink(a1, v9, a2);
      if (v13)
      {
        if (v13 >= 1)
        {
          v12 = *v10;
          v4 = *(a1 + 128);
          goto LABEL_9;
        }
      }

      else
      {
        DuplicateLinkError(*(*(a1 + 128) + 24 * a2 + 4), *(*(a1 + 128) + 24 * *v10 + 4), v14, v15, v16, v17, v18, v19);
      }

      v4 = *(a1 + 128);
      v20 = v4 + 24 * *v10;
      v21 = *(v20 + 16);
      v10 = (v20 + 16);
      v9 = v21;
    }

    while (v21 != -2);
    v12 = -2;
LABEL_9:
    v7 = *(a1 + 80);
  }

  *v10 = a2;
  *(v4 + 24 * a2 + 16) = v12;
  v22 = v7 + 24 * v6;
  v23 = *(v22 + 8);
  *(v22 + 8) = v23 + 1;
  if (!v23)
  {

    DgnPrimArray<unsigned int>::removeKeepOrder((a1 + 32), v6);
  }
}

void Lattice<PhonemeLatticeLC>::connectOutLink(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 128);
  v6 = *(v4 + 24 * a2 + 8);
  v7 = *(a1 + 80);
  v8 = v7 + 24 * v6;
  v11 = *(v8 + 20);
  v10 = (v8 + 20);
  v9 = v11;
  if (v11 == -2)
  {
    v12 = -2;
  }

  else
  {
    do
    {
      v13 = Lattice<PhonemeLatticeLC>::cmpOutLink(a1, v9, a2);
      if (v13)
      {
        if (v13 >= 1)
        {
          v12 = *v10;
          v4 = *(a1 + 128);
          goto LABEL_9;
        }
      }

      else
      {
        DuplicateLinkError(*(*(a1 + 128) + 24 * a2 + 4), *(*(a1 + 128) + 24 * *v10 + 4), v14, v15, v16, v17, v18, v19);
      }

      v4 = *(a1 + 128);
      v20 = v4 + 24 * *v10;
      v21 = *(v20 + 20);
      v10 = (v20 + 20);
      v9 = v21;
    }

    while (v21 != -2);
    v12 = -2;
LABEL_9:
    v7 = *(a1 + 80);
  }

  *v10 = a2;
  *(v4 + 24 * a2 + 20) = v12;
  v22 = v7 + 24 * v6;
  v23 = *(v22 + 12);
  *(v22 + 12) = v23 + 1;
  if (!v23)
  {

    DgnPrimArray<unsigned int>::removeKeepOrder((a1 + 48), v6);
  }
}

uint64_t Lattice<PhonemeLatticeLC>::connectInLinkUnordered(uint64_t result, unsigned int a2)
{
  v3 = *(result + 128) + 24 * a2;
  v4 = *(v3 + 12);
  v5 = *(result + 80) + 24 * v4;
  v6 = *(v5 + 16);
  *(v5 + 16) = a2;
  *(v3 + 16) = v6;
  v7 = *(v5 + 8);
  *(v5 + 8) = v7 + 1;
  if (!v7)
  {
    return DgnPrimArray<unsigned int>::removeKeepOrder((result + 32), v4);
  }

  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::connectOutLinkUnordered(uint64_t result, unsigned int a2)
{
  v3 = *(result + 128) + 24 * a2;
  v4 = *(v3 + 8);
  v5 = *(result + 80) + 24 * v4;
  v6 = *(v5 + 20);
  *(v5 + 20) = a2;
  *(v3 + 20) = v6;
  v7 = *(v5 + 12);
  *(v5 + 12) = v7 + 1;
  if (!v7)
  {
    return DgnPrimArray<unsigned int>::removeKeepOrder((result + 48), v4);
  }

  return result;
}

unint64_t Lattice<PhonemeLatticeLC>::gcNonTerminal(unint64_t a1)
{
  Lattice<PhonemeLatticeLC>::gcSetup(a1);
  if (*(a1 + 56))
  {
    v2 = 0;
    v3 = *(a1 + 48);
    v4 = *(a1 + 80);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    do
    {
      v7 = *(v3 + 4 * v2);
      *(v4 + 24 * v7) = v6;
      *(v5 + 4 * v6) = v7;
      v6 = *(a1 + 24) + 1;
      *(a1 + 24) = v6;
      ++v2;
    }

    while (v2 < *(a1 + 56));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  DgnPrimArray<int>::copyArraySlice(a1 + 48, (a1 + 16), 0, v6);
  *(a1 + 40) = 0;
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 4 * v8);
      v11 = *(a1 + 80);
      if (*(v11 + 24 * v10 + 8))
      {
        v12 = *(v11 + 24 * v10 + 16);
        if (v12 != -2)
        {
          v13 = *(a1 + 128);
          v14 = *(a1 + 96);
          do
          {
            v15 = *(v13 + 24 * v12 + 8);
            v16 = (v11 + 24 * v15);
            if (*v16 == -1)
            {
              v17 = *(a1 + 24);
              *v16 = v17;
              *(v9 + 4 * v17) = v15;
              ++*(a1 + 24);
            }

            v18 = *(a1 + 104);
            v19 = v13 + 24 * v12;
            *(v19 + 4) = v18;
            *(v14 + 4 * v18) = v12;
            ++*(a1 + 104);
            v12 = *(v19 + 16);
          }

          while (v12 != -2);
        }
      }

      else
      {
        v20 = *(a1 + 40);
        if (v20 == *(a1 + 44))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 32, 1, 1);
          v20 = *(a1 + 40);
        }

        *(*(a1 + 32) + 4 * v20) = v10;
        ++*(a1 + 40);
      }

      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return Lattice<PhonemeLatticeLC>::gcCleanup(a1);
}

unint64_t Lattice<PhonemeLatticeLC>::gcNonInitial(unint64_t a1)
{
  Lattice<PhonemeLatticeLC>::gcSetup(a1);
  if (*(a1 + 40))
  {
    v2 = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 80);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    do
    {
      v7 = *(v3 + 4 * v2);
      *(v4 + 24 * v7) = v6;
      *(v5 + 4 * v6) = v7;
      v6 = *(a1 + 24) + 1;
      *(a1 + 24) = v6;
      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  DgnPrimArray<int>::copyArraySlice(a1 + 32, (a1 + 16), 0, v6);
  *(a1 + 56) = 0;
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 4 * v8);
      v11 = *(a1 + 80);
      if (*(v11 + 24 * v10 + 12))
      {
        v12 = *(v11 + 24 * v10 + 20);
        if (v12 != -2)
        {
          v13 = *(a1 + 128);
          v14 = *(a1 + 96);
          do
          {
            v15 = *(v13 + 24 * v12 + 12);
            v16 = (v11 + 24 * v15);
            if (*v16 == -1)
            {
              v17 = *(a1 + 24);
              *v16 = v17;
              *(v9 + 4 * v17) = v15;
              ++*(a1 + 24);
            }

            v18 = *(a1 + 104);
            v19 = v13 + 24 * v12;
            *(v19 + 4) = v18;
            *(v14 + 4 * v18) = v12;
            ++*(a1 + 104);
            v12 = *(v19 + 20);
          }

          while (v12 != -2);
        }
      }

      else
      {
        v20 = *(a1 + 56);
        if (v20 == *(a1 + 60))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 48, 1, 1);
          v20 = *(a1 + 56);
        }

        *(*(a1 + 48) + 4 * v20) = v10;
        ++*(a1 + 56);
      }

      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return Lattice<PhonemeLatticeLC>::gcCleanup(a1);
}

unint64_t Lattice<PhonemeLatticeLC>::gcSetup(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 80);
    v5 = (v3 + 4 * v2);
    LODWORD(v6) = *(a1 + 40);
    do
    {
      if (!*(v4 + 24 * *(v3 + 4 * (v2 - 1)) + 12))
      {
        v6 = (v6 - 1);
        if (v2 - 1 < v6)
        {
          v7 = v5;
          v8 = v2 - 1;
          do
          {
            ++v8;
            *(v7 - 1) = *v7;
            ++v7;
          }

          while (v8 < (*(a1 + 40) - 1));
          LODWORD(v6) = *(a1 + 40) - 1;
        }

        *(a1 + 40) = v6;
      }

      --v5;
      v9 = v2-- <= 1;
    }

    while (!v9);
  }

  v10 = *(a1 + 56);
  if (v10 >= 1)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = (v11 + 4 * v10);
    LODWORD(v14) = *(a1 + 56);
    do
    {
      if (!*(v12 + 24 * *(v11 + 4 * (v10 - 1)) + 8))
      {
        v14 = (v14 - 1);
        if (v10 - 1 < v14)
        {
          v15 = v13;
          v16 = v10 - 1;
          do
          {
            ++v16;
            *(v15 - 1) = *v15;
            ++v15;
          }

          while (v16 < (*(a1 + 56) - 1));
          LODWORD(v14) = *(a1 + 56) - 1;
        }

        *(a1 + 56) = v14;
      }

      --v13;
      v9 = v10-- <= 1;
    }

    while (!v9);
  }

  DgnPrimArray<int>::copyArraySlice(a1 + 176, (a1 + 16), 0, *(a1 + 24));
  *(a1 + 24) = 0;
  v17 = *(a1 + 184);
  if (v17 >= 1)
  {
    v18 = *(a1 + 80);
    v19 = v17 + 1;
    v20 = (*(a1 + 176) + 4 * v17 - 4);
    do
    {
      v21 = *v20--;
      *(v18 + 24 * v21) = -1;
      --v19;
    }

    while (v19 > 1);
  }

  result = DgnPrimArray<int>::copyArraySlice(a1 + 160, (a1 + 96), 0, *(a1 + 104));
  *(a1 + 104) = 0;
  v23 = *(a1 + 168);
  if (v23 >= 1)
  {
    v24 = *(a1 + 128);
    v25 = v23 + 1;
    v26 = (*(a1 + 160) + 4 * v23 - 4);
    do
    {
      v27 = *v26--;
      *(v24 + 24 * v27 + 4) = -1;
      --v25;
    }

    while (v25 > 1);
  }

  return result;
}

unint64_t Lattice<PhonemeLatticeLC>::gcCleanup(unint64_t result)
{
  v1 = result;
  v2 = *(result + 168);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*(v1 + 160) + 4 * v3);
      if (*(*(v1 + 128) + 24 * v4 + 4) == -1)
      {
        result = Lattice<PhonemeLatticeLC>::disconnectAndDestroyLink(v1, v4);
      }

      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  v6 = *(v1 + 184);
  if (v6 >= 1)
  {
    v7 = v6 - 1;
    do
    {
      v8 = *(*(v1 + 176) + 4 * v7);
      v9 = *(v1 + 80) + 24 * v8;
      if (*v9 == -1)
      {
        *(v9 + 16) = 0x100000001;
        result = Lattice<WordLatticeLC>::destroyNode(v1, v8);
      }

      v10 = v7-- + 1;
    }

    while (v10 > 1);
  }

  return result;
}

unint64_t Lattice<PhonemeLatticeLC>::disconnectAndDestroyLink(unint64_t a1, unsigned int a2)
{
  Lattice<PhonemeLatticeLC>::disconnectInLink(a1, a2);
  Lattice<PhonemeLatticeLC>::disconnectOutLink(a1, a2);

  return Lattice<PhonemeLatticeLC>::destroyLinkNoDuplicateCheck(a1, a2);
}

unint64_t Lattice<PhonemeLatticeLC>::disconnectInLink(unint64_t result, unsigned int a2)
{
  v3 = *(result + 128);
  v4 = *(v3 + 24 * a2 + 12);
  v5 = (*(result + 80) + 24 * v4);
  if (*v5 != -1)
  {
    v6 = result;
    v7 = v5[4];
    v8 = v7 == a2;
    if (v7 == -2 || v7 == a2)
    {
      v10 = *(result + 80) + 24 * v4;
    }

    else
    {
      do
      {
        v10 = v3 + 24 * v7;
        v7 = *(v10 + 16);
        v8 = v7 == a2;
      }

      while (v7 != -2 && v7 != a2);
    }

    if (v8)
    {
      *(v10 + 16) = *(v3 + 24 * a2 + 16);
      v12 = v5[2] - 1;
      v5[2] = v12;
      if (!v12)
      {
        v13 = *(result + 40);
        if (v13 == *(result + 44))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(result + 32, 1, 1);
          v13 = *(v6 + 40);
          v3 = *(v6 + 128);
        }

        *(*(v6 + 32) + 4 * v13) = v4;
        ++*(v6 + 40);
      }
    }
  }

  *(v3 + 24 * a2 + 12) = -2;
  return result;
}

unint64_t Lattice<PhonemeLatticeLC>::disconnectOutLink(unint64_t result, unsigned int a2)
{
  v3 = *(result + 128);
  v4 = *(v3 + 24 * a2 + 8);
  v5 = (*(result + 80) + 24 * v4);
  if (*v5 != -1)
  {
    v6 = result;
    v7 = v5[5];
    v8 = v7 == a2;
    if (v7 == -2 || v7 == a2)
    {
      v10 = *(result + 80) + 24 * v4;
    }

    else
    {
      do
      {
        v10 = v3 + 24 * v7;
        v7 = *(v10 + 20);
        v8 = v7 == a2;
      }

      while (v7 != -2 && v7 != a2);
    }

    if (v8)
    {
      *(v10 + 20) = *(v3 + 24 * a2 + 20);
      v12 = v5[3] - 1;
      v5[3] = v12;
      if (!v12)
      {
        v13 = *(result + 56);
        if (v13 == *(result + 60))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(result + 48, 1, 1);
          v13 = *(v6 + 56);
          v3 = *(v6 + 128);
        }

        *(*(v6 + 48) + 4 * v13) = v4;
        ++*(v6 + 56);
      }
    }
  }

  *(v3 + 24 * a2 + 8) = -2;
  return result;
}

unint64_t Lattice<PhonemeLatticeLC>::destroyLinkNoDuplicateCheck(unint64_t result, unsigned int a2)
{
  v3 = result;
  v4 = *(result + 128);
  v5 = *(v4 + 24 * a2 + 4);
  if (v5 != -1)
  {
    v6 = *(result + 104) - 1;
    v7 = *(result + 96);
    v8 = *(v7 + 4 * v6);
    *(v7 + 4 * v5) = v8;
    *(v4 + 24 * v8 + 4) = v5;
    *(result + 104) = v6;
  }

  v9 = *(result + 120);
  if (v9 == *(result + 124))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result + 112, 1, 1);
    v9 = *(v3 + 120);
  }

  *(*(v3 + 112) + 4 * v9) = a2;
  ++*(v3 + 120);
  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::topSortInternal(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  v79 = 0;
  v80 = 0;
  if (v4)
  {
    v77 = 0;
    v5 = realloc_array(0, &v77, 4 * v4, 0, 0, 1);
    v6 = v77;
    v79 = v77;
    v7 = *(a1 + 24);
    LODWORD(v80) = v4;
    HIDWORD(v80) = v5 >> 2;
    if (!v7)
    {
      v22 = 0;
      goto LABEL_36;
    }

    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 16);
    v11 = *(a1 + 80);
    do
    {
      v12 = *(v10 + 4 * v8);
      v13 = *(v11 + 24 * v12 + 8);
      if (!v13)
      {
        if (v8 == v9)
        {
          v13 = 0;
        }

        else
        {
          if (a2)
          {
            goto LABEL_67;
          }

          v14 = *(v10 + 4 * v9);
          *(v10 + 4 * v8) = v14;
          *(v11 + 24 * v14) = v8;
          *(v10 + 4 * v9) = v12;
          *(v11 + 24 * v12) = v9;
          v13 = v6[v9];
          v6[v9] = 0;
        }

        v9 = (v9 + 1);
      }

      v6[v8++] = v13;
    }

    while (v8 < *(a1 + 24));
    if (v9 >= 2)
    {
      if (a2)
      {
        v15 = *(a1 + 16);
        v18 = *v15;
        v16 = v15 + 1;
        v17 = v18;
        v19 = v9 - 1;
        while (1)
        {
          v21 = *v16++;
          v20 = v21;
          if (v17 == v21 || *(*(a1 + 80) + 24 * v17 + 4) >= *(*(a1 + 80) + 24 * v20 + 4))
          {
            goto LABEL_67;
          }

          v17 = v20;
          if (!--v19)
          {
            goto LABEL_19;
          }
        }
      }

      (*(*a1 + 24))(a1, a1 + 16, v9);
      if (v9 >= 1)
      {
        v64 = *(a1 + 80);
        v65 = v9;
        v66 = *(a1 + 16) - 4;
        v67 = *(a1 + 32) - 4;
        do
        {
          v68 = v65 > 1;
          *(v64 + 24 * *(v66 + 4 * v65)) = v65 - 1;
          *(v67 + 4 * v65) = *(v66 + 4 * v65);
          --v65;
        }

        while (v68);
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
    LODWORD(v80) = 0;
  }

LABEL_19:
  v22 = *(a1 + 24);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 16);
    v26 = *(a1 + 80);
    do
    {
      v27 = *(v26 + 24 * *(v25 + 4 * v23) + 20);
      if (v27 != -2)
      {
        v28 = *(a1 + 128);
        v29 = v79;
        do
        {
          v30 = *(v28 + 24 * v27 + 4);
          if (v24 != v30)
          {
            if (a2)
            {
              goto LABEL_67;
            }

            v31 = *(a1 + 96);
            v32 = *(v31 + 4 * v30);
            v33 = *(v31 + 4 * v24);
            *(v31 + 4 * v30) = v33;
            *(v28 + 24 * v33 + 4) = v30;
            *(v31 + 4 * v24) = v32;
            *(v28 + 24 * v32 + 4) = v24;
          }

          v34 = *(v26 + 24 * *(v28 + 24 * v27 + 12));
          v35 = v29[v34] - 1;
          v29[v34] = v35;
          if (!v35)
          {
            if (v34 != v9)
            {
              if (a2)
              {
                goto LABEL_67;
              }

              v36 = *(v25 + 4 * v34);
              v37 = *(v25 + 4 * v9);
              *(v25 + 4 * v34) = v37;
              *(v26 + 24 * v37) = v34;
              *(v25 + 4 * v9) = v36;
              *(v26 + 24 * v36) = v9;
              v29[v34] = v29[v9];
              v29[v9] = 0;
            }

            LODWORD(v9) = v9 + 1;
          }

          v27 = *(v28 + 24 * v27 + 20);
          ++v24;
        }

        while (v27 != -2);
        v22 = *(a1 + 24);
      }

      ++v23;
    }

    while (v23 < v22);
  }

LABEL_36:
  v38 = *(a1 + 56);
  if (v38 >= 2)
  {
    if (a2)
    {
      v39 = v38 - 1;
      v40 = v22 - 2;
      while (1)
      {
        v41 = __OFSUB__(v39--, 1);
        if (v39 < 0 != v41)
        {
          break;
        }

        v42 = *(a1 + 16);
        v43 = *(v42 + 4 * v40);
        v44 = *(v42 + 4 * (v40 + 1));
        if (v43 != v44)
        {
          --v40;
          if (*(*(a1 + 80) + 24 * v43 + 4) < *(*(a1 + 80) + 24 * v44 + 4))
          {
            continue;
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      (*(*a1 + 16))(a1, a1 + 48);
      if ((v38 - 1) < 0)
      {
        goto LABEL_65;
      }

      v45 = *(a1 + 48);
      v46 = *(a1 + 16);
      v47 = *(a1 + 80);
      v48 = 4 * (v38 - 1);
      v49 = *(a1 + 24) - 1;
      do
      {
        v50 = *(v45 + v48);
        *(v46 + 4 * v49) = v50;
        *(v47 + 24 * v50) = v49;
        v48 -= 4;
        --v49;
      }

      while (v48 != -4);
    }
  }

  if (a2)
  {
    v51 = *(a1 + 24);
    if (v51)
    {
      v52 = 0;
      v53 = *(a1 + 16);
      v54 = *(a1 + 80);
      v55 = 1;
      v56 = *(a1 + 24);
      while (1)
      {
        v58 = *v53++;
        v57 = v58;
        v59 = *(v54 + 24 * v58 + 8);
        if ((v55 & 1) == 0 && !v59)
        {
          goto LABEL_67;
        }

        v60 = *(v54 + 24 * v57 + 12);
        if ((v52 & (v60 != 0)) != 0)
        {
          goto LABEL_67;
        }

        v55 &= v59 == 0;
        v52 |= v60 == 0;
        if (!--v56)
        {
          v77 = 0;
          v78 = 0;
          v81 = 0;
          v61 = realloc_array(0, &v81, v51, 0, 0, 1);
          v62 = v81;
          v77 = v81;
          v63 = *(a1 + 24);
          v78 = __PAIR64__(v61, v51);
          if (v63 >= 1)
          {
            bzero(v81, v63);
          }

          goto LABEL_60;
        }
      }
    }

    v62 = 0;
    v77 = 0;
    v78 = 0;
LABEL_60:
    v69 = *(a1 + 104);
    if (v69)
    {
      v70 = *(a1 + 96);
      v71 = *(a1 + 128);
      v72 = *(a1 + 80);
      while (1)
      {
        v73 = *v70++;
        v74 = v71 + 24 * v73;
        v62[*(v72 + 24 * *(v74 + 8))] = 1;
        if (v62[*(v72 + 24 * *(v74 + 12))] == 1)
        {
          break;
        }

        if (!--v69)
        {
          goto LABEL_64;
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
LABEL_67:
      v75 = 0;
      goto LABEL_68;
    }

LABEL_64:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
  }

LABEL_65:
  v75 = 1;
LABEL_68:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v79);
  return v75;
}

void sub_2627E555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MrecInitLibrarySet_throughGerm(void)
{
  MrecInitLibrarySet_throughUser();
  MrecInitLibrarySet_throughVoc();

  return MrecInitModule_sdpres_sdapi();
}

void TCliticsParamManager::TCliticsParamManager(TCliticsParamManager *this, TLocaleInfo *a2)
{
  TLattProcParamManager::TLattProcParamManager(this, a2);
  *v3 = &unk_287525A78;
  TBoolParam::TBoolParam((v3 + 62), "D", "L", 0, 0, "1", &unk_26288EABC);
  TIntParam::TIntParam((this + 744), "C", "T", 0, 0, 300, 0, "1", &unk_26288EABC);
  TBoolParam::TBoolParam(this + 1096, "C", "R", 0, 0, "1", &unk_26288EABC);
  TStringParam::TStringParam(this + 1344, "C", "S", 256, &unk_26288EABC, "1", &unk_26288EABC);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 744));
  TParamManager::add(this, (this + 1096));
  TParamManager::add(this, (this + 1344));
}

void sub_2627E56E8(_Unwind_Exception *a1)
{
  TBoolParam::~TBoolParam(v1 + 137);
  TParam::~TParam(v1 + 93);
  TBoolParam::~TBoolParam(v1 + 62);
  TLattProcParamManager::~TLattProcParamManager(v1);
  _Unwind_Resume(a1);
}

void TCliticsProc::TCliticsProc(uint64_t a1, uint64_t a2)
{
  v3 = TLatticeProcessor::TLatticeProcessor(a1, a2, 0);
  *v3 = &unk_287528B18;
  TRegExp::TRegExp(v3 + 9, a2 + 240);
  operator new();
}

void sub_2627E5848(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v3, 0x10F3C40A031EB00);
  TRegExp::~TRegExp(v2);
  TLatticeProcessor::~TLatticeProcessor(v1);
  _Unwind_Resume(a1);
}

uint64_t TBoolParam::set(TBoolParam *this, char a2)
{
  ActiveConfigHandle = TParam::getActiveConfigHandle(this);
  *(this + ActiveConfigHandle + 176) = a2;
  *(this + 14) |= 1 << (ActiveConfigHandle + 33);

  return TParam::notifyChange(this, ActiveConfigHandle);
}

void TCliticsProc::~TCliticsProc(TCliticsProc *this)
{
  *this = &unk_287528B18;
  v2 = (this + 72);
  TRne::freeMemory(this);
  TRegExp::~TRegExp(v2);

  TLatticeProcessor::~TLatticeProcessor(this);
}

{
  TCliticsProc::~TCliticsProc(this);

  JUMPOUT(0x26672B1B0);
}

void TCliticsProc::applyInternal(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v93 = 0;
  v94 = 0;
  v95 = 0;
  TFsa::topologicalSort(a3 + 3, &v93);
  v9 = v93;
  v8 = v94;
  v11 = a3[16];
  v10 = a3[17];
  v90 = 0;
  v91 = 0;
  v92 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v89, ((v94 - v93) >> 3) + 1);
  v72 = (v8 - v9) >> 3;
  std::vector<unsigned long>::vector[abi:ne200100](v88, v72);
  std::vector<TWord const*>::vector[abi:ne200100](v87, (v10 - v11) >> 3);
  v71 = v8 - v9;
  v75 = a3;
  TAllocator::TAllocator(v86, 2048);
  v12 = a5;
  *a5 = 0;
  v81 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](v85, v72);
  if (v8 != v9)
  {
    v13 = 0;
    v14 = (v8 - v9) >> 3;
    if (v72 <= 1)
    {
      v14 = 1;
    }

    v73 = v14;
    do
    {
      v15 = *&v93[8 * v13];
      *(v88[0] + *v15) = v13;
      v74 = v13;
      *(v89[0] + v13) = (v91 - v90) >> 3;
      for (i = v15[2]; i; i = *(i + 32))
      {
        v17 = *i;
        v18 = *(i + 8);
        v19 = *(v88[0] + **(i + 24));
        if (**i != 2 || (v17[2] & 1) != 0)
        {
          v22 = 0;
          v23 = 2;
        }

        else
        {
          v20 = v17[1];
          Word = TLexicon::findWord(*(a1 + 16), v20);
          v22 = Word;
          if (Word)
          {
            v23 = (*TWord::getOptionalTagBits(Word) >> 6) & 1;
          }

          else
          {
            v22 = TLexicon::addTempWord(*(a1 + 16), v20, 0, 0, 0);
            v23 = 0;
          }
        }

        *(v87[0] + v18) = v22;
        v24 = (v89[0] + 8 * v19);
        v26 = *v24;
        v25 = v24[1];
        v27 = *v24 == v25;
        if (*v24 < v25)
        {
          v27 = 0;
          if (v23 == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 8 * (v23 == 2);
          }

          do
          {
            v29 = v90[v26];
            if (*(v29 + 16))
            {
              v31 = TAllocator::allocate(v86, 24);
              *v31 = v29;
              v31[1] = v18;
              v31[2] = v28;
              v81 = v31;
              std::vector<TItnRule *>::push_back[abi:ne200100](&v90, &v81);
            }

            else if (v23 == 1)
            {
              v30 = TAllocator::allocate(v86, 24);
              *v30 = v29;
              v30[1] = v18;
              v30[2] = 2;
              v81 = v30;
              std::vector<TItnRule *>::push_back[abi:ne200100](&v90, &v81);
            }

            else
            {
              addTransitionToLattice(v75, v87, v29, *(a1 + 16), *(a1 + 56), a1 + 72, a4, v85, v12);
              v27 = 1;
            }

            ++v26;
          }

          while (v25 != v26);
        }

        if (v27)
        {
          v32 = TAllocator::allocate(v86, 24);
          v33 = 8 * (v23 == 2);
          *v32 = 0;
          v32[1] = v18;
          if (v23 == 1)
          {
            v33 = 1;
          }

          v32[2] = v33;
          v81 = v32;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v90, &v81);
        }
      }

      v13 = v74 + 1;
    }

    while (v74 + 1 != v73);
  }

  *(v89[0] + v71) = (v91 - v90) >> 3;
  v35 = *(v75 + 200);
  v34 = *(v75 + 208);
  if (v35 != v34)
  {
    while (!*v35)
    {
      if (++v35 == v34)
      {
        goto LABEL_42;
      }
    }
  }

  if (v35 != v34)
  {
    do
    {
      v36 = (v89[0] + 8 * *(v88[0] + **v35));
      v37 = *v36;
      v38 = v36[1];
      if (*v36 < v38)
      {
        do
        {
          v39 = v90[v37];
          if ((*(v39 + 16) & 1) == 0)
          {
            addTransitionToLattice(v75, v87, v39, *(a1 + 16), *(a1 + 56), a1 + 72, a4, v85, v12);
          }

          ++v37;
        }

        while (v38 != v37);
      }

      v40 = v35 + 1;
      do
      {
        v35 = v40;
        if (v40 == v34)
        {
          break;
        }

        ++v40;
      }

      while (!*v35);
    }

    while (v35 != *(v75 + 208));
  }

LABEL_42:
  if (!*v12)
  {
    *v12 = 1;
  }

  v41 = *(a1 + 56);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v41 + 496));
  v47 = *(v41 + TParam::getValidConfig((v41 + 496), ActiveConfigHandle) + 648);
  v48 = v72;
  if (v47 == 1)
  {
    tknPrintf("=== START PRODUCTIONS ===\n", v43, v44, v45, v46);
    v53 = v90;
    if (v91 != v90)
    {
      v54 = 0;
      v55 = 0;
      do
      {
        if (v55 <= v48)
        {
          do
          {
            if (v54 != *(v89[0] + v55))
            {
              break;
            }

            tknPrintf("Productions for State #%llu...\n", v49, v50, v51, v52, v55++);
          }

          while (v55 <= v48);
          v53 = v90;
        }

        v56 = v53[v54];
        v57 = v56[1];
        if (*(v87[0] + v57))
        {
          v81 = v83;
          v82 = xmmword_26286B6F0;
          v84 = 1;
          v58 = *(v87[0] + v57);
          if (v58)
          {
            TWord::getWrittenForm(v58, &v81);
            v59 = **(v87[0] + v56[1]);
          }

          else
          {
            TBuffer<wchar_t>::assign(&v81, "(");
            if (*(&v82 + 1) >= v82)
            {
              if (v84)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), &__p, 1uLL);
                v59 = v81;
                --*(&v82 + 1);
              }

              else
              {
                v59 = v81;
                if (v82)
                {
                  *(v81 + 4 * v82 - 4) = 0;
                }
              }
            }

            else
            {
              v59 = v81;
              *(v81 + 4 * *(&v82 + 1)) = 0;
            }
          }

          v60 = *v56;
          if (*v56)
          {
            __p = v79;
            v78 = xmmword_26286B6F0;
            v80 = 1;
            do
            {
              if ((v60[2] & 8) != 0)
              {
                v61 = "(";
                v62 = 9;
              }

              else
              {
                TWord::getWrittenForm(*(v87[0] + v60[1]), &__p);
                if (*(&v78 + 1) >= v78)
                {
                  if (v80)
                  {
                    v96[0] = 0;
                    TBuffer<wchar_t>::insert(&__p, *(&v78 + 1), v96, 1uLL);
                    v61 = __p;
                    --*(&v78 + 1);
                  }

                  else
                  {
                    v61 = __p;
                    if (v78)
                    {
                      *(__p + v78 - 1) = 0;
                    }
                  }
                }

                else
                {
                  v61 = __p;
                  *(__p + *(&v78 + 1)) = 0;
                }

                v63 = 0;
                  ;
                }

                v62 = v63 - 1;
              }

              TBuffer<wchar_t>::insert(&v81, 0, v61, v62);
              v60 = *v60;
            }

            while (v60);
            if (*(&v82 + 1) >= v82)
            {
              if (v84)
              {
                v96[0] = 0;
                TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), v96, 1uLL);
                v59 = v81;
                --*(&v82 + 1);
              }

              else
              {
                v59 = v81;
                if (v82)
                {
                  *(v81 + 4 * v82 - 4) = 0;
                }
              }
            }

            else
            {
              v59 = v81;
              *(v81 + 4 * *(&v82 + 1)) = 0;
            }

            if (v80 == 1 && __p != v79 && __p)
            {
              MEMORY[0x26672B1B0]();
            }
          }

          v65 = v56[2];
          loggableUnicode(v59, &__p);
          p_p = &__p;
          if (v78 < 0)
          {
            p_p = __p;
          }

          tknPrintf("Production #%llu (0x%llx): %s\n", v66, v67, v68, v69, v54, v65, p_p);
          v48 = v72;
          if (SHIBYTE(v78) < 0)
          {
            operator delete(__p);
          }

          if (v84 == 1 && v81 != v83 && v81)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Production #%llu (0x%llx): (UNKNOWN)\n", v49, v50, v51, v52, v54, v56[2]);
          v48 = v72;
        }

        ++v54;
        v53 = v90;
      }

      while (v54 < (v91 - v90) >> 3);
    }

    tknPrintf("=== END PRODUCTIONS ===\n", v49, v50, v51, v52);
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  TAllocator::clear(v86);
  if (v87[0])
  {
    v87[1] = v87[0];
    operator delete(v87[0]);
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }

  if (v89[0])
  {
    v89[1] = v89[0];
    operator delete(v89[0]);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_2627E612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (LOBYTE(STACK[0x470]) == 1 && a20 != v21 && a20)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x890]) == 1)
  {
    v24 = STACK[0x478];
    if (STACK[0x478] != v20)
    {
      if (v24)
      {
        MEMORY[0x26672B1B0](v24, 0x1000C4052888210);
      }
    }
  }

  v25 = STACK[0x898];
  if (STACK[0x898])
  {
    STACK[0x8A0] = v25;
    operator delete(v25);
  }

  TAllocator::clear((v22 - 256));
  v26 = *(v22 - 216);
  if (v26)
  {
    *(v22 - 208) = v26;
    operator delete(v26);
  }

  v27 = *(v22 - 192);
  if (v27)
  {
    *(v22 - 184) = v27;
    operator delete(v27);
  }

  v28 = *(v22 - 168);
  if (v28)
  {
    *(v22 - 160) = v28;
    operator delete(v28);
  }

  v29 = *(v22 - 144);
  if (v29)
  {
    *(v22 - 136) = v29;
    operator delete(v29);
  }

  v30 = *(v22 - 120);
  if (v30)
  {
    *(v22 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t addTransitionToLattice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v62 = v14;
  v65 = v15;
  if ((*(v10 + 16) & 0x10) == 0)
  {
    v16 = v13;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = result;
    ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 1096));
    v60 = *(v18 + TParam::getValidConfig((v18 + 1096), ActiveConfigHandle) + 1248);
    v22 = TParam::getActiveConfigHandle((v18 + 744));
    v66 = *(v18 + 4 * TParam::getValidConfig((v18 + 744), v22) + 904);
    v59 = v17;
    v61 = v17[2];
    v82 = &v84;
    v83 = xmmword_26286B6F0;
    v85 = 1;
    v23 = *(v19 + 8);
    v24 = *(*(v20 + 128) + 8 * v23);
    v25 = *v24[3];
    v58 = *v24[2];
    v63 = *v24;
    v64 = **v24;
    v26 = *(*v24 + 4);
    v67 = (*v24)[3];
    v57 = (*v24)[4];
    v27 = (*v24)[5];
    v28 = *(*v24 + 6);
    v81[2] = *(*v24 + 5);
    v81[3] = v28;
    v29 = *(v63 + 8);
    v81[4] = *(v63 + 7);
    v81[5] = v29;
    v30 = *(v63 + 4);
    v81[0] = *(v63 + 3);
    v81[1] = v30;
    if ((v26 & 1) == 0)
    {
      v31 = *(*v65 + 8 * v23);
    }

    v32 = *v19;
    if (!*v19)
    {
LABEL_69:
      v53 = *v16;
      if (*(*v16 + 8 * v25) == -1)
      {
        v54 = *a9;
        *(v53 + 8 * v25) = *a9;
        *a9 = v54 + 1;
      }

      if (*(v53 + 8 * v58) == -1)
      {
        v55 = *a9;
        *(v53 + 8 * v58) = *a9;
        *a9 = v55 + 1;
      }

      operator new();
    }

    v56 = v16;
    v33 = (*(v19 + 16) & 3) == 0;
    v34 = v19;
    while (1)
    {
      v35 = v32;
      v36 = v32[1];
      v37 = *(*(v20 + 128) + 8 * v36);
      v25 = *v37[3];
      v38 = *v37;
      v39 = *(*v37 + 4);
      v68 = (*v37)[3];
      v27 += (*v37)[5];
      if (v33)
      {
        goto LABEL_11;
      }

      v40 = v35[2];
      if ((v40 & 8) != 0)
      {
        break;
      }

      if ((v40 & 3) == 0)
      {
        v43 = *v65;
        if (!v61)
        {
          goto LABEL_30;
        }

        TWord::getCategoryTag(*(v43 + 8 * v36), &v82);
        if (*(&v83 + 1) >= v83)
        {
          if (v85)
          {
            LODWORD(v77) = 0;
            TBuffer<wchar_t>::insert(&v82, *(&v83 + 1), &v77, 1uLL);
            v44 = v82;
            --*(&v83 + 1);
          }

          else
          {
            v44 = v82;
            if (v83)
            {
              v82[v83 - 1] = 0;
            }
          }
        }

        else
        {
          v44 = v82;
          v82[*(&v83 + 1)] = 0;
        }

        v46 = TRegExp::match(v59, v44, 0);
        v36 = v35[1];
        v43 = *v65;
        if ((v46 & 1) == 0)
        {
          v41 = 0;
          v48 = *(v43 + 8 * v36);
        }

        else
        {
LABEL_30:
          v77 = v79;
          v78 = xmmword_26286B6F0;
          v80 = 1;
          TWord::getWrittenForm(*(v43 + 8 * v36), &v77);
          v73 = v75;
          v74 = xmmword_26286B6F0;
          v76 = 1;
          TWord::getWrittenForm(*(*v65 + 8 * v34[1]), &v73);
          v69 = v71;
          v70 = xmmword_26286B6F0;
          v72 = 1;
          TBuffer<wchar_t>::operator=(&v69, &v77);
          TBuffer<wchar_t>::operator+=(&v69, &v73);
          if (!v60)
          {
            goto LABEL_39;
          }

          if (*(&v78 + 1) >= v78)
          {
            if (v80)
            {
              v86[0] = 0;
              TBuffer<wchar_t>::insert(&v77, *(&v78 + 1), v86, 1uLL);
              v47 = v77;
              --*(&v78 + 1);
            }

            else
            {
              v47 = v77;
              if (v78)
              {
                v77[v78 - 1] = 0;
              }
            }
          }

          else
          {
            v47 = v77;
            v77[*(&v78 + 1)] = 0;
          }

          if ((respellRoot(&v69, v47) & 1) == 0)
          {
            v41 = 0;
            v50 = *(*v65 + 8 * v35[1]);
          }

          else
          {
LABEL_39:
            if (*(&v70 + 1) >= v70)
            {
              if (v72)
              {
                v86[0] = 0;
                TBuffer<wchar_t>::insert(&v69, *(&v70 + 1), v86, 1uLL);
                v49 = v69;
                --*(&v70 + 1);
              }

              else
              {
                v49 = v69;
                if (v70)
                {
                  v69[v70 - 1] = 0;
                }
              }
            }

            else
            {
              v49 = v69;
              v69[*(&v70 + 1)] = 0;
            }

            if (!TLexicon::findWord(v62, v49))
            {
              if (*(&v70 + 1) >= v70)
              {
                if (v72)
                {
                  v86[0] = 0;
                  TBuffer<wchar_t>::insert(&v69, *(&v70 + 1), v86, 1uLL);
                  v51 = v69;
                  --*(&v70 + 1);
                }

                else
                {
                  v51 = v69;
                  if (v70)
                  {
                    v69[v70 - 1] = 0;
                  }
                }
              }

              else
              {
                v51 = v69;
                v69[*(&v70 + 1)] = 0;
              }

              TLexicon::addTempWord(v62, v51, 0, 0, 0);
            }

            v52 = v66;
            v41 = v27 >= v66;
            if (v27 < v66)
            {
              v52 = 0;
            }

            v27 -= v52;
          }

          if (v72 == 1 && v69 != v71 && v69)
          {
            MEMORY[0x26672B1B0]();
          }

          if (v76 == 1 && v73 != v75 && v73)
          {
            MEMORY[0x26672B1B0]();
          }

          if (v80 == 1 && v77 != v79 && v77)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        goto LABEL_12;
      }

      v33 = 0;
      v41 = 0;
LABEL_13:
      if (*(v20 + 248) == 1)
      {
        if (v41)
        {
          v42 = v66;
        }

        else
        {
          v42 = 0;
        }

        TLatticeProcessor::combineMrecData(v81, (v38 + 6), v42);
      }

      v26 |= v39;
      v32 = *v35;
      v34 = v35;
      if (!*v35)
      {
        v16 = v56;
        goto LABEL_69;
      }
    }

    if (*v38 == 2)
    {
      v41 = 0;
      v45 = *(*v65 + 8 * v36);
      v33 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v41 = 0;
LABEL_12:
    v33 = 1;
    goto LABEL_13;
  }

  return result;
}

void sub_2627E6A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (LOBYTE(STACK[0x8E8]) == 1)
  {
    v21 = STACK[0x4D0];
    if (STACK[0x4D0] != a19)
    {
      if (v21)
      {
        MEMORY[0x26672B1B0](v21, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xD08]) == 1)
  {
    v22 = STACK[0x8F0];
    if (STACK[0x8F0] != a20)
    {
      if (v22)
      {
        MEMORY[0x26672B1B0](v22, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1190]) == 1)
  {
    v23 = STACK[0xD78];
    if (STACK[0xD78] != a12)
    {
      if (v23)
      {
        MEMORY[0x26672B1B0](v23, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TCliticsProc::apply(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 56);
  v6 = *(v5 + 136);
  *(v5 + 136) = a4;
  if (*(a3[32] + 8) == *(*(a1 + 16) + 8))
  {
    memset(__p, 0, sizeof(__p));
    v13[0] = 0;
    TCliticsProc::applyInternal(a1, a2, a3, __p, v13);
    operator new();
  }

  tknPrintf("Error: The lattice lexicon handle does not match the lattice processor's lexicon handle.\n", a2, a3, a4, a5);
  std::string::basic_string[abi:ne200100]<0>(v13, &byte_262899963);
  __p[0] = byte_287529580;
  if (SHIBYTE(v14) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[1], v13[0], v13[1]);
  }

  else
  {
    *&__p[1] = *v13;
    v16 = v14;
  }

  __p[0] = &unk_287528000;
  if (v16 >= 0)
  {
    v9 = &__p[1];
  }

  else
  {
    v9 = __p[1];
  }

  conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/clitics/cliticsproc.cpp", 633, v7, v8);
  __p[0] = byte_287529580;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v11 = (exception + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
  }

  else
  {
    v12 = *__p;
    *(exception + 3) = __p[2];
    *&v11->__r_.__value_.__l.__data_ = v12;
  }

  *exception = &unk_287528000;
}

void sub_2627E6DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      *(v27 + 136) = v28;
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void TCliticsProc::apply(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 56);
  v29 = *(v8 + 136);
  *(v8 + 136) = a5;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<wchar_t const*>::reserve(&v34, a3);
  if (a3)
  {
    v9 = 0;
    v10 = v35;
    do
    {
      v11 = **(*a2 + 8 * v9);
      if (v10 >= v36)
      {
        v12 = (v10 - v34) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v13 = (v36 - v34) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v36 - v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v34, v14);
        }

        *(8 * v12) = v11;
        v10 = (8 * v12 + 8);
        v15 = (8 * v12 - (v35 - v34));
        memcpy(v15, v34, v35 - v34);
        v16 = v34;
        v34 = v15;
        v35 = v10;
        v36 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v10 = v11;
        v10 += 8;
      }

      v35 = v10;
      ++v9;
    }

    while (a3 != v9);
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  std::vector<TState *>::reserve(&__p, a4 - a3);
  std::vector<TLatticeConstructionTransData>::vector[abi:ne200100](&v30, a4 - a3);
  if (a4 != a3)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = v30 + v17;
      *v19 = 2;
      *(v19 + 4) = 0;
      *(v19 + 1) = **(*a2 + 8 * a3 + 8 * v18);
      v20 = v30 + v17;
      v20[3] = v18;
      v20[5] = v18++;
      v20[4] = v18;
      v20[6] = v18;
      v20[7] = 1;
      v21 = v32;
      if (v32 >= v33)
      {
        v23 = (v32 - __p) >> 3;
        if ((v23 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v24 = (v33 - __p) >> 2;
        if (v24 <= v23 + 1)
        {
          v24 = v23 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(&__p, v25);
        }

        v26 = (8 * v23);
        *v26 = v20;
        v22 = 8 * v23 + 8;
        v27 = v26 - (v32 - __p);
        memcpy(v27, __p, v32 - __p);
        v28 = __p;
        __p = v27;
        v32 = v22;
        v33 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v32 = v20;
        v22 = (v21 + 8);
      }

      v32 = v22;
      v17 += 160;
    }

    while (v18 != a4 - a3);
  }

  operator new();
}

void sub_2627E73EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  *(a13 + 136) = a12;
  _Unwind_Resume(exception_object);
}

uint64_t TCliticsProc::save(TCliticsProc *this, TDataManager *a2, TDataManager *a3)
{
  v6 = *(this + 2);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v34, a2, a3, v7, *(this + 8));
  if (v35 <= 1)
  {
    tknPrintf("Error: Unsupported model version for Clitics: %llu\n", v8, v9, v10, v11, v35);
    std::string::basic_string[abi:ne200100]<0>(&v32, &byte_262899963);
    *v27 = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      std::string::__init_copy_ctor_external(&v27[8], v32, *(&v32 + 1));
    }

    else
    {
      *&v27[8] = v32;
      v28 = v33;
    }

    *v27 = &unk_287528000;
    if (v28 >= 0)
    {
      v20 = &v27[8];
    }

    else
    {
      v20 = *&v27[8];
    }

    conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/clitics/cliticsproc.cpp", 738, v18, v19);
    *v27 = byte_287529580;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*&v27[8]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v27, &byte_262899963);
    *exception = byte_287529580;
    v22 = (exception + 1);
    if ((v27[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v22, *v27, *&v27[8]);
    }

    else
    {
      v23 = *v27;
      exception[3] = *&v27[16];
      *&v22->__r_.__value_.__l.__data_ = v23;
    }

    *exception = &unk_287528000;
  }

  v12 = MEMORY[0x277D82828];
  if (a2)
  {
    TDataManager::setIntVar(a2, "CliticsVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    TOutputStream::TOutputStream(&v32, v27, "CliticsParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v32, 0);
    std::stringbuf::str();
    if ((v26 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v25;
    }

    (*(*a2 + 48))(a2, "CliticsParam", p_p, v14);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    *v27 = *v12;
    *&v27[*(*v27 - 24)] = v12[3];
    *&v27[8] = MEMORY[0x277D82878] + 16;
    if (v30 < 0)
    {
      operator delete(v29);
    }

    *&v27[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v27[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v31);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "CliticsVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    TOutputStream::TOutputStream(&v32, v27, "CliticsParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v32, 1);
    std::stringbuf::str();
    if ((v26 & 0x80u) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v25;
    }

    (*(*a3 + 48))(a3, "CliticsParam", v15, v16);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    *v27 = *v12;
    *&v27[*(*v27 - 24)] = v12[3];
    *&v27[8] = MEMORY[0x277D82878] + 16;
    if (v30 < 0)
    {
      operator delete(v29);
    }

    *&v27[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v27[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v31);
  }

  return (*(**(this + 8) + 24))(*(this + 8));
}

void sub_2627E7A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

void TCliticsParamManager::~TCliticsParamManager(TCliticsParamManager *this)
{
  TCliticsParamManager::~TCliticsParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287525A78;
  v2 = (this + 1344);
  *(this + 168) = &unk_287528A10;
  v6 = (this + 2696);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 2672);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 2648);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
  for (i = 0; i != -1152; i -= 24)
  {
    if (*(this + i + 2647) < 0)
    {
      operator delete(*(this + i + 2624));
    }
  }

  TParam::~TParam(v2);
  v4 = 0;
  *(this + 137) = &unk_2875295A0;
  do
  {
    if (*(this + v4 + 1343) < 0)
    {
      operator delete(*(this + v4 + 1320));
    }

    v4 -= 24;
  }

  while (v4 != -48);
  TParam::~TParam(this + 137);
  TParam::~TParam(this + 93);
  v5 = 0;
  *(this + 62) = &unk_2875295A0;
  do
  {
    if (*(this + v5 + 743) < 0)
    {
      operator delete(*(this + v5 + 720));
    }

    v5 -= 24;
  }

  while (v5 != -48);
  TParam::~TParam(this + 62);
  *this = &unk_287525670;
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

uint64_t MrecInitLibrary_word(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_corpus_word();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_wordlist_word();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughWord(void)
{
  MrecInitLibrarySet_throughPhoneme();

  return MrecInitLibrary_word();
}

void MrecInitModule_dfile_dfutil(void)
{
  if (!gParDebugShowDFileLoadInfo)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowDFileLoadInfo", &unk_26288F317, &unk_26288F317, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowDFileLoadInfo = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowDFileLoadInfo);
  }
}

void writeMrecHeader(DgnStream *a1, const char *a2, int a3, int a4, int a5)
{
  (*(*a1 + 80))(a1, a2, 8);
  v15[0] = a3;
  (*(*a1 + 80))(a1, v15, 4);
  v15[0] = a4;
  (*(*a1 + 80))(a1, v15, 4);
  DgnString::DgnString(v15);
  DgnString::preAllocate(v15, 256);
  MrecName = GetMrecName();
  DgnString::operator=(v15, MrecName);
  if (a5)
  {
    DgnString::operator+=(v15, " ");
    MrecVersion = GetMrecVersion();
    DgnString::operator+=(v15, MrecVersion);
  }

  v11 = v15[2];
  Buffer = DgnString::getBuffer(v15, 0x20u);
  v13 = Buffer;
  LODWORD(v14) = v11 - 1;
  if (!v11)
  {
    LODWORD(v14) = 0;
  }

  if (v14 >= 0x1F)
  {
    v14 = 31;
  }

  else
  {
    v14 = v14;
  }

  bzero((Buffer + v14), (32 - v14));
  (*(*a1 + 80))(a1, v13, 32);
  DgnString::~DgnString(v15);
}

DgnStream *OpenAndWriteMrecHeader(uint64_t a1, unsigned int a2, int a3, const char *a4, int a5, int a6)
{
  if (a3)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  SubFileExtensionString = GetSubFileExtensionString(a2);
  v13 = (*(*a1 + 32))(a1, SubFileExtensionString, v11, 0);
  writeMrecHeader(v13, a4, a5, a6, a3 ^ 1);
  return v13;
}

uint64_t DFile::openSubFile(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  SubFileExtensionString = GetSubFileExtensionString(a2);
  v8 = *(*a1 + 32);

  return v8(a1, SubFileExtensionString, a3, a4);
}

void readMrecHeader(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  (*(*a1 + 72))(a1, v22, 8, 1);
  if (v22[0] != *a4)
  {
    if (*(a1 + 24))
    {
      v14 = *(a1 + 16);
    }

    else
    {
      v14 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 144, "dfutil/dfile", 7, "%.500s %.8s %.8s", v12, v13, v14);
  }

  v21[0] = 0;
  (*(*a1 + 72))(a1, v21, 4, 1);
  *a5 = v21[0];
  v21[0] = 0;
  (*(*a1 + 72))(a1, v21, 4, 1);
  *a6 = v21[0];
  if (!*a5)
  {
    SubFileExtensionString = GetSubFileExtensionString(a3);
    if (*(a2 + 24))
    {
      v18 = *(a2 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 150, "dfutil/dfile", 8, "%.500s %.500s", v16, v17, SubFileExtensionString);
  }

  DgnString::DgnString(v21);
  Buffer = DgnString::getBuffer(v21, 0x20u);
  (*(*a1 + 72))(a1, Buffer, 32, 1);
  DgnString::~DgnString(v21);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2627E8294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t OpenAndReadMrecHeader(uint64_t a1, unsigned int a2, int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  SubFileExtensionString = GetSubFileExtensionString(a2);
  v13 = (*(*a1 + 32))(a1, SubFileExtensionString, v11, 0);
  readMrecHeader(v13, a1, a2, a4, a5, a6);
  return v13;
}

void MrecHeaderCheckVersions(char *a1, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a5 < a3 || a5 == a3 && a6 < a4)
  {
    DgnString::DgnString(v17, "A component of ");
    operator+(a1, v17, v18);
    operator+(" could not be opened because it is in an obsolete format, intended for a version of MREC older than this one. Consider upgrading the file with MREC 1.19.200.13604. Details:", v18, &v19);
    if (v20)
    {
      LOBYTE(v13) = v19;
    }

    else
    {
      v13 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 210, "dfutil/dfile", 9, "%.500s %.500s %u %u %u %u", v11, v12, v13);
    DgnString::~DgnString(&v19);
    DgnString::~DgnString(v18);
    DgnString::~DgnString(v17);
  }

  if (a5 > a3 || a5 == a3 && a6 > a4)
  {
    DgnString::DgnString(v17, "A component of ");
    operator+(a1, v17, v18);
    operator+(" could not be opened because it is in an unknown format, intended for a version of MREC newer than this one. Details:", v18, &v19);
    if (v20)
    {
      LOBYTE(v16) = v19;
    }

    else
    {
      v16 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 221, "dfutil/dfile", 10, "%.500s %.500s %u %u %u %u", v14, v15, v16);
    DgnString::~DgnString(&v19);
    DgnString::~DgnString(v18);
    DgnString::~DgnString(v17);
  }
}

void sub_2627E84FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MrecHeaderCheckLatestVersionIfShared(DFile *a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  if ((a5 != a3 || a6 != a4) && *(a1 + 72) == 1)
  {
    if (*(a1 + 6))
    {
      v8 = *(a1 + 2);
    }

    else
    {
      v8 = &unk_26288F317;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 240, "dfutil/dfile", 11, "%.500s %.500s %u %u %u %u", a7, a8, v8);
  }
}

void (***DFileOwner::closeDFile(DFileOwner *this, DFile **a2))(void)
{
  if (*(this + 8) == 1)
  {
    DFile::removeFileAfterSaveException(this, a2);
    *(this + 8) = 0;
  }

  result = DgnDelete<RealDFile>(*this);
  *this = 0;
  return result;
}

void (***DFile::removeFileAfterSaveException(void (***this)(void), DFile **a2))(void)
{
  if (this)
  {
    v2 = this;
    this = *this;
    if (this)
    {
      ((*this)[7])(this, a2);
      this = DgnDelete<RealDFile>(*v2);
      *v2 = 0;
    }
  }

  return this;
}

uint64_t DFileOwner::setRemoveFileOnDestruction(uint64_t this, char a2)
{
  if (*this)
  {
    *(this + 8) = a2;
  }

  return this;
}

void DFile::DFile(DFile *this, const FileSpec *a2)
{
  *this = &unk_287523E78;
  v4 = (this + 32);
  FileSpec::FileSpec((this + 16));
  DgnString::DgnString(v4);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  FileSpec::operator=((this + 16), a2);
  FileSpec::getNameOnly(a2, v4);
  *(this + 48) = 1;
  *(this + 1) = 0;
}

uint64_t DFile::subFileExists(uint64_t a1, unsigned int a2)
{
  SubFileExtensionString = GetSubFileExtensionString(a2);
  v4 = *(*a1 + 24);

  return v4(a1, SubFileExtensionString);
}

void DFile::~DFile(DFile *this)
{
  *this = &unk_287523E78;
  *(this + 1) = 0;
  DgnIArray<Utterance *>::~DgnIArray(this + 56);
  DgnString::~DgnString((this + 32));
  FileSpec::~FileSpec((this + 16));
}

void DFile::printSize(DFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 353, &v64);
  if (v65)
  {
    v16 = v64;
  }

  else
  {
    v16 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288F317, a3, &unk_26288F317, v16);
  DgnString::~DgnString(&v64);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288F317);
  v21 = FileSpec::sizeObject(this + 16);
  v22 = FileSpec::sizeObject(this + 16);
  v23 = FileSpec::sizeObject(this + 16);
  v24 = (a3 + 1);
  v63 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 354, &v64);
  if (v65)
  {
    v30 = v64;
  }

  else
  {
    v30 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26288F317, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v64);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 355, &v64);
  if (v65)
  {
    v36 = v64;
  }

  else
  {
    v36 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v24, &unk_26288F317, v25, v25, v36, v31, v31, 0);
  DgnString::~DgnString(&v64);
  *a4 += v31;
  *a5 += v31;
  v37 = sizeObject(this + 32);
  v38 = sizeObject(this + 32);
  v39 = sizeObject(this + 32);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 356, &v64);
  if (v65)
  {
    v44 = v64;
  }

  else
  {
    v44 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v24, &unk_26288F317, v25, v25, v44, v37, v38, v39);
  DgnString::~DgnString(&v64);
  *a4 += v37;
  *a5 += v38;
  *a6 += v39;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 357, &v64);
  if (v65)
  {
    v49 = v64;
  }

  else
  {
    v49 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v24, &unk_26288F317, v25, v25, v49, 1, 1, 0);
  DgnString::~DgnString(&v64);
  ++*a4;
  ++*a5;
  v50 = sizeObject<SubDirExtension>(this + 56, 0);
  v51 = sizeObject<SubDirExtension>(this + 56, 1);
  v64 = 0xFFFFFFFF00000000;
  sizeObject(&v64, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 359, &v64);
  if (v65)
  {
    v56 = v64;
  }

  else
  {
    v56 = &unk_26288F317;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v24, &unk_26288F317, v25, v25, v56, v50, v51, 0);
  DgnString::~DgnString(&v64);
  *a4 += v50;
  *a5 += v51;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 360, &v64);
  if (v65)
  {
    v61 = v64;
  }

  else
  {
    v61 = &unk_26288F317;
  }

  v62 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v63, &unk_26288F317, (35 - v63), (35 - v63), v61, *a4, *a5, *a6);
  DgnString::~DgnString(&v64);
}

void sub_2627E8C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SubDirExtension>(uint64_t a1, int a2)
{
  v11 = 0xFFFFFFFF00000000;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 8 * v7 - 8;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 8;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

void DFile::pushCurrentSubDirComponent(DFile *this, const SubDirExtension *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 16);
  if (v10 - 10 <= 0xFFFFFFF4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 371, "dfutil/dfile", 5, "%d", a7, a8, 10);
    v10 = *(this + 16);
  }

  if (v10 == *(this + 17))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
    v10 = *(this + 16);
  }

  *(*(this + 7) + 8 * v10) = *a2;
  ++*(this + 16);
}

uint64_t DFile::popCurrentSubDirComponent(uint64_t this)
{
  v1 = *(this + 64);
  v2 = (v1 - 1);
  if (!v1)
  {
    v3 = *(this + 56);
    v4 = v2;
    do
    {
      *v3++ = 0xFFFFFFFF00000000;
      --v4;
    }

    while (v4);
  }

  *(this + 64) = v2;
  return this;
}

DgnString *DFile::makeSubFileName(uint64_t a1, char *a2, DgnString *this)
{
  DgnString::preAllocate(this, 96);
  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      SubDirExtension::appendToString((*a1 + v6), this);
      DgnString::operator+=(this, 47);
      ++v7;
      v6 += 8;
    }

    while (v7 < *(a1 + 8));
  }

  return DgnString::operator+=(this, a2);
}

uint64_t *DFile::openDFile(uint64_t a1, const FileSpec *a2, int a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!FileSpec::isValid(a1))
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 432, "dfutil/dfile", 1, "%s", v8, v9, &unk_26288F317);
  }

  if (a2 == 1)
  {
    v10 = MemChunkAlloc(0x1B8uLL, 0);
    v11 = RealDFile::RealDFile(v10, a1);
    *a4 = v11;
    *(a4 + 8) = 1;
    v12 = 1;
LABEL_29:
    RealDFile::startUp(v11, v12, a3, 1, 0, 0);
    goto LABEL_38;
  }

  OsFile::openOsFile(a1, 0);
  if (!v13)
  {
    if (!a2)
    {
      if (*(a1 + 8))
      {
        v28 = *a1;
      }

      else
      {
        v28 = &unk_26288F317;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 449, "dfutil/dfile", 2, "%.500s", v17, v18, v28);
    }

    v10 = MemChunkAlloc(0x1B8uLL, 0);
    v11 = RealDFile::RealDFile(v10, a1);
    *a4 = v11;
    *(a4 + 8) = a2 != 0;
    v12 = a2;
    goto LABEL_29;
  }

  v19 = v13;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  Bytes = OsFile::readBytes(v13, v34, 0x7Fu, v14, v15, v16, v17, v18);
  OsFile::~OsFile(v19);
  MemChunkFree(v21, 0);
  if (Bytes)
  {
    v34[Bytes] = 0;
  }

  if (*v34 == 0x46545845544E4744 && *&v34[8] == 0x535245565F454C49 && *&v34[11] == 0x4E4F49535245565FLL)
  {
    if (a2)
    {
      if (*(a1 + 8))
      {
        v29 = *a1;
      }

      else
      {
        v29 = &unk_26288F317;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 476, "dfutil/dfile", 4, "%.500s", v22, v23, v29);
    }

    v10 = MemChunkAlloc(0x98uLL, 0);
    ListDFile::ListDFile(v10, a1);
    *a4 = v30;
    *(a4 + 8) = 0;
    ListDFile::startUp(v30);
    goto LABEL_37;
  }

  if (*v34 == 1279870532 && *&v34[3] == 1981826380)
  {
    v10 = MemChunkAlloc(0x1B8uLL, 0);
    v31 = RealDFile::RealDFile(v10, a1);
    *a4 = v31;
    *(a4 + 8) = a2 != 0;
    RealDFile::startUp(v31, a2, a3, 1, 0, 0);
LABEL_37:
    (*(*v10 + 72))(v10);
    goto LABEL_38;
  }

  if (*(a1 + 8))
  {
    v27 = *a1;
  }

  else
  {
    v27 = &unk_26288F317;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfile.cpp", 495, "dfutil/dfile", 3, "%.500s", v22, v23, v27);
  v10 = 0;
LABEL_38:
  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *DFile::getNameForSemanticType(DFile *this)
{
  if (this > 0xF)
  {
    return "Internal Error";
  }

  else
  {
    return off_279B40C48[this];
  }
}

_BYTE **DFile::cacheSubFileSizeInfo(_BYTE **this)
{
  if ((*this[1] & 1) == 0)
  {
    v1 = this;
    this = (*(*this + 13))(this);
    *v1[1] = 1;
  }

  return this;
}

DFileProgressInfo *DFile::reportProgress(DFile *this, const char *a2, const char *a3)
{
  result = *(this + 1);
  if (result)
  {
    result = DFileProgressInfo::findSubFile(result, a2, a3);
    if (result != -1)
    {
      v5 = result;
      result = *(this + 1);
      if ((*(*(result + 5) + v5) & 1) == 0)
      {

        return DFileProgressInfo::recordFileAsReported(result, v5);
      }
    }
  }

  return result;
}

unint64_t DFileProgressInfo::findSubFile(DFileProgressInfo *this, const char *a2, const char *a3)
{
  if (!*(this + 4))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(this + 1) + v5;
    v8 = *(v7 + 8) ? *v7 : &unk_26288F317;
    if (!DgnString::compareNoCase(v8, a2, a3))
    {
      break;
    }

    ++v6;
    v5 += 16;
    if (v6 >= *(this + 4))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t DFileProgressInfo::recordFileAsReported(uint64_t this, ProgressCallbackHandler *a2)
{
  if (a2 != -1)
  {
    *(*(this + 40) + a2) = 1;
    *(this + 64) += *(*(this + 24) + 8 * a2);
    ++*(this + 72);
    return ProgressCallbackHandler::addProgress(*(this + 80), a2);
  }

  return this;
}

void DFileProgressInfo::reset(DFileProgressInfo *this)
{
  *(this + 10) = 0;
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnString::~DgnString((*(this + 1) + v3));
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *this = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
}

void DFileProgressInfo::DFileProgressInfo(DFileProgressInfo *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  DFileProgressInfo::reset(this);
}

DgnString *DFileProgressInfo::add(DFileProgressInfo *this, const DgnString *a2, uint64_t a3)
{
  v6 = *(this + 4);
  if (v6 == *(this + 5))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, 1, 1);
    v6 = *(this + 4);
  }

  result = DgnString::DgnString((*(this + 1) + 16 * v6), a2);
  ++*(this + 4);
  v8 = *(this + 8);
  if (v8 == *(this + 9))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(this + 24, 1, 1);
    v8 = *(this + 8);
  }

  *(*(this + 3) + 8 * v8) = a3;
  *(this + 8) = v8 + 1;
  v9 = *(this + 12);
  if (v9 == *(this + 13))
  {
    result = DgnPrimArray<char>::reallocElts(this + 40, 1, 1);
    v9 = *(this + 12);
  }

  *(*(this + 5) + v9) = 0;
  *(this + 12) = v9 + 1;
  *(this + 7) += a3;
  return result;
}

void DFileProgressInfo::resetReportedInfo(void **this)
{
  v2 = *(this + 12);
  if (v2)
  {
    bzero(this[5], v2);
  }

  this[8] = 0;
  *(this + 18) = 0;
}

uint64_t *VocMgr::startupVocMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  VocMgr::smpVocMgr = result;
  return result;
}

void VocMgr::printSize(VocMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 94, &v32);
  if (v33)
  {
    v15 = v32;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v32);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 95, &v32);
  if (v33)
  {
    v25 = v32;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v20, v20, 0);
  DgnString::~DgnString(&v32);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 96, &v32);
  if (v33)
  {
    v30 = v32;
  }

  else
  {
    v30 = &byte_262899963;
  }

  v31 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, a3, &byte_262899963, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v32);
}

void sub_2627E9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t VocMgr::getVocOrThrow(VocMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*this + 8) <= a2 || (result = *(**this + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocmgr.cpp", 102, "voc/vocmgr", 1, "%u", a7, a8, a2);
    return *(**this + 8 * v10);
  }

  return result;
}

uint64_t *VocMgr::beginRuleStateRecursiveOperation(uint64_t *this)
{
  v1 = *this;
  if (*(*this + 8) >= 2u)
  {
    v2 = this;
    v3 = 1;
    do
    {
      v4 = *(*v1 + 8 * v3);
      if (v4)
      {
        v5 = *(v4 + 64);
        MrecInitModule_sdpres_sdapi();
        v6 = *(v4 + 56);
        this = MrecInitModule_sdpres_sdapi();
        v1 = *v2;
      }

      ++v3;
    }

    while (*(v1 + 8) > v3);
  }

  return this;
}

void VocMgr::endRuleStateRecursiveOperation(VocMgr *this)
{
  v1 = *this;
  if (*(*this + 8) >= 2u)
  {
    v3 = 1;
    do
    {
      v4 = *(*v1 + 8 * v3);
      if (v4)
      {
        RuleMgr::endRecursiveOperation(*(v4 + 64));
        StateMgr::endRecursiveOperation(*(v4 + 56));
        v1 = *this;
      }

      ++v3;
    }

    while (*(v1 + 8) > v3);
  }
}

uint64_t TTagManager::getClosedTagSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 + 24);
  result = std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(a3, &v8);
  for (i = *(a2 + 32); ; i = *(result + 32))
  {
    v8 = i;
    if (i == -1)
    {
      break;
    }

    std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(a3, &v8);
    result = TTagManager::getTag(a1, v8);
  }

  return result;
}

void TFormatter::addCapBlocks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, unint64_t **a8)
{
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  v46 = &v48;
  v47 = xmmword_26286B6F0;
  v49 = 1;
  v42 = &v44;
  v43 = xmmword_26286B6F0;
  v45 = 1;
  v10 = *a5;
  if (*a5)
  {
    v11 = a5;
    do
    {
      {
        operator new();
      }

      if (v10 == 13 || v10 == 10)
      {
        if (*v11 == 13 && v11[1] == 10)
        {
          ++v11;
        }

        WideNewLine = TStringParam::get((a1[6] + 144));
        if (!*WideNewLine)
        {
          WideNewLine = getWideNewLine();
        }

        v13 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), WideNewLine, v13 - 1);
        v15 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), WideNewLine, v15 - 1);
      }

      else if (*v11 == 223)
      {
        LODWORD(v38) = 223;
        TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), &v38, 1uLL);
        TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), "S", 2uLL);
      }

      else
      {
        LODWORD(v38) = *v11;
        TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), &v38, 1uLL);
        LODWORD(v38) = TLocaleInfo::toUpper(a1[4] + 240, *v11);
        TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), &v38, 1uLL);
      }

      v17 = v11[1];
      ++v11;
      v10 = v17;
    }

    while (v17);
    v18 = *(&v43 + 1);
    if (*(&v43 + 1) >= v43)
    {
      if (v45)
      {
        LODWORD(v38) = 0;
        TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), &v38, 1uLL);
        v19 = v42;
        --*(&v43 + 1);
      }

      else
      {
        v19 = v42;
        if (v43)
        {
          v42[v43 - 1] = 0;
        }
      }

LABEL_28:
      if (*(&v47 + 1) >= v47)
      {
        if (v49)
        {
          LODWORD(v38) = 0;
          TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), &v38, 1uLL);
          v20 = v46;
          --*(&v47 + 1);
        }

        else
        {
          v20 = v46;
          if (v47)
          {
            v46[v47 - 1] = 0;
          }
        }
      }

      else
      {
        v20 = v46;
        v46[*(&v47 + 1)] = 0;
      }

      if (wcscmp(v19, v20))
      {
        v38 = &v40;
        v39 = xmmword_26286B6F0;
        v41 = 1;
        TBuffer<wchar_t>::operator=(&v38, &v46);
        if (*(&v39 + 1))
        {
          v21 = 0;
          v22 = v38;
          do
          {
            v23 = TLocaleInfo::toLower(a1[4] + 240, v22[v21]);
            v22 = v38;
            v38[v21++] = v23;
            v24 = *(&v39 + 1);
          }

          while (v21 < *(&v39 + 1));
        }

        else
        {
          v24 = 0;
        }

        if (v24 >= v39)
        {
          if (v41)
          {
            v53[0] = 0;
            TBuffer<wchar_t>::insert(&v38, v24, v53, 1uLL);
            v28 = v38;
            --*(&v39 + 1);
          }

          else
          {
            v28 = v38;
            if (v39)
            {
              v38[v39 - 1] = 0;
            }
          }
        }

        else
        {
          v28 = v38;
          v38[v24] = 0;
        }

        if (*(&v47 + 1) >= v47)
        {
          if (v49)
          {
            v53[0] = 0;
            TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v53, 1uLL);
            v29 = v46;
            --*(&v47 + 1);
          }

          else
          {
            v29 = v46;
            if (v47)
            {
              v46[v47 - 1] = 0;
            }
          }
        }

        else
        {
          v29 = v46;
          v46[*(&v47 + 1)] = 0;
        }

        v37 = wcscmp(v28, v29);
        v30 = TLocaleInfo::toUpper(a1[4] + 240, *v29);
        v31 = *v46;
        Tag = TTagManager::getTag(a1[17], *(a1[17] + 136));
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v50, v51);
        v51 = 0;
        v52 = 0;
        v50 = &v51;
        v33 = *a8;
        v34 = a8[1];
        while (v33 != v34)
        {
          std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&v50, &v51, v33++);
        }

        TTagManager::getClosedTagSet(a1[17], Tag, &v50);
        if (!v37)
        {
          v35 = TTagManager::getTag(a1[17], *(a1[17] + 120));
          TTagManager::getClosedTagSet(a1[17], v35, &v50);
        }

        if (v30 == v31)
        {
          v36 = TTagManager::getTag(a1[17], *(a1[17] + 128));
          TTagManager::getClosedTagSet(a1[17], v36, &v50);
        }

        operator new();
      }

      v25 = TTagManager::getTag(a1[17], *(a1[17] + 144));
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v50, v51);
      v51 = 0;
      v52 = 0;
      v50 = &v51;
      v26 = *a8;
      v27 = a8[1];
      while (v26 != v27)
      {
        std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&v50, &v51, v26++);
      }

      TTagManager::getClosedTagSet(a1[17], v25, &v50);
      operator new();
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v42;
  v42[v18] = 0;
  goto LABEL_28;
}

void sub_2627EA800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x26672B1B0](v12, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x890]) == 1 && STACK[0x478] != a12 && STACK[0x478] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xCB0]) == 1)
  {
    v16 = STACK[0x898];
    if (STACK[0x898] != a11)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v13 - 120, *(v13 - 112));
  _Unwind_Resume(a1);
}

uint64_t TFormatter::splitGrammarResult(uint64_t a1, __int32 *a2, std::vector<std::wstring> *this, void *a4, char a5)
{
  v5 = a4;
  v104 = *MEMORY[0x277D85DE8];
  if ((a5 & 1) == 0)
  {
    std::vector<TPItnTagHandle_fake **>::resize(a4, 0);
  }

  std::vector<std::string>::resize(this, 0);
  v98 = 0;
  v9 = &v97;
  v97 = 0;
  v96 = &v97;
  v100 = v102;
  v101 = xmmword_26286B6F0;
  v103 = 1;
  __s = v94;
  v93 = xmmword_26286B6F0;
  v95 = 1;
  v88 = v90;
  v89 = xmmword_26286B6F0;
  v91 = 1;
  v85 = a1;
  if (*a2)
  {
    v10 = a2;
    do
    {
      if (!wcsncmp(v10, dword_26288F354, 5uLL))
      {
        v13 = v10 + 5;
        if (v10[5])
        {
          v14 = 1;
          while (1)
          {
            v15 = wcsstr(v13, &unk_26288F36C);
            v16 = v15;
            if (!v15)
            {
              break;
            }

            if (!wcsncmp(v15, dword_26288F354, 5uLL))
            {
              ++v14;
            }

            v14 -= wcsncmp(v16, dword_26288F374, 6uLL) == 0;
            v13 = v16 + 1;
            if (v16[1])
            {
              v17 = v14 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              if (v14)
              {
                goto LABEL_177;
              }

              v11 = v16 + 6;
              TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v10, v11 - v10);
              a1 = v85;
              if (!*(&v93 + 1))
              {
                goto LABEL_101;
              }

              if (*(&v101 + 1) && v100[*(&v101 + 1) - 1] == 79)
              {
                if (*(&v93 + 1) >= v93)
                {
                  if (v95)
                  {
                    LODWORD(__p[0]) = 0;
                    TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), __p, 1uLL);
                    v18 = __s;
                    --*(&v93 + 1);
                  }

                  else
                  {
                    v18 = __s;
                    if (v93)
                    {
                      __s[v93 - 1] = 0;
                    }
                  }
                }

                else
                {
                  v18 = __s;
                  __s[*(&v93 + 1)] = 0;
                }

                std::wstring::append(this->__end_ - 1, v18);
                goto LABEL_101;
              }

              if (*(&v93 + 1) >= v93)
              {
                if (v95)
                {
                  v99 = 0;
                  TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
                  v34 = __s;
                  --*(&v93 + 1);
                }

                else
                {
                  v34 = __s;
                  if (v93)
                  {
                    __s[v93 - 1] = 0;
                  }
                }
              }

              else
              {
                v34 = __s;
                __s[*(&v93 + 1)] = 0;
              }

              std::wstring::basic_string[abi:ne200100]<0>(__p, v34);
              std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
              if (v87 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_86;
            }
          }
        }

        goto LABEL_177;
      }

      if (!wcsncmp(v10, dword_26288F390, 7uLL))
      {
        v19 = v10 + 7;
        v20 = wcsstr(v10 + 7, " ");
        if (!v20)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::assign(&v88, dword_26288F3B0);
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v19, v20 - v19);
        v21 = v20 + 1;
        v22 = wcsstr(v21, &unk_26288F3C8);
        if (!v22)
        {
          goto LABEL_177;
        }

        LODWORD(__p[0]) = 61;
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), __p, 1uLL);
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v21, v22 - v21);
        v23 = *(a1 + 136);
        if (*(&v89 + 1) >= v89)
        {
          if (v91)
          {
            LODWORD(__p[0]) = 0;
            TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), __p, 1uLL);
            --*(&v89 + 1);
          }

          else if (v89)
          {
            *&v88[4 * v89 - 4] = 0;
          }
        }

        else
        {
          *&v88[4 * *(&v89 + 1)] = 0;
        }

        v35 = (*(*v23 + 16))(v23);
        if (v35 == -1)
        {
          goto LABEL_177;
        }

        Tag = TTagManager::getTag(*(a1 + 136), v35);
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v96, v97);
        v98 = 0;
        v96 = v9;
        v97 = 0;
        TTagManager::getClosedTagSet(*(a1 + 136), Tag, &v96);
        std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(v5, v5[1], v96, v9);
        v11 = v22 + 1;
      }

      else
      {
        if (!wcsncmp(v10, dword_26288F3D0, 7uLL))
        {
          v24 = wcsstr(v10 + 7, &unk_26288F3C8);
          if (!v24)
          {
            goto LABEL_177;
          }

          v25 = wcsstr(v10 + 7, &unk_26288F36C);
          if (v25 && v25 < v24)
          {
            loggableUnicode(a2, __p);
            if (v87 >= 0)
            {
              v70 = __p;
            }

            else
            {
              v70 = __p[0];
            }

            tknPrintf("Error: couldn't parse $Token() with embedded tags (%lld): '%s'. Ignored.\n", v66, v67, v68, v69, v10 - a2, v70);
            if (v87 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_177;
          }

          v11 = v24 + 1;
          TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v10, v11 - v10);
          if (*(&v93 + 1))
          {
            if (*(&v93 + 1) >= v93)
            {
              if (v95)
              {
                v99 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
                v26 = __s;
                --*(&v93 + 1);
              }

              else
              {
                v26 = __s;
                if (v93)
                {
                  __s[v93 - 1] = 0;
                }
              }
            }

            else
            {
              v26 = __s;
              __s[*(&v93 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v26);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v87 < 0)
            {
              operator delete(__p[0]);
            }

            LOBYTE(__p[0]) = 84;
            TBuffer<char>::insert(&v100, *(&v101 + 1), __p, 1uLL);
          }

          goto LABEL_101;
        }

        if (wcsncmp(v10, &unk_26288F36C, 1uLL))
        {
          v11 = wcsstr(v10 + 1, &unk_26288F36C);
          if (!v11)
          {
            v11 = &v10[wcslen(v10)];
          }

          TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v10, v11 - v10);
          if (*(&v101 + 1) && v100[*(&v101 + 1) - 1] == 79)
          {
            if (*(&v93 + 1) >= v93)
            {
              if (v95)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), __p, 1uLL);
                v12 = __s;
                --*(&v93 + 1);
              }

              else
              {
                v12 = __s;
                if (v93)
                {
                  __s[v93 - 1] = 0;
                }
              }
            }

            else
            {
              v12 = __s;
              __s[*(&v93 + 1)] = 0;
            }

            std::wstring::append(this->__end_ - 1, v12);
          }

          else
          {
            if (*(&v93 + 1) >= v93)
            {
              if (v95)
              {
                v99 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
                v27 = __s;
                --*(&v93 + 1);
              }

              else
              {
                v27 = __s;
                if (v93)
                {
                  __s[v93 - 1] = 0;
                }
              }
            }

            else
            {
              v27 = __s;
              __s[*(&v93 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v27);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v87 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_86:
            LOBYTE(__p[0]) = 79;
            TBuffer<char>::insert(&v100, *(&v101 + 1), __p, 1uLL);
          }

LABEL_101:
          TBuffer<wchar_t>::resize(&__s, 0);
          goto LABEL_102;
        }

        if (!v10[1])
        {
          goto LABEL_177;
        }

        v84 = v9;
        v28 = this;
        v29 = v5;
        v30 = 0;
        v31 = 1;
        do
        {
          v32 = &v10[v30];
          if (!wcsncmp(&v10[v30 + 1], &unk_26288F36C, 1uLL))
          {
            ++v31;
          }

          v31 -= wcsncmp(v32 + 1, &unk_26288F3C8, 1uLL) == 0;
          ++v30;
        }

        while (v32[2] && v31);
        if (v31)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v10, (v30 * 4 + 4) >> 2);
        v5 = v29;
        this = v28;
        a1 = v85;
        v9 = v84;
        if (*(&v93 + 1))
        {
          if (*(&v93 + 1) >= v93)
          {
            if (v95)
            {
              v99 = 0;
              TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
              v33 = __s;
              --*(&v93 + 1);
            }

            else
            {
              v33 = __s;
              if (v93)
              {
                __s[v93 - 1] = 0;
              }
            }
          }

          else
          {
            v33 = __s;
            __s[*(&v93 + 1)] = 0;
          }

          std::wstring::basic_string[abi:ne200100]<0>(__p, v33);
          std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
          if (v87 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(__p[0]) = 78;
          TBuffer<char>::insert(&v100, *(&v101 + 1), __p, 1uLL);
        }

        TBuffer<wchar_t>::resize(&__s, 0);
        v11 = &v10[v30 + 1];
      }

LABEL_102:
      v10 = v11;
    }

    while (*v11);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3) <= 1)
  {
    v38 = wcsstr(a2, dword_26288F354);
    if (v38)
    {
      std::vector<std::string>::resize(this, 0);
      v39 = v38 + 5;
      if (v38[5])
      {
        v40 = 1;
        v41 = v38 + 5;
        while (1)
        {
          v42 = wcsstr(v41, &unk_26288F36C);
          v43 = v42;
          if (!v42)
          {
            break;
          }

          if (!wcsncmp(v42, dword_26288F354, 5uLL))
          {
            ++v40;
          }

          v40 -= wcsncmp(v43, dword_26288F374, 6uLL) == 0;
          if (v40 == 1 && !wcsncmp(v43, dword_26288F3F0, 5uLL))
          {
            TBuffer<wchar_t>::resize(&__s, 0);
            TBuffer<wchar_t>::insert(&__s, 0, v39, v43 - v39);
            if (*(&v93 + 1) >= v93)
            {
              if (v95)
              {
                v99 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
                v44 = __s;
                --*(&v93 + 1);
              }

              else
              {
                v44 = __s;
                if (v93)
                {
                  __s[v93 - 1] = 0;
                }
              }
            }

            else
            {
              v44 = __s;
              __s[*(&v93 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v44);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v87 < 0)
            {
              operator delete(__p[0]);
            }

            v39 = v43 + 5;
          }

          v41 = v43 + 1;
          if (v40)
          {
            v45 = v43[1] == 0;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            if (v40)
            {
              goto LABEL_177;
            }

            TBuffer<wchar_t>::resize(&__s, 0);
            TBuffer<wchar_t>::insert(&__s, 0, v39, v43 - v39);
            if (*(&v93 + 1) >= v93)
            {
              if (v95)
              {
                v99 = 0;
                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
                v46 = __s;
                --*(&v93 + 1);
              }

              else
              {
                v46 = __s;
                if (v93)
                {
                  __s[v93 - 1] = 0;
                }
              }
            }

            else
            {
              v46 = __s;
              __s[*(&v93 + 1)] = 0;
            }

            std::wstring::basic_string[abi:ne200100]<0>(__p, v46);
            std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
            if (v87 < 0)
            {
              operator delete(__p[0]);
            }

            if (this->__end_ == this->__begin_)
            {
              v37 = 65;
            }

            else
            {
              v75 = 0;
              v76 = v43 + 6;
              v77 = v38 - a2;
              v37 = 65;
              do
              {
                TBuffer<wchar_t>::resize(&__s, 0);
                TBuffer<wchar_t>::insert(&__s, 0, a2, v77);
                v78 = &this->__begin_[v75];
                if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
                {
                  v78 = v78->__r_.__value_.__r.__words[0];
                }

                v79 = 0;
                  ;
                }

                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v78, v79 - 1);
                v81 = -1;
                v82 = v76;
                do
                {
                  v83 = *v82++;
                  ++v81;
                }

                while (v83);
                TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v76, v81);
                if (*(&v93 + 1) >= v93)
                {
                  if (v95)
                  {
                    LODWORD(__p[0]) = 0;
                    TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), __p, 1uLL);
                    --*(&v93 + 1);
                  }

                  else if (v93)
                  {
                    __s[v93 - 1] = 0;
                  }
                }

                else
                {
                  __s[*(&v93 + 1)] = 0;
                }

                MEMORY[0x26672AF30](&this->__begin_[v75++]);
              }

              while (v75 < 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3));
            }

            goto LABEL_178;
          }
        }
      }

      goto LABEL_177;
    }

    TBuffer<wchar_t>::resize(&__s, 0);
    while (*a2)
    {
      if (!wcsncmp(a2, dword_26288F390, 7uLL))
      {
        v49 = a2 + 7;
        v50 = wcsstr(v49, " ");
        if (!v50)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::assign(&v88, dword_26288F3B0);
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v49, v50 - v49);
        v51 = v50 + 1;
        v52 = wcsstr(v51, &unk_26288F3C8);
        if (!v52)
        {
          goto LABEL_177;
        }

        LODWORD(__p[0]) = 61;
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), __p, 1uLL);
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v51, v52 - v51);
        v53 = *(a1 + 136);
        if (*(&v89 + 1) >= v89)
        {
          if (v91)
          {
            LODWORD(__p[0]) = 0;
            TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), __p, 1uLL);
            --*(&v89 + 1);
          }

          else if (v89)
          {
            *&v88[4 * v89 - 4] = 0;
          }
        }

        else
        {
          *&v88[4 * *(&v89 + 1)] = 0;
        }

        v57 = (*(*v53 + 16))(v53);
        if (v57 == -1)
        {
          goto LABEL_177;
        }

        v58 = TTagManager::getTag(*(a1 + 136), v57);
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v96, v97);
        v98 = 0;
        v96 = v9;
        v97 = 0;
        TTagManager::getClosedTagSet(*(a1 + 136), v58, &v96);
        std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(v5, v5[1], v96, v9);
        a2 = v52 + 1;
      }

      else if (!wcsncmp(a2, dword_26288F3D0, 7uLL))
      {
        if (*v100 != 84)
        {
          goto LABEL_104;
        }

        v54 = wcsstr(a2 + 8, &unk_26288F3C8);
        v55 = v54;
        if (!v54)
        {
          goto LABEL_177;
        }

        TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), a2 + 7, v54 - (a2 + 7));
        a2 = v55 + 1;
      }

      else
      {
        if (!wcsncmp(a2, dword_26288F354, 5uLL))
        {
          if (*v100 == 84)
          {
            v37 = 0;
          }

          else
          {
            v37 = 83;
          }

          goto LABEL_178;
        }

        v47 = a2 + 1;
        if (!wcsncmp(a2, &unk_26288F36C, 1uLL))
        {
          a2 = wcsstr(a2 + 1, " ");
          TBuffer<wchar_t>::resize(&v88, 0);
          TBuffer<wchar_t>::insert(&v88, 0, v47, a2 - v47);
          v56 = *(a1 + 136);
          if (*(&v89 + 1) >= v89)
          {
            if (v91)
            {
              LODWORD(__p[0]) = 0;
              TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), __p, 1uLL);
              --*(&v89 + 1);
            }

            else if (v89)
            {
              *&v88[4 * v89 - 4] = 0;
            }
          }

          else
          {
            *&v88[4 * *(&v89 + 1)] = 0;
          }

          v59 = (*(*v56 + 16))(v56);
          if (v59 == -1)
          {
            goto LABEL_177;
          }

          v60 = TTagManager::getTag(*(a1 + 136), v59);
          std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v96, v97);
          v98 = 0;
          v96 = v9;
          v97 = 0;
          TTagManager::getClosedTagSet(*(a1 + 136), v60, &v96);
          std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(v5, v5[1], v96, v9);
          v61 = a2 + 1;
          if (!*a2)
          {
            goto LABEL_177;
          }

          v62 = -4;
          v63 = 1;
          do
          {
            if (!wcsncmp(a2, &unk_26288F36C, 1uLL))
            {
              ++v63;
            }

            v63 -= wcsncmp(a2, &unk_26288F3C8, 1uLL) == 0;
            v64 = a2[1];
            ++a2;
            v62 += 4;
          }

          while (v64 && v63);
          if (v63)
          {
            goto LABEL_177;
          }

          TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), v61, (v62 >> 2) - 1);
          a1 = v85;
        }

        else
        {
          v48 = wcsstr(a2 + 1, &unk_26288F36C);
          if (!v48)
          {
            v48 = &a2[wcslen(a2)];
          }

          TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), a2, v48 - a2);
          a2 = v48;
        }
      }
    }

    if (*(&v93 + 1))
    {
      std::vector<std::string>::resize(this, 0);
      if (*(&v93 + 1) >= v93)
      {
        if (v95)
        {
          v99 = 0;
          TBuffer<wchar_t>::insert(&__s, *(&v93 + 1), &v99, 1uLL);
          v65 = __s;
          --*(&v93 + 1);
        }

        else
        {
          v65 = __s;
          if (v93)
          {
            __s[v93 - 1] = 0;
          }
        }
      }

      else
      {
        v65 = __s;
        __s[*(&v93 + 1)] = 0;
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, v65);
      std::vector<std::wstring>::push_back[abi:ne200100](this, __p);
      if (v87 < 0)
      {
        operator delete(__p[0]);
      }

      v74 = *v100;
      if (v74 == 84)
      {
        v37 = 84;
      }

      else if (v74 == 78)
      {
        v37 = 78;
      }

      else
      {
        v37 = 66;
      }
    }

    else
    {
LABEL_177:
      v37 = 0;
    }
  }

  else
  {
LABEL_104:
    v37 = 83;
  }

LABEL_178:
  if (v91 == 1 && v88 != v90 && v88 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v95 == 1 && __s != v94 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v103 == 1 && v100 != v102 && v100)
  {
    MEMORY[0x26672B1B0]();
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v96, v97);
  v72 = *MEMORY[0x277D85DE8];
  return v37;
}

void sub_2627EBB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x468]) == 1 && a22 != a12 && a22 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v24 = STACK[0x470];
    if (STACK[0x470] != a13)
    {
      if (v24)
      {
        MEMORY[0x26672B1B0](v24, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x9C8]) == 1)
  {
    v25 = STACK[0x8B0];
    if (STACK[0x8B0] != a14)
    {
      if (v25)
      {
        MEMORY[0x26672B1B0](v25, 0x1000C4077774924);
      }
    }
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x890], STACK[0x898]);
  _Unwind_Resume(a1);
}

void std::vector<TPItnTagHandle_fake **>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TPItnTagHandle_fake **>::__append(a1, a2 - v2);
  }
}

char *std::vector<TPItnTagHandle_fake **>::insert[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,0>(void *a1, char *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(a1, a2, a3, a4, v4);
}

uint64_t TBuffer<wchar_t>::assign(uint64_t a1, int *a2, unint64_t a3)
{
  TBuffer<wchar_t>::resize(a1, 0);

  return TBuffer<wchar_t>::insert(a1, 0, a2, a3);
}

void TFormatter::addGrammarBlocks(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a1[14])
  {
    v9 = a1[6];
    ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 3792));
    if ((*(v9 + TParam::getValidConfig((v9 + 3792), ActiveConfigHandle) + 3944) & 1) == 0)
    {
      v11 = a1[6];
      v12 = TParam::getActiveConfigHandle((v11 + 1872));
      v13 = *(v11 + 4 * TParam::getValidConfig((v11 + 1872), v12) + 2032);
      v15 = *a2;
      v14 = a2[1];
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v16 = TFormatter::stateToParamConfig(a1, (v15 + 112 * a3 + 40));
      if (0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 4) >= (v13 + a3))
      {
        v17 = v13 + a3;
      }

      else
      {
        v17 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 4);
      }

      TGrammarManager2::search(a1[14], a2, a3, v17, v16, &v88);
      TAllocator::TAllocator(v87, 2048);
      memset(&v86, 0, sizeof(v86));
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v18 = v88;
      if (v89 != v88)
      {
        v19 = 0;
        v70 = (*(a5 + 7) - *(a5 + 6)) >> 3;
        do
        {
          v68 = v19;
          v20 = &v18[56 * v19];
          v21 = *(v20 + 3);
          v72 = *(v20 + 2) + a3 - *(v20 + 4);
          v69 = *(v20 + 1);
          v76 = TFsa::newTrans(a5, a4, *(*(a5 + 6) + 8 * v72), v69);
          std::vector<TItnRule *>::push_back[abi:ne200100](&v83, &v76);
          v22 = v84;
          if (v83 != v84)
          {
            v71 = v21 + a3;
            do
            {
              v76 = *(v22 - 1);
              v84 = (v22 - 1);
              v23 = *v76;
              v25 = v76[2];
              v24 = v76[3];
              TFsa::deleteTrans(a5, v76);
              v26 = TFormatter::splitGrammarResult(a1, v23, &v86, &v80, 0);
              while (v26 == 78)
              {
                begin = v86.__begin_;
                if (SHIBYTE(v86.__begin_->__r_.__value_.__r.__words[2]) < 0)
                {
                  begin = v86.__begin_->__r_.__value_.__l.__data_;
                }

                std::wstring::basic_string[abi:ne200100]<0>(&__p, begin);
                if (v75 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                v26 = TFormatter::splitGrammarResult(a1, p_p, &v86, &v80, 1);
                if (SHIBYTE(v75) < 0)
                {
                  operator delete(__p);
                }
              }

              if (*v24 >= v70)
              {
                v29 = -1;
              }

              else
              {
                v29 = v71;
              }

              if (*v25 >= v70)
              {
                v30 = -1;
              }

              else
              {
                v30 = v72;
              }

              if (v26 > 0x52u)
              {
                if (v26 == 83)
                {
                  v74 = 0;
                  v75 = 0;
                  __p = &v74;
                  v43 = v80;
                  v42 = v81;
                  if (v80 != v81)
                  {
                    if (v86.__begin_ != v86.__end_)
                    {
                      TFsa::newState(a5, 0);
                      v43 = v80;
                      v42 = v81;
                    }

                    while (v43 != v42)
                    {
                      std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&__p, &v74, v43++);
                    }

                    operator new();
                  }

                  v44 = v24;
                  v55 = v86.__begin_;
                  if (v86.__end_ != v86.__begin_)
                  {
                    v56 = 0;
                    v57 = 0;
                    v58 = 0xAAAAAAAAAAAAAAABLL * ((v86.__end_ - v86.__begin_) >> 3);
                    do
                    {
                      ++v57;
                      v59 = v25;
                      if (v57 != v58)
                      {
                        v59 = TFsa::newState(a5, 0);
                        v55 = v86.__begin_;
                      }

                      v60 = &v55[v56];
                      size = SHIBYTE(v55[v56].__r_.__value_.__r.__words[2]);
                      if ((size & 0x8000000000000000) != 0)
                      {
                        size = v60->__r_.__value_.__l.__size_;
                      }

                      v62 = size + 1;
                      if (v62 >> 62)
                      {
                        v63 = -1;
                      }

                      else
                      {
                        v63 = 4 * v62;
                      }

                      v64 = TAllocator::allocate(v87, v63);
                      v65 = v64;
                      v66 = &v86.__begin_[v56];
                      if (SHIBYTE(v86.__begin_[v56].__r_.__value_.__r.__words[2]) < 0)
                      {
                        v66 = v66->__r_.__value_.__r.__words[0];
                      }

                      wcscpy(v64, v66);
                      v76 = TFsa::newTrans(a5, v44, v59, v65);
                      std::vector<TItnRule *>::push_back[abi:ne200100](&v83, &v76);
                      if (v59 != v25 && v80 != v81)
                      {
                        TFsa::newState(a5, 0);
                        operator new();
                      }

                      v55 = v86.__begin_;
                      v58 = 0xAAAAAAAAAAAAAAABLL * ((v86.__end_ - v86.__begin_) >> 3);
                      ++v56;
                      v44 = v59;
                    }

                    while (v57 < v58);
                  }

                  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&__p, v74);
                }

                else
                {
                  if (v26 != 84)
                  {
                    goto LABEL_40;
                  }

                  data = v86.__begin_;
                  if (SHIBYTE(v86.__begin_->__r_.__value_.__r.__words[2]) < 0)
                  {
                    data = v86.__begin_->__r_.__value_.__l.__data_;
                  }

                  HeadClone = TLexicon::findHeadClone(a1[4], data);
                  if (!HeadClone)
                  {
                    v34 = v86.__begin_;
                    if (SHIBYTE(v86.__begin_->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v34 = v86.__begin_->__r_.__value_.__l.__data_;
                    }

                    HeadClone = TLexicon::addTempWord(a1[4], v34, 0, 0, 0);
                  }

                  TFormatter::addWordBlocks(a1, HeadClone, v24, v25, a5, v29, v30, &v80);
                }
              }

              else
              {
                if (v26 != 65)
                {
                  if (v26 == 66)
                  {
                    v31 = v86.__begin_;
                    if (SHIBYTE(v86.__begin_->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v31 = v86.__begin_->__r_.__value_.__l.__data_;
                    }

                    TFormatter::addCapBlocks(a1, a5, v24, v25, v31, v29, v30, &v80);
                  }

LABEL_40:
                  loggableUnicode(v69, &__p);
                  if (v75 >= 0)
                  {
                    v39 = &__p;
                  }

                  else
                  {
                    v39 = __p;
                  }

                  tknPrintf("Error: couldn't parse '%s' spanning [%llu,%llu). Ignored.\n", v35, v36, v37, v38, v39, v71, v72);
                  if (SHIBYTE(v75) < 0)
                  {
                    operator delete(__p);
                  }

                  TFormatter::addCapBlocks(a1, a5, v24, v25, &dword_26288F33C, v29, v30, &v80);
                }

                v41 = v80;
                v40 = v81;
                if (v80 != v81)
                {
                  if (v86.__begin_ != v86.__end_)
                  {
                    TFsa::newState(a5, 0);
                    v41 = v80;
                    v40 = v81;
                  }

                  v74 = 0;
                  v75 = 0;
                  __p = &v74;
                  while (v41 != v40)
                  {
                    std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(&__p, &v74, v41++);
                  }

                  operator new();
                }

                v45 = v86.__begin_;
                if (v86.__end_ != v86.__begin_)
                {
                  v46 = 0;
                  v47 = 0;
                  do
                  {
                    v48 = &v45[v46];
                    v49 = SHIBYTE(v45[v46].__r_.__value_.__r.__words[2]);
                    if ((v49 & 0x8000000000000000) != 0)
                    {
                      v49 = v48->__r_.__value_.__l.__size_;
                    }

                    v50 = v49 + 1;
                    if (v50 >> 62)
                    {
                      v51 = -1;
                    }

                    else
                    {
                      v51 = 4 * v50;
                    }

                    v52 = TAllocator::allocate(v87, v51);
                    v53 = v52;
                    v54 = &v86.__begin_[v46];
                    if (SHIBYTE(v86.__begin_[v46].__r_.__value_.__r.__words[2]) < 0)
                    {
                      v54 = v54->__r_.__value_.__r.__words[0];
                    }

                    wcscpy(v52, v54);
                    v76 = TFsa::newTrans(a5, v24, v25, v53);
                    std::vector<TItnRule *>::push_back[abi:ne200100](&v83, &v76);
                    ++v47;
                    v45 = v86.__begin_;
                    ++v46;
                  }

                  while (v47 < 0xAAAAAAAAAAAAAAABLL * ((v86.__end_ - v86.__begin_) >> 3));
                }
              }

              v22 = v84;
            }

            while (v83 != v84);
          }

          v18 = v88;
          v19 = v68 + 1;
        }

        while (v68 + 1 < (0x6DB6DB6DB6DB6DB7 * ((v89 - v88) >> 3)));
      }

      TGrammarManager2::clearResult(a1[14]);
      if (v77)
      {
        operator delete(v77);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      v83 = &v86;
      std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v83);
      TAllocator::clear(v87);
      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }
    }
  }
}

void sub_2627EC5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  a33 = (v34 - 176);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a33);
  TAllocator::clear((v34 - 152));
  v36 = *(v34 - 112);
  if (v36)
  {
    *(v34 - 104) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void TFormatter::addWordBlocks(uint64_t a1, __int32 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v45 = &v47;
  v46 = xmmword_26286B6F0;
  v48 = 1;
  TWord::getWrittenForm(a2, &v45);
  v42 = v44;
  v43 = xmmword_26286B6F0;
  v44[2048] = 1;
  (*(**(a1 + 120) + 48))(*(a1 + 120), *a2, 0, &v42);
  __p = 0;
  v40 = 0;
  v41 = 0;
  v15 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v16 = 0;
    do
    {
      v17 = *&v42[8 * v16];
      if (v17)
      {
        v18 = *(*(a1 + 120) + 32);
        if (v17 <= (*(*(a1 + 120) + 40) - v18) >> 3)
        {
          v17 = *(v18 + 8 * v17 - 8);
        }

        else
        {
          v17 = 0;
        }
      }

      if ((*(v17 + 145) & 1) == 0 && *(v17 + 32) == *(v17 + 24) && *(v17 + 56) == *(v17 + 48))
      {
        v19 = (v17 + 120);
        if (*(v17 + 143) < 0)
        {
          v19 = *v19;
        }

        v38 = v19;
        if (*v19)
        {
          if (*(&v46 + 1) >= v46)
          {
            if (v48)
            {
              v55[0] = 0;
              TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), v55, 1uLL);
              v20 = v45;
              --*(&v46 + 1);
              v19 = v38;
            }

            else
            {
              v20 = v45;
              if (v46)
              {
                v45[v46 - 1] = 0;
              }
            }
          }

          else
          {
            v20 = v45;
            v45[*(&v46 + 1)] = 0;
          }

          if (!wcscasecmp(v20, v19))
          {
            if (*(&v46 + 1) >= v46)
            {
              if (v48)
              {
                v55[0] = 0;
                TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), v55, 1uLL);
                v21 = v45;
                --*(&v46 + 1);
              }

              else
              {
                v21 = v45;
                if (v46)
                {
                  v45[v46 - 1] = 0;
                }
              }
            }

            else
            {
              v21 = v45;
              v45[*(&v46 + 1)] = 0;
            }

            if (wcscmp(v21, v38))
            {
              std::vector<wchar_t const*>::push_back[abi:ne200100](&__p, &v38);
            }
          }
        }

        v15 = *(&v43 + 1);
      }

      ++v16;
    }

    while (v16 < v15);
    if (__p != v40)
    {
      if (*(&v46 + 1) >= v46)
      {
        if (v48)
        {
          LODWORD(v38) = 0;
          TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), &v38, 1uLL);
          v22 = v45;
          --*(&v46 + 1);
        }

        else
        {
          v22 = v45;
          if (v46)
          {
            v45[v46 - 1] = 0;
          }
        }
      }

      else
      {
        v22 = v45;
        v45[*(&v46 + 1)] = 0;
      }

      v23 = v40;
      if (v40 >= v41)
      {
        v25 = (v40 - __p) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v26 = (v41 - __p) >> 2;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (v41 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&__p, v27);
        }

        v28 = (8 * v25);
        *v28 = v22;
        v24 = 8 * v25 + 8;
        v29 = v28 - (v40 - __p);
        memcpy(v29, __p, v40 - __p);
        v30 = __p;
        __p = v29;
        v40 = v24;
        v41 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v40 = v22;
        v24 = (v23 + 8);
      }

      v40 = v24;
      v15 = *(&v43 + 1);
    }

    if (v15)
    {
      v31 = 0;
      while (1)
      {
        v32 = *&v42[8 * v31];
        if (v32 && (v33 = *(*(a1 + 120) + 32), v32 <= (*(*(a1 + 120) + 40) - v33) >> 3))
        {
          v34 = *(v33 + 8 * v32 - 8);
        }

        else
        {
          v34 = 0;
        }

        if ((*(v34 + 145) & 1) == 0)
        {
          break;
        }

        if (++v31 >= v15)
        {
          *v45;
          std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v49, v50, *a8, a8[1], (a8[1] - *a8) >> 3);
          TFormatter::addCapBlocks(a1, a5, a3, a4, &dword_26288F33C, a6, a7, &v49);
        }
      }

      std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v49, v50, *(v34 + 96), *(v34 + 104), (*(v34 + 104) - *(v34 + 96)) >> 3);
      if (&v52 != (v34 + 72))
      {
        std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(&v52, *(v34 + 72), *(v34 + 80), (*(v34 + 80) - *(v34 + 72)) >> 3);
      }

      std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v52, v53, *a8, a8[1], (a8[1] - *a8) >> 3);
      v35 = (v34 + 120);
      if (*(v34 + 143) < 0)
      {
        v35 = *v35;
      }

      TFormatter::addCapBlocks(a1, a5, a3, a4, v35, a6, a7, &v52);
    }
  }

  std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(&v49, v50, *a8, a8[1], (a8[1] - *a8) >> 3);
  if (*(&v46 + 1) >= v46)
  {
    if (v48)
    {
      LODWORD(v38) = 0;
      TBuffer<wchar_t>::insert(&v45, *(&v46 + 1), &v38, 1uLL);
      v36 = v45;
      --*(&v46 + 1);
    }

    else
    {
      v36 = v45;
      if (v46)
      {
        v45[v46 - 1] = 0;
      }
    }
  }

  else
  {
    v36 = v45;
    v45[*(&v46 + 1)] = 0;
  }

  TFormatter::addCapBlocks(a1, a5, a3, a4, v36, a6, a7, &v49);
}

void sub_2627ECCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x878]) == 1 && a21 != a11 && a21)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xC98]) == 1)
  {
    v23 = STACK[0x880];
    if (STACK[0x880] != a12)
    {
      if (v23)
      {
        MEMORY[0x26672B1B0](v23, 0x1000C4052888210);
      }
    }
  }

  v24 = *(v21 - 144);
  if (v24)
  {
    *(v21 - 136) = v24;
    operator delete(v24);
  }

  v25 = *(v21 - 120);
  if (v25)
  {
    *(v21 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t TFormatter::constructGraph(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t **this)
{
  if (a2[1] - *a2 != -112)
  {
    v8 = 0;
    do
    {
      TFsa::newState(this, 0);
      ++v8;
    }

    while (v8 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) + 1);
  }

  TFsa::addExtremity(this, *this[6], 0);
  TFsa::addExtremity(this, *(this[6] + 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 1)), 1u);
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &this[6][v10];
      v13 = *v11;
      v12 = v11[1];
      std::vector<TPItnTagHandle_fake **>::resize(&__p, 0);
      v14 = v10 + 1;
      if (*(*a2 + v9 + 33) == 1)
      {
        TFormatter::addCapBlocks(a1, this, v13, v12, &dword_26288F33C, v10, v10 + 1, &__p);
      }

      TFormatter::addGrammarBlocks(a1, a2, v10, v13, this);
      TFormatter::addWordBlocks(a1, *(*a2 + v9 + 16), v13, v12, this, v10, v10 + 1, &__p);
      v9 += 112;
      ++v10;
    }

    while (v14 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  }

  v15 = a1[6];
  ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 19248));
  if (*(v15 + TParam::getValidConfig((v15 + 19248), ActiveConfigHandle) + 19400) == 1)
  {
    TFormatter::logFsa(a1, this, v17, v18, v19);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return a3;
}

void sub_2627ECFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TFormatter::logFsa(TFormatter *this, const TFsa *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = v43;
  v42 = xmmword_26286B6F0;
  v44 = 1;
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  if (v6 != v7)
  {
    while (!*v6)
    {
      if (++v6 == v7)
      {
        goto LABEL_38;
      }
    }
  }

  if (v6 == v7)
  {
    goto LABEL_38;
  }

  do
  {
    tknPrintf("GRAPH: state=%llu, starting=%d, accepting=%d\n", a2, a3, a4, a5, **v6, (*v6)[4] != -1, (*v6)[5] != -1);
    for (i = (*v6)[3]; i; i = i[5])
    {
      v9 = *i;
      TBuffer<wchar_t>::resize(&v41, 0);
      v10 = (v9 + 48);
      if (*(v9 + 71) < 0)
      {
        v10 = *v10;
      }

      slashEscape(v10, &v41);
      v11 = i[1];
      v12 = *i[2];
      if (*(&v42 + 1) >= v42)
      {
        if (v44)
        {
          v45[0] = 0;
          TBuffer<wchar_t>::insert(&v41, *(&v42 + 1), v45, 1uLL);
          v13 = v41;
          --*(&v42 + 1);
        }

        else
        {
          v13 = v41;
          if (v42)
          {
            v41[v42 - 1] = 0;
          }
        }
      }

      else
      {
        v13 = v41;
        v41[*(&v42 + 1)] = 0;
      }

      loggableUnicode(v13, __p);
      if (v40 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      tknPrintf("GRAPH:   trans=%llu, to_state=%llu, text='%s'\n", v14, v15, v16, v17, v11, v12, v18);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      tknPrintf("GRAPH:     tags:\n", v19, v20, v21, v22);
      v23 = *(v9 + 120);
      if (*(v9 + 128) != v23)
      {
        v24 = 0;
        do
        {
          v25 = *(v23 + 8 * v24);
          Tag = TTagManager::getTag(*(this + 17), v25);
          if (Tag)
          {
            if (*(Tag + 23) < 0)
            {
              Tag = *Tag;
            }

            loggableUnicode(Tag, __p);
            if (v40 >= 0)
            {
              v35 = __p;
            }

            else
            {
              v35 = __p[0];
            }

            tknPrintf("GRAPH:       <%s>\n", v31, v32, v33, v34, v35);
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            tknPrintf("GRAPH:       <%llu>\n", v27, v28, v29, v30, v25);
          }

          ++v24;
          v23 = *(v9 + 120);
        }

        while (v24 < (*(v9 + 128) - v23) >> 3);
      }
    }

    v36 = v6 + 1;
    do
    {
      v6 = v36;
      if (v36 == v7)
      {
        break;
      }

      ++v36;
    }

    while (!*v6);
  }

  while (v6 != *(a2 + 7));
  if (v44)
  {
LABEL_38:
    if (v41 != v43 && v41 != 0)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_2627ED284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != a12 && a17 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TFormatter::collectTags(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, TAllocator *a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v11 = *(a2 + 152);
  v10 = *(a2 + 160);
  if (v11 != v10)
  {
    while (!*v11)
    {
      v11 += 8;
      if (v11 == v10)
      {
        goto LABEL_178;
      }
    }
  }

  if (v11 == v10)
  {
LABEL_178:
    v89 = 0;
    return v89 & 1;
  }

  v102 = *(a2 + 160);
  do
  {
    v106 = v11;
    for (i = *(*v11 + 24); i; v8 = a3)
    {
      v13 = *i;
      v14 = (*i + 48);
      v15 = v14;
      if (*(*i + 71) < 0)
      {
        v15 = *v14;
      }

      v16 = wcslen(v15);
      v18 = *(v8 + 8);
      v17 = *(v8 + 16);
      if (v17 >= v18)
      {
        if (*(v8 + 1048))
        {
          LODWORD(v109) = 0;
          TBuffer<wchar_t>::insert(v8, v17, &v109, 1uLL);
          --*(v8 + 16);
          v19 = *v8;
        }

        else
        {
          v19 = *v8;
          if (v18)
          {
            v19[v18 - 1] = 0;
          }
        }
      }

      else
      {
        v19 = *v8;
        *(*v8 + 4 * v17) = 0;
      }

      v20 = v14;
      if (*(v13 + 71) < 0)
      {
        v20 = *v14;
      }

      v21 = 0;
      if (wcsncmp(v19, v20, v16))
      {
        v22 = 1;
        do
        {
          v23 = v19[v21];
          {
            operator new();
          }

          if (v23 <= 8202)
          {
            if (v23 != 32 && v23 != 160)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v24 = v23 == 8203 || v23 == 65279;
            if (!v24 && v23 != 12288)
            {
              goto LABEL_43;
            }
          }

          v26 = *(a3 + 8);
          v25 = *(a3 + 16);
          if (v25 >= v26)
          {
            if (*(a3 + 1048))
            {
              LODWORD(v109) = 0;
              TBuffer<wchar_t>::insert(a3, v25, &v109, 1uLL);
              --*(a3 + 16);
              v19 = *a3;
            }

            else
            {
              v19 = *a3;
              if (v26)
              {
                v19[v26 - 1] = 0;
              }
            }
          }

          else
          {
            v19 = *a3;
            *(*a3 + 4 * v25) = 0;
          }

          v27 = v14;
          if (*(v13 + 71) < 0)
          {
            v27 = *v14;
          }

          v28 = wcsncmp(&v19[v22++], v27, v16);
          ++v21;
        }

        while (v28);
      }

      v29 = TAllocator::allocate(a6, 40);
      *v29 = 0;
      *(v29 + 8) = i;
      *(v29 + 16) = 0;
      *(v29 + 24) = v21 + v16;
      *(v29 + 32) = 0;
      v109 = v29;
      std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v109);
LABEL_43:
      i = i[5];
    }

    v30 = v106 + 8;
    do
    {
      v11 = v30;
      if (v30 == v102)
      {
        break;
      }

      v30 += 8;
    }

    while (!*v11);
  }

  while (v11 != *(a2 + 160));
  v31 = v110;
  if (v111 == v110)
  {
    v91 = 0;
    if (!v110)
    {
      goto LABEL_177;
    }
  }

  else
  {
    v91 = 0;
    v32 = 0;
    v33 = a8;
    do
    {
      v34 = *&v31[8 * v32];
      v35 = *(v34[1] + 16);
      v96 = v32;
      v103 = v34;
      if (*(v35 + 40) != -1)
      {
        v36 = v34[3];
        v37 = *(a3 + 16);
        if (v36 < v37)
        {
          v38 = a3;
          do
          {
            v39 = *(*v38 + 4 * v36);
            {
              operator new();
            }

            if (v39 <= 8202)
            {
              if (v39 != 32 && v39 != 160)
              {
                goto LABEL_67;
              }
            }

            else if (v39 != 8203 && v39 != 12288 && v39 != 65279)
            {
LABEL_67:
              v37 = *(a3 + 16);
              break;
            }

            ++v36;
            v38 = a3;
            v37 = *(a3 + 16);
          }

          while (v36 < v37);
        }

        if (v36 == v37)
        {
          v42 = *(a7 + 8);
          v41 = *(a7 + 16);
          if (v42 >= v41)
          {
            v44 = (v42 - *a7) >> 3;
            if ((v44 + 1) >> 61)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v45 = v41 - *a7;
            v46 = v45 >> 2;
            if (v45 >> 2 <= (v44 + 1))
            {
              v46 = v44 + 1;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v47 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v47 = v46;
            }

            if (v47)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a7, v47);
            }

            *(8 * v44) = v34;
            v43 = 8 * v44 + 8;
            v48 = *(a7 + 8) - *a7;
            v49 = (8 * v44 - v48);
            memcpy(v49, *a7, v48);
            v50 = *a7;
            *a7 = v49;
            *(a7 + 8) = v43;
            *(a7 + 16) = 0;
            if (v50)
            {
              operator delete(v50);
            }
          }

          else
          {
            *v42 = v34;
            v43 = (v42 + 1);
          }

          *(a7 + 8) = v43;
          if (v34)
          {
            v51 = v34;
            v52 = a4;
            do
            {
              v53 = v51[2];
              v54 = v53 < v52 || v53 >= a5;
              if (!v54 || v53 < v52 && v51[3] >= v52)
              {
                if (v53 < a4 && v51[3] >= a4)
                {
                  v52 = v51[2];
                }

                v55 = *v51[1];
                v56 = *(v55 + 120);
                if (*(v55 + 128) != v56)
                {
                  v57 = 0;
                  do
                  {
                    v58 = *(v56 + 8 * v57);
                    v109 = v58;
                    if (*(v34 + 32) != 1)
                    {
                      goto LABEL_100;
                    }

                    Tag = TTagManager::getTag(*(a1 + 136), v58);
                    if (!Tag)
                    {
                      goto LABEL_100;
                    }

                    if (*(Tag + 23) < 0)
                    {
                      Tag = *Tag;
                    }

                    if (wcsncmp(Tag, dword_26288F408, 6uLL))
                    {
LABEL_100:
                      std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(v33, &v109);
                    }

                    ++v57;
                    v56 = *(v55 + 120);
                  }

                  while (v57 < (*(v55 + 128) - v56) >> 3);
                }
              }

              v51 = *v51;
            }

            while (v51);
          }

          v91 = 1;
        }
      }

      for (j = *(v35 + 24); j; v34 = v103)
      {
        v61 = v34[3];
        v99 = j;
        v62 = (*j + 48);
        v105 = *j;
        if (*(*j + 71) < 0)
        {
          v63 = wcslen(*v62);
          v64 = **v62;
        }

        else
        {
          v63 = wcslen(v62);
          v64 = *v62;
        }

        if (v64)
        {
          {
            operator new();
          }

          if (v64 <= 8202)
          {
            if (v64 != 32 && v64 != 160)
            {
              goto LABEL_124;
            }
          }

          else if (v64 != 8203 && v64 != 12288 && v64 != 65279)
          {
LABEL_124:
            while (v61 < *(a3 + 16))
            {
              v69 = *(*a3 + 4 * v61);
              {
                operator new();
              }

              if (v69 <= 8202)
              {
                if (v69 != 32 && v69 != 160)
                {
                  break;
                }
              }

              else
              {
                v70 = v69 == 8203 || v69 == 65279;
                if (!v70 && v69 != 12288)
                {
                  break;
                }
              }

              ++v61;
            }
          }
        }

        v67 = *(a3 + 8);
        v66 = *(a3 + 16);
        if (v66 >= v67)
        {
          if (*(a3 + 1048))
          {
            LODWORD(v109) = 0;
            TBuffer<wchar_t>::insert(a3, v66, &v109, 1uLL);
            --*(a3 + 16);
            v68 = *a3;
          }

          else
          {
            v68 = *a3;
            if (v67)
            {
              v68[v67 - 1] = 0;
            }
          }
        }

        else
        {
          v68 = *a3;
          *(*a3 + 4 * v66) = 0;
        }

        if (*(v105 + 71) < 0)
        {
          v62 = *v62;
        }

        v97 = v63;
        v98 = v61;
        v71 = v99;
        if (!wcsncmp(&v68[v61], v62, v63))
        {
          v72 = *(v103 + 32);
          v73 = *(v105 + 120);
          if (*(v105 + 128) == v73)
          {
            goto LABEL_169;
          }

          v101 = *(v103 + 32);
          v74 = 0;
          v75 = 0;
          do
          {
            v76 = TTagManager::getTag(*(a1 + 136), *(v73 + 8 * v74));
            v77 = v76;
            v107 = v74;
            if (v76)
            {
              if (*(v76 + 23) < 0)
              {
                v77 = *v76;
              }

              v78 = v103;
              if (!wcsncmp(v77, dword_26288F3B0, 5uLL) && v103 != 0)
              {
                v80 = wcschr(v77, 61);
                v81 = v75;
                do
                {
                  v82 = *v78[1];
                  v83 = *(v82 + 120);
                  if (*(v82 + 128) == v83)
                  {
LABEL_161:
                    if (v81)
                    {
                      v75 = 1;
                      break;
                    }
                  }

                  else
                  {
                    v84 = 0;
                    while (1)
                    {
                      v85 = TTagManager::getTag(*(a1 + 136), *(v83 + 8 * v84));
                      v86 = v85;
                      if (v85)
                      {
                        if (*(v85 + 23) < 0)
                        {
                          v86 = *v85;
                        }

                        if (!wcsncmp(v86, v77, v80 - v77 + 1) && wcscmp((v86 + v80 - v77 + 4), v80 + 1))
                        {
                          break;
                        }
                      }

                      ++v84;
                      v83 = *(v82 + 120);
                      if (v84 >= (*(v82 + 128) - v83) >> 3)
                      {
                        goto LABEL_161;
                      }
                    }

                    v101 = 1;
                    v75 = 1;
                    if ((v77[5] == 83) | v81 & 1)
                    {
                      break;
                    }
                  }

                  v81 = 0;
                  v75 = 0;
                  v78 = *v78;
                }

                while (v78);
              }
            }

            ++v74;
            v73 = *(v105 + 120);
          }

          while (v107 + 1 < ((*(v105 + 128) - v73) >> 3));
          v71 = v99;
          v72 = v101;
          if ((v75 & 1) == 0)
          {
LABEL_169:
            v87 = TAllocator::allocate(a6, 40);
            v88 = v103[3];
            *v87 = v103;
            *(v87 + 8) = v71;
            *(v87 + 16) = v88;
            *(v87 + 24) = v98 + v97;
            *(v87 + 32) = v72 & 1;
            v109 = v87;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v109);
          }
        }

        j = v71[5];
        v33 = a8;
        v32 = v96;
      }

      ++v32;
      v31 = v110;
    }

    while (v32 < (v111 - v110) >> 3);
    if (!v110)
    {
      goto LABEL_177;
    }
  }

  v111 = v31;
  operator delete(v31);
LABEL_177:
  v89 = v91;
  return v89 & 1;
}

void sub_2627EDC84(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  v4 = *(v2 - 112);
  if (v4)
  {
    *(v2 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void TFormatter::replace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v111 = v7;
  v112 = v6;
  v9 = v8;
  v113 = v10;
  v114 = v11;
  v110 = v12;
  v13 = v5;
  v158 = *MEMORY[0x277D85DE8];
  v147 = v149;
  v148 = xmmword_26286B6F0;
  v150 = 1;
  if ((v14 & 8) == 0)
  {
    goto LABEL_2;
  }

  v16 = *(v5 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v16 + 5768));
  ValidConfig = TParam::getValidConfig((v16 + 5768), ActiveConfigHandle);
  if (!v114 || (*(v16 + ValidConfig + 5920) & 1) == 0 || !*v9 || v114 + v112 <= v112)
  {
    goto LABEL_2;
  }

  v19 = 0;
  v109 = (v113 + 8 * v112);
  while (1)
  {
    Result = TResultManager::getResult(v13[16], v109[v19]);
    if (Result[3] || Result[5] != Result[4])
    {
      break;
    }

    if (v114 == ++v19)
    {
      goto LABEL_2;
    }
  }

  if (TLocaleInfo::multiByteToUnicode(v13[4] + 240, v9, &v147))
  {
    goto LABEL_2;
  }

  v143 = v145;
  v144 = xmmword_26286B6F0;
  v146 = 1;
  v154 = v156;
  v155 = xmmword_26286B6F0;
  v157 = 1;
  v141 = 0;
  __p = 0;
  v142 = 0;
  v115[0] = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](&__p, v115);
  v21 = v112;
  do
  {
    v22 = TResultManager::getResult(v13[16], *(v113 + 8 * v21));
    v23 = *(v22 + 104);
    if (*(v22 + 112) != v23)
    {
      v24 = 0;
      do
      {
        v115[0] = *(v23 + 8 * v24) + *(v141 - 1);
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, v115);
        v24 += 2;
        v23 = *(v22 + 104);
      }

      while (v24 < (*(v22 + 112) - v23) >> 3);
    }

    v25 = 0;
    v26 = *(v22 + 16);
      ;
    }

    TBuffer<char>::insert(&v154, *(&v155 + 1), v26, v25 - 1);
    TLocaleInfo::multiByteToUnicode(v13[4] + 240, *(v22 + 16), &v143);
    ++v21;
  }

  while (v21 != v114 + v112);
  if (*(&v155 + 1))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = (v141 - __p) >> 3;
    do
    {
      if (v29 < v31)
      {
        for (i = *(__p + v29); i <= v30; i = *(__p + ++v29))
        {
          v28 = i;
          if (v31 - 1 == v29)
          {
            v29 = (v141 - __p) >> 3;
            break;
          }
        }
      }

      if (v9[v30] != v154[v30])
      {
        goto LABEL_37;
      }

      ++v30;
    }

    while (v30 != *(&v155 + 1));
    v33 = strlen(v9);
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v28 = 0;
LABEL_37:
    v34 = strlen(v9);
    v33 = v34;
    if (v30 != *(&v155 + 1))
    {
      if (*(&v155 + 1) && v34)
      {
        v39 = 0;
        v40 = (v141 - __p) >> 3;
        v41 = v34;
        v42 = *(&v155 + 1);
        v43 = *(&v155 + 1);
        do
        {
          v44 = v42;
          v45 = v41;
          --v42;
          --v41;
          if (v42 <= v28 || v41 <= v28)
          {
            break;
          }

          if (v39 < v40)
          {
            v47 = *&v141[8 * ~v39];
            if (v47 > v42)
            {
              v48 = &v141[-8 * v39 - 16];
              while (1)
              {
                v43 = v47;
                if (v40 - 1 == v39)
                {
                  break;
                }

                v49 = *v48--;
                v47 = v49;
                ++v39;
                if (v49 <= v42)
                {
                  goto LABEL_60;
                }
              }

              v39 = (v141 - __p) >> 3;
            }
          }

LABEL_60:
          ;
        }

        while (v9[v41] == v154[v42]);
        v50 = v45 - v44 + v43;
        goto LABEL_63;
      }

LABEL_62:
      v50 = v33;
      v43 = *(&v155 + 1);
LABEL_63:
      while (v28)
      {
        if (v9[v28 - 1] != 32)
        {
          break;
        }

        --v28;
      }

      if (v50 < v33)
      {
        do
        {
          if (v9[v50] != 32)
          {
            goto LABEL_70;
          }

          ++v50;
        }

        while (v33 != v50);
        v50 = v33;
      }

LABEL_70:
      v105 = v50;
      if (v43 < *(&v155 + 1))
      {
        do
        {
          if (v154[v43] != 32)
          {
            goto LABEL_74;
          }

          ++v43;
        }

        while (*(&v155 + 1) != v43);
        v43 = *(&v155 + 1);
      }

LABEL_74:
      v51 = v13[6];
      v52 = TParam::getActiveConfigHandle((v51 + 19248));
      if (*(v51 + TParam::getValidConfig((v51 + 19248), v52) + 19400) == 1)
      {
        v53 = TBuffer<char>::c_str(&v154);
        tknPrintf("REPLACEMENT OLD TEXT (%llu,%llu): <%s>\n", v54, v55, v56, v57, v28, v43, v53);
        tknPrintf("REPLACEMENT NEW TEXT (%llu,%llu): <%s>\n", v58, v59, v60, v61, v28, v105, v9);
      }

      v138 = 0;
      v137 = 0;
      v139 = 0;
      TFsa::TFsa(v134);
      TFormatter::addWords(v13, v109, &v109[v114], 0, &v137);
      TFormatter::constructGraph(v13, &v137, 0, -1227133513 * ((v138 - v137) >> 4), v134);
      v133[1] = 0;
      v133[0] = 0;
      v132 = v133;
      v131[1] = 0;
      v131[0] = 0;
      v130 = v131;
      TAllocator::TAllocator(v129, 2048);
      v127 = 0;
      v126 = 0;
      v128 = 0;
      v124 = 0;
      v123 = 0;
      v125 = 0;
      if (TFormatter::collectTags(v13, v134, &v147, v28, v105, v129, &v123, &v130) && TFormatter::collectTags(v13, v134, &v143, v28, v43, v129, &v126, &v132))
      {
        **v111 = -1;
        *(*v111 + 8) = TResultManager::merge(v13[16], v109, v114);
        *(*v111 + 16) = -1;
        v121 = 0;
        __src = 0;
        v122 = 0;
        v62 = *v123;
        if (*v123)
        {
          v63 = 0;
          do
          {
            v64 = *v62[1];
            if (v63 >= v122)
            {
              v65 = (v63 - __src) >> 3;
              if ((v65 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v66 = (v122 - __src) >> 2;
              if (v66 <= v65 + 1)
              {
                v66 = v65 + 1;
              }

              if (v122 - __src >= 0x7FFFFFFFFFFFFFF8)
              {
                v67 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v67 = v66;
              }

              if (v67)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(&__src, v67);
              }

              v68 = (8 * v65);
              *v68 = v64;
              v63 = (8 * v65 + 8);
              v69 = v68 - (v121 - __src);
              memcpy(v69, __src, v121 - __src);
              v70 = __src;
              __src = v69;
              v121 = v63;
              v122 = 0;
              if (v70)
              {
                operator delete(v70);
              }
            }

            else
            {
              *v63 = v64;
              v63 += 8;
            }

            v121 = v63;
            v62 = *v62;
          }

          while (v62);
          v71 = __src;
        }

        else
        {
          v71 = 0;
          v63 = 0;
        }

        v118 = 0;
        v117 = 0;
        v119 = 0;
        v151 = v153;
        v152 = xmmword_26286B6F0;
        v153[256] = 1;
        v72 = v63 - v71;
        if (v63 == v71)
        {
          v73 = 0;
LABEL_170:
          if (v33 > v73)
          {
            v115[0] = v33 - v73;
            std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
            v115[0] = 0;
            std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
          }

          TResultManager::setResultText(v13[16], *(*v111 + 8), v9);
        }

        v107 = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        while (1)
        {
          v76 = *&v71[8 * ~v75 + v72];
          *(&v152 + 1) = 0;
          v77 = (v76 + 48);
          lpsrc = v76;
          if (*(v76 + 71) < 0)
          {
            v77 = *v77;
          }

          TLocaleInfo::unicodeToMultiByte(v13[4] + 240, v77, &v151);
          if (*(&v152 + 1))
          {
            break;
          }

          v84 = v107;
          if (lpsrc[1] != -1)
          {
            v84 = lpsrc[1];
          }

          if (lpsrc[2] == -1)
          {
            v107 = v84;
          }

          else
          {
            v115[0] = v74 - v73;
            std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
            v115[0] = lpsrc[2] - v84;
            std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
            v107 = lpsrc[2];
            v73 = v74;
          }

LABEL_165:
          ++v75;
          v71 = __src;
          v72 = v121 - __src;
          if (v75 >= (v121 - __src) >> 3)
          {
            goto LABEL_170;
          }
        }

        v104 = v75;
        LODWORD(v116) = 0;
        v78 = TLocaleInfo::multiByteToUnicode(v13[4] + 240, &v9[v74], &v116);
        v106 = v73;
        v79 = 0;
        while (*v151 != v9[v74])
        {
          v80 = v116;
          {
            operator new();
          }

          if (v80 <= 8202)
          {
            if (v80 != 32 && v80 != 160)
            {
              break;
            }
          }

          else
          {
            v81 = v80 == 8203 || v80 == 65279;
            if (!v81 && v80 != 12288)
            {
              break;
            }
          }

          v82 = v78;
          if (v74 >= v33)
          {
            v82 = 0;
          }

          v79 += v82;
          v74 += v78;
          v78 = TLocaleInfo::multiByteToUnicode(v13[4] + 240, &v9[v74], &v116);
        }

        v73 = v106;
        TLocaleInfo::multiByteToUnicode(v13[4] + 240, &v9[v106], &v116);
        if (v79)
        {
          v83 = v116;
          {
            operator new();
          }

          if (v83 <= 8202)
          {
            if (v83 != 32 && v83 != 160)
            {
              goto LABEL_156;
            }
          }

          else if (v83 != 8203 && v83 != 65279 && v83 != 12288)
          {
            goto LABEL_156;
          }

          v85 = v118;
          if (v118 >= v119)
          {
            v87 = v117;
            v88 = v118 - v117;
            v89 = (v118 - v117) >> 3;
            v90 = v89 + 1;
            if ((v89 + 1) >> 61)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v91 = v119 - v117;
            if ((v119 - v117) >> 2 > v90)
            {
              v90 = v91 >> 2;
            }

            v92 = v91 >= 0x7FFFFFFFFFFFFFF8;
            v93 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v92)
            {
              v93 = v90;
            }

            if (v93)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v117, v93);
            }

            *(8 * v89) = v79;
            v86 = 8 * v89 + 8;
            memcpy(0, v87, v88);
            v94 = v117;
            v117 = 0;
            v118 = v86;
            v119 = 0;
            if (v94)
            {
              operator delete(v94);
            }
          }

          else
          {
            *v118 = v79;
            v86 = (v85 + 8);
          }

          v118 = v86;
          v115[0] = 0;
          std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
          v73 = v74;
        }

LABEL_156:
        if (v74 >= v33)
        {
          goto LABEL_170;
        }

        if (lpsrc[1] == -1)
        {
          v95 = v107;
        }

        else
        {
          v95 = lpsrc[1];
        }

        v74 += *(&v152 + 1);
        v96 = lpsrc[2];
        if (v96 == -1)
        {
          v97 = v73;
          v96 = v95;
          v75 = v104;
        }

        else
        {
          v97 = v74;
          v75 = v104;
          if (v74 <= v33)
          {
            v115[0] = v74 - v73;
            std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
            v115[0] = lpsrc[2] - v95;
            std::vector<unsigned long>::push_back[abi:ne200100](&v117, v115);
            v96 = lpsrc[2];
            v97 = v74;
          }
        }

        v107 = v96;
        v73 = v97;
        goto LABEL_165;
      }

      v98 = v136;
      v99 = v135;
      if (v136 != v135)
      {
        v100 = 0;
        do
        {
          v101 = *(v99 + 8 * v100);
          if (v101)
          {
            v102 = *v101;
            if (*v101)
            {
              v103 = *(v102 + 120);
              if (v103)
              {
                *(v102 + 128) = v103;
                operator delete(v103);
              }

              if (*(v102 + 119) < 0)
              {
                operator delete(*(v102 + 96));
              }

              if (*(v102 + 95) < 0)
              {
                operator delete(*(v102 + 72));
              }

              if (*(v102 + 71) < 0)
              {
                operator delete(*(v102 + 48));
              }

              MEMORY[0x26672B1B0](v102, 0x10F2C405D5B575ELL);
              v98 = v136;
              v99 = v135;
            }
          }

          ++v100;
        }

        while (v100 < (v98 - v99) >> 3);
      }

      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      TAllocator::clear(v129);
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v130, v131[0]);
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v132, v133[0]);
      TFsa::~TFsa(v134);
      if (v137)
      {
        v138 = v137;
        operator delete(v137);
      }

      if (__p)
      {
        v141 = __p;
        operator delete(__p);
      }

      if (v157 == 1 && v154 != v156 && v154)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v146 == 1 && v143 != v145 && v143)
      {
        MEMORY[0x26672B1B0]();
      }

LABEL_2:
      TResultManager::replace(v13[16], v113, v110, v112, v114, v9);
    }
  }

  if (v9[*(&v155 + 1)])
  {
    if (v29 < (v141 - __p) >> 3)
    {
      v35 = *(__p + v29);
      if (v35 <= *(&v155 + 1))
      {
        v36 = (__p + 8 * v29 + 8);
        v37 = ~v29 + ((v141 - __p) >> 3);
        do
        {
          v28 = v35;
          if (!v37)
          {
            break;
          }

          v38 = *v36++;
          v35 = v38;
          --v37;
        }

        while (v38 <= *(&v155 + 1));
      }
    }

    goto LABEL_62;
  }

  if (TBoolParam::get((v13[6] + 19248)))
  {
    tknPrintString("No text differences; can't generate hints\n");
  }

  **v111 = -1;
  *(*v111 + 8) = TResultManager::merge(v13[16], v109, v114);
  *(*v111 + 16) = -1;
  if (__p)
  {
    v141 = __p;
    operator delete(__p);
  }

  if (v157 == 1 && v154 != v156 && v154)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v146 == 1 && v143 != v145 && v143)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v150 == 1 && v147 != v149 && v147)
  {
    MEMORY[0x26672B1B0]();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2627F055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  MEMORY[0x26672B1B0](v21, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x2918]) == 1)
  {
    v23 = STACK[0x2800];
    if (STACK[0x2800] != a18)
    {
      if (v23)
      {
        MEMORY[0x26672B1B0](v23, 0x1000C4077774924);
      }
    }
  }

  v24 = STACK[0x1DF8];
  if (STACK[0x1DF8])
  {
    STACK[0x1E00] = v24;
    operator delete(v24);
  }

  v25 = STACK[0x1E10];
  if (STACK[0x1E10])
  {
    STACK[0x1E18] = v25;
    operator delete(v25);
  }

  v26 = STACK[0x1E28];
  if (STACK[0x1E28])
  {
    STACK[0x1E30] = v26;
    operator delete(v26);
  }

  v27 = STACK[0x1E40];
  if (STACK[0x1E40])
  {
    STACK[0x1E48] = v27;
    operator delete(v27);
  }

  TAllocator::clear(&STACK[0x1E58]);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x1E80], STACK[0x1E88]);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x1E98], STACK[0x1EA0]);
  TFsa::~TFsa(&STACK[0x1EB0]);
  v28 = STACK[0x1F90];
  if (STACK[0x1F90])
  {
    STACK[0x1F98] = v28;
    operator delete(v28);
  }

  v29 = STACK[0x1FA8];
  if (STACK[0x1FA8])
  {
    STACK[0x1FB0] = v29;
    operator delete(v29);
  }

  if (LOBYTE(STACK[0x2A38]) == 1)
  {
    v30 = STACK[0x2920];
    if (STACK[0x2920] != a20)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x23D8]) == 1)
  {
    v31 = STACK[0x1FC0];
    if (STACK[0x1FC0] != a21)
    {
      if (v31)
      {
        MEMORY[0x26672B1B0](v31, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x27F8]) == 1 && STACK[0x23E0] != a19 && STACK[0x23E0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TBuffer<TPItnResultHandle_fake **>::data(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v3)
  {
    if (*(a1 + 2072))
    {
      v5 = 0;
      TBuffer<TPItnRuleHandle_fake **>::insert(a1, v2, &v5, 1uLL);
      --*(a1 + 16);
    }

    else if (v3)
    {
      *(*a1 + 8 * v3 - 8) = 0;
    }
  }

  else
  {
    *(*a1 + 8 * v2) = 0;
  }

  return *a1;
}

void std::vector<THint>::resize(void *a1, unint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<THint>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<THint>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 104 * a2);
  }
}

void std::vector<THint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x4EC4EC4EC4EC4EC5 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 104 * ((104 * a2 - 104) / 0x68) + 104;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x276276276276276)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x13B13B13B13B13BLL)
    {
      v9 = 0x276276276276276;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<THint>>(a1, v9);
    }

    v16 = 0;
    v17 = 104 * v6;
    v11 = 104 * ((104 * a2 - 104) / 0x68) + 104;
    bzero((104 * v6), v11);
    v18 = 104 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 104 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<THint>,THint*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<THint>::~__split_buffer(&v16);
  }
}

void sub_2627F0C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<THint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<TPItnTagHandle_fake **>::__emplace_hint_unique_key_args<TPItnTagHandle_fake **,TPItnTagHandle_fake ** const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<TState const*>::__find_equal<TState const*>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void std::vector<TPItnTagHandle_fake **>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

char *std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>,std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v6 = a5;
  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v16 = (v10 - __src) >> 3;
    if (v16 >= a5)
    {
      v28 = &__src[8 * a5];
      v29 = &v10[-8 * a5];
      v30 = a1[1];
      while (v29 < v10)
      {
        v31 = *v29;
        v29 += 8;
        *v30++ = v31;
      }

      a1[1] = v30;
      if (v10 != v28)
      {
        memmove(&__src[8 * a5], __src, v10 - v28);
      }

      *__src = v7[4];
      if (v6 != 1)
      {
        v32 = __src;
        do
        {
          v33 = v7[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = v7[2];
              v23 = *v34 == v7;
              v7 = v34;
            }

            while (!v23);
          }

          *(v32 + 1) = v34[4];
          v32 += 8;
          v7 = v34;
        }

        while (v6-- > 2);
      }
    }

    else
    {
      v50 = a3;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<TPItnTagHandle_fake **,std::__tree_node<TPItnTagHandle_fake **,void *> *,long>>(&v50, (v10 - __src) >> 3);
      v18 = v50;
      v19 = a1[1];
      if (v50 != a4)
      {
        v20 = v50;
        do
        {
          *v19 = v20[4];
          v21 = v20[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v20[2];
              v23 = *v22 == v20;
              v20 = v22;
            }

            while (!v23);
          }

          v19 += 8;
          v20 = v22;
        }

        while (v22 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v24 = &__src[8 * v6];
        v25 = &v19[-8 * v6];
        v26 = v19;
        while (v25 < v10)
        {
          v27 = *v25;
          v25 += 8;
          *v26 = v27;
          v26 += 8;
        }

        a1[1] = v26;
        if (v19 != v24)
        {
          memmove(&__src[8 * v6], __src, v19 - v24);
        }

        if (v18 != v7)
        {
          v46 = __src;
          do
          {
            *v46 = v7[4];
            v47 = v7[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v7[2];
                v23 = *v48 == v7;
                v7 = v48;
              }

              while (!v23);
            }

            ++v46;
            v7 = v48;
          }

          while (v48 != v18);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v10[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v15);
  }

  v36 = 8 * (v13 >> 3);
  v37 = (v36 + 8 * a5);
  v38 = v36;
  do
  {
    *v38 = v7[4];
    v38 += 8;
    v39 = v7[1];
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      do
      {
        v40 = v7[2];
        v23 = *v40 == v7;
        v7 = v40;
      }

      while (!v23);
    }

    v7 = v40;
  }

  while (v38 != v37);
  memcpy(v37, __src, a1[1] - __src);
  v41 = *a1;
  v42 = &v37[a1[1] - __src];
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v36 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v36;
}

char *std::vector<TPItnTagHandle_fake **>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TPItnTagHandle_fake ** const*>,std::__wrap_iter<TPItnTagHandle_fake ** const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void *std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TPItnTagHandle_fake **>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void MrecInitModule_ddump_mrecutil(void)
{
  if (!gParDiagnosticShowFloatsAsHex)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DiagnosticShowFloatsAsHex", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDiagnosticShowFloatsAsHex = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDiagnosticShowFloatsAsHex);
  }
}

uint64_t SDState_GetHandle(unint64_t a1, const char *a2, unint64_t a3)
{
  v6 = SdapiInsurance::SdapiInsurance(v25, "SDState_GetHandle", 1, 1, 298);
  if (v25[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v25[151] = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, '%.500s', <SDh %lld>)\n", v7, v8, v9, v10, "SDState_GetHandle", a1, a2, a3);
    }

    v14 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v8, v9, v10, v11, v12, v13);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v8, v9, v10, v11, v12, v13);
    }

    v21 = *(ModelMgr::getVocOrThrow(v14, a1, v8, v9, v10, v11, v12, v13) + 56);
    if (a3 == -1)
    {
      a3 = 0;
    }

    else
    {
      if (HIDWORD(a3))
      {
        throwBadSdapiArgument("SDhState", a3, v15, v16, v17, v18, v19, v20);
      }

      if ((a3 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhState", a3, v15, v16, v17, v18, v19, v20);
      }
    }

    Handle = StateMgr::getHandle(v21, a2, a3, v16, v17, v18, v19, v20);
    if (Handle)
    {
      v23 = Handle;
    }

    else
    {
      v23 = -1;
    }
  }

  else
  {
    v23 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v25);
  return v23;
}

uint64_t SDState_GetAllowedWordCollations(unint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v29, "SDState_GetAllowedWordCollations", 1, 1, 311);
  if (v29[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v15 = a3;
      }

      else
      {
        v15 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, v9, v10, v11, "SDState_GetAllowedWordCollations", a1, a2, v15, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr", v9, v10, v11, v12, v13, v14);
    }

    v16 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v9, v10, v11, v12, v13, v14);
    }

    v23 = *(ModelMgr::getVocOrThrow(v16, a1, v9, v10, v11, v12, v13, v14) + 56);
    if (HIDWORD(a2))
    {
      throwBadSdapiArgument("SDhState", a2, v17, v18, v19, v20, v21, v22);
    }

    if ((a2 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhState", a2, v17, v18, v19, v20, v21, v22);
    }

    Colls = StateMgr::getColls(v23, a2, 1, v18, v19, v20, v21, v22);
    v25 = *(Colls + 8);
    if (a4)
    {
      v26 = 0;
      do
      {
        if (v25 == v26)
        {
          break;
        }

        v27 = *(*Colls + 2 * v26);
        if ((v27 + 1) >= 2u)
        {
          if (v27 == 65534)
          {
            v27 = -2;
          }
        }

        else
        {
          v27 = -1;
        }

        *(a3 + 8 * v26++) = v27;
      }

      while (a4 != v26);
    }
  }

  else
  {
    v25 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v29);
  return v25;
}

uLong computeCRC32(unsigned int a1, const unsigned __int16 *a2, int a3)
{
  DgnPrimArray<unsigned char>::DgnPrimArray(&buf, 2 * a3);
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = a2[v6];
      buf[(v6 * 2)] = v7;
      buf[(v6 * 2 + 1)] = HIBYTE(v7);
      ++v6;
    }

    while (a3 != v6);
  }

  v8 = crc32(a1, buf, len);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&buf);
  return v8;
}

uLong computeCRC32(unsigned int a1, const unsigned int *a2, unsigned int a3)
{
  DgnPrimArray<unsigned char>::DgnPrimArray(&buf, 4 * a3);
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = a2[v6 / 4];
      buf[v6] = v7;
      v7 >>= 8;
      buf[(v6 + 1)] = v7;
      buf[(v6 + 2)] = v7;
      buf[(v6 + 3)] = v7;
      v6 += 4;
    }

    while (4 * a3 != v6);
  }

  v8 = crc32(a1, buf, len);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&buf);
  return v8;
}

uint64_t LMStats::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56;
  }

  v5 = SnapTime::sizeObject(a1 + 56, a2) + v4;
  v6 = SnapTime::sizeObject(a1 + 88, a2);
  return v5 + v6 + SnapTime::sizeObject(a1 + 120, a2);
}

double LMStats::resetStats(LMStats *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

__n128 LMStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v2;
  v3 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v3;
  result = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 120) = result;
  *(a1 + 136) = v5;
  return result;
}

int64x2_t LMStats::operator-=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *a1 = vsubq_s32(*a1, *a2);
  *(a1 + 16) = vsubq_s32(v2, *(a2 + 16));
  *(a1 + 32) = vsubq_s32(*(a1 + 32), *(a2 + 32));
  *(a1 + 48) = vsub_s32(*(a1 + 48), *(a2 + 48));
  *(a1 + 56) = vsubq_s64(*(a1 + 56), *(a2 + 56));
  *(a1 + 72) = vsubq_s64(*(a1 + 72), *(a2 + 72));
  *(a1 + 88) = vsubq_s64(*(a1 + 88), *(a2 + 88));
  *(a1 + 104) = vsubq_s64(*(a1 + 104), *(a2 + 104));
  *(a1 + 120) = vsubq_s64(*(a1 + 120), *(a2 + 120));
  result = vsubq_s64(*(a1 + 136), *(a2 + 136));
  *(a1 + 136) = result;
  return result;
}

void LanguageModel::LanguageModel(LanguageModel *this, int a2, const WordList *a3)
{
  *this = &unk_287528300;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 7) = 0;
  *(this + 8) = a2;
}

void LanguageModel::~LanguageModel(RecentBuffer **this)
{
  *this = &unk_287528300;
  v1 = this + 1;
  DgnDelete<RecentBuffer>(this[1]);
  *v1 = 0;
  v1[1] = 0;
}

uint64_t LanguageModel::getRecentBufferLength(LanguageModel *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

WordLanguageModel ***LanguageModel::addToRecent(WordLanguageModel ***result, uint64_t *a2, uint64_t a3)
{
  if (result[1])
  {
    LODWORD(v3) = a3;
    v5 = result;
    if (((*result)[14])(result, a3))
    {
      v3 = v3;
    }

    else
    {
      v3 = 0xFFFFFFLL;
    }

    v10 = 0;
    v11 = 0;
    v6 = *(a2 + 2);
    if (v6)
    {
      v12 = 0;
      HIDWORD(v11) = realloc_array(0, &v12, 4 * v6, 0, 0, 1) >> 2;
      v10 = v12;
      if (*(a2 + 2))
      {
        v7 = 0;
        do
        {
          if (((*v5)[14])(v5, *(*a2 + 4 * v7)))
          {
            v8 = *a2;
            v10[v11] = *(*a2 + 4 * v7);
            v9 = v11 + 1;
            LODWORD(v11) = v11 + 1;
          }

          else
          {
            v10[v11] = 0xFFFFFF;
            v9 = v11 + 1;
            LODWORD(v11) = v11 + 1;
            v8 = *a2;
          }

          if (*(v8 + 4 * v7) == 16777213)
          {
            RecentBuffer::addToRecent(v5[1], &v10, v3);
            v9 = 0;
            LODWORD(v11) = 0;
            v3 = 16777214;
          }

          ++v7;
        }

        while (v7 < *(a2 + 2));
        if (v9)
        {
          RecentBuffer::addToRecent(v5[1], &v10, v3);
        }
      }
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
  }

  return result;
}

void sub_2627F1EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void LanguageModel::clearRecent(LanguageModel *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    RecentBuffer::clearRecent(v1);
  }
}

uint64_t LanguageModel::languageScoreFinish(LanguageModel *this, uint64_t a2, uint64_t RecentScore, LMScoreDetails *a4, int a5, unsigned int a6, LMContextData *a7)
{
  if (*(this + 1))
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ((*(*this + 112))(this))
    {
      RecentScore = RecentBuffer::getRecentScore(*(this + 1), a2, RecentScore, a7);
    }

    if (a4)
    {
      *(*a4 + 2 * a6) = RecentScore;
    }
  }

  return RecentScore;
}

uint64_t LanguageModel::languageScoreFinishForSearch(LanguageModel *this, uint64_t a2, uint64_t a3, const LMContextData *a4)
{
  if (!*(this + 1) || !(*(*this + 112))(this))
  {
    return a3;
  }

  v8 = *(this + 1);

  return RecentBuffer::getRecentScore(v8, a2, a3, a4);
}

uint64_t LanguageModel::setContext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(result + 8))
  {
    v9 = result;
    v10 = *(a2 + 8);
    v15 = 0;
    v16 = 0;
    if (v10)
    {
      v17 = 0;
      v11 = realloc_array(0, &v17, 4 * v10, 0, 0, 1);
      v15 = v17;
      v12 = *(a2 + 8);
      LODWORD(v16) = v10;
      HIDWORD(v16) = v11 >> 2;
      if (v12)
      {
        v13 = 0;
        do
        {
          if (((*v9)[14])(v9, *(*a2 + 4 * v13)))
          {
            v14 = *(*a2 + 4 * v13);
          }

          else
          {
            v14 = 0xFFFFFF;
          }

          v15[v13++] = v14;
        }

        while (v13 < *(a2 + 8));
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    RecentBuffer::setContext(v9[1], &v15, a4, a6);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  }

  return result;
}

void sub_2627F22B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void LanguageModel::unsetContext(LanguageModel *this, LMContextData *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    RecentBuffer::unsetContext(v2, a2);
  }
}

uint64_t LanguageModel::getValidTopicLmSlots(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return 0;
}

uint64_t LanguageModel::getValidFactoryCorrectiveLms(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
  }

  return 0;
}

void LanguageModel::printSize(LanguageModel *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 694, &v58);
  if (v59)
  {
    v16 = v58;
  }

  else
  {
    v16 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288F46B, a3, &unk_26288F46B, v16);
  DgnString::~DgnString(&v58);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288F46B);
  v21 = *(this + 1);
  if (v21)
  {
    v57 = 0;
    v58 = 0;
    v22 = (a3 + 1);
    v56 = 0;
    RecentBuffer::printSize(v21, 0xFFFFFFFFLL, v22, &v58, &v57, &v56);
    *a4 += v58;
    *a5 += v57;
    *a6 += v56;
  }

  else
  {
    v22 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 696, &v58);
  if (v59)
  {
    v28 = v58;
  }

  else
  {
    v28 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v22, &unk_26288F46B, (34 - a3), (34 - a3), v28, v23, v23, 0);
  DgnString::~DgnString(&v58);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 697, &v58);
  if (v59)
  {
    v34 = v58;
  }

  else
  {
    v34 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, v22, &unk_26288F46B, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v58);
  *a4 += v29;
  *a5 += v29;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 699, &v58);
  if (v59)
  {
    v39 = v58;
  }

  else
  {
    v39 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, v22, &unk_26288F46B, (34 - a3), (34 - a3), v39, 1, 1, 0);
  DgnString::~DgnString(&v58);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 701, &v58);
  if (v59)
  {
    v44 = v58;
  }

  else
  {
    v44 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v22, &unk_26288F46B, (34 - a3), (34 - a3), v44, 4, 4, 0);
  DgnString::~DgnString(&v58);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 703, &v58);
  if (v59)
  {
    v49 = v58;
  }

  else
  {
    v49 = &unk_26288F46B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v22, &unk_26288F46B, (34 - a3), (34 - a3), v49, 4, 4, 0);
  DgnString::~DgnString(&v58);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 704, &v58);
  if (v59)
  {
    v54 = v58;
  }

  else
  {
    v54 = &unk_26288F46B;
  }

  v55 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, a3, &unk_26288F46B, (35 - a3), (35 - a3), v54, *a4, *a5, *a6);
  DgnString::~DgnString(&v58);
}

void sub_2627F2EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void LanguageModel::finalizeLM(unsigned int *a1, LanguageModel *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if ((DFile::subFileExists(a3, 0x4Au) & 1) != 0 || DFile::subFileExists(a3, 0x49u))
  {
    if (a1)
    {
      v16 = **a1;
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 806, "lm/lm", 7, "%s", v17, v18, &errStr_lm_lm_E_RECENT_WITHOUT_LM);
      }
    }

    v19 = MemChunkAlloc(0x218uLL, 0);
    v20 = RecentBuffer::RecentBuffer(v19, a1[8], *(a1 + 2), a2, a1);
    *(a1 + 1) = v20;

    RecentBuffer::loadRecentBuffer(v20, a3, a4, a6, a11);
  }
}

uint64_t *LanguageModel::CreateAndLoadLanguageModel(LanguageModel *this, DFile *a2, DFile *a3, DFileChecksums *a4, DgnSharedMemStream *a5, unsigned int a6, char a7, unsigned int a8, unsigned int a9, unsigned int a10, const WordList *a11, BOOL a12, unsigned int a13, unsigned int a14, __int16 a15, BOOL *a16, BOOL *a17, double *a18)
{
  v30 = a5;
  if (DFile::subFileExists(this, 0x6Du))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 852, "lm/lm", 4, "%s", v19, v20, &errStr_lm_lm_E_CANT_LOAD_WORDDUMMY);
  }

  if (DFile::subFileExists(this, 0x73u) & 1) != 0 || (DFile::subFileExists(this, 0x6Fu))
  {
    v21 = 1;
  }

  else
  {
    v21 = DFile::subFileExists(this, 0x70u);
  }

  v22 = v21 + DFile::subFileExists(this, 0x29u);
  if (v22 + DFile::subFileExists(this, 0x28u) >= 2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 858, "lm/lm", 3, "%s", v23, v24, &errStr_lm_lm_E_MULTIPLE_SPEC_SUBFILES);
  }

  if ((DFile::subFileExists(this, 0x73u) & 1) != 0 || (DFile::subFileExists(this, 0x6Fu) & 1) != 0 || DFile::subFileExists(this, 0x70u))
  {
    v25 = MemChunkAlloc(0x728uLL, 0);
    WordLanguageModel::WordLanguageModel(v25, a9, a11);
  }

  else if ((DFile::subFileExists(this, 0x29u) & 1) != 0 || DFile::subFileExists(this, 0x28u))
  {
    v25 = MemChunkAlloc(0x2D0uLL, 0);
    MultiLanguageModel::MultiLanguageModel(v25, a9, a11);
  }

  else
  {
    if ((a7 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/lm.cpp", 876, "lm/lm", 5, "%s", v27, v28, &errStr_lm_lm_E_MISSING_LM);
    }

    v25 = MemChunkAlloc(0x28uLL, 0);
    DummyLanguageModel::DummyLanguageModel(v25, a9, a11);
  }

  *(v25 + 7) = *(DFile::getCurrentSubDirComponents(this) + 8);
  *(v25 + 24) = v30;
  (*(*v25 + 24))(v25, this, a2, a3, a4, a6, a8, a12, __PAIR64__(a14, a13), a15, a16, a17, a18);
  return v25;
}

void MrecInitModule_generr_mrecutil(void)
{
  if (!gParDiagnosticCrashOnAssert)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DiagnosticCrashOnAssert", &byte_262899963, &byte_262899963, 1, SetShadowDiagnosticCrashOnAssert, 0);
    *v1 = &unk_287527EA0;
    gParDiagnosticCrashOnAssert = v1;
    gShadowDiagnosticCrashOnAssert = 1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticCrashOnAssert);
  }

  if (!gParDiagnosticCrashOnError)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticCrashOnError", &byte_262899963, &byte_262899963, 0, SetShadowDiagnosticCrashOnError, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticCrashOnError = v3;
    gShadowDiagnosticCrashOnError = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticCrashOnError);
  }

  if (!gParDiagnosticCrashOnWarning)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DiagnosticCrashOnWarning", &byte_262899963, &byte_262899963, 0, SetShadowDiagnosticCrashOnWarning, 0);
    *v5 = &unk_287527EA0;
    gParDiagnosticCrashOnWarning = v5;
    gShadowDiagnosticCrashOnWarning = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticCrashOnWarning);
  }

  if (!gParDiagnosticAbortOnAssert)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticAbortOnAssert", &byte_262899963, &byte_262899963, 1, SetShadowDiagnosticAbortOnAssert, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticAbortOnAssert = v7;
    gShadowDiagnosticAbortOnAssert = 1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticAbortOnAssert);
  }

  if (!gParDiagnosticSkipTheseAsserts)
  {
    v8 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v8, "DiagnosticSkipTheseAsserts", &byte_262899963, &byte_262899963, &byte_262899963, SetSkipAsserts, 0);
    *v9 = &unk_287526E40;
    gParDiagnosticSkipTheseAsserts = v9;
    v10 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v10, &gParDiagnosticSkipTheseAsserts);
  }
}

void errWarnInternal(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v26 = *MEMORY[0x277D85DE8];
  if ((sbSkipWarnings & 1) == 0)
  {
    v6 = v5;
    if (gShadowDiagnosticCrashOnWarning == 1)
    {
      v7 = getpid();
      kill(v7, 5);
    }

    ++sNumWarnBPCalls;
    DgnString::DgnString(&v24);
    v21[0] = 0;
    v22 = 0x2000;
    v23 = 0;
    MessageFormatPrefix(v21, 1, 0, -1);
    if (v25)
    {
      v8 = v24;
    }

    else
    {
      v8 = &byte_262899963;
    }

    if (v23)
    {
      v9 = v8;
    }

    else
    {
      v9 = v21;
    }

    v10 = strlen(v9);
    if (v6)
    {
      v11 = v10;
      Buffer = DgnBuffer::getBuffer(v21, 0);
      v13 = v22 - v11;
      v14 = vsnprintf(Buffer + v11, v22 - v11, v6, va);
      if ((v14 & 0x80000000) != 0 || v14 >= v13)
      {
        do
        {
          do
          {
            v15 = DgnBuffer::getBuffer(v21, 1);
            v16 = v22 - v11;
            v17 = vsnprintf(v15 + v11, v22 - v11, v6, va);
          }

          while ((v17 & 0x80000000) != 0);
        }

        while (v17 >= v16);
      }
    }

    DgnBuffer::appendString(v21, "\n");
    if (v25)
    {
      v18 = v24;
    }

    else
    {
      v18 = &byte_262899963;
    }

    if (v23)
    {
      v19 = v18;
    }

    else
    {
      v19 = v21;
    }

    xprintStringFancy(v19, 1, 1, 0, 0);
    DgnString::~DgnString(&v24);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void errThrowInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v11 = v10;
  v36 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v9;
  v42 = *MEMORY[0x277D85DE8];
  if ((gShadowDiagnosticCrashOnError & 1) != 0 || gbDiagnosticCrashOnErrorDueToProfilingClient == 1)
  {
    v20 = getpid();
    kill(v20, 5);
  }

  ++sNumErrBPCalls;
  DgnString::DgnString(&v40);
  __src[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  if (v11)
  {
    Buffer = DgnBuffer::getBuffer(__src, 0);
    for (i = __size; ; i = __size)
    {
      v23 = vsnprintf(Buffer, i, v11, &a9);
      if ((v23 & 0x80000000) == 0 && v23 < i)
      {
        break;
      }

      Buffer = DgnBuffer::getBuffer(__src, 1);
    }

    if (v41)
    {
      v24 = v40;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (__size_4)
    {
      v25 = v24;
    }

    else
    {
      v25 = __src;
    }
  }

  else
  {
    v25 = __src;
  }

  strcpy(sgLastErrorString, v25);
  if ((sbSkipErrThrows & 1) == 0 && v19 != 2)
  {
    if (v19 == 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v28 = MemChunkAlloc(0x50uLL, 0);
      if (v41)
      {
        v29 = v40;
      }

      else
      {
        v29 = &byte_262899963;
      }

      if (__size_4)
      {
        v30 = v29;
      }

      else
      {
        v30 = __src;
      }

      DgnFileIOException::DgnFileIOException(v28, -1, v18, v16, v14, v36, v30);
      *exception = v31;
    }

    else
    {
      exception = __cxa_allocate_exception(8uLL);
      v33 = MemChunkAlloc(0x50uLL, 0);
      if (v41)
      {
        v34 = v40;
      }

      else
      {
        v34 = &byte_262899963;
      }

      if (__size_4)
      {
        v35 = v34;
      }

      else
      {
        v35 = __src;
      }

      *exception = DgnException::DgnException(v33, 0xFFFFFFFF, v18, v16, v14, v36, v35);
    }

    __cxa_throw(exception, v32, 0);
  }

  DgnString::~DgnString(&v40);
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t crashIntoDebugger()
{
  v0 = getpid();

  return kill(v0, 5);
}

uint64_t errCopyAndThrowException(uint64_t result, uint64_t a2)
{
  if ((sbSkipErrThrows & 1) == 0 && result != 2)
  {
    if (result == 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v4 = MemChunkAlloc(0x50uLL, 0);
      if (*(a2 + 16))
      {
        v5 = *(a2 + 8);
      }

      else
      {
        v5 = &byte_262899963;
      }

      if (*(a2 + 40))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = &byte_262899963;
      }

      if (*(a2 + 64))
      {
        v10 = *(a2 + 56);
      }

      else
      {
        v10 = &byte_262899963;
      }

      DgnFileIOException::DgnFileIOException(v4, *(a2 + 72), v5, *(a2 + 24), v8, *(a2 + 48), v10);
      *exception = v12;
    }

    else
    {
      exception = __cxa_allocate_exception(8uLL);
      v6 = MemChunkAlloc(0x50uLL, 0);
      if (*(a2 + 16))
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = &byte_262899963;
      }

      if (*(a2 + 40))
      {
        v9 = *(a2 + 32);
      }

      else
      {
        v9 = &byte_262899963;
      }

      if (*(a2 + 64))
      {
        v11 = *(a2 + 56);
      }

      else
      {
        v11 = &byte_262899963;
      }

      *exception = DgnException::DgnException(v6, *(a2 + 72), v7, *(a2 + 24), v9, *(a2 + 48), v11);
    }

    __cxa_throw(exception, v13, 0);
  }

  return result;
}

void ThrowMemoryException(uint64_t a1)
{
  if ((gShadowDiagnosticCrashOnError & 1) != 0 || gbDiagnosticCrashOnErrorDueToProfilingClient == 1)
  {
    v2 = getpid();
    kill(v2, 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = a1;
}

void ThrowNewFailure(uint64_t a1, uint64_t a2)
{
  snprintf(ThrowNewFailure(DgnMemoryException *,unsigned long)::buffer, 0x190uLL, "Memory allocation (%llu bytes) failed: throwing memory exception.\n", a2);
  xprintString(ThrowNewFailure(DgnMemoryException *,unsigned long)::buffer);
  MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
  ThrowMemoryException(a1);
}

void ThrowExternalNewFailure(uint64_t a1, uint64_t a2)
{
  snprintf(ThrowExternalNewFailure(DgnMemoryException *,unsigned long)::buffer, 0x190uLL, "External memory allocation (%llu bytes) failed: throwing memory exception.\n", a2);
  xprintString(ThrowExternalNewFailure(DgnMemoryException *,unsigned long)::buffer);
  MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
  ThrowMemoryException(a1);
}

uint64_t setDllTerminatedSuccessfullyOrNotInUse(uint64_t result)
{
  sbDllTerminatedSuccessfullyOrNotInUse = result;
  sbHaveTerminatedSuccessfully = result & sbExeTerminatedSuccessfullyOrNotInUse;
  return result;
}

void MrecInitModule_realdf_dfutil(void)
{
  if (!gParDebugDFile)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugDFile", &unk_26288F516, &unk_26288F516, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugDFile = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugDFile);
  }

  if (!gParDebugShowDFileStatsOnDestruction)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowDFileStatsOnDestruction", &unk_26288F516, &unk_26288F516, 0, SetShadowDebugShowDFileStatsOnDestruction, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowDFileStatsOnDestruction = v3;
    gShadowDebugShowDFileStatsOnDestruction = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowDFileStatsOnDestruction);
  }

  if (!gParDiagnosticDFileSimulateAddBlockFailure)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DiagnosticDFileSimulateAddBlockFailure", &unk_26288F516, &unk_26288F516, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDiagnosticDFileSimulateAddBlockFailure = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticDFileSimulateAddBlockFailure);
  }

  if (!gParDiagnosticDFileSimulateOpenFailure)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticDFileSimulateOpenFailure", &unk_26288F516, &unk_26288F516, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticDFileSimulateOpenFailure = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDiagnosticDFileSimulateOpenFailure);
  }
}

uint64_t mrecZlibFree(int a1, void *a2)
{
  if (a2)
  {
    return MemChunkFree(a2, 0);
  }

  return result;
}

uint64_t RealDFileSubFileStream::RealDFileSubFileStream(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10, unint64_t a11)
{
  if (*(a3 + 8))
  {
    v17 = *a3;
  }

  else
  {
    v17 = &unk_26288F516;
  }

  v18 = DgnStream::DgnStream(a1, a2, v17);
  *v18 = &unk_287525538;
  DgnString::DgnString((v18 + 6));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 72) = *(a1 + 8) == 1;
  *(a1 + 76) = 0;
  v125 = (a1 + 96);
  *(a1 + 40) = a4;
  DgnString::operator=(v19, a5);
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  *(a1 + 80) = a8;
  *(a1 + 88) = a9;
  *(a1 + 92) = a10;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  if ((a6 - 3) > 1 || !a10)
  {
    goto LABEL_131;
  }

  if (HIDWORD(a11))
  {
    v22 = *(a1 + 40);
    v23 = *(v22 + 152) + (a7 << 7);
    if (*(v22 + 24))
    {
      v24 = *(v22 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 630, "dfutil/realdf", 51, "%.500s %.500s", v20, v21, v23);
  }

  *(a1 + 112) = a11;
  v25 = a11 / 0x500000;
  v123 = a11 % 0x500000;
  v124 = a11 / 0x500000;
  if (a11 >= 0x500000)
  {
    v26 = 5242880;
  }

  else
  {
    v26 = a11 % 0x500000;
  }

  v27 = v25 + 1;
  v28 = *(a1 + 108);
  if (v28 <= v25)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v125, v27 - v28, 0);
  }

  v29 = *(a1 + 104);
  if (v29 <= v27)
  {
    v30 = (a1 + 96);
    if (v29 <= v124)
    {
      v32 = ((a11 * 0x33333333334uLL) >> 64) - v29 + 1;
      v33 = 16 * v29;
      do
      {
        v34 = (*v125 + v33);
        *v34 = 0;
        v34[1] = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    v30 = (a1 + 96);
    if (v29 > v27)
    {
      v31 = 16 * v29 - 16;
      do
      {
        --v29;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*v125 + v31);
        v31 -= 16;
      }

      while (v29 > v27);
    }
  }

  *(a1 + 104) = v27;
  if (a11 >= 0x500000)
  {
    v35 = 0;
    v30 = (a1 + 96);
    if (v124 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = a11 / 0x500000;
    }

    v37 = 16 * v36;
    do
    {
      v38 = *v30 + v35;
      if (*(v38 + 12) >> 20 <= 4u)
      {
        strm.next_in = 0;
        *(v38 + 12) = realloc_array(*v38, &strm.next_in, 0x500000uLL, *(v38 + 8), *(v38 + 8), 1);
        *v38 = strm.next_in;
      }

      v35 += 16;
      v30 = (a1 + 96);
    }

    while (v37 != v35);
  }

  v39 = *v30 + 16 * v124;
  if (*(v39 + 12) < v123)
  {
    strm.next_in = 0;
    *(v39 + 12) = realloc_array(*v39, &strm.next_in, v123, *(v39 + 8), *(v39 + 8), 1);
    *v39 = strm.next_in;
  }

  strm.next_in = 0;
  strm.avail_in = 0;
  strm.next_out = 0;
  strm.avail_out = 0;
  strm.zalloc = mrecZlibAlloc;
  strm.zfree = mrecZlibFree;
  strm.opaque = 0;
  v40 = crc32(0, 0, 0);
  v134 = 0;
  *v135 = 0;
  buf = 0;
  v41 = realloc_array(0, &buf, 0x4000uLL, 0, 0, 1);
  v134 = buf;
  v135[0] = 0x4000;
  v135[1] = v41;
  strm.next_in = buf;
  inflateInit2_(&strm, -15, "1.2.12", 112);
  strm.avail_out = 0x4000;
  v133 = 0;
  RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
  if (v133 != 31)
  {
    v44 = *(a1 + 40);
    v45 = *(v44 + 152) + (*(a1 + 68) << 7);
    if (*(v44 + 24))
    {
      v46 = *(v44 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 672, "dfutil/realdf", 36, "%.500s %.500s", v42, v43, v45);
  }

  RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
  if (v133 != 139)
  {
    v49 = *(a1 + 40);
    v50 = *(v49 + 152) + (*(a1 + 68) << 7);
    if (*(v49 + 24))
    {
      v51 = *(v49 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 676, "dfutil/realdf", 36, "%.500s %.500s", v47, v48, v50);
  }

  v132 = 0;
  RealDFileSubFileStream::basicReadWithMode(a1, &v132, 1u, 1);
  if (v132 != 8)
  {
    v54 = *(a1 + 40);
    v55 = *(v54 + 152) + (*(a1 + 68) << 7);
    if (*(v54 + 24))
    {
      v56 = *(v54 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 682, "dfutil/realdf", 36, "%.500s %.500s", v52, v53, v55);
  }

  v131 = 0;
  RealDFileSubFileStream::basicReadWithMode(a1, &v131, 1u, 1);
  if (v131 > 0x1Fu)
  {
    v59 = *(a1 + 40);
    v60 = *(v59 + 152) + (*(a1 + 68) << 7);
    if (*(v59 + 24))
    {
      v61 = *(v59 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 688, "dfutil/realdf", 36, "%.500s %.500s", v57, v58, v60);
  }

  v62 = 6;
  do
  {
    RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    --v62;
  }

  while (v62);
  if ((v131 & 4) != 0)
  {
    RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    v63 = v133;
    RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    for (i = v63 + (v133 << 8); i; --i)
    {
      RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    }
  }

  v65 = v131;
  if ((v131 & 8) != 0)
  {
    do
    {
      RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    }

    while (v133);
    v65 = v131;
  }

  if ((v65 & 0x10) != 0)
  {
    do
    {
      RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    }

    while (v133);
    v65 = v131;
  }

  if ((v65 & 2) != 0)
  {
    RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
    RealDFileSubFileStream::basicReadWithMode(a1, &v133, 1u, 1);
  }

  buf = 0;
  v130 = 0;
  v137[0] = 0;
  v66 = 0x4000;
  v67 = realloc_array(0, v137, 0x4000uLL, 0, 0, 1);
  __n = v26;
  v68 = 0;
  v69 = 0;
  buf = v137[0];
  LODWORD(v130) = 0x4000;
  HIDWORD(v130) = v67;
  while (2)
  {
    next_out = buf;
    strm.next_out = buf;
    strm.avail_out = v66;
    if (!v66)
    {
      goto LABEL_97;
    }

    while (1)
    {
      if (strm.avail_in)
      {
        v71 = 0;
      }

      else
      {
        v72 = v135[0] ? RealDFileSubFileStream::basicRead(a1, v134, v135[0]) : 0;
        strm.avail_in = v72;
        v71 = v72 == 0;
        strm.next_in = v134;
      }

      v73 = inflate(&strm, 0);
      v69 = v73;
      if (v73)
      {
        break;
      }

LABEL_75:
      if (v71)
      {
        v78 = *(a1 + 40);
        if (*(v78 + 24))
        {
          v79 = *(v78 + 16);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 807, "dfutil/realdf", 40, "%.500s %.500s", v74, v75, *(v78 + 152) + (*(a1 + 68) << 7));
      }

      if (!strm.avail_out)
      {
        goto LABEL_97;
      }
    }

    if (v73 != 1)
    {
      v76 = *(a1 + 40);
      if (*(v76 + 24))
      {
        v77 = *(v76 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 804, "dfutil/realdf", 39, "%.500s %.500s %d", v74, v75, *(v76 + 152) + (*(a1 + 68) << 7));
      goto LABEL_75;
    }

    v80 = v68;
    v85 = crc32(v40, next_out, LODWORD(strm.next_out) - next_out);
    next_out = strm.next_out;
    v86 = v137;
    v87 = 1;
    do
    {
      v88 = 0;
      v89 = 0;
      v90 = v87;
      *v86 = 0;
      do
      {
        __n_7 = 0;
        if (strm.avail_in)
        {
          --strm.avail_in;
          v91 = *strm.next_in++;
        }

        else
        {
          RealDFileSubFileStream::basicReadWithMode(a1, &__n_7, 1u, 1);
          v91 = __n_7;
        }

        v89 += v91 << v88;
        *v86 = v89;
        v88 += 8;
      }

      while (v88 != 32);
      v87 = 0;
      v86 = &v128;
    }

    while ((v90 & 1) != 0);
    v92 = v128;
    v40 = v85;
    v68 = v80;
    if (LODWORD(v137[0]) != v85)
    {
      v93 = *(a1 + 40);
      if (*(v93 + 24))
      {
        v94 = *(v93 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 792, "dfutil/realdf", 37, "%.500s %.500s %u %u", v83, v84, *(v93 + 152) + (*(a1 + 68) << 7));
    }

    total_out = strm.total_out;
    if (strm.total_out != v92)
    {
      v96 = *(a1 + 40);
      if (*(v96 + 24))
      {
        v97 = *(v96 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 797, "dfutil/realdf", 38, "%.500s %.500s %llu %u", v83, v84, *(v96 + 152) + (*(a1 + 68) << 7));
      total_out = strm.total_out;
    }

    RealDFile::verifyCompressionInfo(*(a1 + 40), *(a1 + 68), total_out, v85, v81, v82, v83, v84);
    v69 = 1;
LABEL_97:
    v98 = crc32(v40, next_out, LODWORD(strm.next_out) - next_out);
    v99 = v130 - strm.avail_out;
    if (v130 != strm.avail_out)
    {
      v100 = v98;
      v101 = v99 - __n;
      if (v99 <= __n)
      {
        v107 = 0;
        v101 = v130 - strm.avail_out;
      }

      else
      {
        v102 = v68;
        v103 = *v125 + 16 * v68;
        v105 = *(v103 + 8);
        v104 = *(v103 + 12);
        v106 = v105 + __n;
        if (v105 + __n > v104)
        {
          DgnPrimArray<char>::reallocElts(v103, v105 + __n - v104, 1);
          v106 = *(v103 + 8) + __n;
        }

        *(v103 + 8) = v106;
        v107 = __n;
        memcpy((*v103 + v105), buf, __n);
        v68 = v102 + 1;
        if (v102 + 1 >= v124)
        {
          v108 = __n;
        }

        else
        {
          v108 = 5242880;
        }

        if (v68 == v124)
        {
          v108 = a11 % 0x500000;
        }

        __n = v108;
      }

      v109 = v68;
      v110 = *v125 + 16 * v68;
      v112 = *(v110 + 8);
      v111 = *(v110 + 12);
      v113 = v112 + v101;
      if (v112 + v101 > v111)
      {
        DgnPrimArray<char>::reallocElts(v110, v112 + v101 - v111, 1);
        v113 = *(v110 + 8) + v101;
      }

      *(v110 + 8) = v113;
      memcpy((*v110 + v112), &buf[v107], v101);
      if (v109 + 1 >= v124)
      {
        v114 = 0;
      }

      else
      {
        v114 = 5242880;
      }

      if (v109 + 1 == v124)
      {
        v115 = a11 / 0x500000;
      }

      else
      {
        v115 = v109 + 1;
      }

      if (v109 + 1 == v124)
      {
        v114 = a11 % 0x500000;
      }

      v68 = __n == v101 ? v115 : v109;
      v116 = __n == v101 ? v114 : __n - v101;
      if (v69 != 1)
      {
        v40 = v100;
        __n = v116;
        v66 = v130;
        continue;
      }
    }

    break;
  }

  if (inflateEnd(&strm))
  {
    v119 = *(a1 + 40);
    v120 = *(v119 + 152) + (*(a1 + 68) << 7);
    if (*(v119 + 24))
    {
      v121 = *(v119 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 872, "dfutil/realdf", 39, "%.500s %.500s %d", v117, v118, v120);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&buf);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v134);
LABEL_131:
  if (*(a1 + 8) == 2)
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}

void sub_2627F4BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, DgnString *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a17);
  DgnString::~DgnString(a14);
  DgnStream::~DgnStream(v23);
  _Unwind_Resume(a1);
}

size_t RealDFileSubFileStream::basicReadWithMode(uint64_t a1, char *a2, unsigned int a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = RealDFileSubFileStream::basicRead(a1, a2, a3);
  v10 = v7;
  if (a4 == 1 && v7 != a3)
  {
    v11 = *(a1 + 40);
    v12 = *(v11 + 152) + (*(a1 + 68) << 7);
    if (*(v11 + 24))
    {
      v13 = *(v11 + 16);
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1451, "dfutil/realdf", 19, "%.500s %.500s %u %u", v8, v9, v12);
  }

  return v10;
}

void RealDFile::verifyCompressionInfo(RealDFile *this, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = *(this + 19) + (a2 << 7);
  if (*(v11 + 112) != a3)
  {
    if (*(this + 6))
    {
      v12 = *(this + 2);
    }

    v14 = *(v11 + 112);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4671, "dfutil/realdf", 42, "%.500s %.500s %llu %llu", a7, a8, v11);
  }

  if (*(v11 + 120) != a4)
  {
    if (*(this + 6))
    {
      v13 = *(this + 2);
    }

    v15 = *(v11 + 120);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4676, "dfutil/realdf", 41, "%.500s %.500s %u %u", a7, a8, *(this + 152) + (v10 << 7));
  }
}