void sub_10EF8(_Unwind_Exception *a1)
{
  std::__basic_file<char>::~__basic_file((v1 + 128));
  *v1 = v2;
  std::locale::~locale((v1 + 56));
  _Unwind_Resume(a1);
}

void *std::wfilebuf::~wfilebuf(void *a1)
{
  *a1 = off_5CCD0;
  v2 = (a1 + 16);
  std::wfilebuf::close(a1);
  std::__basic_file<char>::~__basic_file(v2);
  *a1 = off_5EF08;
  std::locale::~locale((a1 + 7));
  return a1;
}

uint64_t std::wfilebuf::close(uint64_t a1)
{
  if (!std::__basic_file<char>::is_open((a1 + 128)))
  {
    return 0;
  }

  v2 = !std::wfilebuf::_M_terminate_output(a1);
  *(a1 + 144) = 0;
  *(a1 + 576) = 0;
  std::wfilebuf::_M_destroy_internal_buffer(a1);
  *(a1 + 553) = 0;
  v3 = *(a1 + 536);
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a1 + 232);
  *(a1 + 344) = *(a1 + 216);
  *(a1 + 360) = v4;
  v5 = *(a1 + 264);
  *(a1 + 376) = *(a1 + 248);
  *(a1 + 392) = v5;
  v6 = *(a1 + 168);
  *(a1 + 280) = *(a1 + 152);
  *(a1 + 296) = v6;
  v7 = *(a1 + 200);
  *(a1 + 312) = *(a1 + 184);
  *(a1 + 328) = v7;
  v8 = *(a1 + 232);
  *(a1 + 472) = *(a1 + 216);
  *(a1 + 488) = v8;
  v9 = *(a1 + 264);
  *(a1 + 504) = *(a1 + 248);
  *(a1 + 520) = v9;
  v10 = *(a1 + 168);
  *(a1 + 408) = *(a1 + 152);
  *(a1 + 424) = v10;
  v11 = *(a1 + 200);
  *(a1 + 440) = *(a1 + 184);
  *(a1 + 456) = v11;
  if (std::__basic_file<char>::close((a1 + 128)) == 0 || v2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

void sub_1108C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10FC8);
}

void std::wfilebuf::~wfilebuf(void *a1)
{
  v1 = std::wfilebuf::~wfilebuf(a1);

  operator delete(v1);
}

uint64_t std::wfilebuf::open(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  if (std::__basic_file<char>::is_open((a1 + 128)))
  {
    return 0;
  }

  std::__basic_file<char>::open(v5 + 128, a2, a3);
  if (!std::__basic_file<char>::is_open((v5 + 128)))
  {
    return 0;
  }

  std::wfilebuf::_M_allocate_internal_buffer(v5);
  *(v5 + 144) = a3;
  *(v5 + 553) = 0;
  v6 = *(v5 + 536);
  *(v5 + 8) = v6;
  *(v5 + 16) = v6;
  *(v5 + 24) = v6;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v7 = *(v5 + 232);
  *(v5 + 344) = *(v5 + 216);
  *(v5 + 360) = v7;
  v8 = *(v5 + 264);
  *(v5 + 376) = *(v5 + 248);
  *(v5 + 392) = v8;
  v9 = *(v5 + 168);
  *(v5 + 280) = *(v5 + 152);
  *(v5 + 296) = v9;
  v10 = *(v5 + 200);
  *(v5 + 312) = *(v5 + 184);
  *(v5 + 328) = v10;
  v11 = *(v5 + 264);
  *(v5 + 504) = *(v5 + 248);
  *(v5 + 520) = v11;
  v12 = *(v5 + 232);
  *(v5 + 472) = *(v5 + 216);
  *(v5 + 488) = v12;
  v13 = *(v5 + 200);
  *(v5 + 440) = *(v5 + 184);
  *(v5 + 456) = v13;
  v14 = *(v5 + 168);
  *(v5 + 408) = *(v5 + 152);
  *(v5 + 424) = v14;
  if ((a3 & 2) != 0)
  {
    (*(*v5 + 32))(v16, v5, 0, 2, a3);
    if (v16[0] == -1)
    {
      std::wfilebuf::close(v5);
      return 0;
    }
  }

  return v5;
}

void sub_1126C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

void *std::wfilebuf::_M_allocate_internal_buffer(void *result)
{
  if ((result[69] & 1) == 0)
  {
    v1 = result;
    if (!result[67])
    {
      v2 = result[68];
      if (v2 >> 62)
      {
        v3 = -1;
      }

      else
      {
        v3 = 4 * v2;
      }

      result = operator new[](v3);
      v1[67] = result;
      *(v1 + 552) = 1;
    }
  }

  return result;
}

uint64_t std::wfilebuf::_M_set_buffer(uint64_t result, uint64_t a2)
{
  v2 = *(result + 144);
  if (a2 >= 1 && (v2 & 8) != 0)
  {
    v3 = *(result + 536);
    *(result + 8) = v3;
    *(result + 16) = v3;
    *(result + 24) = v3 + 4 * a2;
LABEL_4:
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    return result;
  }

  v4 = *(result + 536);
  *(result + 8) = v4;
  *(result + 16) = v4;
  *(result + 24) = v4;
  if (a2)
  {
    goto LABEL_4;
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_4;
  }

  v5 = *(result + 544);
  if (v5 < 2)
  {
    goto LABEL_4;
  }

  *(result + 32) = v4;
  *(result + 40) = v4;
  *(result + 48) = v4 + 4 * v5 - 4;
  return result;
}

BOOL std::wfilebuf::_M_terminate_output(uint64_t a1)
{
  v2 = *(a1 + 32) >= *(a1 + 40) || (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1;
  if (*(a1 + 554) == 1)
  {
    v3 = *(a1 + 584);
    if (!v3)
    {
      std::__throw_bad_cast();
    }

    if (((*(*v3 + 48))(v3) & 1) == 0 && v2)
    {
      do
      {
        v4 = (*(**(a1 + 584) + 24))(*(a1 + 584), a1 + 280, v10, &v11, &v9);
        if (v4 == 2)
        {
          return 0;
        }

        v5 = v4;
        if (v4 > 1 || v9 - v10 <= 0)
        {
          if (!v2)
          {
            return 0;
          }

          return (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1;
        }

        v6 = v9 - v10;
        v7 = std::__basic_file<char>::xsputn((a1 + 128), v10, v9 - v10) == v6 && v2;
        if (v5 != 1)
        {
          break;
        }

        LOBYTE(v2) = 1;
      }

      while ((v7 & 1) != 0);
      if (!v7)
      {
        return 0;
      }

      return (*(*a1 + 104))(a1, 0xFFFFFFFFLL) != -1;
    }
  }

  return v2;
}

double std::wfilebuf::_M_destroy_internal_buffer(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v2 = *(a1 + 536);
    if (v2)
    {
      operator delete[](v2);
    }

    *(a1 + 536) = 0;
    *(a1 + 552) = 0;
  }

  v3 = *(a1 + 592);
  if (v3)
  {
    operator delete[](v3);
  }

  result = 0.0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  return result;
}

uint64_t std::wfilebuf::showmanyc(uint64_t a1)
{
  if ((*(a1 + 144) & 8) == 0 || !std::__basic_file<char>::is_open((a1 + 128)))
  {
    return -1;
  }

  v2 = *(a1 + 584);
  if (!v2)
  {
    std::__throw_bad_cast();
  }

  v3 = (*(a1 + 24) - *(a1 + 16)) >> 2;
  if (((*(*v2 + 40))(v2) & 0x80000000) == 0)
  {
    v4 = std::__basic_file<char>::showmanyc((a1 + 128));
    v3 += v4 / (*(**(a1 + 584) + 64))(*(a1 + 584));
  }

  return v3;
}

uint64_t std::wfilebuf::underflow(uint64_t a1)
{
  if (*(a1 + 144) & 8) == 0 || (*(a1 + 554))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 16);
  if (*(a1 + 576))
  {
    v3 = (*(a1 + 560) + 4 * (v3 != *(a1 + 8)));
    *(a1 + 560) = v3;
    v4 = *(a1 + 568);
    *(a1 + 8) = *(a1 + 536);
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 576) = 0;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  if (v3 >= v4)
  {
    v5 = *(a1 + 544);
    v6 = v5 > 1;
    v7 = v5 - 1;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 584);
    if (!v9)
    {
      std::__throw_bad_cast();
    }

    if ((*(*v9 + 48))(v9))
    {
      v10 = std::__basic_file<char>::xsgetn((a1 + 128), *(a1 + 8), v8);
      v11 = 0;
      v12 = v10 == 0;
    }

    else
    {
      v13 = (*(**(a1 + 584) + 40))(*(a1 + 584));
      if (v13 < 1)
      {
        v14 = v8 + (*(**(a1 + 584) + 64))(*(a1 + 584)) - 1;
        v15 = v8;
      }

      else
      {
        v14 = v8 * v13;
        v15 = v14;
      }

      v16 = *(a1 + 616);
      v17 = *(a1 + 608);
      v6 = v15 <= v16 - v17;
      v18 = v15 - (v16 - v17);
      if (v6)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      if (*(a1 + 553) == 1 && v16 != v17 && *(a1 + 24) == *(a1 + 8))
      {
        v19 = 0;
      }

      if (*(a1 + 600) >= v14)
      {
        if (v16 != v17)
        {
          memmove(*(a1 + 592), *(a1 + 608), v16 - v17);
        }
      }

      else
      {
        v21 = operator new[](v14);
        v22 = v21;
        if (v16 != v17)
        {
          memcpy(v21, v17, v16 - v17);
        }

        v23 = *(a1 + 592);
        if (v23)
        {
          operator delete[](v23);
        }

        *(a1 + 592) = v22;
        *(a1 + 600) = v14;
      }

      v24 = *(a1 + 592);
      *(a1 + 608) = v24;
      *(a1 + 616) = v24 + v16 - v17;
      v25 = *(a1 + 360);
      *(a1 + 472) = *(a1 + 344);
      *(a1 + 488) = v25;
      v26 = *(a1 + 392);
      *(a1 + 504) = *(a1 + 376);
      *(a1 + 520) = v26;
      v27 = *(a1 + 296);
      *(a1 + 408) = *(a1 + 280);
      *(a1 + 424) = v27;
      v28 = *(a1 + 328);
      *(a1 + 440) = *(a1 + 312);
      *(a1 + 456) = v28;
      do
      {
        v29 = *(a1 + 616);
        if (v19 < 1)
        {
          v12 = 0;
        }

        else
        {
          if (v19 + v29 - *(a1 + 592) > *(a1 + 600))
          {
            std::__throw_ios_failure("basic_filebuf::underflow codecvt::max_length() is not valid");
          }

          v30 = std::__basic_file<char>::xsgetn((a1 + 128), *(a1 + 616), v19);
          if (v30)
          {
            if (v30 == -1)
            {
              goto LABEL_64;
            }

            v12 = 0;
          }

          else
          {
            v12 = 1;
          }

          v29 = *(a1 + 616) + v30;
          *(a1 + 616) = v29;
        }

        v11 = (*(**(a1 + 584) + 32))(*(a1 + 584), a1 + 280, *(a1 + 608), v29, a1 + 608, *(a1 + 8), *(a1 + 8) + 4 * v8, &v34);
        if (v11 == 3)
        {
          v31 = *(a1 + 592);
          if (v8 >= *(a1 + 616) - v31)
          {
            v10 = *(a1 + 616) - v31;
          }

          else
          {
            v10 = v8;
          }

          wmemcpy(*(a1 + 8), v31, v10);
          *(a1 + 608) = *(a1 + 592) + v10;
        }

        else
        {
          v10 = (v34 - *(a1 + 8)) >> 2;
        }

        v32 = v11 == 2;
        if (v11 != 2)
        {
          v19 = 1;
        }

        if (v10)
        {
          v32 = 1;
        }
      }

      while (!v32 && !v12);
    }

    if (v10 < 1)
    {
      if (!v12)
      {
        if (v11 == 2)
        {
          std::__throw_ios_failure("basic_filebuf::underflow invalid byte sequence in file");
        }

LABEL_64:
        std::__throw_ios_failure("basic_filebuf::underflow error reading the file");
      }

      v33 = *(a1 + 536);
      *(a1 + 8) = v33;
      *(a1 + 16) = v33;
      *(a1 + 24) = v33;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 553) = 0;
      if (v11 == 1)
      {
        std::__throw_ios_failure("basic_filebuf::underflow incomplete character in file");
      }

      return 0xFFFFFFFFLL;
    }

    std::wfilebuf::_M_set_buffer(a1, v10);
    *(a1 + 553) = 1;
    v3 = *(a1 + 16);
  }

  return *v3;
}

uint64_t std::wfilebuf::pbackfail(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) & 8) == 0 || (*(a1 + 554))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 576);
  v6 = *(a1 + 16);
  if (*(a1 + 8) < v6)
  {
    LODWORD(result) = *(v6 - 4);
    *(a1 + 16) = v6 - 4;
LABEL_9:
    if (a2 == -1)
    {
      return 0;
    }

    v7 = result == a2;
    if (result == a2)
    {
      result = a2;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (!v7 && (v5 & 1) == 0)
    {
      v8 = *(a1 + 16);
      if ((*(a1 + 576) & 1) == 0)
      {
        *(a1 + 560) = v8;
        *(a1 + 568) = *(a1 + 24);
        v8 = (a1 + 556);
        *(a1 + 8) = a1 + 556;
        *(a1 + 16) = a1 + 556;
        *(a1 + 24) = a1 + 560;
        *(a1 + 576) = 1;
      }

      *(a1 + 553) = 1;
      *v8 = a2;
      return a2;
    }

    return result;
  }

  (*(*a1 + 32))(v9, a1, -1, 1, 24);
  if (v9[0] == -1)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(*a1 + 72))(a1);
  if (result != -1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t std::wfilebuf::overflow(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) & 0x10) == 0 || (*(a1 + 553))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = (a1 + 32);
  if (v5 >= v6)
  {
    v11 = *(a1 + 544);
    if (v11 < 2)
    {
      v13 = v3;
      if (v3 == -1)
      {
        v3 = 0;
      }

      else if (!std::wfilebuf::_M_convert_to_external(a1, &v13, 1uLL))
      {
        return 0xFFFFFFFFLL;
      }

      *(a1 + 554) = 1;
      return v3;
    }

    v12 = *(a1 + 536);
    *(a1 + 8) = v12;
    *(a1 + 16) = v12;
    *(a1 + 24) = v12;
    *(a1 + 32) = v12;
    *(a1 + 40) = v12;
    *(a1 + 48) = &v12[v11 - 1];
    *(a1 + 554) = 1;
    if (v3 == -1)
    {
      return 0;
    }

    else
    {
      *v12 = v3;
      *(a1 + 40) = v12 + 1;
    }
  }

  else
  {
    if (v3 != -1)
    {
      *v6 = v3;
      v6 += 4;
      *(a1 + 40) = v6;
    }

    if (!std::wfilebuf::_M_convert_to_external(a1, v5, (v6 - v5) >> 2))
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(a1 + 144);
    v9 = *(a1 + 536);
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    *(a1 + 24) = v9;
    if ((v8 & 0x10) != 0 && (v10 = *(a1 + 544), v10 >= 2))
    {
      *(a1 + 32) = v9;
      *(a1 + 40) = v9;
      *(a1 + 48) = v9 + 4 * v10 - 4;
    }

    else
    {
      *v7 = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    if (v3 == -1)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

BOOL std::wfilebuf::_M_convert_to_external(uint64_t a1, char *a2, size_t a3)
{
  v4 = *(a1 + 584);
  if (!v4)
  {
    std::__throw_bad_cast();
  }

  if ((*(*v4 + 48))(v4))
  {
    goto LABEL_12;
  }

  v7 = (*(**(a1 + 584) + 64))(*(a1 + 584)) * a3;
  off_5C2E8();
  v9 = &v17 - v8;
  bzero(&v17 - v8, v7);
  v10 = (*(**(a1 + 584) + 16))(*(a1 + 584), a1 + 280, a2, &a2[4 * a3], &v18, v9, &v9[v7], &v19);
  v11 = v10;
  if (v10 >= 2)
  {
    if (v10 != 3)
    {
      goto LABEL_16;
    }

LABEL_12:
    v14 = (a1 + 128);
    v15 = a2;
    goto LABEL_13;
  }

  a3 = v19 - v9;
  v12 = std::__basic_file<char>::xsputn((a1 + 128), v9, v19 - v9);
  if (v11 == 1 && v12 == a3)
  {
    if ((*(**(a1 + 584) + 16))(*(a1 + 584), a1 + 280, v18, *(a1 + 40), &v18, v9, &v9[a3], &v19) != 2)
    {
      a3 = v19 - v9;
      v14 = (a1 + 128);
      v15 = v9;
LABEL_13:
      v12 = std::__basic_file<char>::xsputn(v14, v15, a3);
      return v12 == a3;
    }

LABEL_16:
    std::__throw_ios_failure("basic_filebuf::_M_convert_to_external conversion error");
  }

  return v12 == a3;
}

void *std::wfilebuf::setbuf(void *a1, uint64_t a2, uint64_t a3)
{
  if (!std::__basic_file<char>::is_open(a1 + 16))
  {
    if (!a2 && !a3)
    {
      a3 = 1;
LABEL_8:
      a1[68] = a3;
      return a1;
    }

    if (a2 && a3 >= 1)
    {
      a1[67] = a2;
      goto LABEL_8;
    }
  }

  return a1;
}

double std::wfilebuf::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 584);
  if (v8)
  {
    v9 = (*(*v8 + 40))(v8);
  }

  else
  {
    v9 = 0;
  }

  *a4 = -1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  if (std::__basic_file<char>::is_open((a1 + 128)) && (!a2 || v9 >= 1))
  {
    if (*(a1 + 576) == 1)
    {
      v11 = *(a1 + 560) + 4 * (*(a1 + 16) != *(a1 + 8));
      *(a1 + 560) = v11;
      v12 = *(a1 + 568);
      *(a1 + 8) = *(a1 + 536);
      *(a1 + 16) = v11;
      *(a1 + 24) = v12;
      *(a1 + 576) = 0;
    }

    v13 = *(a1 + 232);
    v28 = *(a1 + 216);
    v29 = v13;
    v14 = *(a1 + 248);
    v15 = *(a1 + 168);
    v24 = *(a1 + 152);
    v25 = v15;
    v16 = *(a1 + 200);
    v26 = *(a1 + 184);
    v27 = v16;
    v17 = *(a1 + 264);
    v18 = (v9 & ~(v9 >> 31)) * a2;
    v30 = v14;
    v31 = v17;
    if (a3 == 1 && (*(a1 + 553) & 1) != 0)
    {
      if ((*(**(a1 + 584) + 48))(*(a1 + 584)))
      {
        v18 += (*(a1 + 16) - *(a1 + 24)) >> 2;
      }

      else
      {
        v18 = v18 - *(a1 + 616) + *(a1 + 592) + (*(**(a1 + 584) + 56))(*(a1 + 584), a1 + 408, *(a1 + 592), *(a1 + 608), (*(a1 + 16) - *(a1 + 8)) >> 2);
        v19 = *(a1 + 488);
        v28 = *(a1 + 472);
        v29 = v19;
        v20 = *(a1 + 520);
        v30 = *(a1 + 504);
        v31 = v20;
        v21 = *(a1 + 424);
        v24 = *(a1 + 408);
        v25 = v21;
        v22 = *(a1 + 456);
        v26 = *(a1 + 440);
        v27 = v22;
      }
    }

    v23[4] = v28;
    v23[5] = v29;
    v23[6] = v30;
    v23[7] = v31;
    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    *&result = std::wfilebuf::_M_seek(a1, v18, a3, v23, a4).n128_u64[0];
  }

  return result;
}

void sub_12160(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_call_unexpected(a1);
}

__n128 std::wfilebuf::_M_seek@<Q0>(uint64_t a1@<X0>, off_t a2@<X1>, int a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = -1;
  *(a5 + 8) = 0u;
  v10 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  if (std::wfilebuf::_M_terminate_output(a1))
  {
    v12 = std::__basic_file<char>::seekoff((a1 + 128), a2, a3);
    result.n128_u64[0] = 0;
    *v10 = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 120) = 0u;
    *a5 = v12;
    if (v12 != -1)
    {
      *(a1 + 553) = 0;
      v13 = *(a1 + 592);
      *(a1 + 616) = v13;
      *(a1 + 608) = v13;
      v14 = *(a1 + 536);
      *(a1 + 8) = v14;
      *(a1 + 16) = v14;
      *(a1 + 24) = v14;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v15 = a4[3];
      v17 = *a4;
      v16 = a4[1];
      *(a1 + 312) = a4[2];
      *(a1 + 328) = v15;
      *(a1 + 280) = v17;
      *(a1 + 296) = v16;
      v18 = a4[7];
      v20 = a4[4];
      v19 = a4[5];
      *(a1 + 376) = a4[6];
      *(a1 + 392) = v18;
      *(a1 + 344) = v20;
      *(a1 + 360) = v19;
      v21 = *a4;
      v22 = a4[1];
      v23 = a4[3];
      *(a5 + 40) = a4[2];
      *(a5 + 56) = v23;
      *v10 = v21;
      *(a5 + 24) = v22;
      result = a4[4];
      v24 = a4[5];
      v25 = a4[7];
      *(a5 + 104) = a4[6];
      *(a5 + 120) = v25;
      *(a5 + 72) = result;
      *(a5 + 88) = v24;
    }
  }

  return result;
}

double std::wfilebuf::seekpos@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  if (std::__basic_file<char>::is_open((a1 + 128)))
  {
    if (*(a1 + 576) == 1)
    {
      v7 = *(a1 + 560) + 4 * (*(a1 + 16) != *(a1 + 8));
      *(a1 + 560) = v7;
      v8 = *(a1 + 568);
      *(a1 + 8) = *(a1 + 536);
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 576) = 0;
    }

    v9 = *a2;
    v10 = *(a2 + 88);
    v14[4] = *(a2 + 72);
    v14[5] = v10;
    v11 = *(a2 + 120);
    v14[6] = *(a2 + 104);
    v14[7] = v11;
    v12 = *(a2 + 24);
    v14[0] = *(a2 + 8);
    v14[1] = v12;
    v13 = *(a2 + 56);
    v14[2] = *(a2 + 40);
    v14[3] = v13;
    *&result = std::wfilebuf::_M_seek(a1, v9, 0, v14, a3).n128_u64[0];
  }

  return result;
}

void sub_1239C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_call_unexpected(a1);
}

uint64_t std::wfilebuf::sync(void *a1)
{
  if (a1[4] >= a1[5])
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1, 0xFFFFFFFFLL) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void std::wfilebuf::imbue(uint64_t a1, uint64_t a2)
{
  v4 = std::locale::id::_M_id(&std::codecvt<wchar_t,char,__mbstate_t>::id);
  if (v4 < *(*a2 + 16) && *(*(*a2 + 8) + 8 * v4))
  {
    v5 = std::locale::id::_M_id(&std::codecvt<wchar_t,char,__mbstate_t>::id);
    if (v5 >= *(*a2 + 16) || (v6 = *(*(*a2 + 8) + 8 * v5)) == 0)
    {
      std::__throw_bad_cast();
    }
  }

  else
  {
    v6 = 0;
  }

  is_open = std::__basic_file<char>::is_open((a1 + 128));
  std::wfilebuf::imbue(is_open, a1, v6);
}

uint64_t std::wfilebuf::xsgetn(uint64_t a1, __int32 *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 576) == 1)
  {
    v6 = 0;
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a3 >= 1 && v7 == v8)
    {
      v8 = *(a1 + 16);
      *a2 = *v7;
      v4 = a2 + 1;
      v6 = 1;
      ++v7;
      v3 = a3 - 1;
    }

    v9 = *(a1 + 560) + 4 * (v7 != v8);
    *(a1 + 560) = v9;
    v10 = *(a1 + 568);
    *(a1 + 8) = *(a1 + 536);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 576) = 0;
  }

  else
  {
    v6 = 0;
  }

  v11 = *(a1 + 544);
  v12 = v11 > 1;
  v13 = v11 - 1;
  if (!v12)
  {
    v13 = 1;
  }

  if (v3 <= v13)
  {
    goto LABEL_16;
  }

  v14 = *(a1 + 584);
  if (!v14)
  {
    std::__throw_bad_cast();
  }

  v15 = *(a1 + 144) & 8;
  v16 = !(*(*v14 + 48))(v14) || v15 == 0;
  if (v16 || (*(a1 + 554) & 1) != 0)
  {
LABEL_16:
    v6 += std::wstreambuf::xsgetn(a1, v4, v3);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v20 = v19 - v18;
    if (v19 != v18)
    {
      v21 = v20 >> 2;
      if (v20 == 4)
      {
        *v4 = *v18;
      }

      else
      {
        wmemcpy(v4, v18, v20 >> 2);
        v18 = *(a1 + 16);
      }

      v4 += v21;
      *(a1 + 16) = &v18[(v20 >> 2)];
      v6 += v21;
      v3 -= v21;
    }

    while (1)
    {
      v22 = std::__basic_file<char>::xsgetn((a1 + 128), v4, v3);
      if (!v22)
      {
        break;
      }

      if (v22 == -1)
      {
        std::__throw_ios_failure("basic_filebuf::xsgetn error reading the file");
      }

      v6 += v22;
      v3 -= v22;
      if (!v3)
      {
        goto LABEL_29;
      }

      v4 += v22;
    }

    if (v3)
    {
      v23 = *(a1 + 536);
      *(a1 + 8) = v23;
      *(a1 + 16) = v23;
      *(a1 + 24) = v23;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 553) = 0;
      return v6;
    }

LABEL_29:
    v24 = *(a1 + 144);
    v25 = *(a1 + 536);
    *(a1 + 8) = v25;
    *(a1 + 16) = v25;
    *(a1 + 24) = v25;
    if ((v24 & 0x10) != 0 && (v26 = *(a1 + 544), v26 >= 2))
    {
      *(a1 + 32) = v25;
      *(a1 + 40) = v25;
      *(a1 + 48) = v25 + 4 * v26 - 4;
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    *(a1 + 553) = 1;
  }

  return v6;
}

uint64_t std::wfilebuf::xsputn(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = *(a1 + 584);
  if (!v4)
  {
    std::__throw_bad_cast();
  }

  v7 = *(a1 + 144) & 0x10;
  if ((*(*v4 + 48))(v4))
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (*(a1 + 553) & 1) != 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 40);
  v10 = (*(a1 + 48) - v9) >> 2;
  if ((*(a1 + 554) & 1) == 0)
  {
    v11 = *(a1 + 544);
    v12 = v11 > 1;
    v13 = v11 - 1;
    if (v12)
    {
      v10 = v13;
    }
  }

  if (v10 >= 1024)
  {
    v10 = 1024;
  }

  if (v10 > a3)
  {
LABEL_13:

    return std::wstreambuf::xsputn(a1, a2, a3);
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = v9 - v15;
    v17 = (v9 - v15) >> 2;
    v18 = std::__basic_file<char>::xsputn_2((a1 + 128), v15, v17, a2, a3);
    if (v18 == a3 + (v16 >> 2))
    {
      v19 = *(a1 + 144);
      v20 = *(a1 + 536);
      *(a1 + 8) = v20;
      *(a1 + 16) = v20;
      *(a1 + 24) = v20;
      if ((v19 & 0x10) != 0 && (v21 = *(a1 + 544), v21 >= 2))
      {
        *(a1 + 32) = v20;
        *(a1 + 40) = v20;
        *(a1 + 48) = v20 + 4 * v21 - 4;
      }

      else
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 554) = 1;
    }

    if (v18 <= v17)
    {
      return 0;
    }

    else
    {
      return v18 - v17;
    }
  }
}

uint64_t *std::wifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = v3;
  *(a1 + *(v3 - 24)) = a2[2];
  a1[1] = 0;
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::wfilebuf::basic_filebuf((a1 + 2));
  std::wios::init(a1 + *(*a1 - 24), (a1 + 2));
  return a1;
}

void sub_1296C(_Unwind_Exception *a1)
{
  std::wfilebuf::~wfilebuf(v1 + 2);
  v4 = *(v2 + 8);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::wifstream::basic_ifstream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 640));
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *a1 = off_5CD58;
  *(a1 + 8) = 0;
  *(a1 + 640) = off_5CD80;
  std::wfilebuf::basic_filebuf(a1 + 16);
  std::wios::init(a1 + *(*a1 - 24), a1 + 16);
  return a1;
}

void sub_12AB8(_Unwind_Exception *a1)
{
  std::wfilebuf::~wfilebuf(v1 + 2);
  v1[80] = off_5D158;
  *v1 = off_5D130;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::wifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, const char *a3, int a4)
{
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[2];
  a1[1] = 0;
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[3];
  std::wfilebuf::basic_filebuf((a1 + 2));
  std::wios::init(a1 + *(*a1 - 24), (a1 + 2));
  std::wifstream::open(a1, a3, a4);
  return a1;
}

void sub_12C94(_Unwind_Exception *exception_object)
{
  v3 = *(v2 + 8);
  *v1 = v3;
  *(v1 + *(v3 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t std::wifstream::open(void *a1, const char *a2, int a3)
{
  v4 = std::wfilebuf::open((a1 + 2), a2, a3 | 8u);
  v5 = a1 + *(*a1 - 24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32) | 4;
  }

  return std::wios::clear(v5, v6);
}

uint64_t std::wifstream::basic_ifstream(uint64_t a1, const char *a2, int a3)
{
  std::ios_base::ios_base((a1 + 640));
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *a1 = off_5CD58;
  *(a1 + 8) = 0;
  *(a1 + 640) = off_5CD80;
  std::wfilebuf::basic_filebuf(a1 + 16);
  std::wios::init(a1 + *(*a1 - 24), a1 + 16);
  std::wifstream::open(a1, a2, a3);
  return a1;
}

void sub_12E64(_Unwind_Exception *a1)
{
  v1[80] = off_5D158;
  *v1 = off_5D130;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::wifstream::~wifstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::wfilebuf::~wfilebuf(a1 + 2);
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  return a1;
}

uint64_t *std::wifstream::~wifstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 80));
  return a1;
}

void virtual thunk tostd::wifstream::~wifstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::wifstream::~wifstream((a1 + *(*a1 - 24)));
}

void std::wifstream::~wifstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 80));

  operator delete(a1);
}

BOOL std::wifstream::is_open(uint64_t a1)
{
  return std::__basic_file<char>::is_open((a1 + 144));
}

{
  return std::__basic_file<char>::is_open((a1 + 144));
}

uint64_t std::wifstream::close(void *a1)
{
  result = std::wfilebuf::close((a1 + 2));
  if (!result)
  {
    v3 = a1 + *(*a1 - 24);
    v4 = *(v3 + 32) | 4;

    return std::wios::clear(v3, v4);
  }

  return result;
}

uint64_t *std::wofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = v3;
  *(a1 + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  std::wfilebuf::basic_filebuf((a1 + 1));
  std::wios::init(a1 + *(*a1 - 24), (a1 + 1));
  return a1;
}

uint64_t std::wofstream::basic_ofstream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 632));
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *a1 = off_5CDC8;
  *(a1 + 632) = off_5CDF0;
  std::wfilebuf::basic_filebuf(a1 + 8);
  std::wios::init(a1 + *(*a1 - 24), a1 + 8);
  return a1;
}

void sub_133A4(_Unwind_Exception *a1)
{
  std::wfilebuf::~wfilebuf((v2 + 8));
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::wofstream::basic_ofstream(uint64_t *a1, uint64_t *a2, const char *a3, int a4)
{
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[2];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[3];
  std::wfilebuf::basic_filebuf((a1 + 1));
  std::wios::init(a1 + *(*a1 - 24), (a1 + 1));
  std::wofstream::open(a1, a3, a4);
  return a1;
}

uint64_t std::wofstream::open(void *a1, const char *a2, int a3)
{
  v4 = std::wfilebuf::open((a1 + 1), a2, a3 | 0x10u);
  v5 = a1 + *(*a1 - 24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32) | 4;
  }

  return std::wios::clear(v5, v6);
}

uint64_t std::wofstream::basic_ofstream(uint64_t a1, const char *a2, int a3)
{
  std::ios_base::ios_base((a1 + 632));
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *a1 = off_5CDC8;
  *(a1 + 632) = off_5CDF0;
  std::wfilebuf::basic_filebuf(a1 + 8);
  std::wios::init(a1 + *(*a1 - 24), a1 + 8);
  std::wofstream::open(a1, a2, a3);
  return a1;
}

uint64_t *std::wofstream::~wofstream(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  std::wfilebuf::~wfilebuf(a1 + 1);
  return a1;
}

void *std::wofstream::~wofstream(void *a1)
{
  *a1 = off_5CDC8;
  v2 = (a1 + 79);
  a1[79] = off_5CDF0;
  std::wfilebuf::~wfilebuf(a1 + 1);
  std::ios_base::~ios_base(v2);
  return a1;
}

void virtual thunk tostd::wofstream::~wofstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5CDC8;
  v2 = (v1 + 79);
  v1[79] = off_5CDF0;
  std::wfilebuf::~wfilebuf(v1 + 1);

  std::ios_base::~ios_base(v2);
}

{
  std::wofstream::~wofstream((a1 + *(*a1 - 24)));
}

void std::wofstream::~wofstream(void *a1)
{
  *a1 = off_5CDC8;
  v2 = (a1 + 79);
  a1[79] = off_5CDF0;
  std::wfilebuf::~wfilebuf(a1 + 1);
  std::ios_base::~ios_base(v2);

  operator delete(a1);
}

BOOL std::wofstream::is_open(uint64_t a1)
{
  return std::__basic_file<char>::is_open((a1 + 136));
}

{
  return std::__basic_file<char>::is_open((a1 + 136));
}

uint64_t std::wofstream::close(void *a1)
{
  result = std::wfilebuf::close((a1 + 1));
  if (!result)
  {
    v3 = a1 + *(*a1 - 24);
    v4 = *(v3 + 32) | 4;

    return std::wios::clear(v3, v4);
  }

  return result;
}

uint64_t *std::wfstream::basic_fstream(uint64_t *a1, uint64_t *a2)
{
  v4 = std::wiostream::basic_iostream(a1, a2 + 1);
  v5 = *a2;
  *v4 = *a2;
  *(a1 + *(v5 - 24)) = a2[8];
  a1[2] = a2[9];
  std::wfilebuf::basic_filebuf((a1 + 3));
  std::wios::init(a1 + *(*a1 - 24), (a1 + 3));
  return a1;
}

void sub_13AAC(_Unwind_Exception *a1)
{
  std::wfilebuf::~wfilebuf(v1 + 3);
  v4 = *(v2 + 16);
  *v1 = v4;
  *(v1 + *(v4 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::wfstream::basic_fstream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 648));
  *(a1 + 648) = off_5D478;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  std::wiostream::basic_iostream(a1, off_5CEA0);
  *a1 = off_5CE38;
  *(a1 + 648) = off_5CE88;
  *(a1 + 16) = off_5CE60;
  std::wfilebuf::basic_filebuf(a1 + 24);
  std::wios::init(a1 + *(*a1 - 24), a1 + 24);
  return a1;
}

void sub_13C44(_Unwind_Exception *a1)
{
  std::wfilebuf::~wfilebuf(v1 + 3);
  *v1 = off_5D278;
  v1[1] = 0;
  v1[81] = off_5D2A0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::wfstream::basic_fstream(uint64_t *a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v8 = std::wiostream::basic_iostream(a1, a2 + 1, 0);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[8];
  a1[2] = a2[9];
  std::wfilebuf::basic_filebuf((a1 + 3));
  std::wios::init(a1 + *(*a1 - 24), (a1 + 3));
  std::wfstream::open(a1, a3, a4);
  return a1;
}

void sub_13DDC(_Unwind_Exception *exception_object)
{
  v3 = *(v2 + 16);
  *v1 = v3;
  *(v1 + *(v3 - 24)) = *(v2 + 24);
  v1[1] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t std::wfstream::open(void *a1, const char *a2, uint64_t a3)
{
  v4 = std::wfilebuf::open((a1 + 3), a2, a3);
  v5 = a1 + *(*a1 - 24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 32) | 4;
  }

  return std::wios::clear(v5, v6);
}

uint64_t std::wfstream::basic_fstream(uint64_t a1, const char *a2, uint64_t a3)
{
  std::ios_base::ios_base((a1 + 648));
  *(a1 + 648) = off_5D478;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  std::wiostream::basic_iostream(a1, off_5CEA0, 0);
  *a1 = off_5CE38;
  *(a1 + 648) = off_5CE88;
  *(a1 + 16) = off_5CE60;
  std::wfilebuf::basic_filebuf(a1 + 24);
  std::wios::init(a1 + *(*a1 - 24), a1 + 24);
  std::wfstream::open(a1, a2, a3);
  return a1;
}

void sub_13FF8(_Unwind_Exception *a1)
{
  *v2 = off_5D278;
  v2[1] = 0;
  v2[81] = off_5D2A0;
  std::ios_base::~ios_base(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::wfstream::~wfstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[8];
  a1[2] = a2[9];
  std::wfilebuf::~wfilebuf(a1 + 3);
  v5 = a2[2];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  return a1;
}

uint64_t *std::wfstream::~wfstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 81));
  return a1;
}

void non-virtual thunk tostd::wfstream::~wfstream(uint64_t a1)
{

  std::ios_base::~ios_base((a1 + 632));
}

{
  std::wfstream::~wfstream((a1 - 16));
}

void virtual thunk tostd::wfstream::~wfstream(void *a1)
{

  std::ios_base::~ios_base(v1);
}

{
  std::wfstream::~wfstream((a1 + *(*a1 - 24)));
}

void std::wfstream::~wfstream(uint64_t *a1)
{
  std::ios_base::~ios_base((v2 + 81));

  operator delete(a1);
}

BOOL std::wfstream::is_open(uint64_t a1)
{
  return std::__basic_file<char>::is_open((a1 + 152));
}

{
  return std::__basic_file<char>::is_open((a1 + 152));
}

uint64_t std::wfstream::close(void *a1)
{
  result = std::wfilebuf::close((a1 + 3));
  if (!result)
  {
    v3 = a1 + *(*a1 - 24);
    v4 = *(v3 + 32) | 4;

    return std::wios::clear(v3, v4);
  }

  return result;
}

void OUTLINED_FUNCTION_0()
{
  v1 = v0[67];
  v0[1] = v1;
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
}

uint64_t OUTLINED_FUNCTION_3()
{
  v1 = v0[74];
  result = v0[73];
  v3 = v0[76];
  v5 = v0[1];
  v4 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result)
{
  v3 = v2 + result;
  *(v1 + 608) = v3;
  v4 = *(v1 + 616) - v3;
  return result;
}

void *OUTLINED_FUNCTION_5(void *a1)
{

  return memcpy(a1, (v1 + 152), 0x80uLL);
}

uint64_t __gnu_cxx::rope<char>::_S_fetch(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
LABEL_3:
    v4 = a1;
    v5 = *(a1 + 80);
    while (1)
    {
      if ((v5 - 2) < 2)
      {
        v8 = 0;
        (*(**(a1 + 160) + 16))(*(a1 + 160), a2, 1, &v8);
        return v8;
      }

      if (!*(a1 + 80))
      {
        break;
      }

      if (v5 == 1)
      {
        a1 = *(a1 + 160);
        v6 = a2 - *a1;
        if (a2 >= *a1)
        {
          a1 = *(v4 + 168);
          a2 = v6;
        }

        goto LABEL_3;
      }
    }

    v2 = *(a1 + 160);
  }

  return *(v2 + a2);
}

void *__gnu_cxx::stdio_filebuf<char>::stdio_filebuf(uint64_t a1)
{
  result = std::filebuf::basic_filebuf(a1);
  *result = off_5D328;
  return result;
}

{
  result = std::filebuf::basic_filebuf(a1);
  *result = off_5D328;
  return result;
}

uint64_t __gnu_cxx::stdio_filebuf<char>::stdio_filebuf(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = std::filebuf::basic_filebuf(a1);
  *v8 = off_5D328;
  v9 = v8 + 16;
  std::__basic_file<char>::sys_open((v8 + 16), a2, a3);
  if (std::__basic_file<char>::is_open(v9))
  {
    *(a1 + 144) = a3;
    *(a1 + 544) = a4;
    std::filebuf::_M_allocate_internal_buffer(a1);
    *(a1 + 553) = 0;
    v10 = *(a1 + 536);
    *(a1 + 8) = v10;
    *(a1 + 16) = v10;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  return a1;
}

uint64_t __gnu_cxx::stdio_filebuf<char>::stdio_filebuf(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = std::filebuf::basic_filebuf(a1);
  *v8 = off_5D328;
  v9 = v8 + 16;
  std::__basic_file<char>::sys_open((v8 + 16), a2);
  if (std::__basic_file<char>::is_open(v9))
  {
    *(a1 + 144) = a3;
    *(a1 + 544) = a4;
    std::filebuf::_M_allocate_internal_buffer(a1);
    *(a1 + 553) = 0;
    v10 = *(a1 + 536);
    *(a1 + 8) = v10;
    *(a1 + 16) = v10;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  return a1;
}

void __gnu_cxx::stdio_filebuf<char>::~stdio_filebuf(void *a1)
{
  v1 = std::filebuf::~filebuf(a1);

  operator delete(v1);
}

uint64_t __gnu_cxx::rope<wchar_t>::_S_fetch(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
LABEL_3:
    v4 = a1;
    v5 = *(a1 + 80);
    while (1)
    {
      if ((v5 - 2) < 2)
      {
        v7 = 0;
        (*(**(a1 + 160) + 16))(*(a1 + 160), a2, 1, &v7);
        return v7;
      }

      if (!*(a1 + 80))
      {
        break;
      }

      if (v5 == 1)
      {
        a1 = *(a1 + 160);
        v6 = a2 - *a1;
        if (a2 >= *a1)
        {
          a1 = *(v4 + 168);
          a2 = v6;
        }

        goto LABEL_3;
      }
    }

    v2 = *(a1 + 160);
  }

  return *(v2 + 4 * a2);
}

void *__gnu_cxx::stdio_filebuf<wchar_t>::stdio_filebuf(uint64_t a1)
{
  result = std::wfilebuf::basic_filebuf(a1);
  *result = off_5D3A8;
  return result;
}

{
  result = std::wfilebuf::basic_filebuf(a1);
  *result = off_5D3A8;
  return result;
}

uint64_t __gnu_cxx::stdio_filebuf<wchar_t>::stdio_filebuf(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = std::wfilebuf::basic_filebuf(a1);
  *v8 = off_5D3A8;
  v9 = v8 + 16;
  std::__basic_file<char>::sys_open((v8 + 16), a2, a3);
  if (std::__basic_file<char>::is_open(v9))
  {
    *(a1 + 144) = a3;
    *(a1 + 544) = a4;
    std::wfilebuf::_M_allocate_internal_buffer(a1);
    *(a1 + 553) = 0;
    v10 = *(a1 + 536);
    *(a1 + 8) = v10;
    *(a1 + 16) = v10;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  return a1;
}

uint64_t __gnu_cxx::stdio_filebuf<wchar_t>::stdio_filebuf(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = std::wfilebuf::basic_filebuf(a1);
  *v8 = off_5D3A8;
  v9 = v8 + 16;
  std::__basic_file<char>::sys_open((v8 + 16), a2);
  if (std::__basic_file<char>::is_open(v9))
  {
    *(a1 + 144) = a3;
    *(a1 + 544) = a4;
    std::wfilebuf::_M_allocate_internal_buffer(a1);
    *(a1 + 553) = 0;
    v10 = *(a1 + 536);
    *(a1 + 8) = v10;
    *(a1 + 16) = v10;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  return a1;
}

void __gnu_cxx::stdio_filebuf<wchar_t>::~stdio_filebuf(void *a1)
{
  v1 = std::wfilebuf::~wfilebuf(a1);

  operator delete(v1);
}

uint64_t std::ios::operator void *(uint64_t result)
{
  if ((*(result + 32) & 5) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t std::ios::clear(uint64_t result, int a2)
{
  v2 = (*(result + 232) == 0) | a2;
  *(result + 32) = v2;
  if ((v2 & *(result + 28)) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

uint64_t std::ios::setstate(uint64_t result, int a2)
{
  v2 = *(result + 28);
  v3 = *(result + 32) | a2 | (*(result + 232) == 0);
  *(result + 32) = v3;
  if ((v3 & v2) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

uint64_t std::ios::_M_setstate(uint64_t result, int a2)
{
  v2 = *(result + 28);
  *(result + 32) |= a2;
  if ((v2 & a2) != 0)
  {
    __cxa_rethrow();
  }

  return result;
}

uint64_t std::ios::exceptions(uint64_t result, int a2)
{
  v2 = *(result + 32) | (*(result + 232) == 0);
  *(result + 28) = a2;
  *(result + 32) = v2;
  if ((v2 & a2) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

std::ios_base *std::ios::basic_ios(std::ios_base *a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base(a1);
  *v4 = off_5D458;
  *(v4 + 27) = 0;
  *(v4 + 112) = 0;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  std::ios::init(v4, a2);
  return a1;
}

uint64_t std::ios::init(uint64_t a1, uint64_t a2)
{
  std::ios_base::_M_init(a1);
  result = std::ios::_M_cache_locale(a1, a1 + 208);
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = a2 == 0;
  return result;
}

void std::ios::~ios(std::ios_base *a1)
{
  std::ios_base::~ios_base(a1);

  operator delete(v1);
}

uint64_t std::ios::tie(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  *(a1 + 216) = a2;
  return v2;
}

uint64_t std::ios::rdbuf(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 232);
  *(a1 + 232) = a2;
  v4 = a2 == 0;
  *(a1 + 32) = v4;
  if ((*(a1 + 28) & v4) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

uint64_t std::ios::copyfmt(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *(a2 + 192);
    if (v5 > 8)
    {
      v7 = 16 * v5;
      v6 = operator new[](16 * v5);
      bzero(v6, v7);
    }

    else
    {
      v6 = (a1 + 64);
    }

    v8 = *(a2 + 40);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
    }

    std::ios_base::_M_call_callbacks(a1, 0);
    v9 = *(a1 + 200);
    if (v9 != (a1 + 64))
    {
      if (v9)
      {
        operator delete[](v9);
      }

      *(a1 + 200) = 0;
    }

    std::ios_base::_M_dispose_callbacks(a1);
    *(a1 + 40) = v8;
    LODWORD(v10) = *(a2 + 192);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        *&v6[v11] = *(*(a2 + 200) + v11);
        ++v12;
        v10 = *(a2 + 192);
        v11 += 16;
      }

      while (v12 < v10);
    }

    *(a1 + 200) = v6;
    *(a1 + 192) = v10;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 216) = *(a2 + 216);
    v13 = std::ios::fill(a2);
    std::ios::fill(a1);
    *(a1 + 224) = v13;
    std::locale::locale(&v16, (a2 + 208));
    std::locale::operator=((a1 + 208), &v16);
    std::locale::~locale(&v16);
    std::ios::_M_cache_locale(a1, a1 + 208);
    std::ios_base::_M_call_callbacks(a1, 2);
    v14 = *(a2 + 28);
    v15 = *(a1 + 32) | (*(a1 + 232) == 0);
    *(a1 + 28) = v14;
    *(a1 + 32) = v15;
    if ((v15 & v14) != 0)
    {
      std::__throw_ios_failure("basic_ios::clear");
    }
  }

  return a1;
}

uint64_t std::ios::fill(uint64_t a1, char a2)
{
  result = std::ios::fill(a1);
  *(a1 + 224) = a2;
  return result;
}

uint64_t std::ios::fill(uint64_t a1)
{
  if (*(a1 + 225) == 1)
  {
    return *(a1 + 224);
  }

  else
  {
    v3 = *(a1 + 240);
    if (!v3)
    {
      std::__throw_bad_cast();
    }

    v2 = std::ctype<char>::widen(v3, 32);
    *(a1 + 224) = v2;
    *(a1 + 225) = 1;
  }

  return v2;
}

uint64_t std::ios::widen(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 240);
  if (!v3)
  {
    std::__throw_bad_cast();
  }

  return std::ctype<char>::widen(v3, a2);
}

void std::ios::imbue(uint64_t a1@<X0>, atomic_uint *volatile *a2@<X1>, atomic_uint **a3@<X8>)
{
  std::locale::locale(a3, (a1 + 208));
  std::ios_base::imbue(a1, a2, &v7);
  std::locale::~locale(&v7);
  std::ios::_M_cache_locale(a1, a2);
  v5 = *(a1 + 232);
  if (v5)
  {
    std::streambuf::pubimbue(v5, a2, &v6);
    std::locale::~locale(&v6);
  }
}

uint64_t std::ios::narrow(uint64_t a1, unsigned __int8 a2, int a3)
{
  v3 = *(a1 + 240);
  if (!v3)
  {
    std::__throw_bad_cast();
  }

  v4 = v3 + 313;
  v5 = a2;
  v6 = *(v3 + 313 + a2);
  if (!v6)
  {
    v8 = (*(*v3 + 64))(v3);
    v6 = a3;
    if (v8 != a3)
    {
      *(v4 + v5) = v8;
      return v8;
    }
  }

  return v6;
}

uint64_t std::ctype<char>::widen(_BYTE *a1, uint64_t a2)
{
  if (a1[56])
  {
    return a1[a2 + 57];
  }

  std::ctype<char>::_M_widen_init(a1);
  v5 = *(*a1 + 48);

  return v5(a1, a2);
}

double std::ios::basic_ios(std::ios_base *a1)
{
  v1 = std::ios_base::ios_base(a1);
  *v1 = off_5D458;
  *(v1 + 27) = 0;
  *(v1 + 112) = 0;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return result;
}

{
  v1 = std::ios_base::ios_base(a1);
  *v1 = off_5D458;
  *(v1 + 27) = 0;
  *(v1 + 112) = 0;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return result;
}

uint64_t std::wios::operator void *(uint64_t result)
{
  if ((*(result + 32) & 5) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t std::wios::clear(uint64_t result, int a2)
{
  v2 = (*(result + 232) == 0) | a2;
  *(result + 32) = v2;
  if ((v2 & *(result + 28)) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

uint64_t std::wios::setstate(uint64_t result, int a2)
{
  v2 = *(result + 28);
  v3 = *(result + 32) | a2 | (*(result + 232) == 0);
  *(result + 32) = v3;
  if ((v3 & v2) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

uint64_t std::wios::_M_setstate(uint64_t result, int a2)
{
  v2 = *(result + 28);
  *(result + 32) |= a2;
  if ((v2 & a2) != 0)
  {
    __cxa_rethrow();
  }

  return result;
}

uint64_t std::wios::exceptions(uint64_t result, int a2)
{
  v2 = *(result + 32) | (*(result + 232) == 0);
  *(result + 28) = a2;
  *(result + 32) = v2;
  if ((v2 & a2) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

std::ios_base *std::wios::basic_ios(std::ios_base *a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base(a1);
  *v4 = off_5D478;
  *(v4 + 27) = 0;
  *(v4 + 56) = 0;
  *(v4 + 228) = 0;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  std::wios::init(v4, a2);
  return a1;
}

uint64_t std::wios::init(uint64_t a1, uint64_t a2)
{
  std::ios_base::_M_init(a1);
  result = std::wios::_M_cache_locale(a1, a1 + 208);
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = a2 == 0;
  return result;
}

void std::wios::~wios(std::ios_base *a1)
{
  std::ios_base::~ios_base(a1);

  operator delete(v1);
}

uint64_t std::wios::tie(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  *(a1 + 216) = a2;
  return v2;
}

uint64_t std::wios::rdbuf(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 232);
  *(a1 + 232) = a2;
  v4 = a2 == 0;
  *(a1 + 32) = v4;
  if ((*(a1 + 28) & v4) != 0)
  {
    std::__throw_ios_failure("basic_ios::clear");
  }

  return result;
}

uint64_t std::wios::copyfmt(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *(a2 + 192);
    if (v5 > 8)
    {
      v7 = 16 * v5;
      v6 = operator new[](16 * v5);
      bzero(v6, v7);
    }

    else
    {
      v6 = (a1 + 64);
    }

    v8 = *(a2 + 40);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
    }

    std::ios_base::_M_call_callbacks(a1, 0);
    v9 = *(a1 + 200);
    if (v9 != (a1 + 64))
    {
      if (v9)
      {
        operator delete[](v9);
      }

      *(a1 + 200) = 0;
    }

    std::ios_base::_M_dispose_callbacks(a1);
    *(a1 + 40) = v8;
    LODWORD(v10) = *(a2 + 192);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        *&v6[v11] = *(*(a2 + 200) + v11);
        ++v12;
        v10 = *(a2 + 192);
        v11 += 16;
      }

      while (v12 < v10);
    }

    *(a1 + 200) = v6;
    *(a1 + 192) = v10;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 216) = *(a2 + 216);
    v13 = std::wios::fill(a2);
    std::wios::fill(a1);
    *(a1 + 224) = v13;
    std::locale::locale(&v16, (a2 + 208));
    std::locale::operator=((a1 + 208), &v16);
    std::locale::~locale(&v16);
    std::wios::_M_cache_locale(a1, a1 + 208);
    std::ios_base::_M_call_callbacks(a1, 2);
    v14 = *(a2 + 28);
    v15 = *(a1 + 32) | (*(a1 + 232) == 0);
    *(a1 + 28) = v14;
    *(a1 + 32) = v15;
    if ((v15 & v14) != 0)
    {
      std::__throw_ios_failure("basic_ios::clear");
    }
  }

  return a1;
}

uint64_t std::wios::fill(uint64_t a1, int a2)
{
  result = std::wios::fill(a1);
  *(a1 + 224) = a2;
  return result;
}

uint64_t std::wios::fill(uint64_t a1)
{
  if (*(a1 + 228) == 1)
  {
    return *(a1 + 224);
  }

  v3 = *(a1 + 240);
  if (!v3)
  {
    std::__throw_bad_cast();
  }

  result = (*(*v3 + 80))(v3, 32);
  *(a1 + 224) = result;
  *(a1 + 228) = 1;
  return result;
}

uint64_t std::wios::widen(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    std::__throw_bad_cast();
  }

  v3 = *(*v2 + 80);

  return v3();
}

void std::wios::imbue(uint64_t a1@<X0>, atomic_uint *volatile *a2@<X1>, atomic_uint **a3@<X8>)
{
  std::locale::locale(a3, (a1 + 208));
  std::ios_base::imbue(a1, a2, &v7);
  std::locale::~locale(&v7);
  std::wios::_M_cache_locale(a1, a2);
  v5 = *(a1 + 232);
  if (v5)
  {
    std::wstreambuf::pubimbue(v5, a2, &v6);
    std::locale::~locale(&v6);
  }
}

uint64_t std::wios::narrow(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    std::__throw_bad_cast();
  }

  v3 = *(*v2 + 96);

  return v3();
}

double std::wios::basic_ios(std::ios_base *a1)
{
  v1 = std::ios_base::ios_base(a1);
  *v1 = off_5D478;
  *(v1 + 27) = 0;
  *(v1 + 56) = 0;
  *(v1 + 228) = 0;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return result;
}

{
  v1 = std::ios_base::ios_base(a1);
  *v1 = off_5D478;
  *(v1 + 27) = 0;
  *(v1 + 56) = 0;
  *(v1 + 228) = 0;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return result;
}

uint64_t *std::iostream::iostream(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  a1[1] = 0;
  v5 = a2[3];
  a1[2] = v5;
  *(a1 + *(v5 - 24) + 16) = a2[4];
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[5];
  a1[2] = a2[6];
  std::ios::init(a1 + *(*a1 - 24), a3);
  return a1;
}

void sub_15990(_Unwind_Exception *a1)
{
  v3 = *(v2 + 8);
  *v1 = v3;
  *(v1 + *(v3 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::iostream::iostream(uint64_t a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base((a1 + 24));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *a1 = off_5D4D0;
  *(a1 + 8) = 0;
  *(a1 + 24) = off_5D520;
  *(a1 + 16) = off_5D4F8;
  std::ios::init(v4, a2);
  return a1;
}

void sub_15AC0(_Unwind_Exception *a1)
{
  v1[3] = off_5D658;
  *v1 = off_5D630;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

void std::iostream::~iostream(std::iostream *this, uint64_t a2)
{
  v2 = *(a2 + 8);
  *this = v2;
  *(this + *(v2 - 24)) = *(a2 + 16);
  *(this + 1) = 0;
}

void std::iostream::~iostream(std::iostream *this)
{
  *this = off_5D630;
  *(this + 3) = off_5D658;
  *(this + 1) = 0;
  std::ios_base::~ios_base((this + 24));
}

{
  *this = off_5D630;
  *(this + 3) = off_5D658;
  *(this + 1) = 0;
  std::ios_base::~ios_base((this + 24));

  operator delete(this);
}

void non-virtual thunk tostd::iostream::~iostream(std::iostream *this)
{
  *(this - 2) = off_5D630;
  *(this - 1) = 0;
  *(this + 1) = off_5D658;
  std::ios_base::~ios_base((this + 8));
}

{
  v1 = this - 16;
  *(this - 2) = off_5D630;
  *(this - 1) = 0;
  *(this + 1) = off_5D658;
  std::ios_base::~ios_base((this + 8));

  operator delete(v1);
}

void virtual thunk tostd::iostream::~iostream(std::iostream *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_5D630;
  v1[1] = 0;
  v1[3] = off_5D658;
  std::ios_base::~ios_base((v1 + 3));
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_5D630;
  v1[1] = 0;
  v1[3] = off_5D658;
  std::ios_base::~ios_base((v1 + 3));

  operator delete(v1);
}

uint64_t *std::iostream::iostream(uint64_t *this, uint64_t *a2)
{
  v2 = a2[1];
  *this = v2;
  *(this + *(v2 - 24)) = a2[2];
  this[1] = 0;
  v3 = a2[3];
  this[2] = v3;
  *(this + *(v3 - 24) + 16) = a2[4];
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  this[2] = a2[6];
  return this;
}

std::iostream *std::iostream::iostream(std::iostream *this)
{
  std::ios_base::ios_base((this + 24));
  *(this + 30) = 0;
  *(this + 124) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *this = off_5D4D0;
  *(this + 1) = 0;
  *(this + 3) = off_5D520;
  *(this + 2) = off_5D4F8;
  return this;
}

uint64_t *std::wiostream::basic_iostream(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  a1[1] = 0;
  v5 = a2[3];
  a1[2] = v5;
  *(a1 + *(v5 - 24) + 16) = a2[4];
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[5];
  a1[2] = a2[6];
  std::wios::init(a1 + *(*a1 - 24), a3);
  return a1;
}

void sub_16270(_Unwind_Exception *a1)
{
  v3 = *(v2 + 8);
  *v1 = v3;
  *(v1 + *(v3 - 24)) = *(v2 + 16);
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t std::wiostream::basic_iostream(uint64_t a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base((a1 + 24));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *a1 = off_5D580;
  *(a1 + 8) = 0;
  *(a1 + 24) = off_5D5D0;
  *(a1 + 16) = off_5D5A8;
  std::wios::init(v4, a2);
  return a1;
}

void sub_163A4(_Unwind_Exception *a1)
{
  v1[3] = off_5D730;
  *v1 = off_5D708;
  v1[1] = 0;
  std::ios_base::~ios_base(v2);
  _Unwind_Resume(a1);
}

void *std::wiostream::~basic_iostream(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = v2;
  *(result + *(v2 - 24)) = *(a2 + 16);
  result[1] = 0;
  return result;
}

void *std::wiostream::~basic_iostream(void *a1)
{
  *a1 = off_5D708;
  a1[3] = off_5D730;
  a1[1] = 0;
  std::ios_base::~ios_base((a1 + 3));
  return a1;
}

void non-virtual thunk tostd::wiostream::~basic_iostream(uint64_t a1)
{
  *(a1 - 16) = off_5D708;
  *(a1 - 8) = 0;
  *(a1 + 8) = off_5D730;
  std::ios_base::~ios_base((a1 + 8));
}

{
  v1 = (a1 - 16);
  *(a1 - 16) = off_5D708;
  *(a1 - 8) = 0;
  *(a1 + 8) = off_5D730;
  std::ios_base::~ios_base((a1 + 8));

  operator delete(v1);
}

void virtual thunk tostd::wiostream::~basic_iostream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5D708;
  v1[1] = 0;
  v1[3] = off_5D730;
  std::ios_base::~ios_base((v1 + 3));
}

{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5D708;
  v1[1] = 0;
  v1[3] = off_5D730;
  std::ios_base::~ios_base((v1 + 3));

  operator delete(v1);
}

void std::wiostream::~basic_iostream(void *a1)
{
  *a1 = off_5D708;
  a1[3] = off_5D730;
  a1[1] = 0;
  std::ios_base::~ios_base((a1 + 3));

  operator delete(a1);
}

uint64_t *std::wiostream::basic_iostream(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  *result = v2;
  *(result + *(v2 - 24)) = a2[2];
  result[1] = 0;
  v3 = a2[3];
  result[2] = v3;
  *(result + *(v3 - 24) + 16) = a2[4];
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 24)) = a2[5];
  result[2] = a2[6];
  return result;
}

uint64_t std::wiostream::basic_iostream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 24));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *a1 = off_5D580;
  *(a1 + 8) = 0;
  *(a1 + 24) = off_5D5D0;
  *(a1 + 16) = off_5D5A8;
  return a1;
}

uint64_t *std::istream::istream(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init(a1 + *(*a1 - 24), a3);
  return a1;
}

uint64_t std::istream::istream(uint64_t a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base((a1 + 16));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *a1 = off_5D7E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = off_5D808;
  std::ios::init(v4, a2);
  return a1;
}

void std::istream::~istream(std::istream *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + 1) = 0;
}

void std::istream::~istream(std::istream *this)
{
  *this = off_5D7E0;
  *(this + 1) = 0;
  *(this + 2) = off_5D808;
  std::ios_base::~ios_base((this + 16));
}

{
  *this = off_5D7E0;
  *(this + 1) = 0;
  *(this + 2) = off_5D808;
  std::ios_base::~ios_base((this + 16));

  operator delete(this);
}

void virtual thunk tostd::istream::~istream(std::istream *this)
{
  v1 = (this + *(*this - 24));
  *v1 = off_5D7E0;
  v1[1] = 0;
  v1[2] = off_5D808;
  std::ios_base::~ios_base((v1 + 2));
}

{
  v1 = (this + *(*this - 24));
  *v1 = off_5D7E0;
  v1[1] = 0;
  v1[2] = off_5D808;
  std::ios_base::~ios_base((v1 + 2));

  operator delete(v1);
}

std::istream::sentry *std::istream::sentry::sentry(std::istream::sentry *this, std::istream *a2, char a3)
{
  *this = 0;
  v5 = *a2;
  v6 = a2 + *(*a2 - 24);
  if (*(v6 + 8))
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 27);
  if (v8)
  {
    std::ostream::flush(v8);
    v5 = *a2;
  }

  if ((a3 & 1) != 0 || (v9 = a2 + *(v5 - 24), (v9[25] & 0x10) == 0))
  {
LABEL_6:
    v10 = 4;
    v11 = 1;
    goto LABEL_7;
  }

  v14 = *(v9 + 29);
  v15 = v14[2];
  if (v15 >= v14[3])
  {
    v16 = (*(*v14 + 72))(v14);
    v5 = *a2;
  }

  else
  {
    v16 = *v15;
  }

  v17 = *(a2 + *(v5 - 24) + 240);
  if (!v17)
  {
    std::__throw_bad_cast();
  }

  if (v16 == -1)
  {
    v12 = a2 + *(v5 - 24);
    v13 = *(v12 + 8);
    v10 = 6;
    goto LABEL_24;
  }

  while (1)
  {
    v18 = *(v17 + 48);
    if (v18)
    {
      if ((*(v18 + 8 * v16) & 0x4000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    if ((v16 & 0x80) != 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v16] & 0x4000) == 0)
    {
      goto LABEL_26;
    }

LABEL_21:
    v16 = std::streambuf::snextc(v14);
    if (v16 == -1)
    {
      v11 = 0;
      v10 = 6;
      goto LABEL_27;
    }
  }

  if (__maskrune(v16, 0x4000uLL))
  {
    goto LABEL_21;
  }

LABEL_26:
  v10 = 4;
  v11 = 1;
LABEL_27:
  v5 = *a2;
LABEL_7:
  v12 = a2 + *(v5 - 24);
  v13 = *(v12 + 8);
  if (!v11 || v13)
  {
LABEL_24:
    std::ios::clear(v12, v13 | v10);
    return this;
  }

  *this = 1;
  return this;
}

char *std::istream::operator>>(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

std::istream *std::istream::_M_extract<BOOL>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 16))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::operator>>(std::istream *a1, _WORD *a2)
{
  std::istream::_M_extract<long>(a1, &v7);
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 32);
  if ((v5 & 5) == 0)
  {
    if (v7 == v7)
    {
      *a2 = v7;
    }

    else
    {
      std::ios::clear(v4, v5 | 4);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<long>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 24))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<unsigned short>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 32))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::operator>>(std::istream *a1, _DWORD *a2)
{
  std::istream::_M_extract<long>(a1, &v7);
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 32);
  if ((v5 & 5) == 0)
  {
    if (v7 == v7)
    {
      *a2 = v7;
    }

    else
    {
      std::ios::clear(v4, v5 | 4);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<unsigned int>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 40))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<unsigned long>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 48))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<long long>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 56))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<unsigned long long>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 64))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<float>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 72))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<double>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 80))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<long double>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 88))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::_M_extract<void *>(std::istream *a1, uint64_t a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 96))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

std::istream *std::istream::operator>>(std::istream *a1, void *a2)
{
  std::istream::sentry::sentry(&v8, a1, 0);
  if (a2 && (v8 & 1) != 0)
  {
    v4 = std::__copy_streambufs_eof<char,std::char_traits<char>>(*(a1 + *(*a1 - 24) + 232), a2, &v7);
    if (v7)
    {
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 6;
      }

      goto LABEL_11;
    }

    if (!v4)
    {
LABEL_10:
      v5 = 4;
LABEL_11:
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v5);
    }
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  return a1;
}

void sub_17E94(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 4u;
  if ((v2[28] & 4) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x17E80);
  }

  __cxa_rethrow();
}

uint64_t std::istream::get(std::istream *this)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v6, this, 1);
  if (v6 == 1)
  {
    v2 = *(this + *(*this - 24) + 232);
    v3 = v2[2];
    if (v3 < v2[3])
    {
      result = *v3;
      v2[2] = v3 + 1;
LABEL_4:
      *(this + 1) = 1;
      return result;
    }

    result = (*(*v2 + 80))(*(this + *(*this - 24) + 232));
    if (result != -1)
    {
      goto LABEL_4;
    }

    if (*(this + 1))
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    goto LABEL_11;
  }

  if (!*(this + 1))
  {
    v5 = 4;
LABEL_11:
    std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | v5);
  }

  return 0xFFFFFFFFLL;
}

std::istream *std::istream::get(std::istream *this, char *a2)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v10, this, 1);
  if (v10 == 1)
  {
    v4 = *(this + *(*this - 24) + 232);
    v5 = v4[2];
    if (v5 >= v4[3])
    {
      v9 = (*(*v4 + 80))(v4);
      v6 = v9;
      if (v9 == -1)
      {
        if (*(this + 1))
        {
          v7 = 2;
        }

        else
        {
          v7 = 6;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v6 = *v5;
      v4[2] = v5 + 1;
    }

    *(this + 1) = 1;
    *a2 = v6;
  }

  if (!*(this + 1))
  {
    v7 = 4;
LABEL_7:
    std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | v7);
  }

  return this;
}

void sub_18144(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x180B8);
  }

  __cxa_rethrow();
}

std::istream *std::istream::get(std::istream *this, char *a2, uint64_t a3, unsigned __int8 a4)
{
  *(this + 1) = 0;
  v8 = 1;
  std::istream::sentry::sentry(&v14, this, 1);
  if (v14 == 1)
  {
    v9 = *(this + *(*this - 24) + 232);
    v10 = v9[2];
    if (v10 >= v9[3])
    {
      v11 = (*(*v9 + 72))(*(this + *(*this - 24) + 232));
    }

    else
    {
      v11 = *v10;
    }

    while (*(this + 1) + 1 < a3)
    {
      if (v11 == -1)
      {
        goto LABEL_11;
      }

      if (v11 == a4)
      {
        goto LABEL_10;
      }

      *a2++ = v11;
      ++*(this + 1);
      v11 = std::streambuf::snextc(v9);
    }

    if (v11 != -1)
    {
LABEL_10:
      v12 = 0;
      v8 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  if (*(this + 1))
  {
    if (v8)
    {
      return this;
    }
  }

  else
  {
    v12 |= 4u;
  }

  std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | v12);
  return this;
}

void sub_18304(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18264);
  }

  __cxa_rethrow();
}

std::istream *std::istream::get(std::istream *this, char *a2, uint64_t a3)
{
  v6 = std::ios::widen(this + *(*this - 24), 10);

  return std::istream::get(this, a2, a3, v6);
}

std::istream *std::istream::get(std::istream *a1, void *a2, unsigned __int8 a3)
{
  *(a1 + 1) = 0;
  v6 = 1;
  std::istream::sentry::sentry(&v13, a1, 1);
  if (v13 == 1)
  {
    v7 = *(a1 + *(*a1 - 24) + 232);
    v8 = v7[2];
    if (v8 >= v7[3])
    {
      v9 = (*(*v7 + 72))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      v9 = *v8;
    }

    while (1)
    {
      v6 = v9 != -1;
      if (v9 == -1)
      {
        break;
      }

      if (v9 == a3)
      {
        goto LABEL_10;
      }

      v10 = a2[5];
      if (v10 >= a2[6])
      {
        if ((*(*a2 + 104))(a2, v9) == -1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *v10 = v9;
        ++a2[5];
      }

      ++*(a1 + 1);
      v9 = std::streambuf::snextc(v7);
    }

    v11 = 2;
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  if (*(a1 + 1))
  {
    if (v6)
    {
      return a1;
    }
  }

  else
  {
    v11 |= 4u;
  }

  std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v11);
  return a1;
}

void sub_18550(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x184D0);
  }

  __cxa_rethrow();
}

std::istream *std::istream::get(std::istream *a1, void *a2)
{
  v4 = std::ios::widen(a1 + *(*a1 - 24), 10);

  return std::istream::get(a1, a2, v4);
}

std::istream *std::istream::getline(std::istream *this, char *a2, uint64_t a3)
{
  v6 = std::ios::widen(this + *(*this - 24), 10);

  return std::istream::getline(this, a2, a3, v6);
}

std::istream *std::istream::ignore(std::istream *this)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v5, this, 1);
  if (v5 == 1)
  {
    v2 = *(this + *(*this - 24) + 232);
    v3 = v2[2];
    if (v3 >= v2[3])
    {
      if ((*(*v2 + 80))(v2) == -1)
      {
        std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 2);
        return this;
      }
    }

    else
    {
      v2[2] = v3 + 1;
    }

    *(this + 1) = 1;
  }

  return this;
}

void sub_1875C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x186F4);
  }

  __cxa_rethrow();
}

uint64_t std::istream::peek(std::istream *this)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v5, this, 1);
  if (v5 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + *(*this - 24) + 232);
  v3 = v2[2];
  if (v3 < v2[3])
  {
    return *v3;
  }

  result = (*(*v2 + 72))(v2);
  if (result == -1)
  {
    std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1887C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18868);
  }

  __cxa_rethrow();
}

std::istream *std::istream::read(std::istream *this, char *a2, uint64_t a3)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v9, this, 1);
  if (v9 == 1)
  {
    v6 = *(this + *(*this - 24) + 232);
    v7 = (*(*v6 + 64))(v6, a2, a3);
    *(this + 1) = v7;
    if (v7 != a3)
    {
      std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 6);
    }
  }

  return this;
}

void sub_189A4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1898CLL);
  }

  __cxa_rethrow();
}

uint64_t std::istream::readsome(std::istream *this, char *a2, uint64_t a3)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v12, this, 1);
  if (v12 == 1)
  {
    v6 = *(this + *(*this - 24) + 232);
    v8 = v6[2];
    v7 = v6[3];
    v9 = v7 - v8;
    if (v7 == v8)
    {
      v9 = (*(*v6 + 56))(*(this + *(*this - 24) + 232));
    }

    if (v9 < 1)
    {
      if (v9 == -1)
      {
        std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 2);
      }
    }

    else
    {
      if (v9 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v9;
      }

      *(this + 1) = (*(**(this + *(*this - 24) + 232) + 64))(*(this + *(*this - 24) + 232), a2, v10);
    }
  }

  return *(this + 1);
}

void sub_18B30(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18B18);
  }

  __cxa_rethrow();
}

std::istream *std::istream::putback(std::istream *this, unsigned __int8 a2)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v7, this, 1);
  if (v7 == 1)
  {
    v4 = *this;
    v5 = *(this + *(*this - 24) + 232);
    if (!v5)
    {
LABEL_5:
      std::ios::clear(this + *(v4 - 24), *(this + *(v4 - 24) + 32) | 1);
      return this;
    }

    if (std::streambuf::sputbackc(v5, a2) == -1)
    {
      v4 = *this;
      goto LABEL_5;
    }
  }

  return this;
}

void sub_18C30(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18C1CLL);
  }

  __cxa_rethrow();
}

std::istream *std::istream::unget(std::istream *this)
{
  *(this + 1) = 0;
  std::istream::sentry::sentry(&v6, this, 1);
  if (v6 == 1)
  {
    v2 = *this;
    v3 = *(this + *(*this - 24) + 232);
    if (v3)
    {
      v4 = v3[2];
      if (v3[1] < v4)
      {
        v3[2] = v4 - 1;
        return this;
      }

      if ((*(*v3 + 88))(v3, 0xFFFFFFFFLL) != -1)
      {
        return this;
      }

      v2 = *this;
    }

    std::ios::clear(this + *(v2 - 24), *(this + *(v2 - 24) + 32) | 1);
  }

  return this;
}

void sub_18D64(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18D50);
  }

  __cxa_rethrow();
}

uint64_t std::istream::sync(std::istream *this)
{
  std::istream::sentry::sentry(&v4, this, 1);
  if (v4 == 1)
  {
    v2 = *(this + *(*this - 24) + 232);
    if (v2)
    {
      if ((*(*v2 + 48))(v2) != -1)
      {
        return 0;
      }

      std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 1);
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_18E78(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18E64);
  }

  __cxa_rethrow();
}

__n128 std::istream::tellg@<Q0>(std::istream *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  result = 0uLL;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v4 = this + *(*this - 24);
  if ((v4[32] & 5) == 0)
  {
    (*(**(v4 + 29) + 32))(v8);
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_18FD8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x18FACLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::istream::seekg(void *a1, __int128 *a2)
{
  v3 = a1 + *(*a1 - 24);
  if ((v3[32] & 5) == 0)
  {
    v4 = *(v3 + 29);
    v5 = a2[1];
    v11 = *a2;
    v12 = v5;
    v6 = a2[3];
    v13 = a2[2];
    v14 = v6;
    v19 = *(a2 + 16);
    v7 = a2[7];
    v17 = a2[6];
    v18 = v7;
    v8 = a2[5];
    v15 = a2[4];
    v16 = v8;
    (*(*v4 + 40))(v10);
    if (v10[0] == -1)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_19164(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x19130);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::istream::seekg(void *a1)
{
  v2 = a1 + *(*a1 - 24);
  if ((v2[32] & 5) == 0)
  {
    (*(**(v2 + 29) + 32))(v4);
    if (v4[0] == -1)
    {
      std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_192B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x19288);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istream::istream(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  this[1] = 0;
  return this;
}

std::istream *std::istream::istream(std::istream *this)
{
  std::ios_base::ios_base((this + 16));
  *(this + 29) = 0;
  *(this + 120) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *this = off_5D7E0;
  *(this + 1) = 0;
  *(this + 2) = off_5D808;
  return this;
}

void *std::ws<char,std::char_traits<char>>(void *a1)
{
  std::locale::locale(&v8, (a1 + *(*a1 - 24) + 208));
  v2 = std::use_facet<std::ctype<char>>(&v8);
  std::locale::~locale(&v8);
  v3 = *(a1 + *(*a1 - 24) + 232);
  v4 = v3[2];
  if (v4 < v3[3])
  {
    LOBYTE(i) = *v4;
    goto LABEL_3;
  }

  for (i = (*(*v3 + 72))(*(a1 + *(*a1 - 24) + 232)); i != -1; i = std::streambuf::snextc(v3))
  {
LABEL_3:
    v6 = *(v2 + 48);
    if (v6)
    {
      if ((*(v6 + 8 * i) & 0x4000) == 0)
      {
        return a1;
      }
    }

    else if ((i & 0x80) != 0)
    {
      if (!__maskrune(i, 0x4000uLL))
      {
        return a1;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[i] & 0x4000) == 0)
    {
      return a1;
    }
  }

  std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
  return a1;
}

void sub_1957C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale(va);
  _Unwind_Resume(a1);
}

std::istream *std::operator>><char,std::char_traits<char>>(std::istream *a1, _BYTE *a2)
{
  std::istream::sentry::sentry(&v9, a1, 0);
  if (v9 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 232);
    v5 = v4[2];
    if (v5 >= v4[3])
    {
      v8 = (*(*v4 + 80))(v4);
      v6 = v8;
      if (v8 == -1)
      {
        std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 6);
        return a1;
      }
    }

    else
    {
      v6 = *v5;
      v4[2] = v5 + 1;
    }

    *a2 = v6;
  }

  return a1;
}

{
  std::istream::sentry::sentry(&v27, a1, 0);
  if ((v27 & 1) == 0)
  {
    v23 = 0;
    goto LABEL_51;
  }

  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 2) >= 1)
  {
    v5 = *(v4 + 2);
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  std::locale::locale(&v26, v4 + 26);
  v6 = std::use_facet<std::ctype<char>>(&v26);
  std::locale::~locale(&v26);
  v7 = *(a1 + *(*a1 - 24) + 232);
  v8 = v7[2];
  if (v8 >= v7[3])
  {
    v9 = (*(*v7 + 72))(*(a1 + *(*a1 - 24) + 232));
  }

  else
  {
    v9 = *v8;
  }

  if (v5 < 2)
  {
    v10 = 0;
LABEL_44:
    if (v9 != -1)
    {
LABEL_45:
      v23 = 0;
      v24 = 1;
      goto LABEL_47;
    }
  }

  else
  {
    v10 = 0;
    while (v9 != -1)
    {
      v11 = *(v6 + 48);
      if (v11)
      {
        if ((*(v11 + 8 * v9) & 0x4000) != 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v9 & 0x80) != 0)
      {
        if (__maskrune(v9, 0x4000uLL))
        {
          goto LABEL_45;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) != 0)
      {
        goto LABEL_45;
      }

      v12 = v7[2];
      v13 = v5 + ~v10;
      if (v13 >= v7[3] - v12)
      {
        v13 = v7[3] - v12;
      }

      v14 = v13 - 2;
      if (v13 < 2)
      {
        *a2 = v9;
        ++v10;
        v9 = std::streambuf::snextc(v7);
        v20 = 1;
      }

      else
      {
        v15 = (v12 + 1);
        v16 = &v12[v13];
        v17 = *(v6 + 48);
        if (v17)
        {
          v18 = v13 - 1;
          while ((*(v17 + 8 * *v15) & 0x4000) == 0)
          {
            ++v15;
            if (!--v18)
            {
              v15 = v16;
              break;
            }
          }
        }

        else
        {
          while (1)
          {
            v19 = *v15;
            if (v17)
            {
              if ((*(v17 + 8 * v19) & 0x4000) != 0)
              {
                goto LABEL_35;
              }
            }

            else if ((v19 & 0x80) != 0)
            {
              if (__maskrune(v19, 0x4000uLL))
              {
                goto LABEL_35;
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v19] & 0x4000) != 0)
            {
              goto LABEL_35;
            }

            if (!v14)
            {
              break;
            }

            ++v15;
            v17 = *(v6 + 48);
            --v14;
          }

          v15 = v16;
LABEL_35:
          v12 = v7[2];
        }

        v20 = v15 - v12;
        memcpy(a2, v12, v15 - v12);
        v21 = v7[3];
        v22 = (v7[2] + v20);
        v7[2] = v22;
        v10 += v20;
        if (v22 >= v21)
        {
          v9 = (*(*v7 + 72))(v7);
        }

        else
        {
          v9 = *v22;
        }
      }

      a2 += v20;
      if (v10 >= v5 - 1)
      {
        goto LABEL_44;
      }
    }
  }

  v24 = 0;
  v23 = 2;
LABEL_47:
  *a2 = 0;
  *(a1 + *(*a1 - 24) + 16) = 0;
  if (v10)
  {
    if (v24)
    {
      return a1;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 |= 4u;
LABEL_52:
  std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v23);
  return a1;
}

void sub_19668(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x195FCLL);
  }

  __cxa_rethrow();
}

void *std::operator>><char,std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if ((v4[225] & 1) == 0)
  {
    std::ios::widen(a1 + *(*a1 - 24), 32);
    v4[225] = 1;
  }

  v4[224] = a2;
  return a1;
}

void *std::operator>><char,std::char_traits<char>>(void *result, int a2)
{
  *(result + *(*result - 24) + 24) |= a2;
  return result;
}

{
  *(result + *(*result - 24) + 24) &= ~a2;
  return result;
}

{
  *(result + *(*result - 24) + 8) = a2;
  return result;
}

{
  *(result + *(*result - 24) + 16) = a2;
  return result;
}

uint64_t *std::operator>><char,std::char_traits<char>>(uint64_t *result, int a2)
{
  v2 = *result;
  if (a2 == 10)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8 * (a2 == 16);
  }

  if (a2 == 8)
  {
    v4 = 64;
  }

  else
  {
    v4 = v3;
  }

  *(result + *(*result - 24) + 24) = *(result + *(*result - 24) + 24) & 0xFFFFFFB5 | v4;
  return result;
}

uint64_t *std::wistream::basic_istream(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  std::wios::init(a1 + *(*a1 - 24), a3);
  return a1;
}

uint64_t std::wistream::basic_istream(uint64_t a1, uint64_t a2)
{
  v4 = std::ios_base::ios_base((a1 + 16));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *a1 = off_5D840;
  *(a1 + 8) = 0;
  *(a1 + 16) = off_5D868;
  std::wios::init(v4, a2);
  return a1;
}

uint64_t *std::wistream::~wistream(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  *(result + *(v2 - 24)) = a2[1];
  result[1] = 0;
  return result;
}

void *std::wistream::~wistream(void *a1)
{
  *a1 = off_5D840;
  a1[1] = 0;
  a1[2] = off_5D868;
  std::ios_base::~ios_base((a1 + 2));
  return a1;
}

void virtual thunk tostd::wistream::~wistream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5D840;
  v1[1] = 0;
  v1[2] = off_5D868;
  std::ios_base::~ios_base((v1 + 2));
}

{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_5D840;
  v1[1] = 0;
  v1[2] = off_5D868;
  std::ios_base::~ios_base((v1 + 2));

  operator delete(v1);
}

void std::wistream::~wistream(void *a1)
{
  *a1 = off_5D840;
  a1[1] = 0;
  a1[2] = off_5D868;
  std::ios_base::~ios_base((a1 + 2));

  operator delete(a1);
}

_BYTE *std::wistream::sentry::sentry(_BYTE *a1, uint64_t *a2, char a3)
{
  *a1 = 0;
  v5 = *a2;
  v6 = a2 + *(*a2 - 24);
  if (*(v6 + 8))
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 27);
  if (v8)
  {
    std::wostream::flush(v8);
    v5 = *a2;
  }

  if ((a3 & 1) != 0 || (v9 = a2 + *(v5 - 24), (v9[25] & 0x10) == 0))
  {
LABEL_6:
    v10 = 4;
    v11 = 1;
  }

  else
  {
    v14 = *(v9 + 29);
    v15 = v14[2];
    if (v15 >= v14[3])
    {
      v16 = (*(*v14 + 72))(v14);
      v5 = *a2;
    }

    else
    {
      v16 = *v15;
    }

    v17 = *(a2 + *(v5 - 24) + 240);
    if (!v17)
    {
      std::__throw_bad_cast();
    }

    if (v16 == -1)
    {
      v12 = a2 + *(v5 - 24);
      v13 = *(v12 + 32);
      v10 = 6;
LABEL_18:
      std::wios::clear(v12, v13 | v10);
      return a1;
    }

    while (1)
    {
      v18 = (*(*v17 + 16))(v17, 0x4000);
      if (!v18)
      {
        break;
      }

      if (std::wstreambuf::snextc(v14) == -1)
      {
        v10 = 6;
        goto LABEL_21;
      }
    }

    v10 = 4;
LABEL_21:
    v11 = v18 ^ 1;
    v5 = *a2;
  }

  v12 = a2 + *(v5 - 24);
  v13 = *(v12 + 32);
  if (!v11 || v13)
  {
    goto LABEL_18;
  }

  *a1 = 1;
  return a1;
}

char *std::wistream::operator>>(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

uint64_t *std::wistream::_M_extract<BOOL>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 16))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::operator>>(uint64_t *a1, _WORD *a2)
{
  std::wistream::_M_extract<long>(a1, &v7);
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 32);
  if ((v5 & 5) == 0)
  {
    if (v7 == v7)
    {
      *a2 = v7;
    }

    else
    {
      std::wios::clear(v4, v5 | 4);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<long>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 24))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<unsigned short>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 32))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::operator>>(uint64_t *a1, _DWORD *a2)
{
  std::wistream::_M_extract<long>(a1, &v7);
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 32);
  if ((v5 & 5) == 0)
  {
    if (v7 == v7)
    {
      *a2 = v7;
    }

    else
    {
      std::wios::clear(v4, v5 | 4);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<unsigned int>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 40))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<unsigned long>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 48))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<long long>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 56))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 64))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<float>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 72))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<double>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 80))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<long double>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 88))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::_M_extract<void *>(uint64_t *a1, uint64_t a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v7 = 0;
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 32);
    if (!v5)
    {
      std::__throw_bad_cast();
    }

    (*(*v5 + 96))(v5, *(v4 + 29), 0xFFFFFFFFLL, 0, 0xFFFFFFFFLL, v4, &v7, a2);
    if (v7)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    }
  }

  return a1;
}

uint64_t *std::wistream::operator>>(uint64_t *a1, void *a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (a2 && (v8 & 1) != 0)
  {
    v4 = std::__copy_streambufs_eof<wchar_t,std::char_traits<wchar_t>>(*(a1 + *(*a1 - 24) + 232), a2, &v7);
    if (v7)
    {
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 6;
      }

      goto LABEL_11;
    }

    if (!v4)
    {
LABEL_10:
      v5 = 4;
LABEL_11:
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v5);
    }
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  return a1;
}

void sub_1AD5C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 4u;
  if ((v2[28] & 4) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1AD48);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::get(uint64_t *a1)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v6, a1, 1);
  if (v6 == 1)
  {
    v2 = *(a1 + *(*a1 - 24) + 232);
    v3 = v2[2];
    if (v3 >= v2[3])
    {
      result = (*(*v2 + 80))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      result = *v3;
      v2[2] = v3 + 1;
    }

    if (result != -1)
    {
      a1[1] = 1;
      return result;
    }

    if (a1[1])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    goto LABEL_12;
  }

  if (!a1[1])
  {
    v5 = 4;
LABEL_12:
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v5);
  }

  return 0xFFFFFFFFLL;
}

uint64_t *std::wistream::get(uint64_t *a1, _DWORD *a2)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v9, a1, 1);
  if (v9 != 1)
  {
    if (a1[1])
    {
      return a1;
    }

    v7 = 4;
LABEL_12:
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v7);
    return a1;
  }

  v4 = *(a1 + *(*a1 - 24) + 232);
  v5 = v4[2];
  if (v5 >= v4[3])
  {
    v6 = (*(*v4 + 80))(v4);
  }

  else
  {
    v6 = *v5;
    v4[2] = v5 + 1;
  }

  if (v6 == -1)
  {
    if (a1[1])
    {
      v7 = 2;
    }

    else
    {
      v7 = 6;
    }

    goto LABEL_12;
  }

  a1[1] = 1;
  *a2 = v6;
  return a1;
}

uint64_t *std::wistream::get(uint64_t *a1, _DWORD *a2, uint64_t a3, int a4)
{
  a1[1] = 0;
  v8 = 1;
  std::wistream::sentry::sentry(&v15, a1, 1);
  if (v15 == 1)
  {
    v9 = *(a1 + *(*a1 - 24) + 232);
    v10 = v9[2];
    if (v10 >= v9[3])
    {
      v11 = (*(*v9 + 72))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      v11 = *v10;
    }

    while (1)
    {
      v12 = a1[1] + 1;
      if (v12 >= a3)
      {
        break;
      }

      if (v11 == -1)
      {
        goto LABEL_11;
      }

      if (v11 == a4)
      {
        goto LABEL_10;
      }

      *a2++ = v11;
      a1[1] = v12;
      v11 = std::wstreambuf::snextc(v9);
    }

    if (v11 != -1)
    {
LABEL_10:
      v13 = 0;
      v8 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  if (a1[1])
  {
    if (v8)
    {
      return a1;
    }
  }

  else
  {
    v13 |= 4u;
  }

  std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v13);
  return a1;
}

void sub_1B1C8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B128);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::get(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v6 = std::wios::widen(a1 + *(*a1 - 24));

  return std::wistream::get(a1, a2, a3, v6);
}

uint64_t *std::wistream::get(uint64_t *a1, void *a2, int a3)
{
  a1[1] = 0;
  v6 = 1;
  std::wistream::sentry::sentry(&v13, a1, 1);
  if (v13 == 1)
  {
    v7 = *(a1 + *(*a1 - 24) + 232);
    v8 = v7[2];
    if (v8 >= v7[3])
    {
      v9 = (*(*v7 + 72))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      v9 = *v8;
    }

    while (1)
    {
      v6 = v9 != -1;
      if (v9 == -1)
      {
        break;
      }

      if (v9 == a3)
      {
        goto LABEL_10;
      }

      v10 = a2[5];
      if (v10 >= a2[6])
      {
        if ((*(*a2 + 104))(a2) == -1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *v10 = v9;
        a2[5] = v10 + 1;
      }

      ++a1[1];
      v9 = std::wstreambuf::snextc(v7);
    }

    v11 = 2;
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  if (a1[1])
  {
    if (v6)
    {
      return a1;
    }
  }

  else
  {
    v11 |= 4u;
  }

  std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v11);
  return a1;
}

void sub_1B40C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B388);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::get(uint64_t *a1, void *a2)
{
  v4 = std::wios::widen(a1 + *(*a1 - 24));

  return std::wistream::get(a1, a2, v4);
}

void *std::wistream::getline(void *a1, __int32 *a2, uint64_t a3)
{
  v6 = std::wios::widen(a1 + *(*a1 - 24));

  return std::wistream::getline(a1, a2, a3, v6);
}

uint64_t *std::wistream::ignore(uint64_t *a1)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v6, a1, 1);
  if (v6 == 1)
  {
    v2 = *(a1 + *(*a1 - 24) + 232);
    v3 = v2[2];
    if (v3 >= v2[3])
    {
      v4 = (*(*v2 + 80))(v2);
    }

    else
    {
      v4 = *v3;
      v2[2] = v3 + 1;
    }

    if (v4 == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
    }

    else
    {
      a1[1] = 1;
    }
  }

  return a1;
}

void sub_1B620(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B5E0);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::peek(uint64_t *a1)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v5, a1, 1);
  if (v5 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + *(*a1 - 24) + 232);
  v3 = v2[2];
  if (v3 >= v2[3])
  {
    result = (*(*v2 + 72))(v2);
  }

  else
  {
    result = *v3;
  }

  if (result == -1)
  {
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1B740(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B704);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::read(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v9, a1, 1);
  if (v9 == 1)
  {
    v6 = *(a1 + *(*a1 - 24) + 232);
    v7 = (*(*v6 + 64))(v6, a2, a3);
    a1[1] = v7;
    if (v7 != a3)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 6);
    }
  }

  return a1;
}

void sub_1B868(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B850);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::readsome(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v11, a1, 1);
  if (v11 == 1)
  {
    v6 = *(a1 + *(*a1 - 24) + 232);
    v7 = v6[3] - v6[2];
    if (v7)
    {
      v8 = v7 >> 2;
    }

    else
    {
      v8 = (*(*v6 + 56))(v6);
    }

    if (v8 < 1)
    {
      if (v8 == -1)
      {
        std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
      }
    }

    else
    {
      if (v8 >= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = v8;
      }

      a1[1] = (*(**(a1 + *(*a1 - 24) + 232) + 64))(*(a1 + *(*a1 - 24) + 232), a2, v9);
    }
  }

  return a1[1];
}

void sub_1B9F8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B9E0);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::putback(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v10, a1, 1);
  if (v10 == 1)
  {
    v4 = *a1;
    v5 = *(a1 + *(*a1 - 24) + 232);
    if (!v5)
    {
LABEL_8:
      std::wios::clear(a1 + *(v4 - 24), *(a1 + *(v4 - 24) + 32) | 1);
      return a1;
    }

    v6 = v5[2];
    if (v5[1] < v6 && (v8 = *(v6 - 4), v7 = v6 - 4, v8 == a2))
    {
      v5[2] = v7;
    }

    else
    {
      LODWORD(a2) = (*(*v5 + 88))(v5, a2);
    }

    if (a2 == -1)
    {
      v4 = *a1;
      goto LABEL_8;
    }
  }

  return a1;
}

void sub_1BB3C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1BAF8);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::unget(uint64_t *a1)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v7, a1, 1);
  if (v7 == 1)
  {
    v2 = *a1;
    v3 = *(a1 + *(*a1 - 24) + 232);
    if (!v3)
    {
LABEL_7:
      std::wios::clear(a1 + *(v2 - 24), *(a1 + *(v2 - 24) + 32) | 1);
      return a1;
    }

    v4 = v3[2];
    if (v3[1] >= v4)
    {
      v5 = (*(*v3 + 88))(v3, 0xFFFFFFFFLL);
    }

    else
    {
      v5 = *(v4 - 4);
      v3[2] = v4 - 4;
    }

    if (v5 == -1)
    {
      v2 = *a1;
      goto LABEL_7;
    }
  }

  return a1;
}

void sub_1BC74(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1BC30);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::sync(uint64_t *a1)
{
  std::wistream::sentry::sentry(&v4, a1, 1);
  if (v4 == 1)
  {
    v2 = *(a1 + *(*a1 - 24) + 232);
    if (v2)
    {
      if ((*(*v2 + 48))(v2) != -1)
      {
        return 0;
      }

      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1BD88(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1BD74);
  }

  __cxa_rethrow();
}

__n128 std::wistream::tellg@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  result = 0uLL;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v4 = a1 + *(*a1 - 24);
  if ((v4[32] & 5) == 0)
  {
    (*(**(v4 + 29) + 32))(v8);
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_1BEE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1BEBCLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::wistream::seekg(void *a1, __int128 *a2)
{
  v3 = a1 + *(*a1 - 24);
  if ((v3[32] & 5) == 0)
  {
    v4 = *(v3 + 29);
    v5 = a2[1];
    v11 = *a2;
    v12 = v5;
    v6 = a2[3];
    v13 = a2[2];
    v14 = v6;
    v19 = *(a2 + 16);
    v7 = a2[7];
    v17 = a2[6];
    v18 = v7;
    v8 = a2[5];
    v15 = a2[4];
    v16 = v8;
    (*(*v4 + 40))(v10);
    if (v10[0] == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_1C074(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1C040);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void *std::wistream::seekg(void *a1)
{
  v2 = a1 + *(*a1 - 24);
  if ((v2[32] & 5) == 0)
  {
    (*(**(v2 + 29) + 32))(v4);
    if (v4[0] == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_1C1C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = v2 + *(*v2 - 24);
    *(v3 + 8) |= 1u;
    if ((v3[28] & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1C198);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::wistream::basic_istream(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  *(result + *(v2 - 24)) = a2[1];
  result[1] = 0;
  return result;
}

uint64_t std::wistream::basic_istream(uint64_t a1)
{
  std::ios_base::ios_base((a1 + 16));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *a1 = off_5D840;
  *(a1 + 8) = 0;
  *(a1 + 16) = off_5D868;
  return a1;
}

void *std::ws<wchar_t,std::char_traits<wchar_t>>(void *a1)
{
  std::locale::locale(&v7, (a1 + *(*a1 - 24) + 208));
  v2 = std::use_facet<std::ctype<wchar_t>>(&v7);
  std::locale::~locale(&v7);
  v3 = *(a1 + *(*a1 - 24) + 232);
  v4 = v3[2];
  if (v4 >= v3[3])
  {
    v5 = (*(*v3 + 72))(*(a1 + *(*a1 - 24) + 232));
  }

  else
  {
    v5 = *v4;
  }

  if (v5 == -1)
  {
LABEL_6:
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
  }

  else
  {
    while ((*(*v2 + 16))(v2, 0x4000))
    {
      if (std::wstreambuf::snextc(v3) == -1)
      {
        goto LABEL_6;
      }
    }
  }

  return a1;
}

void sub_1C480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale(va);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>><wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, _DWORD *a2)
{
  std::wistream::sentry::sentry(&v8, a1, 0);
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 232);
    v5 = v4[2];
    if (v5 >= v4[3])
    {
      v6 = (*(*v4 + 80))(v4);
    }

    else
    {
      v6 = *v5;
      v4[2] = v5 + 1;
    }

    if (v6 == -1)
    {
      std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 6);
    }

    else
    {
      *a2 = v6;
    }
  }

  return a1;
}

{
  std::wistream::sentry::sentry(&v16, a1, 0);
  if ((v16 & 1) == 0)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  std::locale::locale(&v15, v4 + 26);
  v6 = std::use_facet<std::ctype<wchar_t>>(&v15);
  std::locale::~locale(&v15);
  v7 = *(a1 + *(*a1 - 24) + 232);
  v8 = v7[2];
  if (v8 >= v7[3])
  {
    v9 = (*(*v7 + 72))(*(a1 + *(*a1 - 24) + 232));
  }

  else
  {
    v9 = *v8;
  }

  if (v5 >= 1)
  {
    v10 = v5 - 1;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFELL;
  }

  if (v10 < 1)
  {
    v11 = 0;
LABEL_15:
    if (v9 != -1)
    {
LABEL_16:
      v12 = 0;
      v13 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    while (v9 != -1)
    {
      if ((*(*v6 + 16))(v6, 0x4000, v9))
      {
        goto LABEL_16;
      }

      *a2 = v9;
      v9 = std::wstreambuf::snextc(v7);
      ++v11;
      ++a2;
      if (v10 == v11)
      {
        v11 = v10;
        goto LABEL_15;
      }
    }
  }

  v13 = 0;
  v12 = 2;
LABEL_18:
  *a2 = 0;
  *(a1 + *(*a1 - 24) + 16) = 0;
  if (v11)
  {
    if (v13)
    {
      return a1;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 |= 4u;
LABEL_23:
  std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v12);
  return a1;
}

void sub_1C570(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C530);
  }

  __cxa_rethrow();
}

void *std::operator>><wchar_t,std::char_traits<wchar_t>>(void *a1, int a2)
{
  v4 = a1 + *(*a1 - 24);
  if ((v4[228] & 1) == 0)
  {
    std::wios::widen(a1 + *(*a1 - 24));
    v4[228] = 1;
  }

  *(v4 + 56) = a2;
  return a1;
}

void *std::operator>><wchar_t,std::char_traits<wchar_t>>(void *result, int a2)
{
  *(result + *(*result - 24) + 24) |= a2;
  return result;
}

{
  *(result + *(*result - 24) + 24) &= ~a2;
  return result;
}

{
  *(result + *(*result - 24) + 8) = a2;
  return result;
}

{
  *(result + *(*result - 24) + 16) = a2;
  return result;
}

uint64_t *std::operator>><wchar_t,std::char_traits<wchar_t>>(uint64_t *result, int a2)
{
  v2 = *result;
  if (a2 == 10)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8 * (a2 == 16);
  }

  if (a2 == 8)
  {
    v4 = 64;
  }

  else
  {
    v4 = v3;
  }

  *(result + *(*result - 24) + 24) = *(result + *(*result - 24) + 24) & 0xFFFFFFB5 | v4;
  return result;
}

std::istream *std::istream::getline(std::istream *this, char *a2, uint64_t a3, int a4)
{
  *(this + 1) = 0;
  v8 = 1;
  std::istream::sentry::sentry(&v22, this, 1);
  if (v22 == 1)
  {
    v9 = *(this + *(*this - 24) + 232);
    v10 = v9[2];
    if (v10 >= v9[3])
    {
      v11 = (*(*v9 + 72))(*(this + *(*this - 24) + 232));
    }

    else
    {
      v11 = *v10;
    }

    while (1)
    {
      v12 = *(this + 1);
      if (v12 + 1 >= a3)
      {
        break;
      }

      if (v11 == -1)
      {
        goto LABEL_23;
      }

      if (v11 == a4)
      {
        goto LABEL_20;
      }

      v13 = v9[2];
      v14 = ~v12 + a3;
      if (v14 >= v9[3] - v13)
      {
        v15 = v9[3] - v13;
      }

      else
      {
        v15 = v14;
      }

      if (v15 < 2)
      {
        *a2++ = v11;
        ++*(this + 1);
        v11 = std::streambuf::snextc(v9);
      }

      else
      {
        v16 = memchr(v9[2], a4, v15);
        if (v16)
        {
          v15 = v16 - v13;
        }

        memcpy(a2, v13, v15);
        a2 += v15;
        v17 = v9[3];
        v18 = (v9[2] + v15);
        v9[2] = v18;
        *(this + 1) += v15;
        if (v18 >= v17)
        {
          v11 = (*(*v9 + 72))(v9);
        }

        else
        {
          v11 = *v18;
        }
      }
    }

    if (v11 == -1)
    {
LABEL_23:
      v8 = 0;
      v19 = 2;
      goto LABEL_25;
    }

    if (v11 != a4)
    {
      v8 = 0;
      v19 = 4;
      goto LABEL_25;
    }

LABEL_20:
    *(this + 1) = v12 + 1;
    v20 = v9[2];
    if (v20 >= v9[3])
    {
      (*(*v9 + 80))(v9);
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v9[2] = v20 + 1;
    }

    v8 = 1;
  }

  else
  {
    v19 = 0;
  }

LABEL_25:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  if (*(this + 1))
  {
    if (v8)
    {
      return this;
    }
  }

  else
  {
    v19 |= 4u;
  }

  std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | v19);
  return this;
}

void sub_1CC18(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1CC10);
  }

  __cxa_rethrow();
}

std::istream *std::istream::ignore(std::istream *this, uint64_t a2, int a3)
{
  if (a3 == -1)
  {

    return std::istream::ignore(this, a2);
  }

  else
  {
    *(this + 1) = 0;
    std::istream::sentry::sentry(&v19, this, 1);
    if (a2 >= 1 && (v19 & 1) != 0)
    {
      v6 = *(this + *(*this - 24) + 232);
      v7 = v6[2];
      if (v7 >= v6[3])
      {
        v8 = (*(*v6 + 72))(*(this + *(*this - 24) + 232));
      }

      else
      {
        v8 = *v7;
      }

      v9 = 0;
      while (1)
      {
        for (i = *(this + 1); i >= a2; i = 0x8000000000000000)
        {
          if (a2 != 0x7FFFFFFFFFFFFFFFLL || v8 == -1 || v8 == a3)
          {
            goto LABEL_30;
          }

          *(this + 1) = 0x8000000000000000;
          v9 = 1;
        }

        if (v8 == -1)
        {
          break;
        }

        if (v8 == a3)
        {
          v8 = a3;
          break;
        }

        v11 = v6[2];
        v12 = v6[3];
        if (a2 - i >= (v12 - v11))
        {
          v13 = v12 - v11;
        }

        else
        {
          v13 = a2 - i;
        }

        if (v13 < 2)
        {
          *(this + 1) = i + 1;
          v8 = std::streambuf::snextc(v6);
        }

        else
        {
          v14 = memchr(v6[2], a3, v13);
          if (v14)
          {
            v15 = &v14[-v11];
          }

          else
          {
            v15 = v13;
          }

          v16 = (v11 + v15);
          v6[2] = v16;
          *(this + 1) = &v15[i];
          if (v16 >= v12)
          {
            v8 = (*(*v6 + 72))(v6);
          }

          else
          {
            v8 = *v16;
          }
        }
      }

LABEL_30:
      if (v9)
      {
        i = 0x7FFFFFFFFFFFFFFFLL;
        *(this + 1) = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8 == -1)
      {
        std::ios::clear(this + *(*this - 24), *(this + *(*this - 24) + 32) | 2);
      }

      else if (v8 == a3)
      {
        if (i != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(this + 1) = i + 1;
        }

        v18 = v6[2];
        if (v18 >= v6[3])
        {
          (*(*v6 + 80))(v6);
        }

        else
        {
          v6[2] = v18 + 1;
        }
      }
    }

    return this;
  }
}

void sub_1CF08(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1CE8CLL);
  }

  __cxa_rethrow();
}

std::istream *std::operator>><char>(std::istream *a1, int **a2)
{
  std::istream::sentry::sentry(&v28, a1, 0);
  if (v28 != 1)
  {
    v24 = 0;
    goto LABEL_50;
  }

  std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 2) <= 0)
  {
    v5 = 0x3FFFFFFFFFFFFFF9;
  }

  else
  {
    v5 = *(v4 + 2);
  }

  std::locale::locale(&v27, v4 + 26);
  v6 = std::use_facet<std::ctype<char>>(&v27);
  std::locale::~locale(&v27);
  v7 = *(a1 + *(*a1 - 24) + 232);
  v8 = v7[2];
  if (v8 >= v7[3])
  {
    v9 = (*(*v7 + 72))(*(a1 + *(*a1 - 24) + 232));
  }

  else
  {
    v9 = *v8;
  }

  v10 = 0;
  while (v9 != -1)
  {
    v11 = *(v6 + 48);
    if (v11)
    {
      if ((*(v11 + 8 * v9) & 0x4000) != 0)
      {
        goto LABEL_43;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      if (__maskrune(v9, 0x4000uLL))
      {
        goto LABEL_43;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) != 0)
    {
      goto LABEL_43;
    }

    v12 = v7[2];
    v13 = v5 - v10;
    if ((v5 - v10) >= v7[3] - v12)
    {
      v13 = v7[3] - v12;
    }

    v14 = v13 - 2;
    if (v13 < 2)
    {
      std::string::push_back(a2, v9);
      ++v10;
      v23 = std::streambuf::snextc(v7);
LABEL_38:
      v9 = v23;
      goto LABEL_39;
    }

    v15 = v12 + 1;
    v16 = &v12[v13];
    v17 = *(v6 + 48);
    if (v17)
    {
      v18 = v13 - 1;
      while ((*(v17 + 8 * *v15) & 0x4000) == 0)
      {
        ++v15;
        if (!--v18)
        {
          v15 = v16;
          break;
        }
      }
    }

    else
    {
      while (1)
      {
        v19 = *v15;
        if (v17)
        {
          if ((*(v17 + 8 * v19) & 0x4000) != 0)
          {
            goto LABEL_34;
          }
        }

        else if ((v19 & 0x80) != 0)
        {
          if (__maskrune(v19, 0x4000uLL))
          {
            goto LABEL_34;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v19] & 0x4000) != 0)
        {
          goto LABEL_34;
        }

        if (!v14)
        {
          break;
        }

        ++v15;
        v17 = *(v6 + 48);
        --v14;
      }

      v15 = v16;
LABEL_34:
      v12 = v7[2];
    }

    v20 = v15 - v12;
    std::string::append(a2, v12, v20);
    v21 = v7[3];
    v22 = (v7[2] + v20);
    v7[2] = v22;
    v10 += v20;
    if (v22 >= v21)
    {
      v23 = (*(*v7 + 72))(v7);
      goto LABEL_38;
    }

    v9 = *v22;
LABEL_39:
    if (v10 >= v5)
    {
      if (v9 != -1)
      {
LABEL_43:
        v24 = 0;
        v25 = 1;
        goto LABEL_45;
      }

      break;
    }
  }

  v25 = 0;
  v24 = 2;
LABEL_45:
  *(a1 + *(*a1 - 24) + 16) = 0;
  if (v10)
  {
    if (v25)
    {
      return a1;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 |= 4u;
LABEL_51:
  std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v24);
  return a1;
}

std::istream *std::getline<char,std::char_traits<char>,std::allocator<char>>(std::istream *a1, int **a2, int a3)
{
  std::istream::sentry::sentry(&v20, a1, 1);
  if (v20 == 1)
  {
    std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
    v6 = *(a1 + *(*a1 - 24) + 232);
    v7 = v6[2];
    if (v7 >= v6[3])
    {
      v8 = (*(*v6 + 72))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      v8 = *v7;
    }

    v9 = 0;
    while (1)
    {
      if (v8 == -1)
      {
        v16 = 0;
        v15 = 2;
        if (!v9)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }

      if (v8 == a3)
      {
        break;
      }

      v10 = v6[2];
      if ((0x3FFFFFFFFFFFFFF9 - v9) >= v6[3] - v10)
      {
        v11 = v6[3] - v10;
      }

      else
      {
        v11 = 0x3FFFFFFFFFFFFFF9 - v9;
      }

      if (v11 < 2)
      {
        std::string::push_back(a2, v8);
        ++v9;
        v8 = std::streambuf::snextc(v6);
      }

      else
      {
        v12 = memchr(v6[2], a3, v11);
        if (v12)
        {
          v11 = v12 - v10;
        }

        std::string::append(a2, v10, v11);
        v13 = v6[3];
        v14 = (v6[2] + v11);
        v6[2] = v14;
        v9 += v11;
        if (v14 >= v13)
        {
          v8 = (*(*v6 + 72))(v6);
        }

        else
        {
          v8 = *v14;
        }
      }

      if (v9 >= 0x3FFFFFFFFFFFFFF9)
      {
        if (v8 == -1)
        {
          v15 = 2;
          goto LABEL_22;
        }

        if (v8 != a3)
        {
          v15 = 4;
          goto LABEL_22;
        }

        break;
      }
    }

    v18 = v9 + 1;
    v19 = v6[2];
    if (v19 >= v6[3])
    {
      (*(*v6 + 80))(v6);
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v6[2] = v19 + 1;
    }

    v16 = 1;
    if (!v18)
    {
      goto LABEL_21;
    }

LABEL_29:
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = 0;
LABEL_21:
    v15 |= 4u;
LABEL_22:
    std::ios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v15);
  }

  return a1;
}

void sub_1D914(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1D90CLL);
  }

  __cxa_rethrow();
}

void *std::wistream::getline(void *a1, __int32 *a2, uint64_t a3, __int32 a4)
{
  a1[1] = 0;
  v8 = 1;
  std::wistream::sentry::sentry(&v23, a1, 1);
  if (v23 == 1)
  {
    v9 = *(a1 + *(*a1 - 24) + 232);
    v10 = v9[2];
    if (v10 < v9[3])
    {
LABEL_3:
      v11 = *v10;
      goto LABEL_4;
    }

    v11 = (*(*v9 + 72))(*(a1 + *(*a1 - 24) + 232));
LABEL_4:
    while (1)
    {
      v12 = a1[1];
      v13 = v12 + 1;
      if (v12 + 1 >= a3)
      {
        break;
      }

      if (v11 == -1)
      {
        goto LABEL_22;
      }

      if (v11 == a4)
      {
        goto LABEL_19;
      }

      v14 = v9[3] - v9[2];
      v15 = ~v12 + a3;
      if (v15 >= v14 >> 2)
      {
        v16 = v14 >> 2;
      }

      else
      {
        v16 = v15;
      }

      if (v16 < 2)
      {
        *a2++ = v11;
        a1[1] = v13;
        v11 = std::wstreambuf::snextc(v9);
      }

      else
      {
        v17 = wmemchr(v9[2], a4, v16);
        v18 = v9[2];
        if (v17)
        {
          v16 = v17 - v18;
        }

        wmemcpy(a2, v18, v16);
        a2 += v16;
        v19 = v9[3];
        v10 = (v9[2] + 4 * v16);
        v9[2] = v10;
        a1[1] += v16;
        if (v10 < v19)
        {
          goto LABEL_3;
        }

        v11 = (*(*v9 + 72))(v9);
      }
    }

    if (v11 == -1)
    {
LABEL_22:
      v8 = 0;
      v20 = 2;
      goto LABEL_24;
    }

    if (v11 != a4)
    {
      v8 = 0;
      v20 = 4;
      goto LABEL_24;
    }

LABEL_19:
    a1[1] = v13;
    v21 = v9[2];
    if (v21 >= v9[3])
    {
      (*(*v9 + 80))(v9);
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v9[2] = v21 + 4;
    }

    v8 = 1;
  }

  else
  {
    v20 = 0;
  }

LABEL_24:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  if (a1[1])
  {
    if (v8)
    {
      return a1;
    }
  }

  else
  {
    v20 |= 4u;
  }

  std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v20);
  return a1;
}

void sub_1DBDC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DBD4);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::ignore(uint64_t *a1, uint64_t a2, __int32 a3)
{
  if (a3 == -1)
  {

    return std::wistream::ignore(a1, a2);
  }

  else
  {
    a1[1] = 0;
    std::wistream::sentry::sentry(&v20, a1, 1);
    if (a2 >= 1 && (v20 & 1) != 0)
    {
      v6 = *(a1 + *(*a1 - 24) + 232);
      v7 = v6[2];
      if (v7 >= v6[3])
      {
        v8 = (*(*v6 + 72))(*(a1 + *(*a1 - 24) + 232));
      }

      else
      {
        v8 = *v7;
      }

      v9 = 0;
      for (i = a1[1]; ; i = a1[1])
      {
        while (i >= a2)
        {
          if (a2 != 0x7FFFFFFFFFFFFFFFLL || v8 == -1 || v8 == a3)
          {
            goto LABEL_29;
          }

          i = 0x8000000000000000;
          a1[1] = 0x8000000000000000;
          v9 = 1;
        }

        if (v8 == -1)
        {
          goto LABEL_29;
        }

        if (v8 == a3)
        {
          break;
        }

        v11 = v6[2];
        if (a2 - i >= (v6[3] - v11) >> 2)
        {
          v12 = (v6[3] - v11) >> 2;
        }

        else
        {
          v12 = a2 - i;
        }

        if (v12 < 2)
        {
          a1[1] = i + 1;
          v8 = std::wstreambuf::snextc(v6);
        }

        else
        {
          v13 = wmemchr(v11, a3, v12);
          v14 = v6[2];
          v15 = v6[3];
          v16 = (v13 - v14) >> 2;
          if (!v13)
          {
            v16 = v12;
          }

          v17 = (v14 + 4 * v16);
          v6[2] = v17;
          a1[1] += v16;
          if (v17 >= v15)
          {
            v8 = (*(*v6 + 72))(v6);
          }

          else
          {
            v8 = *v17;
          }
        }
      }

      v8 = a3;
LABEL_29:
      if (v9)
      {
        i = 0x7FFFFFFFFFFFFFFFLL;
        a1[1] = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8 == -1)
      {
        std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | 2);
      }

      else if (v8 == a3)
      {
        if (i != 0x7FFFFFFFFFFFFFFFLL)
        {
          a1[1] = i + 1;
        }

        v19 = v6[2];
        if (v19 >= v6[3])
        {
          (*(*v6 + 80))(v6);
        }

        else
        {
          v6[2] = v19 + 4;
        }
      }
    }

    return a1;
  }
}

void sub_1DED0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DE58);
  }

  __cxa_rethrow();
}

void *std::getline<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(void *a1, const __int32 **a2, __int32 a3)
{
  std::wistream::sentry::sentry(&v22, a1, 1);
  if (v22 == 1)
  {
    std::wstring::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
    v6 = *(a1 + *(*a1 - 24) + 232);
    v7 = v6[2];
    if (v7 >= v6[3])
    {
      v8 = (*(*v6 + 72))(*(a1 + *(*a1 - 24) + 232));
    }

    else
    {
      v8 = *v7;
    }

    v9 = 0;
    while (1)
    {
      if (v8 == -1)
      {
        v18 = 0;
        v17 = 2;
        if (!v9)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }

      if (v8 == a3)
      {
        break;
      }

      v10 = v6[2];
      v11 = v6[3] - v10;
      if ((0xFFFFFFFFFFFFFFELL - v9) >= v11 >> 2)
      {
        v12 = v11 >> 2;
      }

      else
      {
        v12 = 0xFFFFFFFFFFFFFFELL - v9;
      }

      if (v12 < 2)
      {
        std::wstring::push_back(a2, v8);
        ++v9;
        v8 = std::wstreambuf::snextc(v6);
      }

      else
      {
        v13 = wmemchr(v10, a3, v12);
        v14 = v6[2];
        if (v13)
        {
          v12 = v13 - v14;
        }

        std::wstring::append(a2, v14, v12);
        v15 = v6[3];
        v16 = (v6[2] + 4 * v12);
        v6[2] = v16;
        v9 += v12;
        if (v16 >= v15)
        {
          v8 = (*(*v6 + 72))(v6);
        }

        else
        {
          v8 = *v16;
        }
      }

      if (v9 >= 0xFFFFFFFFFFFFFFELL)
      {
        if (v8 == -1)
        {
          v17 = 2;
          goto LABEL_22;
        }

        if (v8 != a3)
        {
          v17 = 4;
          goto LABEL_22;
        }

        break;
      }
    }

    v20 = v9 + 1;
    v21 = v6[2];
    if (v21 >= v6[3])
    {
      (*(*v6 + 80))(v6);
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v6[2] = v21 + 4;
    }

    v18 = 1;
    if (!v20)
    {
      goto LABEL_21;
    }

LABEL_29:
    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 0;
LABEL_21:
    v17 |= 4u;
LABEL_22:
    std::wios::clear(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 32) | v17);
  }

  return a1;
}

void sub_1E19C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = v1 + *(*v1 - 24);
  *(v2 + 8) |= 1u;
  if ((v2[28] & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1E194);
  }

  __cxa_rethrow();
}

uint64_t std::moneypunct<char,false>::moneypunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5D8E8;
  *(a1 + 16) = 0;
  std::moneypunct<char,false>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<char,false>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5D8E8;
  *(a1 + 16) = a2;
  std::moneypunct<char,false>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<char,false>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5D8E8;
  *(a1 + 16) = 0;
  std::moneypunct<char,false>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<char,true>::moneypunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5D950;
  *(a1 + 16) = 0;
  std::moneypunct<char,true>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<char,true>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5D950;
  *(a1 + 16) = a2;
  std::moneypunct<char,true>::_M_initialize_moneypunct(a1);
  return a1;
}

uint64_t std::moneypunct<char,true>::moneypunct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5D950;
  *(a1 + 16) = 0;
  std::moneypunct<char,true>::_M_initialize_moneypunct(a1);
  return a1;
}

double std::__moneypunct_cache<char,false>::__moneypunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5D9B8;
  *(a1 + 111) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5D9B8;
  *(a1 + 111) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

void std::__moneypunct_cache<char,false>::~__moneypunct_cache(std::locale::facet *this)
{
  *this = off_5D9B8;
  if (*(this + 111) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      operator delete[](v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      operator delete[](v4);
    }

    v5 = *(this + 9);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  std::locale::facet::~facet(this);
}

void std::__moneypunct_cache<char,false>::~__moneypunct_cache(std::locale::facet *a1)
{
  std::__moneypunct_cache<char,false>::~__moneypunct_cache(a1);

  operator delete(v1);
}

uint64_t std::__moneypunct_cache<char,false>::_M_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 111) = 1;
  v4 = std::locale::id::_M_id(&std::moneypunct<char,false>::id);
  if (v4 >= *(*a2 + 16) || (v5 = *(*(*a2 + 8) + 8 * v4)) == 0)
  {
    std::__throw_bad_cast();
  }

  (*(*v5 + 32))(&v25, v5);
  v6 = v25;
  v7 = v25 - 6;
  *(a1 + 24) = *(v25 - 3);
  if (v7 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  v8 = operator new[](*(a1 + 24));
  (*(*v5 + 32))(&v25, v5);
  std::string::copy(&v25, v8, *(a1 + 24), 0);
  v9 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }

  *(a1 + 16) = v8;
  if (*(a1 + 24))
  {
    (*(*v5 + 32))(&v25, v5);
    v10 = v25;
    if ((*(v25 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v25);
      v10 = v25;
    }

    *(a1 + 32) = *v10 > 0;
    if (v10 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v10 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v10 - 6);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 33) = (*(*v5 + 16))(v5);
  *(a1 + 34) = (*(*v5 + 24))(v5);
  *(a1 + 88) = (*(*v5 + 64))(v5);
  (*(*v5 + 40))(&v25, v5);
  v11 = v25;
  v12 = v25 - 6;
  *(a1 + 48) = *(v25 - 3);
  if (v12 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v11 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v12);
  }

  v13 = operator new[](*(a1 + 48));
  (*(*v5 + 40))(&v25, v5);
  std::string::copy(&v25, v13, *(a1 + 48), 0);
  v14 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v14);
  }

  *(a1 + 40) = v13;
  (*(*v5 + 48))(&v25, v5);
  v15 = v25;
  v16 = v25 - 6;
  *(a1 + 64) = *(v25 - 3);
  if (v16 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v15 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v16);
  }

  v17 = operator new[](*(a1 + 64));
  (*(*v5 + 48))(&v25, v5);
  std::string::copy(&v25, v17, *(a1 + 64), 0);
  v18 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v18);
  }

  *(a1 + 56) = v17;
  (*(*v5 + 56))(&v25, v5);
  v19 = v25;
  v20 = v25 - 6;
  *(a1 + 80) = *(v25 - 3);
  if (v20 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v19 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v20);
  }

  v21 = operator new[](*(a1 + 80));
  (*(*v5 + 56))(&v25, v5);
  std::string::copy(&v25, v21, *(a1 + 80), 0);
  v22 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v22);
  }

  *(a1 + 72) = v21;
  *(a1 + 92) = (*(*v5 + 72))(v5);
  *(a1 + 96) = (*(*v5 + 80))(v5);
  v23 = std::use_facet<std::ctype<char>>(a2);
  return std::ctype<char>::widen(v23, std::money_base::_S_atoms[0], (std::money_base::_S_atoms[0] + 11), (a1 + 100));
}

void sub_1F008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::use_facet<std::moneypunct<char,false>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::moneypunct<char,false>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

double std::__moneypunct_cache<char,true>::__moneypunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5D9D8;
  *(a1 + 111) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5D9D8;
  *(a1 + 111) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

void std::__moneypunct_cache<char,true>::~__moneypunct_cache(std::locale::facet *this)
{
  *this = off_5D9D8;
  if (*(this + 111) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      operator delete[](v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      operator delete[](v4);
    }

    v5 = *(this + 9);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  std::locale::facet::~facet(this);
}

void std::__moneypunct_cache<char,true>::~__moneypunct_cache(std::locale::facet *a1)
{
  std::__moneypunct_cache<char,true>::~__moneypunct_cache(a1);

  operator delete(v1);
}

uint64_t std::__moneypunct_cache<char,true>::_M_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 111) = 1;
  v4 = std::locale::id::_M_id(&std::moneypunct<char,true>::id);
  if (v4 >= *(*a2 + 16) || (v5 = *(*(*a2 + 8) + 8 * v4)) == 0)
  {
    std::__throw_bad_cast();
  }

  (*(*v5 + 32))(&v25, v5);
  v6 = v25;
  v7 = v25 - 6;
  *(a1 + 24) = *(v25 - 3);
  if (v7 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v6 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v7);
  }

  v8 = operator new[](*(a1 + 24));
  (*(*v5 + 32))(&v25, v5);
  std::string::copy(&v25, v8, *(a1 + 24), 0);
  v9 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v9);
  }

  *(a1 + 16) = v8;
  if (*(a1 + 24))
  {
    (*(*v5 + 32))(&v25, v5);
    v10 = v25;
    if ((*(v25 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v25);
      v10 = v25;
    }

    *(a1 + 32) = *v10 > 0;
    if (v10 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v10 - 2, 0xFFFFFFFF) <= 0)
    {
      std::string::_Rep::_M_destroy(v10 - 6);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 33) = (*(*v5 + 16))(v5);
  *(a1 + 34) = (*(*v5 + 24))(v5);
  *(a1 + 88) = (*(*v5 + 64))(v5);
  (*(*v5 + 40))(&v25, v5);
  v11 = v25;
  v12 = v25 - 6;
  *(a1 + 48) = *(v25 - 3);
  if (v12 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v11 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v12);
  }

  v13 = operator new[](*(a1 + 48));
  (*(*v5 + 40))(&v25, v5);
  std::string::copy(&v25, v13, *(a1 + 48), 0);
  v14 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v14);
  }

  *(a1 + 40) = v13;
  (*(*v5 + 48))(&v25, v5);
  v15 = v25;
  v16 = v25 - 6;
  *(a1 + 64) = *(v25 - 3);
  if (v16 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v15 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v16);
  }

  v17 = operator new[](*(a1 + 64));
  (*(*v5 + 48))(&v25, v5);
  std::string::copy(&v25, v17, *(a1 + 64), 0);
  v18 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v18);
  }

  *(a1 + 56) = v17;
  (*(*v5 + 56))(&v25, v5);
  v19 = v25;
  v20 = v25 - 6;
  *(a1 + 80) = *(v25 - 3);
  if (v20 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v19 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v20);
  }

  v21 = operator new[](*(a1 + 80));
  (*(*v5 + 56))(&v25, v5);
  std::string::copy(&v25, v21, *(a1 + 80), 0);
  v22 = v25 - 6;
  if (v25 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v25 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v22);
  }

  *(a1 + 72) = v21;
  *(a1 + 92) = (*(*v5 + 72))(v5);
  *(a1 + 96) = (*(*v5 + 80))(v5);
  v23 = std::use_facet<std::ctype<char>>(a2);
  return std::ctype<char>::widen(v23, std::money_base::_S_atoms[0], (std::money_base::_S_atoms[0] + 11), (a1 + 100));
}

void sub_1F780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::use_facet<std::moneypunct<char,true>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::moneypunct<char,true>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::moneypunct_byname<char,false>::moneypunct_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::moneypunct<char,false>::moneypunct(a1, a3) = off_5D9F8;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_create_c_locale(&v8, a2, 0, v5);
      std::moneypunct<char,false>::_M_initialize_moneypunct(a1);
      std::locale::facet::_S_destroy_c_locale(&v8, v6);
    }
  }

  return a1;
}

void std::moneypunct_byname<char,false>::~moneypunct_byname(std::locale::facet *a1)
{
  std::moneypunct<char,false>::~moneypunct(a1);

  operator delete(v1);
}

uint64_t std::moneypunct_byname<char,true>::moneypunct_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::moneypunct<char,true>::moneypunct(a1, a3) = off_5DA60;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_create_c_locale(&v8, a2, 0, v5);
      std::moneypunct<char,true>::_M_initialize_moneypunct(a1);
      std::locale::facet::_S_destroy_c_locale(&v8, v6);
    }
  }

  return a1;
}

void std::moneypunct_byname<char,true>::~moneypunct_byname(std::locale::facet *a1)
{
  std::moneypunct<char,true>::~moneypunct(a1);

  operator delete(v1);
}

uint64_t std::money_get<char,std::istreambuf_iterator<char>>::money_get(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5DAC8;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5DAC8;
  return result;
}

uint64_t std::money_get<char,std::istreambuf_iterator<char>>::get(uint64_t a1)
{
  return (*(*a1 + 16))(a1);
}

{
  return (*(*a1 + 24))(a1);
}

void std::money_get<char,std::istreambuf_iterator<char>>::~money_get(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

std::locale::facet *std::money_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8, double *a9)
{
  v18 = &unk_60620;
  if (a6)
  {
    v10 = std::money_get<char,std::istreambuf_iterator<char>>::_M_extract<true>(a1, a2, a3, a4, a5, a7, a8, &v18);
  }

  else
  {
    v10 = std::money_get<char,std::istreambuf_iterator<char>>::_M_extract<false>(a1, a2, a3, a4, a5, a7, a8, &v18);
  }

  v14 = v10;
  v15 = v18;
  std::locale::facet::_S_get_c_locale(v10, v11, v12, v13);
  std::__convert_to_v<long double>(v15, a9, a8);
  v16 = (v18 - 24);
  if (v18 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v18 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v16);
  }

  return v14;
}

void sub_1FBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::money_get<char,std::istreambuf_iterator<char>>::_M_extract<true>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8)
{
  v81 = a2;
  v82 = a3;
  v80[0] = a4;
  v80[1] = a5;
  v10 = std::use_facet<std::ctype<char>>(a6 + 208);
  v73 = a6;
  v11 = std::__use_cache<std::__moneypunct_cache<char,true>>::operator()(&v79, (a6 + 208));
  v12 = v11;
  if (*(v11 + 64))
  {
    v13 = *(v11 + 80) != 0;
  }

  else
  {
    v13 = 0;
  }

  v78 = &unk_60620;
  if (*(v11 + 32) == 1)
  {
    std::string::reserve(&v78, 0x20uLL);
  }

  v67 = a8;
  v77 = &unk_60620;
  std::string::reserve(&v77, 0x20uLL);
  v14 = 0;
  v74 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(v12 + 96);
  v75 = 0;
  v76 = v17;
  v71 = !v13;
  v72 = 0;
  v18 = HIBYTE(v17) == 3 && v13;
  v69 = HIBYTE(v17) == 4 || v18;
  v20 = v17 == 3;
  v19 = v17 & 0xFF0000;
  v20 = v20 || v19 == 0x10000;
  v21 = v20;
  v68 = v13 | v21;
  do
  {
    v22 = *(&v76 + v14);
    v23 = 1;
    if (v22 <= 1)
    {
      if (!*(&v76 + v14))
      {
LABEL_40:
        if (v14 == 3)
        {
          break;
        }

        while (1)
        {
          v32 = std::istreambuf_iterator<char>::_M_get(&v81);
          if ((v32 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1))
          {
            goto LABEL_106;
          }

          v33 = std::istreambuf_iterator<char>::_M_get(&v81);
          v34 = *(v10 + 48);
          if (v34)
          {
            if ((*(v34 + 8 * v33) & 0x4000) == 0)
            {
              goto LABEL_106;
            }
          }

          else if ((v33 & 0x80) != 0)
          {
            if (!__maskrune(v33, 0x4000uLL))
            {
              goto LABEL_106;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v33] & 0x4000) == 0)
          {
            goto LABEL_106;
          }

          if (v81)
          {
            v35 = v81[2];
            if (v35 >= v81[3])
            {
              (*(*v81 + 80))(v81);
            }

            else
            {
              v81[2] = v35 + 1;
            }

            LODWORD(v82) = -1;
          }
        }
      }

      if (v22 != 1)
      {
        goto LABEL_106;
      }

      v29 = std::istreambuf_iterator<char>::_M_get(&v81);
      if ((v29 == -1) != (std::istreambuf_iterator<char>::_M_get(v80) == -1))
      {
        v30 = std::istreambuf_iterator<char>::_M_get(&v81);
        v31 = *(v10 + 48);
        if (v31)
        {
          if ((*(v31 + 8 * v30) & 0x4000) == 0)
          {
            goto LABEL_39;
          }
        }

        else if ((v30 & 0x80) != 0)
        {
          if (!__maskrune(v30, 0x4000uLL))
          {
            goto LABEL_39;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v30] & 0x4000) == 0)
        {
          goto LABEL_39;
        }

        if (v81)
        {
          v47 = v81[2];
          if (v47 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v47 + 1;
          }

          LODWORD(v82) = -1;
        }

        goto LABEL_40;
      }

LABEL_39:
      v23 = 0;
      goto LABEL_40;
    }

    if (v22 == 2)
    {
      if (v14)
      {
        if ((*(v73 + 24) & 0x200) == 0 && v74 <= 1)
        {
          if (v14 == 2)
          {
            if (!v69)
            {
              goto LABEL_106;
            }
          }

          else if (v14 != 1 || (v68 & 1) == 0)
          {
            goto LABEL_106;
          }
        }
      }

      v42 = 0;
      v43 = *(v12 + 48);
      while (1)
      {
        v44 = std::istreambuf_iterator<char>::_M_get(&v81);
        v45 = (v44 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1) || v42 >= v43;
        if (v45 || *(*(v12 + 40) + v42) != std::istreambuf_iterator<char>::_M_get(&v81))
        {
          break;
        }

        if (v81)
        {
          v46 = v81[2];
          if (v46 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v46 + 1;
          }

          LODWORD(v82) = -1;
        }

        ++v42;
      }

      if (v43 == v42 || !v42 && (*(v73 + 25) & 2) == 0)
      {
        v23 = 1;
        goto LABEL_106;
      }

      goto LABEL_156;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_106;
      }

      while (1)
      {
        v24 = std::istreambuf_iterator<char>::_M_get(&v81);
        if ((v24 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1))
        {
LABEL_77:
          v41 = 1;
          goto LABEL_78;
        }

        v25 = std::istreambuf_iterator<char>::_M_get(&v81);
        v26 = memchr((v12 + 101), v25, 0xAuLL);
        if (v26)
        {
          std::string::push_back(&v77, std::money_base::_S_atoms[0][&v26[-v12 - 100]]);
          v27 = v15 + 1;
        }

        else if ((*(v12 + 33) != v25) | v16 & 1)
        {
          if (*(v12 + 32) != 1 || (*(v12 + 34) != v25) | v16 & 1)
          {
            goto LABEL_77;
          }

          if (!v15)
          {
            v16 = 0;
            v41 = 0;
LABEL_78:
            if (*(v77 - 3))
            {
              v23 = v41;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_106;
          }

          std::string::push_back(&v78, v15);
          v16 = 0;
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v16 = 1;
          v75 = v15;
        }

        v15 = v27;
        if (v81)
        {
          v28 = v81[2];
          if (v28 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v28 + 1;
          }

          LODWORD(v82) = -1;
          v15 = v27;
        }
      }
    }

    if (!*(v12 + 64) || (v37 = std::istreambuf_iterator<char>::_M_get(&v81), (v37 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1)) || **(v12 + 56) != std::istreambuf_iterator<char>::_M_get(&v81))
    {
      if (*(v12 + 80) && (v39 = std::istreambuf_iterator<char>::_M_get(&v81), (v39 == -1) != (std::istreambuf_iterator<char>::_M_get(v80) == -1)) && **(v12 + 72) == std::istreambuf_iterator<char>::_M_get(&v81))
      {
        v74 = *(v12 + 80);
        if (v81)
        {
          v40 = v81[2];
          if (v40 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v40 + 1;
          }

          LODWORD(v82) = -1;
        }
      }

      else if (!*(v12 + 64) || *(v12 + 80))
      {
        v23 = v71;
        goto LABEL_106;
      }

      v72 = 1;
      goto LABEL_106;
    }

    v74 = *(v12 + 64);
    if (v81)
    {
      v38 = v81[2];
      if (v38 >= v81[3])
      {
        (*(*v81 + 80))(v81);
      }

      else
      {
        v81[2] = v38 + 1;
      }

      LODWORD(v82) = -1;
    }

LABEL_106:
    if (v14 > 2)
    {
      break;
    }

    ++v14;
  }

  while ((v23 & 1) != 0);
  if (v74 < 2 || (v23 & 1) == 0)
  {
    if (v23)
    {
      goto LABEL_136;
    }

    goto LABEL_156;
  }

  v48 = 56;
  if (v72)
  {
    v48 = 72;
  }

  v49 = *(v12 + v48);
  for (i = 1; ; ++i)
  {
    v51 = std::istreambuf_iterator<char>::_M_get(&v81);
    v52 = (v51 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1) || i >= v74;
    if (v52 || *(v49 + i) != std::istreambuf_iterator<char>::_M_get(&v81))
    {
      break;
    }

    if (v81)
    {
      v53 = v81[2];
      if (v53 >= v81[3])
      {
        (*(*v81 + 80))(v81);
      }

      else
      {
        v81[2] = v53 + 1;
      }

      LODWORD(v82) = -1;
    }
  }

  if (v74 != i)
  {
    goto LABEL_156;
  }

LABEL_136:
  if (*(v77 - 3) >= 2uLL)
  {
    first_not_of = std::string::find_first_not_of(&v77, 0x30u, 0);
    v55 = first_not_of;
    if (first_not_of)
    {
      if (first_not_of == -1)
      {
        v55 = *(v77 - 3) - 1;
      }

      std::string::erase(&v77, 0, v55);
    }
  }

  if (v72)
  {
    v56 = v77;
    if ((*(v77 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v77);
      v56 = v77;
    }

    if (*v56 != 48)
    {
      if ((*(v56 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v77);
      }

      std::string::_M_replace_aux(&v77, 0, 0, 1uLL, 45);
      *(v77 - 2) = -1;
    }
  }

  if (*(v78 - 3))
  {
    v57 = v75;
    if ((v16 & 1) == 0)
    {
      v57 = v15;
    }

    std::string::push_back(&v78, v57);
    if ((std::__verify_grouping(*(v12 + 16), *(v12 + 24), &v78) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if (v16)
  {
    v58 = *(v12 + 88);
    if (v58 >= 1 && v15 != v58)
    {
LABEL_156:
      *a7 |= 4u;
      goto LABEL_158;
    }
  }

  std::string::swap(v67, &v77);
LABEL_158:
  v59 = std::istreambuf_iterator<char>::_M_get(&v81);
  v60 = std::istreambuf_iterator<char>::_M_get(v80);
  v62 = v59 == -1 || v60 == -1;
  if ((v59 & v60) == 0xFFFFFFFF || !v62)
  {
    *a7 |= 2u;
  }

  v63 = v81;
  v64 = v77 - 6;
  if (v77 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v77 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v64);
  }

  v65 = v78 - 24;
  if (v78 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v78 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v65);
  }

  return v63;
}

void sub_205A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18)
{
  if ((a17 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a17 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a17 - 24));
  }

  if ((a18 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a18 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a18 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::money_get<char,std::istreambuf_iterator<char>>::_M_extract<false>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8)
{
  v81 = a2;
  v82 = a3;
  v80[0] = a4;
  v80[1] = a5;
  v10 = std::use_facet<std::ctype<char>>(a6 + 208);
  v73 = a6;
  v11 = std::__use_cache<std::__moneypunct_cache<char,false>>::operator()(&v79, (a6 + 208));
  v12 = v11;
  if (*(v11 + 64))
  {
    v13 = *(v11 + 80) != 0;
  }

  else
  {
    v13 = 0;
  }

  v78 = &unk_60620;
  if (*(v11 + 32) == 1)
  {
    std::string::reserve(&v78, 0x20uLL);
  }

  v67 = a8;
  v77 = &unk_60620;
  std::string::reserve(&v77, 0x20uLL);
  v14 = 0;
  v74 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(v12 + 96);
  v75 = 0;
  v76 = v17;
  v71 = !v13;
  v72 = 0;
  v18 = HIBYTE(v17) == 3 && v13;
  v69 = HIBYTE(v17) == 4 || v18;
  v20 = v17 == 3;
  v19 = v17 & 0xFF0000;
  v20 = v20 || v19 == 0x10000;
  v21 = v20;
  v68 = v13 | v21;
  do
  {
    v22 = *(&v76 + v14);
    v23 = 1;
    if (v22 <= 1)
    {
      if (!*(&v76 + v14))
      {
LABEL_40:
        if (v14 == 3)
        {
          break;
        }

        while (1)
        {
          v32 = std::istreambuf_iterator<char>::_M_get(&v81);
          if ((v32 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1))
          {
            goto LABEL_106;
          }

          v33 = std::istreambuf_iterator<char>::_M_get(&v81);
          v34 = *(v10 + 48);
          if (v34)
          {
            if ((*(v34 + 8 * v33) & 0x4000) == 0)
            {
              goto LABEL_106;
            }
          }

          else if ((v33 & 0x80) != 0)
          {
            if (!__maskrune(v33, 0x4000uLL))
            {
              goto LABEL_106;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v33] & 0x4000) == 0)
          {
            goto LABEL_106;
          }

          if (v81)
          {
            v35 = v81[2];
            if (v35 >= v81[3])
            {
              (*(*v81 + 80))(v81);
            }

            else
            {
              v81[2] = v35 + 1;
            }

            LODWORD(v82) = -1;
          }
        }
      }

      if (v22 != 1)
      {
        goto LABEL_106;
      }

      v29 = std::istreambuf_iterator<char>::_M_get(&v81);
      if ((v29 == -1) != (std::istreambuf_iterator<char>::_M_get(v80) == -1))
      {
        v30 = std::istreambuf_iterator<char>::_M_get(&v81);
        v31 = *(v10 + 48);
        if (v31)
        {
          if ((*(v31 + 8 * v30) & 0x4000) == 0)
          {
            goto LABEL_39;
          }
        }

        else if ((v30 & 0x80) != 0)
        {
          if (!__maskrune(v30, 0x4000uLL))
          {
            goto LABEL_39;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v30] & 0x4000) == 0)
        {
          goto LABEL_39;
        }

        if (v81)
        {
          v47 = v81[2];
          if (v47 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v47 + 1;
          }

          LODWORD(v82) = -1;
        }

        goto LABEL_40;
      }

LABEL_39:
      v23 = 0;
      goto LABEL_40;
    }

    if (v22 == 2)
    {
      if (v14)
      {
        if ((*(v73 + 24) & 0x200) == 0 && v74 <= 1)
        {
          if (v14 == 2)
          {
            if (!v69)
            {
              goto LABEL_106;
            }
          }

          else if (v14 != 1 || (v68 & 1) == 0)
          {
            goto LABEL_106;
          }
        }
      }

      v42 = 0;
      v43 = *(v12 + 48);
      while (1)
      {
        v44 = std::istreambuf_iterator<char>::_M_get(&v81);
        v45 = (v44 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1) || v42 >= v43;
        if (v45 || *(*(v12 + 40) + v42) != std::istreambuf_iterator<char>::_M_get(&v81))
        {
          break;
        }

        if (v81)
        {
          v46 = v81[2];
          if (v46 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v46 + 1;
          }

          LODWORD(v82) = -1;
        }

        ++v42;
      }

      if (v43 == v42 || !v42 && (*(v73 + 25) & 2) == 0)
      {
        v23 = 1;
        goto LABEL_106;
      }

      goto LABEL_156;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_106;
      }

      while (1)
      {
        v24 = std::istreambuf_iterator<char>::_M_get(&v81);
        if ((v24 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1))
        {
LABEL_77:
          v41 = 1;
          goto LABEL_78;
        }

        v25 = std::istreambuf_iterator<char>::_M_get(&v81);
        v26 = memchr((v12 + 101), v25, 0xAuLL);
        if (v26)
        {
          std::string::push_back(&v77, std::money_base::_S_atoms[0][&v26[-v12 - 100]]);
          v27 = v15 + 1;
        }

        else if ((*(v12 + 33) != v25) | v16 & 1)
        {
          if (*(v12 + 32) != 1 || (*(v12 + 34) != v25) | v16 & 1)
          {
            goto LABEL_77;
          }

          if (!v15)
          {
            v16 = 0;
            v41 = 0;
LABEL_78:
            if (*(v77 - 3))
            {
              v23 = v41;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_106;
          }

          std::string::push_back(&v78, v15);
          v16 = 0;
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v16 = 1;
          v75 = v15;
        }

        v15 = v27;
        if (v81)
        {
          v28 = v81[2];
          if (v28 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v28 + 1;
          }

          LODWORD(v82) = -1;
          v15 = v27;
        }
      }
    }

    if (!*(v12 + 64) || (v37 = std::istreambuf_iterator<char>::_M_get(&v81), (v37 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1)) || **(v12 + 56) != std::istreambuf_iterator<char>::_M_get(&v81))
    {
      if (*(v12 + 80) && (v39 = std::istreambuf_iterator<char>::_M_get(&v81), (v39 == -1) != (std::istreambuf_iterator<char>::_M_get(v80) == -1)) && **(v12 + 72) == std::istreambuf_iterator<char>::_M_get(&v81))
      {
        v74 = *(v12 + 80);
        if (v81)
        {
          v40 = v81[2];
          if (v40 >= v81[3])
          {
            (*(*v81 + 80))(v81);
          }

          else
          {
            v81[2] = v40 + 1;
          }

          LODWORD(v82) = -1;
        }
      }

      else if (!*(v12 + 64) || *(v12 + 80))
      {
        v23 = v71;
        goto LABEL_106;
      }

      v72 = 1;
      goto LABEL_106;
    }

    v74 = *(v12 + 64);
    if (v81)
    {
      v38 = v81[2];
      if (v38 >= v81[3])
      {
        (*(*v81 + 80))(v81);
      }

      else
      {
        v81[2] = v38 + 1;
      }

      LODWORD(v82) = -1;
    }

LABEL_106:
    if (v14 > 2)
    {
      break;
    }

    ++v14;
  }

  while ((v23 & 1) != 0);
  if (v74 < 2 || (v23 & 1) == 0)
  {
    if (v23)
    {
      goto LABEL_136;
    }

    goto LABEL_156;
  }

  v48 = 56;
  if (v72)
  {
    v48 = 72;
  }

  v49 = *(v12 + v48);
  for (i = 1; ; ++i)
  {
    v51 = std::istreambuf_iterator<char>::_M_get(&v81);
    v52 = (v51 == -1) == (std::istreambuf_iterator<char>::_M_get(v80) == -1) || i >= v74;
    if (v52 || *(v49 + i) != std::istreambuf_iterator<char>::_M_get(&v81))
    {
      break;
    }

    if (v81)
    {
      v53 = v81[2];
      if (v53 >= v81[3])
      {
        (*(*v81 + 80))(v81);
      }

      else
      {
        v81[2] = v53 + 1;
      }

      LODWORD(v82) = -1;
    }
  }

  if (v74 != i)
  {
    goto LABEL_156;
  }

LABEL_136:
  if (*(v77 - 3) >= 2uLL)
  {
    first_not_of = std::string::find_first_not_of(&v77, 0x30u, 0);
    v55 = first_not_of;
    if (first_not_of)
    {
      if (first_not_of == -1)
      {
        v55 = *(v77 - 3) - 1;
      }

      std::string::erase(&v77, 0, v55);
    }
  }

  if (v72)
  {
    v56 = v77;
    if ((*(v77 - 2) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(&v77);
      v56 = v77;
    }

    if (*v56 != 48)
    {
      if ((*(v56 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v77);
      }

      std::string::_M_replace_aux(&v77, 0, 0, 1uLL, 45);
      *(v77 - 2) = -1;
    }
  }

  if (*(v78 - 3))
  {
    v57 = v75;
    if ((v16 & 1) == 0)
    {
      v57 = v15;
    }

    std::string::push_back(&v78, v57);
    if ((std::__verify_grouping(*(v12 + 16), *(v12 + 24), &v78) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if (v16)
  {
    v58 = *(v12 + 88);
    if (v58 >= 1 && v15 != v58)
    {
LABEL_156:
      *a7 |= 4u;
      goto LABEL_158;
    }
  }

  std::string::swap(v67, &v77);
LABEL_158:
  v59 = std::istreambuf_iterator<char>::_M_get(&v81);
  v60 = std::istreambuf_iterator<char>::_M_get(v80);
  v62 = v59 == -1 || v60 == -1;
  if ((v59 & v60) == 0xFFFFFFFF || !v62)
  {
    *a7 |= 2u;
  }

  v63 = v81;
  v64 = v77 - 6;
  if (v77 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v77 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v64);
  }

  v65 = v78 - 24;
  if (v78 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v78 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v65);
  }

  return v63;
}

void sub_20FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18)
{
  if ((a17 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a17 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a17 - 24));
  }

  if ((a18 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a18 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a18 - 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::money_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8, std::string *a9)
{
  v17 = std::use_facet<std::ctype<char>>(a7 + 208);
  __src = &unk_60620;
  if (a6)
  {
    v18 = std::money_get<char,std::istreambuf_iterator<char>>::_M_extract<true>(a1, a2, a3, a4, a5, a7, a8, &__src);
  }

  else
  {
    v18 = std::money_get<char,std::istreambuf_iterator<char>>::_M_extract<false>(a1, a2, a3, a4, a5, a7, a8, &__src);
  }

  v19 = v18;
  v20 = __src;
  v21 = *(__src - 3);
  if (v21)
  {
    std::string::resize(a9, *(__src - 3), 0);
    v22 = __src;
    v23 = *a9;
    if ((*(*a9 - 8) & 0x80000000) == 0)
    {
      std::string::_M_leak_hard(a9);
      v23 = *a9;
    }

    std::ctype<char>::widen(v17, v22, v22 + v21, v23);
    v20 = __src;
  }

  if (v20 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v20 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v20 - 6);
  }

  return v19;
}

void sub_211C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (a9 - 24 != v13 && atomic_fetch_add((a9 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a9 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::money_put(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5DAF8;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5DAF8;
  return result;
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::put(uint64_t a1)
{
  return (*(*a1 + 16))(a1);
}

{
  return (*(*a1 + 24))(a1);
}

void std::money_put<char,std::ostreambuf_iterator<char>>::~money_put(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6, double a7)
{
  v14 = std::locale::locale(&v36, (a5 + 208));
  v15 = std::use_facet<std::ctype<char>>(v14);
  v16 = off_5C2F0();
  v17 = v34;
  memset(v34, 0, sizeof(v34));
  c_locale = std::locale::facet::_S_get_c_locale(v16, v18, v19, v20);
  v21 = std::__convert_from_v(&c_locale, v34, 64, "%.*Lf", 0, a7);
  if (v21 >= 64)
  {
    v22 = (v21 + 1);
    off_5C2F0();
    v17 = &v34[-((v22 + 15) & 0x1FFFFFFF0)];
    bzero(v17, v22);
    c_locale = std::locale::facet::_S_get_c_locale(v23, v24, v25, v26);
    v21 = std::__convert_from_v(&c_locale, v17, v22, "%.*Lf", 0, a7);
  }

  v27 = v21;
  v28 = std::string::string(&c_locale, v21, 0);
  v29 = c_locale;
  if ((*(c_locale - 2) & 0x80000000) == 0)
  {
    std::string::_M_leak_hard(v28);
    v29 = c_locale;
  }

  std::ctype<char>::widen(v15, v17, &v17[v27], v29);
  if (a4)
  {
    v30 = std::money_put<char,std::ostreambuf_iterator<char>>::_M_insert<true>(a1, a2, a3, a5, a6, &c_locale);
  }

  else
  {
    v30 = std::money_put<char,std::ostreambuf_iterator<char>>::_M_insert<false>(a1, a2, a3, a5, a6, &c_locale);
  }

  v31 = v30;
  v32 = c_locale - 6;
  if (c_locale - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(c_locale - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v32);
  }

  std::locale::~locale(&v36);
  return v31;
}

uint64_t std::__convert_from_v(int *const *a1, char *a2, int a3, const char *a4, ...)
{
  va_start(va, a4);
  v7 = setlocale(4, 0);
  v8 = v7;
  if (*v7 == 67 && !v7[1])
  {
    v10 = 0;
  }

  else
  {
    v9 = strlen(v7);
    v10 = operator new[](v9 + 1);
    strcpy(v10, v8);
    setlocale(4, "C");
  }

  v11 = vsnprintf(a2, a3, a4, va);
  if (v10)
  {
    setlocale(4, v10);
    operator delete[](v10);
  }

  return v11;
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::_M_insert<true>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6)
{
  v10 = std::use_facet<std::ctype<char>>(a4 + 208);
  v11 = std::__use_cache<std::__moneypunct_cache<char,true>>::operator()(&v61, (a4 + 208));
  v12 = v11;
  v13 = **a6;
  v14 = *(v11 + 100);
  v15 = *(*a6 - 24);
  v16 = (v11 + 96);
  v17 = (v11 + 72);
  v18 = (v11 + 80);
  if (v15)
  {
    v19 = *a6 + 1;
  }

  else
  {
    v19 = *a6;
  }

  v20 = (v11 + 92);
  v21 = (v11 + 56);
  v22 = (v11 + 64);
  v23 = v13 == v14;
  if (v13 == v14)
  {
    v24 = v16;
  }

  else
  {
    v24 = v20;
  }

  if (v23)
  {
    v25 = v18;
  }

  else
  {
    v25 = v22;
  }

  if (v23)
  {
    v26 = v17;
  }

  else
  {
    v26 = v21;
  }

  if (v23)
  {
    v27 = v19;
  }

  else
  {
    v27 = *a6;
  }

  v60 = *v24;
  v57 = *v26;
  v28 = *v25;
  v29 = &v27[v15];
  v30 = *(v10 + 48);
  if (v30)
  {
    if (v15 < 1)
    {
      goto LABEL_93;
    }

    v55 = a2;
    i = v27;
    while ((*(v30 + 8 * *i) & 0x400) != 0)
    {
      ++i;
      if (!--v15)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v38 = v15 - 1;
    if (v15 < 1)
    {
      goto LABEL_93;
    }

    v55 = a2;
    v39 = 0;
    for (i = v27; ; ++i)
    {
      v40 = *i;
      if (v39)
      {
        if ((*(v39 + 8 * v40) & 0x400) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v40 & 0x80) != 0)
      {
        if (!__maskrune(v40, 0x400uLL))
        {
          goto LABEL_22;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v40] & 0x400) == 0)
      {
        goto LABEL_22;
      }

      if (!v38)
      {
        break;
      }

      v39 = *(v10 + 48);
      --v38;
    }

LABEL_21:
    i = v29;
  }

LABEL_22:
  v32 = i - v27;
  if (i == v27)
  {
    a2 = v55;
    goto LABEL_93;
  }

  v59 = &unk_60620;
  std::string::reserve(&v59, 2 * v32);
  v33 = *(v12 + 88);
  v34 = v32 - v33;
  if ((v32 - v33) >= 1)
  {
    if (v33 < 0)
    {
      v34 = i - v27;
    }

    if (*(v12 + 24))
    {
      std::string::_M_replace_aux(&v59, 0, *(v59 - 3), 2 * v34, 0);
      v35 = v59;
      if ((*(v59 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v59);
        v35 = v59;
      }

      v36 = std::__add_grouping<char>(v35, *(v12 + 34), *(v12 + 16), *(v12 + 24), v27, &v27[v34]);
      v37 = v59;
      if ((*(v59 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v59);
        v37 = v59;
      }

      std::string::erase(&v59, v36 - v37, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      std::string::assign(&v59, v27, v34);
    }

    LODWORD(v33) = *(v12 + 88);
  }

  if (v33 >= 1)
  {
    std::string::push_back(&v59, *(v12 + 33));
    if ((v34 & 0x8000000000000000) != 0)
    {
      std::string::append(&v59, -v34, *(v12 + 101));
    }

    else
    {
      v27 += v34;
      v32 = *(v12 + 88);
    }

    std::string::append(&v59, v27, v32);
  }

  v41 = *(a4 + 24);
  if ((v41 & 0x200) != 0)
  {
    v42 = *(v12 + 48);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v59 - 3) + v28 + v42;
  v58 = &unk_60620;
  std::string::reserve(&v58, 2 * v43);
  v44 = 0;
  v45 = *(a4 + 16);
  v47 = (v41 & 0xB0) == 0x10 && v45 > v43;
  v48 = v45 - v43;
  do
  {
    while (1)
    {
      v49 = *(&v60 + v44);
      if (v49 <= 1)
      {
        break;
      }

      if (v49 == 4)
      {
        std::string::append(&v58, &v59);
        goto LABEL_78;
      }

      if (v49 != 3)
      {
        if (v49 == 2 && (*(a4 + 25) & 2) != 0)
        {
          std::string::append(&v58, *(v12 + 40), *(v12 + 48));
        }

        goto LABEL_78;
      }

      if (v28)
      {
        v50 = *v57;
LABEL_75:
        std::string::push_back(&v58, v50);
        goto LABEL_78;
      }

      if (++v44 == 4)
      {
        goto LABEL_84;
      }
    }

    if (*(&v60 + v44))
    {
      if (v49 != 1)
      {
        goto LABEL_78;
      }

      v50 = a5;
      if (!v47)
      {
        goto LABEL_75;
      }
    }

    else if (!v47)
    {
      goto LABEL_78;
    }

    std::string::append(&v58, v48, a5);
LABEL_78:
    ++v44;
  }

  while (v44 != 4);
  if (v28 > 1)
  {
    std::string::append(&v58, (v57 + 1), v28 - 1);
  }

LABEL_84:
  v51 = *(v58 - 3);
  if (v45 > v51)
  {
    if ((v41 & 0xB0) == 0x20)
    {
      std::string::append(&v58, v45 - v51, a5);
    }

    else
    {
      std::string::insert(&v58, 0, v45 - v51, a5);
    }

    LODWORD(v51) = v45;
  }

  a2 = v55;
  if ((a3 & 1) == 0)
  {
    (*(*v55 + 96))(v55, v58, v51);
  }

  v52 = v58 - 6;
  if (v58 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v58 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v52);
  }

  v53 = v59 - 6;
  if (v59 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v59 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v53);
  }

LABEL_93:
  *(a4 + 16) = 0;
  return a2;
}

void sub_21B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a15 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a15 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::_M_insert<false>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6)
{
  v10 = std::use_facet<std::ctype<char>>(a4 + 208);
  v11 = std::__use_cache<std::__moneypunct_cache<char,false>>::operator()(&v61, (a4 + 208));
  v12 = v11;
  v13 = **a6;
  v14 = *(v11 + 100);
  v15 = *(*a6 - 24);
  v16 = (v11 + 96);
  v17 = (v11 + 72);
  v18 = (v11 + 80);
  if (v15)
  {
    v19 = *a6 + 1;
  }

  else
  {
    v19 = *a6;
  }

  v20 = (v11 + 92);
  v21 = (v11 + 56);
  v22 = (v11 + 64);
  v23 = v13 == v14;
  if (v13 == v14)
  {
    v24 = v16;
  }

  else
  {
    v24 = v20;
  }

  if (v23)
  {
    v25 = v18;
  }

  else
  {
    v25 = v22;
  }

  if (v23)
  {
    v26 = v17;
  }

  else
  {
    v26 = v21;
  }

  if (v23)
  {
    v27 = v19;
  }

  else
  {
    v27 = *a6;
  }

  v60 = *v24;
  v57 = *v26;
  v28 = *v25;
  v29 = &v27[v15];
  v30 = *(v10 + 48);
  if (v30)
  {
    if (v15 < 1)
    {
      goto LABEL_93;
    }

    v55 = a2;
    i = v27;
    while ((*(v30 + 8 * *i) & 0x400) != 0)
    {
      ++i;
      if (!--v15)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v38 = v15 - 1;
    if (v15 < 1)
    {
      goto LABEL_93;
    }

    v55 = a2;
    v39 = 0;
    for (i = v27; ; ++i)
    {
      v40 = *i;
      if (v39)
      {
        if ((*(v39 + 8 * v40) & 0x400) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v40 & 0x80) != 0)
      {
        if (!__maskrune(v40, 0x400uLL))
        {
          goto LABEL_22;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v40] & 0x400) == 0)
      {
        goto LABEL_22;
      }

      if (!v38)
      {
        break;
      }

      v39 = *(v10 + 48);
      --v38;
    }

LABEL_21:
    i = v29;
  }

LABEL_22:
  v32 = i - v27;
  if (i == v27)
  {
    a2 = v55;
    goto LABEL_93;
  }

  v59 = &unk_60620;
  std::string::reserve(&v59, 2 * v32);
  v33 = *(v12 + 88);
  v34 = v32 - v33;
  if ((v32 - v33) >= 1)
  {
    if (v33 < 0)
    {
      v34 = i - v27;
    }

    if (*(v12 + 24))
    {
      std::string::_M_replace_aux(&v59, 0, *(v59 - 3), 2 * v34, 0);
      v35 = v59;
      if ((*(v59 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v59);
        v35 = v59;
      }

      v36 = std::__add_grouping<char>(v35, *(v12 + 34), *(v12 + 16), *(v12 + 24), v27, &v27[v34]);
      v37 = v59;
      if ((*(v59 - 2) & 0x80000000) == 0)
      {
        std::string::_M_leak_hard(&v59);
        v37 = v59;
      }

      std::string::erase(&v59, v36 - v37, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      std::string::assign(&v59, v27, v34);
    }

    LODWORD(v33) = *(v12 + 88);
  }

  if (v33 >= 1)
  {
    std::string::push_back(&v59, *(v12 + 33));
    if ((v34 & 0x8000000000000000) != 0)
    {
      std::string::append(&v59, -v34, *(v12 + 101));
    }

    else
    {
      v27 += v34;
      v32 = *(v12 + 88);
    }

    std::string::append(&v59, v27, v32);
  }

  v41 = *(a4 + 24);
  if ((v41 & 0x200) != 0)
  {
    v42 = *(v12 + 48);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v59 - 3) + v28 + v42;
  v58 = &unk_60620;
  std::string::reserve(&v58, 2 * v43);
  v44 = 0;
  v45 = *(a4 + 16);
  v47 = (v41 & 0xB0) == 0x10 && v45 > v43;
  v48 = v45 - v43;
  do
  {
    while (1)
    {
      v49 = *(&v60 + v44);
      if (v49 <= 1)
      {
        break;
      }

      if (v49 == 4)
      {
        std::string::append(&v58, &v59);
        goto LABEL_78;
      }

      if (v49 != 3)
      {
        if (v49 == 2 && (*(a4 + 25) & 2) != 0)
        {
          std::string::append(&v58, *(v12 + 40), *(v12 + 48));
        }

        goto LABEL_78;
      }

      if (v28)
      {
        v50 = *v57;
LABEL_75:
        std::string::push_back(&v58, v50);
        goto LABEL_78;
      }

      if (++v44 == 4)
      {
        goto LABEL_84;
      }
    }

    if (*(&v60 + v44))
    {
      if (v49 != 1)
      {
        goto LABEL_78;
      }

      v50 = a5;
      if (!v47)
      {
        goto LABEL_75;
      }
    }

    else if (!v47)
    {
      goto LABEL_78;
    }

    std::string::append(&v58, v48, a5);
LABEL_78:
    ++v44;
  }

  while (v44 != 4);
  if (v28 > 1)
  {
    std::string::append(&v58, (v57 + 1), v28 - 1);
  }

LABEL_84:
  v51 = *(v58 - 3);
  if (v45 > v51)
  {
    if ((v41 & 0xB0) == 0x20)
    {
      std::string::append(&v58, v45 - v51, a5);
    }

    else
    {
      std::string::insert(&v58, 0, v45 - v51, a5);
    }

    LODWORD(v51) = v45;
  }

  a2 = v55;
  if ((a3 & 1) == 0)
  {
    (*(*v55 + 96))(v55, v58, v51);
  }

  v52 = v58 - 6;
  if (v58 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v58 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v52);
  }

  v53 = v59 - 6;
  if (v59 - 6 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v59 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v53);
  }

LABEL_93:
  *(a4 + 16) = 0;
  return a2;
}

void sub_220AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a15 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a15 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6, uint64_t *a7)
{
  if (a4)
  {
    return std::money_put<char,std::ostreambuf_iterator<char>>::_M_insert<true>(a1, a2, a3, a5, a6, a7);
  }

  else
  {
    return std::money_put<char,std::ostreambuf_iterator<char>>::_M_insert<false>(a1, a2, a3, a5, a6, a7);
  }
}

uint64_t std::__use_cache<std::__moneypunct_cache<char,true>>::operator()(uint64_t a1, std::locale::_Impl **a2)
{
  v3 = std::locale::id::_M_id(&std::moneypunct<char,true>::id);
  v4 = *(*a2 + 3);
  result = *(v4 + 8 * v3);
  if (!result)
  {
    v6 = operator new(0x70uLL);
    *(v6 + 2) = 0;
    *v6 = off_5D9D8;
    v6[111] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 31) = 0;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 84) = 0u;
    std::__moneypunct_cache<char,true>::_M_cache(v6, a2);
    std::locale::_Impl::_M_install_cache(*a2, v6, v3);
    return *(v4 + 8 * v3);
  }

  return result;
}

void sub_22234(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 8))(v1);
  __cxa_rethrow();
}

uint64_t std::__verify_grouping(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = *a3;
  v5 = *(*a3 - 3) - 1;
  v6 = a2 - 1;
  if (a2 - 1 >= v5)
  {
    v6 = *(*a3 - 3) - 1;
  }

  if (v6)
  {
    v7 = 0;
    v8 = *a3;
    do
    {
      v9 = v8[v5];
      v10 = *(a1 + v7);
      result = v9 == v10;
      if (++v7 >= v6)
      {
        break;
      }

      --v8;
    }

    while (v9 == v10);
    v5 -= v7;
  }

  else
  {
    result = 1;
  }

  v12 = *(a1 + v6);
  if (v5)
  {
    v13 = result == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    do
    {
      v14 = v4[v5];
      result = v14 == v12;
      --v5;
    }

    while (v5 && v14 == v12);
  }

  if (v12 >= 1)
  {
    if (*v4 <= v12)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__use_cache<std::__moneypunct_cache<char,false>>::operator()(uint64_t a1, std::locale::_Impl **a2)
{
  v3 = std::locale::id::_M_id(&std::moneypunct<char,false>::id);
  v4 = *(*a2 + 3);
  result = *(v4 + 8 * v3);
  if (!result)
  {
    v6 = operator new(0x70uLL);
    *(v6 + 2) = 0;
    *v6 = off_5D9B8;
    v6[111] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 31) = 0;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 84) = 0u;
    std::__moneypunct_cache<char,false>::_M_cache(v6, a2);
    std::locale::_Impl::_M_install_cache(*a2, v6, v3);
    return *(v4 + 8 * v3);
  }

  return result;
}