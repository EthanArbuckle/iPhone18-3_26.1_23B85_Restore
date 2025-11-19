void *anonymous namespace::Remangler::mangleAccessorAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMa", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleAssociatedTypeWitnessTableAccessor(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "WT", 2uLL, this[1593]);
  if (*(a2 + 18) != 5 || *(a2 + 2) != 3)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    v11 = 989;
LABEL_15:
    *(a4 + 16) = v11;
    return;
  }

  if (*a4)
  {
    return;
  }

  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 == 2)
  {
    goto LABEL_8;
  }

  if (v8 != 5 || *(a2 + 2) <= 1u)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    v11 = 119;
    goto LABEL_15;
  }

  v9 = *a2;
LABEL_8:
  if (!*a4)
  {
    if (*(a2 + 18) - 1 >= 2)
    {
      a2 = *a2;
    }

    v10 = *(a2 + 2);
  }
}

unsigned int *anonymous namespace::Remangler::mangleAutoClosureType@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 75;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleBodyAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMb", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleBoundGenericClass(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

unsigned int *anonymous namespace::Remangler::mangleCFunctionPointer@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 99;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleClassMetadataBaseOffset@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mo", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleConformanceAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMc", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleConstructor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleCoroutineContinuationPrototype@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TC", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleDeallocator(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleDefaultArgumentInitializer(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleDependentGenericConformanceRequirement(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = *(v10 + 18);
  v12 = v10;
  if ((v11 - 1) >= 2)
  {
    v12 = *v10;
  }

  if (*(*v12 + 16) != 39)
  {
    if (*a4)
    {
      return;
    }

    goto LABEL_19;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
LABEL_14:
    v13 = *v10;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_18:
  if (*a4)
  {
    return;
  }

LABEL_19:
  v14 = *(v5 + 18);
  v15 = v5;
  if (v14 != 2)
  {
    if (v14 != 5)
    {
      goto LABEL_49;
    }

    v16 = *(v5 + 2);
    if (v16 != 2)
    {
LABEL_46:
      if (v16 >= 2)
      {
        v5 = *v5;
        goto LABEL_48;
      }

LABEL_49:
      v23 = 0;
      goto LABEL_50;
    }

    v15 = *v5;
  }

  if (*(*(v15 + 1) + 16) == 243)
  {
    v17 = v5;
    if (v14 != 2)
    {
      if (*(v5 + 2) < 2u)
      {
        v18 = 0;
        goto LABEL_29;
      }

      v17 = *v5;
    }

    v18 = *(v17 + 1);
LABEL_29:
    v19 = *(v18 + 18);
    if (v19 != 1 && (v19 != 5 || *(v18 + 8) != 1))
    {
      goto LABEL_44;
    }

    v20 = v5;
    if (v14 != 2)
    {
      if (*(v5 + 2) < 2u)
      {
        v21 = 0;
LABEL_37:
        if (v21[18] - 1 >= 2)
        {
          v21 = *v21;
        }

        if (*(*v21 + 16) == 190)
        {
          if (v14 != 2)
          {
            if (*(v5 + 2) < 2u)
            {
              v22 = 0;
LABEL_54:
              v24 = *(v22 + 18);
              if ((v24 - 1) >= 2)
              {
                if (v24 != 5 || !*(v22 + 2))
                {
                  v25 = 0;
                  goto LABEL_60;
                }

                v22 = *v22;
              }

              v25 = *v22;
LABEL_60:

              return;
            }

            v5 = *v5;
          }

          v22 = *(v5 + 1);
          goto LABEL_54;
        }

        goto LABEL_44;
      }

      v20 = *v5;
    }

    v21 = *(v20 + 1);
    goto LABEL_37;
  }

LABEL_44:
  if (v14 != 2)
  {
    v16 = *(v5 + 2);
    goto LABEL_46;
  }

LABEL_48:
  v23 = *(v5 + 1);
LABEL_50:
}

char *anonymous namespace::Remangler::mangleDependentGenericParamType@<X0>(char *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if ((v3 - 1) >= 2)
  {
    v4 = *a2;
  }

  if (!**v4)
  {
    v5 = a2;
    if (v3 == 5)
    {
      v5 = *a2;
    }

    if (!**(v5 + 1))
    {
      v25 = *(this + 3184);
      v26 = *(this + 3185);
      v27 = *(this + 1591);
      if (v25 < v26)
      {
LABEL_46:
        *(this + 3184) = v25 + 1;
        v27[v25] = 120;
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        return this;
      }

      v28 = *(this + 1593);
      v29 = v28[1];
      if (&v27[v26] == v29)
      {
        v30 = v28[2];
        if ((v29 + 1) <= v30)
        {
          v28[1] = v29 + 1;
          LODWORD(v32) = 1;
LABEL_45:
          *(this + 3185) = v26 + v32;
          goto LABEL_46;
        }
      }

      else
      {
        v30 = v28[2];
      }

      v31 = a3;
      if ((2 * v26) <= 4)
      {
        v32 = 4;
      }

      else
      {
        v32 = (2 * v26);
      }

      v33 = v32 + v26;
      if (!v29 || &v29[v33] > v30)
      {
        v34 = 2 * v28[4];
        if (v34 <= v33 + 1)
        {
          v34 = v33 + 1;
        }

        v28[4] = v34;
        v35 = v34 + 8;
        v36 = this;
        v37 = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
        this = v36;
        v38 = v37 + v35;
        *v37 = v28[3];
        v29 = (v37 + 1);
        v28[2] = v38;
        v28[3] = v37;
      }

      v28[1] = &v29[v33];
      if (v26)
      {
        v39 = this;
        memcpy(v29, *(this + 1591), v26);
        this = v39;
      }

      *(this + 1591) = v29;
      LODWORD(v26) = *(this + 3185);
      v27 = v29;
      v25 = *(this + 3184);
      a3 = v31;
      goto LABEL_45;
    }
  }

  v6 = *(this + 3184);
  v7 = *(this + 3185);
  v8 = *(this + 1591);
  if (v6 >= v7)
  {
    v9 = *(this + 1593);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v13) = 1;
LABEL_25:
        *(this + 3185) = v7 + v13;
        goto LABEL_26;
      }
    }

    else
    {
      v11 = v9[2];
    }

    v12 = a3;
    if ((2 * v7) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v7);
    }

    v14 = v13 + v7;
    if (v10)
    {
      v15 = &v10[v13 + v7] > v11;
    }

    else
    {
      v15 = 1;
    }

    v8 = v9[1];
    if (v15)
    {
      v16 = 2 * v9[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v9[4] = v16;
      v17 = v16 + 8;
      v18 = this;
      v19 = a2;
      v20 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      a2 = v19;
      v21 = v20;
      this = v18;
      v22 = v21 + v17;
      *v21 = v9[3];
      v8 = (v21 + 1);
      v9[2] = v22;
      v9[3] = v21;
    }

    v9[1] = &v8[v14];
    if (v7)
    {
      v23 = this;
      v24 = a2;
      memcpy(v8, *(this + 1591), v7);
      a2 = v24;
      this = v23;
    }

    *(this + 1591) = v8;
    LODWORD(v7) = *(this + 3185);
    v6 = *(this + 3184);
    a3 = v12;
    goto LABEL_25;
  }

LABEL_26:
  *(this + 3184) = v6 + 1;
  v8[v6] = 113;
}

char *anonymous namespace::Remangler::mangleDependentGenericSameTypeRequirement@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = *(v10 + 18);
  v12 = v10;
  if ((v11 - 1) >= 2)
  {
    v12 = *v10;
  }

  if (*(*v12 + 16) != 39)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_19;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
LABEL_14:
    v13 = *v10;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_18:
  if (*a4)
  {
    return result;
  }

LABEL_19:
  v15 = *(this + 3184);
  v16 = *(this + 3185);
  v17 = this[1591];
  if (v15 < v16)
  {
    goto LABEL_35;
  }

  v18 = this[1593];
  v19 = v18[1];
  if (&v17[v16] != v19)
  {
    v20 = v18[2];
LABEL_23:
    if ((2 * v16) <= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = (2 * v16);
    }

    v22 = v21 + v16;
    if (!v19 || &v19[v22] > v20)
    {
      v23 = 2 * v18[4];
      if (v23 <= v22 + 1)
      {
        v23 = v22 + 1;
      }

      v18[4] = v23;
      v24 = v23 + 8;
      v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
      v26 = v25 + v24;
      *v25 = v18[3];
      v19 = (v25 + 1);
      v18[2] = v26;
      v18[3] = v25;
    }

    v18[1] = &v19[v22];
    if (v16)
    {
      memcpy(v19, this[1591], v16);
    }

    this[1591] = v19;
    LODWORD(v16) = *(this + 3185);
    v17 = v19;
    v15 = *(this + 3184);
    goto LABEL_34;
  }

  v20 = v18[2];
  if ((v19 + 1) > v20)
  {
    goto LABEL_23;
  }

  v18[1] = v19 + 1;
  LODWORD(v21) = 1;
LABEL_34:
  *(this + 3185) = v16 + v21;
LABEL_35:
  *(this + 3184) = v15 + 1;
  v17[v15] = 122;
  v27 = *(v5 + 18);
  if (v27 != 2)
  {
    if (v27 != 5 || *(v5 + 2) < 2u)
    {
      v28 = 0;
      goto LABEL_41;
    }

    v5 = *v5;
  }

  v28 = *(v5 + 1);
LABEL_41:
}

void *anonymous namespace::Remangler::mangleDependentGenericLayoutRequirement@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v8 = *a2;
LABEL_5:
    v9 = *v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = *(v9 + 18);
  v11 = v9;
  if ((v10 - 1) >= 2)
  {
    v11 = *v9;
  }

  if (*(*v11 + 16) != 39)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_19;
  }

  if ((v10 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (v10 == 5 && *(v9 + 2))
  {
    v9 = *v9;
LABEL_14:
    v12 = *v9;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:
  if (*a4)
  {
    return result;
  }

LABEL_19:
  v14 = *(this + 3184);
  v15 = *(this + 3185);
  v16 = *(this + 1591);
  if (v14 < v15)
  {
    goto LABEL_35;
  }

  v17 = *(this + 1593);
  v18 = v17[1];
  if (&v16[v15] != v18)
  {
    v19 = v17[2];
LABEL_23:
    if ((2 * v15) <= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = (2 * v15);
    }

    v21 = v20 + v15;
    if (!v18 || &v18[v21] > v19)
    {
      v22 = 2 * v17[4];
      if (v22 <= v21 + 1)
      {
        v22 = v21 + 1;
      }

      v17[4] = v22;
      v23 = v22 + 8;
      v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v25 = v24 + v23;
      *v24 = v17[3];
      v18 = (v24 + 1);
      v17[2] = v25;
      v17[3] = v24;
    }

    v17[1] = &v18[v21];
    if (v15)
    {
      memcpy(v18, *(this + 1591), v15);
    }

    *(this + 1591) = v18;
    LODWORD(v15) = *(this + 3185);
    v16 = v18;
    v14 = *(this + 3184);
    goto LABEL_34;
  }

  v19 = v17[2];
  if ((v18 + 1) > v19)
  {
    goto LABEL_23;
  }

  v17[1] = v18 + 1;
  LODWORD(v20) = 1;
LABEL_34:
  *(this + 3185) = v15 + v20;
LABEL_35:
  *(this + 3184) = v14 + 1;
  v16[v14] = 108;
  if (*(a2 + 18) == 5)
  {
    v26 = *(a2 + 2);
    v27 = *a2;
    v28 = *(*a2 + 8);
    v29 = *v28;
    v30 = *(v28 + 8);
    if (v26 > 2)
    {
      v31 = **(v27 + 16);
      if (v26 == 3)
      {
        v32 = -1;
      }

      else
      {
        v32 = **(v27 + 24);
      }

      result = swift::Demangle::__runtime::CharVector::append(this + 1591, v29, v30, *(this + 1593));
      if ((v31 & 0x80000000) == 0)
      {
        result = swift::Demangle::__runtime::CharVector::append(this + 3182, v31, *(this + 1593));
      }

      if ((v32 & 0x80000000) == 0)
      {
        swift::Demangle::__runtime::CharVector::append(this + 1591, "_", 1uLL, *(this + 1593));
        result = swift::Demangle::__runtime::CharVector::append(this + 3182, v32, *(this + 1593));
      }

      goto LABEL_41;
    }
  }

  else
  {
    v33 = *(a2 + 1);
    v29 = *v33;
    v30 = *(v33 + 8);
  }

  result = swift::Demangle::__runtime::CharVector::append(this + 1591, v29, v30, *(this + 1593));
LABEL_41:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleDependentGenericSignature@<X0>(void *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
      goto LABEL_9;
    }

    v8 = 0;
  }

  if (v7 == 1)
  {
    v11 = a2 + 1;
    goto LABEL_13;
  }

  if (v7 == 2)
  {
    v11 = a2 + 2;
LABEL_13:
    v9 = a2;
    goto LABEL_14;
  }

  if (v7 != 5)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_80;
    }

    while (1)
    {
LABEL_29:
      if (*(*v8 + 8) != 38)
      {
        goto LABEL_76;
      }

      v14 = **v8;
      if (v14)
      {
        if (v14 != 1)
        {
          this = swift::Demangle::__runtime::CharVector::append((v5 + 12728), v14 - 2, *(v5 + 12744));
        }

        v15 = *(v5 + 12736);
        v16 = *(v5 + 12740);
        v17 = *(v5 + 12728);
        if (v15 >= v16)
        {
          v18 = *(v5 + 12744);
          v19 = v18[1];
          if (&v17[v16] != v19)
          {
            v20 = v18[2];
            goto LABEL_41;
          }

          v20 = v18[2];
          if ((v19 + 1) <= v20)
          {
            v18[1] = v19 + 1;
            LODWORD(v25) = 1;
          }

          else
          {
LABEL_41:
            if ((2 * v16) <= 4)
            {
              v25 = 4;
            }

            else
            {
              v25 = (2 * v16);
            }

            v26 = v25 + v16;
            if (v19)
            {
              v27 = &v19[v25 + v16] > v20;
            }

            else
            {
              v27 = 1;
            }

            v17 = v18[1];
            if (v27)
            {
              v28 = 2 * v18[4];
              if (v28 <= v26 + 1)
              {
                v28 = v26 + 1;
              }

              v18[4] = v28;
              v29 = v28 + 8;
              this = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
              v30 = this + v29;
              *this = v18[3];
              v17 = (this + 1);
              v18[2] = v30;
              v18[3] = this;
            }

            v18[1] = &v17[v26];
            if (v16)
            {
              this = memcpy(v17, *(v5 + 12728), v16);
            }

            *(v5 + 12728) = v17;
            LODWORD(v16) = *(v5 + 12740);
            v15 = *(v5 + 12736);
          }

          v31 = v16 + v25;
          v13 = 95;
LABEL_72:
          *(v5 + 12740) = v31;
          goto LABEL_28;
        }

        v13 = 95;
      }

      else
      {
        v15 = *(v5 + 12736);
        v21 = *(v5 + 12740);
        v17 = *(v5 + 12728);
        if (v15 >= v21)
        {
          v22 = *(v5 + 12744);
          v23 = v22[1];
          if (&v17[v21] != v23)
          {
            v24 = v22[2];
            goto LABEL_57;
          }

          v24 = v22[2];
          if ((v23 + 1) <= v24)
          {
            v22[1] = v23 + 1;
            LODWORD(v32) = 1;
          }

          else
          {
LABEL_57:
            if ((2 * v21) <= 4)
            {
              v32 = 4;
            }

            else
            {
              v32 = (2 * v21);
            }

            v33 = v32 + v21;
            if (v23)
            {
              v34 = &v23[v32 + v21] > v24;
            }

            else
            {
              v34 = 1;
            }

            v17 = v22[1];
            if (v34)
            {
              v35 = 2 * v22[4];
              if (v35 <= v33 + 1)
              {
                v35 = v33 + 1;
              }

              v22[4] = v35;
              v36 = v35 + 8;
              this = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
              v37 = this + v36;
              *this = v22[3];
              v17 = (this + 1);
              v22[2] = v37;
              v22[3] = this;
            }

            v22[1] = &v17[v33];
            if (v21)
            {
              this = memcpy(v17, *(v5 + 12728), v21);
            }

            *(v5 + 12728) = v17;
            LODWORD(v21) = *(v5 + 12740);
            v15 = *(v5 + 12736);
          }

          v31 = v21 + v32;
          v13 = 122;
          goto LABEL_72;
        }

        v13 = 122;
      }

LABEL_28:
      *(v5 + 12736) = v15 + 1;
      v17[v15] = v13;
      if (++v8 == v11)
      {
        goto LABEL_76;
      }
    }
  }

  v9 = *a2;
LABEL_9:
  v10 = *(a2 + 2);
  v11 = (v9 + 8 * v10);
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (*(*v9 + 16) != 38)
  {
    goto LABEL_23;
  }

  v12 = a2;
  if ((v7 - 1) >= 2)
  {
    v12 = *a2;
  }

  if (**v12 != 1)
  {
LABEL_23:
    if (v8 != v11)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      if (*(a2 + 2) == 1)
      {
        goto LABEL_75;
      }

      a2 = *a2;
    }

    if (*(a2[1] + 8) == 38)
    {
      goto LABEL_23;
    }
  }

LABEL_75:
  ++v8;
LABEL_76:
  if (v8 != v11)
  {
    v38 = *(v5 + 12736);
    v39 = *(v5 + 12740);
    v40 = *(v5 + 12728);
    if (v38 < v39)
    {
LABEL_116:
      *(v5 + 12736) = v38 + 1;
      v40[v38] = 82;
      do
      {
        if (*a4)
        {
          return this;
        }

        ++v8;
      }

      while (v8 != v11);
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v56 = (a4 + 16);
      v64 = *(v5 + 12736);
      v65 = *(v5 + 12740);
      v66 = *(v5 + 12728);
      if (v64 < v65)
      {
LABEL_140:
        *(v5 + 12736) = v64 + 1;
        v66[v64] = 114;
        *a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_141;
      }

      v67 = *(v5 + 12744);
      v68 = v67[1];
      if (&v66[v65] == v68)
      {
        v69 = v67[2];
        if ((v68 + 1) <= v69)
        {
          v67[1] = v68 + 1;
          LODWORD(v70) = 1;
LABEL_139:
          *(v5 + 12740) = v65 + v70;
          goto LABEL_140;
        }
      }

      else
      {
        v69 = v67[2];
      }

      if ((2 * v65) <= 4)
      {
        v70 = 4;
      }

      else
      {
        v70 = (2 * v65);
      }

      v71 = v70 + v65;
      if (v68)
      {
        v72 = &v68[v70 + v65] > v69;
      }

      else
      {
        v72 = 1;
      }

      v66 = v67[1];
      if (v72)
      {
        v73 = 2 * v67[4];
        if (v73 <= v71 + 1)
        {
          v73 = v71 + 1;
        }

        v67[4] = v73;
        v74 = v73 + 8;
        this = malloc_type_malloc(v73 + 8, 0x2004093837F09uLL);
        v75 = this + v74;
        *this = v67[3];
        v66 = this + 1;
        v67[2] = v75;
        v67[3] = this;
      }

      v67[1] = &v66[v71];
      if (v65)
      {
        this = memcpy(v66, *(v5 + 12728), v65);
      }

      *(v5 + 12728) = v66;
      LODWORD(v65) = *(v5 + 12740);
      v64 = *(v5 + 12736);
      goto LABEL_139;
    }

    v41 = *(v5 + 12744);
    v42 = v41[1];
    if (&v40[v39] == v42)
    {
      v43 = v41[2];
      if ((v42 + 1) <= v43)
      {
        v41[1] = v42 + 1;
        LODWORD(v57) = 1;
LABEL_115:
        *(v5 + 12740) = v39 + v57;
        goto LABEL_116;
      }
    }

    else
    {
      v43 = v41[2];
    }

    if ((2 * v39) <= 4)
    {
      v57 = 4;
    }

    else
    {
      v57 = (2 * v39);
    }

    v58 = v57 + v39;
    if (v42)
    {
      v59 = &v42[v57 + v39] > v43;
    }

    else
    {
      v59 = 1;
    }

    v40 = v41[1];
    if (v59)
    {
      v60 = 2 * v41[4];
      if (v60 <= v58 + 1)
      {
        v60 = v58 + 1;
      }

      v41[4] = v60;
      v61 = v60 + 8;
      v62 = malloc_type_malloc(v60 + 8, 0x2004093837F09uLL);
      v63 = v62 + v61;
      *v62 = v41[3];
      v40 = v62 + 1;
      v41[2] = v63;
      v41[3] = v62;
    }

    v41[1] = &v40[v58];
    if (v39)
    {
      memcpy(v40, *(v5 + 12728), v39);
    }

    *(v5 + 12728) = v40;
    LODWORD(v39) = *(v5 + 12740);
    v38 = *(v5 + 12736);
    goto LABEL_115;
  }

LABEL_80:
  v44 = *(v5 + 12736);
  v45 = *(v5 + 12740);
  v46 = *(v5 + 12728);
  if (v44 < v45)
  {
    goto LABEL_99;
  }

  v47 = *(v5 + 12744);
  v48 = v47[1];
  if (&v46[v45] != v48)
  {
    v49 = v47[2];
LABEL_84:
    if ((2 * v45) <= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = (2 * v45);
    }

    v51 = v50 + v45;
    if (v48)
    {
      v52 = &v48[v50 + v45] > v49;
    }

    else
    {
      v52 = 1;
    }

    v46 = v47[1];
    if (v52)
    {
      v53 = 2 * v47[4];
      if (v53 <= v51 + 1)
      {
        v53 = v51 + 1;
      }

      v47[4] = v53;
      v54 = v53 + 8;
      this = malloc_type_malloc(v53 + 8, 0x2004093837F09uLL);
      v55 = this + v54;
      *this = v47[3];
      v46 = (this + 1);
      v47[2] = v55;
      v47[3] = this;
    }

    v47[1] = &v46[v51];
    if (v45)
    {
      this = memcpy(v46, *(v5 + 12728), v45);
    }

    *(v5 + 12728) = v46;
    LODWORD(v45) = *(v5 + 12740);
    v44 = *(v5 + 12736);
    goto LABEL_98;
  }

  v49 = v47[2];
  if ((v48 + 1) > v49)
  {
    goto LABEL_84;
  }

  v47[1] = v48 + 1;
  LODWORD(v50) = 1;
LABEL_98:
  *(v5 + 12740) = v45 + v50;
LABEL_99:
  *(v5 + 12736) = v44 + 1;
  v46[v44] = 114;
  *a4 = 0;
  *(a4 + 8) = 0;
  v56 = (a4 + 16);
LABEL_141:
  *v56 = 0;
  return this;
}

unsigned int *anonymous namespace::Remangler::mangleDependentGenericType@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 117;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleDependentMemberType@<X0>(void *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, int *a4@<X8>)
{
  v4 = a2;
  v5 = this;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 >= v8)
    {
      v10 = *v5;
      v11 = *(*v5 + 8);
      if (&v6[8 * v8] == v11 && (v11 + 8) <= v10[2])
      {
        v10[1] = v11 + 8;
        LODWORD(v13) = 1;
      }

      else
      {
        v12 = v5;
        if (2 * v8 <= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = 2 * v8;
        }

        v14 = 8 * (v13 + v8);
        v15 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        v10[1] = v15;
        if (!v15 || &v15[v14] > v10[2])
        {
          v16 = 2 * v10[4];
          if (v16 <= v14 + 8)
          {
            v16 = v14 + 8;
          }

          v10[4] = v16;
          v17 = v16 + 8;
          this = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
          v18 = this + v17;
          *this = v10[3];
          v15 = ((this + 15) & 0xFFFFFFFFFFFFFFF8);
          v10[2] = v18;
          v10[3] = this;
        }

        v10[1] = &v15[v14];
        if (v8)
        {
          this = memcpy(v15, v6, 8 * v8);
        }

        v6 = v15;
        v5 = v12;
      }

      v8 += v13;
    }

    *&v6[8 * v7] = v4;
    v19 = *(v4 + 18);
    if ((v19 - 1) < 2)
    {
      goto LABEL_22;
    }

    if (v19 == 5 && *(v4 + 2))
    {
      v4 = *v4;
LABEL_22:
      v20 = *v4;
      goto LABEL_24;
    }

    v20 = 0;
LABEL_24:
    if (v20[18] - 1 >= 2)
    {
      v20 = *v20;
    }

    v4 = *v20;
    v9 = *(*v20 + 16);
    ++v7;
  }

  while (v9 == 46);
  if (v9 != 39)
  {
    v29 = 2259;
    v30 = 1;
    v22 = a4;
    goto LABEL_102;
  }

  v21 = v7 - 1;
  v22 = a4;
  if (!v7)
  {
    v29 = 2260;
    v30 = 1;
    v4 = a2;
    goto LABEL_102;
  }

  if (v7 == 1)
  {
    v23 = *(v5 + 12736);
    v24 = *(v5 + 12740);
    v25 = *(v5 + 12728);
    if (v23 >= v24)
    {
      v26 = *(v5 + 12744);
      v27 = v26[1];
      if (&v25[v24] != v27)
      {
        v28 = v26[2];
        goto LABEL_39;
      }

      v28 = v26[2];
      if ((v27 + 1) <= v28)
      {
        v26[1] = v27 + 1;
        LODWORD(v38) = 1;
      }

      else
      {
LABEL_39:
        v37 = v5;
        if ((2 * v24) <= 4)
        {
          v38 = 4;
        }

        else
        {
          v38 = (2 * v24);
        }

        v39 = v38 + v24;
        if (!v27 || &v27[v39] > v28)
        {
          v40 = 2 * v26[4];
          if (v40 <= v39 + 1)
          {
            v40 = v39 + 1;
          }

          v26[4] = v40;
          v41 = v40 + 8;
          v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
          v43 = v42 + v41;
          *v42 = v26[3];
          v27 = (v42 + 1);
          v26[2] = v43;
          v26[3] = v42;
        }

        v26[1] = &v27[v39];
        v5 = v37;
        if (v24)
        {
          memcpy(v27, *(v37 + 12728), v24);
        }

        *(v37 + 12728) = v27;
        LODWORD(v24) = *(v37 + 12740);
        v25 = v27;
        v23 = *(v37 + 12736);
      }

      *(v5 + 12740) = v24 + v38;
    }

    *(v5 + 12736) = v23 + 1;
    v25[v23] = 119;
    if (*a4)
    {
      return this;
    }

    v44 = *v6;
    v45 = *(*v6 + 18);
    if (v45 == 2)
    {
LABEL_56:
      v46 = v44[1];
    }

    else
    {
      if (v45 == 5 && *(v44 + 2) >= 2u)
      {
        v44 = *v44;
        goto LABEL_56;
      }

      v46 = 0;
    }

    if (!*a4)
    {
      v30 = 0;
      v4 = 0;
      v29 = 0;
      goto LABEL_102;
    }

    return this;
  }

  v31 = *(v5 + 12736);
  v32 = *(v5 + 12740);
  v33 = *(v5 + 12728);
  if (v31 >= v32)
  {
    v34 = *(v5 + 12744);
    v35 = v34[1];
    if (&v33[v32] != v35)
    {
      v36 = v34[2];
      goto LABEL_61;
    }

    v36 = v34[2];
    if ((v35 + 1) <= v36)
    {
      v34[1] = v35 + 1;
      LODWORD(v47) = 1;
    }

    else
    {
LABEL_61:
      v70 = v5;
      if ((2 * v32) <= 4)
      {
        v47 = 4;
      }

      else
      {
        v47 = (2 * v32);
      }

      v48 = v47 + v32;
      if (!v35 || &v35[v48] > v36)
      {
        v49 = 2 * v34[4];
        if (v49 <= v48 + 1)
        {
          v49 = v48 + 1;
        }

        v34[4] = v49;
        v50 = v49 + 8;
        v51 = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
        v52 = v51 + v50;
        *v51 = v34[3];
        v35 = (v51 + 1);
        v34[2] = v52;
        v34[3] = v51;
      }

      v34[1] = &v35[v48];
      v5 = v70;
      if (v32)
      {
        memcpy(v35, *(v70 + 12728), v32);
      }

      *(v70 + 12728) = v35;
      LODWORD(v32) = *(v70 + 12740);
      v33 = v35;
      v31 = *(v70 + 12736);
    }

    *(v5 + 12740) = v32 + v47;
  }

  *(v5 + 12736) = v31 + 1;
  v33[v31] = 87;
  if (*a4)
  {
    return this;
  }

  v53 = 1;
  while (2)
  {
    v54 = *&v6[8 * v21];
    v55 = *(v54 + 18);
    if (v55 == 2)
    {
LABEL_79:
      v56 = v54[1];
    }

    else
    {
      if (v55 == 5 && *(v54 + 2) >= 2u)
      {
        v54 = *v54;
        goto LABEL_79;
      }

      v56 = 0;
    }

    if (*a4)
    {
      return this;
    }

    ++v53;
    --v21;
    if (v53 <= v7)
    {
      continue;
    }

    break;
  }

  v57 = *(v5 + 12736);
  v58 = *(v5 + 12740);
  v59 = *(v5 + 12728);
  if (v57 >= v58)
  {
    v60 = *(v5 + 12744);
    v61 = v60[1];
    if (&v59[v58] != v61)
    {
      v62 = v60[2];
      goto LABEL_89;
    }

    v62 = v60[2];
    if ((v61 + 1) <= v62)
    {
      v60[1] = v61 + 1;
      LODWORD(v64) = 1;
    }

    else
    {
LABEL_89:
      v63 = v5;
      if ((2 * v58) <= 4)
      {
        v64 = 4;
      }

      else
      {
        v64 = (2 * v58);
      }

      v65 = v64 + v58;
      if (!v61 || &v61[v65] > v62)
      {
        v66 = 2 * v60[4];
        if (v66 <= v65 + 1)
        {
          v66 = v65 + 1;
        }

        v60[4] = v66;
        v67 = v66 + 8;
        this = malloc_type_malloc(v66 + 8, 0x2004093837F09uLL);
        v68 = this + v67;
        *this = v60[3];
        v61 = (this + 1);
        v60[2] = v68;
        v60[3] = this;
      }

      v60[1] = &v61[v65];
      v5 = v63;
      if (v58)
      {
        this = memcpy(v61, *(v63 + 12728), v58);
      }

      *(v63 + 12728) = v61;
      LODWORD(v58) = *(v63 + 12740);
      v59 = v61;
      v57 = *(v63 + 12736);
    }

    *(v5 + 12740) = v58 + v64;
    v22 = a4;
  }

  v30 = 0;
  v4 = 0;
  v29 = 0;
  *(v5 + 12736) = v57 + 1;
  v59[v57] = 95;
LABEL_102:
  *v22 = v30;
  *(v22 + 1) = v4;
  v22[4] = v29;
  return this;
}

void anonymous namespace::Remangler::mangleDestructor(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleDidSet(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

uint64_t anonymous namespace::Remangler::mangleDynamicSelf@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(this + 12736);
  v7 = *(this + 12740);
  v8 = *(this + 12728);
  if (v6 >= v7)
  {
    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(this + 12740) = v7 + v12;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v7) <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = (2 * v7);
    }

    v13 = v12 + v7;
    if (v10)
    {
      v14 = &v10[v12 + v7] > v11;
    }

    else
    {
      v14 = 1;
    }

    v8 = v9[1];
    if (v14)
    {
      v15 = 2 * v9[4];
      if (v15 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      v9[4] = v15;
      v16 = v15 + 8;
      v17 = this;
      v18 = a4;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a4 = v18;
      v20 = v19;
      this = v17;
      v21 = v20 + v16;
      *v20 = v9[3];
      v8 = (v20 + 1);
      v9[2] = v21;
      v9[3] = v20;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      v22 = this;
      v23 = v7;
      v24 = a4;
      memcpy(v8, *(this + 12728), v23);
      this = v22;
      a4 = v24;
    }

    *(this + 12728) = v8;
    LODWORD(v7) = *(this + 12740);
    v6 = *(this + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 12736) = v6 + 1;
  v8[v6] = 68;
  v25 = *(a2 + 18);
  if (v25 != 1)
  {
    if (v25 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return this;
    }

    a2 = *a2;
  }

  v26 = *a2;
}

void *anonymous namespace::Remangler::mangleEnumCase@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WC", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

unsigned int *anonymous namespace::Remangler::mangleNoEscapeFunctionType@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 70;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleGlobalActorFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Y", 1uLL, this[1593]);
  v7 = *a2;
  v8 = *(this + 3184);
  v9 = *(this + 3185);
  v10 = this[1591];
  if (v8 >= v9)
  {
    v11 = this[1593];
    v12 = *(v11 + 1);
    if (&v10[v9] == v12)
    {
      v13 = *(v11 + 2);
      if ((v12 + 1) <= v13)
      {
        *(v11 + 1) = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(this + 3185) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *(v11 + 2);
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = *(v11 + 1);
    if (v16)
    {
      v17 = 2 * *(v11 + 4);
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      *(v11 + 4) = v17;
      v18 = v17 + 8;
      result = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = result + v18;
      *result = *(v11 + 3);
      v10 = (result + 1);
      *(v11 + 2) = v19;
      *(v11 + 3) = result;
    }

    *(v11 + 1) = &v10[v15];
    if (v9)
    {
      result = memcpy(v10, this[1591], v9);
    }

    this[1591] = v10;
    LODWORD(v9) = *(this + 3185);
    v8 = *(this + 3184);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 3184) = v8 + 1;
  v10[v8] = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleDifferentiableFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "D", 1uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

char **anonymous namespace::Remangler::mangleExistentialMetatype@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (v8 == 2)
  {
    goto LABEL_13;
  }

  if (v8 != 5)
  {
LABEL_16:
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1921;
    return this;
  }

  v9 = *(a2 + 2);
  if (v9 == 2)
  {
LABEL_13:
    this = swift::Demangle::__runtime::CharVector::append(this + 1591, "XPM", 3uLL, this[1593]);
    v12 = *(v5 + 18);
    v13 = v5;
    if ((v12 - 1) >= 2)
    {
      if (v12 == 5)
      {
        v14 = *v5;
        v13 = *v5;
        goto LABEL_23;
      }

      v13 = 0;
    }

    if (v12 == 1)
    {
      v15 = (v5 + 8);
      goto LABEL_29;
    }

    if (v12 == 2)
    {
      v15 = (v5 + 16);
      goto LABEL_29;
    }

    if (v12 != 5)
    {
      v15 = 0;
LABEL_29:
      while (v13 != v15)
      {
        if (*a4)
        {
          return this;
        }

        ++v13;
      }

      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return this;
    }

    v14 = *v5;
LABEL_23:
    v15 = &v14[*(v5 + 2)];
    goto LABEL_29;
  }

  if (v9 != 1)
  {
    goto LABEL_16;
  }

LABEL_6:
  this = swift::Demangle::__runtime::CharVector::append(this + 1591, "PM", 2uLL, this[1593]);
  v10 = *(v5 + 18);
  if (v10 != 1)
  {
    if (v10 != 5 || *(v5 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = v5;
      *(a4 + 16) = 114;
      return this;
    }

    v5 = *v5;
  }

  v11 = *v5;
}

void anonymous namespace::Remangler::mangleExplicitClosure(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleExtension(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleExtensionAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMe", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleFieldOffset@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wv", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleFreestandingMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMf", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleFullTypeMetadata@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mf", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleFunction(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleGenericProtocolWitnessTable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WG", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleGenericProtocolWitnessTableInstantiationFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WI", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleGenericTypeMetadataPattern@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MP", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void anonymous namespace::Remangler::mangleGetter(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleGlobal@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "_T", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleGlobalGetter(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleIVarInitializer(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleIVarDestroyer(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

uint64_t anonymous namespace::Remangler::mangleImplConvention@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (*(a2 + 8) != 108)
  {
    v7 = 1828;
    v8 = 1;
    goto LABEL_47;
  }

  v5 = this;
  this = *a2;
  v6 = *(a2 + 1);
  v7 = 1849;
  v8 = 19;
  if (v6 <= 7)
  {
    switch(v6)
    {
      case 3:
        this = memcmp(this, "@in", 3uLL);
        if (this)
        {
          goto LABEL_40;
        }

        break;
      case 4:
        this = memcmp(this, "@out", 4uLL);
        if (this)
        {
          goto LABEL_40;
        }

        break;
      case 6:
        v15 = *a2;
        this = memcmp(this, "@inout", 6uLL);
        if (this)
        {
          if (*v15 != 1853321024 || *(v15 + 4) != 25701)
          {
            goto LABEL_40;
          }

          v17 = (v5 + 12728);
          v18 = 111;
        }

        else
        {
          v17 = (v5 + 12728);
          v18 = 108;
        }

        goto LABEL_46;
      default:
        goto LABEL_47;
    }

    v17 = (v5 + 12728);
    v18 = 105;
    goto LABEL_46;
  }

  if (v6 > 12)
  {
    if (v6 != 22)
    {
      if (v6 != 13)
      {
        goto LABEL_47;
      }

      if (*this != 0x6C65726F74756140 || *(this + 5) != 0x64657361656C6572)
      {
        this = memcmp(this, "@deallocating", 0xDuLL);
        if (this)
        {
          goto LABEL_40;
        }

        v17 = (v5 + 12728);
        v18 = 101;
LABEL_46:
        this = swift::Demangle::__runtime::RemanglerBuffer::operator<<(v17, v18);
        v8 = 0;
        v3 = 0;
        v7 = 0;
        goto LABEL_47;
      }

      v32 = *(v5 + 12736);
      v33 = *(v5 + 12740);
      v34 = *(v5 + 12728);
      if (v32 < v33)
      {
LABEL_103:
        v8 = 0;
        v3 = 0;
        v7 = 0;
        *(v5 + 12736) = v32 + 1;
        v34[v32] = 97;
        goto LABEL_47;
      }

      v35 = *(v5 + 12744);
      v36 = v35[1];
      if (&v34[v33] == v36)
      {
        v37 = v35[2];
        if ((v36 + 1) <= v37)
        {
          v35[1] = v36 + 1;
          LODWORD(v53) = 1;
LABEL_102:
          *(v5 + 12740) = v33 + v53;
          goto LABEL_103;
        }
      }

      else
      {
        v37 = v35[2];
      }

      if ((2 * v33) <= 4)
      {
        v53 = 4;
      }

      else
      {
        v53 = (2 * v33);
      }

      v54 = v53 + v33;
      if (!v36 || &v36[v54] > v37)
      {
        v55 = 2 * v35[4];
        if (v55 <= v54 + 1)
        {
          v55 = v54 + 1;
        }

        v35[4] = v55;
        v56 = v55 + 8;
        this = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
        v57 = this + v56;
        *this = v35[3];
        v36 = (this + 8);
        v35[2] = v57;
        v35[3] = this;
      }

      v35[1] = &v36[v54];
      if (v33)
      {
        this = memcpy(v36, *(v5 + 12728), v33);
      }

      *(v5 + 12728) = v36;
      LODWORD(v33) = *(v5 + 12740);
      v34 = v36;
      v32 = *(v5 + 12736);
      goto LABEL_102;
    }

    this = memcmp(this, "@unowned_inner_pointer", 0x16uLL);
    if (this)
    {
      goto LABEL_40;
    }

    v26 = *(v5 + 12736);
    v27 = *(v5 + 12740);
    v28 = *(v5 + 12728);
    if (v26 < v27)
    {
LABEL_75:
      v8 = 0;
      v3 = 0;
      v7 = 0;
      *(v5 + 12736) = v26 + 1;
      v28[v26] = 68;
      goto LABEL_47;
    }

    v29 = *(v5 + 12744);
    v30 = v29[1];
    if (&v28[v27] == v30)
    {
      v31 = v29[2];
      if ((v30 + 1) <= v31)
      {
        v29[1] = v30 + 1;
        LODWORD(v43) = 1;
LABEL_74:
        *(v5 + 12740) = v27 + v43;
        goto LABEL_75;
      }
    }

    else
    {
      v31 = v29[2];
    }

    if ((2 * v27) <= 4)
    {
      v43 = 4;
    }

    else
    {
      v43 = (2 * v27);
    }

    v44 = v43 + v27;
    if (!v30 || &v30[v44] > v31)
    {
      v45 = 2 * v29[4];
      if (v45 <= v44 + 1)
      {
        v45 = v44 + 1;
      }

      v29[4] = v45;
      v46 = v45 + 8;
      this = malloc_type_malloc(v45 + 8, 0x2004093837F09uLL);
      v47 = this + v46;
      *this = v29[3];
      v30 = (this + 8);
      v29[2] = v47;
      v29[3] = this;
    }

    v29[1] = &v30[v44];
    if (v27)
    {
      this = memcpy(v30, *(v5 + 12728), v27);
    }

    *(v5 + 12728) = v30;
    LODWORD(v27) = *(v5 + 12740);
    v28 = v30;
    v26 = *(v5 + 12736);
    goto LABEL_74;
  }

  if (v6 == 8)
  {
    this = memcmp(this, "@unowned", 8uLL);
    if (!this)
    {
      v20 = *(v5 + 12736);
      v21 = *(v5 + 12740);
      v22 = *(v5 + 12728);
      if (v20 < v21)
      {
LABEL_61:
        v8 = 0;
        v3 = 0;
        v7 = 0;
        *(v5 + 12736) = v20 + 1;
        v22[v20] = 100;
        goto LABEL_47;
      }

      v23 = *(v5 + 12744);
      v24 = v23[1];
      if (&v22[v21] == v24)
      {
        v25 = v23[2];
        if ((v24 + 1) <= v25)
        {
          v23[1] = v24 + 1;
          LODWORD(v38) = 1;
LABEL_60:
          *(v5 + 12740) = v21 + v38;
          goto LABEL_61;
        }
      }

      else
      {
        v25 = v23[2];
      }

      if ((2 * v21) <= 4)
      {
        v38 = 4;
      }

      else
      {
        v38 = (2 * v21);
      }

      v39 = v38 + v21;
      if (!v24 || &v24[v39] > v25)
      {
        v40 = 2 * v23[4];
        if (v40 <= v39 + 1)
        {
          v40 = v39 + 1;
        }

        v23[4] = v40;
        v41 = v40 + 8;
        this = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
        v42 = this + v41;
        *this = v23[3];
        v24 = (this + 8);
        v23[2] = v42;
        v23[3] = this;
      }

      v23[1] = &v24[v39];
      if (v21)
      {
        this = memcpy(v24, *(v5 + 12728), v21);
      }

      *(v5 + 12728) = v24;
      LODWORD(v21) = *(v5 + 12740);
      v22 = v24;
      v20 = *(v5 + 12736);
      goto LABEL_60;
    }

LABEL_40:
    v7 = 1849;
    v8 = 19;
    goto LABEL_47;
  }

  if (v6 == 11)
  {
    this = memcmp(this, "@guaranteed", 0xBuLL);
    if (!this)
    {
      v9 = *(v5 + 12736);
      v10 = *(v5 + 12740);
      v11 = *(v5 + 12728);
      if (v9 < v10)
      {
LABEL_89:
        v8 = 0;
        v3 = 0;
        v7 = 0;
        *(v5 + 12736) = v9 + 1;
        v11[v9] = 103;
        goto LABEL_47;
      }

      v12 = *(v5 + 12744);
      v13 = v12[1];
      if (&v11[v10] == v13)
      {
        v14 = v12[2];
        if ((v13 + 1) <= v14)
        {
          v12[1] = v13 + 1;
          LODWORD(v48) = 1;
LABEL_88:
          *(v5 + 12740) = v10 + v48;
          goto LABEL_89;
        }
      }

      else
      {
        v14 = v12[2];
      }

      if ((2 * v10) <= 4)
      {
        v48 = 4;
      }

      else
      {
        v48 = (2 * v10);
      }

      v49 = v48 + v10;
      if (!v13 || &v13[v49] > v14)
      {
        v50 = 2 * v12[4];
        if (v50 <= v49 + 1)
        {
          v50 = v49 + 1;
        }

        v12[4] = v50;
        v51 = v50 + 8;
        this = malloc_type_malloc(v50 + 8, 0x2004093837F09uLL);
        v52 = this + v51;
        *this = v12[3];
        v13 = (this + 8);
        v12[2] = v52;
        v12[3] = this;
      }

      v12[1] = &v13[v49];
      if (v10)
      {
        this = memcpy(v13, *(v5 + 12728), v10);
      }

      *(v5 + 12728) = v13;
      LODWORD(v10) = *(v5 + 12740);
      v11 = v13;
      v9 = *(v5 + 12736);
      goto LABEL_88;
    }

    goto LABEL_40;
  }

LABEL_47:
  *a3 = v8;
  *(a3 + 8) = v3;
  *(a3 + 16) = v7;
  return this;
}

char **anonymous namespace::Remangler::mangleImplFunctionAttribute@<X0>(char **this@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 == 6)
  {
    v10 = *v3;
    v11 = *(v3 + 2);
    if (v10 != 2037604672 || v11 != 25454)
    {
      goto LABEL_13;
    }

    v8 = a3;
    v9 = "H";
LABEL_15:
    this = swift::Demangle::__runtime::CharVector::append(this + 1591, v9, 1uLL, this[1593]);
    v14 = 0;
    a2 = 0;
    v13 = 0;
    a3 = v8;
    goto LABEL_16;
  }

  if (v4 == 9)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    if (v5 == 0x6C6261646E655340 && v6 == 101)
    {
      v8 = a3;
      v9 = "h";
      goto LABEL_15;
    }
  }

LABEL_13:
  v13 = 1738;
  v14 = 18;
LABEL_16:
  *a3 = v14;
  *(a3 + 8) = a2;
  *(a3 + 16) = v13;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplFunctionConvention(_anonymous_namespace_::Remangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v3 = *(a2 + 18);
  if ((v3 - 1) >= 2)
  {
    if (v3 != 5 || !*(a2 + 2))
    {
      v4 = 0;
      v5 = a3 + 1;
    }

    a2 = *a2;
  }

  v4 = *a2;
  v5 = a3 + 1;
}

uint64_t anonymous namespace::Remangler::mangleImplFunctionConventionName@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  result = *a2;
  v7 = *(a2 + 1);
  v8 = 1762;
  v9 = 15;
  if (v7 <= 5)
  {
    if (v7 != 1)
    {
      if (v7 == 5)
      {
        if (*result == 1668246626 && *(result + 4) == 107)
        {
          v10 = "Cb";
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      goto LABEL_23;
    }

    result = memcmp(result, "c", 1uLL);
    if (!result)
    {
      v10 = "Cc";
      goto LABEL_22;
    }

LABEL_20:
    v8 = 1762;
    v9 = 15;
    goto LABEL_23;
  }

  switch(v7)
  {
    case 6:
      result = memcmp(result, "method", 6uLL);
      if (!result)
      {
        v10 = "Cm";
        goto LABEL_22;
      }

      goto LABEL_20;
    case 11:
      result = memcmp(result, "objc_method", 0xBuLL);
      if (!result)
      {
        v10 = "CO";
        goto LABEL_22;
      }

      goto LABEL_20;
    case 14:
      result = memcmp(result, "witness_method", 0xEuLL);
      if (!result)
      {
        v10 = "Cw";
LABEL_22:
        result = swift::Demangle::__runtime::CharVector::append(this + 1591, v10, 2uLL, this[1593]);
        v9 = 0;
        v3 = 0;
        v8 = 0;
        break;
      }

      goto LABEL_20;
  }

LABEL_23:
  *a3 = v9;
  *(a3 + 8) = v3;
  *(a3 + 16) = v8;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleImplFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XF", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
      goto LABEL_9;
    }

    v10 = 0;
  }

  if (v9 == 1)
  {
    v12 = (a2 + 8);
    if (v10 != (a2 + 8))
    {
      goto LABEL_16;
    }

LABEL_27:
    v16 = this + 1592;
    v17 = *(this + 3184);
    v21 = *(this + 3185);
    v19 = this[1591];
    if (v17 < v21)
    {
LABEL_43:
      v20 = 116;
      goto LABEL_44;
    }

    v22 = this[1593];
    v23 = *(v22 + 1);
    if (&v19[v21] == v23)
    {
      v24 = *(v22 + 2);
      if ((v23 + 1) <= v24)
      {
        *(v22 + 1) = v23 + 1;
        LODWORD(v25) = 1;
LABEL_42:
        *(this + 3185) = v21 + v25;
        goto LABEL_43;
      }
    }

    else
    {
      v24 = *(v22 + 2);
    }

    if ((2 * v21) <= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = (2 * v21);
    }

    v26 = v25 + v21;
    if (!v23 || &v23[v26] > v24)
    {
      v27 = 2 * *(v22 + 4);
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      *(v22 + 4) = v27;
      v28 = v27 + 8;
      result = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
      v29 = result + v28;
      *result = *(v22 + 3);
      v23 = (result + 8);
      *(v22 + 2) = v29;
      *(v22 + 3) = result;
    }

    *(v22 + 1) = &v23[v26];
    if (v21)
    {
      result = memcpy(v23, this[1591], v21);
    }

    this[1591] = v23;
    LODWORD(v21) = *(this + 3185);
    v19 = v23;
    v17 = *(this + 3184);
    v16 = this + 1592;
    goto LABEL_42;
  }

  if (v9 == 2)
  {
    v12 = (a2 + 16);
    if (v10 != (a2 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if (v9 != 5)
  {
    v12 = 0;
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v11 = *a2;
LABEL_9:
  v12 = (v11 + 8 * *(a2 + 2));
  if (v10 == v12)
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = *v10;
  if (*(*v10 + 16) != 108)
  {
    goto LABEL_27;
  }

  result = *v13;
  v14 = v13[1];
  v10 = (v10 + 8);
  if (v14 == 13)
  {
    result = memcmp(result, "@callee_owned", 0xDuLL);
    if (result)
    {
      goto LABEL_61;
    }

    v16 = this + 1592;
    v17 = *(this + 3184);
    v84 = *(this + 3185);
    v19 = this[1591];
    if (v17 < v84)
    {
      v20 = 111;
      goto LABEL_44;
    }

    v88 = this[1593];
    v89 = *(v88 + 1);
    if (&v19[v84] == v89)
    {
      v90 = *(v88 + 2);
      if ((v89 + 1) <= v90)
      {
        *(v88 + 1) = v89 + 1;
        v105 = 1;
LABEL_184:
        *(this + 3185) = v84 + v105;
        v20 = 111;
        goto LABEL_44;
      }
    }

    else
    {
      v90 = *(v88 + 2);
    }

    LODWORD(v100) = 2 * v84;
    if ((2 * v84) <= 4)
    {
      v100 = 4;
    }

    else
    {
      v100 = v100;
    }

    v114 = v100;
    v101 = v100 + v84;
    if (!v89 || &v89[v101] > v90)
    {
      v102 = 2 * *(v88 + 4);
      if (v102 <= v101 + 1)
      {
        v102 = v101 + 1;
      }

      *(v88 + 4) = v102;
      v103 = v102 + 8;
      result = malloc_type_malloc(v102 + 8, 0x2004093837F09uLL);
      v104 = result + v103;
      *result = *(v88 + 3);
      v89 = (result + 8);
      *(v88 + 2) = v104;
      *(v88 + 3) = result;
    }

    *(v88 + 1) = &v89[v101];
    if (v84)
    {
      result = memcpy(v89, this[1591], v84);
    }

    this[1591] = v89;
    LODWORD(v84) = *(this + 3185);
    v19 = v89;
    v17 = *(this + 3184);
    v105 = v114;
    goto LABEL_184;
  }

  if (v14 == 18)
  {
    result = memcmp(result, "@callee_guaranteed", 0x12uLL);
    if (!result)
    {
      v16 = this + 1592;
      v17 = *(this + 3184);
      v38 = *(this + 3185);
      v19 = this[1591];
      if (v17 < v38)
      {
        v20 = 103;
        goto LABEL_44;
      }

      v85 = this[1593];
      v86 = *(v85 + 1);
      if (&v19[v38] == v86)
      {
        v87 = *(v85 + 2);
        if ((v86 + 1) <= v87)
        {
          *(v85 + 1) = v86 + 1;
          v99 = 1;
LABEL_171:
          *(this + 3185) = v38 + v99;
          v20 = 103;
          goto LABEL_44;
        }
      }

      else
      {
        v87 = *(v85 + 2);
      }

      LODWORD(v94) = 2 * v38;
      if ((2 * v38) <= 4)
      {
        v94 = 4;
      }

      else
      {
        v94 = v94;
      }

      v113 = v94;
      v95 = v94 + v38;
      if (!v86 || &v86[v95] > v87)
      {
        v96 = 2 * *(v85 + 4);
        if (v96 <= v95 + 1)
        {
          v96 = v95 + 1;
        }

        *(v85 + 4) = v96;
        v97 = v96 + 8;
        result = malloc_type_malloc(v96 + 8, 0x2004093837F09uLL);
        v98 = result + v97;
        *result = *(v85 + 3);
        v86 = (result + 8);
        *(v85 + 2) = v98;
        *(v85 + 3) = result;
      }

      *(v85 + 1) = &v86[v95];
      if (v38)
      {
        result = memcpy(v86, this[1591], v38);
      }

      this[1591] = v86;
      LODWORD(v38) = *(this + 3185);
      v19 = v86;
      v17 = *(this + 3184);
      v99 = v113;
      goto LABEL_171;
    }

LABEL_61:
    v39 = *v10;
    *a4 = 15;
    *(a4 + 8) = v39;
    *(a4 + 16) = 1688;
    return result;
  }

  if (v14 != 15)
  {
    goto LABEL_61;
  }

  if (*result != 0x5F65656C6C616340 || *(result + 7) != 0x64656E776F6E755FLL)
  {
    goto LABEL_61;
  }

  v16 = this + 1592;
  v17 = *(this + 3184);
  v18 = *(this + 3185);
  v19 = this[1591];
  if (v17 >= v18)
  {
    v91 = this[1593];
    v92 = *(v91 + 1);
    if (&v19[v18] == v92)
    {
      v93 = *(v91 + 2);
      if ((v92 + 1) <= v93)
      {
        *(v91 + 1) = v92 + 1;
        v111 = 1;
LABEL_197:
        *(this + 3185) = v18 + v111;
        v20 = 100;
        goto LABEL_44;
      }
    }

    else
    {
      v93 = *(v91 + 2);
    }

    LODWORD(v106) = 2 * v18;
    if ((2 * v18) <= 4)
    {
      v106 = 4;
    }

    else
    {
      v106 = v106;
    }

    v115 = v106;
    v107 = v106 + v18;
    if (!v92 || &v92[v107] > v93)
    {
      v108 = 2 * *(v91 + 4);
      if (v108 <= v107 + 1)
      {
        v108 = v107 + 1;
      }

      *(v91 + 4) = v108;
      v109 = v108 + 8;
      result = malloc_type_malloc(v108 + 8, 0x2004093837F09uLL);
      v110 = result + v109;
      *result = *(v91 + 3);
      v92 = (result + 8);
      *(v91 + 2) = v110;
      *(v91 + 3) = result;
    }

    *(v91 + 1) = &v92[v107];
    if (v18)
    {
      result = memcpy(v92, this[1591], v18);
    }

    this[1591] = v92;
    LODWORD(v18) = *(this + 3185);
    v19 = v92;
    v17 = *(this + 3184);
    v111 = v115;
    goto LABEL_197;
  }

  v20 = 100;
LABEL_44:
  *v16 = v17 + 1;
  v19[v17] = v20;
  if (v10 == v12)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v30 = *(*v10 + 16);
    if (v30 != 116)
    {
      break;
    }

    if (*a4)
    {
      return result;
    }

    v10 = (v10 + 8);
    if (v10 == v12)
    {
      goto LABEL_78;
    }
  }

  if (v30 != 44 && v30 != 47)
  {
    goto LABEL_78;
  }

  if (v30 == 44)
  {
    v31 = 71;
  }

  else
  {
    v31 = 103;
  }

  v32 = *(this + 3184);
  v33 = *(this + 3185);
  v34 = this[1591];
  if (v32 >= v33)
  {
    v35 = this[1593];
    v36 = *(v35 + 1);
    if (&v34[v33] == v36)
    {
      v37 = *(v35 + 2);
      if ((v36 + 1) <= v37)
      {
        *(v35 + 1) = v36 + 1;
        LODWORD(v40) = 1;
LABEL_75:
        *(this + 3185) = v33 + v40;
        goto LABEL_76;
      }
    }

    else
    {
      v37 = *(v35 + 2);
    }

    v112 = v31;
    if ((2 * v33) <= 4)
    {
      v40 = 4;
    }

    else
    {
      v40 = (2 * v33);
    }

    v41 = v40 + v33;
    if (!v36 || &v36[v41] > v37)
    {
      v42 = 2 * *(v35 + 4);
      if (v42 <= v41 + 1)
      {
        v42 = v41 + 1;
      }

      *(v35 + 4) = v42;
      v43 = v42 + 8;
      v44 = malloc_type_malloc(v42 + 8, 0x2004093837F09uLL);
      v45 = v44 + v43;
      *v44 = *(v35 + 3);
      v36 = (v44 + 1);
      *(v35 + 2) = v45;
      *(v35 + 3) = v44;
    }

    *(v35 + 1) = &v36[v41];
    if (v33)
    {
      memcpy(v36, this[1591], v33);
    }

    this[1591] = v36;
    LODWORD(v33) = *(this + 3185);
    v34 = v36;
    v32 = *(this + 3184);
    v31 = v112;
    goto LABEL_75;
  }

LABEL_76:
  *(this + 3184) = v32 + 1;
  v34[v32] = v31;
  if (*a4)
  {
    return result;
  }

  v10 = (v10 + 8);
LABEL_78:
  v46 = *(this + 3184);
  v47 = *(this + 3185);
  v48 = this[1591];
  if (v46 < v47)
  {
    goto LABEL_94;
  }

  v49 = this[1593];
  v50 = *(v49 + 1);
  if (&v48[v47] != v50)
  {
    v51 = *(v49 + 2);
LABEL_82:
    if ((2 * v47) <= 4)
    {
      v52 = 4;
    }

    else
    {
      v52 = (2 * v47);
    }

    v53 = v52 + v47;
    if (!v50 || &v50[v53] > v51)
    {
      v54 = 2 * *(v49 + 4);
      if (v54 <= v53 + 1)
      {
        v54 = v53 + 1;
      }

      *(v49 + 4) = v54;
      v55 = v54 + 8;
      result = malloc_type_malloc(v54 + 8, 0x2004093837F09uLL);
      v56 = result + v55;
      *result = *(v49 + 3);
      v50 = (result + 8);
      *(v49 + 2) = v56;
      *(v49 + 3) = result;
    }

    *(v49 + 1) = &v50[v53];
    if (v47)
    {
      result = memcpy(v50, this[1591], v47);
    }

    this[1591] = v50;
    LODWORD(v47) = *(this + 3185);
    v48 = v50;
    v46 = *(this + 3184);
    goto LABEL_93;
  }

  v51 = *(v49 + 2);
  if ((v50 + 1) > v51)
  {
    goto LABEL_82;
  }

  *(v49 + 1) = v50 + 1;
  LODWORD(v52) = 1;
LABEL_93:
  *(this + 3185) = v47 + v52;
LABEL_94:
  *(this + 3184) = v46 + 1;
  v48[v46] = 95;
  if (v10 == v12)
  {
    goto LABEL_103;
  }

LABEL_95:
  v57 = *v10;
  v58 = (*v10 + 16);
  if (*v58 != 123)
  {
LABEL_103:
    v60 = *(this + 3184);
    v61 = *(this + 3185);
    v62 = this[1591];
    if (v60 < v61)
    {
      goto LABEL_123;
    }

    v63 = this[1593];
    v64 = *(v63 + 1);
    if (&v62[v61] == v64)
    {
      v65 = *(v63 + 2);
      if ((v64 + 1) <= v65)
      {
        *(v63 + 1) = v64 + 1;
        LODWORD(v66) = 1;
LABEL_122:
        *(this + 3185) = v61 + v66;
LABEL_123:
        *(this + 3184) = v60 + 1;
        for (v62[v60] = 95; v10 != v12; v10 = (v10 + 8))
        {
          if (*a4)
          {
            return result;
          }
        }

        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        v72 = *(this + 3184);
        v73 = *(this + 3185);
        v74 = this[1591];
        if (v72 < v73)
        {
LABEL_145:
          *(this + 3184) = v72 + 1;
          v74[v72] = 95;
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          return result;
        }

        v75 = this[1593];
        v76 = *(v75 + 1);
        if (&v74[v73] == v76)
        {
          v77 = *(v75 + 2);
          if ((v76 + 1) <= v77)
          {
            *(v75 + 1) = v76 + 1;
            LODWORD(v78) = 1;
LABEL_144:
            *(this + 3185) = v73 + v78;
            goto LABEL_145;
          }
        }

        else
        {
          v77 = *(v75 + 2);
        }

        if ((2 * v73) <= 4)
        {
          v78 = 4;
        }

        else
        {
          v78 = (2 * v73);
        }

        v79 = v78 + v73;
        if (v76)
        {
          v80 = &v76[v78 + v73] > v77;
        }

        else
        {
          v80 = 1;
        }

        v74 = *(v75 + 1);
        if (v80)
        {
          v81 = 2 * *(v75 + 4);
          if (v81 <= v79 + 1)
          {
            v81 = v79 + 1;
          }

          *(v75 + 4) = v81;
          v82 = v81 + 8;
          result = malloc_type_malloc(v81 + 8, 0x2004093837F09uLL);
          v83 = result + v82;
          *result = *(v75 + 3);
          v74 = (result + 8);
          *(v75 + 2) = v83;
          *(v75 + 3) = result;
        }

        *(v75 + 1) = &v74[v79];
        if (v73)
        {
          result = memcpy(v74, this[1591], v73);
        }

        this[1591] = v74;
        LODWORD(v73) = *(this + 3185);
        v72 = *(this + 3184);
        goto LABEL_144;
      }
    }

    else
    {
      v65 = *(v63 + 2);
    }

    if ((2 * v61) <= 4)
    {
      v66 = 4;
    }

    else
    {
      v66 = (2 * v61);
    }

    v67 = v66 + v61;
    if (v64)
    {
      v68 = &v64[v66 + v61] > v65;
    }

    else
    {
      v68 = 1;
    }

    v62 = *(v63 + 1);
    if (v68)
    {
      v69 = 2 * *(v63 + 4);
      if (v69 <= v67 + 1)
      {
        v69 = v67 + 1;
      }

      *(v63 + 4) = v69;
      v70 = v69 + 8;
      result = malloc_type_malloc(v69 + 8, 0x2004093837F09uLL);
      v71 = result + v70;
      *result = *(v63 + 3);
      v62 = (result + 8);
      *(v63 + 2) = v71;
      *(v63 + 3) = result;
    }

    *(v63 + 1) = &v62[v67];
    if (v61)
    {
      result = memcpy(v62, this[1591], v61);
    }

    this[1591] = v62;
    LODWORD(v61) = *(this + 3185);
    v60 = *(this + 3184);
    goto LABEL_122;
  }

  v59 = *(v57 + 18);
  if (v59 == 2)
  {
    goto LABEL_100;
  }

  if (v59 == 5 && *(v57 + 2) == 2)
  {
    v57 = *v57;
    v58 = (v57 + 16);
LABEL_100:
    while (1)
    {
      if (*a4)
      {
        break;
      }

      v57 = (v57 + 8);
      if (v57 == v58)
      {
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        v10 = (v10 + 8);
        if (v10 != v12)
        {
          goto LABEL_95;
        }

        goto LABEL_103;
      }
    }
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = v57;
    *(a4 + 16) = 1772;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleImplCoroutineKind@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v5 == 12)
  {
    v8 = this;
    this = memcmp(v6, "yield_once_2", 0xCuLL);
    if (!this)
    {
      v9 = "I";
      goto LABEL_13;
    }
  }

  else if (v5 == 10)
  {
    if (*v6 == 0x6E6F5F646C656979 && v6[4] == 25955)
    {
      v9 = "A";
LABEL_14:
      this = swift::Demangle::__runtime::CharVector::append((this + 12728), v9, 1uLL, *(this + 12744));
      v11 = 0;
      v3 = 0;
      v10 = 0;
      goto LABEL_15;
    }

    v8 = this;
    this = memcmp(v6, "yield_many", 0xAuLL);
    if (!this)
    {
      v9 = "G";
LABEL_13:
      this = v8;
      goto LABEL_14;
    }
  }

  v10 = 1725;
  v11 = 17;
LABEL_15:
  *a3 = v11;
  *(a3 + 8) = v3;
  *(a3 + 16) = v10;
  return this;
}

void anonymous namespace::Remangler::mangleImplicitClosure(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleImplParameter@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    if (v5 != 5 || *(a2 + 2) != 2)
    {
      v9 = 1772;
      v10 = 1;
      goto LABEL_9;
    }

    a2 = *a2;
  }

  v6 = a2;
  v8 = this;
  if (!*a4)
  {
    v9 = *a4;
    if (!*a4)
    {
      v10 = 0;
      a2 = 0;
LABEL_9:
      *a4 = v10;
      *(a4 + 8) = a2;
      *(a4 + 16) = v9;
    }
  }

  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleImplResult@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    if (v5 != 5 || *(a2 + 2) != 2)
    {
      v9 = 1783;
      v10 = 1;
      goto LABEL_9;
    }

    a2 = *a2;
  }

  v6 = a2;
  v8 = this;
  if (!*a4)
  {
    v9 = *a4;
    if (!*a4)
    {
      v10 = 0;
      a2 = 0;
LABEL_9:
      *a4 = v10;
      *(a4 + 8) = a2;
      *(a4 + 16) = v9;
    }
  }

  return this;
}

unsigned int *anonymous namespace::Remangler::mangleImplYield@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  if (v7 != 2 && (v7 != 5 || *(a2 + 2) != 2))
  {
    v14 = 1788;
    v15 = 1;
    goto LABEL_40;
  }

  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v16) = 1;
LABEL_23:
        *(v5 + 12740) = v9 + v16;
        goto LABEL_24;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = (2 * v9);
    }

    v17 = v16 + v9;
    if (v12)
    {
      v18 = &v12[v16 + v9] > v13;
    }

    else
    {
      v18 = 1;
    }

    v10 = v11[1];
    if (v18)
    {
      v19 = 2 * v11[4];
      if (v19 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      v11[4] = v19;
      v20 = v19 + 8;
      v21 = a2;
      this = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      a2 = v21;
      v22 = this + v20;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v22;
      v11[3] = this;
    }

    v11[1] = &v10[v17];
    if (v9)
    {
      v23 = a2;
      this = memcpy(v10, *(v5 + 12728), v9);
      a2 = v23;
    }

    *(v5 + 12728) = v10;
    LODWORD(v9) = *(v5 + 12740);
    v8 = *(v5 + 12736);
    goto LABEL_23;
  }

LABEL_24:
  *(v5 + 12736) = v8 + 1;
  v10[v8] = 89;
  v24 = *(a2 + 18);
  v25 = a2;
  if ((v24 - 1) >= 2)
  {
    if (v24 == 5)
    {
      v26 = *a2;
      v25 = *a2;
LABEL_32:
      v27 = (v26 + 8 * *(a2 + 2));
      goto LABEL_38;
    }

    v25 = 0;
  }

  switch(v24)
  {
    case 1:
      v27 = (a2 + 8);
      goto LABEL_38;
    case 2:
      v27 = (a2 + 16);
      goto LABEL_38;
    case 5:
      v26 = *a2;
      goto LABEL_32;
  }

  v27 = 0;
LABEL_38:
  while (v25 != v27)
  {
    if (*a4)
    {
      return this;
    }

    ++v25;
  }

  v15 = 0;
  a2 = 0;
  v14 = 0;
LABEL_40:
  *a4 = v15;
  *(a4 + 8) = a2;
  *(a4 + 16) = v14;
  return this;
}

unsigned int *anonymous namespace::Remangler::mangleImplErrorResult@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  if (v7 != 2 && (v7 != 5 || *(a2 + 2) != 2))
  {
    v14 = 1777;
    v15 = 1;
    goto LABEL_40;
  }

  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v16) = 1;
LABEL_23:
        *(v5 + 12740) = v9 + v16;
        goto LABEL_24;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = (2 * v9);
    }

    v17 = v16 + v9;
    if (v12)
    {
      v18 = &v12[v16 + v9] > v13;
    }

    else
    {
      v18 = 1;
    }

    v10 = v11[1];
    if (v18)
    {
      v19 = 2 * v11[4];
      if (v19 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      v11[4] = v19;
      v20 = v19 + 8;
      v21 = a2;
      this = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      a2 = v21;
      v22 = this + v20;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v22;
      v11[3] = this;
    }

    v11[1] = &v10[v17];
    if (v9)
    {
      v23 = a2;
      this = memcpy(v10, *(v5 + 12728), v9);
      a2 = v23;
    }

    *(v5 + 12728) = v10;
    LODWORD(v9) = *(v5 + 12740);
    v8 = *(v5 + 12736);
    goto LABEL_23;
  }

LABEL_24:
  *(v5 + 12736) = v8 + 1;
  v10[v8] = 122;
  v24 = *(a2 + 18);
  v25 = a2;
  if ((v24 - 1) >= 2)
  {
    if (v24 == 5)
    {
      v26 = *a2;
      v25 = *a2;
LABEL_32:
      v27 = (v26 + 8 * *(a2 + 2));
      goto LABEL_38;
    }

    v25 = 0;
  }

  switch(v24)
  {
    case 1:
      v27 = (a2 + 8);
      goto LABEL_38;
    case 2:
      v27 = (a2 + 16);
      goto LABEL_38;
    case 5:
      v26 = *a2;
      goto LABEL_32;
  }

  v27 = 0;
LABEL_38:
  while (v25 != v27)
  {
    if (*a4)
    {
      return this;
    }

    ++v25;
  }

  v15 = 0;
  a2 = 0;
  v14 = 0;
LABEL_40:
  *a4 = v15;
  *(a4 + 8) = a2;
  *(a4 + 16) = v14;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleInOut@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(this + 12736);
  v7 = *(this + 12740);
  v8 = *(this + 12728);
  if (v6 >= v7)
  {
    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(this + 12740) = v7 + v12;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v7) <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = (2 * v7);
    }

    v13 = v12 + v7;
    if (v10)
    {
      v14 = &v10[v12 + v7] > v11;
    }

    else
    {
      v14 = 1;
    }

    v8 = v9[1];
    if (v14)
    {
      v15 = 2 * v9[4];
      if (v15 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      v9[4] = v15;
      v16 = v15 + 8;
      v17 = this;
      v18 = a4;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a4 = v18;
      v20 = v19;
      this = v17;
      v21 = v20 + v16;
      *v20 = v9[3];
      v8 = (v20 + 1);
      v9[2] = v21;
      v9[3] = v20;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      v22 = this;
      v23 = v7;
      v24 = a4;
      memcpy(v8, *(this + 12728), v23);
      this = v22;
      a4 = v24;
    }

    *(this + 12728) = v8;
    LODWORD(v7) = *(this + 12740);
    v6 = *(this + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 12736) = v6 + 1;
  v8[v6] = 82;
  v25 = *(a2 + 18);
  if (v25 != 1)
  {
    if (v25 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return this;
    }

    a2 = *a2;
  }

  v26 = *a2;
}

void anonymous namespace::Remangler::mangleInitializer(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleInitAccessor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleIsolated@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Yi", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void anonymous namespace::Remangler::mangleIsolatedDeallocator(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleSending@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Yu", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleKeyPathGetterThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TK", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleKeyPathSetterThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tk", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleKeyPathUnappliedMethodThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tkmu", 4uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleKeyPathAppliedMethodThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TkMA", 4uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleKeyPathEqualsThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TH", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleKeyPathHashThunkHelper@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Th", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleLazyProtocolWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wl", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleLazyProtocolWitnessTableCacheVariable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WL", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

unsigned int *anonymous namespace::Remangler::mangleLocalDeclName@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 76;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleMacro@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fm", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleMacroExpansionUniqueName@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMu", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void anonymous namespace::Remangler::mangleMaterializeForSet(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleMemberAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMm", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleMemberAttributeAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMr", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

unsigned int *anonymous namespace::Remangler::mangleMetatype@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
LABEL_6:
    v10 = this[3184];
    v11 = this[3185];
    v12 = *(this + 1591);
    if (v10 < v11)
    {
LABEL_42:
      *(v6 + 12736) = v10 + 1;
      v12[v10] = 77;
      v27 = *(v5 + 18);
      if (v27 == 1)
      {
LABEL_46:
        v28 = *v5;
      }

      if (v27 == 5 && *(v5 + 2) == 1)
      {
        v5 = *v5;
        goto LABEL_46;
      }

      *a4 = 10;
      *(a4 + 8) = v5;
      v19 = 114;
LABEL_50:
      *(a4 + 16) = v19;
      return this;
    }

    v13 = *(this + 1593);
    v14 = v13[1];
    if (&v12[v11] == v14)
    {
      v15 = v13[2];
      if ((v14 + 1) <= v15)
      {
        v13[1] = v14 + 1;
        LODWORD(v21) = 1;
LABEL_41:
        *(v6 + 12740) = v11 + v21;
        goto LABEL_42;
      }
    }

    else
    {
      v15 = v13[2];
    }

    if ((2 * v11) <= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = (2 * v11);
    }

    v22 = v21 + v11;
    if (v14)
    {
      v23 = &v14[v21 + v11] > v15;
    }

    else
    {
      v23 = 1;
    }

    v12 = v13[1];
    if (v23)
    {
      v24 = 2 * v13[4];
      if (v24 <= v22 + 1)
      {
        v24 = v22 + 1;
      }

      v13[4] = v24;
      v25 = v24 + 8;
      this = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
      v26 = this + v25;
      *this = v13[3];
      v12 = this + 2;
      v13[2] = v26;
      v13[3] = this;
    }

    v13[1] = &v12[v22];
    if (v11)
    {
      this = memcpy(v12, *(v6 + 12728), v11);
    }

    *(v6 + 12728) = v12;
    LODWORD(v11) = *(v6 + 12740);
    v10 = *(v6 + 12736);
    goto LABEL_41;
  }

  if (v8 != 2)
  {
    if (v8 != 5)
    {
      goto LABEL_12;
    }

    v9 = *(a2 + 2);
    if (v9 != 2)
    {
      if (v9 == 1)
      {
        goto LABEL_6;
      }

LABEL_12:
      *a4 = 1;
      *(a4 + 8) = a2;
      v19 = 1910;
      goto LABEL_50;
    }
  }

  this = swift::Demangle::__runtime::CharVector::append(this + 1591, "XM", 2uLL, *(this + 1593));
  v16 = *(v5 + 18);
  v17 = v5;
  if ((v16 - 1) >= 2)
  {
    if (v16 == 5)
    {
      v18 = *v5;
      v17 = *v5;
LABEL_18:
      v20 = (v18 + 8 * *(v5 + 2));
      goto LABEL_24;
    }

    v17 = 0;
  }

  switch(v16)
  {
    case 1:
      v20 = (v5 + 8);
      goto LABEL_24;
    case 2:
      v20 = (v5 + 16);
      goto LABEL_24;
    case 5:
      v18 = *v5;
      goto LABEL_18;
  }

  v20 = 0;
LABEL_24:
  while (v17 != v20)
  {
    if (*a4)
    {
      return this;
    }

    ++v17;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleMetaclass@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mm", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void anonymous namespace::Remangler::mangleModifyAccessor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleModify2Accessor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleNativeOwningAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleNativeOwningMutableAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleNativePinningAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleNativePinningMutableAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleNominalTypeDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mn", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleNominalTypeDescriptorRecord@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Hn", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

unsigned int *anonymous namespace::Remangler::mangleObjCBlock@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 98;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void anonymous namespace::Remangler::mangleOwningAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleOwningMutableAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::manglePartialApplyForwarder@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "PA", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 == 1 || v9 == 5 && *(a2 + 2) == 1)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "__T", 3uLL, this[1593]);
    v10 = *(a2 + 18);
    if (v10 != 1)
    {
      if (v10 != 5 || *(a2 + 2) != 1)
      {
        v12 = 114;
        v11 = 10;
        goto LABEL_13;
      }

      a2 = *a2;
    }

    v11 = *a4;
    if (*a4)
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
  }

  a2 = 0;
  v12 = 0;
LABEL_13:
  *a4 = v11;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  return result;
}

void *anonymous namespace::Remangler::manglePartialApplyObjCForwarder@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "PAo", 3uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 == 1 || v9 == 5 && *(a2 + 2) == 1)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "__T", 3uLL, this[1593]);
    v10 = *(a2 + 18);
    if (v10 != 1)
    {
      if (v10 != 5 || *(a2 + 2) != 1)
      {
        v12 = 114;
        v11 = 10;
        goto LABEL_13;
      }

      a2 = *a2;
    }

    v11 = *a4;
    if (*a4)
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
  }

  a2 = 0;
  v12 = 0;
LABEL_13:
  *a4 = v11;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  return result;
}

void *anonymous namespace::Remangler::manglePeerAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMp", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::manglePreambleAttachedMacroExpansion@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMq", 3uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = *(this + 1591);
  if (v9 >= v10)
  {
    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_21:
        *(this + 3185) = v10 + v15;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      result = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = result + v19;
      *result = v12[3];
      v11 = (result + 1);
      v12[2] = v20;
      v12[3] = result;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      result = memcpy(v11, *(this + 1591), v10);
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v9 + 1;
  v11[v9] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) >= 2)
  {
    if (v21 == 5)
    {
      v23 = *a2;
      v22 = *a2;
LABEL_30:
      v24 = (v23 + 8 * *(a2 + 2));
      goto LABEL_36;
    }

    v22 = 0;
  }

  switch(v21)
  {
    case 1:
      v24 = a2 + 1;
      goto LABEL_36;
    case 2:
      v24 = a2 + 2;
      goto LABEL_36;
    case 5:
      v23 = *a2;
      goto LABEL_30;
  }

  v24 = 0;
LABEL_36:
  while (v22 != v24)
  {
    if (*a4)
    {
      return result;
    }

    ++v22;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

unsigned int *anonymous namespace::Remangler::manglePrivateDeclName@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 80;
  v20 = *(a2 + 18);
  v21 = a2;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = *a2;
      v21 = *a2;
LABEL_28:
      v23 = (v22 + 8 * *(a2 + 2));
      goto LABEL_34;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = a2 + 1;
      goto LABEL_34;
    case 2:
      v23 = a2 + 2;
      goto LABEL_34;
    case 5:
      v22 = *a2;
      goto LABEL_28;
  }

  v23 = 0;
LABEL_34:
  while (v21 != v23)
  {
    if (*a4)
    {
      return this;
    }

    ++v21;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void anonymous namespace::Remangler::manglePropertyWrapperBackingInitializer(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::manglePropertyWrapperInitFromProjectedValue(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleProtocol(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleProtocolConformance(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node ***a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a2 + 18) == 5 && *(a2 + 2) == 3)
  {
    if (!*a4)
    {
      v8 = a2;
      if (*(a2 + 18) - 1 >= 2)
      {
        v8 = *a2;
      }

      if (!*a4)
      {
        if (*(a2 + 18) == 5 && *(a2 + 2) > 2u)
        {
          v9 = (*a2)[2];
        }

        else
        {
          *a4 = 1;
          *(a4 + 8) = a2;
          *(a4 + 16) = 119;
        }
      }
    }
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 567;
  }
}

void anonymous namespace::Remangler::mangleProtocolDescriptor(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Mp", 2uLL, this[1593]);
  if (*(a2 + 18) - 1 >= 2)
  {
    a2 = *a2;
  }

  v8 = *a2;
}

void anonymous namespace::Remangler::mangleProtocolDescriptorRecord(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Hr", 2uLL, this[1593]);
  if (*(a2 + 18) - 1 >= 2)
  {
    a2 = *a2;
  }

  v8 = *a2;
}

void anonymous namespace::Remangler::mangleProtocolConformanceDescriptor(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Mc", 2uLL, this[1593]);
  if (*(a2 + 18) - 1 >= 2)
  {
    a2 = *a2;
  }

  v8 = *a2;
}

void anonymous namespace::Remangler::mangleProtocolConformanceDescriptorRecord(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Hc", 2uLL, this[1593]);
  if (*(a2 + 18) - 1 >= 2)
  {
    a2 = *a2;
  }

  v8 = *a2;
}

void anonymous namespace::Remangler::mangleProtocolList(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(this + 3184);
  v6 = *(this + 3185);
  v7 = *(this + 1591);
  if (v5 >= v6)
  {
    v8 = *(this + 1593);
    v9 = v8[1];
    if (&v7[v6] == v9)
    {
      v10 = v8[2];
      if ((v9 + 1) <= v10)
      {
        v8[1] = v9 + 1;
        LODWORD(v11) = 1;
LABEL_19:
        *(this + 3185) = v6 + v11;
        goto LABEL_20;
      }
    }

    else
    {
      v10 = v8[2];
    }

    if ((2 * v6) <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = (2 * v6);
    }

    v12 = v11 + v6;
    if (v9)
    {
      v13 = &v9[v11 + v6] > v10;
    }

    else
    {
      v13 = 1;
    }

    v7 = v8[1];
    if (v13)
    {
      v14 = 2 * v8[4];
      if (v14 <= v12 + 1)
      {
        v14 = v12 + 1;
      }

      v8[4] = v14;
      v15 = v14 + 8;
      v16 = this;
      v17 = a2;
      v18 = a4;
      v19 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
      a4 = v18;
      a2 = v17;
      v20 = v19;
      this = v16;
      v21 = v20 + v15;
      *v20 = v8[3];
      v7 = (v20 + 1);
      v8[2] = v21;
      v8[3] = v20;
    }

    v8[1] = &v7[v12];
    if (v6)
    {
      v22 = this;
      v23 = a2;
      v24 = v6;
      v25 = a4;
      memcpy(v7, *(this + 1591), v24);
      a4 = v25;
      this = v22;
      a2 = v23;
    }

    *(this + 1591) = v7;
    LODWORD(v6) = *(this + 3185);
    v5 = *(this + 3184);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 3184) = v5 + 1;
  v7[v5] = 80;
}

void anonymous namespace::Remangler::mangleProtocolListWithClass(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Xc", 2uLL, this[1593]);
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) <= 1u)
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 119;
      return;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return;
  }

  v10 = *(a2 + 18);
  if ((v10 - 1) >= 2)
  {
    if (v10 != 5 || !*(a2 + 2))
    {
      v11 = 0;
      goto LABEL_14;
    }

    a2 = *a2;
  }

  v11 = *a2;
LABEL_14:
}

void anonymous namespace::Remangler::mangleProtocolListWithAnyObject(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 190);
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 163, "Swift");
  swift::Demangle::__runtime::Node::addChild(Node, v9, *this, v10, v11);
  v12 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 103, "AnyObject");
  swift::Demangle::__runtime::Node::addChild(Node, v12, *this, v13, v14);
  swift::Demangle::__runtime::CharVector::append(this + 1591, "P", 1uLL, *(this + 1593));
  v15 = *(a2 + 18);
  if ((v15 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v15 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v16 = *a2;
    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:
}

void anonymous namespace::Remangler::mangleProtocolSelfConformanceDescriptor(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "MS", 2uLL, this[1593]);
  if (*(a2 + 18) - 1 >= 2)
  {
    a2 = *a2;
  }

  v8 = *a2;
  v9[0] = 0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleProtocolSelfConformanceWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TS", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleProtocolSelfConformanceWitnessTable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WS", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleProtocolWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TW", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleProtocolWitnessTable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WP", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void *anonymous namespace::Remangler::mangleProtocolWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wa", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if (v9 != 1)
  {
    if (v9 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

void anonymous namespace::Remangler::mangleReadAccessor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleRead2Accessor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleRelatedEntityDeclName@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v8 = *a2;
LABEL_5:
    v9 = *v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = *(this + 3184);
  v11 = *(this + 3185);
  v12 = *(this + 1591);
  if (v10 < v11)
  {
    goto LABEL_26;
  }

  v13 = *(this + 1593);
  v14 = v13[1];
  if (&v12[v11] != v14)
  {
    v15 = v13[2];
LABEL_11:
    if ((2 * v11) <= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = (2 * v11);
    }

    v17 = v16 + v11;
    if (v14)
    {
      v18 = &v14[v16 + v11] > v15;
    }

    else
    {
      v18 = 1;
    }

    v12 = v13[1];
    if (v18)
    {
      v19 = 2 * v13[4];
      if (v19 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      v13[4] = v19;
      v20 = v19 + 8;
      v21 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v22 = v21 + v20;
      *v21 = v13[3];
      v12 = (v21 + 1);
      v13[2] = v22;
      v13[3] = v21;
    }

    v13[1] = &v12[v17];
    if (v11)
    {
      memcpy(v12, *(this + 1591), v11);
    }

    *(this + 1591) = v12;
    LODWORD(v11) = *(this + 3185);
    v10 = *(this + 3184);
    goto LABEL_25;
  }

  v15 = v13[2];
  if ((v14 + 1) > v15)
  {
    goto LABEL_11;
  }

  v13[1] = v14 + 1;
  LODWORD(v16) = 1;
LABEL_25:
  *(this + 3185) = v11 + v16;
LABEL_26:
  *(this + 3184) = v10 + 1;
  v12[v10] = 80;
  swift::Demangle::__runtime::CharVector::append(this + 3182, *(v9 + 8) + 1, *(this + 1593));
  v23 = *(this + 3184);
  v24 = *(this + 3185);
  v25 = *(this + 1591);
  if (v23 < v24)
  {
    goto LABEL_42;
  }

  v26 = *(this + 1593);
  v27 = v26[1];
  if (&v25[v24] != v27)
  {
    v28 = v26[2];
LABEL_30:
    if ((2 * v24) <= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = (2 * v24);
    }

    v30 = v29 + v24;
    if (!v27 || &v27[v30] > v28)
    {
      v31 = 2 * v26[4];
      if (v31 <= v30 + 1)
      {
        v31 = v30 + 1;
      }

      v26[4] = v31;
      v32 = v31 + 8;
      v33 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v34 = v33 + v32;
      *v33 = v26[3];
      v27 = (v33 + 1);
      v26[2] = v34;
      v26[3] = v33;
    }

    v26[1] = &v27[v30];
    if (v24)
    {
      memcpy(v27, *(this + 1591), v24);
    }

    *(this + 1591) = v27;
    LODWORD(v24) = *(this + 3185);
    v25 = v27;
    v23 = *(this + 3184);
    goto LABEL_41;
  }

  v28 = v26[2];
  if ((v27 + 1) > v28)
  {
    goto LABEL_30;
  }

  v26[1] = v27 + 1;
  LODWORD(v29) = 1;
LABEL_41:
  *(this + 3185) = v24 + v29;
LABEL_42:
  *(this + 3184) = v23 + 1;
  v25[v23] = 36;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, *v9, *(v9 + 8), *(this + 1593));
  v36 = *(v4 + 18);
  if (v36 != 2)
  {
    if (v36 != 5 || *(v4 + 2) <= 1u)
    {
      *a4 = 1;
      *(a4 + 8) = v4;
      *(a4 + 16) = 119;
      return result;
    }

    v4 = *v4;
  }

  v37 = *(v4 + 1);
}

uint64_t anonymous namespace::Remangler::mangleShared@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(this + 12736);
  v7 = *(this + 12740);
  v8 = *(this + 12728);
  if (v6 >= v7)
  {
    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(this + 12740) = v7 + v12;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v7) <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = (2 * v7);
    }

    v13 = v12 + v7;
    if (v10)
    {
      v14 = &v10[v12 + v7] > v11;
    }

    else
    {
      v14 = 1;
    }

    v8 = v9[1];
    if (v14)
    {
      v15 = 2 * v9[4];
      if (v15 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      v9[4] = v15;
      v16 = v15 + 8;
      v17 = this;
      v18 = a4;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a4 = v18;
      v20 = v19;
      this = v17;
      v21 = v20 + v16;
      *v20 = v9[3];
      v8 = (v20 + 1);
      v9[2] = v21;
      v9[3] = v20;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      v22 = this;
      v23 = v7;
      v24 = a4;
      memcpy(v8, *(this + 12728), v23);
      this = v22;
      a4 = v24;
    }

    *(this + 12728) = v8;
    LODWORD(v7) = *(this + 12740);
    v6 = *(this + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 12736) = v6 + 1;
  v8[v6] = 104;
  v25 = *(a2 + 18);
  if (v25 != 1)
  {
    if (v25 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return this;
    }

    a2 = *a2;
  }

  v26 = *a2;
}

uint64_t anonymous namespace::Remangler::mangleOwned@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(this + 12736);
  v7 = *(this + 12740);
  v8 = *(this + 12728);
  if (v6 >= v7)
  {
    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(this + 12740) = v7 + v12;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v7) <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = (2 * v7);
    }

    v13 = v12 + v7;
    if (v10)
    {
      v14 = &v10[v12 + v7] > v11;
    }

    else
    {
      v14 = 1;
    }

    v8 = v9[1];
    if (v14)
    {
      v15 = 2 * v9[4];
      if (v15 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      v9[4] = v15;
      v16 = v15 + 8;
      v17 = this;
      v18 = a4;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a4 = v18;
      v20 = v19;
      this = v17;
      v21 = v20 + v16;
      *v20 = v9[3];
      v8 = (v20 + 1);
      v9[2] = v21;
      v9[3] = v20;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      v22 = this;
      v23 = v7;
      v24 = a4;
      memcpy(v8, *(this + 12728), v23);
      this = v22;
      a4 = v24;
    }

    *(this + 12728) = v8;
    LODWORD(v7) = *(this + 12740);
    v6 = *(this + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 12736) = v6 + 1;
  v8[v6] = 110;
  v25 = *(a2 + 18);
  if (v25 != 1)
  {
    if (v25 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return this;
    }

    a2 = *a2;
  }

  v26 = *a2;
}

unsigned int *anonymous namespace::Remangler::mangleSILBoxType@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 88;
  v20 = *(v6 + 12736);
  v21 = *(v6 + 12740);
  v22 = *(v6 + 12728);
  if (v20 < v21)
  {
    goto LABEL_39;
  }

  v23 = *(v6 + 12744);
  v24 = v23[1];
  if (&v22[v21] != v24)
  {
    v25 = v23[2];
LABEL_24:
    if ((2 * v21) <= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = (2 * v21);
    }

    v27 = v26 + v21;
    if (v24)
    {
      v28 = &v24[v26 + v21] > v25;
    }

    else
    {
      v28 = 1;
    }

    v22 = v23[1];
    if (v28)
    {
      v29 = 2 * v23[4];
      if (v29 <= v27 + 1)
      {
        v29 = v27 + 1;
      }

      v23[4] = v29;
      v30 = v29 + 8;
      this = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
      v31 = this + v30;
      *this = v23[3];
      v22 = (this + 2);
      v23[2] = v31;
      v23[3] = this;
    }

    v23[1] = &v22[v27];
    if (v21)
    {
      this = memcpy(v22, *(v6 + 12728), v21);
    }

    *(v6 + 12728) = v22;
    LODWORD(v21) = *(v6 + 12740);
    v20 = *(v6 + 12736);
    goto LABEL_38;
  }

  v25 = v23[2];
  if ((v24 + 1) > v25)
  {
    goto LABEL_24;
  }

  v23[1] = v24 + 1;
  LODWORD(v26) = 1;
LABEL_38:
  *(v6 + 12740) = v21 + v26;
LABEL_39:
  *(v6 + 12736) = v20 + 1;
  v22[v20] = 98;
  v32 = *(a2 + 18);
  if (v32 != 1)
  {
    if (v32 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return this;
    }

    a2 = *a2;
  }

  v33 = *a2;
}

void *anonymous namespace::Remangler::mangleSILBoxLayout@<X0>(void *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  if (*(a2 + 8) != 223)
  {
    v15 = 2833;
    v16 = 1;
    goto LABEL_41;
  }

  v7 = this;
  v8 = 0;
  while (1)
  {
    v10 = *(v4 + 18);
    switch(v10)
    {
      case 1:
        v11 = *(v4 + 18);
        break;
      case 5:
        v11 = *(v4 + 2);
        break;
      case 2:
        v11 = 2;
        break;
      default:
        goto LABEL_23;
    }

    v12 = v8;
    if (v11 <= v8)
    {
      break;
    }

    if ((*(v4 + 8) & 0xFFFE) != 0xE0)
    {
      v15 = 2837;
      v16 = 1;
      goto LABEL_41;
    }

    v13 = v10 - 1;
    if (v10 == 1)
    {
      goto LABEL_16;
    }

    if (v10 != 5)
    {
      v10 = 2;
LABEL_16:
      if (v10 > v12)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

    if (*(v4 + 2) > v12)
    {
LABEL_19:
      v14 = v4;
      if (v13 >= 2)
      {
        v14 = *v4;
      }

      v9 = *(v14 + v12);
      goto LABEL_4;
    }

LABEL_3:
    v9 = 0;
LABEL_4:
    v8 = v12 + 1;
    if (*a4)
    {
      return this;
    }
  }

LABEL_23:
  v17 = *(v7 + 12736);
  v18 = *(v7 + 12740);
  v19 = *(v7 + 12728);
  if (v17 >= v18)
  {
    v20 = *(v7 + 12744);
    v21 = v20[1];
    if (&v19[v18] != v21)
    {
      v22 = v20[2];
      goto LABEL_28;
    }

    v22 = v20[2];
    if ((v21 + 1) <= v22)
    {
      v20[1] = v21 + 1;
      LODWORD(v23) = 1;
    }

    else
    {
LABEL_28:
      if ((2 * v18) <= 4)
      {
        v23 = 4;
      }

      else
      {
        v23 = (2 * v18);
      }

      v24 = v23 + v18;
      if (!v21 || &v21[v24] > v22)
      {
        v25 = 2 * v20[4];
        if (v25 <= v24 + 1)
        {
          v25 = v24 + 1;
        }

        v20[4] = v25;
        v26 = v25 + 8;
        this = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
        v27 = this + v26;
        *this = v20[3];
        v21 = (this + 1);
        v20[2] = v27;
        v20[3] = this;
      }

      v20[1] = &v21[v24];
      if (v18)
      {
        this = memcpy(v21, *(v7 + 12728), v18);
      }

      *(v7 + 12728) = v21;
      LODWORD(v18) = *(v7 + 12740);
      v19 = v21;
      v17 = *(v7 + 12736);
    }

    *(v7 + 12740) = v18 + v23;
  }

  v16 = 0;
  v4 = 0;
  v15 = 0;
  *(v7 + 12736) = v17 + 1;
  v19[v17] = 95;
LABEL_41:
  *a4 = v16;
  *(a4 + 8) = v4;
  *(a4 + 16) = v15;
  return this;
}

unsigned int *anonymous namespace::Remangler::mangleSILBoxMutableField@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 109;
  v20 = *(a2 + 18);
  v21 = a2;
  if (v20 != 1)
  {
    if (v20 != 5 || *(a2 + 2) != 1)
    {
      goto LABEL_30;
    }

    v21 = *a2;
  }

  if (*(*v21 + 16) != 243)
  {
LABEL_30:
    *a4 = 1;
    *(a4 + 8) = a2;
    v23 = 2849;
    goto LABEL_31;
  }

  if ((v20 - 1) < 2)
  {
LABEL_29:
    v22 = *a2;
    goto LABEL_34;
  }

  if (v20 == 5 && *(a2 + 2))
  {
    a2 = *a2;
    goto LABEL_29;
  }

  v22 = 0;
LABEL_34:
  v24 = *(v22 + 18);
  if (v24 != 1)
  {
    if (v24 == 5 && *(v22 + 2) == 1)
    {
      v22 = *v22;
      goto LABEL_38;
    }

    *a4 = 10;
    *(a4 + 8) = v22;
    v23 = 114;
LABEL_31:
    *(a4 + 16) = v23;
    return this;
  }

LABEL_38:
  v25 = *v22;
}

unsigned int *anonymous namespace::Remangler::mangleSILBoxImmutableField@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = this[3184];
  v9 = this[3185];
  v10 = *(this + 1591);
  if (v8 >= v9)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v10[v9] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v14) = 1;
LABEL_19:
        *(v6 + 12740) = v9 + v14;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v9) <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = (2 * v9);
    }

    v15 = v14 + v9;
    if (v12)
    {
      v16 = &v12[v14 + v9] > v13;
    }

    else
    {
      v16 = 1;
    }

    v10 = v11[1];
    if (v16)
    {
      v17 = 2 * v11[4];
      if (v17 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      v11[4] = v17;
      v18 = v17 + 8;
      this = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v19 = this + v18;
      *this = v11[3];
      v10 = (this + 2);
      v11[2] = v19;
      v11[3] = this;
    }

    v11[1] = &v10[v15];
    if (v9)
    {
      this = memcpy(v10, *(v6 + 12728), v9);
    }

    *(v6 + 12728) = v10;
    LODWORD(v9) = *(v6 + 12740);
    v8 = *(v6 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v6 + 12736) = v8 + 1;
  v10[v8] = 105;
  v20 = *(a2 + 18);
  v21 = a2;
  if (v20 != 1)
  {
    if (v20 != 5 || *(a2 + 2) != 1)
    {
      goto LABEL_30;
    }

    v21 = *a2;
  }

  if (*(*v21 + 16) != 243)
  {
LABEL_30:
    *a4 = 1;
    *(a4 + 8) = a2;
    v23 = 2858;
    goto LABEL_31;
  }

  if ((v20 - 1) < 2)
  {
LABEL_29:
    v22 = *a2;
    goto LABEL_34;
  }

  if (v20 == 5 && *(a2 + 2))
  {
    a2 = *a2;
    goto LABEL_29;
  }

  v22 = 0;
LABEL_34:
  v24 = *(v22 + 18);
  if (v24 != 1)
  {
    if (v24 == 5 && *(v22 + 2) == 1)
    {
      v22 = *v22;
      goto LABEL_38;
    }

    *a4 = 10;
    *(a4 + 8) = v22;
    v23 = 114;
LABEL_31:
    *(a4 + 16) = v23;
    return this;
  }

LABEL_38:
  v25 = *v22;
}

void anonymous namespace::Remangler::mangleSetter(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v4 = *(a2 + 18);
  if ((v4 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v4 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleStatic(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27[0] = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v6 = *(this + 3184);
  v7 = *(this + 3185);
  v8 = *(this + 1591);
  if (v6 >= v7)
  {
    v9 = *(this + 1593);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(this + 3185) = v7 + v12;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v7) <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = (2 * v7);
    }

    v13 = v12 + v7;
    if (v10)
    {
      v14 = &v10[v12 + v7] > v11;
    }

    else
    {
      v14 = 1;
    }

    v8 = v9[1];
    if (v14)
    {
      v15 = 2 * v9[4];
      if (v15 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      v9[4] = v15;
      v16 = v15 + 8;
      v17 = this;
      v18 = a4;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a4 = v18;
      v20 = v19;
      this = v17;
      v21 = v20 + v16;
      *v20 = v9[3];
      v8 = (v20 + 1);
      v9[2] = v21;
      v9[3] = v20;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      v22 = this;
      v23 = v7;
      v24 = a4;
      memcpy(v8, *(this + 1591), v23);
      a4 = v24;
      this = v22;
    }

    *(this + 1591) = v8;
    LODWORD(v7) = *(this + 3185);
    v6 = *(this + 3184);
    goto LABEL_19;
  }

LABEL_20:
  *(this + 3184) = v6 + 1;
  v8[v6] = 90;
  v25 = *(a2 + 18);
  if ((v25 - 1) < 2)
  {
LABEL_24:
    v26 = *a2;
    goto LABEL_26;
  }

  if (v25 == 5 && *(a2 + 2))
  {
    a2 = *a2;
    goto LABEL_24;
  }

  v26 = 0;
LABEL_26:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleSubscript(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void *anonymous namespace::Remangler::mangleThinFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Xf", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_DWORD *anonymous namespace::Remangler::mangleTuple@<X0>(_DWORD *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
    v9 = 0;
LABEL_8:
    v11 = a2;
    goto LABEL_9;
  }

  if (v8 != 5)
  {
    if (v8 != 2)
    {
      goto LABEL_14;
    }

    v9 = 1;
    goto LABEL_8;
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    goto LABEL_14;
  }

  v9 = v10 - 1;
  v11 = *a2;
LABEL_9:
  v12 = *(v11 + v9);
  if (v12[18] - 1 >= 2)
  {
    v12 = *v12;
  }

  if (*(*v12 + 16) != 289)
  {
LABEL_14:
    v13 = this + 3184;
    v14 = this[3184];
    v18 = this[3185];
    v16 = *(this + 1591);
    if (v14 < v18)
    {
LABEL_32:
      v17 = 84;
      goto LABEL_33;
    }

    v19 = *(this + 1593);
    v20 = v19[1];
    if (&v16[v18] == v20)
    {
      v21 = v19[2];
      if ((v20 + 1) <= v21)
      {
        v19[1] = v20 + 1;
        LODWORD(v25) = 1;
LABEL_31:
        *(v6 + 12740) = v18 + v25;
        goto LABEL_32;
      }
    }

    else
    {
      v21 = v19[2];
    }

    if ((2 * v18) <= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = (2 * v18);
    }

    v26 = v25 + v18;
    if (!v20 || &v20[v26] > v21)
    {
      v27 = 2 * v19[4];
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      v19[4] = v27;
      v28 = v27 + 8;
      this = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
      v29 = this + v28;
      *this = v19[3];
      v20 = (this + 2);
      v19[2] = v29;
      v19[3] = this;
    }

    v19[1] = &v20[v26];
    if (v18)
    {
      this = memcpy(v20, *(v6 + 12728), v18);
    }

    *(v6 + 12728) = v20;
    LODWORD(v18) = *(v6 + 12740);
    v16 = v20;
    v14 = *(v6 + 12736);
    goto LABEL_31;
  }

  v13 = this + 3184;
  v14 = this[3184];
  v15 = this[3185];
  v16 = *(this + 1591);
  if (v14 < v15)
  {
    v17 = 116;
    goto LABEL_33;
  }

  v22 = *(this + 1593);
  v23 = v22[1];
  if (&v16[v15] != v23)
  {
    v24 = v22[2];
LABEL_72:
    if ((2 * v15) <= 4)
    {
      v46 = 4;
    }

    else
    {
      v46 = (2 * v15);
    }

    v47 = v46 + v15;
    if (!v23 || &v23[v47] > v24)
    {
      v48 = 2 * v22[4];
      if (v48 <= v47 + 1)
      {
        v48 = v47 + 1;
      }

      v22[4] = v48;
      v49 = v48 + 8;
      this = malloc_type_malloc(v48 + 8, 0x2004093837F09uLL);
      v50 = this + v49;
      *this = v22[3];
      v23 = (this + 2);
      v22[2] = v50;
      v22[3] = this;
    }

    v22[1] = &v23[v47];
    if (v15)
    {
      this = memcpy(v23, *(v6 + 12728), v15);
    }

    *(v6 + 12728) = v23;
    LODWORD(v15) = *(v6 + 12740);
    v16 = v23;
    v14 = *(v6 + 12736);
    goto LABEL_83;
  }

  v24 = v22[2];
  if ((v23 + 1) > v24)
  {
    goto LABEL_72;
  }

  v22[1] = v23 + 1;
  LODWORD(v46) = 1;
LABEL_83:
  *(v6 + 12740) = v15 + v46;
  v17 = 116;
LABEL_33:
  *v13 = v14 + 1;
  v16[v14] = v17;
  v30 = *(a2 + 18);
  v31 = a2;
  if ((v30 - 1) >= 2)
  {
    if (v30 == 5)
    {
      v32 = *a2;
      v31 = *a2;
LABEL_41:
      v33 = (v32 + 8 * *(a2 + 2));
      goto LABEL_47;
    }

    v31 = 0;
  }

  switch(v30)
  {
    case 1:
      v33 = (a2 + 8);
      goto LABEL_47;
    case 2:
      v33 = (a2 + 16);
      goto LABEL_47;
    case 5:
      v32 = *a2;
      goto LABEL_41;
  }

  v33 = 0;
LABEL_47:
  while (v31 != v33)
  {
    if (*a4)
    {
      return this;
    }

    ++v31;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v34 = *(v6 + 12736);
  v35 = *(v6 + 12740);
  v36 = *(v6 + 12728);
  if (v34 >= v35)
  {
    v37 = *(v6 + 12744);
    v38 = v37[1];
    if (&v36[v35] == v38)
    {
      v39 = v37[2];
      if ((v38 + 1) <= v39)
      {
        v37[1] = v38 + 1;
        LODWORD(v40) = 1;
LABEL_66:
        *(v6 + 12740) = v35 + v40;
        goto LABEL_67;
      }
    }

    else
    {
      v39 = v37[2];
    }

    if ((2 * v35) <= 4)
    {
      v40 = 4;
    }

    else
    {
      v40 = (2 * v35);
    }

    v41 = v40 + v35;
    if (v38)
    {
      v42 = &v38[v40 + v35] > v39;
    }

    else
    {
      v42 = 1;
    }

    v36 = v37[1];
    if (v42)
    {
      v43 = 2 * v37[4];
      if (v43 <= v41 + 1)
      {
        v43 = v41 + 1;
      }

      v37[4] = v43;
      v44 = v43 + 8;
      this = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
      v45 = this + v44;
      *this = v37[3];
      v36 = (this + 2);
      v37[2] = v45;
      v37[3] = this;
    }

    v37[1] = &v36[v41];
    if (v35)
    {
      this = memcpy(v36, *(v6 + 12728), v35);
    }

    *(v6 + 12728) = v36;
    LODWORD(v35) = *(v6 + 12740);
    v34 = *(v6 + 12736);
    goto LABEL_66;
  }

LABEL_67:
  *(v6 + 12736) = v34 + 1;
  v36[v34] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}