_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleValueWitnessTable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "WV", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleVTableThunk@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TV", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleWillSet@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(a2 + 2))
    {
      v5 = 0;
    }

    a2 = *a2;
  }

  v5 = *a2;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataBuiltinDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MB", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataFieldDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MF", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataAssocTypeDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MA", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataSuperclassDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MC", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGenericTypeParamDecl@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCurryThunk@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Tc", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSILThunkIdentity@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 != 1)
  {
    if (v6 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  if (*a4)
  {
    return this;
  }

  swift::Demangle::__runtime::CharVector::append(v4 + 1591, "TT", 2uLL, *(v4 + 1593));
  this = swift::Demangle::__runtime::CharVector::append(v4 + 1591, "I", 1uLL, *(v4 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDispatchThunk@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Tj", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleMethodDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Tq", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolRequirementsBaseDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v8 = *a2;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (*(v8 + 8) != 243)
  {
    goto LABEL_14;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
LABEL_12:
    v8 = *v8;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:
  {
    v10 = *(v8 + 18);
    v11 = v8;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *v8;
        v11 = *v8;
LABEL_23:
        v13 = (v12 + 8 * *(v8 + 2));
        goto LABEL_29;
      }

      v11 = 0;
    }

    switch(v10)
    {
      case 1:
        v13 = (v8 + 8);
        goto LABEL_29;
      case 2:
        v13 = (v8 + 16);
        goto LABEL_29;
      case 5:
        v12 = *v8;
        goto LABEL_23;
    }

    v13 = 0;
LABEL_29:
    while (v11 != v13)
    {
      if (*a4)
      {
        return result;
      }

      ++v11;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TL", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
  if (*a4)
  {
    return result;
  }

  v12 = *(a2 + 18);
  v13 = a2;
  if (v12 == 2)
  {
    goto LABEL_12;
  }

  if (v12 == 5 && *(a2 + 2) >= 2u)
  {
    v13 = *a2;
LABEL_12:
    v14 = *(v13 + 1);
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v15 = *(*a2 + 2);
  }

  else
  {
    v15 = 0;
  }

  if (*(v15 + 8) == 243)
  {
    v16 = *(v15 + 18);
    if ((v16 - 1) >= 2)
    {
      if (v16 != 5 || !*(v15 + 2))
      {
        v15 = 0;
        goto LABEL_26;
      }

      v15 = *v15;
    }

    v15 = *v15;
  }

LABEL_26:
  {
    v17 = *(v15 + 18);
    v18 = v15;
    if ((v17 - 1) >= 2)
    {
      if (v17 == 5)
      {
        v19 = *v15;
        v18 = *v15;
LABEL_35:
        v20 = (v19 + 8 * *(v15 + 2));
        goto LABEL_41;
      }

      v18 = 0;
    }

    switch(v17)
    {
      case 1:
        v20 = (v15 + 8);
        goto LABEL_41;
      case 2:
        v20 = (v15 + 16);
        goto LABEL_41;
      case 5:
        v19 = *v15;
        goto LABEL_35;
    }

    v20 = 0;
LABEL_41:
    while (v18 != v20)
    {
      if (*a4)
      {
        return result;
      }

      ++v18;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tn", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDefaultAssociatedConformanceAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
  if (*a4)
  {
    return result;
  }

  v12 = *(a2 + 18);
  v13 = a2;
  if (v12 == 2)
  {
    goto LABEL_12;
  }

  if (v12 == 5 && *(a2 + 2) >= 2u)
  {
    v13 = *a2;
LABEL_12:
    v14 = *(v13 + 1);
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v15 = *(*a2 + 2);
  }

  else
  {
    v15 = 0;
  }

  if (*(v15 + 8) == 243)
  {
    v16 = *(v15 + 18);
    if ((v16 - 1) >= 2)
    {
      if (v16 != 5 || !*(v15 + 2))
      {
        v15 = 0;
        goto LABEL_26;
      }

      v15 = *v15;
    }

    v15 = *v15;
  }

LABEL_26:
  {
    v17 = *(v15 + 18);
    v18 = v15;
    if ((v17 - 1) >= 2)
    {
      if (v17 == 5)
      {
        v19 = *v15;
        v18 = *v15;
LABEL_35:
        v20 = (v19 + 8 * *(v15 + 2));
        goto LABEL_41;
      }

      v18 = 0;
    }

    switch(v17)
    {
      case 1:
        v20 = (v15 + 8);
        goto LABEL_41;
      case 2:
        v20 = (v15 + 16);
        goto LABEL_41;
      case 5:
        v19 = *v15;
        goto LABEL_35;
    }

    v20 = 0;
LABEL_41:
    while (v18 != v20)
    {
      if (*a4)
      {
        return result;
      }

      ++v18;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TN", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleBaseConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  if (*a4)
  {
    return result;
  }

  v12 = *(v5 + 18);
  if (v12 == 2)
  {
    goto LABEL_12;
  }

  if (v12 == 5 && *(v5 + 2) >= 2u)
  {
    v5 = *v5;
LABEL_12:
    v13 = *(v5 + 1);
    goto LABEL_14;
  }

  v13 = 0;
LABEL_14:
  if (*(v13 + 8) == 243)
  {
    v14 = *(v13 + 18);
    if ((v14 - 1) >= 2)
    {
      if (v14 != 5 || !*(v13 + 2))
      {
        v13 = 0;
        goto LABEL_21;
      }

      v13 = *v13;
    }

    v13 = *v13;
  }

LABEL_21:
  {
    v15 = *(v13 + 18);
    v16 = v13;
    if ((v15 - 1) >= 2)
    {
      if (v15 == 5)
      {
        v17 = *v13;
        v16 = *v13;
LABEL_30:
        v18 = (v17 + 8 * *(v13 + 2));
        goto LABEL_36;
      }

      v16 = 0;
    }

    switch(v15)
    {
      case 1:
        v18 = (v13 + 8);
        goto LABEL_36;
      case 2:
        v18 = (v13 + 16);
        goto LABEL_36;
      case 5:
        v17 = *v13;
        goto LABEL_30;
    }

    v18 = 0;
LABEL_36:
    while (v16 != v18)
    {
      if (*a4)
      {
        return result;
      }

      ++v16;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tb", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tl", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypedThrowsAnnotation@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "YK", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleOutlinedBridgedMethod@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Te", 2uLL, this[1593]);
  swift::Demangle::__runtime::CharVector::append(this + 1591, *a2, *(a2 + 1), this[1593]);
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "_", 1uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedCopy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOy", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedConsume@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOe", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedRetain@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOr", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedRelease@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOs", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithTake@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOb", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithCopy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOc", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithTake@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOd", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithCopy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOf", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedDestroy@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOh", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleOutlinedVariable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tv", 2uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v7 = *(this + 3184);
  v8 = *(this + 3185);
  v9 = *(this + 1591);
  if (v7 >= v8)
  {
    v10 = *(this + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_21:
        *(this + 3185) = v8 + v13;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v8);
    }

    v14 = v13 + v8;
    if (v11)
    {
      v15 = &v11[v13 + v8] > v12;
    }

    else
    {
      v15 = 1;
    }

    v9 = v10[1];
    if (v15)
    {
      v16 = 2 * v10[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v10[4] = v16;
      v17 = v16 + 8;
      result = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v18 = result + v17;
      *result = v10[3];
      v9 = (result + 1);
      v10[2] = v18;
      v10[3] = result;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      result = memcpy(v9, *(this + 1591), v8);
    }

    *(this + 1591) = v9;
    LODWORD(v8) = *(this + 3185);
    v7 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v7 + 1;
  v9[v7] = 95;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleOutlinedReadOnlyObject@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Tv", 2uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v7 = *(this + 3184);
  v8 = *(this + 3185);
  v9 = *(this + 1591);
  if (v7 >= v8)
  {
    v10 = *(this + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_21:
        *(this + 3185) = v8 + v13;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v8);
    }

    v14 = v13 + v8;
    if (v11)
    {
      v15 = &v11[v13 + v8] > v12;
    }

    else
    {
      v15 = 1;
    }

    v9 = v10[1];
    if (v15)
    {
      v16 = 2 * v10[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v10[4] = v16;
      v17 = v16 + 8;
      result = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v18 = result + v17;
      *result = v10[3];
      v9 = (result + 1);
      v10[2] = v18;
      v10[3] = result;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      result = memcpy(v9, *(this + 1591), v8);
    }

    *(this + 1591) = v9;
    LODWORD(v8) = *(this + 3185);
    v7 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v7 + 1;
  v9[v7] = 95;
  v19 = *(this + 3184);
  v20 = *(this + 3185);
  v21 = *(this + 1591);
  if (v19 >= v20)
  {
    v22 = *(this + 1593);
    v23 = v22[1];
    if (&v21[v20] == v23)
    {
      v24 = v22[2];
      if ((v23 + 1) <= v24)
      {
        v22[1] = v23 + 1;
        LODWORD(v25) = 1;
LABEL_37:
        *(this + 3185) = v20 + v25;
        goto LABEL_38;
      }
    }

    else
    {
      v24 = v22[2];
    }

    if ((2 * v20) <= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = (2 * v20);
    }

    v26 = v25 + v20;
    if (!v23 || &v23[v26] > v24)
    {
      v27 = 2 * v22[4];
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      v22[4] = v27;
      v28 = v27 + 8;
      result = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
      v29 = result + v28;
      *result = v22[3];
      v23 = (result + 1);
      v22[2] = v29;
      v22[3] = result;
    }

    v22[1] = &v23[v26];
    if (v20)
    {
      result = memcpy(v23, *(this + 1591), v20);
    }

    *(this + 1591) = v23;
    LODWORD(v20) = *(this + 3185);
    v21 = v23;
    v19 = *(this + 3184);
    goto LABEL_37;
  }

LABEL_38:
  *(this + 3184) = v19 + 1;
  v21[v19] = 114;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssocTypePath@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v11 = 1;
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

uint64_t *anonymous namespace::Remangler::mangleLabelList@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

    v11 = *(this + 3184);
    v12 = *(this + 3185);
    v13 = this[1591];
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

    v14 = this[1593];
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
      v15 = (this + 1);
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

uint64_t *anonymous namespace::Remangler::mangleModuleDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MXM", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleExtensionDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MXE", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAnonymousDescriptor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  if (*a4)
  {
    return result;
  }

  v11 = *(v4 + 18);
  if (v11 == 1)
  {
    goto LABEL_13;
  }

  if (v11 == 2)
  {
    goto LABEL_16;
  }

  if (v11 != 5 || (v12 = *(v4 + 2)) == 0)
  {
    v15 = 0;
LABEL_17:
    v19 = 0uLL;
    LOBYTE(v20) = 0;
    {
      v16 = this[1585];
      if (v16 > 0xF)
      {
        v18 = *(this + 3178) + 16;
        v21 = v19;
        v22 = v20;
        v23 = v18;
        std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v21);
      }

      else
      {
        this[1585] = (v16 + 1);
        v17 = &this[3 * v16 + 1537];
        *v17 = v19;
        *(v17 + 16) = v20;
      }
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v13 = this[1593];
    v14 = "MXY";
    goto LABEL_22;
  }

  if (v12 != 1)
  {
    v4 = *v4;
LABEL_16:
    v15 = *(v4 + 1);
    goto LABEL_17;
  }

LABEL_13:
  v13 = this[1593];
  v14 = "MXX";
LABEL_22:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, v14, 3uLL, v13);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeGenericParamRef@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
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
  if (v10 == 1)
  {
    v11 = a2;
LABEL_13:
    if (*a4)
    {
      return this;
    }

    v14 = *(v11 + 18);
    if (v14 != 2)
    {
      if (v14 != 5 || *(v11 + 2) < 2u)
      {
        v15 = 0;
        goto LABEL_20;
      }

      v11 = *v11;
    }

    v15 = *(v11 + 1);
LABEL_20:
    v20 = 1;
    v16 = *(v15 + 18);
    v17 = v15;
    if ((v16 - 1) >= 2)
    {
      if (v16 == 5)
      {
        v18 = *v15;
        v17 = *v15;
LABEL_28:
        v19 = (v18 + 8 * *(v15 + 8));
        goto LABEL_34;
      }

      v17 = 0;
    }

    switch(v16)
    {
      case 1:
        v19 = (v15 + 8);
        goto LABEL_34;
      case 2:
        v19 = (v15 + 16);
        goto LABEL_34;
      case 5:
        v18 = *v15;
        goto LABEL_28;
    }

    v19 = 0;
LABEL_34:
    while (v17 != v19)
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
    this = swift::Demangle::__runtime::CharVector::append((v5 + 12728), "MXA", 3uLL, *(v5 + 12744));
    v13 = 0;
    v9 = 0;
    v12 = 0;
    goto LABEL_36;
  }

  if (v10 == 5 && *(v9 + 2) == 1)
  {
    v11 = a2;
    v9 = *v9;
    goto LABEL_13;
  }

  v12 = 322;
  v13 = 10;
LABEL_36:
  *a4 = v13;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSugaredOptional@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v5 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v6 = *a2;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = *(v6 + 18);
  if (v7 != 1)
  {
    if (v7 != 5 || *(v6 + 2) != 1)
    {
      v10 = 322;
      v9 = 10;
      goto LABEL_14;
    }

    v6 = *v6;
  }

  v8 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v8 + 1591, "XSq", 3uLL, *(v8 + 1593));
  v9 = 0;
  v6 = 0;
  v10 = 0;
LABEL_14:
  *a4 = v9;
  *(a4 + 8) = v6;
  *(a4 + 16) = v10;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSugaredArray@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v5 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v6 = *a2;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = *(v6 + 18);
  if (v7 != 1)
  {
    if (v7 != 5 || *(v6 + 2) != 1)
    {
      v10 = 322;
      v9 = 10;
      goto LABEL_14;
    }

    v6 = *v6;
  }

  v8 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v8 + 1591, "XSa", 3uLL, *(v8 + 1593));
  v9 = 0;
  v6 = 0;
  v10 = 0;
LABEL_14:
  *a4 = v9;
  *(a4 + 8) = v6;
  *(a4 + 16) = v10;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleSugaredDictionary@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  v7 = a2;
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    v7 = *a2;
LABEL_5:
    v8 = *v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = *(v8 + 18);
  if (v9 == 1)
  {
    v10 = a2;
  }

  else
  {
    if (v9 != 5 || *(v8 + 2) != 1)
    {
      goto LABEL_26;
    }

    v10 = a2;
    v8 = *v8;
  }

  if (*a4)
  {
    return this;
  }

  v12 = *(v10 + 18);
  if (v12 == 2)
  {
    v13 = a3;
  }

  else
  {
    v13 = a3;
    if (v12 != 5 || *(v10 + 2) < 2u)
    {
      v8 = 0;
      goto LABEL_20;
    }

    v10 = *v10;
  }

  v8 = *(v10 + 1);
LABEL_20:
  v14 = *(v8 + 18);
  if (v14 != 1)
  {
    if (v14 == 5 && *(v8 + 2) == 1)
    {
      v8 = *v8;
      goto LABEL_24;
    }

LABEL_26:
    v16 = 322;
    v15 = 10;
    goto LABEL_27;
  }

LABEL_24:
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v4 + 1591, "XSD", 3uLL, v4[1593]);
  v15 = 0;
  v8 = 0;
  v16 = 0;
LABEL_27:
  *a4 = v15;
  *(a4 + 8) = v8;
  *(a4 + 16) = v16;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleSugaredInlineArray@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  v7 = a2;
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    v7 = *a2;
LABEL_5:
    v8 = *v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = *(v8 + 18);
  if (v9 == 1)
  {
    v10 = a2;
  }

  else
  {
    if (v9 != 5 || *(v8 + 2) != 1)
    {
      goto LABEL_26;
    }

    v10 = a2;
    v8 = *v8;
  }

  if (*a4)
  {
    return this;
  }

  v12 = *(v10 + 18);
  if (v12 == 2)
  {
    v13 = a3;
  }

  else
  {
    v13 = a3;
    if (v12 != 5 || *(v10 + 2) < 2u)
    {
      v8 = 0;
      goto LABEL_20;
    }

    v10 = *v10;
  }

  v8 = *(v10 + 1);
LABEL_20:
  v14 = *(v8 + 18);
  if (v14 != 1)
  {
    if (v14 == 5 && *(v8 + 2) == 1)
    {
      v8 = *v8;
      goto LABEL_24;
    }

LABEL_26:
    v16 = 322;
    v15 = 10;
    goto LABEL_27;
  }

LABEL_24:
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v4 + 1591, "XSA", 3uLL, v4[1593]);
  v15 = 0;
  v8 = 0;
  v16 = 0;
LABEL_27:
  *a4 = v15;
  *(a4 + 8) = v8;
  *(a4 + 16) = v16;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSugaredParen@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v5 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v6 = *a2;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = *(v6 + 18);
  if (v7 != 1)
  {
    if (v7 != 5 || *(v6 + 2) != 1)
    {
      v10 = 322;
      v9 = 10;
      goto LABEL_14;
    }

    v6 = *v6;
  }

  v8 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::__runtime::CharVector::append(v8 + 1591, "XSp", 3uLL, *(v8 + 1593));
  v9 = 0;
  v6 = 0;
  v10 = 0;
LABEL_14:
  *a4 = v9;
  *(a4 + 8) = v6;
  *(a4 + 16) = v10;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleOpaqueType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v60 = 0uLL;
  LOBYTE(v61) = 0;
  if (result)
  {
    goto LABEL_2;
  }

  if (*(v5 + 18) != 5 || *(v5 + 2) <= 2u)
  {
    *a4 = 1;
    *(a4 + 8) = v5;
    *(a4 + 16) = 3937;
    return result;
  }

  if (*a4)
  {
    return result;
  }

  if (*(v5 + 18) == 5 && *(v5 + 2) >= 3u)
  {
    v9 = *(*v5 + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v59 = v9;
  while (1)
  {
    v11 = *(v9 + 18);
    if (v11 != 1)
    {
      if (v11 == 5)
      {
        v11 = *(v9 + 2);
      }

      else
      {
        if (v11 != 2)
        {
          break;
        }

        v11 = 2;
      }
    }

    if (v11 <= v10)
    {
      break;
    }

    if (v10)
    {
      v12 = 95;
    }

    else
    {
      v12 = 121;
    }

    v13 = *(this + 3184);
    v14 = *(this + 3185);
    v15 = *(this + 1591);
    if (v13 >= v14)
    {
      v16 = *(this + 1593);
      v17 = v16[1];
      if (&v15[v14] != v17)
      {
        v18 = v16[2];
        goto LABEL_26;
      }

      v18 = v16[2];
      if ((v17 + 1) <= v18)
      {
        v16[1] = v17 + 1;
        LODWORD(v19) = 1;
      }

      else
      {
LABEL_26:
        if ((2 * v14) <= 4)
        {
          v19 = 4;
        }

        else
        {
          v19 = (2 * v14);
        }

        v20 = v19 + v14;
        if (!v17 || &v17[v20] > v18)
        {
          v21 = 2 * v16[4];
          if (v21 <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          v16[4] = v21;
          v22 = v21 + 8;
          v58 = v19;
          v19 = v10;
          v23 = v12;
          v24 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
          v12 = v23;
          v10 = v19;
          LODWORD(v19) = v58;
          v25 = v24 + v22;
          *v24 = v16[3];
          v17 = (v24 + 1);
          v16[2] = v25;
          v16[3] = v24;
        }

        v16[1] = &v17[v20];
        if (v14)
        {
          v26 = v14;
          v27 = v12;
          memcpy(v17, *(this + 1591), v26);
          v12 = v27;
        }

        *(this + 1591) = v17;
        LODWORD(v14) = *(this + 3185);
        v15 = v17;
        v13 = *(this + 3184);
        v9 = v59;
      }

      *(this + 3185) = v14 + v19;
    }

    *(this + 3184) = v13 + 1;
    v15[v13] = v12;
    v28 = *(v9 + 18);
    v29 = v28 - 1;
    if (v28 == 1)
    {
      goto LABEL_42;
    }

    if (v28 != 5)
    {
      if (v28 != 2)
      {
        goto LABEL_47;
      }

      v28 = 2;
LABEL_42:
      if (v28 <= v10)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }

    if (*(v9 + 2) <= v10)
    {
LABEL_47:
      v31 = 0;
      goto LABEL_48;
    }

LABEL_43:
    v30 = v9;
    if (v29 >= 2)
    {
      v30 = *v9;
    }

    v31 = v30[v10];
LABEL_48:
    v32 = *(v31 + 18);
    v33 = v31;
    if ((v32 - 1) >= 2)
    {
      if (v32 == 5)
      {
        v34 = *v31;
        v33 = *v31;
LABEL_56:
        v35 = (v34 + 8 * *(v31 + 8));
        goto LABEL_62;
      }

      v33 = 0;
    }

    switch(v32)
    {
      case 1:
        v35 = (v31 + 8);
        goto LABEL_62;
      case 2:
        v35 = (v31 + 16);
        goto LABEL_62;
      case 5:
        v34 = *v31;
        goto LABEL_56;
    }

    v35 = 0;
LABEL_62:
    while (v33 != v35)
    {
      if (*a4)
      {
        return result;
      }

      ++v33;
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    ++v10;
    *(a4 + 16) = 0;
  }

  if (*(v5 + 18) == 5 && *(v5 + 2) >= 4u)
  {
    v36 = 0;
    v37 = *(*v5 + 3);
    while (1)
    {
      v39 = *(v37 + 18);
      switch(v39)
      {
        case 1:
          v40 = *(v37 + 18);
          break;
        case 5:
          v40 = *(v37 + 2);
          break;
        case 2:
          v40 = 2;
          break;
        default:
          goto LABEL_85;
      }

      if (v40 <= v36)
      {
        break;
      }

      v41 = v39 - 1;
      if (v39 != 1)
      {
        if (v39 == 5)
        {
          v39 = *(v37 + 2);
        }

        else
        {
          v39 = 2;
        }
      }

      if (v39 <= v36)
      {
        v38 = 0;
      }

      else
      {
        v42 = v37;
        if (v41 >= 2)
        {
          v42 = *v37;
        }

        v38 = v42[v36];
      }

      ++v36;
      if (*a4)
      {
        return result;
      }
    }
  }

LABEL_85:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Qo", 2uLL, *(this + 1593));
  if (*(v5 + 18) == 5)
  {
    v5 = *v5;
  }

  v43 = *v5[1];
  if (v43)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, v43 - 1, *(this + 1593));
  }

  v44 = *(this + 3184);
  v45 = *(this + 3185);
  v46 = *(this + 1591);
  if (v44 >= v45)
  {
    v47 = *(this + 1593);
    v48 = v47[1];
    if (&v46[v45] != v48)
    {
      v49 = v47[2];
      goto LABEL_93;
    }

    v49 = v47[2];
    if ((v48 + 1) <= v49)
    {
      v47[1] = v48 + 1;
      LODWORD(v50) = 1;
    }

    else
    {
LABEL_93:
      if ((2 * v45) <= 4)
      {
        v50 = 4;
      }

      else
      {
        v50 = (2 * v45);
      }

      v51 = v50 + v45;
      if (!v48 || &v48[v51] > v49)
      {
        v52 = 2 * v47[4];
        if (v52 <= v51 + 1)
        {
          v52 = v51 + 1;
        }

        v47[4] = v52;
        v53 = v52 + 8;
        result = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
        v54 = result + v53;
        *result = v47[3];
        v48 = (result + 1);
        v47[2] = v54;
        v47[3] = result;
      }

      v47[1] = &v48[v51];
      if (v45)
      {
        result = memcpy(v48, *(this + 1591), v45);
      }

      *(this + 1591) = v48;
      LODWORD(v45) = *(this + 3185);
      v46 = v48;
      v44 = *(this + 3184);
    }

    *(this + 3185) = v45 + v50;
  }

  *(this + 3184) = v44 + 1;
  v46[v44] = 95;
  v55 = *(this + 1585);
  if (v55 > 0xF)
  {
    v57 = *(this + 3178) + 16;
    v62 = v60;
    v63 = v61;
    v64 = v57;
    result = std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v62);
  }

  else
  {
    *(this + 1585) = v55 + 1;
    v56 = this + 24 * v55 + 12296;
    *v56 = v60;
    v56[16] = v61;
  }

LABEL_2:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MQ", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorRecord@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Ho", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mg", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessorImpl@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mh", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessorKey@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mj", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessorVar@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mk", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

void *anonymous namespace::Remangler::mangleOpaqueReturnType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 18);
  v6 = a2;
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      goto LABEL_13;
    }

    v6 = *a2;
  }

  if (*(*v6 + 16) == 355)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "QR", 2uLL, *(this + 1593));
    v9 = a2;
    if (*(a2 + 18) - 1 >= 2)
    {
      v9 = *a2;
    }

    v10 = **v9;
    if (v10)
    {
      result = swift::Demangle::__runtime::CharVector::append(this + 3182, v10 - 1, *(this + 1593));
    }

    v11 = *(this + 3184);
    v12 = *(this + 3185);
    v13 = *(this + 1591);
    if (v11 < v12)
    {
      goto LABEL_27;
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
        *(this + 3185) = v12 + v17;
LABEL_27:
        *(this + 3184) = v11 + 1;
        v13[v11] = 95;
        goto LABEL_28;
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
      result = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v21 = result + v20;
      *result = v14[3];
      v15 = (result + 1);
      v14[2] = v21;
      v14[3] = result;
    }

    v14[1] = &v15[v18];
    if (v12)
    {
      result = memcpy(v15, *(this + 1591), v12);
    }

    *(this + 1591) = v15;
    LODWORD(v12) = *(this + 3185);
    v13 = v15;
    v11 = *(this + 3184);
    goto LABEL_26;
  }

LABEL_13:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Qr", 2uLL, *(this + 1593));
LABEL_28:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

{
  v5 = *(a2 + 18);
  v6 = a2;
  if ((v5 - 1) >= 2)
  {
    if (v5 != 5 || !*(a2 + 2))
    {
      goto LABEL_13;
    }

    v6 = *a2;
  }

  if (*(*v6 + 16) == 355)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "QU", 2uLL, *(this + 1593));
    v9 = a2;
    if (*(a2 + 18) - 1 >= 2)
    {
      v9 = *a2;
    }

    v10 = **v9;
    if (v10)
    {
      result = swift::Demangle::__runtime::CharVector::append(this + 3182, v10 - 1, *(this + 1593));
    }

    v11 = *(this + 3184);
    v12 = *(this + 3185);
    v13 = *(this + 1591);
    if (v11 < v12)
    {
      goto LABEL_27;
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
        *(this + 3185) = v12 + v17;
LABEL_27:
        *(this + 3184) = v11 + 1;
        v13[v11] = 95;
        goto LABEL_28;
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
      result = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      v21 = result + v20;
      *result = v14[3];
      v15 = (result + 1);
      v14[2] = v21;
      v14[3] = result;
    }

    v14[1] = &v15[v18];
    if (v12)
    {
      result = memcpy(v15, *(this + 1591), v12);
    }

    *(this + 1591) = v15;
    LODWORD(v12) = *(this + 3185);
    v13 = v15;
    v11 = *(this + 3184);
    goto LABEL_26;
  }

LABEL_13:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Qu", 2uLL, *(this + 1593));
LABEL_28:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOpaqueReturnTypeOf@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "QO", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleCanonicalSpecializedGenericMetaclass@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "MM", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCanonicalSpecializedGenericTypeMetadataAccessFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mb", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mb", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleMetadataInstantiationCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MK", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNoncanonicalSpecializedGenericTypeMetadata@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MN", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MN", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNoncanonicalSpecializedGenericTypeMetadataCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MJ", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MJ", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalVariableOnceFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WZ", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalVariableOnceToken@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wz", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalVariableOnceDeclList@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (v8 != 5)
  {
    if (v8 != 2)
    {
      goto LABEL_36;
    }

    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  if (v8)
  {
LABEL_6:
    v9 = 0;
    v10 = v8;
    v27 = v8;
    while (1)
    {
      v14 = *(a2 + 18);
      v15 = v14 - 1;
      if (v14 == 1)
      {
        goto LABEL_14;
      }

      if (v14 != 5)
      {
        break;
      }

      if (*(a2 + 2) <= v9)
      {
LABEL_19:
        v17 = 0;
        goto LABEL_20;
      }

LABEL_15:
      v16 = a2;
      if (v15 >= 2)
      {
        v16 = *a2;
      }

      v17 = *(v16 + v9);
LABEL_20:
      if (*a4)
      {
        return this;
      }

      v13 = *(v6 + 12736);
      v11 = *(v6 + 12740);
      v12 = *(v6 + 12728);
      if (v13 >= v11)
      {
        v18 = *(v6 + 12744);
        v19 = v18[1];
        if (&v12[v11] != v19)
        {
          v20 = v18[2];
          goto LABEL_25;
        }

        v20 = v18[2];
        if ((v19 + 1) <= v20)
        {
          v18[1] = v19 + 1;
          LODWORD(v22) = 1;
        }

        else
        {
LABEL_25:
          v21 = a3;
          if ((2 * v11) <= 4)
          {
            v22 = 4;
          }

          else
          {
            v22 = (2 * v11);
          }

          v23 = v22 + v11;
          if (!v19 || &v19[v23] > v20)
          {
            v24 = 2 * v18[4];
            if (v24 <= v23 + 1)
            {
              v24 = v23 + 1;
            }

            v18[4] = v24;
            v25 = v24 + 8;
            this = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
            v26 = this + v25;
            *this = v18[3];
            v19 = (this + 1);
            v18[2] = v26;
            v18[3] = this;
          }

          v18[1] = &v19[v23];
          if (v11)
          {
            this = memcpy(v19, *(v6 + 12728), v11);
          }

          *(v6 + 12728) = v19;
          LODWORD(v11) = *(v6 + 12740);
          v12 = v19;
          v13 = *(v6 + 12736);
          a3 = v21;
        }

        *(v6 + 12740) = v11 + v22;
        v10 = v27;
      }

      *(v6 + 12736) = v13 + 1;
      v12[v13] = 95;
      if (v10 == ++v9)
      {
        goto LABEL_36;
      }
    }

    if (v14 != 2)
    {
      goto LABEL_19;
    }

    v14 = 2;
LABEL_14:
    if (v14 <= v9)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_36:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCanonicalPrespecializedGenericTypeCachingOnceToken@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mz", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mz", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAutoDiffSelfReorderingReabstractionThunk@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  if (*(a2 + 18) - 1 >= 2)
  {
    v5 = *a2;
  }

  if (!*a4)
  {
    if (!*a4)
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 2);
      if (*(v9 + 16) == 44)
      {
        if (*a4)
        {
          return result;
        }

        v10 = (v5 + 24);
      }

      swift::Demangle::__runtime::CharVector::append(this + 1591, "TJO", 3uLL, this[1593]);
      v11 = *v10;
    }
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAutoDiffSubsetParametersThunk@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v9 = *a2;
    }

    else
    {
      v9 = 0;
    }
  }

  while (1)
  {
    v10 = *(a2 + 18);
    if (v10 != 5)
    {
      break;
    }

    if (v9 == (*a2 + 8 * *(a2 + 2)))
    {
      goto LABEL_18;
    }

LABEL_15:
    v13 = *v9;
    if (*(*v9 + 8) == 335)
    {
      goto LABEL_18;
    }

    ++v9;
    if (*a4)
    {
      return result;
    }
  }

  if (v10 == 1)
  {
    v11 = a2 + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v10 == 2)
  {
    v12 = a2 + 2;
  }

  else
  {
    v12 = v11;
  }

  if (v9 != v12)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift::Demangle::__runtime::CharVector::append(this + 1591, "TJS", 3uLL, this[1593]);
  if (!*a4)
  {
    if (!*a4)
    {
      v15 = *(this + 3184);
      v16 = *(this + 3185);
      v17 = this[1591];
      if (v15 >= v16)
      {
        v18 = this[1593];
        v19 = *(v18 + 1);
        if (&v17[v16] != v19)
        {
          v20 = *(v18 + 2);
          goto LABEL_24;
        }

        v20 = *(v18 + 2);
        if ((v19 + 1) <= v20)
        {
          *(v18 + 1) = v19 + 1;
          LODWORD(v21) = 1;
        }

        else
        {
LABEL_24:
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
            v23 = 2 * *(v18 + 4);
            if (v23 <= v22 + 1)
            {
              v23 = v22 + 1;
            }

            *(v18 + 4) = v23;
            v24 = v23 + 8;
            v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
            v26 = v25 + v24;
            *v25 = *(v18 + 3);
            v19 = (v25 + 1);
            *(v18 + 2) = v26;
            *(v18 + 3) = v25;
          }

          *(v18 + 1) = &v19[v22];
          if (v16)
          {
            memcpy(v19, this[1591], v16);
          }

          this[1591] = v19;
          LODWORD(v16) = *(this + 3185);
          v17 = v19;
          v15 = *(this + 3184);
        }

        *(this + 3185) = v16 + v21;
      }

      *(this + 3184) = v15 + 1;
      v17[v15] = 112;
      if (!*a4)
      {
        v27 = *(this + 3184);
        v28 = *(this + 3185);
        v29 = this[1591];
        if (v27 >= v28)
        {
          v30 = this[1593];
          v31 = *(v30 + 1);
          if (&v29[v28] != v31)
          {
            v32 = *(v30 + 2);
            goto LABEL_42;
          }

          v32 = *(v30 + 2);
          if ((v31 + 1) <= v32)
          {
            *(v30 + 1) = v31 + 1;
            LODWORD(v33) = 1;
          }

          else
          {
LABEL_42:
            if ((2 * v28) <= 4)
            {
              v33 = 4;
            }

            else
            {
              v33 = (2 * v28);
            }

            v34 = v33 + v28;
            if (!v31 || &v31[v34] > v32)
            {
              v35 = 2 * *(v30 + 4);
              if (v35 <= v34 + 1)
              {
                v35 = v34 + 1;
              }

              *(v30 + 4) = v35;
              v36 = v35 + 8;
              v37 = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
              v38 = v37 + v36;
              *v37 = *(v30 + 3);
              v31 = (v37 + 1);
              *(v30 + 2) = v38;
              *(v30 + 3) = v37;
            }

            *(v30 + 1) = &v31[v34];
            if (v28)
            {
              memcpy(v31, this[1591], v28);
            }

            this[1591] = v31;
            LODWORD(v28) = *(this + 3185);
            v29 = v31;
            v27 = *(this + 3184);
          }

          *(this + 3185) = v28 + v33;
        }

        *(this + 3184) = v27 + 1;
        v29[v27] = 114;
        if (!*a4)
        {
          v39 = *(this + 3184);
          v40 = *(this + 3185);
          v41 = this[1591];
          if (v39 >= v40)
          {
            v42 = this[1593];
            v43 = *(v42 + 1);
            if (&v41[v40] != v43)
            {
              v44 = *(v42 + 2);
              goto LABEL_60;
            }

            v44 = *(v42 + 2);
            if ((v43 + 1) <= v44)
            {
              *(v42 + 1) = v43 + 1;
              LODWORD(v45) = 1;
            }

            else
            {
LABEL_60:
              if ((2 * v40) <= 4)
              {
                v45 = 4;
              }

              else
              {
                v45 = (2 * v40);
              }

              v46 = v45 + v40;
              if (!v43 || &v43[v46] > v44)
              {
                v47 = 2 * *(v42 + 4);
                if (v47 <= v46 + 1)
                {
                  v47 = v46 + 1;
                }

                *(v42 + 4) = v47;
                v48 = v47 + 8;
                result = malloc_type_malloc(v47 + 8, 0x2004093837F09uLL);
                v49 = result + v48;
                *result = *(v42 + 3);
                v43 = (result + 1);
                *(v42 + 2) = v49;
                *(v42 + 3) = result;
              }

              *(v42 + 1) = &v43[v46];
              if (v40)
              {
                result = memcpy(v43, this[1591], v40);
              }

              this[1591] = v43;
              LODWORD(v40) = *(this + 3185);
              v41 = v43;
              v39 = *(this + 3184);
            }

            *(this + 3185) = v40 + v45;
          }

          *(this + 3184) = v39 + 1;
          v41[v39] = 80;
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDifferentiabilityWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v9 = *a2;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = (a2 + 8);
  while (1)
  {
    v11 = *(v5 + 18);
    if (v11 != 5)
    {
      break;
    }

    if (v9 == (*v5 + 8 * *(v5 + 2)))
    {
      goto LABEL_18;
    }

LABEL_15:
    v13 = *v9;
    if (*(*v9 + 16) == 104)
    {
      goto LABEL_18;
    }

    v9 = (v9 + 8);
    if (*a4)
    {
      return result;
    }
  }

  if (v11 == 1)
  {
    v12 = (v5 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v11 == 2)
  {
    v12 = (v5 + 16);
  }

  if (v9 != v12)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v11 == 1)
  {
    v15 = 0;
  }

  else
  {
    if (v11 == 5)
    {
      v15 = *(v5 + 2) - 1;
      v16 = *v5;
      goto LABEL_24;
    }

    v15 = 1;
  }

  v16 = v5;
LABEL_24:
  if (*(*(v16 + v15) + 16) != 44)
  {
    goto LABEL_35;
  }

  switch(v11)
  {
    case 1:
      v17 = 0;
LABEL_33:
      v19 = *(v5 + v17);
      goto LABEL_34;
    case 5:
      v18 = *v10;
      if (!v18)
      {
        break;
      }

      v17 = v18 - 1;
      v5 = *v5;
      goto LABEL_33;
    case 2:
      v17 = 1;
      goto LABEL_33;
  }

  v19 = 0;
LABEL_34:
  if (!*a4)
  {
LABEL_35:
    swift::Demangle::__runtime::CharVector::append(this + 1591, "WJ", 2uLL, this[1593]);
    v20 = **v9;
    v21 = *(this + 3184);
    v22 = *(this + 3185);
    v23 = this[1591];
    if (v21 >= v22)
    {
      v24 = this[1593];
      v25 = *(v24 + 1);
      if (&v23[v22] != v25)
      {
        v26 = *(v24 + 2);
        goto LABEL_39;
      }

      v26 = *(v24 + 2);
      if ((v25 + 1) <= v26)
      {
        *(v24 + 1) = v25 + 1;
        LODWORD(v27) = 1;
      }

      else
      {
LABEL_39:
        if ((2 * v22) <= 4)
        {
          v27 = 4;
        }

        else
        {
          v27 = (2 * v22);
        }

        v28 = v27 + v22;
        if (!v25 || &v25[v28] > v26)
        {
          v29 = 2 * *(v24 + 4);
          if (v29 <= v28 + 1)
          {
            v29 = v28 + 1;
          }

          *(v24 + 4) = v29;
          v30 = v29 + 8;
          v31 = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
          v32 = v31 + v30;
          *v31 = *(v24 + 3);
          v25 = (v31 + 1);
          *(v24 + 2) = v32;
          *(v24 + 3) = v31;
        }

        *(v24 + 1) = &v25[v28];
        if (v22)
        {
          memcpy(v25, this[1591], v22);
        }

        this[1591] = v25;
        LODWORD(v22) = *(this + 3185);
        v23 = v25;
        v21 = *(this + 3184);
      }

      *(this + 3185) = v22 + v27;
    }

    *(this + 3184) = v21 + 1;
    v23[v21] = v20;
    if (!*a4)
    {
      v33 = *(this + 3184);
      v34 = *(this + 3185);
      v35 = this[1591];
      if (v33 >= v34)
      {
        v36 = this[1593];
        v37 = *(v36 + 1);
        if (&v35[v34] != v37)
        {
          v38 = *(v36 + 2);
          goto LABEL_57;
        }

        v38 = *(v36 + 2);
        if ((v37 + 1) <= v38)
        {
          *(v36 + 1) = v37 + 1;
          LODWORD(v39) = 1;
        }

        else
        {
LABEL_57:
          if ((2 * v34) <= 4)
          {
            v39 = 4;
          }

          else
          {
            v39 = (2 * v34);
          }

          v40 = v39 + v34;
          if (!v37 || &v37[v40] > v38)
          {
            v41 = 2 * *(v36 + 4);
            if (v41 <= v40 + 1)
            {
              v41 = v40 + 1;
            }

            *(v36 + 4) = v41;
            v42 = v41 + 8;
            v43 = malloc_type_malloc(v41 + 8, 0x2004093837F09uLL);
            v44 = v43 + v42;
            *v43 = *(v36 + 3);
            v37 = (v43 + 1);
            *(v36 + 2) = v44;
            *(v36 + 3) = v43;
          }

          *(v36 + 1) = &v37[v40];
          if (v34)
          {
            memcpy(v37, this[1591], v34);
          }

          this[1591] = v37;
          LODWORD(v34) = *(this + 3185);
          v35 = v37;
          v33 = *(this + 3184);
        }

        *(this + 3185) = v34 + v39;
      }

      *(this + 3184) = v33 + 1;
      v35[v33] = 112;
      if (!*a4)
      {
        v45 = *(this + 3184);
        v46 = *(this + 3185);
        v47 = this[1591];
        if (v45 >= v46)
        {
          v48 = this[1593];
          v49 = *(v48 + 1);
          if (&v47[v46] != v49)
          {
            v50 = *(v48 + 2);
            goto LABEL_75;
          }

          v50 = *(v48 + 2);
          if ((v49 + 1) <= v50)
          {
            *(v48 + 1) = v49 + 1;
            LODWORD(v51) = 1;
          }

          else
          {
LABEL_75:
            if ((2 * v46) <= 4)
            {
              v51 = 4;
            }

            else
            {
              v51 = (2 * v46);
            }

            v52 = v51 + v46;
            if (!v49 || &v49[v52] > v50)
            {
              v53 = 2 * *(v48 + 4);
              if (v53 <= v52 + 1)
              {
                v53 = v52 + 1;
              }

              *(v48 + 4) = v53;
              v54 = v53 + 8;
              result = malloc_type_malloc(v53 + 8, 0x2004093837F09uLL);
              v55 = result + v54;
              *result = *(v48 + 3);
              v49 = (result + 1);
              *(v48 + 2) = v55;
              *(v48 + 3) = result;
            }

            *(v48 + 1) = &v49[v52];
            if (v46)
            {
              result = memcpy(v49, this[1591], v46);
            }

            this[1591] = v49;
            LODWORD(v46) = *(this + 3185);
            v47 = v49;
            v45 = *(this + 3184);
          }

          *(this + 3185) = v46 + v51;
        }

        *(this + 3184) = v45 + 1;
        v47[v45] = 114;
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }
    }
  }

  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNoDerivative@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Yk", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAsyncAwaitResumePartialFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TQ", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if ((v9 - 1) >= 2)
  {
    if (v9 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

uint64_t *anonymous namespace::Remangler::mangleAsyncSuspendResumePartialFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TY", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  if ((v9 - 1) >= 2)
  {
    if (v9 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    a2 = *a2;
  }

  v10 = *a2;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCompileTimeLiteral@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Yt", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleExtendedExistentialTypeShape@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
    goto LABEL_7;
  }

  v7 = a2;
  if (v6 == 2)
  {
    goto LABEL_11;
  }

  if (v6 == 5)
  {
    v8 = *(a2 + 2);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_19;
    }

    if (v8 == 1)
    {
      a2 = *a2;
LABEL_7:
      v9 = *a2;
LABEL_19:
      v14 = "Xg";
      goto LABEL_20;
    }

    v7 = *a2;
LABEL_11:
    v10 = *v7;
    if (v6 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:
  if (v6 != 5 || *(a2 + 2) < 2u)
  {
    v9 = 0;
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  a2 = *a2;
LABEL_15:
  v9 = *(a2 + 1);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_16:
  v11 = v9;
  v12 = a3;
  if (*a4)
  {
    return result;
  }

  v14 = "XG";
  a3 = v12;
  v9 = v11;
LABEL_20:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, v14, 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleUniquable@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Mq", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleSymbolicExtendedExistentialType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
  if (*a4)
  {
    return result;
  }

  v12 = *(a2 + 18);
  v13 = a2;
  if (v12 == 2)
  {
    goto LABEL_12;
  }

  if (v12 == 5 && *(a2 + 2) >= 2u)
  {
    v13 = *a2;
LABEL_12:
    v14 = *(v13 + 1);
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  v15 = *(v14 + 18);
  v16 = v14;
  if ((v15 - 1) >= 2)
  {
    if (v15 == 5)
    {
      v17 = *v14;
      v16 = *v14;
      goto LABEL_22;
    }

    v16 = 0;
  }

  switch(v15)
  {
    case 1:
      v18 = (v14 + 8);
      if (v16 != (v14 + 8))
      {
        goto LABEL_30;
      }

LABEL_27:
      if (v12 == 5)
      {
        goto LABEL_33;
      }

      goto LABEL_49;
    case 2:
      v18 = (v14 + 16);
      if (v16 != (v14 + 16))
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 5:
      v17 = *v14;
LABEL_22:
      v18 = (v17 + 8 * *(v14 + 8));
      if (v16 != v18)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
  }

  v18 = 0;
  if (!v16)
  {
    goto LABEL_27;
  }

  do
  {
LABEL_30:
    if (*a4)
    {
      return result;
    }

    ++v16;
  }

  while (v16 != v18);
  if (*(a2 + 18) == 5)
  {
LABEL_33:
    if (*(a2 + 2) >= 3u)
    {
      v19 = *(*a2 + 2);
      v20 = *(v19 + 18);
      v21 = v19;
      if ((v20 - 1) >= 2)
      {
        if (v20 == 5)
        {
          v22 = *v19;
          v21 = *v19;
LABEL_42:
          v23 = (v22 + 8 * *(v19 + 8));
          goto LABEL_48;
        }

        v21 = 0;
      }

      switch(v20)
      {
        case 1:
          v23 = (v19 + 8);
          goto LABEL_48;
        case 2:
          v23 = (v19 + 16);
          goto LABEL_48;
        case 5:
          v22 = *v19;
          goto LABEL_42;
      }

      v23 = 0;
LABEL_48:
      while (v21 != v23)
      {
        if (*a4)
        {
          return result;
        }

        ++v21;
      }
    }
  }

LABEL_49:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleDroppedArgument@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "t", 1uLL, *(this + 1593));
  if (*a2 >= 1)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedEnumTagStore@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 == 1)
  {
    goto LABEL_17;
  }

  v10 = a2;
  if (v8 == 2)
  {
    goto LABEL_7;
  }

  if (v8 != 5 || (v11 = *(a2 + 2)) == 0)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if (v11 != 2)
  {
    v9 = *a2;
LABEL_17:
    v20 = *v9;
LABEL_18:
    if (*a4)
    {
      return result;
    }

    v21 = *(v5 + 18);
    v22 = v5;
    if (v21 != 2)
    {
      if (v21 != 5 || *(v5 + 2) < 2u)
      {
        v23 = 0;
LABEL_25:
        if (*a4)
        {
          return result;
        }

        result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOi", 3uLL, *(this + 1593));
        v13 = **(*v5 + 16);
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      v22 = *v5;
    }

    v23 = *(v22 + 1);
    goto LABEL_25;
  }

  v10 = *a2;
LABEL_7:
  if (*a4)
  {
    return result;
  }

  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOi", 3uLL, *(this + 1593));
  if (*(v5 + 18) == 5)
  {
    v5 = *v5;
  }

  v13 = **(v5 + 1);
  if (v13)
  {
LABEL_11:
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, v13 - 1, *(this + 1593));
  }

LABEL_12:
  v14 = *(this + 3184);
  v15 = *(this + 3185);
  v16 = *(this + 1591);
  if (v14 >= v15)
  {
    v17 = *(this + 1593);
    v18 = v17[1];
    if (&v16[v15] == v18)
    {
      v19 = v17[2];
      if ((v18 + 1) <= v19)
      {
        v17[1] = v18 + 1;
        LODWORD(v24) = 1;
LABEL_40:
        *(this + 3185) = v15 + v24;
        goto LABEL_41;
      }
    }

    else
    {
      v19 = v17[2];
    }

    if ((2 * v15) <= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = (2 * v15);
    }

    v25 = v24 + v15;
    if (!v18 || &v18[v25] > v19)
    {
      v26 = 2 * v17[4];
      if (v26 <= v25 + 1)
      {
        v26 = v25 + 1;
      }

      v17[4] = v26;
      v27 = v26 + 8;
      result = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
      v28 = result + v27;
      *result = v17[3];
      v18 = (result + 1);
      v17[2] = v28;
      v17[3] = result;
    }

    v17[1] = &v18[v25];
    if (v15)
    {
      result = memcpy(v18, *(this + 1591), v15);
    }

    *(this + 1591) = v18;
    LODWORD(v15) = *(this + 3185);
    v16 = v18;
    v14 = *(this + 3184);
    goto LABEL_40;
  }

LABEL_41:
  *(this + 3184) = v14 + 1;
  v16[v14] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedEnumProjectDataForLoad@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 == 1)
  {
    goto LABEL_17;
  }

  v10 = a2;
  if (v8 == 2)
  {
    goto LABEL_7;
  }

  if (v8 != 5 || (v11 = *(a2 + 2)) == 0)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if (v11 != 2)
  {
    v9 = *a2;
LABEL_17:
    v20 = *v9;
LABEL_18:
    if (*a4)
    {
      return result;
    }

    v21 = *(v5 + 18);
    v22 = v5;
    if (v21 != 2)
    {
      if (v21 != 5 || *(v5 + 2) < 2u)
      {
        v23 = 0;
LABEL_25:
        if (*a4)
        {
          return result;
        }

        result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOj", 3uLL, *(this + 1593));
        v13 = **(*v5 + 16);
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      v22 = *v5;
    }

    v23 = *(v22 + 1);
    goto LABEL_25;
  }

  v10 = *a2;
LABEL_7:
  if (*a4)
  {
    return result;
  }

  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOj", 3uLL, *(this + 1593));
  if (*(v5 + 18) == 5)
  {
    v5 = *v5;
  }

  v13 = **(v5 + 1);
  if (v13)
  {
LABEL_11:
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, v13 - 1, *(this + 1593));
  }

LABEL_12:
  v14 = *(this + 3184);
  v15 = *(this + 3185);
  v16 = *(this + 1591);
  if (v14 >= v15)
  {
    v17 = *(this + 1593);
    v18 = v17[1];
    if (&v16[v15] == v18)
    {
      v19 = v17[2];
      if ((v18 + 1) <= v19)
      {
        v17[1] = v18 + 1;
        LODWORD(v24) = 1;
LABEL_40:
        *(this + 3185) = v15 + v24;
        goto LABEL_41;
      }
    }

    else
    {
      v19 = v17[2];
    }

    if ((2 * v15) <= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = (2 * v15);
    }

    v25 = v24 + v15;
    if (!v18 || &v18[v25] > v19)
    {
      v26 = 2 * v17[4];
      if (v26 <= v25 + 1)
      {
        v26 = v25 + 1;
      }

      v17[4] = v26;
      v27 = v26 + 8;
      result = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
      v28 = result + v27;
      *result = v17[3];
      v18 = (result + 1);
      v17[2] = v28;
      v17[3] = result;
    }

    v17[1] = &v18[v25];
    if (v15)
    {
      result = memcpy(v18, *(this + 1591), v15);
    }

    *(this + 1591) = v18;
    LODWORD(v15) = *(this + 3185);
    v16 = v18;
    v14 = *(this + 3184);
    goto LABEL_40;
  }

LABEL_41:
  *(this + 3184) = v14 + 1;
  v16[v14] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedEnumGetTag@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOg", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithTakeNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOB", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithCopyNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOC", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithTakeNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOD", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithCopyNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOF", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedDestroyNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WOH", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDependentGenericInverseConformanceRequirement@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 2)
  {
    v7 = a2;
    v8 = a2;
  }

  else
  {
    if (v6 != 5 || *(a2 + 2) != 2)
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1130;
      return this;
    }

    v7 = a2;
    v8 = *a2;
  }

  if (v37)
  {
    *a4 = v37;
    *(a4 + 16) = v38;
    return this;
  }

  v9 = v40;
  if ((v39 & 0x80000000) == 0 && !v40)
  {
    *a4 = 1;
    *(a4 + 8) = v7;
    *(a4 + 16) = 1139;
    return this;
  }

  v10 = *(v4 + 12744);
  if (v39 == 1)
  {
    v18 = "Rj";
  }

  else if (v39)
  {
    if (v39 == -1)
    {
      this = swift::Demangle::__runtime::CharVector::append((v4 + 12728), "RI", 2uLL, v10);
      if (*(v7 + 18) == 5)
      {
        v7 = *v7;
      }

      v11 = **(v7 + 1);
      if (v11)
      {
        this = swift::Demangle::__runtime::CharVector::append((v4 + 12728), v11 - 1, *(v4 + 12744));
      }

      v12 = *(v4 + 12736);
      v13 = *(v4 + 12740);
      v14 = *(v4 + 12728);
      if (v12 < v13)
      {
        goto LABEL_60;
      }

      v15 = *(v4 + 12744);
      v16 = v15[1];
      if (&v14[v13] == v16)
      {
        v17 = v15[2];
        if ((v16 + 1) <= v17)
        {
          v15[1] = v16 + 1;
          LODWORD(v32) = 1;
LABEL_59:
          *(v4 + 12740) = v13 + v32;
LABEL_60:
          *(v4 + 12736) = v12 + 1;
          v14[v12] = 95;
          goto LABEL_61;
        }
      }

      else
      {
        v17 = v15[2];
      }

      if ((2 * v13) <= 4)
      {
        v32 = 4;
      }

      else
      {
        v32 = (2 * v13);
      }

      v33 = v32 + v13;
      if (!v16 || &v16[v33] > v17)
      {
        v34 = 2 * v15[4];
        if (v34 <= v33 + 1)
        {
          v34 = v33 + 1;
        }

        v15[4] = v34;
        v35 = v34 + 8;
        this = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
        v36 = this + v35;
        *this = v15[3];
        v16 = this + 8;
        v15[2] = v36;
        v15[3] = this;
      }

      v15[1] = &v16[v33];
      if (v13)
      {
        this = memcpy(v16, *(v4 + 12728), v13);
      }

      *(v4 + 12728) = v16;
      LODWORD(v13) = *(v4 + 12740);
      v14 = v16;
      v12 = *(v4 + 12736);
      goto LABEL_59;
    }

    v18 = "RJ";
  }

  else
  {
    v18 = "Ri";
  }

  swift::Demangle::__runtime::CharVector::append((v4 + 12728), v18, 2uLL, v10);
  if (*(v7 + 18) == 5)
  {
    v7 = *v7;
  }

  v19 = **(v7 + 1);
  if (v19)
  {
    swift::Demangle::__runtime::CharVector::append((v4 + 12728), v19 - 1, *(v4 + 12744));
  }

  v20 = *(v4 + 12736);
  v21 = *(v4 + 12740);
  v22 = *(v4 + 12728);
  if (v20 >= v21)
  {
    v23 = *(v4 + 12744);
    v24 = v23[1];
    if (&v22[v21] == v24)
    {
      v25 = v23[2];
      if ((v24 + 1) <= v25)
      {
        v23[1] = v24 + 1;
        LODWORD(v26) = 1;
LABEL_44:
        *(v4 + 12740) = v21 + v26;
        goto LABEL_45;
      }
    }

    else
    {
      v25 = v23[2];
    }

    if ((2 * v21) <= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = (2 * v21);
    }

    v27 = v26 + v21;
    if (!v24 || &v24[v27] > v25)
    {
      v28 = 2 * v23[4];
      if (v28 <= v27 + 1)
      {
        v28 = v27 + 1;
      }

      v23[4] = v28;
      v29 = v28 + 8;
      v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
      v31 = v30 + v29;
      *v30 = v23[3];
      v24 = (v30 + 1);
      v23[2] = v31;
      v23[3] = v30;
    }

    v23[1] = &v24[v27];
    if (v21)
    {
      memcpy(v24, *(v4 + 12728), v21);
    }

    *(v4 + 12728) = v24;
    LODWORD(v21) = *(v4 + 12740);
    v22 = v24;
    v20 = *(v4 + 12736);
    goto LABEL_44;
  }

LABEL_45:
  *(v4 + 12736) = v20 + 1;
  v22[v20] = 95;
LABEL_61:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleInteger@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "$", 1uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  v7 = *(this + 3184);
  v8 = *(this + 3185);
  v9 = *(this + 1591);
  if (v7 >= v8)
  {
    v10 = *(this + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_21:
        *(this + 3185) = v8 + v13;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v8);
    }

    v14 = v13 + v8;
    if (v11)
    {
      v15 = &v11[v13 + v8] > v12;
    }

    else
    {
      v15 = 1;
    }

    v9 = v10[1];
    if (v15)
    {
      v16 = 2 * v10[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v10[4] = v16;
      v17 = v16 + 8;
      result = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v18 = result + v17;
      *result = v10[3];
      v9 = (result + 1);
      v10[2] = v18;
      v10[3] = result;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      result = memcpy(v9, *(this + 1591), v8);
    }

    *(this + 1591) = v9;
    LODWORD(v8) = *(this + 3185);
    v7 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v7 + 1;
  v9[v7] = 95;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleNegativeInteger@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "$n", 2uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 3182, ~*a2, *(this + 1593));
  }

  v7 = *(this + 3184);
  v8 = *(this + 3185);
  v9 = *(this + 1591);
  if (v7 >= v8)
  {
    v10 = *(this + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_21:
        *(this + 3185) = v8 + v13;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v8);
    }

    v14 = v13 + v8;
    if (v11)
    {
      v15 = &v11[v13 + v8] > v12;
    }

    else
    {
      v15 = 1;
    }

    v9 = v10[1];
    if (v15)
    {
      v16 = 2 * v10[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v10[4] = v16;
      v17 = v16 + 8;
      result = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v18 = result + v17;
      *result = v10[3];
      v9 = (result + 1);
      v10[2] = v18;
      v10[3] = result;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      result = memcpy(v9, *(this + 1591), v8);
    }

    *(this + 1591) = v9;
    LODWORD(v8) = *(this + 3185);
    v7 = *(this + 3184);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 3184) = v7 + 1;
  v9[v7] = 95;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDependentGenericParamValueMarker@<X0>(_anonymous_namespace_::Remangler *this@<X0>, unsigned __int8 **a2@<X1>, int a3@<W2>, int *a4@<X8>)
{
  v4 = *(a2 + 18);
  v5 = a2;
  if (v4 != 2)
  {
    if (v4 != 5 || *(a2 + 2) != 2)
    {
      v10 = 4122;
      v11 = 1;
      goto LABEL_41;
    }

    v5 = *a2;
  }

  v6 = *v5;
  if (v6[18] - 1 >= 2)
  {
    v6 = *v6;
  }

  if (*(*v6 + 16) != 39)
  {
    v10 = 4123;
    v11 = 1;
    goto LABEL_41;
  }

  v7 = a2;
  if (v4 == 5)
  {
    v7 = *a2;
  }

  if (*(*(v7 + 1) + 16) != 243)
  {
    v10 = 4124;
    v11 = 1;
    goto LABEL_41;
  }

  v8 = a2;
  if (v4 != 2)
  {
    if (*(a2 + 2) < 2u)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v8 = *a2;
  }

  v9 = *(v8 + 1);
LABEL_19:
  v12 = *(v9 + 18);
  if (v12 == 1)
  {
    v13 = a2;
LABEL_25:
    v14 = a4;
    v15 = this;
    if (*v14)
    {
      return this;
    }

    swift::Demangle::__runtime::CharVector::append(v15 + 1591, "RV", 2uLL, *(v15 + 1593));
    v16 = *(v13 + 18);
    if ((v16 - 1) < 2)
    {
      v17 = v15;
LABEL_31:
      v18 = *v13;
      goto LABEL_34;
    }

    if (v16 == 5)
    {
      v17 = v15;
      if (*(v13 + 2))
      {
        v13 = *v13;
        goto LABEL_31;
      }

      v18 = 0;
    }

    else
    {
      v18 = 0;
      v17 = v15;
    }

LABEL_34:
    v19 = *(v18 + 18);
    if ((v19 - 1) >= 2)
    {
      if (v19 != 5 || !*(v18 + 2))
      {
        v20 = 0;
        goto LABEL_40;
      }

      v18 = *v18;
    }

    v20 = *v18;
LABEL_40:
    v11 = 0;
    a2 = 0;
    v10 = 0;
    a4 = v14;
    goto LABEL_41;
  }

  if (v12 == 5 && *(v9 + 2) == 1)
  {
    v13 = a2;
    v9 = *v9;
    goto LABEL_25;
  }

  v10 = 322;
  v11 = 10;
  a2 = v9;
LABEL_41:
  *a4 = v11;
  *(a4 + 1) = a2;
  a4[4] = v10;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleConstValue@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Yg", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAnyConstructor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
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
    if (*a5)
    {
      return result;
    }

    ++v10;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "f", 1uLL, this[1593]);
  v14 = *(this + 3184);
  v15 = *(this + 3185);
  v16 = this[1591];
  if (v14 >= v15)
  {
    v17 = this[1593];
    v18 = *(v17 + 1);
    if (&v16[v15] == v18)
    {
      v19 = *(v17 + 2);
      if ((v18 + 1) <= v19)
      {
        *(v17 + 1) = v18 + 1;
        LODWORD(v20) = 1;
LABEL_31:
        *(this + 3185) = v15 + v20;
        goto LABEL_32;
      }
    }

    else
    {
      v19 = *(v17 + 2);
    }

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
      v22 = 2 * *(v17 + 4);
      if (v22 <= v21 + 1)
      {
        v22 = v21 + 1;
      }

      *(v17 + 4) = v22;
      v23 = v22 + 8;
      result = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v24 = result + v23;
      *result = *(v17 + 3);
      v18 = (result + 1);
      *(v17 + 2) = v24;
      *(v17 + 3) = result;
    }

    *(v17 + 1) = &v18[v21];
    if (v15)
    {
      result = memcpy(v18, this[1591], v15);
    }

    this[1591] = v18;
    LODWORD(v15) = *(this + 3185);
    v16 = v18;
    v14 = *(this + 3184);
    goto LABEL_31;
  }

LABEL_32:
  *(this + 3184) = v14 + 1;
  v16[v14] = a3;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleChildNodes@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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

char **swift::Demangle::__runtime::RemanglerBuffer::operator<<(char **result, char a2)
{
  v3 = *(result + 2);
  v4 = *(result + 3);
  v5 = *result;
  if (v3 >= v4)
  {
    v6 = result[2];
    v7 = *(v6 + 1);
    if (&v5[v4] == v7)
    {
      v8 = *(v6 + 2);
      if ((v7 + 1) <= v8)
      {
        *(v6 + 1) = v7 + 1;
        LODWORD(v9) = 1;
LABEL_19:
        *(result + 3) = v4 + v9;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = *(v6 + 2);
    }

    if ((2 * v4) <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = (2 * v4);
    }

    v10 = v9 + v4;
    if (v7)
    {
      v11 = &v7[v9 + v4] > v8;
    }

    else
    {
      v11 = 1;
    }

    v5 = *(v6 + 1);
    if (v11)
    {
      v12 = 2 * *(v6 + 4);
      if (v12 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      *(v6 + 4) = v12;
      v13 = v12 + 8;
      v14 = result;
      v15 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      result = v14;
      v16 = v15 + v13;
      *v15 = *(v6 + 3);
      v5 = (v15 + 1);
      *(v6 + 2) = v16;
      *(v6 + 3) = v15;
    }

    *(v6 + 1) = &v5[v10];
    if (v4)
    {
      v17 = result;
      memcpy(v5, *result, v4);
      result = v17;
    }

    *result = v5;
    v3 = *(result + 2);
    LODWORD(v4) = *(result + 3);
    goto LABEL_19;
  }

LABEL_20:
  *(result + 2) = v3 + 1;
  v5[v3] = a2;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleAnyProtocolConformance@<X0>(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a3@<X1>, int a4@<W2>)
{
  v4 = *(a3 + 8);
  if (v4 > 0x30)
  {
    switch(v4)
    {
      case '1':
        v8 = a4 + 1;

      case '2':
        v11 = a4 + 1;

      case '3':
        v6 = a4 + 1;

      default:
        goto LABEL_20;
    }
  }

  else
  {
    if (v4 != 27)
    {
      if (v4 != 28)
      {
        if (v4 == 48)
        {
          v5 = a4 + 1;
        }

LABEL_20:
        *a1 = 0;
        a1[1] = 0;
        *(a1 + 4) = 0;
        return this;
      }

      v9 = *(a3 + 18);
      if ((v9 - 1) >= 2)
      {
        if (v9 != 5 || !*(a3 + 2))
        {
          v10 = 0;
LABEL_30:
          v13 = this;
          if (!*a1)
          {
            this = swift::Demangle::__runtime::CharVector::append(v13 + 1591, "HX", 2uLL, *(v13 + 1593));
            *a1 = 0;
            a1[1] = 0;
            *(a1 + 4) = 0;
          }

          return this;
        }

        a3 = *a3;
      }

      v10 = *a3;
      goto LABEL_30;
    }

    v7 = a4 + 1;
  }
}

uint64_t anonymous namespace::Remangler::mangleListSeparator(uint64_t this, BOOL *a2)
{
  if (*a2)
  {
    v2 = *(this + 12736);
    v3 = *(this + 12740);
    v4 = *(this + 12728);
    if (v2 < v3)
    {
LABEL_21:
      *(this + 12736) = v2 + 1;
      v4[v2] = 95;
      *a2 = 0;
      return this;
    }

    v5 = *(this + 12744);
    v6 = v5[1];
    if (&v4[v3] == v6)
    {
      v7 = v5[2];
      if ((v6 + 1) <= v7)
      {
        v5[1] = v6 + 1;
        LODWORD(v8) = 1;
LABEL_20:
        *(this + 12740) = v3 + v8;
        goto LABEL_21;
      }
    }

    else
    {
      v7 = v5[2];
    }

    if ((2 * v3) <= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = (2 * v3);
    }

    v9 = v8 + v3;
    if (v6)
    {
      v10 = &v6[v8 + v3] > v7;
    }

    else
    {
      v10 = 1;
    }

    v4 = v5[1];
    if (v10)
    {
      v11 = 2 * v5[4];
      if (v11 <= v9 + 1)
      {
        v11 = v9 + 1;
      }

      v5[4] = v11;
      v12 = v11 + 8;
      v13 = this;
      v14 = a2;
      v15 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      a2 = v14;
      v16 = v15;
      this = v13;
      v17 = v16 + v12;
      *v16 = v5[3];
      v4 = v16 + 1;
      v5[2] = v17;
      v5[3] = v16;
    }

    v5[1] = &v4[v9];
    if (v3)
    {
      v18 = this;
      v19 = a2;
      memcpy(v4, *(this + 12728), v3);
      this = v18;
      a2 = v19;
    }

    *(this + 12728) = v4;
    LODWORD(v3) = *(this + 12740);
    v2 = *(this + 12736);
    goto LABEL_20;
  }

  return this;
}

uint64_t anonymous namespace::Remangler::mangleEndOfList(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = *(this + 12736);
    v3 = *(this + 12740);
    v4 = *(this + 12728);
    if (v2 < v3)
    {
LABEL_21:
      *(this + 12736) = v2 + 1;
      v4[v2] = 121;
      return this;
    }

    v5 = *(this + 12744);
    v6 = v5[1];
    if (&v4[v3] == v6)
    {
      v7 = v5[2];
      if ((v6 + 1) <= v7)
      {
        v5[1] = v6 + 1;
        LODWORD(v8) = 1;
LABEL_20:
        *(this + 12740) = v3 + v8;
        goto LABEL_21;
      }
    }

    else
    {
      v7 = v5[2];
    }

    if ((2 * v3) <= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = (2 * v3);
    }

    v9 = v8 + v3;
    if (v6)
    {
      v10 = &v6[v8 + v3] > v7;
    }

    else
    {
      v10 = 1;
    }

    v4 = v5[1];
    if (v10)
    {
      v11 = 2 * v5[4];
      if (v11 <= v9 + 1)
      {
        v11 = v9 + 1;
      }

      v5[4] = v11;
      v12 = v11 + 8;
      v13 = this;
      v14 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      this = v13;
      v15 = v14 + v12;
      *v14 = v5[3];
      v4 = v14 + 1;
      v5[2] = v15;
      v5[3] = v14;
    }

    v5[1] = &v4[v9];
    if (v3)
    {
      v16 = this;
      memcpy(v4, *(this + 12728), v3);
      this = v16;
    }

    *(this + 12728) = v4;
    LODWORD(v3) = *(this + 12740);
    v2 = *(this + 12736);
    goto LABEL_20;
  }

  return this;
}

uint64_t anonymous namespace::Remangler::trySubstitution(_anonymous_namespace_::Remangler *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::SubstitutionEntry *a3, int a4)
{
  {
    return 1;
  }

  swift::Demangle::__runtime::RemanglerBase::entryForNode(&__s2, this, a2, a4);
  *a3 = __s2;
  *(a3 + 16) = v46;
  Substitution = swift::Demangle::__runtime::RemanglerBase::findSubstitution(this, a3);
  if ((Substitution & 0x80000000) != 0)
  {
    return 0;
  }

  if (Substitution >= 0x1A)
  {
    v9 = *(this + 3184);
    v10 = *(this + 3185);
    v11 = *(this + 1591);
    if (v9 < v10)
    {
      goto LABEL_25;
    }

    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v22) = 1;
LABEL_24:
        *(this + 3185) = v10 + v22;
LABEL_25:
        *(this + 3184) = v9 + 1;
        v11[v9] = 65;
        if (Substitution != 26)
        {
          swift::Demangle::__runtime::CharVector::append(this + 3182, Substitution - 27, *(this + 1593));
        }

        v29 = *(this + 3184);
        v30 = *(this + 3185);
        v31 = *(this + 1591);
        if (v29 < v30)
        {
          goto LABEL_43;
        }

        v32 = *(this + 1593);
        v33 = v32[1];
        if (&v31[v30] == v33)
        {
          v34 = v32[2];
          if ((v33 + 1) <= v34)
          {
            v32[1] = v33 + 1;
            LODWORD(v35) = 1;
LABEL_42:
            *(this + 3185) = v30 + v35;
LABEL_43:
            *(this + 3184) = v29 + 1;
            v31[v29] = 95;
            return 1;
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
          v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
          *v39 = v32[3];
          v33 = (v39 + 1);
          v32[2] = v39 + v38;
          v32[3] = v39;
        }

        v32[1] = &v33[v36];
        if (v30)
        {
          memcpy(v33, *(this + 1591), v30);
        }

        *(this + 1591) = v33;
        LODWORD(v30) = *(this + 3185);
        v31 = v33;
        v29 = *(this + 3184);
        goto LABEL_42;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = (2 * v10);
    }

    v23 = v22 + v10;
    if (!v13 || &v13[v23] > v14)
    {
      v24 = 2 * v12[4];
      if (v24 <= v23 + 1)
      {
        v24 = v23 + 1;
      }

      v12[4] = v24;
      v25 = v24 + 8;
      v26 = Substitution;
      v27 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
      Substitution = v26;
      *v27 = v12[3];
      v13 = (v27 + 1);
      v12[2] = v27 + v25;
      v12[3] = v27;
    }

    v12[1] = &v13[v23];
    if (v10)
    {
      v28 = Substitution;
      memcpy(v13, *(this + 1591), v10);
      Substitution = v28;
    }

    *(this + 1591) = v13;
    LODWORD(v10) = *(this + 3185);
    v11 = v13;
    v9 = *(this + 3184);
    goto LABEL_24;
  }

  LOBYTE(__s2) = Substitution + 65;
  {
    v16 = *(this + 3184);
    v17 = *(this + 3185);
    v18 = *(this + 1591);
    if (v16 < v17)
    {
LABEL_57:
      *(this + 3184) = v16 + 1;
      v18[v16] = 65;
      swift::Demangle::__runtime::CharVector::append(this + 1591, &__s2, 1uLL, *(this + 1593));
      return 1;
    }

    v19 = *(this + 1593);
    v20 = v19[1];
    if (&v18[v17] == v20)
    {
      v21 = v19[2];
      if ((v20 + 1) <= v21)
      {
        v19[1] = v20 + 1;
        LODWORD(v40) = 1;
LABEL_56:
        *(this + 3185) = v17 + v40;
        goto LABEL_57;
      }
    }

    else
    {
      v21 = v19[2];
    }

    if ((2 * v17) <= 4)
    {
      v40 = 4;
    }

    else
    {
      v40 = (2 * v17);
    }

    v41 = v40 + v17;
    if (!v20 || &v20[v41] > v21)
    {
      v42 = 2 * v19[4];
      if (v42 <= v41 + 1)
      {
        v42 = v41 + 1;
      }

      v19[4] = v42;
      v43 = v42 + 8;
      v44 = malloc_type_malloc(v42 + 8, 0x2004093837F09uLL);
      *v44 = v19[3];
      v20 = (v44 + 1);
      v19[2] = v44 + v43;
      v19[3] = v44;
    }

    v19[1] = &v20[v41];
    if (v17)
    {
      memcpy(v20, *(this + 1591), v17);
    }

    *(this + 1591) = v20;
    LODWORD(v17) = *(this + 3185);
    v18 = v20;
    v16 = *(this + 3184);
    goto LABEL_56;
  }

  return 1;
}

uint64_t anonymous namespace::Remangler::mangleStandardSubstitution(_anonymous_namespace_::Remangler *this, swift::Demangle::__runtime::Node *a2)
{
  v4 = *(a2 + 8);
  if (v4 > 0xBD)
  {
    if (v4 != 230 && v4 != 190)
    {
      return 0;
    }

LABEL_7:
    v34 = v2;
    v35 = v3;
    v5 = *(a2 + 18);
    v6 = a2;
    if ((v5 - 1) >= 2)
    {
      if (v5 != 5 || !*(a2 + 2))
      {
        v7 = 0;
LABEL_13:
        if (*(v7 + 8) != 163 || v7[1] != 5)
        {
          return 0;
        }

        v8 = *v7;
        v9 = *v8;
        v10 = *(v8 + 4);
        if (v9 != 1718187859 || v10 != 116)
        {
          return 0;
        }

        if (v5 == 5)
        {
          if (*(*(*a2 + 8) + 16) == 103)
          {
            v14 = this;
            a2 = *a2;
LABEL_27:
            swift::Mangle::__runtime::getStandardTypeSubst(**(a2 + 1), *(*(a2 + 1) + 8), 1, &v31);
            v12 = v33;
            if (v33 != 1)
            {
              return v12;
            }

            v15 = v33;
            v16 = v14;
            v12 = v15;
            if (v17)
            {
              return v12;
            }

            v18 = v14;
            v19 = *(v14 + 3184);
            v20 = *(v14 + 3185);
            v21 = *(v16 + 1591);
            if (v19 < v20)
            {
              goto LABEL_45;
            }

            v22 = *(v16 + 1593);
            v23 = v22[1];
            if (&v21[v20] == v23)
            {
              v24 = v22[2];
              if ((v23 + 1) <= v24)
              {
                v22[1] = v23 + 1;
                LODWORD(v25) = 1;
LABEL_44:
                *(v18 + 3185) = v20 + v25;
LABEL_45:
                *(v18 + 3184) = v19 + 1;
                v21[v19] = 83;
                swift::Demangle::__runtime::CharVector::append(v18 + 1591, v31, v32, *(v18 + 1593));
                return v15;
              }
            }

            else
            {
              v24 = v22[2];
            }

            if ((2 * v20) <= 4)
            {
              v25 = 4;
            }

            else
            {
              v25 = (2 * v20);
            }

            v26 = v25 + v20;
            if (!v23 || &v23[v26] > v24)
            {
              v27 = 2 * v22[4];
              if (v27 <= v26 + 1)
              {
                v27 = v26 + 1;
              }

              v22[4] = v27;
              v28 = v27 + 8;
              v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
              v18 = v16;
              v30 = v29 + v28;
              *v29 = v22[3];
              v23 = (v29 + 1);
              v22[2] = v30;
              v22[3] = v29;
            }

            v22[1] = &v23[v26];
            if (v20)
            {
              memcpy(v23, *(v18 + 1591), v20);
              v18 = v16;
            }

            *(v18 + 1591) = v23;
            LODWORD(v20) = *(v18 + 3185);
            v21 = v23;
            v19 = *(v18 + 3184);
            goto LABEL_44;
          }
        }

        else if (*(*(a2 + 1) + 16) == 103)
        {
          v14 = this;
          goto LABEL_27;
        }

        return 0;
      }

      v6 = *a2;
    }

    v7 = *v6;
    goto LABEL_13;
  }

  if (v4 == 25 || v4 == 63)
  {
    goto LABEL_7;
  }

  return 0;
}

char **anonymous namespace::Remangler::mangleIndex(_anonymous_namespace_::Remangler *this, uint64_t a2)
{
  if (a2)
  {
    swift::Demangle::__runtime::CharVector::append(this + 3182, a2 - 1, *(this + 1593));
  }

  return swift::Demangle::__runtime::RemanglerBuffer::operator<<(this + 1591, 95);
}

uint64_t swift::Mangle::__runtime::SubstitutionMerging::tryMergeSubst<anonymous namespace::Remangler>(unint64_t *a1, uint64_t a2, void *__s2, uint64_t __n, int a5)
{
  v5 = *(a2 + 12736);
  v6 = a1[2];
  if (v6 - 1 > 0x7FE)
  {
    goto LABEL_24;
  }

  v8 = *a1;
  v7 = a1[1];
  if (v7 + *a1 != v5 || *(a1 + 24) != a5)
  {
    goto LABEL_24;
  }

  v9 = *(a2 + 12728);
  v10 = v5 - v7;
  if (v5 < v5 - v7)
  {
    v10 = *(a2 + 12736);
  }

  if (v5 <= v7)
  {
    v10 = 0;
  }

  v11 = v5 - v10;
  if (v5 == v10)
  {
    if (!__n)
    {
      goto LABEL_28;
    }

LABEL_23:
    if (a5)
    {
      goto LABEL_24;
    }

LABEL_26:
    *a1 = v5;
    a1[2] = 1;
    v24 = v5 - 1;
    *(a2 + 12736) = v5 - 1;
    v25 = v9[v5 - 1] + 32;
    v26 = *(a2 + 12740);
    if (v24 < v26)
    {
      v27 = a1;
LABEL_44:
      *(a2 + 12736) = v24 + 1;
      v9[v24] = v25;
      swift::Demangle::__runtime::CharVector::append((a2 + 12728), __s2, __n, *(a2 + 12744));
      v22 = 1;
      v27[1] = 1;
      return v22;
    }

    v35 = *(a2 + 12744);
    v36 = v35[1];
    if (&v9[v26] == v36)
    {
      v37 = v35[2];
      if ((v36 + 1) <= v37)
      {
        v35[1] = v36 + 1;
        LODWORD(v38) = 1;
LABEL_43:
        v27 = a1;
        *(a2 + 12740) = v26 + v38;
        goto LABEL_44;
      }
    }

    else
    {
      v37 = v35[2];
    }

    if ((2 * v26) <= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = (2 * v26);
    }

    v39 = v38 + v26;
    if (!v36 || &v36[v39] > v37)
    {
      v40 = 2 * v35[4];
      if (v40 <= v39 + 1)
      {
        v40 = v39 + 1;
      }

      v35[4] = v40;
      v41 = v40 + 8;
      v42 = a1;
      v43 = a2;
      v44 = __n;
      v45 = __s2;
      v46 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
      __s2 = v45;
      a2 = v43;
      __n = v44;
      v47 = v46;
      a1 = v42;
      v48 = v47 + v41;
      *v47 = v35[3];
      v36 = (v47 + 1);
      v35[2] = v48;
      v35[3] = v47;
    }

    v35[1] = &v36[v39];
    if (v26)
    {
      v49 = a1;
      v50 = a2;
      v51 = __s2;
      v52 = v26;
      v53 = __n;
      memcpy(v36, *(a2 + 12728), v52);
      __s2 = v51;
      a2 = v50;
      __n = v53;
      a1 = v49;
    }

    *(a2 + 12728) = v36;
    LODWORD(v26) = *(a2 + 12740);
    v9 = v36;
    v24 = *(a2 + 12736);
    goto LABEL_43;
  }

  v12 = 0;
  v13 = &v9[v10];
  while (v13[v12] - 48 <= 9)
  {
    if (v11 == ++v12)
    {
      v12 = -1;
      break;
    }
  }

  if (v11 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  if (v11 - v14 != __n)
  {
    goto LABEL_23;
  }

  if (v11 <= v12)
  {
LABEL_28:
    a1[2] = v6 + 1;
    *(a2 + 12736) = v8;
    v28 = *(a2 + 12744);
    v29 = a1;
    v30 = (a2 + 12728);
    v31 = a2;
    v32 = v6 + 1;
    v33 = __s2;
    v34 = __n;
    swift::Demangle::__runtime::CharVector::append(v30, v32, v28);
    swift::Demangle::__runtime::CharVector::append((v31 + 12728), v33, v34, *(v31 + 12744));
    v29[1] = *(v31 + 12736) - *v29;
    return 1;
  }

  v15 = a1;
  v16 = a2;
  v17 = __s2;
  v18 = __n;
  v19 = a5;
  v20 = memcmp(&v13[v14], __s2, __n);
  LOBYTE(a5) = v19;
  __s2 = v17;
  a2 = v16;
  __n = v18;
  v21 = v20;
  a1 = v15;
  if (v21 && (v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_24:
  v22 = 0;
  *a1 = v5 + 1;
  a1[1] = __n;
  a1[2] = 1;
  *(a1 + 24) = a5;
  return v22;
}

uint64_t *anonymous namespace::Remangler::mangleChildNodesReversed@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return this;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAnyNominalType@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 >= 0x401)
  {
    *a4 = 3;
    *(a4 + 8) = a2;
    v6 = 547;
LABEL_3:
    *(a4 + 16) = v6;
    return this;
  }

  v8 = this;
  this = swift::Demangle::__runtime::isSpecialized(a2, a2);
  if (!this)
  {
    v9 = *(a2 + 8);
    if (v9 > 0xE5)
    {
      switch(v9)
      {
        case 0xF5u:
          v10 = "a";
          break;
        case 0xF4u:
          v18 = (*(v8 + 12824))(*(v8 + 12832), 0, *a2);

        case 0xE6u:
          v10 = "V";
          break;
        default:
          goto LABEL_29;
      }
    }

    else
    {
      switch(v9)
      {
        case 0x19u:
          v10 = "C";
          break;
        case 0x3Fu:
          v10 = "O";
          break;
        case 0xB1u:
          v10 = "XY";
          v11 = a4;
          v12 = v8;
          v13 = a2;
          v14 = 2;
LABEL_32:

        default:
LABEL_29:
          *a4 = 5;
          *(a4 + 8) = a2;
          v6 = 589;
          goto LABEL_3;
      }
    }

    v11 = a4;
    v12 = v8;
    v13 = a2;
    v14 = 1;
    goto LABEL_32;
  }

  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  if (this)
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return this;
  }

  this = swift::Demangle::__runtime::getUnspecialized(a2, *v8, &v24);
  if (v24)
  {
    *a4 = v24;
    *(a4 + 16) = v25;
    return this;
  }

  if (!*a4)
  {
    v23 = 121;
    if (!*a4)
    {
      if (*(a2 + 18) != 5 || *(a2 + 2) != 3)
      {
        goto LABEL_52;
      }

      v15 = *(*a2 + 16);
      v16 = *(v15 + 18);
      if (v16 != 1)
      {
        if (v16 != 5)
        {
          if (v16 == 2)
          {
            v16 = 2;
            v17 = 0;
            goto LABEL_40;
          }

          goto LABEL_52;
        }

        v16 = *(v15 + 2);
        if (!v16)
        {
LABEL_52:
          swift::Demangle::__runtime::RemanglerBuffer::operator<<((v8 + 12728), 71);
          this = swift::Demangle::__runtime::RemanglerBase::addSubstitution(v8, v27);
          goto LABEL_7;
        }
      }

      v17 = 0;
      while (1)
      {
LABEL_40:
        v19 = *(v15 + 18);
        v20 = v19 - 1;
        if (v19 != 1)
        {
          if (v19 == 5)
          {
            v19 = *(v15 + 2);
          }

          else
          {
            if (v19 != 2)
            {
              goto LABEL_49;
            }

            v19 = 2;
          }
        }

        if (v19 > v17)
        {
          v21 = v15;
          if (v20 >= 2)
          {
            v21 = *v15;
          }

          v22 = v21[v17];
          goto LABEL_50;
        }

LABEL_49:
        v22 = 0;
LABEL_50:
        if (*a4)
        {
          return this;
        }

        if (v16 == ++v17)
        {
          goto LABEL_52;
        }
      }
    }
  }

  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGenericArgs@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, char *a3@<X2>, int a4@<W3>, _BOOL4 a5@<W4>, uint64_t a6@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a2 + 8);
  v12 = this;
  v13 = 0;
  switch(*(a2 + 8))
  {
    case 0:
    case 0x1E:
    case 0x22:
    case 0x34:
    case 0x35:
    case 0x48:
    case 0x4E:
    case 0x64:
    case 0x7A:
    case 0x82:
    case 0xA1:
    case 0xBC:
    case 0xBD:
    case 0xD6:
    case 0xE2:
    case 0xE5:
    case 0xE7:
    case 0x106:
    case 0x107:
    case 0x10A:
    case 0x10D:
      if (!a5)
      {
        goto LABEL_26;
      }

      v14 = *(a2 + 18);
      v15 = a2;
      if ((v14 - 1) < 2)
      {
        goto LABEL_7;
      }

      if (v14 == 5 && *(a2 + 2))
      {
        v15 = *a2;
LABEL_7:
        v16 = a2;
        v17 = *v15;
      }

      else
      {
        v16 = a2;
        v17 = 0;
      }

      if (!*a6)
      {
        this = swift::Demangle::__runtime::nodeConsumesGenericArgs(v16, v24);
        if (this)
        {
          goto LABEL_38;
        }

        goto LABEL_26;
      }

      return this;
    case 1:
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
    case 0x20:
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
    case 0x66:
    case 0x67:
    case 0x68:
    case 0x69:
    case 0x6A:
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
    case 0x83:
    case 0x84:
    case 0x85:
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
    case 0x96:
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
    case 0xA2:
    case 0xA3:
    case 0xA4:
    case 0xA5:
    case 0xA6:
    case 0xA7:
    case 0xA8:
    case 0xA9:
    case 0xAA:
    case 0xAB:
    case 0xAC:
    case 0xAD:
    case 0xAE:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
    case 0xB8:
    case 0xB9:
    case 0xBA:
    case 0xBB:
    case 0xBF:
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
    case 0xD7:
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
    case 0xF4:
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
      goto LABEL_76;
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
      v18 = v9 == 18 || a5;
      v19 = *(a2 + 18);
      v20 = a2;
      if ((v19 - 1) < 2)
      {
        goto LABEL_15;
      }

      if (v19 == 5 && *(a2 + 2))
      {
        v20 = *a2;
LABEL_15:
        v21 = *v20;
      }

      else
      {
        v21 = 0;
      }

      if (*(v21 + 8) != 243)
      {
        v13 = 658;
        goto LABEL_35;
      }

      v25 = *(v21 + 18);
      if ((v25 - 1) < 2)
      {
        goto LABEL_33;
      }

      if (v25 == 5 && *(v21 + 2))
      {
        v21 = *v21;
LABEL_33:
        v26 = *v21;
      }

      else
      {
        v26 = 0;
      }

      if (*(v26 + 8) != 244)
      {
        goto LABEL_141;
      }

      v34 = a2;
      v35 = (this[1603])(this[1604], 0, *v26);
      v36 = *(v35 + 18);
      if ((v36 - 1) < 2)
      {
        a2 = v34;
LABEL_61:
        v26 = *v35;
        goto LABEL_141;
      }

      if (v36 == 5)
      {
        a2 = v34;
        if (*(v35 + 8))
        {
          v35 = *v35;
          goto LABEL_61;
        }

        v26 = 0;
      }

      else
      {
        v26 = 0;
        a2 = v34;
      }

LABEL_141:
      v73 = *(v26 + 18);
      if ((v73 - 1) < 2)
      {
        v74 = a2;
LABEL_146:
        v75 = *v26;
        goto LABEL_148;
      }

      if (v73 == 5 && *(v26 + 2))
      {
        v74 = a2;
        v26 = *v26;
        goto LABEL_146;
      }

      v74 = a2;
      v75 = 0;
LABEL_148:
      if (*a6)
      {
        return this;
      }

      v76 = *a3;
      v77 = *(v12 + 12736);
      v78 = *(v12 + 12740);
      v79 = *(v12 + 12728);
      if (v77 < v78)
      {
        goto LABEL_165;
      }

      v80 = *(v12 + 12744);
      v81 = v80[1];
      if (&v79[v78] == v81)
      {
        v82 = v80[2];
        if ((v81 + 1) <= v82)
        {
          v80[1] = v81 + 1;
          LODWORD(v83) = 1;
          goto LABEL_164;
        }
      }

      else
      {
        v82 = v80[2];
      }

      v95 = *a3;
      if ((2 * v78) <= 4)
      {
        v83 = 4;
      }

      else
      {
        v83 = (2 * v78);
      }

      v84 = v83 + v78;
      if (!v81 || &v81[v84] > v82)
      {
        v85 = 2 * v80[4];
        if (v85 <= v84 + 1)
        {
          v85 = v84 + 1;
        }

        v80[4] = v85;
        v86 = v85 + 8;
        this = malloc_type_malloc(v85 + 8, 0x2004093837F09uLL);
        v87 = this + v86;
        *this = v80[3];
        v81 = (this + 1);
        v80[2] = v87;
        v80[3] = this;
      }

      v80[1] = &v81[v84];
      if (v78)
      {
        this = memcpy(v81, *(v12 + 12728), v78);
      }

      *(v12 + 12728) = v81;
      LODWORD(v78) = *(v12 + 12740);
      v79 = v81;
      v77 = *(v12 + 12736);
      v76 = v95;
LABEL_164:
      *(v12 + 12740) = v78 + v83;
LABEL_165:
      *(v12 + 12736) = v77 + 1;
      v79[v77] = v76;
      *a3 = 95;
      v88 = *(v74 + 18);
      if (v88 == 2)
      {
        goto LABEL_169;
      }

      if (v88 == 5 && *(v74 + 2) >= 2u)
      {
        v74 = *v74;
LABEL_169:
        v89 = *(v74 + 1);
      }

      else
      {
        v89 = 0;
      }

      v90 = *(v89 + 18);
      v91 = v89;
      if ((v90 - 1) < 2)
      {
        goto LABEL_175;
      }

      if (v90 == 5)
      {
        v92 = *v89;
        v91 = *v89;
LABEL_179:
        v93 = (v92 + 8 * *(v89 + 8));
        goto LABEL_183;
      }

      v91 = 0;
LABEL_175:
      switch(v90)
      {
        case 1:
          v93 = (v89 + 8);
          break;
        case 2:
          v93 = (v89 + 16);
          break;
        case 5:
          v92 = *v89;
          goto LABEL_179;
        default:
          v93 = 0;
          break;
      }

LABEL_183:
      if (v91 == v93)
      {
        goto LABEL_26;
      }

      while (1)
      {
        if (*a6)
        {
          return this;
        }

        v8 = 0;
        v7 = 0;
        v13 = 0;
        if (++v91 == v93)
        {
          goto LABEL_76;
        }
      }

    case 0x13:
      v37 = *(a2 + 18);
      v38 = a2;
      if ((v37 - 1) < 2)
      {
        goto LABEL_49;
      }

      if (v37 == 5 && *(a2 + 2))
      {
        v38 = *a2;
LABEL_49:
        v39 = *v38;
      }

      else
      {
        v39 = 0;
      }

      v54 = *(v39 + 8);
      if (v54 != 78 && v54 != 30)
      {
        v13 = 687;
LABEL_35:
        v8 = 1;
        v7 = a2;
        goto LABEL_76;
      }

      v56 = *(v39 + 18);
      if ((v56 - 1) < 2)
      {
        v57 = a2;
LABEL_94:
        v58 = *v39;
        goto LABEL_96;
      }

      if (v56 == 5 && *(v39 + 2))
      {
        v57 = a2;
        v39 = *v39;
        goto LABEL_94;
      }

      v57 = a2;
      v58 = 0;
LABEL_96:
      if (*a6)
      {
        return this;
      }

      swift::Demangle::__runtime::RemanglerBuffer::operator<<((v12 + 12728), *a3);
      *a3 = 95;
      v59 = *(v57 + 18);
      if (v59 == 2)
      {
        goto LABEL_101;
      }

      if (v59 == 5 && *(v57 + 2) >= 2u)
      {
        v57 = *v57;
LABEL_101:
        v60 = *(v57 + 1);
      }

      else
      {
        v60 = 0;
      }

LABEL_189:
      if (*a6)
      {
        return this;
      }

      goto LABEL_26;
    case 0x19:
    case 0x3F:
    case 0xBE:
    case 0xE6:
    case 0xF5:
      if (v9 == 245)
      {
        LOBYTE(a5) = 1;
      }

      v22 = *(a2 + 18);
      if ((v22 - 1) < 2)
      {
        goto LABEL_22;
      }

      if (v22 == 5 && *(a2 + 2))
      {
        a2 = *a2;
LABEL_22:
        v23 = *a2;
      }

      else
      {
        v23 = 0;
      }

      if (*a6)
      {
        return this;
      }

LABEL_38:
      v27 = *a3;
      v28 = *(v12 + 12736);
      v29 = *(v12 + 12740);
      v30 = *(v12 + 12728);
      if (v28 < v29)
      {
        goto LABEL_75;
      }

      v31 = *(v12 + 12744);
      v32 = v31[1];
      if (&v30[v29] == v32)
      {
        v33 = v31[2];
        if ((v32 + 1) <= v33)
        {
          v31[1] = v32 + 1;
          LODWORD(v49) = 1;
          goto LABEL_74;
        }
      }

      else
      {
        v33 = v31[2];
      }

      if ((2 * v29) <= 4)
      {
        v49 = 4;
      }

      else
      {
        v49 = (2 * v29);
      }

      v50 = v49 + v29;
      if (!v32 || &v32[v50] > v33)
      {
        v51 = 2 * v31[4];
        if (v51 <= v50 + 1)
        {
          v51 = v50 + 1;
        }

        v31[4] = v51;
        v52 = v51 + 8;
        this = malloc_type_malloc(v51 + 8, 0x2004093837F09uLL);
        v53 = this + v52;
        *this = v31[3];
        v32 = (this + 1);
        v31[2] = v53;
        v31[3] = this;
      }

      v31[1] = &v32[v50];
      if (v29)
      {
        this = memcpy(v32, *(v12 + 12728), v29);
      }

      *(v12 + 12728) = v32;
      LODWORD(v29) = *(v12 + 12740);
      v30 = v32;
      v28 = *(v12 + 12736);
LABEL_74:
      *(v12 + 12740) = v29 + v49;
LABEL_75:
      v8 = 0;
      v7 = 0;
      v13 = 0;
      *(v12 + 12736) = v28 + 1;
      v30[v28] = v27;
      *a3 = 95;
      goto LABEL_76;
    case 0x49:
      v40 = *(a2 + 18);
      if (v40 == 2)
      {
        goto LABEL_54;
      }

      if (v40 == 5 && *(a2 + 2) >= 2u)
      {
        a2 = *a2;
LABEL_54:
        v41 = *(a2 + 1);
      }

      else
      {
        v41 = 0;
      }

      goto LABEL_189;
    case 0x55:
      v42 = *a3;
      v43 = *(this + 3184);
      v44 = *(this + 3185);
      v45 = this[1591];
      if (v43 < v44)
      {
        goto LABEL_118;
      }

      v46 = this[1593];
      v47 = v46[1];
      if (&v45[v44] == v47)
      {
        v48 = v46[2];
        if ((v47 + 1) <= v48)
        {
          v46[1] = v47 + 1;
          LODWORD(v61) = 1;
          goto LABEL_117;
        }
      }

      else
      {
        v48 = v46[2];
      }

      v94 = a2;
      if ((2 * v44) <= 4)
      {
        v61 = 4;
      }

      else
      {
        v61 = (2 * v44);
      }

      v62 = v61 + v44;
      if (v47)
      {
        v63 = &v47[v61 + v44] > v48;
      }

      else
      {
        v63 = 1;
      }

      v45 = v46[1];
      if (v63)
      {
        v64 = 2 * v46[4];
        if (v64 <= v62 + 1)
        {
          v64 = v62 + 1;
        }

        v46[4] = v64;
        v65 = v64 + 8;
        this = malloc_type_malloc(v64 + 8, 0x2004093837F09uLL);
        v66 = this + v65;
        *this = v46[3];
        v45 = (this + 1);
        v46[2] = v66;
        v46[3] = this;
      }

      v46[1] = &v45[v62];
      if (v44)
      {
        this = memcpy(v45, *(v12 + 12728), v44);
      }

      *(v12 + 12728) = v45;
      LODWORD(v44) = *(v12 + 12740);
      v43 = *(v12 + 12736);
      a2 = v94;
LABEL_117:
      *(v12 + 12740) = v44 + v61;
LABEL_118:
      *(v12 + 12736) = v43 + 1;
      v45[v43] = v42;
      *a3 = 95;
      v67 = *(a2 + 18);
      if (v67 == 2)
      {
        goto LABEL_122;
      }

      if (v67 == 5 && *(a2 + 2) >= 2u)
      {
        a2 = *a2;
LABEL_122:
        v68 = *(a2 + 1);
      }

      else
      {
        v68 = 0;
      }

      v69 = *(v68 + 18);
      v70 = v68;
      if ((v69 - 1) < 2)
      {
        goto LABEL_128;
      }

      if (v69 == 5)
      {
        v71 = *v68;
        v70 = *v68;
LABEL_132:
        v72 = (v71 + 8 * *(v68 + 8));
        goto LABEL_136;
      }

      v70 = 0;
LABEL_128:
      switch(v69)
      {
        case 1:
          v72 = (v68 + 8);
          break;
        case 2:
          v72 = (v68 + 16);
          break;
        case 5:
          v71 = *v68;
          goto LABEL_132;
        default:
          v72 = 0;
          break;
      }

LABEL_136:
      if (v70 == v72)
      {
LABEL_26:
        v8 = 0;
        v7 = 0;
        v13 = 0;
LABEL_76:
        *a6 = v8;
        *(a6 + 8) = v7;
        *(a6 + 16) = v13;
      }

      else
      {
        while (1)
        {
          if (*a6)
          {
            break;
          }

          v8 = 0;
          v7 = 0;
          v13 = 0;
          if (++v70 == v72)
          {
            goto LABEL_76;
          }
        }
      }

      return this;
    default:
      v13 = 0;
      goto LABEL_76;
  }
}

uint64_t anonymous namespace::Remangler::mangleAnyGenericType@<X0>(uint64_t a1@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v20 = 0uLL;
  LOBYTE(v21) = 0;
  if ((result & 1) == 0)
  {
    v13 = *(a2 + 18);
    v14 = a2;
    if ((v13 - 1) >= 2)
    {
      if (v13 == 5)
      {
        v15 = *a2;
        v14 = *a2;
LABEL_10:
        v16 = (v15 + 8 * *(a2 + 2));
        goto LABEL_16;
      }

      v14 = 0;
    }

    switch(v13)
    {
      case 1:
        v16 = a2 + 1;
        goto LABEL_16;
      case 2:
        v16 = a2 + 2;
        goto LABEL_16;
      case 5:
        v15 = *a2;
        goto LABEL_10;
    }

    v16 = 0;
LABEL_16:
    while (v14 != v16)
    {
      if (*a6)
      {
        return result;
      }

      ++v14;
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
    v17 = *(a1 + 12680);
    if (v17 > 0xF)
    {
      v19 = *(a1 + 12712) + 16;
      v22 = v20;
      v23 = v21;
      v24 = v19;
      result = std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>((a1 + 12688), &v22);
    }

    else
    {
      *(a1 + 12680) = v17 + 1;
      v18 = a1 + 24 * v17 + 12296;
      *v18 = v20;
      *(v18 + 16) = v21;
    }
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleSingleChildNode@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
  *(a4 + 16) = 322;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleConstrainedType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  if (*(a2 + 8) != 243)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 18);
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      v5 = 0;
      goto LABEL_8;
    }

    v5 = *a2;
  }

  v5 = *v5;
LABEL_8:
  v39 = 0uLL;
  LOBYTE(v40) = 0;
  if (result)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = -1;
    *(a4 + 32) = 0;
    return result;
  }

  v37 = a3;
  v36 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v38 = v6;
  while (1)
  {
    v14 = *(v5 + 8);
    if (v14 != 46)
    {
      break;
    }

    v15 = *(v5 + 18);
    v16 = v5;
    if (v15 == 2)
    {
      goto LABEL_19;
    }

    if (v15 == 5 && *(v5 + 2) >= 2u)
    {
      v16 = *v5;
LABEL_19:
      v17 = *(v16 + 1);
      if (v11 < v10)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }

    v17 = 0;
    if (v11 < v10)
    {
      goto LABEL_36;
    }

LABEL_22:
    v18 = *v6;
    v19 = 8 * v10;
    v20 = *(*v6 + 8);
    if (&v12[v19] == v20 && (v20 + 8) <= v18[2])
    {
      v18[1] = v20 + 8;
      LODWORD(v21) = 1;
    }

    else
    {
      if (2 * v10 <= 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = 2 * v10;
      }

      v22 = 8 * (v21 + v10);
      v23 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8);
      v18[1] = v23;
      if (!v23 || &v23[v22] > v18[2])
      {
        v24 = 2 * v18[4];
        if (v24 <= v22 + 8)
        {
          v24 = v22 + 8;
        }

        v18[4] = v24;
        v25 = v12;
        v26 = v24 + 8;
        result = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
        v19 = 8 * v10;
        *result = v18[3];
        v23 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
        v27 = result + v26;
        v12 = v25;
        v18[2] = v27;
        v18[3] = result;
      }

      v18[1] = &v23[v22];
      if (v10)
      {
        result = memcpy(v23, v12, v19);
      }

      v12 = v23;
      v6 = v38;
    }

    v10 += v21;
    v15 = *(v5 + 18);
LABEL_36:
    *&v12[8 * v11] = v17;
    if ((v15 - 1) >= 2)
    {
      if (v15 != 5 || !*(v5 + 2))
      {
        v13 = 0;
        goto LABEL_42;
      }

      v5 = *v5;
    }

    v13 = *v5;
LABEL_42:
    v28 = *(v13 + 18);
    if ((v28 - 1) < 2)
    {
LABEL_13:
      v5 = *v13;
      ++v11;
    }

    else
    {
      if (v28 == 5 && *(v13 + 2))
      {
        v13 = *v13;
        goto LABEL_13;
      }

      v5 = 0;
      ++v11;
    }
  }

  if (v14 != 39 && v14 != 87)
  {
    v29 = v37;
    if (!v41)
    {
      if (!v11)
      {
        *v36 = 0;
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        *(v36 + 24) = -1;
        *(v36 + 32) = 0;
        return result;
      }

      v5 = 0;
LABEL_49:
      if (!v41)
      {
        if (v11 == 1)
        {
          v30 = "";
        }

        else
        {
          v30 = "_";
        }

        result = swift::Demangle::__runtime::CharVector::append(v6 + 1591, v30, v11 != 1, *(v6 + 1593));
        if (v11 == 1)
        {
LABEL_57:
          v33 = *(v6 + 1585);
          if (v33 > 0xF)
          {
            v35 = *(v6 + 3178) + 16;
            v41 = v39;
            v42 = v40;
            v43 = v35;
            result = std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(v6 + 1586, &v41);
          }

          else
          {
            *(v6 + 1585) = v33 + 1;
            v34 = v6 + 24 * v33 + 12296;
            *v34 = v39;
            *(v34 + 16) = v40;
          }

          goto LABEL_64;
        }

        v31 = v11 - 2;
        v32 = 2;
        while (1)
        {
          if (v41)
          {
            break;
          }

          result = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "", 0, *(v6 + 1593));
          ++v32;
          --v31;
          if (v32 > v11)
          {
            goto LABEL_57;
          }
        }
      }
    }

    *v36 = v41;
    *(v36 + 16) = v42;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    return result;
  }

  v29 = v37;
  if (v11)
  {
    goto LABEL_49;
  }

LABEL_64:
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *(v36 + 24) = v11;
  *(v36 + 32) = v5;
  return result;
}

_DWORD *anonymous namespace::Remangler::mangleDependentGenericParamIndex(_DWORD *this, swift::Demangle::__runtime::Node *a2, const char *__s, char a4)
{
  v4 = this;
  if (*(a2 + 8) != 87)
  {
    v9 = *(a2 + 18);
    if ((v9 - 1) >= 2)
    {
      if (v9 == 5)
      {
        v10 = *a2;
      }

      else
      {
        v10 = a2;
      }

      a2 = *a2;
    }

    else
    {
      v10 = a2;
    }

    v14 = **a2;
    v15 = **(v10 + 1);
    if (v14)
    {
      if (__s)
      {
        v16 = __s;
        v17 = strlen(__s);
        __s = v16;
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      this = swift::Demangle::__runtime::CharVector::append(v4 + 1591, __s, v18, *(v4 + 1593));
      v5 = v4 + 12736;
      v22 = *(v4 + 3184);
      v23 = *(v4 + 3185);
      v24 = *(v4 + 1591);
      if (v22 < v23)
      {
LABEL_54:
        *v5 = v22 + 1;
        v24[v22] = 100;
        if (v14 != 1)
        {
          this = swift::Demangle::__runtime::CharVector::append(v4 + 3182, v14 - 2, *(v4 + 1593));
        }

        v43 = *(v4 + 3184);
        v44 = *(v4 + 3185);
        v45 = *(v4 + 1591);
        if (v43 < v44)
        {
          goto LABEL_72;
        }

        v46 = *(v4 + 1593);
        v47 = v46[1];
        if (&v45[v44] == v47)
        {
          v48 = v46[2];
          if ((v47 + 1) <= v48)
          {
            v46[1] = v47 + 1;
            LODWORD(v49) = 1;
LABEL_71:
            *(v4 + 3185) = v44 + v49;
LABEL_72:
            *v5 = v43 + 1;
            v45[v43] = 95;
            if (v15)
            {
              this = swift::Demangle::__runtime::CharVector::append(v4 + 3182, v15 - 1, *(v4 + 1593));
            }

            goto LABEL_79;
          }
        }

        else
        {
          v48 = v46[2];
        }

        if ((2 * v44) <= 4)
        {
          v49 = 4;
        }

        else
        {
          v49 = (2 * v44);
        }

        v50 = v49 + v44;
        if (!v47 || &v47[v50] > v48)
        {
          v51 = 2 * v46[4];
          if (v51 <= v50 + 1)
          {
            v51 = v50 + 1;
          }

          v46[4] = v51;
          v52 = v51 + 8;
          this = malloc_type_malloc(v51 + 8, 0x2004093837F09uLL);
          v53 = this + v52;
          *this = v46[3];
          v47 = (this + 2);
          v46[2] = v53;
          v46[3] = this;
        }

        v46[1] = &v47[v50];
        if (v44)
        {
          this = memcpy(v47, *(v4 + 1591), v44);
        }

        *(v4 + 1591) = v47;
        LODWORD(v44) = *(v4 + 3185);
        v45 = v47;
        v43 = *(v4 + 3184);
        goto LABEL_71;
      }

      v25 = *(v4 + 1593);
      v26 = v25[1];
      if (&v24[v23] == v26)
      {
        v27 = v25[2];
        if ((v26 + 1) <= v27)
        {
          v25[1] = v26 + 1;
          LODWORD(v38) = 1;
LABEL_53:
          *(v4 + 3185) = v23 + v38;
          goto LABEL_54;
        }
      }

      else
      {
        v27 = v25[2];
      }

      if ((2 * v23) <= 4)
      {
        v38 = 4;
      }

      else
      {
        v38 = (2 * v23);
      }

      v39 = v38 + v23;
      if (!v26 || &v26[v39] > v27)
      {
        v40 = 2 * v25[4];
        if (v40 <= v39 + 1)
        {
          v40 = v39 + 1;
        }

        v25[4] = v40;
        v41 = v40 + 8;
        this = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
        v42 = this + v41;
        *this = v25[3];
        v26 = (this + 2);
        v25[2] = v42;
        v25[3] = this;
      }

      v25[1] = &v26[v39];
      if (v23)
      {
        this = memcpy(v26, *(v4 + 1591), v23);
      }

      *(v4 + 1591) = v26;
      LODWORD(v23) = *(v4 + 3185);
      v24 = v26;
      v22 = *(v4 + 3184);
      goto LABEL_53;
    }

    if (v15)
    {
      if (__s)
      {
        v19 = __s;
        v20 = strlen(__s);
        __s = v19;
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      this = swift::Demangle::__runtime::CharVector::append(v4 + 1591, __s, v21, *(v4 + 1593));
      if (v15 != 1)
      {
        this = swift::Demangle::__runtime::CharVector::append(v4 + 3182, v15 - 2, *(v4 + 1593));
      }

      v5 = v4 + 12736;
LABEL_79:
      v6 = *(v4 + 3184);
      v54 = *(v4 + 3185);
      v8 = *(v4 + 1591);
      if (v6 < v54)
      {
LABEL_95:
        a4 = 95;
        goto LABEL_96;
      }

      v55 = *(v4 + 1593);
      v56 = v55[1];
      if (&v8[v54] == v56)
      {
        v57 = v55[2];
        if ((v56 + 1) <= v57)
        {
          v55[1] = v56 + 1;
          LODWORD(v58) = 1;
LABEL_94:
          *(v4 + 3185) = v54 + v58;
          goto LABEL_95;
        }
      }

      else
      {
        v57 = v55[2];
      }

      if ((2 * v54) <= 4)
      {
        v58 = 4;
      }

      else
      {
        v58 = (2 * v54);
      }

      v59 = v58 + v54;
      if (!v56 || &v56[v59] > v57)
      {
        v60 = 2 * v55[4];
        if (v60 <= v59 + 1)
        {
          v60 = v59 + 1;
        }

        v55[4] = v60;
        v61 = v60 + 8;
        this = malloc_type_malloc(v60 + 8, 0x2004093837F09uLL);
        *this = v55[3];
        v56 = (this + 2);
        v55[2] = this + v61;
        v55[3] = this;
      }

      v55[1] = &v56[v59];
      if (v54)
      {
        this = memcpy(v56, *(v4 + 1591), v54);
      }

      *(v4 + 1591) = v56;
      LODWORD(v54) = *(v4 + 3185);
      v8 = v56;
      v6 = *(v4 + 3184);
      goto LABEL_94;
    }

    v5 = this + 3184;
    v6 = this[3184];
    v34 = this[3185];
    v8 = *(this + 1591);
    if (v6 < v34)
    {
      goto LABEL_96;
    }

    v35 = *(this + 1593);
    v36 = v35[1];
    if (&v8[v34] == v36)
    {
      v37 = v35[2];
      if ((v36 + 1) <= v37)
      {
        v35[1] = v36 + 1;
        LODWORD(v62) = 1;
LABEL_112:
        *(v4 + 3185) = v34 + v62;
        goto LABEL_96;
      }
    }

    else
    {
      v37 = v35[2];
    }

    if ((2 * v34) <= 4)
    {
      v62 = 4;
    }

    else
    {
      v62 = (2 * v34);
    }

    v63 = v62 + v34;
    if (!v36 || &v36[v63] > v37)
    {
      v64 = 2 * v35[4];
      if (v64 <= v63 + 1)
      {
        v64 = v63 + 1;
      }

      v35[4] = v64;
      v65 = v64 + 8;
      v66 = a4;
      this = malloc_type_malloc(v64 + 8, 0x2004093837F09uLL);
      a4 = v66;
      *this = v35[3];
      v36 = (this + 2);
      v35[2] = this + v65;
      v35[3] = this;
    }

    v35[1] = &v36[v63];
    if (v34)
    {
      v67 = a4;
      this = memcpy(v36, *(v4 + 1591), v34);
      a4 = v67;
    }

    *(v4 + 1591) = v36;
    LODWORD(v34) = *(v4 + 3185);
    v8 = v36;
    v6 = *(v4 + 3184);
    goto LABEL_112;
  }

  v5 = this + 3184;
  v6 = this[3184];
  v7 = this[3185];
  v8 = *(this + 1591);
  if (v6 >= v7)
  {
    v11 = *(this + 1593);
    v12 = v11[1];
    if (&v8[v7] == v12)
    {
      v13 = v11[2];
      if ((v12 + 1) <= v13)
      {
        v11[1] = v12 + 1;
        LODWORD(v28) = 1;
LABEL_37:
        *(v4 + 3185) = v7 + v28;
        a4 = 115;
        goto LABEL_96;
      }
    }

    else
    {
      v13 = v11[2];
    }

    if ((2 * v7) <= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = (2 * v7);
    }

    v29 = v28 + v7;
    if (v12)
    {
      v30 = &v12[v28 + v7] > v13;
    }

    else
    {
      v30 = 1;
    }

    v8 = v11[1];
    if (v30)
    {
      v31 = 2 * v11[4];
      if (v31 <= v29 + 1)
      {
        v31 = v29 + 1;
      }

      v11[4] = v31;
      v32 = v31 + 8;
      this = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v33 = this + v32;
      *this = v11[3];
      v8 = (this + 2);
      v11[2] = v33;
      v11[3] = this;
    }

    v11[1] = &v8[v29];
    if (v7)
    {
      this = memcpy(v8, *(v4 + 1591), v7);
    }

    *(v4 + 1591) = v8;
    LODWORD(v7) = *(v4 + 3185);
    v6 = *(v4 + 3184);
    goto LABEL_37;
  }

  a4 = 115;
LABEL_96:
  *v5 = v6 + 1;
  v8[v6] = a4;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAbstractStorage@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v10 = result;
  v12 = *(a2 + 18);
  v13 = a2;
  if ((v12 - 1) >= 2)
  {
    if (v12 == 5)
    {
      v14 = *a2;
      v13 = *a2;
LABEL_9:
      v15 = (v14 + 8 * *(a2 + 8));
      goto LABEL_15;
    }

    v13 = 0;
  }

  switch(v12)
  {
    case 1:
      v15 = (a2 + 8);
      goto LABEL_15;
    case 2:
      v15 = (a2 + 16);
      goto LABEL_15;
    case 5:
      v14 = *a2;
      goto LABEL_9;
  }

  v15 = 0;
LABEL_15:
  while (v13 != v15)
  {
    if (*a6)
    {
      return result;
    }

    ++v13;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v16 = *(v9 + 16);
  if (v16 == 231)
  {
    v17 = "i";
  }

  else
  {
    if (v16 != 266)
    {
      v19 = 717;
      v18 = 6;
      goto LABEL_22;
    }

    v17 = "v";
  }

  swift::Demangle::__runtime::CharVector::append(v10 + 1591, v17, 1uLL, v10[1593]);
  result = swift::Demangle::__runtime::CharVector::append(v10 + 1591, a3, a4, v10[1593]);
  v18 = 0;
  v9 = 0;
  v19 = 0;
LABEL_22:
  *a6 = v18;
  *(a6 + 8) = v9;
  *(a6 + 16) = v19;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGenericSpecializationNode@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v8 = this;
  v50 = 1;
  v10 = *(a2 + 18);
  v11 = a2;
  if ((v10 - 1) >= 2)
  {
    if (v10 == 5)
    {
      v12 = *a2;
      v11 = *a2;
      goto LABEL_9;
    }

    v11 = 0;
  }

  switch(v10)
  {
    case 1:
      v13 = (a2 + 8);
      if (v11 != (a2 + 8))
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    case 2:
      v13 = (a2 + 16);
      if (v11 != (a2 + 16))
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    case 5:
      v12 = *a2;
LABEL_9:
      v13 = (v12 + 8 * *(a2 + 2));
      if (v11 != v13)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
  }

  v13 = 0;
  if (!v11)
  {
LABEL_27:
    v16 = 1733;
    v17 = 1;
    goto LABEL_99;
  }

  do
  {
LABEL_22:
    v14 = *v11;
    if (*(*v11 + 16) == 96)
    {
      v15 = *(v14 + 18);
      if ((v15 - 1) >= 2)
      {
        if (v15 != 5 || !*(v14 + 2))
        {
          *a5 = 0;
          *(a5 + 8) = 0;
          *(a5 + 16) = 0;
LABEL_20:
          goto LABEL_21;
        }

        v14 = *v14;
      }

      if (*a5)
      {
        return this;
      }

      goto LABEL_20;
    }

LABEL_21:
    v11 = (v11 + 8);
  }

  while (v11 != v13);
  if (v50)
  {
    goto LABEL_27;
  }

  v18 = *(v8 + 12736);
  v19 = *(v8 + 12740);
  v20 = *(v8 + 12728);
  if (v18 >= v19)
  {
    v21 = *(v8 + 12744);
    v22 = v21[1];
    if (&v20[v19] != v22)
    {
      v23 = v21[2];
      goto LABEL_32;
    }

    v23 = v21[2];
    if ((v22 + 1) <= v23)
    {
      v21[1] = v22 + 1;
      LODWORD(v24) = 1;
    }

    else
    {
LABEL_32:
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
        this = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
        v28 = this + v27;
        *this = v21[3];
        v22 = (this + 1);
        v21[2] = v28;
        v21[3] = this;
      }

      v21[1] = &v22[v25];
      if (v19)
      {
        this = memcpy(v22, *(v8 + 12728), v19);
      }

      *(v8 + 12728) = v22;
      LODWORD(v19) = *(v8 + 12740);
      v20 = v22;
      v18 = *(v8 + 12736);
    }

    *(v8 + 12740) = v19 + v24;
  }

  *(v8 + 12736) = v18 + 1;
  v20[v18] = 84;
  v29 = *(v7 + 18);
  v30 = v7;
  if ((v29 - 1) >= 2)
  {
    if (v29 == 5)
    {
      v31 = *v7;
      v30 = *v7;
LABEL_52:
      v32 = &v31[*(v7 + 2)];
      goto LABEL_57;
    }

    v30 = 0;
  }

  switch(v29)
  {
    case 1:
      v32 = (v7 + 8);
      goto LABEL_57;
    case 2:
      v32 = (v7 + 16);
      goto LABEL_57;
    case 5:
      v31 = *v7;
      goto LABEL_52;
  }

  v32 = 0;
LABEL_57:
  while (v30 != v32)
  {
    if (*(*v30 + 8) == 353)
    {
      if (*a5)
      {
        return this;
      }
    }

    ++v30;
  }

  v33 = *(v8 + 12736);
  v34 = *(v8 + 12740);
  v35 = *(v8 + 12728);
  if (v33 >= v34)
  {
    v36 = *(v8 + 12744);
    v37 = v36[1];
    if (&v35[v34] != v37)
    {
      v38 = v36[2];
      goto LABEL_65;
    }

    v38 = v36[2];
    if ((v37 + 1) <= v38)
    {
      v36[1] = v37 + 1;
      LODWORD(v39) = 1;
    }

    else
    {
LABEL_65:
      if ((2 * v34) <= 4)
      {
        v39 = 4;
      }

      else
      {
        v39 = (2 * v34);
      }

      v40 = v39 + v34;
      if (v37)
      {
        v41 = &v37[v39 + v34] > v38;
      }

      else
      {
        v41 = 1;
      }

      v35 = v36[1];
      if (v41)
      {
        v42 = 2 * v36[4];
        if (v42 <= v40 + 1)
        {
          v42 = v40 + 1;
        }

        v36[4] = v42;
        v43 = v42 + 8;
        this = malloc_type_malloc(v42 + 8, 0x2004093837F09uLL);
        v44 = this + v43;
        *this = v36[3];
        v35 = (this + 1);
        v36[2] = v44;
        v36[3] = this;
      }

      v36[1] = &v35[v40];
      if (v34)
      {
        this = memcpy(v35, *(v8 + 12728), v34);
      }

      *(v8 + 12728) = v35;
      LODWORD(v34) = *(v8 + 12740);
      v33 = *(v8 + 12736);
    }

    *(v8 + 12740) = v34 + v39;
  }

  *(v8 + 12736) = v33 + 1;
  v35[v33] = a3;
  v45 = *(v7 + 18);
  v46 = v7;
  if ((v45 - 1) >= 2)
  {
    if (v45 == 5)
    {
      v47 = *v7;
      v46 = *v7;
LABEL_88:
      v48 = &v47[*(v7 + 2)];
      goto LABEL_93;
    }

    v46 = 0;
  }

  switch(v45)
  {
    case 1:
      v48 = (v7 + 8);
      goto LABEL_93;
    case 2:
      v48 = (v7 + 16);
      goto LABEL_93;
    case 5:
      v47 = *v7;
      goto LABEL_88;
  }

  v48 = 0;
LABEL_93:
  while (v46 != v48)
  {
    v49 = *(*v46 + 8);
    if (v49 != 96 && v49 != 353)
    {
      if (*a5)
      {
        return this;
      }
    }

    ++v46;
  }

  v17 = 0;
  v7 = 0;
  v16 = 0;
LABEL_99:
  *a5 = v17;
  *(a5 + 8) = v7;
  *(a5 + 16) = v16;
  return this;
}

void anonymous namespace::Remangler::mangleIdentifierImpl(_anonymous_namespace_::Remangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  memset(&v11, 0, 17);
  {
    if (a3)
    {
      swift::Mangle::__runtime::translateOperator(*a2, *(a2 + 1), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
    }

    v8 = *(this + 1585);
    if (v8 > 0xF)
    {
      v10 = *(this + 3178) + 16;
      __p = v11;
      v13 = v10;
      std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &__p);
    }

    else
    {
      *(this + 1585) = v8 + 1;
      v9 = this + 24 * v8 + 12296;
      *v9 = *&v11.__r_.__value_.__l.__data_;
      v9[16] = v11.__r_.__value_.__s.__data_[16];
    }
  }
}

void swift::Mangle::__runtime::mangleIdentifier<anonymous namespace::Remangler>(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a1 + 12768);
  v164 = a3;
  if (*(a1 + 12753) != 1 || (v6 = swift::Mangle::__runtime::needsPunycodeEncoding(a2, a3), a3 = v164, !v6))
  {
    v17 = 0;
    v18 = -1;
    v158 = v3 - 1;
    v165 = v3;
    while (1)
    {
      if (v17 >= a3)
      {
        v25 = 0;
        if (v18 == -1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = v3[v17];
        if (v18 == -1)
        {
          goto LABEL_19;
        }
      }

      if (!v25 || v25 == 95 || (v25 - 65) <= 0x19 && v158[v17] - 91 <= 0xFFFFFFE5)
      {
        break;
      }

LABEL_28:
      if (++v17 > a3)
      {
        v65 = *(a1 + 12784);
        if (v65)
        {
          v66 = *(a1 + 12736);
          v67 = *(a1 + 12740);
          v68 = *(a1 + 12728);
          if (v66 >= v67)
          {
            v69 = *(a1 + 12744);
            v70 = v69[1];
            if (&v68[v67] != v70)
            {
              v71 = v69[2];
              goto LABEL_105;
            }

            v71 = v69[2];
            if ((v70 + 1) <= v71)
            {
              v69[1] = v70 + 1;
              LODWORD(v72) = 1;
            }

            else
            {
LABEL_105:
              if ((2 * v67) <= 4)
              {
                v72 = 4;
              }

              else
              {
                v72 = (2 * v67);
              }

              v73 = v72 + v67;
              if (!v70 || &v70[v73] > v71)
              {
                v74 = 2 * v69[4];
                if (v74 <= v73 + 1)
                {
                  v74 = v73 + 1;
                }

                v69[4] = v74;
                v75 = v74 + 8;
                v76 = malloc_type_malloc(v74 + 8, 0x2004093837F09uLL);
                v77 = v76 + v75;
                *v76 = v69[3];
                v70 = (v76 + 1);
                v69[2] = v77;
                v69[3] = v76;
              }

              v69[1] = &v70[v73];
              if (v67)
              {
                memcpy(v70, *(a1 + 12728), v67);
              }

              *(a1 + 12728) = v70;
              LODWORD(v67) = *(a1 + 12740);
              v68 = v70;
              v66 = *(a1 + 12736);
            }

            *(a1 + 12740) = v67 + v72;
          }

          *(a1 + 12736) = v66 + 1;
          v68[v66] = 48;
          v65 = *(a1 + 12784);
        }

        v78 = *(a1 + 12788);
        v79 = *(a1 + 12776);
        if (v65 >= v78)
        {
          v80 = *a1;
          v81 = *(*a1 + 8);
          if (&v79[16 * v78] == v81 && (v81 + 16) <= v80[2])
          {
            v80[1] = v81 + 16;
            LODWORD(v82) = 1;
          }

          else
          {
            if ((2 * v78) <= 4)
            {
              v82 = 4;
            }

            else
            {
              v82 = (2 * v78);
            }

            v83 = 16 * (v82 + v78);
            v79 = ((v81 + 7) & 0xFFFFFFFFFFFFFFF8);
            v80[1] = v79;
            if (!v79 || &v79[v83] > v80[2])
            {
              v84 = 2 * v80[4];
              if (v84 <= (v83 | 8uLL))
              {
                v84 = v83 | 8;
              }

              v80[4] = v84;
              v85 = v84 + 8;
              v86 = malloc_type_malloc(v84 + 8, 0x2004093837F09uLL);
              v87 = v86 + v85;
              *v86 = v80[3];
              v79 = ((v86 + 15) & 0xFFFFFFFFFFFFFFF8);
              v80[2] = v87;
              v80[3] = v86;
            }

            v80[1] = &v79[v83];
            if (v78)
            {
              memcpy(v79, *(a1 + 12776), 16 * v78);
            }

            *(a1 + 12776) = v79;
            LODWORD(v78) = *(a1 + 12788);
            v65 = *(a1 + 12784);
            v3 = v165;
          }

          *(a1 + 12788) = v78 + v82;
        }

        *(a1 + 12784) = v65 + 1;
        v88 = &v79[16 * v65];
        *v88 = v164;
        *(v88 + 2) = -1;
        v161 = *(a1 + 12784);
        if (!v161)
        {
LABEL_242:
          *(a1 + 12784) = 0;
          return;
        }

        v89 = 0;
        v90 = 0;
        while (2)
        {
          v163 = v89;
          v92 = *(a1 + 12776) + 16 * v89;
          if (*v92 > v90)
          {
            swift::Demangle::__runtime::CharVector::append((a1 + 12728), *v92 - v90, *(a1 + 12744));
            v93 = 1;
            while (1)
            {
              if (v5 < *(a1 + 12768))
              {
                v97 = (*(a1 + 12760) + 16 * v5);
                if (v90 == *v97)
                {
                  *v97 = *(a1 + 12736);
                  ++v5;
                }
              }

              LODWORD(v98) = v3[v90];
              if (v93)
              {
                v95 = *(a1 + 12736);
                if ((v98 - 48) <= 9)
                {
                  v99 = *(a1 + 12740);
                  v100 = *(a1 + 12728);
                  if (v95 < v99)
                  {
                    LOBYTE(v98) = 88;
                    goto LABEL_142;
                  }

                  v111 = *(a1 + 12744);
                  v112 = v111[1];
                  if (&v100[v99] != v112)
                  {
                    v113 = v111[2];
                    goto LABEL_172;
                  }

                  v113 = v111[2];
                  if ((v112 + 1) <= v113)
                  {
                    v111[1] = v112 + 1;
                    LODWORD(v98) = 1;
                    v112 = v100;
                  }

                  else
                  {
LABEL_172:
                    if ((2 * v99) <= 4)
                    {
                      v98 = 4;
                    }

                    else
                    {
                      v98 = (2 * v99);
                    }

                    v114 = v98 + v99;
                    if (!v112 || &v112[v114] > v113)
                    {
                      v115 = 2 * v111[4];
                      if (v115 <= v114 + 1)
                      {
                        v115 = v114 + 1;
                      }

                      v111[4] = v115;
                      v116 = v115 + 8;
                      v117 = malloc_type_malloc(v115 + 8, 0x2004093837F09uLL);
                      *v117 = v111[3];
                      v112 = (v117 + 1);
                      v111[2] = v117 + v116;
                      v111[3] = v117;
                    }

                    v111[1] = &v112[v114];
                    if (v99)
                    {
                      memcpy(v112, *(a1 + 12728), v99);
                    }

                    *(a1 + 12728) = v112;
                    LODWORD(v99) = *(a1 + 12740);
                    v95 = *(a1 + 12736);
                  }

                  v3 = v165;
                  v96 = v99 + v98;
                  LOBYTE(v98) = 88;
                  v100 = v112;
                  goto LABEL_141;
                }
              }

              else
              {
                v95 = *(a1 + 12736);
              }

              v94 = *(a1 + 12740);
              v100 = *(a1 + 12728);
              if (v95 < v94)
              {
                goto LABEL_142;
              }

              v101 = *(a1 + 12744);
              v102 = v101[1];
              if (&v100[v94] != v102)
              {
                break;
              }

              v103 = v101[2];
              if ((v102 + 1) > v103)
              {
                goto LABEL_155;
              }

              v101[1] = v102 + 1;
              LODWORD(v104) = 1;
LABEL_140:
              v3 = v165;
              v96 = v94 + v104;
LABEL_141:
              *(a1 + 12740) = v96;
LABEL_142:
              v93 = 0;
              *(a1 + 12736) = v95 + 1;
              v100[v95] = v98;
              if (++v90 >= *v92)
              {
                goto LABEL_185;
              }
            }

            v103 = v101[2];
LABEL_155:
            if ((2 * v94) <= 4)
            {
              v104 = 4;
            }

            else
            {
              v104 = (2 * v94);
            }

            v105 = v104 + v94;
            if (v102)
            {
              v106 = &v102[v104 + v94] > v103;
            }

            else
            {
              v106 = 1;
            }

            v100 = v101[1];
            if (v106)
            {
              v107 = 2 * v101[4];
              if (v107 <= v105 + 1)
              {
                v107 = v105 + 1;
              }

              v101[4] = v107;
              v108 = v107 + 8;
              v109 = malloc_type_malloc(v107 + 8, 0x2004093837F09uLL);
              v110 = v109 + v108;
              *v109 = v101[3];
              v100 = (v109 + 1);
              v101[2] = v110;
              v101[3] = v109;
            }

            v101[1] = &v100[v105];
            if (v94)
            {
              memcpy(v100, *(a1 + 12728), v94);
            }

            *(a1 + 12728) = v100;
            LODWORD(v94) = *(a1 + 12740);
            v95 = *(a1 + 12736);
            goto LABEL_140;
          }

LABEL_185:
          v118 = *(v92 + 8);
          if ((v118 & 0x80000000) != 0)
          {
            v91 = v163;
            goto LABEL_136;
          }

          v90 += *(*(a1 + 12760) + 16 * v118 + 8);
          v119 = *(a1 + 12744);
          v120 = *(a1 + 12736);
          v121 = *(a1 + 12740);
          v122 = *(a1 + 12728);
          v91 = v163;
          if (v163 < v161 - 2)
          {
            v123 = v118 + 97;
            if (v120 >= v121)
            {
              v124 = v119[1];
              if (&v122[v121] != v124)
              {
                v125 = v119[2];
                goto LABEL_194;
              }

              v125 = v119[2];
              if ((v124 + 1) <= v125)
              {
                v119[1] = v124 + 1;
                LODWORD(v128) = 1;
                v124 = v122;
              }

              else
              {
LABEL_194:
                if ((2 * v121) <= 4)
                {
                  v128 = 4;
                }

                else
                {
                  v128 = (2 * v121);
                }

                v129 = v128 + v121;
                if (!v124 || &v124[v129] > v125)
                {
                  v130 = 2 * v119[4];
                  if (v130 <= v129 + 1)
                  {
                    v130 = v129 + 1;
                  }

                  v119[4] = v130;
                  v131 = v130 + 8;
                  v132 = malloc_type_malloc(v130 + 8, 0x2004093837F09uLL);
                  v133 = v132 + v131;
                  *v132 = v119[3];
                  v124 = (v132 + 1);
                  v119[2] = v133;
                  v119[3] = v132;
                }

                v119[1] = &v124[v129];
                if (v121)
                {
                  memcpy(v124, *(a1 + 12728), v121);
                }

                *(a1 + 12728) = v124;
                LODWORD(v121) = *(a1 + 12740);
                v120 = *(a1 + 12736);
              }

              v134 = v121 + v128;
              v91 = v163;
LABEL_239:
              *(a1 + 12740) = v134;
              v122 = v124;
            }

LABEL_240:
            *(a1 + 12736) = v120 + 1;
            v122[v120] = v123;
LABEL_136:
            v89 = v91 + 1;
            if (v89 == v161)
            {
              goto LABEL_242;
            }

            continue;
          }

          break;
        }

        if (v120 >= v121)
        {
          v126 = v119[1];
          if (&v122[v121] != v126)
          {
            v127 = v119[2];
            goto LABEL_207;
          }

          v127 = v119[2];
          if ((v126 + 1) <= v127)
          {
            v119[1] = v126 + 1;
            LODWORD(v135) = 1;
          }

          else
          {
LABEL_207:
            if ((2 * v121) <= 4)
            {
              v135 = 4;
            }

            else
            {
              v135 = (2 * v121);
            }

            v136 = v135 + v121;
            if (!v126 || &v126[v136] > v127)
            {
              v137 = 2 * v119[4];
              if (v137 <= v136 + 1)
              {
                v137 = v136 + 1;
              }

              v119[4] = v137;
              v138 = v137 + 8;
              v139 = malloc_type_malloc(v137 + 8, 0x2004093837F09uLL);
              v140 = v139 + v138;
              *v139 = v119[3];
              v126 = (v139 + 1);
              v119[2] = v140;
              v119[3] = v139;
            }

            v119[1] = &v126[v136];
            if (v121)
            {
              memcpy(v126, *(a1 + 12728), v121);
            }

            *(a1 + 12728) = v126;
            LODWORD(v121) = *(a1 + 12740);
            v122 = v126;
            v120 = *(a1 + 12736);
          }

          *(a1 + 12740) = v121 + v135;
          v91 = v163;
        }

        *(a1 + 12736) = v120 + 1;
        v122[v120] = v118 + 65;
        if (v90 != v164)
        {
          goto LABEL_136;
        }

        v120 = *(a1 + 12736);
        v141 = *(a1 + 12740);
        v122 = *(a1 + 12728);
        if (v120 < v141)
        {
          v123 = 48;
          v90 = v164;
          goto LABEL_240;
        }

        v142 = *(a1 + 12744);
        v124 = v142[1];
        if (&v122[v141] != v124)
        {
          v143 = v142[2];
          goto LABEL_227;
        }

        v143 = v142[2];
        if ((v124 + 1) <= v143)
        {
          v142[1] = v124 + 1;
          LODWORD(v144) = 1;
          v124 = v122;
        }

        else
        {
LABEL_227:
          if ((2 * v141) <= 4)
          {
            v144 = 4;
          }

          else
          {
            v144 = (2 * v141);
          }

          v145 = v144 + v141;
          if (!v124 || &v124[v145] > v143)
          {
            v146 = 2 * v142[4];
            if (v146 <= v145 + 1)
            {
              v146 = v145 + 1;
            }

            v142[4] = v146;
            v147 = v146 + 8;
            v148 = malloc_type_malloc(v146 + 8, 0x2004093837F09uLL);
            v149 = v148 + v147;
            *v148 = v142[3];
            v124 = (v148 + 1);
            v142[2] = v149;
            v142[3] = v148;
          }

          v142[1] = &v124[v145];
          if (v141)
          {
            memcpy(v124, *(a1 + 12728), v141);
          }

          *(a1 + 12728) = v124;
          LODWORD(v141) = *(a1 + 12740);
          v120 = *(a1 + 12736);
        }

        v134 = v141 + v144;
        v123 = 48;
        v90 = v164;
        goto LABEL_239;
      }
    }

    v159 = v17 - v18;
    v162 = v18;
    if (a3 >= v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = a3;
    }

    if (a3 - v26 >= v17 - v18)
    {
      v27 = v17 - v18;
    }

    else
    {
      v27 = a3 - v26;
    }

    if (!v5)
    {
      goto LABEL_54;
    }

    v28 = 0;
    v29 = *(a1 + 12728);
    v30 = *(a1 + 12736);
    v31 = (*(a1 + 12760) + 8);
    while (1)
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      if (v30 < v32)
      {
        v32 = v30;
      }

      if (v30 - v32 < v33)
      {
        v33 = v30 - v32;
      }

      if (v27 == v33 && (!v27 || !memcmp(&v165[v26], (v29 + v32), v27)))
      {
        break;
      }

      v31 += 2;
      if (v5 == ++v28)
      {
        goto LABEL_54;
      }
    }

    if ((v28 & 0x80000000) != 0)
    {
LABEL_54:
      v20 = *(a1 + 12768);
      v3 = v165;
      if (v5 >= v20)
      {
        goto LABEL_68;
      }

      v34 = (*(a1 + 12760) + ((16 * v5) | 8));
      v35 = v5;
      while (1)
      {
        v36 = *(v34 - 1);
        v37 = *v34;
        if (v164 < v36)
        {
          v36 = v164;
        }

        if (v164 - v36 < v37)
        {
          v37 = v164 - v36;
        }

        if (v27 == v37 && (!v27 || !memcmp(&v165[v26], &v165[v36], v27)))
        {
          break;
        }

        v34 += 2;
        if (v20 == ++v35)
        {
          goto LABEL_68;
        }
      }

      if ((v35 & 0x80000000) != 0)
      {
LABEL_68:
        v42 = v162;
        a3 = v164;
        if (v159 >= 2 && v20 <= 0x19)
        {
          v19 = *(a1 + 12772);
          v43 = *(a1 + 12760);
          if (v20 >= v19)
          {
            v44 = *a1;
            v45 = 16 * v19;
            v46 = *(*a1 + 8);
            if (&v43[16 * v19] == v46 && (v46 + 16) <= v44[2])
            {
              v44[1] = v46 + 16;
              v21 = 1;
              a3 = v164;
            }

            else
            {
              LODWORD(v47) = 2 * v19;
              if ((2 * v19) <= 4)
              {
                v47 = 4;
              }

              else
              {
                v47 = v47;
              }

              v157 = v47;
              v48 = 16 * (v47 + v19);
              v43 = ((v46 + 7) & 0xFFFFFFFFFFFFFFF8);
              v44[1] = v43;
              if (!v43 || &v43[v48] > v44[2])
              {
                v49 = 2 * v44[4];
                if (v49 <= (v48 | 8uLL))
                {
                  v49 = v48 | 8;
                }

                v44[4] = v49;
                v50 = v49 + 8;
                v51 = v19;
                v52 = 16 * v19;
                v156 = 16 * (v47 + v19);
                v53 = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
                v45 = v52;
                LODWORD(v19) = v51;
                v42 = v162;
                v54 = v53 + v50;
                *v53 = v44[3];
                v43 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF8);
                v48 = v156;
                v44[2] = v54;
                v44[3] = v53;
              }

              a3 = v164;
              v44[1] = &v43[v48];
              if (v19)
              {
                memcpy(v43, *(a1 + 12760), v45);
                a3 = v164;
              }

              *(a1 + 12760) = v43;
              LODWORD(v19) = *(a1 + 12772);
              v20 = *(a1 + 12768);
              v21 = v157;
            }

            *(a1 + 12772) = v19 + v21;
          }

          *(a1 + 12768) = v20 + 1;
          v22 = &v43[16 * v20];
          *v22 = v42;
          *(v22 + 1) = v159;
        }

        goto LABEL_19;
      }

      LODWORD(v28) = v35;
    }

    v38 = *(a1 + 12784);
    v39 = *(a1 + 12788);
    v40 = *(a1 + 12776);
    if (v38 >= v39)
    {
      v55 = *a1;
      v56 = *(*a1 + 8);
      v41 = v162;
      if (&v40[16 * v39] == v56 && (v56 + 16) <= v55[2])
      {
        v55[1] = v56 + 16;
        v63 = 1;
        v3 = v165;
      }

      else
      {
        LODWORD(v57) = 2 * v39;
        if ((2 * v39) <= 4)
        {
          v57 = 4;
        }

        else
        {
          v57 = v57;
        }

        v160 = v57;
        v58 = 16 * (v57 + v39);
        v40 = ((v56 + 7) & 0xFFFFFFFFFFFFFFF8);
        v55[1] = v40;
        if (!v40 || &v40[v58] > v55[2])
        {
          v59 = 2 * v55[4];
          if (v59 <= (v58 | 8uLL))
          {
            v59 = v58 | 8;
          }

          v55[4] = v59;
          v60 = v59 + 8;
          v61 = malloc_type_malloc(v59 + 8, 0x2004093837F09uLL);
          v62 = v61 + v60;
          *v61 = v55[3];
          v40 = ((v61 + 15) & 0xFFFFFFFFFFFFFFF8);
          v55[2] = v62;
          v55[3] = v61;
        }

        v55[1] = &v40[v58];
        if (v39)
        {
          memcpy(v40, *(a1 + 12776), 16 * v39);
        }

        *(a1 + 12776) = v40;
        LODWORD(v39) = *(a1 + 12788);
        v38 = *(a1 + 12784);
        v3 = v165;
        v63 = v160;
        v41 = v162;
      }

      *(a1 + 12788) = v39 + v63;
    }

    else
    {
      v3 = v165;
      v41 = v162;
    }

    *(a1 + 12784) = v38 + 1;
    v64 = &v40[16 * v38];
    *v64 = v41;
    *(v64 + 2) = v28;
    a3 = v164;
LABEL_19:
    if ((v25 - 58) >= 0xFFFFFFF6 || v25 == 0 || v25 == 95)
    {
      v18 = -1;
    }

    else
    {
      v18 = v17;
    }

    goto LABEL_28;
  }

  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  swift::Punycode::__runtime::encodePunycodeUTF8(v3, v164, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  swift::Demangle::__runtime::CharVector::append((a1 + 12728), "00", 2uLL, *(a1 + 12744));
  swift::Demangle::__runtime::CharVector::append((a1 + 12728), size, *(a1 + 12744));
  v9 = p_p->__r_.__value_.__s.__data_[0];
  if (v9 != 95 && (v9 - 48) > 9)
  {
    goto LABEL_260;
  }

  v11 = *(a1 + 12736);
  v12 = *(a1 + 12740);
  v13 = *(a1 + 12728);
  if (v11 >= v12)
  {
    v14 = *(a1 + 12744);
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v150) = 1;
LABEL_258:
        *(a1 + 12740) = v12 + v150;
        goto LABEL_259;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v12) <= 4)
    {
      v150 = 4;
    }

    else
    {
      v150 = (2 * v12);
    }

    v151 = v150 + v12;
    if (!v15 || &v15[v151] > v16)
    {
      v152 = 2 * v14[4];
      if (v152 <= v151 + 1)
      {
        v152 = v151 + 1;
      }

      v14[4] = v152;
      v153 = v152 + 8;
      v154 = malloc_type_malloc(v152 + 8, 0x2004093837F09uLL);
      v155 = v154 + v153;
      *v154 = v14[3];
      v15 = (v154 + 1);
      v14[2] = v155;
      v14[3] = v154;
    }

    v14[1] = &v15[v151];
    if (v12)
    {
      memcpy(v15, *(a1 + 12728), v12);
    }

    *(a1 + 12728) = v15;
    LODWORD(v12) = *(a1 + 12740);
    v13 = v15;
    v11 = *(a1 + 12736);
    goto LABEL_258;
  }

LABEL_259:
  *(a1 + 12736) = v11 + 1;
  v13[v11] = 95;
LABEL_260:
  swift::Demangle::__runtime::CharVector::append((a1 + 12728), p_p, size, *(a1 + 12744));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}