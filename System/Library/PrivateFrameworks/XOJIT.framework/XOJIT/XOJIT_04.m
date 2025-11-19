uint64_t *llvm::operator+@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (!*(result + 32) || (v4 = *(a2 + 32), !*(a2 + 32)))
  {
    *(a3 + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v5;
    v6 = a2[4];
LABEL_8:
    *(a3 + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(result + 1);
    *a3 = *result;
    *(a3 + 16) = v7;
    v6 = result[4];
    goto LABEL_8;
  }

  v8 = *result;
  v9 = result[1];
  if (*(result + 33) != 1)
  {
    LOBYTE(v3) = 2;
    v8 = result;
  }

  v10 = a2[1];
  if (*(a2 + 33) == 1)
  {
    v11 = *a2;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a2;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v3;
  *(a3 + 33) = v4;
  return result;
}

unsigned int *llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = result[2];
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    LODWORD(v7) = v5[2];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + 8 * v7), __src, v6);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + (v6 >> 3);
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return llvm::raw_ostream::write(a1, a2, v3);
}

uint64_t llvm::toString@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v23 = 0x200000000;
  v21 = *a1;
  v22 = v24;
  *a1 = 0;
  v20 = &v22;
  llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v21, &v20);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v3 = v22;
  v4 = v23;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v4)
  {
    v5 = 24 * v4;
    v6 = v4 - 1;
    v7 = v3 + 23;
    v8 = 24 * v4;
    do
    {
      v9 = *v7;
      if (v9 < 0)
      {
        v9 = *(v7 - 15);
      }

      v6 += v9;
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
    std::string::reserve(a2, v6);
    v10 = *(v3 + 23);
    if (v10 >= 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = *v3;
    }

    if (v10 >= 0)
    {
      v12 = *(v3 + 23);
    }

    else
    {
      v12 = v3[1];
    }

    std::string::append(a2, v11, v12);
    if (v4 != 1)
    {
      v13 = (v3 + 3);
      v14 = v5 - 24;
      do
      {
        std::string::append(a2, "\n", 1uLL);
        v15 = v13[23];
        if (v15 >= 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = *v13;
        }

        if (v15 >= 0)
        {
          v17 = *(v13 + 23);
        }

        else
        {
          v17 = *(v13 + 1);
        }

        std::string::append(a2, v16, v17);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }

  result = llvm::SmallVector<std::string,2u>::~SmallVector(&v22);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::cl::Option::error(uint64_t a1, llvm::Twine *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *a5)
{
  if (!a3)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::raw_ostream::operator<<(a5, *(a1 + 32), *(a1 + 40));
    goto LABEL_17;
  }

  v7 = a4;
  v8 = a3;
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!atomic_load_explicit(qword_2815A56A0, memory_order_acquire))
  {
  }

  v9 = *(qword_2815A56A0[0] + 23);
  if (v9 >= 0)
  {
    v10 = qword_2815A56A0[0];
  }

  else
  {
    v10 = *qword_2815A56A0[0];
  }

  if (v9 >= 0)
  {
    v11 = *(qword_2815A56A0[0] + 23);
  }

  else
  {
    v11 = *(qword_2815A56A0[0] + 8);
  }

  llvm::raw_ostream::write(a5, v10, v11);
  v12 = *(a5 + 4);
  if ((*(a5 + 3) - v12) > 9)
  {
    *(v12 + 8) = 8293;
    *v12 = *": for the ";
    *(a5 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(a5, ": for the ", 0xAuLL);
  }

  v16[0] = v8;
  v16[1] = v7;
  v16[2] = 0;
LABEL_17:
  v13 = *(a5 + 4);
  if ((*(a5 + 3) - v13) > 8)
  {
    *(v13 + 8) = 32;
    *v13 = *" option: ";
    *(a5 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(a5, " option: ", 9uLL);
  }

  llvm::Twine::print(a2, a5);
  v14 = *(a5 + 4);
  if (*(a5 + 3) == v14)
  {
    llvm::raw_ostream::write(a5, "\n", 1uLL);
  }

  else
  {
    *v14 = 10;
    ++*(a5 + 4);
  }

  return 1;
}

llvm::raw_ostream *anonymous namespace::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v11 = v13;
  for (i = xmmword_2750C12B0; v5; --v5)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v11, 32);
  }

  if (v4 <= 1)
  {
    v6 = "-";
  }

  else
  {
    v6 = "--";
  }

  v7 = 1;
  if (v4 > 1)
  {
    v7 = 2;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v11, v6, &v6[v7]);
  v8 = llvm::raw_ostream::write(a1, v11, i);
  llvm::raw_ostream::operator<<(v8, *a2, *(a2 + 8));
  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::Option::addOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1);
}

llvm::raw_ostream *llvm::cl::Option::printHelpStr(uint64_t a1, uint64_t a2, size_t a3, int a4)
{
  v19[0] = a1;
  v19[1] = a2;
  LOBYTE(v16[0]) = 10;
  llvm::StringRef::split(v19, v16, 1uLL, &v17);
  v7 = llvm::outs(v6);
  v8 = llvm::raw_ostream::indent(v7, (a3 - a4));
  v9 = *(v8 + 4);
  if ((*(v8 + 3) - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 11552;
    *(v8 + 4) += 3;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, " - ", 3uLL);
  }

  result = llvm::raw_ostream::operator<<(v8, v17, *(&v17 + 1));
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {
    result = llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v11 = 10;
    ++*(result + 4);
  }

  while (*(&v18 + 1))
  {
    v20 = 10;
    llvm::StringRef::split(&v18, &v20, 1uLL, v16);
    v17 = v16[0];
    v18 = v16[1];
    v13 = llvm::outs(v12);
    v14 = llvm::raw_ostream::indent(v13, a3);
    result = llvm::raw_ostream::operator<<(v14, v17, *(&v17 + 1));
    v15 = *(result + 4);
    if (*(result + 3) == v15)
    {
      result = llvm::raw_ostream::write(result, "\n", 1uLL);
    }

    else
    {
      *v15 = 10;
      ++*(result + 4);
    }
  }

  return result;
}

llvm::raw_ostream *llvm::cl::basic_parser_impl::printOptionName(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v5 = llvm::outs(this);
  v10 = *(a2 + 1);
  v11 = 2;
  v7 = llvm::outs(v6);
  v8 = (a3 - *(a2 + 6));

  return llvm::raw_ostream::indent(v7, v8);
}

uint64_t llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int *a7)
{
  if (a6 > 3)
  {
    if (a6 == 5)
    {
      if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
    {
      goto LABEL_25;
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
LABEL_25:
      v16 = 1283;
      v15[0] = "'";
      v15[2] = a5;
      v15[3] = a6;
      v17[0] = v15;
      v17[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v18 = 770;
      v14 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v17, 0, 0, v14);
      return 1;
    }

    v8 = *a5;
    if (v8 != 48)
    {
      if (v8 != 49)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

LABEL_26:
    result = 0;
    v10 = 2;
    goto LABEL_27;
  }

LABEL_12:
  result = 0;
  v10 = 1;
LABEL_27:
  *a7 = v10;
  return result;
}

uint64_t llvm::cl::parser<unsigned long long>::parse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, unint64_t a6, void *a7)
{
  v15[0] = 0;
  v17 = a5;
  v18 = a6;
  v11 = llvm::consumeUnsignedInteger(&v17, 0, v15, a4);
  if (v18)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a5;
    v15[3] = a6;
    v17 = v15;
    v19 = "' value invalid for ullong argument!";
    v20 = 770;
    v13 = llvm::errs(v11);
    llvm::cl::Option::error(a2, &v17, 0, 0, v13);
  }

  else
  {
    *a7 = v15[0];
  }

  return v12;
}

BOOL parseDouble(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 261;
  v15[0] = a2;
  v15[1] = a3;
  v18 = v20;
  v19 = xmmword_2750C1200;
  v8 = llvm::Twine::toNullTerminatedStringRef(v15, &v18);
  v17 = 0;
  v9 = strtod(v8, &v17);
  v10 = *v17;
  if (!*v17)
  {
    *a4 = v9;
  }

  v11 = v18;
  if (v18 != v20)
  {
    free(v18);
  }

  if (v10)
  {
    v16 = 1283;
    v15[0] = "'";
    v15[2] = a2;
    v15[3] = a3;
    v18 = v15;
    *(&v19 + 1) = "' value invalid for floating point argument!";
    v20[4] = 770;
    v12 = llvm::errs(v11);
    llvm::cl::Option::error(a1, &v18, 0, 0, v12);
  }

  result = v10 != 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::cl::generic_parser_base::getOptionWidth(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v15 = v3 == 1;
    v5 = v3 + 15;
    if (v15)
    {
      v6 = 15;
    }

    else
    {
      v6 = v5;
    }

    v7 = (*(*this + 16))(this);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        (*(*this + 24))(this, v9);
        v11 = v10;
        (*(*this + 32))(this, v9);
        v13 = v12;
        v14 = (*(a2 + 5) >> 3) & 3;
        if (!v14)
        {
          v14 = (*(*a2 + 8))(a2);
        }

        v15 = v14 == 1 && v11 == 0;
        if (!v15 || v13 != 0)
        {
          v17 = v11 + 8;
          if (!v11)
          {
            v17 = 15;
          }

          if (v6 <= v17)
          {
            v6 = v17;
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }
  }

  else
  {
    v18 = (*(*this + 16))(this);
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v6 = 0;
      do
      {
        (*(*this + 24))(this, v20);
        if (v6 <= v21 + 8)
        {
          v6 = v21 + 8;
        }

        v20 = (v20 + 1);
      }

      while (v19 != v20);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t llvm::cl::generic_parser_base::printOptionInfo(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, size_t a3)
{
  if (*(a2 + 3))
  {
    v6 = ((*(a2 + 5) >> 3) & 3);
    if (!v6)
    {
      v6 = (*(*a2 + 8))(a2);
    }

    if (v6 == 1)
    {
      v6 = (*(*this + 16))(this);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v6 = (*(*this + 24))(this, v8);
          if (!v9)
          {
            break;
          }

          v8 = (v8 + 1);
          if (v7 == v8)
          {
            goto LABEL_28;
          }
        }

        v24 = llvm::outs(v6);
        v57 = *(a2 + 1);
        *&v58 = 2;
        v25 = *(a2 + 3);
        if (v25 == 1)
        {
          v26 = 7;
        }

        else
        {
          v26 = v25 + 7;
        }

        v6 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v26);
      }
    }

LABEL_28:
    v27 = llvm::outs(v6);
    v57 = *(a2 + 1);
    *&v58 = 2;
    v29 = *(v28 + 4);
    if (*(v28 + 3) - v29 > 7uLL)
    {
      *v29 = 0x3E65756C61763C3DLL;
      *(v28 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v28, "=<value>", 8uLL);
    }

    v30 = *(a2 + 3);
    if (v30 == 1)
    {
      v31 = 15;
    }

    else
    {
      v31 = v30 + 15;
    }

    llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, v31);
    result = (*(*this + 16))(this);
    v55 = result;
    if (result)
    {
      v32 = 0;
      do
      {
        v33 = (*(*this + 24))(this, v32);
        v35 = v34;
        v36 = (*(*this + 32))(this, v32);
        v38 = v37;
        result = (*(a2 + 5) >> 3) & 3;
        if (!result)
        {
          result = (*(*a2 + 8))(a2);
        }

        if (result == 1 && v35 == 0 && v38 == 0)
        {
          goto LABEL_69;
        }

        v41 = llvm::outs(result);
        v42 = *(v41 + 4);
        if ((*(v41 + 3) - v42) > 4)
        {
          *(v42 + 4) = 61;
          *v42 = 538976288;
          *(v41 + 4) += 5;
        }

        else
        {
          v41 = llvm::raw_ostream::write(v41, "    =", 5uLL);
        }

        v43 = llvm::raw_ostream::operator<<(v41, v33, v35);
        if (v35)
        {
          v44 = v35 + 8;
          if (v38)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v43 = llvm::outs(v43);
          v50 = *(v43 + 4);
          if (*(v43 + 3) - v50 > 6uLL)
          {
            *(v50 + 3) = 1048147056;
            *v50 = 1886217532;
            *(v43 + 4) += 7;
          }

          else
          {
            v43 = llvm::raw_ostream::write(v43, "<empty>", 7uLL);
          }

          v44 = 15;
          if (v38)
          {
LABEL_50:
            v59[0] = v36;
            v59[1] = v38;
            LOBYTE(v56[0]) = 10;
            llvm::StringRef::split(v59, v56, 1uLL, &v57);
            v46 = llvm::outs(v45);
            v47 = llvm::raw_ostream::indent(v46, (a3 - v44));
            v48 = *(v47 + 4);
            if ((*(v47 + 3) - v48) > 2)
            {
              *(v48 + 2) = 32;
              *v48 = 11552;
              v49 = (*(v47 + 4) + 3);
              *(v47 + 4) = v49;
            }

            else
            {
              v47 = llvm::raw_ostream::write(v47, " - ", 3uLL);
              v49 = *(v47 + 4);
            }

            if (*(v47 + 3) - v49 > 1uLL)
            {
              *v49 = 8224;
              *(v47 + 4) += 2;
            }

            else
            {
              v47 = llvm::raw_ostream::write(v47, "  ", 2uLL);
            }

            while (1)
            {
              result = llvm::raw_ostream::operator<<(v47, v57, *(&v57 + 1));
              v53 = *(result + 32);
              if (*(result + 24) == v53)
              {
                result = llvm::raw_ostream::write(result, "\n", 1uLL);
              }

              else
              {
                *v53 = 10;
                ++*(result + 32);
              }

              if (!*(&v58 + 1))
              {
                break;
              }

              v60 = 10;
              llvm::StringRef::split(&v58, &v60, 1uLL, v56);
              v57 = v56[0];
              v58 = v56[1];
              v52 = llvm::outs(v51);
              v47 = llvm::raw_ostream::indent(v52, (a3 + 2));
            }

            goto LABEL_69;
          }
        }

        result = llvm::outs(v43);
        v54 = *(result + 32);
        if (v54 >= *(result + 24))
        {
          result = llvm::raw_ostream::write(result, 10);
        }

        else
        {
          *(result + 32) = v54 + 1;
          *v54 = 10;
        }

LABEL_69:
        v32 = (v32 + 1);
      }

      while (v32 != v55);
    }
  }

  else
  {
    if (*(a2 + 5))
    {
      v10 = llvm::outs(this);
      v11 = *(v10 + 4);
      if (*(v10 + 3) - v11 > 1uLL)
      {
        *v11 = 8224;
        *(v10 + 4) += 2;
      }

      else
      {
        v10 = llvm::raw_ostream::write(v10, "  ", 2uLL);
      }

      v12 = llvm::raw_ostream::operator<<(v10, *(a2 + 4), *(a2 + 5));
      v13 = *(v12 + 4);
      if (v13 >= *(v12 + 3))
      {
        llvm::raw_ostream::write(v12, 10);
      }

      else
      {
        *(v12 + 4) = v13 + 1;
        *v13 = 10;
      }
    }

    result = (*(*this + 16))(this);
    if (result)
    {
      v15 = result;
      v16 = 0;
      do
      {
        v17 = (*(*this + 24))(this, v16);
        v19 = v18;
        v20 = llvm::outs(v17);
        v21 = *(v20 + 4);
        if (*(v20 + 3) - v21 > 3uLL)
        {
          *v21 = 538976288;
          *(v20 + 4) += 4;
        }

        else
        {
          v20 = llvm::raw_ostream::write(v20, "    ", 4uLL);
        }

        *&v57 = v17;
        *(&v57 + 1) = v19;
        *&v58 = 2;
        v22 = (*(*this + 32))(this, v16);
        result = llvm::cl::Option::printHelpStr(v22, v23, a3, v19 + 8);
        v16 = (v16 + 1);
      }

      while (v15 != v16);
    }
  }

  return result;
}

llvm::raw_ostream *llvm::cl::generic_parser_base::printGenericOptionDiff(llvm::cl::generic_parser_base *this, const llvm::cl::Option *a2, const llvm::cl::GenericOptionValue *a3, const llvm::cl::GenericOptionValue *a4, int a5)
{
  v10 = llvm::outs(this);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
    *v11 = 8224;
    *(v10 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "  ", 2uLL);
  }

  v38 = *(a2 + 1);
  v39 = 2;
  v13 = llvm::outs(v12);
  llvm::raw_ostream::indent(v13, (a5 - *(a2 + 6)));
  v14 = (*(*this + 16))(this);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = "= *unknown option value*\n";
    v18 = 25;
    while (1)
    {
      v19 = (*(*this + 48))(this, v16);
      v14 = (**a3)(a3, v19);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v16 = (v16 + 1);
      if (v15 == v16)
      {
        goto LABEL_24;
      }
    }

    v20 = llvm::outs(v14);
    v21 = v20;
    v22 = *(v20 + 4);
    if (*(v20 + 3) - v22 > 1uLL)
    {
      *v22 = 8253;
      *(v20 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v20, "= ", 2uLL);
    }

    v23 = (*(*this + 24))(this, v16);
    llvm::raw_ostream::operator<<(v21, v23, v24);
    v25 = (*(*this + 24))(this, v16);
    if (v26 <= 8)
    {
      v27 = 8 - v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = llvm::outs(v25);
    v29 = llvm::raw_ostream::indent(v28, v27);
    v30 = *(v29 + 4);
    if ((*(v29 + 3) - v30) > 0xA)
    {
      *(v30 + 7) = 540701804;
      *v30 = *" (default: ";
      *(v29 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v29, " (default: ", 0xBuLL);
    }

    v31 = 0;
    v17 = ")\n";
    v18 = 2;
    while (1)
    {
      v32 = (*(*this + 48))(this, v31);
      v14 = (**a4)(a4, v32);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v31 = (v31 + 1);
      if (v15 == v31)
      {
        goto LABEL_24;
      }
    }

    v33 = llvm::outs(v14);
    v34 = (*(*this + 24))(this, v31);
    v14 = llvm::raw_ostream::operator<<(v33, v34, v35);
    v17 = ")\n";
    v18 = 2;
  }

  else
  {
    v17 = "= *unknown option value*\n";
    v18 = 25;
  }

LABEL_24:
  v36 = llvm::outs(v14);

  return llvm::raw_ostream::operator<<(v36, v17, v18);
}

void llvm::cl::parser<BOOL>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unsigned int a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2883EB8F0;
  v31 = &v32;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_integer(&v23, a3, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    v13 = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v34) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 9);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = llvm::write_integer(v19, *(a4 + 8), 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, int a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2883EB8F0;
  v31 = &v32;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_integer(&v23, a3, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    v13 = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v34) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 12);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = llvm::write_integer(v19, *(a4 + 8), 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void llvm::cl::parser<unsigned int>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unsigned int a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2883EB8F0;
  v31 = &v32;
  llvm::raw_ostream::SetUnbuffered(&v23);
  write_unsigned<unsigned long>(&v23, a3, 0, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    v13 = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v34) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 12);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = write_unsigned<unsigned long>(v19, *(a4 + 8), 0, 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void llvm::cl::parser<unsigned long long>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, unint64_t a3, uint64_t a4, int a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2883EB8F0;
  v31 = &v32;
  llvm::raw_ostream::SetUnbuffered(&v23);
  write_unsigned<unsigned long>(&v23, a3, 0, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    v13 = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v34) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a4 + 16);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    v19 = write_unsigned<unsigned long>(v19, *(a4 + 8), 0, 0, 0);
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void llvm::cl::parser<double>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, uint64_t a3, int a4, double a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a4);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2883EB8F0;
  v31 = &v32;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_double(&v23, 0, 0, 0, a5);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    v13 = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v34) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a3 + 16);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    llvm::write_double(v19, 0, 0, 0, *(a3 + 8));
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void llvm::cl::parser<float>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, uint64_t a3, int a4, float a5)
{
  llvm::cl::basic_parser_impl::printOptionName(a1, a2, a4);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2883EB8F0;
  v31 = &v32;
  llvm::raw_ostream::SetUnbuffered(&v23);
  llvm::write_double(&v23, 0, 0, 0, a5);
  llvm::raw_ostream::~raw_ostream(&v23);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v8, "= ", 2uLL);
  }

  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = llvm::raw_ostream::write(v8, v10, v11);
  v13 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    v13 = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }
  }

  else if (SHIBYTE(v34) <= 7)
  {
LABEL_12:
    v14 = (8 - v13);
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  v15 = llvm::outs(v12);
  v16 = llvm::raw_ostream::indent(v15, v14);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0xA)
  {
    *(v17 + 7) = 540701804;
    *v17 = *" (default: ";
    *(v16 + 4) += 11;
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, " (default: ", 0xBuLL);
  }

  v18 = *(a3 + 12);
  v19 = llvm::outs(v16);
  if (v18 == 1)
  {
    llvm::write_double(v19, 0, 0, 0, *(a3 + 8));
  }

  else
  {
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xB)
    {
      *(v20 + 8) = 712273013;
      *v20 = *"*no default*";
      *(v19 + 4) += 12;
    }

    else
    {
      v19 = llvm::raw_ostream::write(v19, "*no default*", 0xCuLL);
    }
  }

  v21 = llvm::outs(v19);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 1uLL)
  {
    *v22 = 2601;
    *(v21 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ")\n", 2uLL);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

llvm::raw_ostream *llvm::cl::parser<std::string>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, const void *a3, size_t a4, uint64_t a5, int a6)
{
  v9 = llvm::cl::basic_parser_impl::printOptionName(a1, a2, a6);
  v10 = llvm::outs(v9);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
    *v11 = 8253;
    *(v10 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "= ", 2uLL);
  }

  v12 = llvm::raw_ostream::operator<<(v10, a3, a4);
  if (a4 >= 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = (8 - a4);
  }

  v14 = llvm::outs(v12);
  v15 = llvm::raw_ostream::indent(v14, v13);
  v16 = *(v15 + 4);
  if ((*(v15 + 3) - v16) > 0xA)
  {
    *(v16 + 7) = 540701804;
    *v16 = *" (default: ";
    *(v15 + 4) += 11;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, " (default: ", 0xBuLL);
  }

  v17 = *(a5 + 32);
  v18 = llvm::outs(v15);
  if (v17 == 1)
  {
    v21 = *(a5 + 8);
    v20 = a5 + 8;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    goto LABEL_19;
  }

  v25 = *(v18 + 4);
  if ((*(v18 + 3) - v25) <= 0xB)
  {
    v23 = "*no default*";
    v24 = 12;
LABEL_19:
    v18 = llvm::raw_ostream::write(v18, v23, v24);
    goto LABEL_21;
  }

  *(v25 + 8) = 712273013;
  *v25 = *"*no default*";
  *(v18 + 4) += 12;
LABEL_21:
  result = llvm::outs(v18);
  v27 = *(result + 4);
  if (*(result + 3) - v27 > 1uLL)
  {
    *v27 = 2601;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, ")\n", 2uLL);
  }

  return result;
}

double llvm::cl::basic_parser_impl::printOptionNoValue(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, int a3)
{
  v3 = llvm::cl::basic_parser_impl::printOptionName(this, a2, a3);
  v4 = llvm::outs(v3);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 0x1DuLL)
  {
    qmemcpy(v5, "= *cannot print option value*\n", 30);
    result = *"t option value*\n";
    *(v4 + 4) += 30;
  }

  else
  {

    llvm::raw_ostream::write(v4, "= *cannot print option value*\n", 0x1EuLL);
  }

  return result;
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EA9C8;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 + 160);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EA9C8;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 + 160);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EAA30;
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](a1 + 160);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EAA30;
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](a1 + 160);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_2883EAA98;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 200);
  *(a1 + 152) = &unk_2883EABD0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EAA98;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 200);
  *(a1 + 152) = &unk_2883EABD0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EAB00;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 + 160);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EAB00;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 + 160);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::CommandLineParser::addLiteralOption(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  if (!*(a2 + 24))
  {
    v21 = a2;
    v10 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::try_emplace<llvm::cl::Option *>((a3 + 128), a4, a5, &v21);
    if ((v10 & 1) == 0)
    {
      v17 = llvm::errs(v10);
      v18 = llvm::raw_ostream::operator<<(v17, a1);
      v19 = llvm::raw_ostream::operator<<(v18, ": CommandLine Error: Option '");
      v20 = llvm::raw_ostream::operator<<(v19, a4, a5);
      llvm::raw_ostream::operator<<(v20, "' registered more than once!\n");
      llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
    }

    if (!atomic_load_explicit(&qword_2815A5688, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(&qword_2815A5688, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    }

    if (qword_2815A5688 == a3)
    {
      v11 = *(a1 + 280);
      v12 = 16;
      if (v11 == *(a1 + 272))
      {
        v12 = 20;
      }

      v13 = *(a1 + 272 + v12);
      if (v13)
      {
        v14 = 8 * v13;
        for (i = *(a1 + 280); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
        {
          v14 -= 8;
          if (!v14)
          {
            return;
          }
        }
      }

      else
      {
        i = *(a1 + 280);
      }

      v16 = (v11 + 8 * v13);
LABEL_16:
      if (i != v16)
      {
        if (*i != a3)
        {
        }

        while (++i != v16)
        {
          if (*i < 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }
}

uint64_t llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::try_emplace<llvm::cl::Option *>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  v9 = *a1;
  v10 = v8;
  v11 = *(*a1 + 8 * v8);
  if (v11 == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    return 0;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v14[a3] = 0;
  v15 = *a4;
  *v13 = a3;
  v13[1] = v15;
  *(v9 + 8 * v10) = v13;
  ++*(a1 + 3);
    ;
  }

  return 1;
}

void anonymous namespace::CommandLineParser::addOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if ((*(a2 + 10) & 0x2000) != 0)
  {
    Key = llvm::StringMapImpl::FindKey((a3 + 128), *(a2 + 16), v6);
    if (Key != -1 && Key != *(a3 + 136))
    {
      return;
    }
  }

  v25 = *(a2 + 16);
  v26 = a2;
  a1 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::try_emplace<llvm::cl::Option *>((a3 + 128), v25, *(&v25 + 1), &v26);
  if ((a1 & 1) == 0)
  {
    v9 = llvm::errs(a1);
    v10 = *(v5 + 23);
    if (v10 >= 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = *v5;
    }

    if (v10 >= 0)
    {
      v12 = *(v5 + 23);
    }

    else
    {
      v12 = *(v5 + 8);
    }

    v13 = llvm::raw_ostream::write(v9, v11, v12);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 0x1CuLL)
    {
      qmemcpy(v14, ": CommandLine Error: Option '", 29);
      *(v13 + 4) += 29;
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, ": CommandLine Error: Option '", 0x1DuLL);
    }

    a1 = llvm::raw_ostream::operator<<(v13, *(a2 + 16), *(a2 + 24));
    v15 = *(a1 + 32);
    if (*(a1 + 24) - v15 > 0x1CuLL)
    {
      qmemcpy(v15, "' registered more than once!\n", 29);
      *(a1 + 32) += 29;
    }

    else
    {
      a1 = llvm::raw_ostream::write(a1, "' registered more than once!\n", 0x1DuLL);
    }

    v8 = 1;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  v16 = *(a2 + 10);
  if ((v16 & 0x180) == 0x80)
  {
    v17 = (a3 + 32);
    goto LABEL_28;
  }

  if ((*(a2 + 10) & 0x800) != 0)
  {
    v17 = (a3 + 80);
LABEL_28:
    llvm::SmallVectorTemplateBase<void *,true>::push_back(v17, a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_51:
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  if ((v16 & 7) == 4)
  {
    if (*(a3 + 152))
    {
      *&v25 = "Cannot specify more than one option with cl::ConsumeAfter!";
      v27 = 259;
      v24 = llvm::errs(a1);
      llvm::cl::Option::error(a2, &v25, 0, 0, v24);
      *(a3 + 152) = a2;
    }

    else
    {
      *(a3 + 152) = a2;
      if ((v8 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_51;
  }

  if (v8)
  {
    goto LABEL_51;
  }

LABEL_29:
  if (!atomic_load_explicit(&qword_2815A5688, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_2815A5688, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  if (qword_2815A5688 == a3)
  {
    v18 = *(v5 + 280);
    v19 = 16;
    if (v18 == *(v5 + 272))
    {
      v19 = 20;
    }

    v20 = *(v5 + 272 + v19);
    if (v20)
    {
      v21 = 8 * v20;
      for (i = *(v5 + 280); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v21 -= 8;
        if (!v21)
        {
          return;
        }
      }
    }

    else
    {
      i = *(v5 + 280);
    }

    v23 = (v18 + 8 * v20);
LABEL_42:
    if (i != v23)
    {
      if (*i != a3)
      {
      }

      while (++i != v23)
      {
        if (*i < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_42;
        }
      }
    }
  }
}

const void **llvm::SmallPtrSetImplBase::find_imp(const void ***this, char *a2)
{
  result = *this;
  v5 = this[1];
  if (v5 != result)
  {
    result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
    if (*result == a2)
    {
      return result;
    }

    v7 = *(this + 4);
    return &v5[v7];
  }

  v7 = *(this + 5);
  if (!v7)
  {
    return &v5[v7];
  }

  v8 = 8 * v7;
  while (*result != a2)
  {
    ++result;
    v8 -= 8;
    if (!v8)
    {
      return &v5[v7];
    }
  }

  return result;
}

uint64_t anonymous namespace::CommandLineParser::updateArgStr(const char *a1, unint64_t a2, uint64_t *a3, unint64_t a4, unsigned int *a5)
{
  v15 = a2;
  v8 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::try_emplace<llvm::cl::Option *>((a5 + 32), a3, a4, &v15);
  if ((v8 & 1) == 0)
  {
    v11 = llvm::errs(v8);
    v12 = llvm::raw_ostream::operator<<(v11, a1);
    v13 = llvm::raw_ostream::operator<<(v12, ": CommandLine Error: Option '");
    v14 = llvm::raw_ostream::operator<<(v13, *(a2 + 16), *(a2 + 24));
    llvm::raw_ostream::operator<<(v14, "' registered more than once!\n");
    llvm::report_fatal_error("inconsistency in registered CommandLine options", 1);
  }

  result = llvm::StringMapImpl::FindKey(a5 + 16, *(a2 + 16), *(a2 + 24));
  if (result != -1 && result != a5[34])
  {
    v10 = *(*(a5 + 16) + 8 * result);
    llvm::StringMapImpl::RemoveKey((a5 + 32), (v10 + a5[37]), *v10);

    JUMPOUT(0x277C69E30);
  }

  return result;
}

const void **llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *this;
  if (*(this + 1) != *this)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(this + 4))
    {
      *(this + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*this + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *this;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(this + 6);
      return v6;
    }
  }

  return v3;
}

const void **llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert(uint64_t a1, llvm::SmallPtrSetImplBase *this, char *a3)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(this, a3);
  v7 = *(this + 1);
  v8 = 16;
  if (v7 == *this)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(this + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
  return result;
}

BOOL llvm::SmallPtrSetImplBase::erase_imp(const void ***this, char *a2)
{
  imp = llvm::SmallPtrSetImplBase::find_imp(this, a2);
  v4 = this[1];
  v5 = 16;
  if (v4 == *this)
  {
    v5 = 20;
  }

  v6 = &v4[*(this + v5)];
  if (imp != v6)
  {
    *imp = -2;
    ++*(this + 6);
  }

  return imp != v6;
}

uint64_t parseBackslash(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  v7 = a2 - 1;
  v8 = a2 - a3;
  do
  {
    if (!(a3 - a2 + 1 + v6))
    {
      goto LABEL_8;
    }

    v9 = *(a3 + a1 + 1 + v6++);
  }

  while (v9 == 92);
  if (v9 != 34)
  {
    v7 = a3 + v6 - 1;
    v8 = v6;
LABEL_8:
    llvm::SmallVectorImpl<char>::append(a4, v8, 92);
    return v7;
  }

  llvm::SmallVectorImpl<char>::append(a4, v6 >> 1, 92);
  v7 = a3 + v6;
  if ((v6 - 1))
  {
    --v7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(a4, 34);
  }

  return v7;
}

__n128 llvm::StringRef::split@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = llvm::StringRef::find(a1, a2, a3, 0);
  if (v7 == -1)
  {
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    result = *a1;
    *a4 = *a1;
  }

  else
  {
    v10 = *a1;
    v9 = a1[1];
    if (v7 >= v9)
    {
      v11 = a1[1];
    }

    else
    {
      v11 = v7;
    }

    v12 = v7 + a3;
    if (v9 < v7 + a3)
    {
      v12 = a1[1];
    }

    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = v10 + v12;
    *(a4 + 24) = v9 - v12;
  }

  return result;
}

uint64_t llvm::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    v5 = memcmp(*a1, a2, a3);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v4 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t llvm::cl::Option::Option(uint64_t a1, char a2, char a3)
{
  *a1 = &unk_2883EA7A0;
  *(a1 + 8) = 0;
  *(a1 + 10) = a2 & 7 | (32 * (a3 & 3)) | *(a1 + 10) & 0x8000;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 64) = a1 + 80;
  v4 = (a1 + 64);
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  llvm::cl::getGeneralCategory(a1);
  llvm::SmallVectorTemplateBase<void *,true>::push_back(v4, &llvm::cl::getGeneralCategory(void)::GeneralCategory);
  return a1;
}

void llvm::cl::Option::~Option(llvm::cl::Option *this)
{
  *this = &unk_2883EA7A0;
  v2 = *(this + 12);
  if (v2 != *(this + 11))
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *llvm::SmallPtrSetImplBase::clear(llvm::SmallPtrSetImplBase *this)
{
  result = *(this + 1);
  if (result == *this)
  {
    goto LABEL_8;
  }

  v3 = *(this + 4);
  if (v3 < 0x21 || 4 * (*(this + 5) - *(this + 6)) >= v3)
  {
    result = memset(result, 255, 8 * v3);
LABEL_8:
    *(this + 5) = 0;
    *(this + 6) = 0;
    return result;
  }

  return llvm::SmallPtrSetImplBase::shrink_and_clear(this);
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(int const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object_deleter<anonymous namespace::CommandLineParser>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    if (v2 != *(v1 + 272))
    {
      free(v2);
    }

    v3 = *(v1 + 120);
    if (v3 != *(v1 + 112))
    {
      free(v3);
    }

    v4 = *(v1 + 64);
    if (v4 != (v1 + 80))
    {
      free(v4);
    }

    v5 = *(v1 + 40);
    if (v5)
    {
      *(v1 + 48) = v5;
      operator delete(v5);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x277C69E40);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::object_deleter<llvm::cl::SubCommand>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 140))
    {
      v2 = *(result + 136);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*(v1 + 128) + v3);
          if (v5 != -8 && v5 != 0)
          {
            MEMORY[0x277C69E30]();
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*(v1 + 128));
    v7 = *(v1 + 80);
    if (v7 != (v1 + 96))
    {
      free(v7);
    }

    v8 = *(v1 + 32);
    if (v8 != (v1 + 48))
    {
      free(v8);
    }

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      MEMORY[0x277C69E30](v5, 8);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = 16 * v7;
    do
    {
      v9 = *v6;
      v6 += 2;
      MEMORY[0x277C69E30](v9, 8);
      v8 -= 16;
    }

    while (v8);
    v6 = *(a1 + 64);
  }

  if (v6 != (a1 + 80))
  {
    free(v6);
  }

  v10 = *(a1 + 16);
  if (v10 != (a1 + 32))
  {
    free(v10);
  }

  return a1;
}

uint64_t llvm::ConvertUTF32toUTF8(unsigned int **a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 >= a2)
  {
    v7 = 0;
    goto LABEL_38;
  }

  LODWORD(v7) = 0;
  v8 = *a1;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    if (!a5 && (v9 & 0xFFFFF800) == 0xD800)
    {
      v7 = 3;
      goto LABEL_37;
    }

    if (v9 >= 0x110000)
    {
      v11 = 65533;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x110000)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (v9 >= 0x110000)
    {
      v13 = 3;
    }

    else
    {
      v13 = v7;
    }

    if (v9 < 0x10000)
    {
      v11 = v9;
      v12 = 3;
      v13 = v7;
    }

    if (v9 < 0x800)
    {
      v11 = v9;
      v12 = 2;
      v13 = v7;
    }

    v14 = v9 >= 0x80;
    if (v9 < 0x80)
    {
      v12 = 1;
    }

    else
    {
      v9 = v11;
    }

    v7 = v14 ? v13 : v7;
    v15 = v6 + v12;
    if (v15 > a4)
    {
      break;
    }

    if (v12 > 2u)
    {
      if (v12 != 3)
      {
        *--v15 = v9 & 0x3F | 0x80;
        v9 >>= 6;
      }

      *--v15 = v9 & 0x3F | 0x80;
      v9 >>= 6;
    }

    else if (v12 == 1)
    {
      goto LABEL_32;
    }

    *--v15 = v9 & 0x3F | 0x80;
    v9 >>= 6;
LABEL_32:
    *(v15 - 1) = llvm::firstByteMark[v12] | v9;
    v6 = v15 - 1 + v12;
    v8 = v5;
    if (v5 >= a2)
    {
      goto LABEL_38;
    }
  }

  v7 = 2;
LABEL_37:
  v5 = v8;
LABEL_38:
  *a1 = v5;
  *a3 = v6;
  return v7;
}

BOOL llvm::isLegalUTF8(llvm *this, const unsigned __int8 *a2)
{
  v2 = 0;
  v3 = this + a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v7 = *this;
      goto LABEL_16;
    }

    if (a2 != 2)
    {
      return v2;
    }

LABEL_9:
    if (*(v3 - 1) > -65)
    {
      return 0;
    }

    v6 = *(v3 - 1);
    v7 = *this;
    if (v7 <= 0xEF)
    {
      if (v7 != 224)
      {
        if (v7 == 237)
        {
          if (v6 <= 0x9F)
          {
            v7 = 237;
            return v7 < 0xF5;
          }

          return 0;
        }

        goto LABEL_16;
      }

      if (v6 >= 0xA0)
      {
        v7 = 224;
        return v7 < 0xF5;
      }

      return 0;
    }

    if (v7 == 240)
    {
      if (v6 >= 0x90)
      {
        v7 = 240;
        return v7 < 0xF5;
      }

      return 0;
    }

    if (v7 == 244)
    {
      if (v6 <= 0x8F)
      {
        v7 = 244;
        return v7 < 0xF5;
      }

      return 0;
    }

LABEL_16:
    if (v7 >= -62)
    {
      return v7 < 0xF5;
    }

    return 0;
  }

  if (a2 == 3)
  {
LABEL_8:
    v5 = *--v3;
    if (v5 > -65)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    v4 = *--v3;
    if (v4 > -65)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return v2;
}

BOOL llvm::isLegalUTF8String(llvm **this, const unsigned __int8 **a2, const unsigned __int8 *a3)
{
  v3 = *this;
  if (*this == a2)
  {
    return 1;
  }

  while (1)
  {
    v6 = llvm::trailingBytesForUTF8[*v3] + 1;
    if (a2 - v3 < v6)
    {
      break;
    }

    result = llvm::isLegalUTF8(v3, (llvm::trailingBytesForUTF8[*v3] + 1));
    if (!result)
    {
      return result;
    }

    v3 = (v3 + v6);
    *this = v3;
    if (v3 == a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::ConvertUTF8toUTF32Impl(unsigned __int8 **a1, unsigned __int8 *a2, unsigned int **a3, unint64_t a4, int a5, int a6)
{
  v6 = *a1;
  v7 = *a3;
  if (*a1 >= a2)
  {
    v10 = 0;
    goto LABEL_71;
  }

  v10 = 0;
  if (a5)
  {
    v11 = a6 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;
  while (1)
  {
    v13 = *v6;
    if (a2 - v6 <= llvm::trailingBytesForUTF8[*v6])
    {
      if (v12)
      {
        v10 = 1;
        goto LABEL_71;
      }

      goto LABEL_19;
    }

    if (v7 >= a4)
    {
      v10 = 2;
      goto LABEL_71;
    }

    v14 = llvm::trailingBytesForUTF8[*v6];
    v15 = llvm::trailingBytesForUTF8[*v6] + 1;
    if (!llvm::isLegalUTF8(v6, v15))
    {
      if (!a5)
      {
        goto LABEL_73;
      }

LABEL_19:
      if (v6 == a2)
      {
        v19 = 0;
        goto LABEL_54;
      }

      if ((v13 - 194) >= 0x1E && v6 + 1 != a2)
      {
        v20 = v6[1];
        if (v13 == 224)
        {
          v11 = (v20 & 0xE0) == 160;
          v19 = 1;
          if (v11)
          {
            v19 = 2;
          }

          goto LABEL_54;
        }

        if ((v13 - 225) <= 0xB)
        {
          goto LABEL_48;
        }

        if (v13 == 237)
        {
          v32 = v20 < -96;
          goto LABEL_51;
        }

        if ((v13 & 0xFE) == 0xEE)
        {
LABEL_48:
          v32 = v20 < -64;
LABEL_51:
          v19 = 1;
          goto LABEL_52;
        }

        v33 = (v6 + 2);
        if (v13 == 240)
        {
          if ((v20 - 144) <= 0x2F)
          {
LABEL_67:
            if (v33 != a2)
            {
              v32 = *v33 < -64;
              v19 = 2;
LABEL_52:
              if (v32)
              {
                ++v19;
              }

              goto LABEL_54;
            }

            v19 = 2;
LABEL_54:
            v6 += v19;
            goto LABEL_55;
          }
        }

        else
        {
          v34 = v20;
          if ((v13 - 241) > 2)
          {
            if (v13 == 244)
            {
              v19 = 1;
              if (v34 > -113)
              {
                goto LABEL_54;
              }

              goto LABEL_67;
            }
          }

          else if (v20 <= -65)
          {
            goto LABEL_67;
          }
        }
      }

      v19 = 1;
      goto LABEL_54;
    }

    v16 = 0;
    v17 = v14;
    if (v14 > 2u)
    {
      if (v14 != 3)
      {
        if (v14 != 4)
        {
          if (v14 != 5)
          {
            goto LABEL_40;
          }

          v16 = v13 << 6;
          v21 = *++v6;
          v13 = v21;
        }

        v22 = v16 + v13;
        v23 = *++v6;
        v13 = v23;
        v16 = v22 << 6;
      }

      v24 = v16 + v13;
      v25 = *++v6;
      v13 = v25;
      v16 = v24 << 6;
LABEL_37:
      v26 = v16 + v13;
      v27 = *++v6;
      v13 = v27;
      v16 = v26 << 6;
LABEL_38:
      v28 = v16 + v13;
      v29 = *++v6;
      v13 = v29;
      v17 = v28 << 6;
LABEL_39:
      ++v6;
      v16 = v17 + v13;
      goto LABEL_40;
    }

    if (!v14)
    {
      goto LABEL_39;
    }

    if (v14 == 1)
    {
      goto LABEL_38;
    }

    if (v14 == 2)
    {
      goto LABEL_37;
    }

LABEL_40:
    v30 = v16 - llvm::offsetsFromUTF8[v14];
    if (HIWORD(v30) <= 0x10u)
    {
      break;
    }

LABEL_55:
    v10 = 3;
    v30 = 65533;
LABEL_56:
    *v7++ = v30;
    if (v6 >= a2)
    {
      goto LABEL_71;
    }
  }

  v31 = (v30 & 0x1FF800) == 55296;
  if ((v30 & 0x1FF800) == 0xD800)
  {
    v30 = 65533;
  }

  if (a5 || !v31)
  {
    goto LABEL_56;
  }

  v6 -= v15;
LABEL_73:
  v10 = 3;
LABEL_71:
  *a1 = v6;
  *a3 = v7;
  return v10;
}

void *llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(void *result, __int16 a2)
{
  v3 = result;
  v4 = result[1];
  if ((v4 + 1) > result[2])
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v4 + 1, 2);
    v4 = v3[1];
  }

  *(*v3 + 2 * v4) = a2;
  ++v3[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

BOOL llvm::DataExtractor::prepareRead(llvm::DataExtractor *this, unint64_t a2, uint64_t a3, llvm::Error *a4)
{
  v5 = a3 + a2;
  if (__CFADD__(a3, a2))
  {
    v6 = 0;
    if (!a4)
    {
      return v6;
    }
  }

  else
  {
    v6 = *(this + 1) > (v5 - 1);
    if (!a4)
    {
      return v6;
    }
  }

  if (!v6)
  {
    v7 = *(this + 1);
    std::generic_category();
    if (v7 < a2)
    {
      __p = 0;
      v19 = 0;
      v20 = 0;
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v9 = &unk_2883EB8F0;
      p_p = &__p;
      llvm::raw_ostream::SetUnbuffered(&v9);
      v21 = &unk_2883EAC50;
      v22 = "offset 0x%llx is beyond the end of data at 0x%zx";
      v23 = a2;
      v24 = v7;
      llvm::raw_ostream::operator<<(&v9, &v21);
      operator new();
    }

    __p = 0;
    v19 = 0;
    v20 = 0;
    v10 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2883EB8F0;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v9);
    v21 = &unk_2883EAC30;
    v22 = "unexpected end of data at offset 0x%zx while reading [0x%llx, 0x%llx)";
    v23 = v7;
    v24 = a2;
    v25 = v5;
    llvm::raw_ostream::operator<<(&v9, &v21);
    operator new();
  }

  return v6;
}

uint64_t llvm::DataExtractor::getU<unsigned char>(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v6 = *a2;
  result = llvm::DataExtractor::prepareRead(this, *a2, 1, a3);
  if (result)
  {
    result = *(*this + v6);
    ++*a2;
  }

  return result;
}

uint64_t llvm::DataExtractor::getU<unsigned int>(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v6 = *a2;
  result = llvm::DataExtractor::prepareRead(this, *a2, 4, a3);
  if (result)
  {
    v7 = *(*this + v6);
    v8 = bswap32(v7);
    if (*(this + 16) == 1)
    {
      result = v7;
    }

    else
    {
      result = v8;
    }

    *a2 += 4;
  }

  return result;
}

void *llvm::DataExtractor::getCStrRef(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  if (a3 && *a3)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(this + 1);
  if (v6 <= *a2 || ((v7 = *this, v8 = (*this + v5), v9 = memchr(v8, 0, v6 - *a2), v10 = &v9[-v7], v9) ? (v11 = v10 + 1 == 0) : (v11 = 1), v11))
  {
    if (a3)
    {
      std::generic_category();
      memset(__p, 0, sizeof(__p));
      v14 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 1;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      v13 = &unk_2883EB8F0;
      v21 = __p;
      llvm::raw_ostream::SetUnbuffered(&v13);
      v23[0] = &unk_2883EAC70;
      v23[1] = "no null terminated string at offset 0x%llx";
      v23[2] = v5;
      llvm::raw_ostream::operator<<(&v13, v23);
      operator new();
    }

    return 0;
  }

  *a2 = (v10 + 1);
  return v8;
}

uint64_t llvm::StringRef::trim(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  first_not_of = llvm::StringRef::find_first_not_of(a1, a2, a3, 0);
  v8 = *a1;
  v7 = a1[1];
  if (first_not_of >= v7)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = first_not_of;
  }

  v10 = v8 + v9;
  v12[0] = v8 + v9;
  v12[1] = v7 - v9;
  llvm::StringRef::find_last_not_of(v12, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
  return v10;
}

uint64_t llvm::DataExtractor::getULEB128(llvm::DataExtractor *this, unint64_t *a2, llvm::Error *a3)
{
  v4 = *this;
  v5 = *(this + 1);
  if (!a3 || !*a3)
  {
    v6 = 0;
    result = 0;
    v8 = 0;
    v9 = v4 + *a2;
    v10 = v5 - *a2;
    v11 = "malformed uleb128, extends past end";
    while (v10 != v6)
    {
      v12 = *(v9 + v6);
      v13 = v12 & 0x7F;
      if (v8 >= 0x40 && (v12 & 0x7F) != 0 || (v13 << v8) >> v8 != v13)
      {
        v11 = "uleb128 too big for uint64";
        break;
      }

      result += v13 << v8;
      v8 += 7;
      ++v6;
      if ((v12 & 0x80) == 0)
      {
        *a2 += v6;
        return result;
      }
    }

    if (a3)
    {
      std::generic_category();
      memset(__p, 0, sizeof(__p));
      v16 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v15 = &unk_2883EB8F0;
      v23 = __p;
      llvm::raw_ostream::SetUnbuffered(&v15);
      v14 = *a2;
      v25[0] = &unk_2883EAC90;
      v25[1] = "unable to decode LEB128 at offset 0x%8.8llx: %s";
      v25[2] = v14;
      v25[3] = v11;
      llvm::raw_ostream::operator<<(&v15, v25);
      operator new();
    }
  }

  return 0;
}

uint64_t *llvm::DebugCounter::instance(llvm::DebugCounter *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&_MergedGlobals_11);
    if (v2)
    {
      __cxa_guard_release(&_MergedGlobals_11);
    }
  }

  return &qword_2815A56C0;
}

void *anonymous namespace::DebugCounterOwner::DebugCounterOwner(_anonymous_namespace_::DebugCounterOwner *this)
{
  qword_2815A56C0 = 0;
  *algn_2815A56C8 = 0;
  dword_2815A56D0 = 0;
  qword_2815A56E8 = 0;
  qword_2815A56F0 = 0;
  qword_2815A56E0 = 0;
  qword_2815A56D8 = &qword_2815A56E0;
  qword_2815A56F8 = 0;
  unk_2815A5700 = 0;
  byte_2815A5708 = 0;
  v1 = llvm::cl::Option::Option(&qword_2815A5710, 1, 0);
  byte_2815A57B0 = 0;
  xmmword_2815A5790 = 0u;
  unk_2815A57A0 = 0u;
  qword_2815A5710 = &unk_2883EAD18;
  qword_2815A57C0 = 0;
  unk_2815A57C8 = 0;
  qword_2815A57B8 = 0;
  qword_2815A57D0 = &unk_2883EA998;
  qword_2815A57D8 = &unk_2883EAD80;
  qword_2815A57F0 = &qword_2815A57D8;
  v2 = llvm::cl::Option::setArgStr(v1, "debug-counter", 0xDuLL);
  qword_2815A5730 = "Comma separated list of debug counter skip and count";
  unk_2815A5738 = 52;
  word_2815A571A = word_2815A571A & 0xFD9F | 0x220;
  if (xmmword_2815A5790)
  {
    v7 = "cl::location(x) specified more than once!";
    v8 = 259;
    v3 = llvm::errs(v2);
    llvm::cl::Option::error(&qword_2815A5710, &v7, 0, 0, v3);
  }

  else
  {
    *&xmmword_2815A5790 = &qword_2815A56C0;
  }

  llvm::cl::Option::addArgument(&qword_2815A5710);
  qword_2815A5710 = &unk_2883EACB0;
  v4 = llvm::cl::Option::Option(&qword_2815A57F8, 0, 0);
  byte_2815A5878 = 0;
  qword_2815A5880 = &unk_2883EAB68;
  *&word_2815A5888 = 0;
  qword_2815A57F8 = &unk_2883EAB00;
  qword_2815A5890 = &unk_2883EA848;
  qword_2815A5898 = &unk_2883EAB88;
  qword_2815A58B0 = &qword_2815A5898;
  llvm::cl::Option::setArgStr(v4, "print-debug-counter", 0x13uLL);
  byte_2815A5878 = 0;
  word_2815A5888 = 256;
  word_2815A5802 = word_2815A5802 & 0xFF98 | 0x20;
  qword_2815A5818 = "Print out debug counter info after all counters accumulated";
  unk_2815A5820 = 59;
  llvm::cl::Option::addArgument(&qword_2815A57F8);
  return llvm::errs(v5);
}

void anonymous namespace::DebugCounterOwner::~DebugCounterOwner(_anonymous_namespace_::DebugCounterOwner *this)
{
  v2 = (this + 312);
  *(this + 39) = &unk_2883EAB00;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 472);
  llvm::cl::Option::~Option(v2);
  *(this + 10) = &unk_2883EAD18;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](this + 280);
  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v8 = (this + 216);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v8);
  llvm::cl::Option::~Option((this + 80));
  v8 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(this + 24, *(this + 4));
  v4 = *(this + 4);
  v5 = *this;
  if (v4)
  {
    v6 = v5 + 40;
    v7 = v4 << 6;
    do
    {
      if (*(v6 - 40) <= 0xFFFFFFFD && *(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 += 64;
      v7 -= 64;
    }

    while (v7);
    v5 = *this;
  }

  MEMORY[0x277C69E30](v5, 8);
}

llvm::raw_ostream *llvm::DebugCounter::push_back(llvm::raw_ostream *result, void **a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v2)
  {
    v5 = result;
    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    __p = v6;
    v40 = v2;
    LOBYTE(v46) = 61;
    llvm::StringRef::split(&__p, &v46, 1uLL, &__src);
    if (v45)
    {
      v46 = 0;
      __p = v44;
      v40 = v45;
      v9 = llvm::consumeSignedInteger(&__p, 0, &v46, v8);
      if ((v9 & 1) == 0 && !v40)
      {
        v10 = v43 - 5;
        if (v43 < 5)
        {
LABEL_20:
          v18 = llvm::errs(v9);
          v19 = *(v18 + 4);
          if ((*(v18 + 3) - v19) > 0x13)
          {
            *(v19 + 16) = 540701295;
            *v19 = *"DebugCounter Error: ";
            *(v18 + 4) += 20;
          }

          else
          {
            v18 = llvm::raw_ostream::write(v18, "DebugCounter Error: ", 0x14uLL);
          }

          result = llvm::raw_ostream::operator<<(v18, __src, v43);
          v32 = *(result + 4);
          if (*(result + 3) - v32 <= 0x22uLL)
          {
            v28 = " does not end with -skip or -count\n";
            v29 = 35;
            return llvm::raw_ostream::write(result, v28, v29);
          }

          qmemcpy(v32, " does not end with -skip or -count\n", 35);
          v30 = *(result + 4) + 35;
          goto LABEL_45;
        }

        v11 = v46;
        v12 = __src;
        v13 = __src + v43;
        if (*(__src + v43 - 5) == 1768649517 && *(__src + v43 - 1) == 112)
        {
          if (v10 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v10 >= 0x17)
            {
              operator new();
            }

            v41 = v43 - 5;
            if (v43 != 5)
            {
              memmove(&__p, __src, v10);
            }

            *(&__p + v10) = 0;
            v33 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>((v5 + 3), &__p);
            if (v5 + 4 == v33)
            {
              v34 = 0;
            }

            else
            {
              v34 = *(v33 + 14);
            }

            if (v41 < 0)
            {
              operator delete(__p);
            }

            LODWORD(v46) = v34;
            if (v34)
            {
              llvm::DebugCounter::instance(v33);
              byte_2815A5708 = 1;
              result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::FindAndConstruct(v5, &v46);
              *(result + 2) = v11;
LABEL_73:
              *(result + 32) = 1;
              return result;
            }

LABEL_74:
            v36 = llvm::errs(v33);
            v37 = llvm::raw_ostream::operator<<(v36, "DebugCounter Error: ", 0x14uLL);
            v38 = llvm::raw_ostream::operator<<(v37, v12, v10);
            return llvm::raw_ostream::operator<<(v38, " is not a registered counter\n", 0x1DuLL);
          }
        }

        else
        {
          if (v43 == 5)
          {
            goto LABEL_20;
          }

          v15 = *(v13 - 6);
          v16 = *(v13 - 1);
          if (v15 != 1970234157 || v16 != 29806)
          {
            goto LABEL_20;
          }

          v10 = v43 - 6;
          if (v43 - 6 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v10 >= 0x17)
            {
              operator new();
            }

            v41 = v43 - 6;
            if (v43 != 6)
            {
              memmove(&__p, __src, v10);
            }

            *(&__p + v10) = 0;
            v33 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>((v5 + 3), &__p);
            if (v5 + 4 == v33)
            {
              v35 = 0;
            }

            else
            {
              v35 = *(v33 + 14);
            }

            if (v41 < 0)
            {
              operator delete(__p);
            }

            LODWORD(v46) = v35;
            if (v35)
            {
              llvm::DebugCounter::instance(v33);
              byte_2815A5708 = 1;
              result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::FindAndConstruct(v5, &v46);
              *(result + 3) = v11;
              goto LABEL_73;
            }

            goto LABEL_74;
          }
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v22 = llvm::errs(v9);
      v23 = *(v22 + 4);
      if ((*(v22 + 3) - v23) > 0x13)
      {
        *(v23 + 16) = 540701295;
        *v23 = *"DebugCounter Error: ";
        *(v22 + 4) += 20;
      }

      else
      {
        v22 = llvm::raw_ostream::write(v22, "DebugCounter Error: ", 0x14uLL);
      }

      result = llvm::raw_ostream::operator<<(v22, v44, v45);
      v31 = *(result + 4);
      if ((*(result + 3) - v31) <= 0x10)
      {
        v28 = " is not a number\n";
        v29 = 17;
        return llvm::raw_ostream::write(result, v28, v29);
      }

      *(v31 + 16) = 10;
      *v31 = *" is not a number\n";
      v30 = *(result + 4) + 17;
    }

    else
    {
      v20 = llvm::errs(v7);
      v21 = *(v20 + 4);
      if ((*(v20 + 3) - v21) > 0x13)
      {
        *(v21 + 16) = 540701295;
        *v21 = *"DebugCounter Error: ";
        *(v20 + 4) += 20;
      }

      else
      {
        v20 = llvm::raw_ostream::write(v20, "DebugCounter Error: ", 0x14uLL);
      }

      v24 = *(a2 + 23);
      if (v24 >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a2;
      }

      if (v24 >= 0)
      {
        v26 = *(a2 + 23);
      }

      else
      {
        v26 = a2[1];
      }

      result = llvm::raw_ostream::write(v20, v25, v26);
      v27 = *(result + 4);
      if (*(result + 3) - v27 <= 0x19uLL)
      {
        v28 = " does not have an = in it\n";
        v29 = 26;
        return llvm::raw_ostream::write(result, v28, v29);
      }

      qmemcpy(v27, " does not have an = in it\n", 26);
      v30 = *(result + 4) + 26;
    }

LABEL_45:
    *(result + 4) = v30;
  }

  return result;
}

uint64_t llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *a5, size_t a6)
{
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  if (*(a1 + 160) == 1)
  {
    *(a1 + 176) = *(a1 + 168);
    *(a1 + 160) = 0;
  }

  v8 = llvm::cl::parser<std::string>::parse(a1 + 192, a1, a3, a4, a5, a6, __p);
  if ((v8 & 1) == 0)
  {
    llvm::DebugCounter::push_back(*(a1 + 128), __p);
    *(a1 + 12) = a2;
    v10 = *(a1 + 176);
    v9 = *(a1 + 184);
    if (v10 >= v9)
    {
      v12 = *(a1 + 168);
      v13 = v10 - v12;
      v14 = (v10 - v12) >> 2;
      v15 = v14 + 1;
      if ((v14 + 1) >> 62)
      {
        goto LABEL_21;
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
      v18 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1 + 168, v18);
      }

      v19 = (v10 - v12) >> 2;
      v20 = (4 * v14);
      v21 = (4 * v14 - 4 * v19);
      *v20 = a2;
      v11 = v20 + 1;
      memcpy(v21, v12, v13);
      v22 = *(a1 + 168);
      *(a1 + 168) = v21;
      *(a1 + 176) = v11;
      *(a1 + 184) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = a2;
      v11 = v10 + 4;
    }

    *(a1 + 176) = v11;
    v23 = *(a1 + 224);
    if (v23)
    {
      (*(*v23 + 48))(v23, __p);
      goto LABEL_17;
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_21:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

LABEL_17:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void anonymous namespace::DebugCounterList::~DebugCounterList(_anonymous_namespace_::DebugCounterList *this)
{
  *this = &unk_2883EAD18;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](this + 200);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = (this + 136);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(this);
}

{
  *this = &unk_2883EAD18;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](this + 200);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = (this + 136);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(this);
  MEMORY[0x277C69E40]();
}

void anonymous namespace::DebugCounterList::printOptionInfo(_anonymous_namespace_::DebugCounterList *this, size_t a2)
{
  v4 = llvm::outs(this);
  v5 = *(v4 + 4);
  if ((*(v4 + 3) - v5) > 2)
  {
    *(v5 + 2) = 45;
    *v5 = 8224;
    *(v4 + 4) += 3;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, "  -", 3uLL);
  }

  llvm::raw_ostream::operator<<(v4, *(this + 2), *(this + 3));
  v6 = llvm::cl::Option::printHelpStr(*(this + 4), *(this + 5), a2, *(this + 3) + 6);
  llvm::DebugCounter::instance(v6);
  v7 = qword_2815A56F0;
  for (i = qword_2815A56F8; v7 != i; v7 += 24)
  {
    v9 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(&qword_2815A56D8, v7);
    if (v9 == &qword_2815A56E0)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v9 + 56);
    }

    v35 = v10;
    v11 = qword_2815A56F0;
    v36 = 0;
    v12 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(&qword_2815A56C0, &v35, &v36);
    if (v12)
    {
      v13 = *(v36 + 17);
      *v33 = *(v36 + 8);
      *&v33[9] = v13;
      if (*(v36 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v36 + 40), *(v36 + 48));
      }

      else
      {
        v14 = *(v36 + 40);
        v34.__r_.__value_.__r.__words[2] = *(v36 + 56);
        *&v34.__r_.__value_.__l.__data_ = v14;
      }
    }

    else
    {
      *v33 = 0u;
      *&v33[16] = 0xFFFFFFFFFFFFFFFFLL;
      memset(&v34, 0, sizeof(v34));
    }

    v15 = v11 + 24 * (v10 - 1);
    if (*(v15 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *v15, *(v15 + 8));
    }

    else
    {
      v16 = *v15;
      v31.__r_.__value_.__r.__words[2] = *(v15 + 16);
      *&v31.__r_.__value_.__l.__data_ = v16;
    }

    __p = v34;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v31.__r_.__value_.__r.__words[1];
    }

    v18 = llvm::outs(v12);
    v19 = *(v18 + 4);
    if ((*(v18 + 3) - v19) > 4)
    {
      *(v19 + 4) = 61;
      *v19 = 538976288;
      *(v18 + 4) += 5;
    }

    else
    {
      v18 = llvm::raw_ostream::write(v18, "    =", 5uLL);
    }

    v20 = a2 - v17;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v31;
    }

    else
    {
      v21 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    v23 = llvm::raw_ostream::write(v18, v21, size);
    v24 = llvm::outs(v23);
    v25 = llvm::raw_ostream::indent(v24, (v20 - 8));
    v26 = *(v25 + 4);
    if ((*(v25 + 3) - v26) > 4)
    {
      *(v26 + 4) = 32;
      *v26 = 538979616;
      *(v25 + 4) += 5;
    }

    else
    {
      v25 = llvm::raw_ostream::write(v25, " -   ", 5uLL);
    }

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
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    v29 = llvm::raw_ostream::write(v25, p_p, v28);
    v30 = *(v29 + 4);
    if (v30 >= *(v29 + 3))
    {
      llvm::raw_ostream::write(v29, 10);
    }

    else
    {
      *(v29 + 4) = v30 + 1;
      *v30 = 10;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }
}

llvm::raw_ostream *llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::setDefault(llvm::raw_ostream *result)
{
  *(result + 22) = *(result + 21);
  v1 = *(result + 17);
  v2 = *(result + 18);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      result = llvm::DebugCounter::push_back(*(v3 + 16), (v1 + 8));
      v1 += 40;
    }

    while (v1 != v2);
  }

  return result;
}

void llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(uint64_t a1)
{
  *a1 = &unk_2883EAD18;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 200);
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 136);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(a1);
}

uint64_t llvm::cl::list<std::string,llvm::DebugCounter,llvm::cl::parser<std::string>>::~list(uint64_t a1)
{
  *a1 = &unk_2883EAD18;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 200);
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 136);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
  return MEMORY[0x277C69E40]();
}

void std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::cl::OptionValue<std::string>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::cl::OptionValue<std::string>>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 40;
    v6 = *(a1 + 8);
    do
    {
      *(v6 - 40) = &unk_2883EABD0;
      v6 -= 40;
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v4 - 32));
      }

      v5 -= 40;
      v4 = v6;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + (v6 << 6));
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + (v6 << 6));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 6) = 0u;
    *(inserted + 2) = 0u;
    *(inserted + 3) = -1;
    *(inserted + 6) = 0;
    *(inserted + 7) = 0;
    *(inserted + 5) = 0;
  }

  return inserted;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(v8 << 6, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::moveFromOldBuckets(a1, v4, v4 + (v3 << 6));

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x3FFFFFFFFFFFFFFLL;
    v13 = v12 & 0x3FFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x3FFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
    v15 = vdupq_n_s64(v13);
    v16 = result + 128;
    do
    {
      v17 = vdupq_n_s64(v11);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 32) = -1;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 16) = -1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
      {
        *v16 = -1;
        v16[16] = -1;
      }

      v11 += 4;
      v16 += 64;
    }

    while (v14 != v11);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x3FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x3FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x3FFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*a1 + 128);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_2750C1210)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 32) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 16) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_2750C1830)))).i32[1])
      {
        *v12 = -1;
        v12[16] = -1;
      }

      v7 += 4;
      v12 += 64;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v18 = 0;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>,unsigned int,llvm::DebugCounter::CounterInfo,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::DebugCounter::CounterInfo>>::LookupBucketFor<unsigned int>(a1, a2, &v18);
      v15 = v18;
      *v18 = *a2;
      v16 = *(a2 + 8);
      *(v15 + 17) = *(a2 + 17);
      *(v15 + 2) = v16;
      v17 = *(a2 + 40);
      *(v15 + 7) = *(a2 + 56);
      *(v15 + 10) = v17;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 40) = 0;
      ++*(a1 + 8);
      if (*(a2 + 63) < 0)
      {
        operator delete(*(a2 + 40));
      }
    }

    a2 += 64;
  }
}

uint64_t llvm::ELFAttributeParser::parseStringAttribute@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v13 = ULEB128;
  v32 = ULEB128;
  if (ULEB128 >= a5)
  {
    llvm::ELFAttributeParser::printAttribute(a1, a3, ULEB128, &str_2, 0);
    v16 = std::generic_category();
    v17 = *a2;
    if (*a2)
    {
      v24[2] = a2;
      v18 = 3;
      v19 = 2;
    }

    else
    {
      v18 = 1;
      v19 = 3;
    }

    v24[0] = "unknown ";
    v25 = 3;
    v26 = v18;
    v21 = v17 == 0;
    v22 = v24;
    if (v21)
    {
      v22 = "unknown ";
    }

    v27[0] = v22;
    v27[2] = " value: ";
    v28 = v19;
    v29 = 3;
    v30[0] = v27;
    v30[2] = &v32;
    v31 = 3074;
    llvm::Twine::str(v30, v33);
    if (v34 >= 0)
    {
      v23 = v33;
    }

    else
    {
      v23 = v33[0];
    }

    v36 = 22;
    v37 = v16;
    v35 = v23;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v14 = *(a4 + 8 * ULEB128);
  if (v14)
  {
    v15 = strlen(*(a4 + 8 * ULEB128));
  }

  else
  {
    v15 = 0;
  }

  result = llvm::ELFAttributeParser::printAttribute(a1, a3, v13, v14, v15);
  *a6 = 0;
  return result;
}

uint64_t llvm::ELFAttributeParser::printAttribute(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[4];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = a2;
    if (v10 <= a2)
    {
      v12 = a2 % v10;
    }
  }

  else
  {
    v12 = (v10 - 1) & a2;
  }

  v13 = *(a1[3] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == a2)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= v10)
      {
        v15 %= v10;
      }
    }

    else
    {
      v15 &= v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (*(v14 + 4) != a2)
  {
    goto LABEL_17;
  }

  result = a1[13];
  if (result)
  {
    v17 = a1[15];
    if (v17)
    {
      v18 = 24 * v17;
      v19 = "";
      v20 = a1[14];
      while (*v20 != a2)
      {
        v20 += 24;
        v18 -= 24;
        if (!v18)
        {
          v21 = 0;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v20 = a1[14];
    }

    if (v20 == a1[14] + 24 * v17)
    {
      v21 = 0;
      v19 = "";
    }

    else
    {
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = 4;
      if (v23 < 4)
      {
        v24 = v23;
      }

      v19 = (v22 + v24);
      v21 = v23 - v24;
    }

LABEL_31:
    v25 = result;
    (*(*result + 224))(result, "Attribute", 9);
    (*(*a1[13] + 24))(a1[13], "Tag", 3, a2);
    (*(*a1[13] + 24))(a1[13], "Value", 5, a3);
    if (v21)
    {
      (*(*a1[13] + 208))(a1[13], "TagName", 7, v19, v21);
    }

    if (a5)
    {
      (*(*a1[13] + 208))(a1[13], "Description", 11, a4, a5);
    }

    return (*(*v25 + 232))(v25);
  }

  return result;
}

uint64_t llvm::ELFAttributeParser::integerAttribute@<X0>(llvm::ELFAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 15);
  if (v6)
  {
    v7 = 24 * v6;
    v8 = "";
    v9 = *(this + 14);
    while (*v9 != a2)
    {
      v9 += 24;
      v7 -= 24;
      if (!v7)
      {
        v10 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = *(this + 14);
  }

  if (v9 == *(this + 14) + 24 * v6)
  {
    v10 = 0;
    v8 = "";
  }

  else
  {
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = 4;
    if (v12 < 4)
    {
      v13 = v12;
    }

    v8 = (v11 + v13);
    v10 = v12 - v13;
  }

LABEL_12:
  ULEB128 = llvm::DataExtractor::getULEB128((this + 128), this + 19, (this + 160));
  v15 = *(this + 4);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v15 <= a2)
    {
      v17 = a2 % v15;
    }
  }

  else
  {
    v17 = (v15 - 1) & a2;
  }

  v18 = *(*(this + 3) + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v20 = v19[1];
    if (v20 == a2)
    {
      break;
    }

    if (v16.u32[0] > 1uLL)
    {
      if (v20 >= v15)
      {
        v20 %= v15;
      }
    }

    else
    {
      v20 &= v15 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_29;
    }

LABEL_28:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  if (*(v19 + 4) != a2)
  {
    goto LABEL_28;
  }

  result = *(this + 13);
  if (result)
  {
    v22 = *(this + 13);
    (*(*result + 224))(result, "Attribute", 9);
    (*(**(this + 13) + 24))(*(this + 13), "Tag", 3, a2);
    if (v10)
    {
      (*(**(this + 13) + 208))(*(this + 13), "TagName", 7, v8, v10);
    }

    (*(**(this + 13) + 16))(*(this + 13), "Value", 5, ULEB128);
    result = (*(*v22 + 232))(v22);
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::ELFAttributeParser::stringAttribute@<X0>(llvm::ELFAttributeParser *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 15);
  if (v6)
  {
    v7 = 24 * v6;
    v8 = "";
    v9 = *(this + 14);
    while (*v9 != a2)
    {
      v9 += 24;
      v7 -= 24;
      if (!v7)
      {
        v10 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = *(this + 14);
  }

  if (v9 == *(this + 14) + 24 * v6)
  {
    v10 = 0;
    v8 = "";
  }

  else
  {
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = 4;
    if (v12 < 4)
    {
      v13 = v12;
    }

    v8 = (v11 + v13);
    v10 = v12 - v13;
  }

LABEL_12:
  CStrRef = llvm::DataExtractor::getCStrRef((this + 128), this + 19, (this + 160));
  v16 = v15;
  v19 = CStrRef;
  v20 = v15;
  v18 = a2;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__emplace_unique_key_args<unsigned int,unsigned int &,llvm::StringRef&>(this + 8, &v18);
  result = *(this + 13);
  if (result)
  {
    v19 = &unk_2883EA538;
    v20 = result;
    (*(*result + 224))(result, "Attribute", 9);
    (*(**(this + 13) + 24))(*(this + 13), "Tag", 3, a2);
    if (v10)
    {
      (*(**(this + 13) + 208))(*(this + 13), "TagName", 7, v8, v10);
    }

    (*(**(this + 13) + 208))(*(this + 13), "Value", 5, CStrRef, v16);
    v19 = &unk_2883EA538;
    result = v20;
    if (v20)
    {
      result = (*(*v20 + 232))(v20);
    }
  }

  *a3 = 0;
  return result;
}

void *llvm::ELFAttributeParser::parseAttributeList(void *this, unint64_t *a2, unsigned int a3)
{
  v3 = this;
  v5 = a2 + 19;
  v4 = a2[19];
  v6 = v4 + a3;
  v19 = v4;
  if (v4 >= v6)
  {
LABEL_10:
    *v3 = 0;
  }

  else
  {
    while (1)
    {
      ULEB128 = llvm::DataExtractor::getULEB128((a2 + 16), v5, (a2 + 20));
      v18 = ULEB128;
      v17 = 0;
      this = (**a2)(a2, ULEB128, &v17);
      if (*v3)
      {
        break;
      }

      if ((v17 & 1) == 0)
      {
        if (ULEB128 <= 0x1F)
        {
          v9 = std::generic_category();
          v11[0] = "invalid tag 0x";
          v11[2] = &v18;
          v12 = 3587;
          v13[0] = v11;
          v13[2] = " at offset 0x";
          v14 = 770;
          v15[0] = v13;
          v15[2] = &v19;
          v16 = 3586;
          llvm::Twine::str(v15, v20);
          if (v21 >= 0)
          {
            v10 = v20;
          }

          else
          {
            v10 = v20[0];
          }

          v23 = 22;
          v24 = v9;
          v22 = v10;
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }

        this = ((ULEB128 & 1) != 0 ? llvm::ELFAttributeParser::stringAttribute(a2, ULEB128, v3) : llvm::ELFAttributeParser::integerAttribute(a2, ULEB128, v3));
        if (*v3)
        {
          break;
        }
      }

      v19 = *v5;
      if (v19 >= v6)
      {
        goto LABEL_10;
      }
    }
  }

  return this;
}

void **llvm::ELFAttributeParser::parse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t *a5@<X8>)
{
  v99 = *MEMORY[0x277D85DE8];
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  v7 = (a1 + 128);
  *(a1 + 144) = a4 == 1;
  v8 = llvm::DataExtractor::getU<unsigned char>((a1 + 128), (a1 + 152), (a1 + 160));
  if (v8 != 65)
  {
    v10 = v8;
    v11 = std::generic_category();
    if (v10)
    {
      v12 = v10;
      v13 = (&v95 + 1);
      do
      {
        *(v13 - 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v12 & 0xF];
        v13 = (v13 - 1);
        v14 = v12 > 0xF;
        v12 >>= 4;
      }

      while (v14);
    }

    else
    {
      v13 = &v95;
      LOBYTE(v95) = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v13, &v95 + 1, &v95 + 1 - v13);
    v61 = std::string::insert(&__dst, 0, "unrecognized format-version: 0x");
    v62 = v61->__r_.__value_.__r.__words[2];
    *v78 = *&v61->__r_.__value_.__l.__data_;
    v79 = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    v96 = 260;
    v93 = v78;
    llvm::Twine::str(&v93, __p);
    if (SHIBYTE(v82) >= 0)
    {
      v63 = __p;
    }

    else
    {
      v63 = __p[0];
    }

    v85 = 22;
    v86 = v11;
    v89 = v63;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  if (*(a1 + 136) == *(a1 + 152))
  {
LABEL_3:
    v9 = v7[4];
LABEL_4:
    *a5 = v9;
    v7[4] = 0;
    goto LABEL_100;
  }

  v74 = 0;
  while (1)
  {
    v15 = llvm::DataExtractor::getU<unsigned int>(v7, v7 + 3, (v7 + 4));
    v9 = v7[4];
    if (v9)
    {
      goto LABEL_4;
    }

    v16 = v15;
    v17 = *(a1 + 104);
    if (v17)
    {
      v18 = (*(*v17 + 264))(v17);
      v19 = v18;
      v20 = *(v18 + 4);
      if (*(v18 + 3) - v20 > 7uLL)
      {
        *v20 = 0x206E6F6974636553;
        *(v18 + 4) += 8;
      }

      else
      {
        llvm::raw_ostream::write(v18, "Section ", 8uLL);
      }

      write_unsigned<unsigned long>(v19, ++v74, 0, 0, 0);
      v21 = *(v19 + 4);
      if ((*(v19 + 3) - v21) > 2)
      {
        *(v21 + 2) = 10;
        *v21 = 31520;
        *(v19 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v19, " {\n", 3uLL);
      }

      ++*(*(a1 + 104) + 16);
    }

    if (v16 <= 3)
    {
      v67 = v16;
      v22 = v7[3];
      goto LABEL_105;
    }

    v22 = v7[3];
    v23 = v22 + v16 - 4;
    if (v23 > a3)
    {
      v67 = v16;
LABEL_105:
      v68 = std::generic_category();
      v78[0] = "invalid section length ";
      v79 = v67;
      v80 = 2051;
      __p[0] = v78;
      v82 = " at offset 0x";
      v83 = 770;
      v69 = v22 - 4;
      if (v22 == 4)
      {
        v70 = &v95;
        LOBYTE(v95) = 48;
      }

      else
      {
        v70 = (&v95 + 1);
        do
        {
          *(v70 - 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v69 & 0xF];
          v70 = (v70 - 1);
          v14 = v69 > 0xF;
          v69 >>= 4;
        }

        while (v14);
      }

      std::string::__init_with_size[abi:nn200100]<char *,char *>(&v85, v70, &v95 + 1, &v95 + 1 - v70);
      v71 = v83;
      if (v83 == 1)
      {
        v93 = &v85;
        v95 = v84;
        v96 = 260;
        v97 = v77;
        v98 = WORD2(v77);
      }

      else if (v83)
      {
        if (HIBYTE(v83) != 1)
        {
          v71 = 2;
        }

        v72 = __p;
        if (HIBYTE(v83) == 1)
        {
          v72 = __p[0];
        }

        v93 = v72;
        v94 = __p[1];
        *&v95 = &v85;
        LOBYTE(v96) = v71;
        HIBYTE(v96) = 4;
      }

      else
      {
        v96 = 256;
      }

      llvm::Twine::str(&v93, &__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      v89 = 22;
      v90 = v68;
      v88 = p_dst;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    CStrRef = llvm::DataExtractor::getCStrRef(v7, v7 + 3, (v7 + 4));
    *&v84 = CStrRef;
    *(&v84 + 1) = v24;
    v26 = *(a1 + 104);
    if (v26)
    {
      v27 = v24;
      (*(*v26 + 24))(v26, "SectionLength", 13, v16);
      (*(**(a1 + 104) + 208))(*(a1 + 104), "Vendor", 6, CStrRef, v27);
    }

    llvm::StringRef::lower(&v84, &v93);
    v28 = SBYTE7(v95);
    v29 = v93;
    v30 = (SBYTE7(v95) & 0x80u) == 0 ? &v93 : v93;
    v31 = (SBYTE7(v95) & 0x80u) == 0 ? SBYTE7(v95) : v94;
    if (v31 == *(a1 + 16))
    {
      if (v31)
      {
        v32 = memcmp(v30, *(a1 + 8), v31) != 0;
        if (v28 < 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v32 = 0;
        if (SBYTE7(v95) < 0)
        {
LABEL_32:
          operator delete(v29);
          if (!v32)
          {
            goto LABEL_33;
          }

LABEL_68:
          v49 = std::generic_category();
          v96 = 1283;
          v93 = "unrecognized vendor-name: ";
          v95 = v84;
          llvm::Twine::str(&v93, __p);
          v50 = __p;
          if (SHIBYTE(v82) < 0)
          {
            v50 = __p[0];
          }

          v78[0] = 22;
          v78[1] = v49;
          __dst.__r_.__value_.__r.__words[0] = v50;
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }
      }
    }

    else
    {
      v32 = 1;
      if (SBYTE7(v95) < 0)
      {
        goto LABEL_32;
      }
    }

    if (v32)
    {
      goto LABEL_68;
    }

    while (1)
    {
LABEL_33:
      if (v7[3] >= v23)
      {
        *a5 = 0;
        goto LABEL_74;
      }

      v33 = llvm::DataExtractor::getU<unsigned char>(v7, v7 + 3, (v7 + 4));
      v34 = llvm::DataExtractor::getU<unsigned int>(v7, v7 + 3, (v7 + 4));
      v9 = v7[4];
      if (v9)
      {
        goto LABEL_4;
      }

      v35 = v34;
      v36 = *(a1 + 104);
      if (v36)
      {
        v37 = &tagNames;
        v38 = 120;
        while (*(v37 + 8) != v33)
        {
          v37 += 5;
          v38 -= 40;
          if (!v38)
          {
            (*(*v36 + 312))(v36, "Tag", 3, v33);
            goto LABEL_41;
          }
        }

        (*(*v36 + 320))(v36, "Tag", 3, *v37, v37[1], v33);
LABEL_41:
        (*(**(a1 + 104) + 24))(*(a1 + 104), "Size", 4, v35);
      }

      if (v35 <= 4)
      {
        v57 = std::generic_category();
        v78[0] = "invalid attribute size ";
        v79 = v35;
        v80 = 2051;
        __p[0] = v78;
        v82 = " at offset 0x";
        v83 = 770;
        v88 = v7[3] - 5;
        v93 = __p;
        *&v95 = &v88;
        v96 = 3586;
        llvm::Twine::str(&v93, &__dst);
        v58 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v58 = __dst.__r_.__value_.__r.__words[0];
        }

        v85 = 22;
        v86 = v57;
        v89 = v58;
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
      }

      __dst.__r_.__value_.__r.__words[0] = &v92;
      *&__dst.__r_.__value_.__r.__words[1] = xmmword_2750C12B0;
      if (v33 == 1)
      {
        v39 = 0;
        v40 = 0;
        v41 = 14;
        v42 = "FileAttributes";
      }

      else
      {
        if (v33 == 2)
        {
          v39 = 8;
          v40 = "Sections";
          v41 = 17;
          v42 = "SectionAttributes";
        }

        else
        {
          if (v33 != 3)
          {
            v59 = std::generic_category();
            v77 = v33;
            v78[0] = "unrecognized tag 0x";
            v79 = &v77;
            v80 = 3587;
            __p[0] = v78;
            v82 = " at offset 0x";
            v83 = 770;
            v76 = v7[3] - 5;
            v93 = __p;
            *&v95 = &v76;
            v96 = 3586;
            llvm::Twine::str(&v93, &v85);
            v60 = &v85;
            if (v87 < 0)
            {
              v60 = v85;
            }

            v89 = 22;
            v90 = v59;
            v88 = v60;
            llvm::make_error<llvm::StringError,char const*&,std::error_code>();
          }

          v39 = 7;
          v40 = "Symbols";
          v41 = 16;
          v42 = "SymbolAttributes";
        }

        ULEB128 = llvm::DataExtractor::getULEB128(v7, v7 + 3, (v7 + 4));
        if (!v7[4])
        {
          v44 = ULEB128;
          if (ULEB128)
          {
            do
            {
              llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, v44);
              v45 = llvm::DataExtractor::getULEB128(v7, v7 + 3, (v7 + 4));
              v44 = v45;
              if (v7[4])
              {
                v46 = 1;
              }

              else
              {
                v46 = v45 == 0;
              }
            }

            while (!v46);
          }
        }
      }

      v47 = *(a1 + 104);
      if (v47)
      {
        break;
      }

      llvm::ELFAttributeParser::parseAttributeList(a5, a1, v35 - 5);
      if (*a5)
      {
        goto LABEL_93;
      }

LABEL_64:
      if (__dst.__r_.__value_.__l.__data_ != &v92)
      {
        free(__dst.__r_.__value_.__l.__data_);
      }
    }

    v93 = &unk_2883EA538;
    v94 = v47;
    (*(*v47 + 224))(v47, v42, v41);
    if (__dst.__r_.__value_.__l.__size_)
    {
      (*(**(a1 + 104) + 152))(*(a1 + 104), v40, v39, __dst.__r_.__value_.__r.__words[0]);
    }

    llvm::ELFAttributeParser::parseAttributeList(a5, a1, v35 - 5);
    v48 = *a5;
    v93 = &unk_2883EA538;
    if (!v48)
    {
      if (v94)
      {
        (*(*v94 + 232))();
      }

      goto LABEL_64;
    }

    if (v94)
    {
      (*(*v94 + 232))();
    }

LABEL_93:
    if (__dst.__r_.__value_.__l.__data_ != &v92)
    {
      free(__dst.__r_.__value_.__l.__data_);
    }

    if (*a5)
    {
      break;
    }

LABEL_74:
    v51 = *(a1 + 104);
    if (v51)
    {
      v52 = v51[4];
      v53 = __OFSUB__(v52, 1);
      v54 = v52 - 1;
      if ((v54 < 0) ^ v53 | (v54 == 0))
      {
        v54 = 0;
      }

      v51[4] = v54;
      v55 = (*(*v51 + 264))(v51);
      v56 = *(v55 + 4);
      if (*(v55 + 3) - v56 > 1uLL)
      {
        *v56 = 2685;
        *(v55 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v55, "}\n", 2uLL);
      }
    }

    if (*(a1 + 136) == *(a1 + 152))
    {
      goto LABEL_3;
    }
  }

LABEL_100:
  v64 = v7[4];
  v7[4] = 0;
  v93 = v64;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v93);
  result = v93;
  if (v93)
  {
    result = (*(*v93 + 1))(v93);
  }

  v66 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void llvm::logAllUnhandledErrors(uint64_t **a1, llvm::raw_ostream *a2, llvm::Twine *a3)
{
  if (*a1)
  {
    llvm::Twine::print(a3, a2);
    v5 = *a1;
    *a1 = 0;
    v15 = a2;
    if (v5)
    {
      if ((*(*v5 + 48))(v5, &llvm::ErrorList::ID))
      {
        v8 = v5[1];
        v9 = v5[2];
        if (v8 == v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            v19 = v10;
            v11 = *v8;
            *v8 = 0;
            v17 = v11;
            llvm::handleErrorImpl<llvm::logAllUnhandledErrors(llvm::Error,llvm::raw_ostream &,llvm::Twine)::$_0>(&v18, &v17, &v15);
            llvm::ErrorList::join(&v19, &v18, &v20);
            v10 = v20;
            v20 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }

            v12 = v17;
            v17 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            ++v8;
          }

          while (v8 != v9);
        }

        v16 = v10;
        (*(*v5 + 8))(v5, v6, v7);
      }

      else
      {
        v20 = v5;
        llvm::handleErrorImpl<llvm::logAllUnhandledErrors(llvm::Error,llvm::raw_ostream &,llvm::Twine)::$_0>(&v16, &v20, &v15);
        if (v20)
        {
          (*(*v20 + 8))(v20, v13, v14);
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }
}

void llvm::Error::~Error(llvm::Error *this)
{
  v1 = *this;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void getErrorErrorCat(void)
{
  {
  }
}

uint64_t llvm::FileError::convertToErrorCode(llvm::FileError *this)
{
  v1 = (*(**(this + 6) + 32))(*(this + 6));
  v3 = v2;
  getErrorErrorCat();
  if (v3 == &getErrorErrorCat(void)::ErrorErrorCat && v1 == 3)
  {
    getErrorErrorCat();
    return 2;
  }

  return v1;
}

uint64_t llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::errorToErrorCode(uint64_t **a1)
{
  v15.__val_ = 0;
  v15.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  v14 = &v15;
  if (!v2)
  {
    v16 = 0;
    goto LABEL_19;
  }

  if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
  {
    v3 = v2[1];
    v4 = v2[2];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v11.__r_.__value_.__r.__words[0] = v5;
        v6 = *v3;
        *v3 = 0;
        v17 = v6;
        llvm::handleErrorImpl<llvm::errorToErrorCode(llvm::Error)::$_0>(&v18, &v17, &v14);
        llvm::ErrorList::join(&v11, &v18, v12);
        v5 = v12[0];
        v12[0] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        v7 = v17;
        v17 = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        if (v11.__r_.__value_.__r.__words[0])
        {
          (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
        }

        ++v3;
      }

      while (v3 != v4);
    }

    v16 = v5;
    v8 = *(*v2 + 8);
  }

  else
  {
    v12[0] = v2;
    llvm::handleErrorImpl<llvm::errorToErrorCode(llvm::Error)::$_0>(&v16, v12, &v14);
    if (!v12[0])
    {
      goto LABEL_19;
    }

    v8 = *(*v12[0] + 8);
  }

  v8();
LABEL_19:
  getErrorErrorCat();
  if (v15.__cat_ == &getErrorErrorCat(void)::ErrorErrorCat && v15.__val_ == 3)
  {
    std::error_code::message(&v11, &v15);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v15.__val_;
}

void llvm::StringError::log(const std::error_code *this, llvm::raw_ostream *a2)
{
  if (LOBYTE(this[3].__val_) == 1)
  {
    cat_high = SHIBYTE(this[1].__cat_);
    if (cat_high >= 0)
    {
      p_cat = &this->__cat_;
    }

    else
    {
      p_cat = this->__cat_;
    }

    if (cat_high >= 0)
    {
      v6 = HIBYTE(this[1].__cat_);
    }

    else
    {
      v6 = *&this[1].__val_;
    }

    llvm::raw_ostream::write(a2, p_cat, v6);
  }

  else
  {
    std::error_code::message(&v12, this + 2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(a2, v7, size);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v9 = SHIBYTE(this[1].__cat_);
    if (v9 < 0)
    {
      v9 = *&this[1].__val_;
    }

    if (v9)
    {
      std::operator+<char>();
      v10 = (v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v12 : v12.__r_.__value_.__r.__words[0];
      v11 = (v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v12.__r_.__value_.__r.__words[2]) : v12.__r_.__value_.__l.__size_;
      llvm::raw_ostream::write(a2, v10, v11);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }
}

void llvm::report_fatal_error(uint64_t **a1)
{
  memset(v6, 0, sizeof(v6));
  llvm::raw_string_ostream::raw_string_ostream(v4, v6);
  v3 = *a1;
  *a1 = 0;
  v2[16] = 257;
  llvm::logAllUnhandledErrors(&v3, v4, v2);
  llvm::Error::~Error(&v3);
  llvm::raw_string_ostream::~raw_string_ostream(v4);
  v5 = 260;
  v4[0] = v6;
  llvm::report_fatal_error(v4, 1);
}

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2883EB8F0;
  *(a1 + 64) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

void LLVMGetErrorMessage(uint64_t a1)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v17 = a1;
  v18 = v20;
  v19 = 0x200000000;
  __src.__r_.__value_.__r.__words[0] = &v18;
  llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v17, &__src);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v1 = v18;
  v2 = v19;
  memset(&__src, 0, sizeof(__src));
  if (v19)
  {
    v3 = 24 * v19;
    v4 = v19 - 1;
    v5 = v18 + 23;
    v6 = v3;
    do
    {
      v7 = *v5;
      if (v7 < 0)
      {
        v7 = *(v5 - 15);
      }

      v4 += v7;
      v5 += 24;
      v6 -= 24;
    }

    while (v6);
    std::string::reserve(&__src, v4);
    v8 = v1[23];
    if (v8 >= 0)
    {
      v9 = v1;
    }

    else
    {
      v9 = *v1;
    }

    if (v8 >= 0)
    {
      v10 = *(v1 + 23);
    }

    else
    {
      v10 = *(v1 + 1);
    }

    std::string::append(&__src, v9, v10);
    if (v2 != 1)
    {
      v11 = v1 + 24;
      v12 = v3 - 24;
      do
      {
        std::string::append(&__src, "\n", 1uLL);
        v13 = v11[23];
        if (v13 >= 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = *v11;
        }

        if (v13 >= 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = *(v11 + 1);
        }

        std::string::append(&__src, v14, v15);
        v11 += 24;
        v12 -= 24;
      }

      while (v12);
    }
  }

  llvm::SmallVector<std::string,2u>::~SmallVector(&v18);
  operator new[]();
}

uint64_t LLVMDisposeErrorMessage(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x277C69E10);
  }

  return result;
}

void llvm::ErrorList::~ErrorList(llvm::ErrorList *this)
{
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

{
  v1 = (this + 8);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x277C69E40);
}

llvm::raw_ostream *llvm::ErrorList::log(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 4) += 17;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "Multiple errors:\n", 0x11uLL);
  }

  v5 = *(v3 + 8);
  for (i = *(v3 + 16); v5 != i; ++v5)
  {
    this = (*(**v5 + 16))(*v5, a2);
    v7 = *(a2 + 4);
    if (*(a2 + 3) == v7)
    {
      this = llvm::raw_ostream::write(a2, "\n", 1uLL);
    }

    else
    {
      *v7 = 10;
      ++*(a2 + 4);
    }
  }

  return this;
}

void llvm::ECError::log(llvm::ECError *this, llvm::raw_ostream *a2)
{
  std::error_code::message(&v5, (this + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void llvm::FileError::~FileError(llvm::FileError *this)
{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::FileError::log(llvm::FileError *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    llvm::raw_ostream::write(a2, "'", 1uLL);
  }

  else
  {
    *v4 = 39;
    ++*(a2 + 4);
  }

  v5 = *(this + 31);
  if (v5 >= 0)
  {
    v6 = this + 8;
  }

  else
  {
    v6 = *(this + 1);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 31);
  }

  else
  {
    v7 = *(this + 2);
  }

  llvm::raw_ostream::write(a2, v6, v7);
  v8 = *(a2 + 4);
  if ((*(a2 + 3) - v8) > 2)
  {
    *(v8 + 2) = 32;
    *v8 = 14887;
    *(a2 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(a2, "': ", 3uLL);
  }

  if (*(this + 40) == 1)
  {
    v9 = *(a2 + 4);
    if ((*(a2 + 3) - v9) > 4)
    {
      *(v9 + 4) = 32;
      *v9 = 1701734764;
      *(a2 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(a2, "line ", 5uLL);
    }

    write_unsigned<unsigned long>(a2, *(this + 4), 0, 0, 0);
    v10 = *(a2 + 4);
    if (*(a2 + 3) - v10 > 1uLL)
    {
      *v10 = 8250;
      *(a2 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a2, ": ", 2uLL);
    }
  }

  v11 = *(**(this + 6) + 16);

  return v11();
}

void llvm::StringError::~StringError(void **this)
{
  *this = &unk_2883EADC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883EADC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::ErrorErrorCategory::~ErrorErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

void std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::handleErrorImpl<llvm::logAllUnhandledErrors(llvm::Error,llvm::raw_ostream &,llvm::Twine)::$_0>(void *a1, void *a2, llvm::raw_ostream **a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    (*(*v7 + 16))(v7, *a3);
    v8 = *a3;
    v9 = *(*a3 + 4);
    if (*(*a3 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, "\n", 1uLL);
    }

    else
    {
      *v9 = 10;
      ++*(v8 + 4);
    }

    *a1 = 0;
    v10 = *(*v7 + 8);

    return v10(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t llvm::handleErrorImpl<llvm::errorToErrorCode(llvm::Error)::$_0>(void *a1, void *a2, uint64_t **a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = (*(*v7 + 32))(v7);
    v9 = *a3;
    *v9 = v8;
    v9[1] = v10;
    result = (*(*v7 + 8))(v7);
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

void llvm::report_fatal_error(llvm *this, const llvm::Twine *a2)
{
  v2 = 1;
  v5 = 1;
  if (*this)
  {
    v3 = this;
    v2 = 3;
  }

  v4 = v2;
  llvm::report_fatal_error(&v3, a2);
}

{
  v2 = a2;
  std::mutex::lock(&ErrorHandlerMutex);
  std::mutex::unlock(&ErrorHandlerMutex);
  v13 = &v14;
  v14 = v16;
  v15 = xmmword_2750C1860;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2883EB968;
  llvm::raw_ostream::SetUnbuffered(&v5);
  v4 = v9;
  if ((v8 - v9) > 0xB)
  {
    *(v9 + 2) = 540693071;
    *v4 = *"LLVM ERROR: ";
    v9 += 12;
  }

  else
  {
    llvm::raw_ostream::write(&v5, "LLVM ERROR: ", 0xCuLL);
  }

  llvm::Twine::print(this, &v5);
  if (v8 == v9)
  {
    llvm::raw_ostream::write(&v5, "\n", 1uLL);
  }

  else
  {
    *v9++ = 10;
  }

  write(2, *v13, v13[1]);
  llvm::raw_ostream::~raw_ostream(&v5);
  if (v14 != v16)
  {
    free(v14);
  }

  RemoveFilesToRemove();
  if (v2)
  {
    abort();
  }

  exit(1);
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&BadAllocErrorHandlerMutex);
  std::mutex::unlock(&BadAllocErrorHandlerMutex);
  write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
  v3 = strlen(this);
  write(2, this, v3);
  write(2, "\n", 1uLL);
  abort();
}

uint64_t _GLOBAL__sub_I_ErrorHandling_cpp()
{
  v0 = MEMORY[0x277D82690];
  __cxa_atexit(MEMORY[0x277D82690], &ErrorHandlerMutex, &dword_274E5C000);

  return __cxa_atexit(v0, &BadAllocErrorHandlerMutex, &dword_274E5C000);
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *this, int a2)
{
  v2 = a2;
  v4 = *(this + 4);
  if (v4 < *(this + 3))
  {
    *(this + 4) = v4 + 1;
    *v4 = 40;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = *(this + 4);
    if ((*(this + 3) - v14) > 4)
    {
      *(v14 + 4) = 41;
      *v14 = 1701736302;
      *(this + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(this, "none)", 5uLL);
    }

    return this;
  }

  llvm::raw_ostream::write(this, 40);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v5 = 1;
  v6 = &off_279EFA2D0;
  v7 = 384;
  do
  {
    v8 = *(v6 - 2);
    if ((v8 & ~v2) == 0)
    {
      v10 = *v6;
      v9 = v6[1];
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = " ";
      }

      v12 = llvm::raw_ostream::operator<<(this, v11, (v5 & 1) == 0);
      llvm::raw_ostream::operator<<(v12, v10, v9);
      v5 = 0;
      v2 &= ~v8 & 0x3FF;
    }

    v6 += 3;
    v7 -= 24;
  }

  while (v7);
  v13 = *(this + 4);
  if (v13 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 41);
  }

  else
  {
    *(this + 4) = v13 + 1;
    *v13 = 41;
  }

  return this;
}

unsigned int *llvm::FoldingSetNodeID::AddString(unsigned int *a1, _BYTE *a2, unsigned int a3)
{
  v6 = a1[2] + ((a3 + 3) >> 2) + 1;
  if (v6 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v6, 4);
  }

  result = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, a3);
  if (a3)
  {
    if ((a2 & 3) != 0)
    {
      for (i = 4; i <= a3; i += 4)
      {
        result = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, (a2[i - 1] << 24) | (a2[i - 2] << 16) | (a2[i - 3] << 8) | a2[i - 4]);
      }
    }

    else
    {
      result = llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(a1, a2, &a2[a3 & 0xFFFFFFFC]);
      i = (a3 & 0xFFFFFFFC) + 4;
    }

    v9 = 0;
    v10 = i - a3;
    if (i - a3 != 3)
    {
      if (v10 != 2)
      {
        if (v10 != 1)
        {
          return result;
        }

        v9 = a2[a3 - 3] << 8;
      }

      v9 = (v9 | a2[a3 - 2]) << 8;
    }

    v11 = v9 | a2[a3 - 1];

    return llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, v11);
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = result[2];
  v8 = v7 + ((a3 - __src) >> 2);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 4);
    LODWORD(v7) = v5[2];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + 4 * v7), __src, v6);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + (v6 >> 2);
  return result;
}

void llvm::FoldingSetBase::GrowBucketCount(uint64_t a1, int a2, uint64_t a3)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a2 + 1;
  v9 = malloc_type_calloc((a2 + 1), 8uLL, 0x17B874E6uLL);
  if (!v9 && (v8 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v9[a2] = -1;
  *a1 = v9;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  v18 = v20;
  v19 = 0x2000000000;
  if (!v7)
  {
    goto LABEL_17;
  }

  for (i = 0; i != v7; ++i)
  {
    v11 = v6[i];
    if (v11)
    {
      v12 = (v6[i] & 1) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      do
      {
        v13 = *v11;
        *v11 = 0;
        v14 = (*(a3 + 16))(a1, v11, &v18);
        llvm::FoldingSetBase::InsertNode(a1, v11, *a1 + 8 * ((*(a1 + 8) - 1) & v14), a3);
        LODWORD(v19) = 0;
        if (v13)
        {
          v15 = (v13 & 1) == 0;
        }

        else
        {
          v15 = 0;
        }

        v11 = v13;
      }

      while (v15);
    }
  }

  v16 = v18;
  free(v6);
  v6 = v16;
  if (v16 != v20)
  {
LABEL_17:
    free(v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void llvm::FoldingSetBase::InsertNode(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = *(a1 + 12) + 1;
  if (v8 > 2 * v7)
  {
    llvm::FoldingSetBase::GrowBucketCount(a1, 2 * v7, a4);
    v12[0] = v13;
    v12[1] = 0x2000000000;
    a3 = *a1 + 8 * ((*(a1 + 8) - 1) & (*(a4 + 16))(a1, a2, v12));
    if (v12[0] != v13)
    {
      free(v12[0]);
    }

    v8 = *(a1 + 12) + 1;
  }

  *(a1 + 12) = v8;
  v10 = *a3;
  if (!*a3)
  {
    v10 = a3 | 1;
  }

  *a2 = v10;
  *a3 = a2;
  v11 = *MEMORY[0x277D85DE8];
}

void *llvm::FoldingSetBase::FindNodeOrInsertPos(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + 4 * *(a2 + 8), a3, a4);
  v9 = (*a1 + 8 * ((*(a1 + 8) - 1) & v8));
  v10 = *v9;
  *a3 = 0;
  v14 = v16;
  v15 = 0x2000000000;
  while (v10 && (v10 & 1) == 0)
  {
    if ((*(a4 + 8))(a1, v10, a2, v8, &v14))
    {
      goto LABEL_9;
    }

    LODWORD(v15) = 0;
    v10 = *v10;
  }

  v10 = 0;
  *a3 = v9;
LABEL_9:
  if (v14 != v16)
  {
    free(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::formatted_raw_ostream::UpdatePosition(uint64_t this, char *__src, uint64_t a3)
{
  v3 = __src;
  v4 = this;
  v5 = *(this + 96);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = (llvm::trailingBytesForUTF8[**(this + 88)] + 1) - v5;
  v7 = a3 - v6;
  if (a3 < v6)
  {
    v8 = (this + 88);
    v9 = &__src[a3];
    goto LABEL_31;
  }

  v10 = &__src[v6];
  llvm::SmallVectorImpl<char>::append<char const*,void>((this + 88), __src, &__src[v6]);
  v11 = *(v4 + 88);
  v12 = *(v4 + 96);
  this = llvm::sys::unicode::columnWidthUTF8(v11, v12);
  if (this != -1)
  {
    *(v4 + 72) += this;
  }

  if (v12 <= 1)
  {
    v13 = *v11;
    switch(v13)
    {
      case 9:
        v14 = (-*(v4 + 72) & 7) + *(v4 + 72);
        goto LABEL_13;
      case 13:
        v14 = 0;
        goto LABEL_13;
      case 10:
        v14 = 0;
        ++*(v4 + 76);
LABEL_13:
        *(v4 + 72) = v14;
        break;
    }
  }

  *(v4 + 96) = 0;
  a3 = v7;
  v3 = v10;
LABEL_15:
  if (a3 < 1)
  {
    return this;
  }

  v15 = &v3[a3];
  while (1)
  {
    v16 = (llvm::trailingBytesForUTF8[*v3] + 1);
    if (v16 > v15 - v3)
    {
      break;
    }

    this = llvm::sys::unicode::columnWidthUTF8(v3, (llvm::trailingBytesForUTF8[*v3] + 1));
    if (this != -1)
    {
      *(v4 + 72) += this;
    }

    if (v16 > 1)
    {
      goto LABEL_28;
    }

    v17 = *v3;
    switch(v17)
    {
      case 9:
        v18 = (-*(v4 + 72) & 7) + *(v4 + 72);
        goto LABEL_27;
      case 13:
        v18 = 0;
        goto LABEL_27;
      case 10:
        v18 = 0;
        ++*(v4 + 76);
LABEL_27:
        *(v4 + 72) = v18;
        break;
    }

LABEL_28:
    v3 += v16;
    if (v3 >= v15)
    {
      return this;
    }
  }

  *(v4 + 96) = 0;
  v8 = (v4 + 88);
  v9 = v15;
LABEL_31:

  return llvm::SmallVectorImpl<char>::append<char const*,void>(v8, v3, v9);
}

uint64_t llvm::formatted_raw_ostream::ComputePosition(llvm::formatted_raw_ostream *this, char *a2, uint64_t a3)
{
  v5 = *(this + 10);
  v6 = &a2[a3];
  if (v5 < a2 || v5 > v6)
  {
    v5 = a2;
  }

  else
  {
    a3 = v6 - v5;
  }

  result = llvm::formatted_raw_ostream::UpdatePosition(this, v5, a3);
  *(this + 10) = v6;
  return result;
}

llvm::raw_ostream *llvm::formatted_raw_ostream::PadToColumn(char **this, int a2)
{
  llvm::formatted_raw_ostream::ComputePosition(this, this[2], this[4] - this[2]);
  llvm::formatted_raw_ostream::ComputePosition(this, this[2], this[4] - this[2]);
  v4 = a2 - *(this + 18);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return llvm::raw_ostream::indent(this, v5);
}

llvm::raw_ostream *llvm::formatted_raw_ostream::write_impl(llvm::raw_ostream **this, char *a2, size_t a3)
{
  llvm::formatted_raw_ostream::ComputePosition(this, a2, a3);
  result = llvm::raw_ostream::write(this[8], a2, a3);
  this[10] = 0;
  return result;
}

void llvm::formatted_raw_ostream::~formatted_raw_ostream(llvm::formatted_raw_ostream *this)
{
  llvm::formatted_raw_ostream::~formatted_raw_ostream(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EAF50;
  v2 = *(this + 4);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    *(this + 4) = v3;
    llvm::raw_ostream::flush_tied_then_write(this, v3, v2 - v3);
  }

  llvm::formatted_raw_ostream::releaseStream(this);
  v4 = *(this + 11);
  if (v4 != this + 112)
  {
    free(v4);
  }

  llvm::raw_ostream::~raw_ostream(this);
}

void *llvm::formatted_raw_ostream::setStream(llvm::formatted_raw_ostream *this, llvm::raw_ostream *a2)
{
  llvm::formatted_raw_ostream::releaseStream(this);
  *(this + 8) = a2;
  v4 = *(a2 + 2);
  if (*(a2 + 14))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = (*(*a2 + 88))(a2);
  }

  else
  {
    v6 = *(a2 + 3) - v4;
  }

  if (v6)
  {
    llvm::raw_ostream::SetBufferSize(this);
  }

  llvm::raw_ostream::SetUnbuffered(this);
  result = llvm::raw_ostream::SetUnbuffered(*(this + 8));
  *(this + 10) = 0;
  return result;
}

llvm::raw_ostream *llvm::formatted_raw_ostream::releaseStream(llvm::formatted_raw_ostream *this)
{
  result = *(this + 8);
  if (result)
  {
    v3 = *(this + 2);
    if (*(this + 14))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v5 = (*(*this + 88))(this);
      result = *(this + 8);
      if (v5)
      {
LABEL_7:

        llvm::raw_ostream::SetBufferSize(result);
      }
    }

    else if (*(this + 3) != v3)
    {
      goto LABEL_7;
    }

    return llvm::raw_ostream::SetUnbuffered(result);
  }

  return result;
}

void llvm::raw_ostream::SetBufferSize(llvm::raw_ostream *this)
{
  v1 = *(this + 4);
  v2 = *(this + 2);
  if (v1 != v2)
  {
    *(this + 4) = v2;
    llvm::raw_ostream::flush_tied_then_write(this, v2, v1 - v2);
  }

  operator new[]();
}

_BYTE *llvm::formatv_object_base::splitLiteralAndReplacement@<X0>(_BYTE *result@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v45 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    *(v44 + 3) = 0uLL;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *a3 = 2;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 8) = result;
    *(a3 + 16) = 0;
    goto LABEL_8;
  }

  if (*result != 123)
  {
    result = memchr(result, 123, a2);
    v9 = result - v3;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    if (!result)
    {
      v9 = -1;
    }

    *(&v44[1] + 3) = 0;
    if (a2 < v9)
    {
      v9 = a2;
    }

    goto LABEL_13;
  }

  v6 = 1;
  while (a2 != v6)
  {
    v7 = result[v6++];
    if (v7 != 123)
    {
      v8 = v6 - 1;
      goto LABEL_15;
    }
  }

  v8 = -1;
LABEL_15:
  if (a2 < v8)
  {
    v8 = a2;
  }

  if (v8 < 2)
  {
    result = memchr(result, 125, a2);
    if (result)
    {
      v12 = result;
      v13 = (result - v3);
      if (result - v3 != -1)
      {
        if (a2 != 1)
        {
          result = memchr(v3 + 1, 123, a2 - 1);
          v9 = result - v3;
          if (!result)
          {
            v9 = -1;
          }

          if (v9 < v13)
          {
            if (a2 < v9)
            {
              v9 = a2;
            }

            *(a3 + 24) = 0;
            *(a3 + 32) = 0;
            *(&v44[1] + 3) = 0;
LABEL_13:
            *(v44 + 3) = 0;
            *a3 = 2;
            *(a3 + 8) = v3;
            *(a3 + 16) = v9;
            *(a3 + 40) = 2;
            *(a3 + 44) = 0;
            *(a3 + 45) = *v44;
            *(a3 + 60) = *(&v44[1] + 7);
            *(a3 + 64) = &v3[v9];
            *(a3 + 72) = a2 - v9;
            goto LABEL_65;
          }
        }

        if (v12 == v3)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        if (v14 >= a2)
        {
          v14 = a2;
        }

        v15 = v14 - 1;
        if (a2 >= (v13 + 1))
        {
          v16 = (v13 + 1);
        }

        else
        {
          v16 = a2;
        }

        v17 = &v3[v16];
        v18 = a2 - v16;
        v44[0] = (v3 + 1);
        v44[1] = v15;
        v42 = llvm::StringRef::trim(v44, "{}", 2);
        v43 = v19;
        v42 = llvm::StringRef::trim(&v42, " \t\n\v\f\r", 6);
        v43 = v20;
        v41[0] = 0;
        result = llvm::consumeUnsignedInteger(&v42, 0, v41, v21);
        if (result)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          LOWORD(v41[0]) = 0;
          BYTE2(v41[0]) = 0;
          v28 = 0uLL;
          v29 = 2;
LABEL_64:
          *a3 = v24;
          *(a3 + 4) = 0;
          *(a3 + 8) = v28;
          *(a3 + 24) = v22;
          *(a3 + 32) = v23;
          *(a3 + 40) = v29;
          *(a3 + 44) = v27;
          *(a3 + 45) = v41[0];
          *(a3 + 47) = BYTE2(v41[0]);
          *(a3 + 48) = v26;
          *(a3 + 56) = v25;
          *(a3 + 64) = v17;
          *(a3 + 72) = v18;
          goto LABEL_65;
        }

        v22 = v41[0];
        v30 = llvm::StringRef::trim(&v42, " \t\n\v\f\r", 6);
        v42 = v30;
        v43 = v31;
        if (v31 && *v30 == 44)
        {
          v27 = 32;
          v29 = 2;
          v42 = v30 + 1;
          v43 = v31 - 1;
          if (v31 != 1)
          {
            if (v31 == 2)
            {
              goto LABEL_56;
            }

            v33 = (v30 + 2);
            v34 = v30[2];
            if (v34 != 43)
            {
              if (v34 == 45)
              {
                v29 = 0;
              }

              else
              {
                if (v34 != 61)
                {
                  v40 = v30[1];
                  if (v40 != 43)
                  {
                    if (v40 == 45)
                    {
                      v29 = 0;
                    }

                    else
                    {
                      if (v40 != 61)
                      {
LABEL_56:
                        v41[0] = 0;
                        if (llvm::consumeUnsignedInteger(&v42, 0, v41, v32))
                        {
                          v23 = 0;
                        }

                        else
                        {
                          v23 = v41[0];
                        }

                        goto LABEL_59;
                      }

                      v29 = 1;
                    }
                  }

                  v35 = -2;
LABEL_55:
                  v42 = v33;
                  v43 = v35 + v31;
                  goto LABEL_56;
                }

                v29 = 1;
              }
            }

            v27 = v30[1];
            v33 = (v30 + 3);
            v35 = -3;
            goto LABEL_55;
          }

          v23 = 0;
        }

        else
        {
          v23 = 0;
          v27 = 32;
          v29 = 2;
        }

LABEL_59:
        v36 = llvm::StringRef::trim(&v42, " \t\n\v\f\r", 6);
        v42 = v36;
        v43 = v37;
        if (v37 && *v36 == 58)
        {
          v41[0] = (v36 + 1);
          v41[1] = v37 - 1;
          v26 = llvm::StringRef::trim(v41, " \t\n\v\f\r", 6);
          v25 = v38;
          v42 = 0;
          v43 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        result = llvm::StringRef::trim(&v42, " \t\n\v\f\r", 6);
        v24 = 1;
        v28 = *v44;
        goto LABEL_64;
      }
    }

    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(&v44[1] + 3) = 0;
    *(v44 + 3) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *a3 = 2;
    *(a3 + 8) = v3;
    *(a3 + 16) = a2;
LABEL_8:
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 45) = *v44;
    *(a3 + 60) = *(&v44[1] + 7);
    goto LABEL_65;
  }

  v10 = v8 >> 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(&v44[1] + 3) = 0;
  if (a2 < v8 >> 1)
  {
    v10 = a2;
  }

  v11 = v8 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 < v11)
  {
    v11 = a2;
  }

  *(v44 + 3) = 0;
  *a3 = 2;
  *(a3 + 8) = result;
  *(a3 + 16) = v10;
  *(a3 + 40) = 2;
  *(a3 + 44) = 0;
  *(a3 + 45) = *v44;
  *(a3 + 60) = 0;
  *(a3 + 64) = &result[v11];
  *(a3 + 72) = a2 - v11;
LABEL_65:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 llvm::formatv_object_base::parseFormatString@<Q0>(_BYTE *a1@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a3 + 2;
  a3[1] = 0x200000000;
  *v16 = 0;
  result.n128_u64[0] = 0;
  memset(&v16[8], 0, 32);
  *&v16[40] = 2;
  v16[44] = 0;
  v17 = 0uLL;
  if (a2)
  {
    v5 = a2;
    do
    {
      llvm::formatv_object_base::splitLiteralAndReplacement(a1, v5, v11);
      *v16 = v11[0];
      *&v16[16] = v11[1];
      result.n128_u64[0] = v12;
      *&v16[32] = v12;
      v17 = v13;
      a1 = v14;
      v5 = v15;
      if (LODWORD(v11[0]))
      {
        v7 = llvm::SmallVectorTemplateCommon<llvm::ReplacementItem,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>>(a3, v16, 1);
        v8 = *a3 + (*(a3 + 2) << 6);
        result = *v7;
        v9 = *(v7 + 16);
        v10 = *(v7 + 48);
        *(v8 + 32) = *(v7 + 32);
        *(v8 + 48) = v10;
        *v8 = result;
        *(v8 + 16) = v9;
        ++*(a3 + 2);
      }
    }

    while (v5);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::ReplacementItem,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 64);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 64);
    }
  }

  return v3;
}

void std::vector<llvm::StringRef>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t llvm::object_deleter<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

unint64_t llvm::json::Object::getInteger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::find_as<llvm::StringRef>(a1, v6);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  else
  {
    return llvm::json::Value::getAsInteger((v4 + 24));
  }
}

unint64_t llvm::json::Value::getAsInteger(llvm::json::Value *this)
{
  v3 = *this;
  if (v3 == 3)
  {
    v4 = *(this + 1);
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
  }

  else if (v3 == 2)
  {
    __y[1] = v1;
    __y[2] = v2;
    __y[0] = *(this + 1);
    if (modf(__y[0], __y) == 0.0 && fabs(__y[0]) <= 9.22337204e18)
    {
      v4 = __y[0];
      v5 = __y[0] & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v5 = 0;
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  return v4 | v5;
}

uint64_t llvm::json::Object::getString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::find_as<llvm::StringRef>(a1, v12);
  if (*a1 + 56 * *(a1 + 16) == result)
  {
    goto LABEL_11;
  }

  v7 = *(result + 24);
  if (v7 == 6)
  {
    v9 = *(result + 32);
    result += 32;
    v8 = v9;
    v10 = *(result + 23);
    if (v10 >= 0)
    {
      v8 = result;
    }

    if (v10 < 0)
    {
      v10 = *(result + 8);
    }

    *a4 = v8;
    *(a4 + 8) = v10;
    goto LABEL_10;
  }

  if (v7 != 5)
  {
LABEL_11:
    v11 = 0;
    *a4 = 0;
    goto LABEL_12;
  }

  *a4 = *(result + 32);
LABEL_10:
  v11 = 1;
LABEL_12:
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::json::Object::getObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::StringRef>(a1, v6, &v7);
  result = 0;
  if (v4 && v7 != *a1 + 56 * *(a1 + 16))
  {
    if (*(v7 + 24) == 7)
    {
      return v7 + 32;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::json::Object::getArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::find_as<llvm::StringRef>(a1, v6);
  if (*a1 + 56 * *(a1 + 16) == v4)
  {
    return 0;
  }

  if (*(v4 + 24) == 8)
  {
    return v4 + 32;
  }

  return 0;
}

uint64_t llvm::json::Value::moveFrom(uint64_t result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 <= 4)
  {
    v3 = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
LABEL_3:
    *(result + 8) = v3;
    return result;
  }

  if (v2 > 6)
  {
    if (v2 == 7)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = *(a2 + 1);
      *(a2 + 1) = 0;
      *(result + 16) = *(a2 + 4);
      *(a2 + 4) = 0;
      v5 = *(result + 20);
      *(result + 20) = *(a2 + 5);
      *(a2 + 5) = v5;
      v6 = *(result + 24);
      *(result + 24) = *(a2 + 6);
      *(a2 + 6) = v6;
    }

    else
    {
      if (v2 != 8)
      {
        return result;
      }

      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = *(a2 + 4);
      *(result + 24) = *(a2 + 3);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
    }
  }

  else
  {
    if (v2 == 5)
    {
      v3 = *(a2 + 4);
      goto LABEL_3;
    }

    v4 = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
    *(result + 8) = v4;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
  }

  *a2 = 0;
  return result;
}

void llvm::json::Value::copyFrom(llvm::json::Value *this, const llvm::json::Value *a2)
{
  v2 = *a2;
  *this = v2;
  if (v2 <= 4)
  {
    v3 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
LABEL_3:
    *(this + 8) = v3;
    return;
  }

  if (v2 > 6)
  {
    if (v2 == 7)
    {
      *(this + 1) = 0;
      *(this + 2) = 0;
      v5 = this + 8;
      *(v5 + 4) = 0;
      llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::copyFrom(v5, a2 + 8);
    }

    else if (v2 == 8)
    {
      *(this + 1) = 0;
      *(this + 2) = 0;
      v4 = this + 8;
      *(v4 + 2) = 0;
      std::vector<llvm::json::Value>::__init_with_size[abi:nn200100]<llvm::json::Value*,llvm::json::Value*>(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 5);
    }
  }

  else
  {
    if (v2 == 5)
    {
      v3 = *(a2 + 8);
      goto LABEL_3;
    }

    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      v3 = *(a2 + 8);
      *(this + 3) = *(a2 + 3);
      goto LABEL_3;
    }

    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }
}

void llvm::json::Value::destroy(llvm::json::Value *this)
{
  v2 = *this;
  if (v2 == 8)
  {
    v5 = (this + 8);
    std::vector<llvm::json::Value>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  else
  {
    if (v2 == 7)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(this + 8);
      v4 = *(this + 1);

      JUMPOUT(0x277C69E30);
    }

    if (v2 == 6 && *(this + 31) < 0)
    {
      v3 = *(this + 1);

      operator delete(v3);
    }
  }
}

void llvm::json::parse(llvm *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  LOBYTE(v13) = 0;
  v14 = 0;
  v15 = a1;
  v16 = a1;
  v17 = a1 + a2;
  v18 = 0;
  v19[0] = 0;
  if (!llvm::json::isUTF8(a1, a2, &v18))
  {
    v16 = (a1 + v18);
    v10 = "Invalid UTF-8 sequence";
    goto LABEL_11;
  }

  {
    v5 = v16;
    if (v16 != v17)
    {
      while (1)
      {
        v6 = *v5;
        v7 = v6 > 0x20;
        v8 = (1 << v6) & 0x100002600;
        if (v7 || v8 == 0)
        {
          break;
        }

        v16 = ++v5;
        if (v5 == v17)
        {
          goto LABEL_9;
        }
      }

      if (v5 != v17)
      {
        v10 = "Text after end of document";
LABEL_11:
      }
    }

LABEL_9:
    *(a3 + 32) &= ~1u;
    llvm::json::Value::moveFrom(a3, v19);
  }

  else
  {
    v11 = v13;
    v13 = 0;
    *(a3 + 32) |= 1u;
    *a3 = v11;
  }

  llvm::json::Value::destroy(v19);
  if (v14 == 1 && v13)
  {
    (*(*v13 + 8))(v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::json::anonymous namespace::Parser::parseValue(llvm::json::_anonymous_namespace_::Parser *this, llvm::json::Value *a2)
{
  v82[3] = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  for (i = *(this + 4); v5 != i; *(this + 3) = v5)
  {
    v6 = *v5;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      break;
    }

    ++v5;
  }

  if (v5 == i)
  {
    v23 = "Unexpected EOF";
    goto LABEL_26;
  }

  *(this + 3) = v5 + 1;
  v10 = *v5;
  if (v10 > 109)
  {
    if (v10 != 123)
    {
      if (v10 != 116)
      {
        if (v10 == 110)
        {
          LOWORD(v80) = 0;
          llvm::json::Value::destroy(a2);
          llvm::json::Value::moveFrom(a2, &v80);
          llvm::json::Value::destroy(&v80);
          v24 = *(this + 3);
          v25 = *(this + 4);
          if (v24 == v25 || (*(this + 3) = v24 + 1, *v24 != 117) || v24 + 1 == v25 || (*(this + 3) = v24 + 2, v24[1] != 108) || v24 + 2 == v25 || (*(this + 3) = v24 + 3, v24[2] != 108))
          {
            v23 = "Invalid JSON value (null?)";
            goto LABEL_26;
          }

          goto LABEL_112;
        }

LABEL_113:
        v23 = "Invalid JSON value";
        goto LABEL_26;
      }

      LOWORD(v80) = 1;
      LOBYTE(v81) = 1;
      llvm::json::Value::destroy(a2);
      llvm::json::Value::moveFrom(a2, &v80);
      llvm::json::Value::destroy(&v80);
      v61 = *(this + 3);
      v62 = *(this + 4);
      if (v61 != v62)
      {
        *(this + 3) = v61 + 1;
        if (*v61 == 114 && v61 + 1 != v62)
        {
          *(this + 3) = v61 + 2;
          if (v61[1] == 117 && v61 + 2 != v62)
          {
            *(this + 3) = v61 + 3;
            if (v61[2] == 101)
            {
              goto LABEL_112;
            }
          }
        }
      }

      v23 = "Invalid JSON value (true?)";
LABEL_26:
    }

    LOWORD(v80) = 7;
    v81 = 0u;
    memset(&v79, 0, sizeof(v79));
    LODWORD(v82[0]) = 0;
    llvm::json::Value::destroy(a2);
    llvm::json::Value::moveFrom(a2, &v80);
    llvm::json::Value::destroy(&v80);
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(&v79);
    MEMORY[0x277C69E30](v79.__r_.__value_.__r.__words[0], 8);
    *a2;
    v34 = *(this + 3);
    for (j = *(this + 4); v34 != j; *(this + 3) = v34)
    {
      v64 = *v34;
      v7 = v64 > 0x20;
      v65 = (1 << v64) & 0x100002600;
      if (v7 || v65 == 0)
      {
        break;
      }

      ++v34;
    }

    if (v34 == j || *v34 != 125)
    {
      v67 = *(this + 3);
      if (v67 == *(this + 4) || (*(this + 3) = v67 + 1, *v67 != 34))
      {
        v23 = "Expected object key";
        goto LABEL_26;
      }

      memset(&v79, 0, sizeof(v79));
      {
        v69 = *(this + 3);
        v68 = *(this + 4);
        while (v69 != v68)
        {
          v70 = *v69;
          v7 = v70 > 0x20;
          v71 = (1 << v70) & 0x100002600;
          if (v7 || v71 == 0)
          {
            break;
          }

          *(this + 3) = ++v69;
        }

        if (v69 != v68)
        {
          v73 = v69 + 1;
          *(this + 3) = v69 + 1;
          if (*v69 == 58)
          {
            while (v73 != v68)
            {
              v74 = *v73;
              v7 = v74 > 0x20;
              v75 = (1 << v74) & 0x100002600;
              if (v7 || v75 == 0)
              {
                break;
              }

              *(this + 3) = ++v73;
            }

            memset(&v79, 0, sizeof(v79));
            llvm::json::ObjectKey::ObjectKey();
          }
        }
      }

      v29 = 0;
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      goto LABEL_59;
    }

LABEL_111:
    *(this + 3) = v34 + 1;
    goto LABEL_112;
  }

  v11 = (v10 - 43);
  if (v11 > 0x3B)
  {
    goto LABEL_49;
  }

  if (((1 << (v10 - 43)) & 0x400000004007FEDLL) != 0)
  {
    v12 = v10;
    v80 = v82;
    v81 = xmmword_2750C12E0;
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v80, v10);
    for (k = *(this + 3); k != *(this + 4); k = *(this + 3))
    {
      v14 = *k;
      if ((v14 - 48) >= 0xA)
      {
        v15 = v14 - 43;
        v7 = v15 > 0x3A;
        v16 = (1 << v15) & 0x40000000400000DLL;
        if (v7 || v16 == 0)
        {
          break;
        }
      }

      *(this + 3) = k + 1;
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v80, *k);
    }

    __endptr[0] = 0;
    *__error() = 0;
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v80, 0);
    *&v81 = v81 - 1;
    v18 = strtoll(v80, __endptr, 10);
    if (__endptr[0] == v80 + v81 && (v19 = v18, *__error() != 34))
    {
      LOWORD(v79.__r_.__value_.__l.__data_) = 3;
      v79.__r_.__value_.__l.__size_ = v19;
    }

    else
    {
      if (v12 == 45 || (*__error() = 0, llvm::SmallVectorTemplateBase<char,true>::push_back(&v80, 0), *&v81 = v81 - 1, v20 = strtoull(v80, __endptr, 10), __endptr[0] != v80 + v81) || (v21 = v20, *__error() == 34))
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v80, 0);
        *&v81 = v81 - 1;
        v22 = strtod(v80, __endptr);
        LOWORD(v79.__r_.__value_.__l.__data_) = 2;
        *&v79.__r_.__value_.__l.__size_ = v22;
        llvm::json::Value::destroy(a2);
        llvm::json::Value::moveFrom(a2, &v79);
        llvm::json::Value::destroy(&v79);
        if (__endptr[0] != v80 + v81)
        {
        }

        goto LABEL_57;
      }

      LOWORD(v79.__r_.__value_.__l.__data_) = 4;
      v79.__r_.__value_.__l.__size_ = v21;
    }

    llvm::json::Value::destroy(a2);
    llvm::json::Value::moveFrom(a2, &v79);
    llvm::json::Value::destroy(&v79);
LABEL_57:
    v29 = 1;
    if (v80 != v82)
    {
      free(v80);
    }

    goto LABEL_59;
  }

  if (v11 != 48)
  {
    if (v11 == 59)
    {
      LOWORD(v80) = 1;
      LOBYTE(v81) = 0;
      llvm::json::Value::destroy(a2);
      llvm::json::Value::moveFrom(a2, &v80);
      llvm::json::Value::destroy(&v80);
      v26 = *(this + 3);
      v27 = *(this + 4);
      if (v26 == v27 || (*(this + 3) = v26 + 1, *v26 != 97) || v26 + 1 == v27 || (*(this + 3) = v26 + 2, v26[1] != 108) || v26 + 2 == v27 || (*(this + 3) = v26 + 3, v26[2] != 115) || v26 + 3 == v27 || (*(this + 3) = v26 + 4, v26[3] != 101))
      {
        v23 = "Invalid JSON value (false?)";
        goto LABEL_26;
      }

LABEL_112:
      v29 = 1;
      goto LABEL_59;
    }

LABEL_49:
    if (v10 == 34)
    {
      memset(&v79, 0, sizeof(v79));
      v29 = v28;
      if (v28)
      {
        __p = v79;
        memset(&v79, 0, sizeof(v79));
        llvm::json::Value::Value(&v80, &__p);
        llvm::json::Value::destroy(a2);
        llvm::json::Value::moveFrom(a2, &v80);
        llvm::json::Value::destroy(&v80);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      goto LABEL_59;
    }

    goto LABEL_113;
  }

  LOWORD(v80) = 8;
  v82[0] = 0;
  v81 = 0uLL;
  memset(&v79, 0, sizeof(v79));
  llvm::json::Value::destroy(a2);
  llvm::json::Value::moveFrom(a2, &v80);
  llvm::json::Value::destroy(&v80);
  __endptr[0] = &v79;
  std::vector<llvm::json::Value>::__destroy_vector::operator()[abi:nn200100](__endptr);
  v33 = *a2;
  v32 = (a2 + 8);
  if (v33 != 8)
  {
    v32 = 0;
  }

  v34 = *(this + 3);
  for (m = *(this + 4); v34 != m; *(this + 3) = v34)
  {
    v36 = *v34;
    v7 = v36 > 0x20;
    v37 = (1 << v36) & 0x100002600;
    if (v7 || v37 == 0)
    {
      break;
    }

    ++v34;
  }

  if (v34 != m && *v34 == 93)
  {
    goto LABEL_111;
  }

  while (1)
  {
    v39 = v32[1];
    v40 = v32[2];
    if (v39 >= v40)
    {
      v42 = *v32;
      v43 = (v39 - *v32) >> 5;
      v44 = v43 + 1;
      if ((v43 + 1) >> 59)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v45 = v40 - v42;
      if (v45 >> 4 > v44)
      {
        v44 = v45 >> 4;
      }

      v46 = v45 >= 0x7FFFFFFFFFFFFFE0;
      v47 = 0x7FFFFFFFFFFFFFFLL;
      if (!v46)
      {
        v47 = v44;
      }

      v82[1] = v32;
      if (v47)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::json::Value>>(v32, v47);
      }

      *(32 * v43) = 0;
      v41 = 32 * v43 + 32;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::json::Value>,llvm::json::Value*>(v32, v42, v39, 0);
      v48 = *v32;
      *v32 = 0;
      v32[1] = v41;
      v49 = v32[2];
      v32[2] = 0;
      *(&v81 + 1) = v48;
      v82[0] = v49;
      v80 = v48;
      *&v81 = v48;
      std::__split_buffer<llvm::json::Value>::~__split_buffer(&v80);
    }

    else
    {
      *v39 = 0;
      v41 = (v39 + 16);
    }

    v32[1] = v41;
    v29 = v50;
    if (!v50)
    {
      goto LABEL_59;
    }

    v52 = *(this + 3);
    v51 = *(this + 4);
    while (v52 != v51)
    {
      v53 = *v52;
      v7 = v53 > 0x20;
      v54 = (1 << v53) & 0x100002600;
      if (v7 || v54 == 0)
      {
        break;
      }

      *(this + 3) = ++v52;
    }

    if (v52 == v51)
    {
      goto LABEL_139;
    }

    v56 = v52 + 1;
    *(this + 3) = v52 + 1;
    v57 = *v52;
    if (v57 != 44)
    {
      break;
    }

    while (v56 != v51)
    {
      v58 = *v56;
      v7 = v58 > 0x20;
      v59 = (1 << v58) & 0x100002600;
      if (v7 || v59 == 0)
      {
        break;
      }

      *(this + 3) = ++v56;
    }
  }

  if (v57 != 93)
  {
LABEL_139:
    v23 = "Expected , or ] after array element";
    goto LABEL_26;
  }

LABEL_59:
  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

BOOL llvm::json::isUTF8(llvm *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = 0;
  while ((*(a1 + v5) & 0x80000000) == 0)
  {
    if (a2 == ++v5)
    {
      return 1;
    }
  }

  v8 = a1;
  isLegalUTF8String = llvm::isLegalUTF8String(&v8, (a1 + a2), a3);
  result = isLegalUTF8String;
  if (!isLegalUTF8String)
  {
    if (a3)
    {
      *a3 = v8 - a1;
    }
  }

  return result;
}

void llvm::json::fixUTF8(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&v14, 0, sizeof(v14));
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](&v14, a2);
  }

  v12 = 0;
  v13 = a1;
  llvm::ConvertUTF8toUTF32Impl(&v13, a1, &v12, 0, 1, 0);
  std::vector<unsigned int>::resize(&v14, v12 - v14.__begin_);
  begin = v14.__begin_;
  end = v14.__end_;
  v6 = v14.__end_ - v14.__begin_;
  if ((v14.__end_ - v14.__begin_) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&a3->__r_.__value_.__s + 23) = v6;
  if (end != begin)
  {
    bzero(a3, v6);
  }

  a3->__r_.__value_.__s.__data_[v6] = 0;
  v11 = v14.__begin_;
  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v8 = a3->__r_.__value_.__r.__words[0];
    size = a3->__r_.__value_.__l.__size_;
  }

  else
  {
    v8 = a3;
  }

  v10 = v8;
  llvm::ConvertUTF32toUTF8(&v11, v14.__end_, &v10, v8 + size, 0);
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = a3->__r_.__value_.__r.__words[0];
  }

  std::string::resize(a3, v10 - v9, 0);
  if (v14.__begin_)
  {
    v14.__end_ = v14.__begin_;
    operator delete(v14.__begin_);
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::json::ObjectKey::ObjectKey(v22, 0xFFFFFFFFFFFFFFFFLL, 0);
    llvm::json::ObjectKey::ObjectKey(v21, 0xFFFFFFFFFFFFFFFELL, 0);
    v9 = v4 - 1;
    v10 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + *(a2 + 8), v7, v8);
    v11 = v6 + 56 * v10;
    v12 = (v11 + 8);
    v13 = (v11 + 16);
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *(v11 + 8), *(v11 + 16)))
    {
      v4 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 1;
      while (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(v11 + 8), *(v11 + 16), v22[1], v22[2]))
      {
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*v12, *v13, v21[1], v21[2]);
        v18 = v20;
        if (isEqual && v20 == 0)
        {
          v18 = v11;
        }

        v20 = v18;
        v10 = (v10 + v19) & v9;
        v11 = v6 + 56 * v10;
        v12 = (v11 + 8);
        v13 = (v11 + 16);
        v4 = 1;
        ++v19;
        if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *(v11 + 8), *(v11 + 16)))
        {
          goto LABEL_4;
        }
      }

      v4 = 0;
      if (v20)
      {
        v11 = v20;
      }
    }

LABEL_4:
    *a3 = v11;
    v14 = v21[0];
    v21[0] = 0;
    if (v14)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](v21, v14);
    }

    v15 = v22[0];
    v22[0] = 0;
    if (v15)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](v22, v15);
    }
  }

  else
  {
    *a3 = 0;
  }

  return v4;
}

void *llvm::json::ObjectKey::ObjectKey(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = a2;
  a1[2] = a3;
  if (!llvm::json::isUTF8(a2, a3, 0))
  {
    llvm::json::fixUTF8(a2, a3, &__p);
    llvm::json::ObjectKey::ObjectKey();
  }

  return a1;
}

void std::default_delete<std::string>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x277C69E40);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::find_as<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v7))
  {
    result = v7;
    v4 = *a1;
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
    result = *a1 + 56 * v5;
  }

  v6 = *a1 + 56 * v5;
  return result;
}

void std::vector<llvm::json::Value>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 = (v4 - 32);
        llvm::json::Value::destroy(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(uint64_t a1)
{
  if (*(a1 + 16))
  {
    llvm::json::ObjectKey::ObjectKey(v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    llvm::json::ObjectKey::ObjectKey(v8, 0xFFFFFFFFFFFFFFFELL, 0);
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *a1;
      v4 = 56 * v2;
      do
      {
        if (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(v3 + 8), *(v3 + 16), v9[1], v9[2]) && !llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(v3 + 8), *(v3 + 16), v8[1], v8[2]))
        {
          llvm::json::Value::destroy((v3 + 24));
        }

        v5 = *v3;
        *v3 = 0;
        if (v5)
        {
          std::default_delete<std::string>::operator()[abi:nn200100](v3, v5);
        }

        v3 += 56;
        v4 -= 56;
      }

      while (v4);
    }

    v6 = v8[0];
    v8[0] = 0;
    if (v6)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](v8, v6);
    }

    v7 = v9[0];
    v9[0] = 0;
    if (v7)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](v9, v7);
    }
  }
}

uint64_t llvm::json::Value::Value(uint64_t a1, uint64_t *a2)
{
  *a1 = 6;
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (!llvm::json::isUTF8(v5, v6, 0))
  {
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    llvm::json::fixUTF8(v10, v11, &v12);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v12;
  }

  v7 = *a2;
  *(a1 + 24) = a2[2];
  *(a1 + 8) = v7;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return a1;
}

void llvm::json::anonymous namespace::Parser::parseError(llvm::json::_anonymous_namespace_::Parser *this, const char *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = 1;
  if (v2 > v3)
  {
    v5 = *(this + 2);
    do
    {
      v6 = *v3++;
      if (v6 == 10)
      {
        ++v4;
      }
    }

    while (v3 != v2);
  }

  operator new();
}

void llvm::json::ParseError::log(llvm::json::ParseError *this, llvm::raw_ostream *a2)
{
  v2[0] = "[{0}:{1}, byte={2}]: {3}";
  v2[1] = 24;
  v2[2] = v7;
  v2[3] = 4;
  v3[0] = &unk_2883EB018;
  v3[1] = this + 16;
  v4[0] = &unk_2883EB018;
  v4[1] = this + 20;
  v5[0] = &unk_2883EB018;
  v5[1] = this + 24;
  v6[0] = &unk_2883EB048;
  v6[1] = this + 8;
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  llvm::formatv_object_base::format(v2, a2);
}

llvm::raw_ostream *llvm::format_provider<unsigned int,void>::format(unsigned int *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return write_unsigned_impl<unsigned int>(a2, *a1, v14, v12, 0);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

uint64_t llvm::detail::HelperFunctions::consumeHexStyle(const void **a1, int *a2)
{
  if (!a1[1])
  {
    return 0;
  }

  v3 = **a1;
  if ((v3 - 65) < 0x1A)
  {
    v3 |= 0x20u;
  }

  if (v3 != 120)
  {
    return 0;
  }

  if (llvm::StringRef::consume_front(a1, "x-", 2uLL))
  {
    v5 = 1;
  }

  else if (llvm::StringRef::consume_front(a1, "X-", 2uLL))
  {
    v5 = 0;
  }

  else if (llvm::StringRef::consume_front(a1, "x+", 2uLL) & 1) != 0 || (llvm::StringRef::consume_front(a1, "x", 1uLL))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
    if ((llvm::StringRef::consume_front(a1, "X+", 2uLL) & 1) == 0)
    {
      v6 = 1;
      if (!llvm::StringRef::consume_front(a1, "X", 1uLL))
      {
        return v6;
      }

      v5 = 2;
    }
  }

  *a2 = v5;
  return 1;
}

uint64_t llvm::StringRef::consume_front(const void **a1, const void *a2, size_t __n)
{
  v3 = a1[1];
  v4 = &v3[-__n];
  if (v3 < __n)
  {
    return 0;
  }

  v7 = *a1;
  if (__n)
  {
    if (memcmp(*a1, a2, __n))
    {
      return 0;
    }
  }

  *a1 = &v7[__n];
  a1[1] = v4;
  return 1;
}

llvm::raw_ostream *llvm::format_provider<char const*,void>::format(const char **a1, llvm::raw_ostream *a2, uint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    v13 = 0;
    v14 = a3;
    v15 = a4;
    v6 = llvm::consumeUnsignedInteger(&v14, 0xA, &v13, a4);
    if (v15)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v13;
    }
  }

  else
  {
    v8 = -1;
  }

  v9 = *a1;
  if (v9)
  {
    v10 = strlen(v9);
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  return llvm::raw_ostream::operator<<(a2, v9, v11);
}

uint64_t llvm::json::anonymous namespace::Parser::parseString(llvm::json::_anonymous_namespace_::Parser *a1, std::string *this)
{
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  if (v4 == v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    *(a1 + 3) = v4 + 1;
    v6 = *v4;
    if (v6 == 34)
    {
      return 1;
    }

    ++v4;
  }

  v8 = "Invalid escape sequence";
  while (1)
  {
    if (v4 == v5)
    {
      v8 = "Unterminated string";
      goto LABEL_35;
    }

    if (v6 < 0x20u)
    {
      v8 = "Control character in string";
LABEL_35:
    }

    if (v6 == 92)
    {
      break;
    }

LABEL_10:
    std::string::push_back(this, v6);
LABEL_11:
    v4 = *(a1 + 3);
    v5 = *(a1 + 4);
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      *(a1 + 3) = v4 + 1;
      v6 = *v4++;
    }

    if (v6 == 34)
    {
      return 1;
    }
  }

  *(a1 + 3) = v4 + 1;
  v6 = *v4;
  if (v6 <= 0x65)
  {
    if (v6 - 34 > 0x3A || ((1 << (v6 - 34)) & 0x400000000002001) == 0)
    {
      if (v6 != 98)
      {
        goto LABEL_35;
      }

      LOBYTE(v6) = 8;
    }

    goto LABEL_10;
  }

  if (*v4 <= 0x71u)
  {
    if (v6 == 102)
    {
      LOBYTE(v6) = 12;
    }

    else
    {
      if (v6 != 110)
      {
        goto LABEL_35;
      }

      LOBYTE(v6) = 10;
    }

    goto LABEL_10;
  }

  if (v6 == 114)
  {
    LOBYTE(v6) = 13;
    goto LABEL_10;
  }

  if (v6 == 116)
  {
    LOBYTE(v6) = 9;
    goto LABEL_10;
  }

  if (v6 != 117)
  {
    goto LABEL_35;
  }

  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t llvm::json::anonymous namespace::Parser::parseUnicode(llvm::json::_anonymous_namespace_::Parser *a1, std::string *this)
{
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    *(a1 + 3) = v3 + 1;
    v5 = *v3++;
  }

  v23[0] = v5;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    *(a1 + 3) = v3 + 1;
    v6 = *v3++;
  }

  v23[1] = v6;
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    *(a1 + 3) = v3 + 1;
    v7 = *v3++;
  }

  v23[2] = v7;
  if (v3 == v4)
  {
    v8 = 0;
  }

  else
  {
    *(a1 + 3) = v3 + 1;
    v8 = *v3;
  }

  v9 = 0;
  v10 = 0;
  v23[3] = v8;
  do
  {
    v11 = v23[v9];
    if ((*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x10000) == 0)
    {
    }

    if (v11 <= 0x39)
    {
      v12 = v11 - 48;
    }

    else
    {
      v12 = (v11 & 0xFFDF) - 55;
    }

    v10 = v12 | (16 * v10);
    ++v9;
  }

  while (v9 != 4);
  if (((v10 + 0x2000) >> 11) >= 0x1Fu)
  {
    while ((v10 >> 10) < 0x37u)
    {
      v19 = *(a1 + 3);
      if ((v19 + 2) > *(a1 + 4) || *v19 != 92 || v19[1] != 117)
      {
        v26 = -16401;
        v27 = -67;
        v20 = &v26;
        goto LABEL_35;
      }

      *(a1 + 3) = v19 + 2;
      v22 = 0;
      v21 = a1;
      if (!v14)
      {
        return v14;
      }

      if (((v22 + 0x2000) >> 10) >= 0x3Fu)
      {
        return v14;
      }

      *__s = -16401;
      v29 = -67;
      v16 = v22;
      v17 = v22 + 0x2000;
      std::string::append(this, __s, 3uLL);
      v13 = v16;
      v18 = v17 >> 11;
      v10 = v16;
      a1 = v21;
      if (v18 < 0x1F)
      {
        goto LABEL_21;
      }
    }

    *v24 = -16401;
    v25 = -67;
    v20 = v24;
LABEL_35:
    std::string::append(this, v20, 3uLL);
  }

  else
  {
    v13 = v10;
LABEL_21:
  }

  return 1;
}

uint64_t llvm::json::anonymous namespace::Parser::parseUnicode(std::string &)::$_1::operator()(llvm::json::_anonymous_namespace_::Parser *a1, _WORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    *(a1 + 3) = v4 + 1;
    v6 = *v4++;
  }

  v18 = v2;
  v19 = v3;
  v17[0] = v6;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    *(a1 + 3) = v4 + 1;
    v7 = *v4++;
  }

  v17[1] = v7;
  if (v4 == v5)
  {
    v8 = 0;
  }

  else
  {
    *(a1 + 3) = v4 + 1;
    v8 = *v4++;
  }

  v17[2] = v8;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    *(a1 + 3) = v4 + 1;
    v9 = *v4;
  }

  v10 = 0;
  v11 = 0;
  v17[3] = v9;
  v12 = MEMORY[0x277D85DE0];
  do
  {
    v13 = v17[v10];
    v14 = *(v12 + 4 * v13 + 60);
    if ((v14 & 0x10000) == 0)
    {
    }

    if (v13 <= 0x39)
    {
      v15 = v13 - 48;
    }

    else
    {
      v15 = (v13 & 0xFFFFFFDF) - 55;
    }

    v11 = v15 | (16 * v11);
    *a2 = v11;
    ++v10;
  }

  while (v10 != 4);
  return HIWORD(v14) & 1;
}

void llvm::json::anonymous namespace::encodeUtf8(unsigned int a1, std::string *this)
{
  if (a1 > 0x7F)
  {
    if (a1 > 0x7FF)
    {
      if (HIWORD(a1))
      {
        v6 = (a1 >> 12) & 0x3F | 0xFFFFFF80;
        v7 = (a1 >> 6) & 0x3F | 0xFFFFFF80;
        v8 = a1 & 0x3F | 0x80;
        std::string::push_back(this, (a1 >> 18) | 0xF0);
        std::string::push_back(this, v6);
        std::string::push_back(this, v7);
        LOBYTE(a1) = v8;
      }

      else
      {
        v4 = (a1 >> 6) & 0x3F | 0xFFFFFF80;
        v5 = a1 & 0x3F | 0x80;
        std::string::push_back(this, (a1 >> 12) | 0xE0);
        std::string::push_back(this, v4);
        LOBYTE(a1) = v5;
      }
    }

    else
    {
      v3 = a1 & 0x3F | 0x80;
      std::string::push_back(this, (a1 >> 6) | 0xC0);
      LOBYTE(a1) = v3;
    }
  }

  std::string::push_back(this, a1);
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty(uint64_t a1)
{
  *(a1 + 8) = 0;
  llvm::json::ObjectKey::ObjectKey(v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = 56 * v2;
    do
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      llvm::json::ObjectKey::operator=(v3, v6);
      v3 += 7;
      v4 -= 56;
    }

    while (v4);
  }

  v5 = v6[0];
  v6[0] = 0;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:nn200100](v6, v5);
  }
}

uint64_t llvm::json::ObjectKey::operator=(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    operator new();
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::json::Value>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::json::Value>,llvm::json::Value*>(uint64_t a1, llvm::json::Value *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      llvm::json::Value::moveFrom(a4, v7);
      v7 += 16;
      a4 += 32;
    }

    while (v7 != a3);
    do
    {
      llvm::json::Value::destroy(v6);
      v6 = (v6 + 32);
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<llvm::json::Value>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    llvm::json::Value::destroy((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    llvm::json::ObjectKey::ObjectKey(v22, 0xFFFFFFFFFFFFFFFFLL, 0);
    llvm::json::ObjectKey::ObjectKey(v21, 0xFFFFFFFFFFFFFFFELL, 0);
    v9 = v4 - 1;
    v10 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(a2 + 8), *(a2 + 8) + *(a2 + 16), v7, v8);
    v11 = v6 + 56 * v10;
    v12 = (v11 + 8);
    v13 = (v11 + 16);
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(a2 + 8), *(a2 + 16), *(v11 + 8), *(v11 + 16)))
    {
      v4 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 1;
      while (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(v11 + 8), *(v11 + 16), v22[1], v22[2]))
      {
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*v12, *v13, v21[1], v21[2]);
        v18 = v20;
        if (isEqual && v20 == 0)
        {
          v18 = v11;
        }

        v20 = v18;
        v10 = (v10 + v19) & v9;
        v11 = v6 + 56 * v10;
        v12 = (v11 + 8);
        v13 = (v11 + 16);
        v4 = 1;
        ++v19;
        if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(a2 + 8), *(a2 + 16), *(v11 + 8), *(v11 + 16)))
        {
          goto LABEL_4;
        }
      }

      v4 = 0;
      if (v20)
      {
        v11 = v20;
      }
    }

LABEL_4:
    *a3 = v11;
    v14 = v21[0];
    v21[0] = 0;
    if (v14)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](v21, v14);
    }

    v15 = v22[0];
    v22[0] = 0;
    if (v15)
    {
      std::default_delete<std::string>::operator()[abi:nn200100](v22, v15);
    }
  }

  else
  {
    *a3 = 0;
  }

  return v4;
}