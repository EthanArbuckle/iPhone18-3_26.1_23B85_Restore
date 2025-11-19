uint64_t std::unique_ptr<NovaHost::DoubleHalfPressRecognizer>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    JUMPOUT(0x26672A920);
  }

  return result;
}

uint64_t NovaHost::DoubleHalfPressRecognizer::update(double *a1, float *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a3 + 28);
  v5 = v4 == 1;
  v6 = *(a3 + 24);
  v7 = v4 == 2;
  v8 = v6 == 2 && v5;
  v9 = v6 == 2 && v7;
  v10 = *(a3 + 32);
  v11 = v6 == 4 && v5;
  v12 = *a2;
  *a4 = 0;
  v13 = *a1;
  if (*a1)
  {
    a1[1] = a1[1] + fabsf(a2[3] * 103.33);
  }

  if (v11)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    if (*(a1 + 17) == 1)
    {
      *(a1 + 17) = 0;
    }

    else if (v13 == 0.0 || *(a1 + 16) == 1)
    {
      *a1 = v12;
      *(a1 + 16) = 0;
    }

    else if (a1[3] < (v12 - *&v13) || a1[1] >= a1[5])
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
      *(a1 + 16) = 1;
      *a4 = 1;
    }

LABEL_30:
    a1[1] = 0.0;
    return OUTLINED_FUNCTION_0();
  }

  if (!v8)
  {
    if (v10 != 8)
    {
      return OUTLINED_FUNCTION_0();
    }

    goto LABEL_30;
  }

  if (*(a1 + 16) == 1 && a1[4] > (v12 - *&v13))
  {
LABEL_13:
    *(a1 + 8) = 0;
    *a1 = 0.0;
    a1[1] = 0.0;
    *(a1 + 17) = 1;
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t NovaHost::DoubleHalfPressRecognizer::reset(NovaHost::DoubleHalfPressRecognizer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  return OUTLINED_FUNCTION_0();
}

uint64_t NovaHost::DoubleHalfPressRecognizer::invalidate(NovaHost::DoubleHalfPressRecognizer *this)
{
  *(this + 1) = 0;
  *(this + 16) = 0;
  return OUTLINED_FUNCTION_0();
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