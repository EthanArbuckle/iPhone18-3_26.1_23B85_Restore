void *anonymous namespace::Remangler::mangleTypeList@<X0>(void *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return this;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v11 = *(v5 + 12736);
  v12 = *(v5 + 12740);
  v13 = *(v5 + 12728);
  if (v11 >= v12)
  {
    v14 = *(v5 + 12744);
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v17) = 1;
LABEL_34:
        *(v5 + 12740) = v12 + v17;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = (2 * v12);
    }

    v18 = v17 + v12;
    if (v15)
    {
      v19 = &v15[v17 + v12] > v16;
    }

    else
    {
      v19 = 1;
    }

    v13 = v14[1];
    if (v19)
    {
      v20 = 2 * v14[4];
      if (v20 <= v18 + 1)
      {
        v20 = v18 + 1;
      }

      v14[4] = v20;
      v21 = v20 + 8;
      this = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v22 = this + v21;
      *this = v14[3];
      v13 = (this + 1);
      v14[2] = v22;
      v14[3] = this;
    }

    v14[1] = &v13[v18];
    if (v12)
    {
      this = memcpy(v13, *(v5 + 12728), v12);
    }

    *(v5 + 12728) = v13;
    LODWORD(v12) = *(v5 + 12740);
    v11 = *(v5 + 12736);
    goto LABEL_34;
  }

LABEL_35:
  *(v5 + 12736) = v11 + 1;
  v13[v11] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleTypeMangling@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v8[v6] = 116;
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

void *anonymous namespace::Remangler::mangleTypeMetadata@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "M", 1uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleTypeMetadataAccessFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Ma", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleTypeMetadataCompletionFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mr", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleTypeMetadataInstantiationCache@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MI", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleTypeMetadataInstantiationFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mi", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleTypeMetadataSingletonInitializationCache@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Ml", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleTypeMetadataLazyCache@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "ML", 2uLL, this[1593]);
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

unsigned int *anonymous namespace::Remangler::mangleUncurriedFunctionType@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v10[v8] = 102;
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

void *anonymous namespace::Remangler::mangleWeak@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Xw", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleUnowned@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Xo", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleUnmanaged@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Xu", 2uLL, this[1593]);
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

void anonymous namespace::Remangler::mangleUnsafeAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

void anonymous namespace::Remangler::mangleUnsafeMutableAddressor(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

unsigned int *anonymous namespace::Remangler::mangleValueWitness@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = a2;
  if (*(a2 + 18) - 1 >= 2)
  {
    v8 = *a2;
  }

  v9 = **v8;
  if (v9 >= 0x18)
  {
    *a4 = 23;
    *(a4 + 8) = a2;
    v17 = 824;
    goto LABEL_29;
  }

  v10 = off_1E69EBDF8[v9];
  v11 = this[3184];
  v12 = this[3185];
  v13 = *(this + 1591);
  if (v11 >= v12)
  {
    v14 = *(this + 1593);
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v18) = 1;
LABEL_20:
        *(v6 + 12740) = v12 + v18;
        goto LABEL_21;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v12);
    }

    v19 = v18 + v12;
    if (!v15 || &v15[v19] > v16)
    {
      v20 = 2 * v14[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v14[4] = v20;
      v21 = v20 + 8;
      v22 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v23 = v22 + v21;
      *v22 = v14[3];
      v15 = (v22 + 1);
      v14[2] = v23;
      v14[3] = v22;
    }

    v14[1] = &v15[v19];
    if (v12)
    {
      memcpy(v15, *(v6 + 12728), v12);
    }

    *(v6 + 12728) = v15;
    LODWORD(v12) = *(v6 + 12740);
    v13 = v15;
    v11 = *(v6 + 12736);
    goto LABEL_20;
  }

LABEL_21:
  *(v6 + 12736) = v11 + 1;
  v13[v11] = 119;
  this = swift::Demangle::__runtime::CharVector::append((v6 + 12728), v10, 2uLL, *(v6 + 12744));
  v24 = *(v5 + 18);
  if (v24 != 2)
  {
    if (v24 == 5 && *(v5 + 2) > 1u)
    {
      v5 = *v5;
      goto LABEL_25;
    }

    *a4 = 1;
    *(a4 + 8) = v5;
    v17 = 119;
LABEL_29:
    *(a4 + 16) = v17;
    return this;
  }

LABEL_25:
  v25 = *(v5 + 1);
}

void *anonymous namespace::Remangler::mangleValueWitnessTable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WV", 2uLL, this[1593]);
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

void anonymous namespace::Remangler::mangleVariable(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

void *anonymous namespace::Remangler::mangleVTableThunk@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TV", 2uLL, this[1593]);
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

void anonymous namespace::Remangler::mangleWillSet(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

void *anonymous namespace::Remangler::mangleOutlinedBridgedMethod@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Te", 2uLL, this[1593]);
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, *a2, *(a2 + 1), this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedCopy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wy", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedConsume@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "We", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedRetain@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wr", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedRelease@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Ws", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedInitializeWithTake@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wb", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedInitializeWithCopy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wc", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedAssignWithTake@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wd", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedAssignWithCopy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wf", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedDestroy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wh", 2uLL, this[1593]);
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

unsigned int *anonymous namespace::Remangler::mangleOutlinedVariable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Tv", 2uLL, *(this + 1593));
  result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2, *(this + 1593));
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

void *anonymous namespace::Remangler::mangleOutlinedReadOnlyObject@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Tv", 2uLL, *(this + 1593));
  result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2, *(this + 1593));
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
LABEL_19:
        *(this + 3185) = v10 + v15;
        goto LABEL_20;
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
    goto LABEL_19;
  }

LABEL_20:
  *(this + 3184) = v9 + 1;
  v11[v9] = 114;
  v21 = *(a2 + 18);
  if (v21 != 1)
  {
    if (v21 != 5 || *(a2 + 2) != 1)
    {
      *a4 = 10;
      *(a4 + 8) = a2;
      *(a4 + 16) = 114;
      return result;
    }

    a2 = *a2;
  }

  v22 = *a2;
}

unsigned int *anonymous namespace::Remangler::mangleLabelList@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 != 1)
  {
    if (v8 == 2)
    {
      v10 = a2 + 2;
      goto LABEL_11;
    }

    if (v8 == 5)
    {
      v9 = *(a2 + 2);
      if (v9)
      {
        v5 = *a2;
        v10 = (*a2 + 8 * v9);
        goto LABEL_11;
      }
    }

    v11 = this[3184];
    v12 = this[3185];
    v13 = *(this + 1591);
    if (v11 < v12)
    {
LABEL_27:
      *(v6 + 12736) = v11 + 1;
      v13[v11] = 121;
LABEL_28:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return this;
    }

    v14 = *(this + 1593);
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v17) = 1;
LABEL_26:
        *(v6 + 12740) = v12 + v17;
        goto LABEL_27;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = (2 * v12);
    }

    v18 = v17 + v12;
    if (!v15 || &v15[v18] > v16)
    {
      v19 = 2 * v14[4];
      if (v19 <= v18 + 1)
      {
        v19 = v18 + 1;
      }

      v14[4] = v19;
      v20 = v19 + 8;
      this = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v21 = this + v20;
      *this = v14[3];
      v15 = (this + 2);
      v14[2] = v21;
      v14[3] = this;
    }

    v14[1] = &v15[v18];
    if (v12)
    {
      this = memcpy(v15, *(v6 + 12728), v12);
    }

    *(v6 + 12728) = v15;
    LODWORD(v12) = *(v6 + 12740);
    v13 = v15;
    v11 = *(v6 + 12736);
    goto LABEL_26;
  }

  v10 = a2 + 1;
LABEL_11:
  while (1)
  {
    if (*a4)
    {
      return this;
    }

    if (++v5 == v10)
    {
      goto LABEL_28;
    }
  }
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCanonicalSpecializedGenericMetaclass@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 114;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MM", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleNoDerivative@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v8[v6] = 107;
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

void *anonymous namespace::Remangler::mangleCompileTimeLiteral@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Yt", 2uLL, this[1593]);
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

unsigned int *anonymous namespace::Remangler::mangleDroppedArgument@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "t", 1uLL, *(this + 1593));
  result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2, *(this + 1593));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleOutlinedEnumTagStore@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wi", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedEnumProjectDataForLoad@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wj", 2uLL, this[1593]);
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

void *anonymous namespace::Remangler::mangleOutlinedEnumGetTag@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wg", 2uLL, this[1593]);
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

char *anonymous namespace::Remangler::mangleDependentGenericInverseConformanceRequirement@<X0>(char *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v6 = *(a2 + 18);
  v7 = a2;
  if (v6 != 2)
  {
    if (v6 != 5 || *(a2 + 2) != 2)
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 3144;
      return this;
    }

    v7 = *a2;
  }

  v8 = *v7;
  v9 = *(*v7 + 18);
  v10 = v8;
  if ((v9 - 1) >= 2)
  {
    v10 = *v8;
  }

  if (*(*v10 + 16) != 39)
  {
    v11 = a3;
    v13 = this;
    if (*a4)
    {
      return this;
    }

    goto LABEL_18;
  }

  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v11 = a3;
    v12 = *v8;
    goto LABEL_17;
  }

  v11 = a3;
  v12 = 0;
LABEL_17:
  v13 = this;
  if (*a4)
  {
    return this;
  }

LABEL_18:
  v14 = *(v4 + 18);
  if (v14 == 2)
  {
    v15 = v13;
    goto LABEL_24;
  }

  v15 = v13;
  if (v14 == 5 && *(v4 + 2) >= 2u)
  {
    v4 = *v4;
LABEL_24:
    v16 = *(v4 + 1);
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
}

void *anonymous namespace::Remangler::mangleConstValue@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Yg", 2uLL, this[1593]);
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

void anonymous namespace::Remangler::mangleTypedEntity(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v13 = *(a2 + 18);
  if (v13 != 2 && (v13 != 5 || (*(a2 + 8) & 0xFFFFFFFE) != 2))
  {
    v20 = 1422;
    v21 = 1;
LABEL_8:
    *a7 = v21;
    *(a7 + 8) = v10;
    *(a7 + 16) = v20;
    return;
  }

  v14 = *(a1 + 12736);
  v15 = *(a1 + 12740);
  v16 = *(a1 + 12728);
  if (v14 >= v15)
  {
    v17 = *(a1 + 12744);
    v18 = v17[1];
    if (&v16[v15] == v18)
    {
      v19 = v17[2];
      if ((v18 + 1) <= v19)
      {
        v17[1] = v18 + 1;
        v34 = 1;
LABEL_24:
        *(a1 + 12740) = v15 + v34;
        goto LABEL_25;
      }
    }

    else
    {
      v19 = v17[2];
    }

    LODWORD(v22) = 2 * v15;
    if ((2 * v15) <= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v22;
    }

    v38 = v22;
    v23 = v22 + v15;
    v24 = &v18[v22 + v15];
    if (v18)
    {
      v25 = v24 > v19;
    }

    else
    {
      v25 = 1;
    }

    v16 = v17[1];
    if (v25)
    {
      v26 = 2 * v17[4];
      if (v26 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      v17[4] = v26;
      v27 = v26 + 8;
      v30 = a5;
      v31 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
      a5 = v30;
      v8 = a4;
      v7 = a6;
      v9 = a3;
      v32 = v31 + v27;
      *v31 = v17[3];
      v16 = (v31 + 1);
      v17[2] = v32;
      v17[3] = v31;
    }

    v17[1] = &v16[v23];
    if (v15)
    {
      v33 = a5;
      memcpy(v16, *(a1 + 12728), v15);
      a5 = v33;
    }

    *(a1 + 12728) = v16;
    LODWORD(v15) = *(a1 + 12740);
    v14 = *(a1 + 12736);
    v34 = v38;
    goto LABEL_24;
  }

LABEL_25:
  *(a1 + 12736) = v14 + 1;
  v16[v14] = 70;
  v35 = v10;
  if (*(v10 + 18) - 1 >= 2)
  {
    v35 = *v10;
  }

  if (!*a7)
  {
    swift::Demangle::__runtime::CharVector::append((a1 + 12728), v9, v8, *(a1 + 12744));
    if (*(v10 + 18) - 1 > 1)
    {
      v10 = *v10;
    }

    v36 = *(*(v10 + 8) + 16) == 303 ? applyParamLabels(*(v10 + 8), *(v10 + 16), *a1) : *(v10 + 8);
    v20 = *a7;
    if (!*a7)
    {
      v21 = 0;
      v10 = 0;
      goto LABEL_8;
    }
  }
}

void anonymous namespace::Remangler::mangleEntityContext(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  *a3 = 1;
  v7 = *(a2 + 16);
  if (v7 > 0x12 || ((1 << v7) & 0x6E000) == 0)
  {
    switch(*(a2 + 16))
    {
      case 0:
      case 0x1E:
        break;
      case 1:
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x1A:
      case 0x1B:
      case 0x1C:
      case 0x1D:
      case 0x1F:
      case 0x21:
      case 0x23:
      case 0x24:
      case 0x25:
      case 0x26:
      case 0x27:
      case 0x28:
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2D:
      case 0x2E:
      case 0x2F:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:
      case 0x3A:
      case 0x3B:
      case 0x3C:
      case 0x3D:
      case 0x3E:
      case 0x40:
      case 0x41:
      case 0x42:
      case 0x43:
      case 0x44:
      case 0x45:
      case 0x46:
      case 0x47:
      case 0x4A:
      case 0x4B:
      case 0x4C:
      case 0x4D:
      case 0x4F:
      case 0x50:
      case 0x51:
      case 0x52:
      case 0x53:
      case 0x54:
      case 0x55:
      case 0x56:
      case 0x57:
      case 0x58:
      case 0x59:
      case 0x5A:
      case 0x5B:
      case 0x5C:
      case 0x5D:
      case 0x5E:
      case 0x5F:
      case 0x60:
      case 0x61:
      case 0x62:
      case 0x63:
      case 0x65:
      case 0x67:
      case 0x68:
      case 0x6B:
      case 0x6C:
      case 0x6D:
      case 0x6E:
      case 0x6F:
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
      case 0x74:
      case 0x75:
      case 0x76:
      case 0x77:
      case 0x78:
      case 0x79:
      case 0x7B:
      case 0x7C:
      case 0x7D:
      case 0x7E:
      case 0x7F:
      case 0x80:
      case 0x81:
      case 0x84:
      case 0x86:
      case 0x87:
      case 0x88:
      case 0x89:
      case 0x8A:
      case 0x8B:
      case 0x8C:
      case 0x8D:
      case 0x8E:
      case 0x8F:
      case 0x90:
      case 0x91:
      case 0x92:
      case 0x93:
      case 0x94:
      case 0x95:
      case 0x97:
      case 0x98:
      case 0x99:
      case 0x9A:
      case 0x9B:
      case 0x9C:
      case 0x9D:
      case 0x9E:
      case 0x9F:
      case 0xA0:
      case 0xA8:
      case 0xA9:
      case 0xAA:
      case 0xAB:
      case 0xAC:
      case 0xAD:
      case 0xAE:
      case 0xAF:
      case 0xB0:
      case 0xB4:
      case 0xB5:
      case 0xB6:
      case 0xB7:
      case 0xB8:
      case 0xB9:
      case 0xBA:
      case 0xBB:
      case 0xC0:
      case 0xC1:
      case 0xC2:
      case 0xC3:
      case 0xC4:
      case 0xC5:
      case 0xC6:
      case 0xC7:
      case 0xC8:
      case 0xC9:
      case 0xCA:
      case 0xCB:
      case 0xCC:
      case 0xCD:
      case 0xCE:
      case 0xCF:
      case 0xD0:
      case 0xD1:
      case 0xD2:
      case 0xD3:
      case 0xD4:
      case 0xD5:
      case 0xD8:
      case 0xD9:
      case 0xDA:
      case 0xDB:
      case 0xDC:
      case 0xDD:
      case 0xDE:
      case 0xDF:
      case 0xE0:
      case 0xE1:
      case 0xE3:
      case 0xE4:
      case 0xE8:
      case 0xE9:
      case 0xEA:
      case 0xEB:
      case 0xEC:
      case 0xED:
      case 0xEE:
      case 0xEF:
      case 0xF0:
      case 0xF1:
      case 0xF2:
      case 0xF3:
      case 0xF6:
      case 0xF7:
      case 0xF8:
      case 0xF9:
      case 0xFA:
      case 0xFB:
      case 0xFC:
      case 0xFD:
      case 0xFE:
      case 0xFF:
      case 0x100:
      case 0x101:
      case 0x102:
      case 0x103:
      case 0x104:
      case 0x105:
      case 0x108:
      case 0x109:
      case 0x10B:
      case 0x10C:
      case 0x10E:
      case 0x10F:
      case 0x110:
      case 0x111:
      case 0x112:
      case 0x113:
      case 0x114:
      case 0x115:
      case 0x116:
      case 0x117:
      case 0x118:
      case 0x119:
      case 0x11A:
      case 0x11B:
      case 0x11C:
      case 0x11D:
      case 0x11E:
      case 0x11F:
      case 0x120:
      case 0x121:
      case 0x122:
      case 0x123:
      case 0x124:
      case 0x125:
      case 0x126:
      case 0x127:
      case 0x128:
      case 0x129:
      case 0x12A:
      case 0x12B:
      case 0x12C:
      case 0x12D:
      case 0x12E:
      case 0x12F:
      case 0x130:
      case 0x131:
      case 0x132:
      case 0x133:
      case 0x134:
      case 0x135:
      case 0x136:
      case 0x137:
      case 0x138:
      case 0x139:
      case 0x13A:
      case 0x13B:
      case 0x13C:
      case 0x13D:
      case 0x13E:
      case 0x13F:
      case 0x140:
      case 0x141:
      case 0x142:
      case 0x144:
      case 0x145:
      case 0x146:
      case 0x147:
      case 0x148:
      case 0x149:
      case 0x14A:
      case 0x14B:
      case 0x14C:
      case 0x14D:
      case 0x14F:
      case 0x150:
      case 0x151:
      case 0x152:
      case 0x153:
      case 0x154:
      case 0x155:
      case 0x156:
      case 0x157:
      case 0x158:
      case 0x159:
      case 0x15A:
      case 0x15B:
      case 0x15C:
      case 0x15D:
      case 0x15E:
      case 0x15F:
      case 0x160:
      case 0x161:
      case 0x162:
      case 0x163:
      case 0x164:
      case 0x165:
      case 0x166:
      case 0x167:
      case 0x168:
      case 0x169:
      case 0x16A:
      case 0x16B:
      case 0x16C:
      case 0x16D:
      case 0x16E:
      case 0x16F:
      case 0x170:
      case 0x171:
      case 0x172:
      case 0x173:
      case 0x174:
      case 0x175:
        *a5 = 24;
        *(a5 + 8) = a2;
        v10 = 1483;
        goto LABEL_10;
      case 0x19:
      case 0x3F:
      case 0xB1:
      case 0xE6:
      case 0xF5:
        v9 = a4 + 2;
        goto LABEL_6;
      case 0x20:
        v13 = "D";
        goto LABEL_58;
      case 0x22:
        break;
      case 0x34:
        v13 = "d";
        goto LABEL_58;
      case 0x35:
        break;
      case 0x48:
        v17 = "U";
        goto LABEL_53;
      case 0x49:
        break;
      case 0x4E:
        v11 = a4 + 2;
        v12 = 70;
        goto LABEL_43;
      case 0x64:
        break;
      case 0x66:
        break;
      case 0x69:
        v13 = "e";
        goto LABEL_58;
      case 0x6A:
        v13 = "E";
        goto LABEL_58;
      case 0x7A:
        v17 = "u";
LABEL_53:
        v11 = a4 + 2;
        v12 = 70;
        v18 = v17;
        v19 = 1;
        goto LABEL_54;
      case 0x82:
        v13 = "i";
        goto LABEL_38;
      case 0x83:
        break;
      case 0x85:
        v13 = "Z";
LABEL_58:
        v15 = a4 + 2;
        v16 = 70;
        goto LABEL_59;
      case 0x96:
        break;
      case 0xA1:
        break;
      case 0xA2:
        break;
      case 0xA3:
        break;
      case 0xA4:
        break;
      case 0xA5:
        break;
      case 0xA6:
        break;
      case 0xA7:
        break;
      case 0xB2:
        break;
      case 0xB3:
        break;
      case 0xBC:
        v13 = "P";
        goto LABEL_38;
      case 0xBD:
        v13 = "W";
LABEL_38:
        v15 = a4 + 2;
        v16 = 73;
LABEL_59:
        break;
      case 0xBE:
        break;
      case 0xBF:
        *a5 = 7;
        *(a5 + 8) = a2;
        v10 = 2892;
        goto LABEL_10;
      case 0xD6:
        break;
      case 0xD7:
        break;
      case 0xE2:
        break;
      case 0xE5:
        break;
      case 0xE7:
        break;
      case 0xF4:
        *a5 = 7;
        *(a5 + 8) = a2;
        v10 = 2886;
        goto LABEL_10;
      case 0x106:
        break;
      case 0x107:
        break;
      case 0x10A:
        v11 = a4 + 2;
        v12 = 118;
LABEL_43:
        v18 = "";
        v19 = 0;
LABEL_54:
        break;
      case 0x10D:
        break;
      case 0x143:
        *a5 = 7;
        *(a5 + 8) = a2;
        v10 = 2941;
        goto LABEL_10;
      case 0x14E:
        swift::Demangle::__runtime::CharVector::append((a1 + 12728), "<autodiff-function>", 0x13uLL, *(a1 + 12744));
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        break;
      default:
        *a5 = 4;
        *(a5 + 8) = a2;
        v10 = 1492;
LABEL_10:
        *(a5 + 16) = v10;
        break;
    }
  }

  else
  {
    v9 = a4 + 1;
LABEL_6:
  }

  *a3 = v6;
}

void *anonymous namespace::Remangler::mangleEntityType@<X0>(void *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a2 + 8) != 243)
  {
LABEL_50:
    *a4 = 1;
    *(a4 + 8) = a2;
    v28 = 1497;
    goto LABEL_51;
  }

  v6 = this;
LABEL_3:
  v7 = *(a2 + 18);
  if (v7 != 1)
  {
    if (v7 == 5 && *(a2 + 2) == 1)
    {
      a2 = *a2;
      goto LABEL_7;
    }

    *a4 = 1;
    *(a4 + 8) = a2;
    v28 = 1498;
LABEL_51:
    *(a4 + 16) = v28;
    return this;
  }

LABEL_7:
  v8 = *a2;
  v9 = *(*a2 + 8);
  if (v9 != 67 && v9 != 257 && v9 != 84)
  {
    v29 = *a2;
  }

  if (v9 == 67 || v9 == 84)
  {
    v11 = 70;
  }

  else
  {
    v11 = 102;
  }

  v12 = *(v6 + 12736);
  v13 = *(v6 + 12740);
  v14 = *(v6 + 12728);
  if (v12 >= v13)
  {
    v15 = *(v6 + 12744);
    v16 = v15[1];
    if (&v14[v13] == v16)
    {
      v17 = v15[2];
      if ((v16 + 1) <= v17)
      {
        v15[1] = v16 + 1;
        LODWORD(v18) = 1;
LABEL_31:
        *(v6 + 12740) = v13 + v18;
        goto LABEL_32;
      }
    }

    else
    {
      v17 = v15[2];
    }

    if ((2 * v13) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v13);
    }

    v19 = v18 + v13;
    if (!v16 || &v16[v19] > v17)
    {
      v20 = 2 * v15[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v15[4] = v20;
      v21 = v20 + 8;
      this = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v22 = this + v21;
      *this = v15[3];
      v16 = (this + 1);
      v15[2] = v22;
      v15[3] = this;
    }

    v15[1] = &v16[v19];
    if (v13)
    {
      this = memcpy(v16, *(v6 + 12728), v13);
    }

    *(v6 + 12728) = v16;
    LODWORD(v13) = *(v6 + 12740);
    v14 = v16;
    v12 = *(v6 + 12736);
    goto LABEL_31;
  }

LABEL_32:
  *(v6 + 12736) = v12 + 1;
  v14[v12] = v11;
  v23 = *(v8 + 18);
  if (v23 != 2)
  {
    if (v23 != 5 || (v23 = *(v8 + 2), v23 <= 1))
    {
      *a4 = 1;
      *(a4 + 8) = v8;
      v28 = 1510;
      goto LABEL_51;
    }
  }

  v24 = 0;
  ++a3;
  while (1)
  {
    v25 = v8;
    if (*(v8 + 18) - 1 >= 2)
    {
      v25 = *v8;
    }

    if (*a4)
    {
      return this;
    }

    if (++v24 > v23 - 2)
    {
      if (*(v8 + 18) - 1 >= 2)
      {
        v8 = *v8;
      }

      v26 = *(v8 + v23 - 1);
      if (*(v26 + 8) != 218)
      {
        *a4 = 1;
        *(a4 + 8) = v26;
        v28 = 1516;
        goto LABEL_51;
      }

      v27 = *(v26 + 18);
      if (v27 != 1)
      {
        if (v27 != 5 || *(v26 + 2) != 1)
        {
          *a4 = 1;
          *(a4 + 8) = v26;
          v28 = 1517;
          goto LABEL_51;
        }

        v26 = *v26;
      }

      a2 = *v26;
      if (*(*v26 + 8) == 243)
      {
        goto LABEL_3;
      }

      goto LABEL_50;
    }
  }
}

unsigned int *applyParamLabels(swift::Demangle::__runtime::Node *a1, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v4 = a2;
  v6 = *(a1 + 18);
  if ((v6 - 1) < 2 || v6 == 5 && *(a1 + 2))
  {
    v7 = a2 + 16;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, *(a2 + 8));
    v11 = Node;
    v12 = *(v4 + 18);
    v13 = v4;
    if ((v12 - 1) >= 2)
    {
      if (v12 == 5)
      {
        v14 = *v4;
        v13 = *v4;
        goto LABEL_12;
      }

      v13 = 0;
    }

    switch(v12)
    {
      case 1:
        v7 = v4 + 8;
        break;
      case 2:
        break;
      case 5:
        v14 = *v4;
LABEL_12:
        v7 = &v14[8 * *(v4 + 2)];
        if (v13 == v7)
        {
          return v11;
        }

LABEL_16:
        v52 = v7;
        v53 = Node;
        while (1)
        {
          v15 = *v13;
          v16 = *(*v13 + 16);
          if (v16 == 84 || v16 == 67)
          {
            v17 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 84);
            v18 = v17;
            v19 = *(v15 + 18);
            switch(v19)
            {
              case 1:
                goto LABEL_26;
              case 5:
                v19 = *(v15 + 8);
                if (v19)
                {
                  goto LABEL_26;
                }

                break;
              case 2:
                v19 = 2;
LABEL_26:
                v54 = v13;
                v20 = 0;
                while (2)
                {
                  v29 = *(v15 + 18);
                  v30 = v29 - 1;
                  switch(v29)
                  {
                    case 1:
LABEL_37:
                      if (v29 <= v20)
                      {
                        goto LABEL_42;
                      }

                      break;
                    case 5:
                      if (*(v15 + 8) <= v20)
                      {
                        goto LABEL_42;
                      }

                      break;
                    case 2:
                      v29 = 2;
                      goto LABEL_37;
                    default:
LABEL_42:
                      v28 = 0;
LABEL_43:
                      if (*(v28 + 8) != 3)
                      {
                        goto LABEL_32;
                      }

                      v32 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 3);
                      v33 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 234);
                      v55[1] = a3;
                      v56 = v33;
                      v55[0] = &v56;
                      v36 = *(v28 + 18);
                      if ((v36 - 1) < 2)
                      {
                        goto LABEL_48;
                      }

                      if (v36 == 5 && v28[2])
                      {
                        v28 = *v28;
LABEL_48:
                        v37 = *v28;
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v38 = *(v37 + 18);
                      if ((v38 - 1) < 2)
                      {
LABEL_54:
                        v39 = *v37;
                      }

                      else
                      {
                        if (v38 == 5 && *(v37 + 8))
                        {
                          v37 = *v37;
                          goto LABEL_54;
                        }

                        v39 = 0;
                      }

                      if (*(v39 + 16) == 234)
                      {
                        v40 = *(v39 + 18);
                        switch(v40)
                        {
                          case 1:
                            goto LABEL_65;
                          case 5:
                            v40 = *(v39 + 8);
                            if (v40)
                            {
                              goto LABEL_65;
                            }

                            break;
                          case 2:
                            v40 = 2;
LABEL_65:
                            v42 = 0;
                            while (2)
                            {
                              v44 = *(a1 + 18);
                              v45 = v44 - 1;
                              switch(v44)
                              {
                                case 1:
LABEL_72:
                                  if (v44 <= v42)
                                  {
                                    goto LABEL_77;
                                  }

                                  break;
                                case 5:
                                  if (*(a1 + 2) <= v42)
                                  {
                                    goto LABEL_77;
                                  }

                                  break;
                                case 2:
                                  v44 = 2;
                                  goto LABEL_72;
                                default:
LABEL_77:
                                  v47 = 0;
LABEL_78:
                                  v48 = *(v39 + 18);
                                  v49 = v48 - 1;
                                  switch(v48)
                                  {
                                    case 1:
LABEL_82:
                                      if (v48 <= v42)
                                      {
                                        goto LABEL_66;
                                      }

                                      break;
                                    case 5:
                                      if (*(v39 + 8) <= v42)
                                      {
                                        goto LABEL_66;
                                      }

                                      break;
                                    case 2:
                                      v48 = 2;
                                      goto LABEL_82;
                                    default:
LABEL_66:
                                      v43 = 0;
LABEL_67:
                                      applyParamLabels(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::NodeFactory &)::$_0::operator() const(swift::Demangle::__runtime::Node *)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *)#1}::operator()(v55, v47, v43, v34, v35);
                                      if (v40 == ++v42)
                                      {
                                        goto LABEL_31;
                                      }

                                      continue;
                                  }

                                  v50 = v39;
                                  if (v49 >= 2)
                                  {
                                    v50 = *v39;
                                  }

                                  v43 = *(v50 + 8 * v42);
                                  goto LABEL_67;
                              }

                              break;
                            }

                            v46 = a1;
                            if (v45 >= 2)
                            {
                              v46 = *a1;
                            }

                            v47 = *(v46 + v42);
                            goto LABEL_78;
                        }

LABEL_31:
                        v23 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243);
                        swift::Demangle::__runtime::Node::addChild(v23, v56, a3, v24, v25);
                        swift::Demangle::__runtime::Node::addChild(v32, v23, a3, v26, v27);
                        v28 = v32;
LABEL_32:
                        swift::Demangle::__runtime::Node::addChild(v18, v28, a3, v9, v10);
                        if (++v20 == v19)
                        {
                          v15 = v18;
                          v11 = v53;
                          v13 = v54;
                          v7 = v52;
                          goto LABEL_18;
                        }

                        continue;
                      }

                      v41 = *(a1 + 18);
                      v21 = a1;
                      if ((v41 - 1) < 2)
                      {
LABEL_29:
                        v22 = *v21;
                      }

                      else
                      {
                        if (v41 == 5 && *(a1 + 2))
                        {
                          v21 = *a1;
                          goto LABEL_29;
                        }

                        v22 = 0;
                      }

                      applyParamLabels(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::NodeFactory &)::$_0::operator() const(swift::Demangle::__runtime::Node *)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *)#1}::operator()(v55, v22, v39, v34, v35);
                      goto LABEL_31;
                  }

                  break;
                }

                v31 = v15;
                if (v30 >= 2)
                {
                  v31 = *v15;
                }

                v28 = *(v31 + 8 * v20);
                goto LABEL_43;
            }

            v15 = v17;
          }

LABEL_18:
          swift::Demangle::__runtime::Node::addChild(v11, v15, a3, v9, v10);
          v13 += 8;
          if (v13 == v7)
          {
            return v11;
          }
        }

      default:
        v7 = 0;
        if (v13)
        {
          goto LABEL_16;
        }

        return v11;
    }

    if (v13 != v7)
    {
      goto LABEL_16;
    }

    return v11;
  }

  return v4;
}

void anonymous namespace::Remangler::mangleAnyNominalType(uint64_t a1@<X0>, swift::Demangle::__runtime *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a2;
  if (a4 >= 0x401)
  {
    *a5 = 3;
    *(a5 + 8) = a2;
    v7 = 2401;
LABEL_3:
    *(a5 + 16) = v7;
    return;
  }

  if (!swift::Demangle::__runtime::isSpecialized(a2, a2))
  {
    v17 = *(v5 + 16);
    if (v17 <= 0xE5)
    {
      switch(v17)
      {
        case 0x19u:
          v19 = a4 + 1;
          v20 = a5;
          v21 = a1;
          v22 = v5;
          v23 = 67;
          break;
        case 0x3Fu:
          v19 = a4 + 1;
          v20 = a5;
          v21 = a1;
          v22 = v5;
          v23 = 79;
          break;
        case 0xB1u:
          v18 = "_UnknownTypeKind";
          v19 = a4 + 1;
          v20 = a5;
          v21 = a1;
          v22 = v5;
          v23 = 86;
          v24 = a3;
          v25 = 16;
          goto LABEL_47;
        default:
LABEL_43:
          *a5 = 5;
          *(a5 + 8) = v5;
          v7 = 2440;
          goto LABEL_3;
      }

LABEL_46:
      v24 = a3;
      v18 = 0;
      v25 = 0;
LABEL_47:
      if (*a5)
      {
        return;
      }

      goto LABEL_48;
    }

    if (v17 == 230)
    {
      v19 = a4 + 1;
      v20 = a5;
      v21 = a1;
      v22 = v5;
      v23 = 86;
      goto LABEL_46;
    }

    if (v17 == 245)
    {
      v19 = a4 + 1;
      v20 = a5;
      v21 = a1;
      v22 = v5;
      v23 = 97;
      goto LABEL_46;
    }

    if (v17 != 243)
    {
      goto LABEL_43;
    }

    v26 = *(v5 + 18);
    if ((v26 - 1) >= 2)
    {
      if (v26 != 5 || !*(v5 + 8))
      {
        v27 = 0;
LABEL_52:
        if (*a5)
        {
          return;
        }

LABEL_48:
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        return;
      }

      v5 = *v5;
    }

    v27 = *v5;
    goto LABEL_52;
  }

  v11 = *(a1 + 12736);
  v12 = *(a1 + 12740);
  v13 = *(a1 + 12728);
  if (v11 < v12)
  {
    goto LABEL_37;
  }

  v14 = *(a1 + 12744);
  v15 = v14[1];
  if (&v13[v12] != v15)
  {
    v16 = v14[2];
LABEL_22:
    if ((2 * v12) <= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = (2 * v12);
    }

    v29 = v28 + v12;
    if (v15)
    {
      v30 = &v15[v28 + v12] > v16;
    }

    else
    {
      v30 = 1;
    }

    v13 = v14[1];
    if (v30)
    {
      v31 = 2 * v14[4];
      if (v31 <= v29 + 1)
      {
        v31 = v29 + 1;
      }

      v14[4] = v31;
      v32 = v31 + 8;
      v33 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v34 = v33 + v32;
      *v33 = v14[3];
      v13 = (v33 + 1);
      v14[2] = v34;
      v14[3] = v33;
    }

    v14[1] = &v13[v29];
    if (v12)
    {
      memcpy(v13, *(a1 + 12728), v12);
    }

    *(a1 + 12728) = v13;
    LODWORD(v12) = *(a1 + 12740);
    v11 = *(a1 + 12736);
    goto LABEL_36;
  }

  v16 = v14[2];
  if ((v15 + 1) > v16)
  {
    goto LABEL_22;
  }

  v14[1] = v15 + 1;
  LODWORD(v28) = 1;
LABEL_36:
  *(a1 + 12740) = v12 + v28;
LABEL_37:
  *(a1 + 12736) = v11 + 1;
  v13[v11] = 71;
  swift::Demangle::__runtime::getUnspecialized(v5, *a1, &v35);
  if (v35)
  {
    *a5 = v35;
    *(a5 + 16) = v36;
  }

  else
  {
    if (!*a5)
    {
    }
  }
}

double anonymous namespace::Remangler::mangleAnonymousContext@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 == 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 8) >= 2u)
  {
    v9 = *a2;
LABEL_5:
    v10 = v9[1];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  if (*a5)
  {
    return result;
  }

  if (*(v6 + 18) - 1 >= 2)
  {
    v6 = *v6;
  }

  v12 = **v6;
  if (v12)
  {
    v13 = *(*v6 + 1);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }

    *(&__dst + v13) = 0;
    if ((*(a3 + 31) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  __dst = 0uLL;
  v15 = 0;
  if (*(a3 + 31) < 0)
  {
LABEL_20:
    operator delete(*(a3 + 8));
  }

LABEL_21:
  result = *&__dst;
  *(a3 + 8) = __dst;
  *(a3 + 24) = v15;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleDidSet@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleExtension@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v8 = result;
  v10 = *(a2 + 18);
  if (v10 == 2)
  {
    goto LABEL_7;
  }

  if (v10 != 5)
  {
LABEL_10:
    *a5 = 1;
    *(a5 + 8) = a2;
    *(a5 + 16) = 2196;
    return result;
  }

  v11 = *(a2 + 2);
  if (v11 == 2)
  {
LABEL_7:
    v12 = result + 1592;
    v13 = *(result + 3184);
    v17 = *(result + 3185);
    v15 = result[1591];
    if (v13 < v17)
    {
LABEL_27:
      v16 = 69;
      goto LABEL_28;
    }

    v18 = result[1593];
    v19 = v18[1];
    if (&v15[v17] == v19)
    {
      v20 = v18[2];
      if ((v19 + 1) <= v20)
      {
        v18[1] = v19 + 1;
        LODWORD(v21) = 1;
LABEL_26:
        *(v8 + 3185) = v17 + v21;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = v18[2];
    }

    v41 = result + 1592;
    if ((2 * v17) <= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = (2 * v17);
    }

    v22 = v21 + v17;
    if (v19)
    {
      v23 = &v19[v21 + v17] > v20;
    }

    else
    {
      v23 = 1;
    }

    v15 = v18[1];
    if (v23)
    {
      v24 = 2 * v18[4];
      if (v24 <= v22 + 1)
      {
        v24 = v22 + 1;
      }

      v18[4] = v24;
      v25 = v24 + 8;
      v26 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
      v27 = v26 + v25;
      *v26 = v18[3];
      v15 = (v26 + 1);
      v18[2] = v27;
      v18[3] = v26;
    }

    v18[1] = &v15[v22];
    if (v17)
    {
      memcpy(v15, v8[1591], v17);
    }

    v8[1591] = v15;
    LODWORD(v17) = *(v8 + 3185);
    v13 = *(v8 + 3184);
    v12 = v41;
    goto LABEL_26;
  }

  if (v11 != 3)
  {
    goto LABEL_10;
  }

  v12 = result + 1592;
  v13 = *(result + 3184);
  v14 = *(result + 3185);
  v15 = result[1591];
  if (v13 < v14)
  {
    v16 = 101;
    goto LABEL_28;
  }

  v31 = result[1593];
  v32 = v31[1];
  if (&v15[v14] != v32)
  {
    v33 = v31[2];
LABEL_45:
    LODWORD(v34) = 2 * v14;
    if ((2 * v14) <= 4)
    {
      v34 = 4;
    }

    else
    {
      v34 = v34;
    }

    v42 = v34;
    v35 = v34 + v14;
    if (!v32 || &v32[v35] > v33)
    {
      v36 = 2 * v31[4];
      if (v36 <= v35 + 1)
      {
        v36 = v35 + 1;
      }

      v31[4] = v36;
      v37 = v36 + 8;
      v38 = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
      v39 = v38 + v37;
      *v38 = v31[3];
      v32 = (v38 + 1);
      v31[2] = v39;
      v31[3] = v38;
    }

    v31[1] = &v32[v35];
    if (v14)
    {
      memcpy(v32, v8[1591], v14);
    }

    v8[1591] = v32;
    LODWORD(v14) = *(v8 + 3185);
    v15 = v32;
    v13 = *(v8 + 3184);
    v40 = v42;
    goto LABEL_56;
  }

  v33 = v31[2];
  if ((v32 + 1) > v33)
  {
    goto LABEL_45;
  }

  v31[1] = v32 + 1;
  v40 = 1;
LABEL_56:
  *(v8 + 3185) = v14 + v40;
  v16 = 101;
LABEL_28:
  *v12 = v13 + 1;
  v15[v13] = v16;
  v28 = v7;
  if (*(v7 + 18) - 1 >= 2)
  {
    v28 = *v7;
  }

  if (!*a5)
  {
    v29 = *(v7 + 18);
    if (v29 == 5)
    {
      if (*(v7 + 2) != 3)
      {
        goto LABEL_37;
      }

      if (*a5)
      {
        return result;
      }

      v29 = *(v7 + 18);
    }

    if ((v29 - 1) < 2)
    {
LABEL_38:
      v30 = v7[1];
    }

LABEL_37:
    v7 = *v7;
    goto LABEL_38;
  }

  return result;
}

void *anonymous namespace::Remangler::mangleGetter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleGlobalGetter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleInitAccessor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleMaterializeForSet@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleModifyAccessor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleModify2Accessor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

uint64_t anonymous namespace::Remangler::mangleModule@<X0>(uint64_t a1@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = 0uLL;
  v49 = 0;
  if ((result & 1) == 0)
  {
    swift::Demangle::__runtime::RemanglerBase::entryForNode(&v50, a1, a2, 0);
    v48 = v50;
    v49 = v51;
    result = swift::Demangle::__runtime::RemanglerBase::findSubstitution(a1, &v48);
    if ((result & 0x80000000) == 0)
    {
      v9 = *(a1 + 12736);
      v10 = *(a1 + 12740);
      v11 = *(a1 + 12728);
      if (v9 < v10)
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 12744);
      v13 = v12[1];
      if (&v11[v10] == v13)
      {
        v14 = v12[2];
        if ((v13 + 1) <= v14)
        {
          v12[1] = v13 + 1;
          LODWORD(v21) = 1;
LABEL_22:
          *(a1 + 12740) = v10 + v21;
LABEL_23:
          *(a1 + 12736) = v9 + 1;
          v11[v9] = 83;
          if (result)
          {
            result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), result - 1, *(a1 + 12744));
          }

          v29 = *(a1 + 12736);
          v30 = *(a1 + 12740);
          v31 = *(a1 + 12728);
          if (v29 < v30)
          {
            goto LABEL_41;
          }

          v32 = *(a1 + 12744);
          v33 = v32[1];
          if (&v31[v30] == v33)
          {
            v34 = v32[2];
            if ((v33 + 1) <= v34)
            {
              v32[1] = v33 + 1;
              LODWORD(v35) = 1;
LABEL_40:
              *(a1 + 12740) = v30 + v35;
LABEL_41:
              *(a1 + 12736) = v29 + 1;
              v31[v29] = 95;
              goto LABEL_59;
            }
          }

          else
          {
            v34 = v32[2];
          }

          if ((2 * v30) <= 4)
          {
            v35 = 4;
          }

          else
          {
            v35 = (2 * v30);
          }

          v36 = v35 + v30;
          if (!v33 || &v33[v36] > v34)
          {
            v37 = 2 * v32[4];
            if (v37 <= v36 + 1)
            {
              v37 = v36 + 1;
            }

            v32[4] = v37;
            v38 = v37 + 8;
            result = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
            v39 = result + v38;
            *result = v32[3];
            v33 = (result + 8);
            v32[2] = v39;
            v32[3] = result;
          }

          v32[1] = &v33[v36];
          if (v30)
          {
            result = memcpy(v33, *(a1 + 12728), v30);
          }

          *(a1 + 12728) = v33;
          LODWORD(v30) = *(a1 + 12740);
          v31 = v33;
          v29 = *(a1 + 12736);
          goto LABEL_40;
        }
      }

      else
      {
        v14 = v12[2];
      }

      if ((2 * v10) <= 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = (2 * v10);
      }

      v22 = v21 + v10;
      if (!v13 || &v13[v22] > v14)
      {
        v23 = 2 * v12[4];
        if (v23 <= v22 + 1)
        {
          v23 = v22 + 1;
        }

        v12[4] = v23;
        v24 = v23 + 8;
        v25 = result;
        v26 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
        result = v25;
        v27 = v26 + v24;
        *v26 = v12[3];
        v13 = (v26 + 1);
        v12[2] = v27;
        v12[3] = v26;
      }

      v12[1] = &v13[v22];
      if (v10)
      {
        v28 = result;
        memcpy(v13, *(a1 + 12728), v10);
        result = v28;
      }

      *(a1 + 12728) = v13;
      LODWORD(v10) = *(a1 + 12740);
      v11 = v13;
      v9 = *(a1 + 12736);
      goto LABEL_22;
    }

    if (*a3)
    {
LABEL_58:
      v47 = *a2;
      v46 = *(a2 + 1);
      swift::Demangle::__runtime::CharVector::append((a1 + 12728), v46, *(a1 + 12744));
      swift::Demangle::__runtime::CharVector::append((a1 + 12728), v47, v46, *(a1 + 12744));
      result = swift::Demangle::__runtime::RemanglerBase::addSubstitution(a1, &v48);
      goto LABEL_59;
    }

    v15 = *(a1 + 12736);
    v16 = *(a1 + 12740);
    v17 = *(a1 + 12728);
    if (v15 < v16)
    {
LABEL_57:
      *(a1 + 12736) = v15 + 1;
      v17[v15] = 77;
      goto LABEL_58;
    }

    v18 = *(a1 + 12744);
    v19 = v18[1];
    if (&v17[v16] == v19)
    {
      v20 = v18[2];
      if ((v19 + 1) <= v20)
      {
        v18[1] = v19 + 1;
        LODWORD(v40) = 1;
LABEL_56:
        *(a1 + 12740) = v16 + v40;
        goto LABEL_57;
      }
    }

    else
    {
      v20 = v18[2];
    }

    if ((2 * v16) <= 4)
    {
      v40 = 4;
    }

    else
    {
      v40 = (2 * v16);
    }

    v41 = v40 + v16;
    if (!v19 || &v19[v41] > v20)
    {
      v42 = 2 * v18[4];
      if (v42 <= v41 + 1)
      {
        v42 = v41 + 1;
      }

      v18[4] = v42;
      v43 = v42 + 8;
      v44 = malloc_type_malloc(v42 + 8, 0x2004093837F09uLL);
      v45 = v44 + v43;
      *v44 = v18[3];
      v19 = (v44 + 1);
      v18[2] = v45;
      v18[3] = v44;
    }

    v18[1] = &v19[v41];
    if (v16)
    {
      memcpy(v19, *(a1 + 12728), v16);
    }

    *(a1 + 12728) = v19;
    LODWORD(v16) = *(a1 + 12740);
    v17 = v19;
    v15 = *(a1 + 12736);
    goto LABEL_56;
  }

LABEL_59:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleNativeOwningAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleNativeOwningMutableAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleNativePinningAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleNativePinningMutableAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleOwningAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleOwningMutableAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleReadAccessor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleRead2Accessor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleSetter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

uint64_t anonymous namespace::Remangler::mangleStatic(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 12736);
  v7 = *(a1 + 12740);
  v8 = *(a1 + 12728);
  if (v6 >= v7)
  {
    v9 = *(a1 + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(a1 + 12740) = v7 + v12;
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
      v17 = a1;
      v18 = a3;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a3 = v18;
      v20 = v19;
      a1 = v17;
      v21 = v20 + v16;
      *v20 = v9[3];
      v8 = (v20 + 1);
      v9[2] = v21;
      v9[3] = v20;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      v22 = a1;
      v23 = a3;
      memcpy(v8, *(a1 + 12728), v7);
      a1 = v22;
      a3 = v23;
    }

    *(a1 + 12728) = v8;
    LODWORD(v7) = *(a1 + 12740);
    v6 = *(a1 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(a1 + 12736) = v6 + 1;
  v8[v6] = 90;
  v24 = *(a2 + 18);
  if ((v24 - 1) < 2)
  {
LABEL_24:
    v25 = *a2;
    goto LABEL_26;
  }

  if (v24 == 5 && *(a2 + 2))
  {
    a2 = *a2;
    goto LABEL_24;
  }

  v25 = 0;
LABEL_26:
}

void *anonymous namespace::Remangler::mangleSubscript@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  v9 = *(a2 + 18);
  if (v9 != 2 && (v9 != 5 || *(a2 + 2) < 2u))
  {
    v16 = 1090;
    v17 = 1;
    goto LABEL_8;
  }

  v10 = *(result + 3184);
  v11 = *(result + 3185);
  v12 = result[1591];
  if (v10 >= v11)
  {
    v13 = result[1593];
    v14 = v13[1];
    if (&v12[v11] == v14)
    {
      v15 = v13[2];
      if ((v14 + 1) <= v15)
      {
        v13[1] = v14 + 1;
        LODWORD(v18) = 1;
LABEL_24:
        *(v7 + 3185) = v11 + v18;
        goto LABEL_25;
      }
    }

    else
    {
      v15 = v13[2];
    }

    if ((2 * v11) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v11);
    }

    v19 = v18 + v11;
    if (v14)
    {
      v20 = &v14[v18 + v11] > v15;
    }

    else
    {
      v20 = 1;
    }

    v12 = v13[1];
    if (v20)
    {
      v21 = 2 * v13[4];
      if (v21 <= v19 + 1)
      {
        v21 = v19 + 1;
      }

      v13[4] = v21;
      v22 = v21 + 8;
      v23 = a3;
      v24 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
      a3 = v23;
      v25 = v24 + v22;
      *v24 = v13[3];
      v12 = (v24 + 1);
      v13[2] = v25;
      v13[3] = v24;
    }

    v13[1] = &v12[v19];
    if (v11)
    {
      v26 = a3;
      memcpy(v12, v7[1591], v11);
      a3 = v26;
    }

    v7[1591] = v12;
    LODWORD(v11) = *(v7 + 3185);
    v10 = *(v7 + 3184);
    goto LABEL_24;
  }

LABEL_25:
  *(v7 + 3184) = v10 + 1;
  v12[v10] = 105;
  v27 = v6;
  if (*(v6 + 18) - 1 >= 2)
  {
    v27 = *v6;
  }

  if (!*a5)
  {
    v28 = *(v6 + 18);
    if (v28 == 1)
    {
      v29 = 0;
    }

    else
    {
      if (v28 == 5)
      {
        v29 = *(v6 + 2) - 1;
        v30 = *v6;
        goto LABEL_34;
      }

      v29 = 1;
    }

    v30 = v6;
LABEL_34:
    if (*(v30[v29] + 16) != 186)
    {
LABEL_48:
      if ((v28 - 1) >= 2 && (v35 = *(v6 + 2), v6 = *v6, v35 >= 3) && (v36 = v6[1], *(v36 + 8) == 303))
      {
        v37 = applyParamLabels(v36, v6[2], *v7);
      }

      else
      {
        v37 = v6[1];
      }

      v16 = *a5;
      if (*a5)
      {
        return result;
      }

      v17 = 0;
      v6 = 0;
LABEL_8:
      *a5 = v17;
      *(a5 + 8) = v6;
      *(a5 + 16) = v16;
      return result;
    }

    if (v28 != 1)
    {
      if (v28 == 5)
      {
        v32 = *(v6 + 2);
        if (v32)
        {
          v31 = v32 - 1;
          v33 = *v6;
LABEL_45:
          v34 = v33[v31];
          goto LABEL_46;
        }
      }

      else if (v28 == 2)
      {
        v31 = 1;
LABEL_44:
        v33 = v6;
        goto LABEL_45;
      }

      v34 = 0;
LABEL_46:
      if (*a5)
      {
        return result;
      }

      v28 = *(v6 + 18);
      goto LABEL_48;
    }

    v31 = 0;
    goto LABEL_44;
  }

  return result;
}

void *anonymous namespace::Remangler::mangleUnsafeAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleUnsafeMutableAddressor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleWillSet@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      v6 = 0;
    }

    a2 = *a2;
  }

  v6 = *a2;
}

void *anonymous namespace::Remangler::mangleGenericArgs@<X0>(void *result@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = 0;
  v8 = 0;
  v9 = *(a2 + 8);
  if (v9 > 0x18)
  {
    if (*(a2 + 8) > 0x48u)
    {
      if (v9 == 73)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if (v9 != 230)
      {
        goto LABEL_105;
      }
    }

    else if (v9 != 25)
    {
      v12 = 0;
      if (v9 != 63)
      {
        goto LABEL_105;
      }
    }

    v13 = *(a2 + 18);
    if ((v13 - 1) >= 2)
    {
      if (v13 != 5 || !*(a2 + 2))
      {
        v14 = 0;
LABEL_26:
        if (*a4)
        {
          return result;
        }

        v17 = v5 + 1592;
        v18 = *(v5 + 3184);
        v19 = *(v5 + 3185);
        v20 = v5[1591];
        if (v18 < v19)
        {
          goto LABEL_104;
        }

        v21 = v5[1593];
        v22 = v21[1];
        if (&v20[v19] == v22)
        {
          v23 = v21[2];
          if ((v22 + 1) <= v23)
          {
            v21[1] = v22 + 1;
            v38 = v19 + 1;
LABEL_103:
            *(v5 + 3185) = v38;
LABEL_104:
            v8 = 0;
            v7 = 0;
            v12 = 0;
            *v17 = v18 + 1;
            v20[v18] = 95;
            goto LABEL_105;
          }
        }

        else
        {
          v23 = v21[2];
        }

        if ((2 * v19) <= 4)
        {
          v34 = 4;
        }

        else
        {
          v34 = (2 * v19);
        }

        v35 = v34 + v19;
        if (!v22 || &v22[v35] > v23)
        {
          v36 = 2 * v21[4];
          if (v36 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          v21[4] = v36;
          v37 = v36 + 8;
          result = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
          *result = v21[3];
          v22 = (result + 1);
          v21[2] = result + v37;
          v21[3] = result;
        }

        v21[1] = &v22[v35];
        if (v19)
        {
          result = memcpy(v22, v5[1591], v19);
        }

        v5[1591] = v22;
        v20 = v22;
        v18 = *(v5 + 3184);
        v38 = *(v5 + 3185) + v34;
        goto LABEL_103;
      }

      a2 = *a2;
    }

    v14 = *a2;
    goto LABEL_26;
  }

  if (v9 - 13 >= 3)
  {
    v12 = 0;
    if (v9 != 1)
    {
      goto LABEL_105;
    }

LABEL_20:
    v15 = *(a2 + 18);
    if (v15 != 2)
    {
      if (v15 != 5 || *(a2 + 2) < 2u)
      {
        v16 = 0;
        goto LABEL_39;
      }

      a2 = *a2;
    }

    v16 = a2[1];
LABEL_39:
    if (*a4)
    {
      return result;
    }

    v8 = 0;
    v7 = 0;
    v12 = 0;
    goto LABEL_105;
  }

  v10 = *(a2 + 18);
  v11 = a2;
  if ((v10 - 1) >= 2)
  {
    if (v10 != 5 || !*(a2 + 2))
    {
      v7 = 0;
      goto LABEL_31;
    }

    v11 = *a2;
  }

  v7 = *v11;
LABEL_31:
  if (*(v7 + 8) == 243)
  {
    v24 = *(v7 + 18);
    if ((v24 - 1) >= 2)
    {
      if (v24 != 5 || !*(v7 + 2))
      {
        v25 = 0;
LABEL_42:
        v26 = *(v25 + 18);
        if ((v26 - 1) >= 2)
        {
          if (v26 != 5 || !*(v25 + 2))
          {
            v27 = a2;
            v28 = 0;
LABEL_49:
            if (*a4)
            {
              return result;
            }

            v29 = *(v27 + 18);
            if (v29 != 2)
            {
              if (v29 != 5 || *(v27 + 2) < 2u)
              {
                v30 = 0;
LABEL_56:
                v31 = *(v30 + 18);
                v32 = v30;
                if ((v31 - 1) >= 2)
                {
                  if (v31 == 5)
                  {
                    v33 = *v30;
                    v32 = *v30;
LABEL_76:
                    v39 = (v33 + 8 * *(v30 + 8));
                    goto LABEL_83;
                  }

                  v32 = 0;
                }

                switch(v31)
                {
                  case 1:
                    v39 = (v30 + 8);
                    goto LABEL_83;
                  case 2:
                    v39 = (v30 + 16);
                    goto LABEL_83;
                  case 5:
                    v33 = *v30;
                    goto LABEL_76;
                }

                v39 = 0;
LABEL_83:
                while (v32 != v39)
                {
                  if (*a4)
                  {
                    return result;
                  }

                  ++v32;
                }

                *a4 = 0;
                *(a4 + 8) = 0;
                *(a4 + 16) = 0;
                v17 = v5 + 1592;
                v18 = *(v5 + 3184);
                v40 = *(v5 + 3185);
                v20 = v5[1591];
                if (v18 < v40)
                {
                  goto LABEL_104;
                }

                v41 = v5[1593];
                v42 = v41[1];
                if (&v20[v40] == v42)
                {
                  v43 = v41[2];
                  if ((v42 + 1) <= v43)
                  {
                    v41[1] = v42 + 1;
                    LODWORD(v44) = 1;
LABEL_102:
                    v38 = v40 + v44;
                    goto LABEL_103;
                  }
                }

                else
                {
                  v43 = v41[2];
                }

                if ((2 * v40) <= 4)
                {
                  v44 = 4;
                }

                else
                {
                  v44 = (2 * v40);
                }

                v45 = v44 + v40;
                if (v42)
                {
                  v46 = &v42[v44 + v40] > v43;
                }

                else
                {
                  v46 = 1;
                }

                v20 = v41[1];
                if (v46)
                {
                  v47 = 2 * v41[4];
                  if (v47 <= v45 + 1)
                  {
                    v47 = v45 + 1;
                  }

                  v41[4] = v47;
                  v48 = v47 + 8;
                  result = malloc_type_malloc(v47 + 8, 0x2004093837F09uLL);
                  v49 = result + v48;
                  *result = v41[3];
                  v20 = result + 1;
                  v41[2] = v49;
                  v41[3] = result;
                }

                v41[1] = &v20[v45];
                if (v40)
                {
                  result = memcpy(v20, v5[1591], v40);
                }

                v5[1591] = v20;
                LODWORD(v40) = *(v5 + 3185);
                v18 = *(v5 + 3184);
                goto LABEL_102;
              }

              v27 = *v27;
            }

            v30 = v27[1];
            goto LABEL_56;
          }

          v27 = a2;
          v25 = *v25;
        }

        else
        {
          v27 = a2;
        }

        v28 = *v25;
        goto LABEL_49;
      }

      v7 = *v7;
    }

    v25 = *v7;
    goto LABEL_42;
  }

  v12 = 2376;
  v8 = 1;
LABEL_105:
  *a4 = v8;
  *(a4 + 8) = v7;
  *(a4 + 16) = v12;
  return result;
}

void anonymous namespace::Remangler::mangleNominalType(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, std::string::value_type *a6@<X5>, std::string::size_type a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a2;
  if (*(a2 + 8) == 243)
  {
    v16 = *(a2 + 18);
    if ((v16 - 1) < 2)
    {
LABEL_6:
      v13 = *v13;
      goto LABEL_8;
    }

    if (v16 == 5 && *(a2 + 2))
    {
      v13 = *a2;
      goto LABEL_6;
    }

    v13 = 0;
  }

LABEL_8:
  {
    swift::Demangle::__runtime::RemanglerBase::entryForNode(&v46, this, v13, 0);
    v44 = v46;
    v45 = v47;
    Substitution = swift::Demangle::__runtime::RemanglerBase::findSubstitution(this, &v44);
    if ((Substitution & 0x80000000) == 0)
    {
      v18 = *(this + 3184);
      v19 = *(this + 3185);
      v20 = *(this + 1591);
      if (v18 < v19)
      {
        goto LABEL_28;
      }

      v21 = *(this + 1593);
      v22 = v21[1];
      if (&v20[v19] == v22)
      {
        v23 = v21[2];
        if ((v22 + 1) <= v23)
        {
          v21[1] = v22 + 1;
          LODWORD(v24) = 1;
LABEL_27:
          *(this + 3185) = v19 + v24;
LABEL_28:
          *(this + 3184) = v18 + 1;
          v20[v18] = 83;
          if (Substitution)
          {
            swift::Demangle::__runtime::CharVector::append(this + 3182, Substitution - 1, *(this + 1593));
          }

          v32 = *(this + 3184);
          v33 = *(this + 3185);
          v34 = *(this + 1591);
          if (v32 < v33)
          {
            goto LABEL_46;
          }

          v35 = *(this + 1593);
          v36 = v35[1];
          if (&v34[v33] == v36)
          {
            v37 = v35[2];
            if ((v36 + 1) <= v37)
            {
              v35[1] = v36 + 1;
              LODWORD(v38) = 1;
LABEL_45:
              *(this + 3185) = v33 + v38;
LABEL_46:
              *(this + 3184) = v32 + 1;
              v34[v32] = 95;
              goto LABEL_47;
            }
          }

          else
          {
            v37 = v35[2];
          }

          if ((2 * v33) <= 4)
          {
            v38 = 4;
          }

          else
          {
            v38 = (2 * v33);
          }

          v39 = v38 + v33;
          if (!v36 || &v36[v39] > v37)
          {
            v40 = 2 * v35[4];
            if (v40 <= v39 + 1)
            {
              v40 = v39 + 1;
            }

            v35[4] = v40;
            v41 = v40 + 8;
            v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
            v43 = v42 + v41;
            *v42 = v35[3];
            v36 = (v42 + 1);
            v35[2] = v43;
            v35[3] = v42;
          }

          v35[1] = &v36[v39];
          if (v33)
          {
            memcpy(v36, *(this + 1591), v33);
          }

          *(this + 1591) = v36;
          LODWORD(v33) = *(this + 3185);
          v34 = v36;
          v32 = *(this + 3184);
          goto LABEL_45;
        }
      }

      else
      {
        v23 = v21[2];
      }

      if ((2 * v19) <= 4)
      {
        v24 = 4;
      }

      else
      {
        v24 = (2 * v19);
      }

      v25 = v24 + v19;
      if (!v22 || &v22[v25] > v23)
      {
        v26 = 2 * v21[4];
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        v21[4] = v26;
        v27 = v26 + 8;
        v28 = Substitution;
        v29 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
        Substitution = v28;
        v30 = v29 + v27;
        *v29 = v21[3];
        v22 = (v29 + 1);
        v21[2] = v30;
        v21[3] = v29;
      }

      v21[1] = &v22[v25];
      if (v19)
      {
        v31 = Substitution;
        memcpy(v22, *(this + 1591), v19);
        Substitution = v31;
      }

      *(this + 1591) = v22;
      LODWORD(v19) = *(this + 3185);
      v20 = v22;
      v18 = *(this + 3184);
      goto LABEL_27;
    }

    if (*a8)
    {
      return;
    }

    swift::Demangle::__runtime::RemanglerBase::addSubstitution(this, &v44);
  }

LABEL_47:
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
}

void anonymous namespace::Remangler::mangleNamedEntity(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, const void *a4@<X3>, size_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>, std::string::value_type *__s, std::string::size_type a10)
{
  v10 = a7;
  v14 = a2;
  v17 = *(a2 + 18);
  if (v17 != 2 && (v17 != 5 || *(a2 + 2) != 2))
  {
    *a8 = 1;
    *(a8 + 8) = a2;
    *(a8 + 16) = 1394;
    return;
  }

  if (a3)
  {
    v18 = *(a1 + 12736);
    v19 = *(a1 + 12740);
    v20 = *(a1 + 12728);
    if (v18 < v19)
    {
LABEL_25:
      *(a1 + 12736) = v18 + 1;
      v20[v18] = a3;
      v17 = *(v14 + 18);
      goto LABEL_26;
    }

    v21 = *(a1 + 12744);
    v22 = v21[1];
    if (&v20[v19] == v22)
    {
      v23 = v21[2];
      if ((v22 + 1) <= v23)
      {
        v21[1] = v22 + 1;
        v33 = 1;
LABEL_24:
        *(a1 + 12740) = v19 + v33;
        goto LABEL_25;
      }
    }

    else
    {
      v23 = v21[2];
    }

    LODWORD(v24) = 2 * v19;
    if ((2 * v19) <= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v24;
    }

    v55 = v24;
    v25 = v24 + v19;
    v26 = &v22[v24 + v19];
    if (v22)
    {
      v27 = v26 > v23;
    }

    else
    {
      v27 = 1;
    }

    v20 = v21[1];
    if (v27)
    {
      v28 = 2 * v21[4];
      if (v28 <= v25 + 1)
      {
        v28 = v25 + 1;
      }

      v21[4] = v28;
      v29 = v28 + 8;
      v54 = a3;
      v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
      LOBYTE(a3) = v54;
      v31 = v30 + v29;
      *v30 = v21[3];
      v20 = v30 + 1;
      v21[2] = v31;
      v21[3] = v30;
    }

    v21[1] = &v20[v25];
    if (v19)
    {
      v32 = a3;
      memcpy(v20, *(a1 + 12728), v19);
      LOBYTE(a3) = v32;
    }

    *(a1 + 12728) = v20;
    LODWORD(v19) = *(a1 + 12740);
    v18 = *(a1 + 12736);
    v10 = a7;
    v33 = v55;
    goto LABEL_24;
  }

LABEL_26:
  v34 = v17 - 1;
  v35 = v14;
  if (v34 >= 2)
  {
    v35 = *v14;
  }

  if (!*a8)
  {
    swift::Demangle::__runtime::CharVector::append((a1 + 12728), a4, a5, *(a1 + 12744));
    __p = *(a6 + 8);
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *(a6 + 8) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_38;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        goto LABEL_38;
      }

      p_p = &__p;
    }

    if (p_p->__r_.__value_.__s.__data_[0] - 48 <= 9)
    {
      std::operator+<char>();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v57;
    }

LABEL_38:
    if (a10)
    {
      std::string::append(&__p, __s, a10);
    }

    v37 = *(v14 + 18);
    if (v37 != 2)
    {
      if (v37 != 5 || *(v14 + 2) < 2u)
      {
        v38 = 0;
LABEL_46:
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (!size || *(v38 + 8) != 103)
        {
          goto LABEL_74;
        }

        v40 = *(a1 + 12736);
        v41 = *(a1 + 12740);
        v42 = *(a1 + 12728);
        if (v40 < v41)
        {
LABEL_67:
          *(a1 + 12736) = v40 + 1;
          v42[v40] = 80;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &__p;
          }

          else
          {
            v52 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = __p.__r_.__value_.__l.__size_;
          }

          swift::Demangle::__runtime::CharVector::append((a1 + 12728), v53, *(a1 + 12744));
          swift::Demangle::__runtime::CharVector::append((a1 + 12728), v52, v53, *(a1 + 12744));
          *a8 = 0;
          *(a8 + 8) = 0;
          *(a8 + 16) = 0;
LABEL_74:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

        v43 = *(a1 + 12744);
        v44 = v43[1];
        if (&v42[v41] == v44)
        {
          v45 = v43[2];
          if ((v44 + 1) <= v45)
          {
            v43[1] = v44 + 1;
            LODWORD(v46) = 1;
LABEL_66:
            *(a1 + 12740) = v41 + v46;
            goto LABEL_67;
          }
        }

        else
        {
          v45 = v43[2];
        }

        if ((2 * v41) <= 4)
        {
          v46 = 4;
        }

        else
        {
          v46 = (2 * v41);
        }

        v47 = v46 + v41;
        if (!v44 || &v44[v47] > v45)
        {
          v48 = 2 * v43[4];
          if (v48 <= v47 + 1)
          {
            v48 = v47 + 1;
          }

          v43[4] = v48;
          v49 = v48 + 8;
          v50 = malloc_type_malloc(v48 + 8, 0x2004093837F09uLL);
          v51 = v50 + v49;
          *v50 = v43[3];
          v44 = (v50 + 1);
          v43[2] = v51;
          v43[3] = v50;
        }

        v43[1] = &v44[v47];
        if (v41)
        {
          memcpy(v44, *(a1 + 12728), v41);
        }

        *(a1 + 12728) = v44;
        LODWORD(v41) = *(a1 + 12740);
        v42 = v44;
        v40 = *(a1 + 12736);
        goto LABEL_66;
      }

      v14 = *v14;
    }

    v38 = v14[1];
    goto LABEL_46;
  }
}

uint64_t anonymous namespace::Remangler::mangleStandardSubstitution(char **this, swift::Demangle::__runtime::Node *a2)
{
  v2 = *(a2 + 8);
  if (v2 == 63)
  {
    v16 = *(a2 + 18);
    v17 = a2;
    if ((v16 - 1) >= 2)
    {
      v17 = *a2;
    }

    v18 = *v17;
    if (*(v18 + 8) != 163 || v18[1] != 5)
    {
      return 0;
    }

    v19 = *v18;
    v20 = *v19;
    v21 = *(v19 + 4);
    if (v20 != 1718187859 || v21 != 116)
    {
      return 0;
    }

    if (v16 == 5)
    {
      v31 = *a2;
      if (*(*(*a2 + 8) + 16) != 103)
      {
        return 0;
      }
    }

    else
    {
      v31 = a2;
      if (*(*(a2 + 1) + 16) != 103)
      {
        return 0;
      }
    }

    v117 = *(v31 + 1);
    if (*(v117 + 8) == 8 && **v117 == 0x6C616E6F6974704FLL)
    {
      v30 = "Sq";
    }

    else
    {
      if (v16 == 5)
      {
        a2 = *a2;
      }

      v118 = *(a2 + 1);
      if (*(v118 + 8) != 27)
      {
        return 0;
      }

      v119 = *v118;
      v120 = *v119;
      v121 = v119[1];
      v122 = v119[2];
      v123 = *(v119 + 19);
      v124 = v120 == 0x746963696C706D49 && v121 == 0x706172776E55796CLL;
      v125 = v124 && v122 == 0x6F6974704F646570;
      if (!v125 || v123 != 0x6C616E6F6974704FLL)
      {
        return 0;
      }

      v30 = "SQ";
    }

    goto LABEL_48;
  }

  if (v2 != 230)
  {
    if (v2 != 163)
    {
      return 0;
    }

    v3 = *a2;
    v4 = *(a2 + 1);
    switch(v4)
    {
      case 3:
        v26 = *v3;
        v27 = *(v3 + 2);
        if (v26 != 24415 || v27 != 67)
        {
          return 0;
        }

        v30 = "So";
        break;
      case 15:
        v23 = *v3;
        v24 = *(v3 + 7);
        if (v23 != 0x746E79535F435F5FLL || v24 != 0x64657A6973656874)
        {
          return 0;
        }

        v30 = "SC";
        break;
      case 5:
        v5 = *v3;
        v6 = *(v3 + 4);
        if (v5 != 1718187859 || v6 != 116)
        {
          return 0;
        }

        v30 = "s";
        v32 = 1;
        goto LABEL_50;
      default:
        return 0;
    }

LABEL_48:
    v32 = 2;
LABEL_50:
    swift::Demangle::__runtime::CharVector::append(this + 1591, v30, v32, this[1593]);
    return 1;
  }

  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    v10 = *a2;
  }

  v11 = *v10;
  if (*(v11 + 8) != 163 || v11[1] != 5)
  {
    return 0;
  }

  v12 = *v11;
  v13 = *v12;
  v14 = *(v12 + 4);
  if (v13 != 1718187859 || v14 != 116)
  {
    return 0;
  }

  if (v9 == 5)
  {
    v29 = *a2;
    if (*(*(*a2 + 8) + 16) != 103)
    {
      return 0;
    }
  }

  else
  {
    v29 = a2;
    if (*(*(a2 + 1) + 16) != 103)
    {
      return 0;
    }
  }

  v33 = *(v29 + 1);
  if (v33[1] == 5)
  {
    v34 = *v33;
    v35 = *v34;
    v36 = *(v34 + 4);
    if (v35 == 1634890305 && v36 == 121)
    {
      v30 = "Sa";
      goto LABEL_48;
    }
  }

  v38 = a2;
  if (v9 == 5)
  {
    v38 = *a2;
  }

  v39 = *(v38 + 1);
  if (*(v39 + 8) == 4 && **v39 == 1819242306)
  {
    v30 = "Sb";
    goto LABEL_48;
  }

  v40 = a2;
  if (v9 == 5)
  {
    v40 = *a2;
  }

  v41 = *(v40 + 1);
  if (*(v41 + 8) == 13)
  {
    v42 = *v41;
    v43 = *v42;
    v44 = *(v42 + 5);
    if (v43 == 0x5365646F63696E55 && v44 == 0x72616C6163536564)
    {
      v30 = "Sc";
      goto LABEL_48;
    }
  }

  v46 = a2;
  if (v9 == 5)
  {
    v46 = *a2;
  }

  v47 = *(v46 + 1);
  if (v47[1] == 6)
  {
    v48 = *v47;
    v49 = *v48;
    v50 = *(v48 + 2);
    if (v49 == 1651863364 && v50 == 25964)
    {
      v30 = "Sd";
      goto LABEL_48;
    }
  }

  v52 = a2;
  if (v9 == 5)
  {
    v52 = *a2;
  }

  v53 = *(v52 + 1);
  if (v53[1] == 5)
  {
    v54 = *v53;
    v55 = *v54;
    v56 = *(v54 + 4);
    if (v55 == 1634692166 && v56 == 116)
    {
      v30 = "Sf";
      goto LABEL_48;
    }
  }

  v58 = a2;
  if (v9 == 5)
  {
    v58 = *a2;
  }

  v59 = *(v58 + 1);
  if (v59[1] == 3)
  {
    v60 = *v59;
    v61 = *v60;
    v62 = *(v60 + 2);
    if (v61 == 28233 && v62 == 116)
    {
      v30 = "Si";
      goto LABEL_48;
    }
  }

  v64 = a2;
  if (v9 == 5)
  {
    v64 = *a2;
  }

  v65 = *(v64 + 1);
  if (*(v65 + 8) == 16)
  {
    v66 = *v65;
    v68 = *v66;
    v67 = v66[1];
    if (v68 == 0x6152656661736E55 && v67 == 0x7265746E696F5077)
    {
      v30 = "SV";
      goto LABEL_48;
    }
  }

  v70 = a2;
  if (v9 == 5)
  {
    v70 = *a2;
  }

  v71 = *(v70 + 1);
  if (*(v71 + 8) == 23)
  {
    v72 = *v71;
    v73 = *v72;
    v74 = v72[1];
    v75 = *(v72 + 15);
    v76 = v73 == 0x754D656661736E55 && v74 == 0x776152656C626174;
    if (v76 && v75 == 0x7265746E696F5077)
    {
      v30 = "Sv";
      goto LABEL_48;
    }
  }

  v78 = a2;
  if (v9 == 5)
  {
    v78 = *a2;
  }

  v79 = *(v78 + 1);
  if (*(v79 + 8) == 13)
  {
    v80 = *v79;
    v81 = *v80;
    v82 = *(v80 + 5);
    if (v81 == 0x6F50656661736E55 && v82 == 0x7265746E696F5065)
    {
      v30 = "SP";
      goto LABEL_48;
    }
  }

  v84 = a2;
  if (v9 == 5)
  {
    v84 = *a2;
  }

  v85 = *(v84 + 1);
  if (v85[1] == 20)
  {
    v86 = *v85;
    v87 = *v86;
    v88 = v86[1];
    v89 = *(v86 + 4);
    v90 = v87 == 0x754D656661736E55 && v88 == 0x696F50656C626174;
    if (v90 && v89 == 1919251566)
    {
      v30 = "Sp";
      goto LABEL_48;
    }
  }

  v92 = a2;
  if (v9 == 5)
  {
    v92 = *a2;
  }

  v93 = *(v92 + 1);
  if (*(v93 + 8) == 19)
  {
    v94 = *v93;
    v95 = *v94;
    v96 = v94[1];
    v97 = *(v94 + 11);
    v98 = v95 == 0x7542656661736E55 && v96 == 0x6E696F5072656666;
    if (v98 && v97 == 0x7265746E696F5072)
    {
      v30 = "SR";
      goto LABEL_48;
    }
  }

  v100 = a2;
  if (v9 == 5)
  {
    v100 = *a2;
  }

  v101 = *(v100 + 1);
  if (v101[1] == 26)
  {
    v102 = *v101;
    v103 = *v102;
    v104 = v102[1];
    v105 = v102[2];
    v106 = *(v102 + 12);
    v107 = v103 == 0x754D656661736E55 && v104 == 0x667542656C626174;
    v108 = v107 && v105 == 0x746E696F50726566;
    if (v108 && v106 == 29285)
    {
      v30 = "Sr";
      goto LABEL_48;
    }
  }

  v110 = a2;
  if (v9 == 5)
  {
    v110 = *a2;
  }

  v111 = *(v110 + 1);
  if (v111[1] == 6)
  {
    v112 = *v111;
    v113 = *v112;
    v114 = *(v112 + 2);
    if (v113 == 1769108563 && v114 == 26478)
    {
      v30 = "SS";
      goto LABEL_48;
    }
  }

  if (v9 == 5)
  {
    a2 = *a2;
  }

  v116 = *(a2 + 1);
  if (*(v116 + 8) != 4)
  {
    return 0;
  }

  if (**v116 == 1953384789)
  {
    v30 = "Su";
    goto LABEL_48;
  }

  return 0;
}

void *anonymous namespace::Remangler::mangleIdentifier@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v9 = *(a1 + 12744);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v11 = "oP";
    }

    else
    {
      v11 = "oi";
    }

LABEL_8:
    swift::Demangle::__runtime::CharVector::append((a1 + 12728), v11, 2uLL, v9);
    result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), v6, *(a1 + 12744));
    if (!v6)
    {
      goto LABEL_31;
    }

    while (1)
    {
      result = swift::Mangle::__runtime::translateOperatorChar(*a2);
      v14 = result;
      v13 = *(a1 + 12736);
      v12 = *(a1 + 12740);
      v15 = *(a1 + 12728);
      if (v13 < v12)
      {
        goto LABEL_12;
      }

      v16 = *(a1 + 12744);
      v17 = v16[1];
      if (&v15[v12] != v17)
      {
        break;
      }

      v18 = v16[2];
      if ((v17 + 1) > v18)
      {
        goto LABEL_17;
      }

      v16[1] = v17 + 1;
      LODWORD(v19) = 1;
LABEL_11:
      *(a1 + 12740) = v12 + v19;
LABEL_12:
      *(a1 + 12736) = v13 + 1;
      v15[v13] = v14;
      ++a2;
      if (!--v6)
      {
        goto LABEL_31;
      }
    }

    v18 = v16[2];
LABEL_17:
    if ((2 * v12) <= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = (2 * v12);
    }

    v20 = v19 + v12;
    if (v17)
    {
      v21 = &v17[v19 + v12] > v18;
    }

    else
    {
      v21 = 1;
    }

    v15 = v16[1];
    if (v21)
    {
      v22 = 2 * v16[4];
      if (v22 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      v16[4] = v22;
      v23 = v22 + 8;
      result = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v24 = result + v23;
      *result = v16[3];
      v15 = result + 1;
      v16[2] = v24;
      v16[3] = result;
    }

    v16[1] = &v15[v20];
    if (v12)
    {
      result = memcpy(v15, *(a1 + 12728), v12);
    }

    *(a1 + 12728) = v15;
    LODWORD(v12) = *(a1 + 12740);
    v13 = *(a1 + 12736);
    goto LABEL_11;
  }

  if (a4)
  {
    v11 = "op";
    goto LABEL_8;
  }

  swift::Demangle::__runtime::CharVector::append((a1 + 12728), a3, v9);
  result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), a2, v6, *(a1 + 12744));
LABEL_31:
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

const void **anonymous namespace::Remangler::mangleSimpleEntity@<X0>(const void **result@<X0>, uint64_t *a2@<X1>, char a3@<W2>, const void *a4@<X3>, size_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v8 = a5;
  v9 = result;
  v11 = *(a2 + 18);
  if (v11 != 1 && (v11 != 5 || *(a2 + 2) != 1))
  {
    v18 = 1383;
    v19 = 1;
LABEL_28:
    *a8 = v19;
    *(a8 + 8) = a2;
    *(a8 + 16) = v18;
    return result;
  }

  v12 = *(result + 3184);
  v13 = *(result + 3185);
  v14 = result[1591];
  if (v12 >= v13)
  {
    v15 = result[1593];
    v16 = v15[1];
    if (&v14[v13] == v16)
    {
      v17 = v15[2];
      if ((v16 + 1) <= v17)
      {
        v15[1] = v16 + 1;
        v36 = 1;
LABEL_23:
        *(v9 + 3185) = v13 + v36;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v15[2];
    }

    LODWORD(v20) = 2 * v13;
    if ((2 * v13) <= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v20;
    }

    v39 = v20;
    v40 = a4;
    v21 = v20 + v13;
    v22 = &v16[v20 + v13];
    if (v16)
    {
      v23 = v22 > v17;
    }

    else
    {
      v23 = 1;
    }

    v14 = v15[1];
    if (v23)
    {
      v24 = 2 * v15[4];
      if (v24 <= v21 + 1)
      {
        v24 = v21 + 1;
      }

      v15[4] = v24;
      v25 = v24 + 8;
      v26 = a2;
      v27 = a6;
      v28 = a7;
      v29 = a3;
      v30 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
      a3 = v29;
      a7 = v28;
      v8 = a5;
      a6 = v27;
      a2 = v26;
      v31 = v30 + v25;
      *v30 = v15[3];
      v14 = (v30 + 1);
      v15[2] = v31;
      v15[3] = v30;
    }

    v15[1] = &v14[v21];
    if (v13)
    {
      v32 = a2;
      v33 = a3;
      v34 = a6;
      v35 = a7;
      memcpy(v14, v9[1591], v13);
      a3 = v33;
      a7 = v35;
      a6 = v34;
      a2 = v32;
    }

    v9[1591] = v14;
    LODWORD(v13) = *(v9 + 3185);
    v12 = *(v9 + 3184);
    v36 = v39;
    a4 = v40;
    goto LABEL_23;
  }

LABEL_24:
  *(v9 + 3184) = v12 + 1;
  v14[v12] = a3;
  v37 = a4;
  if (*(a2 + 18) - 1 >= 2)
  {
    a2 = *a2;
  }

  if (!*a8)
  {
    result = swift::Demangle::__runtime::CharVector::append(v9 + 1591, v37, v8, v9[1593]);
    v19 = 0;
    a2 = 0;
    v18 = 0;
    goto LABEL_28;
  }

  return result;
}

void *anonymous namespace::Remangler::mangleAccessor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v9 = a4;
  v10 = a3;
  v14 = *(a1 + 12736);
  v15 = *(a1 + 12740);
  v16 = *(a1 + 12728);
  if (v14 >= v15)
  {
    v17 = *(a1 + 12744);
    v18 = v17[1];
    if (&v16[v15] == v18)
    {
      v19 = v17[2];
      if ((v18 + 1) <= v19)
      {
        v17[1] = v18 + 1;
        LODWORD(v22) = 1;
LABEL_19:
        *(a1 + 12740) = v15 + v22;
        v10 = a3;
        goto LABEL_20;
      }
    }

    else
    {
      v19 = v17[2];
    }

    v50 = a7;
    if ((2 * v15) <= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = (2 * v15);
    }

    v23 = v22 + v15;
    if (v18)
    {
      v24 = &v18[v22 + v15] > v19;
    }

    else
    {
      v24 = 1;
    }

    v16 = v17[1];
    if (v24)
    {
      v25 = 2 * v17[4];
      if (v25 <= v23 + 1)
      {
        v25 = v23 + 1;
      }

      v17[4] = v25;
      v26 = v25 + 8;
      v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
      v28 = v27 + v26;
      *v27 = v17[3];
      v16 = (v27 + 1);
      v17[2] = v28;
      v17[3] = v27;
    }

    v17[1] = &v16[v23];
    if (v15)
    {
      memcpy(v16, *(a1 + 12728), v15);
    }

    *(a1 + 12728) = v16;
    LODWORD(v15) = *(a1 + 12740);
    v14 = *(a1 + 12736);
    v7 = a6;
    v9 = a4;
    a7 = v50;
    goto LABEL_19;
  }

LABEL_20:
  *(a1 + 12736) = v14 + 1;
  v16[v14] = 70;
  v29 = *(a2 + 18);
  v30 = a2;
  if ((v29 - 1) < 2)
  {
LABEL_24:
    v31 = *v30;
    goto LABEL_26;
  }

  if (v29 == 5 && *(a2 + 2))
  {
    v30 = *a2;
    goto LABEL_24;
  }

  v31 = 0;
LABEL_26:
  if (*a7)
  {
    return result;
  }

  result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), v10, v9, *(a1 + 12744));
  v33 = *(a2 + 8);
  if (v33 != 231)
  {
    if (v33 == 266)
    {
      v34 = *(a2 + 18);
      v35 = a2;
      if (v34 == 2)
      {
        goto LABEL_33;
      }

      if (v34 == 5 && *(a2 + 2) >= 2u)
      {
        v35 = *a2;
LABEL_33:
        if (*a7)
        {
          return result;
        }

        if (*(a2 + 18) == 5)
        {
          v36 = *(*a2 + 16);
          if (*(v36 + 8) != 303)
          {
LABEL_71:
            v42 = *a7;
            if (*a7)
            {
              return result;
            }

            v43 = 0;
            a2 = 0;
            goto LABEL_73;
          }

          if (*(a2 + 2) < 4u)
          {
            v37 = 0;
          }

          else
          {
            v37 = *(*a2 + 24);
          }

          v49 = *a1;
          v47 = *(*a2 + 16);
          v48 = v37;
LABEL_66:
          v36 = applyParamLabels(v47, v48, v49);
          goto LABEL_71;
        }

LABEL_70:
        v36 = 0;
        goto LABEL_71;
      }

      v42 = 119;
      v43 = 1;
    }

    else
    {
      v42 = 1181;
      v43 = 6;
    }

LABEL_73:
    *a7 = v43;
    *(a7 + 8) = a2;
    *(a7 + 16) = v42;
    return result;
  }

  v38 = *(a2 + 18);
  if (v38 == 1)
  {
    v40 = 0;
LABEL_47:
    v41 = a2;
    goto LABEL_48;
  }

  if (v38 != 5)
  {
    v40 = 1;
    goto LABEL_47;
  }

  v39 = *(a2 + 2);
  if (v39 >= 5)
  {
    v42 = 1170;
    v43 = 1;
    goto LABEL_73;
  }

  v40 = v39 - 1;
  v41 = *a2;
LABEL_48:
  v44 = v41[v40];
  {
    swift::Demangle::__runtime::CharVector::append((a1 + 12728), 9uLL, *(a1 + 12744));
    swift::Demangle::__runtime::CharVector::append((a1 + 12728), "subscript", 9uLL, *(a1 + 12744));
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    v45 = *(a2 + 18);
    v46 = a2;
    if (v45 == 5)
    {
      if (*(a2 + 2) < 2u)
      {
        if (MEMORY[0x10] == 303)
        {
          v47 = 0;
LABEL_62:
          if (*(a2 + 2) >= 3u)
          {
            v48 = *(*a2 + 16);
LABEL_65:
            v49 = *a1;
            goto LABEL_66;
          }

LABEL_64:
          v48 = 0;
          goto LABEL_65;
        }

        goto LABEL_67;
      }

      v46 = *a2;
    }

    v47 = v46[1];
    if (*(v47 + 8) == 303)
    {
      if (v45 != 5)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v45 == 2)
    {
LABEL_69:
      v36 = a2[1];
      goto LABEL_71;
    }

    if (v45 != 5)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (*(a2 + 2) < 2u)
    {
      goto LABEL_70;
    }

    a2 = *a2;
    goto LABEL_69;
  }

  return result;
}

const void **anonymous namespace::Remangler::mangleNamedAndTypedEntity@<X0>(const void **result@<X0>, uint64_t *a2@<X1>, char a3@<W2>, const void *a4@<X3>, size_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  if (*(a2 + 18) != 5 || (*(a2 + 2) - 3) > 1)
  {
    v16 = 1443;
    goto LABEL_7;
  }

  v9 = result;
  v10 = *(result + 3184);
  v11 = *(result + 3185);
  v12 = result[1591];
  if (v10 >= v11)
  {
    v13 = result[1593];
    v14 = v13[1];
    if (&v12[v11] == v14)
    {
      v15 = v13[2];
      if ((v14 + 1) <= v15)
      {
        v13[1] = v14 + 1;
        v35 = 1;
LABEL_22:
        *(v9 + 3185) = v11 + v35;
        goto LABEL_23;
      }
    }

    else
    {
      v15 = v13[2];
    }

    LODWORD(v18) = 2 * v11;
    if ((2 * v11) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v18;
    }

    v46 = v18;
    v19 = v18 + v11;
    if (!v14 || &v14[v19] > v15)
    {
      v20 = 2 * v13[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v13[4] = v20;
      v21 = v20 + 8;
      v45 = a2;
      v22 = a7;
      v23 = a5;
      v24 = a4;
      v25 = a6;
      v44 = a3;
      v26 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      a3 = v44;
      a6 = v25;
      a4 = v24;
      a5 = v23;
      a7 = v22;
      a2 = v45;
      v27 = v26 + v21;
      *v26 = v13[3];
      v14 = (v26 + 1);
      v13[2] = v27;
      v13[3] = v26;
    }

    v13[1] = &v14[v19];
    if (v11)
    {
      v28 = a2;
      v29 = a3;
      v30 = v11;
      v31 = a7;
      v32 = a5;
      v33 = a4;
      v34 = a6;
      memcpy(v14, v9[1591], v30);
      a3 = v29;
      a6 = v34;
      a4 = v33;
      a5 = v32;
      a7 = v31;
      a2 = v28;
    }

    v9[1591] = v14;
    LODWORD(v11) = *(v9 + 3185);
    v12 = v14;
    v10 = *(v9 + 3184);
    v35 = v46;
    goto LABEL_22;
  }

LABEL_23:
  v36 = a4;
  v37 = a5;
  *(v9 + 3184) = v10 + 1;
  v12[v10] = a3;
  v38 = a2;
  if (*(a2 + 18) - 1 >= 2)
  {
    v38 = *a2;
  }

  v39 = a2;
  v40 = a7;
  if (*a8)
  {
    return result;
  }

  result = swift::Demangle::__runtime::CharVector::append(v9 + 1591, v36, v37, v9[1593]);
  v41 = *(v39 + 18);
  v42 = v39;
  if (v41 != 2)
  {
    a2 = v39;
    if (v41 == 5 && *(v39 + 2) >= 2u)
    {
      v42 = *v39;
      goto LABEL_30;
    }

    v16 = 119;
LABEL_7:
    v17 = 1;
LABEL_8:
    *a8 = v17;
    *(a8 + 8) = a2;
    *(a8 + 16) = v16;
    return result;
  }

LABEL_30:
  if (!*a8)
  {
    if (*(v39 + 18) - 1 > 1)
    {
      v39 = *v39;
    }

    v43 = *(v39[2] + 16) == 303 ? applyParamLabels(v39[2], v39[3], *v9) : v39[2];
    v16 = *a8;
    if (!*a8)
    {
      v17 = 0;
      a2 = 0;
      goto LABEL_8;
    }
  }

  return result;
}

unsigned int *applyParamLabels(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::NodeFactory &)::$_0::operator() const(swift::Demangle::__runtime::Node *)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != 288)
  {
    Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 8), 235);
    NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(*(a1 + 8), 236, *a2, *(a2 + 8));
    swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(a1 + 8), v13, v14);
    v15 = *(a3 + 18);
    v16 = a3;
    if ((v15 - 1) >= 2)
    {
      if (v15 == 5)
      {
        v17 = *a3;
        v16 = *a3;
        goto LABEL_11;
      }

      v16 = 0;
    }

    if (v15 == 1)
    {
      v18 = (a3 + 8);
      goto LABEL_16;
    }

    if (v15 == 2)
    {
      v18 = (a3 + 16);
      goto LABEL_16;
    }

    if (v15 != 5)
    {
      v18 = 0;
      goto LABEL_16;
    }

    v17 = *a3;
LABEL_11:
    v18 = (v17 + 8 * *(a3 + 8));
LABEL_16:
    while (v16 != v18)
    {
      v19 = *v16++;
      swift::Demangle::__runtime::Node::addChild(Node, v19, *(a1 + 8), a4, a5);
    }

    v7 = *(a1 + 8);
    v8 = **a1;
    v9 = Node;
    goto LABEL_18;
  }

  v7 = *(a1 + 8);
  v8 = **a1;
  v9 = a3;
LABEL_18:

  return swift::Demangle::__runtime::Node::addChild(v8, v9, v7, a4, a5);
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSingleChildNode@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if (v4 == 1)
  {
  }

  if (v4 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
  }

  *a4 = 10;
  *(a4 + 8) = a2;
  *(a4 + 16) = 114;
  return this;
}

void anonymous namespace::Remangler::mangleProtocolListWithoutPrefix(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, swift::Demangle::__runtime::Node *a3@<X3>, int a4@<W2>, uint64_t a5@<X8>)
{
  if (*(a2 + 8) != 200)
  {
    v14 = 1951;
    v15 = 1;
LABEL_46:
    *a5 = v15;
    *(a5 + 8) = a2;
    *(a5 + 16) = v14;
    return;
  }

  v9 = *(a2 + 18);
  if (v9 == 1)
  {
    goto LABEL_6;
  }

  if (v9 != 5 || *(a2 + 2) != 1)
  {
    v14 = 1952;
    v15 = 1;
    goto LABEL_46;
  }

  a2 = *a2;
LABEL_6:
  a2 = *a2;
  v10 = (a2 + 16);
  if (*(a2 + 8) != 246)
  {
    v14 = 1954;
    v15 = 1;
    goto LABEL_46;
  }

  v11 = *(a2 + 18);
  v12 = a2;
  if ((v11 - 1) >= 2)
  {
    if (v11 == 5)
    {
      v13 = *a2;
      v12 = *a2;
LABEL_18:
      v10 = (v13 + 8 * *(a2 + 2));
      goto LABEL_23;
    }

    v12 = 0;
  }

  switch(v11)
  {
    case 1:
      v10 = (a2 + 8);
      goto LABEL_23;
    case 2:
      goto LABEL_23;
    case 5:
      v13 = *a2;
      goto LABEL_18;
  }

  v10 = 0;
LABEL_23:
  while (v12 != v10)
  {
    if (*a5)
    {
      return;
    }

    ++v12;
  }

  {
    v16 = *(this + 3184);
    v17 = *(this + 3185);
    v18 = *(this + 1591);
    if (v16 < v17)
    {
LABEL_45:
      v15 = 0;
      a2 = 0;
      v14 = 0;
      *(this + 3184) = v16 + 1;
      v18[v16] = 95;
      goto LABEL_46;
    }

    v19 = *(this + 1593);
    v20 = v19[1];
    if (&v18[v17] == v20)
    {
      v21 = v19[2];
      if ((v20 + 1) <= v21)
      {
        v19[1] = v20 + 1;
        LODWORD(v22) = 1;
LABEL_44:
        *(this + 3185) = v17 + v22;
        goto LABEL_45;
      }
    }

    else
    {
      v21 = v19[2];
    }

    if ((2 * v17) <= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = (2 * v17);
    }

    v23 = v22 + v17;
    if (v20)
    {
      v24 = &v20[v22 + v17] > v21;
    }

    else
    {
      v24 = 1;
    }

    v18 = v19[1];
    if (v24)
    {
      v25 = 2 * v19[4];
      if (v25 <= v23 + 1)
      {
        v25 = v23 + 1;
      }

      v19[4] = v25;
      v26 = v25 + 8;
      v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
      v28 = v27 + v26;
      *v27 = v19[3];
      v18 = v27 + 1;
      v19[2] = v28;
      v19[3] = v27;
    }

    v19[1] = &v18[v23];
    if (v17)
    {
      memcpy(v18, *(this + 1591), v17);
    }

    *(this + 1591) = v18;
    LODWORD(v17) = *(this + 3185);
    v16 = *(this + 3184);
    goto LABEL_44;
  }
}

void anonymous namespace::Remangler::mangleProtocolWithoutPrefix(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v8 = *(v5 + 8);
  if (v8 == 243)
  {
    v9 = *(v5 + 18);
    if (v9 != 1)
    {
      if (v9 != 5 || *(v5 + 2) != 1)
      {
        *a4 = 1;
        *(a4 + 8) = v5;
        v10 = 2349;
        goto LABEL_14;
      }

      v5 = *v5;
    }

    v5 = *v5;
    v8 = *(v5 + 8);
  }

  if (v8 != 190)
  {
    *a4 = 1;
    *(a4 + 8) = v5;
    v10 = 2353;
LABEL_14:
    *(a4 + 16) = v10;
    return;
  }

  v11[0] = 0;
  v13 = 0;
  v14 = 0;
  __p = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleChildNodes@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return this;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

char *anonymous namespace::Remangler::mangleDependentGenericParamIndex@<X0>(char *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *(a2 + 18);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      v6 = *a2;
    }

    else
    {
      v6 = a2;
    }

    a2 = *a2;
  }

  else
  {
    v6 = a2;
  }

  v7 = **a2;
  v8 = **(v6 + 1);
  if (!v7)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        this = swift::Demangle::__runtime::CharVector::append(this + 3182, v8 - 2, *(this + 1593));
      }

      v9 = v3 + 12736;
      v16 = *(v3 + 3184);
      v17 = *(v3 + 3185);
      v18 = *(v3 + 1591);
      if (v16 < v17)
      {
        goto LABEL_54;
      }

      v19 = *(v3 + 1593);
      v20 = v19[1];
      if (&v18[v17] == v20)
      {
        v44 = v20 + 1;
        v21 = v19[2];
        if ((v20 + 1) <= v21)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v21 = v19[2];
      }

      if ((2 * v17) <= 4)
      {
        v45 = 4;
      }

      else
      {
        v45 = (2 * v17);
      }

      v51 = v45 + v17;
      if (!v20 || &v20[v51] > v21)
      {
        v52 = 2 * v19[4];
        if (v52 <= v51 + 1)
        {
          v52 = v51 + 1;
        }

        v19[4] = v52;
        v53 = v52 + 8;
        this = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
        v54 = &this[v53];
        *this = v19[3];
        v20 = this + 8;
        v19[2] = v54;
        v19[3] = this;
      }

      v19[1] = &v20[v51];
      if (!v17)
      {
        goto LABEL_82;
      }

      v50 = *(v3 + 1591);
      goto LABEL_81;
    }

    v9 = this + 12736;
    v16 = *(this + 3184);
    v22 = *(this + 3185);
    v18 = *(this + 1591);
    if (v16 < v22)
    {
LABEL_98:
      v42 = 120;
      goto LABEL_99;
    }

    v23 = *(this + 1593);
    v24 = v23[1];
    if (&v18[v22] == v24)
    {
      v25 = v23[2];
      if ((v24 + 1) <= v25)
      {
        v23[1] = v24 + 1;
        LODWORD(v55) = 1;
LABEL_97:
        *(v3 + 3185) = v22 + v55;
        goto LABEL_98;
      }
    }

    else
    {
      v25 = v23[2];
    }

    if ((2 * v22) <= 4)
    {
      v55 = 4;
    }

    else
    {
      v55 = (2 * v22);
    }

    v56 = v55 + v22;
    if (!v24 || &v24[v56] > v25)
    {
      v57 = 2 * v23[4];
      if (v57 <= v56 + 1)
      {
        v57 = v56 + 1;
      }

      v23[4] = v57;
      v58 = v57 + 8;
      this = malloc_type_malloc(v57 + 8, 0x2004093837F09uLL);
      v59 = &this[v58];
      *this = v23[3];
      v24 = this + 8;
      v23[2] = v59;
      v23[3] = this;
    }

    v23[1] = &v24[v56];
    if (v22)
    {
      this = memcpy(v24, *(v3 + 1591), v22);
    }

    *(v3 + 1591) = v24;
    LODWORD(v22) = *(v3 + 3185);
    v18 = v24;
    v16 = *(v3 + 3184);
    goto LABEL_97;
  }

  v9 = this + 12736;
  v10 = *(this + 3184);
  v11 = *(this + 3185);
  v12 = *(this + 1591);
  if (v10 < v11)
  {
    goto LABEL_33;
  }

  v13 = *(this + 1593);
  v14 = v13[1];
  if (&v12[v11] != v14)
  {
    v15 = v13[2];
LABEL_21:
    if ((2 * v11) <= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = (2 * v11);
    }

    v27 = v26 + v11;
    if (!v14 || &v14[v27] > v15)
    {
      v28 = 2 * v13[4];
      if (v28 <= v27 + 1)
      {
        v28 = v27 + 1;
      }

      v13[4] = v28;
      v29 = v28 + 8;
      this = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
      v30 = &this[v29];
      *this = v13[3];
      v14 = this + 8;
      v13[2] = v30;
      v13[3] = this;
    }

    v13[1] = &v14[v27];
    if (v11)
    {
      this = memcpy(v14, *(v3 + 1591), v11);
    }

    *(v3 + 1591) = v14;
    LODWORD(v11) = *(v3 + 3185);
    v12 = v14;
    v10 = *(v3 + 3184);
    goto LABEL_32;
  }

  v15 = v13[2];
  if ((v14 + 1) > v15)
  {
    goto LABEL_21;
  }

  v13[1] = v14 + 1;
  LODWORD(v26) = 1;
LABEL_32:
  *(v3 + 3185) = v11 + v26;
LABEL_33:
  *v9 = v10 + 1;
  v12[v10] = 100;
  if (v7 != 1)
  {
    this = swift::Demangle::__runtime::CharVector::append(v3 + 3182, v7 - 2, *(v3 + 1593));
  }

  v31 = *(v3 + 3184);
  v32 = *(v3 + 3185);
  v33 = *(v3 + 1591);
  if (v31 >= v32)
  {
    v34 = *(v3 + 1593);
    v35 = v34[1];
    if (&v33[v32] == v35)
    {
      v36 = v34[2];
      if ((v35 + 1) <= v36)
      {
        v34[1] = v35 + 1;
        LODWORD(v37) = 1;
LABEL_50:
        *(v3 + 3185) = v32 + v37;
        goto LABEL_51;
      }
    }

    else
    {
      v36 = v34[2];
    }

    if ((2 * v32) <= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = (2 * v32);
    }

    v38 = v37 + v32;
    if (!v35 || &v35[v38] > v36)
    {
      v39 = 2 * v34[4];
      if (v39 <= v38 + 1)
      {
        v39 = v38 + 1;
      }

      v34[4] = v39;
      v40 = v39 + 8;
      this = malloc_type_malloc(v39 + 8, 0x2004093837F09uLL);
      v41 = &this[v40];
      *this = v34[3];
      v35 = this + 8;
      v34[2] = v41;
      v34[3] = this;
    }

    v34[1] = &v35[v38];
    if (v32)
    {
      this = memcpy(v35, *(v3 + 1591), v32);
    }

    *(v3 + 1591) = v35;
    LODWORD(v32) = *(v3 + 3185);
    v33 = v35;
    v31 = *(v3 + 3184);
    goto LABEL_50;
  }

LABEL_51:
  *v9 = v31 + 1;
  v33[v31] = 95;
  if (v8)
  {
    this = swift::Demangle::__runtime::CharVector::append(v3 + 3182, v8 - 1, *(v3 + 1593));
  }

  v16 = *(v3 + 3184);
  v17 = *(v3 + 3185);
  v18 = *(v3 + 1591);
  if (v16 >= v17)
  {
    v19 = *(v3 + 1593);
    v20 = v19[1];
    if (&v18[v17] != v20)
    {
      v43 = v19[2];
LABEL_58:
      if ((2 * v17) <= 4)
      {
        v45 = 4;
      }

      else
      {
        v45 = (2 * v17);
      }

      v46 = v45 + v17;
      if (!v20 || &v20[v46] > v43)
      {
        v47 = 2 * v19[4];
        if (v47 <= v46 + 1)
        {
          v47 = v46 + 1;
        }

        v19[4] = v47;
        v48 = v47 + 8;
        this = malloc_type_malloc(v47 + 8, 0x2004093837F09uLL);
        v49 = &this[v48];
        *this = v19[3];
        v20 = this + 8;
        v19[2] = v49;
        v19[3] = this;
      }

      v19[1] = &v20[v46];
      if (!v17)
      {
        goto LABEL_82;
      }

      v50 = *(v3 + 1591);
LABEL_81:
      this = memcpy(v20, v50, v17);
LABEL_82:
      *(v3 + 1591) = v20;
      LODWORD(v17) = *(v3 + 3185);
      v18 = v20;
      v16 = *(v3 + 3184);
LABEL_83:
      *(v3 + 3185) = v17 + v45;
      v42 = 95;
      goto LABEL_99;
    }

    v44 = v20 + 1;
    v43 = v19[2];
    if ((v20 + 1) > v43)
    {
      goto LABEL_58;
    }

LABEL_84:
    v19[1] = v44;
    LODWORD(v45) = 1;
    goto LABEL_83;
  }

LABEL_54:
  v42 = 95;
LABEL_99:
  *v9 = v16 + 1;
  v18[v16] = v42;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

void _swift_stdlib_reportFatalErrorInFile(const char *a1, int a2, const char *a3, int a4, const char *a5, int a6, int a7, int a8)
{
  v13 = 0;
  v10 = "";
  if (a4 > 0)
  {
    v10 = ": ";
  }

  swift_asprintf(&v13, "%.*s:%u: %.*s%s%.*s\n", a6, a5, a7, a2, a1, v10, a4, a3);
  v11 = v13;
  swift_reportError(a8, v13);
  free(v11);
  if (_swift_shouldReportFatalErrorsToDebugger())
  {
    v14 = 0;
    if (a4)
    {
      swift_asprintf(&v14, "%.*s: %.*s");
    }

    else
    {
      swift_asprintf(&v14, "%.*s");
    }

    v12 = v14;
    _swift_reportToDebugger(1, v14, 0);
    free(v12);
  }
}

void _swift_stdlib_reportFatalError(const char *a1, int a2, const char *a3, int a4, int a5)
{
  v9 = 0;
  swift_asprintf(&v9, "%.*s: %.*s\n", a2, a1, a4, a3);
  v7 = v9;
  swift_reportError(a5, v9);
  free(v7);
  if (_swift_shouldReportFatalErrorsToDebugger())
  {
    v10 = 0;
    if (a4)
    {
      swift_asprintf(&v10, "%.*s: %.*s");
    }

    else
    {
      swift_asprintf(&v10, "%.*s");
    }

    v8 = v10;
    _swift_reportToDebugger(1, v10, 0);
    free(v8);
  }
}

void _swift_stdlib_reportUnimplementedInitializerInFile(const char *a1, int a2, const char *a3, int a4, const char *a5, int a6, int a7, uint64_t a8, int a9)
{
  v10 = 0;
  swift_asprintf(&v10, "%.*s:%u: Fatal error: Use of unimplemented initializer '%.*s' for class '%.*s'\n", a6, a5, a7, a4, a3, a2, a1);
  v9 = v10;
  swift_reportError(a9, v10);

  free(v9);
}

void _swift_stdlib_reportUnimplementedInitializer(const char *a1, int a2, const char *a3, int a4, int a5)
{
  v7 = 0;
  swift_asprintf(&v7, "Fatal error: Use of unimplemented initializer '%.*s' for class '%.*s'\n", a4, a3, a2, a1);
  v6 = v7;
  swift_reportError(a5, v7);

  free(v6);
}

void *_swift_instantiateInertHeapObject(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  *result = v2;
  result[1] = 3;
  return result;
}

void _GLOBAL__sub_I_GlobalObjects_cpp()
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    _GLOBAL__sub_I_GlobalObjects_cpp_cold_1();
  }

  if (swift::runtime::environment::SWIFT_DETERMINISTIC_HASHING_variable == 1)
  {
    _swift_stdlib_Hashing_parameters = 0uLL;
    qword_1ED42CFC8 = 0;
    v0 = 1;
  }

  else
  {
    v1 = 0;
    __buf = 0;
    swift_stdlib_random(&__buf, 8uLL);
    swift_stdlib_random(&v1, 8uLL);
    v0 = 0;
    *&_swift_stdlib_Hashing_parameters = __buf;
    *(&_swift_stdlib_Hashing_parameters + 1) = v1;
  }

  LOBYTE(qword_1ED42CFC8) = v0;
}

char *swift_int64ToString(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 <= 0x1F && a4 > 9 || a2 <= 0x40 && a4 <= 9)
  {
    swift_int64ToString_cold_2();
  }

  if (!a4 || a4 >= 37)
  {
    swift_int64ToString_cold_1();
  }

  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  if (!a3)
  {
    v8 = 48;
    v6 = a1;
LABEL_27:
    *v6++ = v8;
    goto LABEL_28;
  }

  if (a4 == 10)
  {
    v6 = a1;
    do
    {
      *v6++ = (v5 % 0xA) | 0x30;
      v7 = v5 >= 0xA;
      v5 /= 0xAuLL;
    }

    while (v7);
  }

  else
  {
    if (a5)
    {
      v9 = 55;
    }

    else
    {
      v9 = 87;
    }

    v6 = a1;
    do
    {
      if (v5 % a4 >= 0xA)
      {
        v10 = v9 + v5 % a4;
      }

      else
      {
        v10 = (v5 % a4) | 0x30;
      }

      *v6++ = v10;
      v13 = a4 > v5;
      v5 /= a4;
    }

    while (!v13);
  }

  if (a3 < 0)
  {
    v8 = 45;
    goto LABEL_27;
  }

LABEL_28:
  v11 = v6 - 1;
  v12 = &v6[-a1];
  if (v12)
  {
    v13 = v11 > a1;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = a1 + 1;
    do
    {
      v15 = *(v14 - 1);
      *(v14 - 1) = *v11;
      *v11-- = v15;
      v7 = v14++ >= v11;
    }

    while (!v7);
  }

  return v12;
}

uint64_t swift_uint64ToString(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a2 <= 31 && a4 > 9 || a2 <= 63 && a4 <= 9)
  {
    swift_int64ToString_cold_2();
  }

  if (!a4 || a4 >= 37)
  {
    swift_int64ToString_cold_1();
  }

  if (a3)
  {
    if (a4 == 10)
    {
      v5 = a1;
      do
      {
        *v5++ = (a3 % 0xA) | 0x30;
        v6 = a3 >= 0xA;
        a3 /= 0xAuLL;
      }

      while (v6);
    }

    else
    {
      if (a5)
      {
        v7 = 55;
      }

      else
      {
        v7 = 87;
      }

      v5 = a1;
      do
      {
        if (a3 % a4 >= 0xA)
        {
          v8 = v7 + a3 % a4;
        }

        else
        {
          v8 = (a3 % a4) | 0x30;
        }

        *v5++ = v8;
        v9 = a4 > a3;
        a3 /= a4;
      }

      while (!v9);
    }
  }

  else
  {
    *a1 = 48;
    v5 = a1 + 1;
  }

  v10 = v5 - 1;
  if (v5 - 1 > a1)
  {
    v11 = a1 + 1;
    do
    {
      v12 = *(v11 - 1);
      *(v11 - 1) = *v10;
      *v10-- = v12;
      v6 = v11++ >= v10;
    }

    while (!v6);
  }

  return v5 - a1;
}

uint64_t swift_stdlib_readLine_stdin(char **__linep)
{
  __linecapp = 0;
  v2 = MEMORY[0x1E69E9850];
  do
  {
    v3 = getline(__linep, &__linecapp, *v2);
  }

  while (v3 < 0 && *__error() == 4);
  return v3;
}

char *_swift_stdlib_strtold_clocale(char *__s, long double *a2)
{
  v4 = *__s;
  if (v4 == 45 || (v5 = __s, v4 == 43))
  {
    v5 = (__s + 1);
    v4 = __s[1];
  }

  if ((v4 | 0x20) == 0x73 && (v5[1] | 0x20) == 0x6E && (v5[2] | 0x20) == 0x61 && (v5[3] | 0x20) == 0x6E && !v5[4])
  {
    *a2 = NAN;
    return &__s[strlen(__s)];
  }

  else
  {
    v7 = 0;
    *__error() = 0;
    *a2 = strtold_l(__s, &v7, 0);
    return v7;
  }
}

char *_swift_stdlib_strtod_clocale(char *__s, double *a2)
{
  v4 = *__s;
  if (v4 == 45 || (v5 = __s, v4 == 43))
  {
    v5 = (__s + 1);
    v4 = __s[1];
  }

  if ((v4 | 0x20) == 0x73 && (v5[1] | 0x20) == 0x6E && (v5[2] | 0x20) == 0x61 && (v5[3] | 0x20) == 0x6E && !v5[4])
  {
    *a2 = NAN;
    return &__s[strlen(__s)];
  }

  else
  {
    v7 = 0;
    *__error() = 0;
    *a2 = strtod_l(__s, &v7, 0);
    return v7;
  }
}

char *_swift_stdlib_strtof_clocale(char *__s, float *a2)
{
  v4 = *__s;
  if (v4 == 45 || (v5 = __s, v4 == 43))
  {
    v5 = (__s + 1);
    v4 = __s[1];
  }

  if ((v4 | 0x20) == 0x73 && (v5[1] | 0x20) == 0x6E && (v5[2] | 0x20) == 0x61 && (v5[3] | 0x20) == 0x6E && !v5[4])
  {
    *a2 = NAN;
    return &__s[strlen(__s)];
  }

  else
  {
    v7 = 0;
    *__error() = 0;
    *a2 = strtof_l(__s, &v7, 0);
    return v7;
  }
}

__int16 _swift_stdlib_strtof16_clocale@<H0>(char *a1@<X0>, _WORD *a2@<X1>)
{
  v9 = 0;
  _swift_stdlib_strtof_clocale(a1, &v9);
  _S0 = v9;
  __asm { FCVT            H0, S0 }

  *a2 = result;
  return result;
}

uint64_t _swift_stdlib_getCurrentStackBounds(void *a1, void *a2)
{
  v4 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v4);
  *a1 = &stackaddr_np[-pthread_get_stacksize_np(v4)];
  *a2 = stackaddr_np;
  return 1;
}

void *_swift_stdlib_threadLocalStorageGet()
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 808);
  if (!result)
  {
    v3 = 101;
    context[0] = &v3;
    context[1] = _swift_stdlib_threadLocalStorageGet::$_0::__invoke;
    if (_swift_stdlib_threadLocalStorageGet::token != -1)
    {
      dispatch_once_f(&_swift_stdlib_threadLocalStorageGet::token, context, swift::tls_init_once(long &,unsigned long,void (*)(void *))::{lambda(void *)#1}::__invoke);
    }

    result = _stdlib_createTLS();
    *(StatusReg + 808) = result;
  }

  return result;
}

uint64_t _swift_stdlib_getMphIdx(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 461845907 * ((380141568 * a1) | ((-862048943 * a1) >> 17));
  while (1)
  {
    v7 = *(a3 + 8 * v5);
    v8 = *(a5 + 2 * v5);
    HIDWORD(v9) = v6 ^ v5;
    LODWORD(v9) = v6 ^ v5;
    HIDWORD(v9) = (461845907 * ((380141568 * v8) | ((-862048943 * v8) >> 17))) ^ (5 * (v9 >> 19) - 430675100);
    LODWORD(v9) = HIDWORD(v9);
    v10 = -2048144789 * ((5 * (v9 >> 19) - 430675100) ^ ((5 * (v9 >> 19) - 430675100) >> 16) ^ 8);
    v11 = ((-1028477387 * (v10 ^ (v10 >> 13))) ^ ((-1028477387 * (v10 ^ (v10 >> 13))) >> 16)) % v8;
    v12 = *(v7 + 8 * (v11 >> 6));
    if ((v12 >> v11))
    {
      break;
    }

    if (a2 == ++v5)
    {
      return 0;
    }
  }

  v14 = *(*(a4 + 8 * v5) + ((v11 >> 8) & 0xFFFFFE));
  v15 = (v11 >> 6) & 0x3F8;
  if (v11 >> 6 != v15)
  {
    v16 = (v11 >> 6) & 7;
    v17 = (v11 >> 6) & 0x3F8;
    if (v16 <= 1)
    {
      goto LABEL_11;
    }

    v18 = 0;
    v19 = (v11 >> 6) & 1;
    v20 = v16 - v19;
    v17 = v15 + v20;
    v21 = v14;
    do
    {
      v21 = vadd_s32(v21, vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v7 + 8 * v15 + 8 * v18)))))));
      v18 += 2;
      v20 -= 2;
    }

    while (v20);
    LOWORD(v14) = vpadd_s32(v21, v21).u16[0];
    if (v19)
    {
LABEL_11:
      v22 = v17 + 1;
      do
      {
        LOWORD(v14) = v14 + vaddlv_u8(vcnt_s8(*(v7 + 8 * v17)));
        v17 = v22++;
      }

      while (v22 - (v11 >> 6) != 1);
    }
  }

  v23 = v14 + vaddlv_u8(vcnt_s8((v12 << -(v11 & 0x3F))));
  if ((v11 & 0x3F) == 0)
  {
    return v14;
  }

  return v23;
}

uint64_t _swift_stdlib_getScalarBitArrayIdx(unsigned int a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1 / 0x4400uLL;
  v4 = *a2;
  if (*a2 - 1 < v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = (a1 / 0x110uLL) & 0x3F;
  v6 = a2[v3 + 1];
  if (((v6 >> v5) & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = *(a3 + 2 * v3);
  if (v5)
  {
    v7 += vaddlv_u8(vcnt_s8((v6 << -v5)));
  }

  v8 = 5 * v7;
  v9 = &a2[5 * v7 + 1 + v4];
  v10 = *(v9 + 8 * ((a1 % 0x110) >> 6));
  if (((v10 >> (a1 % 0x110)) & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = (a1 % 0x110) & 0x3F;
  v12 = *(a3 + 2 * v4 + 2 * v8 + 2 * ((a1 % 0x110) >> 6));
  v13 = v12 + vaddlv_u8(vcnt_s8((v10 << -v11)));
  if (v11)
  {
    v12 = v13;
  }

  return (*(v9 + 32) >> 16) + v12;
}

uint64_t _swift_stdlib_getGraphemeBreakProperty(unsigned int a1)
{
  for (i = 1; i < 641; i = (2 * i) | 1)
  {
    while (1)
    {
      v2 = _swift_stdlib_graphemeBreakProperties[i];
      if ((v2 & 0x1FFFFF) <= a1)
      {
        break;
      }

      i *= 2;
      if (i >= 641)
      {
        return 255;
      }
    }

    v3 = v2 >> 29;
    if (v3 == 5)
    {
      v4 = 511;
    }

    else
    {
      v4 = 255;
    }

    if ((*&v4 & (v2 >> 21)) + (v2 & 0x1FFFFF) >= a1)
    {
      return v3;
    }
  }

  return 255;
}

uint64_t _swift_stdlib_getNormData(unsigned int a1)
{
  if (a1 < 0xC0)
  {
    return 0;
  }

  ScalarBitArrayIdx = _swift_stdlib_getScalarBitArrayIdx(a1, _swift_stdlib_normData, &_swift_stdlib_normData_ranks);
  if (ScalarBitArrayIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return _swift_stdlib_normData_data[_swift_stdlib_normData_data_indices[ScalarBitArrayIdx]];
  }
}

uint64_t _swift_stdlib_getComposition(unsigned int a1, int a2)
{
  v4 = *(&_swift_stdlib_nfc_comp_indices + _swift_stdlib_getMphIdx(a2, 4, &_swift_stdlib_nfc_comp_keys, &_swift_stdlib_nfc_comp_ranks, L"H@@@"));
  if ((*v4 & 0x1FFFFF) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (*v4 >> 21) - 1;
  if (*v4 >> 21 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 1;
  while (1)
  {
    v7 = v6 + ((v5 - v6) >> 1);
    v8 = v4[v7];
    v9 = v8 & 0x1FFFF;
    if ((v8 & 0x1FFFF) == a1)
    {
      break;
    }

    v10 = v7 - 1;
    if (v9 <= a1)
    {
      v10 = v5;
    }

    if (v9 < a1)
    {
      v6 = v7 + 1;
    }

    else
    {
      v5 = v10;
    }

    if (v5 < v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v12 = (v8 >> 17) & 0x3FFF;
  if (v8 < 0)
  {
    v12 = -v12;
  }

  return v12 + a1;
}

uint64_t _swift_stdlib_getBinaryProperties(unsigned int a1)
{
  v1 = 0;
  v2 = 5030;
  while (1)
  {
    v3 = v1 + (v2 - v1) / 2;
    v4 = v3;
    v5 = v3 == 5030 ? 1114111 : (_swift_stdlib_scalar_binProps[v3 + 1] & 0x1FFFFF) - 1;
    v6 = _swift_stdlib_scalar_binProps[v3];
    v7 = v6 & 0x1FFFFF;
    if ((v6 & 0x1FFFFF) <= a1 && v5 >= a1)
    {
      break;
    }

    v9 = v4 - 1;
    if (v7 <= a1)
    {
      v9 = v2;
    }

    if (v5 < a1)
    {
      v1 = v4 + 1;
    }

    else
    {
      v2 = v9;
    }

    if (v2 < v1)
    {
      return 0;
    }
  }

  return *(&_swift_stdlib_scalar_binProps_data + ((v6 >> 18) & 0x3FF8));
}

uint64_t _swift_stdlib_getNumericType(unsigned int a1)
{
  v1 = 0;
  v2 = 252;
  while (1)
  {
    v3 = v1 + (v2 - v1) / 2;
    v4 = _swift_stdlib_numeric_type[v3];
    v5 = v4 & 0x1FFFFF;
    v6 = (v4 & 0x1FFFFF) + (v4 >> 21);
    if ((v4 & 0x1FFFFF) <= a1 && v6 >= a1)
    {
      break;
    }

    v8 = v3 - 1;
    if (v5 <= a1)
    {
      v8 = v2;
    }

    if (v6 < a1)
    {
      v1 = v3 + 1;
    }

    else
    {
      v2 = v8;
    }

    if (v2 < v1)
    {
      return 255;
    }
  }

  return v4 >> 29;
}

char *_swift_stdlib_getNameAlias(unsigned int a1)
{
  ScalarBitArrayIdx = _swift_stdlib_getScalarBitArrayIdx(a1, _swift_stdlib_nameAlias, &_swift_stdlib_nameAlias_ranks);
  if (ScalarBitArrayIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return _swift_stdlib_nameAlias_data[ScalarBitArrayIdx];
  }
}

uint64_t _swift_stdlib_getMapping(unsigned int a1, int a2)
{
  ScalarBitArrayIdx = _swift_stdlib_getScalarBitArrayIdx(a1, _swift_stdlib_mappings, &_swift_stdlib_mappings_ranks);
  if (ScalarBitArrayIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = _swift_stdlib_mappings_data_indices[ScalarBitArrayIdx];
  if (a2)
  {
    if (a2 == 2)
    {
      v4 >>= 16;
    }

    else
    {
      if (a2 != 1)
      {
        return 0;
      }

      v4 >>= 8;
    }
  }

  if (v4 == 255)
  {
    return 0;
  }

  return _swift_stdlib_mappings_data[v4];
}

uint64_t _swift_stdlib_getSpecialMapping(unsigned int a1, int a2, void *a3)
{
  ScalarBitArrayIdx = _swift_stdlib_getScalarBitArrayIdx(a1, _swift_stdlib_special_mappings, &_swift_stdlib_special_mappings_ranks);
  if (ScalarBitArrayIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = &_swift_stdlib_special_mappings_data + _swift_stdlib_special_mappings_data_indices[ScalarBitArrayIdx];
  v9 = *v7;
  result = (v7 + 1);
  v8 = v9;
  v10 = (result + v9);
  v13 = *v10;
  v11 = v10 + 1;
  v12 = v13;
  if (a2 == 2)
  {
    result = &v11[v12 + 1];
    v8 = v11[v12];
  }

  else
  {
    if (a2 == 1)
    {
      *a3 = v12;
      return v11;
    }

    if (a2)
    {
      return 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t _swift_stdlib_getScalarName(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = _swift_stdlib_names_scalar_sets[a1 >> 7];
  if (v3 == 0xFFFF)
  {
    return 0;
  }

  v4 = a1 & 0x7F | (v3 << 7);
  v5 = _swift_stdlib_names_scalars[v4];
  if (a1 != 32 && !v5)
  {
    return 0;
  }

  if (v4 == 41215)
  {
    v7 = 227060;
  }

  else
  {
    v8 = &_swift_stdlib_names_scalars[v4 + 1];
    do
    {
      v9 = *v8++;
      v7 = v9;
    }

    while (!v9);
  }

  v10 = v7 - v5;
  if (!v10)
  {
    return -1;
  }

  v11 = 0;
  for (i = 0; ; i += 2)
  {
    v13 = _swift_stdlib_names[v11 + v5];
    if (v13 == 255)
    {
      v14 = _swift_stdlib_names[v5 + 1 + v11];
      v11 += 2;
      v13 = v14 | (_swift_stdlib_names[v11 + v5] << 8);
    }

    v15 = _swift_stdlib_word_indices[v13];
    v16 = _swift_stdlib_words[v15];
    if ((v16 & 0x80000000) == 0)
    {
      break;
    }

LABEL_22:
    result = i;
    if (i >= a3)
    {
      return result;
    }

    *(a2 + i) = v16 & 0x7F;
    if (i + 1 >= a3)
    {
      return i + 1;
    }

    *(a2 + result + 1) = 32;
    if (++v11 >= v10)
    {
      return result + 1;
    }
  }

  if (a3 <= i)
  {
    result = i;
  }

  else
  {
    result = a3;
  }

  v17 = result - i;
  v18 = (a2 + i);
  v19 = &_swift_stdlib_words[v15 + 1];
  while (v17)
  {
    *v18++ = v16;
    v20 = *v19++;
    LOBYTE(v16) = v20;
    --v17;
    ++i;
    if (v20 < 0)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t _swift_stdlib_getAge(unsigned int a1)
{
  v1 = 0;
  v2 = 1740;
  while (1)
  {
    v3 = v1 + (v2 - v1) / 2;
    v4 = _swift_stdlib_ages[v3];
    v5 = v4 & 0x1FFFFF;
    v6 = (v4 & 0x1FFFFF) + HIDWORD(v4);
    if ((v4 & 0x1FFFFF) <= a1 && v6 >= a1)
    {
      break;
    }

    v8 = v3 - 1;
    if (v5 <= a1)
    {
      v8 = v2;
    }

    if (v6 < a1)
    {
      v1 = v3 + 1;
    }

    else
    {
      v2 = v8;
    }

    if (v2 < v1)
    {
      return 0xFFFFLL;
    }
  }

  return _swift_stdlib_ages_data[(v4 >> 21)];
}

uint64_t _swift_stdlib_getGeneralCategory(unsigned int a1)
{
  v1 = 0;
  v2 = 4098;
  while (1)
  {
    v3 = v1 + (v2 - v1) / 2;
    v4 = _swift_stdlib_generalCategory[v3];
    v5 = v4 & 0x1FFFFF;
    v6 = (v4 & 0x1FFFFF) + HIDWORD(v4);
    if ((v4 & 0x1FFFFF) <= a1 && v6 >= a1)
    {
      break;
    }

    v8 = v3 - 1;
    if (v5 <= a1)
    {
      v8 = v2;
    }

    if (v6 < a1)
    {
      v1 = v3 + 1;
    }

    else
    {
      v2 = v8;
    }

    if (v2 < v1)
    {
      return 255;
    }
  }

  return (v4 >> 21);
}

uint64_t _swift_stdlib_getScript(unsigned int a1)
{
  v1 = 0;
  v2 = 1708;
  while (1)
  {
    v3 = v1 + (v2 - v1) / 2;
    v4 = v3;
    v5 = v3 == 1708 ? 1114111 : (_swift_stdlib_scripts[v3 + 1] & 0x1FFFFF) - 1;
    v6 = _swift_stdlib_scripts[v3];
    if ((v6 & 0x1FFFFF) <= a1 && v5 >= a1)
    {
      break;
    }

    if ((v6 & 0x1FFFFF) <= a1)
    {
      v8 = v2;
    }

    else
    {
      v8 = v3 - 1;
    }

    if (v5 < a1)
    {
      v1 = v4 + 1;
    }

    else
    {
      v2 = v8;
    }

    if (v2 < v1)
    {
      return 255;
    }
  }

  return (v6 >> 21);
}

char *_swift_stdlib_getScriptExtensions(unsigned int a1, _BYTE *a2)
{
  ScalarBitArrayIdx = _swift_stdlib_getScalarBitArrayIdx(a1, _swift_stdlib_script_extensions, &_swift_stdlib_script_extensions_ranks);
  if (ScalarBitArrayIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = _swift_stdlib_script_extensions_data_indices[ScalarBitArrayIdx];
  *a2 = v5 >> 11;
  return &_swift_stdlib_script_extensions_data + (v5 & 0x7FF);
}

uint64_t _swift_stdlib_getCaseMapping(int a1, int *a2)
{
  v3 = a1;
  result = _swift_stdlib_getMphIdx(a1, 10, &_swift_stdlib_case_keys, &_swift_stdlib_case_ranks, &_swift_stdlib_case_sizes);
  v5 = _swift_stdlib_case[result];
  if ((_swift_stdlib_case[result] & 0x1FFFFF) != v3)
  {
    goto LABEL_4;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v3 -= v5 >> 21;
LABEL_4:
    *a2 = v3;
    return result;
  }

  result = _swift_stdlib_getMphIdx(v3, 5, &_swift_stdlib_case_full_keys, &_swift_stdlib_case_full_ranks, L"hF@@@");
  v6 = _swift_stdlib_case_full[result];
  v7 = v6 >> 62;
  do
  {
    v8 = v6;
    if ((v6 & 0x10000) == 0)
    {
      v8 = -v6;
    }

    v6 >>= 17;
    *a2++ = v8 + v3;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t _swift_stdlib_getWordBreakProperty(unsigned int a1)
{
  v1 = 1;
  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = _swift_stdlib_words[v1];
      if ((v3 & 0x1FFFFF) <= a1)
      {
        break;
      }

      v1 = 2 * v2;
      if (2 * v2 >= 1155)
      {
        return 255;
      }
    }

    if ((v3 & 0x1FFFFF) + (v3 >> 21) - 1 >= a1)
    {
      break;
    }

    v1 = (2 * v2) | 1;
    if (v1 >= 1155)
    {
      return 255;
    }
  }

  return _swift_stdlib_words_data[v2];
}

void _swift_stdlib_operatingSystemVersion(void *a1@<X8>)
{
  if (qword_1EA79EBE8 != -1)
  {
    v3 = a1;
    _swift_stdlib_operatingSystemVersion_cold_1();
    a1 = v3;
  }

  v1 = dword_1EA79EBE0;
  v2 = _swift_stdlib_operatingSystemVersion::$_0::operator() const(void)::TheLazy >> 32;
  *a1 = _swift_stdlib_operatingSystemVersion::$_0::operator() const(void)::TheLazy;
  a1[1] = v2;
  a1[2] = v1;
}

uint64_t _swift_stdlib_operatingSystemVersion::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  result = os_system_version_get_current_version();
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t _swift_stdlib_NSStringCStringUsingEncodingTrampoline(void *a1, uint64_t a2)
{
  MethodImplementation = class_getMethodImplementation([a1 superclass], sel_cStringUsingEncoding_);

  return (MethodImplementation)(a1, sel_cStringUsingEncoding_, a2);
}

uint64_t _swift_stdlib_NSStringGetCStringTrampoline(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MethodImplementation = class_getMethodImplementation([a1 superclass], sel_getCString_maxLength_encoding_);

  return (MethodImplementation)(a1, sel_getCString_maxLength_encoding_, a2, a3, a4);
}

uint64_t _swift_stdlib_NSStringLengthOfBytesInEncodingTrampoline(void *a1, uint64_t a2)
{
  MethodImplementation = class_getMethodImplementation([a1 superclass], sel_lengthOfBytesUsingEncoding_);

  return (MethodImplementation)(a1, sel_lengthOfBytesUsingEncoding_, a2);
}

uint64_t _swift_stdlib_dyld_is_objc_constant_string()
{
  if (MEMORY[0x1EEE9AC28])
  {
    return _dyld_is_objc_constant();
  }

  else
  {
    return 0;
  }
}

uint64_t _swift_stdlib_CreateIndirectTaggedPointerString()
{
  swift_once(&lookUpIndirectTaggedStringCreationOnce, lookUpIndirectTaggedStringCreationOnceImpl, 0);
  result = indirectTaggedStringClass;
  if (indirectTaggedStringClass)
  {
    v1 = createIndirectTaggedString;

    return v1();
  }

  return result;
}

objc_class *lookUpIndirectTaggedStringCreationOnceImpl(void *a1)
{
  result = objc_lookUpClass("NSIndirectTaggedPointerString");
  if (result)
  {
    v2 = result;
    result = class_getClassMethod(result, sel_newIndirectTaggedNSStringWithConstantNullTerminatedASCIIBytes__length__);
    if (result)
    {
      result = method_getImplementation(result);
      createIndirectTaggedString = result;
      indirectTaggedStringClass = v2;
    }
  }

  return result;
}

__SwiftNull *_swift_Foundation_getOptionalNilSentinelObject(unint64_t *a1)
{
  if (*a1 == 514)
  {
    v1 = a1;
    LODWORD(v2) = 0;
    do
    {
      TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v1);
      result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
      v6 = *TypeContextDescriptor;
      v7 = *TypeContextDescriptor & 0x1F;
      if ((v7 - 17) < 2)
      {
        ResilientImmediateMembersOffset = 2;
      }

      else
      {
        if (v7 != 16)
        {
          __break(1u);
          return result;
        }

        if ((v6 & 0x20000000) != 0)
        {
          ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(TypeContextDescriptor);
        }

        else
        {
          if ((v6 & 0x10000000) != 0)
          {
            v8 = 0;
            v9 = 6;
          }

          else
          {
            v8 = TypeContextDescriptor[7];
            v9 = 8;
          }

          ResilientImmediateMembersOffset = v8 - TypeContextDescriptor[v9];
        }
      }

      v1 = v1[ResilientImmediateMembersOffset];
      v2 = (v2 + 1);
    }

    while (*v1 == 514);
    if (!v2)
    {
      goto LABEL_21;
    }

    if (qword_1EA79EC10 != -1)
    {
      _swift_Foundation_getOptionalNilSentinelObject_cold_1();
    }

    v10 = (v2 - 1);
    os_unfair_lock_lock(&unk_1EA79EC08);
    {
      os_unfair_lock_unlock(&unk_1EA79EC08);
      os_unfair_lock_lock(&unk_1EA79EC08);
      if (v13 <= v10)
      {
        if (v2 <= v13)
        {
          if (v2 < v13)
          {
          }
        }

        else
        {
        }
      }

      v11 = *(v12 + 8 * v10);
      if (!v11)
      {
        v11 = objc_alloc_init(__SwiftNull);
        v11->depth = v2 + 1;
        *(v12 + 8 * v10) = v11;
      }
    }

    v15 = v11;
    os_unfair_lock_unlock(&unk_1EA79EC08);
    v14 = v15;
  }

  else
  {
LABEL_21:
    if (qword_1ED426628 != -1)
    {
      _swift_Foundation_getOptionalNilSentinelObject_cold_2();
    }
  }

  return v14;
}

double swift::Lazy<anonymous namespace::SwiftNullSentinelCache>::defaultInitCallback(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t anonymous namespace::getSentinelForDepth(unsigned int)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  result = [(objc_class *)objc_getClass("NSNull") null];
  *a1 = result;
  return result;
}

void std::vector<objc_object *>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t _swift_stdlib_NSObject_isKindOfClass(int a1, char *name)
{
  objc_lookUpClass(name);

  return objc_opt_isKindOfClass();
}

uint64_t swift_stdlib_NSStringHashValue(void *a1, char a2)
{
  if (a2)
  {

    return [a1 hash];
  }

  else
  {
    v4 = [a1 decomposedStringWithCanonicalMapping];
    v5 = [v4 hash];

    return v5;
  }
}

uint64_t swift_stdlib_NSStringHashValuePointer(void *a1, char a2)
{
  if (a2)
  {

    return [a1 hash];
  }

  else
  {
    v4 = [a1 decomposedStringWithCanonicalMapping];
    v5 = [v4 hash];

    return v5;
  }
}

uint64_t swift_stdlib_NSObject_isEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:{a2, v2, v3}];
  }
}

objc_class *swift_stdlib_connectNSBaseClasses()
{
  result = objc_lookUpClass("NSArray");
  if (result)
  {
    v1 = result;
    result = objc_lookUpClass("__SwiftNativeNSArrayBase");
    if (result)
    {
      class_setSuperclass(result, v1);
      result = objc_lookUpClass("NSMutableArray");
      if (result)
      {
        v2 = result;
        result = objc_lookUpClass("__SwiftNativeNSMutableArrayBase");
        if (result)
        {
          class_setSuperclass(result, v2);
          result = objc_lookUpClass("NSDictionary");
          if (result)
          {
            v3 = result;
            result = objc_lookUpClass("__SwiftNativeNSDictionaryBase");
            if (result)
            {
              class_setSuperclass(result, v3);
              result = objc_lookUpClass("NSSet");
              if (result)
              {
                v4 = result;
                result = objc_lookUpClass("__SwiftNativeNSSetBase");
                if (result)
                {
                  class_setSuperclass(result, v4);
                  result = objc_lookUpClass("NSString");
                  if (result)
                  {
                    v5 = result;
                    result = objc_lookUpClass("__SwiftNativeNSStringBase");
                    if (result)
                    {
                      class_setSuperclass(result, v5);
                      result = objc_lookUpClass("NSEnumerator");
                      if (result)
                      {
                        v6 = result;
                        result = objc_lookUpClass("__SwiftNativeNSEnumeratorBase");
                        if (result)
                        {
                          class_setSuperclass(result, v6);
                          return 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t min<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = (*(a4 + 16))(a2, a1);
  v10 = *(*(a3 - 8) + 16);
  if (v9)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  return v10(a5, v11, a3);
}

Swift::Int min<A>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X8>)
{
  v45 = a4;
  v43 = a3;
  v10 = *(a5 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - v15;
  v38 = v17;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  v44 = v20;
  v21 = v20 + 16;
  v22 = *(v20 + 16);
  if (v22(v23, a1, v24, v20))
  {
    v25 = a2;
  }

  else
  {
    v25 = a1;
  }

  v26 = *(v10 + 16);
  v26(v19, v25, a5);
  v41 = v22;
  v42 = v21;
  v27 = v22(v43, v19, a5, v44);
  v40 = v10 + 16;
  if (v27)
  {
    (*(v10 + 8))(v19, a5);
    v26(a6, v43, a5);
  }

  else
  {
    (*(v10 + 32))(a6, v19, a5);
  }

  v28 = v26;
  result = Array._getCount()();
  v43 = result;
  if (result)
  {
    if (v43 < 1)
    {
      __break(1u);
LABEL_21:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v30 = 0;
    v39 = v45 & 0xC000000000000001;
    v31 = (v10 + 32);
    do
    {
      if (_swift_isClassOrObjCExistentialType(a5, a5) && v39)
      {
        v36 = _ArrayBuffer._getElementSlowPath(_:)(v30, v45, a5);
        if (v38 != 8)
        {
          goto LABEL_21;
        }

        v46 = v36;
        v37 = v36;
        v32 = v28;
        v28(v16, &v46, a5);
        swift_unknownObjectRelease(v37);
      }

      else
      {
        v32 = v28;
        v28(v16, v45 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, a5);
      }

      v33 = *v31;
      (*v31)(v13, v16, a5);
      v34 = v41(v13, a6, a5, v44);
      v35 = *(v10 + 8);
      if (v34)
      {
        v35(a6, a5);
        result = (v33)(a6, v13, a5);
      }

      else
      {
        result = (v35)(v13, a5);
      }

      ++v30;
      v28 = v32;
    }

    while (v43 != v30);
  }

  return result;
}

uint64_t Collection<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(a1 - 8);
  (*(v10 + 16))(a3, v3, a1);
  v6 = *(a2 + 64);
  type metadata accessor for IndexingIterator(0, a1, a2, v7);
  v6(a1, a2);
  v8 = *(v10 + 8);

  return v8(v3, a1);
}

uint64_t IndexingIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v13 = *(v4 + 36);
  (*(v7 + 72))(v6, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v6, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  LOBYTE(v4) = (*(*(AssociatedConformanceWitness + 8) + 8))(v3 + v13, v12, v9);
  (*(v10 + 8))(v12, v9);
  if (v4)
  {
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    v17 = (*(v7 + 80))(v23, v3 + v13, v6, v7);
    v19 = v18;
    swift_getAssociatedTypeWitness(0, *(v7 + 8), v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v21 = v20;
    v22 = *(v20 - 8);
    (*(v22 + 16))(a2, v19, v20);
    v17(v23, 0);
    (*(v7 + 192))(v3 + v13, v6, v7);
    return (*(v22 + 56))(a2, 0, 1, v21);
  }
}

uint64_t max<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = (*(a4 + 32))(a2, a1);
  v10 = *(*(a3 - 8) + 16);
  if (v9)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  return v10(a5, v11, a3);
}

Swift::Int max<A>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X8>)
{
  v45 = a4;
  v43 = a3;
  v10 = *(a5 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - v15;
  v38 = v17;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  v44 = v20;
  v21 = v20 + 32;
  v22 = *(v20 + 32);
  if (v22(v23, a1, v24, v20))
  {
    v25 = a2;
  }

  else
  {
    v25 = a1;
  }

  v26 = *(v10 + 16);
  v26(v19, v25, a5);
  v41 = v22;
  v42 = v21;
  v27 = v22(v43, v19, a5, v44);
  v40 = v10 + 16;
  if (v27)
  {
    (*(v10 + 8))(v19, a5);
    v26(a6, v43, a5);
  }

  else
  {
    (*(v10 + 32))(a6, v19, a5);
  }

  v28 = v26;
  result = Array._getCount()();
  v43 = result;
  if (result)
  {
    if (v43 < 1)
    {
      __break(1u);
LABEL_21:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v30 = 0;
    v39 = v45 & 0xC000000000000001;
    v31 = (v10 + 32);
    do
    {
      if (_swift_isClassOrObjCExistentialType(a5, a5) && v39)
      {
        v36 = _ArrayBuffer._getElementSlowPath(_:)(v30, v45, a5);
        if (v38 != 8)
        {
          goto LABEL_21;
        }

        v46 = v36;
        v37 = v36;
        v32 = v28;
        v28(v16, &v46, a5);
        swift_unknownObjectRelease(v37);
      }

      else
      {
        v32 = v28;
        v28(v16, v45 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, a5);
      }

      v33 = *v31;
      (*v31)(v13, v16, a5);
      v34 = v41(v13, a6, a5, v44);
      v35 = *(v10 + 8);
      if (v34)
      {
        v35(a6, a5);
        result = (v33)(a6, v13, a5);
      }

      else
      {
        result = (v35)(v13, a5);
      }

      ++v30;
      v28 = v32;
    }

    while (v43 != v30);
  }

  return result;
}

uint64_t _ArrayBody._storage.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

Swift::_ArrayBody __swiftcall _ArrayBody.init(count:capacity:elementTypeIsBridgedVerbatim:)(Swift::Int count, Swift::Int capacity, Swift::Bool elementTypeIsBridgedVerbatim)
{
  v3 = elementTypeIsBridgedVerbatim | (2 * capacity);
  result._storage._capacityAndFlags = v3;
  result._storage.count = count;
  return result;
}

uint64_t Int.init(_builtinIntegerLiteral:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 8 <= 0x40)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t UInt.init(_builtinIntegerLiteral:)(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 9 <= 0x20 && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

uint64_t FixedWidthInteger.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((*(a4 + 56))(a2, a4) <= 64)
  {
    v14 = (*(a5 + 120))(a3, a5);
    (*(*(a3 - 1) + 8))(a1, a3);
    return (*(a4 + 136))(v14, a2, a4);
  }

  else
  {
    static FixedWidthInteger._truncatingInit<A>(_:)(a1, a2, a3, a4, a5, a6);
    v12 = *(*(a3 - 1) + 8);

    return v12(a1, a3);
  }
}

Swift::_ArrayBody __swiftcall _ArrayBody.init()()
{
  v0 = 0;
  v1 = 0;
  result._storage._capacityAndFlags = v1;
  result._storage.count = v0;
  return result;
}

uint64_t (*_ArrayBody.count.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

uint64_t SignedInteger<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v129 = a6;
  v132 = *(a4 + 8);
  v11 = *(*(v132 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v121 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v117 - v13;
  v119 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v119, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v118 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v117 = &v117 - v16;
  v127 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v126 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v128 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v124 = &v117 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v117 - v24;
  v130 = *(a5 + 64);
  v131 = a5 + 64;
  v26 = v130(a3, a5);
  v27 = *(a5 + 128);
  v133 = v27;
  v134 = a5 + 128;
  v125 = v19;
  if (v26)
  {
    v28 = v133(a3, a5);
    v29 = (*(a4 + 56))(a2, a4);
    v27 = v133;
    if (v29 < v28)
    {
      v122 = a1;
      v123 = v11;
      (*(a4 + 72))(a2, a4);
      v30 = v130;
      v31 = v130(a3, a5);
      v32 = v132;
      if (((v31 ^ (*(v132 + 64))(a2, v132)) & 1) == 0)
      {
        v39 = v122;
        v40 = v133(a3, a5);
        if (v40 >= (*(v32 + 128))(a2, v32))
        {
          v53 = v126;
          (*(a5 + 96))(v25, a2, v32, a3, a5);
          v54 = (*(*(*(a5 + 32) + 8) + 16))(v39, v53, a3);
          (*(v127 + 8))(v53, a3);
          a1 = v39;
          v27 = v133;
          v11 = v123;
          if (v54)
          {
            goto LABEL_47;
          }

          goto LABEL_19;
        }

        v41 = v126;
        (*(v127 + 16))(v126, v39, a3);
        v42 = v124;
        (*(v32 + 96))(v41, a3, a5, a2, v32);
        v38 = (*(*(*(v32 + 32) + 8) + 16))(v42, v25, a2);
        v43 = *(v125 + 8);
        v44 = v42;
        v11 = v123;
        v43(v44, a2);
        v43(v25, a2);
        a1 = v122;
        goto LABEL_18;
      }

      v33 = v30(a3, a5);
      v34 = v133(a3, a5);
      v35 = (*(v32 + 128))(a2, v32);
      if (v33)
      {
        v36 = v125;
        v11 = v123;
        if (v35 < v34)
        {
          v37 = v126;
          (*(a5 + 96))(v25, a2, v132, a3, a5);
          a1 = v122;
          v38 = (*(*(*(a5 + 32) + 8) + 16))(v122, v37, a3);
          (*(v127 + 8))(v37, a3);
          goto LABEL_18;
        }

        v55 = v118;
        v56 = v119;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v119, a3, v118, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v58 = v117;
        (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v55, AssociatedConformanceWitness);
        v59 = v126;
        (v56[3])(v58, a3, v56);
        LOBYTE(v55) = (*(*(*(a5 + 32) + 8) + 16))(v122, v59, a3);
        v60 = v127;
        (*(v127 + 8))(v59, a3);
        v61 = v132;
        if (v55)
        {
          (*(v36 + 8))(v25, a2);
          goto LABEL_47;
        }

        (*(v60 + 16))(v59, v122, a3);
        v62 = v124;
        (*(v61 + 96))(v59, a3, a5, a2, v61);
        v38 = (*(*(*(v61 + 32) + 8) + 16))(v62, v25, a2);
        v63 = *(v36 + 8);
        v63(v62, a2);
        v63(v25, a2);
        a1 = v122;
      }

      else
      {
        v45 = v125;
        v46 = v123;
        if (v34 < v35)
        {
          v47 = v126;
          v48 = v122;
          (*(v127 + 16))(v126, v122, a3);
          v49 = v132;
          v50 = v124;
          (*(v132 + 96))(v47, a3, a5, a2, v132);
          v38 = (*(*(*(v49 + 32) + 8) + 16))(v50, v25, a2);
          v51 = *(v125 + 8);
          v52 = v50;
          v11 = v123;
          v51(v52, a2);
          v51(v25, a2);
          a1 = v48;
          goto LABEL_18;
        }

        v64 = v121;
        v65 = swift_getAssociatedConformanceWitness(v123, a2, v121, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v66 = v120;
        (*(v65 + 8))(&unk_18071E0A8, 256, v64, v65);
        v67 = *(v46 + 3);
        v68 = v46;
        v69 = v124;
        v67(v66, a2, v68);
        LOBYTE(v64) = (*(*(*(v132 + 32) + 8) + 40))(v25, v69, a2);
        v70 = *(v45 + 8);
        v70(v69, a2);
        if ((v64 & 1) == 0)
        {
          v70(v25, a2);
          a1 = v122;
          v11 = v123;
          v72 = v133(a3, a5);
          goto LABEL_20;
        }

        v71 = v126;
        (*(a5 + 96))(v25, a2, v132, a3, a5);
        a1 = v122;
        v38 = (*(*(*(a5 + 32) + 8) + 16))(v122, v71, a3);
        (*(v127 + 8))(v71, a3);
      }

      v11 = v123;
LABEL_18:
      v27 = v133;
      if (v38)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_19:
  v72 = v27(a3, a5);
LABEL_20:
  v73 = a1;
  v74 = *(a4 + 56);
  if (v74(a2, a4) < v72 || (v88 = v133(a3, a5), v88 == v74(a2, a4)) && (v130(a3, a5) & 1) == 0)
  {
    v123 = v11;
    v75 = v128;
    (*(a4 + 64))(a2, a4);
    v76 = v132;
    v77 = *(v132 + 64);
    v78 = v77(a2, v132);
    if ((v78 ^ v130(a3, a5)))
    {
      v79 = v77(a2, v76);
      v80 = (*(v76 + 128))(a2, v76);
      v81 = v73;
      v82 = v133(a3, a5);
      if (v79)
      {
        v83 = v125;
        v84 = v126;
        v122 = v81;
        if (v82 < v80)
        {
          (*(v127 + 16))(v126, v81, a3);
          v85 = v124;
          (*(v76 + 96))(v84, a3, a5, a2, v76);
          v86 = v128;
          v87 = (*(*(*(v76 + 32) + 8) + 16))(v128, v85, a2);
          goto LABEL_40;
        }

        v96 = v123;
        v97 = v121;
        v98 = swift_getAssociatedConformanceWitness(v123, a2, v121, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v99 = v120;
        (*(v98 + 8))(&unk_18071E0A8, 256, v97, v98);
        v100 = v124;
        (*(v96 + 3))(v99, a2, v96);
        v101 = v128;
        LOBYTE(v97) = (*(*(*(v76 + 32) + 8) + 16))(v128, v100, a2);
        v102 = *(v83 + 8);
        v102(v100, a2);
        if (v97)
        {
          v102(v101, a2);
        }

        else
        {
          (*(a5 + 96))(v101, a2, v76, a3, a5);
          v103 = v122;
          v104 = (*(*(*(a5 + 32) + 8) + 16))(v84, v122, a3);
          (*(v127 + 8))(v84, a3);
          v73 = v103;
          if ((v104 & 1) == 0)
          {
            return (*(v132 + 96))(v73, a3, a5, a2);
          }
        }

LABEL_47:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v83 = v125;
      v92 = v126;
      if (v80 >= v82)
      {
        v105 = v118;
        v106 = v119;
        v107 = swift_getAssociatedConformanceWitness(v119, a3, v118, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v108 = v81;
        v109 = v117;
        (*(v107 + 8))(&unk_18071E0A8, 256, v105, v107);
        v110 = v109;
        v111 = v108;
        (v106[3])(v110, a3, v106);
        LOBYTE(v105) = (*(*(*(a5 + 32) + 8) + 40))(v108, v92, a3);
        v112 = v127;
        (*(v127 + 8))(v92, a3);
        v86 = v128;
        if ((v105 & 1) == 0)
        {
          (*(v83 + 8))(v128, a2);
          v73 = v111;
          return (*(v132 + 96))(v73, a3, a5, a2);
        }

        (*(v112 + 16))(v92, v111, a3);
        v113 = *(v76 + 96);
        v122 = v111;
        v85 = v124;
        v113(v92, a3, a5, a2, v76);
        v87 = (*(*(*(v76 + 32) + 8) + 16))(v86, v85, a2);
LABEL_40:
        v114 = v87;
        v115 = *(v83 + 8);
        v115(v85, a2);
        v115(v86, a2);
        v73 = v122;
        if ((v114 & 1) == 0)
        {
          return (*(v132 + 96))(v73, a3, a5, a2);
        }

        goto LABEL_47;
      }

      (*(a5 + 96))(v128, a2, v76, a3, a5);
      v91 = (*(*(*(a5 + 32) + 8) + 16))(v92, v81, a3);
      (*(v127 + 8))(v92, a3);
    }

    else
    {
      v89 = (*(v76 + 128))(a2, v76);
      v81 = v73;
      if (v89 >= v133(a3, a5))
      {
        v93 = v126;
        (*(v127 + 16))(v126, v73, a3);
        v94 = v124;
        (*(v76 + 96))(v93, a3, a5, a2, v76);
        v91 = (*(*(*(v76 + 32) + 8) + 16))(v75, v94, a2);
        v95 = *(v125 + 8);
        v95(v94, a2);
        v95(v75, a2);
      }

      else
      {
        v90 = v126;
        (*(a5 + 96))(v75, a2, v76, a3, a5);
        v91 = (*(*(*(a5 + 32) + 8) + 16))(v90, v73, a3);
        (*(v127 + 8))(v90, a3);
      }
    }

    v73 = v81;
    if ((v91 & 1) == 0)
    {
      return (*(v132 + 96))(v73, a3, a5, a2);
    }

    goto LABEL_47;
  }

  return (*(v132 + 96))(v73, a3, a5, a2);
}

uint64_t static FixedWidthInteger.~ prefix(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v24 = a1;
  v25 = a4;
  v5 = *(*(*(a3 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v5, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v28 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v19 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v23 = *(AssociatedConformanceWitness + 8);
  v23(&unk_18071E0A8, 256, v7, AssociatedConformanceWitness);
  v22 = v5;
  v21 = *(v5 + 24);
  v21(v10, a2, v5);
  v20 = *(v27 + 88);
  v20(v26, v24, a2);
  v16 = *(v28 + 8);
  v28 += 8;
  v16(v13, a2);
  v23(&qword_1806729C0, 512, v7, AssociatedConformanceWitness);
  v21(v10, a2, v22);
  v17 = v26;
  (v20)(v25, v13, a2, v27);
  v16(v13, a2);
  return (v16)(v17, a2);
}

uint64_t (*_ArrayBody.elementTypeIsBridgedVerbatim.modify(uint64_t a1))(uint64_t result)
{
  v2 = *(v1 + 8);
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2 & 1;
  return _ArrayBody.elementTypeIsBridgedVerbatim.modify;
}

void *(*_ArrayBody._capacityAndFlags.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return _ArrayBody._capacityAndFlags.modify;
}

uint64_t _ArrayBuffer.downcast<A>(toBufferWithDeferredTypeCheckOf:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a3, a3);
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!isClassOrObjCExistentialType)
  {
    v5 = a2;
  }

  return v5 | 1;
}

BOOL _ArrayBuffer.needsElementTypeCheck.getter(uint64_t a1, uint64_t *a2)
{
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a2, a2);
  result = 0;
  if (isClassOrObjCExistentialType && (a1 & 0xC000000000000001) != 0)
  {
    return swift_dynamicCastMetatype(&unk_1EEEAC710, a2) == 0;
  }

  return result;
}

uint64_t static Bool.&& infix(_:_:)(char a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    return a2() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for _ArrayBufferProtocol.init(_buffer:shiftedToStartIndex:) in conformance _ArrayBuffer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = _swift_displayCrashMessage(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t _ArrayBufferProtocol.init(copying:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 8) + 8);
  v11 = *(v10 + 112);
  v13 = v11(v12, v10);
  v14 = v11(a2, v10);
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    swift_getAssociatedTypeWitness(0, *(v10 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
    v17 = v16;
    v18 = getContiguousArrayStorageType<A>(for:)(v16, v16);
    v19 = *(*(v17 - 1) + 72);
    v20 = *(*(v17 - 1) + 80);
    v21 = swift_allocObject(v18, (((v20 + *(v18 + 48)) & ~v20) + v19 * v15), v20 | *(v18 + 52));
    v22 = _swift_stdlib_malloc_size(v21);
    if (!v19 || ((v23 = v22 - ((v20 + 32) & ~v20), v23 == 0x8000000000000000) ? (v24 = v19 == -1) : (v24 = 0), v24))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25 = v23 / v19;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v17, v17);
    v21[2] = v13;
    v21[3] = (isClassOrObjCExistentialType | (2 * v25));
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  (*(v7 + 16))(v31[0], a1, a2);
  (*(v10 + 96))(v32, a2, v10);
  v27 = v32[0];
  v28 = v32[1];
  swift_getAssociatedTypeWitness(0, *(v10 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(a3 + 48))(v27, v28, v21 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80)), a2, a3);
  (*(v10 + 64))(v32, a2, v10);
  (*(v7 + 8))(a1, a2);
  return (*(a3 + 32))(v21, v32[0], a2, a3);
}

uint64_t specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    if (a4 >= 0)
    {
      a4 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v7 = specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(result, a2, a3, a4);
    v4;
    return v7;
  }

  else
  {
    v6 = a2 - result;
    if (__OFSUB__(a2, result))
    {
      __break(1u);
    }

    else
    {
      specialized UnsafeMutablePointer.initialize(from:count:)(((a4 & 0xFFFFFFFFFFFFFF8) + 8 * result + 32), v6, a3);
      v4;
      return &a3[8 * v6];
    }
  }

  return result;
}

char *_ArrayBuffer._copyContents(subRange:initializing:)(Swift::Int a1, Swift::Int a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2;
  _ArrayBuffer._typeCheck(_:)(a1, a2, a4, a5);
  if (!_swift_isClassOrObjCExistentialType(a5, a5) || (a4 & 0x8000000000000000) == 0 && (a4 & 0x4000000000000000) == 0)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a5, a5);
    v11 = __OFSUB__(v8, a1);
    v8 -= a1;
    if (!v11)
    {
      v12 = a4 & 0xFFFFFFFFFFFFFF8;
      v13 = *(a5 - 1);
      if (!isClassOrObjCExistentialType)
      {
        v12 = a4;
      }

      v14 = *(v13 + 72);
      UnsafeMutablePointer.initialize(from:count:)((v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * a1), v8, a3, a5);
      a4;
      return &a3[v14 * v8];
    }

    __break(1u);
  }

  if (a4 < 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = (a4 & 0xFFFFFFFFFFFFFF8);
  }

  swift_unknownObjectRetain(v16);
  a4;
  v17 = specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(a1, v8, a3, v16);
  swift_unknownObjectRelease(v16);
  return v17;
}

uint64_t _ArrayBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
  v6 = *v2;
  if (isClassOrObjCExistentialType)
  {
    v7 = 0;
    if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      return v7;
    }

    if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (!swift_isUniquelyReferenced_nonNull_native(v6))
  {
    return 0;
  }

  v8 = *v2;
  if (_swift_isClassOrObjCExistentialType(v4, v4))
  {
    v7 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = v8;
  }

  if (a1 > *(v7 + 24) >> 1)
  {
    return 0;
  }

  v8;
  return v7;
}

uint64_t _ArrayBuffer.requestNativeBuffer()(unint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    v4 = 0;
    if ((a1 & 0x8000000000000000) == 0 && (a1 & 0x4000000000000000) == 0)
    {
      a1;
      if (_swift_isClassOrObjCExistentialType(a2, a2))
      {
        return a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        return a1;
      }
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a2, a2))
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v4 = a1;
    }

    a1;
  }

  return v4;
}

uint64_t _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, int **a8)
{
  v74 = a4;
  v80 = a3;
  v81 = a1;
  v79 = *(*(a7 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v79[1], a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = v13;
  v67 = *(v13 - 1);
  v15 = v67;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v66 - v16;
  v83 = a8;
  v73 = a6;
  swift_getAssociatedTypeWitness(0, a8, a6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v70 = *(v17 - 8);
  v71 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v66 - v20;
  v21 = a5;
  v22 = a7;
  v23 = (*(a7 + 160))(a5, a7);
  v24 = *(v15 + 72);
  v25 = a2 - v81;
  if (__OFSUB__(a2, v81))
  {
    __break(1u);
LABEL_19:
    LODWORD(v64) = 0;
    v63 = 1183;
    LOBYTE(v62) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 < 0)
  {
    goto LABEL_19;
  }

  v26 = v23;
  v27 = a2;
  v28 = v23 + v24 * v81;
  swift_arrayDestroy(v28, a2 - v81, v14);
  v30 = v24;
  v31 = v80;
  v32 = v80 - v25;
  if (__OFSUB__(v80, v25))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v81 = v30;
  v33 = v30 * v80;
  v72 = (v28 + v30 * v80);
  v34 = v14;
  if (!v32)
  {
    goto LABEL_8;
  }

  v35 = (v79[14])(v21);
  if (__OFSUB__(v35, v27))
  {
    goto LABEL_21;
  }

  UnsafeMutablePointer.moveInitialize(from:count:)((v26 + v81 * v27), v35 - v27, v72, v14);
  v36 = (*(v22 + 136))(v84, v21, v22);
  if (__OFADD__(*v37, v32))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *v37 += v32;
  v29 = v36(v84, 0);
  v31 = v80;
LABEL_8:
  if (v31 < 1)
  {
    return (*(*(v73 - 1) + 8))(v74);
  }

  MEMORY[0x1EEE9AC00](v29);
  v39 = v73;
  v38 = v74;
  *(&v66 - 6) = v21;
  *(&v66 - 5) = v39;
  v40 = v83;
  v62 = v22;
  v63 = v83;
  v64 = v41;
  v65 = v28;
  (*(v83[1] + 9))(v84, partial apply for closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  if (v84[0])
  {
    (v40[8])(v39, v40);
    v42 = v33 < 1;
    v43 = v38;
    v80 = v34;
    v44 = v68;
    v45 = v72;
    if (!v42)
    {
      v78 = v83[10];
      v79 = v83 + 10;
      v76 = v83[24];
      v77 = v83 + 24;
      v75 = (v67 + 16);
      v46 = (v67 + 32);
      do
      {
        v47 = v39;
        v48 = v43;
        v49 = v82;
        v50 = v83;
        v51 = (v78)(v84, v82, v47, v83);
        v52 = v80;
        (*v75)(v44);
        v51(v84, 0);
        (*v46)(v28, v44, v52);
        v28 += v81;
        v53 = v49;
        v43 = v48;
        v39 = v47;
        (v76)(v53, v47, v50);
      }

      while (v28 < v45);
    }

    v54 = v83;
    v55 = v69;
    (v83[9])(v39, v83);
    v56 = v71;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v54, v39, v71, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v58 = v82;
    v59 = (*(*(AssociatedConformanceWitness + 8) + 8))(v82, v55, v56);
    v60 = *(v70 + 8);
    v60(v55, v56);
    if (v59)
    {
      (*(*(v39 - 1) + 8))(v43, v39);
      return (v60)(v58, v56);
    }

LABEL_23:
    LODWORD(v64) = 0;
    v63 = 173;
    LOBYTE(v62) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(*(v39 - 1) + 8))(v38);
}

uint64_t _ArrayBuffer.subscript.getter(uint64_t a1, uint64_t a2, int64_t a3, uint64_t *a4)
{
  if (_swift_isClassOrObjCExistentialType(a4, a4) && _swift_isClassOrObjCExistentialType(a4, a4) && (a3 & 0xC000000000000001) != 0 && !swift_dynamicCastMetatype(qword_1EEEAC710, a4))
  {
    if (a2 < a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (a1 != a2)
    {
      v11 = a1;
      do
      {
        if (a2 == v11)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v12 = v11 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v11);
        v11 = v12;
      }

      while (a2 != v12);
    }
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a3 >= 0)
    {
      a3 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    swift_unknownObjectRetain(a3);
    v9 = _CocoaArrayWrapper.subscript.getter(a1, a2, a3);
    swift_unknownObjectRelease(a3);
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (isClassOrObjCExistentialType)
    {
      v9 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v9 = a3;
    }

    a3;
  }

  return v9;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(uint64_t (*a1)(char *, atomic_ullong, uint64_t *), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(a1, a2, a3, a4);
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4))
  {
    v8 = ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v8 = a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80));
  }

  if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = (a3 & 0xFFFFFFFFFFFFFF8);
    }

    v14 = [v13 count];
    if ((v14 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = v14;
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
    v10 = a3 & 0xFFFFFFFFFFFFFF8;
    if (!isClassOrObjCExistentialType)
    {
      v10 = a3;
    }

    v11 = *(v10 + 16);
  }

  return a1(v8, v11, &v15);
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, __objc2_class *, char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v31 = a2;
  v32 = a1;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  if (_swift_isClassOrObjCExistentialType(v19, v19) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v33;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v32, v31, a3, a4, a5, a6, a7, v16);
    v18 = v16;
    if (v26)
    {
      return (*(v13 + 32))(v30, v18, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v20 = (((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 1) + 80) + 32) & ~*(*(a4 - 1) + 80)));
    }

    if (_swift_isClassOrObjCExistentialType(a4, a4) && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      if (a3 < 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = (a3 & 0xFFFFFFFFFFFFFF8);
      }

      v28 = [v27 count];
      if ((v28 & 0x8000000000000000) != 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v23 = v28;
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a4, a4);
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if (!isClassOrObjCExistentialType)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v33;
    result = v32(v20, v23, v18);
    if (v24)
    {
      return (*(v13 + 32))(v30, v18, a6);
    }
  }

  return result;
}