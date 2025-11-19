uint64_t *anonymous namespace::Remangler::mangleBodyAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMb", 3uLL, this[1593]);
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

uint64_t anonymous namespace::Remangler::mangleBoundGenericEnum@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
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
  if ((v9 - 1) < 2)
  {
LABEL_11:
    v10 = *v8;
    goto LABEL_13;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  if (*(v10 + 8) != 63)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 848;
    return this;
  }

  v11 = *(v10 + 18);
  v12 = v10;
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5)
    {
      v13 = 0;
      if (v11 == 2)
      {
LABEL_25:
        v14 = v10[1];
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (!*(v10 + 2))
    {
      v13 = 0;
      goto LABEL_27;
    }

    v12 = *v10;
  }

  v13 = *v12;
  if (v11 == 2)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v11 == 5 && *(v10 + 2) >= 2u)
  {
    v10 = *v10;
    goto LABEL_25;
  }

LABEL_27:
  v14 = 0;
LABEL_28:
  if (*(v13 + 8) == 163 && v13[1] == (&dword_4 + 1))
  {
    v15 = *v13;
    v16 = *v15;
    v17 = *(v15 + 4);
    v18 = v16 == 1718187859 && v17 == 116;
    if (v18 && *(v14 + 16) == 103 && *(v14 + 8) == 8 && **v14 == 0x6C616E6F6974704FLL)
    {
      v31 = v4;
      v32 = v5;
      v29[0] = 0;
      v29[1] = 0;
      v30 = 0;
      v22 = this;
      if (this)
      {
LABEL_52:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return this;
      }

      v24 = a2;
      v25 = *(a2 + 18);
      if (v25 == 2)
      {
        v26 = v22;
        v27 = a3;
      }

      else
      {
        v18 = v25 == 5;
        v26 = v22;
        v27 = a3;
        if (!v18 || *(a2 + 2) < 2u)
        {
          v28 = 0;
LABEL_50:
          if (*a4)
          {
            return this;
          }

          swift::Demangle::__runtime::CharVector::append((v22 + 12728), "Sg", 2uLL, *(v22 + 12744));
          this = swift::Demangle::__runtime::RemanglerBase::addSubstitution(v22, v29);
          goto LABEL_52;
        }

        v24 = *a2;
      }

      v28 = *(v24 + 1);
      goto LABEL_50;
    }
  }

  v19 = a3 + 1;
}

void *anonymous namespace::Remangler::mangleBoundGenericFunction@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  if (result)
  {
    goto LABEL_2;
  }

  result = swift::Demangle::__runtime::getUnspecialized(a2, *this, &v24);
  if (v24)
  {
    *a4 = v24;
    *(a4 + 16) = v25;
    return result;
  }

  if (!*a4)
  {
    v23 = 121;
    if (!*a4)
    {
      v9 = *(this + 3184);
      v10 = *(this + 3185);
      v11 = this[1591];
      if (v9 < v10)
      {
        goto LABEL_24;
      }

      v12 = this[1593];
      v13 = v12[1];
      if (&v11[v10] == v13)
      {
        v14 = v12[2];
        if ((v13 + 1) <= v14)
        {
          v12[1] = v13 + 1;
          LODWORD(v15) = 1;
LABEL_23:
          *(this + 3185) = v10 + v15;
LABEL_24:
          *(this + 3184) = v9 + 1;
          v11[v9] = 71;
          v20 = this[1585];
          if (v20 > 0xF)
          {
            v22 = *(this + 3178) + 16;
            v29 = v27;
            v30 = v28;
            v31 = v22;
            result = std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v29);
          }

          else
          {
            this[1585] = (v20 + 1);
            v21 = &this[3 * v20 + 1537];
            *v21 = v27;
            *(v21 + 16) = v28;
          }

LABEL_2:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          return result;
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
      if (!v13 || &v13[v16] > v14)
      {
        v17 = 2 * v12[4];
        if (v17 <= v16 + 1)
        {
          v17 = v16 + 1;
        }

        v12[4] = v17;
        v18 = v17 + 8;
        result = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
        v19 = result + v18;
        *result = v12[3];
        v13 = (result + 1);
        v12[2] = v19;
        v12[3] = result;
      }

      v12[1] = &v13[v16];
      if (v10)
      {
        result = memcpy(v13, this[1591], v10);
      }

      this[1591] = v13;
      LODWORD(v10) = *(this + 3185);
      v11 = v13;
      v9 = *(this + 3184);
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleBuiltinTypeName@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
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
        *(v4 + 12740) = v7 + v12;
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
      this = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      v17 = this + v16;
      *this = v9[3];
      v8 = (this + 8);
      v9[2] = v17;
      v9[3] = this;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      this = memcpy(v8, *(v4 + 12728), v7);
    }

    *(v4 + 12728) = v8;
    LODWORD(v7) = *(v4 + 12740);
    v6 = *(v4 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v4 + 12736) = v6 + 1;
  v8[v6] = 66;
  v18 = *a2;
  v19 = *(a2 + 1);
  if (v19 <= 19)
  {
    if (v19 <= 15)
    {
      if (v19 == 11)
      {
        if (*v18 == 0x2E6E69746C697542 && *(v18 + 3) == 0x626F4A2E6E69746CLL)
        {
          v33 = (v4 + 12728);
          v34 = 106;
          goto LABEL_188;
        }
      }

      else
      {
        if (v19 != 12)
        {
          goto LABEL_165;
        }

        this = memcmp(*a2, "Builtin.Word", 0xCuLL);
        if (!this)
        {
          v33 = (v4 + 12728);
          v34 = 119;
          goto LABEL_188;
        }
      }

      if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x746E492E6E69746CLL)
      {
LABEL_175:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x6365562E6E69746CLL)
        {
          goto LABEL_179;
        }

        v79 = (v18 + 11);
        v80 = v19 - 11;
        if (v19 == 11)
        {
          v81 = -1;
        }

        else
        {
          this = memchr(v79, 120, v19 - 11);
          v81 = -1;
          if (this)
          {
            v81 = this - v79;
          }
        }

        if (v80 >= v81)
        {
          v82 = v81;
        }

        else
        {
          v82 = v19 - 11;
        }

        if (v80 <= v81)
        {
          v83 = v79 + v82;
        }

        else
        {
          v83 = v79 + v82 + 1;
        }

        v84 = (__PAIR128__(v80, v81) - __PAIR128__(v82, v80)) >> 64;
        if (v84 == 10)
        {
          if (*v83 == 0x746E696F50776152 && *(v83 + 8) == 29285)
          {
            v86 = (v4 + 12728);
            v87 = 112;
LABEL_228:
            swift::Demangle::__runtime::RemanglerBuffer::operator<<(v86, v87);
            swift::Demangle::__runtime::CharVector::append((v4 + 12728), "Bv", 2uLL, *(v4 + 12744));
            swift::Demangle::__runtime::CharVector::append((v4 + 12728), v79, v82, *(v4 + 12744));
            v33 = (v4 + 12728);
            goto LABEL_187;
          }
        }

        else if (v84 < 6)
        {
          if (v84 < 3)
          {
LABEL_215:
            v72 = 956;
            v73 = 8;
            goto LABEL_189;
          }

          goto LABEL_211;
        }

        if (*v83 == 1162432582 && *(v83 + 4) == 17733)
        {
          v102 = v84 - 6;
          v103 = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v4 + 12728), 102);
          v104 = v103;
          v105 = v103[2];
          v106 = (v83 + 6);
LABEL_227:
          swift::Demangle::__runtime::CharVector::append(v103, v106, v102, v105);
          v86 = v104;
          v87 = 95;
          goto LABEL_228;
        }

LABEL_211:
        if (*v83 != 28233 || *(v83 + 2) != 116)
        {
          goto LABEL_215;
        }

        v102 = v84 - 3;
        v103 = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v4 + 12728), 105);
        v104 = v103;
        v105 = v103[2];
        v106 = (v83 + 3);
        goto LABEL_227;
      }

      goto LABEL_180;
    }

    if (v19 == 16)
    {
      if (*v18 == 0x2E6E69746C697542 && *(v18 + 8) == 0x726F747563657845)
      {
        v33 = (v4 + 12728);
        v34 = 101;
        goto LABEL_188;
      }

      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x6E656B6F544C4953)
      {
        goto LABEL_166;
      }

      v33 = (v4 + 12728);
      v34 = 116;
      goto LABEL_188;
    }

    if (v19 == 17)
    {
      this = memcmp(*a2, "Builtin.PackIndex", 0x11uLL);
      if (!this)
      {
        v33 = (v4 + 12728);
        v34 = 80;
        goto LABEL_188;
      }

      if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x746E492E6E69746CLL)
      {
LABEL_171:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 6) != 0x4545454950462E6ELL)
        {
          goto LABEL_175;
        }

        v74 = v19 - 14;
        v75 = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v4 + 12728), 102);
        v76 = v75;
        v77 = v75[2];
        v78 = (v18 + 14);
LABEL_186:
        swift::Demangle::__runtime::CharVector::append(v75, v78, v74, v77);
        v33 = v76;
LABEL_187:
        v34 = 95;
        goto LABEL_188;
      }

LABEL_180:
      v74 = v19 - 11;
      v75 = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v4 + 12728), 105);
      v76 = v75;
      v77 = v75[2];
      v78 = (v18 + 11);
      goto LABEL_186;
    }

    if (v19 != 18)
    {
      goto LABEL_165;
    }

    if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x746E696F50776152 || *(v18 + 16) != 29285)
    {
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x726574694C746E49 || *(v18 + 16) != 27745)
      {
        goto LABEL_166;
      }

      v33 = (v4 + 12728);
      v34 = 73;
      goto LABEL_188;
    }

    v90 = *(v4 + 12736);
    v91 = *(v4 + 12740);
    v92 = *(v4 + 12728);
    if (v90 < v91)
    {
LABEL_256:
      v73 = 0;
      a2 = 0;
      v72 = 0;
      *(v4 + 12736) = v90 + 1;
      v92[v90] = 112;
      goto LABEL_189;
    }

    v93 = *(v4 + 12744);
    v94 = v93[1];
    if (&v92[v91] == v94)
    {
      v95 = v93[2];
      if ((v94 + 1) <= v95)
      {
        v93[1] = v94 + 1;
        LODWORD(v112) = 1;
LABEL_255:
        *(v4 + 12740) = v91 + v112;
        goto LABEL_256;
      }
    }

    else
    {
      v95 = v93[2];
    }

    if ((2 * v91) <= 4)
    {
      v112 = 4;
    }

    else
    {
      v112 = (2 * v91);
    }

    v113 = v112 + v91;
    if (!v94 || &v94[v113] > v95)
    {
      v114 = 2 * v93[4];
      if (v114 <= v113 + 1)
      {
        v114 = v113 + 1;
      }

      v93[4] = v114;
      v115 = v114 + 8;
      this = malloc_type_malloc(v114 + 8, 0x2004093837F09uLL);
      v116 = this + v115;
      *this = v93[3];
      v94 = (this + 8);
      v93[2] = v116;
      v93[3] = this;
    }

    v93[1] = &v94[v113];
    if (v91)
    {
      this = memcpy(v94, *(v4 + 12728), v91);
    }

    *(v4 + 12728) = v94;
    LODWORD(v91) = *(v4 + 12740);
    v92 = v94;
    v90 = *(v4 + 12736);
    goto LABEL_255;
  }

  if (v19 > 26)
  {
    switch(v19)
    {
      case 27:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x41746C7561666544 || *(v18 + 16) != 0x726F7453726F7463 || *(v18 + 19) != 0x656761726F745372)
        {
          goto LABEL_166;
        }

        v33 = (v4 + 12728);
        v34 = 68;
        break;
      case 29:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x6661736E55776152 || *(v18 + 16) != 0x756E69746E6F4365 || *(v18 + 21) != 0x6E6F697461756E69)
        {
          goto LABEL_166;
        }

        v33 = (v4 + 12728);
        v34 = 99;
        break;
      case 41:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x75616665446E6F4ELL || *(v18 + 16) != 0x697274736944746CLL || *(v18 + 24) != 0x7463416465747562 || *(v18 + 32) != 0x6761726F7453726FLL || *(v18 + 40) != 101)
        {
LABEL_166:
          if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x746E492E6E69746CLL)
          {
            if (v19 < 0xE)
            {
              goto LABEL_175;
            }

            goto LABEL_171;
          }

          goto LABEL_180;
        }

        v33 = (v4 + 12728);
        v34 = 100;
        break;
      default:
        goto LABEL_165;
    }

LABEL_188:
    this = swift::Demangle::__runtime::RemanglerBuffer::operator<<(v33, v34);
    v73 = 0;
    a2 = 0;
    v72 = 0;
    goto LABEL_189;
  }

  switch(v19)
  {
    case 20:
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x624F656764697242 || *(v18 + 16) != 1952671082)
      {
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x624F65766974614ELL || *(v18 + 16) != 1952671082)
        {
          goto LABEL_166;
        }

        v60 = *(v4 + 12736);
        v61 = *(v4 + 12740);
        v62 = *(v4 + 12728);
        if (v60 < v61)
        {
LABEL_298:
          v73 = 0;
          a2 = 0;
          v72 = 0;
          *(v4 + 12736) = v60 + 1;
          v62[v60] = 111;
          goto LABEL_189;
        }

        v63 = *(v4 + 12744);
        v64 = v63[1];
        if (&v62[v61] == v64)
        {
          v65 = v63[2];
          if ((v64 + 1) <= v65)
          {
            v63[1] = v64 + 1;
            LODWORD(v127) = 1;
LABEL_297:
            *(v4 + 12740) = v61 + v127;
            goto LABEL_298;
          }
        }

        else
        {
          v65 = v63[2];
        }

        if ((2 * v61) <= 4)
        {
          v127 = 4;
        }

        else
        {
          v127 = (2 * v61);
        }

        v128 = v127 + v61;
        if (!v64 || &v64[v128] > v65)
        {
          v129 = 2 * v63[4];
          if (v129 <= v128 + 1)
          {
            v129 = v128 + 1;
          }

          v63[4] = v129;
          v130 = v129 + 8;
          this = malloc_type_malloc(v129 + 8, 0x2004093837F09uLL);
          v131 = this + v130;
          *this = v63[3];
          v64 = (this + 8);
          v63[2] = v131;
          v63[3] = this;
        }

        v63[1] = &v64[v128];
        if (v61)
        {
          this = memcpy(v64, *(v4 + 12728), v61);
        }

        *(v4 + 12728) = v64;
        LODWORD(v61) = *(v4 + 12740);
        v62 = v64;
        v60 = *(v4 + 12736);
        goto LABEL_297;
      }

      v96 = *(v4 + 12736);
      v97 = *(v4 + 12740);
      v98 = *(v4 + 12728);
      if (v96 < v97)
      {
LABEL_284:
        v73 = 0;
        a2 = 0;
        v72 = 0;
        *(v4 + 12736) = v96 + 1;
        v98[v96] = 98;
        goto LABEL_189;
      }

      v99 = *(v4 + 12744);
      v100 = v99[1];
      if (&v98[v97] == v100)
      {
        v101 = v99[2];
        if ((v100 + 1) <= v101)
        {
          v99[1] = v100 + 1;
          LODWORD(v122) = 1;
LABEL_283:
          *(v4 + 12740) = v97 + v122;
          goto LABEL_284;
        }
      }

      else
      {
        v101 = v99[2];
      }

      if ((2 * v97) <= 4)
      {
        v122 = 4;
      }

      else
      {
        v122 = (2 * v97);
      }

      v123 = v122 + v97;
      if (!v100 || &v100[v123] > v101)
      {
        v124 = 2 * v99[4];
        if (v124 <= v123 + 1)
        {
          v124 = v123 + 1;
        }

        v99[4] = v124;
        v125 = v124 + 8;
        this = malloc_type_malloc(v124 + 8, 0x2004093837F09uLL);
        v126 = this + v125;
        *this = v99[3];
        v100 = (this + 8);
        v99[2] = v126;
        v99[3] = this;
      }

      v99[1] = &v100[v123];
      if (v97)
      {
        this = memcpy(v100, *(v4 + 12728), v97);
      }

      *(v4 + 12728) = v100;
      LODWORD(v97) = *(v4 + 12740);
      v98 = v100;
      v96 = *(v4 + 12736);
      goto LABEL_283;
    case 21:
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x4F6E776F6E6B6E55 || *(v18 + 13) != 0x7463656A624F6E77)
      {
        goto LABEL_166;
      }

      v45 = *(v4 + 12736);
      v46 = *(v4 + 12740);
      v47 = *(v4 + 12728);
      if (v45 < v46)
      {
LABEL_242:
        v73 = 0;
        a2 = 0;
        v72 = 0;
        *(v4 + 12736) = v45 + 1;
        v47[v45] = 79;
        goto LABEL_189;
      }

      v48 = *(v4 + 12744);
      v49 = v48[1];
      if (&v47[v46] == v49)
      {
        v50 = v48[2];
        if ((v49 + 1) <= v50)
        {
          v48[1] = v49 + 1;
          LODWORD(v107) = 1;
LABEL_241:
          *(v4 + 12740) = v46 + v107;
          goto LABEL_242;
        }
      }

      else
      {
        v50 = v48[2];
      }

      if ((2 * v46) <= 4)
      {
        v107 = 4;
      }

      else
      {
        v107 = (2 * v46);
      }

      v108 = v107 + v46;
      if (!v49 || &v49[v108] > v50)
      {
        v109 = 2 * v48[4];
        if (v109 <= v108 + 1)
        {
          v109 = v108 + 1;
        }

        v48[4] = v109;
        v110 = v109 + 8;
        this = malloc_type_malloc(v109 + 8, 0x2004093837F09uLL);
        v111 = this + v110;
        *this = v48[3];
        v49 = (this + 8);
        v48[2] = v111;
        v48[3] = this;
      }

      v48[1] = &v49[v108];
      if (v46)
      {
        this = memcpy(v49, *(v4 + 12728), v46);
      }

      *(v4 + 12728) = v49;
      LODWORD(v46) = *(v4 + 12740);
      v47 = v49;
      v45 = *(v4 + 12736);
      goto LABEL_241;
    case 25:
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x6156656661736E55 || *(v18 + 16) != 0x656666754265756CLL || *(v18 + 24) != 114)
      {
        goto LABEL_166;
      }

      v23 = *(v4 + 12736);
      v24 = *(v4 + 12740);
      v25 = *(v4 + 12728);
      if (v23 < v24)
      {
LABEL_270:
        v73 = 0;
        a2 = 0;
        v72 = 0;
        *(v4 + 12736) = v23 + 1;
        v25[v23] = 66;
        goto LABEL_189;
      }

      v26 = *(v4 + 12744);
      v27 = v26[1];
      if (&v25[v24] == v27)
      {
        v28 = v26[2];
        if ((v27 + 1) <= v28)
        {
          v26[1] = v27 + 1;
          LODWORD(v117) = 1;
LABEL_269:
          *(v4 + 12740) = v24 + v117;
          goto LABEL_270;
        }
      }

      else
      {
        v28 = v26[2];
      }

      if ((2 * v24) <= 4)
      {
        v117 = 4;
      }

      else
      {
        v117 = (2 * v24);
      }

      v118 = v117 + v24;
      if (!v27 || &v27[v118] > v28)
      {
        v119 = 2 * v26[4];
        if (v119 <= v118 + 1)
        {
          v119 = v118 + 1;
        }

        v26[4] = v119;
        v120 = v119 + 8;
        this = malloc_type_malloc(v119 + 8, 0x2004093837F09uLL);
        v121 = this + v120;
        *this = v26[3];
        v27 = (this + 8);
        v26[2] = v121;
        v26[3] = this;
      }

      v26[1] = &v27[v118];
      if (v24)
      {
        this = memcpy(v27, *(v4 + 12728), v24);
      }

      *(v4 + 12728) = v27;
      LODWORD(v24) = *(v4 + 12740);
      v25 = v27;
      v23 = *(v4 + 12736);
      goto LABEL_269;
  }

LABEL_165:
  if (v19 >= 0xB)
  {
    goto LABEL_166;
  }

LABEL_179:
  v72 = 960;
  v73 = 9;
LABEL_189:
  *a3 = v73;
  *(a3 + 8) = a2;
  *(a3 + 16) = v72;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleBuiltinFixedArray@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "BV", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleCFunctionPointer@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*(*v9 + 16) == 24)
    {
      switch(v8)
      {
        case 1:
          goto LABEL_10;
        case 2:
          v11 = 1;
          goto LABEL_41;
        case 5:
          v10 = *(a2 + 2);
          v11 = v10 - 1;
          if (v10 != 1)
          {
            goto LABEL_41;
          }

LABEL_10:
          swift::Demangle::__runtime::CharVector::append(this + 1591, "XzC", 3uLL, *(this + 1593));
          v12 = *(v5 + 18);
          if ((v12 - 1) >= 2)
          {
            if (v12 != 5 || !*(v5 + 2))
            {
              v13 = 0;
              goto LABEL_35;
            }

            v5 = *v5;
          }

          v13 = *v5;
LABEL_35:
          swift::Demangle::__runtime::CharVector::append(this + 3182, *(v13 + 1), *(this + 1593));
          result = swift::Demangle::__runtime::CharVector::append(this + 1591, *v13, *(v13 + 1), *(this + 1593));
          *a4 = 0;
          *(a4 + 8) = 0;
          v19 = (a4 + 16);
          goto LABEL_36;
      }

      v11 = -1;
      while (1)
      {
LABEL_41:
        v20 = *(v5 + 18);
        v21 = v20 - 1;
        if (v20 != 1)
        {
          if (v20 == 5)
          {
            v20 = *(v5 + 2);
          }

          else
          {
            if (v20 != 2)
            {
              goto LABEL_39;
            }

            v20 = 2;
          }
        }

        if (v20 <= v11)
        {
LABEL_39:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_40;
        }

        v22 = v5;
        if (v21 >= 2)
        {
          v22 = *v5;
        }

        if (*a4)
        {
          return result;
        }

LABEL_40:
        if (!--v11)
        {
          goto LABEL_10;
        }
      }
    }

    goto LABEL_15;
  }

  if (v8 == 5)
  {
    if (!*(a2 + 2))
    {
      goto LABEL_33;
    }

    v9 = *a2;
    goto LABEL_5;
  }

LABEL_15:
  switch(v8)
  {
    case 1:
LABEL_20:
      v14 = v8 - 1;
      while (1)
      {
        v15 = *(v5 + 18);
        v16 = v15 - 1;
        if (v15 != 1)
        {
          if (v15 == 5)
          {
            v15 = *(v5 + 2);
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_21;
            }

            v15 = 2;
          }
        }

        if (v15 <= v14)
        {
LABEL_21:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_22;
        }

        v17 = v5;
        if (v16 >= 2)
        {
          v17 = *v5;
        }

        if (*a4)
        {
          return result;
        }

LABEL_22:
        if (--v14 == -1)
        {
          goto LABEL_33;
        }
      }

    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_20;
      }

      break;
    case 2:
      v8 = 2;
      goto LABEL_20;
  }

LABEL_33:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v19 = (a4 + 16);
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XC", 2uLL, *(this + 1593));
  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_36:
  *v19 = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleClangType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  swift::Demangle::__runtime::CharVector::append(this + 3182, *(a2 + 1), *(this + 1593));
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, *a2, *(a2 + 1), *(this + 1593));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleClassMetadataBaseOffset@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mo", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleConcreteProtocolConformance@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
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
  if (v11 != 1)
  {
    if (v11 != 5 || *(v10 + 2) != 1)
    {
      v15 = 322;
      v16 = 10;
LABEL_18:
      *a4 = v16;
      *(a4 + 8) = v10;
      *(a4 + 16) = v15;
      return this;
    }

    v10 = *v10;
  }

  if (*a4)
  {
    return this;
  }

  v12 = *(a2 + 18);
  v13 = a2;
  if (v12 == 2)
  {
    goto LABEL_16;
  }

  if (v12 == 5 && *(a2 + 2) >= 2u)
  {
    v13 = *a2;
LABEL_16:
    v14 = *(v13 + 1);
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  if (!*a4)
  {
    if (*(a2 + 18) != 5 || *(a2 + 2) < 3u)
    {
      swift::Demangle::__runtime::CharVector::append(v6 + 1591, "y", 1uLL, *(v6 + 1593));
LABEL_27:
      this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "HC", 2uLL, *(v6 + 1593));
      v16 = 0;
      v10 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    if (!*a4)
    {
      goto LABEL_27;
    }
  }

  return this;
}

uint64_t anonymous namespace::Remangler::manglePackProtocolConformance@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "HX", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleConformanceAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMc", 3uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleCoroutineContinuationPrototype@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TC", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDeallocator@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fD", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDefaultArgumentInitializer@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fA", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if (v11 != 2)
  {
    if (v11 != 5 || *(v5 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v12 = *(v5 + 1);
}

uint64_t anonymous namespace::Remangler::mangleDependentAssociatedConformance@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
LABEL_20:
        if (*(v15 + 8) == 243)
        {
          v16 = *(v15 + 18);
          if ((v16 - 1) >= 2)
          {
            if (v16 != 5 || !*(v15 + 2))
            {
              v15 = 0;
              goto LABEL_27;
            }

            v15 = *v15;
          }

          v15 = *v15;
        }

LABEL_27:
        if ((this & 1) == 0)
        {
          v17 = *(v15 + 18);
          v18 = v15;
          if ((v17 - 1) >= 2)
          {
            if (v17 == 5)
            {
              v19 = *v15;
              v18 = *v15;
LABEL_36:
              v20 = &v19[*(v15 + 2)];
              goto LABEL_42;
            }

            v18 = 0;
          }

          switch(v17)
          {
            case 1:
              v20 = (v15 + 1);
              goto LABEL_42;
            case 2:
              v20 = (v15 + 2);
              goto LABEL_42;
            case 5:
              v19 = *v15;
              goto LABEL_36;
          }

          v20 = 0;
LABEL_42:
          while (v18 != v20)
          {
            if (*a4)
            {
              return this;
            }

            ++v18;
          }
        }

        v13 = 0;
        v9 = 0;
        v12 = 0;
        goto LABEL_44;
      }

      v11 = *v11;
    }

    v15 = *(v11 + 1);
    goto LABEL_20;
  }

  if (v10 == 5 && *(v9 + 2) == 1)
  {
    v11 = a2;
    v9 = *v9;
    goto LABEL_13;
  }

  v12 = 322;
  v13 = 10;
LABEL_44:
  *a4 = v13;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  return this;
}

void anonymous namespace::Remangler::mangleDependentAssociatedTypeRef(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v15 = 0uLL;
  LOBYTE(v16) = 0;
  {
    v11 = *(this + 1585);
    if (v11 > 0xF)
    {
      v13 = *(this + 3178) + 16;
      v17 = v15;
      v18 = v16;
      v19 = v13;
      std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v17);
    }

    else
    {
      *(this + 1585) = v11 + 1;
      v12 = this + 24 * v11 + 12296;
      *v12 = v15;
      v12[16] = v16;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v14 = *(v5 + 18);
  if (v14 == 2)
  {
    goto LABEL_15;
  }

  if (v14 == 5 && *(v5 + 2) >= 2u)
  {
    v5 = *v5;
LABEL_15:
    return;
  }

  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericConformanceRequirement@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) != 2)
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1075;
      return this;
    }

    v9 = *a2;
  }

  v10 = *(v9 + 1);
  v11 = *(v10 + 18);
  v12 = v10;
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5 || !*(v10 + 2))
    {
      *a4 = 1;
      *(a4 + 8) = v10;
      *(a4 + 16) = 1077;
      return this;
    }

    v12 = *v10;
  }

  if (*(*v12 + 16) != 190)
  {
    if (*a4)
    {
      return this;
    }

    v13 = *(a2 + 18);
    v14 = a2;
    if ((v13 - 1) >= 2)
    {
      if (v13 != 5 || !*(a2 + 2))
      {
        v15 = 0;
LABEL_30:
        if (v28)
        {
LABEL_53:
          *a4 = v28;
          *(a4 + 16) = v29;
          return this;
        }

        v19 = v31;
        if ((v30 & 0x80000000) == 0 && !v31)
        {
          *a4 = 1;
          *(a4 + 8) = a2;
          *(a4 + 16) = 1109;
          return this;
        }

        v24 = v6[1593];
        if (v30 == 1)
        {
          v26 = "Rc";
        }

        else if (v30)
        {
          if (v30 == -1)
          {
            v25 = "RB";
            goto LABEL_65;
          }

          v26 = "RC";
        }

        else
        {
          v26 = "Rb";
        }

        goto LABEL_72;
      }

      v14 = *a2;
    }

    v15 = *v14;
    goto LABEL_30;
  }

  if (*(v10 + 8) != 243)
  {
    goto LABEL_25;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_15;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
LABEL_15:
    v10 = *v10;
    goto LABEL_25;
  }

  v10 = 0;
LABEL_25:
  {
    v16 = *(v10 + 18);
    v17 = v10;
    if ((v16 - 1) >= 2)
    {
      if (v16 == 5)
      {
        v18 = *v10;
        v17 = *v10;
LABEL_39:
        v20 = &v18[*(v10 + 2)];
        goto LABEL_45;
      }

      v17 = 0;
    }

    switch(v16)
    {
      case 1:
        v20 = (v10 + 1);
        goto LABEL_45;
      case 2:
        v20 = (v10 + 2);
        goto LABEL_45;
      case 5:
        v18 = *v10;
        goto LABEL_39;
    }

    v20 = 0;
LABEL_45:
    while (v17 != v20)
    {
      if (*a4)
      {
        return this;
      }

      ++v17;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) < 2)
  {
    goto LABEL_50;
  }

  if (v21 == 5 && *(a2 + 2))
  {
    v22 = *a2;
LABEL_50:
    v23 = *v22;
    goto LABEL_52;
  }

  v23 = 0;
LABEL_52:
  if (v28)
  {
    goto LABEL_53;
  }

  v19 = v31;
  if ((v30 & 0x80000000) == 0 && !v31)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1085;
    return this;
  }

  v24 = v6[1593];
  if (v30 == 1)
  {
    v26 = "Rp";
LABEL_72:
    v27 = 2;
    goto LABEL_73;
  }

  if (!v30)
  {
    v26 = "R";
    v27 = 1;
LABEL_73:
    swift::Demangle::__runtime::CharVector::append(v6 + 1591, v26, v27, v24);
    goto LABEL_74;
  }

  if (v30 != -1)
  {
    v26 = "RP";
    goto LABEL_72;
  }

  v25 = "RQ";
LABEL_65:
  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, v25, 2uLL, v24);
LABEL_74:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

_DWORD *anonymous namespace::Remangler::mangleDependentGenericParamType@<X0>(_DWORD *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 18);
  v5 = a2;
  if ((v4 - 1) >= 2)
  {
    v5 = *a2;
  }

  if (!**v5)
  {
    v6 = a2;
    if (v4 == 5)
    {
      v6 = *a2;
    }

    if (!**(v6 + 1))
    {
      v25 = this[3184];
      v26 = this[3185];
      v27 = *(this + 1591);
      if (v25 < v26)
      {
LABEL_45:
        this[3184] = v25 + 1;
        v27[v25] = 120;
        goto LABEL_27;
      }

      v28 = *(this + 1593);
      v29 = v28[1];
      if (&v27[v26] == v29)
      {
        v30 = v28[2];
        if ((v29 + 1) <= v30)
        {
          v28[1] = v29 + 1;
          LODWORD(v31) = 1;
LABEL_44:
          this[3185] = v26 + v31;
          goto LABEL_45;
        }
      }

      else
      {
        v30 = v28[2];
      }

      if ((2 * v26) <= 4)
      {
        v31 = 4;
      }

      else
      {
        v31 = (2 * v26);
      }

      v32 = v31 + v26;
      if (!v29 || &v29[v32] > v30)
      {
        v33 = 2 * v28[4];
        if (v33 <= v32 + 1)
        {
          v33 = v32 + 1;
        }

        v28[4] = v33;
        v34 = v33 + 8;
        v35 = this;
        v36 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
        this = v35;
        v37 = v36 + v34;
        *v36 = v28[3];
        v29 = (v36 + 1);
        v28[2] = v37;
        v28[3] = v36;
      }

      v28[1] = &v29[v32];
      if (v26)
      {
        v38 = this;
        memcpy(v29, *(this + 1591), v26);
        this = v38;
      }

      *(this + 1591) = v29;
      LODWORD(v26) = this[3185];
      v27 = v29;
      v25 = this[3184];
      goto LABEL_44;
    }
  }

  v7 = this[3184];
  v8 = this[3185];
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
LABEL_25:
        this[3185] = v8 + v13;
        goto LABEL_26;
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
      v18 = this;
      v19 = a2;
      v20 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      a2 = v19;
      v21 = v20;
      this = v18;
      v22 = v21 + v17;
      *v21 = v10[3];
      v9 = (v21 + 1);
      v10[2] = v22;
      v10[3] = v21;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      v23 = this;
      v24 = a2;
      memcpy(v9, *(this + 1591), v8);
      a2 = v24;
      this = v23;
    }

    *(this + 1591) = v9;
    LODWORD(v8) = this[3185];
    v7 = this[3184];
    goto LABEL_25;
  }

LABEL_26:
  this[3184] = v7 + 1;
  v9[v7] = 113;
LABEL_27:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericSameTypeRequirement@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 != 2)
  {
    if (v7 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v8 = *a2;
  }

  v9 = a3;
  if (*a4)
  {
    return result;
  }

  v7 = *(a2 + 18);
  a3 = v9;
LABEL_8:
  v11 = a2;
  if ((v7 - 1) < 2)
  {
LABEL_12:
    v12 = *v11;
    goto LABEL_14;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v11 = *a2;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_14:
  if (v16)
  {
    *a4 = v16;
    *(a4 + 16) = v17;
    return result;
  }

  v13 = v19;
  if ((v18 & 0x80000000) == 0 && !v19)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1189;
    return result;
  }

  v14 = this[1593];
  if (v18 == 1)
  {
    v15 = "Rt";
    goto LABEL_26;
  }

  if (!v18)
  {
    v15 = "Rs";
LABEL_26:
    swift::Demangle::__runtime::CharVector::append(this + 1591, v15, 2uLL, v14);
    goto LABEL_27;
  }

  if (v18 != -1)
  {
    v15 = "RT";
    goto LABEL_26;
  }

  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "RS", 2uLL, v14);
LABEL_27:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericSameShapeRequirement@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 != 2)
  {
    if (v7 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v8 = *a2;
  }

  v9 = a3;
  if (*a4)
  {
    return result;
  }

  v7 = *(a2 + 18);
  a3 = v9;
LABEL_8:
  v11 = a2;
  if ((v7 - 1) < 2)
  {
LABEL_12:
    v12 = *v11;
    goto LABEL_14;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v11 = *a2;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_14:
  if (v14)
  {
    *a4 = v14;
    *(a4 + 16) = v15;
  }

  else
  {
    v13 = v17;
    if (v16 < 0 || v17)
    {
      if (v16)
      {
        *a4 = 1;
      }

      else
      {
        swift::Demangle::__runtime::CharVector::append(this + 1591, "Rh", 2uLL, this[1593]);
        *a4 = 0;
      }

      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
    }

    else
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1217;
    }
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericLayoutRequirement@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
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
  if (v33)
  {
    *a4 = v33;
    a4[2] = v34;
    return result;
  }

  v12 = v36;
  if ((v35 & 0x80000000) == 0 && !v36)
  {
    *a4 = 1;
    a4[1] = a2;
    *(a4 + 4) = 1237;
    return result;
  }

  v13 = this[1593];
  if (v35 == -1)
  {
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "RL", 2uLL, v13);
  }

  else
  {
    v14 = "RM";
    if (v35 == 1)
    {
      v14 = "Rm";
    }

    if (v35)
    {
      v15 = v14;
    }

    else
    {
      v15 = "Rl";
    }

    swift::Demangle::__runtime::CharVector::append(this + 1591, v15, 2uLL, v13);
  }

  if (*(a2 + 18) != 5)
  {
    v18 = a2[1];
    if (*(v18 + 8) == 103)
    {
      v19 = *(v18 + 1);
      v16 = a2;
      if (v19 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_29:
    *a4 = 1;
    a4[1] = a2;
    *(a4 + 4) = 1248;
    return result;
  }

  v16 = *a2;
  v17 = *(*a2 + 1);
  if (*(v17 + 16) != 103)
  {
    goto LABEL_29;
  }

  if (*(v17 + 8) != 1)
  {
LABEL_23:
    *a4 = 1;
    a4[1] = a2;
    *(a4 + 4) = 1249;
    return result;
  }

LABEL_26:
  v20 = ***(v16 + 1);
  v21 = *(this + 3184);
  v22 = *(this + 3185);
  v23 = this[1591];
  if (v21 >= v22)
  {
    v24 = this[1593];
    v25 = *(v24 + 1);
    if (&v23[v22] == v25)
    {
      v26 = *(v24 + 2);
      if ((v25 + 1) <= v26)
      {
        *(v24 + 1) = v25 + 1;
        LODWORD(v27) = 1;
LABEL_42:
        *(this + 3185) = v22 + v27;
        goto LABEL_43;
      }
    }

    else
    {
      v26 = *(v24 + 2);
    }

    v32 = v20;
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
      result = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
      v31 = result + v30;
      *result = *(v24 + 3);
      v25 = (result + 1);
      *(v24 + 2) = v31;
      *(v24 + 3) = result;
    }

    *(v24 + 1) = &v25[v28];
    if (v22)
    {
      result = memcpy(v25, this[1591], v22);
    }

    this[1591] = v25;
    LODWORD(v22) = *(this + 3185);
    v23 = v25;
    v21 = *(this + 3184);
    v20 = v32;
    goto LABEL_42;
  }

LABEL_43:
  *(this + 3184) = v21 + 1;
  v23[v21] = v20;
  {
    *a4 = 0;
    a4[1] = 0;
    *(a4 + 4) = 0;
  }

  return result;
}

_DWORD *anonymous namespace::Remangler::mangleDependentGenericParamPackMarker@<X0>(_DWORD *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if (v3 != 1)
  {
    if (v3 != 5 || *(a2 + 2) != 1)
    {
      v11 = 1292;
      v12 = 1;
      goto LABEL_23;
    }

    v4 = *a2;
  }

  if (*(*v4 + 16) == 243)
  {
    v5 = a3;
    v6 = this;
    v7 = a2;
    swift::Demangle::__runtime::CharVector::append(this + 1591, "Rv", 2uLL, *(this + 1593));
    v8 = v7;
    v9 = *(v7 + 18);
    if ((v9 - 1) < 2)
    {
      v10 = v6;
LABEL_13:
      v13 = *v8;
      goto LABEL_16;
    }

    if (v9 == 5)
    {
      v10 = v6;
      if (*(v7 + 2))
      {
        v8 = *v7;
        goto LABEL_13;
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
      v10 = v6;
    }

LABEL_16:
    v14 = *(v13 + 18);
    if ((v14 - 1) >= 2)
    {
      if (v14 != 5 || !*(v13 + 2))
      {
        v15 = 0;
        goto LABEL_22;
      }

      v13 = *v13;
    }

    v15 = *v13;
LABEL_22:
    v12 = 0;
    a2 = 0;
    v11 = 0;
    a3 = v5;
    goto LABEL_23;
  }

  v11 = 1293;
  v12 = 1;
LABEL_23:
  *a3 = v12;
  *(a3 + 8) = a2;
  *(a3 + 16) = v11;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericSignature@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    v8 = *(a2 + 2);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_31:
    v9 = 0;
    goto LABEL_33;
  }

  if (v8 != 2)
  {
    goto LABEL_31;
  }

  v8 = 2;
LABEL_6:
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    v11 = *(a2 + 18);
    if ((v11 - 1) >= 2)
    {
      v12 = 0;
      v13 = *a2;
    }

    else
    {
      v12 = 1;
      v13 = a2;
    }

    if (*(*(v13 + i) + 16) == 38)
    {
      v9 = i + 1;
      continue;
    }

    if (v11 == 1)
    {
      goto LABEL_17;
    }

    if (v11 != 5)
    {
      if (v11 != 2)
      {
        goto LABEL_23;
      }

      v11 = 2;
LABEL_17:
      if (v11 <= i)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (*(a2 + 2) <= i)
    {
LABEL_23:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      continue;
    }

LABEL_18:
    v14 = a2;
    if ((v12 & 1) == 0)
    {
      v14 = *a2;
    }

    if (*a4)
    {
      return this;
    }
  }

  if (v9 != 1)
  {
    goto LABEL_33;
  }

  v15 = a2;
  if (*(a2 + 18) - 1 >= 2)
  {
    v15 = *a2;
  }

  if (**v15 != 1)
  {
    v9 = 1;
LABEL_33:
    v16 = (v6 + 12736);
    v23 = *(v6 + 12736);
    v24 = *(v6 + 12740);
    v25 = *(v6 + 12728);
    if (v23 < v24)
    {
      goto LABEL_49;
    }

    v26 = *(v6 + 12744);
    v27 = v26[1];
    if (&v25[v24] == v27)
    {
      v28 = v26[2];
      if ((v27 + 1) <= v28)
      {
        v26[1] = v27 + 1;
        LODWORD(v29) = 1;
LABEL_48:
        *(v6 + 12740) = v24 + v29;
LABEL_49:
        *v16 = v23 + 1;
        v25[v23] = 114;
        if (v9)
        {
          v34 = 0;
          v74 = a4;
          do
          {
            v36 = a2;
            if (*(a2 + 18) - 1 >= 2)
            {
              v36 = *a2;
            }

            v37 = **(v36 + v34);
            if (v37)
            {
              if (v37 != 1)
              {
                this = swift::Demangle::__runtime::CharVector::append((v6 + 12728), v37 - 2, *(v6 + 12744));
              }

              v38 = *(v6 + 12736);
              v39 = *(v6 + 12740);
              v40 = *(v6 + 12728);
              if (v38 >= v39)
              {
                v41 = *(v6 + 12744);
                v42 = v41[1];
                if (&v40[v39] != v42)
                {
                  v43 = v41[2];
                  goto LABEL_66;
                }

                v43 = v41[2];
                if ((v42 + 1) <= v43)
                {
                  v41[1] = v42 + 1;
                  LODWORD(v48) = 1;
                  v42 = v40;
                }

                else
                {
LABEL_66:
                  if ((2 * v39) <= 4)
                  {
                    v48 = 4;
                  }

                  else
                  {
                    v48 = (2 * v39);
                  }

                  v49 = v48 + v39;
                  if (!v42 || &v42[v49] > v43)
                  {
                    v50 = 2 * v41[4];
                    if (v50 <= v49 + 1)
                    {
                      v50 = v49 + 1;
                    }

                    v41[4] = v50;
                    v51 = v50 + 8;
                    this = malloc_type_malloc(v50 + 8, 0x2004093837F09uLL);
                    *this = v41[3];
                    v42 = (this + 1);
                    v41[2] = this + v51;
                    v41[3] = this;
                  }

                  v41[1] = &v42[v49];
                  if (v39)
                  {
                    this = memcpy(v42, *(v6 + 12728), v39);
                  }

                  *(v6 + 12728) = v42;
                  LODWORD(v39) = *(v6 + 12740);
                  v38 = *(v6 + 12736);
                  v16 = (v6 + 12736);
                }

                v52 = v39 + v48;
                v35 = 95;
                v40 = v42;
                a4 = v74;
LABEL_94:
                *(v6 + 12740) = v52;
                goto LABEL_52;
              }

              v35 = 95;
            }

            else
            {
              v38 = *(v6 + 12736);
              v44 = *(v6 + 12740);
              v40 = *(v6 + 12728);
              if (v38 >= v44)
              {
                v45 = *(v6 + 12744);
                v46 = v45[1];
                if (&v40[v44] != v46)
                {
                  v47 = v45[2];
                  goto LABEL_79;
                }

                v47 = v45[2];
                if ((v46 + 1) <= v47)
                {
                  v45[1] = v46 + 1;
                  LODWORD(v53) = 1;
                }

                else
                {
LABEL_79:
                  if ((2 * v44) <= 4)
                  {
                    v53 = 4;
                  }

                  else
                  {
                    v53 = (2 * v44);
                  }

                  v54 = v53 + v44;
                  if (v46)
                  {
                    v55 = &v46[v53 + v44] > v47;
                  }

                  else
                  {
                    v55 = 1;
                  }

                  v40 = v45[1];
                  if (v55)
                  {
                    v56 = 2 * v45[4];
                    if (v56 <= v54 + 1)
                    {
                      v56 = v54 + 1;
                    }

                    v45[4] = v56;
                    v57 = v56 + 8;
                    this = malloc_type_malloc(v56 + 8, 0x2004093837F09uLL);
                    v58 = this + v57;
                    *this = v45[3];
                    v40 = (this + 1);
                    v45[2] = v58;
                    v45[3] = this;
                  }

                  v45[1] = &v40[v54];
                  if (v44)
                  {
                    this = memcpy(v40, *(v6 + 12728), v44);
                  }

                  *(v6 + 12728) = v40;
                  LODWORD(v44) = *(v6 + 12740);
                  v38 = *(v6 + 12736);
                  v16 = (v6 + 12736);
                }

                v52 = v44 + v53;
                v35 = 122;
                goto LABEL_94;
              }

              v35 = 122;
            }

LABEL_52:
            *v16 = v38 + 1;
            v40[v38] = v35;
            ++v34;
          }

          while (v9 != v34);
        }

        v17 = *(v6 + 12736);
        v59 = *(v6 + 12740);
        v19 = *(v6 + 12728);
        if (v17 < v59)
        {
          goto LABEL_114;
        }

        v60 = *(v6 + 12744);
        v61 = v60[1];
        if (&v19[v59] == v61)
        {
          v62 = v60[2];
          if ((v61 + 1) <= v62)
          {
            v60[1] = v61 + 1;
            LODWORD(v63) = 1;
LABEL_112:
            v68 = v59 + v63;
            goto LABEL_113;
          }
        }

        else
        {
          v62 = v60[2];
        }

        if ((2 * v59) <= 4)
        {
          v63 = 4;
        }

        else
        {
          v63 = (2 * v59);
        }

        v64 = v63 + v59;
        if (!v61 || &v61[v64] > v62)
        {
          v65 = 2 * v60[4];
          if (v65 <= v64 + 1)
          {
            v65 = v64 + 1;
          }

          v60[4] = v65;
          v66 = v65 + 8;
          this = malloc_type_malloc(v65 + 8, 0x2004093837F09uLL);
          v67 = this + v66;
          *this = v60[3];
          v61 = (this + 1);
          v60[2] = v67;
          v60[3] = this;
        }

        v60[1] = &v61[v64];
        if (v59)
        {
          this = memcpy(v61, *(v6 + 12728), v59);
        }

        *(v6 + 12728) = v61;
        LODWORD(v59) = *(v6 + 12740);
        v19 = v61;
        v17 = *(v6 + 12736);
        v16 = (v6 + 12736);
        goto LABEL_112;
      }
    }

    else
    {
      v28 = v26[2];
    }

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
      this = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v33 = this + v32;
      *this = v26[3];
      v27 = (this + 1);
      v26[2] = v33;
      v26[3] = this;
    }

    v26[1] = &v27[v30];
    if (v24)
    {
      this = memcpy(v27, *(v6 + 12728), v24);
    }

    *(v6 + 12728) = v27;
    LODWORD(v24) = *(v6 + 12740);
    v25 = v27;
    v23 = *(v6 + 12736);
    goto LABEL_48;
  }

  v16 = (v6 + 12736);
  v17 = *(v6 + 12736);
  v18 = *(v6 + 12740);
  v19 = *(v6 + 12728);
  if (v17 >= v18)
  {
    v20 = *(v6 + 12744);
    v21 = v20[1];
    if (&v19[v18] != v21)
    {
      v22 = v20[2];
      goto LABEL_118;
    }

    v22 = v20[2];
    if ((v21 + 1) <= v22)
    {
      v20[1] = v21 + 1;
      LODWORD(v69) = 1;
    }

    else
    {
LABEL_118:
      if ((2 * v18) <= 4)
      {
        v69 = 4;
      }

      else
      {
        v69 = (2 * v18);
      }

      v70 = v69 + v18;
      if (!v21 || &v21[v70] > v22)
      {
        v71 = 2 * v20[4];
        if (v71 <= v70 + 1)
        {
          v71 = v70 + 1;
        }

        v20[4] = v71;
        v72 = v71 + 8;
        this = malloc_type_malloc(v71 + 8, 0x2004093837F09uLL);
        v73 = this + v72;
        *this = v20[3];
        v21 = (this + 1);
        v20[2] = v73;
        v20[3] = this;
      }

      v20[1] = &v21[v70];
      if (v18)
      {
        this = memcpy(v21, *(v6 + 12728), v18);
      }

      *(v6 + 12728) = v21;
      LODWORD(v18) = *(v6 + 12740);
      v19 = v21;
      v17 = *(v6 + 12736);
    }

    v68 = v18 + v69;
LABEL_113:
    *(v6 + 12740) = v68;
  }

LABEL_114:
  *v16 = v17 + 1;
  v19[v17] = 108;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericType@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v13 = *(v6 + 12736);
  v14 = *(v6 + 12740);
  v15 = *(v6 + 12728);
  if (v13 >= v14)
  {
    v16 = *(v6 + 12744);
    v17 = v16[1];
    if (&v15[v14] == v17)
    {
      v18 = v16[2];
      if ((v17 + 1) <= v18)
      {
        v16[1] = v17 + 1;
        LODWORD(v19) = 1;
LABEL_34:
        *(v6 + 12740) = v14 + v19;
        goto LABEL_35;
      }
    }

    else
    {
      v18 = v16[2];
    }

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
      this = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
      v23 = this + v22;
      *this = v16[3];
      v17 = (this + 1);
      v16[2] = v23;
      v16[3] = this;
    }

    v16[1] = &v17[v20];
    if (v14)
    {
      this = memcpy(v17, *(v6 + 12728), v14);
    }

    *(v6 + 12728) = v17;
    LODWORD(v14) = *(v6 + 12740);
    v15 = v17;
    v13 = *(v6 + 12736);
    goto LABEL_34;
  }

LABEL_35:
  *(v6 + 12736) = v13 + 1;
  v15[v13] = 117;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleDependentMemberType@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (v52)
  {
    *a4 = v52;
    *(a4 + 16) = v53;
    return result;
  }

  if (v54 == -1)
  {
    goto LABEL_80;
  }

  v8 = v55;
  if (v54 != 1)
  {
    if (!v54)
    {
      *a4 = 12;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1316;
      return result;
    }

    v15 = *(this + 3184);
    v16 = *(this + 3185);
    v17 = this[1591];
    if (v15 < v16)
    {
LABEL_44:
      *(this + 3184) = v15 + 1;
      v17[v15] = 81;
      if (v8)
      {
        goto LABEL_80;
      }

      v26 = *(this + 3184);
      v37 = *(this + 3185);
      v28 = this[1591];
      if (v26 < v37)
      {
        goto LABEL_78;
      }

      v38 = this[1593];
      v39 = v38[1];
      if (&v28[v37] == v39)
      {
        v40 = v38[2];
        if ((v39 + 1) <= v40)
        {
          v38[1] = v39 + 1;
          LODWORD(v47) = 1;
LABEL_77:
          *(this + 3185) = v37 + v47;
LABEL_78:
          *(this + 3184) = v26 + 1;
          v46 = 88;
          goto LABEL_79;
        }
      }

      else
      {
        v40 = v38[2];
      }

      if ((2 * v37) <= 4)
      {
        v47 = 4;
      }

      else
      {
        v47 = (2 * v37);
      }

      v48 = v47 + v37;
      if (!v39 || &v39[v48] > v40)
      {
        v49 = 2 * v38[4];
        if (v49 <= v48 + 1)
        {
          v49 = v48 + 1;
        }

        v38[4] = v49;
        v50 = v49 + 8;
        result = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
        v51 = result + v50;
        *result = v38[3];
        v39 = (result + 1);
        v38[2] = v51;
        v38[3] = result;
      }

      v38[1] = &v39[v48];
      if (v37)
      {
        result = memcpy(v39, this[1591], v37);
      }

      this[1591] = v39;
      LODWORD(v37) = *(this + 3185);
      v28 = v39;
      v26 = *(this + 3184);
      goto LABEL_77;
    }

    v18 = this[1593];
    v19 = v18[1];
    if (&v17[v16] == v19)
    {
      v20 = v18[2];
      if ((v19 + 1) <= v20)
      {
        v18[1] = v19 + 1;
        LODWORD(v32) = 1;
LABEL_43:
        *(this + 3185) = v16 + v32;
        goto LABEL_44;
      }
    }

    else
    {
      v20 = v18[2];
    }

    if ((2 * v16) <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = (2 * v16);
    }

    v33 = v32 + v16;
    if (!v19 || &v19[v33] > v20)
    {
      v34 = 2 * v18[4];
      if (v34 <= v33 + 1)
      {
        v34 = v33 + 1;
      }

      v18[4] = v34;
      v35 = v34 + 8;
      result = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
      v36 = result + v35;
      *result = v18[3];
      v19 = (result + 1);
      v18[2] = v36;
      v18[3] = result;
    }

    v18[1] = &v19[v33];
    if (v16)
    {
      result = memcpy(v19, this[1591], v16);
    }

    this[1591] = v19;
    LODWORD(v16) = *(this + 3185);
    v17 = v19;
    v15 = *(this + 3184);
    goto LABEL_43;
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = this[1591];
  if (v9 >= v10)
  {
    v12 = this[1593];
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v21) = 1;
LABEL_25:
        *(this + 3185) = v10 + v21;
        goto LABEL_26;
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
      result = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
      v25 = result + v24;
      *result = v12[3];
      v13 = (result + 1);
      v12[2] = v25;
      v12[3] = result;
    }

    v12[1] = &v13[v22];
    if (v10)
    {
      result = memcpy(v13, this[1591], v10);
    }

    this[1591] = v13;
    LODWORD(v10) = *(this + 3185);
    v11 = v13;
    v9 = *(this + 3184);
    goto LABEL_25;
  }

LABEL_26:
  *(this + 3184) = v9 + 1;
  v11[v9] = 81;
  if (!v8)
  {
    v26 = *(this + 3184);
    v27 = *(this + 3185);
    v28 = this[1591];
    if (v26 < v27)
    {
LABEL_64:
      *(this + 3184) = v26 + 1;
      v46 = 120;
LABEL_79:
      v28[v26] = v46;
      goto LABEL_80;
    }

    v29 = this[1593];
    v30 = v29[1];
    if (&v28[v27] == v30)
    {
      v31 = v29[2];
      if ((v30 + 1) <= v31)
      {
        v29[1] = v30 + 1;
        LODWORD(v41) = 1;
LABEL_63:
        *(this + 3185) = v27 + v41;
        goto LABEL_64;
      }
    }

    else
    {
      v31 = v29[2];
    }

    if ((2 * v27) <= 4)
    {
      v41 = 4;
    }

    else
    {
      v41 = (2 * v27);
    }

    v42 = v41 + v27;
    if (!v30 || &v30[v42] > v31)
    {
      v43 = 2 * v29[4];
      if (v43 <= v42 + 1)
      {
        v43 = v42 + 1;
      }

      v29[4] = v43;
      v44 = v43 + 8;
      result = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
      v45 = result + v44;
      *result = v29[3];
      v30 = (result + 1);
      v29[2] = v45;
      v29[3] = result;
    }

    v29[1] = &v30[v42];
    if (v27)
    {
      result = memcpy(v30, this[1591], v27);
    }

    this[1591] = v30;
    LODWORD(v27) = *(this + 3185);
    v28 = v30;
    v26 = *(this + 3184);
    goto LABEL_63;
  }

LABEL_80:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDependentProtocolConformanceRoot@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
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
  if (v11 != 1)
  {
    if (v11 != 5 || *(v10 + 2) != 1)
    {
      v15 = 322;
      v16 = 10;
      goto LABEL_18;
    }

    v10 = *v10;
  }

  if (*a4)
  {
    return this;
  }

  v12 = *(a2 + 18);
  v13 = a2;
  if (v12 == 2)
  {
    goto LABEL_16;
  }

  if (v12 == 5 && *(a2 + 2) >= 2u)
  {
    v13 = *a2;
LABEL_16:
    v14 = *(v13 + 1);
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  if (*(v14 + 8) != 243)
  {
    goto LABEL_28;
  }

  v17 = *(v14 + 18);
  if ((v17 - 1) < 2)
  {
    goto LABEL_26;
  }

  if (v17 == 5 && *(v14 + 2))
  {
    v14 = *v14;
LABEL_26:
    v14 = *v14;
    goto LABEL_28;
  }

  v14 = 0;
LABEL_28:
  {
    v18 = *(v14 + 18);
    v19 = v14;
    if ((v18 - 1) >= 2)
    {
      if (v18 == 5)
      {
        v20 = *v14;
        v19 = *v14;
LABEL_37:
        v21 = (v20 + 8 * *(v14 + 2));
        goto LABEL_43;
      }

      v19 = 0;
    }

    switch(v18)
    {
      case 1:
        v21 = (v14 + 8);
        goto LABEL_43;
      case 2:
        v21 = (v14 + 16);
        goto LABEL_43;
      case 5:
        v20 = *v14;
        goto LABEL_37;
    }

    v21 = 0;
LABEL_43:
    while (v19 != v21)
    {
      if (*a4)
      {
        return this;
      }

      ++v19;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "HD", 2uLL, *(v6 + 1593));
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v10 = *(*a2 + 2);
  }

  else
  {
    v10 = 0;
  }

  v22 = *(v10 + 8);
  if (v22 == 258 || v22 == 104)
  {
    v23 = *(v10 + 18);
    if ((v22 != 104) != (v23 == 4))
    {
      if (v23 == 4)
      {
        v24 = *v10 + 2;
        if (!v24)
        {
LABEL_58:
          v25 = *(v6 + 3184);
          v26 = *(v6 + 3185);
          v27 = *(v6 + 1591);
          if (v25 < v26)
          {
LABEL_74:
            v16 = 0;
            v10 = 0;
            v15 = 0;
            *(v6 + 3184) = v25 + 1;
            v27[v25] = 95;
            goto LABEL_18;
          }

          v28 = *(v6 + 1593);
          v29 = v28[1];
          if (&v27[v26] == v29)
          {
            v30 = v28[2];
            if ((v29 + 1) <= v30)
            {
              v28[1] = v29 + 1;
              LODWORD(v31) = 1;
LABEL_73:
              *(v6 + 3185) = v26 + v31;
              goto LABEL_74;
            }
          }

          else
          {
            v30 = v28[2];
          }

          if ((2 * v26) <= 4)
          {
            v31 = 4;
          }

          else
          {
            v31 = (2 * v26);
          }

          v32 = v31 + v26;
          if (!v29 || &v29[v32] > v30)
          {
            v33 = 2 * v28[4];
            if (v33 <= v32 + 1)
            {
              v33 = v32 + 1;
            }

            v28[4] = v33;
            v34 = v33 + 8;
            this = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
            v35 = this + v34;
            *this = v28[3];
            v29 = this + 8;
            v28[2] = v35;
            v28[3] = this;
          }

          v28[1] = &v29[v32];
          if (v26)
          {
            this = memcpy(v29, *(v6 + 1591), v26);
          }

          *(v6 + 1591) = v29;
          LODWORD(v26) = *(v6 + 3185);
          v27 = v29;
          v25 = *(v6 + 3184);
          goto LABEL_73;
        }
      }

      else
      {
        v24 = 1;
      }

      this = swift::Demangle::__runtime::CharVector::append(v6 + 3182, v24 - 1, *(v6 + 1593));
      goto LABEL_58;
    }

    v15 = 2813;
    v16 = 1;
  }

  else
  {
    v15 = 2811;
    v16 = 1;
  }

LABEL_18:
  *a4 = v16;
  *(a4 + 8) = v10;
  *(a4 + 16) = v15;
  return this;
}

void *anonymous namespace::Remangler::mangleDependentProtocolConformanceInherited@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  if (*(v14 + 8) != 243)
  {
    goto LABEL_21;
  }

  v15 = *(v14 + 18);
  if ((v15 - 1) < 2)
  {
    goto LABEL_19;
  }

  if (v15 == 5 && *(v14 + 2))
  {
    v14 = *v14;
LABEL_19:
    v14 = *v14;
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  {
    v16 = *(v14 + 18);
    v17 = v14;
    if ((v16 - 1) >= 2)
    {
      if (v16 == 5)
      {
        v18 = *v14;
        v17 = *v14;
LABEL_30:
        v19 = (v18 + 8 * *(v14 + 2));
        goto LABEL_36;
      }

      v17 = 0;
    }

    switch(v16)
    {
      case 1:
        v19 = (v14 + 8);
        goto LABEL_36;
      case 2:
        v19 = (v14 + 16);
        goto LABEL_36;
      case 5:
        v18 = *v14;
        goto LABEL_30;
    }

    v19 = 0;
LABEL_36:
    while (v17 != v19)
    {
      if (*a4)
      {
        return result;
      }

      ++v17;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "HI", 2uLL, *(this + 1593));
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v20 = *(*a2 + 2);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v20 + 16);
  if (v21 == 258 || v21 == 104)
  {
    v22 = *(v20 + 18);
    if ((v21 != 104) != (v22 == 4))
    {
      if (v22 == 4)
      {
        v23 = *v20 + 2;
        if (!v23)
        {
LABEL_51:
          v26 = *(this + 3184);
          v27 = *(this + 3185);
          v28 = *(this + 1591);
          if (v26 < v27)
          {
LABEL_67:
            v25 = 0;
            v20 = 0;
            v24 = 0;
            *(this + 3184) = v26 + 1;
            v28[v26] = 95;
            goto LABEL_68;
          }

          v29 = *(this + 1593);
          v30 = v29[1];
          if (&v28[v27] == v30)
          {
            v31 = v29[2];
            if ((v30 + 1) <= v31)
            {
              v29[1] = v30 + 1;
              LODWORD(v32) = 1;
LABEL_66:
              *(this + 3185) = v27 + v32;
              goto LABEL_67;
            }
          }

          else
          {
            v31 = v29[2];
          }

          if ((2 * v27) <= 4)
          {
            v32 = 4;
          }

          else
          {
            v32 = (2 * v27);
          }

          v33 = v32 + v27;
          if (!v30 || &v30[v33] > v31)
          {
            v34 = 2 * v29[4];
            if (v34 <= v33 + 1)
            {
              v34 = v33 + 1;
            }

            v29[4] = v34;
            v35 = v34 + 8;
            result = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
            v36 = result + v35;
            *result = v29[3];
            v30 = (result + 1);
            v29[2] = v36;
            v29[3] = result;
          }

          v29[1] = &v30[v33];
          if (v27)
          {
            result = memcpy(v30, *(this + 1591), v27);
          }

          *(this + 1591) = v30;
          LODWORD(v27) = *(this + 3185);
          v28 = v30;
          v26 = *(this + 3184);
          goto LABEL_66;
        }
      }

      else
      {
        v23 = 1;
      }

      result = swift::Demangle::__runtime::CharVector::append(this + 3182, v23 - 1, *(this + 1593));
      goto LABEL_51;
    }

    v24 = 2813;
    v25 = 1;
  }

  else
  {
    v24 = 2811;
    v25 = 1;
  }

LABEL_68:
  *a4 = v25;
  *(a4 + 8) = v20;
  *(a4 + 16) = v24;
  return result;
}

void *anonymous namespace::Remangler::mangleDependentProtocolConformanceAssociated@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  if ((v15 - 1) < 2)
  {
LABEL_18:
    v17 = *v16;
    goto LABEL_20;
  }

  if (v15 == 5 && *(v14 + 2))
  {
    v16 = *v14;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_20:
  v18 = *(v17 + 18);
  if (v18 != 1)
  {
    if (v18 != 5 || *(v17 + 2) != 1)
    {
      v21 = 322;
      v22 = 10;
      goto LABEL_31;
    }

    v17 = *v17;
  }

  if (*a4)
  {
    return result;
  }

  v19 = *(v14 + 18);
  if (v19 == 2)
  {
    goto LABEL_29;
  }

  if (v19 == 5 && *(v14 + 2) >= 2u)
  {
    v14 = *v14;
LABEL_29:
    v20 = *(v14 + 1);
    goto LABEL_34;
  }

  v20 = 0;
LABEL_34:
  if (*(v20 + 8) != 243)
  {
    goto LABEL_41;
  }

  v23 = *(v20 + 18);
  if ((v23 - 1) < 2)
  {
    goto LABEL_39;
  }

  if (v23 == 5 && *(v20 + 2))
  {
    v20 = *v20;
LABEL_39:
    v20 = *v20;
    goto LABEL_41;
  }

  v20 = 0;
LABEL_41:
  {
    v24 = *(v20 + 18);
    v25 = v20;
    if ((v24 - 1) >= 2)
    {
      if (v24 == 5)
      {
        v26 = *v20;
        v25 = *v20;
LABEL_50:
        v27 = (v26 + 8 * *(v20 + 2));
        goto LABEL_56;
      }

      v25 = 0;
    }

    switch(v24)
    {
      case 1:
        v27 = (v20 + 8);
        goto LABEL_56;
      case 2:
        v27 = (v20 + 16);
        goto LABEL_56;
      case 5:
        v26 = *v20;
        goto LABEL_50;
    }

    v27 = 0;
LABEL_56:
    while (v25 != v27)
    {
      if (*a4)
      {
        return result;
      }

      ++v25;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "HA", 2uLL, *(this + 1593));
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v17 = *(*a2 + 2);
  }

  else
  {
    v17 = 0;
  }

  v28 = *(v17 + 8);
  if (v28 == 258 || v28 == 104)
  {
    v29 = *(v17 + 18);
    if ((v28 != 104) != (v29 == 4))
    {
      if (v29 == 4)
      {
        v30 = *v17 + 2;
        if (!v30)
        {
LABEL_71:
          v31 = *(this + 3184);
          v32 = *(this + 3185);
          v33 = *(this + 1591);
          if (v31 < v32)
          {
LABEL_87:
            v22 = 0;
            v17 = 0;
            v21 = 0;
            *(this + 3184) = v31 + 1;
            v33[v31] = 95;
            goto LABEL_31;
          }

          v34 = *(this + 1593);
          v35 = v34[1];
          if (&v33[v32] == v35)
          {
            v36 = v34[2];
            if ((v35 + 1) <= v36)
            {
              v34[1] = v35 + 1;
              LODWORD(v37) = 1;
LABEL_86:
              *(this + 3185) = v32 + v37;
              goto LABEL_87;
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
            result = memcpy(v35, *(this + 1591), v32);
          }

          *(this + 1591) = v35;
          LODWORD(v32) = *(this + 3185);
          v33 = v35;
          v31 = *(this + 3184);
          goto LABEL_86;
        }
      }

      else
      {
        v30 = 1;
      }

      result = swift::Demangle::__runtime::CharVector::append(this + 3182, v30 - 1, *(this + 1593));
      goto LABEL_71;
    }

    v21 = 2813;
    v22 = 1;
  }

  else
  {
    v21 = 2811;
    v22 = 1;
  }

LABEL_31:
  *a4 = v22;
  *(a4 + 8) = v17;
  *(a4 + 16) = v21;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDependentProtocolConformanceOpaque@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  if (*(a2 + 8) == 51)
  {
    v7 = this;
    v8 = *(a2 + 18);
    v9 = a2;
    if ((v8 - 1) >= 2)
    {
      if (v8 != 5 || !*(a2 + 2))
      {
        v10 = 0;
LABEL_9:
        v13 = *(v4 + 18);
        if (v13 != 2)
        {
          if (v13 != 5 || *(v4 + 2) < 2u)
          {
            v14 = 0;
LABEL_15:
            v15 = *(v14 + 18);
            if (v15 != 1)
            {
              if (v15 != 5 || *(v14 + 2) != 1)
              {
                goto LABEL_20;
              }

              v14 = *v14;
            }

LABEL_20:
            this = swift::Demangle::__runtime::CharVector::append(v7 + 1591, "HO", 2uLL, *(v7 + 1593));
            v12 = 0;
            v4 = 0;
            v11 = 0;
            goto LABEL_21;
          }

          v4 = *v4;
        }

        v14 = *(v4 + 1);
        goto LABEL_15;
      }

      v9 = *a2;
    }

    v10 = *v9;
    goto LABEL_9;
  }

  v11 = 2821;
  v12 = 1;
LABEL_21:
  *a4 = v12;
  *(a4 + 8) = v4;
  *(a4 + 16) = v11;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDestructor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fd", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDidSet@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t anonymous namespace::Remangler::mangleDirectness@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 1)
  {
    v3 = (this + 12736);
    v4 = *(this + 12736);
    v8 = *(this + 12740);
    v6 = *(this + 12728);
    if (v4 < v8)
    {
LABEL_40:
      v7 = 105;
      goto LABEL_41;
    }

    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v6[v8] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v28) = 1;
LABEL_39:
        *(this + 12740) = v8 + v28;
        goto LABEL_40;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v8) <= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = (2 * v8);
    }

    v29 = v28 + v8;
    if (v10)
    {
      v30 = &v10[v28 + v8] > v11;
    }

    else
    {
      v30 = 1;
    }

    v6 = v9[1];
    if (v30)
    {
      v31 = 2 * v9[4];
      if (v31 <= v29 + 1)
      {
        v31 = v29 + 1;
      }

      v9[4] = v31;
      v32 = v31 + 8;
      v33 = this;
      v34 = a3;
      v35 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      a3 = v34;
      v36 = v35;
      this = v33;
      v37 = v36 + v32;
      *v36 = v9[3];
      v6 = (v36 + 1);
      v9[2] = v37;
      v9[3] = v36;
    }

    v9[1] = &v6[v29];
    if (v8)
    {
      v38 = this;
      v39 = v8;
      v40 = a3;
      memcpy(v6, *(this + 12728), v39);
      this = v38;
      a3 = v40;
    }

    *(this + 12728) = v6;
    LODWORD(v8) = *(this + 12740);
    v4 = *(this + 12736);
    goto LABEL_39;
  }

  if (!*a2)
  {
    v3 = (this + 12736);
    v4 = *(this + 12736);
    v5 = *(this + 12740);
    v6 = *(this + 12728);
    if (v4 < v5)
    {
      v7 = 100;
LABEL_41:
      v13 = 0;
      a2 = 0;
      v12 = 0;
      *v3 = v4 + 1;
      v6[v4] = v7;
      goto LABEL_42;
    }

    v14 = *(this + 12744);
    v15 = v14[1];
    if (&v6[v5] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v17) = 1;
LABEL_23:
        *(this + 12740) = v5 + v17;
        v7 = 100;
        goto LABEL_41;
      }
    }

    else
    {
      v16 = v14[2];
    }

    if ((2 * v5) <= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = (2 * v5);
    }

    v18 = v17 + v5;
    if (!v15 || &v15[v18] > v16)
    {
      v19 = 2 * v14[4];
      if (v19 <= v18 + 1)
      {
        v19 = v18 + 1;
      }

      v14[4] = v19;
      v20 = v19 + 8;
      v21 = this;
      v22 = a3;
      v23 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      a3 = v22;
      v24 = v23;
      this = v21;
      *v24 = v14[3];
      v15 = (v24 + 1);
      v14[2] = v24 + v20;
      v14[3] = v24;
    }

    v14[1] = &v15[v18];
    if (v5)
    {
      v25 = this;
      v26 = v5;
      v27 = a3;
      memcpy(v15, *(this + 12728), v26);
      this = v25;
      a3 = v27;
    }

    *(this + 12728) = v15;
    LODWORD(v5) = *(this + 12740);
    v6 = v15;
    v4 = *(this + 12736);
    goto LABEL_23;
  }

  v12 = 1362;
  v13 = 13;
LABEL_42:
  *a3 = v13;
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleDynamicSelf@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "XD", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleEnumCase@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "WC", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleEscapingAutoClosureType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XA", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleNoEscapeFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XE", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalActorFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Yc", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleDifferentiableFunctionType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Yj", 2uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleExistentialMetatype@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    v9 = *a2;
  }

  if (*(*v9 + 16) != 155)
  {
    if (v8 != 1)
    {
      if (v8 != 5 || *(a2 + 2) != 1)
      {
        *a4 = 10;
        *(a4 + 8) = a2;
        *(a4 + 16) = 322;
        return this;
      }

      v5 = *a2;
    }

    if (*a4)
    {
      return this;
    }

    this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Xp", 2uLL, v6[1593]);
    goto LABEL_25;
  }

  v10 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_17;
    }

    v10 = *a2;
  }

  if (*a4)
  {
    return this;
  }

LABEL_17:
  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Xm", 2uLL, v6[1593]);
  v11 = *(v5 + 18);
  if ((v11 - 1) >= 2)
  {
    if (v11 == 5 && *(v5 + 2))
    {
      v5 = *v5;
      goto LABEL_21;
    }

LABEL_25:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return this;
  }

LABEL_21:
  v12 = *v5;
}

uint64_t *anonymous namespace::Remangler::mangleExplicitClosure@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*a4)
    {
      return result;
    }

    if (*(v5 + 18) != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
    goto LABEL_5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 != 5)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    goto LABEL_13;
  }

LABEL_9:
  if (*(v5 + 2) <= 2u)
  {
    goto LABEL_12;
  }

  if (*a4)
  {
    return result;
  }

LABEL_13:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fU", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if (v11 != 2)
  {
    if (v11 != 5 || *(v5 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v12 = *(v5 + 1);
}

uint64_t *anonymous namespace::Remangler::mangleExtension@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
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
    return this;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v10 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v10 = *a2;
  }

  if (*a4)
  {
    return this;
  }

  if (*(a2 + 18) != 5)
  {
LABEL_18:
    v11 = *(v6 + 3184);
    v12 = *(v6 + 3185);
    v13 = v6[1591];
    if (v11 < v12)
    {
LABEL_34:
      *(v6 + 3184) = v11 + 1;
      v13[v11] = 69;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return this;
    }

    v14 = v6[1593];
    v15 = v14[1];
    if (&v13[v12] == v15)
    {
      v16 = v14[2];
      if ((v15 + 1) <= v16)
      {
        v14[1] = v15 + 1;
        LODWORD(v17) = 1;
LABEL_33:
        *(v6 + 3185) = v12 + v17;
        goto LABEL_34;
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
      this = memcpy(v15, v6[1591], v12);
    }

    v6[1591] = v15;
    LODWORD(v12) = *(v6 + 3185);
    v13 = v15;
    v11 = *(v6 + 3184);
    goto LABEL_33;
  }

LABEL_16:
  if (*(a2 + 2) != 3)
  {
    goto LABEL_18;
  }

  if (!*a4)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t *anonymous namespace::Remangler::mangleExtensionAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMe", 3uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleFieldOffset@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wv", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5 || !*(v5 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v12 = *v5;
}

uint64_t *anonymous namespace::Remangler::mangleFreestandingMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*a4)
    {
      return result;
    }

    v8 = *(a2 + 18);
    if (v8 != 5)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
    goto LABEL_5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 != 5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (*(a2 + 2) < 4u || (v11 = *(*a2 + 3)) == 0)
  {
LABEL_15:
    if (*(a2 + 2) >= 2u)
    {
      v12 = *a2;
LABEL_17:
      if (*a4)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_13:
  v12 = a2;
  if (v8 == 2)
  {
    goto LABEL_17;
  }

  if (v8 == 5)
  {
    goto LABEL_15;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMf", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
  {
    v13 = *(*a2 + 2);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleFullTypeMetadata@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Mf", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleFunction@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  if (v8 == 2)
  {
    goto LABEL_12;
  }

  if (v8 == 5 && *(a2 + 2) >= 2u)
  {
    v11 = *a2;
LABEL_12:
    if (*a4)
    {
      return result;
    }

    v8 = *(a2 + 18);
    if (v8 != 5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 != 5)
  {
LABEL_14:
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

LABEL_16:
  v13 = *(*(*a2 + 2) + 16) == 303;
  v14 = 2;
  if (*(*(*a2 + 2) + 16) == 303)
  {
    v14 = 3;
  }

  if (v14 >= *(a2 + 2))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(*a2 + v14);
  }

LABEL_21:
  v15 = *(v12 + 18);
  if ((v15 - 1) < 2)
  {
    goto LABEL_25;
  }

  if (v15 == 5 && *(v12 + 2))
  {
    v12 = *v12;
LABEL_25:
    v16 = *v12;
    if (!v13)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v16 = 0;
  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (v8 == 5 && *(a2 + 2) > 2u)
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

LABEL_33:
  if (*(v16 + 8) != 45)
  {
    v20 = *(v16 + 18);
    if (v20 != 1)
    {
      if (v20 == 5)
      {
        v20 = *(v16 + 2);
        if (v20)
        {
          goto LABEL_55;
        }
      }

      else if (v20 == 2)
      {
        v20 = 2;
        goto LABEL_55;
      }

LABEL_68:
      *a4 = 0;
      *(a4 + 8) = 0;
      v28 = (a4 + 16);
      goto LABEL_91;
    }

LABEL_55:
    v24 = v20 - 1;
    while (1)
    {
      v25 = *(v16 + 18);
      v26 = v25 - 1;
      if (v25 != 1)
      {
        if (v25 == 5)
        {
          v25 = *(v16 + 2);
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_56;
          }

          v25 = 2;
        }
      }

      if (v25 > v24)
      {
        v27 = v16;
        if (v26 >= 2)
        {
          v27 = *v16;
        }

        if (*a4)
        {
          return result;
        }

        goto LABEL_57;
      }

LABEL_56:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
LABEL_57:
      if (--v24 == -1)
      {
        goto LABEL_68;
      }
    }
  }

  v17 = *(v16 + 18);
  v18 = v16;
  if (v17 == 2)
  {
LABEL_38:
    v19 = *(v18 + 1);
    goto LABEL_44;
  }

  if (v17 == 5 && *(v16 + 2) >= 2u)
  {
    v18 = *v16;
    goto LABEL_38;
  }

  v19 = 0;
LABEL_44:
  v21 = *(v19 + 18);
  if ((v21 - 1) >= 2)
  {
    if (v21 != 5 || !*(v19 + 2))
    {
      v22 = 0;
      goto LABEL_50;
    }

    v19 = *v19;
  }

  v22 = *v19;
LABEL_50:
  v23 = *(v22 + 18);
  if (v23 != 1)
  {
    if (v23 == 5)
    {
      v23 = *(v22 + 2);
      if (!v23)
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_84;
      }

      v23 = 2;
    }
  }

  v29 = v23 - 1;
  do
  {
    v30 = *(v22 + 18);
    v31 = v30 - 1;
    if (v30 != 1)
    {
      if (v30 == 5)
      {
        v30 = *(v22 + 2);
      }

      else
      {
        if (v30 != 2)
        {
          goto LABEL_71;
        }

        v30 = 2;
      }
    }

    if (v30 <= v29)
    {
LABEL_71:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_72;
    }

    v32 = v22;
    if (v31 >= 2)
    {
      v32 = *v22;
    }

    if (*a4)
    {
      return result;
    }

LABEL_72:
    --v29;
  }

  while (v29 != -1);
  v17 = *(v16 + 18);
LABEL_84:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v28 = (a4 + 16);
  if ((v17 - 1) < 2)
  {
LABEL_88:
    if (!*a4)
    {
      goto LABEL_92;
    }
  }

  else
  {
    if (v17 == 5 && *(v16 + 2))
    {
      v16 = *v16;
      goto LABEL_88;
    }

    *(a4 + 8) = 0;
LABEL_91:
    *v28 = 0;
LABEL_92:
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "F", 1uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void anonymous namespace::Remangler::mangleFunctionSignatureSpecialization(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *a2;
      v9 = *a2;
      goto LABEL_9;
    }

    v9 = 0;
  }

  switch(v8)
  {
    case 1:
      v11 = (a2 + 8);
      if (v9 != (a2 + 8))
      {
        goto LABEL_16;
      }

      break;
    case 2:
      v11 = (a2 + 16);
      if (v9 != (a2 + 16))
      {
        goto LABEL_16;
      }

      break;
    case 5:
      v10 = *a2;
LABEL_9:
      v11 = (v10 + 8 * *(a2 + 2));
      if (v9 == v11)
      {
        break;
      }

      goto LABEL_16;
    default:
      v11 = 0;
      if (!v9)
      {
        break;
      }

LABEL_16:
      v68 = this + 12296;
      while (1)
      {
        v13 = *v9;
        if (*(*v9 + 16) != 80)
        {
          goto LABEL_19;
        }

        v14 = *(v13 + 18);
        v15 = *v9;
        if ((v14 - 1) >= 2)
        {
          if (v14 != 5 || !*(v13 + 2))
          {
            goto LABEL_19;
          }

          v15 = *v13;
        }

        v16 = **v15;
        if (v16 <= 4)
        {
          if (v16 < 2)
          {
            if (v14 != 2)
            {
              if (v14 != 5 || *(v13 + 2) < 2u)
              {
                NodeWithAllocatedText = 0;
                goto LABEL_94;
              }

              v13 = *v13;
            }

            NodeWithAllocatedText = v13[1];
LABEL_94:
            memset(&v70, 0, 17);
            {
              v46 = *(this + 1585);
              if (v46 > 0xF)
              {
                v12 = *(this + 3178) + 16;
                v71 = v70;
                v72 = v12;
                std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v71);
              }

              else
              {
                *(this + 1585) = v46 + 1;
                v47 = &v68[24 * v46];
                *v47 = *&v70.__r_.__value_.__l.__data_;
                v47[16] = v70.__r_.__value_.__s.__data_[16];
              }
            }

            *a4 = 0;
            *(a4 + 8) = 0;
            *(a4 + 16) = 0;
            goto LABEL_19;
          }

          if (v16 == 4)
          {
            NodeWithAllocatedText = *(*v13 + 2);
            v21 = *(NodeWithAllocatedText + 1);
            if (v21)
            {
              v22 = *NodeWithAllocatedText;
              v23 = **NodeWithAllocatedText;
              if (v23 == 95 || (v23 - 48) <= 9)
              {
                v25 = a3;
                *(&v71.__r_.__value_.__s + 23) = 1;
                LOWORD(v71.__r_.__value_.__l.__data_) = 95;
                std::string::append(&v71, v22, v21);
                v26 = *this;
                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &v71;
                }

                else
                {
                  v27 = v71.__r_.__value_.__r.__words[0];
                }

                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v71.__r_.__value_.__l.__size_;
                }

                if (size)
                {
                  v29 = v26[1];
                  if (!v29 || (v30 = &v29[size], &v29[size] > v26[2]))
                  {
                    v31 = 2 * v26[4];
                    if (v31 <= size + 1)
                    {
                      v31 = size + 1;
                    }

                    v26[4] = v31;
                    v32 = v31 + 8;
                    v33 = v27;
                    v34 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
                    v27 = v33;
                    *v34 = v26[3];
                    v29 = (v34 + 1);
                    v26[2] = v34 + v32;
                    v26[3] = v34;
                    v30 = v34 + size + 8;
                  }

                  v26[1] = v30;
                  memmove(v29, v27, size);
                }

                else
                {
                  v29 = 0;
                }

                NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v26, 103, v29, size);
                if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v71.__r_.__value_.__l.__data_);
                }

                a3 = v25;
              }
            }

            goto LABEL_94;
          }

          goto LABEL_19;
        }

        if (v16 != 5 && v16 != 9)
        {
          goto LABEL_19;
        }

        v19 = *v9;
        if (v14 == 2)
        {
          goto LABEL_41;
        }

        if (v14 == 5 && *(v13 + 2) >= 2u)
        {
          break;
        }

        v20 = 0;
LABEL_63:
        memset(&v70, 0, 17);
        {
          v35 = *(this + 1585);
          if (v35 > 0xF)
          {
            v37 = *(this + 3178) + 16;
            v71 = v70;
            v72 = v37;
            std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v71);
          }

          else
          {
            *(this + 1585) = v35 + 1;
            v36 = &v68[24 * v35];
            *v36 = *&v70.__r_.__value_.__l.__data_;
            v36[16] = v70.__r_.__value_.__s.__data_[16];
          }
        }

        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        v38 = *(v13 + 18);
        if (v38 == 1)
        {
LABEL_71:
          v39 = 2;
          goto LABEL_73;
        }

        if (v38 != 2)
        {
          if (v38 == 5)
          {
            v38 = *(v13 + 2);
            if (v38 != 2)
            {
              goto LABEL_71;
            }

            goto LABEL_19;
          }

          v38 = 0;
          v39 = 2;
LABEL_73:
          while (2)
          {
            v40 = v39;
            v41 = *(v13 + 18);
            v42 = v41 - 1;
            switch(v41)
            {
              case 1:
LABEL_77:
                if (v41 <= v40)
                {
                  goto LABEL_82;
                }

                break;
              case 5:
                if (*(v13 + 2) <= v40)
                {
                  goto LABEL_82;
                }

                break;
              case 2:
                v41 = 2;
                goto LABEL_77;
              default:
LABEL_82:
                v44 = 0;
LABEL_83:
                v45 = *(v44 + 18);
                if (v45 != 1)
                {
                  if (v45 != 5 || *(v44 + 2) != 1)
                  {
                    *a4 = 10;
                    *(a4 + 8) = v44;
                    *(a4 + 16) = 322;
                    return;
                  }

                  v44 = *v44;
                }

                if (*a4)
                {
                  return;
                }

                v39 = v40 + 1;
                if (v38 == v40 + 1)
                {
                  goto LABEL_19;
                }

                continue;
            }

            break;
          }

          v43 = v13;
          if (v42 >= 2)
          {
            v43 = *v13;
          }

          v44 = v43[v40];
          goto LABEL_83;
        }

LABEL_19:
        v9 = (v9 + 8);
        if (v9 == v11)
        {
          goto LABEL_97;
        }
      }

      v19 = *v13;
LABEL_41:
      v20 = *(v19 + 1);
      goto LABEL_63;
  }

LABEL_97:
  swift::Demangle::__runtime::CharVector::append(this + 1591, "Tf", 2uLL, *(this + 1593));
  v48 = *(v5 + 18);
  v49 = v5;
  if ((v48 - 1) >= 2)
  {
    if (v48 == 5)
    {
      v50 = *v5;
      v49 = *v5;
      goto LABEL_106;
    }

    v49 = 0;
  }

  switch(v48)
  {
    case 1:
      v51 = (v5 + 8);
      if (v49 == (v5 + 8))
      {
        goto LABEL_142;
      }

      break;
    case 2:
      v51 = (v5 + 16);
      if (v49 == (v5 + 16))
      {
        goto LABEL_142;
      }

      break;
    case 5:
      v50 = *v5;
LABEL_106:
      v51 = (v50 + 8 * *(v5 + 2));
      if (v49 == v51)
      {
LABEL_142:
        swift::Demangle::__runtime::CharVector::append(this + 1591, "_n", 2uLL, *(this + 1593));
        goto LABEL_143;
      }

      break;
    default:
      v51 = 0;
      if (!v49)
      {
        goto LABEL_142;
      }

      break;
  }

  v52 = 0;
  v67 = v51;
  v69 = v5;
  v66 = a3;
  do
  {
    v53 = *v49;
    if (*(*v49 + 16) != 81)
    {
      goto LABEL_136;
    }

    v54 = *(this + 3184);
    v55 = *(this + 3185);
    v56 = *(this + 1591);
    if (v54 >= v55)
    {
      v57 = *(this + 1593);
      v58 = v57[1];
      if (&v56[v55] == v58)
      {
        v59 = v57[2];
        if ((v58 + 1) <= v59)
        {
          v57[1] = v58 + 1;
          LODWORD(v60) = 1;
LABEL_134:
          *(this + 3185) = v55 + v60;
          v51 = v67;
          v5 = v69;
          goto LABEL_135;
        }
      }

      else
      {
        v59 = v57[2];
      }

      if ((2 * v55) <= 4)
      {
        v60 = 4;
      }

      else
      {
        v60 = (2 * v55);
      }

      v61 = v60 + v55;
      if (v58)
      {
        v62 = &v58[v60 + v55] > v59;
      }

      else
      {
        v62 = 1;
      }

      v56 = v57[1];
      if (v62)
      {
        v63 = 2 * v57[4];
        if (v63 <= v61 + 1)
        {
          v63 = v61 + 1;
        }

        v57[4] = v63;
        a3 = v63 + 8;
        v64 = malloc_type_malloc(v63 + 8, 0x2004093837F09uLL);
        *v64 = v57[3];
        v56 = (v64 + 1);
        v65 = v64 + a3;
        LODWORD(a3) = v66;
        v57[2] = v65;
        v57[3] = v64;
      }

      v57[1] = &v56[v61];
      if (v55)
      {
        memcpy(v56, *(this + 1591), v55);
      }

      *(this + 1591) = v56;
      LODWORD(v55) = *(this + 3185);
      v54 = *(this + 3184);
      goto LABEL_134;
    }

LABEL_135:
    *(this + 3184) = v54 + 1;
    v56[v54] = 95;
    v52 = 1;
LABEL_136:
    if (*a4)
    {
      return;
    }

    if (*(v53 + 8) == 227 && *(v5 + 18) == 4)
    {
      swift::Demangle::__runtime::CharVector::append(this + 3182, *v5, *(this + 1593));
    }

    v49 = (v49 + 8);
  }

  while (v49 != v51);
  if ((v52 & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_143:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

uint64_t anonymous namespace::Remangler::mangleFunctionSignatureSpecializationParam@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *(a2 + 18);
  v6 = a2;
  if ((v5 - 1) >= 2)
  {
    if (v5 == 5 && *(a2 + 2))
    {
      v6 = *a2;
      goto LABEL_5;
    }

    v14 = *(this + 12736);
    v15 = *(this + 12740);
    v16 = *(this + 12728);
    if (v14 < v15)
    {
LABEL_50:
      v26 = 0;
      v21 = 0;
      v25 = 0;
      *(v3 + 12736) = v14 + 1;
      v16[v14] = 110;
      goto LABEL_208;
    }

    v17 = *(this + 12744);
    v18 = v17[1];
    if (&v16[v15] == v18)
    {
      v19 = v17[2];
      if ((v18 + 1) <= v19)
      {
        v17[1] = v18 + 1;
        LODWORD(v33) = 1;
LABEL_49:
        *(v3 + 12740) = v15 + v33;
        goto LABEL_50;
      }
    }

    else
    {
      v19 = v17[2];
    }

    if ((2 * v15) <= 4)
    {
      v33 = 4;
    }

    else
    {
      v33 = (2 * v15);
    }

    v34 = v33 + v15;
    if (v18)
    {
      v35 = &v18[v33 + v15] > v19;
    }

    else
    {
      v35 = 1;
    }

    v16 = v17[1];
    if (v35)
    {
      v36 = 2 * v17[4];
      if (v36 <= v34 + 1)
      {
        v36 = v34 + 1;
      }

      v17[4] = v36;
      v37 = v36 + 8;
      this = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
      v38 = this + v37;
      *this = v17[3];
      v16 = (this + 8);
      v17[2] = v38;
      v17[3] = this;
    }

    v17[1] = &v16[v34];
    if (v15)
    {
      this = memcpy(v16, *(v3 + 12728), v15);
    }

    *(v3 + 12728) = v16;
    LODWORD(v15) = *(v3 + 12740);
    v14 = *(v3 + 12736);
    goto LABEL_49;
  }

LABEL_5:
  v7 = **v6;
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5)
      {
        if (v7 != 6)
        {
          v8 = *(this + 12736);
          v9 = *(this + 12740);
          v10 = *(this + 12728);
          if (v8 < v9)
          {
LABEL_114:
            v26 = 0;
            v21 = 0;
            v25 = 0;
            *(v3 + 12736) = v8 + 1;
            v71 = 115;
            goto LABEL_207;
          }

          v11 = *(this + 12744);
          v12 = v11[1];
          if (&v10[v9] == v12)
          {
            v13 = v11[2];
            if ((v12 + 1) <= v13)
            {
              v11[1] = v12 + 1;
              LODWORD(v72) = 1;
LABEL_113:
              *(v3 + 12740) = v9 + v72;
              goto LABEL_114;
            }
          }

          else
          {
            v13 = v11[2];
          }

          if ((2 * v9) <= 4)
          {
            v72 = 4;
          }

          else
          {
            v72 = (2 * v9);
          }

          v73 = v72 + v9;
          if (!v12 || &v12[v73] > v13)
          {
            v74 = 2 * v11[4];
            if (v74 <= v73 + 1)
            {
              v74 = v73 + 1;
            }

            v11[4] = v74;
            v75 = v74 + 8;
            this = malloc_type_malloc(v74 + 8, 0x2004093837F09uLL);
            v76 = this + v75;
            *this = v11[3];
            v12 = (this + 8);
            v11[2] = v76;
            v11[3] = this;
          }

          v11[1] = &v12[v73];
          if (v9)
          {
            this = memcpy(v12, *(v3 + 12728), v9);
          }

          *(v3 + 12728) = v12;
          LODWORD(v9) = *(v3 + 12740);
          v10 = v12;
          v8 = *(v3 + 12736);
          goto LABEL_113;
        }

        v8 = *(this + 12736);
        v41 = *(this + 12740);
        v10 = *(this + 12728);
        if (v8 < v41)
        {
LABEL_100:
          v26 = 0;
          v21 = 0;
          v25 = 0;
          *(v3 + 12736) = v8 + 1;
          v71 = 105;
LABEL_207:
          v10[v8] = v71;
          goto LABEL_208;
        }

        v42 = *(this + 12744);
        v43 = v42[1];
        if (&v10[v41] == v43)
        {
          v44 = v42[2];
          if ((v43 + 1) <= v44)
          {
            v42[1] = v43 + 1;
            LODWORD(v66) = 1;
LABEL_99:
            *(v3 + 12740) = v41 + v66;
            goto LABEL_100;
          }
        }

        else
        {
          v44 = v42[2];
        }

        if ((2 * v41) <= 4)
        {
          v66 = 4;
        }

        else
        {
          v66 = (2 * v41);
        }

        v67 = v66 + v41;
        if (!v43 || &v43[v67] > v44)
        {
          v68 = 2 * v42[4];
          if (v68 <= v67 + 1)
          {
            v68 = v67 + 1;
          }

          v42[4] = v68;
          v69 = v68 + 8;
          this = malloc_type_malloc(v68 + 8, 0x2004093837F09uLL);
          v70 = this + v69;
          *this = v42[3];
          v43 = (this + 8);
          v42[2] = v70;
          v42[3] = this;
        }

        v42[1] = &v43[v67];
        if (v41)
        {
          this = memcpy(v43, *(v3 + 12728), v41);
        }

        *(v3 + 12728) = v43;
        LODWORD(v41) = *(v3 + 12740);
        v10 = v43;
        v8 = *(v3 + 12736);
        goto LABEL_99;
      }

      v8 = *(this + 12736);
      v50 = *(this + 12740);
      v10 = *(this + 12728);
      if (v8 < v50)
      {
LABEL_142:
        v26 = 0;
        v21 = 0;
        v25 = 0;
        *(v3 + 12736) = v8 + 1;
        v71 = 99;
        goto LABEL_207;
      }

      v51 = *(this + 12744);
      v52 = v51[1];
      if (&v10[v50] == v52)
      {
        v53 = v51[2];
        if ((v52 + 1) <= v53)
        {
          v51[1] = v52 + 1;
          LODWORD(v82) = 1;
LABEL_141:
          *(v3 + 12740) = v50 + v82;
          goto LABEL_142;
        }
      }

      else
      {
        v53 = v51[2];
      }

      if ((2 * v50) <= 4)
      {
        v82 = 4;
      }

      else
      {
        v82 = (2 * v50);
      }

      v83 = v82 + v50;
      if (!v52 || &v52[v83] > v53)
      {
        v84 = 2 * v51[4];
        if (v84 <= v83 + 1)
        {
          v84 = v83 + 1;
        }

        v51[4] = v84;
        v85 = v84 + 8;
        this = malloc_type_malloc(v84 + 8, 0x2004093837F09uLL);
        v86 = this + v85;
        *this = v51[3];
        v52 = (this + 8);
        v51[2] = v86;
        v51[3] = this;
      }

      v51[1] = &v52[v83];
      if (v50)
      {
        this = memcpy(v52, *(v3 + 12728), v50);
      }

      *(v3 + 12728) = v52;
      LODWORD(v50) = *(v3 + 12740);
      v10 = v52;
      v8 = *(v3 + 12736);
      goto LABEL_141;
    }

    if (v7 != 8)
    {
      if (v7 != 9)
      {
        if (v7 == 256)
        {
          v8 = *(this + 12736);
          v27 = *(this + 12740);
          v10 = *(this + 12728);
          if (v8 < v27)
          {
LABEL_128:
            v26 = 0;
            v21 = 0;
            v25 = 0;
            *(v3 + 12736) = v8 + 1;
            v71 = 120;
            goto LABEL_207;
          }

          v28 = *(this + 12744);
          v29 = v28[1];
          if (&v10[v27] == v29)
          {
            v30 = v28[2];
            if ((v29 + 1) <= v30)
            {
              v28[1] = v29 + 1;
              LODWORD(v77) = 1;
LABEL_127:
              *(v3 + 12740) = v27 + v77;
              goto LABEL_128;
            }
          }

          else
          {
            v30 = v28[2];
          }

          if ((2 * v27) <= 4)
          {
            v77 = 4;
          }

          else
          {
            v77 = (2 * v27);
          }

          v78 = v77 + v27;
          if (!v29 || &v29[v78] > v30)
          {
            v79 = 2 * v28[4];
            if (v79 <= v78 + 1)
            {
              v79 = v78 + 1;
            }

            v28[4] = v79;
            v80 = v79 + 8;
            this = malloc_type_malloc(v79 + 8, 0x2004093837F09uLL);
            v81 = this + v80;
            *this = v28[3];
            v29 = (this + 8);
            v28[2] = v81;
            v28[3] = this;
          }

          v28[1] = &v29[v78];
          if (v27)
          {
            this = memcpy(v29, *(v3 + 12728), v27);
          }

          *(v3 + 12728) = v29;
          LODWORD(v27) = *(v3 + 12740);
          v10 = v29;
          v8 = *(v3 + 12736);
          goto LABEL_127;
        }

LABEL_70:
        if ((v7 & 0x400) == 0)
        {
          if ((v7 & 0x40) == 0)
          {
            if ((v7 & 0x80) != 0)
            {
              v58 = (this + 12728);
              v59 = 103;
            }

            else
            {
              if ((v7 & 0x200) == 0)
              {
                goto LABEL_189;
              }

              v58 = (this + 12728);
              v59 = 111;
            }

            goto LABEL_188;
          }

          this = swift::Demangle::__runtime::RemanglerBuffer::operator<<((this + 12728), 100);
          if ((v7 & 0x80) != 0)
          {
            this = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v3 + 12728), 71);
          }

          if ((v7 & 0x200) != 0)
          {
            v58 = (v3 + 12728);
LABEL_187:
            v59 = 79;
LABEL_188:
            this = swift::Demangle::__runtime::RemanglerBuffer::operator<<(v58, v59);
          }

LABEL_189:
          if ((v7 & 0x100) != 0)
          {
            v8 = *(v3 + 12736);
            v101 = *(v3 + 12740);
            v10 = *(v3 + 12728);
            if (v8 < v101)
            {
LABEL_206:
              v26 = 0;
              v21 = 0;
              v25 = 0;
              *(v3 + 12736) = v8 + 1;
              v71 = 88;
              goto LABEL_207;
            }

            v102 = *(v3 + 12744);
            v103 = v102[1];
            if (&v10[v101] == v103)
            {
              v104 = v102[2];
              if ((v103 + 1) <= v104)
              {
                v102[1] = v103 + 1;
                LODWORD(v105) = 1;
LABEL_205:
                *(v3 + 12740) = v101 + v105;
                goto LABEL_206;
              }
            }

            else
            {
              v104 = v102[2];
            }

            if ((2 * v101) <= 4)
            {
              v105 = 4;
            }

            else
            {
              v105 = (2 * v101);
            }

            v106 = v105 + v101;
            if (!v103 || &v103[v106] > v104)
            {
              v107 = 2 * v102[4];
              if (v107 <= v106 + 1)
              {
                v107 = v106 + 1;
              }

              v102[4] = v107;
              v108 = v107 + 8;
              this = malloc_type_malloc(v107 + 8, 0x2004093837F09uLL);
              v109 = this + v108;
              *this = v102[3];
              v103 = (this + 8);
              v102[2] = v109;
              v102[3] = this;
            }

            v102[1] = &v103[v106];
            if (v101)
            {
              this = memcpy(v103, *(v3 + 12728), v101);
            }

            *(v3 + 12728) = v103;
            LODWORD(v101) = *(v3 + 12740);
            v10 = v103;
            v8 = *(v3 + 12736);
            goto LABEL_205;
          }

          goto LABEL_63;
        }

        v60 = *(this + 12736);
        v61 = *(this + 12740);
        v62 = *(this + 12728);
        if (v60 < v61)
        {
LABEL_180:
          *(v3 + 12736) = v60 + 1;
          v62[v60] = 101;
          if ((v7 & 0x40) != 0)
          {
            this = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v3 + 12728), 68);
            if ((v7 & 0x80) == 0)
            {
LABEL_182:
              if ((v7 & 0x200) == 0)
              {
                goto LABEL_189;
              }

LABEL_186:
              v58 = (v3 + 12728);
              goto LABEL_187;
            }
          }

          else if ((v7 & 0x80) == 0)
          {
            goto LABEL_182;
          }

          this = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v3 + 12728), 71);
          if ((v7 & 0x200) == 0)
          {
            goto LABEL_189;
          }

          goto LABEL_186;
        }

        v63 = *(this + 12744);
        v64 = v63[1];
        if (&v62[v61] == v64)
        {
          v65 = v63[2];
          if ((v64 + 1) <= v65)
          {
            v63[1] = v64 + 1;
            LODWORD(v96) = 1;
LABEL_179:
            *(v3 + 12740) = v61 + v96;
            goto LABEL_180;
          }
        }

        else
        {
          v65 = v63[2];
        }

        if ((2 * v61) <= 4)
        {
          v96 = 4;
        }

        else
        {
          v96 = (2 * v61);
        }

        v97 = v96 + v61;
        if (!v64 || &v64[v97] > v65)
        {
          v98 = 2 * v63[4];
          if (v98 <= v97 + 1)
          {
            v98 = v97 + 1;
          }

          v63[4] = v98;
          v99 = v98 + 8;
          this = malloc_type_malloc(v98 + 8, 0x2004093837F09uLL);
          v100 = this + v99;
          *this = v63[3];
          v64 = (this + 8);
          v63[2] = v100;
          v63[3] = this;
        }

        v63[1] = &v64[v97];
        if (v61)
        {
          this = memcpy(v64, *(v3 + 12728), v61);
        }

        *(v3 + 12728) = v64;
        LODWORD(v61) = *(v3 + 12740);
        v62 = v64;
        v60 = *(v3 + 12736);
        goto LABEL_179;
      }

      v31 = *(this + 12744);
      v32 = "pk";
      goto LABEL_57;
    }

    v8 = *(this + 12736);
    v54 = *(this + 12740);
    v10 = *(this + 12728);
    if (v8 < v54)
    {
LABEL_156:
      v26 = 0;
      v21 = 0;
      v25 = 0;
      *(v3 + 12736) = v8 + 1;
      v71 = 114;
      goto LABEL_207;
    }

    v55 = *(this + 12744);
    v56 = v55[1];
    if (&v10[v54] == v56)
    {
      v57 = v55[2];
      if ((v56 + 1) <= v57)
      {
        v55[1] = v56 + 1;
        LODWORD(v87) = 1;
LABEL_155:
        *(v3 + 12740) = v54 + v87;
        goto LABEL_156;
      }
    }

    else
    {
      v57 = v55[2];
    }

    if ((2 * v54) <= 4)
    {
      v87 = 4;
    }

    else
    {
      v87 = (2 * v54);
    }

    v88 = v87 + v54;
    if (!v56 || &v56[v88] > v57)
    {
      v89 = 2 * v55[4];
      if (v89 <= v88 + 1)
      {
        v89 = v88 + 1;
      }

      v55[4] = v89;
      v90 = v89 + 8;
      this = malloc_type_malloc(v89 + 8, 0x2004093837F09uLL);
      v91 = this + v90;
      *this = v55[3];
      v56 = (this + 8);
      v55[2] = v91;
      v55[3] = this;
    }

    v55[1] = &v56[v88];
    if (v54)
    {
      this = memcpy(v56, *(v3 + 12728), v54);
    }

    *(v3 + 12728) = v56;
    LODWORD(v54) = *(v3 + 12740);
    v10 = v56;
    v8 = *(v3 + 12736);
    goto LABEL_155;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_70;
      }

      v31 = *(this + 12744);
      v32 = "pg";
    }

    else
    {
      v31 = *(this + 12744);
      v32 = "pf";
    }

LABEL_57:
    v45 = (this + 12728);
    v46 = 2;
LABEL_62:
    this = swift::Demangle::__runtime::CharVector::append(v45, v32, v46, v31);
LABEL_63:
    v26 = 0;
    v21 = 0;
    v25 = 0;
    goto LABEL_208;
  }

  if (v7 == 2)
  {
    v39 = *(this + 12744);
    v40 = "pi";
    goto LABEL_59;
  }

  if (v7 == 3)
  {
    v39 = *(this + 12744);
    v40 = "pd";
LABEL_59:
    swift::Demangle::__runtime::CharVector::append((this + 12728), v40, 2uLL, v39);
    v48 = a2;
    if (*(a2 + 18) == 5)
    {
      v48 = *a2;
    }

    v49 = *(v48 + 1);
    v32 = *v49;
    v46 = *(v49 + 8);
    v31 = *(v3 + 12744);
    v45 = (v3 + 12728);
    goto LABEL_62;
  }

  swift::Demangle::__runtime::CharVector::append((this + 12728), "ps", 2uLL, *(this + 12744));
  v21 = a2;
  v22 = a2;
  if (*(a2 + 18) == 5)
  {
    v22 = *a2;
  }

  v23 = *(v22 + 1);
  this = *v23;
  v24 = v23[1];
  if (v24 == 4)
  {
    this = memcmp(this, "objc", 4uLL);
    if (!this)
    {
      this = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v3 + 12728), 99);
      goto LABEL_63;
    }

    goto LABEL_82;
  }

  if (v24 == 3)
  {
    this = memcmp(this, "u16", 3uLL);
    if (!this)
    {
      this = swift::Demangle::__runtime::RemanglerBuffer::operator<<((v3 + 12728), 119);
      goto LABEL_63;
    }

LABEL_82:
    v25 = 1597;
    v26 = 14;
    v21 = a2;
    goto LABEL_208;
  }

  if (v24 == 2 && *this == 14453)
  {
    v8 = *(v3 + 12736);
    v92 = *(v3 + 12740);
    v10 = *(v3 + 12728);
    if (v8 < v92)
    {
LABEL_224:
      v26 = 0;
      v21 = 0;
      v25 = 0;
      *(v3 + 12736) = v8 + 1;
      v71 = 98;
      goto LABEL_207;
    }

    v93 = *(v3 + 12744);
    v94 = v93[1];
    if (&v10[v92] == v94)
    {
      v95 = v93[2];
      if ((v94 + 1) <= v95)
      {
        v93[1] = v94 + 1;
        LODWORD(v110) = 1;
LABEL_223:
        *(v3 + 12740) = v92 + v110;
        goto LABEL_224;
      }
    }

    else
    {
      v95 = v93[2];
    }

    if ((2 * v92) <= 4)
    {
      v110 = 4;
    }

    else
    {
      v110 = (2 * v92);
    }

    v111 = v110 + v92;
    if (!v94 || &v94[v111] > v95)
    {
      v112 = 2 * v93[4];
      if (v112 <= v111 + 1)
      {
        v112 = v111 + 1;
      }

      v93[4] = v112;
      v113 = v112 + 8;
      this = malloc_type_malloc(v112 + 8, 0x2004093837F09uLL);
      v114 = this + v113;
      *this = v93[3];
      v94 = (this + 8);
      v93[2] = v114;
      v93[3] = this;
    }

    v93[1] = &v94[v111];
    if (v92)
    {
      this = memcpy(v94, *(v3 + 12728), v92);
    }

    *(v3 + 12728) = v94;
    LODWORD(v92) = *(v3 + 12740);
    v10 = v94;
    v8 = *(v3 + 12736);
    goto LABEL_223;
  }

  v25 = 1597;
  v26 = 14;
LABEL_208:
  *a3 = v26;
  *(a3 + 8) = v21;
  *(a3 + 16) = v25;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleFunctionType@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  v13 = *(v6 + 12736);
  v14 = *(v6 + 12740);
  v15 = *(v6 + 12728);
  if (v13 >= v14)
  {
    v16 = *(v6 + 12744);
    v17 = v16[1];
    if (&v15[v14] == v17)
    {
      v18 = v16[2];
      if ((v17 + 1) <= v18)
      {
        v16[1] = v17 + 1;
        LODWORD(v19) = 1;
LABEL_34:
        *(v6 + 12740) = v14 + v19;
        goto LABEL_35;
      }
    }

    else
    {
      v18 = v16[2];
    }

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
      this = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
      v23 = this + v22;
      *this = v16[3];
      v17 = (this + 1);
      v16[2] = v23;
      v16[3] = this;
    }

    v16[1] = &v17[v20];
    if (v14)
    {
      this = memcpy(v17, *(v6 + 12728), v14);
    }

    *(v6 + 12728) = v17;
    LODWORD(v14) = *(v6 + 12740);
    v15 = v17;
    v13 = *(v6 + 12736);
    goto LABEL_34;
  }

LABEL_35:
  *(v6 + 12736) = v13 + 1;
  v15[v13] = 99;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleConstrainedExistential@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(v5 + 18);
  if (v8 == 2)
  {
LABEL_12:
    if (*a4)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_9:
  if (v8 == 5 && *(v5 + 2) >= 2u)
  {
    v5 = *v5;
    goto LABEL_12;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_15:
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XP", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleConstrainedExistentialRequirementList@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v13 = 1;
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
      v9 = 0;
      while (1)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 == 1)
        {
          goto LABEL_13;
        }

        if (v10 != 5)
        {
          break;
        }

        if (*(a2 + 2) <= v9)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_8;
        }

LABEL_16:
        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return this;
        }

LABEL_8:
        if (v8 == ++v9)
        {
          goto LABEL_20;
        }
      }

      if (v10 != 2)
      {
        goto LABEL_7;
      }

      v10 = 2;
LABEL_13:
      if (v10 <= v9)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
  }

LABEL_20:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGenericPartialSpecialization@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *a2;
      v9 = *a2;
LABEL_9:
      v11 = (v10 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v9 = 0;
  }

  switch(v8)
  {
    case 1:
      v11 = (a2 + 8);
      goto LABEL_15;
    case 2:
      v11 = (a2 + 16);
      goto LABEL_15;
    case 5:
      v10 = *a2;
      goto LABEL_9;
  }

  v11 = 0;
  while (1)
  {
LABEL_15:
    if (v9 == v11)
    {
      goto LABEL_16;
    }

    v12 = *v9;
    if (*(*v9 + 16) == 96)
    {
      break;
    }

    v9 = (v9 + 8);
  }

  v19 = *(v12 + 18);
  if ((v19 - 1) < 2)
  {
LABEL_26:
    if (*a4)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v19 == 5 && *(v12 + 2))
  {
    v12 = *v12;
    goto LABEL_26;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_16:
  v13 = (a2 + 16);
  if (*(a2 + 8) == 89)
  {
    v14 = "TP";
  }

  else
  {
    v14 = "Tp";
  }

  result = swift::Demangle::__runtime::CharVector::append(this + 1591, v14, 2uLL, this[1593]);
  v16 = *(a2 + 18);
  v17 = a2;
  if ((v16 - 1) >= 2)
  {
    if (v16 == 5)
    {
      v18 = *a2;
      v17 = *a2;
LABEL_33:
      v13 = (v18 + 8 * *(a2 + 2));
      goto LABEL_37;
    }

    v17 = 0;
  }

  switch(v16)
  {
    case 1:
      v13 = (a2 + 8);
      goto LABEL_37;
    case 2:
      goto LABEL_37;
    case 5:
      v18 = *a2;
      goto LABEL_33;
  }

  v13 = 0;
LABEL_37:
  while (v17 != v13)
  {
    if (*(*v17 + 8) != 96)
    {
      if (*a4)
      {
        return result;
      }
    }

    ++v17;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleGenericProtocolWitnessTable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "WG", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleGenericProtocolWitnessTableInstantiationFunction@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "WI", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleResilientProtocolWitnessTable@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "Wr", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleGenericTypeMetadataPattern@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "MP", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGetter@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleGlobal@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  if (*(this + 12752))
  {
    if (*(this + 12752) != 1)
    {
      goto LABEL_6;
    }

    v8 = "$e";
  }

  else
  {
    v8 = "$s";
  }

  this = swift::Demangle::__runtime::CharVector::append(this + 1591, v8, 2uLL, this[1593]);
LABEL_6:
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
      goto LABEL_14;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = (a2 + 8);
      if (v10 == (a2 + 8))
      {
        goto LABEL_54;
      }

      goto LABEL_21;
    case 2:
      v12 = (a2 + 16);
      if (v10 == (a2 + 16))
      {
        goto LABEL_54;
      }

      goto LABEL_21;
    case 5:
      v11 = *a2;
LABEL_14:
      v12 = (v11 + 8 * *(a2 + 2));
      if (v10 == v12)
      {
        goto LABEL_54;
      }

LABEL_21:
      v13 = 0;
      while (1)
      {
        v18 = *(*v10 + 16);
        v19 = 1;
        if (v18 <= 0x98)
        {
          v14 = v18 - 55;
          v15 = v14 > 0x2B;
          v16 = (1 << v14) & 0xDC6010000EFLL;
          if (!v15 && v16 != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v18 - 333 <= 0x27 && ((1 << (v18 - 77)) & 0xC000206E01) != 0)
          {
            goto LABEL_26;
          }

          if (v18 - 268 <= 0x21 && ((1 << (v18 - 12)) & 0x300400001) != 0)
          {
            goto LABEL_26;
          }

          v22 = v18 - 153;
          v15 = v22 > 0x15;
          v23 = (1 << v22) & 0x220001;
          if (!v15 && v23 != 0)
          {
            goto LABEL_26;
          }
        }

        if (*a4)
        {
          return this;
        }

        if (v13)
        {
          break;
        }

LABEL_53:
        v19 = 0;
LABEL_26:
        v10 = (v10 + 8);
        v13 = v19;
        if (v10 == v12)
        {
          goto LABEL_54;
        }
      }

      for (i = v10; ; i = (i - 8))
      {
        v26 = *(a2 + 18);
        v27 = a2;
        if ((v26 - 1) < 2)
        {
          goto LABEL_49;
        }

        if (v26 == 5)
        {
          break;
        }

        if (!i)
        {
          goto LABEL_53;
        }

LABEL_50:
        v28 = *(i - 1);
        if (*a4)
        {
          return this;
        }
      }

      v27 = *a2;
LABEL_49:
      if (i == v27)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
  }

  v12 = 0;
  if (v10)
  {
    goto LABEL_21;
  }

LABEL_54:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleGlobalGetter@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleIVarInitializer@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "fe", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleIVarDestroyer@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

  this = swift::Demangle::__runtime::CharVector::append(v6 + 1591, "fE", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplConvention@<X0>(uint64_t this@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 == (&dword_C + 1))
  {
    v14 = *v3;
    v15 = *(v3 + 5);
    if (v14 != 0x5F65656C6C616340 || v15 != 0x64656E776F5F6565)
    {
      goto LABEL_23;
    }

    v8 = 120;
    goto LABEL_25;
  }

  if (v4 == (&dword_10 + 2))
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = *(v3 + 8);
    if (v9 != 0x5F65656C6C616340 || v10 != 0x65746E6172617567 || v11 != 25701)
    {
      goto LABEL_23;
    }

    v8 = 103;
LABEL_25:
    v19 = *(this + 12736);
    v20 = *(this + 12740);
    v21 = *(this + 12728);
    if (v19 < v20)
    {
LABEL_41:
      v18 = 0;
      a2 = 0;
      v17 = 0;
      *(this + 12736) = v19 + 1;
      v21[v19] = v8;
      goto LABEL_42;
    }

    v22 = *(this + 12744);
    v23 = v22[1];
    if (&v21[v20] == v23)
    {
      v24 = v22[2];
      if ((v23 + 1) <= v24)
      {
        v22[1] = v23 + 1;
        LODWORD(v25) = 1;
LABEL_40:
        *(this + 12740) = v20 + v25;
        goto LABEL_41;
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
      v29 = this;
      v30 = a3;
      v31 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
      a3 = v30;
      v32 = v31;
      this = v29;
      v33 = v32 + v28;
      *v32 = v22[3];
      v23 = (v32 + 1);
      v22[2] = v33;
      v22[3] = v32;
    }

    v22[1] = &v23[v26];
    if (v20)
    {
      v34 = this;
      v35 = v20;
      v36 = a3;
      memcpy(v23, *(this + 12728), v35);
      this = v34;
      a3 = v36;
    }

    *(this + 12728) = v23;
    LODWORD(v20) = *(this + 12740);
    v21 = v23;
    v19 = *(this + 12736);
    goto LABEL_40;
  }

  if (v4 == (&dword_C + 3))
  {
    v5 = *v3;
    v6 = *(v3 + 7);
    if (v5 == 0x5F65656C6C616340 && v6 == 0x64656E776F6E755FLL)
    {
      v8 = 121;
      goto LABEL_25;
    }
  }

LABEL_23:
  v17 = 1928;
  v18 = 15;
LABEL_42:
  *a3 = v18;
  *(a3 + 8) = a2;
  *(a3 + 16) = v17;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplParameterResultDifferentiability@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 18) != 3)
  {
    v5 = 1936;
    v6 = 1;
    goto LABEL_28;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    v6 = 0;
    a2 = 0;
    v5 = 0;
    goto LABEL_28;
  }

  if (v3 == 13 && **a2 == 0x76697265446F6E40 && *(*a2 + 5) == 0x6576697461766972)
  {
    v7 = *(this + 12736);
    v8 = *(this + 12740);
    v9 = *(this + 12728);
    if (v7 < v8)
    {
LABEL_27:
      v6 = 0;
      a2 = 0;
      v5 = 0;
      *(this + 12736) = v7 + 1;
      v9[v7] = 119;
      goto LABEL_28;
    }

    v10 = *(this + 12744);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_26:
        *(this + 12740) = v8 + v13;
        goto LABEL_27;
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
    if (!v11 || &v11[v14] > v12)
    {
      v15 = 2 * v10[4];
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      v10[4] = v15;
      v16 = v15 + 8;
      v17 = this;
      v18 = a3;
      v19 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      a3 = v18;
      v20 = v19;
      this = v17;
      v21 = v20 + v16;
      *v20 = v10[3];
      v11 = (v20 + 1);
      v10[2] = v21;
      v10[3] = v20;
    }

    v10[1] = &v11[v14];
    if (v8)
    {
      v22 = this;
      v23 = v8;
      v24 = a3;
      memcpy(v11, *(this + 12728), v23);
      this = v22;
      a3 = v24;
    }

    *(this + 12728) = v11;
    LODWORD(v8) = *(this + 12740);
    v9 = v11;
    v7 = *(this + 12736);
    goto LABEL_26;
  }

  v5 = 1944;
  v6 = 16;
LABEL_28:
  *a3 = v6;
  *(a3 + 8) = a2;
  *(a3 + 16) = v5;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplParameterSending@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 18) != 3)
  {
    v4 = 1952;
    v5 = 1;
    goto LABEL_9;
  }

  if (*(a2 + 1) == 7 && **a2 == 1684956531 && *(*a2 + 3) == 1735289188)
  {
    v6 = *(this + 12736);
    v7 = *(this + 12740);
    v8 = *(this + 12728);
    if (v6 < v7)
    {
LABEL_26:
      v5 = 0;
      a2 = 0;
      v4 = 0;
      *(this + 12736) = v6 + 1;
      v8[v6] = 84;
      goto LABEL_9;
    }

    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_25:
        *(this + 12740) = v7 + v12;
        goto LABEL_26;
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
    if (!v10 || &v10[v13] > v11)
    {
      v14 = 2 * v9[4];
      if (v14 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      v9[4] = v14;
      v15 = v14 + 8;
      v16 = this;
      v17 = a3;
      v18 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
      a3 = v17;
      v19 = v18;
      this = v16;
      v20 = v19 + v15;
      *v19 = v9[3];
      v10 = (v19 + 1);
      v9[2] = v20;
      v9[3] = v19;
    }

    v9[1] = &v10[v13];
    if (v7)
    {
      v21 = this;
      v22 = v7;
      v23 = a3;
      memcpy(v10, *(this + 12728), v22);
      this = v21;
      a3 = v23;
    }

    *(this + 12728) = v10;
    LODWORD(v7) = *(this + 12740);
    v8 = v10;
    v6 = *(this + 12736);
    goto LABEL_25;
  }

  v4 = 1956;
  v5 = 20;
LABEL_9:
  *a3 = v5;
  *(a3 + 8) = a2;
  *(a3 + 16) = v4;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplParameterIsolated@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 18) != 3)
  {
    v3 = 1964;
    v4 = 1;
    goto LABEL_6;
  }

  if (*(a2 + 1) == 8 && **a2 == 0x646574616C6F7369)
  {
    v5 = *(this + 12736);
    v6 = *(this + 12740);
    v7 = *(this + 12728);
    if (v5 < v6)
    {
LABEL_23:
      v4 = 0;
      a2 = 0;
      v3 = 0;
      *(this + 12736) = v5 + 1;
      v7[v5] = 73;
      goto LABEL_6;
    }

    v8 = *(this + 12744);
    v9 = v8[1];
    if (&v7[v6] == v9)
    {
      v10 = v8[2];
      if ((v9 + 1) <= v10)
      {
        v8[1] = v9 + 1;
        LODWORD(v11) = 1;
LABEL_22:
        *(this + 12740) = v6 + v11;
        goto LABEL_23;
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
    if (!v9 || &v9[v12] > v10)
    {
      v13 = 2 * v8[4];
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      v8[4] = v13;
      v14 = v13 + 8;
      v15 = this;
      v16 = a3;
      v17 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
      a3 = v16;
      v18 = v17;
      this = v15;
      v19 = v18 + v14;
      *v18 = v8[3];
      v9 = (v18 + 1);
      v8[2] = v19;
      v8[3] = v18;
    }

    v8[1] = &v9[v12];
    if (v6)
    {
      v20 = this;
      v21 = v6;
      v22 = a3;
      memcpy(v9, *(this + 12728), v21);
      this = v20;
      a3 = v22;
    }

    *(this + 12728) = v9;
    LODWORD(v6) = *(this + 12740);
    v7 = v9;
    v5 = *(this + 12736);
    goto LABEL_22;
  }

  v3 = 1968;
  v4 = 20;
LABEL_6:
  *a3 = v4;
  *(a3 + 8) = a2;
  *(a3 + 16) = v3;
  return this;
}

uint64_t anonymous namespace::Remangler::mangleImplParameterImplicitLeading@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 18) != 3)
  {
    v6 = 1976;
    v7 = 1;
    goto LABEL_15;
  }

  if (*(a2 + 1) == 26)
  {
    v3 = **a2 == 0x6C706D695F6C6973 && *(*a2 + 8) == 0x61656C5F74696369;
    v4 = v3 && *(*a2 + 16) == 0x7261705F676E6964;
    if (v4 && *(*a2 + 24) == 28001)
    {
      v8 = *(this + 12736);
      v9 = *(this + 12740);
      v10 = *(this + 12728);
      if (v8 < v9)
      {
LABEL_32:
        v7 = 0;
        a2 = 0;
        v6 = 0;
        *(this + 12736) = v8 + 1;
        v10[v8] = 76;
        goto LABEL_15;
      }

      v11 = *(this + 12744);
      v12 = v11[1];
      if (&v10[v9] == v12)
      {
        v13 = v11[2];
        if ((v12 + 1) <= v13)
        {
          v11[1] = v12 + 1;
          LODWORD(v14) = 1;
LABEL_31:
          *(this + 12740) = v9 + v14;
          goto LABEL_32;
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
      if (!v12 || &v12[v15] > v13)
      {
        v16 = 2 * v11[4];
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        v11[4] = v16;
        v17 = v16 + 8;
        v18 = this;
        v19 = a3;
        v20 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
        a3 = v19;
        v21 = v20;
        this = v18;
        v22 = v21 + v17;
        *v21 = v11[3];
        v12 = (v21 + 1);
        v11[2] = v22;
        v11[3] = v21;
      }

      v11[1] = &v12[v15];
      if (v9)
      {
        v23 = this;
        v24 = v9;
        v25 = a3;
        memcpy(v12, *(this + 12728), v24);
        this = v23;
        a3 = v25;
      }

      *(this + 12728) = v12;
      LODWORD(v9) = *(this + 12740);
      v10 = v12;
      v8 = *(this + 12736);
      goto LABEL_31;
    }
  }

  v6 = 1980;
  v7 = 20;
LABEL_15:
  *a3 = v7;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  return this;
}

unsigned int *anonymous namespace::Remangler::mangleImplFunctionConvention@<X0>(unsigned int *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if ((v3 - 1) >= 2)
  {
    if (v3 != 5 || !*(a2 + 2))
    {
      v8 = 2006;
      v9 = 1;
      goto LABEL_55;
    }

    v4 = *a2;
  }

  if (*(*v4 + 18) != 3)
  {
LABEL_54:
    v8 = 2006;
    v9 = 1;
    goto LABEL_55;
  }

  v5 = a2;
  if ((v3 - 1) >= 2)
  {
    v5 = *a2;
  }

  v6 = **v5;
  v7 = *(*v5 + 8);
  v8 = 2006;
  v9 = 1;
  if (v7 <= 6)
  {
    switch(v7)
    {
      case 1:
        if (*v6 != 99)
        {
          v8 = 2006;
          goto LABEL_55;
        }

        v11 = 67;
        break;
      case 5:
        if (*v6 != 1668246626 || *(v6 + 4) != 107)
        {
          goto LABEL_54;
        }

        v11 = 66;
        break;
      case 6:
        if (*v6 != 1752458605 || *(v6 + 4) != 25711)
        {
          goto LABEL_54;
        }

        v11 = 77;
LABEL_58:
        v23 = this[3184];
        v24 = this[3185];
        v25 = *(this + 1591);
        if (v23 < v24)
        {
LABEL_74:
          v9 = 0;
          a2 = 0;
          v8 = 0;
          this[3184] = v23 + 1;
          v25[v23] = v11;
          goto LABEL_55;
        }

        v26 = *(this + 1593);
        v27 = v26[1];
        if (&v25[v24] == v27)
        {
          v28 = v26[2];
          if ((v27 + 1) <= v28)
          {
            v26[1] = v27 + 1;
            LODWORD(v30) = 1;
LABEL_73:
            this[3185] = v24 + v30;
            goto LABEL_74;
          }
        }

        else
        {
          v28 = v26[2];
        }

        v29 = a3;
        if ((2 * v24) <= 4)
        {
          v30 = 4;
        }

        else
        {
          v30 = (2 * v24);
        }

        v31 = v30 + v24;
        if (!v27 || &v27[v31] > v28)
        {
          v32 = 2 * v26[4];
          if (v32 <= v31 + 1)
          {
            v32 = v31 + 1;
          }

          v26[4] = v32;
          v33 = v32 + 8;
          v34 = this;
          v35 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
          this = v34;
          v36 = v35 + v33;
          *v35 = v26[3];
          v27 = (v35 + 1);
          v26[2] = v36;
          v26[3] = v35;
        }

        v26[1] = &v27[v31];
        if (v24)
        {
          v37 = this;
          memcpy(v27, *(this + 1591), v24);
          this = v37;
        }

        *(this + 1591) = v27;
        LODWORD(v24) = this[3185];
        v25 = v27;
        v23 = this[3184];
        a3 = v29;
        goto LABEL_73;
      default:
        goto LABEL_55;
    }

    v15 = a2;
    if (v3 != 2)
    {
      if (v3 != 5 || *(a2 + 2) < 2u)
      {
        goto LABEL_58;
      }

      v15 = *a2;
    }

    if (*(*(v15 + 1) + 16) != 24)
    {
      goto LABEL_58;
    }

    v16 = this[3184];
    v17 = this[3185];
    v18 = *(this + 1591);
    if (v16 < v17)
    {
LABEL_89:
      this[3184] = v16 + 1;
      v18[v16] = 122;
      v52 = this[3184];
      v53 = this[3185];
      v54 = *(this + 1591);
      if (v52 < v53)
      {
        goto LABEL_105;
      }

      v55 = *(this + 1593);
      v56 = v55[1];
      if (&v54[v53] == v56)
      {
        v57 = v55[2];
        if ((v56 + 1) <= v57)
        {
          v55[1] = v56 + 1;
          LODWORD(v59) = 1;
LABEL_104:
          this[3185] = v53 + v59;
LABEL_105:
          this[3184] = v52 + 1;
          v54[v52] = v11;
          v71 = *(a2 + 18);
          if (v71 == 2)
          {
            v72 = a3;
          }

          else
          {
            if (v71 != 5 || *(a2 + 2) < 2u)
            {
              v72 = a3;
              v73 = 0;
LABEL_112:
              v74 = this;
              swift::Demangle::__runtime::CharVector::append(this + 3182, *(v73 + 8), *(this + 1593));
              this = swift::Demangle::__runtime::CharVector::append((v74 + 12728), *v73, *(v73 + 8), *(v74 + 12744));
              v9 = 0;
              a2 = 0;
              v8 = 0;
              a3 = v72;
              goto LABEL_55;
            }

            v72 = a3;
            a2 = *a2;
          }

          v73 = *(a2 + 1);
          goto LABEL_112;
        }
      }

      else
      {
        v57 = v55[2];
      }

      v58 = a2;
      if ((2 * v53) <= 4)
      {
        v59 = 4;
      }

      else
      {
        v59 = (2 * v53);
      }

      v60 = v59 + v53;
      if (!v56 || &v56[v60] > v57)
      {
        v61 = 2 * v55[4];
        if (v61 <= v60 + 1)
        {
          v61 = v60 + 1;
        }

        v55[4] = v61;
        v62 = v61 + 8;
        v63 = this;
        v64 = a3;
        v65 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
        a3 = v64;
        v66 = v65;
        this = v63;
        v67 = v66 + v62;
        *v66 = v55[3];
        v56 = (v66 + 1);
        v55[2] = v67;
        v55[3] = v66;
      }

      v55[1] = &v56[v60];
      if (v53)
      {
        v68 = this;
        v69 = v53;
        v70 = a3;
        memcpy(v56, *(this + 1591), v69);
        this = v68;
        a3 = v70;
      }

      *(this + 1591) = v56;
      LODWORD(v53) = this[3185];
      v54 = v56;
      v52 = this[3184];
      a2 = v58;
      goto LABEL_104;
    }

    v19 = *(this + 1593);
    v20 = v19[1];
    if (&v18[v17] == v20)
    {
      v21 = v19[2];
      if ((v20 + 1) <= v21)
      {
        v19[1] = v20 + 1;
        LODWORD(v38) = 1;
LABEL_88:
        this[3185] = v17 + v38;
        goto LABEL_89;
      }
    }

    else
    {
      v21 = v19[2];
    }

    if ((2 * v17) <= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = (2 * v17);
    }

    v39 = v38 + v17;
    if (!v20 || &v20[v39] > v21)
    {
      v40 = 2 * v19[4];
      if (v40 <= v39 + 1)
      {
        v40 = v39 + 1;
      }

      v19[4] = v40;
      v41 = v40 + 8;
      v42 = this;
      v43 = a2;
      v44 = a3;
      v45 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
      a2 = v43;
      a3 = v44;
      v46 = v45;
      this = v42;
      v47 = v46 + v41;
      *v46 = v19[3];
      v20 = (v46 + 1);
      v19[2] = v47;
      v19[3] = v46;
    }

    v19[1] = &v20[v39];
    if (v17)
    {
      v48 = this;
      v49 = a2;
      v50 = v17;
      v51 = a3;
      memcpy(v20, *(this + 1591), v50);
      a2 = v49;
      this = v48;
      a3 = v51;
    }

    *(this + 1591) = v20;
    LODWORD(v17) = this[3185];
    v18 = v20;
    v16 = this[3184];
    goto LABEL_88;
  }

  switch(v7)
  {
    case 7:
      if (*v6 != 1936682083 || *(v6 + 3) != 1701999987)
      {
        goto LABEL_54;
      }

      v11 = 75;
      goto LABEL_58;
    case 11:
      if (*v6 != 0x74656D5F636A626FLL || *(v6 + 3) != 0x646F6874656D5F63)
      {
        goto LABEL_54;
      }

      v11 = 79;
      goto LABEL_58;
    case 14:
      if (*v6 != 0x5F7373656E746977 || *(v6 + 6) != 0x646F6874656D5F73)
      {
        goto LABEL_54;
      }

      v11 = 87;
      goto LABEL_58;
  }

LABEL_55:
  *a3 = v9;
  *(a3 + 8) = a2;
  *(a3 + 16) = v8;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleImplFunctionType@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *a2;
      v9 = *a2;
      goto LABEL_9;
    }

    v9 = 0;
  }

  if (v8 == 1)
  {
    v11 = (a2 + 8);
    if (v9 != (a2 + 8))
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  if (v8 == 2)
  {
    v11 = (a2 + 16);
    if (v9 != (a2 + 16))
    {
      goto LABEL_10;
    }

LABEL_36:
    v26 = &unk_D3717;
    v27 = 1;
    v19 = 1;
    goto LABEL_37;
  }

  if (v8 != 5)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  v10 = *a2;
LABEL_9:
  v11 = (v10 + 8 * *(a2 + 2));
  if (v9 == v11)
  {
    goto LABEL_36;
  }

LABEL_10:
  v12 = 0;
  v13 = 0;
  v279 = 0;
  v280 = &unk_D3717;
  do
  {
    v14 = *v9;
    v15 = *(*v9 + 16);
    if (v15 > 0x7A)
    {
      if (v15 - 125 >= 3)
      {
        if (v15 == 124)
        {
          v279 = *v9;
          goto LABEL_12;
        }

        if (v15 != 123)
        {
          goto LABEL_12;
        }
      }

      v16 = *(v14 + 18);
      v17 = 1;
      if (v16 != 2)
      {
        if (v16 != 5)
        {
          v48 = 2057;
          goto LABEL_506;
        }

        v18 = *(v14 + 2);
        if (v18 < 2)
        {
          v48 = 2057;
          LODWORD(v17) = 1;
          goto LABEL_506;
        }

        v17 = v18 - 1;
        v14 = *v14;
      }

      if (*a4)
      {
        return this;
      }
    }

    else
    {
      switch(v15)
      {
        case ',':
          goto LABEL_27;
        case '/':
          v280 = "P";
LABEL_27:
          v12 = *v9;
          break;
        case 'y':
          v13 = *v9;
          break;
      }
    }

LABEL_12:
    v9 = (v9 + 8);
  }

  while (v9 != v11);
  if (v12)
  {
    if (*a4)
    {
      return this;
    }
  }

  v19 = v13 == 0;
  if (v13)
  {
    v20 = *(v6 + 12736);
    v21 = *(v6 + 12740);
    v22 = *(v6 + 12728);
    if (v20 >= v21)
    {
      v23 = *(v6 + 12744);
      v24 = v23[1];
      if (&v22[v21] != v24)
      {
        v25 = v23[2];
        goto LABEL_509;
      }

      v25 = v23[2];
      if ((v24 + 1) <= v25)
      {
        v23[1] = v24 + 1;
        LODWORD(v240) = 1;
      }

      else
      {
LABEL_509:
        if ((2 * v21) <= 4)
        {
          v240 = 4;
        }

        else
        {
          v240 = (2 * v21);
        }

        v241 = v240 + v21;
        if (!v24 || &v24[v241] > v25)
        {
          v242 = 2 * v23[4];
          if (v242 <= v241 + 1)
          {
            v242 = v241 + 1;
          }

          v23[4] = v242;
          v243 = v242 + 8;
          v244 = malloc_type_malloc(v242 + 8, 0x2004093837F09uLL);
          v245 = v244 + v243;
          *v244 = v23[3];
          v24 = (v244 + 1);
          v23[2] = v245;
          v23[3] = v244;
        }

        v23[1] = &v24[v241];
        if (v21)
        {
          memcpy(v24, *(v6 + 12728), v21);
        }

        *(v6 + 12728) = v24;
        LODWORD(v21) = *(v6 + 12740);
        v22 = v24;
        v20 = *(v6 + 12736);
        v19 = v13 == 0;
      }

      *(v6 + 12740) = v21 + v240;
    }

    *(v6 + 12736) = v20 + 1;
    v22[v20] = 121;
    v246 = *(v13 + 18);
    v247 = v13;
    if ((v246 - 1) < 2)
    {
LABEL_525:
      v248 = *v247;
    }

    else
    {
      if (v246 == 5 && *(v13 + 2))
      {
        v247 = *v13;
        goto LABEL_525;
      }

      v248 = 0;
    }

    v249 = *(v248 + 18);
    v250 = v248;
    if ((v249 - 1) >= 2)
    {
      if (v249 == 5)
      {
        v251 = *v248;
        v250 = *v248;
        goto LABEL_535;
      }

      v250 = 0;
    }

    switch(v249)
    {
      case 1:
        v252 = (v248 + 8);
        break;
      case 2:
        v252 = (v248 + 16);
        break;
      case 5:
        v251 = *v248;
LABEL_535:
        v252 = (v251 + 8 * *(v248 + 8));
        break;
      default:
        v252 = 0;
        break;
    }

    if (v250 != v252)
    {
      do
      {
        if (*a4)
        {
          return this;
        }

        ++v250;
      }

      while (v250 != v252);
      v246 = *(v13 + 18);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v246 == 2)
    {
LABEL_547:
      if (*a4)
      {
        return this;
      }
    }

    else if (v246 == 5 && *(v13 + 2) >= 2u)
    {
      v13 = *v13;
      goto LABEL_547;
    }
  }

  if (!v279)
  {
    v27 = 1;
    goto LABEL_555;
  }

  v253 = *(v279 + 18);
  v254 = v279;
  if ((v253 - 1) < 2)
  {
    goto LABEL_553;
  }

  if (v253 == 5 && *(v279 + 2))
  {
    v254 = *v279;
LABEL_553:
    v255 = *v254;
  }

  else
  {
    v255 = 0;
  }

  if (*a4)
  {
    return this;
  }

  v256 = *(v6 + 12736);
  v257 = *(v6 + 12740);
  v258 = *(v6 + 12728);
  if (v256 >= v257)
  {
    v259 = *(v6 + 12744);
    v260 = v259[1];
    if (&v258[v257] != v260)
    {
      v261 = v259[2];
      goto LABEL_579;
    }

    v261 = v259[2];
    if ((v260 + 1) <= v261)
    {
      v259[1] = v260 + 1;
      LODWORD(v263) = 1;
    }

    else
    {
LABEL_579:
      v262 = v19;
      if ((2 * v257) <= 4)
      {
        v263 = 4;
      }

      else
      {
        v263 = (2 * v257);
      }

      v264 = v263 + v257;
      if (!v260 || &v260[v264] > v261)
      {
        v265 = 2 * v259[4];
        if (v265 <= v264 + 1)
        {
          v265 = v264 + 1;
        }

        v259[4] = v265;
        v266 = v265 + 8;
        v267 = malloc_type_malloc(v265 + 8, 0x2004093837F09uLL);
        v268 = v267 + v266;
        *v267 = v259[3];
        v260 = (v267 + 1);
        v259[2] = v268;
        v259[3] = v267;
      }

      v259[1] = &v260[v264];
      if (v257)
      {
        memcpy(v260, *(v6 + 12728), v257);
      }

      *(v6 + 12728) = v260;
      LODWORD(v257) = *(v6 + 12740);
      v258 = v260;
      v256 = *(v6 + 12736);
      v19 = v262;
    }

    *(v6 + 12740) = v257 + v263;
  }

  *(v6 + 12736) = v256 + 1;
  v258[v256] = 121;
  v269 = *(v279 + 18);
  v270 = v279;
  if (v269 == 2)
  {
LABEL_595:
    v271 = *(v270 + 1);
  }

  else
  {
    if (v269 == 5 && *(v279 + 2) >= 2u)
    {
      v270 = *v279;
      goto LABEL_595;
    }

    v271 = 0;
  }

  v272 = *(v271 + 18);
  v273 = v271;
  if ((v272 - 1) >= 2)
  {
    if (v272 == 5)
    {
      v274 = *v271;
      v273 = *v271;
      goto LABEL_605;
    }

    v273 = 0;
  }

  switch(v272)
  {
    case 1:
      v275 = (v271 + 8);
      break;
    case 2:
      v275 = (v271 + 16);
      break;
    case 5:
      v274 = *v271;
LABEL_605:
      v275 = (v274 + 8 * *(v271 + 8));
      break;
    default:
      v275 = 0;
      break;
  }

  if (v273 == v275)
  {
    v276 = v279;
    v26 = v280;
  }

  else
  {
    do
    {
      if (*a4)
      {
        return this;
      }

      ++v273;
    }

    while (v273 != v275);
    v276 = v279;
    v26 = v280;
    v269 = *(v279 + 18);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v269 == 5 && *(v276 + 2) >= 3u)
  {
    v277 = *(*v276 + 2);
    v278 = a3 + 1;
    if (*(v277 + 16) == 246)
    {
    }

    else
    {
    }

    if (*a4)
    {
      return this;
    }

    v27 = 0;
LABEL_555:
    v26 = v280;
  }

  else
  {
    v27 = 0;
  }

LABEL_37:
  v28 = *(v6 + 12736);
  v29 = *(v6 + 12740);
  v30 = *(v6 + 12728);
  if (v28 >= v29)
  {
    v281 = v26;
    v31 = *(v6 + 12744);
    v32 = v31[1];
    if (&v30[v29] != v32)
    {
      v33 = v31[2];
      goto LABEL_45;
    }

    v33 = v31[2];
    if ((v32 + 1) <= v33)
    {
      v31[1] = v32 + 1;
      LODWORD(v35) = 1;
      v26 = v281;
    }

    else
    {
LABEL_45:
      v34 = v19;
      if ((2 * v29) <= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = (2 * v29);
      }

      v36 = v35 + v29;
      if (!v32 || &v32[v36] > v33)
      {
        v37 = 2 * v31[4];
        if (v37 <= v36 + 1)
        {
          v37 = v36 + 1;
        }

        v31[4] = v37;
        v38 = v37 + 8;
        v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
        v40 = v39 + v38;
        *v39 = v31[3];
        v32 = (v39 + 1);
        v31[2] = v40;
        v31[3] = v39;
      }

      v31[1] = &v32[v36];
      if (v29)
      {
        memcpy(v32, *(v6 + 12728), v29);
      }

      *(v6 + 12728) = v32;
      LODWORD(v29) = *(v6 + 12740);
      v30 = v32;
      v28 = *(v6 + 12736);
      v26 = v281;
      v19 = v34;
    }

    *(v6 + 12740) = v29 + v35;
  }

  *(v6 + 12736) = v28 + 1;
  v30[v28] = 73;
  if ((v27 & 1) == 0)
  {
    v42 = *(v6 + 12736);
    v43 = *(v6 + 12740);
    v44 = *(v6 + 12728);
    if (v42 < v43)
    {
      goto LABEL_80;
    }

    v45 = *(v6 + 12744);
    v46 = v45[1];
    if (&v44[v43] == v46)
    {
      v47 = v45[2];
      if ((v46 + 1) <= v47)
      {
        v45[1] = v46 + 1;
        LODWORD(v50) = 1;
LABEL_79:
        *(v6 + 12740) = v43 + v50;
LABEL_80:
        *(v6 + 12736) = v42 + 1;
        v44[v42] = 115;
        if (!v19)
        {
          goto LABEL_81;
        }

LABEL_59:
        if (!v26)
        {
          goto LABEL_98;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v47 = v45[2];
    }

    v49 = v19;
    if ((2 * v43) <= 4)
    {
      v50 = 4;
    }

    else
    {
      v50 = (2 * v43);
    }

    v51 = v50 + v43;
    if (!v46 || &v46[v51] > v47)
    {
      v52 = 2 * v45[4];
      if (v52 <= v51 + 1)
      {
        v52 = v51 + 1;
      }

      v45[4] = v52;
      v53 = v52 + 8;
      v54 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
      v55 = v54 + v53;
      *v54 = v45[3];
      v46 = (v54 + 1);
      v45[2] = v55;
      v45[3] = v54;
    }

    v45[1] = &v46[v51];
    if (v43)
    {
      memcpy(v46, *(v6 + 12728), v43);
    }

    *(v6 + 12728) = v46;
    LODWORD(v43) = *(v6 + 12740);
    v44 = v46;
    v42 = *(v6 + 12736);
    v19 = v49;
    goto LABEL_79;
  }

  if (v19)
  {
    goto LABEL_59;
  }

LABEL_81:
  v56 = *(v6 + 12736);
  v57 = *(v6 + 12740);
  v58 = *(v6 + 12728);
  if (v56 >= v57)
  {
    v59 = *(v6 + 12744);
    v60 = v59[1];
    if (&v58[v57] != v60)
    {
      v61 = v59[2];
      goto LABEL_85;
    }

    v61 = v59[2];
    if ((v60 + 1) <= v61)
    {
      v59[1] = v60 + 1;
      LODWORD(v62) = 1;
    }

    else
    {
LABEL_85:
      if ((2 * v57) <= 4)
      {
        v62 = 4;
      }

      else
      {
        v62 = (2 * v57);
      }

      v63 = v62 + v57;
      if (!v60 || &v60[v63] > v61)
      {
        v64 = 2 * v59[4];
        if (v64 <= v63 + 1)
        {
          v64 = v63 + 1;
        }

        v59[4] = v64;
        v65 = v64 + 8;
        v66 = malloc_type_malloc(v64 + 8, 0x2004093837F09uLL);
        v67 = v66 + v65;
        *v66 = v59[3];
        v60 = (v66 + 1);
        v59[2] = v67;
        v59[3] = v66;
      }

      v59[1] = &v60[v63];
      if (v57)
      {
        memcpy(v60, *(v6 + 12728), v57);
      }

      *(v6 + 12728) = v60;
      LODWORD(v57) = *(v6 + 12740);
      v58 = v60;
      v56 = *(v6 + 12736);
    }

    *(v6 + 12740) = v57 + v62;
  }

  *(v6 + 12736) = v56 + 1;
  v58[v56] = 73;
  if (v26)
  {
LABEL_60:
    v41 = strlen(v26);
    goto LABEL_99;
  }

LABEL_98:
  v41 = 0;
LABEL_99:
  this = swift::Demangle::__runtime::CharVector::append((v6 + 12728), v26, v41, *(v6 + 12744));
  v68 = *(a2 + 18);
  v69 = a2;
  if ((v68 - 1) >= 2)
  {
    if (v68 == 5)
    {
      v70 = *a2;
      v69 = *a2;
      goto LABEL_107;
    }

    v69 = 0;
  }

  switch(v68)
  {
    case 1:
      v71 = (a2 + 8);
      if (v69 == (a2 + 8))
      {
        goto LABEL_489;
      }

      break;
    case 2:
      v71 = (a2 + 16);
      if (v69 == (a2 + 16))
      {
        goto LABEL_489;
      }

      break;
    case 5:
      v70 = *a2;
LABEL_107:
      v71 = (v70 + 8 * *(a2 + 2));
      if (v69 == v71)
      {
LABEL_489:
        v229 = *(v6 + 12736);
        v230 = *(v6 + 12740);
        v231 = *(v6 + 12728);
        if (v229 >= v230)
        {
          v232 = *(v6 + 12744);
          v233 = v232[1];
          if (&v231[v230] != v233)
          {
            v234 = v232[2];
            goto LABEL_493;
          }

          v234 = v232[2];
          if ((v233 + 1) <= v234)
          {
            v232[1] = v233 + 1;
            LODWORD(v235) = 1;
          }

          else
          {
LABEL_493:
            if ((2 * v230) <= 4)
            {
              v235 = 4;
            }

            else
            {
              v235 = (2 * v230);
            }

            v236 = v235 + v230;
            if (!v233 || &v233[v236] > v234)
            {
              v237 = 2 * v232[4];
              if (v237 <= v236 + 1)
              {
                v237 = v236 + 1;
              }

              v232[4] = v237;
              v238 = v237 + 8;
              this = malloc_type_malloc(v237 + 8, 0x2004093837F09uLL);
              v239 = this + v238;
              *this = v232[3];
              v233 = (this + 1);
              v232[2] = v239;
              v232[3] = this;
            }

            v232[1] = &v233[v236];
            if (v230)
            {
              this = memcpy(v233, *(v6 + 12728), v230);
            }

            *(v6 + 12728) = v233;
            LODWORD(v230) = *(v6 + 12740);
            v231 = v233;
            v229 = *(v6 + 12736);
          }

          *(v6 + 12740) = v230 + v235;
        }

        LODWORD(v17) = 0;
        v14 = 0;
        v48 = 0;
        *(v6 + 12736) = v229 + 1;
        v231[v229] = 95;
        goto LABEL_506;
      }

      break;
    default:
      v71 = 0;
      if (!v69)
      {
        goto LABEL_489;
      }

      break;
  }

  v282 = v71;
  while (2)
  {
    v14 = *v69;
    v76 = *(*v69 + 16);
    if (v76 <= 0x74)
    {
      if (*(*v69 + 16) <= 0x6Du)
      {
        if (v76 != 107)
        {
          if (v76 != 108)
          {
            if (v76 == 109)
            {
              v77 = *v14;
              goto LABEL_412;
            }

LABEL_119:
            v69 = (v69 + 8);
            if (v69 == v71)
            {
              goto LABEL_489;
            }

            continue;
          }

          v91 = *v14;
          v92 = v14[1];
          v48 = 2132;
          LODWORD(v17) = 15;
          if (v92 > 16)
          {
            if (v92 == 17)
            {
              v128 = *v91;
              v129 = v91[1];
              v130 = *(v91 + 16);
              if (v128 != 0x746E65766E6F6340 || v129 != 0x6E696874286E6F69 || v130 != 41)
              {
                goto LABEL_577;
              }

              v77 = 116;
            }

            else
            {
              if (v92 != 18)
              {
                goto LABEL_506;
              }

              v113 = *v91;
              v114 = v91[1];
              v115 = *(v91 + 8);
              if (v113 != 0x5F65656C6C616340 || v114 != 0x65746E6172617567 || v115 != 25701)
              {
LABEL_577:
                v48 = 2132;
                LODWORD(v17) = 15;
                goto LABEL_506;
              }

              v77 = 103;
            }
          }

          else if (v92 == 13)
          {
            if (*v91 != 0x5F65656C6C616340 || *(v91 + 5) != 0x64656E776F5F6565)
            {
              goto LABEL_577;
            }

            v77 = 120;
          }

          else
          {
            if (v92 != 15)
            {
              goto LABEL_506;
            }

            if (*v91 != 0x5F65656C6C616340 || *(v91 + 7) != 0x64656E776F6E755FLL)
            {
              goto LABEL_577;
            }

            v77 = 121;
          }

LABEL_412:
          v74 = *(v6 + 12736);
          v72 = *(v6 + 12740);
          v73 = *(v6 + 12728);
          if (v74 >= v72)
          {
            v204 = *(v6 + 12744);
            v205 = v204[1];
            if (&v73[v72] != v205)
            {
              v206 = v204[2];
              goto LABEL_416;
            }

            v206 = v204[2];
            if ((v205 + 1) <= v206)
            {
              v204[1] = v205 + 1;
              LODWORD(v207) = 1;
            }

            else
            {
LABEL_416:
              if ((2 * v72) <= 4)
              {
                v207 = 4;
              }

              else
              {
                v207 = (2 * v72);
              }

              v208 = v207 + v72;
              if (!v205 || &v205[v208] > v206)
              {
                v209 = 2 * v204[4];
                if (v209 <= v208 + 1)
                {
                  v209 = v208 + 1;
                }

                v204[4] = v209;
                v210 = v209 + 8;
                this = malloc_type_malloc(v209 + 8, 0x2004093837F09uLL);
                v211 = this + v210;
                *this = v204[3];
                v205 = (this + 1);
                v204[2] = v211;
                v204[3] = this;
              }

              v204[1] = &v205[v208];
              if (v72)
              {
                this = memcpy(v205, *(v6 + 12728), v72);
              }

              *(v6 + 12728) = v205;
              LODWORD(v72) = *(v6 + 12740);
              v73 = v205;
              v74 = *(v6 + 12736);
              v71 = v282;
            }

            v75 = v72 + v207;
LABEL_117:
            *(v6 + 12740) = v75;
          }

LABEL_118:
          *(v6 + 12736) = v74 + 1;
          v73[v74] = v77;
          goto LABEL_119;
        }

        v74 = *(v6 + 12736);
        v89 = *(v6 + 12740);
        v73 = *(v6 + 12728);
        if (v74 < v89)
        {
          v77 = 101;
          goto LABEL_118;
        }

        v107 = *(v6 + 12744);
        v108 = v107[1];
        if (&v73[v89] != v108)
        {
          v109 = v107[2];
          goto LABEL_307;
        }

        v109 = v107[2];
        if ((v108 + 1) <= v109)
        {
          v107[1] = v108 + 1;
          LODWORD(v171) = 1;
        }

        else
        {
LABEL_307:
          if ((2 * v89) <= 4)
          {
            v171 = 4;
          }

          else
          {
            v171 = (2 * v89);
          }

          v172 = v171 + v89;
          if (!v108 || &v108[v172] > v109)
          {
            v173 = 2 * v107[4];
            if (v173 <= v172 + 1)
            {
              v173 = v172 + 1;
            }

            v107[4] = v173;
            v174 = v173 + 8;
            this = malloc_type_malloc(v173 + 8, 0x2004093837F09uLL);
            v175 = this + v174;
            *this = v107[3];
            v108 = (this + 1);
            v107[2] = v175;
            v107[3] = this;
          }

          v107[1] = &v108[v172];
          if (v89)
          {
            this = memcpy(v108, *(v6 + 12728), v89);
          }

          *(v6 + 12728) = v108;
          LODWORD(v89) = *(v6 + 12740);
          v73 = v108;
          v74 = *(v6 + 12736);
          v71 = v282;
        }

        v75 = v89 + v171;
        v77 = 101;
        goto LABEL_117;
      }

      if (v76 != 110)
      {
        if (v76 != 111)
        {
          if (v76 != 116)
          {
            goto LABEL_119;
          }

          v78 = *v14;
          v79 = v14[1];
          if (v79 == (&dword_4 + 2))
          {
            v121 = *v78;
            v122 = *(v78 + 2);
            if (v121 != 2037604672 || v122 != 25454)
            {
LABEL_575:
              v48 = 2161;
              LODWORD(v17) = 18;
              goto LABEL_506;
            }

            v77 = 72;
          }

          else
          {
            if (v79 != (&dword_8 + 1))
            {
              goto LABEL_575;
            }

            v80 = *v78;
            v81 = *(v78 + 8);
            if (v80 != 0x6C6261646E655340 || v81 != 101)
            {
              goto LABEL_575;
            }

            v77 = 104;
          }

          goto LABEL_412;
        }

        v74 = *(v6 + 12736);
        v100 = *(v6 + 12740);
        v73 = *(v6 + 12728);
        if (v74 < v100)
        {
          v77 = 84;
          goto LABEL_118;
        }

        v118 = *(v6 + 12744);
        v119 = v118[1];
        if (&v73[v100] != v119)
        {
          v120 = v118[2];
          goto LABEL_399;
        }

        v120 = v118[2];
        if ((v119 + 1) <= v120)
        {
          v118[1] = v119 + 1;
          LODWORD(v199) = 1;
        }

        else
        {
LABEL_399:
          if ((2 * v100) <= 4)
          {
            v199 = 4;
          }

          else
          {
            v199 = (2 * v100);
          }

          v200 = v199 + v100;
          if (!v119 || &v119[v200] > v120)
          {
            v201 = 2 * v118[4];
            if (v201 <= v200 + 1)
            {
              v201 = v200 + 1;
            }

            v118[4] = v201;
            v202 = v201 + 8;
            this = malloc_type_malloc(v201 + 8, 0x2004093837F09uLL);
            v203 = this + v202;
            *this = v118[3];
            v119 = (this + 1);
            v118[2] = v203;
            v118[3] = this;
          }

          v118[1] = &v119[v200];
          if (v100)
          {
            this = memcpy(v119, *(v6 + 12728), v100);
          }

          *(v6 + 12728) = v119;
          LODWORD(v100) = *(v6 + 12740);
          v73 = v119;
          v74 = *(v6 + 12736);
          v71 = v282;
        }

        v75 = v100 + v199;
        v77 = 84;
        goto LABEL_117;
      }

      v74 = *(v6 + 12736);
      v90 = *(v6 + 12740);
      v73 = *(v6 + 12728);
      if (v74 < v90)
      {
        v77 = 65;
        goto LABEL_118;
      }

      v110 = *(v6 + 12744);
      v111 = v110[1];
      if (&v73[v90] != v111)
      {
        v112 = v110[2];
        goto LABEL_320;
      }

      v112 = v110[2];
      if ((v111 + 1) <= v112)
      {
        v110[1] = v111 + 1;
        LODWORD(v176) = 1;
      }

      else
      {
LABEL_320:
        if ((2 * v90) <= 4)
        {
          v176 = 4;
        }

        else
        {
          v176 = (2 * v90);
        }

        v177 = v176 + v90;
        if (!v111 || &v111[v177] > v112)
        {
          v178 = 2 * v110[4];
          if (v178 <= v177 + 1)
          {
            v178 = v177 + 1;
          }

          v110[4] = v178;
          v179 = v178 + 8;
          this = malloc_type_malloc(v178 + 8, 0x2004093837F09uLL);
          v180 = this + v179;
          *this = v110[3];
          v111 = (this + 1);
          v110[2] = v180;
          v110[3] = this;
        }

        v110[1] = &v111[v177];
        if (v90)
        {
          this = memcpy(v111, *(v6 + 12728), v90);
        }

        *(v6 + 12728) = v111;
        LODWORD(v90) = *(v6 + 12740);
        v73 = v111;
        v74 = *(v6 + 12736);
        v71 = v282;
      }

      v75 = v90 + v176;
      v77 = 65;
      goto LABEL_117;
    }

    break;
  }

  if (*(*v69 + 16) <= 0x7Cu)
  {
    if (v76 == 117)
    {
      if (*a4)
      {
        return this;
      }

      goto LABEL_119;
    }

    if (v76 != 120)
    {
      if (v76 == 123)
      {
        goto LABEL_346;
      }

      goto LABEL_119;
    }

    v94 = *v14;
    v95 = v14[1];
    if (v95 == &dword_C)
    {
      v124 = *v94;
      v125 = *(v94 + 2);
      if (v124 != 0x6E6F5F646C656979 || v125 != 845112675)
      {
LABEL_576:
        v48 = 2149;
        LODWORD(v17) = 17;
        goto LABEL_506;
      }

      v77 = 73;
    }

    else
    {
      if (v95 != (&dword_8 + 2))
      {
        goto LABEL_576;
      }

      if (*v94 == 0x6E6F5F646C656979 && *(v94 + 4) == 25955)
      {
        v77 = 65;
      }

      else
      {
        v97 = *v94;
        v98 = *(v94 + 4);
        if (v97 != 0x616D5F646C656979 || v98 != 31086)
        {
          goto LABEL_576;
        }

        v77 = 71;
      }
    }

    goto LABEL_412;
  }

  if (v76 == 125)
  {
    goto LABEL_238;
  }

  if (v76 == 126)
  {
    v101 = *(v6 + 12736);
    v102 = *(v6 + 12740);
    v103 = *(v6 + 12728);
    if (v101 < v102)
    {
LABEL_345:
      *(v6 + 12736) = v101 + 1;
      v103[v101] = 89;
LABEL_346:
      v187 = *(v14 + 18);
      v188 = v14;
      if ((v187 - 1) >= 2)
      {
        v188 = *v14;
      }

      v189 = *v188;
      this = *v189;
      v190 = v189[1];
      if (v190 > 11)
      {
        switch(v190)
        {
          case 12:
            if (*this == 0x736E6F635F6E6940 && *(this + 2) == 1953390964)
            {
              v192 = 99;
              goto LABEL_453;
            }

            goto LABEL_570;
          case 14:
            if (*this == 0x726175675F6E6940 && *(this + 6) == 0x646565746E617261)
            {
              v192 = 110;
              goto LABEL_453;
            }

            goto LABEL_570;
          case 16:
            if (*this == 0x615F74756F6E6940 && this[1] == 0x656C62617361696CLL)
            {
              v192 = 98;
            }

            else
            {
              this = memcmp(this, "@pack_guaranteed", 0x10uLL);
              if (this)
              {
                goto LABEL_570;
              }

              v192 = 112;
            }

            goto LABEL_453;
        }
      }

      else
      {
        switch(v190)
        {
          case 3:
            if (*this == 26944 && *(this + 2) == 110)
            {
              v192 = 105;
              goto LABEL_453;
            }

            goto LABEL_570;
          case 6:
            if (*this == 1869506880 && *(this + 2) == 29813)
            {
              v192 = 108;
            }

            else
            {
              this = memcmp(this, "@owned", 6uLL);
              if (this)
              {
                goto LABEL_570;
              }

              v192 = 120;
            }

            goto LABEL_453;
          case 7:
            if (*this != 1601071424 || *(this + 3) != 2021155679)
            {
              goto LABEL_570;
            }

            v192 = 88;
LABEL_453:
            v214 = *(v6 + 12736);
            v215 = *(v6 + 12740);
            v216 = *(v6 + 12728);
            if (v214 < v215)
            {
LABEL_469:
              *(v6 + 12736) = v214 + 1;
              v216[v214] = v192;
              for (i = 1; ; ++i)
              {
                v226 = *(v14 + 18);
                if (v226 == 5)
                {
                  if (*(v14 + 2) - 1 <= i)
                  {
                    goto LABEL_119;
                  }
                }

                else if ((v226 - 1) < 2 || i == -1)
                {
                  goto LABEL_119;
                }

                v227 = (*v14)[i];
                v228 = v227[8];
                if (v228 > 0x71)
                {
                  if (v228 == 114)
                  {
                    if (*a4)
                    {
                      return this;
                    }
                  }

                  else
                  {
                    if (v228 != 115)
                    {
LABEL_627:
                      swift::Demangle::__runtime::Node::dump(v14);
                      abort();
                    }

                    if (*a4)
                    {
                      return this;
                    }
                  }
                }

                else if (v228 == 112)
                {
                  if (*a4)
                  {
                    return this;
                  }
                }

                else
                {
                  if (v228 != 113)
                  {
                    goto LABEL_627;
                  }

                  if (*a4)
                  {
                    return this;
                  }
                }
              }
            }

            v217 = *(v6 + 12744);
            v218 = v217[1];
            if (&v216[v215] == v218)
            {
              v219 = v217[2];
              if ((v218 + 1) <= v219)
              {
                v217[1] = v218 + 1;
                LODWORD(v220) = 1;
LABEL_468:
                *(v6 + 12740) = v215 + v220;
                goto LABEL_469;
              }
            }

            else
            {
              v219 = v217[2];
            }

            if ((2 * v215) <= 4)
            {
              v220 = 4;
            }

            else
            {
              v220 = (2 * v215);
            }

            v221 = v220 + v215;
            if (!v218 || &v218[v221] > v219)
            {
              v222 = 2 * v217[4];
              if (v222 <= v221 + 1)
              {
                v222 = v221 + 1;
              }

              v217[4] = v222;
              v223 = v222 + 8;
              this = malloc_type_malloc(v222 + 8, 0x2004093837F09uLL);
              v224 = this + v223;
              *this = v217[3];
              v218 = (this + 1);
              v217[2] = v224;
              v217[3] = this;
            }

            v217[1] = &v218[v221];
            if (v215)
            {
              this = memcpy(v218, *(v6 + 12728), v215);
            }

            *(v6 + 12728) = v218;
            LODWORD(v215) = *(v6 + 12740);
            v216 = v218;
            v214 = *(v6 + 12736);
            v71 = v282;
            goto LABEL_468;
        }
      }

      if (v190 == 11)
      {
        if (*this == 0x746E617261756740 && *(this + 3) == 0x646565746E617261)
        {
          v192 = 103;
          goto LABEL_453;
        }

        goto LABEL_436;
      }

      if (v190 == 8)
      {
        if (*this != 0x64656E776F6E7540)
        {
          goto LABEL_570;
        }

        v192 = 121;
        goto LABEL_453;
      }

      if (v190 != 13)
      {
LABEL_436:
        if (v190 != 11)
        {
          goto LABEL_570;
        }

        if (*this == 0x776F5F6B63617040 && *(this + 3) == 0x64656E776F5F6B63)
        {
          v192 = 118;
        }

        else
        {
          this = memcmp(this, "@pack_inout", 0xBuLL);
          if (this)
          {
            goto LABEL_570;
          }

          v192 = 109;
        }

        goto LABEL_453;
      }

      if (*this == 0x636F6C6C61656440 && *(this + 5) == 0x676E697461636F6CLL)
      {
        v192 = 101;
        goto LABEL_453;
      }

LABEL_570:
      if ((v187 - 1) >= 2)
      {
        if (v187 != 5 || !*(v14 + 2))
        {
          v14 = 0;
          goto LABEL_622;
        }

        v14 = *v14;
      }

      v14 = *v14;
LABEL_622:
      v48 = 2189;
      LODWORD(v17) = 19;
      goto LABEL_506;
    }

    v104 = *(v6 + 12744);
    v105 = v104[1];
    if (&v103[v102] == v105)
    {
      v106 = v104[2];
      if ((v105 + 1) <= v106)
      {
        v104[1] = v105 + 1;
        LODWORD(v181) = 1;
LABEL_344:
        *(v6 + 12740) = v102 + v181;
        goto LABEL_345;
      }
    }

    else
    {
      v106 = v104[2];
    }

    if ((2 * v102) <= 4)
    {
      v181 = 4;
    }

    else
    {
      v181 = (2 * v102);
    }

    v182 = v181 + v102;
    if (!v105 || &v105[v182] > v106)
    {
      v183 = 2 * v104[4];
      if (v183 <= v182 + 1)
      {
        v183 = v182 + 1;
      }

      v104[4] = v183;
      v184 = v183 + 8;
      v185 = malloc_type_malloc(v183 + 8, 0x2004093837F09uLL);
      v186 = v185 + v184;
      *v185 = v104[3];
      v105 = (v185 + 1);
      v104[2] = v186;
      v104[3] = v185;
    }

    v104[1] = &v105[v182];
    if (v102)
    {
      memcpy(v105, *(v6 + 12728), v102);
    }

    *(v6 + 12728) = v105;
    LODWORD(v102) = *(v6 + 12740);
    v103 = v105;
    v101 = *(v6 + 12736);
    v71 = v282;
    goto LABEL_344;
  }

  if (v76 != 127)
  {
    goto LABEL_119;
  }

  v83 = *(v6 + 12736);
  v84 = *(v6 + 12740);
  v85 = *(v6 + 12728);
  if (v83 >= v84)
  {
    v86 = *(v6 + 12744);
    v87 = v86[1];
    if (&v85[v84] != v87)
    {
      v88 = v86[2];
      goto LABEL_225;
    }

    v88 = v86[2];
    if ((v87 + 1) <= v88)
    {
      v86[1] = v87 + 1;
      LODWORD(v133) = 1;
    }

    else
    {
LABEL_225:
      if ((2 * v84) <= 4)
      {
        v133 = 4;
      }

      else
      {
        v133 = (2 * v84);
      }

      v134 = v133 + v84;
      if (!v87 || &v87[v134] > v88)
      {
        v135 = 2 * v86[4];
        if (v135 <= v134 + 1)
        {
          v135 = v134 + 1;
        }

        v86[4] = v135;
        v136 = v135 + 8;
        this = malloc_type_malloc(v135 + 8, 0x2004093837F09uLL);
        v137 = this + v136;
        *this = v86[3];
        v87 = (this + 1);
        v86[2] = v137;
        v86[3] = this;
      }

      v86[1] = &v87[v134];
      if (v84)
      {
        this = memcpy(v87, *(v6 + 12728), v84);
      }

      *(v6 + 12728) = v87;
      LODWORD(v84) = *(v6 + 12740);
      v85 = v87;
      v83 = *(v6 + 12736);
    }

    *(v6 + 12740) = v84 + v133;
  }

  *(v6 + 12736) = v83 + 1;
  v85[v83] = 122;
LABEL_238:
  v138 = *(v14 + 18);
  v139 = v14;
  if ((v138 - 1) >= 2)
  {
    v139 = *v14;
  }

  v140 = *v139;
  v141 = **v139;
  v142 = v140[1];
  if (v142 <= 8)
  {
    if (v142 == 4)
    {
      if (*v141 != 1953853248)
      {
        goto LABEL_564;
      }

      v143 = 114;
    }

    else if (v142 == 6)
    {
      v152 = *v141;
      v153 = *(v141 + 2);
      if (v152 != 1853321024 || v153 != 25701)
      {
        goto LABEL_564;
      }

      v143 = 111;
    }

    else
    {
      if (v142 != 8 || *v141 != 0x64656E776F6E7540)
      {
        goto LABEL_564;
      }

      v143 = 100;
    }

    goto LABEL_278;
  }

  if (v142 != 9)
  {
    if (v142 == 13)
    {
      v155 = *v141;
      v156 = *(v141 + 5);
      if (v155 != 0x6C65726F74756140 || v156 != 0x64657361656C6572)
      {
        goto LABEL_564;
      }

      v143 = 97;
    }

    else
    {
      if (v142 != 22)
      {
        goto LABEL_564;
      }

      v144 = *v141;
      v145 = *(v141 + 1);
      v146 = *(v141 + 14);
      v147 = v144 == 0x64656E776F6E7540 && v145 == 0x705F72656E6E695FLL;
      if (!v147 || v146 != 0x7265746E696F705FLL)
      {
        goto LABEL_564;
      }

      v143 = 117;
    }

LABEL_278:
    v158 = *(v6 + 12736);
    v159 = *(v6 + 12740);
    v160 = *(v6 + 12728);
    if (v158 >= v159)
    {
      v161 = *(v6 + 12744);
      v162 = v161[1];
      if (&v160[v159] != v162)
      {
        v163 = v161[2];
        goto LABEL_282;
      }

      v163 = v161[2];
      if ((v162 + 1) <= v163)
      {
        v161[1] = v162 + 1;
        LODWORD(v164) = 1;
      }

      else
      {
LABEL_282:
        if ((2 * v159) <= 4)
        {
          v164 = 4;
        }

        else
        {
          v164 = (2 * v159);
        }

        v165 = v164 + v159;
        if (!v162 || &v162[v165] > v163)
        {
          v166 = 2 * v161[4];
          if (v166 <= v165 + 1)
          {
            v166 = v165 + 1;
          }

          v161[4] = v166;
          v167 = v166 + 8;
          this = malloc_type_malloc(v166 + 8, 0x2004093837F09uLL);
          v168 = this + v167;
          *this = v161[3];
          v162 = (this + 1);
          v161[2] = v168;
          v161[3] = this;
        }

        v161[1] = &v162[v165];
        if (v159)
        {
          this = memcpy(v162, *(v6 + 12728), v159);
        }

        *(v6 + 12728) = v162;
        LODWORD(v159) = *(v6 + 12740);
        v160 = v162;
        v158 = *(v6 + 12736);
        v71 = v282;
      }

      *(v6 + 12740) = v159 + v164;
    }

    *(v6 + 12736) = v158 + 1;
    v160[v158] = v143;
    if (*(v14 + 18) == 5)
    {
      v169 = *(v14 + 2);
      if (v169 == 4)
      {
        if (*a4)
        {
          return this;
        }

        v170 = *(v14 + 18) == 5 && *(v14 + 2) >= 3u ? (*v14)[2] : 0;
        if (*a4)
        {
          return this;
        }
      }

      else if (v169 == 3)
      {
        if (*a4)
        {
          return this;
        }
      }
    }

    goto LABEL_119;
  }

  v149 = *v141;
  v150 = *(v141 + 8);
  if (v149 == 0x756F5F6B63617040 && v150 == 116)
  {
    v143 = 107;
    goto LABEL_278;
  }

LABEL_564:
  if ((v138 - 1) < 2)
  {
    goto LABEL_568;
  }

  if (v138 == 5 && *(v14 + 2))
  {
    v14 = *v14;
LABEL_568:
    v14 = *v14;
  }

  else
  {
    v14 = 0;
  }

  v48 = 2235;
  LODWORD(v17) = 19;
LABEL_506:
  *a4 = v17;
  *(a4 + 8) = v14;
  *(a4 + 16) = v48;
  return this;
}