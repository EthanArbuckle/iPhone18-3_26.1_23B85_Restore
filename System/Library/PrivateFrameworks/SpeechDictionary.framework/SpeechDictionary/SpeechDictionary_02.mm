char *std::deque<SLToken *>::__move_backward_and_check(uint64_t a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, unint64_t *a8)
{
  if (a5 != a3)
  {
    v27[13] = v8;
    v27[14] = v9;
    v10 = a4;
    v11 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - (&a3[-*a2] >> 3);
    if (v11 >= 1)
    {
      while (1)
      {
        v13 = *v10;
        if (a5 == *v10)
        {
          v14 = *(v10 - 1);
          v10 -= 8;
          v13 = v14;
          a5 = v14 + 4096;
        }

        v15 = (a5 - 8);
        v16 = (a5 - v13) >> 3;
        if (v16 >= v11)
        {
          v17 = v11;
        }

        else
        {
          v17 = (a5 - v13) >> 3;
        }

        if (v16 <= v11)
        {
          v18 = v13;
        }

        else
        {
          v18 = &a5[-8 * v11];
        }

        v19 = *a8;
        v20 = *a8 >= a5 || v18 > v19;
        if (v20)
        {
          goto LABEL_23;
        }

        if (v15 == a7)
        {
          break;
        }

        v21 = ~((v15 - v13) >> 3) + ((a6 - v10) << 6) + (&a7[-*a6] >> 3);
        if (v21)
        {
          goto LABEL_19;
        }

LABEL_22:
        *a8 = v19;
LABEL_23:
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v18, a5, a6, a7, v27);
        if (v17 != 1)
        {
          v23 = ((v15 - *v10) >> 3) - v17;
          if (v23 > 0x7FFFFFFFFFFFFFFELL)
          {
            v25 = 510 - v23;
            v10 -= 8 * (v25 >> 9);
            v15 = *v10 + 8 * (~v25 & 0x1FF);
          }

          else
          {
            v24 = v23 + 1;
            v10 += 8 * (v24 >> 9);
            v15 = *v10 + 8 * (v24 & 0x1FF);
          }
        }

        a6 = v27[1];
        a7 = v27[2];
        a5 = v15;
        v20 = v11 <= v17;
        v11 -= v17;
        if (v20)
        {
          return a6;
        }
      }

      v21 = -1;
LABEL_19:
      v22 = v21 + ((v19 - v13) >> 3);
      if (v22 < 1)
      {
        v19 = *&v10[-8 * ((511 - v22) >> 9)] + 8 * (~(511 - v22) & 0x1FF);
      }

      else
      {
        v19 = *&v10[(v22 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v22 & 0x1FF);
      }

      goto LABEL_22;
    }
  }

  return a6;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CD97B0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &a4[v5];
      v25 = &a4[v5 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * v16 + 2 * a5;
    v35 = 2 * a5;
    v36 = v33;
    do
    {
      v37 = *v7++;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v33 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v33;
  }

  v17 = (v10 - __dst) >> 1;
  if (v17 >= a5)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[-2 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v22);
    }

    v30 = 2 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 2;
    *v20 = v21;
    v20 += 2;
    v19 += 2;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[2 * a5];
    v27 = &v19[-2 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 2;
      *v28 = v29;
      v28 += 2;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[2 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_35:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::__split_buffer<unsigned short>::emplace_back<unsigned short>(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result];
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(result[4], v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 2;
  return result;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B2FA980(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t SLPronouncerEng::URLBoundary(uint64_t a1, unsigned int a2)
{
  v2 = 0x100E0E0B0FuLL >> (8 * a2);
  if (a2 >= 5)
  {
    LOBYTE(v2) = 15;
  }

  return v2 & 0x1F;
}

void SLPronouncerEng::MakePlural(SLPronouncerEng *this, SLToken *a2)
{
  v4 = *(a2 + 7);
  v3 = *(a2 + 8);
  v5 = (a2 + 56);
  *(a2 + 8) = v3 - 2;
  if ((v3 - 2 - v4) <= 2)
  {
    v22 = 39;
    v6 = &v22;
LABEL_14:
    std::vector<unsigned short>::push_back[abi:ne200100](v5, v6);
    goto LABEL_15;
  }

  v7 = *(v3 - 4);
  if (v7 > 0x57)
  {
    if (v7 != 88)
    {
      if (v7 == 89)
      {
        *(v3 - 4) = 73;
      }

      else if (v7 != 90)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_13;
  }

  if (v7 == 72)
  {
    if ((*(v3 - 6) | 0x10) != 0x53)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v7 == 83)
  {
LABEL_13:
    v21 = 69;
    v6 = &v21;
    goto LABEL_14;
  }

LABEL_15:
  v20 = 83;
  std::vector<unsigned short>::push_back[abi:ne200100](v5, &v20);
  v19 = 0;
  std::vector<unsigned short>::push_back[abi:ne200100](v5, &v19);
  v8 = *(a2 + 10);
  if (*(a2 + 11) != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      v11 = SLPhonEng::sFlags[*(*(v10 + 40) - 1)];
      if ((v11 & 0x20000) != 0 || (v11 & 0x8002000) == 0x8002000)
      {
        v18 = 60;
        std::vector<unsigned char>::push_back[abi:ne200100](v10 + 32, &v18);
        v17 = 25;
        std::vector<unsigned char>::push_back[abi:ne200100](v10 + 32, &v17);
        v16 = 43;
        v12 = v10 + 32;
        v13 = &v16;
      }

      else if ((SLPhonEng::sFlags[*(*(v10 + 40) - 1)] & 6) == 2)
      {
        v15 = 42;
        v12 = v10 + 32;
        v13 = &v15;
      }

      else
      {
        v14 = 43;
        v12 = v10 + 32;
        v13 = &v14;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v12, v13);
      *v10 = 1;
      ++v9;
      v8 = *(a2 + 10);
    }

    while (v9 < (*(a2 + 11) - v8) >> 3);
  }
}

void SLPronouncerEng::MakePossessive(SLPronouncerEng *this, SLToken *a2)
{
  v4 = *(a2 + 10);
  if (*(a2 + 11) != v4)
  {
    v20 = v2;
    v21 = v3;
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v6);
      v8 = SLPhonEng::sFlags[*(*(v7 + 40) - 1)];
      if ((v8 & 0x20000) != 0 || (v8 & 0x8002000) == 0x8002000)
      {
        v19 = 60;
        std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v19);
        v18 = 25;
        std::vector<unsigned char>::push_back[abi:ne200100](v7 + 32, &v18);
        v17 = 43;
        v9 = v7 + 32;
        v10 = &v17;
      }

      else if ((SLPhonEng::sFlags[*(*(v7 + 40) - 1)] & 6) == 2)
      {
        v16 = 42;
        v9 = v7 + 32;
        v10 = &v16;
      }

      else
      {
        v15 = 43;
        v9 = v7 + 32;
        v10 = &v15;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v9, v10);
      v13 = *(v7 + 4);
      v12 = (v7 + 4);
      v11 = v13;
      if (v13 <= 6)
      {
        v14 = v11 + 1;
        *v12 = v14;
        v12[v14] = 84;
      }

      ++v6;
      v4 = *(a2 + 10);
    }

    while (v6 < (*(a2 + 11) - v4) >> 3);
  }
}

uint64_t SLPronouncerEng::Month(SLPronouncerEng *this, uint64_t a2)
{
  if ((a2 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return (*(*this + 216))(this, a2 + 354);
  }
}

uint64_t SLPronouncerEng::MakePluralUnit(SLPronouncerEng *this, SLToken *a2, char **a3)
{
  v34[0] = 0;
  SLToken::SelectHomographs(a2, 1, v34);
  v34[0] = 0;
  if ((SLToken::SelectHomographs(a3, 64, v34) & 1) == 0)
  {
    v34[0] = 0;
    SLToken::SelectHomographs(a3, 1, v34);
  }

  v5 = *(a2 + 10);
  v6 = (a2 + 80);
  if (*(a2 + 11) != v5)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 8 * v7);
      *v8 = 1;
      v9 = (v8 + 1);
      if (!SLWordTagSet::find(v9, 86))
      {
        v10 = *v9;
        if (v10 <= 6)
        {
          v11 = v10 + 1;
          *v9 = v11;
          *(v9 + v11) = 86;
        }
      }

      ++v7;
      v5 = *(a2 + 10);
    }

    while (v7 < (*(a2 + 11) - v5) >> 3);
  }

  v12 = a3[11];
  if (v12 != a3[10])
  {
    do
    {
      v13 = *(v12 - 8);
      *v13 = 64;
      v14 = v13 + 1;
      if (!SLWordTagSet::find((v13 + 1), 86))
      {
        v15 = *v14;
        if (v15 <= 6)
        {
          v16 = v15 + 1;
          *v14 = v16;
          v14[v16] = 86;
        }
      }

      v18 = *(a2 + 11);
      v17 = *(a2 + 12);
      if (v18 >= v17)
      {
        v20 = (v18 - *v6) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v21 = v17 - *v6;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(a2 + 80, v23);
        }

        *(8 * v20) = v13;
        v19 = 8 * v20 + 8;
        v24 = *(a2 + 10);
        v25 = *(a2 + 11) - v24;
        v26 = (8 * v20 - v25);
        memcpy(v26, v24, v25);
        v27 = *(a2 + 10);
        *(a2 + 10) = v26;
        *(a2 + 11) = v19;
        *(a2 + 12) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v18 = v13;
        v19 = (v18 + 1);
      }

      *(a2 + 11) = v19;
      v28 = a3[10];
      v12 = (a3[11] - 8);
      a3[11] = v12;
    }

    while (v12 != v28);
  }

  v29 = *(a2 + 7);
  v31 = *(a2 + 8);
  v30 = a2 + 56;
  v32 = a3[7];
  if (memcmp(v29, v32, v31 - v29))
  {
    *(v31 - 1) = 124;
    std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(v30, v31, v32, a3[8], (a3[8] - v32) >> 1);
  }

  SLToken::~SLToken(a3);
  return MEMORY[0x26D6753C0]();
}

void SLPronouncerEng::~SLPronouncerEng(SLPronouncerEng *this)
{
  SLPronouncer::~SLPronouncer(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLPronouncerEng::NumericBoundary(SLPronouncerEng *this, int a2)
{
  if (a2)
  {
    return 14;
  }

  else
  {
    return 15;
  }
}

char **SLPronouncerEng::SymbolByKey(SLPronouncerEng *this, unint64_t a2)
{
  if (a2 > 0x82A)
  {
    return 0;
  }

  if ((&SLPronouncerEng::sSymbols)[2 * a2])
  {
    return &(&SLPronouncerEng::sSymbols)[2 * a2];
  }

  return 0;
}

uint64_t SLPronouncerEng::TimeBoundary(SLPronouncerEng *this, int a2)
{
  if (a2)
  {
    return 15;
  }

  else
  {
    return 13;
  }
}

void SLChar::PushUTF8(std::string *this, unsigned int a2)
{
  v2 = a2;
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      std::string::push_back(this, (a2 >> 12) | 0xE0);
      std::string::push_back(this, (v2 >> 6) & 0x3F | 0x80);
    }

    else
    {
      std::string::push_back(this, (a2 >> 6) | 0xC0);
    }

    LOBYTE(v2) = v2 & 0x3F | 0x80;
  }

  std::string::push_back(this, v2);
}

void SLChar::PushUTF8(std::string *this, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  if (((a2 + 9216) >> 10) < 0x3Fu || ((a3 + 0x2000) >> 10) <= 0x3Eu)
  {
    SLChar::PushUTF8(this, a2);

    SLChar::PushUTF8(this, a3);
  }

  else
  {
    v6 = (a3 + 1024) | (a2 << 10);
    std::string::push_back(this, BYTE1(a2) & 3 | 0xF0);
    std::string::push_back(this, ((v4 & 0xFC) >> 2) | 0x90);
    std::string::push_back(this, (v6 >> 6) & 0xBF);

    std::string::push_back(this, a3 & 0x3F | 0x80);
  }
}

void SLPostLexerEng::~SLPostLexerEng(SLPostLexerEng *this)
{
  *this = &unk_287BD4D50;
  *(this + 12) = &unk_287BD4E38;
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  SLPostLexerImpl::~SLPostLexerImpl(this);
}

{
  SLPostLexerEng::~SLPostLexerEng(this);

  JUMPOUT(0x26D6753C0);
}

void non-virtual thunk toSLPostLexerEng::~SLPostLexerEng(SLPostLexerEng *this)
{
  SLPostLexerEng::~SLPostLexerEng((this - 96));
}

{
  SLPostLexerEng::~SLPostLexerEng((this - 96));

  JUMPOUT(0x26D6753C0);
}

uint64_t SLPostLexerEng::SingleLetterWordAsPrefix(SLPostLexerEng *this, unsigned int a2, int a3)
{
  if ((SLChar::sToUpper[a2 & 0x3F | (SLChar::sUniMap[a2 >> 6] << 6)] + a2) == 65)
  {
    return a3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

const void **SLPostLexerEng::HandlePunct(SLPostLexerEng *this, SLToken *a2)
{
  v3 = a2 + 56;
  v4 = **(a2 + 7);
  if (v4 > 0x3E)
  {
    if (**(a2 + 7) <= 0x200Fu)
    {
      if (v4 == 63)
      {
        v22 = 71;
        v5 = 7;
        goto LABEL_45;
      }

      if (v4 != 124)
      {
        goto LABEL_27;
      }

      goto LABEL_39;
    }

    if (v4 - 8208 < 4)
    {
      goto LABEL_9;
    }

    if (v4 == 8212)
    {
      goto LABEL_39;
    }

    if (v4 != 8230)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  if (**(a2 + 7) > 0x2Du)
  {
    if (v4 - 58 < 2)
    {
      goto LABEL_39;
    }

    if (v4 == 46)
    {
      v22 = 70;
      v5 = 6;
      goto LABEL_45;
    }

    if (v4 != 47)
    {
      goto LABEL_27;
    }

    if ((~*(a2 + 4) & 0x401) == 0)
    {
      v7 = SLLexerBuffer::operator[](this + 12, 0);
      if (v7)
      {
        if (*v7 != 13)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_33:
    SLToken::~SLToken(a2);

    JUMPOUT(0x26D6753C0);
  }

  if (**(a2 + 7) > 0x2Bu)
  {
    if (v4 != 44)
    {
LABEL_9:
      if ((*(a2 + 4) & 0x401) == 0)
      {
        v6 = 1;
LABEL_31:
        v9 = SLLexerBuffer::operator[](this + 12, 0);
        if (v9)
        {
          *(v9 + 1) = v6;
        }

        goto LABEL_33;
      }

      if ((*(a2 + 4) & 0x401) != 0x401)
      {
        v6 = 2;
        goto LABEL_31;
      }

LABEL_39:
      v22 = 69;
      v5 = 5;
      goto LABEL_45;
    }

    v10 = SLLexerBuffer::operator[](this + 12, 0);
    if (v10 && *v10 == 1 && (*(a2 + 16) & 1) == 0)
    {
      *(v10 + 4) |= 0x80u;
    }

LABEL_44:
    v22 = 68;
    v5 = 4;
LABEL_45:
    v11 = *(a2 + 7);
    v12 = *(a2 + 8);
    *(v11 + 1) = 32;
    v13 = *(a2 + 9);
    if (v12 >= v13)
    {
      v15 = v12 - v11;
      v16 = (v12 - v11) >> 1;
      if (v16 <= -2)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v17 = v13 - v11;
      if (v17 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = v17;
      }

      v19 = v17 >= 0x7FFFFFFFFFFFFFFELL;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v3, v20);
      }

      *(2 * v16) = 0;
      v14 = 2 * v16 + 2;
      memcpy(0, v11, v15);
      v21 = *(a2 + 7);
      *(a2 + 7) = 0;
      *(a2 + 8) = v14;
      *(a2 + 9) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v12 = 0;
      v14 = (v12 + 2);
    }

    *(a2 + 8) = v14;
    *(a2 + 1) = v5;
    operator new();
  }

  if (v4 == 9)
  {
    *(this + 242) = 1;
    goto LABEL_39;
  }

  if (v4 == 33)
  {
    v22 = 72;
    v5 = 8;
    goto LABEL_45;
  }

LABEL_27:

  return SLPostLexerImpl::HandlePunct(this, a2);
}

char *SLPostLexerEng::AppendMorph(SLPostLexerEng *this, SLToken *a2, char *a3, char *a4)
{
  if ((SLChar::sToUpper[*a3 & 0x3F | (SLChar::sUniMap[*a3 >> 6] << 6)] + *a3) == 69)
  {
    v4 = *(*(a2 + 8) - 4);
    a3 += 2 * ((SLChar::sToUpper[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] + v4) == 69);
  }

  return SLPostLexerImpl::AppendMorph(this, a2, a3, a4);
}

uint64_t SLPostLexerEng::PeriodIsEndOfSentence(uint64_t a1, unsigned __int16 *a2, uint64_t a3, SLToken *this, uint64_t a5)
{
  v10 = *(a2 + 23);
  if (v10 < 0)
  {
    if (*(a2 + 1) != 3)
    {
      goto LABEL_10;
    }

    v11 = *a2;
  }

  else
  {
    v11 = a2;
    if (v10 != 3)
    {
      goto LABEL_10;
    }
  }

  v12 = *v11;
  v13 = *(v11 + 2);
  if (v12 == 20302 && v13 == 46)
  {
    if (a5)
    {
      if (*a5 == 1 && (*(a5 + 17) & 0x10) == 0)
      {
        SLDissecter::DissectNumber(*(a1 + 184), a5, 0, ((*(a5 + 64) - *(a5 + 56)) >> 1) - 1, &__p);
        if (!v29 && !v30 && !__p.__r_.__value_.__l.__size_)
        {
          return 0;
        }
      }
    }

    *(this + 4) &= ~0x40u;
    return 1;
  }

LABEL_10:
  if (!SLToken::HasTag(this, 1036))
  {
LABEL_15:
    v15 = 0;
    if (a5)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (*(a3 + 5) != 1)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67960833;
    if ((SLToken::SelectHomographs(this, 0x7FFFFFFF, &__p) & 1) == 0)
    {
      v15 = 0;
      *(this + 4) &= ~0x40u;
      if (!a5)
      {
        return 1;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = 1;
  if (!a5)
  {
    return 1;
  }

LABEL_16:
  if (*a5)
  {
    return 0;
  }

  v16 = *(a5 + 56);
  if ((SLChar::sCharClass[*v16 & 0x3F | (SLChar::sUniMap[*v16 >> 6] << 6)] & 0x9F) == 0x81)
  {
    return 0;
  }

  v19 = *(a2 + 23);
  if (v19 < 0)
  {
    if (*(a2 + 1) != 3)
    {
      if (v15)
      {
        return 0;
      }

      v21 = *(a1 + 192);
      goto LABEL_47;
    }

    v20 = *a2;
  }

  else
  {
    v20 = a2;
    if (v19 != 3)
    {
      if ((v15 & 1) == 0)
      {
        v21 = *(a1 + 192);
        v22 = a2;
        goto LABEL_48;
      }

      return 0;
    }
  }

  v23 = *v20;
  v24 = *(v20 + 2);
  if (v23 == 21334 && v24 == 46)
  {
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  v21 = *(a1 + 192);
  v22 = a2;
  if (v19 < 0)
  {
LABEL_47:
    v22 = *a2;
  }

LABEL_48:
  SLPostLexerImpl::Transcribe(a1, a5, 2, 0, ((*(a5 + 64) - v16) >> 1) - 1, &__p);
  v26 = (*(*v21 + 64))(v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v26)
  {
    return 0;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 1));
  }

  else
  {
    v27 = *a2;
  }

  IsEndOfSentence = SLPostLexerImpl::PeriodIsEndOfSentence();
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return IsEndOfSentence;
}

void sub_26B2FBC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SLToken *SLPostLexerEng::StartsCurrencyRange(SLPostLexerImpl *a1, uint64_t a2)
{
  result = SLLexerBuffer::operator[](a1 + 12, 0);
  if (result)
  {
    if (*result)
    {
      return 0;
    }

    SLPostLexerImpl::Transcribe(a1, result, 2, 0, ((*(result + 8) - *(result + 7)) >> 1) - 1, &v15);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v15.__r_.__value_.__l.__size_ != 2)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
        return 0;
      }

      v5 = *v15.__r_.__value_.__l.__data_;
      operator delete(v15.__r_.__value_.__l.__data_);
      if (v5 != 20308)
      {
        return 0;
      }
    }

    else if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) != 2 || LOWORD(v15.__r_.__value_.__l.__data_) != 20308)
    {
      return 0;
    }

    v6 = SLLexerBuffer::operator[](a1 + 12, 1uLL);
    v7 = SLLexerBuffer::operator[](a1 + 12, 2uLL);
    if (!v6)
    {
      return 0;
    }

    v8 = v7;
    if (!v7 || SLPostLexerImpl::FindUnit(a1, v6, 0, ((*(v6 + 8) - *(v6 + 7)) >> 1) - 1, 36) != a2)
    {
      return 0;
    }

    if ((*(v8 + 17) & 0x10) != 0)
    {
      SLDissecter::DissectUnit(*(a1 + 23), v8, &v15);
      v13 = v16;
      v11 = ((*(v8 + 64) - *(v8 + 56)) >> 1) - 1;
      if (v15.__r_.__value_.__s.__data_[0])
      {
        v14 = 42;
      }

      else
      {
        v14 = 43;
      }

      v12 = a1;
      v10 = v8;
    }

    else
    {
      v9 = SLLexerBuffer::operator[](a1 + 12, 3uLL);
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v11 = ((*(v9 + 8) - *(v9 + 7)) >> 1) - 1;
      v12 = a1;
      v13 = 0;
      v14 = 42;
    }

    return (SLPostLexerImpl::FindUnit(v12, v10, v13, v11, v14) != 0);
  }

  return result;
}

BOOL SLPostLexerEng::EmphasizeAgglomeratedWord(SLPostLexerEng *this, SLToken *a2)
{
  result = SLPostLexerImpl::EmphasizeAgglomeratedWord(this, a2);
  if (result)
  {

    return SLToken::HasPOS(a2, 67);
  }

  return result;
}

void *SLPostLexerEng::IsCompassDirection(SLPostLexerEng *this, SLToken *a2)
{
  v2 = *(a2 + 7);
  v3 = (*(a2 + 8) - v2) >> 1;
  switch(v3)
  {
    case 4:
      result = memchr("NSWE", *v2, 5uLL);
      if (!result)
      {
        return result;
      }

      v7 = v2[1];
      if (v7 != 83 && v7 != 78)
      {
        return 0;
      }

      v6 = v2[2];
      break;
    case 3:
      v5 = *v2;
      if (v5 != 83 && v5 != 78)
      {
        return 0;
      }

      v6 = v2[1];
      break;
    case 2:
      return (memchr("NSWE", *v2, 5uLL) != 0);
    default:
      return 0;
  }

  return (v6 == 87 || v6 == 69);
}

uint64_t (***SLPostLexerEng::IsHouseNumber(SLPostLexerEng *this, SLToken *a2))(void)
{
  v3 = 0;
  while (1)
  {
    result = SLLexerBuffer::operator[](this + 12, v3);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = SLLexerBuffer::operator[](this + 12, v3 + 1);
    if (*v5 == 1)
    {
      v8 = v3;
      goto LABEL_21;
    }

    if (*v5)
    {
      return 0;
    }

    v7 = 0;
    if (*(v5 + 16))
    {
      goto LABEL_13;
    }

    v8 = v3;
    if (!v6)
    {
      goto LABEL_14;
    }

    if (*v6 != 13)
    {
      v7 = 0;
LABEL_13:
      v8 = v3;
      goto LABEL_14;
    }

    v9 = *v6[7];
    v7 = v9 == 46;
    if (v9 == 46)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = v3;
    }

LABEL_14:
    SLPostLexerImpl::Classify(this, v5);
    v10 = *(v5 + 5);
    if (((*(v5 + 64) - *(v5 + 56)) >> 1) - 1 != v10)
    {
      goto LABEL_17;
    }

    if (((*(*this + 192))(this, v5) & 1) == 0)
    {
      LODWORD(v10) = *(v5 + 5);
LABEL_17:
      if (v10 == 1)
      {
        SLPostLexerImpl::Transcribe(this, v5, 2, 0, ((*(v5 + 64) - *(v5 + 56)) >> 1) - 1, &v11);
        if (v7)
        {
          std::string::push_back(&v11, 46);
        }

        operator new();
      }

      return 0;
    }

LABEL_21:
    v3 = v8 + 1;
    if (v8 + 1 >= 7)
    {
      return 0;
    }
  }
}

void sub_26B2FC2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__list_imp<SLToken *>::clear(&a12);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SLPostLexerEng::PredictAltNum(SLPostLexerEng *this, SLToken *a2, SLToken *a3)
{
  if (*a3 == 1 && SLToken::HasTag(a2, 1044))
  {
    v5 = *(a3 + 4);
    if ((v5 & 0x1000) != 0)
    {

      SLToken::SetType(a3, 11);
    }

    else if (*(a3 + 8) - *(a3 + 7) == 8)
    {
      *(a3 + 4) = v5 | 0x400;
      if (!*(a3 + 1))
      {
        *(a3 + 1) = 2;
      }
    }
  }

  else if (SLToken::HasTag(a2, 1058))
  {
    *(a3 + 4) |= 0x1000000u;
  }
}

void SLPostLexerEng::PredictSingleLetter(SLPostLexerEng *this, SLToken *a2, SLToken *a3)
{
  if (SLToken::HasTag(a2, 1050))
  {

    SLToken::SetType(a3, 11);
  }
}

uint64_t SLPostLexerEng::FindElapsed(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2[1];
  }

  if (v5 < 2)
  {
    v8 = 0;
  }

  else
  {
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(v7 + v5 - 1) == 83)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = *a3;
  v10 = (&sElapsedSym)[2 * *a3];
  if (!v10)
  {
    return 0;
  }

  v11 = v8 + v5;
  v12 = &(&sElapsedSym)[2 * v9 + 2];
  for (i = v9 + 1; ; ++i)
  {
    v14 = *(a2 + 23) >= 0 ? a2 : *a2;
    if (!memcmp(v14, v10, v11) && !v10[v11])
    {
      break;
    }

    *a3 = i;
    v15 = *v12;
    v12 += 2;
    v10 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return 1;
}

BOOL SLPostLexerEng::ElapsedSequence(SLPostLexerEng *this, uint64_t a2, uint64_t a3)
{
  if ((&sElapsedSym)[2 * a3 + 1] == (&sElapsedSym)[2 * a2 + 1] + 1)
  {
    return 1;
  }

  v4 = (a2 & 0xE) == 2 && (a3 & 0xFFFFFFFFFFFFFFFELL) == 6;
  if ((a2 - 15) <= 0xFFFFFFFFFFFFFFF2)
  {
    return (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    return v4;
  }
}

void SLPostLexerEng::ElapsedSymbol(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, void *a5)
{
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2[1];
  }

  if ((a4 & 1) != 0 || v5 >= 2 && (v6 >= 0 ? (v8 = a2) : (v8 = *a2), *(v8 + v5 - 1) == 83))
  {
    v7 = &sElapsedNamePlural;
  }

  else
  {
    v7 = &sElapsedNameSingular;
  }

  *a5 = v7[(&sElapsedSym)[2 * a3 + 1]];
  a5[1] = 0x4100000001;
}

uint64_t SLPostLexerEng::HandleUnknownChar(SLPostLexerEng *this, SLToken *a2, SLTokenList *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  SLToken::SetType(a2, 0);
  result = SLPostLexerImpl::HandleTokenInDictionary(this, a2);
  if ((result & 1) == 0)
  {
    pErrorCode = U_ZERO_ERROR;
    v7 = *(a2 + 7);
    v8 = *v7;
    if (*(a2 + 8) - v7 != 4)
    {
      v8 = v7[1] + (v8 << 10) - 56613888;
    }

    if (v8 >= 128)
    {
      v9 = u_isgraph(v8);
      v10 = (v8 & 0x7FFFFFF0) == 0xFE00 || (v8 & 0x7FFFFFFE) == 65532;
      if (!v10 && v9 != 0)
      {
        if ((v12 = u_charName(v8, U_CHAR_NAME_ALIAS, v17, 128, &pErrorCode), pErrorCode <= U_ZERO_ERROR) && v12 || (pErrorCode = U_ZERO_ERROR, v12 = u_charName(v8, U_EXTENDED_CHAR_NAME, v17, 128, &pErrorCode), pErrorCode <= U_ZERO_ERROR) && v12)
        {
          if (v17[0] != 60)
          {
            v16 = 8232;
            strcpy(&v17[v12], ")");
            v14[0] = &v16;
            v14[1] = 0x4100000001;
            (*(**(this + 22) + 232))(*(this + 22), v14, a3, *(a2 + 4), *(a2 + 5));
          }
        }
      }
    }

    SLToken::~SLToken(a2);
    result = MEMORY[0x26D6753C0]();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void SLPhonemeParser::Create(SLPhonemeParser *this, const __CFLocale *a2)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreatePhonemeParserEng();
  }

  SLPhonemeParser::Create();
}

uint64_t SLPhonemeParser::FindTag(SLPhonemeParser *this, const char *a2)
{
  for (i = 64; ; ++i)
  {
    v4 = i;
    v5 = SLTag::Name(i);
    if (!strcmp(a2, v5))
    {
      break;
    }

    if (v4 >= 0x99)
    {
      return 0;
    }
  }

  return i;
}

uint64_t SLPhonemeParserEng::IsPhoneme(SLPhonemeParserEng *this, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v5 = WordPhoneme(*a2);
  v6 = WordPhoneme(a2[1]);
  v7 = SLPhonEng::Find(v5, 0);
  *a3 = v7;
  if (v7 != 255)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = SLPhonEng::Find(v5, v6);
  *a3 = v9;
  if (v9 == 255)
  {
    return 0;
  }

  return 2;
}

uint64_t WordPhoneme(unsigned int a1)
{
  if (a1 > 0x7F || (*(MEMORY[0x277D85DE0] + 4 * a1 + 60) & 0x100) == 0 && (a1 - 37 > 0x3A || ((1 << (a1 - 37)) & 0x48000000B803441) == 0) && a1 != 126)
  {
    LOBYTE(a1) = 0;
  }

  return a1;
}

BOOL SLPhonemeParserEng::IsTunePhoneme(SLPhonemeParserEng *this, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  if (v4 > 0x7F || (v4 <= 0x3F ? (v5 = ((1 << v4) & 0x8400500200000000) == 0) : (v5 = 1), v5))
  {
    LOBYTE(v4) = 0;
  }

  v6 = SLPhonEng::Find(v4, 0);
  *a3 = v6;
  return v6 != 255;
}

uint64_t SLPhonemeParserEng::FindPOS(SLPhonemeParserEng *this, const char *__s1)
{
  v3 = 0;
  while (strcmp(__s1, SLPOSEng::sName[v3]))
  {
    if (++v3 == 32)
    {
      LOBYTE(v3) = -1;
      return v3;
    }
  }

  return v3;
}

uint64_t SLPhonemeParserEng::FindTag(SLPhonemeParserEng *this, const char *a2)
{
  Tag = SLPhonemeParser::FindTag(this, a2);
  i = Tag;
  if (!Tag)
  {
    for (i = 1024; ; ++i)
    {
      v5 = i;
      v6 = SLTag::Name(i);
      if (!strcmp(a2, v6))
      {
        break;
      }

      if (v5 >= 0x423)
      {
        return 0;
      }
    }
  }

  return i;
}

void SLPhonemeParserEng::~SLPhonemeParserEng(SLPhonemeParserEng *this)
{
  SLPhonemeParser::~SLPhonemeParser(this);

  JUMPOUT(0x26D6753C0);
}

void SLTuplesEng::SLTuplesEng(SLTuplesEng *this, SLLexer *a2)
{
  SLTuplesImpl::SLTuplesImpl(this, a2, @"TuplesEng");
  *v2 = &unk_287BD4F48;
  v2[1] = &unk_287BD4FC8;
}

uint64_t (***SLTuplesEng::HandleGlobalFlags(SLTuplesEng *this, unint64_t *a2, char a3))(void)
{
  result = SLLexerBuffer::operator[](this + 1, *a2 - 1);
  if (result)
  {
    *result;
  }

  if ((a3 & 4) != 0)
  {
    ToBIToken();
  }

  if ((a3 & 8) != 0)
  {
    ToBIToken();
  }

  return result;
}

void SLTuplesEng::HandleElementFlags(SLTuplesEng *this, unint64_t *a2, unint64_t *a3, SLToken *a4, char a5)
{
  if ((a5 & 8) != 0)
  {
    v5 = *a2;
    ToBIToken();
  }
}

BOOL SLTuplesEng::HandleAgglomerates(SLTuplesEng *this, uint64_t a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  v3 = SLLexerBuffer::operator[](this + 1, 0);
  v4 = SLLexerBuffer::operator[](this + 1, 1uLL);
  result = SLToken::HasPOS(v3, 2);
  if (result)
  {
    result = SLToken::HasPOS(v4, 128);
    if (result)
    {
      *(v3 + 6) = 60;
      *(v3 + 20) = 0;
      *(v4 + 6) = 62;
      *(v4 + 20) = 0;
      result = 1;
      *(v4 + 2) = 2;
    }
  }

  return result;
}

void SLTuplesEng::~SLTuplesEng(SLTuplesEng *this)
{
  SLTuplesImpl::~SLTuplesImpl(this);

  JUMPOUT(0x26D6753C0);
}

void SLTuplesEng::ParseElementFlags(SLTuplesEng *this, char a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = a3 >> (7 * a2 + 7);
  *a4 = v5;
  *a5 = SLTuplesEng::sForcePOS[(v5 >> 4) & 7];
  *a4 &= 0xFu;
}

void non-virtual thunk toSLTuplesEng::~SLTuplesEng(SLTuplesEng *this)
{
  SLTuplesImpl::~SLTuplesImpl((this - 8));
}

{
  SLTuplesImpl::~SLTuplesImpl((this - 8));

  JUMPOUT(0x26D6753C0);
}

void SLStemTrackerImpl::SLStemTrackerImpl(SLStemTrackerImpl *this, const __CFLocale *a2, SLDictLookup *a3, unint64_t a4, SLLexer *a5)
{
  *this = &unk_287BD5090;
  SLDictionary::SLDictionary((this + 8));
  *this = &unk_287BD5000;
  *(this + 1) = &unk_287BD5068;
  std::vector<SLStemTrackerImpl::Stem>::vector[abi:ne200100](this + 5, a4);
  *(this + 8) = this + 64;
  *(this + 9) = this + 64;
  *(this + 10) = 0;
  SLDictionary::SLDictionary((this + 88));
  *(this + 11) = &unk_287BD2FB8;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = a3;
  *(this + 27) = a5;
  *(this + 224) = 0;
  v10 = *(this + 5);
  if (*(this + 6) != v10)
  {
    *(v10 + 8) = 0;
    operator new();
  }

  SLMorphRules::Create(a2, 1);
}

void sub_26B2FD330(_Unwind_Exception *a1)
{
  std::__list_imp<SLToken *>::clear(v3);
  v5 = *(v1 + 5);
  if (v5)
  {
    *(v1 + 6) = v5;
    operator delete(v5);
  }

  SLDictionary::~SLDictionary(v2);
  SLLexer::~SLLexer(v1);
  _Unwind_Resume(a1);
}

void SLStemTrackerImpl::~SLStemTrackerImpl(SLStemTrackerImpl *this)
{
  *this = &unk_287BD5000;
  v2 = (this + 8);
  *(this + 1) = &unk_287BD5068;
  SLEncyclopedia::Remove(this + 88, (this + 8));
  v3 = *(this + 27);
  if (v3)
  {
    (*(*v3 + 56))(v3);
  }

  SLEncyclopedia::~SLEncyclopedia((this + 88));
  std::__list_imp<SLToken *>::clear(this + 8);
  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  SLDictionary::~SLDictionary(v2);

  SLLexer::~SLLexer(this);
}

{
  SLStemTrackerImpl::~SLStemTrackerImpl(this);

  JUMPOUT(0x26D6753C0);
}

void non-virtual thunk toSLStemTrackerImpl::~SLStemTrackerImpl(SLStemTrackerImpl *this)
{
  SLStemTrackerImpl::~SLStemTrackerImpl((this - 8));
}

{
  SLStemTrackerImpl::~SLStemTrackerImpl((this - 8));

  JUMPOUT(0x26D6753C0);
}

uint64_t SLStemTrackerImpl::SeenRecently(SLStemTrackerImpl *this, const char *a2, size_t a3, int a4)
{
  SLWordBuilder::SLWordBuilder(v10);
  if (*(this + 224) == 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "Word %.*s ", a3, a2);
  }

  if (SLEncyclopedia::Lookup((this + 88), a2, a3, v10, (this + 88)))
  {
    SLStemTrackerImpl::Seen(this, this + 152, *(this + 18), a4);
  }

  else
  {
    SLStemTrackerImpl::Seen(this, a2, a3, a4);
  }

  v8 = *(this + 32);
  SLWordBuilder::~SLWordBuilder(v10);
  return v8;
}

void sub_26B2FD5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  SLWordBuilder::~SLWordBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t SLStemTrackerImpl::Seen(SLStemTrackerImpl *this, const char *__src, size_t __n, int a4)
{
  if (*(this + 224) == 1)
  {
    v8 = "";
    if (a4)
    {
      v8 = "[AllCaps] ";
    }

    fprintf(*MEMORY[0x277D85DF8], "-> Stem %.*s %s", __n, __src, v8);
  }

  v9 = (this + 64);
  v10 = *(this + 9);
  if (v10 == (this + 64))
  {
    v12 = *(this + 9);
LABEL_17:
    if (*(this + 224) == 1)
    {
      fwrite("is new\n", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    if (v12 == v9)
    {
      v12 = *v12;
    }

    *(this + 32) = 0;
    v17 = *(v12 + 2);
    *v17 = a4;
    *(v17 + 8) = __n;
    memcpy((v17 + 16), __src, __n);
    goto LABEL_22;
  }

  v11 = 1;
  v12 = *(this + 9);
  while (1)
  {
    v13 = *(v12 + 2);
    v14 = *(v13 + 1);
    if (!v14)
    {
      goto LABEL_17;
    }

    if (v14 == __n && *v13 == a4)
    {
      result = memcmp(__src, v13 + 16, __n);
      if (!result)
      {
        break;
      }
    }

    ++v11;
    v12 = *(v12 + 1);
    if (v12 == v9)
    {
      goto LABEL_17;
    }
  }

  *(this + 32) = 1;
  if (*(this + 224) == 1)
  {
    result = fprintf(*MEMORY[0x277D85DF8], "was last seen %lu stems ago\n", v11);
    v10 = *(this + 9);
  }

  if (v12 != v10)
  {
LABEL_22:
    v18 = *(v12 + 1);
    v19 = *(v12 + 2);
    v20 = *v12;
    *(v20 + 1) = v18;
    *v18 = v20;
    --*(this + 10);
    operator delete(v12);
    operator new();
  }

  return result;
}

uint64_t SLStemTrackerImpl::Reset(uint64_t this)
{
  v1 = *(this + 40);
  v2 = *(this + 48) - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 4);
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = (v4 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_26B3529F0;
    v8 = (v1 + 88);
    v9 = vdupq_n_s64(2uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v6, v7));
      if (v10.i8[0])
      {
        *(v8 - 10) = 0;
      }

      if (v10.i8[4])
      {
        *v8 = 0;
      }

      v7 = vaddq_s64(v7, v9);
      v8 += 20;
      v5 -= 2;
    }

    while (v5);
  }

  return this;
}

uint64_t SLStemTrackerImpl::Lookup(SLStemTrackerImpl *this, const char *a2, size_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v8 = (***(*(this + 16) + 24))(*(*(this + 16) + 24), a2, a3, a4, 0);
  if (v8)
  {
    *(this + 18) = a3;
    memcpy(this + 152, a2, a3);
  }

  return v8;
}

uint64_t non-virtual thunk toSLStemTrackerImpl::Lookup(SLStemTrackerImpl *this, const char *a2, size_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v8 = (***(*(this + 15) + 24))(*(*(this + 15) + 24), a2, a3, a4, 0);
  if (v8)
  {
    *(this + 17) = a3;
    memcpy(this + 144, a2, a3);
  }

  return v8;
}

void *SLStemTrackerImpl::NextToken(SLStemTrackerImpl *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = (***(this + 27))(*(this + 27));
  v3 = v2;
  if (v2)
  {
    if (*v2 == 6)
    {
      (*(*this + 72))(this);
    }

    else if (!*v2)
    {
      Text = SLTokenGetText(v2);
      CStringPtr = CFStringGetCStringPtr(Text, 0x8000100u);
      if (!CStringPtr)
      {
        CStringPtr = buffer;
        if (!CFStringGetCString(Text, buffer, 64, 0x8000100u))
        {
          CStringPtr = "";
        }
      }

      v6 = strlen(CStringPtr);
      if (v6)
      {
        if (*(v3 + 2) == 1)
        {
          (*(*this + 64))(this, CStringPtr, v6, (*(v3 + 4) >> 4) & 1);
        }

        else if (!*(v3 + 2) && (*(*this + 64))(this, CStringPtr, v6, (*(v3 + 4) >> 4) & 1))
        {
          *(v3 + 2) = 2;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

void *std::vector<SLStemTrackerImpl::Stem>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SLStemTrackerImpl::Stem>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B2FDC04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SLStemTrackerImpl::Stem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLStemTrackerImpl::Stem>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLStemTrackerImpl::Stem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SLCFArrayBuilder::~SLCFArrayBuilder(CFTypeRef **this)
{
  v2 = *this;
  if (this[1] != v2)
  {
    v4 = 0;
    do
    {
      CFRelease(v2[v4++]);
      v2 = *this;
    }

    while (v4 < this[1] - *this);
  }

  if (v2)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void SLCFDictionaryBuilder::push_back(SLCFDictionaryBuilder *this, const void *a2, const void *a3)
{
  v4 = a3;
  v5 = a2;
  std::vector<void const*>::push_back[abi:ne200100](this + 24, &v5);
  std::vector<void const*>::push_back[abi:ne200100](this, &v4);
}

void SLDissecter::SLDissecter(SLDissecter *this, SLPronouncer *a2)
{
  *this = **(*(*a2 + 216))(a2, 207);
  *(this + 1) = **(*(*a2 + 216))(a2, 208);
  *(this + 4) = (*(*a2 + 200))(a2);
}

unsigned __int16 *SLDissecter::DissectNumber(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v5 = a3 + a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 8) = a3;
  v6 = 1;
  if (a4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 56);
    v11 = *result;
    v12 = a3;
    while (1)
    {
      v13 = *(v10 + 2 * v12);
      if (v13 == v11)
      {
        *a5 = 1;
      }

      else
      {
        if ((v13 & 0xFFFFFFDF) == 0x45 || v13 == result[1])
        {
LABEL_18:
          v6 = v7 != 1;
          goto LABEL_20;
        }

        if (SLChar::sCharClass[v13 & 0x3F | (SLChar::sUniMap[v13 >> 6] << 6)] == 2)
        {
          if (v9)
          {
            if (v9 > 0xF423F)
            {
              goto LABEL_17;
            }

LABEL_16:
            v7 = v13 + 10 * v9 - 48;
            *(a5 + 56) = v7;
            v9 = v7;
            goto LABEL_17;
          }

          if (v13 != 48 || v8 == 255)
          {
            goto LABEL_16;
          }

          v9 = 0;
          *(a5 + 4) = ++v8;
        }
      }

LABEL_17:
      if (++v12 >= v5)
      {
        goto LABEL_18;
      }
    }
  }

  LODWORD(v13) = 0;
  v12 = a3;
LABEL_20:
  *(a5 + 16) = v12 - a3;
  if (v13 == result[1])
  {
    v15 = v12 + 1;
    *(a5 + 24) = v12 + 1;
    if (v12 + 1 >= v5)
    {
      v16 = 0;
      ++v12;
    }

    else
    {
      v16 = 0;
      v17 = *(a2 + 56);
      ++v12;
      while (1)
      {
        v13 = *(v17 + 2 * v12);
        if ((v13 & 0xFFFFFFDF) == 0x45)
        {
          break;
        }

        if (v13 != 48)
        {
          *(a5 + 3) = 1;
        }

        if (v16 < 0x989680)
        {
          v16 = v13 + 10 * v16 - 48;
        }

        if (v5 == ++v12)
        {
          v12 = v5;
          break;
        }
      }
    }

    *(a5 + 32) = v12 - v15;
    *(a5 + 1) = v16 == 1;
    v18 = v16 != 0;
  }

  else
  {
    v18 = 0;
  }

  if ((v13 & 0xFFFFFFDF) == 0x45)
  {
    v19 = v12 + 1;
    v20 = v5 - v19;
    *(a5 + 40) = v19;
    *(a5 + 48) = v20;
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  *(a5 + 2) = v21 & ~(v6 || v18) & 1;
  return result;
}

void SLDissecter::DissectUnit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 56);
  v4 = (*(a2 + 64) - v3) >> 1;
  v5 = v3 - 4;
  v6 = -1;
  do
  {
    v7 = *(v5 + 2 * v4--);
    v8 = SLChar::sCharClass[v7 & 0x3F | (SLChar::sUniMap[v7 >> 6] << 6)];
    ++v6;
    if (v8)
    {
      v9 = (v8 & 0x1F) == 1;
    }

    else
    {
      v9 = 1;
    }
  }

  while (v9);
  *(a3 + 24) = v4;
  *(a3 + 32) = v6;
  *a3 = v8 == 6;
  if (v8 == 6)
  {
    --v4;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = v4;
}

void SLDissecter::DissectRoman(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 56);
  v4 = (*(a2 + 64) - v3) >> 1;
  v5 = v3 - 4;
  v6 = -1;
  do
  {
    v7 = *(v5 + 2 * v4--);
    ++v6;
  }

  while ((SLChar::sCharClass[v7 & 0x3F | (SLChar::sUniMap[v7 >> 6] << 6)] & 0x9F) == 0x81);
  a3[3] = v4;
  a3[4] = v6;
  a3[1] = 0;
  a3[2] = v4;
}

uint64_t SLDissecter::EvaluateRoman(SLDissecter *this, SLToken *a2, CFRange a3)
{
  if (a3.length < 1)
  {
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = a3.location + a3.length;
    v5 = *(a2 + 7);
    v6 = 10000;
    do
    {
      v7 = 0;
      v8 = (SLChar::sToUpper[*(v5 + 2 * a3.location) & 0x3F | (SLChar::sUniMap[*(v5 + 2 * a3.location) >> 6] << 6)] + *(v5 + 2 * a3.location));
      if (v8 <= 0x4B)
      {
        if (v8 == 67)
        {
          v7 = 100;
        }

        else if (v8 == 68)
        {
          v7 = 500;
        }

        else
        {
          v7 = v8 == 73;
        }
      }

      else if ((SLChar::sToUpper[*(v5 + 2 * a3.location) & 0x3F | (SLChar::sUniMap[*(v5 + 2 * a3.location) >> 6] << 6)] + *(v5 + 2 * a3.location)) > 0x55u)
      {
        if (v8 == 86)
        {
          v7 = 5;
        }

        else if (v8 == 88)
        {
          v7 = 10;
        }
      }

      else if (v8 == 76)
      {
        v7 = 50;
      }

      else if (v8 == 77)
      {
        v7 = 1000;
      }

      if (v7 > v6)
      {
        v9 = -2 * v6;
      }

      else
      {
        v9 = 0;
      }

      v3 += v7 + v9;
      ++a3.location;
      v6 = v7;
    }

    while (a3.location < v4);
  }

  return v3;
}

uint64_t SLDissecter::DissectTime(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 = *(a2 + 56);
  v4 = *v3;
  if (SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] == 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 56);
    do
    {
      v9 = v7[1];
      ++v7;
      v8 = v9;
      v6 = v4 + 10 * v6 - 48;
      *a3 = v6;
      *(a3 + 16) = ++v5;
      LODWORD(v4) = v9;
    }

    while (SLChar::sCharClass[v9 & 0x3F | (SLChar::sUniMap[v9 >> 6] << 6)] == 2);
    LODWORD(v4) = v8;
  }

  else
  {
    v5 = 0;
    v7 = *(a2 + 56);
  }

  if (v4 == 58 || v4 == 46)
  {
    LODWORD(v4) = v7[3];
    *(a3 + 24) = v5 + 1;
    *(a3 + 32) = 2;
    v10 = v7[2];
    v11 = SLChar::sCharClass[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)];
    v12 = *(v7 + 2);
    v13 = v10 + 10 * v12 - 16;
    v14 = v12 - 48;
    if (v11 != 2)
    {
      v13 = v14;
    }

    *(a3 + 1) = v13;
    if (v4 == 58)
    {
      *(a3 + 40) = v5 + 4;
      *(a3 + 48) = 2;
      v15 = v7[6];
      v7 += 6;
      LODWORD(v4) = v15;
      v16 = *(v7 - 1);
      v17 = SLChar::sCharClass[v16 & 0x3F | (SLChar::sUniMap[v16 >> 6] << 6)];
      v18 = *(v7 - 4);
      v19 = v16 + 10 * v18 - 16;
      if (v17 != 2)
      {
        v19 = v18 - 48;
      }

      *(a3 + 2) = v19;
    }

    else
    {
      v7 += 3;
    }
  }

  if (v4 == *(result + 2))
  {
    *(a3 + 56) = v7 - v3 + 1;
    v4 = v7[1];
    if (SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] == 2)
    {
      v20 = v7 + 2;
      v21 = 1;
      do
      {
        *(a3 + 64) = v21;
        v22 = *v20++;
        LODWORD(v4) = v22;
        ++v21;
      }

      while (SLChar::sCharClass[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] == 2);
      v7 = v20 - 1;
    }

    else
    {
      ++v7;
    }
  }

  v23 = 65;
  if (v4 > 96)
  {
    if (v4 != 97)
    {
      if (v4 != 112)
      {
        goto LABEL_24;
      }

LABEL_27:
      v23 = 80;
    }
  }

  else if (v4 != 65)
  {
    if (v4 != 80)
    {
LABEL_24:
      *(a3 + 3) = 32;
      return result;
    }

    goto LABEL_27;
  }

  *(a3 + 3) = v23;
  *(a3 + 72) = v7 - v3;
  *(a3 + 80) = 2;
  return result;
}

uint64_t SLDissecter::DissectDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a2 + 56);
  v5 = (v4 + 2);
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = SLChar::sCharClass[*(v4 + 2 * v3) & 0x3F | (SLChar::sUniMap[*(v4 + 2 * v3) >> 6] << 6)];
    ++v3;
    ++v5;
  }

  while (v8 == 2);
  v9 = -1;
  do
  {
    v10 = v9;
    v11 = *v7++;
    ++v9;
  }

  while (SLChar::sCharClass[v11 & 0x3F | (SLChar::sUniMap[v11 >> 6] << 6)] == 2);
  v12 = v3 + v9 + 1;
  v13 = v12;
  v14 = -1;
  v15 = v12;
  do
  {
    v16 = *v7++;
    ++v14;
  }

  while (SLChar::sCharClass[v16 & 0x3F | (SLChar::sUniMap[v16 >> 6] << 6)] == 2);
  if ((*(a2 + 17) & 4) != 0)
  {
    v19 = 8;
    v26 = *(a1 + 4);
    v20 = 48;
    v22 = 32;
    v23 = 24;
    if (v26)
    {
      v23 = 24;
      v17 = 0;
    }

    else
    {
      v17 = v6 + 1;
    }

    if (v26)
    {
      v22 = 32;
      v27 = v6;
    }

    else
    {
      v27 = v10 + 1;
    }

    v21 = 40;
    if (v26)
    {
      v3 = v6 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (v26)
    {
      v20 = 48;
      v9 = v10 + 1;
    }

    else
    {
      v9 = v6;
    }

    if ((v26 & 1) == 0)
    {
      v19 = 8;
    }

    v18 = 16;
    if (v26)
    {
      v13 = v6 + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v26)
    {
      result = 0;
    }

    else
    {
      result = v6 + 1;
    }

    v6 = v27;
    v25 = v14;
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v18 = 48;
    v19 = 40;
    v20 = 32;
    v21 = 24;
    v22 = 16;
    v23 = 8;
    result = v3;
    v25 = v6;
  }

  *(a3 + v23) = v17;
  *(a3 + v22) = v6;
  *(a3 + v21) = v3;
  *(a3 + v20) = v9;
  *(a3 + v19) = v12;
  *(a3 + v18) = v14;
  v28 = (v4 + 2 * v15);
  if (v25 == 4)
  {
    LOWORD(v28) = 1000 * (*v28 - 48) + 100 * (v28[2] - 48) + 10 * (v28[4] - 48) + (v28[6] - 48);
    v29 = (v28 - 1000) < 0x7D0u;
  }

  else
  {
    v30 = *(v28 + 1);
    v31 = SLChar::sCharClass[v30 & 0x3F | (SLChar::sUniMap[v30 >> 6] << 6)];
    v32 = *v28;
    v33 = v30 + 10 * v32 - 16;
    LOBYTE(v28) = v32 - 48;
    if (v31 == 2)
    {
      LOBYTE(v28) = v33;
    }

    LOWORD(v28) = v28;
    v29 = 1;
  }

  *(a3 + 2) = v28;
  *a3 = v29;
  v34 = (v4 + 2 * result);
  v35 = v34[1];
  v36 = SLChar::sCharClass[v35 & 0x3F | (SLChar::sUniMap[v35 >> 6] << 6)];
  LOWORD(v34) = *v34;
  v37 = v35 + 10 * v34 - 16;
  v38 = v34 - 48;
  if (v36 == 2)
  {
    v38 = v37;
  }

  *(a3 + 4) = v38;
  v39 = (v4 + 2 * v13);
  v40 = v39[1];
  LOWORD(v39) = *v39;
  v41 = v40 + 10 * v39 - 16;
  v42 = v39 - 48;
  if (SLChar::sCharClass[v40 & 0x3F | (SLChar::sUniMap[v40 >> 6] << 6)] == 2)
  {
    v43 = v41;
  }

  else
  {
    v43 = v42;
  }

  *(a3 + 5) = v43;
  return result;
}

uint64_t SLDissecter::DissectGeoLoc(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 112) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 = *(a2 + 56);
  v4 = *v3;
  v5 = *(a2 + 16);
  v6 = 0;
  if ((v5 & 0x400) != 0)
  {
LABEL_20:
    if ((v5 & 0x600) == 0x400)
    {
LABEL_21:
      v12 = 0;
      *(a3 + 72) = v6;
      v13 = &v3[v6 + 1];
      while (SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] == 2 || v4 == *(result + 2))
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v4 == 49;
        }

        v15 = v14;
        *(a3 + 2) = v15;
        v16 = *v13++;
        v4 = v16;
        --v12;
      }

      *(a3 + 80) = -v12;
      v17 = v6 - v12;
      if (v4)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)];
          if (v20 != 5)
          {
            if (v20 == 2)
            {
              goto LABEL_40;
            }

            if (!v19)
            {
              *(a3 + 88) = v17;
              v19 = v17;
            }

            *(a3 + 96) = ++v18;
          }

          v21 = v17 + 1;
          v4 = v3[++v17];
        }

        while (v4);
        v17 = v21;
      }

LABEL_40:
      if (SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] == 2)
      {
        v22 = 0;
        v23 = &v3[v17];
        v24 = 1;
        do
        {
          if (!v22)
          {
            v22 = v17 + v24 - 1;
            *(a3 + 104) = v22;
          }

          *(a3 + 112) = v24;
          v25 = SLChar::sCharClass[v23[v24] & 0x3F | (SLChar::sUniMap[v23[v24] >> 6] << 6)];
          ++v24;
        }

        while (v25 == 2);
      }
    }

    else
    {
      v26 = 0;
      *(a3 + 40) = v6;
      v27 = &v3[v6 + 1];
      while (SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] == 2 || v4 == *(result + 2))
      {
        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v4 == 49;
        }

        v29 = v28;
        *(a3 + 1) = v29;
        v30 = *v27++;
        v4 = v30;
        --v26;
      }

      *(a3 + 48) = -v26;
      if (v4)
      {
        v31 = 0;
        v32 = 0;
        v6 -= v26;
        do
        {
          v33 = SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)];
          if (v33 != 5)
          {
            if (v33 == 2)
            {
              goto LABEL_21;
            }

            if (!v32)
            {
              *(a3 + 56) = v6;
              v32 = v6;
            }

            *(a3 + 64) = ++v31;
          }

          v4 = v3[++v6];
        }

        while (v4);
      }
    }
  }

  else
  {
    while (SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] == 2 || v4 == *(result + 2))
    {
      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 == 49;
      }

      v8 = v7;
      *a3 = v8;
      v4 = v3[++v6];
    }

    *(a3 + 16) = v6;
    if (v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = SLChar::sCharClass[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)];
        if (v11 != 5)
        {
          if (v11 == 2)
          {
            goto LABEL_20;
          }

          if (!v10)
          {
            *(a3 + 24) = v6;
            v10 = v6;
          }

          *(a3 + 32) = ++v9;
        }

        v4 = v3[++v6];
      }

      while (v4);
    }
  }

  return result;
}

void SLDissecter::DissectDottedNumber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = 0;
  *a3 = 0;
  v28 = (a3 + 8);
  v6 = *(a2 + 56);
  do
  {
    v7 = v5 + 1;
    v8 = *(v6 + 2 * (v5 + 1));
    if (SLChar::sCharClass[v8 & 0x3F | (SLChar::sUniMap[v8 >> 6] << 6)] == 2)
    {
      v9 = 0;
      v10 = v6 + 4;
      v11 = v5;
      do
      {
        v9 = v8 + 10 * v9 - 48;
        v8 = *(v10 + 2 * v11++);
      }

      while (SLChar::sCharClass[v8 & 0x3F | (SLChar::sUniMap[v8 >> 6] << 6)] == 2);
      v12 = v9 > 0xFF;
      v7 = v11 + 1;
    }

    else
    {
      v12 = 0;
      v11 = v5;
    }

    v13 = v7 - v5;
    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    if (v15 >= v14)
    {
      v17 = *v28;
      v18 = v15 - *v28;
      v19 = v18 >> 4;
      v20 = (v18 >> 4) + 1;
      if (v20 >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v29 = v12;
      v21 = v14 - v17;
      if (v21 >> 3 > v20)
      {
        v20 = v21 >> 3;
      }

      v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v20;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(v28, v23);
      }

      v24 = (16 * v19);
      *v24 = v5;
      v24[1] = v13;
      v16 = 16 * v19 + 16;
      v25 = &v24[-2 * (v18 >> 4)];
      memcpy(v25, v17, v18);
      v26 = *(a3 + 8);
      *(a3 + 8) = v25;
      *(a3 + 16) = v16;
      *(a3 + 24) = 0;
      if (v26)
      {
        operator delete(v26);
      }

      v4 = a2;
      v12 = v29;
    }

    else
    {
      *v15 = v5;
      *(v15 + 1) = v13;
      v16 = (v15 + 16);
    }

    *(a3 + 16) = v16;
    *a3 = *a3 & 1 | (v13 > 3) | v12;
    v5 = v11 + 2;
    v6 = *(v4 + 56);
  }

  while (*(v6 + 2 * v7));
}

uint64_t SLDissecter::DissectNumericBullet(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 56);
  v4 = -1;
  v5 = v3;
  do
  {
    v6 = *v5++;
    v7 = SLChar::sCharClass[v6 & 0x3F | (SLChar::sUniMap[v6 >> 6] << 6)];
    ++v4;
  }

  while (v7 == 5);
  *(a3 + 8) = 0;
  *(a3 + 16) = v4;
  if (v7 == 2)
  {
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    *(a3 + 24) = v4;
    *(a3 + 32) = 1;
    do
    {
      v8 = *v5++;
      ++v4;
    }

    while (SLChar::sCharClass[v8 & 0x3F | (SLChar::sUniMap[v8 >> 6] << 6)] == 5);
  }

  *(a3 + 40) = v4;
  *a3 = 0;
  for (i = v4; ; ++i)
  {
    v10 = v3[i];
    if (SLChar::sCharClass[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)] == 2)
    {
      continue;
    }

    if (v10 != *(result + 2))
    {
      break;
    }

    v11 = v3[i + 1];
    if (SLChar::sCharClass[v11 & 0x3F | (SLChar::sUniMap[v11 >> 6] << 6)] != 2)
    {
      break;
    }

    *a3 = 1;
    ++i;
  }

  *(a3 + 48) = i - v4;
  v12 = &v3[i];
  v13 = i - 1;
  do
  {
    v15 = *v12++;
    v14 = v15;
    ++v13;
  }

  while (SLChar::sCharClass[v15 & 0x3F | (SLChar::sUniMap[v15 >> 6] << 6)] == 5);
  if (v14)
  {
    v16 = 0;
    *(a3 + 56) = v13;
    do
    {
      v17 = *v12++;
      ++v16;
    }

    while (v17);
    *(a3 + 64) = v16;
  }

  else
  {
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SLAgglomerate::Create(SLAgglomerate *this, const __CFLocale *a2, SLDictionary *a3)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreateAgglomerateEng(a2);
  }

  SLAgglomerate::Create();
}

void SLAgglomerate::SLAgglomerate(SLAgglomerate *this, SLDictionary *a2)
{
  *this = &unk_287BD5140;
  *(this + 1) = a2;
}

{
  *this = &unk_287BD5140;
  *(this + 1) = a2;
}

uint64_t SLAgglomerate::Lookup(SLAgglomerate *this, const char *a2, unint64_t a3, unint64_t a4, BOOL a5, SLTokenList *a6)
{
  if (a4 < 2)
  {
    return 0;
  }

  v12 = 3;
  do
  {
    result = SLAgglomerate::LookupWords(this, a2, a3, v12 - 1, a5, a6);
    if (result)
    {
      break;
    }
  }

  while (v12++ <= a4);
  return result;
}

uint64_t SLAgglomerate::LookupWords(SLAgglomerate *this, const char *a2, unint64_t a3, uint64_t a4, BOOL a5, SLTokenList *a6)
{
  if (a3 >= 4 && 32 * a4 >= a3)
  {
    operator new();
  }

  return 0;
}

void sub_26B2FF2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  (*(*v6 + 16))(v6);
  SLTokenBuilder::~SLTokenBuilder(va);
  SLTokenBuilder::~SLTokenBuilder(va1);
  _Unwind_Resume(a1);
}

BOOL SLAgglomerateEng::VetWord(SLAgglomerateEng *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) == v2)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = SLWordTagSet::find((*(v2 + 8 * v4) + 4), 68);
    if (v5)
    {
      break;
    }

    ++v4;
    v2 = *(a2 + 10);
  }

  while (v4 < (*(a2 + 11) - v2) >> 3);
  return !v5;
}

uint64_t SLAgglomerateEng::VetLastWord(SLAgglomerateEng *this, SLToken *a2)
{
  if ((((*(a2 + 8) - *(a2 + 7)) >> 1) - 1) < 3)
  {
    return 0;
  }

  v4 = *(a2 + 10);
  if (*(a2 + 11) == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(v4 + 8 * v5);
    v9 = *v7;
    v8 = (v7 + 1);
    v6 |= v9;
    if (SLWordTagSet::find(v8, 64) && SLWordTagSet::find(v8, 66))
    {
      break;
    }

    if (SLWordTagSet::find(v8, 68))
    {
      break;
    }

    ++v5;
    v4 = *(a2 + 10);
    if (v5 >= (*(a2 + 11) - v4) >> 3)
    {
      v10 = 1;
      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_11:
  if ((v6 & 0x953FF) != 0)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void SLAgglomerateEng::~SLAgglomerateEng(SLAgglomerateEng *this)
{
  SLAgglomerate::~SLAgglomerate(this);

  JUMPOUT(0x26D6753C0);
}

float SLPhonTranslatorImpl::Match(SLPhonTranslatorImpl *this, uint64_t a2, const void *a3, uint64_t a4, const void *a5, unint64_t *a6, unint64_t *a7)
{
  memset(v34, 0, 24);
  memset(__p, 0, 24);
  *&v28 = a2;
  *(&v28 + 1) = a3;
  v29 = a4;
  v30 = a5;
  v32 = 0;
  v31 = 1065353216;
  std::vector<SLPhonTranslatorImpl::Hypothesis>::push_back[abi:ne200100](v34, &v28);
  while (1)
  {
    matched = SLPhonTranslatorImpl::MatchIteration(this, v34, __p);
    v13 = __p[0];
    if (!matched)
    {
      break;
    }

    v14 = *&v34[1];
    v15 = *&__p[1];
    v16 = v34[0];
    *&v34[0] = __p[0];
    *__p = v16;
    *(v34 + 8) = v15;
    __p[2] = v14;
  }

  v17 = __p[1];
  if (__p[1] == __p[0])
  {
    v20 = *(&v34[0] + 1);
    v19 = *&v34[0];
    *a6 = a2 - **&v34[0];
    v21 = a4 - v19[2];
    *a7 = v21;
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 4);
    if (v22 >= 2)
    {
      v23 = v22 - 1;
      v24 = v19 + 8;
      do
      {
        v25 = a2 - *(v24 - 2);
        v26 = a4 - *v24;
        if (v26 > v21 || v26 == v21 && v25 > *a6)
        {
          *a6 = v25;
          *a7 = v26;
          v21 = v26;
        }

        v24 += 6;
        --v23;
      }

      while (v23);
    }

    v18 = 0.0;
    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = *(__p[0] + 8);
  }

  __p[1] = v13;
  operator delete(v13);
  v19 = *&v34[0];
  if (*&v34[0])
  {
LABEL_15:
    *(&v34[0] + 1) = v19;
    operator delete(v19);
  }

  return v18;
}

void sub_26B2FF784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SLPhonTranslatorImpl::Hypothesis>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLPhonTranslatorImpl::Hypothesis>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

uint64_t SLPhonTranslatorImpl::MatchIteration(void *a1, uint64_t *a2, void *a3)
{
  a3[1] = *a3;
  v3 = *a2;
  if (a2[1] == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v3 + 48 * v8;
      if (*v9 | *(v9 + 16))
      {
        if (*v9)
        {
          v10 = **(v9 + 8);
        }

        else
        {
          v10 = 255;
        }

        if (a1[2] > v10)
        {
          v11 = (a1[3] + 2 * v10);
          if (*v11 < v11[1])
          {
            v12 = *v11;
            v13 = 16 * v12;
            v14 = (16 * v12) | 4;
            do
            {
              v15 = 0;
              v16 = *(v9 + 32);
              v17 = *v9;
              v29 = *(v9 + 16);
              v30 = v16;
              v28 = v17;
              v18 = a1[1];
              v19 = v18 + 16 * v12;
              v20 = *(&v17 + 1) + 1;
              v21 = v17 - 1;
              v22 = v18 + v13;
              do
              {
                if (*(v22 + v15) == 255)
                {
                  break;
                }

                if (v21 == -1)
                {
                  goto LABEL_25;
                }

                *(&v28 + 1) = v20;
                if (*(v20 - 1) != *(v22 + v15))
                {
                  goto LABEL_25;
                }

                *&v28 = v21;
                ++v15;
                ++v20;
                --v21;
              }

              while (v15 != 4);
              v23 = 0;
              v24 = *(&v29 + 1) + 1;
              v25 = v29 - 1;
              v26 = v18 + v14;
              do
              {
                if (*(v26 + v23) == 255)
                {
                  break;
                }

                if (v25 == -1)
                {
                  goto LABEL_25;
                }

                *(&v29 + 1) = v24;
                if (*(v24 - 1) != *(v26 + v23))
                {
                  goto LABEL_25;
                }

                *&v29 = v25;
                ++v23;
                ++v24;
                --v25;
              }

              while (v23 != 4);
              *&v30 = *(v19 + 8) * *&v30;
              if (*&v30 > 0.0)
              {
                PushMatchHypothesis(a3, &v28);
                if (v28)
                {
                  v7 = 1;
                }

                else
                {
                  v7 |= v29 != 0;
                }
              }

LABEL_25:
              ++v12;
              v13 += 16;
              v14 += 16;
            }

            while (v12 < *(a1[3] + 2 * v10 + 2));
          }
        }
      }

      else
      {
        PushMatchHypothesis(a3, v9);
      }

      ++v8;
      v3 = *a2;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }

  return v7 & 1;
}

float SLPhonTranslatorImpl::Match(SLPhonTranslatorImpl *this, SLToken *a2, uint64_t a3, const void *a4, unint64_t *a5, float *a6, unint64_t *a7, unint64_t *a8)
{
  memset(v58, 0, 24);
  memset(__p, 0, 24);
  v13 = SLTokenCountHomographs(a2);
  bzero(a6, 4 * v13);
  __src = 0;
  v55 = 0;
  v56 = 0;
  if (v13)
  {
    v14 = 0;
    v49 = a3;
    do
    {
      Homograph = SLTokenGetHomograph(a2, v14);
      Phonemes = SLHomographGetPhonemes(Homograph);
      Length = CFDataGetLength(Phonemes);
      v53 = 0;
      v52 = 0u;
      v51 = 0u;
      v50 = Length;
      *&v51 = CFDataGetBytePtr(Phonemes);
      *(&v51 + 1) = a3;
      *&v52 = a4;
      DWORD2(v52) = 1065353216;
      v53 = v14;
      v18 = v55;
      if (v55 >= v56)
      {
        v20 = __src;
        v21 = v55 - __src;
        v22 = (v55 - __src) >> 3;
        v23 = v22 + 1;
        if ((v22 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v24 = v56 - __src;
        if ((v56 - __src) >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
        v26 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v25)
        {
          v26 = v23;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v26);
        }

        *(8 * v22) = Length;
        v19 = 8 * v22 + 8;
        memcpy(0, v20, v21);
        v27 = __src;
        __src = 0;
        v55 = v19;
        v56 = 0;
        if (v27)
        {
          operator delete(v27);
        }

        a3 = v49;
      }

      else
      {
        *v55 = Length;
        v19 = (v18 + 8);
      }

      v55 = v19;
      std::vector<SLPhonTranslatorImpl::Hypothesis>::push_back[abi:ne200100](v58, &v50);
      ++v14;
    }

    while (v13 != v14);
  }

  while (1)
  {
    matched = SLPhonTranslatorImpl::MatchIteration(this, v58, __p);
    v32 = __p[0];
    if (!matched)
    {
      break;
    }

    v28 = *&v58[1];
    v29 = *&__p[1];
    v30 = v58[0];
    *&v58[0] = __p[0];
    *__p = v30;
    *(v58 + 8) = v29;
    __p[2] = v28;
  }

  if (__p[1] == __p[0])
  {
    v38 = v58[0];
    v39 = __src;
    *a7 = *(__src + *(*&v58[0] + 40)) - **&v58[0];
    *a8 = a3 - *(v38 + 16);
    *a5 = *(v38 + 40);
    v40 = 0xAAAAAAAAAAAAAAABLL * ((*(&v38 + 1) - v38) >> 4);
    v35 = 0.0;
    if (v40 >= 2)
    {
      v41 = v40 - 1;
      v42 = (v38 + 88);
      do
      {
        v43 = v39[*v42] - *(v42 - 5);
        v44 = a3 - *(v42 - 3);
        if (v44 > *a8 || v44 == *a8 && v43 > *a7)
        {
          *a7 = v43;
          *a8 = v44;
          *a5 = *v42;
        }

        v42 += 6;
        --v41;
      }

      while (v41);
    }
  }

  else
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 4);
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = (__p[0] + 40);
    v35 = -1000000.0;
    do
    {
      v36 = *(v34 - 2);
      v37 = *v34;
      a6[*v34] = v36;
      if (v36 > v35)
      {
        *a5 = v37;
        v35 = v36;
      }

      v34 += 12;
      --v33;
    }

    while (v33);
  }

  if (__src)
  {
    v55 = __src;
    operator delete(__src);
    v32 = __p[0];
  }

  if (v32)
  {
    __p[1] = v32;
    operator delete(v32);
  }

  if (*&v58[0])
  {
    *(&v58[0] + 1) = *&v58[0];
    operator delete(*&v58[0]);
  }

  return v35;
}

void sub_26B2FFE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void SLPhonTranslatorImpl::Map(SLPhonTranslatorImpl *this, uint64_t a2, const void *a3, unint64_t a4, void *a5)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v9 = 0uLL;
  v10 = 0;
  v5 = a2;
  v6 = a3;
  v8 = 0;
  v7 = 0;
  operator new[]();
}

void sub_26B300000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLPhonTranslatorImpl::MapIteration(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  a3[1] = *a3;
  v4 = *a2;
  if (a2[1] == *a2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v5 = a4;
    v6 = a2;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v4 + 48 * v9;
      v41 = 1;
      if (*v10)
      {
        v11 = **(v10 + 8);
        if (a1[2] > v11)
        {
          v12 = a1[3];
          v13 = (v12 + 2 * v11);
          if (*v13 >= v13[1])
          {
            v17 = 1;
          }

          else
          {
            v14 = *v13;
            v15 = 16 * v14;
            v16 = (16 * v14) | 4;
            v17 = 1;
            do
            {
              v18 = 0;
              v19 = *(v10 + 32);
              v20 = *v10;
              v39 = *(v10 + 16);
              *v40 = v19;
              v38 = v20;
              v21 = a1[1];
              v22 = *(&v20 + 1) + 1;
              v23 = v20 - 1;
              v24 = v21 + v15;
              do
              {
                if (*(v24 + v18) == 255)
                {
                  break;
                }

                if (v23 == -1)
                {
                  goto LABEL_22;
                }

                *(&v38 + 1) = v22;
                if (*(v22 - 1) != *(v24 + v18))
                {
                  goto LABEL_22;
                }

                *&v38 = v23;
                ++v18;
                ++v22;
                --v23;
              }

              while (v18 != 4);
              v40[0] = v40[0] * (*(v21 + 16 * v14 + 8) * 0.999);
              if (v40[0] > 0.0)
              {
                if ((v17 & 1) == 0)
                {
                  operator new[]();
                }

                v25 = *(&v39 + 1);
                for (i = 0; i != 4; ++i)
                {
                  v27 = *(v21 + v16 + i);
                  if (v27 == 255)
                  {
                    break;
                  }

                  v28 = v39;
                  *&v39 = v39 + 1;
                  *(v25 + v28) = v27;
                }

                v42 = 1;
                v5 = a4;
                v29 = PushMapHypothesis(a3, &v38, a4, &v42);
                if (v42 == 1 && *(&v39 + 1))
                {
                  MEMORY[0x26D6753A0](*(&v39 + 1), 0x1000C8077774924, v29);
                }

                v17 = 0;
                v8 |= v38 != 0;
                v12 = a1[3];
              }

LABEL_22:
              ++v14;
              v15 += 16;
              v16 += 16;
            }

            while (v14 < *(v12 + 2 * v11 + 2));
          }

          v41 = v17;
          v6 = a2;
        }

        v31 = *(v10 + 32);
        v32 = *v10;
        v39 = *(v10 + 16);
        *v40 = v31;
        *&v38 = v32 - 1;
        *(&v38 + 1) = *(&v32 + 1) + 1;
        v40[0] = *&v31 * 0.5;
        v30.n128_f32[0] = PushMapHypothesis(a3, &v38, v5, &v41);
        v8 |= v38 != 0;
      }

      else
      {
        v30.n128_f32[0] = PushMapHypothesis(a3, v10, v5, &v41);
      }

      if (v41 == 1)
      {
        v33 = *(v10 + 24);
        if (v33)
        {
          MEMORY[0x26D6753A0](v33, 0x1000C8077774924, v30);
        }
      }

      ++v9;
      v4 = *v6;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4));
  }

  return v8 & 1;
}

void PushMatchHypothesis(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8) - *a1;
  if (v2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 4);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = *a1 + 32;
    while (*(v4 - 32) != *a2 || *(v4 - 16) != *(a2 + 2) || *(v4 + 8) != *(a2 + 5))
    {
      v4 += 48;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    v5 = *v4;
    if (*v4 < *(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    *v4 = v5;
  }

  else
  {
LABEL_9:
    std::vector<SLPhonTranslatorImpl::Hypothesis>::push_back[abi:ne200100](a1, a2);
  }
}

float PushMapHypothesis(void *a1, __int128 *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[1] - *a1;
  if (v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = (*a1 + 32);
    while (*(v8 - 4) != *a2)
    {
      v8 += 12;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    result = *v8;
    if (*v8 < *(a2 + 8))
    {
      v11 = *(a2 + 2);
      v10 = *(a2 + 3);
      *(v8 - 2) = v11;
      memcpy(*(v8 - 1), v10, v11);
      result = *(a2 + 8);
      *v8 = result;
    }
  }

  else
  {
LABEL_7:
    if ((*a4 & 1) == 0)
    {
      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      operator new[]();
    }

    std::vector<SLPhonTranslatorImpl::Hypothesis>::push_back[abi:ne200100](a1, a2);
    *a4 = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLPhonTranslatorImpl::Hypothesis>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t SLLexerImpl::NextLiteralToken(SLLexerImpl *this)
{
  v2 = *(this + 3);
LABEL_2:
  *(this + 8) = v2;
  if ((*(this + 5) - v2) <= 21)
  {
    SLLexerInstance::Refill(this);
    v2 = *(this + 3);
  }

  v3 = SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2;
  if (v3 > 0x2049u)
  {
    if (HIBYTE(v3) <= 0x24u)
    {
      v7 = v3 >> 2;
      if (v7 > 0x8C6)
      {
        if (v7 > 0x8FC)
        {
          if (v3 > 0x23FAu)
          {
            if (v3 != 9410)
            {
              goto LABEL_110;
            }
          }

          else if ((v3 >> 3) < 0x47Fu)
          {
            goto LABEL_110;
          }
        }

        else if (v3 != 9000 && v3 < 0x23E9u)
        {
          goto LABEL_110;
        }
      }

      else if (v3 > 0x2199u)
      {
        if (v3 < 0x21A9u || (v3 - 8619) < 0x16Fu)
        {
          goto LABEL_110;
        }
      }

      else if (v3 != 8505 && v7 < 0x865)
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }

    if (HIBYTE(v3) <= 0x32u)
    {
      if (v3 > 0x26F9u)
      {
        if (v3 > 0x270Du)
        {
          if (v3 == 10084)
          {
            goto LABEL_104;
          }

          goto LABEL_109;
        }

        if (v3 < 0x270Au)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v8 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
        if (v8 != 9757 && v8 != 9977)
        {
          goto LABEL_109;
        }
      }

      v25 = v2 + 1;
      v26 = v2[1];
      *(this + 3) = v2 + 1;
      *(this + 6) = v2 + 1;
      if ((SLChar::sLexFold[v26 & 0x3F | (SLChar::sUniMap[v26 >> 6] << 6)] + v26) != 55356)
      {
LABEL_116:
        v33 = this;
LABEL_117:

        SLLexerInstance::CreateToken(v33);
      }

      v28 = v2[2];
      v2 += 2;
      v27 = v28;
LABEL_90:
      *(this + 3) = v2;
      if ((v27 + 8197 + SLChar::sLexFold[v27 & 0x3F | (SLChar::sUniMap[v27 >> 6] << 6)]) >= 5u)
      {
LABEL_91:
        *(this + 3) = v25;
        goto LABEL_116;
      }

LABEL_109:
      v30 = v2 + 1;
      goto LABEL_115;
    }

    if (v3 > 0xD83Du)
    {
      if ((v3 >> 9) > 0x6Eu)
      {
        if (((v3 + 0x2000) >> 8) >= 0x19u)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      if ((v3 >> 10) >= 0x37u)
      {
        v35 = v2[1];
        v34 = v2 + 1;
        *(this + 3) = v34;
        v18 = v34;
        if ((SLChar::sLexFold[v35 & 0x3F | (SLChar::sUniMap[v35 >> 6] << 6)] + v35) >> 10 != 55)
        {
          goto LABEL_111;
        }

        goto LABEL_114;
      }
    }

    else
    {
      if ((v3 >> 11) < 0x1Bu)
      {
        goto LABEL_110;
      }

      if (v3 >= 0xD83Cu)
      {
        v15 = v2[1];
        *(this + 3) = v2 + 1;
        v16 = SLChar::sLexFold[v15 & 0x3F | (SLChar::sUniMap[v15 >> 6] << 6)] + v15;
        if (v3 == 55357)
        {
          if (v16 <= 0xDC87u)
          {
            if (v16 <= 0xDC69u)
            {
              if (v16 <= 0xDC45u)
              {
                if (v16 <= 0xDC40u)
                {
                  if ((v16 >> 10) < 0x37u)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_98;
                }

                if (v16 == 56385)
                {
                  v25 = v2 + 2;
                  v43 = v2[2];
                  *(this + 3) = v2 + 2;
                  *(this + 6) = v2 + 2;
                  if ((SLChar::sLexFold[v43 & 0x3F | (SLChar::sUniMap[v43 >> 6] << 6)] + v43) != 8205)
                  {
                    goto LABEL_116;
                  }

                  v44 = v2[3];
                  *(this + 3) = v2 + 3;
                  if ((SLChar::sLexFold[v44 & 0x3F | (SLChar::sUniMap[v44 >> 6] << 6)] + v44) != 55357)
                  {
                    goto LABEL_91;
                  }

                  v46 = v2[4];
                  v45 = v2 + 4;
                  *(this + 3) = v45;
                  v47 = SLChar::sLexFold[v46 & 0x3F | (SLChar::sUniMap[v46 >> 6] << 6)] + v46;
                  v48 = 56808;
LABEL_158:
                  v49 = v48 == v47;
                  goto LABEL_159;
                }

                v38 = 56388;
LABEL_189:
                if (v38 > v16)
                {
                  goto LABEL_190;
                }

LABEL_98:
                v30 = v2 + 2;
LABEL_115:
                *(this + 3) = v30;
                goto LABEL_116;
              }

              if (v16 <= 0xDC65u)
              {
                v38 = 56401;
                goto LABEL_189;
              }

              if (v16 < 0xDC68u)
              {
                goto LABEL_190;
              }

              v25 = v2 + 2;
              v50 = v2[2];
              *(this + 3) = v2 + 2;
              *(this + 6) = v2 + 2;
              v51 = SLChar::sLexFold[v50 & 0x3F | (SLChar::sUniMap[v50 >> 6] << 6)] + v50;
              if (v16 == 56425)
              {
                v52 = v51;
                if (v51 == 8205)
                {
                  v53 = v2[3];
                  *(this + 3) = v2 + 3;
                  v54 = (SLChar::sLexFold[v53 & 0x3F | (SLChar::sUniMap[v53 >> 6] << 6)] + v53);
                  if (v54 != 10084)
                  {
                    if (v54 != 55357)
                    {
                      goto LABEL_91;
                    }

                    v55 = v2[4];
                    *(this + 3) = v2 + 4;
                    if ((SLChar::sLexFold[v55 & 0x3F | (SLChar::sUniMap[v55 >> 6] << 6)] + v55) != 56425)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_198;
                  }

                  goto LABEL_205;
                }
              }

              else
              {
                v52 = v51;
                if (v51 == 8205)
                {
                  v64 = v2[3];
                  *(this + 3) = v2 + 3;
                  v65 = (SLChar::sLexFold[v64 & 0x3F | (SLChar::sUniMap[v64 >> 6] << 6)] + v64);
                  if (v65 != 10084)
                  {
                    if (v65 != 55357)
                    {
                      goto LABEL_91;
                    }

                    v66 = v2[4];
                    *(this + 3) = v2 + 4;
                    v67 = v66 + 9110 + SLChar::sLexFold[v66 & 0x3F | (SLChar::sUniMap[v66 >> 6] << 6)];
                    if (v67 != 65534 && v67 != 0xFFFF)
                    {
                      goto LABEL_91;
                    }

LABEL_198:
                    v68 = v2[5];
                    *(this + 3) = v2 + 5;
                    if ((SLChar::sLexFold[v68 & 0x3F | (SLChar::sUniMap[v68 >> 6] << 6)] + v68) != 8205)
                    {
                      goto LABEL_91;
                    }

                    v69 = v2[6];
                    *(this + 3) = v2 + 6;
                    if ((SLChar::sLexFold[v69 & 0x3F | (SLChar::sUniMap[v69 >> 6] << 6)] + v69) != 55357)
                    {
                      goto LABEL_91;
                    }

                    v70 = v2[7];
                    *(this + 3) = v2 + 7;
                    v71 = SLChar::sLexFold[v70 & 0x3F | (SLChar::sUniMap[v70 >> 6] << 6)] + v70;
                    if (v71 < 0xDC66u)
                    {
                      goto LABEL_91;
                    }

                    if (v71 == 56422)
                    {
                      v25 = v2 + 8;
                      v72 = v2[8];
                      *(this + 3) = v2 + 8;
                      *(this + 6) = v2 + 8;
                      if ((SLChar::sLexFold[v72 & 0x3F | (SLChar::sUniMap[v72 >> 6] << 6)] + v72) != 8205)
                      {
                        goto LABEL_116;
                      }

                      v73 = v2[9];
                      *(this + 3) = v2 + 9;
                      if ((SLChar::sLexFold[v73 & 0x3F | (SLChar::sUniMap[v73 >> 6] << 6)] + v73) != 55357)
                      {
                        goto LABEL_91;
                      }

                      v74 = v2[10];
                      v45 = v2 + 10;
                      *(this + 3) = v45;
                      v47 = SLChar::sLexFold[v74 & 0x3F | (SLChar::sUniMap[v74 >> 6] << 6)] + v74;
                      v48 = 56422;
                      goto LABEL_158;
                    }

                    if (v71 >= 0xDC68u)
                    {
                      goto LABEL_91;
                    }

                    v25 = v2 + 8;
                    v85 = v2[8];
                    *(this + 3) = v2 + 8;
                    *(this + 6) = v2 + 8;
                    if ((SLChar::sLexFold[v85 & 0x3F | (SLChar::sUniMap[v85 >> 6] << 6)] + v85) != 8205)
                    {
                      goto LABEL_116;
                    }

                    v86 = v2[9];
                    *(this + 3) = v2 + 9;
                    if ((SLChar::sLexFold[v86 & 0x3F | (SLChar::sUniMap[v86 >> 6] << 6)] + v86) != 55357)
                    {
                      goto LABEL_91;
                    }

                    v87 = v2[10];
                    v45 = v2 + 10;
                    *(this + 3) = v45;
                    v83 = (SLChar::sLexFold[v87 & 0x3F | (SLChar::sUniMap[v87 >> 6] << 6)] + v87) & 0xFFFE;
                    v84 = 28211;
LABEL_218:
                    v49 = v84 == v83 >> 1;
LABEL_159:
                    v18 = v45;
                    if (v49)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_91;
                  }

LABEL_205:
                  v75 = v2[4];
                  *(this + 3) = v2 + 4;
                  if ((SLChar::sLexFold[v75 & 0x3F | (SLChar::sUniMap[v75 >> 6] << 6)] + v75) != 65039)
                  {
                    goto LABEL_91;
                  }

                  v76 = v2[5];
                  *(this + 3) = v2 + 5;
                  if ((SLChar::sLexFold[v76 & 0x3F | (SLChar::sUniMap[v76 >> 6] << 6)] + v76) != 8205)
                  {
                    goto LABEL_91;
                  }

                  v77 = v2[6];
                  *(this + 3) = v2 + 6;
                  if ((SLChar::sLexFold[v77 & 0x3F | (SLChar::sUniMap[v77 >> 6] << 6)] + v77) != 55357)
                  {
                    goto LABEL_91;
                  }

                  v18 = v2 + 7;
                  v78 = v2[7];
                  *(this + 3) = v2 + 7;
                  v79 = SLChar::sLexFold[v78 & 0x3F | (SLChar::sUniMap[v78 >> 6] << 6)] + v78;
                  if (v79 < 0xDC68u)
                  {
                    goto LABEL_91;
                  }

                  if (v79 < 0xDC6Au)
                  {
                    goto LABEL_114;
                  }

                  if (v79 != 56459)
                  {
                    goto LABEL_91;
                  }

                  v80 = v2[8];
                  *(this + 3) = v2 + 8;
                  if ((SLChar::sLexFold[v80 & 0x3F | (SLChar::sUniMap[v80 >> 6] << 6)] + v80) != 8205)
                  {
                    goto LABEL_91;
                  }

                  v81 = v2[9];
                  *(this + 3) = v2 + 9;
                  if ((SLChar::sLexFold[v81 & 0x3F | (SLChar::sUniMap[v81 >> 6] << 6)] + v81) != 55357)
                  {
                    goto LABEL_91;
                  }

                  v82 = v2[10];
                  v45 = v2 + 10;
                  *(this + 3) = v45;
                  v83 = (SLChar::sLexFold[v82 & 0x3F | (SLChar::sUniMap[v82 >> 6] << 6)] + v82) & 0xFFFE;
                  v84 = 28212;
                  goto LABEL_218;
                }
              }

              if (v52 != 55356)
              {
                goto LABEL_116;
              }

LABEL_191:
              v63 = v2[3];
              v2 += 3;
              v27 = v63;
              goto LABEL_90;
            }

            if (v16 <= 0xDC7Bu)
            {
              v36 = v16 == 56430;
              if (v16 > 0xDC6Eu)
              {
                if (v16 == 56431)
                {
                  goto LABEL_98;
                }

                v38 = 56441;
                goto LABEL_189;
              }

              goto LABEL_164;
            }

            if (v16 <= 0xDC80u)
            {
              v37 = 56444;
              goto LABEL_163;
            }

            if (v16 == 56452)
            {
              goto LABEL_98;
            }

LABEL_190:
            v25 = v2 + 2;
            v62 = v2[2];
            *(this + 3) = v2 + 2;
            *(this + 6) = v2 + 2;
            if ((SLChar::sLexFold[v62 & 0x3F | (SLChar::sUniMap[v62 >> 6] << 6)] + v62) != 55356)
            {
              goto LABEL_116;
            }

            goto LABEL_191;
          }

          if (v16 <= 0xDE47u)
          {
            if ((v16 >> 4) <= 0xDD8u)
            {
              v36 = v16 == 56490;
              if (v16 <= 0xDCAAu)
              {
                goto LABEL_164;
              }

              v37 = 56693;
LABEL_163:
              v36 = v37 == v16;
LABEL_164:
              if (!v36)
              {
                goto LABEL_98;
              }

              goto LABEL_190;
            }

            if (v16 <= 0xDD94u)
            {
              v37 = 56720;
              goto LABEL_163;
            }

            if (v16 < 0xDD97u)
            {
              goto LABEL_190;
            }

            v42 = 56901;
LABEL_176:
            if (v42 > v16)
            {
              goto LABEL_98;
            }

            goto LABEL_190;
          }

          if (v16 <= 0xDEB3u)
          {
            if ((v16 >> 4) > 0xDE4u)
            {
              v37 = 56995;
              goto LABEL_163;
            }

            v42 = 56907;
            goto LABEL_176;
          }

          if ((v16 >> 6) <= 0x37Au)
          {
            v38 = 57015;
            goto LABEL_189;
          }

          if (v16 == 57024)
          {
            v25 = v2 + 2;
            v56 = v2[2];
            *(this + 3) = v2 + 2;
            *(this + 6) = v2 + 2;
            if ((SLChar::sLexFold[v56 & 0x3F | (SLChar::sUniMap[v56 >> 6] << 6)] + v56) != 55356)
            {
              goto LABEL_116;
            }

            v57 = v2[3];
            *(this + 3) = v2 + 3;
            if ((v57 + SLChar::sLexFold[v57 & 0x3F | (SLChar::sUniMap[v57 >> 6] << 6)] + 0x2000) >= 0xFFFBu)
            {
              v58 = v2[4];
              *(this + 3) = v2 + 4;
              if ((SLChar::sLexFold[v58 & 0x3F | (SLChar::sUniMap[v58 >> 6] << 6)] + v58) == 55358)
              {
                v59 = v2[5];
                *(this + 3) = v2 + 5;
                if ((SLChar::sLexFold[v59 & 0x3F | (SLChar::sUniMap[v59 >> 6] << 6)] + v59) == 56600)
                {
                  v60 = v2[6];
                  *(this + 3) = v2 + 6;
                  if ((SLChar::sLexFold[v60 & 0x3F | (SLChar::sUniMap[v60 >> 6] << 6)] + v60) == 55356)
                  {
                    v61 = v2[7];
                    v2 += 7;
                    *(this + 3) = v2;
                    if ((v61 + SLChar::sLexFold[v61 & 0x3F | (SLChar::sUniMap[v61 >> 6] << 6)] + 0x2000) >= 0xFFFBu)
                    {
                      goto LABEL_109;
                    }
                  }
                }
              }
            }

            goto LABEL_91;
          }
        }

        else
        {
          if (v16 <= 0xDF85u)
          {
            if (v16 <= 0xDDE5u)
            {
              if ((v16 >> 10) <= 0x36u)
              {
                goto LABEL_111;
              }

              goto LABEL_98;
            }

            if ((v16 >> 9) < 0x6Fu)
            {
              v25 = v2 + 2;
              v39 = v2[2];
              *(this + 3) = v2 + 2;
              *(this + 6) = v2 + 2;
              if ((SLChar::sLexFold[v39 & 0x3F | (SLChar::sUniMap[v39 >> 6] << 6)] + v39) != 55356)
              {
                goto LABEL_116;
              }

              v41 = v2[3];
              v40 = v2 + 3;
              *(this + 3) = v40;
              v18 = v40;
              if ((v41 + 8730 + SLChar::sLexFold[v41 & 0x3F | (SLChar::sUniMap[v41 >> 6] << 6)]) < 0x1Au)
              {
                goto LABEL_114;
              }

              goto LABEL_91;
            }

            v37 = 57221;
            goto LABEL_163;
          }

          if (v16 <= 0xDFC9u)
          {
            if ((v16 + 8253) >= 2u)
            {
              goto LABEL_98;
            }

            goto LABEL_190;
          }

          if (v16 < 0xDFCCu)
          {
            goto LABEL_190;
          }
        }

        if ((SLChar::sLexFold[v15 & 0x3F | (SLChar::sUniMap[v15 >> 6] << 6)] + v15) >= 0xE000u)
        {
          goto LABEL_111;
        }

        goto LABEL_98;
      }
    }

    v29 = v2[1];
    *(this + 3) = v2 + 1;
    if ((SLChar::sLexFold[v29 & 0x3F | (SLChar::sUniMap[v29 >> 6] << 6)] + v29) >> 10 != 55)
    {
      goto LABEL_111;
    }

    goto LABEL_98;
  }

  v4 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
  if (v4 > 0x7A)
  {
    if (v4 <= 0xDF)
    {
      if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) > 0xB0u)
      {
        v17 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
        if (v17 > 0xC0)
        {
          if (v17 != 198)
          {
            goto LABEL_110;
          }
        }

        else if (v17 != 192)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (v3 == 160)
        {
          goto LABEL_19;
        }

        if (v3 != 176)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_102;
    }

    if (v3 <= 0x202Eu)
    {
      v23 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
      if (v23 != 224 && v23 != 230)
      {
        goto LABEL_110;
      }

      goto LABEL_102;
    }

    if ((v3 >> 2) <= 0x80Eu)
    {
      if (v3 != 8239)
      {
        goto LABEL_110;
      }

LABEL_19:
      *(this + 3) = ++v2;
      while (1)
      {
        v6 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
        if (v6 > 0x20)
        {
          if (v6 > 0xA0)
          {
            if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) != 8239)
            {
              goto LABEL_2;
            }
          }

          else if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) != 160)
          {
            goto LABEL_2;
          }
        }

        else if (v6 != 9 && v6 != 32)
        {
          goto LABEL_2;
        }

        *(this + 3) = ++v2;
        if (*(this + 5) == v2)
        {
          SLLexerInstance::Refill(this);
          v2 = *(this + 3);
        }
      }
    }

    v24 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
    if (v24 != 8252 && v24 != 8265)
    {
      goto LABEL_110;
    }

LABEL_104:
    v32 = v2[1];
    v31 = v2 + 1;
    *(this + 3) = v31;
    v18 = v31;
    if ((SLChar::sLexFold[v32 & 0x3F | (SLChar::sUniMap[v32 >> 6] << 6)] + v32) != 65039)
    {
      goto LABEL_116;
    }

    goto LABEL_114;
  }

  if (v4 > 0x22)
  {
    v9 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
    if (v9 <= 0x2F)
    {
      if (v9 != 35 && v9 != 42)
      {
        goto LABEL_110;
      }

      v11 = v2 + 1;
      v10 = v2[1];
      *(this + 3) = v2 + 1;
      *(this + 6) = v2 + 1;
      v12 = (SLChar::sLexFold[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)] + v10);
      if (v12 != 8419)
      {
        if (v12 != 65039)
        {
          goto LABEL_111;
        }

LABEL_75:
        v22 = v2[2];
        v21 = v2 + 2;
        *(this + 3) = v21;
        v18 = v21;
        if ((SLChar::sLexFold[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] + v22) != 8419)
        {
          *(this + 3) = v11;
LABEL_111:
          v33 = this;
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      v18 = v2 + 1;
LABEL_114:
      v30 = v18 + 1;
      goto LABEL_115;
    }

    if (v9 <= 0x40)
    {
      if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) >= 0x3Au)
      {
        goto LABEL_110;
      }

      v18 = v2 + 1;
      v19 = v2[1];
      *(this + 3) = v2 + 1;
      *(this + 6) = v2 + 1;
      v20 = SLChar::sLexFold[v19 & 0x3F | (SLChar::sUniMap[v19 >> 6] << 6)] + v19;
      if (v20 == 8419)
      {
        goto LABEL_114;
      }

      v11 = v2 + 1;
      if (v20 == 65039)
      {
        goto LABEL_75;
      }

      while (v20 <= 0xB0u)
      {
        if (v20 > 0x5Au)
        {
          if (v20 < 0x61u)
          {
            goto LABEL_111;
          }

          if (v20 < 0x7Bu)
          {
            goto LABEL_219;
          }

          v89 = v20 == 176;
          goto LABEL_237;
        }

        if (v20 < 0x30u || (v20 - 58) < 7u)
        {
          goto LABEL_111;
        }

LABEL_219:
        *(this + 3) = ++v18;
        if (*(this + 5) == v18)
        {
          SLLexerInstance::Refill(this);
          v18 = *(this + 3);
        }

LABEL_221:
        v20 = SLChar::sLexFold[*v18 & 0x3F | (SLChar::sUniMap[*v18 >> 6] << 6)] + *v18;
      }

      if (v20 > 0xC6u)
      {
        v89 = v20 == 224;
        if (v20 > 0xE0u)
        {
          v89 = v20 == 230;
        }
      }

      else
      {
        if (v20 == 192)
        {
          goto LABEL_219;
        }

        v89 = v20 == 198;
      }

LABEL_237:
      if (!v89)
      {
        goto LABEL_111;
      }

      goto LABEL_219;
    }

    if ((v3 - 91) < 6u)
    {
      goto LABEL_110;
    }

LABEL_102:
    v18 = v2 + 1;
    *(this + 3) = v2 + 1;
    goto LABEL_221;
  }

  v5 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
  if (v5 > 0xF)
  {
    if (v5 != 32)
    {
      if (v5 == 16)
      {
        *(this + 3) = v2 + 1;
        v13 = *(this + 23);
        *(this + 24) = v13;
        *(this + 25) = v13;
        *(this + 23) = 1;
        *(this + 13) = *(this + 10);
        return 0;
      }

      goto LABEL_110;
    }

    goto LABEL_19;
  }

  if (v5 == 9)
  {
    goto LABEL_19;
  }

  if (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2)
  {
LABEL_110:
    *(this + 3) = v2 + 1;
    goto LABEL_111;
  }

  *(this + 23) &= ~0x10u;
  *(this + 3) = v2;
  return 0;
}

uint64_t SLLexerImpl::ScanFixed(unsigned __int16 **this, unsigned int *a2, unsigned int *a3, int a4)
{
  SLLexerImpl::SkipSpaces(this);
  v19 = 0;
  v6 = 0;
  v7 = 0;
  v8 = this[3];
  v9 = 16;
  v10 = 1;
  v11 = 1;
  while (2)
  {
    v12 = 0;
LABEL_3:
    for (i = v7; ; i = 1)
    {
      v7 = i;
      if (this[5] == v8)
      {
        SLLexerInstance::Refill(this);
        v8 = this[3];
      }

      v14 = *v8;
      v15 = (SLChar::sLexFold[v14 & 0x3F | (SLChar::sUniMap[v14 >> 6] << 6)] + v14);
      if (v15 <= 0x2C)
      {
        break;
      }

      if (v15 > 0x2E)
      {
        if (v15 == 47 || v15 >= 0x3A)
        {
          goto LABEL_28;
        }

        this[3] = ++v8;
        v16 = v14 - 48;
        if (v7)
        {
          v6 = v16 + 10 * v6;
          --v9;
          v12 = 1;
          v11 *= 5;
        }

        else
        {
          v19 = v16 + 10 * v19;
          v12 = 1;
        }

        goto LABEL_3;
      }

      if (v15 == 45)
      {
        goto LABEL_19;
      }

      this[3] = ++v8;
      if (v7)
      {
        return 0;
      }
    }

    if (v15 > 0xA)
    {
      if (v15 != 43)
      {
        goto LABEL_28;
      }
    }

    else if (v15 != 10)
    {
LABEL_28:
      this[3] = v8 + 1;
      if (v12)
      {
        this[3] = v8;
        *a2 = ((v6 << v9) / v11 + (v19 << 16)) * v10;
        return 1;
      }

      return 0;
    }

LABEL_19:
    this[3] = ++v8;
    if (v12)
    {
      return 0;
    }

    if (a4)
    {
      if (v14 == 45)
      {
        v10 = -1;
      }

      if (a3)
      {
        *a3 = 114;
      }

      continue;
    }

    break;
  }

  v12 = 0;
  result = 0;
  if (v14 != 45)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t SLLexerImpl::ScanWhole(unsigned __int16 **this, unsigned int *a2, int a3)
{
  SLLexerImpl::SkipSpaces(this);
  LOBYTE(result) = 0;
  v7 = 0;
  while (1)
  {
    if (result)
    {
      v8 = this[3];
      if (this[5] == v8)
      {
        SLLexerInstance::Refill(this);
        v8 = this[3];
      }

      v9 = *v8;
      if ((v9 + SLChar::sLexFold[v9 & 0x3F | (SLChar::sUniMap[v9 >> 6] << 6)] - 58) < 0xFFF6u)
      {
LABEL_155:
        this[3] = v8;
        goto LABEL_156;
      }

      v10 = 0;
      this[3] = v8 + 1;
      v11 = v9 + 10 * v7;
      goto LABEL_141;
    }

    v12 = this[3];
    v13 = v12;
    if (this[5] - v12 <= 11)
    {
      SLLexerInstance::Refill(this);
      v13 = this[3];
    }

    v14 = (SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13);
    if (v14 <= 0x2A)
    {
      break;
    }

    if (v14 - 49 < 9)
    {
      v15 = v13 + 1;
      this[3] = v13 + 1;
      goto LABEL_140;
    }

    if (v14 == 48)
    {
      v15 = v13 + 1;
      v34 = v13[1];
      this[3] = v13 + 1;
      this[6] = v13 + 1;
      if (((SLChar::sLexFold[v34 & 0x3F | (SLChar::sUniMap[v34 >> 6] << 6)] + v34) & 0xFFDF) != 0x58)
      {
        goto LABEL_140;
      }

      v35 = v13[2];
      this[3] = v13 + 2;
      v36 = SLChar::sLexFold[v35 & 0x3F | (SLChar::sUniMap[v35 >> 6] << 6)] + v35;
      if (v36 <= 0x40u)
      {
        if ((v36 - 58) < 0xFFF6u)
        {
          goto LABEL_78;
        }

        LOBYTE(result) = 0;
        goto LABEL_57;
      }

      v10 = 1;
      if (v36 < 0x47u)
      {
        LOBYTE(result) = 0;
        goto LABEL_142;
      }

      LOBYTE(result) = 0;
      if ((v36 - 103) < 0xFFFAu)
      {
LABEL_78:
        v27 = 0;
        goto LABEL_67;
      }
    }

    else
    {
      if (v14 != 43)
      {
        goto LABEL_35;
      }

      LOBYTE(result) = 0;
      v10 = 0;
      this[3] = v13 + 1;
    }

LABEL_142:
    if (v10)
    {
      v8 = this[3];
      while (1)
      {
        if (this[5] == v8)
        {
          SLLexerInstance::Refill(this);
          v8 = this[3];
        }

        v78 = *v8;
        v79 = SLChar::sLexFold[v78 & 0x3F | (SLChar::sUniMap[v78 >> 6] << 6)] + v78;
        if (v79 > 0x40u)
        {
          if (v79 >= 0x47u)
          {
            if ((v79 - 97) > 5u)
            {
              goto LABEL_155;
            }

            v80 = -87;
          }

          else
          {
            v80 = -55;
          }
        }

        else
        {
          if ((v79 - 58) < 0xFFF6u)
          {
            goto LABEL_155;
          }

          v80 = -48;
        }

        this[3] = ++v8;
        v7 = v80 + 16 * v7 + v78;
      }
    }
  }

  if (v14 == 34)
  {
    v15 = v13 + 1;
    v22 = v13[1];
    this[3] = v13 + 1;
    this[6] = v13 + 1;
    v23 = SLChar::sLexFold[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] + v22;
    if (v23 > 0x21u)
    {
      if (v23 == 34)
      {
        v15 = v13 + 2;
        v40 = v13[2];
        this[3] = v13 + 2;
        this[6] = v13 + 2;
        v41 = SLChar::sLexFold[v40 & 0x3F | (SLChar::sUniMap[v40 >> 6] << 6)] + v40;
        if (v41 <= 0x21u)
        {
          if (v41 < 0x20u)
          {
            goto LABEL_159;
          }

          v26 = v41;
          v27 = 2;
          goto LABEL_51;
        }

        if (v41 != 34)
        {
          v49 = v41;
          v27 = 2;
LABEL_111:
          if (v49 >= 0x7F)
          {
            goto LABEL_116;
          }

          goto LABEL_112;
        }

        goto LABEL_85;
      }

      if (v23 < 0x7Fu)
      {
LABEL_29:
        v24 = v13[2];
        this[3] = v13 + 2;
        v25 = SLChar::sLexFold[v24 & 0x3F | (SLChar::sUniMap[v24 >> 6] << 6)] + v24;
        if (v25 <= 0x21u)
        {
          if (v25 < 0x20u)
          {
            goto LABEL_66;
          }

          v26 = (SLChar::sLexFold[v24 & 0x3F | (SLChar::sUniMap[v24 >> 6] << 6)] + v24);
          v27 = 1;
LABEL_51:
          if (v26 != 33)
          {
LABEL_116:
            v64 = v13[3];
            this[3] = v13 + 3;
            v65 = (SLChar::sLexFold[v64 & 0x3F | (SLChar::sUniMap[v64 >> 6] << 6)] + v64);
            if (v65 < 0x20)
            {
              goto LABEL_67;
            }

            if (v65 != 34)
            {
              goto LABEL_135;
            }

LABEL_120:
            v15 = v13 + 4;
            v66 = v13[4];
            this[3] = v13 + 4;
            this[6] = v13 + 4;
            v67 = (SLChar::sLexFold[v66 & 0x3F | (SLChar::sUniMap[v66 >> 6] << 6)] + v66);
            if (v67 < 0x20)
            {
              goto LABEL_159;
            }

            if (v67 == 34)
            {
              goto LABEL_172;
            }

            v27 = 2;
            goto LABEL_137;
          }

LABEL_112:
          v62 = v13[3];
          this[3] = v13 + 3;
          v63 = SLChar::sLexFold[v62 & 0x3F | (SLChar::sUniMap[v62 >> 6] << 6)] + v62;
          if (v63 > 0x21u)
          {
            if (v63 == 34)
            {
              goto LABEL_120;
            }

            if ((SLChar::sLexFold[v62 & 0x3F | (SLChar::sUniMap[v62 >> 6] << 6)] + v62) >= 0x7Fu)
            {
LABEL_135:
              v75 = v13[4];
              this[3] = v13 + 4;
              v76 = (SLChar::sLexFold[v75 & 0x3F | (SLChar::sUniMap[v75 >> 6] << 6)] + v75);
              if (v76 >= 0x20)
              {
                if (v76 == 34)
                {
                  goto LABEL_172;
                }

LABEL_137:
                v77 = v13[5];
                this[3] = v13 + 5;
                if ((SLChar::sLexFold[v77 & 0x3F | (SLChar::sUniMap[v77 >> 6] << 6)] + v77) == 34)
                {
                  goto LABEL_173;
                }

                goto LABEL_138;
              }

LABEL_67:
              this[3] = v15;
              goto LABEL_139;
            }
          }

          else
          {
            if (v63 < 0x20u)
            {
              goto LABEL_67;
            }

            if ((SLChar::sLexFold[v62 & 0x3F | (SLChar::sUniMap[v62 >> 6] << 6)] + v62) != 33)
            {
              goto LABEL_135;
            }
          }

LABEL_132:
          v15 = v13 + 4;
          v73 = v13[4];
          this[3] = v13 + 4;
          this[6] = v13 + 4;
          v74 = (SLChar::sLexFold[v73 & 0x3F | (SLChar::sUniMap[v73 >> 6] << 6)] + v73);
          if (v74 < 0x20)
          {
            goto LABEL_174;
          }

          if (v74 == 34)
          {
LABEL_172:
            v15 = v13 + 5;
            v88 = v13[5];
            this[3] = v13 + 5;
            if ((SLChar::sLexFold[v88 & 0x3F | (SLChar::sUniMap[v88 >> 6] << 6)] + v88) == 34)
            {
LABEL_173:
              v15 = v13 + 6;
              this[3] = v13 + 6;
            }

LABEL_159:
            v81 = v12 + 1;
            v82 = (v15 - 1);
            if ((v12 + 1) < v82)
            {
              v7 = 0;
              do
              {
                v83 = *v81++;
                v7 = v83 + (v7 << 8);
              }

              while (v81 < v82);
              goto LABEL_156;
            }

LABEL_171:
            v7 = 0;
LABEL_156:
            *a2 = v7;
            return 1;
          }

          v27 = 3;
          goto LABEL_137;
        }

        if (v25 != 34)
        {
          v49 = (SLChar::sLexFold[v24 & 0x3F | (SLChar::sUniMap[v24 >> 6] << 6)] + v24);
          v27 = 1;
          goto LABEL_111;
        }

LABEL_85:
        v15 = v13 + 3;
        v54 = v13[3];
        this[3] = v13 + 3;
        this[6] = v13 + 3;
        v55 = SLChar::sLexFold[v54 & 0x3F | (SLChar::sUniMap[v54 >> 6] << 6)] + v54;
        if (v55 > 0x21u)
        {
          if (v55 == 34)
          {
            goto LABEL_120;
          }

          if (v55 <= 0x7Eu)
          {
            goto LABEL_132;
          }
        }

        else
        {
          if (v55 < 0x20u)
          {
            goto LABEL_159;
          }

          if (v55 == 33)
          {
            goto LABEL_132;
          }
        }

LABEL_96:
        v27 = 2;
        goto LABEL_135;
      }
    }

    else
    {
      if (v23 < 0x20u)
      {
        return 0;
      }

      if (v23 == 33)
      {
        goto LABEL_29;
      }
    }

    v46 = v13[2];
    this[3] = v13 + 2;
    v47 = (SLChar::sLexFold[v46 & 0x3F | (SLChar::sUniMap[v46 >> 6] << 6)] + v46);
    if (v47 < 0x20)
    {
      goto LABEL_66;
    }

    if (v47 != 34)
    {
      v27 = 1;
      goto LABEL_116;
    }

    v15 = v13 + 3;
    v50 = v13[3];
    this[3] = v13 + 3;
    this[6] = v13 + 3;
    v51 = (SLChar::sLexFold[v50 & 0x3F | (SLChar::sUniMap[v50 >> 6] << 6)] + v50);
    if (v51 < 0x20)
    {
      goto LABEL_159;
    }

    if (v51 == 34)
    {
      goto LABEL_120;
    }

    goto LABEL_96;
  }

  if (v14 == 36)
  {
    v28 = v13[1];
    this[3] = v13 + 1;
    v29 = SLChar::sLexFold[v28 & 0x3F | (SLChar::sUniMap[v28 >> 6] << 6)] + v28;
    v30 = v29;
    if (v29 > 0x40u)
    {
      result = 0;
      v42 = (v29 - 97);
      if (v30 >= 0x47 && v42 >= 6)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if ((v29 - 48) >= 0xAu)
      {
        return result;
      }
    }

LABEL_57:
    v10 = 1;
    goto LABEL_142;
  }

  if (v14 != 39)
  {
LABEL_35:
    v15 = v13 + 1;
    v31 = v13[1];
    this[3] = v13 + 1;
    this[6] = v13 + 1;
    if ((v31 + SLChar::sLexFold[v31 & 0x3F | (SLChar::sUniMap[v31 >> 6] << 6)] - 127) < 0xFFA2u)
    {
      return 0;
    }

    v32 = v13[2];
    this[3] = v13 + 2;
    if ((v32 + SLChar::sLexFold[v32 & 0x3F | (SLChar::sUniMap[v32 >> 6] << 6)] - 33) < 0x5Eu)
    {
      v33 = v13[3];
      this[3] = v13 + 3;
      if ((v33 + SLChar::sLexFold[v33 & 0x3F | (SLChar::sUniMap[v33 >> 6] << 6)] - 127) >= 0xFFA2u)
      {
        v15 = v13 + 4;
        this[3] = v13 + 4;
        goto LABEL_174;
      }
    }

    goto LABEL_66;
  }

  v15 = v13 + 1;
  v16 = v13[1];
  this[3] = v13 + 1;
  this[6] = v13 + 1;
  v17 = SLChar::sLexFold[v16 & 0x3F | (SLChar::sUniMap[v16 >> 6] << 6)] + v16;
  if (v17 > 0x26u)
  {
    if (v17 == 39)
    {
      v15 = v13 + 2;
      v37 = v13[2];
      this[3] = v13 + 2;
      this[6] = v13 + 2;
      v38 = SLChar::sLexFold[v37 & 0x3F | (SLChar::sUniMap[v37 >> 6] << 6)] + v37;
      if (v38 <= 0x26u)
      {
        if (v38 < 0x20u)
        {
          goto LABEL_167;
        }

        v39 = v38;
        v27 = 4;
        goto LABEL_62;
      }

      if (v38 != 39)
      {
        v48 = v38;
        v27 = 4;
LABEL_98:
        if (v48 >= 0x7F)
        {
          goto LABEL_103;
        }

LABEL_99:
        v56 = v13[3];
        this[3] = v13 + 3;
        v57 = SLChar::sLexFold[v56 & 0x3F | (SLChar::sUniMap[v56 >> 6] << 6)] + v56;
        if (v57 > 0x26u)
        {
          if (v57 == 39)
          {
            goto LABEL_107;
          }

          if ((SLChar::sLexFold[v56 & 0x3F | (SLChar::sUniMap[v56 >> 6] << 6)] + v56) >= 0x7Fu)
          {
            goto LABEL_127;
          }
        }

        else
        {
          if (v57 < 0x20u)
          {
            goto LABEL_138;
          }

          if ((SLChar::sLexFold[v56 & 0x3F | (SLChar::sUniMap[v56 >> 6] << 6)] + v56) == 32)
          {
            goto LABEL_127;
          }
        }

        goto LABEL_124;
      }

LABEL_80:
      v15 = v13 + 3;
      v52 = v13[3];
      this[3] = v13 + 3;
      this[6] = v13 + 3;
      v53 = SLChar::sLexFold[v52 & 0x3F | (SLChar::sUniMap[v52 >> 6] << 6)] + v52;
      if (v53 > 0x26u)
      {
        if (v53 == 39)
        {
          goto LABEL_107;
        }

        if (v53 > 0x7Eu)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (v53 < 0x20u)
        {
          goto LABEL_167;
        }

        if (v53 == 32)
        {
          goto LABEL_93;
        }
      }

LABEL_124:
      v15 = v13 + 4;
      v68 = v13[4];
      this[3] = v13 + 4;
      this[6] = v13 + 4;
      v69 = (SLChar::sLexFold[v68 & 0x3F | (SLChar::sUniMap[v68 >> 6] << 6)] + v68);
      if (v69 < 0x20)
      {
        goto LABEL_174;
      }

      if (v69 == 39)
      {
LABEL_165:
        v15 = v13 + 5;
        v84 = v13[5];
        this[3] = v13 + 5;
        if ((SLChar::sLexFold[v84 & 0x3F | (SLChar::sUniMap[v84 >> 6] << 6)] + v84) == 39)
        {
LABEL_166:
          v15 = v13 + 6;
          this[3] = v13 + 6;
        }

LABEL_167:
        v85 = v12 + 1;
        v86 = (v15 - 1);
        if ((v12 + 1) < v86)
        {
          v7 = 0;
          do
          {
            v87 = *v85++;
            v7 = v87 + (v7 << 8);
          }

          while (v85 < v86);
          goto LABEL_156;
        }

        goto LABEL_171;
      }

      v27 = 3;
LABEL_129:
      v72 = v13[5];
      this[3] = v13 + 5;
      if ((SLChar::sLexFold[v72 & 0x3F | (SLChar::sUniMap[v72 >> 6] << 6)] + v72) == 39)
      {
        goto LABEL_166;
      }

      goto LABEL_138;
    }

    if (v17 >= 0x7Fu)
    {
      goto LABEL_18;
    }

LABEL_59:
    v44 = v13[2];
    this[3] = v13 + 2;
    v45 = SLChar::sLexFold[v44 & 0x3F | (SLChar::sUniMap[v44 >> 6] << 6)] + v44;
    if (v45 <= 0x26u)
    {
      if (v45 < 0x20u)
      {
        goto LABEL_66;
      }

      v39 = (SLChar::sLexFold[v44 & 0x3F | (SLChar::sUniMap[v44 >> 6] << 6)] + v44);
      v27 = 1;
LABEL_62:
      if (v39 == 32)
      {
LABEL_103:
        v58 = v13[3];
        this[3] = v13 + 3;
        v59 = (SLChar::sLexFold[v58 & 0x3F | (SLChar::sUniMap[v58 >> 6] << 6)] + v58);
        if (v59 >= 0x20)
        {
          if (v59 == 39)
          {
            goto LABEL_107;
          }

          goto LABEL_127;
        }

        goto LABEL_138;
      }

      goto LABEL_99;
    }

    if (v45 != 39)
    {
      v48 = (SLChar::sLexFold[v44 & 0x3F | (SLChar::sUniMap[v44 >> 6] << 6)] + v44);
      v27 = 1;
      goto LABEL_98;
    }

    goto LABEL_80;
  }

  if (v17 < 0x20u)
  {
    return 0;
  }

  if (v17 != 32)
  {
    goto LABEL_59;
  }

LABEL_18:
  v18 = v13[2];
  this[3] = v13 + 2;
  v19 = (SLChar::sLexFold[v18 & 0x3F | (SLChar::sUniMap[v18 >> 6] << 6)] + v18);
  if (v19 < 0x20)
  {
LABEL_66:
    v27 = 1;
    goto LABEL_67;
  }

  if (v19 != 39)
  {
    v27 = 1;
    goto LABEL_103;
  }

  v15 = v13 + 3;
  v20 = v13[3];
  this[3] = v13 + 3;
  this[6] = v13 + 3;
  v21 = (SLChar::sLexFold[v20 & 0x3F | (SLChar::sUniMap[v20 >> 6] << 6)] + v20);
  if (v21 < 0x20)
  {
    goto LABEL_167;
  }

  if (v21 == 39)
  {
LABEL_107:
    v15 = v13 + 4;
    v60 = v13[4];
    this[3] = v13 + 4;
    this[6] = v13 + 4;
    v61 = (SLChar::sLexFold[v60 & 0x3F | (SLChar::sUniMap[v60 >> 6] << 6)] + v60);
    if (v61 < 0x20)
    {
      goto LABEL_167;
    }

    if (v61 == 39)
    {
      goto LABEL_165;
    }

    v27 = 4;
    goto LABEL_129;
  }

LABEL_93:
  v27 = 4;
LABEL_127:
  v70 = v13[4];
  this[3] = v13 + 4;
  v71 = (SLChar::sLexFold[v70 & 0x3F | (SLChar::sUniMap[v70 >> 6] << 6)] + v70);
  if (v71 >= 0x20)
  {
    if (v71 == 39)
    {
      goto LABEL_165;
    }

    goto LABEL_129;
  }

LABEL_138:
  this[3] = v15;
  if (v27 <= 2)
  {
LABEL_139:
    if (v27)
    {
      if (v27 == 2)
      {
        goto LABEL_159;
      }

      return 0;
    }

LABEL_140:
    v10 = 0;
    v11 = *(v15 - 1);
LABEL_141:
    v7 = v11 - 48;
    LOBYTE(result) = 1;
    goto LABEL_142;
  }

  if (v27 != 3)
  {
    goto LABEL_167;
  }

LABEL_174:
  if (a3)
  {
    v7 = 0;
    v89 = v15 - 4;
    do
    {
      v90 = *v89++;
      v7 = v90 + (v7 << 8);
    }

    while (v89 < v15);
    goto LABEL_156;
  }

  return 0;
}

uint64_t SLLexerImpl::SimpleCommand(unsigned __int16 **this, unsigned int a2, unsigned int a3)
{
  v5 = 0;
  v6 = a2;
  if (a3 < 2)
  {
    if (!SLLexerImpl::ScanWhole(this, &v5, a3 == 1))
    {
      return 0;
    }

LABEL_5:
    SLLexerInstance::CreateCommandToken(this);
  }

  if (SLLexerImpl::ScanFixed(this, &v5, &v6, a3 == 2))
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t SLLexerImpl::ToBICommand(SLLexerImpl *this)
{
  v3 = 0;
  SLLexerImpl::SkipSpaces(this);
  if ((**(this + 3) + SLChar::sLexFold[**(this + 3) & 0x3F | (SLChar::sUniMap[**(this + 3) >> 6] << 6)] - 48) > 9u || SLLexerImpl::ScanFixed(this, &v3, 0, 0))
  {

    SLLexerInstance::CreateCommandToken(this);
  }

  return 0;
}

uint64_t SLLexerImpl::NextCommandToken(SLLexerImpl *this)
{
  *(this + 9) = &SLLexerInstance::sNoDelim;
  v2 = 1;
LABEL_2:
  while (2)
  {
    v3 = *(this + 3);
    if ((*(this + 5) - v3) <= 2)
    {
      SLLexerInstance::Refill(this);
      v3 = *(this + 3);
    }

    v4 = *v3;
    v5 = v4 >> 6;
    v6 = v4 & 0x3F;
    if (*(this + 42) != (SLChar::sLexFold[v6 | (SLChar::sUniMap[v4 >> 6] << 6)] + v4))
    {
      goto LABEL_7;
    }

    if (!*(this + 43))
    {
      goto LABEL_834;
    }

    if (v3[1] != *(this + 43))
    {
LABEL_7:
      *(this + 8) = v3;
      if ((*(this + 5) - v3) <= 8)
      {
        SLLexerInstance::Refill(this);
        v3 = *(this + 3);
        v4 = *v3;
        v5 = v4 >> 6;
        v6 = v4 & 0x3F;
      }

      v7 = SLChar::sLexFold[v6 | (SLChar::sUniMap[v5] << 6)] + v4;
      if (v7 <= 0x57u)
      {
        if (v7 <= 0x45u)
        {
          if (v7 <= 0xDu)
          {
            if (v7 <= 8u)
            {
              if (!v7)
              {
                goto LABEL_835;
              }

LABEL_106:
              *(this + 3) = v3 + 1;
              goto LABEL_817;
            }

            if (v7 >= 0xBu && v7 != 13)
            {
              goto LABEL_106;
            }

LABEL_93:
            v36 = v3 + 1;
            *(this + 3) = v3 + 1;
            while (1)
            {
              v37 = SLChar::sLexFold[*v36 & 0x3F | (SLChar::sUniMap[*v36 >> 6] << 6)] + *v36;
              v38 = v37;
              if (v37 > 0x1Fu)
              {
                if (v37 > 0xA0u)
                {
                  if (v37 != 8239)
                  {
                    goto LABEL_2;
                  }
                }

                else if ((v37 & 0x7F) != 0x20)
                {
                  goto LABEL_2;
                }
              }

              else
              {
                v39 = (SLChar::sLexFold[*v36 & 0x3F | (SLChar::sUniMap[*v36 >> 6] << 6)] + *v36);
                if (v38 <= 0xA)
                {
                  if (v39 < 9)
                  {
                    goto LABEL_2;
                  }
                }

                else if (v39 != 13)
                {
                  goto LABEL_2;
                }
              }

              *(this + 3) = ++v36;
              if (*(this + 5) == v36)
              {
                SLLexerInstance::Refill(this);
                v36 = *(this + 3);
              }
            }
          }

          if (v7 <= 0x42u)
          {
            if (v7 != 32)
            {
              goto LABEL_106;
            }

            goto LABEL_93;
          }

          if (v7 != 67)
          {
            if (v7 != 69)
            {
LABEL_74:
              v26 = v3[1];
              *(this + 3) = v3 + 1;
              *(this + 6) = v3 + 1;
              if (((SLChar::sLexFold[v26 & 0x3F | (SLChar::sUniMap[v26 >> 6] << 6)] + v26) & 0xFFDF) != 0x4C)
              {
                goto LABEL_817;
              }

              v27 = v3[2];
              *(this + 3) = v3 + 2;
              if (((SLChar::sLexFold[v27 & 0x3F | (SLChar::sUniMap[v27 >> 6] << 6)] + v27) & 0xFFDF) != 0x49)
              {
                goto LABEL_816;
              }

              v28 = v3[3];
              *(this + 3) = v3 + 3;
              if (((SLChar::sLexFold[v28 & 0x3F | (SLChar::sUniMap[v28 >> 6] << 6)] + v28) & 0xFFDF) != 0x4D)
              {
                goto LABEL_816;
              }

              v30 = v3[4];
              v29 = v3 + 4;
              *(this + 3) = v29;
              v31 = SLChar::sLexFold[v30 & 0x3F | (SLChar::sUniMap[v30 >> 6] << 6)] + v30;
              if (v31 > 0x20u)
              {
                if (v31 > 0xA0u)
                {
                  if (v31 == 8239)
                  {
                    goto LABEL_266;
                  }
                }

                else if (v31 == 160)
                {
                  goto LABEL_266;
                }

                goto LABEL_816;
              }

              if (v31 != 9 && v31 != 32)
              {
                goto LABEL_816;
              }

              do
              {
                while (1)
                {
                  while (1)
                  {
LABEL_266:
                    *(this + 3) = ++v29;
                    if ((*(this + 5) - v29) <= 4)
                    {
                      SLLexerInstance::Refill(this);
                      v29 = *(this + 3);
                    }

                    v110 = SLChar::sLexFold[*v29 & 0x3F | (SLChar::sUniMap[*v29 >> 6] << 6)] + *v29;
                    v111 = v110;
                    if (v110 > 0x3Au)
                    {
                      break;
                    }

                    v112 = (SLChar::sLexFold[*v29 & 0x3F | (SLChar::sUniMap[*v29 >> 6] << 6)] + *v29);
                    if (v111 > 9)
                    {
                      if (v112 != 32)
                      {
                        goto LABEL_280;
                      }
                    }

                    else if (v112 != 9)
                    {
                      goto LABEL_280;
                    }
                  }

                  if (v110 <= 0xA0u)
                  {
                    break;
                  }

                  if (v110 != 8239)
                  {
                    goto LABEL_280;
                  }
                }
              }

              while (v110 == 160);
              if (v110 == 59)
              {
                goto LABEL_816;
              }

LABEL_280:
              v113 = v29 + 1;
              v114 = v29[1];
              *(this + 3) = v29 + 1;
              v115 = SLChar::sLexFold[v114 & 0x3F | (SLChar::sUniMap[v114 >> 6] << 6)] + v114;
              if (v115 > 0x3Au)
              {
                if (v115 > 0xA0u)
                {
                  if (v115 == 8239)
                  {
                    goto LABEL_432;
                  }
                }

                else
                {
                  if (v115 == 59)
                  {
                    goto LABEL_816;
                  }

                  if (v115 == 160)
                  {
                    goto LABEL_432;
                  }
                }
              }

              else if (v115 > 9u)
              {
                if (v115 == 32)
                {
                  goto LABEL_432;
                }
              }

              else if (v115 == 9)
              {
                goto LABEL_432;
              }

              v130 = v29[2];
              v113 = v29 + 2;
              *(this + 3) = v29 + 2;
              v131 = SLChar::sLexFold[v130 & 0x3F | (SLChar::sUniMap[v130 >> 6] << 6)] + v130;
              if (v131 > 0x20u)
              {
                if (v131 > 0xA0u)
                {
                  if (v131 == 8239)
                  {
                    goto LABEL_432;
                  }
                }

                else if (v131 == 160)
                {
                  goto LABEL_432;
                }

                goto LABEL_816;
              }

              if (v131 != 9 && v131 != 32)
              {
                goto LABEL_816;
              }

              do
              {
                while (1)
                {
                  while (1)
                  {
LABEL_432:
                    *(this + 3) = ++v113;
                    if ((*(this + 5) - v113) <= 2)
                    {
                      SLLexerInstance::Refill(this);
                      v113 = *(this + 3);
                    }

                    v137 = SLChar::sLexFold[*v113 & 0x3F | (SLChar::sUniMap[*v113 >> 6] << 6)] + *v113;
                    v138 = v137;
                    if (v137 > 0x3Au)
                    {
                      break;
                    }

                    v139 = (SLChar::sLexFold[*v113 & 0x3F | (SLChar::sUniMap[*v113 >> 6] << 6)] + *v113);
                    if (v138 > 9)
                    {
                      if (v139 != 32)
                      {
                        goto LABEL_446;
                      }
                    }

                    else if (v139 != 9)
                    {
                      goto LABEL_446;
                    }
                  }

                  if (v137 <= 0xA0u)
                  {
                    break;
                  }

                  if (v137 != 8239)
                  {
                    goto LABEL_446;
                  }
                }
              }

              while (v137 == 160);
              if (v137 == 59)
              {
                goto LABEL_816;
              }

LABEL_446:
              v140 = v113 + 1;
              v141 = v113[1];
              *(this + 3) = v113 + 1;
              v142 = SLChar::sLexFold[v141 & 0x3F | (SLChar::sUniMap[v141 >> 6] << 6)] + v141;
              if (v142 > 0x3Au)
              {
                if (v142 > 0xA0u)
                {
                  if (v142 == 8239)
                  {
LABEL_458:
                    v297 = 0;
                    v143 = SLLexerImpl::SpaceDelimitedToken(this, (*(this + 8) + 10), v140, &v297);
                    v144 = 0;
                    *(this + 8) = v143;
                    *(this + 52) = *v143;
                    v145 = v297;
                    if (v297 >= 2)
                    {
                      v144 = v143[1];
                    }

                    *(this + 53) = v144;
                    v146 = SLLexerImpl::SpaceDelimitedToken(this, &v143[v145 + 1], *(this + 3), &v297);
                    *(this + 8) = v146;
                    *(this + 54) = *v146;
                    if (v297 < 2)
                    {
                      v147 = 0;
                    }

                    else
                    {
                      v147 = v146[1];
                    }

                    *(this + 55) = v147;
                    goto LABEL_832;
                  }
                }

                else if (v142 == 59 || v142 == 160)
                {
                  goto LABEL_458;
                }
              }

              else if (v142 > 9u)
              {
                if (v142 == 32)
                {
                  goto LABEL_458;
                }
              }

              else if (v142 == 9)
              {
                goto LABEL_458;
              }

              v140 = v113 + 2;
              *(this + 3) = v113 + 2;
              goto LABEL_458;
            }

LABEL_61:
            v20 = v3[1];
            *(this + 3) = v3 + 1;
            *(this + 6) = v3 + 1;
            if (((SLChar::sLexFold[v20 & 0x3F | (SLChar::sUniMap[v20 >> 6] << 6)] + v20) & 0xFFDF) != 0x4D)
            {
              goto LABEL_817;
            }

            v21 = v3[2];
            *(this + 3) = v3 + 2;
            if (((SLChar::sLexFold[v21 & 0x3F | (SLChar::sUniMap[v21 >> 6] << 6)] + v21) & 0xFFDF) != 0x50)
            {
              goto LABEL_816;
            }

            v22 = v3[3];
            *(this + 3) = v3 + 3;
            if (((SLChar::sLexFold[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] + v22) & 0xFFDF) != 0x48)
            {
              goto LABEL_816;
            }

            v24 = v3[4];
            v23 = v3 + 4;
            *(this + 3) = v23;
            v25 = SLChar::sLexFold[v24 & 0x3F | (SLChar::sUniMap[v24 >> 6] << 6)] + v24;
            if (v25 == 43 || v25 == 45)
            {
              goto LABEL_816;
            }

            while (1)
            {
              if (v25 > 0x2Bu)
              {
                if (v25 <= 0x9Fu)
                {
                  if (v25 != 45)
                  {
                    goto LABEL_816;
                  }

                  *(this + 3) = v23 + 1;
                  *(this + 88) = 4;
                  goto LABEL_832;
                }

                if (v25 != 160 && v25 != 8239)
                {
                  goto LABEL_816;
                }
              }

              else if (v25 > 0x1Fu)
              {
                if (v25 != 32)
                {
                  if (v25 != 43)
                  {
                    goto LABEL_816;
                  }

                  *(this + 3) = v23 + 1;
                  *(this + 88) = 1;
LABEL_832:
                  SLLexerImpl::SkipToNextCommand(this, 0);
                  goto LABEL_2;
                }
              }

              else if (v25 != 9)
              {
                goto LABEL_816;
              }

              *(this + 3) = ++v23;
              if (*(this + 5) == v23)
              {
                SLLexerInstance::Refill(this);
                v23 = *(this + 3);
              }

              v25 = SLChar::sLexFold[*v23 & 0x3F | (SLChar::sUniMap[*v23 >> 6] << 6)] + *v23;
            }
          }

          goto LABEL_123;
        }

        if (v7 <= 0x50u)
        {
          if (v7 <= 0x4Du)
          {
            if (v7 != 73)
            {
              goto LABEL_106;
            }

            goto LABEL_37;
          }

          if (v7 != 78)
          {
            if (v7 != 80)
            {
              goto LABEL_106;
            }

            goto LABEL_83;
          }

          goto LABEL_127;
        }

        if (v7 <= 0x53u)
        {
          if (v7 == 81)
          {
            goto LABEL_106;
          }

          if (v7 != 83)
          {
            goto LABEL_46;
          }

          goto LABEL_28;
        }

        if (v7 != 86)
        {
          goto LABEL_106;
        }

        goto LABEL_88;
      }

      if (v7 > 0x70u)
      {
        if (v7 <= 0x77u)
        {
          if (v7 <= 0x73u)
          {
            if (v7 == 113)
            {
              goto LABEL_106;
            }

            if (v7 != 115)
            {
LABEL_46:
              v17 = v3[1];
              *(this + 3) = v3 + 1;
              *(this + 6) = v3 + 1;
              v18 = SLChar::sLexFold[v17 & 0x3F | (SLChar::sUniMap[v17 >> 6] << 6)] + v17;
              if (v18 > 0x53u)
              {
                if (v18 > 0x61u)
                {
                  if (v18 != 115)
                  {
                    goto LABEL_817;
                  }

                  goto LABEL_216;
                }

                if (v18 != 97)
                {
                  goto LABEL_817;
                }
              }

              else if (v18 != 65)
              {
                if (v18 != 83)
                {
                  goto LABEL_817;
                }

LABEL_216:
                v102 = v3[2];
                *(this + 3) = v3 + 2;
                if (((SLChar::sLexFold[v102 & 0x3F | (SLChar::sUniMap[v102 >> 6] << 6)] + v102) & 0xFFDF) != 0x45)
                {
                  goto LABEL_816;
                }

                v103 = v3[3];
                *(this + 3) = v3 + 3;
                if (((SLChar::sLexFold[v103 & 0x3F | (SLChar::sUniMap[v103 >> 6] << 6)] + v103) & 0xFFDF) != 0x54)
                {
                  goto LABEL_816;
                }

                v105 = v3[4];
                v104 = v3 + 4;
                *(this + 3) = v104;
                v106 = SLChar::sLexFold[v105 & 0x3F | (SLChar::sUniMap[v105 >> 6] << 6)] + v105;
                if (v106 > 0x20u)
                {
                  if (v106 > 0xA0u)
                  {
                    if (v106 != 8239)
                    {
                      goto LABEL_816;
                    }
                  }

                  else if (v106 != 160)
                  {
                    goto LABEL_816;
                  }
                }

                else if (v106 != 9 && v106 != 32)
                {
                  goto LABEL_816;
                }

                do
                {
                  while (1)
                  {
                    *(this + 3) = ++v104;
                    if (*(this + 5) == v104)
                    {
                      SLLexerInstance::Refill(this);
                      v104 = *(this + 3);
                    }

                    v127 = (SLChar::sLexFold[*v104 & 0x3F | (SLChar::sUniMap[*v104 >> 6] << 6)] + *v104);
                    if (v127 <= 0x20)
                    {
                      break;
                    }

                    if (v127 > 0xA0)
                    {
                      if ((SLChar::sLexFold[*v104 & 0x3F | (SLChar::sUniMap[*v104 >> 6] << 6)] + *v104) != 8239)
                      {
                        goto LABEL_381;
                      }
                    }

                    else if ((SLChar::sLexFold[*v104 & 0x3F | (SLChar::sUniMap[*v104 >> 6] << 6)] + *v104) != 160)
                    {
                      goto LABEL_381;
                    }
                  }
                }

                while (v127 == 9 || v127 == 32);
LABEL_381:
                v117 = this;
                v118 = 1920165236;
LABEL_382:
                v123 = 0;
                goto LABEL_396;
              }

              v76 = v3[2];
              *(this + 3) = v3 + 2;
              if (((SLChar::sLexFold[v76 & 0x3F | (SLChar::sUniMap[v76 >> 6] << 6)] + v76) & 0xFFDF) != 0x54)
              {
                goto LABEL_816;
              }

              v77 = v3[3];
              *(this + 3) = v3 + 3;
              if (((SLChar::sLexFold[v77 & 0x3F | (SLChar::sUniMap[v77 >> 6] << 6)] + v77) & 0xFFDF) != 0x45)
              {
                goto LABEL_816;
              }

              v79 = v3[4];
              v78 = v3 + 4;
              *(this + 3) = v78;
              v80 = SLChar::sLexFold[v79 & 0x3F | (SLChar::sUniMap[v79 >> 6] << 6)] + v79;
              if (v80 > 0x20u)
              {
                if (v80 > 0xA0u)
                {
                  if (v80 != 8239)
                  {
                    goto LABEL_816;
                  }
                }

                else if (v80 != 160)
                {
                  goto LABEL_816;
                }
              }

              else if (v80 != 9 && v80 != 32)
              {
                goto LABEL_816;
              }

              do
              {
                while (1)
                {
                  *(this + 3) = ++v78;
                  if (*(this + 5) == v78)
                  {
                    SLLexerInstance::Refill(this);
                    v78 = *(this + 3);
                  }

                  v128 = (SLChar::sLexFold[*v78 & 0x3F | (SLChar::sUniMap[*v78 >> 6] << 6)] + *v78);
                  if (v128 <= 0x20)
                  {
                    break;
                  }

                  if (v128 > 0xA0)
                  {
                    if ((SLChar::sLexFold[*v78 & 0x3F | (SLChar::sUniMap[*v78 >> 6] << 6)] + *v78) != 8239)
                    {
                      goto LABEL_394;
                    }
                  }

                  else if ((SLChar::sLexFold[*v78 & 0x3F | (SLChar::sUniMap[*v78 >> 6] << 6)] + *v78) != 160)
                  {
                    goto LABEL_394;
                  }
                }
              }

              while (v128 == 9 || v128 == 32);
LABEL_394:
              v117 = this;
              v118 = 1918989413;
              goto LABEL_395;
            }

LABEL_28:
            v8 = v3[1];
            *(this + 3) = v3 + 1;
            *(this + 6) = v3 + 1;
            v9 = SLChar::sLexFold[v8 & 0x3F | (SLChar::sUniMap[v8 >> 6] << 6)] + v8;
            if (v9 > 0x59u)
            {
              if (v9 > 0x6Cu)
              {
                if (v9 != 121)
                {
                  goto LABEL_817;
                }

                goto LABEL_192;
              }

              if (v9 != 108)
              {
                goto LABEL_817;
              }
            }

            else if (v9 != 76)
            {
              if (v9 != 89)
              {
                goto LABEL_817;
              }

LABEL_192:
              v86 = v3[2];
              *(this + 3) = v3 + 2;
              if (((SLChar::sLexFold[v86 & 0x3F | (SLChar::sUniMap[v86 >> 6] << 6)] + v86) & 0xFFDF) != 0x4E)
              {
                goto LABEL_816;
              }

              v87 = v3[3];
              *(this + 3) = v3 + 3;
              if (((SLChar::sLexFold[v87 & 0x3F | (SLChar::sUniMap[v87 >> 6] << 6)] + v87) & 0xFFDF) != 0x43)
              {
                goto LABEL_816;
              }

              v89 = v3[4];
              v88 = v3 + 4;
              *(this + 3) = v88;
              v90 = SLChar::sLexFold[v89 & 0x3F | (SLChar::sUniMap[v89 >> 6] << 6)] + v89;
              if (v90 > 0x20u)
              {
                if (v90 > 0xA0u)
                {
                  if (v90 != 8239)
                  {
                    goto LABEL_816;
                  }
                }

                else if (v90 != 160)
                {
                  goto LABEL_816;
                }
              }

              else if (v90 != 9 && v90 != 32)
              {
                goto LABEL_816;
              }

              do
              {
                while (1)
                {
                  *(this + 3) = ++v88;
                  if (*(this + 5) == v88)
                  {
                    SLLexerInstance::Refill(this);
                    v88 = *(this + 3);
                  }

                  v122 = (SLChar::sLexFold[*v88 & 0x3F | (SLChar::sUniMap[*v88 >> 6] << 6)] + *v88);
                  if (v122 <= 0x20)
                  {
                    break;
                  }

                  if (v122 > 0xA0)
                  {
                    if ((SLChar::sLexFold[*v88 & 0x3F | (SLChar::sUniMap[*v88 >> 6] << 6)] + *v88) != 8239)
                    {
                      goto LABEL_332;
                    }
                  }

                  else if ((SLChar::sLexFold[*v88 & 0x3F | (SLChar::sUniMap[*v88 >> 6] << 6)] + *v88) != 160)
                  {
                    goto LABEL_332;
                  }
                }
              }

              while (v122 == 9 || v122 == 32);
LABEL_332:
              v118 = 1937337955;
              v117 = this;
LABEL_333:
              v123 = 1;
              goto LABEL_396;
            }

            v60 = v3[2];
            *(this + 3) = v3 + 2;
            if (((SLChar::sLexFold[v60 & 0x3F | (SLChar::sUniMap[v60 >> 6] << 6)] + v60) & 0xFFDF) != 0x4E)
            {
              goto LABEL_816;
            }

            v61 = v3[3];
            *(this + 3) = v3 + 3;
            if (((SLChar::sLexFold[v61 & 0x3F | (SLChar::sUniMap[v61 >> 6] << 6)] + v61) & 0xFFDF) != 0x43)
            {
              goto LABEL_816;
            }

            v63 = v3[4];
            v62 = v3 + 4;
            *(this + 3) = v62;
            v64 = SLChar::sLexFold[v63 & 0x3F | (SLChar::sUniMap[v63 >> 6] << 6)] + v63;
            if (v64 > 0x20u)
            {
              if (v64 > 0xA0u)
              {
                if (v64 != 8239)
                {
                  goto LABEL_816;
                }
              }

              else if (v64 != 160)
              {
                goto LABEL_816;
              }
            }

            else if (v64 != 9 && v64 != 32)
            {
              goto LABEL_816;
            }

            do
            {
              while (1)
              {
                *(this + 3) = ++v62;
                if (*(this + 5) == v62)
                {
                  SLLexerInstance::Refill(this);
                  v62 = *(this + 3);
                }

                v125 = (SLChar::sLexFold[*v62 & 0x3F | (SLChar::sUniMap[*v62 >> 6] << 6)] + *v62);
                if (v125 <= 0x20)
                {
                  break;
                }

                if (v125 > 0xA0)
                {
                  if ((SLChar::sLexFold[*v62 & 0x3F | (SLChar::sUniMap[*v62 >> 6] << 6)] + *v62) != 8239)
                  {
                    goto LABEL_357;
                  }
                }

                else if ((SLChar::sLexFold[*v62 & 0x3F | (SLChar::sUniMap[*v62 >> 6] << 6)] + *v62) != 160)
                {
                  goto LABEL_357;
                }
              }
            }

            while (v125 == 9 || v125 == 32);
LABEL_357:
            v117 = this;
            v118 = 1936485987;
            goto LABEL_382;
          }

          if (v7 != 118)
          {
            goto LABEL_106;
          }

LABEL_88:
          v34 = v3[1];
          *(this + 3) = v3 + 1;
          *(this + 6) = v3 + 1;
          v35 = SLChar::sLexFold[v34 & 0x3F | (SLChar::sUniMap[v34 >> 6] << 6)] + v34;
          if (v35 > 0x4Fu)
          {
            if (v35 > 0x65u)
            {
              if (v35 != 111)
              {
                goto LABEL_817;
              }

              goto LABEL_185;
            }

            if (v35 != 101)
            {
              goto LABEL_817;
            }
          }

          else if (v35 != 69)
          {
            if (v35 != 79)
            {
              goto LABEL_817;
            }

LABEL_185:
            v81 = v3[2];
            *(this + 3) = v3 + 2;
            if (((SLChar::sLexFold[v81 & 0x3F | (SLChar::sUniMap[v81 >> 6] << 6)] + v81) & 0xFFDF) != 0x4C)
            {
              goto LABEL_816;
            }

            v82 = v3[3];
            *(this + 3) = v3 + 3;
            if (((SLChar::sLexFold[v82 & 0x3F | (SLChar::sUniMap[v82 >> 6] << 6)] + v82) & 0xFFDF) != 0x4D)
            {
              goto LABEL_816;
            }

            v84 = v3[4];
            v83 = v3 + 4;
            *(this + 3) = v83;
            v85 = SLChar::sLexFold[v84 & 0x3F | (SLChar::sUniMap[v84 >> 6] << 6)] + v84;
            if (v85 > 0x20u)
            {
              if (v85 > 0xA0u)
              {
                if (v85 != 8239)
                {
                  goto LABEL_816;
                }
              }

              else if (v85 != 160)
              {
                goto LABEL_816;
              }
            }

            else if (v85 != 9 && v85 != 32)
            {
              goto LABEL_816;
            }

            do
            {
              while (1)
              {
                *(this + 3) = ++v83;
                if (*(this + 5) == v83)
                {
                  SLLexerInstance::Refill(this);
                  v83 = *(this + 3);
                }

                v116 = (SLChar::sLexFold[*v83 & 0x3F | (SLChar::sUniMap[*v83 >> 6] << 6)] + *v83);
                if (v116 <= 0x20)
                {
                  break;
                }

                if (v116 > 0xA0)
                {
                  if ((SLChar::sLexFold[*v83 & 0x3F | (SLChar::sUniMap[*v83 >> 6] << 6)] + *v83) != 8239)
                  {
                    goto LABEL_299;
                  }
                }

                else if ((SLChar::sLexFold[*v83 & 0x3F | (SLChar::sUniMap[*v83 >> 6] << 6)] + *v83) != 160)
                {
                  goto LABEL_299;
                }
              }
            }

            while (v116 == 9 || v116 == 32);
LABEL_299:
            v117 = this;
            v118 = 1987013741;
            goto LABEL_395;
          }

          v55 = v3[2];
          *(this + 3) = v3 + 2;
          if (((SLChar::sLexFold[v55 & 0x3F | (SLChar::sUniMap[v55 >> 6] << 6)] + v55) & 0xFFDF) != 0x52)
          {
            goto LABEL_816;
          }

          v56 = v3[3];
          *(this + 3) = v3 + 3;
          if (((SLChar::sLexFold[v56 & 0x3F | (SLChar::sUniMap[v56 >> 6] << 6)] + v56) & 0xFFDF) != 0x53)
          {
            goto LABEL_816;
          }

          v58 = v3[4];
          v57 = v3 + 4;
          *(this + 3) = v57;
          v59 = SLChar::sLexFold[v58 & 0x3F | (SLChar::sUniMap[v58 >> 6] << 6)] + v58;
          if (v59 > 0x20u)
          {
            if (v59 > 0xA0u)
            {
              if (v59 != 8239)
              {
                goto LABEL_816;
              }
            }

            else if (v59 != 160)
            {
              goto LABEL_816;
            }
          }

          else if (v59 != 9 && v59 != 32)
          {
            goto LABEL_816;
          }

          do
          {
            while (1)
            {
              *(this + 3) = ++v57;
              if (*(this + 5) == v57)
              {
                SLLexerInstance::Refill(this);
                v57 = *(this + 3);
              }

              v119 = (SLChar::sLexFold[*v57 & 0x3F | (SLChar::sUniMap[*v57 >> 6] << 6)] + *v57);
              if (v119 <= 0x20)
              {
                break;
              }

              if (v119 > 0xA0)
              {
                if ((SLChar::sLexFold[*v57 & 0x3F | (SLChar::sUniMap[*v57 >> 6] << 6)] + *v57) != 8239)
                {
                  goto LABEL_311;
                }
              }

              else if ((SLChar::sLexFold[*v57 & 0x3F | (SLChar::sUniMap[*v57 >> 6] << 6)] + *v57) != 160)
              {
                goto LABEL_311;
              }
            }
          }

          while (v119 == 9 || v119 == 32);
LABEL_311:
          v117 = this;
          v118 = 1986359923;
          goto LABEL_333;
        }

        if (v7 > 0xA0u)
        {
          if (v7 != 8239)
          {
            goto LABEL_106;
          }

          goto LABEL_93;
        }

        if (v7 != 120)
        {
          if (v7 != 160)
          {
            goto LABEL_106;
          }

          goto LABEL_93;
        }
      }

      else
      {
        if (v7 > 0x65u)
        {
          if (v7 <= 0x6Du)
          {
            if (v7 != 105)
            {
              goto LABEL_106;
            }

LABEL_37:
            v10 = v3[1];
            *(this + 3) = v3 + 1;
            *(this + 6) = v3 + 1;
            if (((SLChar::sLexFold[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)] + v10) & 0xFFDF) != 0x4E)
            {
              goto LABEL_817;
            }

            v11 = v3[2];
            *(this + 3) = v3 + 2;
            if (((SLChar::sLexFold[v11 & 0x3F | (SLChar::sUniMap[v11 >> 6] << 6)] + v11) & 0xFFDF) != 0x50)
            {
              goto LABEL_816;
            }

            v12 = v3[3];
            *(this + 3) = v3 + 3;
            if (((SLChar::sLexFold[v12 & 0x3F | (SLChar::sUniMap[v12 >> 6] << 6)] + v12) & 0xFFDF) != 0x54)
            {
              goto LABEL_816;
            }

            v14 = v3[4];
            v13 = v3 + 4;
            *(this + 3) = v13;
            v15 = SLChar::sLexFold[v14 & 0x3F | (SLChar::sUniMap[v14 >> 6] << 6)] + v14;
            if (v15 > 0x20u)
            {
              if (v15 > 0xA0u)
              {
                goto LABEL_722;
              }

              v16 = v15 == 160;
            }

            else
            {
              if (v15 == 9)
              {
                goto LABEL_714;
              }

              v16 = v15 == 32;
            }

LABEL_723:
            while (2)
            {
              while (2)
              {
                if (!v16)
                {
                  goto LABEL_816;
                }

                while (1)
                {
LABEL_714:
                  *(this + 3) = ++v13;
                  if ((*(this + 5) - v13) <= 7)
                  {
                    SLLexerInstance::Refill(this);
                    v13 = *(this + 3);
                  }

                  v15 = SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13;
                  if (v15 > 0x54u)
                  {
                    break;
                  }

                  if (v15 > 0x20u)
                  {
                    v248 = (SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) == 80;
                    if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) <= 0x50u)
                    {
LABEL_733:
                      if (!v248)
                      {
                        goto LABEL_816;
                      }

                      v251 = v13[1];
                      *(this + 3) = v13 + 1;
                      if (((SLChar::sLexFold[v251 & 0x3F | (SLChar::sUniMap[v251 >> 6] << 6)] + v251) & 0xFFDF) != 0x48)
                      {
                        goto LABEL_816;
                      }

                      v252 = v13[2];
                      *(this + 3) = v13 + 2;
                      if (((SLChar::sLexFold[v252 & 0x3F | (SLChar::sUniMap[v252 >> 6] << 6)] + v252) & 0xFFDF) != 0x4F)
                      {
                        goto LABEL_816;
                      }

                      v253 = v13[3];
                      *(this + 3) = v13 + 3;
                      if (((SLChar::sLexFold[v253 & 0x3F | (SLChar::sUniMap[v253 >> 6] << 6)] + v253) & 0xFFDF) != 0x4E)
                      {
                        goto LABEL_816;
                      }

                      *(this + 3) = v13 + 4;
                      v207 = *(this + 24) & 0xFFFFFFF0 | 2;
                      goto LABEL_831;
                    }

                    if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) < 0x53u)
                    {
                      goto LABEL_816;
                    }

                    if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) != 84)
                    {
LABEL_741:
                      v254 = v13[1];
                      *(this + 3) = v13 + 1;
                      if (((SLChar::sLexFold[v254 & 0x3F | (SLChar::sUniMap[v254 >> 6] << 6)] + v254) & 0xFFDF) != 0x4F)
                      {
                        goto LABEL_816;
                      }

                      v255 = v13[2];
                      *(this + 3) = v13 + 2;
                      if (((SLChar::sLexFold[v255 & 0x3F | (SLChar::sUniMap[v255 >> 6] << 6)] + v255) & 0xFFDF) != 0x4E)
                      {
                        goto LABEL_816;
                      }

                      v256 = v13[3];
                      *(this + 3) = v13 + 3;
                      if (((SLChar::sLexFold[v256 & 0x3F | (SLChar::sUniMap[v256 >> 6] << 6)] + v256) & 0xFFDF) != 0x47)
                      {
                        goto LABEL_816;
                      }

                      *(this + 3) = v13 + 4;
                      v207 = *(this + 24) & 0xFFFFFFF0 | 4;
                      goto LABEL_831;
                    }

LABEL_728:
                    v249 = v13[1];
                    *(this + 3) = v13 + 1;
                    v250 = SLChar::sLexFold[v249 & 0x3F | (SLChar::sUniMap[v249 >> 6] << 6)] + v249;
                    if (v250 > 0x55u)
                    {
                      if (v250 > 0x65u)
                      {
                        if (v250 != 117)
                        {
                          goto LABEL_816;
                        }

LABEL_751:
                        v259 = v13[2];
                        *(this + 3) = v13 + 2;
                        if (((SLChar::sLexFold[v259 & 0x3F | (SLChar::sUniMap[v259 >> 6] << 6)] + v259) & 0xFFDF) != 0x4E)
                        {
                          goto LABEL_816;
                        }

                        v260 = v13[3];
                        *(this + 3) = v13 + 3;
                        if (((SLChar::sLexFold[v260 & 0x3F | (SLChar::sUniMap[v260 >> 6] << 6)] + v260) & 0xFFDF) != 0x45)
                        {
                          goto LABEL_816;
                        }

                        *(this + 3) = v13 + 4;
                        v207 = *(this + 24) & 0xFFFFFFF0 | 3;
                        goto LABEL_831;
                      }

                      if (v250 != 101)
                      {
                        goto LABEL_816;
                      }
                    }

                    else if (v250 != 69)
                    {
                      if (v250 != 85)
                      {
                        goto LABEL_816;
                      }

                      goto LABEL_751;
                    }

                    v257 = v13[2];
                    *(this + 3) = v13 + 2;
                    if (((SLChar::sLexFold[v257 & 0x3F | (SLChar::sUniMap[v257 >> 6] << 6)] + v257) & 0xFFDF) != 0x58)
                    {
                      goto LABEL_816;
                    }

                    v258 = v13[3];
                    *(this + 3) = v13 + 3;
                    if (((SLChar::sLexFold[v258 & 0x3F | (SLChar::sUniMap[v258 >> 6] << 6)] + v258) & 0xFFDF) != 0x54)
                    {
                      goto LABEL_816;
                    }

                    *(this + 3) = v13 + 4;
                    v207 = *(this + 24) & 0xFFFFFFF0;
                    goto LABEL_831;
                  }

                  v247 = (SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13);
                  if (v247 != 9)
                  {
                    v16 = v247 == 32;
                    goto LABEL_723;
                  }
                }

                if (v15 <= 0x74u)
                {
                  v248 = (SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) == 112;
                  if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) <= 0x70u)
                  {
                    goto LABEL_733;
                  }

                  if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) < 0x73u)
                  {
                    goto LABEL_816;
                  }

                  if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) != 116)
                  {
                    goto LABEL_741;
                  }

                  goto LABEL_728;
                }

                v16 = (SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) == 160;
                if ((SLChar::sLexFold[*v13 & 0x3F | (SLChar::sUniMap[*v13 >> 6] << 6)] + *v13) <= 0xA0u)
                {
                  continue;
                }

                break;
              }

LABEL_722:
              v16 = v15 == 8239;
              continue;
            }
          }

          if (v7 != 110)
          {
            if (v7 != 112)
            {
              goto LABEL_106;
            }

LABEL_83:
            v32 = v3[1];
            *(this + 3) = v3 + 1;
            *(this + 6) = v3 + 1;
            v33 = SLChar::sLexFold[v32 & 0x3F | (SLChar::sUniMap[v32 >> 6] << 6)] + v32;
            if (v33 > 0x4Du)
            {
              if (v33 > 0x62u)
              {
                if (v33 != 109)
                {
                  goto LABEL_817;
                }

                goto LABEL_199;
              }

              if (v33 != 98)
              {
                goto LABEL_817;
              }
            }

            else if (v33 != 66)
            {
              if (v33 != 77)
              {
                goto LABEL_817;
              }

LABEL_199:
              v91 = v3[2];
              *(this + 3) = v3 + 2;
              if (((SLChar::sLexFold[v91 & 0x3F | (SLChar::sUniMap[v91 >> 6] << 6)] + v91) & 0xFFDF) != 0x4F)
              {
                goto LABEL_816;
              }

              v92 = v3[3];
              *(this + 3) = v3 + 3;
              if (((SLChar::sLexFold[v92 & 0x3F | (SLChar::sUniMap[v92 >> 6] << 6)] + v92) & 0xFFDF) != 0x44)
              {
                goto LABEL_816;
              }

              v94 = v3[4];
              v93 = v3 + 4;
              *(this + 3) = v93;
              v95 = SLChar::sLexFold[v94 & 0x3F | (SLChar::sUniMap[v94 >> 6] << 6)] + v94;
              if (v95 > 0x20u)
              {
                if (v95 > 0xA0u)
                {
                  if (v95 != 8239)
                  {
                    goto LABEL_816;
                  }
                }

                else if (v95 != 160)
                {
                  goto LABEL_816;
                }
              }

              else if (v95 != 9 && v95 != 32)
              {
                goto LABEL_816;
              }

              do
              {
                while (1)
                {
                  *(this + 3) = ++v93;
                  if (*(this + 5) == v93)
                  {
                    SLLexerInstance::Refill(this);
                    v93 = *(this + 3);
                  }

                  v124 = (SLChar::sLexFold[*v93 & 0x3F | (SLChar::sUniMap[*v93 >> 6] << 6)] + *v93);
                  if (v124 <= 0x20)
                  {
                    break;
                  }

                  if (v124 > 0xA0)
                  {
                    if ((SLChar::sLexFold[*v93 & 0x3F | (SLChar::sUniMap[*v93 >> 6] << 6)] + *v93) != 8239)
                    {
                      goto LABEL_345;
                    }
                  }

                  else if ((SLChar::sLexFold[*v93 & 0x3F | (SLChar::sUniMap[*v93 >> 6] << 6)] + *v93) != 160)
                  {
                    goto LABEL_345;
                  }
                }
              }

              while (v124 == 9 || v124 == 32);
LABEL_345:
              v117 = this;
              v118 = 1886220132;
LABEL_395:
              v123 = 2;
LABEL_396:
              v129 = SLLexerImpl::SimpleCommand(v117, v118, v123);
              if (v129)
              {
                goto LABEL_840;
              }

              goto LABEL_817;
            }

            v65 = v3[2];
            *(this + 3) = v3 + 2;
            if (((SLChar::sLexFold[v65 & 0x3F | (SLChar::sUniMap[v65 >> 6] << 6)] + v65) & 0xFFDF) != 0x41)
            {
              goto LABEL_816;
            }

            v66 = v3[3];
            *(this + 3) = v3 + 3;
            if (((SLChar::sLexFold[v66 & 0x3F | (SLChar::sUniMap[v66 >> 6] << 6)] + v66) & 0xFFDF) != 0x53)
            {
              goto LABEL_816;
            }

            v68 = v3[4];
            v67 = v3 + 4;
            *(this + 3) = v67;
            v69 = SLChar::sLexFold[v68 & 0x3F | (SLChar::sUniMap[v68 >> 6] << 6)] + v68;
            if (v69 > 0x20u)
            {
              if (v69 > 0xA0u)
              {
                if (v69 != 8239)
                {
                  goto LABEL_816;
                }
              }

              else if (v69 != 160)
              {
                goto LABEL_816;
              }
            }

            else if (v69 != 9 && v69 != 32)
            {
              goto LABEL_816;
            }

            do
            {
              while (1)
              {
                *(this + 3) = ++v67;
                if (*(this + 5) == v67)
                {
                  SLLexerInstance::Refill(this);
                  v67 = *(this + 3);
                }

                v126 = (SLChar::sLexFold[*v67 & 0x3F | (SLChar::sUniMap[*v67 >> 6] << 6)] + *v67);
                if (v126 <= 0x20)
                {
                  break;
                }

                if (v126 > 0xA0)
                {
                  if ((SLChar::sLexFold[*v67 & 0x3F | (SLChar::sUniMap[*v67 >> 6] << 6)] + *v67) != 8239)
                  {
                    goto LABEL_369;
                  }
                }

                else if ((SLChar::sLexFold[*v67 & 0x3F | (SLChar::sUniMap[*v67 >> 6] << 6)] + *v67) != 160)
                {
                  goto LABEL_369;
                }
              }
            }

            while (v126 == 9 || v126 == 32);
LABEL_369:
            v117 = this;
            v118 = 1885495667;
            goto LABEL_395;
          }

LABEL_127:
          v48 = v3[1];
          *(this + 3) = v3 + 1;
          *(this + 6) = v3 + 1;
          if (((SLChar::sLexFold[v48 & 0x3F | (SLChar::sUniMap[v48 >> 6] << 6)] + v48) & 0xFFDF) != 0x4D)
          {
            goto LABEL_817;
          }

          v49 = v3[2];
          *(this + 3) = v3 + 2;
          if (((SLChar::sLexFold[v49 & 0x3F | (SLChar::sUniMap[v49 >> 6] << 6)] + v49) & 0xFFDF) != 0x42)
          {
            goto LABEL_816;
          }

          v50 = v3[3];
          *(this + 3) = v3 + 3;
          if (((SLChar::sLexFold[v50 & 0x3F | (SLChar::sUniMap[v50 >> 6] << 6)] + v50) & 0xFFDF) != 0x52)
          {
            goto LABEL_816;
          }

          v52 = v3[4];
          v51 = v3 + 4;
          *(this + 3) = v51;
          v53 = SLChar::sLexFold[v52 & 0x3F | (SLChar::sUniMap[v52 >> 6] << 6)] + v52;
          if (v53 > 0x20u)
          {
            if (v53 > 0xA0u)
            {
              goto LABEL_698;
            }

            v54 = v53 == 160;
          }

          else
          {
            if (v53 == 9)
            {
              goto LABEL_690;
            }

            v54 = v53 == 32;
          }

LABEL_699:
          while (2)
          {
            while (2)
            {
              if (!v54)
              {
                goto LABEL_816;
              }

              while (1)
              {
LABEL_690:
                *(this + 3) = ++v51;
                if ((*(this + 5) - v51) <= 7)
                {
                  SLLexerInstance::Refill(this);
                  v51 = *(this + 3);
                }

                v53 = SLChar::sLexFold[*v51 & 0x3F | (SLChar::sUniMap[*v51 >> 6] << 6)] + *v51;
                v238 = v53;
                if (v53 > 0x4Eu)
                {
                  break;
                }

                v239 = (SLChar::sLexFold[*v51 & 0x3F | (SLChar::sUniMap[*v51 >> 6] << 6)] + *v51);
                if (v238 > 0x20)
                {
                  if (v239 != 76)
                  {
                    if (v239 != 78)
                    {
                      goto LABEL_816;
                    }

LABEL_706:
                    v241 = v51[1];
                    *(this + 3) = v51 + 1;
                    if (((SLChar::sLexFold[v241 & 0x3F | (SLChar::sUniMap[v241 >> 6] << 6)] + v241) & 0xFFDF) != 0x4F)
                    {
                      goto LABEL_816;
                    }

                    v242 = v51[2];
                    *(this + 3) = v51 + 2;
                    if (((SLChar::sLexFold[v242 & 0x3F | (SLChar::sUniMap[v242 >> 6] << 6)] + v242) & 0xFFDF) != 0x52)
                    {
                      goto LABEL_816;
                    }

                    v243 = v51[3];
                    *(this + 3) = v51 + 3;
                    if (((SLChar::sLexFold[v243 & 0x3F | (SLChar::sUniMap[v243 >> 6] << 6)] + v243) & 0xFFDF) != 0x4D)
                    {
                      goto LABEL_816;
                    }

                    *(this + 3) = v51 + 4;
                    v207 = *(this + 24) & 0xFFFFFFDF;
                    goto LABEL_831;
                  }

                  goto LABEL_710;
                }

                if (v239 != 9)
                {
                  v54 = v239 == 32;
                  goto LABEL_699;
                }
              }

              if (v53 <= 0x6Eu)
              {
                v240 = (SLChar::sLexFold[*v51 & 0x3F | (SLChar::sUniMap[*v51 >> 6] << 6)] + *v51);
                if (v240 != 108)
                {
                  if (v240 != 110)
                  {
                    goto LABEL_816;
                  }

                  goto LABEL_706;
                }

LABEL_710:
                v244 = v51[1];
                *(this + 3) = v51 + 1;
                if (((SLChar::sLexFold[v244 & 0x3F | (SLChar::sUniMap[v244 >> 6] << 6)] + v244) & 0xFFDF) != 0x54)
                {
                  goto LABEL_816;
                }

                v245 = v51[2];
                *(this + 3) = v51 + 2;
                if (((SLChar::sLexFold[v245 & 0x3F | (SLChar::sUniMap[v245 >> 6] << 6)] + v245) & 0xFFDF) != 0x52)
                {
                  goto LABEL_816;
                }

                v246 = v51[3];
                *(this + 3) = v51 + 3;
                if (((SLChar::sLexFold[v246 & 0x3F | (SLChar::sUniMap[v246 >> 6] << 6)] + v246) & 0xFFDF) != 0x4C)
                {
                  goto LABEL_816;
                }

                *(this + 3) = v51 + 4;
                v207 = *(this + 24) | 0x20;
                goto LABEL_831;
              }

              v54 = (SLChar::sLexFold[*v51 & 0x3F | (SLChar::sUniMap[*v51 >> 6] << 6)] + *v51) == 160;
              if ((SLChar::sLexFold[*v51 & 0x3F | (SLChar::sUniMap[*v51 >> 6] << 6)] + *v51) <= 0xA0u)
              {
                continue;
              }

              break;
            }

LABEL_698:
            v54 = v53 == 8239;
            continue;
          }
        }

        if (v7 > 0x62u)
        {
          if (v7 != 99)
          {
            if (v7 != 101)
            {
              goto LABEL_74;
            }

            goto LABEL_61;
          }

LABEL_123:
          v46 = v3[1];
          *(this + 3) = v3 + 1;
          *(this + 6) = v3 + 1;
          v47 = (SLChar::sLexFold[v46 & 0x3F | (SLChar::sUniMap[v46 >> 6] << 6)] + v46);
          if (v47 > 0x54)
          {
            if (v47 <= 0x6C)
            {
              if (v47 != 104)
              {
                goto LABEL_817;
              }

              goto LABEL_159;
            }

            if (v47 != 109)
            {
              if (v47 != 116)
              {
                goto LABEL_817;
              }

LABEL_210:
              v96 = v3[2];
              *(this + 3) = v3 + 2;
              if (((SLChar::sLexFold[v96 & 0x3F | (SLChar::sUniMap[v96 >> 6] << 6)] + v96) & 0xFFDF) != 0x58)
              {
                goto LABEL_816;
              }

              v97 = v3[3];
              *(this + 3) = v3 + 3;
              if (((SLChar::sLexFold[v97 & 0x3F | (SLChar::sUniMap[v97 >> 6] << 6)] + v97) & 0xFFDF) != 0x54)
              {
                goto LABEL_816;
              }

              v99 = v3[4];
              v98 = v3 + 4;
              *(this + 3) = v98;
              v100 = SLChar::sLexFold[v99 & 0x3F | (SLChar::sUniMap[v99 >> 6] << 6)] + v99;
              if (v100 > 0x20u)
              {
                if (v100 > 0xA0u)
                {
LABEL_765:
                  v101 = v100 == 8239;
                }

                else
                {
                  v101 = v100 == 160;
                }
              }

              else
              {
                if (v100 == 9)
                {
                  goto LABEL_754;
                }

                v101 = v100 == 32;
              }

              while (1)
              {
                if (!v101)
                {
                  goto LABEL_816;
                }

                while (1)
                {
LABEL_754:
                  *(this + 3) = ++v98;
                  if ((*(this + 5) - v98) <= 7)
                  {
                    SLLexerInstance::Refill(this);
                    v98 = *(this + 3);
                  }

                  v100 = SLChar::sLexFold[*v98 & 0x3F | (SLChar::sUniMap[*v98 >> 6] << 6)] + *v98;
                  v261 = v100;
                  if (v100 <= 0x57u)
                  {
                    break;
                  }

                  if (v100 <= 0x76u)
                  {
                    v264 = (SLChar::sLexFold[*v98 & 0x3F | (SLChar::sUniMap[*v98 >> 6] << 6)] + *v98);
                    v263 = v264 == 110;
                    if (v264 <= 0x6E)
                    {
                      goto LABEL_771;
                    }

                    if (v264 != 116)
                    {
                      goto LABEL_816;
                    }

LABEL_784:
                    v270 = v98[1];
                    *(this + 3) = v98 + 1;
                    v271 = SLChar::sLexFold[v270 & 0x3F | (SLChar::sUniMap[v270 >> 6] << 6)] + v270;
                    if (v271 > 0x53u)
                    {
                      if (v271 > 0x65u)
                      {
                        if (v271 != 115)
                        {
                          goto LABEL_816;
                        }

                        goto LABEL_803;
                      }

                      if (v271 != 101)
                      {
                        goto LABEL_816;
                      }
                    }

                    else if (v271 != 69)
                    {
                      if (v271 != 83)
                      {
                        goto LABEL_816;
                      }

LABEL_803:
                      v278 = v98[2];
                      *(this + 3) = v98 + 2;
                      if (((SLChar::sLexFold[v278 & 0x3F | (SLChar::sUniMap[v278 >> 6] << 6)] + v278) & 0xFFDF) != 0x4B)
                      {
                        goto LABEL_816;
                      }

                      v279 = v98[3];
                      *(this + 3) = v98 + 3;
                      if (((SLChar::sLexFold[v279 & 0x3F | (SLChar::sUniMap[v279 >> 6] << 6)] + v279) & 0xFFDF) != 0x50)
                      {
                        goto LABEL_816;
                      }

                      *(this + 3) = v98 + 4;
                      v294 = this;
LABEL_839:
                      SLLexerInstance::CreateCommandToken(v294);
                    }

                    v274 = v98[2];
                    *(this + 3) = v98 + 2;
                    if (((SLChar::sLexFold[v274 & 0x3F | (SLChar::sUniMap[v274 >> 6] << 6)] + v274) & 0xFFDF) != 0x58)
                    {
                      goto LABEL_816;
                    }

                    v275 = v98[3];
                    *(this + 3) = v98 + 3;
                    if (((SLChar::sLexFold[v275 & 0x3F | (SLChar::sUniMap[v275 >> 6] << 6)] + v275) & 0xFFDF) != 0x54)
                    {
                      goto LABEL_816;
                    }

                    *(this + 3) = v98 + 4;
                    v294 = this;
                    goto LABEL_839;
                  }

                  if ((SLChar::sLexFold[*v98 & 0x3F | (SLChar::sUniMap[*v98 >> 6] << 6)] + *v98) > 0xA0u)
                  {
                    goto LABEL_765;
                  }

                  if (v100 != 160)
                  {
                    if (v100 != 119)
                    {
                      goto LABEL_816;
                    }

                    goto LABEL_779;
                  }
                }

                v262 = (SLChar::sLexFold[*v98 & 0x3F | (SLChar::sUniMap[*v98 >> 6] << 6)] + *v98);
                if (v261 > 0x4D)
                {
                  break;
                }

                v101 = v262 == 9;
                if (v262 > 9)
                {
                  v101 = v262 == 32;
                }
              }

              if (v262 <= 0x53)
              {
                v263 = v262 == 78;
LABEL_771:
                if (!v263)
                {
                  goto LABEL_816;
                }

                v265 = v98[1];
                *(this + 3) = v98 + 1;
                if (((SLChar::sLexFold[v265 & 0x3F | (SLChar::sUniMap[v265 >> 6] << 6)] + v265) & 0xFFDF) != 0x4F)
                {
                  goto LABEL_816;
                }

                v266 = v98[2];
                *(this + 3) = v98 + 2;
                if (((SLChar::sLexFold[v266 & 0x3F | (SLChar::sUniMap[v266 >> 6] << 6)] + v266) & 0xFFDF) != 0x52)
                {
                  goto LABEL_816;
                }

                v267 = v98[3];
                *(this + 3) = v98 + 3;
                if (((SLChar::sLexFold[v267 & 0x3F | (SLChar::sUniMap[v267 >> 6] << 6)] + v267) & 0xFFDF) != 0x4D)
                {
                  goto LABEL_816;
                }

                *(this + 3) = v98 + 4;
                v294 = this;
                goto LABEL_839;
              }

              if (v262 == 84)
              {
                goto LABEL_784;
              }

              if (v262 != 87)
              {
                goto LABEL_816;
              }

LABEL_779:
              v268 = v98[1];
              *(this + 3) = v98 + 1;
              v269 = SLChar::sLexFold[v268 & 0x3F | (SLChar::sUniMap[v268 >> 6] << 6)] + v268;
              if (v269 > 0x53u)
              {
                if (v269 > 0x6Fu)
                {
                  if (v269 != 115)
                  {
                    goto LABEL_816;
                  }

LABEL_799:
                  v276 = v98[2];
                  *(this + 3) = v98 + 2;
                  if (((SLChar::sLexFold[v276 & 0x3F | (SLChar::sUniMap[v276 >> 6] << 6)] + v276) & 0xFFDF) != 0x4B)
                  {
                    goto LABEL_816;
                  }

                  v277 = v98[3];
                  *(this + 3) = v98 + 3;
                  if (((SLChar::sLexFold[v277 & 0x3F | (SLChar::sUniMap[v277 >> 6] << 6)] + v277) & 0xFFDF) != 0x50)
                  {
                    goto LABEL_816;
                  }

                  *(this + 3) = v98 + 4;
                  v294 = this;
                  goto LABEL_839;
                }

                if (v269 != 111)
                {
                  goto LABEL_816;
                }
              }

              else if (v269 != 79)
              {
                if (v269 != 83)
                {
                  goto LABEL_816;
                }

                goto LABEL_799;
              }

              v272 = v98[2];
              *(this + 3) = v98 + 2;
              if (((SLChar::sLexFold[v272 & 0x3F | (SLChar::sUniMap[v272 >> 6] << 6)] + v272) & 0xFFDF) != 0x52)
              {
                goto LABEL_816;
              }

              v273 = v98[3];
              *(this + 3) = v98 + 3;
              if (((SLChar::sLexFold[v273 & 0x3F | (SLChar::sUniMap[v273 >> 6] << 6)] + v273) & 0xFFDF) != 0x44)
              {
                goto LABEL_816;
              }

              *(this + 3) = v98 + 4;
              v294 = this;
              goto LABEL_839;
            }
          }

          else
          {
            if (v47 <= 0x4C)
            {
              if (v47 != 72)
              {
                goto LABEL_817;
              }

LABEL_159:
              v70 = v3[2];
              *(this + 3) = v3 + 2;
              if (((SLChar::sLexFold[v70 & 0x3F | (SLChar::sUniMap[v70 >> 6] << 6)] + v70) & 0xFFDF) != 0x41)
              {
                goto LABEL_816;
              }

              v71 = v3[3];
              *(this + 3) = v3 + 3;
              if (((SLChar::sLexFold[v71 & 0x3F | (SLChar::sUniMap[v71 >> 6] << 6)] + v71) & 0xFFDF) != 0x52)
              {
                goto LABEL_816;
              }

              v73 = v3[4];
              v72 = v3 + 4;
              *(this + 3) = v72;
              v74 = SLChar::sLexFold[v73 & 0x3F | (SLChar::sUniMap[v73 >> 6] << 6)] + v73;
              if (v74 > 0x20u)
              {
                if (v74 <= 0xA0u)
                {
                  v75 = v74 == 160;
                  goto LABEL_815;
                }

                goto LABEL_814;
              }

              if (v74 == 9)
              {
                goto LABEL_806;
              }

              v75 = v74 == 32;
              while (1)
              {
LABEL_815:
                if (!v75)
                {
                  goto LABEL_816;
                }

                while (1)
                {
LABEL_806:
                  *(this + 3) = ++v72;
                  if ((*(this + 5) - v72) <= 7)
                  {
                    SLLexerInstance::Refill(this);
                    v72 = *(this + 3);
                  }

                  v74 = SLChar::sLexFold[*v72 & 0x3F | (SLChar::sUniMap[*v72 >> 6] << 6)] + *v72;
                  v280 = v74;
                  if (v74 > 0x4Eu)
                  {
                    break;
                  }

                  v281 = (SLChar::sLexFold[*v72 & 0x3F | (SLChar::sUniMap[*v72 >> 6] << 6)] + *v72);
                  if (v280 > 0x20)
                  {
                    if (v281 != 76)
                    {
                      if (v281 == 78)
                      {
                        goto LABEL_823;
                      }

                      goto LABEL_816;
                    }

LABEL_827:
                    v286 = v72[1];
                    *(this + 3) = v72 + 1;
                    if (((SLChar::sLexFold[v286 & 0x3F | (SLChar::sUniMap[v286 >> 6] << 6)] + v286) & 0xFFDF) != 0x54)
                    {
                      goto LABEL_816;
                    }

                    v287 = v72[2];
                    *(this + 3) = v72 + 2;
                    if (((SLChar::sLexFold[v287 & 0x3F | (SLChar::sUniMap[v287 >> 6] << 6)] + v287) & 0xFFDF) != 0x52)
                    {
                      goto LABEL_816;
                    }

                    v288 = v72[3];
                    *(this + 3) = v72 + 3;
                    if (((SLChar::sLexFold[v288 & 0x3F | (SLChar::sUniMap[v288 >> 6] << 6)] + v288) & 0xFFDF) != 0x4C)
                    {
                      goto LABEL_816;
                    }

                    *(this + 3) = v72 + 4;
                    v207 = *(this + 24) | 0x10;
LABEL_831:
                    *(this + 24) = v207;
                    goto LABEL_832;
                  }

                  if (v281 != 9)
                  {
                    v75 = v281 == 32;
                    goto LABEL_815;
                  }
                }

                if (v74 <= 0x6Eu)
                {
                  break;
                }

                v75 = (SLChar::sLexFold[*v72 & 0x3F | (SLChar::sUniMap[*v72 >> 6] << 6)] + *v72) == 160;
                if ((SLChar::sLexFold[*v72 & 0x3F | (SLChar::sUniMap[*v72 >> 6] << 6)] + *v72) > 0xA0u)
                {
LABEL_814:
                  v75 = v74 == 8239;
                }
              }

              v282 = (SLChar::sLexFold[*v72 & 0x3F | (SLChar::sUniMap[*v72 >> 6] << 6)] + *v72);
              if (v282 == 108)
              {
                goto LABEL_827;
              }

              if (v282 != 110)
              {
                goto LABEL_816;
              }

LABEL_823:
              v283 = v72[1];
              *(this + 3) = v72 + 1;
              if (((SLChar::sLexFold[v283 & 0x3F | (SLChar::sUniMap[v283 >> 6] << 6)] + v283) & 0xFFDF) == 0x4F)
              {
                v284 = v72[2];
                *(this + 3) = v72 + 2;
                if (((SLChar::sLexFold[v284 & 0x3F | (SLChar::sUniMap[v284 >> 6] << 6)] + v284) & 0xFFDF) == 0x52)
                {
                  v285 = v72[3];
                  *(this + 3) = v72 + 3;
                  if (((SLChar::sLexFold[v285 & 0x3F | (SLChar::sUniMap[v285 >> 6] << 6)] + v285) & 0xFFDF) == 0x4D)
                  {
                    *(this + 3) = v72 + 4;
                    v207 = *(this + 24) & 0xFFFFFFEF;
                    goto LABEL_831;
                  }
                }
              }

LABEL_816:
              *(this + 3) = *(this + 6);
              goto LABEL_817;
            }

            if (v47 != 77)
            {
              if (v47 != 84)
              {
                goto LABEL_817;
              }

              goto LABEL_210;
            }
          }

          v107 = v3[2];
          *(this + 3) = v3 + 2;
          if (((SLChar::sLexFold[v107 & 0x3F | (SLChar::sUniMap[v107 >> 6] << 6)] + v107) & 0xFFDF) != 0x4E)
          {
            goto LABEL_816;
          }

          v108 = v3[3];
          *(this + 3) = v3 + 3;
          if (((SLChar::sLexFold[v108 & 0x3F | (SLChar::sUniMap[v108 >> 6] << 6)] + v108) & 0xFFDF) != 0x54)
          {
            goto LABEL_816;
          }

          for (i = v3 + 4; ; ++i)
          {
            *(this + 3) = i;
            *(this + 8) = i;
            if ((*(this + 5) - i) <= 2)
            {
              SLLexerInstance::Refill(this);
              i = *(this + 3);
            }

            if (!(SLChar::sLexFold[*i & 0x3F | (SLChar::sUniMap[*i >> 6] << 6)] + *i) || *(this + 42) == (SLChar::sLexFold[*i & 0x3F | (SLChar::sUniMap[*i >> 6] << 6)] + *i) && (!*(this + 43) || i[1] == *(this + 43)))
            {
              break;
            }
          }

          continue;
        }

        if (v7 != 88)
        {
          goto LABEL_106;
        }
      }

      v40 = v3[1];
      *(this + 3) = v3 + 1;
      *(this + 6) = v3 + 1;
      if (((SLChar::sLexFold[v40 & 0x3F | (SLChar::sUniMap[v40 >> 6] << 6)] + v40) & 0xFFDF) != 0x54)
      {
        goto LABEL_817;
      }

      v41 = v3[2];
      *(this + 3) = v3 + 2;
      if (((SLChar::sLexFold[v41 & 0x3F | (SLChar::sUniMap[v41 >> 6] << 6)] + v41) & 0xFFDF) != 0x4E)
      {
        goto LABEL_816;
      }

      v42 = v3[3];
      *(this + 3) = v3 + 3;
      if (((SLChar::sLexFold[v42 & 0x3F | (SLChar::sUniMap[v42 >> 6] << 6)] + v42) & 0xFFDF) != 0x44)
      {
        goto LABEL_816;
      }

      v44 = v3[4];
      v43 = v3 + 4;
      *(this + 3) = v43;
      v45 = SLChar::sLexFold[v44 & 0x3F | (SLChar::sUniMap[v44 >> 6] << 6)] + v44;
      if ((v45 & 0xFFDF) == 0x4D)
      {
        goto LABEL_816;
      }

      while (1)
      {
        if (v45 > 0x4Du)
        {
          if (v45 <= 0x9Fu)
          {
            if (v45 != 109)
            {
              goto LABEL_816;
            }

LABEL_315:
            v120 = v43[1];
            *(this + 3) = v43 + 1;
            v121 = SLChar::sLexFold[v120 & 0x3F | (SLChar::sUniMap[v120 >> 6] << 6)] + v120;
            if (v121 > 0x54u)
            {
              if (v121 > 0x65u)
              {
                if (v121 != 116)
                {
                  goto LABEL_816;
                }

LABEL_465:
                v149 = v43[2];
                v148 = v43 + 2;
                *(this + 3) = v148;
                if (((SLChar::sLexFold[v149 & 0x3F | (SLChar::sUniMap[v149 >> 6] << 6)] + v149) & 0xFFDF) != 0x4C)
                {
                  goto LABEL_816;
                }

                goto LABEL_466;
              }

              if (v121 != 101)
              {
                goto LABEL_816;
              }
            }

            else if (v121 != 69)
            {
              if (v121 != 84)
              {
                goto LABEL_816;
              }

              goto LABEL_465;
            }

            v132 = v43[2];
            *(this + 3) = v43 + 2;
            if (((SLChar::sLexFold[v132 & 0x3F | (SLChar::sUniMap[v132 >> 6] << 6)] + v132) & 0xFFDF) != 0x4F)
            {
              goto LABEL_816;
            }

            v133 = v43[3];
            *(this + 3) = v43 + 3;
            if (((SLChar::sLexFold[v133 & 0x3F | (SLChar::sUniMap[v133 >> 6] << 6)] + v133) & 0xFFDF) != 0x57)
            {
              goto LABEL_816;
            }

            v135 = v43[4];
            v134 = v43 + 4;
            *(this + 3) = v134;
            v136 = SLChar::sLexFold[v135 & 0x3F | (SLChar::sUniMap[v135 >> 6] << 6)] + v135;
            if (v136 >= 0x41u && (v136 < 0x5Bu || (v136 - 97) < 0x1Au))
            {
              goto LABEL_816;
            }

            while (1)
            {
              if (v136 > 0x5Au)
              {
                if (v136 <= 0x9Fu)
                {
                  if ((v136 - 123) < 0xFFE6u)
                  {
                    goto LABEL_816;
                  }

LABEL_491:
                  v158 = v134[1];
                  *(this + 3) = v134 + 1;
                  v159 = SLChar::sLexFold[v158 & 0x3F | (SLChar::sUniMap[v158 >> 6] << 6)] + v158;
                  if (v159 < 0x41u || v159 >= 0x5Bu && (v159 - 123) < 0xFFE6u)
                  {
                    goto LABEL_816;
                  }

                  v160 = v134[2];
                  *(this + 3) = v134 + 2;
                  v161 = SLChar::sLexFold[v160 & 0x3F | (SLChar::sUniMap[v160 >> 6] << 6)] + v160;
                  if (v161 < 0x41u || v161 >= 0x5Bu && (v161 - 123) < 0xFFE6u)
                  {
                    goto LABEL_816;
                  }

                  v162 = v134[3];
                  *(this + 3) = v134 + 3;
                  v163 = SLChar::sLexFold[v162 & 0x3F | (SLChar::sUniMap[v162 >> 6] << 6)] + v162;
                  if (v163 < 0x41u || v163 >= 0x5Bu && (v163 - 123) < 0xFFE6u)
                  {
                    goto LABEL_816;
                  }

                  v164 = 0;
                  v165 = 0;
                  *(this + 3) = v134 + 4;
                  do
                  {
                    v164 = v134[v165] + (v164 << 8);
                  }

                  while (v165++ < 3);
                  v295 = 0;
                  v296 = 0;
                  if (SLLexerImpl::ScanFixed(this, &v296, 0, 0) && SLLexerImpl::ScanWhole(this, &v295, 0))
                  {
                    v167 = v164 | 0x20202020;
                    if ((v164 | 0x20202020) == 0x666F7263 || v167 == 1870030194 || v167 == 1986360431)
                    {
                      v294 = this;
                      goto LABEL_839;
                    }

                    *(this + 3) = v134;
                    goto LABEL_817;
                  }

                  v148 = *(this + 3);
LABEL_466:
                  v150 = v148[1];
                  *(this + 3) = v148 + 1;
                  if (((SLChar::sLexFold[v150 & 0x3F | (SLChar::sUniMap[v150 >> 6] << 6)] + v150) & 0xFFDF) != 0x4B)
                  {
                    goto LABEL_816;
                  }

                  v152 = v148[2];
                  v151 = v148 + 2;
                  *(this + 3) = v151;
                  v153 = SLChar::sLexFold[v152 & 0x3F | (SLChar::sUniMap[v152 >> 6] << 6)] + v152;
                  if (v153 > 0x20u)
                  {
                    if (v153 > 0xA0u)
                    {
                      if (v153 != 8239)
                      {
                        goto LABEL_816;
                      }
                    }

                    else if (v153 != 160)
                    {
                      goto LABEL_816;
                    }
                  }

                  else if (v153 != 9 && v153 != 32)
                  {
                    goto LABEL_816;
                  }

                  while (1)
                  {
                    *(this + 3) = ++v151;
                    if ((*(this + 5) - v151) <= 8)
                    {
                      SLLexerInstance::Refill(this);
                      v151 = *(this + 3);
                    }

                    v154 = SLChar::sLexFold[*v151 & 0x3F | (SLChar::sUniMap[*v151 >> 6] << 6)] + *v151;
                    v155 = v154;
                    if (v154 <= 0x54u)
                    {
                      break;
                    }

                    if (v154 <= 0x73u)
                    {
                      v169 = (SLChar::sLexFold[*v151 & 0x3F | (SLChar::sUniMap[*v151 >> 6] << 6)] + *v151);
                      v168 = v169 == 97;
                      if (v169 <= 0x61)
                      {
                        goto LABEL_512;
                      }

                      if (v169 != 114)
                      {
                        goto LABEL_816;
                      }

LABEL_530:
                      v178 = v151[1];
                      *(this + 3) = v151 + 1;
                      if (((SLChar::sLexFold[v178 & 0x3F | (SLChar::sUniMap[v178 >> 6] << 6)] + v178) & 0xFFDF) != 0x4F)
                      {
                        goto LABEL_816;
                      }

                      v179 = v151[2];
                      *(this + 3) = v151 + 2;
                      if (((SLChar::sLexFold[v179 & 0x3F | (SLChar::sUniMap[v179 >> 6] << 6)] + v179) & 0xFFDF) != 0x4D)
                      {
                        goto LABEL_816;
                      }

                      v180 = v151[3];
                      *(this + 3) = v151 + 3;
                      if (((SLChar::sLexFold[v180 & 0x3F | (SLChar::sUniMap[v180 >> 6] << 6)] + v180) & 0xFFDF) != 0x4E)
                      {
                        goto LABEL_816;
                      }

                      v182 = v151[4];
                      v181 = v151 + 4;
                      *(this + 3) = v181;
                      v183 = SLChar::sLexFold[v182 & 0x3F | (SLChar::sUniMap[v182 >> 6] << 6)] + v182;
                      if (v183 > 0x20u)
                      {
                        if (v183 > 0xA0u)
                        {
                          if (v183 != 8239)
                          {
                            goto LABEL_816;
                          }
                        }

                        else if (v183 != 160)
                        {
                          goto LABEL_816;
                        }
                      }

                      else if (v183 != 9 && v183 != 32)
                      {
                        goto LABEL_816;
                      }

                      while (1)
                      {
                        *(this + 3) = ++v181;
                        if ((*(this + 5) - v181) <= 7)
                        {
                          SLLexerInstance::Refill(this);
                          v181 = *(this + 3);
                        }

                        v197 = (SLChar::sLexFold[*v181 & 0x3F | (SLChar::sUniMap[*v181 >> 6] << 6)] + *v181);
                        if (v197 > 0x53)
                        {
                          break;
                        }

                        v198 = (SLChar::sLexFold[*v181 & 0x3F | (SLChar::sUniMap[*v181 >> 6] << 6)] + *v181);
                        if (v197 > 0x20)
                        {
                          if (v198 != 78)
                          {
                            if (v198 != 83)
                            {
                              goto LABEL_816;
                            }

                            goto LABEL_621;
                          }

                          goto LABEL_642;
                        }

                        if (v198 != 9)
                        {
                          v199 = v198 == 32;
LABEL_593:
                          if (!v199)
                          {
                            goto LABEL_816;
                          }

                          continue;
                        }
                      }

                      if (v197 <= 0x73)
                      {
                        v208 = (SLChar::sLexFold[*v181 & 0x3F | (SLChar::sUniMap[*v181 >> 6] << 6)] + *v181);
                        if (v208 != 110)
                        {
                          if (v208 != 115)
                          {
                            goto LABEL_816;
                          }

LABEL_621:
                          v209 = v181[1];
                          *(this + 3) = v181 + 1;
                          if (((SLChar::sLexFold[v209 & 0x3F | (SLChar::sUniMap[v209 >> 6] << 6)] + v209) & 0xFFDF) != 0x50)
                          {
                            goto LABEL_816;
                          }

                          v210 = v181[2];
                          *(this + 3) = v181 + 2;
                          if (((SLChar::sLexFold[v210 & 0x3F | (SLChar::sUniMap[v210 >> 6] << 6)] + v210) & 0xFFDF) != 0x4C)
                          {
                            goto LABEL_816;
                          }

                          v211 = v181[3];
                          *(this + 3) = v181 + 3;
                          if (((SLChar::sLexFold[v211 & 0x3F | (SLChar::sUniMap[v211 >> 6] << 6)] + v211) & 0xFFDF) != 0x4C)
                          {
                            goto LABEL_816;
                          }

                          *(this + 3) = v181 + 4;
                          v207 = *(this + 24) | 0x80;
                          goto LABEL_831;
                        }

LABEL_642:
                        v219 = v181[1];
                        *(this + 3) = v181 + 1;
                        if (((SLChar::sLexFold[v219 & 0x3F | (SLChar::sUniMap[v219 >> 6] << 6)] + v219) & 0xFFDF) != 0x4F)
                        {
                          goto LABEL_816;
                        }

                        v220 = v181[2];
                        *(this + 3) = v181 + 2;
                        if (((SLChar::sLexFold[v220 & 0x3F | (SLChar::sUniMap[v220 >> 6] << 6)] + v220) & 0xFFDF) != 0x52)
                        {
                          goto LABEL_816;
                        }

                        v221 = v181[3];
                        *(this + 3) = v181 + 3;
                        if (((SLChar::sLexFold[v221 & 0x3F | (SLChar::sUniMap[v221 >> 6] << 6)] + v221) & 0xFFDF) != 0x4D)
                        {
                          goto LABEL_816;
                        }

                        *(this + 3) = v181 + 4;
                        v207 = *(this + 24) & 0xFFFFFF7F;
                        goto LABEL_831;
                      }

                      v199 = (SLChar::sLexFold[*v181 & 0x3F | (SLChar::sUniMap[*v181 >> 6] << 6)] + *v181) == 160;
                      if ((SLChar::sLexFold[*v181 & 0x3F | (SLChar::sUniMap[*v181 >> 6] << 6)] + *v181) > 0xA0u)
                      {
                        v199 = (SLChar::sLexFold[*v181 & 0x3F | (SLChar::sUniMap[*v181 >> 6] << 6)] + *v181) == 8239;
                      }

                      goto LABEL_593;
                    }

                    if ((SLChar::sLexFold[*v151 & 0x3F | (SLChar::sUniMap[*v151 >> 6] << 6)] + *v151) > 0xA0u)
                    {
                      v157 = v154 == 8239;
LABEL_488:
                      if (!v157)
                      {
                        goto LABEL_816;
                      }

                      continue;
                    }

                    if (v154 != 160)
                    {
                      if (v154 != 116)
                      {
                        goto LABEL_816;
                      }

LABEL_525:
                      v176 = v151[1];
                      *(this + 3) = v151 + 1;
                      v177 = SLChar::sLexFold[v176 & 0x3F | (SLChar::sUniMap[v176 >> 6] << 6)] + v176;
                      if (v177 > 0x4Fu)
                      {
                        if (v177 > 0x69u)
                        {
                          if (v177 != 111)
                          {
                            goto LABEL_816;
                          }

                          goto LABEL_555;
                        }

                        if (v177 != 105)
                        {
                          goto LABEL_816;
                        }
                      }

                      else if (v177 != 73)
                      {
                        if (v177 != 79)
                        {
                          goto LABEL_816;
                        }

LABEL_555:
                        v189 = v151[2];
                        *(this + 3) = v151 + 2;
                        if (((SLChar::sLexFold[v189 & 0x3F | (SLChar::sUniMap[v189 >> 6] << 6)] + v189) & 0xFFDF) != 0x42)
                        {
                          goto LABEL_816;
                        }

                        v190 = v151[3];
                        *(this + 3) = v151 + 3;
                        if (((SLChar::sLexFold[v190 & 0x3F | (SLChar::sUniMap[v190 >> 6] << 6)] + v190) & 0xFFDF) != 0x49)
                        {
                          goto LABEL_816;
                        }

                        v192 = v151[4];
                        v191 = v151 + 4;
                        *(this + 3) = v191;
                        v193 = SLChar::sLexFold[v192 & 0x3F | (SLChar::sUniMap[v192 >> 6] << 6)] + v192;
                        if (v193 > 0x20u)
                        {
                          if (v193 > 0xA0u)
                          {
                            if (v193 != 8239)
                            {
                              goto LABEL_816;
                            }
                          }

                          else if (v193 != 160)
                          {
                            goto LABEL_816;
                          }
                        }

                        else if (v193 != 9 && v193 != 32)
                        {
                          goto LABEL_816;
                        }

                        while (1)
                        {
                          *(this + 3) = ++v191;
                          if ((*(this + 5) - v191) <= 7)
                          {
                            SLLexerInstance::Refill(this);
                            v191 = *(this + 3);
                          }

                          v200 = (SLChar::sLexFold[*v191 & 0x3F | (SLChar::sUniMap[*v191 >> 6] << 6)] + *v191);
                          if (v200 > 0x4B)
                          {
                            break;
                          }

                          v201 = (SLChar::sLexFold[*v191 & 0x3F | (SLChar::sUniMap[*v191 >> 6] << 6)] + *v191);
                          if (v200 > 0x20)
                          {
                            if (v201 <= 0x2D)
                            {
                              if (v201 != 45)
                              {
                                goto LABEL_816;
                              }

                              *(this + 3) = v191 + 1;
                              v213 = this;
                              goto LABEL_688;
                            }

                            if (v201 != 72)
                            {
                              goto LABEL_816;
                            }

                            goto LABEL_655;
                          }

                          if (v201 != 9)
                          {
                            v202 = v201 == 32;
LABEL_605:
                            if (!v202)
                            {
                              goto LABEL_816;
                            }

                            continue;
                          }
                        }

                        if (v200 <= 0x6C)
                        {
                          v212 = (SLChar::sLexFold[*v191 & 0x3F | (SLChar::sUniMap[*v191 >> 6] << 6)] + *v191);
                          if (v212 <= 0x67)
                          {
                            if (v212 != 76)
                            {
                              goto LABEL_816;
                            }

LABEL_648:
                            v222 = v191[1];
                            *(this + 3) = v191 + 1;
                            v223 = (SLChar::sLexFold[v222 & 0x3F | (SLChar::sUniMap[v222 >> 6] << 6)] + v222);
                            if (v223 > 0x2A)
                            {
                              if (v223 == 43)
                              {
                                v232 = v191[2];
                                *(this + 3) = v191 + 2;
                                if (((SLChar::sLexFold[v232 & 0x3F | (SLChar::sUniMap[v232 >> 6] << 6)] + v232) & 0xFFDF) != 0x48)
                                {
                                  goto LABEL_816;
                                }

                                v233 = v191[3];
                                *(this + 3) = v191 + 3;
                                if ((SLChar::sLexFold[v233 & 0x3F | (SLChar::sUniMap[v233 >> 6] << 6)] + v233) != 42)
                                {
                                  goto LABEL_816;
                                }

                                *(this + 3) = v191 + 4;
                                v213 = this;
                              }

                              else
                              {
                                if (v223 != 45)
                                {
                                  goto LABEL_816;
                                }

                                *(this + 3) = v191 + 2;
                                v213 = this;
                              }
                            }

                            else if (v223 == 37)
                            {
                              *(this + 3) = v191 + 2;
                              v213 = this;
                            }

                            else
                            {
                              if (v223 != 42)
                              {
                                goto LABEL_816;
                              }

                              v224 = v191[2];
                              *(this + 3) = v191 + 2;
                              *(this + 6) = v191 + 2;
                              if ((SLChar::sLexFold[v224 & 0x3F | (SLChar::sUniMap[v224 >> 6] << 6)] + v224) == 43)
                              {
                                v225 = v191[3];
                                *(this + 3) = v191 + 3;
                                if (((SLChar::sLexFold[v225 & 0x3F | (SLChar::sUniMap[v225 >> 6] << 6)] + v225) & 0xFFDF) == 0x48)
                                {
                                  *(this + 3) = v191 + 4;
                                  v213 = this;
                                  goto LABEL_688;
                                }

                                *(this + 3) = v191 + 2;
                              }

                              v213 = this;
                            }

LABEL_688:
                            v129 = SLLexerImpl::ToBICommand(v213);
                            if (v129)
                            {
LABEL_840:
                              v291 = v129;
                              SLLexerImpl::SkipToNextCommand(this, 0);
                              *(this + 9) = this + 80;
                              return v291;
                            }

LABEL_817:
                            SLLexerImpl::Error(this);
                            SLLexerImpl::SkipToNextCommand(this, 1);
                            goto LABEL_2;
                          }

                          if (v212 != 104)
                          {
                            if (v212 != 108)
                            {
                              goto LABEL_816;
                            }

                            goto LABEL_648;
                          }

LABEL_655:
                          v226 = v191[1];
                          *(this + 3) = v191 + 1;
                          v227 = (SLChar::sLexFold[v226 & 0x3F | (SLChar::sUniMap[v226 >> 6] << 6)] + v226);
                          if (v227 > 0x2A)
                          {
                            if (v227 == 43)
                            {
                              v234 = v191[2];
                              *(this + 3) = v191 + 2;
                              v235 = SLChar::sLexFold[v234 & 0x3F | (SLChar::sUniMap[v234 >> 6] << 6)] + v234;
                              if (v235 > 0x4Bu)
                              {
                                if ((v235 & 0xFFDF) != 0x4C)
                                {
                                  goto LABEL_816;
                                }

                                v237 = v191[3];
                                *(this + 3) = v191 + 3;
                                if ((SLChar::sLexFold[v237 & 0x3F | (SLChar::sUniMap[v237 >> 6] << 6)] + v237) != 42)
                                {
                                  goto LABEL_816;
                                }

                                *(this + 3) = v191 + 4;
                                v213 = this;
                              }

                              else
                              {
                                if (v235 != 33)
                                {
                                  goto LABEL_816;
                                }

                                v236 = v191[3];
                                *(this + 3) = v191 + 3;
                                if (((SLChar::sLexFold[v236 & 0x3F | (SLChar::sUniMap[v236 >> 6] << 6)] + v236) & 0xFFDF) != 0x48)
                                {
                                  goto LABEL_816;
                                }

                                *(this + 3) = v191 + 4;
                                v213 = this;
                              }
                            }

                            else
                            {
                              if (v227 != 45)
                              {
                                goto LABEL_816;
                              }

                              *(this + 3) = v191 + 2;
                              v213 = this;
                            }
                          }

                          else if (v227 == 37)
                          {
                            *(this + 3) = v191 + 2;
                            v213 = this;
                          }

                          else
                          {
                            if (v227 != 42)
                            {
                              goto LABEL_816;
                            }

                            *(this + 3) = v191 + 2;
                            v213 = this;
                          }

                          goto LABEL_688;
                        }

                        v202 = (SLChar::sLexFold[*v191 & 0x3F | (SLChar::sUniMap[*v191 >> 6] << 6)] + *v191) == 160;
                        if ((SLChar::sLexFold[*v191 & 0x3F | (SLChar::sUniMap[*v191 >> 6] << 6)] + *v191) > 0xA0u)
                        {
                          v202 = (SLChar::sLexFold[*v191 & 0x3F | (SLChar::sUniMap[*v191 >> 6] << 6)] + *v191) == 8239;
                        }

                        goto LABEL_605;
                      }

                      v184 = v151[2];
                      *(this + 3) = v151 + 2;
                      if (((SLChar::sLexFold[v184 & 0x3F | (SLChar::sUniMap[v184 >> 6] << 6)] + v184) & 0xFFDF) != 0x4D)
                      {
                        goto LABEL_816;
                      }

                      v185 = v151[3];
                      *(this + 3) = v151 + 3;
                      if (((SLChar::sLexFold[v185 & 0x3F | (SLChar::sUniMap[v185 >> 6] << 6)] + v185) & 0xFFDF) != 0x45)
                      {
                        goto LABEL_816;
                      }

                      v187 = v151[4];
                      v186 = v151 + 4;
                      *(this + 3) = v186;
                      v188 = SLChar::sLexFold[v187 & 0x3F | (SLChar::sUniMap[v187 >> 6] << 6)] + v187;
                      if ((v188 & 0xFFDF) == 0x4E)
                      {
                        goto LABEL_816;
                      }

                      while (1)
                      {
                        if (v188 > 0x4Eu)
                        {
                          if (v188 <= 0x9Fu)
                          {
                            if (v188 != 110)
                            {
                              goto LABEL_816;
                            }

LABEL_634:
                            v214 = v186[1];
                            *(this + 3) = v186 + 1;
                            v215 = SLChar::sLexFold[v214 & 0x3F | (SLChar::sUniMap[v214 >> 6] << 6)] + v214;
                            if (v215 > 0x4Fu)
                            {
                              if (v215 > 0x6Du)
                              {
                                if (v215 != 111)
                                {
                                  goto LABEL_816;
                                }

LABEL_665:
                                v230 = v186[2];
                                *(this + 3) = v186 + 2;
                                if (((SLChar::sLexFold[v230 & 0x3F | (SLChar::sUniMap[v230 >> 6] << 6)] + v230) & 0xFFDF) != 0x52)
                                {
                                  goto LABEL_816;
                                }

                                v231 = v186[3];
                                *(this + 3) = v186 + 3;
                                if (((SLChar::sLexFold[v231 & 0x3F | (SLChar::sUniMap[v231 >> 6] << 6)] + v231) & 0xFFDF) != 0x4D)
                                {
                                  goto LABEL_816;
                                }

                                *(this + 3) = v186 + 4;
                                v207 = *(this + 24) & 0xFFFFFFBF;
                                goto LABEL_831;
                              }

                              if (v215 != 109)
                              {
                                goto LABEL_816;
                              }
                            }

                            else if (v215 != 77)
                            {
                              if (v215 != 79)
                              {
                                goto LABEL_816;
                              }

                              goto LABEL_665;
                            }

                            v228 = v186[2];
                            *(this + 3) = v186 + 2;
                            if (((SLChar::sLexFold[v228 & 0x3F | (SLChar::sUniMap[v228 >> 6] << 6)] + v228) & 0xFFDF) != 0x42)
                            {
                              goto LABEL_816;
                            }

                            v229 = v186[3];
                            *(this + 3) = v186 + 3;
                            if (((SLChar::sLexFold[v229 & 0x3F | (SLChar::sUniMap[v229 >> 6] << 6)] + v229) & 0xFFDF) != 0x52)
                            {
                              goto LABEL_816;
                            }

                            *(this + 3) = v186 + 4;
                            v207 = *(this + 24) | 0x40;
                            goto LABEL_831;
                          }

                          if (v188 != 160 && v188 != 8239)
                          {
                            goto LABEL_816;
                          }
                        }

                        else if (v188 > 0x1Fu)
                        {
                          if (v188 != 32)
                          {
                            if (v188 != 78)
                            {
                              goto LABEL_816;
                            }

                            goto LABEL_634;
                          }
                        }

                        else if (v188 != 9)
                        {
                          goto LABEL_816;
                        }

                        *(this + 3) = ++v186;
                        if ((*(this + 5) - v186) <= 7)
                        {
                          SLLexerInstance::Refill(this);
                          v186 = *(this + 3);
                        }

                        v188 = SLChar::sLexFold[*v186 & 0x3F | (SLChar::sUniMap[*v186 >> 6] << 6)] + *v186;
                      }
                    }
                  }

                  v156 = (SLChar::sLexFold[*v151 & 0x3F | (SLChar::sUniMap[*v151 >> 6] << 6)] + *v151);
                  if (v155 > 0x40)
                  {
                    if (v156 > 0x51)
                    {
                      if (v156 != 82)
                      {
                        if (v156 != 84)
                        {
                          goto LABEL_816;
                        }

                        goto LABEL_525;
                      }

                      goto LABEL_530;
                    }

                    v168 = v156 == 65;
LABEL_512:
                    if (!v168)
                    {
                      goto LABEL_816;
                    }

                    v170 = v151[1];
                    *(this + 3) = v151 + 1;
                    if (((SLChar::sLexFold[v170 & 0x3F | (SLChar::sUniMap[v170 >> 6] << 6)] + v170) & 0xFFDF) != 0x42)
                    {
                      goto LABEL_816;
                    }

                    v171 = v151[2];
                    *(this + 3) = v151 + 2;
                    if (((SLChar::sLexFold[v171 & 0x3F | (SLChar::sUniMap[v171 >> 6] << 6)] + v171) & 0xFFDF) != 0x42)
                    {
                      goto LABEL_816;
                    }

                    v172 = v151[3];
                    *(this + 3) = v151 + 3;
                    if (((SLChar::sLexFold[v172 & 0x3F | (SLChar::sUniMap[v172 >> 6] << 6)] + v172) & 0xFFDF) != 0x52)
                    {
                      goto LABEL_816;
                    }

                    v174 = v151[4];
                    v173 = v151 + 4;
                    *(this + 3) = v173;
                    v175 = SLChar::sLexFold[v174 & 0x3F | (SLChar::sUniMap[v174 >> 6] << 6)] + v174;
                    if (v175 > 0x20u)
                    {
                      if (v175 > 0xA0u)
                      {
                        if (v175 != 8239)
                        {
                          goto LABEL_816;
                        }
                      }

                      else if (v175 != 160)
                      {
                        goto LABEL_816;
                      }
                    }

                    else if (v175 != 9 && v175 != 32)
                    {
                      goto LABEL_816;
                    }

                    while (1)
                    {
                      *(this + 3) = ++v173;
                      if ((*(this + 5) - v173) <= 7)
                      {
                        SLLexerInstance::Refill(this);
                        v173 = *(this + 3);
                      }

                      v194 = (SLChar::sLexFold[*v173 & 0x3F | (SLChar::sUniMap[*v173 >> 6] << 6)] + *v173);
                      if (v194 > 0x53)
                      {
                        break;
                      }

                      v195 = (SLChar::sLexFold[*v173 & 0x3F | (SLChar::sUniMap[*v173 >> 6] << 6)] + *v173);
                      if (v194 > 0x20)
                      {
                        if (v195 != 78)
                        {
                          if (v195 != 83)
                          {
                            goto LABEL_816;
                          }

LABEL_612:
                          v204 = v173[1];
                          *(this + 3) = v173 + 1;
                          if (((SLChar::sLexFold[v204 & 0x3F | (SLChar::sUniMap[v204 >> 6] << 6)] + v204) & 0xFFDF) != 0x50)
                          {
                            goto LABEL_816;
                          }

                          v205 = v173[2];
                          *(this + 3) = v173 + 2;
                          if (((SLChar::sLexFold[v205 & 0x3F | (SLChar::sUniMap[v205 >> 6] << 6)] + v205) & 0xFFDF) != 0x4C)
                          {
                            goto LABEL_816;
                          }

                          v206 = v173[3];
                          *(this + 3) = v173 + 3;
                          if (((SLChar::sLexFold[v206 & 0x3F | (SLChar::sUniMap[v206 >> 6] << 6)] + v206) & 0xFFDF) != 0x4C)
                          {
                            goto LABEL_816;
                          }

                          *(this + 3) = v173 + 4;
                          v207 = *(this + 24) | 0x100;
                          goto LABEL_831;
                        }

                        goto LABEL_638;
                      }

                      if (v195 != 9)
                      {
                        v196 = v195 == 32;
LABEL_581:
                        if (!v196)
                        {
                          goto LABEL_816;
                        }

                        continue;
                      }
                    }

                    if (v194 <= 0x73)
                    {
                      v203 = (SLChar::sLexFold[*v173 & 0x3F | (SLChar::sUniMap[*v173 >> 6] << 6)] + *v173);
                      if (v203 != 110)
                      {
                        if (v203 != 115)
                        {
                          goto LABEL_816;
                        }

                        goto LABEL_612;
                      }

LABEL_638:
                      v216 = v173[1];
                      *(this + 3) = v173 + 1;
                      if (((SLChar::sLexFold[v216 & 0x3F | (SLChar::sUniMap[v216 >> 6] << 6)] + v216) & 0xFFDF) != 0x4F)
                      {
                        goto LABEL_816;
                      }

                      v217 = v173[2];
                      *(this + 3) = v173 + 2;
                      if (((SLChar::sLexFold[v217 & 0x3F | (SLChar::sUniMap[v217 >> 6] << 6)] + v217) & 0xFFDF) != 0x52)
                      {
                        goto LABEL_816;
                      }

                      v218 = v173[3];
                      *(this + 3) = v173 + 3;
                      if (((SLChar::sLexFold[v218 & 0x3F | (SLChar::sUniMap[v218 >> 6] << 6)] + v218) & 0xFFDF) != 0x4D)
                      {
                        goto LABEL_816;
                      }

                      *(this + 3) = v173 + 4;
                      v207 = *(this + 24) & 0xFFFFFEFF;
                      goto LABEL_831;
                    }

                    v196 = (SLChar::sLexFold[*v173 & 0x3F | (SLChar::sUniMap[*v173 >> 6] << 6)] + *v173) == 160;
                    if ((SLChar::sLexFold[*v173 & 0x3F | (SLChar::sUniMap[*v173 >> 6] << 6)] + *v173) > 0xA0u)
                    {
                      v196 = (SLChar::sLexFold[*v173 & 0x3F | (SLChar::sUniMap[*v173 >> 6] << 6)] + *v173) == 8239;
                    }

                    goto LABEL_581;
                  }

                  v157 = v156 == 9;
                  if (v156 > 9)
                  {
                    v157 = v156 == 32;
                  }

                  goto LABEL_488;
                }

                if (v136 != 160 && v136 != 8239)
                {
                  goto LABEL_816;
                }
              }

              else if (v136 > 0x1Fu)
              {
                if (v136 != 32)
                {
                  if (v136 < 0x41u)
                  {
                    goto LABEL_816;
                  }

                  goto LABEL_491;
                }
              }

              else if (v136 != 9)
              {
                goto LABEL_816;
              }

              *(this + 3) = ++v134;
              if ((*(this + 5) - v134) <= 7)
              {
                SLLexerInstance::Refill(this);
                v134 = *(this + 3);
              }

              v136 = SLChar::sLexFold[*v134 & 0x3F | (SLChar::sUniMap[*v134 >> 6] << 6)] + *v134;
            }
          }

          if (v45 != 160 && v45 != 8239)
          {
            goto LABEL_816;
          }
        }

        else if (v45 > 0x1Fu)
        {
          if (v45 != 32)
          {
            if (v45 != 77)
            {
              goto LABEL_816;
            }

            goto LABEL_315;
          }
        }

        else if (v45 != 9)
        {
          goto LABEL_816;
        }

        *(this + 3) = ++v43;
        if ((*(this + 5) - v43) <= 8)
        {
          SLLexerInstance::Refill(this);
          v43 = *(this + 3);
        }

        v45 = SLChar::sLexFold[*v43 & 0x3F | (SLChar::sUniMap[*v43 >> 6] << 6)] + *v43;
      }
    }

    break;
  }

  v2 = 2;
LABEL_834:
  v3 += v2;
LABEL_835:
  *(this + 3) = v3;
  v289 = *(this + 24);
  v290 = *(this + 25);
  *(this + 23) = v289;
  if ((v290 ^ v289) >= 0x10)
  {
    SLLexerImpl::CreateBehaviorToken(this);
  }

  v291 = 0;
  v292 = *(this + 13);
  *(this + 9) = this + 80;
  *(this + 10) = v292;
  *(this + 8) = v3;
  SLLexerInstance::Refill(this);
  return v291;
}

uint64_t SLLexerImpl::SkipToNextCommand(SLLexerImpl *this, char a2)
{
  for (i = *(this + 3); ; *(this + 3) = i)
  {
    if ((*(this + 5) - i) <= 2)
    {
      SLLexerInstance::Refill(this);
      i = *(this + 3);
    }

    if (*(this + 42) == (SLChar::sLexFold[*i & 0x3F | (SLChar::sUniMap[*i >> 6] << 6)] + *i) && (!*(this + 43) || i[1] == *(this + 43)))
    {
      return 0;
    }

    v5 = (SLChar::sLexFold[*i & 0x3F | (SLChar::sUniMap[*i >> 6] << 6)] + *i);
    if (v5 <= 0x3A)
    {
      if (v5 == 9 || v5 == 32)
      {
        goto LABEL_20;
      }

      if (!(SLChar::sLexFold[*i & 0x3F | (SLChar::sUniMap[*i >> 6] << 6)] + *i))
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v5 != 160 && v5 != 8239)
    {
      break;
    }

LABEL_20:
    ++i;
  }

  if (v5 != 59)
  {
LABEL_17:
    if ((a2 & 1) == 0)
    {
      SLLexerImpl::Error(this);
      i = *(this + 3);
    }

    a2 = 1;
    goto LABEL_20;
  }

  *(this + 3) = i + 1;
  return 1;
}

uint64_t SLLexerImpl::NextPhonemeToken(SLLexerImpl *this)
{
  for (*(this + 8) = *(this + 3); ; *(this + 8) = v9)
  {
    v2 = *(this + 3);
    if ((*(this + 5) - v2) <= 4)
    {
      SLLexerInstance::Refill(this);
      v2 = *(this + 3);
    }

    v3 = SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2;
    if (v3 > 0x5Bu)
    {
      if (v3 > 0xB3u)
      {
        if ((v3 >> 4) > 0x202u)
        {
          if (v3 > 0x2034u)
          {
            v12 = v3 < 0x2037u;
            v13 = (v3 - 8249);
            if (!v12 && v13 >= 2)
            {
              goto LABEL_69;
            }
          }

          else if (v3 < 0x2032u || v3 == 8244)
          {
            goto LABEL_69;
          }

          goto LABEL_122;
        }

        if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) <= 0xBBu)
        {
          if (v3 != 180 && v3 != 187)
          {
            goto LABEL_69;
          }

          goto LABEL_122;
        }

        if ((v3 >> 3) < 0x403u)
        {
          goto LABEL_69;
        }

        if ((v3 >> 5) < 0x101u)
        {
          goto LABEL_122;
        }

        if (v3 != 8239)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v6 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
        if (v6 <= 0x7B)
        {
          v7 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
          if (v6 <= 0x5F)
          {
            if (v7 == 93)
            {
              goto LABEL_121;
            }

LABEL_69:
            *(this + 3) = v2 + 1;
            v15 = (*(**(this + 16) + 16))(*(this + 16));
            if (v15 != 1)
            {
              if (v15 != 2)
              {
                if (v15)
                {
                  v9 = *(this + 3);
                  goto LABEL_110;
                }

                SLLexerImpl::Error(this);
                return 0;
              }

              *(this + 3) += 2;
            }

            operator new();
          }

          if (v7 != 96)
          {
            if (v7 != 123)
            {
              goto LABEL_69;
            }

            goto LABEL_125;
          }

LABEL_122:
          *(this + 3) = v2 + 1;
          v20 = this;
LABEL_123:
          SLLexerInstance::CreateToken(v20);
        }

        if (v6 <= 0x9F)
        {
          if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) != 125)
          {
            goto LABEL_69;
          }

LABEL_121:
          *(this + 3) = v2 + 1;
          v20 = this;
          goto LABEL_123;
        }

        if (v3 != 160)
        {
          if (v3 != 171)
          {
            goto LABEL_69;
          }

          goto LABEL_122;
        }
      }

LABEL_60:
      v9 = v2 + 1;
      *(this + 3) = v2 + 1;
      while (1)
      {
        v19 = (SLChar::sLexFold[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] + *v9);
        if (v19 > 0x20)
        {
          if (v19 > 0xA0)
          {
            if ((SLChar::sLexFold[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] + *v9) != 8239)
            {
              goto LABEL_116;
            }
          }

          else if ((SLChar::sLexFold[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] + *v9) != 160)
          {
            goto LABEL_116;
          }
        }

        else if (v19 != 9 && v19 != 32)
        {
          goto LABEL_116;
        }

LABEL_110:
        *(this + 3) = ++v9;
        if (*(this + 5) == v9)
        {
          SLLexerInstance::Refill(this);
          v9 = *(this + 3);
        }
      }
    }

    if (v3 > 0x26u)
    {
      v8 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
      if (v8 > 0x2D)
      {
        if (v8 > 0x3B)
        {
          if (v8 != 63)
          {
            if (v8 != 91)
            {
              goto LABEL_69;
            }

LABEL_125:
            *(this + 3) = v2 + 1;
            v20 = this;
            goto LABEL_123;
          }
        }

        else if (v8 != 46 && v8 != 59)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v8 <= 0x29)
        {
          if (v8 != 39)
          {
            if (v8 == 41)
            {
              goto LABEL_121;
            }

            goto LABEL_125;
          }

          goto LABEL_122;
        }

        if (v8 != 44)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_117;
    }

    v4 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
    if (v4 > 0xD)
    {
      break;
    }

    v5 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
    if (v4 <= 9)
    {
      if (v5 == 9)
      {
        goto LABEL_60;
      }

      if (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2)
      {
        goto LABEL_69;
      }

      *(this + 23) &= 0xFFFFFFF0;
      *(this + 3) = v2;
      return 0;
    }

    if (v5 == 10)
    {
      v16 = v2[1];
      v9 = v2 + 1;
      *(this + 3) = v2 + 1;
      *(this + 6) = v2 + 1;
      v17 = SLChar::sLexFold[v16 & 0x3F | (SLChar::sUniMap[v16 >> 6] << 6)] + v16;
      if (v17 > 0x1Fu)
      {
        if (v17 > 0xA0u)
        {
          v18 = v17 == 8239;
          v17 = 8239;
          if (v18)
          {
            goto LABEL_93;
          }
        }

        else if ((v17 & 0x7F) == 0x20)
        {
          goto LABEL_93;
        }
      }

      else if (v17 > 0xAu)
      {
        if (v17 == 13)
        {
          goto LABEL_93;
        }
      }

      else if (v17 > 8u)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v5 != 13)
      {
        goto LABEL_69;
      }

      v9 = v2 + 1;
      v10 = v2[1];
      *(this + 3) = v2 + 1;
      *(this + 6) = v2 + 1;
      v11 = SLChar::sLexFold[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)] + v10;
      if (v11 > 0x1Fu)
      {
        if (v11 > 0xA0u)
        {
          if (v11 == 8239)
          {
            goto LABEL_102;
          }
        }

        else if ((v11 & 0x7F) == 0x20)
        {
          while (1)
          {
            while (1)
            {
LABEL_102:
              *(this + 3) = ++v9;
              if (*(this + 5) == v9)
              {
                SLLexerInstance::Refill(this);
                v9 = *(this + 3);
              }

              v17 = SLChar::sLexFold[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] + *v9;
LABEL_93:
              if (v17 <= 0x1Fu)
              {
                break;
              }

              if (v17 > 0xA0u)
              {
                if (v17 != 8239)
                {
                  goto LABEL_106;
                }
              }

              else if ((v17 & 0x7F) != 0x20)
              {
                goto LABEL_106;
              }
            }

            if (v17 > 0xAu)
            {
              if (v17 == 13)
              {
                goto LABEL_128;
              }

LABEL_106:
              v9 = *(this + 6);
              *(this + 3) = v9;
              break;
            }

            if (v17 < 9u)
            {
              goto LABEL_106;
            }

            if (v17 == 10)
            {
              goto LABEL_138;
            }
          }
        }
      }

      else if (v11 > 0xAu)
      {
        if (v11 == 13)
        {
          goto LABEL_128;
        }
      }

      else if (v11 >= 9u)
      {
        if (v11 != 10)
        {
          goto LABEL_102;
        }

        v9 = v2 + 2;
        *(this + 3) = v2 + 2;
        while (1)
        {
          v23 = SLChar::sLexFold[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] + *v9;
          v24 = v23;
          if (v23 > 0x1Fu)
          {
            break;
          }

          do
          {
            if (v24 <= 0xA)
            {
              if (v23 >= 9u)
              {
                goto LABEL_138;
              }

              goto LABEL_126;
            }

            if (v23 != 13)
            {
              goto LABEL_126;
            }

LABEL_128:
            *(this + 3) = ++v9;
            if (*(this + 5) == v9)
            {
              SLLexerInstance::Refill(this);
              v9 = *(this + 3);
            }

            v23 = SLChar::sLexFold[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] + *v9;
            v24 = v23;
          }

          while (v23 <= 0x1Fu);
          if (v23 > 0xA0u)
          {
            goto LABEL_137;
          }

          if ((v23 | 0x80) != 0xA0)
          {
            goto LABEL_126;
          }

LABEL_138:
          *(this + 3) = ++v9;
          if (*(this + 5) == v9)
          {
            SLLexerInstance::Refill(this);
            v9 = *(this + 3);
          }
        }

        if (v23 > 0xA0u)
        {
LABEL_137:
          if (v23 != 8239)
          {
            goto LABEL_126;
          }

          goto LABEL_138;
        }

        if ((v23 & 0x7F) == 0x20)
        {
          goto LABEL_138;
        }

LABEL_126:
        v20 = this;
        goto LABEL_123;
      }
    }

LABEL_116:
    ;
  }

  if (v4 > 0x1F)
  {
    if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) == 32)
    {
      goto LABEL_60;
    }

    if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) >= 0x22u)
    {
      if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) != 34)
      {
        goto LABEL_69;
      }

      goto LABEL_122;
    }

LABEL_117:
    *(this + 3) = v2 + 1;
    v20 = this;
    goto LABEL_123;
  }

  if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) != 16)
  {
    goto LABEL_69;
  }

  *(this + 3) = v2 + 1;
  v22 = *(this + 23);
  *(this + 24) = v22;
  *(this + 25) = v22;
  *(this + 23) = 1;
  *(this + 13) = *(this + 10);
  return 0;
}

SLLexerInstance *SLLexerImpl::SkipSpaces(SLLexerInstance *this)
{
  v1 = this;
  v2 = *(this + 3);
LABEL_2:
  if ((*(v1 + 5) - v2) <= 2)
  {
    this = SLLexerInstance::Refill(v1);
    v2 = *(v1 + 3);
  }

  v3 = SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2;
  v4 = v3;
  if (v3 <= 0x1Fu)
  {
    v5 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
    if (v4 > 0xA)
    {
      if (v5 != 13)
      {
        goto LABEL_27;
      }
    }

    else if (v5 < 9)
    {
      goto LABEL_27;
    }

LABEL_14:
    *(v1 + 3) = ++v2;
    while (1)
    {
      v6 = SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2;
      v7 = v6;
      if (v6 > 0x1Fu)
      {
        if (v6 > 0xA0u)
        {
          if (v6 != 8239)
          {
            goto LABEL_2;
          }
        }

        else if ((v6 & 0x7F) != 0x20)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v8 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
        if (v7 <= 0xA)
        {
          if (v8 < 9)
          {
            goto LABEL_2;
          }
        }

        else if (v8 != 13)
        {
          goto LABEL_2;
        }
      }

      *(v1 + 3) = ++v2;
      if (*(v1 + 5) == v2)
      {
        this = SLLexerInstance::Refill(v1);
        v2 = *(v1 + 3);
      }
    }
  }

  if (v3 <= 0xA0u)
  {
    if ((v3 & 0x7F) != 0x20)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (v3 == 8239)
  {
    goto LABEL_14;
  }

LABEL_27:
  *(v1 + 3) = v2;
  return this;
}

BOOL SLLexerImpl::SkipToNextAttr(SLLexerImpl *this, char a2)
{
  while (1)
  {
    v3 = a2;
LABEL_2:
    v4 = *(this + 3);
    if ((*(this + 5) - v4) <= 2)
    {
      SLLexerInstance::Refill(this);
      v4 = *(this + 3);
    }

    v5 = SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4;
    if (v5 > 0x20u)
    {
      if (v5 <= 0x7Du)
      {
        if ((SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4) == 59)
        {
          ++v4;
          goto LABEL_40;
        }

        if ((SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4) == 125)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v6 = (SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4) == 160;
        if ((SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4) > 0xA0u)
        {
          v6 = v5 == 8239;
        }

        if (v6)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_35;
    }

    if (v5 <= 0xCu)
    {
      if (!(SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4))
      {
        break;
      }

      if ((v5 - 11) >= 0xFFFEu)
      {
LABEL_18:
        v8 = v4 + 1;
        *(this + 3) = v8;
        while (1)
        {
          v9 = SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8;
          v10 = v9;
          if (v9 > 0x1Fu)
          {
            if (v9 > 0xA0u)
            {
              if (v9 != 8239)
              {
                goto LABEL_2;
              }
            }

            else if ((v9 & 0x7F) != 0x20)
            {
              goto LABEL_2;
            }
          }

          else
          {
            v11 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
            if (v10 <= 0xA)
            {
              if (v11 < 9)
              {
                goto LABEL_2;
              }
            }

            else if (v11 != 13)
            {
              goto LABEL_2;
            }
          }

          *(this + 3) = ++v8;
          if (*(this + 5) == v8)
          {
            SLLexerInstance::Refill(this);
            v8 = *(this + 3);
          }
        }
      }

      goto LABEL_35;
    }

    v7 = (SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4);
    if (v7 <= 0xF)
    {
      if (v7 == 13)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }

    if (v7 == 32)
    {
      goto LABEL_18;
    }

    if (v7 == 16)
    {
      break;
    }

LABEL_35:
    *(this + 3) = v4 + 1;
    a2 = 1;
    if ((v3 & 1) == 0)
    {
      SLLexerImpl::Error(this);
      a2 = 1;
    }
  }

  v12 = v4 + 1;
  *(this + 3) = v12;
  if ((v3 & 1) == 0)
  {
    SLLexerImpl::Error(this);
    v12 = *(this + 3);
  }

  v4 = v12 - 1;
LABEL_40:
  result = v5 > 0x20u;
  *(this + 3) = v4;
  return result;
}

BOOL SLLexerImpl::AttrError(SLLexerImpl *this)
{
  SLLexerImpl::Error(this);

  return SLLexerImpl::SkipToNextAttr(this, 1);
}

float SLLexerImpl::ScanFloat(unsigned __int16 **this)
{
  SLLexerImpl::SkipSpaces(this);
  v2 = this[3];
  v3 = 0.0;
  v4 = 0.0;
  while (1)
  {
    while (1)
    {
      if (this[5] == v2)
      {
        SLLexerInstance::Refill(this);
        v2 = this[3];
      }

      v5 = *v2;
      if ((SLChar::sLexFold[v5 & 0x3F | (SLChar::sUniMap[v5 >> 6] << 6)] + v5) != 46)
      {
        break;
      }

      this[3] = ++v2;
      v3 = 1.0;
    }

    if ((SLChar::sLexFold[v5 & 0x3F | (SLChar::sUniMap[v5 >> 6] << 6)] + v5 - 48) >= 0xAu)
    {
      break;
    }

    this[3] = ++v2;
    v6 = (v5 - 48);
    if (v3 > 0.0)
    {
      v3 = v3 * 0.1;
      v4 = v4 + (v6 * v3);
    }

    else
    {
      v4 = v6 + (v4 * 10.0);
    }
  }

  this[3] = v2;
  SLLexerImpl::SkipSpaces(this);
  return v4;
}

SLLexerInstance *SLLexerImpl::ScanWord(SLLexerImpl *this, const void **a2)
{
  SLLexerImpl::SkipSpaces(this);
  v4 = *(this + 3);
  v5 = (SLChar::sLexFold[*v4 & 0x3F | (SLChar::sUniMap[*v4 >> 6] << 6)] + *v4);
  if (v5 == 39 || v5 == 34)
  {
    *(this + 3) = ++v4;
  }

  else
  {
    v5 = 32;
  }

  while (1)
  {
    if ((*(this + 5) - v4) <= 1)
    {
      SLLexerInstance::Refill(this);
      v4 = *(this + 3);
    }

    v6 = v4 + 1;
    v7 = *v4;
    *(this + 3) = v4 + 1;
    v8 = SLChar::sLexFold[v7 & 0x3F | (SLChar::sUniMap[v7 >> 6] << 6)] + v7;
    v9 = v8;
    if (v8 == 9)
    {
      v8 = 32;
    }

    v17 = v8;
    if (v5 == v8)
    {
      return SLLexerImpl::SkipSpaces(this);
    }

    if (v9 <= 36)
    {
      if (v9)
      {
        v11 = v9 == 16;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_35:
        *(this + 3) = v4;
        return SLLexerImpl::SkipSpaces(this);
      }
    }

    else if (v9 == 37)
    {
      v17 = 0;
      if ((*(this + 5) - v6) > 7)
      {
        v10 = 0;
      }

      else
      {
        SLLexerInstance::Refill(this);
        v10 = v17;
        v6 = *(this + 3);
      }

      v12 = v6 + 1;
      v13 = 4;
      do
      {
        v14 = SLChar::sLexFold[*(v12 - 1) & 0x3F | (SLChar::sUniMap[*(v12 - 1) >> 6] << 6)] + *(v12 - 1);
        v15 = (SLChar::sLexFold[*(v12 - 1) & 0x3F | (SLChar::sUniMap[*(v12 - 1) >> 6] << 6)] + *(v12 - 1));
        if (v15 < 0x30)
        {
          break;
        }

        if (v15 > 0x39)
        {
          if ((SLChar::sLexFold[*(v12 - 1) & 0x3F | (SLChar::sUniMap[*(v12 - 1) >> 6] << 6)] + *(v12 - 1)) < 0x61u)
          {
            if ((v14 - 65) > 5u)
            {
              break;
            }

            v10 = v14 + 16 * v10 - 55;
          }

          else
          {
            if ((SLChar::sLexFold[*(v12 - 1) & 0x3F | (SLChar::sUniMap[*(v12 - 1) >> 6] << 6)] + *(v12 - 1)) > 0x66u)
            {
              break;
            }

            v10 = v14 + 16 * v10 - 87;
          }
        }

        else
        {
          v10 = v14 + 16 * v10 - 48;
        }

        v17 = v10;
        *(this + 3) = v12++;
        --v13;
      }

      while (v13);
    }

    else if (v9 == 125 || v9 == 59)
    {
      goto LABEL_35;
    }

    std::vector<unsigned short>::push_back[abi:ne200100](a2 + 7, &v17);
    v4 = *(this + 3);
  }
}

SLLexerInstance *SLLexerImpl::ScanIdent(SLLexerImpl *this, char *a2, uint64_t a3)
{
  SLLexerImpl::SkipSpaces(this);
  v6 = *(this + 3);
  v7 = (SLChar::sLexFold[*v6 & 0x3F | (SLChar::sUniMap[*v6 >> 6] << 6)] + *v6);
  if (v7 == 39 || v7 == 34)
  {
    *(this + 3) = ++v6;
  }

  else
  {
    v7 = 32;
  }

  while (1)
  {
    if ((*(this + 5) - v6) <= 1)
    {
      SLLexerInstance::Refill(this);
      v6 = *(this + 3);
    }

    v8 = *v6;
    *(this + 3) = v6 + 1;
    v9 = SLChar::sLexFold[v8 & 0x3F | (SLChar::sUniMap[v8 >> 6] << 6)] + v8;
    if (v9 == 9)
    {
      v9 = 32;
    }

    if (v7 == v9)
    {
      break;
    }

    if (v9 > 0x100u || (v9 <= 0x3Bu ? (v10 = ((1 << v9) & 0x800000000010001) == 0) : (v10 = 1), !v10 || v9 == 125))
    {
      *(this + 3) = v6;
      break;
    }

    if (!a3)
    {
      break;
    }

    --a3;
    *a2++ = v9;
    v6 = *(this + 3);
  }

  *a2 = 0;

  return SLLexerImpl::SkipSpaces(this);
}

uint64_t SLLexerImpl::NextTuneToken(SLLexerImpl *this)
{
  v40 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v38 = 0;
  v2 = *(this + 3);
  *(this + 8) = v2;
  Attr = 1;
  while (1)
  {
    while (1)
    {
      if ((*(this + 5) - v2) <= 2)
      {
        SLLexerInstance::Refill(this);
      }

      if (!*(this + 120))
      {
        break;
      }

      if (*(this + 120) == 86)
      {
        SLLexerImpl::ScanFloat(this);
        SLLexerInstance::CreateCommandToken(this);
      }

      while (1)
      {
LABEL_10:
        v8 = *(this + 3);
        if ((*(this + 5) - v8) <= 2)
        {
          SLLexerInstance::Refill(this);
          v8 = *(this + 3);
        }

        v9 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
        if (v9 > 0x55)
        {
          break;
        }

        if (v9 > 0x3A)
        {
          v12 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
          if (v12 > 0x46)
          {
            if (v12 == 82)
            {
              goto LABEL_53;
            }
          }

          else if (v12 > 0x43)
          {
            if (v12 == 70)
            {
LABEL_47:
              *(this + 3) = v8 + 1;
              SLLexerInstance::CreateCommandToken(this);
            }
          }

          else if (v12 == 59)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v10 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
          if (v10 <= 0xD)
          {
            if (v10 <= 8)
            {
              if (!(SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8))
              {
                goto LABEL_84;
              }

              goto LABEL_79;
            }

            v16 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
            if (v16 >= 0xB && v16 != 13)
            {
              goto LABEL_79;
            }

LABEL_55:
            v18 = v8 + 1;
            *(this + 3) = v18;
            while (1)
            {
              v19 = SLChar::sLexFold[*v18 & 0x3F | (SLChar::sUniMap[*v18 >> 6] << 6)] + *v18;
              v20 = v19;
              if (v19 <= 0x20u)
              {
                if (v19 <= 0xCu)
                {
LABEL_58:
                  if ((v19 - 9) >= 2u)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_77;
                }

                v21 = (SLChar::sLexFold[*v18 & 0x3F | (SLChar::sUniMap[*v18 >> 6] << 6)] + *v18);
                if (v21 == 32)
                {
                  goto LABEL_77;
                }

                if (v21 != 13)
                {
                  goto LABEL_10;
                }

                while (1)
                {
                  *(this + 3) = ++v18;
                  if (*(this + 5) == v18)
                  {
                    SLLexerInstance::Refill(this);
                    v18 = *(this + 3);
                  }

                  v19 = SLChar::sLexFold[*v18 & 0x3F | (SLChar::sUniMap[*v18 >> 6] << 6)] + *v18;
                  v20 = v19;
                  if (v19 > 0x20u)
                  {
                    break;
                  }

                  if (v19 <= 0xCu)
                  {
                    goto LABEL_58;
                  }

                  v22 = (SLChar::sLexFold[*v18 & 0x3F | (SLChar::sUniMap[*v18 >> 6] << 6)] + *v18);
                  if (v22 != 13)
                  {
                    if (v22 != 32)
                    {
                      goto LABEL_10;
                    }

                    goto LABEL_77;
                  }
                }
              }

              if (v20 > 0x9F)
              {
                if (v19 != 160 && v19 != 8239)
                {
                  goto LABEL_10;
                }
              }

              else if (v19 != 59)
              {
                goto LABEL_10;
              }

LABEL_77:
              *(this + 3) = ++v18;
              if (*(this + 5) == v18)
              {
                SLLexerInstance::Refill(this);
                v18 = *(this + 3);
              }
            }
          }

          v15 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
          if (v10 <= 0x10)
          {
            if (v15 != 16)
            {
              goto LABEL_79;
            }

LABEL_84:
            v25 = v8 + 1;
            *(this + 3) = v25;
            if (Attr)
            {
              SLLexerImpl::Error(this);
              v25 = *(this + 3);
            }

            v29 = v25 - 1;
            goto LABEL_110;
          }

          if (v15 == 32)
          {
            goto LABEL_55;
          }
        }

LABEL_79:
        *(this + 3) = v8 + 1;
        SLLexerImpl::Error(this);
        Attr = SLLexerImpl::SkipToNextAttr(this, 1);
      }

      if (v9 <= 0x72)
      {
        v11 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
        if (v11 > 0x65)
        {
          if (v11 > 0x6F)
          {
            if (v11 == 114)
            {
LABEL_53:
              *(this + 3) = v8 + 1;
              SLLexerImpl::ScanFloat(this);
              SLLexerInstance::CreateCommandToken(this);
            }
          }

          else if (v11 == 102)
          {
            goto LABEL_47;
          }
        }

        else if (v11 == 86)
        {
          goto LABEL_29;
        }

        goto LABEL_79;
      }

      v13 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
      if (v13 > 0x7D)
      {
        if (v13 > 0xA0)
        {
          if ((SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8) == 8239)
          {
            goto LABEL_55;
          }
        }

        else if ((SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8) == 160)
        {
          goto LABEL_55;
        }

        goto LABEL_79;
      }

      v14 = (SLChar::sLexFold[*v8 & 0x3F | (SLChar::sUniMap[*v8 >> 6] << 6)] + *v8);
      if (v13 <= 0x76)
      {
        if (v14 == 118)
        {
LABEL_29:
          *(this + 3) = v8 + 1;
          *(this + 120) = 86;
          SLLexerImpl::ScanFloat(this);
          SLLexerInstance::CreateCommandToken(this);
        }

        goto LABEL_79;
      }

      if (v14 != 125)
      {
        goto LABEL_79;
      }

      v29 = v8 + 1;
LABEL_110:
      *(this + 3) = v29;
      *(this + 120) = 0;
      SLLexerImpl::SkipSpaces(this);
      v2 = *(this + 3);
    }

    v4 = *(this + 3);
    v5 = *v4;
    v6 = v5 >> 6;
    v7 = v5 & 0x3F;
    if ((SLChar::sLexFold[v7 | (SLChar::sUniMap[v5 >> 6] << 6)] + v5) == 123)
    {
      *(this + 3) = v4 + 1;
      *(this + 120) = 32;
      goto LABEL_10;
    }

    v37 = *(this + 4);
    v36 = *(this + 4);
    if ((*(this + 5) - v4) > 2)
    {
      v24 = *(this + 3);
    }

    else
    {
      SLLexerInstance::Refill(this);
      v24 = *(this + 3);
      v5 = *v24;
      v6 = v5 >> 6;
      v7 = v5 & 0x3F;
    }

    v26 = SLChar::sLexFold[v7 | (SLChar::sUniMap[v6] << 6)] + v5;
    if (v26 > 0x10u)
    {
      if (v26 > 0x9Fu)
      {
        if (v26 == 160 || v26 == 8239)
        {
LABEL_104:
          v2 = v24 + 1;
          *(this + 3) = v24 + 1;
          goto LABEL_116;
        }
      }

      else if (v26 == 32)
      {
        goto LABEL_104;
      }
    }

    else if (v26 > 0xAu)
    {
      if (v26 == 13)
      {
        goto LABEL_104;
      }

      if (v26 == 16)
      {
        *(this + 3) = v24 + 1;
        v35 = *(this + 23);
        *(this + 24) = v35;
        *(this + 25) = v35;
        *(this + 23) = 1;
        *(this + 13) = *(this + 10);
        goto LABEL_128;
      }
    }

    else
    {
      if (!v26)
      {
        *(this + 23) &= 0xFFFFFFF0;
        *(this + 3) = v24;
        goto LABEL_128;
      }

      if (v26 >= 9u)
      {
        goto LABEL_104;
      }
    }

    *(this + 3) = v24 + 1;
    v28 = (*(**(this + 16) + 16))(*(this + 16));
    if (!v28)
    {
      break;
    }

    if (v28 == 1)
    {
      goto LABEL_109;
    }

    if (v28 == 2)
    {
      *(this + 3) += 2;
LABEL_109:
      operator new();
    }

    v2 = *(this + 3);
LABEL_114:
    while (2)
    {
      *(this + 3) = ++v2;
      if (*(this + 5) != v2)
      {
        goto LABEL_116;
      }

LABEL_115:
      SLLexerInstance::Refill(this);
      v2 = *(this + 3);
      while (1)
      {
LABEL_116:
        v30 = SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2;
        v31 = v30;
        if (v30 > 0x1Fu)
        {
          if (v30 > 0xA0u)
          {
            if (v30 == 8239)
            {
              goto LABEL_114;
            }
          }

          else if ((v30 & 0x7F) == 0x20)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        v32 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
        if (v31 <= 0xA)
        {
          break;
        }

        if (v32 != 13)
        {
          goto LABEL_127;
        }

        *(this + 3) = ++v2;
        if (*(this + 5) == v2)
        {
          goto LABEL_115;
        }
      }

      if (v32 >= 9)
      {
        continue;
      }

      break;
    }

LABEL_127:
    *(this + 8) = v2;
  }

  if ((*(**(this + 16) + 24))(*(this + 16), *(this + 3) - 2, &v38))
  {
    operator new();
  }

  SLLexerImpl::Error(this);
LABEL_128:
  v33 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26B33A434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SLPhonTune>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<SLPhonTune>::__emplace_back_slow_path<SLPhonTune>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

uint64_t std::vector<SLPhonTune>::__emplace_back_slow_path<SLPhonTune>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLPhonTune>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SLPhonTune>,SLPhonTune*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SLPhonTune>::~__split_buffer(&v15);
  return v14;
}

void sub_26B33A748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SLPhonTune>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLPhonTune>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SLPhonTune>,SLPhonTune*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SLPhonTune>,SLPhonTune*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SLPhonTune>,SLPhonTune*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SLPhonTune>,SLPhonTune*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SLPhonTune>,SLPhonTune*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<SLPhonTune>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<SLPhonTune>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SLPhonTune>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t SLLexerImpl::ScanInt(unsigned __int16 **this)
{
  SLLexerImpl::SkipSpaces(this);
  v2 = 0;
  v3 = this[3];
  while (1)
  {
    if (this[5] == v3)
    {
      SLLexerInstance::Refill(this);
      v3 = this[3];
    }

    v4 = *v3;
    if ((v4 + SLChar::sLexFold[v4 & 0x3F | (SLChar::sUniMap[v4 >> 6] << 6)] - 58) < 0xFFF6u)
    {
      break;
    }

    this[3] = ++v3;
    v2 = (v4 + 10 * v2 - 48);
  }

  this[3] = v3;
  return v2;
}

uint64_t SLLexerImpl::NextSongToken(SLLexerImpl *this)
{
  v2 = *(this + 3);
  *(this + 8) = v2;
LABEL_2:
  if ((*(this + 5) - v2) <= 2)
  {
    SLLexerInstance::Refill(this);
  }

  if (!*(this + 120))
  {
    v3 = *(this + 3);
    v4 = *v3;
    v5 = v4 >> 6;
    v6 = v4 & 0x3F;
    if ((SLChar::sLexFold[v6 | (SLChar::sUniMap[v4 >> 6] << 6)] + v4) == 123)
    {
      *(this + 3) = v3 + 1;
      *(this + 120) = 32;
      goto LABEL_7;
    }

    if ((*(this + 5) - v3) <= 2)
    {
      SLLexerInstance::Refill(this);
      v3 = *(this + 3);
      v4 = *v3;
      v5 = v4 >> 6;
      v6 = v4 & 0x3F;
    }

    v27 = SLChar::sLexFold[v6 | (SLChar::sUniMap[v5] << 6)] + v4;
    if (v27 <= 0xA0u)
    {
      if (v27 <= 0x2Bu)
      {
        if (v27 <= 0xFu)
        {
          if (v27 <= 0xAu)
          {
            if (!v27)
            {
              v53 = 0;
              *(this + 23) &= 0xFFFFFFF0;
              *(this + 3) = v3;
              return v53;
            }

            if (v27 < 9u)
            {
              goto LABEL_164;
            }

            goto LABEL_102;
          }

          if (v27 != 13)
          {
LABEL_164:
            *(this + 3) = v3 + 1;
            goto LABEL_165;
          }

LABEL_102:
          v2 = v3 + 1;
          *(this + 3) = v2;
          while (1)
          {
            v28 = SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2;
            v29 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
            if (v29 > 0x2D)
            {
              break;
            }

            if (v29 <= 0xD)
            {
              if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) < 9u)
              {
                goto LABEL_69;
              }

              if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) < 0xBu)
              {
                goto LABEL_110;
              }

              v30 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) == 13;
              goto LABEL_108;
            }

            v31 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2);
            if (v31 > 0x21)
            {
              v30 = v31 == 44;
              goto LABEL_108;
            }

            if (v31 < 0x20)
            {
              goto LABEL_69;
            }

LABEL_110:
            *(this + 3) = ++v2;
            if (*(this + 5) == v2)
            {
              SLLexerInstance::Refill(this);
              v2 = *(this + 3);
            }
          }

          if (v29 > 0x3F)
          {
            v30 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) == 160;
            if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) > 0xA0u)
            {
              v30 = v28 == 8239;
            }
          }

          else if ((SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) > 0x3Au)
          {
            v30 = (~v28 & 0x3B) == 0;
          }

          else
          {
            v30 = (SLChar::sLexFold[*v2 & 0x3F | (SLChar::sUniMap[*v2 >> 6] << 6)] + *v2) == 46;
          }

LABEL_108:
          if (!v30)
          {
            goto LABEL_69;
          }

          goto LABEL_110;
        }

        if (v27 <= 0x21u)
        {
          if (v27 == 16)
          {
            v53 = 0;
            *(this + 3) = v3 + 1;
            v38 = *(this + 23);
            *(this + 24) = v38;
            *(this + 25) = v38;
            *(this + 23) = 1;
            *(this + 13) = *(this + 10);
            return v53;
          }

          if (v27 < 0x20u)
          {
            goto LABEL_164;
          }

          goto LABEL_102;
        }

        if (v27 != 39)
        {
          goto LABEL_164;
        }

        goto LABEL_148;
      }

      if (v27 <= 0x3Eu)
      {
        if (v27 > 0x2Eu)
        {
          if (v27 != 59)
          {
            goto LABEL_164;
          }
        }

        else if (v27 == 45)
        {
          goto LABEL_164;
        }

        goto LABEL_102;
      }

      if (v27 > 0x5Au)
      {
        if (v27 < 0x61u)
        {
          goto LABEL_164;
        }

        if (v27 >= 0x7Bu)
        {
          if (v27 != 160)
          {
            goto LABEL_164;
          }

          goto LABEL_102;
        }
      }

      else
      {
        if (v27 == 63)
        {
          goto LABEL_102;
        }

        if (v27 < 0x41u)
        {
          goto LABEL_164;
        }
      }

LABEL_166:
      v35 = v3 + 1;
      *(this + 3) = v35;
      goto LABEL_168;
    }

    if (v27 <= 0x2BDu)
    {
      if (v27 <= 0xC6u)
      {
        if (v27 > 0xBFu)
        {
          if (v27 != 192 && v27 != 198)
          {
            goto LABEL_164;
          }
        }

        else if (v27 != 176)
        {
          goto LABEL_164;
        }

        goto LABEL_166;
      }

      if (v27 <= 0xE5u)
      {
        if (v27 != 224)
        {
          goto LABEL_164;
        }

        goto LABEL_166;
      }

      if (v27 == 230)
      {
        goto LABEL_166;
      }

      if (v27 < 0x2BBu)
      {
        goto LABEL_164;
      }
    }

    else if ((v27 >> 2) <= 0x806u)
    {
      if ((v27 >> 3) > 0x402u)
      {
        if (v27 == 8218)
        {
          goto LABEL_164;
        }
      }

      else if (v27 != 756)
      {
        goto LABEL_164;
      }
    }

    else
    {
      if (v27 <= 0x2031u)
      {
        if (v27 != 8239)
        {
          goto LABEL_164;
        }

        goto LABEL_102;
      }

      if (v27 != 8242 && v27 != 8245)
      {
        goto LABEL_164;
      }
    }

LABEL_148:
    v36 = v3[1];
    v35 = v3 + 1;
    *(this + 3) = v35;
    v37 = SLChar::sLexFold[v36 & 0x3F | (SLChar::sUniMap[v36 >> 6] << 6)] + v36;
    if (v37 > 0xBFu)
    {
      if (v37 > 0xDFu)
      {
        if (v37 != 224 && v37 != 230)
        {
          goto LABEL_165;
        }
      }

      else if (v37 != 192 && v37 != 198)
      {
        goto LABEL_165;
      }
    }

    else if (v37 > 0x60u)
    {
      if (v37 >= 0x7Bu && v37 != 176)
      {
        goto LABEL_165;
      }
    }

    else if ((v37 - 65) >= 0x1Au)
    {
LABEL_165:
      SLLexerImpl::Error(this);
      return 0;
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          *(this + 3) = ++v35;
          if (*(this + 5) == v35)
          {
            SLLexerInstance::Refill(this);
            v35 = *(this + 3);
          }

LABEL_168:
          v39 = SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35;
          if (v39 <= 0xE0u)
          {
            break;
          }

          if ((v39 >> 3) > 0x402u)
          {
            if (v39 <= 0x2031u)
            {
              goto LABEL_190;
            }

            v45 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
            if (v45 == 8245 || v45 == 8242)
            {
              goto LABEL_197;
            }

            goto LABEL_241;
          }

          v43 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
          if (v43 > 0x2BA)
          {
            goto LABEL_239;
          }

          if (v43 != 230)
          {
LABEL_241:
            SLLexerInstance::CreateToken(this);
          }
        }

        if (v39 <= 0xAFu)
        {
          break;
        }

        v44 = (LOBYTE(SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)]) + *v35);
        if ((SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35) > 0xC0u)
        {
          if (v44 != 198 && v44 != 224)
          {
            goto LABEL_241;
          }
        }

        else if (v44 != 176 && v44 != 192)
        {
          goto LABEL_241;
        }
      }

      v40 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
      if (v40 <= 0x40)
      {
        break;
      }

      v41 = (v39 - 97);
      if (v40 >= 0x5B && v41 >= 0x1A)
      {
        goto LABEL_241;
      }
    }

LABEL_196:
    if (v40 != 39)
    {
      goto LABEL_241;
    }

    while (1)
    {
      while (1)
      {
LABEL_197:
        *(this + 3) = ++v35;
        if (*(this + 5) == v35)
        {
          SLLexerInstance::Refill(this);
          v35 = *(this + 3);
        }

        v46 = SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35;
        if (v46 <= 0xBFu)
        {
          if (v46 > 0x60u)
          {
            v47 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
            if (v47 < 0x7B || v47 == 176)
            {
              goto LABEL_211;
            }
          }

          else if ((v46 - 65) < 0x1Au)
          {
            goto LABEL_211;
          }

          goto LABEL_241;
        }

        if (v46 <= 0xDFu)
        {
          if (v46 == 192 || v46 == 198)
          {
            goto LABEL_211;
          }

          goto LABEL_241;
        }

        v48 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
        if (v48 != 230)
        {
LABEL_231:
          if (v48 != 224)
          {
            goto LABEL_241;
          }
        }

        while (1)
        {
LABEL_211:
          *(this + 3) = ++v35;
          if (*(this + 5) == v35)
          {
            SLLexerInstance::Refill(this);
            v35 = *(this + 3);
          }

          v39 = SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35;
          if (v39 > 0xE0u)
          {
            break;
          }

          if (v39 > 0xAFu)
          {
            v48 = (LOBYTE(SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)]) + *v35);
            if ((SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35) > 0xC0u)
            {
              if (v48 != 198)
              {
                goto LABEL_231;
              }
            }

            else if (v48 != 176 && v48 != 192)
            {
              goto LABEL_241;
            }
          }

          else
          {
            v40 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
            if (v40 <= 0x40)
            {
              goto LABEL_196;
            }

            v49 = (v39 - 97);
            if (v40 >= 0x5B && v49 >= 0x1A)
            {
              goto LABEL_241;
            }
          }
        }

        if ((v39 >> 3) <= 0x402u)
        {
          break;
        }

        if (v39 <= 0x2031u)
        {
LABEL_190:
          if (v39 == 8218 || (v39 >> 2) >= 0x807u)
          {
            goto LABEL_241;
          }
        }

        else
        {
          v51 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
          if (v51 != 8242 && v51 != 8245)
          {
            goto LABEL_241;
          }
        }
      }

      v43 = (SLChar::sLexFold[*v35 & 0x3F | (SLChar::sUniMap[*v35 >> 6] << 6)] + *v35);
      if (v43 <= 0x2BA)
      {
        if (v43 != 230)
        {
          goto LABEL_241;
        }

        goto LABEL_211;
      }

LABEL_239:
      if (v43 >= 0x2BE && v39 != 756)
      {
        goto LABEL_241;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v7 = *(this + 3);
    if ((*(this + 5) - v7) <= 8)
    {
      SLLexerInstance::Refill(this);
      v7 = *(this + 3);
    }

    v8 = SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7;
    if (v8 <= 0x52u)
    {
      if (v8 <= 0x1Fu)
      {
        v9 = (SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7);
        if (v9 > 0xA)
        {
          if (v9 == 13)
          {
            goto LABEL_28;
          }
        }

        else if (v9 >= 9)
        {
          goto LABEL_28;
        }

        goto LABEL_55;
      }

      v10 = (SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7);
      if (v10 <= 0x39)
      {
        if (v10 == 32)
        {
          goto LABEL_28;
        }

        if ((SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7) >= 0x30u)
        {
          *(this + 3) = v7 + 1;
          operator new();
        }

        goto LABEL_55;
      }

      if (v10 != 59)
      {
LABEL_55:
        *(this + 3) = v7 + 1;
        goto LABEL_56;
      }

LABEL_28:
      v11 = v7 + 1;
      *(this + 3) = v11;
      while (1)
      {
        v12 = SLChar::sLexFold[*v11 & 0x3F | (SLChar::sUniMap[*v11 >> 6] << 6)] + *v11;
        v13 = v12;
        if (v12 <= 0x20u)
        {
          if (v12 <= 0xCu)
          {
LABEL_31:
            if ((v12 - 9) >= 2u)
            {
              goto LABEL_7;
            }

            goto LABEL_50;
          }

          v14 = (SLChar::sLexFold[*v11 & 0x3F | (SLChar::sUniMap[*v11 >> 6] << 6)] + *v11);
          if (v14 == 32)
          {
            goto LABEL_50;
          }

          if (v14 != 13)
          {
            goto LABEL_7;
          }

          while (1)
          {
            *(this + 3) = ++v11;
            if (*(this + 5) == v11)
            {
              SLLexerInstance::Refill(this);
              v11 = *(this + 3);
            }

            v12 = SLChar::sLexFold[*v11 & 0x3F | (SLChar::sUniMap[*v11 >> 6] << 6)] + *v11;
            v13 = v12;
            if (v12 > 0x20u)
            {
              break;
            }

            if (v12 <= 0xCu)
            {
              goto LABEL_31;
            }

            v15 = (SLChar::sLexFold[*v11 & 0x3F | (SLChar::sUniMap[*v11 >> 6] << 6)] + *v11);
            if (v15 != 13)
            {
              if (v15 != 32)
              {
                goto LABEL_7;
              }

              goto LABEL_50;
            }
          }
        }

        if (v13 > 0x9F)
        {
          if (v12 != 160 && v12 != 8239)
          {
            goto LABEL_7;
          }
        }

        else if (v12 != 59)
        {
          goto LABEL_7;
        }

LABEL_50:
        *(this + 3) = ++v11;
        if (*(this + 5) == v11)
        {
          SLLexerInstance::Refill(this);
          v11 = *(this + 3);
        }
      }
    }

    if (v8 > 0x7Cu)
    {
      if ((SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7) > 0xA0u)
      {
        if (v8 == 8239)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v8 == 160)
        {
          goto LABEL_28;
        }

        if (v8 == 125)
        {
          *(this + 3) = v7 + 1;
          *(this + 120) = 0;
          SLLexerImpl::SkipSpaces(this);
          v2 = *(this + 3);
LABEL_69:
          *(this + 8) = v2;
          goto LABEL_2;
        }
      }

      goto LABEL_55;
    }

    v17 = (SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7);
    if (v17 > 0x72)
    {
      if (v17 == 115)
      {
LABEL_58:
        v18 = v7 + 1;
        v19 = v7[1];
        *(this + 3) = v7 + 1;
        *(this + 6) = v7 + 1;
        if (((SLChar::sLexFold[v19 & 0x3F | (SLChar::sUniMap[v19 >> 6] << 6)] + v19) & 0xFFDF) != 0x57)
        {
          goto LABEL_56;
        }

        v20 = v7[2];
        *(this + 3) = v7 + 2;
        if (((SLChar::sLexFold[v20 & 0x3F | (SLChar::sUniMap[v20 >> 6] << 6)] + v20) & 0xFFDF) == 0x49)
        {
          v21 = v7[3];
          *(this + 3) = v7 + 3;
          if (((SLChar::sLexFold[v21 & 0x3F | (SLChar::sUniMap[v21 >> 6] << 6)] + v21) & 0xFFDF) == 0x4E)
          {
            v22 = v7[4];
            *(this + 3) = v7 + 4;
            if (((SLChar::sLexFold[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] + v22) & 0xFFDF) == 0x47)
            {
              *(this + 3) = v7 + 5;
              v32 = this;
              v33 = 1937206887;
              return SLLexerImpl::SimpleCommand(v32, v33, 3u);
            }
          }
        }

        goto LABEL_68;
      }

      if ((SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7) >= 0x75u)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v17 == 83)
      {
        goto LABEL_58;
      }

      if ((SLChar::sLexFold[*v7 & 0x3F | (SLChar::sUniMap[*v7 >> 6] << 6)] + *v7) >= 0x55u)
      {
        goto LABEL_55;
      }
    }

    v18 = v7 + 1;
    v23 = v7[1];
    *(this + 3) = v7 + 1;
    *(this + 6) = v7 + 1;
    if (((SLChar::sLexFold[v23 & 0x3F | (SLChar::sUniMap[v23 >> 6] << 6)] + v23) & 0xFFDF) != 0x52)
    {
      goto LABEL_56;
    }

    v24 = v7[2];
    *(this + 3) = v7 + 2;
    if (((SLChar::sLexFold[v24 & 0x3F | (SLChar::sUniMap[v24 >> 6] << 6)] + v24) & 0xFFDF) == 0x41)
    {
      v25 = v7[3];
      *(this + 3) = v7 + 3;
      if (((SLChar::sLexFold[v25 & 0x3F | (SLChar::sUniMap[v25 >> 6] << 6)] + v25) & 0xFFDF) == 0x4E)
      {
        v26 = v7[4];
        *(this + 3) = v7 + 4;
        if (((SLChar::sLexFold[v26 & 0x3F | (SLChar::sUniMap[v26 >> 6] << 6)] + v26) & 0xFFDF) == 0x53)
        {
          break;
        }
      }
    }

LABEL_68:
    *(this + 3) = v18;
LABEL_56:
    SLLexerImpl::AttrError(this);
  }

  *(this + 3) = v7 + 5;
  v32 = this;
  v33 = 1953657712;
  return SLLexerImpl::SimpleCommand(v32, v33, 3u);
}

void operator delete[]()
{
    ;
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}