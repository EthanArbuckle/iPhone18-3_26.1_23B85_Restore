std::string *flatbuffers::Parser::TokenToStringId@<X0>(std::string *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 != 260)
  {
    return sub_213C8A7F8(a3, a2);
  }

  if (this[2].__r_.__value_.__s.__data_[7] < 0)
  {
    return sub_213C9D958(a3, this[1].__r_.__value_.__l.__size_, this[1].__r_.__value_.__r.__words[2]);
  }

  *&a3->__r_.__value_.__l.__data_ = *&this[1].__r_.__value_.__r.__words[1];
  a3->__r_.__value_.__r.__words[2] = this[2].__r_.__value_.__r.__words[0];
  return this;
}

void flatbuffers::Parser::ParseHexNum(flatbuffers::Parser *this@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X1>, _WORD *a4@<X8>)
{
  v5 = a3;
  if (a3 < 1)
  {
LABEL_8:
    sub_213C9DF08(__p, *this, (*this + a3), a3);
    if (v24 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v22.__r_.__value_.__r.__words[0] = 0;
    v14 = sub_213C97BE4(&v22, v13, 16, 1);
    v15 = v22.__r_.__value_.__r.__words[0];
    if (!v14)
    {
      v15 = 0;
    }

    *a2 = v15;
    *this += v5;
    *a4 = 0;
    if (SHIBYTE(v24) < 0)
    {
      v16 = __p[0];
LABEL_16:
      operator delete(v16);
    }
  }

  else
  {
    v8 = a3;
    v9 = *this;
    while (1)
    {
      v10 = *v9++;
      v11 = (v10 & 0xFFFFFFDF) - 65;
      if ((v10 - 48) >= 0xA && v11 >= 6)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    sub_213C8A4E8(a3);
    v17 = std::string::insert(&v21, 0, "escape code must be followed by ");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v22, " hex digits");
    v20 = v19->__r_.__value_.__r.__words[2];
    *__p = *&v19->__r_.__value_.__l.__data_;
    v24 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(this, a4);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v16 = v21.__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }
  }
}

unsigned __int8 **flatbuffers::Parser::SkipByteOrderMark@<X0>(unsigned __int8 **this@<X0>, _WORD *a2@<X8>)
{
  v3 = *this;
  if (**this == 239)
  {
    *this = v3 + 1;
    if (v3[1] != 187 || (*this = v3 + 2, v3[2] != 191))
    {
      operator new();
    }

    *this = v3 + 3;
  }

  *a2 = 0;
  return this;
}

void flatbuffers::Parser::Next(flatbuffers::Parser *this@<X0>, uint64_t a2@<X8>)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v4 = *(this + 7);
  v5 = *(this + 8);
  v6 = (this + 56);
  while (v5 != v4)
  {
    v7 = *(v5 - 1);
    v5 -= 3;
    if (v7 < 0)
    {
      operator delete(*v5);
    }
  }

  *(this + 8) = v4;
  v8 = *this == *(this + 143);
  if (*(this + 55) < 0)
  {
    **(this + 4) = 0;
    *(this + 5) = 0;
  }

  else
  {
    *(this + 32) = 0;
    *(this + 55) = 0;
  }

  *(this + 24) = 1;
LABEL_8:
  i = *this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = i;
        i = (i + 1);
        *this = i;
        v11 = v10->__r_.__value_.__s.__data_[0];
        v12 = v11;
        *(this + 5) = v12;
        if (v11 > 31)
        {
          break;
        }

        if (v11 > 9)
        {
          if (v11 != 13)
          {
            if (v11 != 10)
            {
              goto LABEL_62;
            }

            *(this + 1) = i;
            ++*(this + 4);
LABEL_61:
            v8 = 1;
            goto LABEL_8;
          }
        }

        else if (v11 != 9)
        {
          if (v11)
          {
            goto LABEL_62;
          }

          *this = v10;
          v25 = 256;
          goto LABEL_53;
        }
      }

      if (v11 > 33)
      {
        break;
      }

      if (v11 != 32)
      {
        goto LABEL_62;
      }
    }

    v13 = (v11 - 34);
    if (v13 > 0x3B)
    {
      goto LABEL_54;
    }

    if (v13 != 13)
    {
      break;
    }

    v14 = i->__r_.__value_.__s.__data_[0];
    if (v14 == 47)
    {
      v17 = -1;
      for (i = &v10->__r_.__value_.__s.__data_[2]; ; i = (i + 1))
      {
        *this = i;
        v18 = i->__r_.__value_.__s.__data_[0];
        v28 = v18 > 0xD;
        v19 = (1 << v18) & 0x2401;
        if (!v28 && v19 != 0)
        {
          break;
        }

        ++v17;
      }

      if (v10->__r_.__value_.__s.__data_[2] == 47)
      {
        if (!v8)
        {
          operator new();
        }

        sub_213C9DF08(&__p, &v10->__r_.__value_.__s.__data_[3], i, v17);
        v48 = *(this + 8);
        if (v48 >= *(this + 9))
        {
          v71 = sub_213CBFAA0(v6, &__p);
          v72 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(this + 8) = v71;
          if (v72 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *v48 = __p;
          *(this + 8) = v48 + 1;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v14 != 42)
      {
        goto LABEL_62;
      }

      v15 = &v10->__r_.__value_.__s.__data_[2];
      while (1)
      {
        *this = v15;
        v16 = *v15;
        if (v16 == 10)
        {
          *(this + 1) = v15;
          ++*(this + 4);
          v16 = *v15;
          goto LABEL_21;
        }

        if (v16 == 42)
        {
          break;
        }

LABEL_21:
        ++v15;
        if (!v16)
        {
          v22 = "end of file in comment";
          goto LABEL_44;
        }
      }

      if (v15[1] != 47)
      {
        v16 = 42;
        goto LABEL_21;
      }

      i = (v15 + 2);
      *this = v15 + 2;
    }
  }

  if (((1 << (v11 - 34)) & 0xA0000000B0004C0) != 0)
  {
LABEL_41:
    *a2 = 0;
    goto LABEL_42;
  }

  if (((1 << (v11 - 34)) & 0x21) != 0)
  {
    v24 = i->__r_.__value_.__s.__data_[0];
    if (v24 == v11)
    {
      goto LABEL_50;
    }

    data = -1;
    while (1)
    {
      if (v24 <= 0x1Fu)
      {
        operator new();
      }

      if (v24 != 92)
      {
        if (data != -1)
        {
          goto LABEL_133;
        }

        v35 = (v24 - 32) >= 0x5F;
        v41 = *(this + 24);
        if (v35)
        {
          v41 = 0;
        }

        *(this + 24) = v41;
        *this = i->__r_.__value_.__r.__words + 1;
        std::string::push_back((this + 32), i->__r_.__value_.__s.__data_[0]);
        goto LABEL_103;
      }

      *(this + 24) = 0;
      *this = i->__r_.__value_.__r.__words + 1;
      v38 = i->__r_.__value_.__s.__data_[1];
      if (data == -1)
      {
        if (i->__r_.__value_.__s.__data_[1] <= 0x65u)
        {
          if (i->__r_.__value_.__s.__data_[1] <= 0x2Eu)
          {
            if (v38 == 34)
            {
              v39 = (this + 32);
              v40 = 34;
            }

            else
            {
              if (v38 != 39)
              {
                goto LABEL_227;
              }

              v39 = (this + 32);
              v40 = 39;
            }
          }

          else
          {
            switch(v38)
            {
              case '/':
                v39 = (this + 32);
                v40 = 47;
                break;
              case '\\':
                v39 = (this + 32);
                v40 = 92;
                break;
              case 'b':
                v39 = (this + 32);
                v40 = 8;
                break;
              default:
                goto LABEL_227;
            }
          }

          goto LABEL_121;
        }

        if (i->__r_.__value_.__s.__data_[1] <= 0x71u)
        {
          if (v38 == 102)
          {
            v39 = (this + 32);
            v40 = 12;
          }

          else
          {
            if (v38 != 110)
            {
              goto LABEL_227;
            }

            v39 = (this + 32);
            v40 = 10;
          }

          goto LABEL_121;
        }

        if (i->__r_.__value_.__s.__data_[1] <= 0x73u)
        {
          if (v38 != 114)
          {
            goto LABEL_227;
          }

          v39 = (this + 32);
          v40 = 13;
          goto LABEL_121;
        }

        if (v38 == 116)
        {
          v39 = (this + 32);
          v40 = 9;
LABEL_121:
          std::string::push_back(v39, v40);
          ++*this;
          goto LABEL_122;
        }

        if (v38 != 117)
        {
          if (v38 != 120)
          {
LABEL_227:
            operator new();
          }

          *this = i->__r_.__value_.__r.__words + 2;
          __p.__r_.__value_.__r.__words[0] = 0;
          flatbuffers::Parser::ParseHexNum(this, &__p, 2, a2);
          *(a2 + 1) = 1;
          if (*a2)
          {
            goto LABEL_42;
          }

          std::string::push_back((this + 32), __p.__r_.__value_.__s.__data_[0]);
          goto LABEL_122;
        }
      }

      else if (v38 != 117)
      {
        goto LABEL_133;
      }

      *this = i->__r_.__value_.__r.__words + 2;
      __dst.__r_.__value_.__r.__words[0] = 0;
      flatbuffers::Parser::ParseHexNum(this, &__dst, 4, a2);
      *(a2 + 1) = 1;
      if (*a2)
      {
        goto LABEL_42;
      }

      if ((__dst.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFC00) == 0xD800)
      {
        if (data != -1)
        {
          operator new();
        }

        data = __dst.__r_.__value_.__l.__data_;
        goto LABEL_103;
      }

      if ((__dst.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFC00) != 0xDC00)
      {
        if (data != -1)
        {
          goto LABEL_133;
        }

        sub_213CAC8F4(__dst.__r_.__value_.__l.__data_, (this + 32));
        goto LABEL_103;
      }

      if (data == -1)
      {
        operator new();
      }

      sub_213CAC8F4((__dst.__r_.__value_.__l.__data_ & 0x3FF | ((data & 0x3FF) << 10)) + 0x10000, (this + 32));
LABEL_122:
      data = -1;
LABEL_103:
      i = *this;
      v24 = **this;
      if (v24 == v12)
      {
        if (data != -1)
        {
LABEL_133:
          operator new();
        }

LABEL_50:
        *this = i->__r_.__value_.__r.__words + 1;
        if (*(this + 24) & 1) != 0 || (*(this + 865))
        {
LABEL_52:
          v25 = 257;
          goto LABEL_53;
        }

        v49 = *(this + 55);
        v50 = *(this + 4);
        v51 = *(this + 5);
        if (v49 >= 0)
        {
          v50 = this + 32;
        }

        __p.__r_.__value_.__r.__words[0] = v50;
        if (v49 < 0)
        {
          v49 = v51;
        }

        v52 = &v50[v49];
        do
        {
          if (__p.__r_.__value_.__r.__words[0] >= v52)
          {
            goto LABEL_52;
          }
        }

        while ((sub_213CBA380(&__p.__r_.__value_.__l.__data_) & 0x80000000) == 0);
        v22 = "illegal UTF-8 sequence";
LABEL_44:
        *&__p.__r_.__value_.__l.__data_ = *v22;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = *(v22 + 14);
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 5632;
        flatbuffers::Parser::Error(this, a2);
LABEL_45:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = __p.__r_.__value_.__r.__words[0];
LABEL_47:
          operator delete(v23);
        }

        goto LABEL_42;
      }
    }
  }

LABEL_54:
  if (v11 == 123 || v11 == 125)
  {
    goto LABEL_41;
  }

LABEL_62:
  v27 = v12 != 43 && v12 != 45;
  v28 = v12 != 95 && (v12 & 0xFFFFFFDF) - 65 > 0x19;
  if (!v28)
  {
    v29 = i->__r_.__value_.__s.__data_[0];
    v30 = (i->__r_.__value_.__s.__data_[0] & 0xFFFFFFDF) - 65;
    goto LABEL_73;
  }

  switch(v11)
  {
    case '+':
LABEL_137:
      v42 = i->__r_.__value_.__s.__data_[0];
      v29 = i->__r_.__value_.__s.__data_[0];
      v30 = (v42 & 0xFFFFFFDF) - 65;
      if (v42 != 95 && v30 > 0x19)
      {
        goto LABEL_139;
      }

LABEL_73:
      if (v30 < 0x1A || v29 == 95 || (v29 - 48) <= 9)
      {
        v31 = &v10->__r_.__value_.__s.__data_[2];
        do
        {
          *this = v31;
          v32 = *v31++;
          v33 = (v32 & 0xFFFFFFDF) - 65;
          v34 = v32 - 48;
          v35 = v32 != 95 && v33 >= 0x1A;
        }

        while (!v35 || v34 < 0xA);
        i = (v31 - 1);
      }

      sub_213C8A8E8((this + 32), v10, i);
      if (v27)
      {
        v25 = 260;
      }

      else
      {
        v25 = 257;
      }

LABEL_53:
      *(this + 5) = v25;
      goto LABEL_41;
    case '.':
      if ((i->__r_.__value_.__s.__data_[0] - 48) >= 0xA)
      {
        goto LABEL_41;
      }

      v43 = 0;
      v44 = 0;
      break;
    case '-':
      goto LABEL_137;
    default:
      if ((v12 - 48) < 0xA)
      {
        v43 = 1;
        v45 = i;
        v44 = 1;
        v46 = v10;
        goto LABEL_144;
      }

LABEL_139:
      if (v11 > 0x2E || ((1 << v11) & 0x680000000000) == 0)
      {
        memset(&__p, 0, sizeof(__p));
        std::string::operator=(&__p, v11);
        if ((v12 - 32) >= 0x5F)
        {
          sub_213C8A4E8(v12);
          v73 = std::string::insert(&__dst, 0, "code: ");
          v74 = v73->__r_.__value_.__r.__words[0];
          v78[0] = v73->__r_.__value_.__l.__size_;
          *(v78 + 7) = *(&v73->__r_.__value_.__r.__words[1] + 7);
          v75 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = v74;
          __p.__r_.__value_.__l.__size_ = v78[0];
          *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v78 + 7);
          *(&__p.__r_.__value_.__s + 23) = v75;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        std::operator+<char>();
        flatbuffers::Parser::Error(this, a2);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_45;
      }

      v43 = 1;
      v44 = 1;
      break;
  }

  if ((i->__r_.__value_.__s.__data_[0] - 48) > 9)
  {
    v47 = 0;
    goto LABEL_164;
  }

  v45 = &v10->__r_.__value_.__s.__data_[2];
  *this = v10->__r_.__value_.__r.__words + 2;
  LOBYTE(v12) = v10->__r_.__value_.__s.__data_[1];
  v46 = i;
LABEL_144:
  v47 = 0;
  if (v44 && v12 == 48)
  {
    if ((v45->__r_.__value_.__s.__data_[0] & 0xDF) == 0x58)
    {
      i = (&v45->__r_.__value_.__l.__data_ + 1);
      *this = v45->__r_.__value_.__r.__words + 1;
      v47 = 1;
LABEL_164:
      v46 = i;
      goto LABEL_165;
    }

    v47 = 0;
  }

  i = v45;
LABEL_165:
  while (2)
  {
    v53 = v43;
    v54 = i->__r_.__value_.__s.__data_[0];
    v55 = i->__r_.__value_.__s.__data_[0];
    v56 = v54 - 48;
    if (v47)
    {
      v57 = (v54 & 0xFFFFFFDF) - 65;
      if (v56 < 0xA || v57 <= 5)
      {
        v59 = &i->__r_.__value_.__s.__data_[1];
        do
        {
          *this = v59;
          v60 = *v59++;
          LOBYTE(v55) = v60;
          v61 = (v60 & 0xFFFFFFDF) - 65;
        }

        while ((v60 - 48) < 0xA || v61 < 6);
LABEL_180:
        v55 = v55;
        i = (v59 - 1);
      }
    }

    else if (v56 <= 9)
    {
      v59 = &i->__r_.__value_.__s.__data_[1];
      do
      {
        *this = v59;
        v63 = *v59++;
        LOBYTE(v55) = v63;
      }

      while ((v63 - 48) < 0xA);
      goto LABEL_180;
    }

    if (v55 == 46)
    {
      v43 = 0;
      i = (i + 1);
      *this = i;
      if (!v53)
      {
        goto LABEL_183;
      }

      continue;
    }

    break;
  }

  if (i <= v46)
  {
    goto LABEL_205;
  }

  if ((v47 & (v53 == 0)) != 0)
  {
    v46 = i;
  }

  v66 = v55 & 0xFFFFFFDF;
  if (v66 != 80)
  {
    v47 = 0;
  }

  if (v66 != 69 && v47 == 0)
  {
    goto LABEL_205;
  }

  v46 = (&i->__r_.__value_.__l.__data_ + 1);
  *this = i->__r_.__value_.__r.__words + 1;
  v68 = i->__r_.__value_.__s.__data_[1];
  if (v68 == 45 || v68 == 43)
  {
    v46 = &i->__r_.__value_.__s.__data_[2];
    *this = i->__r_.__value_.__r.__words + 2;
    v68 = i->__r_.__value_.__s.__data_[2];
  }

  i = v46;
  if ((v68 - 48) <= 9)
  {
    v69 = &v46->__r_.__value_.__s.__data_[1];
    do
    {
      *this = v69;
      v70 = *v69++;
      LOBYTE(v68) = v70;
    }

    while ((v70 - 48) < 0xA);
    v68 = v68;
    i = (v69 - 1);
  }

  if (v68 == 46)
  {
    i = (i + 1);
    *this = i;
  }

  else
  {
    v53 = 0;
LABEL_205:
    if (i > v46)
    {
      sub_213C8A8E8((this + 32), v10, i);
      if (v53)
      {
        v25 = 258;
      }

      else
      {
        v25 = 259;
      }

      goto LABEL_53;
    }
  }

LABEL_183:
  sub_213C9DF08(&__dst, v10, i, i - v10);
  v64 = std::string::insert(&__dst, 0, "invalid number: ");
  v65 = v64->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  flatbuffers::Parser::Error(this, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v23 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_47;
  }

LABEL_42:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_213CAC8F4(unsigned int a1, std::string *this)
{
  v4 = -6;
  v5 = 6;
  v6 = -6;
  while (1)
  {
    v7 = v6 == -6 ? v5 + 1 : v5;
    if (!(a1 >> v7))
    {
      break;
    }

    v6 += 6;
    ++v4;
    v5 += 5;
    if (v6 == 30)
    {
      return;
    }
  }

  std::string::push_back(this, (-2 << ((v6 == -6) - v4)) | (a1 >> (v6 + 6)));
  if (v6 != -6)
  {
    v8 = v4 + 7;
    do
    {
      std::string::push_back(this, (a1 >> v6) & 0x3F | 0x80);
      --v8;
      v6 -= 6;
    }

    while (v8 > 1);
  }
}

void flatbuffers::Parser::Expect(flatbuffers::Parser *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(this + 5) == a2)
  {
    flatbuffers::Parser::Next(this, a3);
    *(a3 + 1) = 1;
    if ((*a3 & 1) == 0)
    {
      *a3 = 0;
    }
  }

  else
  {
    sub_213C8A7F8(&v14, a2);
    v5 = std::string::insert(&v14, 0, "expecting: ");
    v6 = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v15, " instead got: ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::TokenToStringId(this, *(this + 5), &__p);
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

    v11 = std::string::append(&v16, p_p, size);
    v12 = v11->__r_.__value_.__r.__words[2];
    v17 = *&v11->__r_.__value_.__l.__data_;
    v18 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(this, a3);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void flatbuffers::Parser::ParseNamespacing(flatbuffers::Parser *this@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, _BYTE *a4@<X8>)
{
  while (*(this + 5) == 46)
  {
    flatbuffers::Parser::Next(this, a4);
    a4[1] = 1;
    if ((*a4 & 1) == 0)
    {
      std::string::append(a2, ".");
      v8 = *(this + 55);
      v9 = v8 >= 0 ? this + 32 : *(this + 4);
      v10 = *(this + 5);
      v11 = v8 >= 0 ? *(this + 55) : *(this + 5);
      std::string::append(a2, v9, v11);
      if (a3)
      {
        std::string::operator=(a3, (this + 32));
      }

      flatbuffers::Parser::Expect(this, 260, a4);
      a4[1] = 1;
      if ((*a4 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }

  *a4 = 0;
}

uint64_t flatbuffers::Parser::LookupEnum(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 296) + 8) - **(a1 + 296)) >> 3);
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = a1 + 184;
  v6 = v2 & 0x7FFFFFFF;
  while (1)
  {
    flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 296), a2, v6, &__p);
    v7 = sub_213C9DFB8(a1 + 176, &__p);
    v8 = v5 == v7 ? 0 : *(v7 + 56);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v8)
    {
      break;
    }

    if (v6-- < 1)
    {
      return 0;
    }
  }

  return v8;
}

void flatbuffers::Parser::ParseTypeIdent(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    sub_213C9D958(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
  }

  flatbuffers::Parser::Expect(a1, 260, a3);
  a3[1] = 1;
  if ((*a3 & 1) == 0)
  {
    flatbuffers::Parser::ParseNamespacing(a1, &__p, 0, a3);
    a3[1] = 1;
    if ((*a3 & 1) == 0)
    {
      v6 = flatbuffers::Parser::LookupEnum(a1, &__p);
      if (v6)
      {
        v7 = *(v6 + 152);
        *(a2 + 10) = *(v6 + 162);
        *a2 = v7;
        if (*(v6 + 148) == 1)
        {
          *a2 = 16;
        }
      }

      else
      {
        *a2 = 15;
        *(a2 + 8) = flatbuffers::Parser::LookupCreateStruct(a1, &__p, 1, 0);
      }

      *a3 = 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void flatbuffers::Parser::ParseType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 20);
  if (v6 != 91)
  {
    if (v6 != 260)
    {
      strcpy(__p, "illegal type syntax");
      flatbuffers::Parser::Error(a1, a3);
      return;
    }

    if (sub_213C8AAF4((a1 + 32), "BOOL"))
    {
      v7 = 2;
LABEL_5:
      *a2 = v7;
      flatbuffers::Parser::Next(a1, a3);
      goto LABEL_6;
    }

    if (*(a1 + 20) == 260)
    {
      if (sub_213C8AAF4((a1 + 32), "byte"))
      {
LABEL_13:
        v7 = 3;
        goto LABEL_5;
      }

      if (*(a1 + 20) == 260)
      {
        if (sub_213C8AAF4((a1 + 32), "int8"))
        {
          goto LABEL_13;
        }

        if (*(a1 + 20) == 260)
        {
          if (sub_213C8AAF4((a1 + 32), "ubyte"))
          {
LABEL_18:
            v7 = 4;
            goto LABEL_5;
          }

          if (*(a1 + 20) == 260)
          {
            if (sub_213C8AAF4((a1 + 32), "uint8"))
            {
              goto LABEL_18;
            }

            if (*(a1 + 20) == 260)
            {
              if (sub_213C8AAF4((a1 + 32), "short"))
              {
LABEL_30:
                v7 = 5;
                goto LABEL_5;
              }

              if (*(a1 + 20) == 260)
              {
                if (sub_213C8AAF4((a1 + 32), "int16"))
                {
                  goto LABEL_30;
                }

                if (*(a1 + 20) == 260)
                {
                  if (sub_213C8AAF4((a1 + 32), "ushort"))
                  {
LABEL_50:
                    v7 = 6;
                    goto LABEL_5;
                  }

                  if (*(a1 + 20) == 260)
                  {
                    if (sub_213C8AAF4((a1 + 32), "uint16"))
                    {
                      goto LABEL_50;
                    }

                    if (*(a1 + 20) == 260)
                    {
                      if (sub_213C8AAF4((a1 + 32), "int"))
                      {
LABEL_55:
                        v7 = 7;
                        goto LABEL_5;
                      }

                      if (*(a1 + 20) == 260)
                      {
                        if (sub_213C8AAF4((a1 + 32), "int32"))
                        {
                          goto LABEL_55;
                        }

                        if (*(a1 + 20) == 260)
                        {
                          if (sub_213C8AAF4((a1 + 32), "uint"))
                          {
LABEL_62:
                            v7 = 8;
                            goto LABEL_5;
                          }

                          if (*(a1 + 20) == 260)
                          {
                            if (sub_213C8AAF4((a1 + 32), "uint32"))
                            {
                              goto LABEL_62;
                            }

                            if (*(a1 + 20) == 260)
                            {
                              if (sub_213C8AAF4((a1 + 32), "long"))
                              {
LABEL_67:
                                v7 = 9;
                                goto LABEL_5;
                              }

                              if (*(a1 + 20) == 260)
                              {
                                if (sub_213C8AAF4((a1 + 32), "int64"))
                                {
                                  goto LABEL_67;
                                }

                                if (*(a1 + 20) == 260)
                                {
                                  if (sub_213C8AAF4((a1 + 32), "ulong"))
                                  {
LABEL_72:
                                    v7 = 10;
                                    goto LABEL_5;
                                  }

                                  if (*(a1 + 20) == 260)
                                  {
                                    if (sub_213C8AAF4((a1 + 32), "uint64"))
                                    {
                                      goto LABEL_72;
                                    }

                                    if (*(a1 + 20) == 260)
                                    {
                                      if (sub_213C8AAF4((a1 + 32), "half"))
                                      {
LABEL_77:
                                        v7 = -4;
                                        goto LABEL_5;
                                      }

                                      if (*(a1 + 20) == 260)
                                      {
                                        if (sub_213C8AAF4((a1 + 32), "float16"))
                                        {
                                          goto LABEL_77;
                                        }

                                        if (*(a1 + 20) == 260)
                                        {
                                          if (sub_213C8AAF4((a1 + 32), "float"))
                                          {
LABEL_82:
                                            v7 = 11;
                                            goto LABEL_5;
                                          }

                                          if (*(a1 + 20) == 260)
                                          {
                                            if (sub_213C8AAF4((a1 + 32), "float32"))
                                            {
                                              goto LABEL_82;
                                            }

                                            if (*(a1 + 20) == 260)
                                            {
                                              if (sub_213C8AAF4((a1 + 32), "double"))
                                              {
LABEL_87:
                                                v7 = 12;
                                                goto LABEL_5;
                                              }

                                              if (*(a1 + 20) == 260)
                                              {
                                                if (sub_213C8AAF4((a1 + 32), "float64"))
                                                {
                                                  goto LABEL_87;
                                                }

                                                if (*(a1 + 20) == 260 && sub_213C8AAF4((a1 + 32), "string"))
                                                {
                                                  v7 = 13;
                                                  goto LABEL_5;
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

    flatbuffers::Parser::ParseTypeIdent(a1, a2, a3);
LABEL_6:
    *(a3 + 1) = 1;
    if ((*a3 & 1) == 0)
    {
LABEL_7:
      *a3 = 0;
      return;
    }

    return;
  }

  flatbuffers::Parser::Next(a1, a3);
  *(a3 + 1) = 1;
  if (*a3)
  {
    return;
  }

  memset(__p, 0, sizeof(__p));
  v15 = 0;
  v8 = *(a1 + 1204);
  if (v8 < 64)
  {
    *(a1 + 1204) = v8 + 1;
    flatbuffers::Parser::ParseType(a1, __p);
    --*(a1 + 1204);
  }

  else
  {
    flatbuffers::Parser::RecurseError(a1, a3);
  }

  *(a3 + 1) = 1;
  if (*a3)
  {
    return;
  }

  v9 = __p[0];
  if (LODWORD(__p[0]) == 17 || LODWORD(__p[0]) == 14)
  {
    operator new();
  }

  if (*(a1 + 20) == 58)
  {
    flatbuffers::Parser::Next(a1, a3);
    *(a3 + 1) = 1;
    if (*a3)
    {
      return;
    }

    if (*(a1 + 20) != 258)
    {
      operator new();
    }

    v10 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v10 = *v10;
    }

    v13 = 0;
    v11 = sub_213C98C40(&v13, v10, 0, 0);
    v12 = -1;
    if (v13 < 0xFFFF)
    {
      v12 = v13;
    }

    if (!v11 || v13 >> 16 || !v12)
    {
      operator new();
    }

    *a2 = 17;
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = v12;
    flatbuffers::Parser::Next(a1, a3);
    *(a3 + 1) = 1;
    if (*a3)
    {
      return;
    }
  }

  else
  {
    *a2 = 14;
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = 0;
  }

  *(a2 + 4) = v9;
  flatbuffers::Parser::Expect(a1, 93, a3);
  *(a3 + 1) = 1;
  if (!*a3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_213CAD64C(int *a1)
{
  v3 = *a1;
  if (v3 == 15)
  {
    v4 = *(a1 + 1);
    if (*(v4 + 200) == 1)
    {
      return *(v4 + 216);
    }

    return byte_213CC7CD8[v3 + 4];
  }

  if (v3 != 17)
  {
    return byte_213CC7CD8[v3 + 4];
  }

  v10 = v1;
  v11 = v2;
  v6 = *(a1 + 12);
  v7[0] = a1[1];
  v7[1] = 0;
  v8 = *(a1 + 2);
  v9 = v6;
  return sub_213CAD64C(v7) * v6;
}

uint64_t sub_213CAD6D8(uint64_t a1)
{
  LODWORD(v1) = *a1;
  if (*a1 == 17)
  {
    v1 = *(a1 + 4);
    if (v1 == 15)
    {
      v2 = *(a1 + 8);
      if (*(v2 + 200) == 1)
      {
        return *(v2 + 208);
      }
    }
  }

  else
  {
    if (v1 == 15)
    {
      v2 = *(a1 + 8);
      if (*(v2 + 200) == 1)
      {
        return *(v2 + 208);
      }
    }

    v1 = v1;
  }

  return byte_213CC7CD8[v1 + 4];
}

void flatbuffers::Parser::ParseField(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    sub_213C9D958(&v19, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
  }

  if (flatbuffers::Parser::LookupCreateStruct(a1, &v19, 0, 0))
  {
    operator new();
  }

  memset(v18, 0, sizeof(v18));
  sub_213C9DCE4(v18, *(a1 + 56), *(a1 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3));
  flatbuffers::Parser::Expect(a1, 260, a3);
  a3[1] = 1;
  if ((*a3 & 1) == 0)
  {
    flatbuffers::Parser::Expect(a1, 58, a3);
    a3[1] = 1;
    if ((*a3 & 1) == 0)
    {
      __p = 0;
      v15 = 0;
      v17 = 0;
      v16 = 0;
      flatbuffers::Parser::ParseType(a1, &__p, a3);
      a3[1] = 1;
      if ((*a3 & 1) == 0)
      {
        v6 = __p;
        if (*(a2 + 200) == 1)
        {
          if (__p <= 0xFFFFFFFB && (__p - 1) >= 0xC)
          {
            if (__p == 17)
            {
              if ((*(a1 + 1120) & 0xFFFFFFFFFFFFFA54) != 0)
              {
                operator new();
              }

              v13 = 0;
LABEL_32:
              flatbuffers::Parser::AddField();
            }

            if (__p != 15 || (v6 = 15, (*(v15 + 200) & 1) == 0))
            {
              operator new();
            }
          }

          v7 = v6;
          v13 = 0;
        }

        else
        {
          if (__p == 17)
          {
            operator new();
          }

          v7 = __p;
          v13 = 0;
          if (__p == 16)
          {
            sub_213C8B29C(v11, &v19, "_type");
            flatbuffers::Parser::AddField();
          }
        }

        if (v7 == 14 && HIDWORD(__p) == 16)
        {
          v8 = *(a1 + 1120);
          if (v8 && (v8 & 0xFFFFFFFFFFFE7CA4) == 0)
          {
            v11[1] = 0;
            v11[2] = v16;
            v12 = 0;
            v9 = v16[38];
            LODWORD(v11[0]) = 14;
            HIDWORD(v11[0]) = v9;
            sub_213C8B29C(&v10.__r_.__value_.__l.__data_, &v19, "_type");
            flatbuffers::Parser::AddField();
          }

          operator new();
        }

        goto LABEL_32;
      }
    }
  }

  __p = v18;
  sub_213C9DC58(&__p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }
}

void flatbuffers::Parser::ParseSingleValue(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 20);
  if (v10 == 260)
  {
    if (**a1 == 40)
    {
      if (*(a1 + 55) < 0)
      {
        sub_213C9D958(&v96, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        v96 = *(a1 + 32);
      }

      v17 = *a3 + 4;
      v18 = v17 > 0x10;
      v19 = (1 << v17) & 0x18001;
      if (v18 || v19 == 0)
      {
        sub_213C8B29C(&v88.__r_.__value_.__l.__data_, &v96.__r_.__value_.__l.__data_, ": type of argument mismatch, expecting: ");
        v21 = std::string::append(&v88, "double");
        v22 = v21->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = std::string::append(&v89, ", found: ");
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__r.__words[0] = 0;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v25 = std::string::append(&v90, (&off_278171A78)[*a3 + 4]);
        v26 = v25->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v91, ", name: ");
        v28 = v27->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if (a2)
        {
          if (*(a2 + 23) < 0)
          {
            sub_213C9D958(__p, *a2, *(a2 + 8));
          }

          else
          {
            *__p = *a2;
            v87 = *(a2 + 16);
          }
        }

        else
        {
          HIBYTE(v87) = 0;
          LOBYTE(__p[0]) = 0;
        }

        if (v87 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        if (v87 >= 0)
        {
          v30 = SHIBYTE(v87);
        }

        else
        {
          v30 = __p[1];
        }

        v31 = std::string::append(&v92, v29, v30);
        v32 = v31->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v93, ", value: ");
        v34 = v33->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        v37 = *(a3 + 4);
        v36 = a3 + 8;
        v35 = v37;
        v38 = *(v36 + 23);
        if (v38 >= 0)
        {
          v39 = v36;
        }

        else
        {
          v39 = v35;
        }

        v40 = *(v36 + 1);
        if (v38 >= 0)
        {
          v41 = *(v36 + 23);
        }

        else
        {
          v41 = *(v36 + 1);
        }

        v42 = std::string::append(&v94, v39, v41);
        v43 = v42->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        flatbuffers::Parser::Error(a1, a5);
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        flatbuffers::Parser::Next(a1, a5);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          flatbuffers::Parser::Expect(a1, 40, a5);
          *(a5 + 1) = 1;
          if ((*a5 & 1) == 0)
          {
            v57 = *(a1 + 1204);
            if (v57 < 64)
            {
              *(a1 + 1204) = v57 + 1;
              flatbuffers::Parser::ParseSingleValue(a1, a2, a3, 0);
              --*(a1 + 1204);
            }

            else
            {
              flatbuffers::Parser::RecurseError(a1, a5);
            }

            *(a5 + 1) = 1;
            if ((*a5 & 1) == 0)
            {
              flatbuffers::Parser::Expect(a1, 41, a5);
              *(a5 + 1) = 1;
              if ((*a5 & 1) == 0)
              {
                v88.__r_.__value_.__r.__words[0] = 0;
                v83 = (a3 + 8);
                v82 = *(a3 + 4);
                v84 = *(a3 + 55) >= 0 ? (a3 + 8) : *(a3 + 4);
                sub_213CB4F90(a5, v84, a1, &v88);
                *(a5 + 1) = 1;
                if ((*a5 & 1) == 0)
                {
                  if (sub_213C8AAF4(&v96, "deg"))
                  {
                    v85 = *&v88.__r_.__value_.__l.__data_ / 3.14159265 * 180.0;
                  }

                  else if (sub_213C8AAF4(&v96, "rad"))
                  {
                    v85 = *&v88.__r_.__value_.__l.__data_ * 3.14159265 / 180.0;
                  }

                  else if (sub_213C8AAF4(&v96, "sin"))
                  {
                    v85 = sin(*&v88.__r_.__value_.__l.__data_);
                  }

                  else if (sub_213C8AAF4(&v96, "cos"))
                  {
                    v85 = cos(*&v88.__r_.__value_.__l.__data_);
                  }

                  else if (sub_213C8AAF4(&v96, "tan"))
                  {
                    v85 = tan(*&v88.__r_.__value_.__l.__data_);
                  }

                  else if (sub_213C8AAF4(&v96, "asin"))
                  {
                    v85 = asin(*&v88.__r_.__value_.__l.__data_);
                  }

                  else if (sub_213C8AAF4(&v96, "acos"))
                  {
                    v85 = acos(*&v88.__r_.__value_.__l.__data_);
                  }

                  else
                  {
                    if (!sub_213C8AAF4(&v96, "atan"))
                    {
                      operator new();
                    }

                    v85 = atan(*&v88.__r_.__value_.__l.__data_);
                  }

                  sub_213CB9B98(12, &v95, v85);
                  if (*(a3 + 55) < 0)
                  {
                    operator delete(*v83);
                  }

                  *v83 = *&v95.__r_.__value_.__l.__data_;
                  *(a3 + 6) = *(&v95.__r_.__value_.__l + 2);
                  *a5 = 0;
                }
              }
            }
          }
        }
      }

LABEL_38:
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      return;
    }

    v89.__r_.__value_.__s.__data_[0] = 0;
    v11 = *a3;
  }

  else
  {
    v89.__r_.__value_.__s.__data_[0] = 0;
    v11 = *a3;
    if (v10 != 257)
    {
      if (v11 + 4 <= 0x10 && ((1 << (v11 + 4)) & 0x18001) != 0)
      {
        flatbuffers::Parser::TryTypedValue(a1, 259, 1, a3, 11, &v89, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          return;
        }

        if (v89.__r_.__value_.__s.__data_[0])
        {
          goto LABEL_26;
        }
      }

      v14 = v11 > 0xFFFFFFFB || v11 - 1 < 0xC;
      flatbuffers::Parser::TryTypedValue(a1, 258, v14, a3, 7, &v89, a5);
      *(a5 + 1) = 1;
      goto LABEL_19;
    }
  }

  v15 = v10;
  if (v11 == 13)
  {
    flatbuffers::Parser::TryTypedValue(a1, 257, 1, a3, 13, &v89, a5);
    *(a5 + 1) = 1;
    if (*a5)
    {
      return;
    }

    if (v89.__r_.__value_.__s.__data_[0])
    {
      v11 = 13;
      goto LABEL_26;
    }

    v15 = *(a1 + 20);
  }

  if (v15 == 257)
  {
    if (v11 <= 0xFFFFFFFB && v11 - 1 > 0xB)
    {
      goto LABEL_120;
    }

    if ((*(a1 + 24) & 1) == 0)
    {
      operator new();
    }
  }

  if (v11 == 2)
  {
    if (sub_213C8AAF4((a1 + 32), "true"))
    {
      v59 = "1";
      goto LABEL_117;
    }

    if (sub_213C8AAF4((a1 + 32), "false"))
    {
      v59 = "0";
LABEL_117:
      MEMORY[0x21604CF40](a1 + 32, v59);
      flatbuffers::Parser::TryTypedValue(a1, v10, 1, a3, 2, &v89, a5);
      *(a5 + 1) = 1;
      if (*a5)
      {
        return;
      }

      if (v89.__r_.__value_.__s.__data_[0])
      {
        v11 = 2;
        goto LABEL_26;
      }
    }

LABEL_122:
    if (*(a1 + 20) == 257 && (v11 > 0xFFFFFFFB || v11 - 1 <= 0xB))
    {
      v62 = *(a1 + 55);
      if (v62 < 0)
      {
        v63 = *(a1 + 32);
        v62 = *(a1 + 40);
      }

      else
      {
        v63 = a1 + 32;
      }

      v64 = v63 - 1;
      while (v62)
      {
        v65 = *(v64 + v62--);
        if (v65 != 32)
        {
          if (v62 != -1)
          {
            std::string::resize((a1 + 32), v62 + 1, 0);
          }

          break;
        }
      }
    }

    if (v11 + 4 <= 0x10)
    {
      a4 = 1;
      if (((1 << (v11 + 4)) & 0x18001) != 0)
      {
        flatbuffers::Parser::TryTypedValue(a1, v10, 1, a3, 11, &v89, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          return;
        }

        if (v89.__r_.__value_.__s.__data_[0])
        {
          goto LABEL_26;
        }
      }
    }

    if (v11 > 0xFFFFFFFC || v11 - 1 <= 9)
    {
      a4 = 1;
      flatbuffers::Parser::TryTypedValue(a1, v10, 1, a3, 7, &v89, a5);
      *(a5 + 1) = 1;
      if (*a5)
      {
        return;
      }

      if (v89.__r_.__value_.__s.__data_[0])
      {
        goto LABEL_26;
      }
    }

    flatbuffers::Parser::TryTypedValue(a1, 257, v11 == 13, a3, 13, &v89, a5);
    a4 = 1;
    *(a5 + 1) = 1;
LABEL_19:
    if (*a5)
    {
      return;
    }

    goto LABEL_26;
  }

LABEL_120:
  if (v11 <= 0xFFFFFFFC && v11 - 11 < 0xFFFFFFF6)
  {
    goto LABEL_122;
  }

  v60 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v60 = *v60;
  }

  v61 = *v60;
  if (v61 != 95 && (v61 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_122;
  }

  flatbuffers::Parser::ParseEnumFromString(a1, a3, (a3 + 8), a5);
  *(a5 + 1) = 1;
  if (*a5)
  {
    return;
  }

  flatbuffers::Parser::Next(a1, a5);
  *(a5 + 1) = 1;
  if (*a5)
  {
    return;
  }

  v89.__r_.__value_.__s.__data_[0] = 1;
LABEL_26:
  if ((v89.__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    memset(&v96, 0, sizeof(v96));
    flatbuffers::Parser::TokenToStringId(a1, *(a1 + 20), &v91);
    v44 = std::string::insert(&v91, 0, "Cannot assign token starting with '");
    v45 = v44->__r_.__value_.__r.__words[2];
    *&v92.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
    v92.__r_.__value_.__r.__words[2] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v92, "' to value of <");
    v47 = v46->__r_.__value_.__r.__words[2];
    *&v93.__r_.__value_.__l.__data_ = *&v46->__r_.__value_.__l.__data_;
    v93.__r_.__value_.__r.__words[2] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = strlen((&off_278171A78)[v11 + 4]);
    std::string::__init(&v90, (&off_278171A78)[v11 + 4], v48);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v90;
    }

    else
    {
      v49 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v90.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v93, v49, size);
    v52 = v51->__r_.__value_.__r.__words[2];
    *&v94.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
    v94.__r_.__value_.__r.__words[2] = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v94, "> type.");
    v54 = v53->__r_.__value_.__r.__words[2];
    *&v95.__r_.__value_.__l.__data_ = *&v53->__r_.__value_.__l.__data_;
    v95.__r_.__value_.__r.__words[2] = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v95;
    }

    else
    {
      v55 = v95.__r_.__value_.__r.__words[0];
    }

    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v95.__r_.__value_.__l.__size_;
    }

    std::string::append(&v96, v55, v56);
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    flatbuffers::Parser::Error(a1, a5);
    goto LABEL_38;
  }

  if (a4 && ((v16 = *a3, *a3 > 0xFFFFFFFB) || (v16 - 1) <= 0xB))
  {
    switch(v16)
    {
      case -3:
      case 10:
        v96.__r_.__value_.__r.__words[0] = 0;
        if (*(a3 + 55) >= 0)
        {
          v67 = (a3 + 8);
        }

        else
        {
          v67 = *(a3 + 4);
        }

        sub_213CB0C44(a5, v67, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB6154(a3, v96.__r_.__value_.__l.__data_);
          goto LABEL_30;
        }

        break;
      case -2:
      case 8:
        LODWORD(v96.__r_.__value_.__l.__data_) = 0;
        if (*(a3 + 55) >= 0)
        {
          v68 = (a3 + 8);
        }

        else
        {
          v68 = *(a3 + 4);
        }

        sub_213CB0108(a5, v68, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB61C0(a3, LODWORD(v96.__r_.__value_.__l.__data_));
          goto LABEL_30;
        }

        break;
      case -1:
      case 6:
        LOWORD(v96.__r_.__value_.__l.__data_) = 0;
        if (*(a3 + 55) >= 0)
        {
          v66 = (a3 + 8);
        }

        else
        {
          v66 = *(a3 + 4);
        }

        sub_213CB09D8(a5, v66, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB622C(a3, LOWORD(v96.__r_.__value_.__l.__data_));
          goto LABEL_30;
        }

        break;
      case 0:
      case 1:
      case 2:
      case 4:
        v96.__r_.__value_.__s.__data_[0] = 0;
        if (*(a3 + 55) >= 0)
        {
          v58 = (a3 + 8);
        }

        else
        {
          v58 = *(a3 + 4);
        }

        sub_213CB076C(a5, v58, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB629C(a3, v96.__r_.__value_.__s.__data_[0]);
          goto LABEL_30;
        }

        break;
      case 3:
        v96.__r_.__value_.__s.__data_[0] = 0;
        if (*(a3 + 55) >= 0)
        {
          v74 = (a3 + 8);
        }

        else
        {
          v74 = *(a3 + 4);
        }

        sub_213CB42AC(a5, v74, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB629C(a3, v96.__r_.__value_.__s.__data_[0]);
          goto LABEL_30;
        }

        break;
      case 5:
        LOWORD(v96.__r_.__value_.__l.__data_) = 0;
        if (*(a3 + 55) >= 0)
        {
          v75 = (a3 + 8);
        }

        else
        {
          v75 = *(a3 + 4);
        }

        sub_213CB4528(a5, v75, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB6308(a3, SLOWORD(v96.__r_.__value_.__l.__data_));
          goto LABEL_30;
        }

        break;
      case 7:
        LODWORD(v96.__r_.__value_.__l.__data_) = 0;
        if (*(a3 + 55) >= 0)
        {
          v81 = (a3 + 8);
        }

        else
        {
          v81 = *(a3 + 4);
        }

        sub_213CB47A4(a5, v81, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB629C(a3, LODWORD(v96.__r_.__value_.__l.__data_));
          goto LABEL_30;
        }

        break;
      case 9:
        v96.__r_.__value_.__r.__words[0] = 0;
        if (*(a3 + 55) >= 0)
        {
          v73 = (a3 + 8);
        }

        else
        {
          v73 = *(a3 + 4);
        }

        sub_213CB4A20(a5, v73, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB6378(a3, v96.__r_.__value_.__l.__data_);
          goto LABEL_30;
        }

        break;
      case 11:
        LODWORD(v96.__r_.__value_.__l.__data_) = 0;
        v78 = *(a3 + 4);
        v77 = (a3 + 8);
        v76 = v78;
        if (v77[23] >= 0)
        {
          v79 = v77;
        }

        else
        {
          v79 = v76;
        }

        sub_213CB4CD8(a5, v79, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          goto LABEL_30;
        }

        break;
      case 12:
        v96.__r_.__value_.__r.__words[0] = 0;
        v71 = *(a3 + 4);
        v70 = (a3 + 8);
        v69 = v71;
        if (v70[23] >= 0)
        {
          v72 = v70;
        }

        else
        {
          v72 = v69;
        }

        sub_213CB4F90(a5, v72, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          goto LABEL_30;
        }

        break;
      default:
        if (*(a3 + 55) >= 0)
        {
          v80 = (a3 + 8);
        }

        else
        {
          v80 = *(a3 + 4);
        }

        sub_213CB3F58(a5, v80, a1, &v96);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          sub_213CB60DC(a3, v96.__r_.__value_.__l.__data_);
          goto LABEL_30;
        }

        break;
    }
  }

  else
  {
LABEL_30:
    *a5 = 0;
  }
}

uint64_t flatbuffers::EnumDef::FindByValue(uint64_t a1, char *a2)
{
  v10 = 0;
  v3 = *(a1 + 152);
  if (v3 == 10 || v3 == -3)
  {
    v9 = 0;
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (!sub_213C8D174(v5, &v9))
    {
      return 0;
    }

    v6 = v9;
  }

  else
  {
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    if (!sub_213C98C40(&v10, a2, 0, 1))
    {
      return 0;
    }

    v6 = v10;
  }

  for (i = *(a1 + 208); i != *(a1 + 216); ++i)
  {
    result = *i;
    if (*(*i + 136) == v6)
    {
      return result;
    }
  }

  return 0;
}

BOOL sub_213CAFF7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10[0] = a3;
  v6 = *(a1 + 32);
  if (v6 >= *(a1 + 40))
  {
    v7 = sub_213CBFBD0(a1 + 24, v10);
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 1;
  }

  *(a1 + 32) = v7;
  v8 = sub_213CBBD28(a1, a2);
  if (a1 + 8 == v8)
  {
    v10[1] = a2;
    *(sub_213CBFCBC(a1, a2) + 56) = a3;
  }

  return a1 + 8 != v8;
}

void flatbuffers::Parser::ParseString(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    sub_213C9D958(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v12 = *(a1 + 48);
  }

  flatbuffers::Parser::Expect(a1, 257, a3);
  *(a3 + 1) = 1;
  if ((*a3 & 1) == 0)
  {
    if (v12 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (v12 >= 0)
    {
      v7 = SHIBYTE(v12);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_213C97D08(a1 + 336, v6, v7);
    sub_213C8B69C(v8);
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *a3 = 0;
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CB0108(_WORD *a1, char *a2, uint64_t a3, _DWORD *a4)
{
  *&v30 = 0;
  if (sub_213C98C40(&v30, a2, 0, 0))
  {
    if (!DWORD1(v30))
    {
      *a4 = v30;
      *a1 = 0;
      return;
    }

    *a4 = -1;
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD3C8(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }
  }

  else
  {
    *a4 = 0;
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_11:
      operator delete(v13);
    }
  }
}

void flatbuffers::Parser::SkipAnyJsonValue(flatbuffers::Parser *this@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = *(this + 5);
  if (v4 > 256)
  {
    if ((v4 - 257) >= 3 && (v4 != 260 || !sub_213C8AAF4(this + 4, "true") && (*(this + 5) != 260 || !sub_213C8AAF4(this + 4, "false") && (*(this + 5) != 260 || !sub_213C8AAF4(this + 4, "null")))))
    {
      goto LABEL_33;
    }

LABEL_3:
    flatbuffers::Parser::Next(this, a2);
    a2[1] = 1;
    if ((*a2 & 1) == 0)
    {
      *a2 = 0;
    }

    return;
  }

  if (v4 == 91)
  {
    flatbuffers::Parser::Expect(this, 91, a2);
    a2[1] = 1;
    if (*a2)
    {
      return;
    }

    v9 = 0;
    while (1)
    {
      v10 = v9-- != 0;
      v11 = v10;
      if ((*(this + 729) != 1 || !v11) && *(this + 5) == 93)
      {
        goto LABEL_3;
      }

      v12 = *(this + 301);
      if (v12 < 64)
      {
        *(this + 301) = v12 + 1;
        flatbuffers::Parser::SkipAnyJsonValue(this);
        --*(this + 301);
      }

      else
      {
        flatbuffers::Parser::RecurseError(this, a2);
      }

      a2[1] = 1;
      if (*a2)
      {
        return;
      }

      if (*(this + 5) == 93)
      {
        goto LABEL_3;
      }

      if ((*(this + 954) & 1) == 0)
      {
        flatbuffers::Parser::Expect(this, 44, a2);
        a2[1] = 1;
        if (*a2)
        {
          return;
        }
      }

      *a2 = 256;
    }
  }

  if (v4 == 123)
  {
    flatbuffers::Parser::Expect(this, 123, a2);
    a2[1] = 1;
    if (*a2)
    {
      return;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(this + 729) != 1 || v5 == 0;
      if (v6 && *(this + 5) == 125)
      {
        goto LABEL_3;
      }

      memset(&v14, 0, sizeof(v14));
      std::string::operator=(&v14, (this + 32));
      if (*(this + 5) == 257)
      {
        flatbuffers::Parser::Next(this, a2);
      }

      else
      {
        if (*(this + 729))
        {
          v7 = 257;
        }

        else
        {
          v7 = 260;
        }

        flatbuffers::Parser::Expect(this, v7, a2);
      }

      v8 = 1;
      a2[1] = 1;
      if ((*a2 & 1) == 0)
      {
        if (*(this + 954) == 1 && (*(this + 5) | 0x20) == 0x7B || (flatbuffers::Parser::Expect(this, 58, a2), a2[1] = 1, (*a2 & 1) == 0))
        {
          v13 = *(this + 301);
          if (v13 < 64)
          {
            *(this + 301) = v13 + 1;
            flatbuffers::Parser::SkipAnyJsonValue(this);
            --*(this + 301);
          }

          else
          {
            flatbuffers::Parser::RecurseError(this, a2);
          }

          if (*a2 == 1)
          {
            a2[1] = 1;
          }

          else
          {
            ++v5;
            *a2 = 256;
            if (*(this + 5) == 125)
            {
              v8 = 2;
            }

            else
            {
              if ((*(this + 954) & 1) != 0 || (flatbuffers::Parser::Expect(this, 44, a2), v8 = *a2, (v8 & 1) == 0))
              {
                v8 = 0;
                *a2 = 0;
              }

              a2[1] = 1;
            }
          }
        }
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v8)
      {
        if (v8 != 2)
        {
          return;
        }

        goto LABEL_3;
      }
    }
  }

LABEL_33:

  flatbuffers::Parser::TokenError(this, a2);
}

uint64_t sub_213CB0704(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  std::string::operator=((a1 + 32), (a2 + 2));
  if (a1 != a2)
  {
    sub_213C9E228(a1 + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  }

  return a1;
}

void sub_213CB076C(_WORD *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  *&v30 = 0;
  if (sub_213C98C40(&v30, a2, 0, 0))
  {
    if (v30 <= 0xFF)
    {
      *a4 = v30;
      *a1 = 0;
      return;
    }

    *a4 = -1;
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD658(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }
  }

  else
  {
    *a4 = 0;
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_11:
      operator delete(v13);
    }
  }
}

void sub_213CB09D8(_WORD *a1, char *a2, uint64_t a3, _WORD *a4)
{
  *&v30 = 0;
  if (sub_213C98C40(&v30, a2, 0, 0))
  {
    if (!(v30 >> 16))
    {
      *a4 = v30;
      *a1 = 0;
      return;
    }

    *a4 = -1;
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD510(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }
  }

  else
  {
    *a4 = 0;
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_11:
      operator delete(v13);
    }
  }
}

void sub_213CB0C44(_WORD *a1, char *a2, uint64_t a3, flatbuffers::ClassicLocale *a4)
{
  if (sub_213C8D174(a2, a4))
  {
    *a1 = 0;
    return;
  }

  if (*a4)
  {
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD280(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_29;
    }
  }

  else
  {
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
      operator delete(v13);
    }
  }
}

void flatbuffers::Parser::ParseTable(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 20);
  if (v8 != 91)
  {
    flatbuffers::Parser::Expect(a1, 123, &v163);
    HIBYTE(v163) = 1;
    if ((v163 & 1) == 0)
    {
      v10 = 125;
      goto LABEL_21;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  flatbuffers::Parser::Next(a1, &v163);
  HIBYTE(v163) = 1;
  if (v163)
  {
    goto LABEL_5;
  }

  v10 = 93;
LABEL_21:
  v11 = 0;
  while (1)
  {
    v19 = *(a1 + 729) != 1 || v11 == 0;
    if (v19 && *(a1 + 20) == v10)
    {
      break;
    }

    memset(&v164, 0, sizeof(v164));
    if (v8 == 91)
    {
      v20 = *(a2 + 176);
      if (v11 >= (*(a2 + 184) - v20) >> 3)
      {
        operator new();
      }

      std::string::operator=(&v164, *(v20 + 8 * v11));
LABEL_31:
      if (sub_213C8AAF4(&v164, "$schema"))
      {
        flatbuffers::Parser::Expect(a1, 257, &v163);
        goto LABEL_33;
      }

      v25 = sub_213CBBD28(a2 + 152, &v164);
      if (a2 + 160 == v25 || (v26 = *(v25 + 56)) == 0)
      {
        if (*(a1 + 750))
        {
          flatbuffers::Parser::SkipAnyJsonValue(a1, &v163);
LABEL_33:
          if (v163)
          {
LABEL_35:
            v21 = 1;
            HIBYTE(v163) = 1;
            if ((v163 & 1) == 0)
            {
              if (*(a1 + 20) == v10)
              {
                v21 = 2;
              }

              else
              {
                if ((*(a1 + 954) & 1) != 0 || (flatbuffers::Parser::Expect(a1, 44, &v163), v21 = v163, (v163 & 1) == 0))
                {
                  v21 = 0;
                  LOBYTE(v163) = 0;
                }

                HIBYTE(v163) = 1;
              }
            }

            goto LABEL_50;
          }

LABEL_34:
          LOBYTE(v163) = 0;
          goto LABEL_35;
        }

        std::operator+<char>();
        flatbuffers::Parser::Error(a1, &v163);
        if ((SBYTE7(v167) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v130 = __p[0];
      }

      else
      {
        if (*(a1 + 20) == 260)
        {
          v25 = sub_213C8AAF4((a1 + 32), "null");
          if (v25)
          {
            v129 = *(v26 + 152);
            if (v129 <= 0xFFFFFFFB && v129 - 1 >= 0xC)
            {
              flatbuffers::Parser::Next(a1, &v163);
              if (v163)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }
          }
        }

        if (flatbuffers::HideAppleInternal(v25) && *(v26 + 222) == 1)
        {
          std::operator+<char>();
          flatbuffers::Parser::Error(a1, &v163);
          if (SBYTE7(v167) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_35;
        }

        v27 = *(v26 + 168);
        *v172 = *(v26 + 152);
        *&v172[16] = v27;
        if (*(v26 + 207) < 0)
        {
          sub_213C9D958(&v173, *(v26 + 184), *(v26 + 192));
        }

        else
        {
          v173 = *(v26 + 184);
          v174 = *(v26 + 200);
        }

        v175 = *(v26 + 208);
        if (*(v26 + 221) == 1)
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v167 = 0;
          operator new();
        }

        if (*(v26 + 224))
        {
          flatbuffers::Parser::ParseNestedFlatbuffer(a1, v172, v26, v11, a2, &v163);
        }

        else
        {
          v28 = *(a1 + 1204);
          if (v28 >= 64)
          {
            flatbuffers::Parser::RecurseError(a1, &v163);
          }

          else
          {
            *(a1 + 1204) = v28 + 1;
            v9 = flatbuffers::Parser::ParseAnyValue(a1, v172, v26, v11, a2, 0, 0);
            --*(a1 + 1204);
          }
        }

        HIBYTE(v163) = 1;
        if ((v163 & 1) == 0)
        {
          v23 = *(a1 + 1184);
          v158 = v23 - 72 * v11;
          while (1)
          {
            if (v23 == v158)
            {
              goto LABEL_475;
            }

            v22 = *(v23 - 8);
            if (v22 == v26)
            {
              break;
            }

            v23 -= 72;
            if (*(v22 + 208) < *(v26 + 208))
            {
              v158 = v23 + 72;
LABEL_475:
              *__p = *v172;
              v167 = *&v172[16];
              if (SHIBYTE(v174) < 0)
              {
                sub_213C9D958(&v168, v173, *(&v173 + 1));
              }

              else
              {
                v168 = v173;
                v169 = v174;
              }

              v170 = v175;
              v171 = v26;
              sub_213CBFE38((a1 + 1176), v158, __p);
              if (SHIBYTE(v169) < 0)
              {
                operator delete(v168);
              }

              ++v11;
              v157 = 1;
              goto LABEL_481;
            }
          }

          std::operator+<char>();
          flatbuffers::Parser::Error(a1, &v163);
          if (SBYTE7(v167) < 0)
          {
            operator delete(__p[0]);
          }

          v157 = 0;
LABEL_481:
          if (SHIBYTE(v174) < 0)
          {
            operator delete(v173);
          }

          if ((v157 & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        if ((SHIBYTE(v174) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v130 = v173;
      }

      operator delete(v130);
      goto LABEL_35;
    }

    std::string::operator=(&v164, (a1 + 32));
    if (*(a1 + 20) == 257)
    {
      flatbuffers::Parser::Next(a1, &v163);
    }

    else
    {
      if (*(a1 + 729))
      {
        v24 = 257;
      }

      else
      {
        v24 = 260;
      }

      flatbuffers::Parser::Expect(a1, v24, &v163);
    }

    v21 = 1;
    HIBYTE(v163) = 1;
    if ((v163 & 1) == 0)
    {
      if (*(a1 + 954) == 1 && (*(a1 + 20) | 0x20) == 0x7B)
      {
        goto LABEL_31;
      }

      flatbuffers::Parser::Expect(a1, 58, &v163);
      HIBYTE(v163) = 1;
      if ((v163 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_50:
    if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v164.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      if (v21 != 2)
      {
        goto LABEL_6;
      }

      break;
    }
  }

  flatbuffers::Parser::Next(a1, &v163);
  HIBYTE(v163) = 1;
  if ((v163 & 1) == 0)
  {
    if (v8 == 91 && v11 != (*(a2 + 184) - *(a2 + 176)) >> 3)
    {
      operator new();
    }

    LOBYTE(v163) = 0;
  }

LABEL_6:
  v12 = v163;
  *a5 = v163;
  HIBYTE(v163) = 1;
  *(a5 + 1) = 1;
  if (v12)
  {
    return;
  }

  v13 = *(a2 + 176);
  v14 = *(a2 + 184);
  if (v13 != v14)
  {
    v15 = -72 * v11;
    for (i = *(a2 + 176); i != v14; i += 8)
    {
      if (*(*i + 217) == 1)
      {
        if (!v15)
        {
LABEL_254:
          std::operator+<char>();
          v121 = std::string::append(&v165, " in ");
          v122 = v121->__r_.__value_.__r.__words[2];
          *v172 = *&v121->__r_.__value_.__l.__data_;
          *&v172[16] = v122;
          v121->__r_.__value_.__l.__size_ = 0;
          v121->__r_.__value_.__r.__words[2] = 0;
          v121->__r_.__value_.__r.__words[0] = 0;
          v123 = *(a2 + 23);
          if (v123 >= 0)
          {
            v124 = a2;
          }

          else
          {
            v124 = *a2;
          }

          if (v123 >= 0)
          {
            v125 = *(a2 + 23);
          }

          else
          {
            v125 = *(a2 + 8);
          }

          v126 = std::string::append(v172, v124, v125);
          v127 = v126->__r_.__value_.__r.__words[2];
          *__p = *&v126->__r_.__value_.__l.__data_;
          *&v167 = v127;
          v126->__r_.__value_.__l.__size_ = 0;
          v126->__r_.__value_.__r.__words[2] = 0;
          v126->__r_.__value_.__r.__words[0] = 0;
          flatbuffers::Parser::Error(a1, a5);
          if (SBYTE7(v167) < 0)
          {
            operator delete(__p[0]);
          }

          if ((v172[23] & 0x80000000) != 0)
          {
            operator delete(*v172);
          }

          if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
          {
            v128 = v165.__r_.__value_.__r.__words[0];
            goto LABEL_266;
          }

          return;
        }

        v17 = *(a1 + 1184);
        v18 = v15 + v17;
        while (*(v18 + 64) != *i)
        {
          v18 += 72;
          if (v18 == v17)
          {
            goto LABEL_254;
          }
        }
      }
    }
  }

  if (*(a2 + 200) != 1)
  {
    *(a1 + 406) = 1;
LABEL_76:
    v160 = *(a1 + 376);
    v159 = *(a1 + 368) - *(a1 + 384);
    if (*(a2 + 202))
    {
      v29 = 8;
    }

    else
    {
      v29 = 1;
    }

    v30 = -72 * v11;
    v31 = *(a1 + 1184);
    do
    {
      if (v30)
      {
        do
        {
          v32 = v31;
          v34 = *(v31 - 72);
          v31 -= 72;
          v33 = v34;
          v35 = *(v31 + 64);
          if (*(a2 + 202) != 1 || v29 == byte_213CC7CD8[v33 + 4])
          {
            switch(v33)
            {
              case -4:
                v99 = *(v35 + 232);
                v100 = *(a1 + 384);
                if (v100 - *(a1 + 392) >= v99)
                {
                  *(a1 + 384) = v100 - v99;
                  if (!v99)
                  {
                    goto LABEL_224;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v99;
                }

                v50 = 0;
                do
                {
                  *(*(a1 + 384) + v50++) = 0;
                }

                while (v99 != v50);
LABEL_224:
                v103 = (v32 - 40);
                if (*(a2 + 200) == 1)
                {
                  if (*(v32 - 17) < 0)
                  {
                    v103 = *v103;
                  }

                  sub_213CB3F58(a5, v103, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  goto LABEL_407;
                }

                if (*(v32 - 17) < 0)
                {
                  v103 = *v103;
                }

                sub_213CB3F58(a5, v103, a1, __p);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v150 = (v35 + 184);
                if (*(v35 + 207) < 0)
                {
                  v150 = *v150;
                }

                sub_213CB3F58(a5, v150, a1, v172);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                sub_213CB420C(a1 + 336, *(v32 - 16), __p[0], *v172);
                break;
              case -3:
                v101 = *(v35 + 232);
                v102 = *(a1 + 384);
                if (v102 - *(a1 + 392) >= v101)
                {
                  *(a1 + 384) = v102 - v101;
                  if (!v101)
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v101;
                }

                v49 = 0;
                do
                {
                  *(*(a1 + 384) + v49++) = 0;
                }

                while (v101 != v49);
                goto LABEL_111;
              case -2:
                v91 = *(v35 + 232);
                v92 = *(a1 + 384);
                if (v92 - *(a1 + 392) >= v91)
                {
                  *(a1 + 384) = v92 - v91;
                  if (!v91)
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v91;
                }

                v45 = 0;
                do
                {
                  *(*(a1 + 384) + v45++) = 0;
                }

                while (v91 != v45);
                goto LABEL_102;
              case -1:
                v95 = *(v35 + 232);
                v96 = *(a1 + 384);
                if (v96 - *(a1 + 392) >= v95)
                {
                  *(a1 + 384) = v96 - v95;
                  if (!v95)
                  {
                    goto LABEL_122;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v95;
                }

                v47 = 0;
                do
                {
                  *(*(a1 + 384) + v47++) = 0;
                }

                while (v95 != v47);
                goto LABEL_122;
              case 0:
                v83 = *(v35 + 232);
                v84 = *(a1 + 384);
                if (v84 - *(a1 + 392) >= v83)
                {
                  *(a1 + 384) = v84 - v83;
                  if (!v83)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v83;
                }

                v42 = 0;
                do
                {
                  *(*(a1 + 384) + v42++) = 0;
                }

                while (v83 != v42);
                goto LABEL_125;
              case 1:
                v106 = *(v35 + 232);
                v107 = *(a1 + 384);
                if (v107 - *(a1 + 392) >= v106)
                {
                  *(a1 + 384) = v107 - v106;
                  if (!v106)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v106;
                }

                v51 = 0;
                do
                {
                  *(*(a1 + 384) + v51++) = 0;
                }

                while (v106 != v51);
                goto LABEL_125;
              case 2:
                v110 = *(v35 + 232);
                v111 = *(a1 + 384);
                if (v111 - *(a1 + 392) >= v110)
                {
                  *(a1 + 384) = v111 - v110;
                  if (!v110)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v110;
                }

                v53 = 0;
                do
                {
                  *(*(a1 + 384) + v53++) = 0;
                }

                while (v110 != v53);
                goto LABEL_125;
              case 3:
                v97 = *(v35 + 232);
                v98 = *(a1 + 384);
                if (v98 - *(a1 + 392) >= v97)
                {
                  *(a1 + 384) = v98 - v97;
                  if (!v97)
                  {
                    goto LABEL_218;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v97;
                }

                v48 = 0;
                do
                {
                  *(*(a1 + 384) + v48++) = 0;
                }

                while (v97 != v48);
LABEL_218:
                if (*(a2 + 200) == 1)
                {
                  LOBYTE(__p[0]) = 0;
                  v147 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v147 = *v147;
                  }

                  sub_213CB42AC(a5, v147, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

LABEL_129:
                  v9 = sub_213C8C610(a1 + 336, __p[0]);
                }

                else
                {
                  LOBYTE(__p[0]) = 0;
                  v172[0] = 0;
                  v148 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v148 = *v148;
                  }

                  sub_213CB42AC(a5, v148, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v149 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v149 = *v149;
                  }

                  sub_213CB42AC(a5, v149, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  if (LOBYTE(__p[0]) != v172[0] || *(a1 + 416) == 1)
                  {
LABEL_173:
                    v74 = sub_213C8C610(a1 + 336, __p[0]);
                    goto LABEL_161;
                  }
                }

                break;
              case 4:
                v114 = *(v35 + 232);
                v115 = *(a1 + 384);
                if (v115 - *(a1 + 392) >= v114)
                {
                  *(a1 + 384) = v115 - v114;
                  if (!v114)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v114;
                }

                v55 = 0;
                do
                {
                  *(*(a1 + 384) + v55++) = 0;
                }

                while (v114 != v55);
LABEL_125:
                if (*(a2 + 200) == 1)
                {
                  LOBYTE(__p[0]) = 0;
                  v56 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v56 = *v56;
                  }

                  sub_213CB076C(a5, v56, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  goto LABEL_129;
                }

                LOBYTE(__p[0]) = 0;
                v172[0] = 0;
                v70 = (v32 - 40);
                if (*(v32 - 17) < 0)
                {
                  v70 = *v70;
                }

                sub_213CB076C(a5, v70, a1, __p);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v72 = (v35 + 184);
                if (*(v35 + 207) < 0)
                {
                  v72 = *v72;
                }

                sub_213CB076C(a5, v72, a1, v172);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v73 = *(v32 - 16);
                if (LOBYTE(__p[0]) != v172[0] || *(a1 + 416) == 1)
                {
                  goto LABEL_173;
                }

                break;
              case 5:
                v87 = *(v35 + 232);
                v88 = *(a1 + 384);
                if (v88 - *(a1 + 392) >= v87)
                {
                  *(a1 + 384) = v88 - v87;
                  if (!v87)
                  {
                    goto LABEL_198;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v87;
                }

                v44 = 0;
                do
                {
                  *(*(a1 + 384) + v44++) = 0;
                }

                while (v87 != v44);
LABEL_198:
                if (*(a2 + 200) == 1)
                {
                  LOWORD(__p[0]) = 0;
                  v141 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v141 = *v141;
                  }

                  sub_213CB4528(a5, v141, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

LABEL_407:
                  v9 = sub_213CB41A8(a1 + 336, __p[0]);
                }

                else
                {
                  LOWORD(__p[0]) = 0;
                  *v172 = 0;
                  v142 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v142 = *v142;
                  }

                  sub_213CB4528(a5, v142, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v143 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v143 = *v143;
                  }

                  sub_213CB4528(a5, v143, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  if (LOWORD(__p[0]) != *v172 || *(a1 + 416) == 1)
                  {
LABEL_296:
                    v74 = sub_213CB41A8(a1 + 336, __p[0]);
                    goto LABEL_161;
                  }
                }

                break;
              case 6:
                v112 = *(v35 + 232);
                v113 = *(a1 + 384);
                if (v113 - *(a1 + 392) >= v112)
                {
                  *(a1 + 384) = v113 - v112;
                  if (!v112)
                  {
                    goto LABEL_122;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v112;
                }

                v54 = 0;
                do
                {
                  *(*(a1 + 384) + v54++) = 0;
                }

                while (v112 != v54);
LABEL_122:
                if (*(a2 + 200) == 1)
                {
                  LOWORD(__p[0]) = 0;
                  v104 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v104 = *v104;
                  }

                  sub_213CB09D8(a5, v104, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  goto LABEL_407;
                }

                LOWORD(__p[0]) = 0;
                *v172 = 0;
                v105 = (v32 - 40);
                if (*(v32 - 17) < 0)
                {
                  v105 = *v105;
                }

                sub_213CB09D8(a5, v105, a1, __p);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v134 = (v35 + 184);
                if (*(v35 + 207) < 0)
                {
                  v134 = *v134;
                }

                sub_213CB09D8(a5, v134, a1, v172);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v73 = *(v32 - 16);
                if (LOWORD(__p[0]) != *v172 || *(a1 + 416) == 1)
                {
                  goto LABEL_296;
                }

                break;
              case 7:
                v79 = *(v35 + 232);
                v80 = *(a1 + 384);
                if (v80 - *(a1 + 392) >= v79)
                {
                  *(a1 + 384) = v80 - v79;
                  if (!v79)
                  {
                    goto LABEL_182;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v79;
                }

                v41 = 0;
                do
                {
                  *(*(a1 + 384) + v41++) = 0;
                }

                while (v79 != v41);
LABEL_182:
                if (*(a2 + 200) == 1)
                {
                  LODWORD(__p[0]) = 0;
                  v138 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v138 = *v138;
                  }

                  sub_213CB47A4(a5, v138, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

LABEL_203:
                  v9 = sub_213C8C524(a1 + 336, __p[0]);
                }

                else
                {
                  LODWORD(__p[0]) = 0;
                  *v172 = 0;
                  v139 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v139 = *v139;
                  }

                  sub_213CB47A4(a5, v139, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v140 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v140 = *v140;
                  }

                  sub_213CB47A4(a5, v140, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  v133 = __p[0];
                  if (LODWORD(__p[0]) != *v172 || *(a1 + 416) == 1)
                  {
LABEL_289:
                    v74 = sub_213C8C524(a1 + 336, v133);
                    goto LABEL_161;
                  }
                }

                break;
              case 8:
                v85 = *(v35 + 232);
                v86 = *(a1 + 384);
                if (v86 - *(a1 + 392) >= v85)
                {
                  *(a1 + 384) = v86 - v85;
                  if (!v85)
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v85;
                }

                v43 = 0;
                do
                {
                  *(*(a1 + 384) + v43++) = 0;
                }

                while (v85 != v43);
LABEL_102:
                if (*(a2 + 200) == 1)
                {
                  LODWORD(__p[0]) = 0;
                  v89 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v89 = *v89;
                  }

                  sub_213CB0108(a5, v89, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  goto LABEL_203;
                }

                LODWORD(__p[0]) = 0;
                *v172 = 0;
                v90 = (v32 - 40);
                if (*(v32 - 17) < 0)
                {
                  v90 = *v90;
                }

                sub_213CB0108(a5, v90, a1, __p);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v132 = (v35 + 184);
                if (*(v35 + 207) < 0)
                {
                  v132 = *v132;
                }

                sub_213CB0108(a5, v132, a1, v172);
                *(a5 + 1) = 1;
                if (*a5)
                {
                  return;
                }

                v73 = *(v32 - 16);
                v133 = __p[0];
                if (LODWORD(__p[0]) != *v172 || *(a1 + 416) == 1)
                {
                  goto LABEL_289;
                }

                break;
              case 9:
                v108 = *(v35 + 232);
                v109 = *(a1 + 384);
                if (v109 - *(a1 + 392) >= v108)
                {
                  *(a1 + 384) = v109 - v108;
                  if (!v108)
                  {
                    goto LABEL_238;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v108;
                }

                v52 = 0;
                do
                {
                  *(*(a1 + 384) + v52++) = 0;
                }

                while (v108 != v52);
LABEL_238:
                if (*(a2 + 200) == 1)
                {
                  __p[0] = 0;
                  v151 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v151 = *v151;
                  }

                  sub_213CB4A20(a5, v151, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v9 = sub_213CB4C74(a1 + 336, __p[0]);
                }

                else
                {
                  __p[0] = 0;
                  *v172 = 0;
                  v152 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v152 = *v152;
                  }

                  sub_213CB4A20(a5, v152, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v153 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v153 = *v153;
                  }

                  sub_213CB4A20(a5, v153, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  if (__p[0] != *v172 || *(a1 + 416) == 1)
                  {
                    v74 = sub_213CB4C74(a1 + 336, __p[0]);
                    goto LABEL_161;
                  }
                }

                break;
              case 10:
                v77 = *(v35 + 232);
                v78 = *(a1 + 384);
                if (v78 - *(a1 + 392) >= v77)
                {
                  *(a1 + 384) = v78 - v77;
                  if (!v77)
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v77;
                }

                v40 = 0;
                do
                {
                  *(*(a1 + 384) + v40++) = 0;
                }

                while (v77 != v40);
LABEL_111:
                if (*(a2 + 200) == 1)
                {
                  __p[0] = 0;
                  v81 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v81 = *v81;
                  }

                  sub_213CB0C44(a5, v81, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v9 = sub_213C8C438(a1 + 336, __p[0]);
                }

                else
                {
                  __p[0] = 0;
                  *v172 = 0;
                  v82 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v82 = *v82;
                  }

                  sub_213CB0C44(a5, v82, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v131 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v131 = *v131;
                  }

                  sub_213CB0C44(a5, v131, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  if (__p[0] != *v172 || *(a1 + 416) == 1)
                  {
                    v74 = sub_213C8C438(a1 + 336, __p[0]);
                    goto LABEL_161;
                  }
                }

                break;
              case 11:
                v93 = *(v35 + 232);
                v94 = *(a1 + 384);
                if (v94 - *(a1 + 392) >= v93)
                {
                  *(a1 + 384) = v94 - v93;
                  if (!v93)
                  {
                    goto LABEL_212;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v93;
                }

                v46 = 0;
                do
                {
                  *(*(a1 + 384) + v46++) = 0;
                }

                while (v93 != v46);
LABEL_212:
                if (*(a2 + 200) == 1)
                {
                  LODWORD(__p[0]) = 0;
                  v144 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v144 = *v144;
                  }

                  sub_213CB4CD8(a5, v144, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v9 = sub_213CB4F24(a1 + 336, *__p);
                }

                else
                {
                  LODWORD(__p[0]) = 0;
                  *v172 = 0;
                  v145 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v145 = *v145;
                  }

                  sub_213CB4CD8(a5, v145, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v146 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v146 = *v146;
                  }

                  sub_213CB4CD8(a5, v146, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  if (*__p != *v172 || *(a1 + 416) == 1)
                  {
                    v74 = sub_213CB4F24(a1 + 336, *__p);
                    goto LABEL_161;
                  }
                }

                break;
              case 12:
                v75 = *(v35 + 232);
                v76 = *(a1 + 384);
                if (v76 - *(a1 + 392) >= v75)
                {
                  *(a1 + 384) = v76 - v75;
                  if (!v75)
                  {
                    goto LABEL_176;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v75;
                }

                v39 = 0;
                do
                {
                  *(*(a1 + 384) + v39++) = 0;
                }

                while (v75 != v39);
LABEL_176:
                if (*(a2 + 200) == 1)
                {
                  __p[0] = 0;
                  v135 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v135 = *v135;
                  }

                  sub_213CB4F90(a5, v135, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v9 = sub_213CB51DC(a1 + 336, *__p);
                }

                else
                {
                  __p[0] = 0;
                  *v172 = 0;
                  v136 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v136 = *v136;
                  }

                  sub_213CB4F90(a5, v136, a1, __p);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v137 = (v35 + 184);
                  if (*(v35 + 207) < 0)
                  {
                    v137 = *v137;
                  }

                  sub_213CB4F90(a5, v137, a1, v172);
                  *(a5 + 1) = 1;
                  if (*a5)
                  {
                    return;
                  }

                  v73 = *(v32 - 16);
                  if (*__p != *v172 || *(a1 + 416) == 1)
                  {
                    v74 = sub_213CB51DC(a1 + 336, *__p);
LABEL_161:
                    v9 = sub_213C982A0((a1 + 336), v73, v74);
                  }
                }

                break;
              case 13:
                v36 = *(v35 + 232);
                v37 = *(a1 + 384);
                if (v37 - *(a1 + 392) >= v36)
                {
                  *(a1 + 384) = v37 - v36;
                  if (!v36)
                  {
                    goto LABEL_146;
                  }
                }

                else
                {
                  v9 = sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v36;
                }

                v38 = 0;
                do
                {
                  *(*(a1 + 384) + v38++) = 0;
                }

                while (v36 != v38);
                goto LABEL_146;
              case 14:
                v58 = *(v35 + 232);
                v59 = *(a1 + 384);
                if (v59 - *(a1 + 392) >= v58)
                {
                  *(a1 + 384) = v59 - v58;
                  if (!v58)
                  {
                    goto LABEL_146;
                  }
                }

                else
                {
                  v9 = sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v58;
                }

                v60 = 0;
                do
                {
                  *(*(a1 + 384) + v60++) = 0;
                }

                while (v58 != v60);
                goto LABEL_146;
              case 15:
                v61 = *(v35 + 232);
                v62 = *(a1 + 384);
                if (v62 - *(a1 + 392) >= v61)
                {
                  *(a1 + 384) = v62 - v61;
                  if (!v61)
                  {
                    goto LABEL_146;
                  }
                }

                else
                {
                  v9 = sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v61;
                }

                v63 = 0;
                do
                {
                  *(*(a1 + 384) + v63++) = 0;
                }

                while (v61 != v63);
                goto LABEL_146;
              case 16:
                v64 = *(v35 + 232);
                v65 = *(a1 + 384);
                if (v65 - *(a1 + 392) >= v64)
                {
                  *(a1 + 384) = v65 - v64;
                  if (!v64)
                  {
                    goto LABEL_146;
                  }
                }

                else
                {
                  v9 = sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v64;
                }

                v66 = 0;
                do
                {
                  *(*(a1 + 384) + v66++) = 0;
                }

                while (v64 != v66);
LABEL_146:
                if (*(v35 + 152) == 15 && (v67 = *(v35 + 160), *(v67 + 200) == 1))
                {
                  v9 = flatbuffers::Parser::SerializeStruct(v9, a1 + 336, v67, v31);
                }

                else
                {
                  v68 = (v32 - 40);
                  if (*(v32 - 17) < 0)
                  {
                    v68 = *v68;
                  }

                  v69 = atoi(v68);
                  *a5 = 256;
                  v9 = sub_213C8C688((a1 + 336), *(v32 - 16), v69);
                }

                break;
              case 17:
                v116 = *(v35 + 232);
                v117 = *(a1 + 384);
                if (v117 - *(a1 + 392) >= v116)
                {
                  *(a1 + 384) = v117 - v116;
                  if (!v116)
                  {
                    goto LABEL_248;
                  }
                }

                else
                {
                  sub_213C97F80((a1 + 336), *(v35 + 232));
                  *(a1 + 384) -= v116;
                }

                v57 = 0;
                do
                {
                  *(*(a1 + 384) + v57++) = 0;
                }

                while (v116 != v57);
LABEL_248:
                v118 = (v32 - 40);
                if (*(v32 - 17) < 0)
                {
                  v118 = *v118;
                }

                v9 = sub_213CAD64C(v31);
                if (v9)
                {
                  v119 = v9;
                  v120 = *(a1 + 384);
                  if (v120 - *(a1 + 392) < v9)
                  {
                    sub_213C97F80((a1 + 336), v9);
                    v120 = *(a1 + 384);
                  }

                  *(a1 + 384) = v120 - v119;
                  v9 = memcpy((v120 - v119), v118, v119);
                }

                break;
              default:
                break;
            }
          }
        }

        while (v31 != v30 + *(a1 + 1184));
        v31 = *(a1 + 1184);
      }

      v71 = v29 >= 2;
      v29 >>= 1;
    }

    while (v71);
    if (v11)
    {
      v154 = v31 - 72;
      do
      {
        if (*(v154 + 55) < 0)
        {
          operator delete(*(v154 + 32));
        }

        *(a1 + 1184) = v154;
        v154 -= 72;
        --v11;
      }

      while (v11);
    }

    if (*(a2 + 200))
    {
      v155 = *(a1 + 384);
      *(a1 + 392) -= 8 * *(a1 + 400);
      *(a1 + 400) = 0;
      *(a1 + 404) = 0;
      MEMORY[0x21604CF50](a3, v155, *(a2 + 216));
      *(a1 + 384) += *(a2 + 216);
    }

    else
    {
      v156 = sub_213C8C880(a1 + 336, v159 + v160);
      if (a4)
      {
        *a4 = v156;
      }

      if (a3)
      {
        sub_213C8B69C(v156);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = *__p;
        *(a3 + 16) = v167;
      }
    }

    *a5 = 0;
    return;
  }

  if (v11 == (v14 - v13) >> 3)
  {
    v9 = sub_213C8C398(a1 + 336, *(a2 + 208));
    goto LABEL_76;
  }

  std::operator+<char>();
  flatbuffers::Parser::Error(a1, a5);
  if (SBYTE7(v167) < 0)
  {
    v128 = __p[0];
LABEL_266:
    operator delete(v128);
  }
}

void flatbuffers::Parser::ParseVector(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  flatbuffers::Parser::Expect(a1, 91, &v52);
  HIBYTE(v52) = 1;
  v10 = v52;
  if (v52)
  {
    goto LABEL_2;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 729) != 1 || v11 == 0;
    if (v12 && *(a1 + 20) == 93)
    {
      break;
    }

    HIBYTE(v67) = 1;
    LOWORD(v66) = 48;
    v68 = -1;
    v65[0] = *a2;
    *(v65 + 10) = *(a2 + 10);
    v13 = *(a1 + 1204);
    if (v13 >= 64)
    {
      flatbuffers::Parser::RecurseError(a1, &v52);
    }

    else
    {
      *(a1 + 1204) = v13 + 1;
      flatbuffers::Parser::ParseAnyValue(a1, v65, a4, a5, 0, v11, 1);
      --*(a1 + 1204);
    }

    HIBYTE(v52) = 1;
    v10 = v52;
    if ((v52 & 1) == 0)
    {
      v53 = v65[0];
      v54 = v65[1];
      if (SHIBYTE(v67) < 0)
      {
        sub_213C9D958(&v55, v66, *(&v66 + 1));
      }

      else
      {
        v55 = v66;
        v56 = v67;
      }

      v57 = v68;
      v58 = 0;
      *v59 = v53;
      v60 = v54;
      __p = v55;
      v62 = v56;
      v55 = 0uLL;
      v56 = 0;
      v63 = v68;
      v64 = 0;
      sub_213C9E758((a1 + 1176), v59);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      v10 = 0;
      v52 = 0;
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
      v10 = v52;
    }

    HIBYTE(v52) = 1;
    if (v10)
    {
      goto LABEL_2;
    }

    if (*(a1 + 20) == 93)
    {
      LODWORD(v11) = v11 + 1;
      break;
    }

    if ((*(a1 + 954) & 1) != 0 || (flatbuffers::Parser::Expect(a1, 44, &v52), v10 = v52, (v52 & 1) == 0))
    {
      v10 = 0;
      LOBYTE(v52) = 0;
    }

    HIBYTE(v52) = 1;
    v11 = (v11 + 1);
    if (v10)
    {
      goto LABEL_2;
    }
  }

  flatbuffers::Parser::Next(a1, &v52);
  v10 = v52;
  if (v52 == 1)
  {
LABEL_2:
    *a6 = v10;
    *(a6 + 1) = 1;
  }

  else
  {
    v52 = 256;
    *a6 = 256;
    BYTE7(v60) = 11;
    strcpy(v59, "force_align");
    v14 = sub_213C9E148(a4 + 72, v59);
    if (a4 + 80 == v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 56);
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(v59[0]);
    }

    if (v15)
    {
      v17 = (v15 + 32);
      if (*(v15 + 55) < 0)
      {
        v17 = *v17;
      }

      v16 = atoi(v17);
    }

    else
    {
      v16 = 1;
    }

    v18 = sub_213CAD64C(a2) * v11;
    v19 = sub_213CAD6D8(a2);
    v20 = v18 / v19 * v19;
    if (v16 > 1)
    {
      sub_213C97EDC(a1 + 336, v18 / v19 * v19, v16);
    }

    *(a1 + 406) = 1;
    sub_213C97EDC(a1 + 336, v20, 4uLL);
    v21 = sub_213C97EDC(a1 + 336, v20, v19);
    if (v11)
    {
      v22 = *(a1 + 1184);
      v23 = v11;
      while (2)
      {
        switch(*(v22 - 72))
        {
          case 0xFFFFFFFC:
            v39 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v39 = *v39;
            }

            sub_213CB3F58(a6, v39, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              goto LABEL_67;
            }

            return;
          case 0xFFFFFFFD:
          case 0xA:
            v59[0] = 0;
            v32 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v32 = *v32;
            }

            sub_213CB0C44(a6, v32, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              v21 = sub_213C8C438(a1 + 336, v59[0]);
              goto LABEL_54;
            }

            return;
          case 0xFFFFFFFE:
          case 8:
            LODWORD(v59[0]) = 0;
            v34 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v34 = *v34;
            }

            sub_213CB0108(a6, v34, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              v27 = v59[0];
              v26 = a1 + 336;
              goto LABEL_53;
            }

            return;
          case 0xFFFFFFFF:
          case 6:
            LOWORD(v59[0]) = 0;
            v31 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v31 = *v31;
            }

            sub_213CB09D8(a6, v31, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              goto LABEL_67;
            }

            return;
          case 0:
          case 1:
          case 2:
          case 4:
            LOBYTE(v59[0]) = 0;
            v30 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v30 = *v30;
            }

            sub_213CB076C(a6, v30, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              goto LABEL_63;
            }

            return;
          case 3:
            LOBYTE(v59[0]) = 0;
            v36 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v36 = *v36;
            }

            sub_213CB42AC(a6, v36, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
LABEL_63:
              v21 = sub_213C8C610(a1 + 336, v59[0]);
              goto LABEL_54;
            }

            return;
          case 5:
            LOWORD(v59[0]) = 0;
            v37 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v37 = *v37;
            }

            sub_213CB4528(a6, v37, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
LABEL_67:
              v21 = sub_213CB41A8(a1 + 336, v59[0]);
              goto LABEL_54;
            }

            return;
          case 7:
          case 0x11:
            LODWORD(v59[0]) = 0;
            v33 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v33 = *v33;
            }

            sub_213CB47A4(a6, v33, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              v21 = sub_213C8C524(a1 + 336, v59[0]);
              goto LABEL_54;
            }

            return;
          case 9:
            v59[0] = 0;
            v40 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v40 = *v40;
            }

            sub_213CB4A20(a6, v40, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              v21 = sub_213CB4C74(a1 + 336, v59[0]);
              goto LABEL_54;
            }

            return;
          case 0xB:
            LODWORD(v59[0]) = 0;
            v35 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v35 = *v35;
            }

            sub_213CB4CD8(a6, v35, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              v21 = sub_213CB4F24(a1 + 336, *v59);
              goto LABEL_54;
            }

            return;
          case 0xC:
            v59[0] = 0;
            v38 = (v22 - 40);
            if (*(v22 - 17) < 0)
            {
              v38 = *v38;
            }

            sub_213CB4F90(a6, v38, a1, v59);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              v21 = sub_213CB51DC(a1 + 336, *v59);
              goto LABEL_54;
            }

            return;
          case 0xD:
          case 0xE:
          case 0x10:
            goto LABEL_50;
          case 0xF:
            v29 = *(v22 - 64);
            if (*(v29 + 200) == 1)
            {
              v21 = flatbuffers::Parser::SerializeStruct(v21, a1 + 336, v29, v22 - 72);
            }

            else
            {
LABEL_50:
              v24 = (v22 - 40);
              if (*(v22 - 17) < 0)
              {
                v24 = *v24;
              }

              v25 = atoi(v24);
              *a6 = 256;
              sub_213C8C398(a1 + 336, 4uLL);
              v26 = a1 + 336;
              v27 = *(a1 + 368) - *(a1 + 384) + *(a1 + 376) - v25 + 4;
LABEL_53:
              v21 = sub_213C8C524(v26, v27);
            }

            goto LABEL_54;
          default:
LABEL_54:
            v28 = *(a1 + 1184);
            if (*(v28 - 17) < 0)
            {
              operator delete(*(v28 - 40));
            }

            v22 = v28 - 72;
            *(a1 + 1184) = v28 - 72;
            if (!--v23)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    *(a1 + 392) -= 8 * *(a1 + 400);
    *(a1 + 400) = 0;
    *(a1 + 404) = 0;
    *(a1 + 406) = 0;
    *a3 = sub_213C8C524(a1 + 336, v11);
    if (*a2 == 15)
    {
      v41 = *(a2 + 8);
      if (*(v41 + 203) == 1)
      {
        v42 = *(v41 + 176);
        v43 = *(v41 + 184);
        while (v42 != v43)
        {
          v44 = *v42;
          if (*(*v42 + 218) == 1)
          {
            goto LABEL_111;
          }

          ++v42;
        }

        v44 = 0;
LABEL_111:
        if ((atomic_load_explicit(&qword_27C8E92F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C8E92F8))
        {
          word_27C8E92F0 = *(v44 + 208);
          __cxa_guard_release(&qword_27C8E92F8);
        }

        if ((atomic_load_explicit(&qword_27C8E9300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C8E9300))
        {
          dword_27C8E92F4 = *(v44 + 152);
          __cxa_guard_release(&qword_27C8E9300);
        }

        v45 = *(a2 + 8);
        v46 = *(a1 + 384);
        v49 = *v46;
        v47 = (v46 + 1);
        v48 = v49;
        if (*(v45 + 200) == 1)
        {
          sub_213C8CA44(v47, v47 + *(v45 + 216) * v48, *(v45 + 216), a2);
        }

        else
        {
          sub_213C8CB6C(v47, v47 + 4 * v48);
        }
      }
    }

    *a6 = 0;
  }
}

void flatbuffers::Parser::ParseArray(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v36 = 0;
  v37 = 0;
  v38 = xmmword_213CC7BD0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v42 = 1;
  v43 = 256;
  v44 = 0;
  v5 = *(a2 + 4);
  v34 = *(a2 + 8);
  v6 = *(a2 + 24);
  flatbuffers::Parser::Expect(a1, 91, &v35);
  HIBYTE(v35) = 1;
  v7 = v35;
  if (v35)
  {
    goto LABEL_2;
  }

  v8 = 0;
  while (1)
  {
    v9 = *(a1 + 729) != 1 || v8 == 0;
    if (v9 && *(a1 + 20) == 93)
    {
      break;
    }

    memset(v48, 0, sizeof(v48));
    v49 = 0;
    HIBYTE(v51) = 1;
    LOWORD(v50) = 48;
    v52 = -1;
    v10 = v46;
    if (v46 >= v47)
    {
      v11 = sub_213CC0558(&v45, v48);
      v46 = v11;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50);
        v11 = v46;
      }
    }

    else
    {
      *v46 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 12) = 0;
      *(v10 + 2) = v50;
      *(v10 + 6) = v51;
      *(v10 + 28) = -1;
      v11 = (v10 + 64);
      v46 = v10 + 64;
    }

    *(v11 - 64) = v5;
    *(v11 - 60) = 0;
    v12 = v11 - 64;
    *(v12 + 8) = v34;
    *(v12 + 24) = v6;
    if (v5 == 15 && *(v34 + 200) == 1)
    {
      flatbuffers::Parser::ParseTable(a1, v34, v11 - 32, 0, &v35);
      v7 = v35;
      if (v35)
      {
        goto LABEL_27;
      }
    }

    else
    {
      flatbuffers::Parser::ParseSingleValue(a1, 0, v12, 0, &v35);
      v7 = v35;
      if (v35 == 1)
      {
LABEL_27:
        HIBYTE(v35) = 1;
        goto LABEL_2;
      }
    }

    v35 = 256;
    if (*(a1 + 20) == 93)
    {
      ++v8;
      break;
    }

    if ((*(a1 + 954) & 1) != 0 || (flatbuffers::Parser::Expect(a1, 44, &v35), v7 = v35, (v35 & 1) == 0))
    {
      v7 = 0;
      LOBYTE(v35) = 0;
    }

    HIBYTE(v35) = 1;
    ++v8;
    if (v7)
    {
      goto LABEL_2;
    }
  }

  flatbuffers::Parser::Next(a1, &v35);
  v7 = v35;
  if (v35 == 1)
  {
LABEL_2:
    *a3 = v7;
    *(a3 + 1) = 1;
  }

  else
  {
    v35 = 256;
    *a3 = 256;
    if (v8 != v6)
    {
      operator new();
    }

    if (v46 != v45)
    {
      v14 = v46 - 32;
      while (2)
      {
        switch(*(v14 - 8))
        {
          case 0xFFFFFFFC:
            v29 = v14;
            if (v14[23] < 0)
            {
              v29 = *v14;
            }

            sub_213CB3F58(a3, v29, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_3;
          case 0xFFFFFFFD:
          case 0xA:
            v48[0] = 0.0;
            v22 = v14;
            if (v14[23] < 0)
            {
              v22 = *v14;
            }

            sub_213CB0C44(a3, v22, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              v13 = sub_213C8C438(&v36, *&v48[0]);
              goto LABEL_38;
            }

            goto LABEL_3;
          case 0xFFFFFFFE:
          case 8:
            LODWORD(v48[0]) = 0;
            v24 = v14;
            if (v14[23] < 0)
            {
              v24 = *v14;
            }

            sub_213CB0108(a3, v24, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              v17 = LODWORD(v48[0]);
              goto LABEL_37;
            }

            goto LABEL_3;
          case 0xFFFFFFFF:
          case 6:
            LOWORD(v48[0]) = 0;
            v21 = v14;
            if (v14[23] < 0)
            {
              v21 = *v14;
            }

            sub_213CB09D8(a3, v21, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_3;
          case 0:
          case 1:
          case 2:
          case 4:
            LOBYTE(v48[0]) = 0;
            v20 = v14;
            if (v14[23] < 0)
            {
              v20 = *v14;
            }

            sub_213CB076C(a3, v20, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_3;
          case 3:
            LOBYTE(v48[0]) = 0;
            v26 = v14;
            if (v14[23] < 0)
            {
              v26 = *v14;
            }

            sub_213CB42AC(a3, v26, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
LABEL_45:
              v13 = sub_213C8C610(&v36, SLOBYTE(v48[0]));
              goto LABEL_38;
            }

            goto LABEL_3;
          case 5:
            LOWORD(v48[0]) = 0;
            v27 = v14;
            if (v14[23] < 0)
            {
              v27 = *v14;
            }

            sub_213CB4528(a3, v27, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
LABEL_81:
              v13 = sub_213CB41A8(&v36, SLOWORD(v48[0]));
              goto LABEL_38;
            }

            goto LABEL_3;
          case 7:
          case 0x11:
            LODWORD(v48[0]) = 0;
            v23 = v14;
            if (v14[23] < 0)
            {
              v23 = *v14;
            }

            sub_213CB47A4(a3, v23, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              v13 = sub_213C8C524(&v36, SLODWORD(v48[0]));
              goto LABEL_38;
            }

            goto LABEL_3;
          case 9:
            v48[0] = 0.0;
            v30 = v14;
            if (v14[23] < 0)
            {
              v30 = *v14;
            }

            sub_213CB4A20(a3, v30, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              v13 = sub_213CB4C74(&v36, *&v48[0]);
              goto LABEL_38;
            }

            goto LABEL_3;
          case 0xB:
            LODWORD(v48[0]) = 0;
            v25 = v14;
            if (v14[23] < 0)
            {
              v25 = *v14;
            }

            sub_213CB4CD8(a3, v25, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              v13 = sub_213CB4F24(&v36, *v48);
              goto LABEL_38;
            }

            goto LABEL_3;
          case 0xC:
            v48[0] = 0.0;
            v28 = v14;
            if (v14[23] < 0)
            {
              v28 = *v14;
            }

            sub_213CB4F90(a3, v28, a1, v48);
            *(a3 + 1) = 1;
            if ((*a3 & 1) == 0)
            {
              v13 = sub_213CB51DC(&v36, v48[0]);
              goto LABEL_38;
            }

            goto LABEL_3;
          case 0xD:
          case 0xE:
          case 0x10:
            goto LABEL_34;
          case 0xF:
            v19 = *(v14 - 3);
            if (*(v19 + 200) == 1)
            {
              v13 = flatbuffers::Parser::SerializeStruct(v13, &v36, v19, (v14 - 32));
            }

            else
            {
LABEL_34:
              v15 = v14;
              if (v14[23] < 0)
              {
                v15 = *v14;
              }

              v16 = atoi(v15);
              *a3 = 256;
              sub_213C8C398(&v36, 4uLL);
              v17 = v39 - v40 + DWORD2(v39) - v16 + 4;
LABEL_37:
              v13 = sub_213C8C524(&v36, v17);
            }

            goto LABEL_38;
          default:
LABEL_38:
            v18 = v14 - 32;
            v14 -= 64;
            if (v18 == v45)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    v31 = v40;
    v32 = sub_213CAD64C(a2);
    MEMORY[0x21604CF50](a2 + 32, v31, v32);
    *a3 = 0;
  }

LABEL_3:
  sub_213C98328(&v36);
  v36 = &v45;
  sub_213C9EA70(&v36);
}

void flatbuffers::Parser::ParseHash(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  HIBYTE(v60) = 4;
  strcpy(__p, "hash");
  v8 = sub_213C9E148(a3 + 72, __p);
  if (a3 + 80 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 56);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *a2;
  if (*a2 > 7)
  {
    switch(v10)
    {
      case 8:
        v29 = (v9 + 32);
        if (*(v9 + 55) < 0)
        {
          v29 = *v29;
        }

        v30 = 0;
        v31 = 1;
        while (1)
        {
          v32 = v31;
          v33 = &(&off_282634D80)[2 * v30];
          if (!strcmp(v29, *v33))
          {
            break;
          }

          v31 = 0;
          v30 = 1;
          if ((v32 & 1) == 0)
          {
            v34 = 0;
            goto LABEL_54;
          }
        }

        v34 = v33[1];
LABEL_54:
        v49 = a1 + 32;
        if (a1[55] < 0)
        {
          v49 = *v49;
        }

        v50 = (v34)(v49);
        sub_213C8B69C(v50);
        break;
      case 9:
        v41 = (v9 + 32);
        if (*(v9 + 55) < 0)
        {
          v41 = *v41;
        }

        v42 = 0;
        v43 = 1;
        while (1)
        {
          v44 = v43;
          v45 = &(&off_282634DA0)[2 * v42];
          if (!strcmp(v41, *v45))
          {
            break;
          }

          v43 = 0;
          v42 = 1;
          if ((v44 & 1) == 0)
          {
            v46 = 0;
            goto LABEL_70;
          }
        }

        v46 = v45[1];
LABEL_70:
        v57 = a1 + 32;
        if (a1[55] < 0)
        {
          v57 = *v57;
        }

        v58 = (v46)(v57);
        sub_213C8A670(v58);
        break;
      case 10:
        v17 = (v9 + 32);
        if (*(v9 + 55) < 0)
        {
          v17 = *v17;
        }

        v18 = 0;
        v19 = 1;
        while (1)
        {
          v20 = v19;
          v21 = &(&off_282634DA0)[2 * v18];
          if (!strcmp(v17, *v21))
          {
            break;
          }

          v19 = 0;
          v18 = 1;
          if ((v20 & 1) == 0)
          {
            v22 = 0;
            goto LABEL_62;
          }
        }

        v22 = v21[1];
LABEL_62:
        v53 = a1 + 32;
        if (a1[55] < 0)
        {
          v53 = *v53;
        }

        v54 = (v22)(v53);
        sub_213C8CE90(v54);
        break;
      default:
        goto LABEL_76;
    }
  }

  else
  {
    switch(v10)
    {
      case 5:
        v23 = (v9 + 32);
        if (*(v9 + 55) < 0)
        {
          v23 = *v23;
        }

        v24 = 0;
        v25 = 1;
        while (1)
        {
          v26 = v25;
          v27 = &(&off_282634D60)[2 * v24];
          if (!strcmp(v23, *v27))
          {
            break;
          }

          v25 = 0;
          v24 = 1;
          if ((v26 & 1) == 0)
          {
            v28 = 0;
            goto LABEL_50;
          }
        }

        v28 = v27[1];
LABEL_50:
        v47 = a1 + 32;
        if (a1[55] < 0)
        {
          v47 = *v47;
        }

        v48 = (v28)(v47);
        sub_213CB5F68(v48);
        break;
      case 6:
        v35 = (v9 + 32);
        if (*(v9 + 55) < 0)
        {
          v35 = *v35;
        }

        v36 = 0;
        v37 = 1;
        while (1)
        {
          v38 = v37;
          v39 = &(&off_282634D60)[2 * v36];
          if (!strcmp(v35, *v39))
          {
            break;
          }

          v37 = 0;
          v36 = 1;
          if ((v38 & 1) == 0)
          {
            v40 = 0;
            goto LABEL_66;
          }
        }

        v40 = v39[1];
LABEL_66:
        v55 = a1 + 32;
        if (a1[55] < 0)
        {
          v55 = *v55;
        }

        v56 = (v40)(v55);
        sub_213CB5FD8(v56);
        break;
      case 7:
        v11 = (v9 + 32);
        if (*(v9 + 55) < 0)
        {
          v11 = *v11;
        }

        v12 = 0;
        v13 = 1;
        while (1)
        {
          v14 = v13;
          v15 = &(&off_282634D80)[2 * v12];
          if (!strcmp(v11, *v15))
          {
            break;
          }

          v13 = 0;
          v12 = 1;
          if ((v14 & 1) == 0)
          {
            v16 = 0;
            goto LABEL_58;
          }
        }

        v16 = v15[1];
LABEL_58:
        v51 = a1 + 32;
        if (a1[55] < 0)
        {
          v51 = *v51;
        }

        v52 = (v16)(v51);
        sub_213C8A4E8(v52);
        break;
      default:
        goto LABEL_76;
    }
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = *__p;
  *(a2 + 48) = v60;
LABEL_76:
  flatbuffers::Parser::Next(a1, a4);
  *(a4 + 1) = 1;
  if ((*a4 & 1) == 0)
  {
    *a4 = 0;
  }
}

uint64_t *flatbuffers::Parser::SerializeStruct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_213C8C398(a2, *(a3 + 208));
  if (*(a4 + 55) >= 0)
  {
    v7 = (a4 + 32);
  }

  else
  {
    v7 = *(a4 + 32);
  }

  v8 = *(a3 + 216);
  if (v8)
  {
    v9 = *(a2 + 48);
    if (v9 - *(a2 + 56) < v8)
    {
      sub_213C97F80(a2, v8);
      v9 = *(a2 + 48);
    }

    *(a2 + 48) = v9 - v8;
    memcpy((v9 - v8), v7, v8);
  }

  v10 = *(a4 + 56);
  v11 = *(a2 + 32) - *(a2 + 48) + *(a2 + 40);

  return sub_213C982A0(a2, v10, v11);
}

void sub_213CB3F58(_WORD *a1, char *a2, uint64_t a3, flatbuffers::ClassicLocale *a4)
{
  if (sub_213CC0304(a4, a2))
  {
    *a1 = 0;
    return;
  }

  if (sub_213CBCF6C(*a4) == 0.0)
  {
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
      operator delete(v13);
    }
  }

  else
  {
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213C98EA0(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_29;
    }
  }
}

uint64_t sub_213CB41A8(uint64_t a1, __int16 a2)
{
  sub_213C8C398(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    sub_213C97F80(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void sub_213CB420C(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v8 = sub_213CBCF6C(a3);
  if (v8 != sub_213CBCF6C(a4) || *(a1 + 80) == 1)
  {
    v9 = sub_213CB41A8(a1, a3);

    sub_213C982A0(a1, a2, v9);
  }
}

void sub_213CB42AC(_WORD *a1, char *a2, uint64_t a3, char *a4)
{
  *&v31 = 0;
  if (sub_213C98C40(&v31, a2, 0, 0))
  {
    if (v31 > 127)
    {
      v14 = 127;
    }

    else
    {
      if (v31 >= -128)
      {
        *a4 = v31;
        *a1 = 0;
        return;
      }

      v14 = 0x80;
    }

    *a4 = v14;
    v15 = strlen(a2);
    std::string::__init(&v27, a2, v15);
    v16 = std::string::insert(&v27, 0, "invalid number: ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, "");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v29, ", constant does not fit ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD7A0(&__p);
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

    v24 = std::string::append(&v30, p_p, size);
    v25 = v24->__r_.__value_.__r.__words[2];
    v31 = *&v24->__r_.__value_.__l.__data_;
    v32 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v27.__r_.__value_.__r.__words[0];
      goto LABEL_31;
    }
  }

  else
  {
    *a4 = 0;
    v8 = strlen(a2);
    std::string::__init(&v29, a2, v8);
    v9 = std::string::insert(&v29, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v30, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v31 = *&v11->__r_.__value_.__l.__data_;
    v32 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v29.__r_.__value_.__r.__words[0];
LABEL_31:
      operator delete(v13);
    }
  }
}

void sub_213CB4528(_WORD *a1, char *a2, uint64_t a3, __int16 *a4)
{
  *&v31 = 0;
  if (sub_213C98C40(&v31, a2, 0, 0))
  {
    if (v31 >= 0x8000)
    {
      v14 = 0x7FFF;
    }

    else
    {
      if (v31 >= -32768)
      {
        *a4 = v31;
        *a1 = 0;
        return;
      }

      v14 = 0x8000;
    }

    *a4 = v14;
    v15 = strlen(a2);
    std::string::__init(&v27, a2, v15);
    v16 = std::string::insert(&v27, 0, "invalid number: ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, "");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v29, ", constant does not fit ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD8E8(&__p);
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

    v24 = std::string::append(&v30, p_p, size);
    v25 = v24->__r_.__value_.__r.__words[2];
    v31 = *&v24->__r_.__value_.__l.__data_;
    v32 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v27.__r_.__value_.__r.__words[0];
      goto LABEL_31;
    }
  }

  else
  {
    *a4 = 0;
    v8 = strlen(a2);
    std::string::__init(&v29, a2, v8);
    v9 = std::string::insert(&v29, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v30, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v31 = *&v11->__r_.__value_.__l.__data_;
    v32 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v29.__r_.__value_.__r.__words[0];
LABEL_31:
      operator delete(v13);
    }
  }
}

void sub_213CB47A4(_WORD *a1, char *a2, uint64_t a3, unsigned int *a4)
{
  *&v31 = 0;
  if (sub_213C98C40(&v31, a2, 0, 0))
  {
    v8 = 0x7FFFFFFF;
    if (v31 <= 0x7FFFFFFF)
    {
      if (v31 >= 0xFFFFFFFF80000000)
      {
        *a4 = v31;
        *a1 = 0;
        return;
      }

      v8 = 0x80000000;
    }

    *a4 = v8;
    v15 = strlen(a2);
    std::string::__init(&v27, a2, v15);
    v16 = std::string::insert(&v27, 0, "invalid number: ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, "");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v29, ", constant does not fit ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_213CBDA30(&__p);
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

    v24 = std::string::append(&v30, p_p, size);
    v25 = v24->__r_.__value_.__r.__words[2];
    v31 = *&v24->__r_.__value_.__l.__data_;
    v32 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v27.__r_.__value_.__r.__words[0];
      goto LABEL_31;
    }
  }

  else
  {
    *a4 = 0;
    v9 = strlen(a2);
    std::string::__init(&v29, a2, v9);
    v10 = std::string::insert(&v29, 0, "invalid number: ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v30, "");
    v13 = v12->__r_.__value_.__r.__words[2];
    v31 = *&v12->__r_.__value_.__l.__data_;
    v32 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v29.__r_.__value_.__r.__words[0];
LABEL_31:
      operator delete(v14);
    }
  }
}

void sub_213CB4A20(_WORD *a1, char *a2, uint64_t a3, flatbuffers::ClassicLocale *a4)
{
  if (sub_213C98C40(a4, a2, 0, 1))
  {
    *a1 = 0;
    return;
  }

  if (*a4)
  {
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213CBDB78(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_29;
    }
  }

  else
  {
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
      operator delete(v13);
    }
  }
}

uint64_t sub_213CB4C74(uint64_t a1, uint64_t a2)
{
  sub_213C8C398(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    sub_213C97F80(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void sub_213CB4CD8(_WORD *a1, char *a2, uint64_t a3, flatbuffers::ClassicLocale *a4)
{
  if (sub_213CBD204(a4, a2))
  {
    *a1 = 0;
    return;
  }

  if (*a4 == 0.0)
  {
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
      operator delete(v13);
    }
  }

  else
  {
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213C99528(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_29;
    }
  }
}

uint64_t sub_213CB4F24(uint64_t a1, float a2)
{
  sub_213C8C398(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    sub_213C97F80(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void sub_213CB4F90(_WORD *a1, char *a2, uint64_t a3, flatbuffers::ClassicLocale *a4)
{
  if (sub_213CBED98(a4, a2))
  {
    *a1 = 0;
    return;
  }

  if (*a4 == 0.0)
  {
    v8 = strlen(a2);
    std::string::__init(&v28, a2, v8);
    v9 = std::string::insert(&v28, 0, "invalid number: ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v29, "");
    v12 = v11->__r_.__value_.__r.__words[2];
    v30 = *&v11->__r_.__value_.__l.__data_;
    v31 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
      operator delete(v13);
    }
  }

  else
  {
    v14 = strlen(a2);
    std::string::__init(&v26, a2, v14);
    v15 = std::string::insert(&v26, 0, "invalid number: ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v28, ", constant does not fit ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_213C99680(&__p);
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

    v23 = std::string::append(&v29, p_p, size);
    v24 = v23->__r_.__value_.__r.__words[2];
    v30 = *&v23->__r_.__value_.__l.__data_;
    v31 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a3, a1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v26.__r_.__value_.__r.__words[0];
      goto LABEL_29;
    }
  }
}

uint64_t sub_213CB51DC(uint64_t a1, double a2)
{
  sub_213C8C398(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    sub_213C97F80(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void flatbuffers::Parser::ParseNestedFlatbuffer(flatbuffers::Parser *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X8>)
{
  if (*(this + 5) == 91)
  {
    flatbuffers::Parser::ParseAnyValue(this, a2, a3, a4, a5, 0, 0);
    a6[1] = 1;
    if ((*a6 & 1) == 0)
    {
      *a6 = 0;
    }
  }

  else
  {
    v8 = *this;
    flatbuffers::Parser::SkipAnyJsonValue(this, a6);
    a6[1] = 1;
    if ((*a6 & 1) == 0)
    {
      sub_213C9DF08(&__dst, (v8 - 1), (*this - 1), *this - v8);
      v9[23] = 15;
      strcpy(v9, "std::unique_ptr");
      v15 = 0;
      v16 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v17 = 84;
      v18 = 257;
      v20 = 0;
      v21[0] = 0;
      *(v21 + 5) = 0;
      v19 = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 1;
      v27 = 0;
      v28[0] = 0;
      *(v28 + 7) = 0;
      v26 = 0;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      strcpy(v35, "\n");
      v33 = 0;
      strcpy(v34, "_generated");
      v38 = 0;
      v39 = 0;
      v35[2] = 0;
      v36 = 0;
      v37 = 0;
      v40 = 1;
      v41 = 0;
      v42 = 257;
      sub_213CBA66C(v43);
    }
  }
}

uint64_t *sub_213CB5538(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_213CBB3F8(a1, *a2, a2 + 1);
    sub_213C98980(a1 + 3, a2[3], a2[4], (a2[4] - a2[3]) >> 3);
  }

  return a1;
}

uint64_t sub_213CB5590(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = v4;
  std::string::operator=((a1 + 32), (a2 + 2));
  std::string::operator=((a1 + 56), (a2 + 56));
  *(a1 + 80) = *(a2 + 20);
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=((a1 + 112), (a2 + 7));
  v5 = *(a2 + 138);
  *(a1 + 136) = *(a2 + 68);
  *(a1 + 138) = v5;
  std::string::operator=((a1 + 144), a2 + 6);
  v6 = *(a2 + 172);
  *(a1 + 168) = *(a2 + 42);
  *(a1 + 172) = v6;
  std::string::operator=((a1 + 176), (a2 + 11));
  std::string::operator=((a1 + 200), (a2 + 200));
  *(a1 + 224) = *(a2 + 56);
  std::string::operator=((a1 + 232), (a2 + 232));
  v7 = *(a2 + 258);
  *(a1 + 256) = *(a2 + 128);
  *(a1 + 258) = v7;
  if (a1 != a2)
  {
    sub_213C9E228(a1 + 264, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
  }

  std::string::operator=((a1 + 288), a2 + 12);
  std::string::operator=((a1 + 312), a2 + 13);
  std::string::operator=((a1 + 336), a2 + 14);
  std::string::operator=((a1 + 360), a2 + 15);
  v8 = *(a2 + 200);
  *(a1 + 384) = a2[24];
  *(a1 + 400) = v8;
  return a1;
}

uint64_t flatbuffers::Parser::Parse(flatbuffers::Parser *this, const char *a2, const char **a3, const char *a4)
{
  if (*(this + 728) == 1)
  {

    return flatbuffers::Parser::ParseFlexBuffer(this, a2, a4, this + 54);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    flatbuffers::Parser::ParseRoot(this, a2, a3, a4, v7);
    return (v7[0] & 1) == 0;
  }
}

void flatbuffers::Parser::TryTypedValue(uint64_t a1@<X0>, int a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, _BYTE *a6@<X6>, uint64_t a7@<X8>)
{
  if (*(a1 + 20) != a2)
  {
    goto LABEL_2;
  }

  *a6 = 1;
  v13 = (a4 + 32);
  std::string::operator=((a4 + 32), (a1 + 32));
  if ((a3 & 1) == 0)
  {
    if (*a4)
    {
      operator new();
    }

    *a4 = a5;
  }

  if (a2 == 259)
  {
    goto LABEL_6;
  }

  v14 = *a4 + 4;
  v15 = v14 > 0x10;
  v16 = (1 << v14) & 0x18001;
  if (v15 || v16 == 0)
  {
    goto LABEL_6;
  }

  v18 = sub_213C8B3B8(v13, "0123456789.", 0);
  if (v18 == -1)
  {
    goto LABEL_6;
  }

  v19 = *(a4 + 55);
  v20 = *(a4 + 40);
  if (v19 >= 0)
  {
    v20 = *(a4 + 55);
  }

  if (v20 <= v18 + 1 || (v19 >= 0 ? (v21 = v13) : (v21 = *v13), *(v21 + v18) != 48 || (*(v21 + v18 + 1) & 0xDF) != 0x58 || sub_213C8B3B8(v13, "pP", v18 + 2) != -1))
  {
LABEL_6:
    flatbuffers::Parser::Next(a1, a7);
    *(a7 + 1) = 1;
    if ((*a7 & 1) == 0)
    {
LABEL_2:
      *a7 = 0;
    }
  }

  else
  {
    std::operator+<char>();
    v22 = std::string::append(&v24, "");
    v23 = v22->__r_.__value_.__r.__words[2];
    v25 = *&v22->__r_.__value_.__l.__data_;
    v26 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(a1, a7);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

double flatbuffers::Parser::ParseEnumFromString@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (v6 + 152);
  }

  else
  {
    v7 = a2;
  }

  v8 = *v7;
  if (v8 <= 0xFFFFFFFC && v8 - 1 > 9)
  {
    operator new();
  }

  v12 = 0;
  v13 = 0;
  while (v12 != -1)
  {
    v14 = std::string::find((a1 + 32), 32, v12);
    if (v14 == -1)
    {
      v15 = -1;
    }

    else
    {
      v15 = v14 - v12;
    }

    if (v14 == -1)
    {
      v16 = -1;
    }

    else
    {
      v16 = v14 + 1;
    }

    std::string::basic_string(&__str, (a1 + 32), v12, v15, &__p);
    v17 = *(a2 + 16);
    if (!v17)
    {
      v18 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v18 == -1)
      {
        operator new();
      }

      v26 = v18;
      std::string::basic_string(&__p, &__str, 0, v18, &v30);
      v27 = flatbuffers::Parser::LookupEnum(a1, &__p);
      if (v27)
      {
        std::string::basic_string(&v30, &__str, v26 + 1, 0xFFFFFFFFFFFFFFFFLL, &v33);
        v25 = sub_213CBBD28(v27 + 184, &v30);
        if ((v27 + 192) == v25)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(v25 + 7);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::operator+<char>();
        flatbuffers::Parser::Error(a1, a4);
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v29 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v27)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }

    if (*(a1 + 743) == 1)
    {
      v21 = *(v17 + 23);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v21 = *(v17 + 8);
      }

      std::string::basic_string(&__p, &__str, 0, v21, &v30);
      v22 = sub_213C8C1C8(&__p, *(a2 + 16));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        v23 = *(a2 + 16);
        v24 = *(v23 + 23);
        if ((v24 & 0x8000000000000000) != 0)
        {
          v24 = *(v23 + 8);
        }

        std::string::basic_string(&__p, &__str, v24, 0xFFFFFFFFFFFFFFFFLL, &v30);
        v25 = sub_213CBBD28(v23 + 184, &__p);
        if ((v23 + 192) == v25)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(v25 + 7);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_46:
        if (v29 && (!flatbuffers::HideAppleInternal(v25) || *(v29 + 80) != 1))
        {
          v13 |= *(v29 + 136);
          v20 = 1;
          goto LABEL_22;
        }

        goto LABEL_55;
      }

      v28 = *(a2 + 16);
    }

    else
    {
      v25 = sub_213CBBD28(v17 + 184, &__str);
      if ((v17 + 192) != v25)
      {
        v29 = *(v25 + 7);
        goto LABEL_46;
      }
    }

LABEL_55:
    std::operator+<char>();
    flatbuffers::Parser::Error(a1, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_21:
    v20 = 0;
LABEL_22:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v12 = v16;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  sub_213C8CE90(v13);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *&__str.__r_.__value_.__l.__data_;
  *a3 = __str;
  *a4 = 0;
  return result;
}

uint64_t sub_213CB5F68(uint64_t a1)
{
  sub_213C98FF0(v3);
  MEMORY[0x21604D0D0](&v4, a1);
  std::stringbuf::str();
  sub_213C993D8(v3, MEMORY[0x277D82818]);
  return MEMORY[0x21604D160](&v5);
}

uint64_t sub_213CB5FD8(uint64_t a1)
{
  sub_213C98FF0(v3);
  MEMORY[0x21604D0E0](&v4, a1);
  std::stringbuf::str();
  sub_213C993D8(v3, MEMORY[0x277D82818]);
  return MEMORY[0x21604D160](&v5);
}

void flatbuffers::Parser::TokenError(flatbuffers::Parser *this@<X0>, _WORD *a2@<X8>)
{
  flatbuffers::Parser::TokenToStringId(this, *(this + 5), &v6);
  v4 = std::string::insert(&v6, 0, "cannot parse value starting with: ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *__p = *&v4->__r_.__value_.__l.__data_;
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  flatbuffers::Parser::Error(this, a2);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

double sub_213CB60DC(uint64_t a1, __int16 a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    v9 = v2;
    v10 = v3;
    v6 = sub_213CBCF6C(a2);
    sub_213CBCFD0(6, &v8, v6);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v8.__r_.__value_.__l.__data_;
    *(a1 + 32) = v8;
  }

  return result;
}

double sub_213CB6154(uint64_t a1, uint64_t a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    sub_213C8CE90(a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

double sub_213CB61C0(uint64_t a1, uint64_t a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    sub_213C8B69C(a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

double sub_213CB622C(uint64_t a1, uint64_t a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    sub_213CB5FD8(a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

double sub_213CB629C(uint64_t a1, uint64_t a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    sub_213C8A4E8(a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

double sub_213CB6308(uint64_t a1, uint64_t a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    sub_213CB5F68(a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

double sub_213CB6378(uint64_t a1, uint64_t a2)
{
  if (*a1 > 0xFFFFFFFC || (*a1 - 1) <= 9)
  {
    sub_213C8A670(a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    result = *&v5;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

uint64_t sub_213CB63E4(uint64_t **a1, uint64_t a2, const void **a3)
{
  result = sub_213CA194C(a1, a2);
  if (a1 + 1 != result)
  {
    v6 = *(result + 56);
    sub_213CC1154(a1, result);
    result = sub_213CC079C(a1, a3);
    *(result + 56) = v6;
  }

  return result;
}

BOOL sub_213CB6454(uint64_t a1, const void **a2, uint64_t a3)
{
  v10[0] = a3;
  v6 = *(a1 + 32);
  if (v6 >= *(a1 + 40))
  {
    v7 = sub_213CC0840(a1 + 24, v10);
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 1;
  }

  *(a1 + 32) = v7;
  v8 = sub_213CA194C(a1, a2);
  if (a1 + 8 == v8)
  {
    v10[1] = a2;
    *(sub_213CC079C(a1, a2) + 56) = a3;
  }

  return a1 + 8 != v8;
}

unint64_t flatbuffers::EnumDef::SortByValue(flatbuffers::EnumDef *this)
{
  v1 = *(this + 38);
  if (v1 == 10 || v1 == -3)
  {
    v4 = *(this + 26);
    v3 = *(this + 27);
    v5 = 126 - 2 * __clz(v3 - v4);
    if (v3 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    return sub_213C9EC04(*(this + 26), v3, v6, 1);
  }

  else
  {
    v9 = *(this + 26);
    v8 = *(this + 27);
    v10 = 126 - 2 * __clz(v8 - v9);
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    return sub_213C9FB18(*(this + 26), v8, v11, 1);
  }
}

void *flatbuffers::EnumDef::RemoveDuplicates(void *this)
{
  v2 = this[26];
  v1 = this[27];
  if (v2 != v1)
  {
    v3 = this;
    v4 = v2 + 1;
    if (v2 + 1 != v1)
    {
      v5 = this + 24;
      do
      {
        v6 = *v2;
        this = *v4;
        if (*(*v2 + 136) == *(*v4 + 136))
        {
          v7 = v3[23];
          if (v7 == v5)
          {
            goto LABEL_15;
          }

          do
          {
            if (v7[7] == this)
            {
              v7[7] = v6;
            }

            v8 = v7[1];
            if (v8)
            {
              do
              {
                v9 = v8;
                v8 = *v8;
              }

              while (v8);
            }

            else
            {
              do
              {
                v9 = v7[2];
                v10 = *v9 == v7;
                v7 = v9;
              }

              while (!v10);
            }

            v7 = v9;
          }

          while (v9 != v5);
          if (this)
          {
LABEL_15:
            v11 = sub_213C98D6C(this);
            this = MEMORY[0x21604D1A0](v11, 0x10B2C4072A4B994);
          }

          *v4 = 0;
        }

        else
        {
          v2[1] = this;
          ++v2;
        }

        ++v4;
      }

      while (v4 != v1);
    }

    if (v2 + 1 != v1)
    {
      v12 = v1;
      v13 = v3[27] - v1;
      if (v13)
      {
        this = memmove(v2 + 1, v12, v13);
      }

      v3[27] = v2 + v13 + 8;
    }
  }

  return this;
}

void flatbuffers::Parser::ParseEnum(flatbuffers::Parser *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(this + 7);
  memset(v9, 0, 24);
  sub_213C9DCE4(v9, v5, *(this + 8), 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - v5) >> 3));
  flatbuffers::Parser::Next(this, a2);
  a2[1] = 1;
  if ((*a2 & 1) == 0)
  {
    if (*(this + 55) < 0)
    {
      sub_213C9D958(&v7, *(this + 4), *(this + 5));
    }

    else
    {
      v7 = *(this + 2);
      v8 = *(this + 6);
    }

    flatbuffers::Parser::Expect(this, 260, a2);
    a2[1] = 1;
    if ((*a2 & 1) == 0)
    {
      __p[4] = 0;
      flatbuffers::Parser::StartEnum();
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7);
    }
  }

  __p[0] = v9;
  sub_213C9DC58(__p);
}

void sub_213CB76AC(uint64_t a1)
{
  *(a1 + 25) = sub_213CBBDEC(a1) == 0;
  *(a1 + 26) = 0;
  operator new();
}

void flatbuffers::Parser::ParseProtoOption(flatbuffers::Parser *this@<X0>, char *a2@<X8>)
{
  flatbuffers::Parser::Next(this, a2);
  a2[1] = 1;
  if ((*a2 & 1) == 0)
  {
    flatbuffers::Parser::ParseProtoKey(this, a2);
    a2[1] = 1;
    if ((*a2 & 1) == 0)
    {
      flatbuffers::Parser::Expect(this, 61, a2);
      a2[1] = 1;
      if ((*a2 & 1) == 0)
      {
        flatbuffers::Parser::ParseProtoCurliesOrIdent(this, a2);
        a2[1] = 1;
        if ((*a2 & 1) == 0)
        {
          *a2 = 0;
        }
      }
    }
  }
}

void sub_213CB77B8(_WORD *a1, uint64_t a2, char *a3)
{
  *(a2 + 25) = 1;
  v5 = *(*(a2 + 8) + 152);
  if (v5 == 10 || v5 == -3)
  {
    __p[0] = 0;
    if (a3[23] >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = sub_213C8D174(v7, __p);
    v9 = __p[0];
    v10 = *(a2 + 16);
    v11 = __p[0] > *(v10 + 136);
  }

  else
  {
    __p[0] = 0;
    if (a3[23] >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    v8 = sub_213C98C40(__p, v12, 0, 1);
    v9 = __p[0];
    v10 = *(a2 + 16);
    v11 = __p[0] > *(v10 + 136);
  }

  *(v10 + 136) = v9;
  if (v8)
  {
    if (!v11 && *(a2 + 24) == 1)
    {
      if (sub_213CBBDEC(a2))
      {
        v16 = *a2;
        operator new();
      }
    }

    *(a2 + 26) = 1;
    *a1 = 0;
  }

  else
  {
    v13 = *a2;
    std::operator+<char>();
    v14 = std::string::append(&v17, "");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v13, a1);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

void sub_213CB7984(_WORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "bit_flags");
  v5 = sub_213C9E148(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v6 = v4 + 80 == v5 || *(v5 + 56) == 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    v19 = *a2;
    operator new();
  }

  if (*(a2 + 26) == 1)
  {
    v20 = *a2;
    operator new();
  }

  v7 = *(a2 + 16);
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "bit_flags_set");
  v8 = sub_213C9E148(v7 + 88, &__p.__r_.__value_.__l.__data_);
  if (v7 + 96 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *(v9 + 55);
  if (v10 < 0)
  {
    v10 = *(v9 + 40);
  }

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = std::string::find((v9 + 32), 32, v11);
      v13 = v12;
      v14 = v12 + 1;
      v15 = v12 == -1 ? -1 : v12 - v11;
      std::string::basic_string(&__p, (v9 + 32), v11, v15, &v22);
      v16 = *(a2 + 8);
      v17 = sub_213CBBD28(v16 + 184, &__p);
      if ((v16 + 192) == v17)
      {
        break;
      }

      v18 = *(v17 + 7);
      if (!v18 || flatbuffers::HideAppleInternal(v17) && *(v18 + 80) == 1)
      {
        break;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = v14;
      if (v13 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_25;
      }
    }

    v21 = *a2;
    std::operator+<char>();
    flatbuffers::Parser::Error(v21, a1);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_25:
    *(*(a2 + 16) + 136) = -1;
    *(a2 + 27) = 1;
    *a1 = 0;
  }
}

void flatbuffers::Parser::StartStruct(const std::string *a1@<X0>, const std::string *a2@<X1>, std::string **a3@<X2>, _WORD *a4@<X8>)
{
  Struct = flatbuffers::Parser::LookupCreateStruct(a1, a2, 1, 1);
  if (Struct[8].__r_.__value_.__s.__data_[9])
  {
    v9 = Struct;
    Struct[8].__r_.__value_.__s.__data_[9] = 0;
    std::string::operator=(Struct, a2);
    std::string::operator=(v9 + 1, a1 + 48);
    size = a1[6].__r_.__value_.__l.__size_;
    v10 = a1[6].__r_.__value_.__r.__words[2];
    if (size == v10)
    {
      goto LABEL_13;
    }

    v12 = a1[6].__r_.__value_.__l.__size_;
    do
    {
      v13 = *v12++;
      if (v13 == v9)
      {
        break;
      }

      size = v12;
    }

    while (v12 != v10);
    if (v12 == v10)
    {
LABEL_13:
      v12 = size;
    }

    else
    {
      v14 = v12;
      v12 = size;
      do
      {
        if (*v14 != v9)
        {
          *v12++ = *v14;
        }

        ++v14;
      }

      while (v14 != v10);
    }

    *v12 = v9;
    *a3 = v9;
    *a4 = 0;
  }

  else
  {
    std::operator+<char>();
    flatbuffers::Parser::Error(a1, a4);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }
}

void flatbuffers::Parser::CheckClash(char *__s@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, int a5@<W4>, _WORD *a6@<X8>)
{
  v12 = strlen(__s);
  v13 = *a3;
  if (*a3 == *(a3 + 8))
  {
LABEL_14:
    *a6 = 0;
    return;
  }

  v14 = v12;
  while (1)
  {
    v15 = *v13;
    size = SHIBYTE((*v13)->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v14 < size)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (++v13 == *(a3 + 8))
    {
      goto LABEL_14;
    }
  }

  size = v15->__r_.__value_.__l.__size_;
  if (size <= v14)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (std::string::compare(*v13, size - v14, v14, __s))
  {
    goto LABEL_13;
  }

  v17 = (*v13)[6].__r_.__value_.__r.__words[1];
  if (v17 >= 0xFFFFFFFD || v17 == 1)
  {
    goto LABEL_13;
  }

  v19 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  if ((v19 & 0x8000000000000000) != 0)
  {
    v19 = v15->__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v31, v15, 0, v19 - v14, &v30);
  v20 = sub_213CBBD28(a4 + 152, &v31);
  if (a4 + 160 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 + 56);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (!v21 || *(v21 + 152) != a5)
  {
    goto LABEL_13;
  }

  std::operator+<char>();
  v22 = std::string::append(&v29, " would clash with generated functions for field ");
  v23 = v22->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = *(v21 + 23);
  if (v24 >= 0)
  {
    v25 = v21;
  }

  else
  {
    v25 = *v21;
  }

  if (v24 >= 0)
  {
    v26 = *(v21 + 23);
  }

  else
  {
    v26 = *(v21 + 8);
  }

  v27 = std::string::append(&v30, v25, v26);
  v28 = v27->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  flatbuffers::Parser::Error(a2, a6);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

BOOL flatbuffers::Parser::SetRootType(flatbuffers::Parser *this, const char *__s)
{
  v4 = strlen(__s);
  std::string::__init(&v13, __s, v4);
  v5 = sub_213C9DFB8(this + 128, &v13);
  if ((this + 136) == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[7];
    if (v6)
    {
      ++*(v6 + 144);
    }
  }

  *(this + 72) = v6;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    v6 = *(this + 72);
  }

  if (v6)
  {
    return 1;
  }

  v8 = *(this + 37);
  v9 = strlen(__s);
  std::string::__init(&__p, __s, v9);
  flatbuffers::Namespace::GetFullyQualifiedName(v8, &__p, 0x3E8uLL, &v13);
  v10 = sub_213C9DFB8(this + 128, &v13);
  if ((this + 136) == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10[7];
    if (v11)
    {
      ++*(v11 + 144);
    }
  }

  *(this + 72) = v11;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return *(this + 72) != 0;
}

void flatbuffers::Parser::ParseNamespace(flatbuffers::Parser *this@<X0>, _BYTE *a2@<X8>)
{
  flatbuffers::Parser::Next(this, a2);
  a2[1] = 1;
  if ((*a2 & 1) == 0)
  {
    operator new();
  }
}

void flatbuffers::Parser::ParseProtoDecl(flatbuffers::Parser *this@<X0>, char *a2@<X8>)
{
  v4 = *(this + 5);
  if (v4 != 260)
  {
    goto LABEL_22;
  }

  v5 = sub_213C8AAF4(this + 4, "extend");
  v6 = v5;
  v4 = *(this + 5);
  if (v4 != 260)
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (sub_213C8AAF4(this + 4, "package"))
  {
    flatbuffers::Parser::ParseNamespace(this, a2);
LABEL_5:
    a2[1] = 1;
LABEL_6:
    if ((*a2 & 1) == 0)
    {
LABEL_7:
      *a2 = 0;
      return;
    }

    return;
  }

  v4 = *(this + 5);
  if (v4 != 260)
  {
    if (!v6)
    {
      goto LABEL_22;
    }

LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  if ((sub_213C8AAF4(this + 4, "message") | v6))
  {
LABEL_10:
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    sub_213C9DCE4(__p, *(this + 7), *(this + 8), 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
    flatbuffers::Parser::Next(this, a2);
    a2[1] = 1;
    if (*a2)
    {
      v13.__r_.__value_.__r.__words[0] = __p;
LABEL_12:
      sub_213C9DC58(&v13);
      return;
    }

    v14 = 0;
    if (v6)
    {
      if (*(this + 5) != 46 || (flatbuffers::Parser::Next(this, a2), a2[1] = 1, (*a2 & 1) == 0))
      {
        if (*(this + 55) < 0)
        {
          sub_213C9D958(&v13, *(this + 4), *(this + 5));
        }

        else
        {
          v13 = *(this + 32);
        }

        flatbuffers::Parser::Expect(this, 260, a2);
        a2[1] = 1;
        if ((*a2 & 1) == 0)
        {
          flatbuffers::Parser::ParseNamespacing(this, &v13, 0, a2);
          a2[1] = 1;
          if ((*a2 & 1) == 0)
          {
            Struct = flatbuffers::Parser::LookupCreateStruct(this, &v13, 0, 0);
            v14 = Struct;
            if (Struct)
            {
              v10 = Struct;
              if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v13.__r_.__value_.__l.__data_);
              }

              if ((v10 + 48) != __p)
              {
                sub_213C9E228(v10 + 48, __p[0], __p[1], 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3));
              }

              flatbuffers::Parser::ParseProtoFields(this, v10, v6, 0, a2);
              a2[1] = 1;
              if ((*a2 & 1) == 0)
              {
                if ((v6 & 1) == 0)
                {
                  *(this + 37) = 0;
                }

                if (*(this + 5) != 59 || (flatbuffers::Parser::Next(this, a2), a2[1] = 1, (*a2 & 1) == 0))
                {
                  v13.__r_.__value_.__r.__words[0] = __p;
                  sub_213C9DC58(&v13);
                  goto LABEL_7;
                }
              }

              goto LABEL_60;
            }

            std::operator+<char>();
            flatbuffers::Parser::Error(this, a2);
            if (v12 < 0)
            {
              operator delete(v11);
            }
          }
        }

        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      if (*(this + 55) < 0)
      {
        sub_213C9D958(&v13, *(this + 4), *(this + 5));
      }

      else
      {
        v13 = *(this + 32);
      }

      flatbuffers::Parser::Expect(this, 260, a2);
      a2[1] = 1;
      if ((*a2 & 1) == 0)
      {
        flatbuffers::Parser::StartStruct(this, &v13, &v14, a2);
        a2[1] = 1;
        if ((*a2 & 1) == 0)
        {
          operator new();
        }
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

LABEL_60:
    v13.__r_.__value_.__r.__words[0] = __p;
    goto LABEL_12;
  }

  v4 = *(this + 5);
  if (v4 != 260)
  {
    goto LABEL_22;
  }

  if (!sub_213C8AAF4(this + 4, "enum"))
  {
    v4 = *(this + 5);
    if (v4 == 260)
    {
      if (sub_213C8AAF4(this + 4, "syntax"))
      {
        flatbuffers::Parser::Next(this, a2);
        a2[1] = 1;
        if (*a2)
        {
          return;
        }

        flatbuffers::Parser::Expect(this, 61, a2);
        a2[1] = 1;
        if (*a2)
        {
          return;
        }

        flatbuffers::Parser::Expect(this, 257, a2);
        goto LABEL_54;
      }

      v4 = *(this + 5);
      if (v4 == 260)
      {
        if (sub_213C8AAF4(this + 4, "option"))
        {
          flatbuffers::Parser::ParseProtoOption(this, a2);
LABEL_54:
          a2[1] = 1;
          if (*a2)
          {
            return;
          }

          flatbuffers::Parser::Expect(this, 59, a2);
          a2[1] = 1;
          goto LABEL_6;
        }

        v4 = *(this + 5);
        if (v4 == 260)
        {
          if (sub_213C8AAF4(this + 4, "service"))
          {
            flatbuffers::Parser::Next(this, a2);
            a2[1] = 1;
            if (*a2)
            {
              return;
            }

            flatbuffers::Parser::Expect(this, 260, a2);
            a2[1] = 1;
            if (*a2)
            {
              return;
            }

            flatbuffers::Parser::ParseProtoCurliesOrIdent(this, a2);
            goto LABEL_5;
          }

          v4 = *(this + 5);
        }
      }
    }

LABEL_22:
    flatbuffers::Parser::TokenToStringId(this, v4, &v13);
    v7 = std::string::insert(&v13, 0, "don't know how to parse .proto declaration starting with ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *__p = *&v7->__r_.__value_.__l.__data_;
    v16 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(this, a2);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    return;
  }

  __p[0] = 0;
  flatbuffers::Parser::ParseEnum(this, a2);
  a2[1] = 1;
  if ((*a2 & 1) == 0)
  {
    if (*(this + 5) != 59 || (flatbuffers::Parser::Next(this, a2), a2[1] = 1, (*a2 & 1) == 0))
    {
      flatbuffers::EnumDef::RemoveDuplicates(__p[0]);
      goto LABEL_7;
    }
  }
}

void flatbuffers::Parser::ParseProtoCurliesOrIdent(flatbuffers::Parser *this@<X0>, char *a2@<X8>)
{
  v4 = *(this + 5);
  flatbuffers::Parser::Next(this, a2);
  a2[1] = 1;
  v5 = *a2;
  if (v4 == 123)
  {
    if (*a2)
    {
      return;
    }

    v6 = 1;
    while (v6)
    {
      v7 = *(this + 5);
      if (v7 == 123)
      {
        v8 = v6 + 1;
      }

      else
      {
        v8 = v6;
      }

      if (v7 == 125)
      {
        --v6;
      }

      else
      {
        v6 = v8;
      }

      flatbuffers::Parser::Next(this, a2);
      a2[1] = 1;
      if (*a2)
      {
        return;
      }
    }
  }

  else if (*a2)
  {
    return;
  }

  *a2 = 0;
}

BOOL sub_213CB8870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10[0] = a3;
  v6 = *(a1 + 32);
  if (v6 < *(a1 + 40))
  {
    *v6 = a3;
    v7 = v6 + 1;
  }

  else
  {
    v7 = sub_213CC0840(a1 + 24, v10);
  }

  *(a1 + 32) = v7;
  v8 = sub_213CA17D8(a1, a2);
  if (a1 + 8 == v8)
  {
    v10[1] = a2;
    *(sub_213CC0DA4(a1, a2) + 56) = a3;
  }

  return a1 + 8 != v8;
}

void flatbuffers::Parser::ParseTypeFromProtoType(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = "float";
  v7 = &off_278171B40;
  do
  {
    if (sub_213C8AAF4((a1 + 32), v6))
    {
      *a2 = *(v7 - 1);
      flatbuffers::Parser::Next(a1, a3);
LABEL_8:
      a3[1] = 1;
      if ((*a3 & 1) == 0)
      {
        *a3 = 0;
      }

      return;
    }

    v8 = *v7;
    v7 += 2;
    v6 = v8;
  }

  while (v8);
  if (*(a1 + 20) != 46 || (flatbuffers::Parser::Next(a1, a3), a3[1] = 1, (*a3 & 1) == 0))
  {
    flatbuffers::Parser::ParseTypeIdent(a1, a2, a3);
    goto LABEL_8;
  }
}

void flatbuffers::Parser::ParseProtoKey(flatbuffers::Parser *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 5) == 40)
  {
    flatbuffers::Parser::Next(this, a2);
    while (1)
    {
      a2[1] = 1;
      if (*a2)
      {
        break;
      }

      v4 = *(this + 5);
      if (v4 != 260 && v4 != 46)
      {
        flatbuffers::Parser::Expect(this, 41, a2);
        while (1)
        {
          a2[1] = 1;
          if (*a2)
          {
            break;
          }

          if (*(this + 5) != 46)
          {
            goto LABEL_8;
          }

          flatbuffers::Parser::Next(this, a2);
          a2[1] = 1;
          if (*a2)
          {
            break;
          }

          flatbuffers::Parser::Expect(this, 260, a2);
        }

        return;
      }

      flatbuffers::Parser::Next(this, a2);
    }
  }

  else
  {
    flatbuffers::Parser::Expect(this, 260, a2);
    a2[1] = 1;
    if ((*a2 & 1) == 0)
    {
LABEL_8:
      *a2 = 0;
    }
  }
}

void sub_213CB8AC4(uint64_t a1, uint64_t a2, const void **a3)
{
  if ((*(a2 + 27) & 1) != 0 || (sub_213CBBF78(a1, a2, (*(a2 + 16) + 136), *(a2 + 25) == 0), *(a1 + 1) = 1, (*a1 & 1) == 0))
  {
    v6 = sub_213C955A8((*(a2 + 8) + 184), a3, *(a2 + 16));
    *(a2 + 16) = 0;
    if (v6)
    {
      v7 = *a2;
      std::operator+<char>();
      flatbuffers::Parser::Error(v7, a1);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *a1 = 0;
    }
  }
}

void flatbuffers::Parser::ParseFlexBufferValue(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 20);
  if (v6 <= 257)
  {
    switch(v6)
    {
      case 91:
        v17 = a2[3];
        v16 = a2[4];
        flatbuffers::Parser::Expect(a1, 91, a3);
        *(a3 + 1) = 1;
        if (*a3)
        {
          goto LABEL_21;
        }

        v24 = 0;
        v25 = (v16 - v17) >> 4;
        while (1)
        {
          v26 = v24-- != 0;
          v27 = v26;
          if ((*(a1 + 729) != 1 || !v27) && *(a1 + 20) == 93)
          {
            break;
          }

          flatbuffers::Parser::ParseFlexBufferValue(a1, a2);
          *(a3 + 1) = 1;
          if (*a3)
          {
            goto LABEL_21;
          }

          if (*(a1 + 20) == 93)
          {
            break;
          }

          if ((*(a1 + 954) & 1) == 0)
          {
            flatbuffers::Parser::Expect(a1, 44, a3);
            *(a3 + 1) = 1;
            if (*a3)
            {
              return;
            }
          }

          *a3 = 256;
        }

        flatbuffers::Parser::Next(a1, a3);
        *(a3 + 1) = 1;
        if (*a3 == 1)
        {
LABEL_21:
          *(a3 + 1) = 1;
          return;
        }

        sub_213CB91E0(a2, v25);
        break;
      case 123:
        v21 = a2[3];
        v20 = a2[4];
        flatbuffers::Parser::Expect(a1, 123, &v34);
        HIBYTE(v34) = 1;
        LOBYTE(v22) = v34;
        if (v34)
        {
          goto LABEL_29;
        }

        v28 = 0;
        while (1)
        {
          v29 = *(a1 + 729) != 1 || v28 == 0;
          if (v29 && *(a1 + 20) == 125)
          {
            break;
          }

          memset(&v35, 0, sizeof(v35));
          std::string::operator=(&v35, (a1 + 32));
          if (*(a1 + 20) == 257)
          {
            flatbuffers::Parser::Next(a1, &v34);
          }

          else
          {
            if (*(a1 + 729))
            {
              v30 = 257;
            }

            else
            {
              v30 = 260;
            }

            flatbuffers::Parser::Expect(a1, v30, &v34);
          }

          v31 = 1;
          HIBYTE(v34) = 1;
          LOBYTE(v22) = v34;
          if ((v34 & 1) == 0)
          {
            if (*(a1 + 954) == 1 && (*(a1 + 20) | 0x20) == 0x7B || (flatbuffers::Parser::Expect(a1, 58, &v34), HIBYTE(v34) = 1, LOBYTE(v22) = v34, (v34 & 1) == 0))
            {
              if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v32 = &v35;
              }

              else
              {
                v32 = v35.__r_.__value_.__r.__words[0];
              }

              if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v35.__r_.__value_.__l.__size_;
              }

              sub_213CC0F20(a2, v32, size);
              flatbuffers::Parser::ParseFlexBufferValue(a1, a2);
              LOBYTE(v22) = v34;
              if (v34 == 1)
              {
                HIBYTE(v34) = 1;
              }

              else
              {
                ++v28;
                v34 = 256;
                if (*(a1 + 20) == 125)
                {
                  LOBYTE(v22) = 0;
                  v31 = 2;
                }

                else
                {
                  if ((*(a1 + 954) & 1) != 0 || (flatbuffers::Parser::Expect(a1, 44, &v34), v22 = v34, (v34 & 1) == 0))
                  {
                    v22 = 0;
                    LOBYTE(v34) = 0;
                  }

                  HIBYTE(v34) = 1;
                  v31 = v22;
                }
              }
            }
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          if (v31)
          {
            if (v31 != 2)
            {
              goto LABEL_29;
            }

            break;
          }
        }

        flatbuffers::Parser::Next(a1, &v34);
        LOBYTE(v22) = v34;
        if (v34)
        {
LABEL_29:
          *a3 = v22;
          *(a3 + 1) = 1;
          if (v22)
          {
            return;
          }
        }

        else
        {
          *a3 = 0;
        }

        sub_213CB90B8(a2, (v20 - v21) >> 4);
        break;
      case 257:
        v7 = *(a1 + 55);
        if (v7 >= 0)
        {
          v8 = (a1 + 32);
        }

        else
        {
          v8 = *(a1 + 32);
        }

        v9 = *(a1 + 40);
        if (v7 >= 0)
        {
          v10 = *(a1 + 55);
        }

        else
        {
          v10 = *(a1 + 40);
        }

        sub_213CBE8CC(a2, v8, v10);
        v11 = a3;
        v12 = a1;
        v13 = 257;
LABEL_34:
        flatbuffers::Parser::Expect(v12, v13, v11);
LABEL_35:
        *(a3 + 1) = 1;
        goto LABEL_36;
      default:
        goto LABEL_78;
    }

LABEL_37:
    *a3 = 0;
    return;
  }

  switch(v6)
  {
    case 258:
      v18 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v18 = *v18;
      }

      v35.__r_.__value_.__r.__words[0] = 0;
      if (sub_213C98C40(&v35, v18, 10, 1))
      {
        v19 = v35.__r_.__value_.__r.__words[0];
      }

      else
      {
        v19 = 0;
      }

      sub_213CB92A8(a2, v19);
      flatbuffers::Parser::Expect(a1, 258, a3);
      *(a3 + 1) = 1;
LABEL_36:
      if (*a3)
      {
        return;
      }

      goto LABEL_37;
    case 259:
      v35.__r_.__value_.__r.__words[0] = 0;
      v23 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v23 = *v23;
      }

      sub_213CBED98(&v35, v23);
      sub_213CB9330(a2, *&v35.__r_.__value_.__l.__data_);
      v11 = a3;
      v12 = a1;
      v13 = 259;
      goto LABEL_34;
    case 260:
      if (sub_213C8AAF4((a1 + 32), "true"))
      {
        v35.__r_.__value_.__r.__words[0] = 1;
      }

      else
      {
        if (*(a1 + 20) != 260)
        {
          break;
        }

        if (!sub_213C8AAF4((a1 + 32), "false"))
        {
          if (*(a1 + 20) != 260 || !sub_213C8AAF4((a1 + 32), "null"))
          {
            break;
          }

          *&v35.__r_.__value_.__l.__data_ = 0uLL;
          v14 = a2[4];
          if (v14 < a2[5])
          {
            *v14 = 0;
            v14[1] = 0;
            goto LABEL_19;
          }

LABEL_81:
          v15 = sub_213C9AD38((a2 + 3), &v35);
          goto LABEL_82;
        }

        v35.__r_.__value_.__r.__words[0] = 0;
      }

      v35.__r_.__value_.__l.__size_ = 26;
      v14 = a2[4];
      if (v14 < a2[5])
      {
        *v14 = *&v35.__r_.__value_.__l.__data_;
LABEL_19:
        v15 = (v14 + 2);
LABEL_82:
        a2[4] = v15;
        flatbuffers::Parser::Next(a1, a3);
        goto LABEL_35;
      }

      goto LABEL_81;
  }

LABEL_78:

  flatbuffers::Parser::TokenError(a1, a3);
}

uint64_t sub_213CB90B8(uint64_t *a1, unint64_t a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = (a1[4] - v4) >> 4;
  if (a1[4] == v4)
  {
    v4 = 0;
  }

  v7 = v6 - a2;
  v8 = v7 >> 1;
  v9 = v4 + 16 * a2;
  v18[0] = a1;
  v10 = 126 - 2 * __clz(v7 >> 1);
  if (v7 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_213CBDFE8(v9, (v9 + 32 * (v7 >> 1)), v18, v11, 1);
  v18[0] = sub_213CBDCC0(a1, a2, v8, 2, 1, 0);
  v18[1] = v12;
  *&v17 = sub_213CBDCC0(a1, a2 + 1, v8, 2, 0, v18);
  *(&v17 + 1) = v13;
  v14 = a1[4];
  v15 = (v14 - *v5) >> 4;
  if (a2 > v15)
  {
    sub_213CBE770(v5, a2 - v15);
    v14 = a1[4];
  }

  else if (a2 < v15)
  {
    v14 = (*v5 + 16 * a2);
    a1[4] = v14;
  }

  if (v14 >= a1[5])
  {
    result = sub_213C9AD38(v5, &v17);
  }

  else
  {
    *v14 = v17;
    result = (v14 + 1);
  }

  a1[4] = result;
  return result;
}

uint64_t sub_213CB91E0(void *a1, unint64_t a2)
{
  v4 = a1 + 3;
  *&v9 = sub_213CBDCC0(a1, a2, ((a1[4] - a1[3]) >> 4) - a2, 1, 0, 0);
  *(&v9 + 1) = v5;
  v6 = a1[4];
  v7 = (v6 - *v4) >> 4;
  if (a2 > v7)
  {
    sub_213CBE770(v4, a2 - v7);
    v6 = a1[4];
  }

  else if (a2 < v7)
  {
    v6 = (*v4 + 16 * a2);
    a1[4] = v6;
  }

  if (v6 >= a1[5])
  {
    result = sub_213C9AD38(v4, &v9);
  }

  else
  {
    *v6 = v9;
    result = (v6 + 1);
  }

  a1[4] = result;
  return result;
}

uint64_t sub_213CB92A8(uint64_t a1, uint64_t a2)
{
  v3 = (2 * a2) ^ (a2 >> 63);
  if (HIDWORD(v3))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (v3 < 0x10000)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *&v8 = a2;
  DWORD2(v8) = 1;
  HIDWORD(v8) = v5;
  v6 = *(a1 + 32);
  if (v6 >= *(a1 + 40))
  {
    result = sub_213C9AD38(a1 + 24, &v8);
  }

  else
  {
    *v6 = v8;
    result = (v6 + 1);
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213CB9330(uint64_t a1, double a2)
{
  *&v7 = a2;
  v3 = a2;
  if (v3 == a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  DWORD2(v7) = 3;
  HIDWORD(v7) = v4;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 40))
  {
    result = sub_213C9AD38(a1 + 24, &v7);
  }

  else
  {
    *v5 = v7;
    result = (v5 + 1);
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t flatbuffers::Parser::ParseFlexBuffer(flatbuffers::Parser *a1, const char *a2, const char *a3, uint64_t *a4)
{
  flatbuffers::Parser::StartParseFile(a1, a2, a3, v8);
  if (v8[0] == 1)
  {
    return 0;
  }

  flatbuffers::Parser::ParseFlexBufferValue(a1, a4, v7);
  if (v7[0])
  {
    return 0;
  }

  sub_213CB9524(a4);
  return 1;
}

void flatbuffers::Parser::StartParseFile(flatbuffers::Parser *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &unk_213CC7DD7;
  }

  MEMORY[0x21604CF40](this + 1152, v7);
  *(this + 143) = a2;
  *this = a2;
  *(this + 1) = a2;
  *(this + 4) = 1;
  if (*(this + 335) < 0)
  {
    **(this + 39) = 0;
    *(this + 40) = 0;
  }

  else
  {
    *(this + 312) = 0;
    *(this + 335) = 0;
  }

  flatbuffers::Parser::SkipByteOrderMark(this, a4);
  *(a4 + 1) = 1;
  if ((*a4 & 1) == 0)
  {
    flatbuffers::Parser::Next(this, a4);
    *(a4 + 1) = 1;
    if ((*a4 & 1) == 0)
    {
      if (*(this + 5) == 256)
      {
        strcpy(__p, "input file is empty");
        flatbuffers::Parser::Error(this, a4);
      }

      else
      {
        *a4 = 0;
      }
    }
  }
}

char *sub_213CB9524(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (1 << sub_213CBE3D0(*(a1 + 24), &v2[-*a1], 0));
  v10 = 0;
  sub_213CBE508(a1, v2, (v4 - 1) & (v3 - v2), &v10);
  sub_213CBE464(a1, *(a1 + 24), v4);
  v5 = *(a1 + 24);
  v11 = 0;
  v6 = *(v5 + 8);
  v7 = (v5 + 12);
  v8 = v6 < 4 || v6 == 26;
  if (v8 && *v7 < 0)
  {
    v7 = &v11;
  }

  __src = *v7 | (4 * v6);
  sub_213C9AA34(a1, *(a1 + 8), &__src, &v13, 1);
  v13 = v4;
  result = sub_213C9AA34(a1, *(a1 + 8), &v13, &v14, 1);
  *(a1 + 48) = 1;
  return result;
}

void flatbuffers::Parser::ParseRoot(uint64_t **this@<X0>, const char *a2@<X1>, const char **a3@<X2>, const char *a4@<X3>, char *a5@<X8>)
{
  flatbuffers::Parser::DoParse(this, a2, a3, a4, 0, a5);
  a5[1] = 1;
  if (*a5)
  {
    return;
  }

  v8 = this[19];
  v7 = this[20];
  while (v8 != v7)
  {
    v9 = *v8;
    if (*(*v8 + 201) == 1)
    {
      if (*(this + 747) != 1)
      {
        goto LABEL_46;
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((*(*(v9 + 128) + 8) - **(v9 + 128)) >> 3);
      if (v10 == -1)
      {
        goto LABEL_46;
      }

      do
      {
        flatbuffers::Namespace::GetFullyQualifiedName(*(v9 + 128), v9, v10, &v59);
        v11 = flatbuffers::Parser::LookupEnum(this, &v59);
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        v12 = v10-- != 0;
      }

      while (v12 && !v11);
      if (!v11)
      {
LABEL_46:
        std::operator+<char>();
        if (*(v9 + 224))
        {
          std::operator+<char>();
          v34 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          std::string::append(&v59, v34, v35);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_55;
      }

      v13 = *(v9 + 144);
      v14 = this[19];
      v15 = this[20];
      v16 = v13;
      if (v14 != v15)
      {
        do
        {
          v17 = *(*v14 + 176);
          v18 = *(*v14 + 184);
          while (v17 != v18)
          {
            v19 = *v17;
            if (*(*v17 + 160) == v9)
            {
              *(v19 + 160) = 0;
              *(v19 + 168) = v11;
              if (*(v19 + 152) == 14)
              {
                v20 = 156;
              }

              else
              {
                v20 = 152;
              }

              *(v19 + v20) = *(v11 + 152);
              --*(v9 + 144);
              ++*(v11 + 144);
            }

            ++v17;
          }

          ++v14;
        }

        while (v14 != v15);
        v16 = *(v9 + 144);
      }

      if (v16)
      {
        sub_213C8A4E8(v16);
        v37 = std::string::insert(&v54, 0, "internal: ");
        v38 = v37->__r_.__value_.__r.__words[2];
        *&v55.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
        v55.__r_.__value_.__r.__words[2] = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v55, "/");
        v40 = v39->__r_.__value_.__r.__words[2];
        *&v56.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
        v56.__r_.__value_.__r.__words[2] = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        sub_213C8A4E8(v13);
        if (v53 >= 0)
        {
          v41 = v52;
        }

        else
        {
          v41 = v52[0];
        }

        if (v53 >= 0)
        {
          v42 = v53;
        }

        else
        {
          v42 = v52[1];
        }

        v43 = std::string::append(&v56, v41, v42);
        v44 = v43->__r_.__value_.__r.__words[2];
        *&v57.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
        v57.__r_.__value_.__r.__words[2] = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        v45 = std::string::append(&v57, " use(s) of pre-declaration enum not accounted for: ");
        v46 = v45->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = *(v11 + 23);
        if (v47 >= 0)
        {
          v48 = v11;
        }

        else
        {
          v48 = *v11;
        }

        if (v47 >= 0)
        {
          v49 = *(v11 + 23);
        }

        else
        {
          v49 = *(v11 + 8);
        }

        v50 = std::string::append(&__p, v48, v49);
        v51 = v50->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = *&v50->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        flatbuffers::Parser::Error(this, a5);
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        if (v53 < 0)
        {
          operator delete(v52[0]);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v54.__r_.__value_.__r.__words[0];
          goto LABEL_57;
        }

        return;
      }

      v21 = sub_213CA194C((this + 16), v9);
      sub_213CC1154(this + 16, v21);
      v22 = this[20];
      v23 = v22 - (v8 + 1);
      if (v22 != v8 + 1)
      {
        memmove(v8, v8 + 1, v22 - (v8 + 1));
      }

      this[20] = (v8 + v23);
      sub_213C8D018((v9 + 224), 0);
      sub_213C99840(v9 + 152);
      v24 = sub_213C997D8(v9);
      MEMORY[0x21604D1A0](v24, 0x10B2C4058EA06FBLL);
      v7 = this[20];
    }

    else
    {
      ++v8;
    }
  }

  v25 = this[25];
  v26 = this[26];
  if (v25 == v26)
  {
LABEL_45:
    *a5 = 0;
  }

  else
  {
    while (1)
    {
      v27 = *v25;
      if (*(*v25 + 148) == 1)
      {
        v28 = *(v27 + 208);
        v29 = *(v27 + 216);
        if (v28 != v29)
        {
          break;
        }
      }

LABEL_44:
      if (++v25 == v26)
      {
        goto LABEL_45;
      }
    }

    v30 = this[140];
    v32 = (v30 & 0xFFFFFFFFFFFE7CA4) == 0 && v30 != 0;
    while (1)
    {
      if (!v32)
      {
        v33 = *(*v28 + 56);
        if (v33)
        {
          if (*(v33 + 200) == 1)
          {
            break;
          }
        }
      }

      v28 += 8;
      if (v28 == v29)
      {
        goto LABEL_44;
      }
    }

    std::operator+<char>();
LABEL_55:
    flatbuffers::Parser::Error(this, a5);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      v36 = v59.__r_.__value_.__r.__words[0];
LABEL_57:
      operator delete(v36);
    }
  }
}