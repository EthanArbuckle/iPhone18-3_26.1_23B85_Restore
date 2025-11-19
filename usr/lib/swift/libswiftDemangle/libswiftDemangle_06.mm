uint64_t *anonymous namespace::Remangler::mangleEscapingObjCBlock@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "XL", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOwningAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleOwningMutableAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::manglePartialApplyForwarder@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "TA", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePartialApplyObjCForwarder@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "Ta", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePeerAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::CharVector::append(this + 1591, "fMp", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *anonymous namespace::Remangler::manglePostfixOperator@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "oP", 2uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePreambleAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::CharVector::append(this + 1591, "fMq", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *anonymous namespace::Remangler::manglePrefixOperator@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "op", 2uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePrivateDeclName@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  if (v8 != 1)
  {
    if (v8 == 5)
    {
      v8 = *(a2 + 2);
      if (!v8)
      {
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        v14 = (this + 12728);
        goto LABEL_24;
      }
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_20;
      }

      v8 = 2;
    }
  }

  v9 = v8 - 1;
  do
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

    if (v10 <= v9)
    {
LABEL_7:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v12 = a2;
    if (v11 >= 2)
    {
      v12 = *a2;
    }

    if (*a4)
    {
      return result;
    }

LABEL_8:
    --v9;
  }

  while (v9 != -1);
  LODWORD(v8) = *(a2 + 18);
LABEL_20:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v14 = (this + 12728);
  if (v8 != 1)
  {
    if (v8 != 5)
    {
LABEL_26:
      v15 = "LL";
      goto LABEL_27;
    }

LABEL_24:
    if (*(a2 + 2) != 1)
    {
      goto LABEL_26;
    }
  }

  v15 = "Ll";
LABEL_27:
  result = swift::Demangle::CharVector::append(v14, v15, 2uLL, *(this + 1593));
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::manglePropertyDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MV", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::manglePropertyWrapperBackingInitializer@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "fP", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePropertyWrapperInitFromProjectedValue@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "fW", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolConformance@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v11 = *(v10 + 18);
  if ((v11 - 1) < 2)
  {
LABEL_11:
    v12 = *v10;
    goto LABEL_13;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_13:
  if (*(v12 + 8) != 45)
  {
LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  v13 = *(v12 + 18);
  v14 = v12;
  if ((v13 - 1) < 2)
  {
    goto LABEL_18;
  }

  if (v13 != 5)
  {
    v15 = 0;
    if (v13 == 2)
    {
LABEL_24:
      v12 = *(v12 + 1);
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (!*(v12 + 2))
  {
    v12 = 0;
    goto LABEL_27;
  }

  v14 = *v12;
LABEL_18:
  v15 = *v14;
  if (v13 == 2)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v13 == 5 && *(v12 + 2) >= 2u)
  {
    v12 = *v12;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_28:
  if (*a4)
  {
    return result;
  }

  v17 = *(a2 + 18);
  if (v17 == 5)
  {
    if (*(a2 + 2) != 4)
    {
LABEL_36:
      if (*(a2 + 2) >= 2u)
      {
        v18 = *a2;
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (*a4)
    {
      return result;
    }

    v17 = *(a2 + 18);
  }

  v18 = a2;
  if (v17 == 2)
  {
LABEL_38:
    v19 = *(v18 + 1);
    goto LABEL_40;
  }

  if (v17 == 5)
  {
    goto LABEL_36;
  }

LABEL_39:
  v19 = 0;
LABEL_40:
  if (*(v19 + 8) != 243)
  {
    goto LABEL_47;
  }

  v20 = *(v19 + 18);
  if ((v20 - 1) < 2)
  {
    goto LABEL_45;
  }

  if (v20 == 5 && *(v19 + 2))
  {
    v19 = *v19;
LABEL_45:
    v19 = *v19;
    goto LABEL_47;
  }

  v19 = 0;
LABEL_47:
  if ((result & 1) == 0)
  {
    v21 = *(v19 + 18);
    v22 = v19;
    if ((v21 - 1) >= 2)
    {
      if (v21 == 5)
      {
        v23 = *v19;
        v22 = *v19;
LABEL_56:
        v24 = &v23[*(v19 + 2)];
        goto LABEL_62;
      }

      v22 = 0;
    }

    switch(v21)
    {
      case 1:
        v24 = v19 + 1;
        goto LABEL_62;
      case 2:
        v24 = v19 + 2;
        goto LABEL_62;
      case 5:
        v23 = *v19;
        goto LABEL_56;
    }

    v24 = 0;
LABEL_62:
    while (v22 != v24)
    {
      if (*a4)
      {
        return result;
      }

      ++v22;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a2 + 18) == 5 && *(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolConformanceRefInTypeModule@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "HP", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolConformanceRefInProtocolModule@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "Hp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleProtocolConformanceRefInOtherModule@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  if (*(v10 + 8) != 243)
  {
    goto LABEL_14;
  }

  v11 = *(v10 + 18);
  if ((v11 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
LABEL_12:
    v10 = *v10;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  if ((result & 1) == 0)
  {
    v13 = *(v10 + 18);
    v14 = v10;
    if ((v13 - 1) >= 2)
    {
      if (v13 == 5)
      {
        v15 = *v10;
        v14 = *v10;
LABEL_23:
        v16 = &v15[*(v10 + 2)];
        goto LABEL_29;
      }

      v14 = 0;
    }

    switch(v13)
    {
      case 1:
        v16 = v10 + 1;
        goto LABEL_29;
      case 2:
        v16 = v10 + 2;
        goto LABEL_29;
      case 5:
        v15 = *v10;
        goto LABEL_23;
    }

    v16 = 0;
LABEL_29:
    while (v14 != v16)
    {
      if (*a4)
      {
        return result;
      }

      ++v14;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v17 = *(v5 + 18);
  if (v17 != 2)
  {
    if (v17 != 5 || *(v5 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v18 = *(v5 + 1);
}

uint64_t *anonymous namespace::Remangler::mangleProtocolDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "Mp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolDescriptorRecord@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "Hr", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleProtocolConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "Mc", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *anonymous namespace::Remangler::mangleProtocolConformanceDescriptorRecord@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "Hc", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolListWithClass@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = *(a2 + 18);
  v6 = a2;
  if ((v5 - 1) < 2)
  {
LABEL_5:
    v7 = *v6;
    if (v5 == 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (v5 == 5 && *(v4 + 2) >= 2u)
    {
      v4 = *v4;
      goto LABEL_11;
    }

LABEL_13:
    v8 = 0;
  }

  if (v5 == 5)
  {
    if (!*(a2 + 2))
    {
      v7 = 0;
      goto LABEL_13;
    }

    v6 = *a2;
    goto LABEL_5;
  }

  v7 = 0;
  if (v5 != 2)
  {
    goto LABEL_8;
  }

LABEL_11:
  v8 = *(v4 + 1);
}

uint64_t *anonymous namespace::Remangler::mangleProtocolListWithAnyObject@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleProtocolSelfConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "MS", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolSelfConformanceWitness@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "TS", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolSelfConformanceWitnessTable@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "WS", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolWitness@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "TW", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolWitnessTable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "WP", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolWitnessTableAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Wa", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleProtocolWitnessTablePattern@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Wp", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunk@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "Tr", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunkHelper@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "TR", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunkHelperWithSelf@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "Ty", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReabstractionThunkHelperWithGlobalActor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "TU", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleReadAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleRead2Accessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleRelatedEntityDeclName@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  v7 = a2;
  if (v6 != 2)
  {
    if (v6 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v7 = *a2;
  }

  v8 = a2;
  if (*a4)
  {
    return this;
  }

  a2 = v8;
  v6 = v8[18];
LABEL_8:
  if ((v6 - 1) >= 2)
  {
    if (v6 != 5 || !*(a2 + 2))
    {
      v9 = 0;
      goto LABEL_14;
    }

    a2 = *a2;
  }

  v9 = *a2;
LABEL_14:
  if (*(v9 + 8) == 1)
  {
    swift::Demangle::CharVector::append(v4 + 1591, "L", 1uLL, *(v4 + 1593));
    this = swift::Demangle::CharVector::append(v4 + 1591, *v9, *(v9 + 8), *(v4 + 1593));
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 3150;
    v10 = 22;
  }

  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11;
  return this;
}

void *anonymous namespace::Remangler::mangleRetroactiveConformance@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2) >= 2u)
  {
    v8 = *a2;
LABEL_5:
    v9 = *(v8 + 1);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  if (*a4)
  {
    return result;
  }

  v11 = *(this + 3184);
  v12 = *(this + 3185);
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
        LODWORD(v17) = 1;
LABEL_23:
        *(this + 3185) = v12 + v17;
        goto LABEL_24;
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
    goto LABEL_23;
  }

LABEL_24:
  *(this + 3184) = v11 + 1;
  v13[v11] = 103;
  if (*(v4 + 18) - 1 >= 2)
  {
    v4 = *v4;
  }

  v22 = **v4;
  if (v22)
  {
    result = swift::Demangle::CharVector::append(this + 3182, v22 - 1, *(this + 1593));
  }

  v23 = *(this + 3184);
  v24 = *(this + 3185);
  v25 = *(this + 1591);
  if (v23 < v24)
  {
    goto LABEL_44;
  }

  v26 = *(this + 1593);
  v27 = v26[1];
  if (&v25[v24] != v27)
  {
    v28 = v26[2];
LABEL_32:
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
      result = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v33 = result + v32;
      *result = v26[3];
      v27 = (result + 1);
      v26[2] = v33;
      v26[3] = result;
    }

    v26[1] = &v27[v30];
    if (v24)
    {
      result = memcpy(v27, *(this + 1591), v24);
    }

    *(this + 1591) = v27;
    LODWORD(v24) = *(this + 3185);
    v25 = v27;
    v23 = *(this + 3184);
    goto LABEL_43;
  }

  v28 = v26[2];
  if ((v27 + 1) > v28)
  {
    goto LABEL_32;
  }

  v26[1] = v27 + 1;
  LODWORD(v29) = 1;
LABEL_43:
  *(this + 3185) = v24 + v29;
LABEL_44:
  *(this + 3184) = v23 + 1;
  v25[v23] = 95;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleShared@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 104;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOwned@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 110;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSILBoxType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Xb", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

char **anonymous namespace::Remangler::mangleSILBoxTypeWithLayout@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 != 1)
  {
    if (v7 != 5 || (*(a2 + 2) | 2) != 3)
    {
      v12 = 3749;
      goto LABEL_13;
    }

    v8 = *a2;
  }

  if (*(*v8 + 16) != 223)
  {
    v12 = 3751;
    goto LABEL_13;
  }

  v9 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 != 5 || !*(a2 + 2))
    {
      v10 = a2;
      v11 = 0;
      goto LABEL_17;
    }

    v9 = *a2;
  }

  v10 = a2;
  v11 = *v9;
LABEL_17:
  this = swift::Demangle::NodeFactory::createNode(*this, 246);
  v16 = this;
  v17 = *(v11 + 18);
  if (v17 != 1)
  {
    if (v17 == 5)
    {
      v17 = *(v11 + 2);
      if (!v17)
      {
        goto LABEL_60;
      }
    }

    else if (v17 != 2)
    {
LABEL_60:
      if (*a4)
      {
        return this;
      }

      if (*(v10 + 18) == 5 && (a2 = v10, *(v10 + 2) == 3))
      {
        v38 = *(*v10 + 8);
        if (*(v38 + 16) != 44)
        {
          v12 = 3779;
          goto LABEL_13;
        }

        if (*(*(*v10 + 16) + 16) != 246)
        {
          v12 = 3780;
          goto LABEL_13;
        }

        if (*a4)
        {
          return this;
        }

        if (*a4)
        {
          return this;
        }

        v39 = "XX";
      }

      else
      {
        v39 = "Xx";
      }

      this = swift::Demangle::CharVector::append(v5 + 1591, v39, 2uLL, v5[1593]);
      v13 = 0;
      a2 = 0;
      v12 = 0;
      goto LABEL_14;
    }
  }

  v18 = 0;
  v19 = v17;
  while (1)
  {
    v24 = *(v11 + 18);
    if ((v24 - 1) >= 2)
    {
      v25 = 0;
      v26 = *v11;
    }

    else
    {
      v25 = 1;
      v26 = v11;
    }

    if (*(v26[v18] + 16) != 225)
    {
      v27 = v11;
      if ((v25 & 1) == 0)
      {
        v27 = *v11;
      }

      if (*(v27[v18] + 16) != 224)
      {
        break;
      }
    }

    if (v24 == 1)
    {
      goto LABEL_39;
    }

    if (v24 != 5)
    {
      if (v24 != 2)
      {
        goto LABEL_44;
      }

      v24 = 2;
LABEL_39:
      if (v24 <= v18)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    if (*(v11 + 2) <= v18)
    {
LABEL_44:
      v29 = 0;
      goto LABEL_45;
    }

LABEL_40:
    v28 = v11;
    if ((v25 & 1) == 0)
    {
      v28 = *v11;
    }

    v29 = v28[v18];
LABEL_45:
    v30 = *(v29 + 18);
    v31 = v29;
    if (v30 != 1)
    {
      if (v30 != 5 || *(v29 + 2) != 1)
      {
LABEL_68:
        v12 = 3762;
        v13 = 1;
        a2 = v29;
        goto LABEL_14;
      }

      v31 = *v29;
    }

    if (*(*v31 + 16) != 243)
    {
      goto LABEL_68;
    }

    v32 = v29;
    if ((v30 - 1) < 2)
    {
      goto LABEL_54;
    }

    if (v30 == 5 && *(v29 + 2))
    {
      v32 = *v29;
LABEL_54:
      v20 = *v32;
      goto LABEL_56;
    }

    v20 = 0;
LABEL_56:
    if (*(v29 + 8) != 224)
    {
      goto LABEL_27;
    }

    Node = swift::Demangle::NodeFactory::createNode(*v5, 128);
    v36 = Node;
    v37 = *(v20 + 18);
    if ((v37 - 1) >= 2)
    {
      if (v37 != 5 || !*(v20 + 8))
      {
        v21 = 0;
        goto LABEL_26;
      }

      v20 = *v20;
    }

    v21 = *v20;
LABEL_26:
    swift::Demangle::Node::addChild(Node, v21, *v5, v34, v35);
    v20 = swift::Demangle::NodeFactory::createNode(*v5, 243);
    swift::Demangle::Node::addChild(v20, v36, *v5, v22, v23);
LABEL_27:
    this = swift::Demangle::Node::addChild(v16, v20, *v5, v14, v15);
    if (v19 == ++v18)
    {
      goto LABEL_60;
    }
  }

  if (v24 == 1)
  {
    goto LABEL_77;
  }

  if (v24 != 5)
  {
    if (v24 == 2)
    {
      v24 = 2;
      goto LABEL_77;
    }

    goto LABEL_81;
  }

  v24 = *(v11 + 2);
LABEL_77:
  if (v24 <= v18)
  {
LABEL_81:
    a2 = 0;
  }

  else
  {
    if ((v25 & 1) == 0)
    {
      v11 = *v11;
    }

    a2 = v11[v18];
  }

  v12 = 3758;
LABEL_13:
  v13 = 1;
LABEL_14:
  *a4 = v13;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleSetter@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleStatic@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = this;
  v6 = *(a2 + 18);
  if (v6 == 1)
  {
LABEL_5:
    if (*a4)
    {
      return this;
    }

    v7 = *(v4 + 3184);
    v8 = *(v4 + 3185);
    v9 = *(v4 + 1591);
    if (v7 < v8)
    {
      goto LABEL_26;
    }

    v10 = *(v4 + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v15) = 1;
LABEL_25:
        *(v4 + 3185) = v8 + v15;
LABEL_26:
        v14 = 0;
        a2 = 0;
        v13 = 0;
        *(v4 + 3184) = v7 + 1;
        v9[v7] = 90;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v8);
    }

    v16 = v15 + v8;
    if (v11)
    {
      v17 = &v11[v15 + v8] > v12;
    }

    else
    {
      v17 = 1;
    }

    v9 = v10[1];
    if (v17)
    {
      v18 = 2 * v10[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v10[4] = v18;
      v19 = v18 + 8;
      this = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      v20 = this + v19;
      *this = v10[3];
      v9 = this + 8;
      v10[2] = v20;
      v10[3] = this;
    }

    v10[1] = &v9[v16];
    if (v8)
    {
      this = memcpy(v9, *(v4 + 1591), v8);
    }

    *(v4 + 1591) = v9;
    LODWORD(v8) = *(v4 + 3185);
    v7 = *(v4 + 3184);
    goto LABEL_25;
  }

  if (v6 == 5 && *(a2 + 2) == 1)
  {
    a2 = *a2;
    goto LABEL_5;
  }

  v13 = 322;
  v14 = 10;
LABEL_27:
  *a4 = v14;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleThinFunctionType@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
          return result;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "Xf", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleTuple@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    v7 = *(this + 3184);
    v8 = *(this + 3185);
    v9 = this[1591];
    if (v7 < v8)
    {
LABEL_21:
      *(this + 3184) = v7 + 1;
      v9[v7] = 116;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v10 = this[1593];
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_20:
        *(this + 3185) = v8 + v13;
        goto LABEL_21;
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
      v9 = result + 1;
      v10[2] = v18;
      v10[3] = result;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      result = memcpy(v9, this[1591], v8);
    }

    this[1591] = v9;
    LODWORD(v8) = *(this + 3185);
    v7 = *(this + 3184);
    goto LABEL_20;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::manglePack@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    result = swift::Demangle::CharVector::append(this + 1591, "QP", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleSILPackDirect@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    result = swift::Demangle::CharVector::append(this + 1591, "QSd", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleSILPackIndirect@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a4)
  {
    result = swift::Demangle::CharVector::append(this + 1591, "QSi", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::manglePackExpansion@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "Qp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::manglePackElement@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

LABEL_8:
  result = swift::Demangle::CharVector::append(this + 1591, "Qe", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if (v11 == 2)
  {
    goto LABEL_12;
  }

  if (v11 == 5 && *(v5 + 2) >= 2u)
  {
    v5 = *v5;
LABEL_12:
    if (*a4)
    {
      return result;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleTypeList@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = 1;
  v15 = 1;
  v9 = *(a2 + 18);
  switch(v9)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v9 = *(a2 + 2);
      if (v9)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v9 = 2;
LABEL_6:
      v10 = 0;
      while (1)
      {
        v11 = *(a2 + 18);
        v12 = v11 - 1;
        if (v11 == 1)
        {
          goto LABEL_13;
        }

        if (v11 != 5)
        {
          break;
        }

        if (*(a2 + 2) > v10)
        {
LABEL_16:
          v13 = a2;
          if (v12 >= 2)
          {
            v13 = *a2;
          }

          if (*a4)
          {
            return result;
          }

          goto LABEL_8;
        }

LABEL_7:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
LABEL_8:
        if (v9 == ++v10)
        {
          v8 = v15;
          goto LABEL_21;
        }
      }

      if (v11 != 2)
      {
        goto LABEL_7;
      }

      v11 = 2;
LABEL_13:
      if (v11 > v10)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
  }

LABEL_21:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMangling@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v13[v11] = 68;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadata@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "N", 1uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataAccessFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Ma", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataCompletionFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mr", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataInstantiationCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MI", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataInstantiationFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mi", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleTypeMetadataSingletonInitializationCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Ml", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMetadataDemanglingCache@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "Md", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMetadataMangledNameRef@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "MR", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypeMetadataLazyCache@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "ML", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleWeak@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Xw", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleUnowned@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Xo", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleUnmanaged@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Xu", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleUnsafeAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleUnsafeMutableAddressor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleValueWitness@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  v7 = a2;
  if (v6 != 2)
  {
    if (v6 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v7 = *a2;
  }

  v8 = a2;
  if (*a4)
  {
    return result;
  }

  a2 = v8;
  v6 = v8[18];
LABEL_8:
  if ((v6 - 1) >= 2)
  {
    a2 = *a2;
  }

  switch(**a2)
  {
    case 0:
      v10 = 0;
      v11 = "al";
      break;
    case 1:
      v10 = 0;
      v11 = "ca";
      break;
    case 2:
      v10 = 0;
      v11 = "ta";
      break;
    case 3:
      v10 = 0;
      v11 = "de";
      break;
    case 4:
      v10 = 0;
      v11 = "xx";
      break;
    case 5:
      v10 = 0;
      v11 = "XX";
      break;
    case 6:
      v10 = 0;
      v11 = "Xx";
      break;
    case 7:
      v10 = 0;
      v11 = "CP";
      break;
    case 8:
      v10 = 0;
      v11 = "Cp";
      break;
    case 9:
      v10 = 0;
      v11 = "cp";
      break;
    case 0xA:
      v10 = 0;
      v11 = "Tk";
      break;
    case 0xB:
      v10 = 0;
      v11 = "tk";
      break;
    case 0xC:
      v10 = 0;
      v11 = "pr";
      break;
    case 0xD:
      v10 = 0;
      v11 = "TK";
      break;
    case 0xE:
      v10 = 0;
      v11 = "Cc";
      break;
    case 0xF:
      v10 = 0;
      v11 = "Tt";
      break;
    case 0x10:
      v10 = 0;
      v11 = "tT";
      break;
    case 0x11:
      v10 = 0;
      v11 = "xs";
      break;
    case 0x12:
      v10 = 0;
      v11 = "xg";
      break;
    case 0x13:
      v10 = 0;
      v11 = "ug";
      break;
    case 0x14:
      v10 = 0;
      v11 = "up";
      break;
    case 0x15:
      v10 = 0;
      v11 = "ui";
      break;
    case 0x16:
      v10 = 0;
      v11 = "et";
      break;
    case 0x17:
      v10 = 0;
      v11 = "st";
      break;
    default:
      v11 = 0;
      v10 = 1;
      break;
  }

  v12 = *(this + 3184);
  v13 = *(this + 3185);
  v14 = this[1591];
  if (v12 < v13)
  {
    goto LABEL_52;
  }

  v15 = this[1593];
  v16 = v15[1];
  if (&v14[v13] != v16)
  {
    v17 = v15[2];
LABEL_40:
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
      v22 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v23 = v22 + v21;
      *v22 = v15[3];
      v16 = (v22 + 1);
      v15[2] = v23;
      v15[3] = v22;
    }

    v15[1] = &v16[v19];
    if (v13)
    {
      memcpy(v16, this[1591], v13);
    }

    this[1591] = v16;
    LODWORD(v13) = *(this + 3185);
    v14 = v16;
    v12 = *(this + 3184);
    goto LABEL_51;
  }

  v17 = v15[2];
  if ((v16 + 1) > v17)
  {
    goto LABEL_40;
  }

  v15[1] = v16 + 1;
  LODWORD(v18) = 1;
LABEL_51:
  *(this + 3185) = v13 + v18;
LABEL_52:
  *(this + 3184) = v12 + 1;
  v14[v12] = 119;
  if (v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = strlen(v11);
  }

  result = swift::Demangle::CharVector::append(this + 1591, v11, v24, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleValueWitnessTable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "WV", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleVTableThunk@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "TV", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleWillSet@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataBuiltinDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MB", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataFieldDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MF", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataAssocTypeDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MA", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleReflectionMetadataSuperclassDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MC", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGenericTypeParamDecl@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "fp", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCurryThunk@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Tc", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSILThunkIdentity@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  swift::Demangle::CharVector::append(v4 + 1591, "TT", 2uLL, *(v4 + 1593));
  this = swift::Demangle::CharVector::append(v4 + 1591, "I", 1uLL, *(v4 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDispatchThunk@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Tj", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleMethodDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Tq", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolRequirementsBaseDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v13 = v8 + 1;
        goto LABEL_29;
      case 2:
        v13 = v8 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "TL", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v20 = v15 + 1;
        goto LABEL_41;
      case 2:
        v20 = v15 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "Tn", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDefaultAssociatedConformanceAccessor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v20 = v15 + 1;
        goto LABEL_41;
      case 2:
        v20 = v15 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "TN", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleBaseConformanceDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v18 = v13 + 1;
        goto LABEL_36;
      case 2:
        v18 = v13 + 2;
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
  result = swift::Demangle::CharVector::append(this + 1591, "Tb", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "Tl", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleTypedThrowsAnnotation@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "YK", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleOutlinedBridgedMethod@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  swift::Demangle::CharVector::append(this + 1591, "Te", 2uLL, this[1593]);
  swift::Demangle::CharVector::append(this + 1591, *a2, *(a2 + 1), this[1593]);
  result = swift::Demangle::CharVector::append(this + 1591, "_", 1uLL, this[1593]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedCopy@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOy", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedConsume@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOe", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedRetain@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOr", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedRelease@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOs", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithTake@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOb", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithCopy@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOc", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithTake@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOd", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithCopy@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOf", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedDestroy@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOh", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleOutlinedVariable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "Tv", 2uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
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

void *anonymous namespace::Remangler::mangleOutlinedReadOnlyObject@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "Tv", 2uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
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

uint64_t *anonymous namespace::Remangler::mangleAssocTypePath@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleLabelList@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleModuleDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "MXM", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleExtensionDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "MXE", 3uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAnonymousDescriptor@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &v21);
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
  result = swift::Demangle::CharVector::append(this + 1591, v14, 3uLL, v13);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeGenericParamRef@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    this = swift::Demangle::CharVector::append((v5 + 12728), "MXA", 3uLL, *(v5 + 12744));
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSugaredOptional@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v8 + 1591, "XSq", 3uLL, *(v8 + 1593));
  v9 = 0;
  v6 = 0;
  v10 = 0;
LABEL_14:
  *a4 = v9;
  *(a4 + 8) = v6;
  *(a4 + 16) = v10;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSugaredArray@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v8 + 1591, "XSa", 3uLL, *(v8 + 1593));
  v9 = 0;
  v6 = 0;
  v10 = 0;
LABEL_14:
  *a4 = v9;
  *(a4 + 8) = v6;
  *(a4 + 16) = v10;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleSugaredDictionary@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v4 + 1591, "XSD", 3uLL, v4[1593]);
  v15 = 0;
  v8 = 0;
  v16 = 0;
LABEL_27:
  *a4 = v15;
  *(a4 + 8) = v8;
  *(a4 + 16) = v16;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleSugaredInlineArray@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v4 + 1591, "XSA", 3uLL, v4[1593]);
  v15 = 0;
  v8 = 0;
  v16 = 0;
LABEL_27:
  *a4 = v15;
  *(a4 + 8) = v8;
  *(a4 + 16) = v16;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleSugaredParen@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v8 + 1591, "XSp", 3uLL, *(v8 + 1593));
  v9 = 0;
  v6 = 0;
  v10 = 0;
LABEL_14:
  *a4 = v9;
  *(a4 + 8) = v6;
  *(a4 + 16) = v10;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleOpaqueType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, uint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "Qo", 2uLL, *(this + 1593));
  if (*(v5 + 18) == 5)
  {
    v5 = *v5;
  }

  v43 = *v5[1];
  if (v43)
  {
    result = swift::Demangle::CharVector::append(this + 3182, v43 - 1, *(this + 1593));
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
    result = std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &v62);
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MQ", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorRecord@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Ho", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessor@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mg", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessorImpl@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mh", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessorKey@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mj", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleOpaqueTypeDescriptorAccessorVar@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mk", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

void *anonymous namespace::Remangler::mangleOpaqueReturnType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "QR", 2uLL, *(this + 1593));
    v9 = a2;
    if (*(a2 + 18) - 1 >= 2)
    {
      v9 = *a2;
    }

    v10 = **v9;
    if (v10)
    {
      result = swift::Demangle::CharVector::append(this + 3182, v10 - 1, *(this + 1593));
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
  result = swift::Demangle::CharVector::append(this + 1591, "Qr", 2uLL, *(this + 1593));
LABEL_28:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOpaqueReturnTypeOf@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "QO", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleCanonicalSpecializedGenericMetaclass@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "MM", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCanonicalSpecializedGenericTypeMetadataAccessFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mb", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleMetadataInstantiationCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MK", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNoncanonicalSpecializedGenericTypeMetadata@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MN", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNoncanonicalSpecializedGenericTypeMetadataCache@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "MJ", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalVariableOnceFunction@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WZ", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalVariableOnceToken@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "Wz", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalVariableOnceDeclList@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCanonicalPrespecializedGenericTypeCachingOnceToken@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mz", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAutoDiffSelfReorderingReabstractionThunk@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
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

      swift::Demangle::CharVector::append(this + 1591, "TJO", 3uLL, this[1593]);
      v11 = *v10;
    }
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAutoDiffSubsetParametersThunk@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  swift::Demangle::CharVector::append(this + 1591, "TJS", 3uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleDifferentiabilityWitness@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    swift::Demangle::CharVector::append(this + 1591, "WJ", 2uLL, this[1593]);
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleNoDerivative@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Yk", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAsyncAwaitResumePartialFunction@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "TQ", 2uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleAsyncSuspendResumePartialFunction@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "TY", 2uLL, this[1593]);
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleCompileTimeLiteral@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Yt", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleExtendedExistentialTypeShape@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, v14, 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleUniquable@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::CharVector::append(this + 1591, "Mq", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleSymbolicExtendedExistentialType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

void *anonymous namespace::Remangler::mangleDroppedArgument@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "t", 1uLL, *(this + 1593));
  if (*a2 >= 1)
  {
    result = swift::Demangle::CharVector::append(this + 3182, *a2 - 1, *(this + 1593));
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedEnumTagStore@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

        result = swift::Demangle::CharVector::append(this + 1591, "WOi", 3uLL, *(this + 1593));
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

  result = swift::Demangle::CharVector::append(this + 1591, "WOi", 3uLL, *(this + 1593));
  if (*(v5 + 18) == 5)
  {
    v5 = *v5;
  }

  v13 = **(v5 + 1);
  if (v13)
  {
LABEL_11:
    result = swift::Demangle::CharVector::append(this + 3182, v13 - 1, *(this + 1593));
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

uint64_t *anonymous namespace::Remangler::mangleOutlinedEnumProjectDataForLoad@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

        result = swift::Demangle::CharVector::append(this + 1591, "WOj", 3uLL, *(this + 1593));
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

  result = swift::Demangle::CharVector::append(this + 1591, "WOj", 3uLL, *(this + 1593));
  if (*(v5 + 18) == 5)
  {
    v5 = *v5;
  }

  v13 = **(v5 + 1);
  if (v13)
  {
LABEL_11:
    result = swift::Demangle::CharVector::append(this + 3182, v13 - 1, *(this + 1593));
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

uint64_t *anonymous namespace::Remangler::mangleOutlinedEnumGetTag@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOg", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithTakeNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOB", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedInitializeWithCopyNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOC", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithTakeNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOD", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedAssignWithCopyNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOF", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleOutlinedDestroyNoValueWitness@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "WOH", 3uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDependentGenericInverseConformanceRequirement@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
      this = swift::Demangle::CharVector::append((v4 + 12728), "RI", 2uLL, v10);
      if (*(v7 + 18) == 5)
      {
        v7 = *v7;
      }

      v11 = **(v7 + 1);
      if (v11)
      {
        this = swift::Demangle::CharVector::append((v4 + 12728), v11 - 1, *(v4 + 12744));
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

  swift::Demangle::CharVector::append((v4 + 12728), v18, 2uLL, v10);
  if (*(v7 + 18) == 5)
  {
    v7 = *v7;
  }

  v19 = **(v7 + 1);
  if (v19)
  {
    swift::Demangle::CharVector::append((v4 + 12728), v19 - 1, *(v4 + 12744));
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