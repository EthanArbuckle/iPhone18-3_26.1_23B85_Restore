void *anonymous namespace::Remangler::mangleInteger@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "$", 1uLL, *(this + 1593));
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

void *anonymous namespace::Remangler::mangleNegativeInteger@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::CharVector::append(this + 1591, "$n", 2uLL, *(this + 1593));
  if (*a2)
  {
    result = swift::Demangle::CharVector::append(this + 3182, ~*a2, *(this + 1593));
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

    swift::Demangle::CharVector::append(v15 + 1591, "RV", 2uLL, *(v15 + 1593));
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleConstValue@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::CharVector::append(v6 + 1591, "Yg", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleAnyConstructor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
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
  result = swift::Demangle::CharVector::append(this + 1591, "f", 1uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleChildNodes@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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

char **swift::Demangle::RemanglerBuffer::operator<<(char **result, char a2)
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleAnyProtocolConformance@<X0>(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a3@<X1>, int a4@<W2>)
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
            this = swift::Demangle::CharVector::append(v13 + 1591, "HX", 2uLL, *(v13 + 1593));
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

uint64_t anonymous namespace::Remangler::trySubstitution(_anonymous_namespace_::Remangler *this, uint64_t **a2, swift::Demangle::SubstitutionEntry *a3, int a4)
{
  {
    return 1;
  }

  swift::Demangle::RemanglerBase::entryForNode(&__s2, this, a2, a4);
  *a3 = __s2;
  *(a3 + 16) = v46;
  Substitution = swift::Demangle::RemanglerBase::findSubstitution(this, a3);
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
          swift::Demangle::CharVector::append(this + 3182, Substitution - 27, *(this + 1593));
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
      swift::Demangle::CharVector::append(this + 1591, &__s2, 1uLL, *(this + 1593));
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

uint64_t anonymous namespace::Remangler::mangleStandardSubstitution(_anonymous_namespace_::Remangler *this, uint64_t **a2)
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
          if (*((*a2)[1] + 16) == 103)
          {
            v14 = this;
            a2 = *a2;
LABEL_27:
            swift::Mangle::getStandardTypeSubst(*a2[1], a2[1][1], 1, &v31);
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
                swift::Demangle::CharVector::append(v18 + 1591, v31, v32, *(v18 + 1593));
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

        else if (*(a2[1] + 8) == 103)
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
    swift::Demangle::CharVector::append(this + 3182, a2 - 1, *(this + 1593));
  }

  return swift::Demangle::RemanglerBuffer::operator<<(this + 1591, 95);
}

uint64_t swift::Mangle::SubstitutionMerging::tryMergeSubst<anonymous namespace::Remangler>(unint64_t *a1, uint64_t a2, void *__s2, uint64_t __n, int a5)
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
      swift::Demangle::CharVector::append((a2 + 12728), __s2, __n, *(a2 + 12744));
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
    swift::Demangle::CharVector::append(v30, v32, v28);
    swift::Demangle::CharVector::append((v31 + 12728), v33, v34, *(v31 + 12744));
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

uint64_t *anonymous namespace::Remangler::mangleChildNodesReversed@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleAnyNominalType@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
  this = swift::Demangle::isSpecialized(a2, a2);
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

  this = swift::Demangle::getUnspecialized(a2, *v8, &v24);
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
          swift::Demangle::RemanglerBuffer::operator<<((v8 + 12728), 71);
          this = swift::Demangle::RemanglerBase::addSubstitution(v8, v27);
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

uint64_t *anonymous namespace::Remangler::mangleGenericArgs@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, char *a3@<X2>, int a4@<W3>, _BOOL4 a5@<W4>, uint64_t a6@<X8>)
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
        this = swift::Demangle::nodeConsumesGenericArgs(v16, v24);
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

      swift::Demangle::RemanglerBuffer::operator<<((v12 + 12728), *a3);
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

uint64_t anonymous namespace::Remangler::mangleAnyGenericType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
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
        v16 = &v15[*(a2 + 8)];
        goto LABEL_16;
      }

      v14 = 0;
    }

    switch(v13)
    {
      case 1:
        v16 = (a2 + 8);
        goto LABEL_16;
      case 2:
        v16 = (a2 + 16);
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
    result = swift::Demangle::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
    v17 = *(a1 + 12680);
    if (v17 > 0xF)
    {
      v19 = *(a1 + 12712) + 16;
      v22 = v20;
      v23 = v21;
      v24 = v19;
      result = std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>((a1 + 12688), &v22);
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

uint64_t *anonymous namespace::Remangler::mangleSingleChildNode@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t anonymous namespace::Remangler::mangleConstrainedType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
      v17 = v16[1];
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

        result = swift::Demangle::CharVector::append(v6 + 1591, v30, v11 != 1, *(v6 + 1593));
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
            result = std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(v6 + 1586, &v41);
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

          result = swift::Demangle::CharVector::append(v6 + 1591, "", 0, *(v6 + 1593));
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

_DWORD *anonymous namespace::Remangler::mangleDependentGenericParamIndex(_DWORD *this, swift::Demangle::Node *a2, const char *__s, char a4)
{
  v4 = this;
  if (*(a2 + 8) != 87)
  {
    v9 = *(a2 + 18);
    if ((v9 - 1) >= 2)
    {
      v14 = *a2;
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

    v15 = **a2;
    v16 = **(v10 + 1);
    if (v15)
    {
      if (__s)
      {
        v17 = __s;
        v18 = strlen(__s);
        __s = v17;
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      this = swift::Demangle::CharVector::append(v4 + 1591, __s, v19, *(v4 + 1593));
      v5 = v4 + 12736;
      v23 = *(v4 + 3184);
      v24 = *(v4 + 3185);
      v25 = *(v4 + 1591);
      if (v23 < v24)
      {
LABEL_54:
        *v5 = v23 + 1;
        v25[v23] = 100;
        if (v15 != 1)
        {
          this = swift::Demangle::CharVector::append(v4 + 3182, v15 - 2, *(v4 + 1593));
        }

        v44 = *(v4 + 3184);
        v45 = *(v4 + 3185);
        v46 = *(v4 + 1591);
        if (v44 < v45)
        {
          goto LABEL_72;
        }

        v47 = *(v4 + 1593);
        v48 = v47[1];
        if (&v46[v45] == v48)
        {
          v49 = v47[2];
          if ((v48 + 1) <= v49)
          {
            v47[1] = v48 + 1;
            LODWORD(v50) = 1;
LABEL_71:
            *(v4 + 3185) = v45 + v50;
LABEL_72:
            *v5 = v44 + 1;
            v46[v44] = 95;
            if (v16)
            {
              this = swift::Demangle::CharVector::append(v4 + 3182, v16 - 1, *(v4 + 1593));
            }

            goto LABEL_79;
          }
        }

        else
        {
          v49 = v47[2];
        }

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
          this = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
          v54 = this + v53;
          *this = v47[3];
          v48 = (this + 2);
          v47[2] = v54;
          v47[3] = this;
        }

        v47[1] = &v48[v51];
        if (v45)
        {
          this = memcpy(v48, *(v4 + 1591), v45);
        }

        *(v4 + 1591) = v48;
        LODWORD(v45) = *(v4 + 3185);
        v46 = v48;
        v44 = *(v4 + 3184);
        goto LABEL_71;
      }

      v26 = *(v4 + 1593);
      v27 = v26[1];
      if (&v25[v24] == v27)
      {
        v28 = v26[2];
        if ((v27 + 1) <= v28)
        {
          v26[1] = v27 + 1;
          LODWORD(v39) = 1;
LABEL_53:
          *(v4 + 3185) = v24 + v39;
          goto LABEL_54;
        }
      }

      else
      {
        v28 = v26[2];
      }

      if ((2 * v24) <= 4)
      {
        v39 = 4;
      }

      else
      {
        v39 = (2 * v24);
      }

      v40 = v39 + v24;
      if (!v27 || &v27[v40] > v28)
      {
        v41 = 2 * v26[4];
        if (v41 <= v40 + 1)
        {
          v41 = v40 + 1;
        }

        v26[4] = v41;
        v42 = v41 + 8;
        this = malloc_type_malloc(v41 + 8, 0x2004093837F09uLL);
        v43 = this + v42;
        *this = v26[3];
        v27 = (this + 2);
        v26[2] = v43;
        v26[3] = this;
      }

      v26[1] = &v27[v40];
      if (v24)
      {
        this = memcpy(v27, *(v4 + 1591), v24);
      }

      *(v4 + 1591) = v27;
      LODWORD(v24) = *(v4 + 3185);
      v25 = v27;
      v23 = *(v4 + 3184);
      goto LABEL_53;
    }

    if (v16)
    {
      if (__s)
      {
        v20 = __s;
        v21 = strlen(__s);
        __s = v20;
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      this = swift::Demangle::CharVector::append(v4 + 1591, __s, v22, *(v4 + 1593));
      if (v16 != 1)
      {
        this = swift::Demangle::CharVector::append(v4 + 3182, v16 - 2, *(v4 + 1593));
      }

      v5 = v4 + 12736;
LABEL_79:
      v6 = *(v4 + 3184);
      v55 = *(v4 + 3185);
      v8 = *(v4 + 1591);
      if (v6 < v55)
      {
LABEL_95:
        a4 = 95;
        goto LABEL_96;
      }

      v56 = *(v4 + 1593);
      v57 = v56[1];
      if (&v8[v55] == v57)
      {
        v58 = v56[2];
        if ((v57 + 1) <= v58)
        {
          v56[1] = v57 + 1;
          LODWORD(v59) = 1;
LABEL_94:
          *(v4 + 3185) = v55 + v59;
          goto LABEL_95;
        }
      }

      else
      {
        v58 = v56[2];
      }

      if ((2 * v55) <= 4)
      {
        v59 = 4;
      }

      else
      {
        v59 = (2 * v55);
      }

      v60 = v59 + v55;
      if (!v57 || &v57[v60] > v58)
      {
        v61 = 2 * v56[4];
        if (v61 <= v60 + 1)
        {
          v61 = v60 + 1;
        }

        v56[4] = v61;
        v62 = v61 + 8;
        this = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
        *this = v56[3];
        v57 = (this + 2);
        v56[2] = this + v62;
        v56[3] = this;
      }

      v56[1] = &v57[v60];
      if (v55)
      {
        this = memcpy(v57, *(v4 + 1591), v55);
      }

      *(v4 + 1591) = v57;
      LODWORD(v55) = *(v4 + 3185);
      v8 = v57;
      v6 = *(v4 + 3184);
      goto LABEL_94;
    }

    v5 = this + 3184;
    v6 = this[3184];
    v35 = this[3185];
    v8 = *(this + 1591);
    if (v6 < v35)
    {
      goto LABEL_96;
    }

    v36 = *(this + 1593);
    v37 = v36[1];
    if (&v8[v35] == v37)
    {
      v38 = v36[2];
      if ((v37 + 1) <= v38)
      {
        v36[1] = v37 + 1;
        LODWORD(v63) = 1;
LABEL_112:
        *(v4 + 3185) = v35 + v63;
        goto LABEL_96;
      }
    }

    else
    {
      v38 = v36[2];
    }

    if ((2 * v35) <= 4)
    {
      v63 = 4;
    }

    else
    {
      v63 = (2 * v35);
    }

    v64 = v63 + v35;
    if (!v37 || &v37[v64] > v38)
    {
      v65 = 2 * v36[4];
      if (v65 <= v64 + 1)
      {
        v65 = v64 + 1;
      }

      v36[4] = v65;
      v66 = v65 + 8;
      v67 = a4;
      this = malloc_type_malloc(v65 + 8, 0x2004093837F09uLL);
      a4 = v67;
      *this = v36[3];
      v37 = (this + 2);
      v36[2] = this + v66;
      v36[3] = this;
    }

    v36[1] = &v37[v64];
    if (v35)
    {
      v68 = a4;
      this = memcpy(v37, *(v4 + 1591), v35);
      a4 = v68;
    }

    *(v4 + 1591) = v37;
    LODWORD(v35) = *(v4 + 3185);
    v8 = v37;
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
        LODWORD(v29) = 1;
LABEL_37:
        *(v4 + 3185) = v7 + v29;
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
      v29 = 4;
    }

    else
    {
      v29 = (2 * v7);
    }

    v30 = v29 + v7;
    if (v12)
    {
      v31 = &v12[v29 + v7] > v13;
    }

    else
    {
      v31 = 1;
    }

    v8 = v11[1];
    if (v31)
    {
      v32 = 2 * v11[4];
      if (v32 <= v30 + 1)
      {
        v32 = v30 + 1;
      }

      v11[4] = v32;
      v33 = v32 + 8;
      this = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      v34 = this + v33;
      *this = v11[3];
      v8 = (this + 2);
      v11[2] = v34;
      v11[3] = this;
    }

    v11[1] = &v8[v30];
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

  swift::Demangle::CharVector::append(v10 + 1591, v17, 1uLL, v10[1593]);
  result = swift::Demangle::CharVector::append(v10 + 1591, a3, a4, v10[1593]);
  v18 = 0;
  v9 = 0;
  v19 = 0;
LABEL_22:
  *a6 = v18;
  *(a6 + 8) = v9;
  *(a6 + 16) = v19;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGenericSpecializationNode@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
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

void anonymous namespace::Remangler::mangleIdentifierImpl(_anonymous_namespace_::Remangler *this, swift::Demangle::Node *a2, int a3)
{
  memset(&v11, 0, 17);
  {
    if (a3)
    {
      swift::Mangle::translateOperator(*a2, *(a2 + 1), &__p);
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
      std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &__p);
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

void swift::Mangle::mangleIdentifier<anonymous namespace::Remangler>(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a1 + 12768);
  v164 = a3;
  if (*(a1 + 12753) != 1 || (v6 = swift::Mangle::needsPunycodeEncoding(a2, a3), a3 = v164, !v6))
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
            swift::Demangle::CharVector::append((a1 + 12728), *v92 - v90, *(a1 + 12744));
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
  swift::Punycode::encodePunycodeUTF8(v3, v164, &__p);
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

  swift::Demangle::CharVector::append((a1 + 12728), "00", 2uLL, *(a1 + 12744));
  swift::Demangle::CharVector::append((a1 + 12728), size, *(a1 + 12744));
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
  swift::Demangle::CharVector::append((a1 + 12728), p_p, size, *(a1 + 12744));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t *anonymous namespace::Remangler::mangleKeyPathThunkHelper@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
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
      goto LABEL_14;
    }

    v13 = 0;
  }

  switch(v12)
  {
    case 1:
      v15 = (a2 + 8);
      goto LABEL_14;
    case 2:
      v15 = (a2 + 16);
      goto LABEL_14;
    case 5:
      v14 = *a2;
      goto LABEL_9;
  }

  v15 = 0;
LABEL_14:
  while (v13 != v15)
  {
    if (*(*v13 + 8) != 228)
    {
      if (*a6)
      {
        return result;
      }
    }

    ++v13;
  }

  result = swift::Demangle::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
  v17 = *(a2 + 18);
  v18 = a2;
  if ((v17 - 1) >= 2)
  {
    if (v17 == 5)
    {
      v19 = *a2;
      v18 = *a2;
LABEL_26:
      v20 = (v19 + 8 * *(a2 + 8));
      goto LABEL_31;
    }

    v18 = 0;
  }

  switch(v17)
  {
    case 1:
      v20 = (a2 + 8);
      goto LABEL_31;
    case 2:
      v20 = (a2 + 16);
      goto LABEL_31;
    case 5:
      v19 = *a2;
      goto LABEL_26;
  }

  v20 = 0;
LABEL_31:
  while (v18 != v20)
  {
    if (*(*v18 + 8) == 228)
    {
      if (*a6)
      {
        return result;
      }
    }

    ++v18;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolList@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, swift::Demangle::Node *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 18);
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5 || !*(a2 + 2))
    {
      v12 = 0;
      goto LABEL_7;
    }

    a2 = *a2;
  }

  v12 = *a2;
LABEL_7:
  v42 = 1;
  v13 = *(v12 + 18);
  v14 = v12;
  if ((v13 - 1) >= 2)
  {
    if (v13 == 5)
    {
      v15 = *v12;
      v14 = *v12;
      goto LABEL_15;
    }

    v14 = 0;
  }

  switch(v13)
  {
    case 1:
      v16 = (v12 + 8);
      if (v14 != (v12 + 8))
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    case 2:
      v16 = (v12 + 16);
      if (v14 != (v12 + 16))
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    case 5:
      v15 = *v12;
LABEL_15:
      v16 = &v15[*(v12 + 8)];
      if (v14 != v16)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
  }

  v16 = 0;
  if (!v14)
  {
LABEL_22:
    v17 = 1;
    goto LABEL_23;
  }

  do
  {
LABEL_31:
    v23 = *v14;
    if (*(*v14 + 8) != 243)
    {
      goto LABEL_38;
    }

    v24 = *(v23 + 18);
    if ((v24 - 1) < 2)
    {
      goto LABEL_36;
    }

    if (v24 == 5 && *(v23 + 2))
    {
      v23 = *v23;
LABEL_36:
      v23 = *v23;
      goto LABEL_38;
    }

    v23 = 0;
LABEL_38:
    {
      v25 = *(v23 + 18);
      v26 = v23;
      if ((v25 - 1) >= 2)
      {
        if (v25 == 5)
        {
          v27 = *v23;
          v26 = *v23;
LABEL_47:
          v28 = (v27 + 8 * *(v23 + 2));
          goto LABEL_53;
        }

        v26 = 0;
      }

      switch(v25)
      {
        case 1:
          v28 = v23 + 1;
          goto LABEL_53;
        case 2:
          v28 = v23 + 2;
          goto LABEL_53;
        case 5:
          v27 = *v23;
          goto LABEL_47;
      }

      v28 = 0;
LABEL_53:
      while (v26 != v28)
      {
        if (*a6)
        {
          return result;
        }

        ++v26;
      }
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    ++v14;
  }

  while (v14 != v16);
  v17 = v42;
LABEL_23:
  if (!a3)
  {
    v20 = this[1593];
    if (a4)
    {
      v21 = "Xl";
      v22 = (this + 1591);
LABEL_57:
      result = swift::Demangle::CharVector::append(v22, v21, 2uLL, v20);
      v29 = 0;
      a3 = 0;
      v30 = 0;
      goto LABEL_77;
    }

    v31 = *(this + 3184);
    v32 = *(this + 3185);
    v33 = this[1591];
    if (v31 < v32)
    {
      goto LABEL_76;
    }

    v34 = v20[1];
    if (&v33[v32] == v34)
    {
      v35 = v20[2];
      if ((v34 + 1) <= v35)
      {
        v20[1] = v34 + 1;
        LODWORD(v36) = 1;
LABEL_75:
        *(this + 3185) = v32 + v36;
LABEL_76:
        v29 = 0;
        a3 = 0;
        v30 = 0;
        *(this + 3184) = v31 + 1;
        v33[v31] = 112;
        goto LABEL_77;
      }
    }

    else
    {
      v35 = v20[2];
    }

    if ((2 * v32) <= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = (2 * v32);
    }

    v37 = v36 + v32;
    if (!v34 || &v34[v37] > v35)
    {
      v38 = 2 * v20[4];
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      v20[4] = v38;
      v39 = v38 + 8;
      v40 = v20;
      result = malloc_type_malloc(v38 + 8, 0x2004093837F09uLL);
      v20 = v40;
      v41 = result + v39;
      *result = v40[3];
      v34 = (result + 1);
      v40[2] = v41;
      v40[3] = result;
    }

    v20[1] = &v34[v37];
    if (v32)
    {
      result = memcpy(v34, this[1591], v32);
    }

    this[1591] = v34;
    LODWORD(v32) = *(this + 3185);
    v33 = v34;
    v31 = *(this + 3184);
    goto LABEL_75;
  }

  v19 = *(a3 + 18);
  if (v19 == 1)
  {
    goto LABEL_28;
  }

  if (v19 != 5 || *(a3 + 2) != 1)
  {
    v30 = 322;
    v29 = 10;
LABEL_77:
    *a6 = v29;
    *(a6 + 8) = a3;
    *(a6 + 16) = v30;
    return result;
  }

  a3 = *a3;
LABEL_28:
  if (!*a6)
  {
    v20 = this[1593];
    v21 = "Xc";
    v22 = (this + 1591);
    goto LABEL_57;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAutoDiffFunctionOrSimpleThunk@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 18);
  v13 = a2;
  if ((v12 - 1) >= 2)
  {
    if (v12 == 5)
    {
      v13 = *a2;
    }

    else
    {
      v13 = 0;
    }
  }

  while (1)
  {
    v14 = *(a2 + 18);
    if (v14 != 5)
    {
      break;
    }

    if (v13 == (*a2 + 8 * *(a2 + 8)))
    {
      goto LABEL_18;
    }

LABEL_15:
    v17 = *v13;
    if (*(*v13 + 8) == 335)
    {
      goto LABEL_18;
    }

    ++v13;
    if (*a6)
    {
      return result;
    }
  }

  if (v14 == 1)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v14 == 2)
  {
    v16 = (a2 + 16);
  }

  else
  {
    v16 = v15;
  }

  if (v13 != v16)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift::Demangle::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
  if (!*a6)
  {
    if (!*a6)
    {
      v19 = *(a1 + 12736);
      v20 = *(a1 + 12740);
      v21 = *(a1 + 12728);
      if (v19 >= v20)
      {
        v22 = *(a1 + 12744);
        v23 = v22[1];
        if (&v21[v20] != v23)
        {
          v24 = v22[2];
          goto LABEL_24;
        }

        v24 = v22[2];
        if ((v23 + 1) <= v24)
        {
          v22[1] = v23 + 1;
          LODWORD(v25) = 1;
        }

        else
        {
LABEL_24:
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
            v30 = v29 + v28;
            *v29 = v22[3];
            v23 = (v29 + 1);
            v22[2] = v30;
            v22[3] = v29;
          }

          v22[1] = &v23[v26];
          if (v20)
          {
            memcpy(v23, *(a1 + 12728), v20);
          }

          *(a1 + 12728) = v23;
          LODWORD(v20) = *(a1 + 12740);
          v21 = v23;
          v19 = *(a1 + 12736);
        }

        *(a1 + 12740) = v20 + v25;
      }

      *(a1 + 12736) = v19 + 1;
      v21[v19] = 112;
      if (!*a6)
      {
        v31 = *(a1 + 12736);
        v32 = *(a1 + 12740);
        v33 = *(a1 + 12728);
        if (v31 >= v32)
        {
          v34 = *(a1 + 12744);
          v35 = v34[1];
          if (&v33[v32] != v35)
          {
            v36 = v34[2];
            goto LABEL_42;
          }

          v36 = v34[2];
          if ((v35 + 1) <= v36)
          {
            v34[1] = v35 + 1;
            LODWORD(v37) = 1;
          }

          else
          {
LABEL_42:
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
              result = malloc_type_malloc(v39 + 8, 0x2004093837F09uLL);
              v41 = result + v40;
              *result = v34[3];
              v35 = (result + 1);
              v34[2] = v41;
              v34[3] = result;
            }

            v34[1] = &v35[v38];
            if (v32)
            {
              result = memcpy(v35, *(a1 + 12728), v32);
            }

            *(a1 + 12728) = v35;
            LODWORD(v32) = *(a1 + 12740);
            v33 = v35;
            v31 = *(a1 + 12736);
          }

          *(a1 + 12740) = v32 + v37;
        }

        *(a1 + 12736) = v31 + 1;
        v33[v31] = 114;
        *a6 = 0;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::find<swift::Demangle::SubstitutionEntry>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v10 == v4)
    {
      if (i[3] == *(a2 + 8) && *(i + 32) == *(a2 + 16))
      {
        v11 = *a2;
        if (*(i + 32))
        {
          if (swift::Demangle::SubstitutionEntry::identifierEquals(i[2], *a2, v11))
          {
            return i;
          }
        }

        else if (swift::Demangle::SubstitutionEntry::deepEquals((i + 2), i[2], v11))
        {
          return i;
        }
      }
    }

    else
    {
      if (v6 <= 1)
      {
        v10 &= *&v2 - 1;
      }

      else if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v2)
    {
      break;
    }

    if (v6 <= 1)
    {
      v10 &= *&v3 - 1;
    }

    else if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v7)
    {
      goto LABEL_24;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[3] != *(a2 + 8) || *(v9 + 32) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  v11 = *a2;
  if (*(v9 + 32))
  {
    if (swift::Demangle::SubstitutionEntry::identifierEquals(v9[2], *a2, v11))
    {
      return v9;
    }

    goto LABEL_12;
  }

  if ((swift::Demangle::SubstitutionEntry::deepEquals((v9 + 2), v9[2], v11) & 1) == 0)
  {
    goto LABEL_12;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_out_of_range[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void swift::Demangle::warnv(swift::Demangle *this, char *__format, va_list a3, char *a4)
{
  v5 = vsnprintf(0, 0, __format, a3);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = (v5 + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      if ((vsnprintf(v7, v6, __format, a3) & 0x80000000) == 0)
      {
        v9 = MEMORY[0x29EDCA610];
        fputs(v8, *MEMORY[0x29EDCA610]);
        fflush(*v9);
        free(v8);
        return;
      }

      free(v8);
    }
  }

  v10 = MEMORY[0x29EDCA610];
  fputs("unable to format warning message", *MEMORY[0x29EDCA610]);
  fflush(*v10);
}

void demangleFatal(char *__format, va_list a2, char *a3)
{
  v4 = vsnprintf(0, 0, __format, a2);
  if ((v4 & 0x80000000) == 0)
  {
    v6 = (v4 + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      if ((vsnprintf(v7, v6, __format, a2) & 0x80000000) == 0)
      {
        reportError(v8, v9);
        abort();
      }

      free(v8);
    }
  }

  reportError("unable to format fatal error message", v5);
  abort();
}

void reportError(const char *a1, const char *a2)
{
  v3 = MEMORY[0x29EDCA610];
  fputs(a1, *MEMORY[0x29EDCA610]);
  fflush(*v3);
  v5 = 0;
  v9 = 0;
  for (i = qword_2A14C9490[0]; ; i = v8)
  {
    if (v5)
    {
      free(v5);
      v9 = 0;
    }

    if (i)
    {
      break;
    }

    v7 = strdup(a1);
    v8 = 0;
    v9 = v7;
    atomic_compare_exchange_strong_explicit(qword_2A14C9490, &v8, v7, memory_order_release, memory_order_relaxed);
    if (!v8)
    {
      return;
    }

LABEL_3:
    v5 = v9;
  }

  demangle_asprintf(&v9, v4, i, a1);
  v8 = i;
  atomic_compare_exchange_strong_explicit(qword_2A14C9490, &v8, v9, memory_order_release, memory_order_relaxed);
  if (v8 != i)
  {
    goto LABEL_3;
  }

  if (malloc_size(i))
  {

    free(i);
  }
}

void demangle_asprintf(char **a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "%s%s", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "%s%s", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
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

void operator new()
{
    ;
  }
}