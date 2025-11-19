uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, unsigned __int8 *__src, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v12 = a3;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v85 = a7 - v18;
      v86 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v85 >= v86)
      {
        v9 = &v18[v86];
        v87 = v9 - 1;
        do
        {
          *v87-- = a0123456789abcd[v14 % a9];
          v88 = v14 >= a9;
          v14 /= a9;
        }

        while (v88);
      }

      else
      {
        v9 = a7;
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
LABEL_73:
    v53 = v9;
    v54 = HIDWORD(v12);
    v32 = *a2;
    if ((v15 & 7) == 4)
    {
      v92 = v12;
      v94 = a4;
      v55 = v18 - v10;
      v56 = *(v32 + 32);
      v57 = v18 - v10;
      if (!v56 || ((v59 = *v56, v58 = v56[1], *v56 - v58 >= v55) ? (v57 = v18 - v10) : (v57 = *v56 - v58), (v56[1] = v58 + v55, v59 > v58) ? (v60 = v57 == 0) : (v60 = 1), !v60))
      {
        v67 = *(v32 + 16);
        do
        {
          v69 = *(v32 + 8) - v67;
          if (v69 < v57 + 1)
          {
            (*(v32 + 24))(v32, v57 + 2);
            v67 = *(v32 + 16);
            v69 = *(v32 + 8) - v67;
          }

          if (v69 >= v57)
          {
            v70 = v57;
          }

          else
          {
            v70 = v69;
          }

          if (v70)
          {
            memmove((*v32 + v67), v10, v70);
            v67 = *(v32 + 16);
          }

          v67 += v70;
          *(v32 + 16) = v67;
          v10 += v70;
          v68 = v57 > v69;
          v57 -= v70;
        }

        while (v68);
      }

      LODWORD(v12) = v92;
      v61 = v92 & 0xF8 | 3;
      if (v54 >= v55)
      {
        v62 = v55;
      }

      else
      {
        v62 = v54;
      }

      v54 = (v54 - v62);
      v32 = *a2;
      v63 = 48;
      a4 = v94;
    }

    else
    {
      v63 = BYTE4(a4);
      v61 = v12;
      v18 = v10;
    }

    v64 = v54 << 32;
    v65 = a4 & 0xFFFFFF00FFFFFFFFLL | (v63 << 32);
    if ((v12 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v18, v53, v32, v12 & 0xFFFF0700 | v64 | v61, v65);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v18, v53 - v18, v32, v64 | v12 & 0xFFFFFF00 | v61, v65, v53 - v18);
    }

    return v32;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C267870](v100);
    v26 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v26, v100);
    }

    else
    {
      std::locale::locale(v26, v100);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v100);
  }

  std::locale::locale(&v97, (a2 + 32));
  v27 = std::locale::use_facet(&v97, MEMORY[0x29EDC93F8]);
  v90 = v9;
  v28 = v9 - v18;
  std::locale::~locale(&v97);
  memset(v100, 170, sizeof(v100));
  (v27->__vftable[1].__on_zero_shared)(v100, v27);
  if ((SHIBYTE(v100[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v100[0].__locale_;
    v30 = v100[1].__locale_;
    if (v100[1].__locale_ && v28 > *v100[0].__locale_)
    {
      v89 = v27;
      v91 = v12;
      v93 = a4;
      v31 = v100[0].__locale_;
      goto LABEL_31;
    }

    operator delete(v100[0].__locale_);
    goto LABEL_72;
  }

  if (!HIBYTE(v100[2].__locale_) || v28 <= SLOBYTE(v100[0].__locale_))
  {
LABEL_72:
    v9 = v90;
    goto LABEL_73;
  }

  v89 = v27;
  v91 = v12;
  v93 = a4;
  locale = v100;
  v31 = v100[0].__locale_;
  v30 = v100[1].__locale_;
LABEL_31:
  v32 = *a2;
  v97.__locale_ = 0;
  v98 = 0;
  v99 = 0;
  v33 = v30 + v31;
  if (SHIBYTE(v100[2].__locale_) >= 0)
  {
    v34 = v100 + SHIBYTE(v100[2].__locale_);
  }

  else
  {
    v34 = v33;
  }

  v35 = *locale;
  v36 = *locale;
  v37 = v28 - v35;
  if (v28 <= v35)
  {
    v72 = 0;
    v71 = v36 + v37;
    v73 = v90;
    goto LABEL_105;
  }

  v38 = v34 - 1;
  do
  {
    while (1)
    {
      v39 = HIBYTE(v99);
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
        break;
      }

      v40 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v98 != v40)
      {
        v46 = v97.__locale_;
        v40 = v98;
        goto LABEL_61;
      }

      if ((v99 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v95 = locale;
      __srca = v97.__locale_;
      if (v40 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_43;
      }

      v44 = 0;
      v43 = 0x7FFFFFFFFFFFFFF7;
LABEL_53:
      v45 = operator new(v43);
      v46 = v45;
      if (v40)
      {
        memmove(v45, __srca, v40);
      }

      if (!v44)
      {
        operator delete(__srca);
      }

      v97.__locale_ = v46;
      v99 = v43 | 0x8000000000000000;
      locale = v95;
LABEL_61:
      v98 = v40 + 1;
      v48 = v46 + v40;
      *v48 = v36;
      v48[1] = 0;
      if (locale != v38)
      {
        goto LABEL_62;
      }

LABEL_36:
      v36 = *locale;
      v37 -= *locale;
      if (v37 <= 0)
      {
        goto LABEL_101;
      }
    }

    if (HIBYTE(v99) == 22)
    {
      v95 = locale;
      __srca = &v97;
      v40 = 22;
LABEL_43:
      if (v40 + 1 > 2 * v40)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = 2 * v40;
      }

      if ((v41 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v41 | 7) + 1;
      }

      if (v41 >= 0x17)
      {
        v43 = v42;
      }

      else
      {
        v43 = 23;
      }

      v44 = v40 == 22;
      goto LABEL_53;
    }

    HIBYTE(v99) = (HIBYTE(v99) + 1) & 0x7F;
    v47 = &v97 + v39;
    *v47 = v36;
    v47[1] = 0;
    if (locale == v38)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = (locale + 1);
    v50 = (locale + 1);
    do
    {
      v51 = *v50++;
      v36 = v51;
      if (v51)
      {
        v52 = 1;
      }

      else
      {
        v52 = v49 == v38;
      }

      v49 = v50;
    }

    while (!v52);
    locale = (v50 - 1);
    v37 -= v36;
  }

  while (v37 > 0);
LABEL_101:
  v71 = v36 + v37;
  if (SHIBYTE(v99) < 0)
  {
    v75 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v73 = v90;
    if (v98 == v75)
    {
      if ((v99 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v74 = v97.__locale_;
      v77 = 0x7FFFFFFFFFFFFFF7;
      if (v75 >= 0x3FFFFFFFFFFFFFF3)
      {
        v80 = 0;
      }

      else
      {
LABEL_109:
        if (v75 + 1 > 2 * v75)
        {
          v78 = v75 + 1;
        }

        else
        {
          v78 = 2 * v75;
        }

        if ((v78 | 7) == 0x17)
        {
          v79 = 25;
        }

        else
        {
          v79 = (v78 | 7) + 1;
        }

        if (v78 >= 0x17)
        {
          v77 = v79;
        }

        else
        {
          v77 = 23;
        }

        v80 = v75 == 22;
      }

      v81 = operator new(v77);
      v76 = v81;
      if (v75)
      {
        memmove(v81, v74, v75);
      }

      if (!v80)
      {
        operator delete(v74);
      }

      v97.__locale_ = v76;
      v99 = v77 | 0x8000000000000000;
      v73 = v90;
    }

    else
    {
      v76 = v97.__locale_;
      v75 = v98;
    }

    v98 = v75 + 1;
  }

  else
  {
    v72 = HIBYTE(v99);
    v73 = v90;
    if (HIBYTE(v99) == 22)
    {
      v74 = &v97;
      v75 = 22;
      goto LABEL_109;
    }

LABEL_105:
    v75 = v72;
    HIBYTE(v99) = (v72 + 1) & 0x7F;
    v76 = &v97;
  }

  v82 = v76 + v75;
  *v82 = v71;
  v82[1] = 0;
  v83 = (v89->__vftable[1].~facet_0)(v89);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v32, v10, v18, v73, &v97, v83, v91, v93);
  if (SHIBYTE(v99) < 0)
  {
    operator delete(v97.__locale_);
  }

  if (SHIBYTE(v100[2].__locale_) < 0)
  {
    operator delete(v100[0].__locale_);
  }

  return v32;
}

void sub_296E804F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v28 >> 1, SHIDWORD(a8));
          v29 = *(a1 + 32);
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, 0, SHIDWORD(a8));
        v29 = *(a1 + 32);
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = *(a1 + 16);
    do
    {
      v81 = *(a1 + 8) - v80;
      if (v81 < v14 + 1)
      {
        (*(a1 + 24))(a1, v14 + 2);
        v80 = *(a1 + 16);
        v81 = *(a1 + 8) - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*a1 + v80), v11, v82);
        v80 = *(a1 + 16);
      }

      v80 += v82;
      *(a1 + 16) = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = *(a1 + 16);
    do
    {
      v32 = *(a1 + 8) - v30;
      if (v32 < v14 + 1)
      {
        (*(a1 + 24))(a1, v14 + 2);
        v30 = *(a1 + 16);
        v32 = *(a1 + 8) - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*a1 + v30), v11, v33);
        v30 = *(a1 + 16);
      }

      v30 += v33;
      *(a1 + 16) = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = *(a1 + 32);
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = *(a1 + 16);
    do
    {
      v35 = *(a1 + 8) - v34;
      if (v35 < v26 + 1)
      {
        (*(a1 + 24))(a1, v26 + 2);
        v34 = *(a1 + 16);
        v35 = *(a1 + 8) - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*a1 + v34), 48, v36);
        v34 = *(a1 + 16);
      }

      v34 += v36;
      *(a1 + 16) = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = (*a5 + a5[1]);
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = v44 - 1;
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = *(a1 + 32);
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = *(a1 + 16);
      do
      {
        v67 = *(a1 + 8) - v66;
        if (v67 < v48 + 1)
        {
          (*(a1 + 24))(a1, v48 + 2);
          v66 = *(a1 + 16);
          v67 = *(a1 + 8) - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*a1 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = *(a1 + 16);
        }

        v10 += v68;
        v66 += v68;
        *(a1 + 16) = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = *(a1 + 32);
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *a1;
    v65 = *(a1 + 16);
    *(a1 + 16) = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (*(a1 + 16) == *(a1 + 8))
    {
      (*(a1 + 24))(a1, 2);
      v44 = v49;
    }
  }

  v56 = *(a1 + 32);
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = *(a1 + 16);
    v76 = v10;
    do
    {
      v77 = *(a1 + 8) - v75;
      if (v77 < v48 + 1)
      {
        (*(a1 + 24))(a1, v48 + 2);
        v75 = *(a1 + 16);
        v77 = *(a1 + 8) - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*a1 + v75), v76, v78);
        v75 = *(a1 + 16);
      }

      v75 += v78;
      *(a1 + 16) = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v84, v85);
}

uint64_t std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  v7 = a2 - a1;
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v8 >> 1;
        v8 -= v8 >> 1;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v26, SHIDWORD(a5));
        v10 = *(a3 + 32);
        if (!v10)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v10 = *(a3 + 32);
      if (!v10)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v8 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v10 = *(a3 + 32);
    if (!v10)
    {
LABEL_40:
      v32 = *(a3 + 16);
      do
      {
        v33 = *(a3 + 8) - v32;
        if (v33 < v7 + 1)
        {
          (*(a3 + 24))(a3, v7 + 2);
          v32 = *(a3 + 16);
          v33 = *(a3 + 8) - v32;
        }

        if (v33 >= v7)
        {
          v34 = v7;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*a3 + v32);
          v36 = v34;
          v37 = v6;
          do
          {
            v39 = *v37++;
            v38 = v39;
            v40 = v39 - 32;
            if ((v39 - 97) < 6)
            {
              v38 = v40;
            }

            *v35++ = v38;
            --v36;
          }

          while (v36);
          v32 = *(a3 + 16);
        }

        v6 += v34;
        v32 += v34;
        *(a3 + 16) = v32;
        v17 = v7 > v33;
        v7 -= v34;
      }

      while (v17);
LABEL_38:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

LABEL_31:
    v28 = *v10;
    v27 = v10[1];
    v29 = v27 + v7;
    if (*v10 - v27 < v7)
    {
      v7 = *v10 - v27;
    }

    v10[1] = v29;
    if (v28 <= v27 || v7 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  v11 = *(a3 + 32);
  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = *v11;
  v12 = v11[1];
  v14 = v12 + v7;
  if (*v11 - v12 < v7)
  {
    v7 = *v11 - v12;
  }

  v11[1] = v14;
  if (v13 > v12 && v7 != 0)
  {
LABEL_13:
    v16 = *(a3 + 16);
    do
    {
      v18 = *(a3 + 8) - v16;
      if (v18 < v7 + 1)
      {
        (*(a3 + 24))(a3, v7 + 2);
        v16 = *(a3 + 16);
        v18 = *(a3 + 8) - v16;
      }

      if (v18 >= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        v20 = (*a3 + v16);
        v21 = v19;
        v22 = v6;
        do
        {
          v24 = *v22++;
          v23 = v24;
          v25 = v24 - 32;
          if ((v24 - 97) < 6)
          {
            v23 = v25;
          }

          *v20++ = v23;
          --v21;
        }

        while (v21);
        v16 = *(a3 + 16);
      }

      v6 += v19;
      v16 += v19;
      *(a3 + 16) = v16;
      v17 = v7 > v18;
      v7 -= v19;
    }

    while (v17);
  }

  return a3;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        return a1 + 5;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        return (a1 + 9);
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        return (a1 + 7);
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x11)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 4;
        *(v4 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v4 -= 4;
        v6 = a3 > 0x10F;
        a3 >>= 4;
      }

      while (v6);
    }

    v7 = (v4 - 1);
    do
    {
      *v7-- = a01[v5 & 1];
      v6 = v5 > 1;
      v5 >>= 1;
    }

    while (v6);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x41)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 6;
        *(v4 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x40);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a01234567[v5 & 7];
      v7 = v5 > 7;
      v5 >>= 3;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x101)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 8;
        *(v4 - 2) = std::__itoa::__base_16_lut[a3];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x100);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a0123456789abcd_0[v5 & 0xF];
      v7 = v5 > 0xF;
      v5 >>= 4;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v16[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v15[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    *v15 = v7;
    *v13 = v7;
    *&v13[16] = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v13, 170, 19);
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13[19];
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v13, 170, 21);
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 0xAu);
    goto LABEL_19;
  }

  *&v13[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8u);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C267870](v88);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, v88);
    }

    else
    {
      std::locale::locale(v21, v88);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v88);
  }

  std::locale::locale(&v85, (a2 + 32));
  v22 = std::locale::use_facet(&v85, MEMORY[0x29EDC93F8]);
  v23 = v20 - v16;
  std::locale::~locale(&v85);
  memset(v88, 170, sizeof(v88));
  (v22->__vftable[1].__on_zero_shared)(v88, v22);
  if ((SHIBYTE(v88[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v88[0].__locale_;
    v25 = v88[1].__locale_;
    if (v88[1].__locale_ && v23 > *v88[0].__locale_)
    {
      v78 = v22;
      v79 = v20;
      v77 = a3;
      v81 = a4;
      v26 = v88[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v88[0].__locale_);
LABEL_67:
    v48 = HIDWORD(a3);
    v27 = *a2;
    if ((v13 & 7) == 4)
    {
      v80 = v20;
      v82 = a4;
      v49 = v16 - v9;
      v50 = *(v27 + 32);
      v51 = v16 - v9;
      if (!v50 || ((v53 = *v50, v52 = v50[1], *v50 - v52 >= v49) ? (v51 = v16 - v9) : (v51 = *v50 - v52), (v50[1] = v52 + v49, v53 > v52) ? (v54 = v51 == 0) : (v54 = 1), !v54))
      {
        v61 = *(v27 + 16);
        do
        {
          v63 = *(v27 + 8) - v61;
          if (v63 < v51 + 1)
          {
            (*(v27 + 24))(v27, v51 + 2);
            v61 = *(v27 + 16);
            v63 = *(v27 + 8) - v61;
          }

          if (v63 >= v51)
          {
            v64 = v51;
          }

          else
          {
            v64 = v63;
          }

          if (v64)
          {
            memmove((*v27 + v61), v9, v64);
            v61 = *(v27 + 16);
          }

          v61 += v64;
          *(v27 + 16) = v61;
          v9 += v64;
          v62 = v51 > v63;
          v51 -= v64;
        }

        while (v62);
      }

      v55 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v49)
      {
        v56 = v49;
      }

      else
      {
        v56 = HIDWORD(a3);
      }

      v48 = (HIDWORD(a3) - v56);
      v27 = *a2;
      v57 = 48;
      v20 = v80;
      a4 = v82;
    }

    else
    {
      v57 = BYTE4(a4);
      v55 = a3;
      v16 = v9;
    }

    v58 = v48 << 32;
    v59 = a4 & 0xFFFFFF00FFFFFFFFLL | (v57 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v20, v27, a3 & 0xFFFF0700 | v58 | v55, v59);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v20 - v16, v27, v58 | a3 & 0xFFFFFF00 | v55, v59, v20 - v16);
    }

    return v27;
  }

  if (!HIBYTE(v88[2].__locale_) || v23 <= SLOBYTE(v88[0].__locale_))
  {
    goto LABEL_67;
  }

  v78 = v22;
  v79 = v20;
  v77 = a3;
  v81 = a4;
  locale = v88;
  v26 = v88[0].__locale_;
  v25 = v88[1].__locale_;
LABEL_26:
  v27 = *a2;
  v85.__locale_ = 0;
  v86 = 0;
  v87 = 0;
  v28 = v25 + v26;
  if (SHIBYTE(v88[2].__locale_) >= 0)
  {
    v29 = v88 + SHIBYTE(v88[2].__locale_);
  }

  else
  {
    v29 = v28;
  }

  v30 = *locale;
  v31 = *locale;
  v32 = v23 - v30;
  if (v23 <= v30)
  {
    v66 = 0;
    v65 = v31 + v32;
    goto LABEL_99;
  }

  v33 = v29 - 1;
  do
  {
    while (1)
    {
      v34 = HIBYTE(v87);
      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        break;
      }

      v35 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v86 != v35)
      {
        v41 = v85.__locale_;
        v35 = v86;
        goto LABEL_56;
      }

      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v83 = locale;
      __src = v85.__locale_;
      if (v35 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v39 = 0;
      v38 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v40 = operator new(v38);
      v41 = v40;
      if (v35)
      {
        memmove(v40, __src, v35);
      }

      if (!v39)
      {
        operator delete(__src);
      }

      v85.__locale_ = v41;
      v87 = v38 | 0x8000000000000000;
      locale = v83;
LABEL_56:
      v86 = v35 + 1;
      v43 = v41 + v35;
      *v43 = v31;
      v43[1] = 0;
      if (locale != v33)
      {
        goto LABEL_57;
      }

LABEL_31:
      v31 = *locale;
      v32 -= *locale;
      if (v32 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v87) == 22)
    {
      v83 = locale;
      __src = &v85;
      v35 = 22;
LABEL_38:
      if (v35 + 1 > 2 * v35)
      {
        v36 = v35 + 1;
      }

      else
      {
        v36 = 2 * v35;
      }

      if ((v36 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v36 | 7) + 1;
      }

      if (v36 >= 0x17)
      {
        v38 = v37;
      }

      else
      {
        v38 = 23;
      }

      v39 = v35 == 22;
      goto LABEL_48;
    }

    HIBYTE(v87) = (HIBYTE(v87) + 1) & 0x7F;
    v42 = &v85 + v34;
    *v42 = v31;
    v42[1] = 0;
    if (locale == v33)
    {
      goto LABEL_31;
    }

LABEL_57:
    v44 = (locale + 1);
    v45 = (locale + 1);
    do
    {
      v46 = *v45++;
      v31 = v46;
      if (v46)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44 == v33;
      }

      v44 = v45;
    }

    while (!v47);
    locale = (v45 - 1);
    v32 -= v31;
  }

  while (v32 > 0);
LABEL_95:
  v65 = v31 + v32;
  if (SHIBYTE(v87) < 0)
  {
    v68 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v86 == v68)
    {
      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v67 = v85.__locale_;
      v70 = 0x7FFFFFFFFFFFFFF7;
      if (v68 >= 0x3FFFFFFFFFFFFFF3)
      {
        v73 = 0;
      }

      else
      {
LABEL_103:
        if (v68 + 1 > 2 * v68)
        {
          v71 = v68 + 1;
        }

        else
        {
          v71 = 2 * v68;
        }

        if ((v71 | 7) == 0x17)
        {
          v72 = 25;
        }

        else
        {
          v72 = (v71 | 7) + 1;
        }

        if (v71 >= 0x17)
        {
          v70 = v72;
        }

        else
        {
          v70 = 23;
        }

        v73 = v68 == 22;
      }

      v74 = operator new(v70);
      v69 = v74;
      if (v68)
      {
        memmove(v74, v67, v68);
      }

      if (!v73)
      {
        operator delete(v67);
      }

      v85.__locale_ = v69;
      v87 = v70 | 0x8000000000000000;
    }

    else
    {
      v69 = v85.__locale_;
      v68 = v86;
    }

    v86 = v68 + 1;
  }

  else
  {
    v66 = HIBYTE(v87);
    if (HIBYTE(v87) == 22)
    {
      v67 = &v85;
      v68 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v68 = v66;
    HIBYTE(v87) = (v66 + 1) & 0x7F;
    v69 = &v85;
  }

  v75 = v69 + v68;
  *v75 = v65;
  v75[1] = 0;
  v76 = (v78->__vftable[1].~facet_0)(v78);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v27, v9, v16, v79, &v85, v76, v77, v81);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v85.__locale_);
  }

  if (SHIBYTE(v88[2].__locale_) < 0)
  {
    operator delete(v88[0].__locale_);
  }

  return v27;
}

void sub_296E81AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_WORD *std::__to_chars_integral[abi:ne200100]<unsigned long long>(_WORD *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  HIDWORD(v5) = a4 - 2;
  LODWORD(v5) = a4 - 2;
  v4 = v5 >> 1;
  if (v4 == 4)
  {
    if (a2 - a1 <= 19)
    {
      v6 = (1233 * (64 - __clz(a3 | 1))) >> 12;
      if (a2 - a1 < v6 - (std::__itoa::__pow10_64[v6] > a3) + 1)
      {
        return a2;
      }
    }

    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      v8 = a3 / 0x2540BE400;
      v9 = a3;
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      a3 = v9 - 10000000000 * v8;
    }

    *a1 = std::__itoa::__digits_base_10[a3 / 0x5F5E100];
    a1[1] = std::__itoa::__digits_base_10[a3 % 0x5F5E100 / 0xF4240];
    v10 = a3 % 0x5F5E100 % 0xF4240;
    a1[2] = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
    v10 %= 0x2710u;
    a1[3] = std::__itoa::__digits_base_10[v10 / 0x64u];
    a1[4] = std::__itoa::__digits_base_10[v10 % 0x64u];
    return a1 + 5;
  }

  else if (v4)
  {
    if (v4 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    else
    {
      if (v4 != 7)
      {
        v18 = a1;
        v19 = a3;
        v11 = a2 - a1;
        v12 = a2;
        v14 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
        a2 = v12;
        if (v11 >= v14)
        {
          v15 = v19;
          a2 = v18 + v14;
          v16 = (a2 - 1);
          do
          {
            *v16-- = a0123456789abcd[v15 % a4];
            v17 = v15 >= a4;
            v15 /= a4;
          }

          while (v17);
        }

        return a2;
      }

      return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }
  }

  else
  {
    return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (67 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = std::__itoa::__base_16_lut[a3];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, std::locale *a3, unint64_t a4, unint64_t a5, char a6)
{
  *&v24[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    *&v23[15] = -1431655766;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v9;
    *v23 = v9;
    v20 = v9;
    v21 = v9;
    *&v18[16] = v9;
    v19 = v9;
    __src = v9;
    *v18 = v9;
    v16 = 2;
    if (BYTE1(a4) == 2)
    {
      v15 = "0b";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v15 = "0B";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v13 = v24;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v10, a5, a6, &__src, v13, v15, v16);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    *&v18[15] = -1431655766;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v12;
    *v18 = v12;
    v16 = 16;
    if (BYTE1(a4) == 6)
    {
      v15 = "0x";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v15 = "0X";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v13 = &v18[19];
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    *&v18[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v11;
    *v18 = v11;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, &__src, &v18[24], 0, 0xAu);
    goto LABEL_19;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v18[13] = v6;
  __src = v6;
  *v18 = v6;
  if (a1 | a2)
  {
    v7 = "0";
  }

  else
  {
    v7 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, &__src, &v18[29], v7, 8u);
LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, std::locale *a3, unint64_t a4, unint64_t a5, char a6, char *__src, uint64_t a8, _BYTE *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 == 4)
  {
    v25 = a8 - v19;
    if (a2)
    {
      if (v25 > 38 || (v26 = (1233 * (128 - __clz(a2))) >> 12, v25 >= v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1))
      {
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v19 = __udivti3() | 0x30;
          v30 = __udivti3();
          v19[1] = ((1441151881 * v30) >> 57) + 48;
          *(v19 + 1) = std::__itoa::__digits_base_10[v30 % 0x5F5E100 / 0xF4240uLL];
          v31 = v30 % 0x5F5E100 % 0xF4240;
          *(v19 + 2) = std::__itoa::__digits_base_10[v31 / 0x2710uLL];
          v31 %= 0x2710u;
          *(v19 + 3) = std::__itoa::__digits_base_10[v31 / 0x64u];
          *(v19 + 4) = std::__itoa::__digits_base_10[v31 % 0x64u];
          v32 = __udivti3();
          *(v19 + 5) = std::__itoa::__digits_base_10[v32 / 0x5F5E100];
          v33 = v32 % 0x5F5E100;
          *(v19 + 6) = std::__itoa::__digits_base_10[v33 / 0xF4240uLL];
          v33 %= 0xF4240u;
          *(v19 + 7) = std::__itoa::__digits_base_10[v33 / 0x2710uLL];
          v33 %= 0x2710u;
          *(v19 + 8) = std::__itoa::__digits_base_10[v33 / 0x64u];
          *(v19 + 9) = std::__itoa::__digits_base_10[v33 % 0x64u];
          v28 = v19 + 20;
        }

        else
        {
          v27 = __udivti3();
          if (HIDWORD(v27))
          {
            v36 = v19;
            if (v27 > 0x2540BE3FFLL)
            {
              v36 = std::__itoa::__base_10_u32[abi:ne200100](v19, v27 / 0x2540BE400);
              v27 %= 0x2540BE400uLL;
            }

            *v36 = std::__itoa::__digits_base_10[v27 / 0x5F5E100];
            v37 = v27 % 0x5F5E100;
            v36[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v28 = v36 + 5;
          }

          else
          {
            v28 = std::__itoa::__base_10_u32[abi:ne200100](v19, v27);
          }
        }

        v38 = __umodti3();
        *v28 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
        v39 = v38 / 0x2540BE400 % 0x5F5E100;
        *(v28 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
        v39 %= 0xF4240u;
        *(v28 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
        v39 %= 0x2710u;
        *(v28 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
        *(v28 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
        *(v28 + 9) = std::__itoa::__digits_base_10[v38 % 0x2540BE400 / 0x5F5E100];
        *(v28 + 11) = std::__itoa::__digits_base_10[v38 % 0x2540BE400 % 0x5F5E100 / 0xF4240];
        v40 = v38 % 0x2540BE400 % 0x5F5E100 % 0xF4240;
        *(v28 + 13) = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
        v40 %= 0x2710u;
        *(v28 + 15) = std::__itoa::__digits_base_10[v40 / 0x64u];
        *(v28 + 17) = std::__itoa::__digits_base_10[v40 % 0x64u];
        v10 = v28 + 19;
        v13 = a4;
      }
    }

    else if (v25 > 19 || (v29 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v29 - (std::__itoa::__pow10_64[v29] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v34 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v34 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        *v34 = std::__itoa::__digits_base_10[v15 / 0x5F5E100];
        v34[1] = std::__itoa::__digits_base_10[v15 % 0x5F5E100 / 0xF4240];
        v35 = v15 % 0x5F5E100 % 0xF4240;
        v34[2] = std::__itoa::__digits_base_10[v35 / 0x2710uLL];
        v35 %= 0x2710u;
        v34[3] = std::__itoa::__digits_base_10[v35 / 0x64u];
        v34[4] = std::__itoa::__digits_base_10[v35 % 0x64u];
        v10 = (v34 + 5);
      }

      else
      {
        v10 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }
    }
  }

  else if (v23)
  {
    if (v23 == 3)
    {
      v10 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    else if (v23 == 7)
    {
      v10 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    else
    {
      __srca = a3;
      v100 = a8;
      v101 = a8 - v19;
      v102 = a2;
      v103 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
      if (v101 >= v103)
      {
        v100 = &v19[v103];
        v104 = v100 - 1;
        do
        {
          v105 = __udivti3();
          v106 = __PAIR128__(v102, v15) >= a10;
          *v104-- = a0123456789abcd[v15 - v105 * a10];
          v15 = v105;
          v102 = v107;
        }

        while (v106);
      }

      v10 = v100;
      v14 = __srca;
    }
  }

  else
  {
    v10 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
  }

  v113 = v10;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_87;
  }

  if ((v14[5].__locale_ & 1) == 0)
  {
    MEMORY[0x29C267870](v119);
    v41 = v14 + 4;
    if (LOBYTE(v14[5].__locale_) == 1)
    {
      std::locale::operator=(v41, v119);
    }

    else
    {
      std::locale::locale(v41, v119);
      LOBYTE(v14[5].__locale_) = 1;
    }

    std::locale::~locale(v119);
  }

  std::locale::locale(&v116, v14 + 4);
  v42 = std::locale::use_facet(&v116, MEMORY[0x29EDC93F8]);
  v43 = v10 - v19;
  std::locale::~locale(&v116);
  memset(v119, 170, sizeof(v119));
  (v42->__vftable[1].__on_zero_shared)(v119, v42);
  if ((SHIBYTE(v119[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v119[0].__locale_;
    v45 = v119[1].__locale_;
    if (v119[1].__locale_ && v43 > *v119[0].__locale_)
    {
      v108 = v42;
      v110 = v13;
      v111 = a5;
      v46 = v119[0].__locale_;
      goto LABEL_45;
    }

    operator delete(v119[0].__locale_);
    goto LABEL_86;
  }

  if (!HIBYTE(v119[2].__locale_) || v43 <= SLOBYTE(v119[0].__locale_))
  {
LABEL_86:
    v10 = v113;
LABEL_87:
    v68 = HIDWORD(v13);
    v47 = v14->__locale_;
    if ((v16 & 7) == 4)
    {
      v69 = v14;
      v70 = v13;
      v112 = a5;
      v71 = v19 - v11;
      v72 = *(v47 + 32);
      v73 = v19 - v11;
      if (!v72 || ((v75 = *v72, v74 = v72[1], *v72 - v74 >= v71) ? (v73 = v19 - v11) : (v73 = *v72 - v74), (v72[1] = v74 + v71, v75 > v74) ? (v76 = v73 == 0) : (v76 = 1), !v76))
      {
        v83 = *(v47 + 16);
        do
        {
          v85 = *(v47 + 8) - v83;
          if (v85 < v73 + 1)
          {
            (*(v47 + 24))(v47, v73 + 2);
            v83 = *(v47 + 16);
            v85 = *(v47 + 8) - v83;
          }

          if (v85 >= v73)
          {
            v86 = v73;
          }

          else
          {
            v86 = v85;
          }

          if (v86)
          {
            memmove((*v47 + v83), v11, v86);
            v83 = *(v47 + 16);
          }

          v83 += v86;
          *(v47 + 16) = v83;
          v11 += v86;
          v84 = v73 > v85;
          v73 -= v86;
        }

        while (v84);
      }

      v77 = v70 & 0xF8 | 3;
      if (v68 >= v71)
      {
        v78 = v71;
      }

      else
      {
        v78 = v68;
      }

      LODWORD(v13) = v70;
      v68 = (v68 - v78);
      v47 = *v69;
      v79 = 48;
      a5 = v112;
      v10 = v113;
    }

    else
    {
      v79 = BYTE4(a5);
      v77 = v13;
      v19 = v11;
    }

    v80 = v68 << 32;
    v81 = a5 & 0xFFFFFF00FFFFFFFFLL | (v79 << 32);
    if ((v13 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, v10, v47, v13 & 0xFFFF0700 | v80 | v77, v81);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, v10 - v19, v47, v80 | v13 & 0xFFFFFF00 | v77, v81, v10 - v19);
    }

    return v47;
  }

  v108 = v42;
  v110 = v13;
  v111 = a5;
  locale = v119;
  v46 = v119[0].__locale_;
  v45 = v119[1].__locale_;
LABEL_45:
  v47 = v14->__locale_;
  v116.__locale_ = 0;
  v117 = 0;
  v118 = 0;
  v48 = v45 + v46;
  if (SHIBYTE(v119[2].__locale_) >= 0)
  {
    v49 = v119 + SHIBYTE(v119[2].__locale_);
  }

  else
  {
    v49 = v48;
  }

  v50 = *locale;
  v51 = *locale;
  v52 = v43 - v50;
  if (v43 <= v50)
  {
    v88 = 0;
    v87 = v51 + v52;
    v89 = v110;
    goto LABEL_119;
  }

  v53 = v49 - 1;
  do
  {
    while (1)
    {
      v54 = HIBYTE(v118);
      if ((SHIBYTE(v118) & 0x80000000) == 0)
      {
        break;
      }

      v55 = (v118 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v117 != v55)
      {
        v61 = v116.__locale_;
        v55 = v117;
        goto LABEL_75;
      }

      if ((v118 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v114 = locale;
      __srca = v116.__locale_;
      if (v55 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_57;
      }

      v59 = 0;
      v58 = 0x7FFFFFFFFFFFFFF7;
LABEL_67:
      v60 = operator new(v58);
      v61 = v60;
      if (v55)
      {
        memmove(v60, __srca, v55);
      }

      if (!v59)
      {
        operator delete(__srca);
      }

      v116.__locale_ = v61;
      v118 = v58 | 0x8000000000000000;
      locale = v114;
LABEL_75:
      v117 = v55 + 1;
      v63 = v61 + v55;
      *v63 = v51;
      v63[1] = 0;
      if (locale != v53)
      {
        goto LABEL_76;
      }

LABEL_50:
      v51 = *locale;
      v52 -= *locale;
      if (v52 <= 0)
      {
        goto LABEL_115;
      }
    }

    if (HIBYTE(v118) == 22)
    {
      v114 = locale;
      __srca = &v116;
      v55 = 22;
LABEL_57:
      if (v55 + 1 > 2 * v55)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 2 * v55;
      }

      if ((v56 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v56 | 7) + 1;
      }

      if (v56 >= 0x17)
      {
        v58 = v57;
      }

      else
      {
        v58 = 23;
      }

      v59 = v55 == 22;
      goto LABEL_67;
    }

    HIBYTE(v118) = (HIBYTE(v118) + 1) & 0x7F;
    v62 = &v116 + v54;
    *v62 = v51;
    v62[1] = 0;
    if (locale == v53)
    {
      goto LABEL_50;
    }

LABEL_76:
    v64 = (locale + 1);
    v65 = (locale + 1);
    do
    {
      v66 = *v65++;
      v51 = v66;
      if (v66)
      {
        v67 = 1;
      }

      else
      {
        v67 = v64 == v53;
      }

      v64 = v65;
    }

    while (!v67);
    locale = (v65 - 1);
    v52 -= v51;
  }

  while (v52 > 0);
LABEL_115:
  v87 = v51 + v52;
  if (SHIBYTE(v118) < 0)
  {
    v91 = (v118 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v89 = v110;
    if (v117 == v91)
    {
      if ((v118 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v90 = v116.__locale_;
      v93 = 0x7FFFFFFFFFFFFFF7;
      if (v91 >= 0x3FFFFFFFFFFFFFF3)
      {
        v96 = 0;
      }

      else
      {
LABEL_123:
        if (v91 + 1 > 2 * v91)
        {
          v94 = v91 + 1;
        }

        else
        {
          v94 = 2 * v91;
        }

        if ((v94 | 7) == 0x17)
        {
          v95 = 25;
        }

        else
        {
          v95 = (v94 | 7) + 1;
        }

        if (v94 >= 0x17)
        {
          v93 = v95;
        }

        else
        {
          v93 = 23;
        }

        v96 = v91 == 22;
      }

      v97 = operator new(v93);
      v92 = v97;
      if (v91)
      {
        memmove(v97, v90, v91);
      }

      if (!v96)
      {
        operator delete(v90);
      }

      v116.__locale_ = v92;
      v118 = v93 | 0x8000000000000000;
    }

    else
    {
      v92 = v116.__locale_;
      v91 = v117;
    }

    v117 = v91 + 1;
  }

  else
  {
    v88 = HIBYTE(v118);
    v89 = v110;
    if (HIBYTE(v118) == 22)
    {
      v90 = &v116;
      v91 = 22;
      goto LABEL_123;
    }

LABEL_119:
    v91 = v88;
    HIBYTE(v118) = (v88 + 1) & 0x7F;
    v92 = &v116;
  }

  v98 = v92 + v91;
  *v98 = v87;
  v98[1] = 0;
  v99 = (v108->__vftable[1].~facet_0)(v108);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v47, v11, v19, v113, &v116, v99, v89, v111);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(v116.__locale_);
  }

  if (SHIBYTE(v119[2].__locale_) < 0)
  {
    operator delete(v119[0].__locale_);
  }

  return v47;
}

void sub_296E82F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) >= a3)
  {
    v6 = a3 * a3;
    v7 = a3 * a3 * a3;
    v3 = 4;
    while (1)
    {
      if (__PAIR128__(a2, a1) < v6)
      {
        return (v3 - 2);
      }

      if (__PAIR128__(a2, a1) < v7)
      {
        break;
      }

      if (__PAIR128__(a2, a1) < v6 * v6)
      {
        return v3;
      }

      a1 = __udivti3();
      v3 = (v3 + 4);
      if (__PAIR128__(a2, a1) < a3)
      {
        return (v3 - 3);
      }
    }

    return (v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x11)
    {
      v8 = a3;
      v10 = a4;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 4;
        v10 = a4 >> 4;
        *(v7 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v7 -= 4;
        v11 = a3 <= 0x10F;
        a3 = v8;
        a4 >>= 4;
      }

      while (!v11);
    }

    v12 = (v7 - 1);
    do
    {
      v13 = v8 & 1;
      v11 = v8 <= 1;
      *(&v14 + 1) = v10;
      *&v14 = v8;
      v8 = v14 >> 1;
      v10 >>= 1;
      *v12-- = a01[v13];
    }

    while (!v11);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x41)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 6;
        a4 >>= 6;
        *(v7 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x40);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 7;
      v12 = v8 <= 7;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 3;
      a4 >>= 3;
      *v10-- = a01234567[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (131 - v5) >> 2;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x101)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 8;
        a4 >>= 8;
        *(v7 - 2) = std::__itoa::__base_16_lut[a3];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x100);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 0xF;
      v12 = v8 <= 0xF;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 4;
      a4 >>= 4;
      *v10-- = a0123456789abcd_0[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  __src = -1431655766;
  if (a4)
  {
    p_src = (&__src + 1);
    LOBYTE(__src) = 45;
    if (BYTE1(a2) > 0x10u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 43;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else if (v7 == 3)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 32;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      p_src = &__src;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }
  }

  if (((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
    goto LABEL_15;
  }

LABEL_13:
  v8 = 6;
  if (BYTE1(a2) != 18)
  {
    v8 = 0;
  }

LABEL_15:
  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  *(p_src + 2) = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
  return a1;
}

uint64_t std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v13 = HIDWORD(a5);
  v14 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v15 = a7 - a1;
      v16 = *(a3 + 32);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_7:
      v17 = *v16;
      v18 = v16[1];
      if (*v16 - v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = *v16 - v18;
      }

      v20 = v18 + v15;
      v16[1] = v20;
      if (v17 <= v18 || v19 == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if ((a4 & 7) == 3)
  {
LABEL_6:
    v14 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a6 + a8), SHIDWORD(a5));
    v15 = a7 - a1;
    v16 = *(a3 + 32);
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v22 = v14 >> 1;
  v14 -= v14 >> 1;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v22, SHIDWORD(a5));
  v15 = a7 - a1;
  v16 = *(a3 + 32);
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_17:
  v19 = v15;
LABEL_18:
  v23 = *(a3 + 16);
  do
  {
    v25 = *(a3 + 8) - v23;
    if (v25 < v19 + 1)
    {
      (*(a3 + 24))(a3, v19 + 2);
      v23 = *(a3 + 16);
      v25 = *(a3 + 8) - v23;
    }

    if (v25 >= v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      memmove((*a3 + v23), a1, v26);
      v23 = *(a3 + 16);
    }

    v23 += v26;
    *(a3 + 16) = v23;
    a1 += v26;
    v24 = v19 > v25;
    v19 -= v26;
  }

  while (v24);
  v16 = *(a3 + 32);
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = *v16;
  v20 = v16[1];
LABEL_30:
  v27 = v17 - v20;
  if (v17 - v20 >= v8)
  {
    v27 = v8;
  }

  v24 = v17 > v20;
  v28 = v20 + v8;
  v16[1] = v28;
  if (!v24 || v27 == 0)
  {
    v30 = a2 - a7;
    goto LABEL_49;
  }

  v23 = *(a3 + 16);
  v8 = v27;
  do
  {
LABEL_40:
    v31 = *(a3 + 8) - v23;
    if (v31 < v8 + 1)
    {
      (*(a3 + 24))(a3, v8 + 2);
      v23 = *(a3 + 16);
      v31 = *(a3 + 8) - v23;
    }

    if (v31 >= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      memset((*a3 + v23), 48, v32);
      v23 = *(a3 + 16);
    }

    v23 += v32;
    *(a3 + 16) = v23;
    v24 = v8 > v31;
    v8 -= v32;
  }

  while (v24);
  v16 = *(a3 + 32);
  v30 = a2 - a7;
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = *v16;
  v28 = v16[1];
LABEL_49:
  v33 = v17 - v28;
  if (v17 - v28 >= v30)
  {
    v33 = v30;
  }

  v16[1] = v28 + v30;
  if (v17 > v28 && v33 != 0)
  {
    v23 = *(a3 + 16);
    v30 = v33;
    do
    {
LABEL_61:
      v36 = *(a3 + 8) - v23;
      if (v36 < v30 + 1)
      {
        (*(a3 + 24))(a3, v30 + 2);
        v23 = *(a3 + 16);
        v36 = *(a3 + 8) - v23;
      }

      if (v36 >= v30)
      {
        v37 = v30;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        memmove((*a3 + v23), a7, v37);
        v23 = *(a3 + 16);
      }

      v23 += v37;
      *(a3 + 16) = v23;
      a7 += v37;
      v24 = v30 > v36;
      v30 -= v37;
    }

    while (v24);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, v13);
}

uint64_t std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  memset(__p, 170, 24);
  v138 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v138->__vftable[1].__on_zero_shared)(__p);
  v9 = a3[2];
  v10 = *a3;
  v140 = a3;
  if (v9 >= a3[1])
  {
    v9 = a3[1];
  }

  v11 = v9 - v10;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_59;
    }

    v15 = __p[0];
    v14 = *__p[0];
    if (v11 <= v14)
    {
      *__p[0] = 0;
      __p[1] = 0;
      goto LABEL_59;
    }

    v134 = a5;
    v135 = v9 - v10;
    v16 = *__p[0];
    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(__p[2]))
    {
      goto LABEL_59;
    }

    if (v11 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(__p[2]) = 0;
      goto LABEL_59;
    }

    v134 = a5;
    v135 = v9 - v10;
    v13 = __p[0];
    v12 = __p[1];
    v14 = SLOBYTE(__p[0]);
    v15 = __p;
    v16 = __p[0];
  }

  v142 = 0uLL;
  v143 = 0;
  v17 = &v12[v13];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p + SHIBYTE(__p[2]);
  }

  else
  {
    v18 = v17;
  }

  v19 = v135 - v14;
  if (v135 <= v14)
  {
    v37 = 0;
    v36 = v16 + v19;
    a5 = v134;
    v11 = v135;
    goto LABEL_56;
  }

  v20 = (v18 - 1);
  do
  {
    while (1)
    {
      v21 = HIBYTE(v143);
      if ((SHIBYTE(v143) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v143 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v142 + 1) != v23)
      {
        v23 = *(&v142 + 1);
        v29 = v142;
        goto LABEL_40;
      }

      if ((v143 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v142;
      *v141 = v15;
      if (v23 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_22;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
      v28 = operator new(v26);
      v29 = v28;
      if (v23)
      {
        memmove(v28, v22, v23);
      }

      if (!v27)
      {
        operator delete(v22);
      }

      *&v142 = v29;
      v143 = v26 | 0x8000000000000000;
      v15 = *v141;
LABEL_40:
      *(&v142 + 1) = v23 + 1;
      v31 = &v29[v23];
      *v31 = v16;
      v31[1] = 0;
      if (v15 != v20)
      {
        goto LABEL_41;
      }

LABEL_15:
      v16 = *v15;
      v19 -= *v15;
      if (v19 <= 0)
      {
        goto LABEL_51;
      }
    }

    if (HIBYTE(v143) == 22)
    {
      *v141 = v15;
      v22 = &v142;
      v23 = 22;
LABEL_22:
      if (v23 + 1 > 2 * v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2 * v23;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v26 = v25;
      }

      else
      {
        v26 = 23;
      }

      v27 = v23 == 22;
      goto LABEL_32;
    }

    HIBYTE(v143) = (HIBYTE(v143) + 1) & 0x7F;
    v30 = &v142 + v21;
    *v30 = v16;
    v30[1] = 0;
    if (v15 == v20)
    {
      goto LABEL_15;
    }

LABEL_41:
    v32 = (v15 + 1);
    v33 = (v15 + 1);
    do
    {
      v34 = *v33;
      v33 = (v33 + 1);
      v16 = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = v32 == v20;
      }

      v32 = v33;
    }

    while (!v35);
    v15 = (v33 - 1);
    v19 -= v16;
  }

  while (v19 > 0);
LABEL_51:
  v36 = v16 + v19;
  if (SHIBYTE(v143) < 0)
  {
    v39 = (v143 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a5 = v134;
    v11 = v135;
    if (*(&v142 + 1) == v39)
    {
      if ((v143 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v38 = v142;
      v126 = 0x7FFFFFFFFFFFFFF7;
      if (v39 >= 0x3FFFFFFFFFFFFFF3)
      {
        v129 = 0;
      }

      else
      {
LABEL_205:
        if (v39 + 1 > 2 * v39)
        {
          v127 = v39 + 1;
        }

        else
        {
          v127 = 2 * v39;
        }

        if ((v127 | 7) == 0x17)
        {
          v128 = 25;
        }

        else
        {
          v128 = (v127 | 7) + 1;
        }

        if (v127 >= 0x17)
        {
          v126 = v128;
        }

        else
        {
          v126 = 23;
        }

        v129 = v39 == 22;
      }

      v130 = v126;
      v131 = operator new(v126);
      v132 = v131;
      if (v39)
      {
        memmove(v131, v38, v39);
      }

      if (!v129)
      {
        operator delete(v38);
      }

      *&v142 = v132;
      v143 = v130 | 0x8000000000000000;
    }

    else
    {
      v39 = *(&v142 + 1);
      v132 = v142;
    }

    *(&v142 + 1) = v39 + 1;
    v133 = &v132[v39];
    *v133 = v36;
    v133[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v37 = HIBYTE(v143);
    a5 = v134;
    v11 = v135;
    if (HIBYTE(v143) == 22)
    {
      v38 = &v142;
      v39 = 22;
      goto LABEL_205;
    }

LABEL_56:
    HIBYTE(v143) = (v37 + 1) & 0x7F;
    v40 = &v142 + v37;
    *v40 = v36;
    v40[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_57:
      operator delete(__p[0]);
    }
  }

  *__p = v142;
  __p[2] = v143;
LABEL_59:
  v41 = *(a2 + 16);
  v42 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v42 = __p[1];
  }

  v43 = &v42[v140[3] - v41 + *(a2 + 4) - (v42 != 0)];
  v44 = a5 & 7;
  v45 = (a5 >> 32) - v43;
  if (a5 >> 32 <= v43)
  {
    *v141 = 0;
    v45 = 0;
    v46 = HIDWORD(a6);
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (v44 == 4)
  {
    LOBYTE(v46) = 48;
  }

  else
  {
    v46 = HIDWORD(a6);
  }

  if (v44 == 4)
  {
    v47 = 3;
  }

  else
  {
    v47 = v44;
  }

  if (v47 > 1)
  {
    if (v47 != 3)
    {
      *v141 = v45 - (v45 >> 1);
      v45 >>= 1;
      if (v44 != 4)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (!v47)
  {
LABEL_75:
    *v141 = 0;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  *v141 = v45;
  v45 = 0;
  if (v44 != 4)
  {
    goto LABEL_83;
  }

LABEL_78:
  if (v10 != v41)
  {
    v48 = *v41;
    v49 = *(a1 + 32);
    if (!v49 || (v51 = *v49, v50 = v49[1], v49[1] = v50 + 1, v50 < v51))
    {
      v52 = *a1;
      v53 = *(a1 + 16);
      *(a1 + 16) = v53 + 1;
      *(v52 + v53) = v48;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v54 = v11;
        v55 = v45;
        (*(a1 + 24))(a1, 2);
        v45 = v55;
        v11 = v54;
      }
    }
  }

LABEL_83:
  __ca = HIDWORD(a6) & 0xFFFFFF00 | v46;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v45, __ca);
  if (v44 != 4)
  {
    v56 = *(a2 + 16);
    if (v10 != v56)
    {
      v57 = *v56;
      v58 = *(a1 + 32);
      if (!v58 || (v60 = *v58, v59 = v58[1], v58[1] = v59 + 1, v59 < v60))
      {
        v61 = *a1;
        v62 = *(a1 + 16);
        *(a1 + 16) = v62 + 1;
        *(v61 + v62) = v57;
        if (*(a1 + 16) == *(a1 + 8))
        {
          (*(a1 + 24))(a1, 2);
        }
      }
    }
  }

  v63 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v63 = __p[1];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v64 = __p[0];
LABEL_94:
    v65 = v63 + v64;
    v66 = (v138->__vftable[1].~facet_0)(v138);
    v67 = v64 + 1;
    while (1)
    {
      v69 = v65 - 1;
      v68 = *(v65 - 1);
      v70 = *(a1 + 32);
      if (v70)
      {
        v72 = *v70;
        v71 = v70[1];
        if (*v70 - v71 >= v68)
        {
          v73 = *(v65 - 1);
        }

        else
        {
          v73 = *v70 - v71;
        }

        v70[1] = v71 + v68;
        if (v72 <= v71 || v73 == 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v73 = *(v65 - 1);
      }

      v80 = *(a1 + 16);
      v81 = v10;
      do
      {
        v83 = *(a1 + 8) - v80;
        if (v83 < v73 + 1)
        {
          (*(a1 + 24))(a1, v73 + 2);
          v80 = *(a1 + 16);
          v83 = *(a1 + 8) - v80;
        }

        if (v83 >= v73)
        {
          v84 = v73;
        }

        else
        {
          v84 = v83;
        }

        if (v84)
        {
          memmove((*a1 + v80), v81, v84);
          v80 = *(a1 + 16);
        }

        v80 += v84;
        *(a1 + 16) = v80;
        v81 += v84;
        v82 = v73 > v83;
        v73 -= v84;
      }

      while (v82);
LABEL_104:
      if (v65 == v67)
      {
        goto LABEL_126;
      }

      v10 += *(v65 - 1);
      v75 = *(a1 + 32);
      if (v75)
      {
        v77 = *v75;
        v76 = v75[1];
        v75[1] = v76 + 1;
        --v65;
        if (v76 >= v77)
        {
          continue;
        }
      }

      v78 = *a1;
      v79 = *(a1 + 16);
      *(a1 + 16) = v79 + 1;
      *(v78 + v79) = v66;
      v65 = v69;
      if (*(a1 + 16) == *(a1 + 8))
      {
        (*(a1 + 24))(a1, 2);
        v65 = v69;
      }
    }
  }

  if (HIBYTE(__p[2]))
  {
    v64 = __p;
    goto LABEL_94;
  }

LABEL_120:
  v85 = *(a1 + 32);
  if (v85)
  {
    v87 = *v85;
    v86 = v85[1];
    if (*v85 - v86 >= v11)
    {
      v88 = v11;
    }

    else
    {
      v88 = *v85 - v86;
    }

    v85[1] = v86 + v11;
    if (v87 <= v86 || !v88)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v88 = v11;
  }

  v123 = *(a1 + 16);
  do
  {
    v124 = *(a1 + 8) - v123;
    if (v124 < v88 + 1)
    {
      (*(a1 + 24))(a1, v88 + 2);
      v123 = *(a1 + 16);
      v124 = *(a1 + 8) - v123;
    }

    if (v124 >= v88)
    {
      v125 = v88;
    }

    else
    {
      v125 = v124;
    }

    if (v125)
    {
      memmove((*a1 + v123), v10, v125);
      v123 = *(a1 + 16);
    }

    v123 += v125;
    *(a1 + 16) = v123;
    v10 += v125;
    v82 = v88 > v124;
    v88 -= v125;
  }

  while (v82);
LABEL_126:
  if (v140[1] != v140[3])
  {
    v89 = (v138->__vftable[1].~facet)(v138);
    v90 = *(a1 + 32);
    if (!v90 || (v92 = *v90, v91 = v90[1], v90[1] = v91 + 1, v91 < v92))
    {
      v93 = *a1;
      v94 = *(a1 + 16);
      *(a1 + 16) = v94 + 1;
      *(v93 + v94) = v89;
      if (*(a1 + 16) == *(a1 + 8))
      {
        (*(a1 + 24))(a1, 2);
      }
    }

    v95 = v140[1];
    v96 = (v95 + 1);
    v97 = v140[2] - (v95 + 1);
    v98 = *(a1 + 32);
    if (v98)
    {
      v99 = *v98;
      v100 = v98[1];
      if (*v98 - v100 >= v97)
      {
        v101 = v97;
      }

      else
      {
        v101 = *v98 - v100;
      }

      v102 = v100 + v97;
      v98[1] = v102;
      if (v99 <= v100 || !v101)
      {
        v103 = *(a2 + 4);
        goto LABEL_151;
      }
    }

    else
    {
      v101 = v140[2] - (v95 + 1);
    }

    v104 = *(a1 + 16);
    do
    {
      v105 = *(a1 + 8) - v104;
      if (v105 < v101 + 1)
      {
        (*(a1 + 24))(a1, v101 + 2);
        v104 = *(a1 + 16);
        v105 = *(a1 + 8) - v104;
      }

      if (v105 >= v101)
      {
        v106 = v101;
      }

      else
      {
        v106 = v105;
      }

      if (v106)
      {
        memmove((*a1 + v104), v96, v106);
        v104 = *(a1 + 16);
      }

      v104 += v106;
      *(a1 + 16) = v104;
      v96 += v106;
      v82 = v101 > v105;
      v101 -= v106;
    }

    while (v82);
    v98 = *(a1 + 32);
    v103 = *(a2 + 4);
    if (v98)
    {
      v99 = *v98;
      v102 = v98[1];
LABEL_151:
      v107 = v99 - v102;
      if (v99 - v102 >= v103)
      {
        v107 = v103;
      }

      v98[1] = v102 + v103;
      if (v99 > v102 && v107 != 0)
      {
        v104 = *(a1 + 16);
        v103 = v107;
        goto LABEL_184;
      }
    }

    else
    {
      do
      {
LABEL_184:
        v121 = *(a1 + 8) - v104;
        if (v121 < v103 + 1)
        {
          (*(a1 + 24))(a1, v103 + 2);
          v104 = *(a1 + 16);
          v121 = *(a1 + 8) - v104;
        }

        if (v121 >= v103)
        {
          v122 = v103;
        }

        else
        {
          v122 = v121;
        }

        if (v122)
        {
          memset((*a1 + v104), 48, v122);
          v104 = *(a1 + 16);
        }

        v104 += v122;
        *(a1 + 16) = v104;
        v82 = v103 > v121;
        v103 -= v122;
      }

      while (v82);
    }
  }

  v110 = v140[2];
  v109 = v140[3];
  if (v110 != v109)
  {
    v111 = v109 - v110;
    v112 = *(a1 + 32);
    if (v112)
    {
      v114 = *v112;
      v113 = v112[1];
      if (*v112 - v113 >= v111)
      {
        v115 = v111;
      }

      else
      {
        v115 = *v112 - v113;
      }

      v112[1] = v113 + v111;
      if (v114 > v113 && v115 != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v115 = v111;
LABEL_172:
      v118 = *(a1 + 16);
      do
      {
        v119 = *(a1 + 8) - v118;
        if (v119 < v115 + 1)
        {
          (*(a1 + 24))(a1, v115 + 2);
          v118 = *(a1 + 16);
          v119 = *(a1 + 8) - v118;
        }

        if (v119 >= v115)
        {
          v120 = v115;
        }

        else
        {
          v120 = v119;
        }

        if (v120)
        {
          memmove((*a1 + v118), v110, v120);
          v118 = *(a1 + 16);
        }

        v118 += v120;
        *(a1 + 16) = v118;
        v110 += v120;
        v82 = v115 > v119;
        v115 -= v120;
      }

      while (v82);
    }
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v141, __ca);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_296E841E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    v27 = a1;
    operator delete(__p);
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unsigned __int8 *a2, size_t a3, uint64_t *a4)
{
  v6 = *a4;
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v9 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v6, v8, v7);
    return v6;
  }

  v10 = 0;
  v11 = a2;
  if (a3 && v9)
  {
    v12 = v9 & 0x7FFFFFFF;
    if (*a2 < 0)
    {
      v14 = a2;
    }

    else
    {
      v13 = 0;
      v11 = &a2[v12];
      v14 = &a2[v12 - 1];
      while (1)
      {
        if (a3 - 1 == v13)
        {
          v10 = a3;
          v11 = &a2[a3];
          goto LABEL_16;
        }

        if (v12 - 1 == v13)
        {
          break;
        }

        v15 = a2[++v13];
        if (v15 < 0)
        {
          v12 = v12 - v13 + 1;
          v14 = &a2[v13 - 1];
          goto LABEL_12;
        }
      }

      if ((*v11 & 0x80000000) == 0)
      {
        v10 = v9 & 0x7FFFFFFF;
        goto LABEL_16;
      }

      v12 = 1;
    }

LABEL_12:
    v10 = v14 - a2 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v14, &a2[a3], v12, 0);
  }

LABEL_16:
  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v11 - a2, v6, v8, v9, v10);
  return v6;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13 = v15;
          v13 = (v13 + 1);
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_65;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C267870](v86);
    v19 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v19, v86);
    }

    else
    {
      std::locale::locale(v19, v86);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v86);
  }

  std::locale::locale(&v83, (a2 + 32));
  v20 = std::locale::use_facet(&v83, MEMORY[0x29EDC93F8]);
  v21 = v18 - v13;
  std::locale::~locale(&v83);
  memset(v86, 170, sizeof(v86));
  (v20->__vftable[1].__on_zero_shared)(v86, v20);
  if ((SHIBYTE(v86[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v86[0].__locale_;
    v23 = v86[1].__locale_;
    if (v86[1].__locale_ && v21 > *v86[0].__locale_)
    {
      v76 = v20;
      v77 = v18;
      v75 = a3;
      v79 = a4;
      v24 = v86[0].__locale_;
      goto LABEL_24;
    }

    operator delete(v86[0].__locale_);
LABEL_65:
    v46 = HIDWORD(a3);
    v25 = *a2;
    if ((a3 & 7) == 4)
    {
      v78 = v18;
      v80 = a4;
      v47 = v13 - v8;
      v48 = *(v25 + 32);
      v49 = v13 - v8;
      if (!v48 || ((v51 = *v48, v50 = v48[1], *v48 - v50 >= v47) ? (v49 = v13 - v8) : (v49 = *v48 - v50), (v48[1] = v50 + v47, v51 > v50) ? (v52 = v49 == 0) : (v52 = 1), !v52))
      {
        v59 = *(v25 + 16);
        do
        {
          v61 = *(v25 + 8) - v59;
          if (v61 < v49 + 1)
          {
            (*(v25 + 24))(v25, v49 + 2);
            v59 = *(v25 + 16);
            v61 = *(v25 + 8) - v59;
          }

          if (v61 >= v49)
          {
            v62 = v49;
          }

          else
          {
            v62 = v61;
          }

          if (v62)
          {
            memmove((*v25 + v59), v8, v62);
            v59 = *(v25 + 16);
          }

          v59 += v62;
          *(v25 + 16) = v59;
          v8 += v62;
          v60 = v49 > v61;
          v49 -= v62;
        }

        while (v60);
      }

      v53 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v47)
      {
        v54 = v47;
      }

      else
      {
        v54 = HIDWORD(a3);
      }

      v46 = (HIDWORD(a3) - v54);
      v25 = *a2;
      v55 = 48;
      v18 = v78;
      a4 = v80;
    }

    else
    {
      v55 = BYTE4(a4);
      v53 = a3;
      v13 = v8;
    }

    v56 = v46 << 32;
    v57 = a4 & 0xFFFFFF00FFFFFFFFLL | (v55 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v18, v25, a3 & 0xFFFF0700 | v56 | v53, v57);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v18 - v13, v25, v56 | a3 & 0xFFFFFF00 | v53, v57, v18 - v13);
    }

    return v25;
  }

  if (!HIBYTE(v86[2].__locale_) || v21 <= SLOBYTE(v86[0].__locale_))
  {
    goto LABEL_65;
  }

  v76 = v20;
  v77 = v18;
  v75 = a3;
  v79 = a4;
  locale = v86;
  v24 = v86[0].__locale_;
  v23 = v86[1].__locale_;
LABEL_24:
  v25 = *a2;
  v83.__locale_ = 0;
  v84 = 0;
  v85 = 0;
  v26 = v23 + v24;
  if (SHIBYTE(v86[2].__locale_) >= 0)
  {
    v27 = v86 + SHIBYTE(v86[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v21 - v28;
  if (v21 <= v28)
  {
    v64 = 0;
    v63 = v29 + v30;
    goto LABEL_97;
  }

  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v85);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
        break;
      }

      v33 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v84 != v33)
      {
        v39 = v83.__locale_;
        v33 = v84;
        goto LABEL_54;
      }

      if ((v85 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v81 = locale;
      __src = v83.__locale_;
      if (v33 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_36;
      }

      v37 = 0;
      v36 = 0x7FFFFFFFFFFFFFF7;
LABEL_46:
      v38 = operator new(v36);
      v39 = v38;
      if (v33)
      {
        memmove(v38, __src, v33);
      }

      if (!v37)
      {
        operator delete(__src);
      }

      v83.__locale_ = v39;
      v85 = v36 | 0x8000000000000000;
      locale = v81;
LABEL_54:
      v84 = v33 + 1;
      v41 = v39 + v33;
      *v41 = v29;
      v41[1] = 0;
      if (locale != v31)
      {
        goto LABEL_55;
      }

LABEL_29:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_93;
      }
    }

    if (HIBYTE(v85) == 22)
    {
      v81 = locale;
      __src = &v83;
      v33 = 22;
LABEL_36:
      if (v33 + 1 > 2 * v33)
      {
        v34 = v33 + 1;
      }

      else
      {
        v34 = 2 * v33;
      }

      if ((v34 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v34 | 7) + 1;
      }

      if (v34 >= 0x17)
      {
        v36 = v35;
      }

      else
      {
        v36 = 23;
      }

      v37 = v33 == 22;
      goto LABEL_46;
    }

    HIBYTE(v85) = (HIBYTE(v85) + 1) & 0x7F;
    v40 = &v83 + v32;
    *v40 = v29;
    v40[1] = 0;
    if (locale == v31)
    {
      goto LABEL_29;
    }

LABEL_55:
    v42 = (locale + 1);
    v43 = (locale + 1);
    do
    {
      v44 = *v43++;
      v29 = v44;
      if (v44)
      {
        v45 = 1;
      }

      else
      {
        v45 = v42 == v31;
      }

      v42 = v43;
    }

    while (!v45);
    locale = (v43 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_93:
  v63 = v29 + v30;
  if (SHIBYTE(v85) < 0)
  {
    v66 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v84 == v66)
    {
      if ((v85 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v65 = v83.__locale_;
      v68 = 0x7FFFFFFFFFFFFFF7;
      if (v66 >= 0x3FFFFFFFFFFFFFF3)
      {
        v71 = 0;
      }

      else
      {
LABEL_101:
        if (v66 + 1 > 2 * v66)
        {
          v69 = v66 + 1;
        }

        else
        {
          v69 = 2 * v66;
        }

        if ((v69 | 7) == 0x17)
        {
          v70 = 25;
        }

        else
        {
          v70 = (v69 | 7) + 1;
        }

        if (v69 >= 0x17)
        {
          v68 = v70;
        }

        else
        {
          v68 = 23;
        }

        v71 = v66 == 22;
      }

      v72 = operator new(v68);
      v67 = v72;
      if (v66)
      {
        memmove(v72, v65, v66);
      }

      if (!v71)
      {
        operator delete(v65);
      }

      v83.__locale_ = v67;
      v85 = v68 | 0x8000000000000000;
    }

    else
    {
      v67 = v83.__locale_;
      v66 = v84;
    }

    v84 = v66 + 1;
  }

  else
  {
    v64 = HIBYTE(v85);
    if (HIBYTE(v85) == 22)
    {
      v65 = &v83;
      v66 = 22;
      goto LABEL_101;
    }

LABEL_97:
    v66 = v64;
    HIBYTE(v85) = (v64 + 1) & 0x7F;
    v67 = &v83;
  }

  v73 = v67 + v66;
  *v73 = v63;
  v73[1] = 0;
  v74 = (v76->__vftable[1].~facet_0)(v76);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v25, v8, v13, v77, &v83, v74, v75, v79);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83.__locale_);
  }

  if (SHIBYTE(v86[2].__locale_) < 0)
  {
    operator delete(v86[0].__locale_);
  }

  return v25;
}

void sub_296E849E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL ctu::cf::insert<char const*,__CFData const*>(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  v9 = 0;
  ctu::cf::convert_copy(&v9, "kKeyBasebandWakeData", 0x8000100, a3, a5);
  v7 = v9;
  v9 = a2;
  CFRetain(a2);
  if (v7)
  {
    CFDictionaryAddValue(a1, v7, a2);
  }

  CFRelease(a2);
  if (v7)
  {
    CFRelease(v7);
  }

  return v7 != 0;
}

void sub_296E84AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJDnNS3_IS6_EEEEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v5 = 0;
  if (v2 && (v3 = CFGetTypeID(v2), v3 == CFDictionaryGetTypeID()))
  {
    cf = v2;
    CFRetain(v2);
  }

  else
  {
    cf = 0;
  }

  (*(v1 + 16))(v1, &v5, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296E84BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296E84BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v61 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v37 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = *v1;
  v4 = std::__shared_weak_count::lock(v2);
  v42 = v4;
  if (!v4)
  {
    goto LABEL_33;
  }

  if (!v1[1])
  {
    goto LABEL_31;
  }

  v5 = v1[3];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v6;
  *v40 = v6;
  v38[3] = v6;
  v38[4] = v6;
  v38[1] = v6;
  v38[2] = v6;
  v38[0] = v6;
  mipc::nw::Set_Radio_State_Req::Set_Radio_State_Req();
  v7 = v3[32];
  v8 = *(v1 + 32);
  v9 = radio::OpMode::convertMode();
  v10 = operator new(1uLL);
  *v10 = v9;
  v11 = __p[1];
  __p[1] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  if (*(v1 + 32) == 1 && *(v1 + 33) == 1)
  {
    v12 = operator new(1uLL);
    *v12 = -126;
    v13 = v40[0];
    v40[0] = v12;
    if (v13)
    {
      operator delete(v13);
    }
  }

  v14 = v5 / 0xF4240;
  v15 = v3[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v3[32];
    v17 = *(v1 + 32);
    v18 = radio::OpMode::convertMode();
    if (v18 == 1)
    {
      v19 = &v52 + 2;
      BYTE7(v53) = 2;
      LOWORD(v52) = 28239;
    }

    else if (v18)
    {
      v19 = &v52 + 7;
      BYTE7(v53) = 7;
      qmemcpy(&v52, "Unknown", 7);
    }

    else
    {
      v19 = &v52 + 3;
      BYTE7(v53) = 3;
      qmemcpy(&v52, "Off", 3);
    }

    *v19 = 0;
    v20 = *(v1 + 33);
    *buf = 136315650;
    v47 = &v52;
    v48 = 1024;
    v49 = v20;
    v50 = 2048;
    v51 = v14;
    _os_log_impl(&dword_296E3E000, v15, OS_LOG_TYPE_DEFAULT, "#I Sending request to set radio state to %s (poweroff: %d) with timeout %llu ms", buf, 0x1Cu);
    if (SBYTE7(v53) < 0)
    {
      operator delete(v52);
    }
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = v21;
  v43[2] = v21;
  v43[0] = v21;
  mipc::nw::Set_Radio_State_Req::serialize(v43, v38);
  if (v44)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v22;
  v59 = v22;
  v56 = v22;
  v57 = v22;
  v54 = v22;
  v55 = v22;
  v52 = v22;
  v53 = v22;
  MEMORY[0x29C266720](&v52, v43);
  abb::router::SendProxy::SendProxy(buf, (v3 + 29), &v52);
  MEMORY[0x29C266730](&v52);
  if (v44 != -1)
  {
    *&v52 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v52 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v52 + v44))(&v45, v43);
  }

  abb::router::SendProxy::timeout();
  v23 = abb::router::SendProxy::queuePolicy();
  v24 = v3[2];
  if (!v24 || (v25 = v3[1], (v26 = std::__shared_weak_count::lock(v24)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(v1 + 33);
  v29 = operator new(0x28uLL);
  *v29 = &unk_2A1E131E8;
  v29[1] = v3;
  v29[2] = v25;
  v29[3] = v27;
  *(v29 + 32) = v28;
  *(&v53 + 1) = v29;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](&v52, (v23 + 152));
  if (*(&v53 + 1) == &v52)
  {
    (*(**(&v53 + 1) + 32))(*(&v53 + 1));
    MEMORY[0x29C266750](buf);
    mipc::nw::Set_Radio_State_Req::~Set_Radio_State_Req(v38);
    v4 = v42;
    if (!v42)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (*(&v53 + 1))
  {
    (*(**(&v53 + 1) + 40))();
  }

  MEMORY[0x29C266750](buf);
  mipc::nw::Set_Radio_State_Req::~Set_Radio_State_Req(v38);
  v4 = v42;
  if (v42)
  {
LABEL_31:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v30 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v30);
    }
  }

LABEL_33:
  if (v37)
  {
    v31 = v37[2];
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    operator delete(v37);
  }

  v32 = a1;
  if (a1)
  {
    v33 = a1[2];
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v32 = a1;
    }

    operator delete(v32);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_296E85198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  mipc::nw::Set_Radio_State_Req::~Set_Radio_State_Req(&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  std::unique_ptr<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0,std::default_delete<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0,std::default_delete<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(uint64_t result)
{
  *result = &unk_2A1E131E8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E131E8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  result = operator new(0x28uLL);
  *result = &unk_2A1E131E8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[32] = *(a1 + 32);
  return result;
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E131E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[5] = v4;
  v15[6] = v4;
  v15[3] = v4;
  v15[4] = v4;
  v15[1] = v4;
  v15[2] = v4;
  v15[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v16.__val_, this);
    if ((v17 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = v16;
    v6 = mipc::toErrorCode(v16.__val_, v5);
    std::error_code::message(&v19, &v22);
    v20 = 0;
    v21 = 0;
    v18 = v6;
    MEMORY[0x29C2669F0](v15, &v18, 1);
    v7 = v21;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v18, this);
    v8 = *v18;
    abb::router::Message::getRawMsg(&v16.__val_, this);
    MEMORY[0x29C266A00](v15, v8, *(*&v16.__val_ + 8) - **&v16.__val_);
    cat = v16.__cat_;
    if (v16.__cat_ && !atomic_fetch_add(&v16.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = v19.__r_.__value_.__r.__words[0];
    if (v19.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v19.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 8);
    v13 = std::__shared_weak_count::lock(v11);
    v19.__r_.__value_.__r.__words[0] = v13;
    if (v13)
    {
      v14 = v13;
      v18 = *(a1 + 16);
      if (v18)
      {
        radio::MipcCommandDriver::handleSetRadioStateCnf_sync(v12, v15, *(a1 + 32));
      }

      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  mipc::nw::Set_Radio_State_Cnf::~Set_Radio_State_Cnf(v15);
}

void sub_296E85698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v15 - 96);
  _Unwind_Resume(a1);
}

void sub_296E856DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 96);
  mipc::nw::Set_Radio_State_Cnf::~Set_Radio_State_Cnf(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0::operator() const(void)::{lambda(mipc::nw::Set_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver27sendRadioStateChangeRequestEyNS3_13OperatingModeEbENK3$_0clEvEUlRKN4mipc2nw19Set_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver27sendRadioStateChangeRequestEyNS3_13OperatingModeEbENK3$_0clEvEUlRKN4mipc2nw19Set_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver27sendRadioStateChangeRequestEyNS3_13OperatingModeEbENK3$_0clEvEUlRKN4mipc2nw19Set_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver27sendRadioStateChangeRequestEyNS3_13OperatingModeEbENK3$_0clEvEUlRKN4mipc2nw19Set_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v29 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = *v1;
  v4 = std::__shared_weak_count::lock(v2);
  v33 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!v1[1])
  {
    goto LABEL_25;
  }

  v5 = v1[3];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[4] = v6;
  *__p = v6;
  v30[2] = v6;
  v30[3] = v6;
  v30[0] = v6;
  v30[1] = v6;
  mipc::cust::Set_Service_Type_Req::Set_Service_Type_Req();
  v7 = *(v1 + 32);
  v8 = operator new(1uLL);
  *v8 = v7;
  v9 = __p[1];
  __p[1] = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v5 / 0xF4240;
  v11 = v3[5];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v12 = v37 + 7;
      qmemcpy(v37, "Rx Only", 7);
      v13 = 7;
    }

    else
    {
      v12 = v37 + 6;
      qmemcpy(v37, "Normal", 6);
      v13 = 6;
    }

    v38 = v13;
    *v12 = 0;
    *buf = 136315394;
    *&buf[4] = v37;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(&dword_296E3E000, v11, OS_LOG_TYPE_DEFAULT, "#I Sending request to set service type to %s, with timeout %llu ms", buf, 0x16u);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[1] = v14;
  v34[2] = v14;
  v34[0] = v14;
  mipc::cust::Set_Service_Type_Req::serialize(v34, v30);
  if (v35)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v15;
  v45 = v15;
  v42 = v15;
  v43 = v15;
  v40 = v15;
  v41 = v15;
  *buf = v15;
  *&buf[16] = v15;
  MEMORY[0x29C266720](buf, v34);
  abb::router::SendProxy::SendProxy(v37, (v3 + 29), buf);
  MEMORY[0x29C266730](buf);
  if (v35 != -1)
  {
    *buf = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *&buf[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*&buf[8 * v35])(&v36, v34);
  }

  abb::router::SendProxy::timeout();
  v16 = abb::router::SendProxy::queuePolicy();
  v17 = v3[2];
  if (!v17 || (v18 = v3[1], (v19 = std::__shared_weak_count::lock(v17)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = operator new(0x28uLL);
  *v21 = &unk_2A1E13268;
  v21[1] = v3;
  v21[2] = v18;
  v21[3] = v20;
  *(v21 + 8) = v7;
  *&buf[24] = v21;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](buf, (v16 + 152));
  if (*&buf[24] == buf)
  {
    (*(**&buf[24] + 32))(*&buf[24]);
    MEMORY[0x29C266750](v37);
    mipc::cust::Set_Service_Type_Req::~Set_Service_Type_Req(v30);
    v4 = v33;
    if (!v33)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (*&buf[24])
  {
    (*(**&buf[24] + 40))();
  }

  MEMORY[0x29C266750](v37);
  mipc::cust::Set_Service_Type_Req::~Set_Service_Type_Req(v30);
  v4 = v33;
  if (v33)
  {
LABEL_25:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }
  }

LABEL_27:
  if (v29)
  {
    v23 = v29[2];
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    operator delete(v29);
  }

  v24 = a1;
  if (a1)
  {
    v25 = a1[2];
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v24 = a1;
    }

    operator delete(v24);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_296E85C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a25);
  mipc::cust::Set_Service_Type_Req::~Set_Service_Type_Req(&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  std::unique_ptr<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0,std::default_delete<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(uint64_t result)
{
  *result = &unk_2A1E13268;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E13268;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  result = operator new(0x28uLL);
  *result = &unk_2A1E13268;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 8) = *(a1 + 32);
  return result;
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E13268;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[3] = v4;
  v15[4] = v4;
  v15[1] = v4;
  v15[2] = v4;
  v15[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v17.__val_, this);
    if ((v18 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v23 = v17;
    v6 = mipc::toErrorCode(v17.__val_, v5);
    std::error_code::message(&v20, &v23);
    v21 = 0;
    v22 = 0;
    v19 = v6;
    MEMORY[0x29C266E30](v15, &v19, 1);
    v7 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v19, this);
    v8 = *v19;
    abb::router::Message::getRawMsg(&v17.__val_, this);
    MEMORY[0x29C266E40](v15, v8, *(*&v17.__val_ + 8) - **&v17.__val_);
    cat = v17.__cat_;
    if (v17.__cat_ && !atomic_fetch_add(&v17.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = v20.__r_.__value_.__r.__words[0];
    if (v20.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v20.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 8);
    v13 = std::__shared_weak_count::lock(v11);
    v20.__r_.__value_.__r.__words[0] = v13;
    if (v13)
    {
      v14 = v13;
      v19 = *(a1 + 16);
      if (v19)
      {
        radio::MipcCommandDriver::handleServiceStateCnf_sync(v12, v15, *(a1 + 32));
      }

      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  mipc::cust::Set_Service_Type_Cnf::~Set_Service_Type_Cnf(v15);
}

void sub_296E860D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13 - 96);
  _Unwind_Resume(a1);
}

void sub_296E86118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 96);
  mipc::cust::Set_Service_Type_Cnf::~Set_Service_Type_Cnf(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1}>(radio::MipcCommandDriver::sendServiceTypeChangeRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::cust::Set_Service_Type_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendServiceTypeChangeRequestEybENK3$_0clEvEUlRKN4mipc4cust20Set_Service_Type_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendServiceTypeChangeRequestEybENK3$_0clEvEUlRKN4mipc4cust20Set_Service_Type_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendServiceTypeChangeRequestEybENK3$_0clEvEUlRKN4mipc4cust20Set_Service_Type_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendServiceTypeChangeRequestEybENK3$_0clEvEUlRKN4mipc4cust20Set_Service_Type_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v29 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = *v1;
  v4 = std::__shared_weak_count::lock(v2);
  v33 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!v1[1])
  {
    goto LABEL_25;
  }

  v5 = v1[3];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[4] = v6;
  *__p = v6;
  v30[2] = v6;
  v30[3] = v6;
  v30[0] = v6;
  v30[1] = v6;
  mipc::dale_skpr::Mode_Switch_Req::Mode_Switch_Req();
  v7 = *(v1 + 32);
  v8 = operator new(1uLL);
  *v8 = v7;
  v9 = __p[1];
  __p[1] = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v5 / 0xF4240;
  v11 = v3[5];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v12 = v37 + 2;
      LOWORD(v37[0]) = 28239;
      v13 = 2;
    }

    else
    {
      v12 = v37 + 3;
      qmemcpy(v37, "Off", 3);
      v13 = 3;
    }

    v38 = v13;
    *v12 = 0;
    *buf = 136315394;
    *&buf[4] = v37;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(&dword_296E3E000, v11, OS_LOG_TYPE_DEFAULT, "#I Sending request to switch skipper mode to %s, with timeout %llu ms", buf, 0x16u);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[1] = v14;
  v34[2] = v14;
  v34[0] = v14;
  mipc::dale_skpr::Mode_Switch_Req::serialize(v34, v30);
  if (v35)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v15;
  v45 = v15;
  v42 = v15;
  v43 = v15;
  v40 = v15;
  v41 = v15;
  *buf = v15;
  *&buf[16] = v15;
  MEMORY[0x29C266720](buf, v34);
  abb::router::SendProxy::SendProxy(v37, (v3 + 29), buf);
  MEMORY[0x29C266730](buf);
  if (v35 != -1)
  {
    *buf = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *&buf[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*&buf[8 * v35])(&v36, v34);
  }

  abb::router::SendProxy::timeout();
  v16 = abb::router::SendProxy::queuePolicy();
  v17 = v3[2];
  if (!v17 || (v18 = v3[1], (v19 = std::__shared_weak_count::lock(v17)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = operator new(0x28uLL);
  *v21 = &unk_2A1E132E8;
  v21[1] = v3;
  v21[2] = v18;
  v21[3] = v20;
  *(v21 + 32) = v7;
  *&buf[24] = v21;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](buf, (v16 + 152));
  if (*&buf[24] == buf)
  {
    (*(**&buf[24] + 32))(*&buf[24]);
    MEMORY[0x29C266750](v37);
    mipc::dale_skpr::Mode_Switch_Req::~Mode_Switch_Req(v30);
    v4 = v33;
    if (!v33)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (*&buf[24])
  {
    (*(**&buf[24] + 40))();
  }

  MEMORY[0x29C266750](v37);
  mipc::dale_skpr::Mode_Switch_Req::~Mode_Switch_Req(v30);
  v4 = v33;
  if (v33)
  {
LABEL_25:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }
  }

LABEL_27:
  if (v29)
  {
    v23 = v29[2];
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    operator delete(v29);
  }

  v24 = a1;
  if (a1)
  {
    v25 = a1[2];
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v24 = a1;
    }

    operator delete(v24);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_296E86648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a25);
  mipc::dale_skpr::Mode_Switch_Req::~Mode_Switch_Req(&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  std::unique_ptr<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0,std::default_delete<radio::MipcCommandDriver::sendRadioStateChangeRequest(unsigned long long,radio::OperatingMode,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(uint64_t result)
{
  *result = &unk_2A1E132E8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E132E8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  result = operator new(0x28uLL);
  *result = &unk_2A1E132E8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[32] = *(a1 + 32);
  return result;
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E132E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[4] = v4;
  v15[5] = v4;
  v15[2] = v4;
  v15[3] = v4;
  v15[0] = v4;
  v15[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v16.__val_, this);
    if ((v17 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = v16;
    v6 = mipc::toErrorCode(v16.__val_, v5);
    std::error_code::message(&v19, &v22);
    v20 = 0;
    v21 = 0;
    v18 = v6;
    MEMORY[0x29C267200](v15, &v18, 1);
    v7 = v21;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v18, this);
    v8 = *v18;
    abb::router::Message::getRawMsg(&v16.__val_, this);
    MEMORY[0x29C267210](v15, v8, *(*&v16.__val_ + 8) - **&v16.__val_);
    cat = v16.__cat_;
    if (v16.__cat_ && !atomic_fetch_add(&v16.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = v19.__r_.__value_.__r.__words[0];
    if (v19.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v19.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 8);
    v13 = std::__shared_weak_count::lock(v11);
    v19.__r_.__value_.__r.__words[0] = v13;
    if (v13)
    {
      v14 = v13;
      v18 = *(a1 + 16);
      if (v18)
      {
        radio::MipcCommandDriver::handleSkipperModeSwitchCnf_sync(v12, v15, *(a1 + 32));
      }

      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  mipc::dale_skpr::Mode_Switch_Cnf::~Mode_Switch_Cnf(v15);
}

void sub_296E86AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13 - 96);
  _Unwind_Resume(a1);
}

void sub_296E86B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 96);
  mipc::dale_skpr::Mode_Switch_Cnf::~Mode_Switch_Cnf(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1}>(radio::MipcCommandDriver::sendSkipperModeSwitchRequest(unsigned long long,BOOL)::$_0::operator() const(void)::{lambda(mipc::dale_skpr::Mode_Switch_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendSkipperModeSwitchRequestEybENK3$_0clEvEUlRKN4mipc9dale_skpr15Mode_Switch_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendSkipperModeSwitchRequestEybENK3$_0clEvEUlRKN4mipc9dale_skpr15Mode_Switch_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendSkipperModeSwitchRequestEybENK3$_0clEvEUlRKN4mipc9dale_skpr15Mode_Switch_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver28sendSkipperModeSwitchRequestEybENK3$_0clEvEUlRKN4mipc9dale_skpr15Mode_Switch_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v25 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    radio::OpMode::getMode(v2[6].__on_zero_shared);
    radio::OpMode::modeToString();
    v4 = v36 >= 0 ? __p : __p[0];
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v4;
    _os_log_impl(&dword_296E3E000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to get operating mode, current operating mode: %s", buf, 0xCu);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[3] = v5;
  v29[4] = v5;
  v29[1] = v5;
  v29[2] = v5;
  v29[0] = v5;
  mipc::nw::Get_Radio_State_Req::Get_Radio_State_Req();
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v6;
  v33 = v6;
  v31 = v6;
  mipc::nw::Get_Radio_State_Req::serialize(&v31, v29);
  if (v34)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v7;
  v46 = v7;
  v43 = v7;
  v44 = v7;
  v41 = v7;
  v42 = v7;
  *buf = v7;
  *&buf[2] = v7;
  MEMORY[0x29C266720](buf, &v31);
  abb::router::SendProxy::SendProxy(__p, &v2[5].__on_zero_shared_weak, buf);
  MEMORY[0x29C266730](buf);
  if (v34 != -1)
  {
    buf[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    buf[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (buf[v34])(&v26, &v31);
  }

  v26 = v2;
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v9 = v2->~__shared_weak_count_0, (v10 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v27 = v9;
  *(&v27 + 1) = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v17);
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
LABEL_14:
      v12 = _Block_copy(shared_owners);
      shared_weak_owners = v1->__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v12 = 0;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (shared_weak_owners)
  {
LABEL_15:
    dispatch_retain(shared_weak_owners);
  }

LABEL_16:
  v14 = v26;
  v15 = v27;
  v28 = 0u;
  v27 = 0u;
  buf[0] = v26;
  *&buf[1] = v15;
  v31 = v26;
  buf[3] = v12;
  *&v41 = shared_weak_owners;
  *&v33 = 0;
  v32 = 0uLL;
  v16 = operator new(0x30uLL);
  *v16 = &unk_2A1E13368;
  v16[1] = v14;
  *(v16 + 1) = v15;
  v16[4] = v12;
  v16[5] = shared_weak_owners;
  v39 = v16;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v38, v37);
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))();
  }

  MEMORY[0x29C266750](__p);
  mipc::nw::Get_Radio_State_Req::~Get_Radio_State_Req(v29);
  if (v25)
  {
    v18 = v25->__shared_weak_owners_;
    if (v18)
    {
      dispatch_release(v18);
    }

    v19 = v25->__shared_owners_;
    if (v19)
    {
      _Block_release(v19);
    }

    operator delete(v25);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v20 = a1;
    }

    operator delete(v20);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_296E87010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,std::default_delete<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}::~Get_Radio_State_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E13368;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E13368;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E13368;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 40);
  *(v2 + 4) = v4;
  *(v2 + 5) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E13368;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 40);
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v88 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  v58 = v4;
  v55 = v4;
  v56 = v4;
  v53 = v4;
  v54 = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(v66, this);
    if ((v67 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *v64 = *v66;
    v6 = mipc::toErrorCode(LODWORD(v66[0]), v5);
    std::error_code::message(&block[8], v64);
    aBlock = 0;
    *&v71 = 0;
    *block = v6;
    MEMORY[0x29C2669A0](&v53, block, 1);
    v7 = v71;
    if (v71 && !atomic_fetch_add((v71 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v69) < 0)
    {
LABEL_6:
      operator delete(*&block[8]);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(block, this);
    v8 = **block;
    abb::router::Message::getRawMsg(v66, this);
    MEMORY[0x29C2669B0](&v53, v8, *(v66[0] + 1) - *v66[0]);
    v9 = v66[1];
    if (v66[1] && !atomic_fetch_add(v66[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&block[8];
    if (*&block[8] && !atomic_fetch_add((*&block[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[3];
  if (!v11)
  {
    goto LABEL_110;
  }

  v12 = a1[1];
  v13 = std::__shared_weak_count::lock(v11);
  v63 = v13;
  if (!v13)
  {
    goto LABEL_110;
  }

  if (!a1[2])
  {
    goto LABEL_108;
  }

  v60 = 0;
  cf = 0;
  if (mipc::operator==())
  {
    goto LABEL_54;
  }

  memset(__dst, 170, sizeof(__dst));
  v21 = mipc::asString();
  v66[1] = 0xAAAAAAAAAAAAAAAALL;
  v67 = 12;
  v66[0] = v21;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v85 = v22;
  v86 = v22;
  v84 = v22;
  v83 = v22;
  v82 = v22;
  v81 = v22;
  v80 = v22;
  v79 = v22;
  v78 = v22;
  v77 = v22;
  v76 = v22;
  v75 = v22;
  v74 = v22;
  v73 = v22;
  v72 = v22;
  v71 = v22;
  *block = &v71;
  *&block[8] = xmmword_296EB9CA0;
  v69 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  aBlock = 0;
  __src = &v71;
  *v64 = 1;
  *&v64[8] = v66;
  *&v64[16] = 12;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(block, "Get operating mode request failed {}", 36, v64);
  v23 = *&block[16];
  if (*&block[16] > 0x7FFFFFFFFFFFFFF7uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = __src;
  if (*&block[16] >= 0x17uLL)
  {
    if ((*&block[16] | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (*&block[16] | 7) + 1;
    }

    v25 = operator new(v26);
    __dst[1] = v23;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v25;
    goto LABEL_26;
  }

  HIBYTE(__dst[2]) = block[16];
  v25 = __dst;
  if (*&block[16])
  {
LABEL_26:
    memmove(v25, v24, v23);
  }

  *(v23 + v25) = 0;
  if (__src != &v71)
  {
    operator delete(__src);
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v27 = __dst;
  }

  else
  {
    v27 = __dst[0];
  }

  v28 = strlen(v27);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v30 = operator new(v31);
    v66[1] = v29;
    v67 = v31 | 0x8000000000000000;
    v66[0] = v30;
  }

  else
  {
    HIBYTE(v67) = v28;
    v30 = v66;
    if (!v28)
    {
      goto LABEL_41;
    }
  }

  memmove(v30, v27, v29);
LABEL_41:
  *(v29 + v30) = 0;
  CreateError();
  v32 = cf;
  v33 = *block;
  cf = *block;
  *block = 0;
  if (v32)
  {
    CFRelease(v32);
    if (*block)
    {
      CFRelease(*block);
    }
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
    v34 = *(v12 + 40);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
LABEL_46:
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_53:
      operator delete(__dst[0]);
      if (v33)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v34 = *(v12 + 40);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }
  }

  v35 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v35 = __dst[0];
  }

  *block = 136315138;
  *&block[4] = v35;
  _os_log_error_impl(&dword_296E3E000, v34, OS_LOG_TYPE_ERROR, "%s", block, 0xCu);
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_53;
  }

LABEL_47:
  if (v33)
  {
    goto LABEL_75;
  }

LABEL_54:
  if (*(&v58 + 1))
  {
    goto LABEL_55;
  }

  *v64 = operator new(0x40uLL);
  *&v64[8] = xmmword_296EB9D10;
  strcpy(*v64, "Get operating mode confirmation is missing radio state tlv");
  CreateError();
  v33 = *block;
  cf = *block;
  *block = 0;
  if ((v64[23] & 0x80000000) != 0)
  {
    operator delete(*v64);
  }

  if (!v33)
  {
LABEL_55:
    v36 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v38 = v60;
      v60 = Mutable;
      if (v38)
      {
        CFRelease(v38);
      }
    }

    radio::MipcCommandDriver::setRadioState(v12, **(&v58 + 1));
    v39 = *(v12 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(v12 + 323);
      *block = 67109120;
      *&block[4] = v40;
      _os_log_impl(&dword_296E3E000, v39, OS_LOG_TYPE_DEFAULT, "#I Received radio state: %u", block, 8u);
    }

    AggregatedOpMode = radio::MipcCommandDriver::getAggregatedOpMode(v12);
    v42 = v60;
    v43 = *MEMORY[0x29EDC8E10];
    *block = v43;
    if (v43)
    {
      CFRetain(v43);
    }

    valuePtr = AggregatedOpMode;
    v44 = CFNumberCreate(v36, kCFNumberIntType, &valuePtr);
    v45 = v44;
    __dst[0] = v44;
    if (v43 && v44)
    {
      CFDictionaryAddValue(v42, v43, v44);
    }

    else if (!v44)
    {
LABEL_67:
      if (v43)
      {
        CFRelease(v43);
      }

      if (radio::OpMode::getMode(*(v12 + 256)) != AggregatedOpMode)
      {
        v46 = *(v12 + 256);
        radio::OpMode::setMode();
        radio::CommandDriver::handleOperatingModeChanged_sync();
      }

      v33 = 0;
      goto LABEL_75;
    }

    CFRelease(v45);
    goto LABEL_67;
  }

LABEL_75:
  if (!a1[4] || !a1[5])
  {
    goto LABEL_103;
  }

  if (v33)
  {
    CFRetain(v33);
  }

  v47 = v60;
  if (v60)
  {
    CFRetain(v60);
  }

  v48 = a1[4];
  if (v48)
  {
    v49 = _Block_copy(v48);
  }

  else
  {
    v49 = 0;
  }

  v50 = a1[5];
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 1174405120;
  *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
  v69 = &__block_descriptor_tmp_148;
  if (v49)
  {
    aBlock = _Block_copy(v49);
    *&v71 = v33;
    if (!v33)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  aBlock = 0;
  *&v71 = v33;
  if (v33)
  {
LABEL_88:
    CFRetain(v33);
  }

LABEL_89:
  *(&v71 + 1) = v47;
  if (v47)
  {
    CFRetain(v47);
  }

  dispatch_async(v50, block);
  if (*(&v71 + 1))
  {
    CFRelease(*(&v71 + 1));
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v33)
  {
    CFRelease(v33);
  }

LABEL_103:
  if (v60)
  {
    CFRelease(v60);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v13 = v63;
  if (v63)
  {
LABEL_108:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v51 = v13;
      (v13->__on_zero_shared)(v13, v14, v15, v16, v17, v18, v19, v20, v53, *(&v53 + 1), v54);
      std::__shared_weak_count::__release_weak(v51);
    }
  }

LABEL_110:
  mipc::nw::Get_Radio_State_Cnf::~Get_Radio_State_Cnf(&v53);
  v52 = *MEMORY[0x29EDCA608];
}

void sub_296E87C9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1}>(radio::MipcCommandDriver::getOperatingMode(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0::operator() const(void)::{lambda(mipc::nw::Get_Radio_State_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc2nw19Get_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc2nw19Get_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc2nw19Get_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS9_IK14__CFDictionaryEEEEEENK3$_0clEvEUlRKN4mipc2nw19Get_Radio_State_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6 = v2;
  if (!v2)
  {
    v6 = xpc_null_create();
    v4 = a1[6];
    object = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v2);
  v4 = a1[6];
  object = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v4);
LABEL_6:
  (*(v3 + 16))(v3, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_296E87F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c17_ZTSN3xpc6objectE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c17_ZTSN3xpc6objectE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[3] = v4;
  v16[4] = v4;
  v16[1] = v4;
  v16[2] = v4;
  v16[0] = v4;
  mipc::dale_bsp::Get_Personalization_Nonce_Req::Get_Personalization_Nonce_Req();
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v19 = v5;
  mipc::dale_bsp::Get_Personalization_Nonce_Req::serialize(&v19, v16);
  if (v22)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  MEMORY[0x29C266720](&v25, &v19);
  abb::router::SendProxy::SendProxy(v23, (v3 + 232), &v25);
  MEMORY[0x29C266730](&v25);
  if (v22 != -1)
  {
    *&v25 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v25 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v25 + v22))(v18, &v19);
  }

  v7 = v2[1];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = v2[2];
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  v9 = v2[2];
  if (v9)
  {
LABEL_6:
    dispatch_retain(v9);
  }

LABEL_7:
  *&v19 = v3;
  *(&v19 + 1) = v8;
  *&v20 = v9;
  v18[1] = 0;
  v18[2] = 0;
  v18[0] = v3;
  v10 = operator new(0x20uLL);
  *v10 = &unk_2A1E13418;
  v10[1] = v3;
  v10[2] = v8;
  v10[3] = v9;
  *(&v26 + 1) = v10;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](&v25, v24);
  if (*(&v26 + 1) == &v25)
  {
    (*(**(&v26 + 1) + 32))(*(&v26 + 1));
  }

  else if (*(&v26 + 1))
  {
    (*(**(&v26 + 1) + 40))();
  }

  MEMORY[0x29C266750](v23);
  mipc::dale_bsp::Get_Personalization_Nonce_Req::~Get_Personalization_Nonce_Req(v16);
  v11 = v2[2];
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = v2[1];
  if (v12)
  {
    _Block_release(v12);
  }

  operator delete(v2);
  v13 = a1[2];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
  v14 = *MEMORY[0x29EDCA608];
}

void sub_296E88340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a29);
  mipc::dale_bsp::Get_Personalization_Nonce_Req::~Get_Personalization_Nonce_Req(&a15);
  std::unique_ptr<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}::~Get_Personalization_Nonce_Cnf(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

uint64_t abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E13418;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E13418;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1)
{
  v2 = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E13418;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E13418;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v51 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v4;
  v43 = v4;
  *v41 = v4;
  *&v41[16] = v4;
  v40[0] = v4;
  v40[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(v44, this);
    if ((v44[1] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v45 = v44[0];
    v6 = mipc::toErrorCode(LODWORD(v44[0]), v5);
    std::error_code::message(&__p.__r_.__value_.__r.__words[1], &v45);
    aBlock = 0;
    v49 = 0;
    __p.__r_.__value_.__r.__words[0] = v6;
    MEMORY[0x29C267110](v40, &__p, 1);
    v7 = v49;
    if (!v49 || atomic_fetch_add(v49 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (SHIBYTE(v47) < 0)
    {
LABEL_6:
      operator delete(__p.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&__p, this);
    v8 = *__p.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(v44, this);
    MEMORY[0x29C267120](v40, v8, *(*&v44[0] + 8) - **&v44[0]);
    v9 = *(&v44[0] + 1);
    if (*(&v44[0] + 1) && !atomic_fetch_add((*(&v44[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }
  }

LABEL_14:
  v11 = a1[1];
  memset(v44, 0, 24);
  if (mipc::operator==())
  {
    if (*(&v43 + 1))
    {
      v13 = **(&v43 + 1);
      v12 = *(*(&v43 + 1) + 8);
      v14 = &v12[-**(&v43 + 1)];
      if (v12 == **(&v43 + 1))
      {
        v16 = 0;
        v17 = &v12[-**(&v43 + 1)];
        goto LABEL_37;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v15 = operator new(&v12[-**(&v43 + 1)]);
      v16 = v15;
      if (v14 < 0x20)
      {
        v17 = v15;
      }

      else
      {
        v17 = v15;
        if ((v15 - v13) >= 0x20)
        {
          v17 = v15 + (v14 & 0x7FFFFFFFFFFFFFE0);
          v18 = v15 + 1;
          v19 = (v13 + 16);
          v20 = v14 & 0x7FFFFFFFFFFFFFE0;
          do
          {
            v21 = *v19;
            *(v18 - 1) = *(v19 - 1);
            *v18 = v21;
            v18 += 2;
            v19 += 2;
            v20 -= 32;
          }

          while (v20);
          v13 += v14 & 0x7FFFFFFFFFFFFFE0;
          if (v14 == (v14 & 0x7FFFFFFFFFFFFFE0))
          {
            goto LABEL_37;
          }
        }
      }

      do
      {
        v31 = *v13++;
        *v17++ = v31;
      }

      while (v13 != v12);
      goto LABEL_37;
    }

    v16 = 0;
    BYTE7(v44[1]) = 16;
    strcpy(v44, "Nonce is is null");
    v22 = 16;
LABEL_47:
    v32 = *(v11 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v37 = *&v44[0];
      if (v22 >= 0)
      {
        v37 = v44;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v37;
      _os_log_error_impl(&dword_296E3E000, v32, OS_LOG_TYPE_ERROR, "%s", &__p, 0xCu);
      if (!a1[2])
      {
        goto LABEL_87;
      }
    }

    else if (!a1[2])
    {
      goto LABEL_87;
    }

    if (!a1[3])
    {
      goto LABEL_87;
    }

    if ((SBYTE7(v44[1]) & 0x80u) == 0)
    {
      v33 = v44;
    }

    else
    {
      v33 = *&v44[0];
    }

    v27 = xpc_string_create(v33);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    v28 = xpc_null_create();
    v34 = a1[2];
    if (v34)
    {
      v35 = _Block_copy(v34);
    }

    else
    {
      v35 = 0;
    }

    v36 = a1[3];
    __p.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    __p.__r_.__value_.__l.__size_ = 1174405120;
    __p.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v47 = &__block_descriptor_tmp_218;
    if (v35)
    {
      aBlock = _Block_copy(v35);
      v49 = v27;
      if (v27)
      {
        goto LABEL_60;
      }
    }

    else
    {
      aBlock = 0;
      v49 = v27;
      if (v27)
      {
LABEL_60:
        xpc_retain(v27);
        object = v28;
        if (v28)
        {
LABEL_61:
          xpc_retain(v28);
LABEL_65:
          dispatch_async(v36, &__p);
          xpc_release(object);
          object = 0;
          xpc_release(v49);
          v49 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v35)
          {
            _Block_release(v35);
          }

          goto LABEL_86;
        }

LABEL_64:
        object = xpc_null_create();
        goto LABEL_65;
      }
    }

    v49 = xpc_null_create();
    object = v28;
    if (v28)
    {
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  if ((v41[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&v41[8], *&v41[16]);
  }

  else
  {
    __p = *&v41[8];
  }

  v23 = std::string::insert(&__p, 0, "Get personalization nonce error: ", 0x21uLL);
  v24 = v23->__r_.__value_.__r.__words[0];
  *&v45.__val_ = v23->__r_.__value_.__l.__size_;
  *(&v45.__val_ + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[1]) < 0)
  {
    operator delete(*&v44[0]);
  }

  *&v44[0] = v24;
  *(&v44[0] + 1) = *&v45.__val_;
  *(v44 + 15) = *(&v45.__val_ + 7);
  BYTE7(v44[1]) = v25;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v25 = BYTE7(v44[1]);
  }

  v16 = 0;
  v17 = 0;
  v26 = *(&v44[0] + 1);
  v22 = v25;
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  if (v26)
  {
    goto LABEL_47;
  }

LABEL_37:
  if (v16 != v17 && a1[2] && a1[3])
  {
    v27 = xpc_null_create();
    v28 = xpc_data_create(v16, v17 - v16);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v29 = a1[2];
    if (v29)
    {
      v30 = _Block_copy(v29);
    }

    else
    {
      v30 = 0;
    }

    v38 = a1[3];
    __p.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    __p.__r_.__value_.__l.__size_ = 1174405120;
    __p.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v47 = &__block_descriptor_tmp_218;
    if (v30)
    {
      aBlock = _Block_copy(v30);
      v49 = v27;
      if (v27)
      {
        goto LABEL_77;
      }
    }

    else
    {
      aBlock = 0;
      v49 = v27;
      if (v27)
      {
LABEL_77:
        xpc_retain(v27);
        object = v28;
        if (v28)
        {
LABEL_78:
          xpc_retain(v28);
LABEL_82:
          dispatch_async(v38, &__p);
          xpc_release(object);
          object = 0;
          xpc_release(v49);
          v49 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v30)
          {
            _Block_release(v30);
          }

LABEL_86:
          xpc_release(v28);
          xpc_release(v27);
          goto LABEL_87;
        }

LABEL_81:
        object = xpc_null_create();
        goto LABEL_82;
      }
    }

    v49 = xpc_null_create();
    object = v28;
    if (v28)
    {
      goto LABEL_78;
    }

    goto LABEL_81;
  }

LABEL_87:
  if (v16)
  {
    operator delete(v16);
  }

  if (SBYTE7(v44[1]) < 0)
  {
    operator delete(*&v44[0]);
  }

  mipc::dale_bsp::Get_Personalization_Nonce_Cnf::~Get_Personalization_Nonce_Cnf(v40);
  v39 = *MEMORY[0x29EDCA608];
}

void sub_296E88E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Nonce_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp29Get_Personalization_Nonce_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp29Get_Personalization_Nonce_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp29Get_Personalization_Nonce_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp29Get_Personalization_Nonce_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[3] = v4;
  v13[4] = v4;
  v13[1] = v4;
  v13[2] = v4;
  v13[0] = v4;
  mipc::dale_bsp::Get_Personalization_Info_Req::Get_Personalization_Info_Req();
  abb::router::Client::send<mipc::dale_bsp::Get_Personalization_Info_Req>(v21, (v3 + 232), v13);
  v5 = v2[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v2[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v2[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v18 = v3;
  v19 = v6;
  v20 = v7;
  v16 = 0;
  v17 = 0;
  v15 = v3;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E13498;
  v8[1] = v3;
  v8[2] = v6;
  v8[3] = v7;
  v24 = v8;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v23, v22);
  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  MEMORY[0x29C266750](v21);
  mipc::dale_bsp::Get_Personalization_Info_Req::~Get_Personalization_Info_Req(v13);
  v9 = v2[2];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[1];
  if (v10)
  {
    _Block_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_296E891D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t abb::router::Client::send<mipc::dale_bsp::Get_Personalization_Info_Req>(abb::router::SendProxy *a1, const abb::router::Client *a2, mipc::dale_bsp::Get_Personalization_Info_Req *this)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v5;
  v11[2] = v5;
  v11[0] = v5;
  mipc::dale_bsp::Get_Personalization_Info_Req::serialize(v11, this);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[6] = v6;
  v9[7] = v6;
  v9[4] = v6;
  v9[5] = v6;
  v9[2] = v6;
  v9[3] = v6;
  v9[0] = v6;
  v9[1] = v6;
  MEMORY[0x29C266720](v9, v11);
  abb::router::SendProxy::SendProxy(a1, a2, v9);
  result = MEMORY[0x29C266730](v9);
  if (v12 != -1)
  {
    *&v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v9[0] + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    return (*(v9 + v12))(&v13, v11);
  }

  return result;
}

void sub_296E893D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](v2 - 96);
  _Unwind_Resume(a1);
}

uint64_t radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}::~Get_Personalization_Info_Cnf(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

uint64_t abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E13498;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E13498;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1)
{
  v2 = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E13498;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E13498;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v63 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54 = v4;
  v55 = v4;
  *&v52[16] = v4;
  v53 = v4;
  v51[1] = v4;
  *v52 = v4;
  v51[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v56, this);
    if ((v56.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v57 = *&v56.__r_.__value_.__l.__data_;
    v6 = mipc::toErrorCode(LODWORD(v56.__r_.__value_.__l.__data_), v5);
    std::error_code::message(&block.__r_.__value_.__r.__words[1], &v57);
    v60 = 0;
    v61 = 0;
    block.__r_.__value_.__r.__words[0] = v6;
    MEMORY[0x29C2670C0](v51, &block, 1);
    v7 = v61;
    if (v61 && !atomic_fetch_add(v61 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v59) < 0)
    {
LABEL_6:
      operator delete(block.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&block, this);
    v8 = *block.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(&v56, this);
    MEMORY[0x29C2670D0](v51, v8, *(v56.__r_.__value_.__r.__words[0] + 8) - *v56.__r_.__value_.__l.__data_);
    size = v56.__r_.__value_.__l.__size_;
    if (v56.__r_.__value_.__l.__size_ && !atomic_fetch_add((v56.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v10 = block.__r_.__value_.__l.__size_;
    if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[1];
  memset(&v56, 0, sizeof(v56));
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = MEMORY[0x29EDCAA00];
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C267E80](v12) == v13)
    {
      xpc_retain(v12);
      v14 = v12;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  if (mipc::operator==())
  {
    v16 = **(&v55 + 1);
    v15 = *(*(&v55 + 1) + 8);
    v17 = &v15[-**(&v55 + 1)];
    if (v17 >= 4)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = operator new(&v15[-**(&v55 + 1)]);
      v19 = v18;
      v20 = v18;
      if (v16 != v15)
      {
        if (v17 < 0x20)
        {
          v20 = v18;
        }

        else
        {
          v20 = v18;
          if ((v18 - v16) >= 0x20)
          {
            v20 = v18 + (v17 & 0x7FFFFFFFFFFFFFE0);
            v21 = v18 + 1;
            v22 = (v16 + 16);
            v23 = v17 & 0x7FFFFFFFFFFFFFE0;
            do
            {
              v24 = *v22;
              *(v21 - 1) = *(v22 - 1);
              *v21 = v24;
              v21 += 2;
              v22 += 2;
              v23 -= 32;
            }

            while (v23);
            v16 += v17 & 0x7FFFFFFFFFFFFFE0;
            if (v17 == (v17 & 0x7FFFFFFFFFFFFFE0))
            {
              goto LABEL_66;
            }
          }
        }

        do
        {
          v37 = *v16++;
          *v20++ = v37;
        }

        while (v16 != v15);
      }

LABEL_66:
      v38 = xpc_data_create(v18, v20 - v18);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      xpc_dictionary_set_value(v14, *MEMORY[0x29EDC8B90], v38);
      v39 = xpc_null_create();
      xpc_release(v38);
      xpc_release(v39);
      v40 = *(*(&v55 + 1) + 8) - **(&v55 + 1);
      if (v40)
      {
        v41 = v40 > 3;
      }

      else
      {
        v41 = 0;
      }

      if (!v41)
      {
        std::vector<unsigned char>::__throw_out_of_range[abi:ne200100]();
      }

      v42 = xpc_int64_create(bswap32(***(&v55 + 1)));
      if (!v42)
      {
        v42 = xpc_null_create();
      }

      xpc_dictionary_set_value(v14, *MEMORY[0x29EDC8B80], v42);
      v43 = xpc_null_create();
      xpc_release(v42);
      xpc_release(v43);
      operator delete(v19);
      v44 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      v29 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v44 = v56.__r_.__value_.__l.__size_;
      }

      if (!v44)
      {
        goto LABEL_78;
      }

LABEL_41:
      v30 = *(v11 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v49 = v56.__r_.__value_.__r.__words[0];
        if (v29 >= 0)
        {
          v49 = &v56;
        }

        LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
        *(block.__r_.__value_.__r.__words + 4) = v49;
        _os_log_error_impl(&dword_296E3E000, v30, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
        if (!a1[2])
        {
          goto LABEL_79;
        }
      }

      else if (!a1[2])
      {
        goto LABEL_79;
      }

      if (!a1[3])
      {
        goto LABEL_79;
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v56;
      }

      else
      {
        v31 = v56.__r_.__value_.__r.__words[0];
      }

      v32 = xpc_string_create(v31);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      v33 = xpc_null_create();
      v34 = a1[2];
      if (v34)
      {
        v35 = _Block_copy(v34);
      }

      else
      {
        v35 = 0;
      }

      v36 = a1[3];
      block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
      block.__r_.__value_.__l.__size_ = 1174405120;
      block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
      v59 = &__block_descriptor_tmp_218;
      if (v35)
      {
        v60 = _Block_copy(v35);
        v61 = v32;
        if (v32)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v60 = 0;
        v61 = v32;
        if (v32)
        {
LABEL_54:
          xpc_retain(v32);
          v62 = v33;
          if (v33)
          {
LABEL_55:
            xpc_retain(v33);
LABEL_59:
            dispatch_async(v36, &block);
            xpc_release(v62);
            v62 = 0;
            xpc_release(v61);
            v61 = 0;
            if (v60)
            {
              _Block_release(v60);
            }

            if (v35)
            {
              _Block_release(v35);
            }

            goto LABEL_63;
          }

LABEL_58:
          v62 = xpc_null_create();
          goto LABEL_59;
        }
      }

      v61 = xpc_null_create();
      v62 = v33;
      if (v33)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    }

    std::string::__assign_external(&v56, "PKHash is null or invalid size", 0x1EuLL);
  }

  else
  {
    if ((v52[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&block, *&v52[8], *&v52[16]);
    }

    else
    {
      block = *&v52[8];
    }

    v25 = std::string::insert(&block, 0, "Get personalization info error: ", 0x20uLL);
    v26 = v25->__r_.__value_.__r.__words[0];
    *&v57.__val_ = v25->__r_.__value_.__l.__size_;
    *(&v57.__val_ + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
    v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v56.__r_.__value_.__r.__words[0] = v26;
    v56.__r_.__value_.__l.__size_ = *&v57.__val_;
    *(&v56.__r_.__value_.__r.__words[1] + 7) = *(&v57.__val_ + 7);
    *(&v56.__r_.__value_.__s + 23) = v27;
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }
  }

  v28 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  v29 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v56.__r_.__value_.__l.__size_;
  }

  if (v28)
  {
    goto LABEL_41;
  }

LABEL_78:
  if (MEMORY[0x29C267E80](v14) == v13 && a1[2] && a1[3])
  {
    v32 = xpc_null_create();
    if (v14)
    {
      xpc_retain(v14);
      v33 = v14;
      v47 = a1[2];
      if (v47)
      {
LABEL_86:
        v48 = _Block_copy(v47);
        goto LABEL_93;
      }
    }

    else
    {
      v33 = xpc_null_create();
      v47 = a1[2];
      if (v47)
      {
        goto LABEL_86;
      }
    }

    v48 = 0;
LABEL_93:
    v50 = a1[3];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_NS1_4dictEEEEvDpT__block_invoke;
    v59 = &__block_descriptor_tmp_223;
    if (v48)
    {
      v60 = _Block_copy(v48);
      v61 = v32;
      if (v32)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v60 = 0;
      v61 = v32;
      if (v32)
      {
LABEL_95:
        xpc_retain(v32);
        v62 = v33;
        if (v33)
        {
LABEL_96:
          xpc_retain(v33);
LABEL_100:
          dispatch_async(v50, &block);
          xpc_release(v62);
          v62 = 0;
          xpc_release(v61);
          v61 = 0;
          if (v60)
          {
            _Block_release(v60);
          }

          if (v48)
          {
            _Block_release(v48);
          }

LABEL_63:
          xpc_release(v33);
          xpc_release(v32);
          goto LABEL_79;
        }

LABEL_99:
        v62 = xpc_null_create();
        goto LABEL_100;
      }
    }

    v61 = xpc_null_create();
    v62 = v33;
    if (v33)
    {
      goto LABEL_96;
    }

    goto LABEL_99;
  }

LABEL_79:
  xpc_release(v14);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  result = MEMORY[0x29C2670E0](v51);
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E89EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5radio17MipcCommandDriver9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES8_EEEENK3$_0clEvEUlRKN4mipc8dale_bsp28Get_Personalization_Info_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_NS1_4dictEEEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6 = v2;
  if (!v2)
  {
    v6 = xpc_null_create();
    v4 = a1[6];
    object = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v2);
  v4 = a1[6];
  object = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v4);
LABEL_6:
  (*(v3 + 16))(v3, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_296E8A17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = a2[5];
    a1[4] = v5;
    a1[5] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    a1[5] = xpc_null_create();
    v7 = a2[6];
    a1[6] = v7;
    if (v7)
    {
      return xpc_retain(v7);
    }

    goto LABEL_7;
  }

  v6 = a2[5];
  a1[4] = 0;
  a1[5] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v6);
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

LABEL_7:
  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectES2_EEE40c17_ZTSN3xpc6objectE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[3] = v4;
  v13[4] = v4;
  v13[1] = v4;
  v13[2] = v4;
  v13[0] = v4;
  mipc::dale_bsp::Get_Personalization_Info_Req::Get_Personalization_Info_Req();
  abb::router::Client::send<mipc::dale_bsp::Get_Personalization_Info_Req>(v21, (v3 + 232), v13);
  v5 = v2[1];
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = v2[2];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = v2[2];
  if (v7)
  {
LABEL_3:
    dispatch_retain(v7);
  }

LABEL_4:
  v18 = v3;
  v19 = v6;
  v20 = v7;
  v16 = 0;
  v17 = 0;
  v15 = v3;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E13548;
  v8[1] = v3;
  v8[2] = v6;
  v8[3] = v7;
  v24 = v8;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v23, v22);
  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  MEMORY[0x29C266750](v21);
  mipc::dale_bsp::Get_Personalization_Info_Req::~Get_Personalization_Info_Req(v13);
  v9 = v2[2];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[1];
  if (v10)
  {
    _Block_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_296E8A4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}::~Get_Personalization_Info_Cnf(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

uint64_t abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E13548;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E13548;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1)
{
  v2 = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E13548;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E13548;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[2];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1}>(radio::MipcCommandDriver::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(mipc::dale_bsp::Get_Personalization_Info_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v61 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v4;
  v53 = v4;
  *&v50[16] = v4;
  v51 = v4;
  v49[1] = v4;
  *v50 = v4;
  v49[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v54, this);
    if ((v54.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v55 = *&v54.__r_.__value_.__l.__data_;
    v6 = mipc::toErrorCode(LODWORD(v54.__r_.__value_.__l.__data_), v5);
    std::error_code::message(&block.__r_.__value_.__r.__words[1], &v55);
    v58 = 0;
    v59 = 0;
    block.__r_.__value_.__r.__words[0] = v6;
    MEMORY[0x29C2670C0](v49, &block, 1);
    v7 = v59;
    if (v59 && !atomic_fetch_add(v59 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v57) < 0)
    {
LABEL_6:
      operator delete(block.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&block, this);
    v8 = *block.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(&v54, this);
    MEMORY[0x29C2670D0](v49, v8, *(v54.__r_.__value_.__r.__words[0] + 8) - *v54.__r_.__value_.__l.__data_);
    size = v54.__r_.__value_.__l.__size_;
    if (v54.__r_.__value_.__l.__size_ && !atomic_fetch_add((v54.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v10 = block.__r_.__value_.__l.__size_;
    if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[1];
  memset(&v54, 0, sizeof(v54));
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = MEMORY[0x29EDCAA00];
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C267E80](v12) == v13)
    {
      xpc_retain(v12);
      v14 = v12;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  if (mipc::operator==())
  {
    if (!*(&v52 + 1) || *(*(&v52 + 1) + 8) - **(&v52 + 1) != 4)
    {
      std::string::__assign_external(&v54, "Chip Id is null or invalid size", 0x1FuLL);
      goto LABEL_50;
    }

    v15 = xpc_int64_create(bswap32(***(&v52 + 1)));
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v14, *MEMORY[0x29EDC8B88], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    if (!v53)
    {
      goto LABEL_50;
    }

    v18 = *v53;
    v17 = *(v53 + 8);
    v19 = &v17[-*v53];
    if (v17 == *v53)
    {
      v21 = 0;
      v22 = &v17[-*v53];
      goto LABEL_45;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v20 = operator new(&v17[-*v53]);
    v21 = v20;
    if (v19 < 0x20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20;
      if ((v20 - v18) >= 0x20)
      {
        v22 = v20 + (v19 & 0x7FFFFFFFFFFFFFE0);
        v23 = v20 + 1;
        v24 = (v18 + 16);
        v25 = v19 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v26 = *v24;
          *(v23 - 1) = *(v24 - 1);
          *v23 = v26;
          v23 += 2;
          v24 += 2;
          v25 -= 32;
        }

        while (v25);
        v18 += v19 & 0x7FFFFFFFFFFFFFE0;
        if (v19 == (v19 & 0x7FFFFFFFFFFFFFE0))
        {
LABEL_45:
          v32 = xpc_data_create(v21, v22 - v21);
          if (!v32)
          {
            v32 = xpc_null_create();
          }

          xpc_dictionary_set_value(v14, *MEMORY[0x29EDC8BF8], v32);
          v33 = xpc_null_create();
          xpc_release(v32);
          xpc_release(v33);
          if (v21)
          {
            v30 = v21;
            goto LABEL_49;
          }

          goto LABEL_50;
        }
      }
    }

    do
    {
      v31 = *v18++;
      *v22++ = v31;
    }

    while (v18 != v17);
    goto LABEL_45;
  }

  if ((v50[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&block, *&v50[8], *&v50[16]);
  }

  else
  {
    block = *&v50[8];
  }

  v27 = std::string::insert(&block, 0, "Get personalization info error: ", 0x20uLL);
  v28 = v27->__r_.__value_.__r.__words[0];
  *&v55.__val_ = v27->__r_.__value_.__l.__size_;
  *(&v55.__val_ + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
  v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v54.__r_.__value_.__r.__words[0] = v28;
  v54.__r_.__value_.__l.__size_ = *&v55.__val_;
  *(&v54.__r_.__value_.__r.__words[1] + 7) = *(&v55.__val_ + 7);
  *(&v54.__r_.__value_.__s + 23) = v29;
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    v30 = block.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v30);
  }

LABEL_50:
  v34 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  v35 = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v54.__r_.__value_.__l.__size_;
  }

  if (!v34)
  {
    if (MEMORY[0x29C267E80](v14) != v13 || !a1[2] || !a1[3])
    {
      goto LABEL_82;
    }

    v38 = xpc_null_create();
    if (v14)
    {
      xpc_retain(v14);
      v39 = v14;
      v42 = a1[2];
      if (v42)
      {
LABEL_68:
        v43 = _Block_copy(v42);
        goto LABEL_91;
      }
    }

    else
    {
      v39 = xpc_null_create();
      v42 = a1[2];
      if (v42)
      {
        goto LABEL_68;
      }
    }

    v43 = 0;
LABEL_91:
    v48 = a1[3];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_NS1_4dictEEEEvDpT__block_invoke;
    v57 = &__block_descriptor_tmp_223;
    if (v43)
    {
      v58 = _Block_copy(v43);
      v59 = v38;
      if (v38)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v58 = 0;
      v59 = v38;
      if (v38)
      {
LABEL_93:
        xpc_retain(v38);
        v60 = v39;
        if (v39)
        {
LABEL_94:
          xpc_retain(v39);
LABEL_98:
          dispatch_async(v48, &block);
          xpc_release(v60);
          v60 = 0;
          xpc_release(v59);
          v59 = 0;
          if (v58)
          {
            _Block_release(v58);
          }

          if (v43)
          {
            _Block_release(v43);
          }

          goto LABEL_81;
        }

LABEL_97:
        v60 = xpc_null_create();
        goto LABEL_98;
      }
    }

    v59 = xpc_null_create();
    v60 = v39;
    if (v39)
    {
      goto LABEL_94;
    }

    goto LABEL_97;
  }

  v36 = *(v11 + 40);
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    if (!a1[2])
    {
      goto LABEL_82;
    }

LABEL_55:
    if (!a1[3])
    {
      goto LABEL_82;
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v54;
    }

    else
    {
      v37 = v54.__r_.__value_.__r.__words[0];
    }

    v38 = xpc_string_create(v37);
    if (!v38)
    {
      v38 = xpc_null_create();
    }

    v39 = xpc_null_create();
    v40 = a1[2];
    if (v40)
    {
      v41 = _Block_copy(v40);
    }

    else
    {
      v41 = 0;
    }

    v44 = a1[3];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v57 = &__block_descriptor_tmp_218;
    if (v41)
    {
      v58 = _Block_copy(v41);
      v59 = v38;
      if (v38)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v58 = 0;
      v59 = v38;
      if (v38)
      {
LABEL_72:
        xpc_retain(v38);
        v60 = v39;
        if (v39)
        {
LABEL_73:
          xpc_retain(v39);
LABEL_77:
          dispatch_async(v44, &block);
          xpc_release(v60);
          v60 = 0;
          xpc_release(v59);
          v59 = 0;
          if (v58)
          {
            _Block_release(v58);
          }

          if (v41)
          {
            _Block_release(v41);
          }

LABEL_81:
          xpc_release(v39);
          xpc_release(v38);
          goto LABEL_82;
        }

LABEL_76:
        v60 = xpc_null_create();
        goto LABEL_77;
      }
    }

    v59 = xpc_null_create();
    v60 = v39;
    if (v39)
    {
      goto LABEL_73;
    }

    goto LABEL_76;
  }

  v47 = v54.__r_.__value_.__r.__words[0];
  if (v35 >= 0)
  {
    v47 = &v54;
  }

  LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
  *(block.__r_.__value_.__r.__words + 4) = v47;
  _os_log_error_impl(&dword_296E3E000, v36, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
  if (a1[2])
  {
    goto LABEL_55;
  }

LABEL_82:
  xpc_release(v14);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  result = MEMORY[0x29C2670E0](v49);
  v46 = *MEMORY[0x29EDCA608];
  return result;
}