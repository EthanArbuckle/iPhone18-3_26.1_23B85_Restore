uint64_t config::env::Parser::consumeEnv@<X0>(unsigned __int8 **this@<X0>, uint64_t a2@<X8>)
{
  v6[17] = *MEMORY[0x29EDCA608];
  v6[0] = this;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  result = config::env::Parser::getConfig(v6, a2);
  if ((*a2 & 1) == 0)
  {
    result = config::env::Parser::removeEnvVars(v6);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t config::env::Parser::getConfig@<X0>(config::env::Parser *this@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v9 = xmmword_29F28F930;
  v10 = unk_29F28F940;
  v11 = xmmword_29F28F950;
  *a2 = config::env::Parser::getSetting<34ul,BOOL,3ul>(this, "SanitizersChildProcessPropagation", 0, &v9);
  v9 = xmmword_29F28F930;
  v10 = unk_29F28F940;
  v11 = xmmword_29F28F950;
  *(a2 + 1) = config::env::Parser::getSetting<30ul,BOOL,3ul>(this, "SanitizersPrintReportToStderr", 0, &v9);
  *(a2 + 4) = config::env::Parser::getNumber<19ul,long,&(strtol)>(this, "SanitizersExitCode", 0);
  v9 = xmmword_29F28F8D0;
  v10 = unk_29F28F8E0;
  v11 = xmmword_29F28F8F0;
  v12 = unk_29F28F900;
  *(a2 + 8) = config::env::Parser::getSetting<27ul,config::env::AllocationTraces,4ul>(this, "SanitizersAllocationTraces", 0, &v9);
  v7[0] = 1;
  v8 = "production";
  *(a2 + 12) = config::env::Parser::getSetting<39ul,BOOL,1ul>(this, "SanitizersAllocationTracesMemoryBudget", 0, v7);
  *(a2 + 16) = config::env::Parser::getNumber<34ul,unsigned long,&(strtoul)>(this, "SanitizersAllocationTracesMinSize", 0);
  *(a2 + 24) = config::env::Parser::getNumber<34ul,unsigned long,&(strtoul)>(this, "SanitizersAllocationTracesMaxSize", 0);
  v6[0] = xmmword_29F28F910;
  v6[1] = unk_29F28F920;
  result = config::env::Parser::getSetting<18ul,config::env::Address,2ul>(this, "SanitizersAddress", 0, v6);
  *(a2 + 32) = result;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t config::env::Parser::getSetting<34ul,BOOL,3ul>(uint64_t *a1, unsigned __int8 *a2, char a3, uint64_t a4)
{
  v6 = config::env::Parser::getVal<34ul>(a1, a2);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a4 + v7 + 8);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8 + 1;
        v11 = v6;
        do
        {
          if (v9 != *v11)
          {
            break;
          }

          ++v11;
          v12 = *v10++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v11 = v6;
      }

      if (v9 == *v11)
      {
        break;
      }

      v7 += 16;
      if (v7 == 48)
      {
        return a3 & 1;
      }
    }

    a3 = *(a4 + v7);
  }

  return a3 & 1;
}

unsigned __int8 *config::env::Parser::getVal<34ul>(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  result = _simple_getenv();
  if (!result)
  {
    v6 = *a1;
    result = _simple_getenv();
    if (result)
    {

      return config::env::Parser::getTrialVal<34ul>(result, a2, (a1 + 1));
    }
  }

  return result;
}

uint64_t _sanitizers_init(unsigned __int8 **a1)
{
  v6 = 0;
  v8 = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  result = config::env::Parser::consumeEnv(a1, &v10);
  v5[0] = v12 == 2;
  v5[1] = BYTE1(v10);
  v7 = DWORD1(v10);
  v3 = v12 == 2 && DWORD2(v10) == 0;
  v4 = (DWORD2(v10) & 0xFFFFFFFE) == 2 || v3;
  LOBYTE(v8) = v4;
  BYTE1(v8) = BYTE12(v10);
  BYTE2(v8) = DWORD2(v10) == 3;
  v9 = v11;
  if (v12 != 2)
  {
    if (!v4)
    {
      return result;
    }

    return trace::initTraceCollection(&v8);
  }

  result = asan::initRuntime(v5);
  if (v8)
  {
    return trace::initTraceCollection(&v8);
  }

  return result;
}

uint64_t config::env::Parser::getSetting<27ul,config::env::AllocationTraces,4ul>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = config::env::Parser::getVal<27ul>(a1, a2);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a4 + v7 + 8);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8 + 1;
        v11 = v6;
        do
        {
          if (v9 != *v11)
          {
            break;
          }

          ++v11;
          v12 = *v10++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v11 = v6;
      }

      if (v9 == *v11)
      {
        break;
      }

      v7 += 16;
      if (v7 == 64)
      {
        return a3;
      }
    }

    return *(a4 + v7);
  }

  return a3;
}

uint64_t config::env::Parser::getSetting<30ul,BOOL,3ul>(uint64_t *a1, unsigned __int8 *a2, char a3, uint64_t a4)
{
  v6 = config::env::Parser::getVal<30ul>(a1, a2);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a4 + v7 + 8);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8 + 1;
        v11 = v6;
        do
        {
          if (v9 != *v11)
          {
            break;
          }

          ++v11;
          v12 = *v10++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v11 = v6;
      }

      if (v9 == *v11)
      {
        break;
      }

      v7 += 16;
      if (v7 == 48)
      {
        return a3 & 1;
      }
    }

    a3 = *(a4 + v7);
  }

  return a3 & 1;
}

unsigned __int8 *config::env::Parser::getVal<30ul>(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  result = _simple_getenv();
  if (!result)
  {
    v6 = *a1;
    result = _simple_getenv();
    if (result)
    {

      return config::env::Parser::getTrialVal<30ul>(result, a2, (a1 + 1));
    }
  }

  return result;
}

uint64_t config::env::Parser::getNumber<19ul,long,&(strtol)>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = config::env::Parser::getVal<19ul>(a1, a2);
  if (v4)
  {
    v5 = v4;
    __endptr = 0;
    v6 = strtol(v4, &__endptr, 0);
    if (__endptr != v5 && !*__endptr)
    {
      return v6;
    }
  }

  return a3;
}

unsigned __int8 *config::env::Parser::getVal<19ul>(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  result = _simple_getenv();
  if (!result)
  {
    v6 = *a1;
    result = _simple_getenv();
    if (result)
    {

      return config::env::Parser::getTrialVal<19ul>(result, a2, (a1 + 1));
    }
  }

  return result;
}

unsigned __int8 *config::env::Parser::getVal<27ul>(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  result = _simple_getenv();
  if (!result)
  {
    v6 = *a1;
    result = _simple_getenv();
    if (result)
    {

      return config::env::Parser::getTrialVal<27ul>(result, a2, (a1 + 1));
    }
  }

  return result;
}

unint64_t config::env::Parser::getNumber<34ul,unsigned long,&(strtoul)>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = config::env::Parser::getVal<34ul>(a1, a2);
  if (v4)
  {
    v5 = v4;
    __endptr = 0;
    v6 = strtoul(v4, &__endptr, 0);
    if (__endptr != v5 && !*__endptr)
    {
      return v6;
    }
  }

  return a3;
}

uint64_t config::env::Parser::getSetting<18ul,config::env::Address,2ul>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = config::env::Parser::getVal<18ul>(a1, a2);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a4 + v7 + 8);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8 + 1;
        v11 = v6;
        do
        {
          if (v9 != *v11)
          {
            break;
          }

          ++v11;
          v12 = *v10++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v11 = v6;
      }

      if (v9 == *v11)
      {
        break;
      }

      v7 += 16;
      if (v7 == 32)
      {
        return a3;
      }
    }

    return *(a4 + v7);
  }

  return a3;
}

unsigned __int8 *config::env::Parser::getVal<18ul>(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  result = _simple_getenv();
  if (!result)
  {
    v6 = *a1;
    result = _simple_getenv();
    if (result)
    {

      return config::env::Parser::getTrialVal<18ul>(result, a2, (a1 + 1));
    }
  }

  return result;
}

unsigned __int8 **config::env::Parser::removeEnvVars(unsigned __int8 ***this)
{
  config::env::Parser::unsetEnv<34ul>(*this, "SanitizersChildProcessPropagation");
  config::env::Parser::unsetEnv<30ul>(*this, "SanitizersPrintReportToStderr");
  config::env::Parser::unsetEnv<19ul>(*this, "SanitizersExitCode");
  config::env::Parser::unsetEnv<27ul>(*this, "SanitizersAllocationTraces");
  config::env::Parser::unsetEnv<39ul>(*this, "SanitizersAllocationTracesMemoryBudget");
  config::env::Parser::unsetEnv<34ul>(*this, "SanitizersAllocationTracesMinSize");
  config::env::Parser::unsetEnv<34ul>(*this, "SanitizersAllocationTracesMaxSize");
  v2 = *this;

  return config::env::Parser::unsetEnv<18ul>(v2, "SanitizersAddress");
}

unsigned __int8 **config::env::Parser::unsetEnv<34ul>(unsigned __int8 **result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    while (1)
    {
      v4 = *v2;
      v5 = a2;
      if (*v2)
      {
        v6 = v2 + 1;
        v5 = a2;
        while (1)
        {
          v7 = *v5;
          if (v4 != v7)
          {
            break;
          }

          ++v5;
          v8 = *v6++;
          v4 = v8;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = *v5;
      }

      if (!v7 && v2[33] == 61)
      {
        v9 = result[1];
        ++result;
        v2 = v9;
        if (v9)
        {
          continue;
        }
      }

      *v3++ = v2;
      v10 = result[1];
      ++result;
      v2 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v3 = result;
  }

  *v3 = 0;
  return result;
}

unsigned __int8 **config::env::Parser::unsetEnv<30ul>(unsigned __int8 **result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    while (1)
    {
      v4 = *v2;
      v5 = a2;
      if (*v2)
      {
        v6 = v2 + 1;
        v5 = a2;
        while (1)
        {
          v7 = *v5;
          if (v4 != v7)
          {
            break;
          }

          ++v5;
          v8 = *v6++;
          v4 = v8;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = *v5;
      }

      if (!v7 && v2[29] == 61)
      {
        v9 = result[1];
        ++result;
        v2 = v9;
        if (v9)
        {
          continue;
        }
      }

      *v3++ = v2;
      v10 = result[1];
      ++result;
      v2 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v3 = result;
  }

  *v3 = 0;
  return result;
}

unsigned __int8 **config::env::Parser::unsetEnv<19ul>(unsigned __int8 **result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    while (1)
    {
      v4 = *v2;
      v5 = a2;
      if (*v2)
      {
        v6 = v2 + 1;
        v5 = a2;
        while (1)
        {
          v7 = *v5;
          if (v4 != v7)
          {
            break;
          }

          ++v5;
          v8 = *v6++;
          v4 = v8;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = *v5;
      }

      if (!v7 && v2[18] == 61)
      {
        v9 = result[1];
        ++result;
        v2 = v9;
        if (v9)
        {
          continue;
        }
      }

      *v3++ = v2;
      v10 = result[1];
      ++result;
      v2 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v3 = result;
  }

  *v3 = 0;
  return result;
}

unsigned __int8 **config::env::Parser::unsetEnv<27ul>(unsigned __int8 **result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    while (1)
    {
      v4 = *v2;
      v5 = a2;
      if (*v2)
      {
        v6 = v2 + 1;
        v5 = a2;
        while (1)
        {
          v7 = *v5;
          if (v4 != v7)
          {
            break;
          }

          ++v5;
          v8 = *v6++;
          v4 = v8;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = *v5;
      }

      if (!v7 && v2[26] == 61)
      {
        v9 = result[1];
        ++result;
        v2 = v9;
        if (v9)
        {
          continue;
        }
      }

      *v3++ = v2;
      v10 = result[1];
      ++result;
      v2 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v3 = result;
  }

  *v3 = 0;
  return result;
}

unsigned __int8 **config::env::Parser::unsetEnv<18ul>(unsigned __int8 **result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    while (1)
    {
      v4 = *v2;
      v5 = a2;
      if (*v2)
      {
        v6 = v2 + 1;
        v5 = a2;
        while (1)
        {
          v7 = *v5;
          if (v4 != v7)
          {
            break;
          }

          ++v5;
          v8 = *v6++;
          v4 = v8;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = *v5;
      }

      if (!v7 && v2[17] == 61)
      {
        v9 = result[1];
        ++result;
        v2 = v9;
        if (v9)
        {
          continue;
        }
      }

      *v3++ = v2;
      v10 = result[1];
      ++result;
      v2 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v3 = result;
  }

  *v3 = 0;
  return result;
}

void asan::ReportGenerator::createReport(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a2;
  *(a4 + 16) = *(a2 + 16);
  bzero((a4 + 48), 0x470uLL);
  *(a4 + 40) = a3[2];
  *(a4 + 24) = *a3;
  *(a4 + 1184) = 3;
  *(a4 + 1192) = (***a1)();
  v7 = (*(**a1 + 104))(*a1, *a3, a3[1]);
  if (v7 > 247)
  {
    if (v7 > 250)
    {
      if ((v7 - 252) >= 2)
      {
        if (v7 == 251)
        {
          asan::ReportGenerator::addHeapBufferOverflowInfo(a1, a4);
        }
      }

      else
      {
        asan::ReportGenerator::addUseAfterFreeInfo(a1, a4);
      }

      goto LABEL_22;
    }

    if (v7 == 248)
    {
      *(a4 + 48) = 7;
      v8 = "stack-use-after-scope";
      goto LABEL_21;
    }

    if (v7 == 249)
    {
      asan::ReportGenerator::addGlobalBufferOverflowInfo(a1, a4);
      goto LABEL_22;
    }

LABEL_15:
    *(a4 + 48) = 8;
    *(a4 + 56) = "unimplemented";
    *(a4 + 64) = "unimplemented";
    goto LABEL_22;
  }

  if (v7 > 241)
  {
    if ((v7 - 242) >= 2)
    {
      if ((v7 - 244) < 2)
      {
        asan::ReportGenerator::addStackUseAfterReturnInfo(a1, a4);
      }

      goto LABEL_22;
    }

    *(a4 + 48) = 4;
    v8 = "stack-buffer-overflow";
LABEL_21:
    *(a4 + 56) = v8;
    asan::ReportGenerator::fillStackVarInfo(a1, a4);
    goto LABEL_22;
  }

  switch(v7)
  {
    case 233:
      goto LABEL_15;
    case 241:
      *(a4 + 48) = 5;
      v8 = "stack-buffer-underflow";
      goto LABEL_21;
    case 0:
      asan::ReportGenerator::createReport();
  }

LABEL_22:
  if (!*(a4 + 48))
  {
    *(a4 + 56) = "corrupted shadow";
    *(a4 + 64) = "corrupted shadow";
  }
}

uint64_t asan::ReportGenerator::addHeapBufferOverflowInfo(uint64_t *a1, uint64_t a2)
{
  *(a2 + 48) = 3;
  *(a2 + 56) = "heap-buffer-overflow";
  *(a2 + 64) = "heap";
  v4 = *a1;
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v5 = (*(*v4 + 56))(v4, &v9);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    asan::ReportGenerator::addHeapBufferOverflowInfo();
  }

  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  bzero((a2 + 104), 0x438uLL);
  return (**a1[1])();
}

uint64_t asan::ReportGenerator::addUseAfterFreeInfo(uint64_t *a1, uint64_t a2)
{
  *(a2 + 48) = 1;
  *(a2 + 56) = "heap-use-after-free";
  *(a2 + 64) = "heap";
  v4 = *a1;
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v5 = (*(*v4 + 56))(v4, &v9);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    asan::ReportGenerator::addUseAfterFreeInfo();
  }

  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = 1;
  bzero((a2 + 105), 0x437uLL);
  return (**a1[1])();
}

void asan::ReportGenerator::addGlobalBufferOverflowInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 2;
  *(a2 + 56) = "global-buffer-overflow";
  *(a2 + 64) = "global";
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16), *(a2 + 24));
  if (!v3)
  {
    asan::ReportGenerator::addGlobalBufferOverflowInfo();
  }

  v4 = 0;
  v5 = *(v3 + 24);
    ;
  }

  *(a2 + 72) = v5;
  *(a2 + 80) = v4 - 1;
  *(a2 + 88) = *v3;

  bzero((a2 + 104), 0x438uLL);
}

void asan::ReportGenerator::addStackBufferOverflowInfo(uint64_t *a1, uint64_t a2)
{
  *(a2 + 48) = 4;
  *(a2 + 56) = "stack-buffer-overflow";
  asan::ReportGenerator::fillStackVarInfo(a1, a2);
}

void asan::ReportGenerator::addStackBufferUnderflowInfo(uint64_t *a1, uint64_t a2)
{
  *(a2 + 48) = 5;
  *(a2 + 56) = "stack-buffer-underflow";
  asan::ReportGenerator::fillStackVarInfo(a1, a2);
}

uint64_t asan::ReportGenerator::addStackUseAfterReturnInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 6;
  *(a2 + 56) = "stack-use-after-return";
  asan::ReportGenerator::fillStackVarInfo(a1, a2);
  v4 = *a1;
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  (*(*v4 + 56))(v4, &v6);
  return (***(a1 + 8))();
}

void asan::ReportGenerator::addStackUseAfterScopeInfo(uint64_t *a1, uint64_t a2)
{
  *(a2 + 48) = 7;
  *(a2 + 56) = "stack-use-after-scope";
  asan::ReportGenerator::fillStackVarInfo(a1, a2);
}

void asan::ReportGenerator::fillStackVarInfo(uint64_t *a1, uint64_t a2)
{
  *(a2 + 64) = "stack";
  v3 = *a1;
  v12 = *(a2 + 24);
  *&v13 = *(a2 + 40);
  v4 = (*(*v3 + 56))(v3, &v12);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    asan::ReportGenerator::fillStackVarInfo();
  }

  v7 = v4;
  if (*v4 == 1102416563)
  {
    v8 = v4[1];
  }

  else
  {
    if (*v4 == 1172321806)
    {
      asan::ReportGenerator::fillStackVarInfo();
    }

    v8 = v4[4];
  }

  if (!v8)
  {
    asan::ReportGenerator::fillStackVarInfo();
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  asan::ReportGenerator::StackVar::getStackVar(v8, (*(a2 + 24) - v7), &v12);
  v9 = v12;
  if (!v12)
  {
    asan::ReportGenerator::fillStackVarInfo();
  }

  v10 = *(&v13 + 1);
  v11 = *(&v12 + 1);
  *(a2 + 72) = v13;
  *(a2 + 80) = v10;
  LOBYTE(v10) = *v7 != 1102416563;
  *(a2 + 88) = v7 + v9;
  *(a2 + 96) = v11;
  *(a2 + 104) = v10;
  bzero((a2 + 105), 0x437uLL);
}

unint64_t asan::ReportGenerator::StackVar::getStackVar@<X0>(asan::ReportGenerator::StackVar *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  __endptr = this;
  v5 = strtoul(this, &__endptr, 10);
  if (!v5)
  {
    asan::ReportGenerator::StackVar::getStackVar();
  }

  v6 = v5;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = asan::ReportGenerator::StackVar::parse(&__endptr, a3);
  if (v6 != 1 && *(a3 + 8) + *a3 < a2)
  {
    v8 = v6 - 2;
    do
    {
      if (v8 == -1)
      {
        break;
      }

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      result = asan::ReportGenerator::StackVar::parse(&__endptr, a3);
      if (!v8)
      {
        break;
      }

      --v8;
    }

    while (*(a3 + 8) + *a3 < a2);
  }

  return result;
}

unint64_t asan::ReportGenerator::StackVar::parse@<X0>(const char **__endptr@<X0>, unint64_t *a2@<X8>)
{
  a2[4] = 0;
  *a2 = strtoul(*__endptr, __endptr, 10);
  a2[1] = strtoul(*__endptr, __endptr, 10);
  result = strtoul(*__endptr, __endptr, 10);
  v6 = 0;
  v7 = (*__endptr + 1);
  for (i = v7; ; ++i)
  {
    *__endptr = i;
    v9 = *i;
    if (v9 <= 0x3A && ((1 << v9) & 0x400000100000001) != 0)
    {
      break;
    }

    ++v6;
  }

  a2[2] = v7;
  a2[3] = v6;
  if (v9 == 58)
  {
    *__endptr = i + 1;
    result = strtoul(i + 1, __endptr, 10);
    a2[4] = result;
  }

  return result;
}

vm_address_t trace::initTraceCollection(uint64_t a1)
{
  v1 = *(a1 + 2);
  v5 = *(a1 + 8);
  if (*(a1 + 1) == 1)
  {
    v2 = vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
    v3 = 1;
    result = vm::create<trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>>();
  }

  else
  {
    v2 = vm::create<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
    result = vm::create<trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>>();
    v3 = 0;
  }

  dword_2A14F00EC = 0;
  *algn_2A14F00E9 = 0;
  sanitizers_report_globals = v2;
  *algn_2A14F00C8 = result;
  byte_2A14F00D0 = v3;
  collector = v2;
  qword_2A14F00E0 = result;
  byte_2A14F00E8 = v1;
  *&qword_2A14F00F0 = v5;
  byte_2A14F0100 = v3;
  if (*MEMORY[0x29EDCA948] == libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc)
  {
    trace::initTraceCollection();
  }

  libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::previousLogger = *MEMORY[0x29EDCA948];
  *MEMORY[0x29EDCA948] = libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc;
  return result;
}

void *trace::Lookup::create(void *this, unsigned __int8 (*a2)[24])
{
  v2 = sanitizers_report_globals;
  v3 = *algn_2A14F00C8;
  if (sanitizers_report_globals)
  {
    v4 = *algn_2A14F00C8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    trace::Lookup::create();
  }

  if (byte_2A14F00D0 == 1)
  {
    v5 = &unk_2A2020AF0;
  }

  else
  {
    v5 = &unk_2A2020B08;
  }

  *this = v5;
  this[1] = v2;
  this[2] = v3;
  return this;
}

uint64_t trace::lookupTraces(uint64_t a1)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (sanitizers_report_globals)
  {
    v1 = *algn_2A14F00C8 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if ((a1 & 0xF) == 0 && (a1 & 0xF0FFFFFFFFFFFFFFLL) <= 0xFC0000000)
    {
      if (byte_2A14F00D0 == 1)
      {
        v4 = &unk_2A2020AF0;
      }

      else
      {
        v4 = &unk_2A2020B08;
      }

      v6[0] = v4;
      v6[1] = sanitizers_report_globals;
      v6[2] = *algn_2A14F00C8;
      result = (*v4)(v6);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

const char *sanitizers_diagnose_memory_error(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), void (*a3)(uint64_t, void, void), uint64_t a4, unint64_t a5, uint64_t a6)
{
  v34[4] = a3;
  v11 = a2(a1, a4, 24);
  if (!v11)
  {
  }

  v31[0] = v11;
  v31[1] = 24;
  if (!*v11 || !*(v11 + 8))
  {
    v16 = 1;
    goto LABEL_33;
  }

  v12 = &v32;
  v13 = v11;
  if (*(v11 + 16) == 1)
  {
    v14 = (a2)(a1);
    v15 = v14;
    if (v14)
    {
      v32 = v14;
      v33 = 4734976;
      v16 = 2;
      v12 = v34;
    }

    else
    {
      v16 = 1;
    }

    v20 = a2(a1, *(v13 + 8), 0x400000);
    if (v20)
    {
      ++v16;
      *v12 = v20;
      v12[1] = 0x400000;
      if (v15)
      {
        v35 = &unk_2A2020AF0;
        v36 = v15;
        v37 = v20;
        v38 = 0u;
        v39 = 0u;
        trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::diagnoseFault(&v35, a5, &v38);
        v21 = v38;
        v17 = "allocation metadata unavailable";
        if (v38)
        {
          v22 = *(&v38 + 1);
          if (*(&v38 + 1))
          {
            v23 = "underflow";
            v24 = v39;
            if (v38 < a5)
            {
              v23 = "overflow";
            }

            if (v39)
            {
              v23 = "use-after-free";
            }

            *a6 = v23;
            *(a6 + 8) = a5;
            *(a6 + 16) = v21;
            *(a6 + 24) = v22;
            *(a6 + 32) = v24;
            bzero((a6 + 33), 0x437uLL);
            trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces(&v35, &v38, a6 + 40, (a6 + 576));
LABEL_31:
            v17 = 0;
            goto LABEL_33;
          }
        }

        goto LABEL_33;
      }
    }

LABEL_32:
    v17 = "Failed to load trace depot and/or allocation map";
    goto LABEL_33;
  }

  v18 = (a2)(a1);
  v19 = v18;
  if (v18)
  {
    v32 = v18;
    v33 = 37765120;
    v16 = 2;
    v12 = v34;
  }

  else
  {
    v16 = 1;
  }

  v25 = a2(a1, *(v13 + 8), 0x1000000);
  if (!v25)
  {
    goto LABEL_32;
  }

  ++v16;
  *v12 = v25;
  v12[1] = 0x1000000;
  if (!v19)
  {
    goto LABEL_32;
  }

  v35 = &unk_2A2020B08;
  v36 = v19;
  v37 = v25;
  v38 = 0u;
  v39 = 0u;
  trace::Extractor<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<1048576ul,&hash::Murmur2::hashPointer>>::diagnoseFault(&v35, a5, &v38);
  v26 = v38;
  v17 = "allocation metadata unavailable";
  if (v38)
  {
    v27 = *(&v38 + 1);
    if (*(&v38 + 1))
    {
      v28 = "underflow";
      v29 = v39;
      if (v38 < a5)
      {
        v28 = "overflow";
      }

      if (v39)
      {
        v28 = "use-after-free";
      }

      *a6 = v28;
      *(a6 + 8) = a5;
      *(a6 + 16) = v26;
      *(a6 + 24) = v27;
      *(a6 + 32) = v29;
      bzero((a6 + 33), 0x437uLL);
      trace::Extractor<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<1048576ul,&hash::Murmur2::hashPointer>>::retrieveTraces(&v35, &v38, a6 + 40, (a6 + 576));
      goto LABEL_31;
    }
  }

LABEL_33:
  a3(a1, v31[2 * v16 - 2], v31[2 * v16 - 1]);
  if (v16 != 1)
  {
    a3(a1, v31[2 * v16 - 4], v31[2 * v16 - 3]);
    if (v16 != 2)
    {
      a3(a1, v31[2 * v16 - 6], v31[2 * v16 - 5]);
    }
  }

  return v17;
}

uint64_t trace::Collector<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>,&(malloc_size)>::shouldSkip<trace::Collector<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>,&(malloc_size)>::LazySize>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 & 0xF00000000000000) == 0 && (*(a1 + 16))
  {
    return 1;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    if (*(a3 + 16) == 1)
    {
      if (*(a3 + 8) < v4)
      {
        return 1;
      }
    }

    else
    {
      v5 = a1;
      v6 = a3;
      v7 = malloc_size(*a3);
      a3 = v6;
      v8 = v7;
      a1 = v5;
      *(v6 + 8) = v8;
      *(v6 + 16) = 1;
      if (v8 < *(v5 + 24))
      {
        return 1;
      }
    }
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 16) == 1)
  {
    if (*(a3 + 8) <= v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = a1;
    v11 = a3;
    v12 = malloc_size(*a3);
    *(v11 + 8) = v12;
    *(v11 + 16) = 1;
    if (v12 <= *(v10 + 32))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a2 & 0xF) != 0 || (a2 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
  {
    trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert();
  }

  v3 = (1540483477 * ((1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a2)) ^ ((1540483477 * HIDWORD(a2)) >> 24)));
  v4 = (1540483477 * (v3 ^ (v3 >> 13))) & 0x3FFFF ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v5 = 0xFFFFLL;
  if (a3 < 0xFFFF)
  {
    v5 = a3;
  }

  _X4 = (v5 << 43) | ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 4) | (8 * a2) & 0x7800000000000000;
  v7 = (a1 + 16 * v4);
  v8 = *v7;
  do
  {
    _X1 = v7[1];
    __asm { CASP            X0, X1, X4, X5, [X8] }

    _ZF = result == v8;
    v8 = result;
  }

  while (!_ZF);
  return result;
}

__n128 trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(uint64_t a1, __n128 *a2, unint64_t a3)
{
  if (a3 >= 0x41)
  {
    trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace();
  }

  v4 = -474048815;
  if (a3)
  {
    v5 = 8 * a3;
    v6 = a2;
    do
    {
      v7 = v6->n128_u64[0];
      v6 = (v6 + 8);
      v4 = (1540483477 * ((1540483477 * ((1540483477 * v7) ^ ((1540483477 * v7) >> 24))) ^ (1540483477 * v4))) ^ (1540483477 * ((1540483477 * HIDWORD(v7)) ^ ((1540483477 * HIDWORD(v7)) >> 24)));
      v5 -= 8;
    }

    while (v5);
  }

  v8 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
  v9 = ((-5739 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15));
  v10 = *(a1 + 8 * v9);
  if (a3 != HIBYTE(v10) || v8 != v10)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 4718592), a3, memory_order_relaxed);
    *(a1 + 8 * v9) = (a3 << 56) | ((add_explicit & 0x7FFFF) << 32) | v8;
    if (a3)
    {
      v13 = a1 + 0x80000;
      if (a3 < 0xE)
      {
        goto LABEL_11;
      }

      v14 = 0;
      if ((~add_explicit & 0x7FFFFu) < ((a3 - 1) & 0x7FFFFu) || (a3 - 1) >> 19)
      {
        goto LABEL_12;
      }

      if (8 * (add_explicit & 0x7FFFF) + a1 - a2 + 0x80000 < 0x20)
      {
LABEL_11:
        v14 = 0;
      }

      else
      {
        v14 = a3 & 0x7C;
        v19 = a2 + 1;
        v20 = v14;
        v21 = add_explicit;
        do
        {
          result = v19[-1];
          v23 = *v19;
          v24 = (v13 + 8 * (v21 & 0x7FFFF));
          *v24 = result;
          v24[1] = v23;
          v21 += 4;
          v19 += 2;
          v20 -= 4;
        }

        while (v20);
        if (v14 == a3)
        {
          return result;
        }
      }

LABEL_12:
      v15 = a3 - v14;
      v16 = &a2->n128_u64[v14];
      v17 = v14 + add_explicit;
      do
      {
        v18 = *v16++;
        *(v13 + 8 * (v17++ & 0x7FFFF)) = v18;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a2 & 0xF) != 0 || (a2 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
  {
    trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert();
  }

  v3 = (1540483477 * ((1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a2)) ^ ((1540483477 * HIDWORD(a2)) >> 24)));
  v4 = (1540483477 * (v3 ^ (v3 >> 13))) & 0xFFFFF ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v5 = 0xFFFFLL;
  if (a3 < 0xFFFF)
  {
    v5 = a3;
  }

  _X4 = (v5 << 43) | ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 4) | (8 * a2) & 0x7800000000000000;
  v7 = (a1 + 16 * v4);
  v8 = *v7;
  do
  {
    _X1 = v7[1];
    __asm { CASP            X0, X1, X4, X5, [X8] }

    _ZF = result == v8;
    v8 = result;
  }

  while (!_ZF);
  return result;
}

__n128 trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(uint64_t a1, __n128 *a2, unint64_t a3)
{
  if (a3 >= 0x41)
  {
    trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace();
  }

  v4 = -474048815;
  if (a3)
  {
    v5 = 8 * a3;
    v6 = a2;
    do
    {
      v7 = v6->n128_u64[0];
      v6 = (v6 + 8);
      v4 = (1540483477 * ((1540483477 * ((1540483477 * v7) ^ ((1540483477 * v7) >> 24))) ^ (1540483477 * v4))) ^ (1540483477 * ((1540483477 * HIDWORD(v7)) ^ ((1540483477 * HIDWORD(v7)) >> 24)));
      v5 -= 8;
    }

    while (v5);
  }

  v8 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
  v9 = *(a1 + 8 * (v8 & 0x7FFFF));
  if (a3 != HIBYTE(v9) || v8 != v9)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 37748736), a3, memory_order_relaxed);
    *(a1 + 8 * (v8 & 0x7FFFF)) = (a3 << 56) | ((add_explicit & 0x3FFFFF) << 32) | v8;
    if (a3)
    {
      v12 = a1 + 0x400000;
      if (a3 < 0xE)
      {
        goto LABEL_11;
      }

      v13 = 0;
      if ((~add_explicit & 0x3FFFFFu) < ((a3 - 1) & 0x3FFFFFu) || (a3 - 1) >> 22)
      {
        goto LABEL_12;
      }

      if (8 * (add_explicit & 0x3FFFFF) + a1 - a2 + 0x400000 < 0x20)
      {
LABEL_11:
        v13 = 0;
      }

      else
      {
        v13 = a3 & 0x7C;
        v18 = a2 + 1;
        v19 = v13;
        v20 = add_explicit;
        do
        {
          result = v18[-1];
          v22 = *v18;
          v23 = (v12 + 8 * (v20 & 0x3FFFFF));
          *v23 = result;
          v23[1] = v22;
          v20 += 4;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v13 == a3)
        {
          return result;
        }
      }

LABEL_12:
      v14 = a3 - v13;
      v15 = &a2->n128_u64[v13];
      v16 = v13 + add_explicit;
      do
      {
        v17 = *v15++;
        *(v12 + 8 * (v16++ & 0x3FFFFF)) = v17;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace(uint64_t result, uint64_t a2)
{
  if ((a2 & 0xF) != 0 || (a2 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
  {
    trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace();
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X9] }

  if (((_X4 >> 3) & 0xF00000000000000 | (16 * (_X4 & 0x7FFFFFFFFFFLL))) == a2)
  {
    _X4 = _X4 | 0x8000000000000000;
    v3 = (1540483477 * ((1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a2)) ^ ((1540483477 * HIDWORD(a2)) >> 24)));
    v11 = (result + 16 * ((1540483477 * (v3 ^ (v3 >> 13))) & 0x3FFFF ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15)));
    result = *v11;
    do
    {
      _X3 = v11[1];
      __asm { CASP            X2, X3, X4, X5, [X8] }

      _ZF = _X2 == result;
      result = _X2;
    }

    while (!_ZF);
  }

  return result;
}

uint64_t trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace(uint64_t result, uint64_t a2)
{
  if ((a2 & 0xF) != 0 || (a2 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
  {
    trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace();
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X9] }

  if (((_X4 >> 3) & 0xF00000000000000 | (16 * (_X4 & 0x7FFFFFFFFFFLL))) == a2)
  {
    _X4 = _X4 | 0x8000000000000000;
    v3 = (1540483477 * ((1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a2)) ^ ((1540483477 * HIDWORD(a2)) >> 24)));
    v11 = (result + 16 * ((1540483477 * (v3 ^ (v3 >> 13))) & 0xFFFFF ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15)));
    result = *v11;
    do
    {
      _X3 = v11[1];
      __asm { CASP            X2, X3, X4, X5, [X8] }

      _ZF = _X2 == result;
      result = _X2;
    }

    while (!_ZF);
  }

  return result;
}

vm_address_t vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>()
{
  if (0x484000uLL % *MEMORY[0x29EDCA6D0])
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
  }

  v0 = *MEMORY[0x29EDCA6B0];
  address = 0;
  v1 = vm_map(v0, &address, 0x484000uLL, 0, 1660944385, 0, 0, 0, 3, 3, 1u);
  if (v1)
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>(v1, v2);
  }

  v3 = address;
  bzero(address, 0x484000uLL);
  return v3;
}

vm_address_t vm::create<trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>>()
{
  if (0x400000uLL % *MEMORY[0x29EDCA6D0])
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
  }

  v0 = *MEMORY[0x29EDCA6B0];
  address = 0;
  v1 = vm_map(v0, &address, 0x400000uLL, 0, 1660944385, 0, 0, 0, 3, 3, 1u);
  if (v1)
  {
    vm::create<trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>>(v1, v2);
  }

  v3 = address;
  bzero(address, 0x400000uLL);
  return v3;
}

uint64_t debug::print(debug *this, const char *a2, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x400uLL, "Failed to map VM region of size %zu (%zu pages)\n", va);
  result = fputs(__str, *MEMORY[0x29EDCA610]);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

{
  va_start(va, a2);
  v5 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x400uLL, this, va);
  result = fputs(__str, *MEMORY[0x29EDCA610]);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

vm_address_t vm::create<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>()
{
  if (0x2404000uLL % *MEMORY[0x29EDCA6D0])
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
  }

  v0 = *MEMORY[0x29EDCA6B0];
  address = 0;
  v1 = vm_map(v0, &address, 0x2404000uLL, 0, 1660944385, 0, 0, 0, 3, 3, 1u);
  if (v1)
  {
    vm::create<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>(v1, v2);
  }

  v3 = address;
  bzero(address, 0x2404000uLL);
  return v3;
}

vm_address_t vm::create<trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>>()
{
  if (0x1000000uLL % *MEMORY[0x29EDCA6D0])
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
  }

  v0 = *MEMORY[0x29EDCA6B0];
  address = 0;
  v1 = vm_map(v0, &address, 0x1000000uLL, 0, 1660944385, 0, 0, 0, 3, 3, 1u);
  if (v1)
  {
    vm::create<trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>>(v1, v2);
  }

  v3 = address;
  bzero(address, 0x1000000uLL);
  return v3;
}

void libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc(size_t a1, uint64_t a2, size_t ptr, uint64_t a4, uint64_t a5, int a6)
{
  v8 = ptr;
  v9 = a1;
  v83[72] = *MEMORY[0x29EDCA608];
  if (libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::previousLogger)
  {
    libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::previousLogger(a1, a2, ptr, a4, a5, (a6 + 1));
  }

  if ((v9 & 8) != 0)
  {
    v11 = a6 + 2;
    if ((~v9 & 6) == 0)
    {
      if (!a5)
      {
        goto LABEL_4;
      }

      if (byte_2A14F0100 == 1)
      {
        if ((((a5 & 0xF00000000000000) == 0) & byte_2A14F00E8) != 0)
        {
          goto LABEL_85;
        }

        if (qword_2A14F00F0)
        {
          v12 = malloc_size(a5);
          if (v12 < qword_2A14F00F0)
          {
            goto LABEL_85;
          }

          v9 = v12;
          v13 = qword_2A14F00F8;
          if (!qword_2A14F00F8)
          {
LABEL_49:
            v24 = 1;
LABEL_63:
            if (v11 >= 7)
            {
              libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
            }

            v27 = collector;
            LODWORD(v80[0]) = 0;
            thread_stack_pcs();
            trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v27, &v83[v11 + 1], 0);
            v28 = qword_2A14F00E0;
            if ((v24 & 1) == 0)
            {
              v9 = malloc_size(a5);
            }

            if ((a5 & 0xF) != 0 || (a5 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
            {
              trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert();
            }

            v29 = (1540483477 * ((1540483477 * ((1540483477 * a5) ^ ((1540483477 * a5) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a5)) ^ ((1540483477 * HIDWORD(a5)) >> 24)));
            v30 = (1540483477 * (v29 ^ (v29 >> 13))) & 0x3FFFF ^ ((1540483477 * (v29 ^ (v29 >> 13))) >> 15);
            v31 = 0xFFFFLL;
            if (v9 < 0xFFFF)
            {
              v31 = v9;
            }

            _X0 = (v31 << 43) | ((a5 & 0xF0FFFFFFFFFFFFFFLL) >> 4) | (8 * a5) & 0x7800000000000000;
            v33 = (v28 + 16 * v30);
            v34 = *v33;
            do
            {
              _X5 = v33[1];
              __asm { CASP            X4, X5, X0, X1, [X8] }

              _ZF = _X4 == v34;
              v34 = _X4;
            }

            while (!_ZF);
            goto LABEL_85;
          }
        }

        else
        {
          if (!qword_2A14F00F8)
          {
            v24 = 0;
            goto LABEL_63;
          }

          v9 = malloc_size(a5);
          v13 = qword_2A14F00F8;
        }

        if (v9 > v13)
        {
          goto LABEL_85;
        }

        goto LABEL_49;
      }

      if ((((a5 & 0xF00000000000000) == 0) & byte_2A14F00E8) != 0)
      {
        goto LABEL_85;
      }

      if (qword_2A14F00F0)
      {
        v18 = malloc_size(a5);
        if (v18 < qword_2A14F00F0)
        {
          goto LABEL_85;
        }

        v9 = v18;
        v19 = qword_2A14F00F8;
        if (!qword_2A14F00F8)
        {
LABEL_53:
          v79 = 1;
LABEL_75:
          if (v11 >= 7)
          {
            libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
          }

          v41 = collector;
          LODWORD(v80[0]) = 0;
          thread_stack_pcs();
          trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v41, &v83[v11 + 1], 0);
          v42 = qword_2A14F00E0;
          if ((v79 & 1) == 0)
          {
            v9 = malloc_size(a5);
          }

          if ((a5 & 0xF) != 0 || (a5 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
          {
            trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert();
          }

          v43 = (1540483477 * ((1540483477 * ((1540483477 * a5) ^ ((1540483477 * a5) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a5)) ^ ((1540483477 * HIDWORD(a5)) >> 24)));
          v44 = (1540483477 * (v43 ^ (v43 >> 13))) & 0xFFFFF ^ ((1540483477 * (v43 ^ (v43 >> 13))) >> 15);
          v45 = 0xFFFFLL;
          if (v9 < 0xFFFF)
          {
            v45 = v9;
          }

          _X0 = (v45 << 43) | ((a5 & 0xF0FFFFFFFFFFFFFFLL) >> 4) | (8 * a5) & 0x7800000000000000;
          v47 = (v42 + 16 * v44);
          v48 = *v47;
          do
          {
            _X5 = v47[1];
            __asm { CASP            X4, X5, X0, X1, [X8] }

            _ZF = _X4 == v48;
            v48 = _X4;
          }

          while (!_ZF);
LABEL_85:
          if (!v8)
          {
            goto LABEL_4;
          }

          if (byte_2A14F0100 == 1)
          {
            if ((((v8 & 0xF00000000000000) == 0) & byte_2A14F00E8) != 0)
            {
              goto LABEL_4;
            }

            if (qword_2A14F00F0)
            {
              v51 = malloc_size(v8);
              if (v51 < qword_2A14F00F0)
              {
                goto LABEL_4;
              }

              v52 = qword_2A14F00F8;
              if (!qword_2A14F00F8)
              {
                goto LABEL_100;
              }
            }

            else
            {
              if (!qword_2A14F00F8)
              {
LABEL_100:
                if (v11 >= 7)
                {
                  libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
                }

                v55 = collector;
                LODWORD(v80[0]) = 0;
                thread_stack_pcs();
                trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v55, &v83[v11 + 1], 0);
                if ((v8 & 0xF) != 0 || (v8 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
                {
                  trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace();
                }

                _X2 = 0;
                _X3 = 0;
                __asm { CASP            X2, X3, X2, X3, [X10] }

                if (((_X2 >> 3) & 0xF00000000000000 | (16 * (_X2 & 0x7FFFFFFFFFFLL))) == v8)
                {
                  _X2 = _X2 | 0x8000000000000000;
                  v57 = (1540483477 * ((1540483477 * ((1540483477 * v8) ^ ((1540483477 * v8) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v8)) ^ ((1540483477 * HIDWORD(v8)) >> 24)));
                  v61 = (qword_2A14F00E0 + 16 * ((1540483477 * (v57 ^ (v57 >> 13))) & 0x3FFFF ^ ((1540483477 * (v57 ^ (v57 >> 13))) >> 15)));
                  v62 = *v61;
                  do
                  {
                    _X5 = v61[1];
                    __asm { CASP            X4, X5, X2, X3, [X8] }

                    _ZF = _X4 == v62;
                    v62 = _X4;
                  }

                  while (!_ZF);
                }

                goto LABEL_4;
              }

              v51 = malloc_size(v8);
              v52 = qword_2A14F00F8;
            }

            if (v51 > v52)
            {
              goto LABEL_4;
            }

            goto LABEL_100;
          }

          if ((((v8 & 0xF00000000000000) == 0) & byte_2A14F00E8) != 0)
          {
            goto LABEL_4;
          }

          if (qword_2A14F00F0)
          {
            v53 = malloc_size(v8);
            if (v53 < qword_2A14F00F0)
            {
              goto LABEL_4;
            }

            v54 = qword_2A14F00F8;
            if (!qword_2A14F00F8)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (!qword_2A14F00F8)
            {
LABEL_111:
              if (v11 >= 7)
              {
                libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
              }

              v65 = collector;
              LODWORD(v80[0]) = 0;
              thread_stack_pcs();
              trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v65, &v83[v11 + 1], 0);
              if ((v8 & 0xF) != 0 || (v8 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
              {
                trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace();
              }

              _X2 = 0;
              _X3 = 0;
              __asm { CASP            X2, X3, X2, X3, [X10] }

              if (((_X2 >> 3) & 0xF00000000000000 | (16 * (_X2 & 0x7FFFFFFFFFFLL))) == v8)
              {
                _X2 = _X2 | 0x8000000000000000;
                v67 = (1540483477 * ((1540483477 * ((1540483477 * v8) ^ ((1540483477 * v8) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v8)) ^ ((1540483477 * HIDWORD(v8)) >> 24)));
                v71 = (qword_2A14F00E0 + 16 * ((1540483477 * (v67 ^ (v67 >> 13))) & 0xFFFFF ^ ((1540483477 * (v67 ^ (v67 >> 13))) >> 15)));
                v72 = *v71;
                do
                {
                  _X5 = v71[1];
                  __asm { CASP            X4, X5, X2, X3, [X8] }

                  _ZF = _X4 == v72;
                  v72 = _X4;
                }

                while (!_ZF);
              }

              goto LABEL_4;
            }

            v53 = malloc_size(v8);
            v54 = qword_2A14F00F8;
          }

          if (v53 > v54)
          {
            goto LABEL_4;
          }

          goto LABEL_111;
        }
      }

      else
      {
        if (!qword_2A14F00F8)
        {
          v79 = 0;
          goto LABEL_75;
        }

        v9 = malloc_size(a5);
        v19 = qword_2A14F00F8;
      }

      if (v9 > v19)
      {
        goto LABEL_85;
      }

      goto LABEL_53;
    }

    if ((v9 & 2) == 0)
    {
      if ((v9 & 4) != 0 && v8)
      {
        if (byte_2A14F0100 == 1)
        {
          v80[0] = v8;
          v81 = 0;
          if ((trace::Collector<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>,&(malloc_size)>::shouldSkip<trace::Collector<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>,&(malloc_size)>::LazySize>(&collector, v8, v80) & 1) == 0)
          {
            if (v11 >= 7)
            {
              libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
            }

            v14 = collector;
            v82 = 0;
            thread_stack_pcs();
            if (v82 >= a6 + 4)
            {
              v15 = v82 - (a6 + 4);
            }

            else
            {
              v15 = 0;
            }

            trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v14, &v83[v11 + 1], v15);
            trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace(qword_2A14F00E0, v8);
          }
        }

        else
        {
          v80[0] = v8;
          v81 = 0;
          if ((trace::Collector<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>,&(malloc_size)>::shouldSkip<trace::Collector<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>,&(malloc_size)>::LazySize>(&collector, v8, v80) & 1) == 0)
          {
            if (v11 >= 7)
            {
              libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
            }

            v22 = collector;
            v82 = 0;
            thread_stack_pcs();
            if (v82 >= a6 + 4)
            {
              v23 = v82 - (a6 + 4);
            }

            else
            {
              v23 = 0;
            }

            trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v22, &v83[v11 + 1], v23);
            trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>::addDeallocTrace(qword_2A14F00E0, v8);
          }
        }
      }

      goto LABEL_4;
    }

    if (!a5)
    {
      goto LABEL_4;
    }

    if (byte_2A14F0100 == 1)
    {
      if ((((a5 & 0xF00000000000000) == 0) & byte_2A14F00E8) != 0)
      {
        goto LABEL_4;
      }

      if (qword_2A14F00F0)
      {
        v16 = malloc_size(a5);
        if (v16 < qword_2A14F00F0)
        {
          goto LABEL_4;
        }

        v8 = v16;
        v17 = qword_2A14F00F8;
        if (!qword_2A14F00F8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (!qword_2A14F00F8)
        {
          v25 = 0;
          goto LABEL_120;
        }

        v8 = malloc_size(a5);
        v17 = qword_2A14F00F8;
      }

      if (v8 > v17)
      {
        goto LABEL_4;
      }

LABEL_57:
      v25 = 1;
LABEL_120:
      if (v11 >= 7)
      {
        libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
      }

      v75 = collector;
      LODWORD(v80[0]) = 0;
      thread_stack_pcs();
      trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v75, &v83[v11 + 1], 0);
      v76 = qword_2A14F00E0;
      if ((v25 & 1) == 0)
      {
        v8 = malloc_size(a5);
      }

      trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert(v76, a5, v8);
      goto LABEL_4;
    }

    if ((((a5 & 0xF00000000000000) == 0) & byte_2A14F00E8) != 0)
    {
      goto LABEL_4;
    }

    if (qword_2A14F00F0)
    {
      v20 = malloc_size(a5);
      if (v20 < qword_2A14F00F0)
      {
        goto LABEL_4;
      }

      v8 = v20;
      v21 = qword_2A14F00F8;
      if (!qword_2A14F00F8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!qword_2A14F00F8)
      {
        v26 = 0;
        goto LABEL_125;
      }

      v8 = malloc_size(a5);
      v21 = qword_2A14F00F8;
    }

    if (v8 > v21)
    {
      goto LABEL_4;
    }

LABEL_61:
    v26 = 1;
LABEL_125:
    if (v11 >= 7)
    {
      libmalloc::MallocLogger<&(onAlloc(unsigned long,unsigned long,unsigned int)),&(onDealloc(unsigned long,unsigned int))>::loggerFunc();
    }

    v77 = collector;
    LODWORD(v80[0]) = 0;
    thread_stack_pcs();
    trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>::insertTrace(v77, &v83[v11 + 1], 0);
    v78 = qword_2A14F00E0;
    if ((v26 & 1) == 0)
    {
      v8 = malloc_size(a5);
    }

    trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>::insert(v78, a5, v8);
  }

LABEL_4:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0xF) != 0 || (a2 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
  {
    trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces();
  }

  v4 = *(a1 + 16);
  v11 = 0uLL;
  v5 = (1540483477 * ((1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a2)) ^ ((1540483477 * HIDWORD(a2)) >> 24)));
  v6 = (v4 + 16 * ((1540483477 * (v5 ^ (v5 >> 13))) & 0x3FFFF ^ ((1540483477 * (v5 ^ (v5 >> 13))) >> 15)));
  v7 = *v6;
  if (((*v6 >> 3) & 0xF00000000000000 | (16 * (*v6 & 0x7FFFFFFFFFFLL))) != a2)
  {
    return 0;
  }

  v8 = 0;
  v10[0] = a2;
  v10[1] = (v7 >> 43);
  LOBYTE(v11) = v7 < 0;
  *(&v11 + 4) = v6[1];
  if (a2 && (v7 >> 43))
  {
    trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces(a1, v10, a3, a4);
    return 1;
  }

  return v8;
}

void trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a2)
  {
    v4 = *(a2 + 8) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces();
  }

  v5 = *(a2 + 20);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 8 * v5);
  v8 = HIDWORD(v7);
  if (v5 == v7 && (v7 & 0xF8000000000000) == 0 && (HIDWORD(v7) - 0x1000000) >> 30 == 0)
  {
    v11 = -474048815;
    v12 = HIBYTE(v7);
    v13 = v6 + 0x80000;
    v14 = HIDWORD(v7);
    v15 = HIBYTE(v7);
    do
    {
      v16 = *(v13 + 8 * (v14 & 0x7FFFF) + 4);
      v17 = 1540483477 * *(v13 + 8 * (v14 & 0x7FFFF));
      v11 = (1540483477 * ((1540483477 * (v17 ^ HIBYTE(v17))) ^ (1540483477 * v11))) ^ (1540483477 * ((1540483477 * v16) ^ ((1540483477 * v16) >> 24)));
      ++v14;
      --v15;
    }

    while (v15);
    if (((1540483477 * (v11 ^ (v11 >> 13))) ^ ((1540483477 * (v11 ^ (v11 >> 13))) >> 15)) == v5)
    {
      if (v7 >> 57 > 6)
      {
        v18 = 0;
        if ((~HIDWORD(v7) & 0x7FFFFu) < ((v12 - 1) & 0x7FFFFu) || (v12 - 1) >> 19)
        {
          goto LABEL_18;
        }

        if (a3 - 524264 - (8 * (v8 & 0x7FFFF) + v6) >= 0x20)
        {
          v18 = HIBYTE(v7) & 0xFC;
          v41 = (a3 + 40);
          v42 = v18;
          v43 = v8;
          do
          {
            v44 = (v13 + 8 * (v43 & 0x7FFFF));
            v45 = v44[1];
            *(v41 - 1) = *v44;
            *v41 = v45;
            v43 += 4;
            v41 += 2;
            v42 -= 4;
          }

          while (v42);
          if (v12 == v18)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }
      }

      v18 = 0;
LABEL_18:
      v19 = v12 - v18;
      v20 = (a3 + 8 * v18 + 24);
      v21 = v18 + v8;
      do
      {
        *v20++ = *(v13 + 8 * (v21++ & 0x7FFFF));
        --v19;
      }

      while (v19);
LABEL_20:
      v22 = BYTE3(v8);
      goto LABEL_22;
    }
  }

  v22 = 0;
LABEL_22:
  *(a3 + 16) = v22;
  if (*(a2 + 16) == 1)
  {
    v23 = *(a2 + 24);
    *a4 = 0;
    a4[1] = 0;
    v24 = *(a1 + 8);
    v25 = *(v24 + 8 * v23);
    v26 = HIDWORD(v25);
    if (v23 != v25 || (v25 & 0xF8000000000000) != 0 || (HIDWORD(v25) - 0x1000000) >> 30 != 0)
    {
      goto LABEL_42;
    }

    v29 = -474048815;
    v30 = HIBYTE(v25);
    v31 = v24 + 0x80000;
    v32 = HIDWORD(v25);
    v33 = HIBYTE(v25);
    do
    {
      v34 = *(v31 + 8 * (v32 & 0x7FFFF) + 4);
      v35 = 1540483477 * *(v31 + 8 * (v32 & 0x7FFFF));
      v29 = (1540483477 * ((1540483477 * (v35 ^ HIBYTE(v35))) ^ (1540483477 * v29))) ^ (1540483477 * ((1540483477 * v34) ^ ((1540483477 * v34) >> 24)));
      ++v32;
      --v33;
    }

    while (v33);
    if (((1540483477 * (v29 ^ (v29 >> 13))) ^ ((1540483477 * (v29 ^ (v29 >> 13))) >> 15)) != v23)
    {
LABEL_42:
      v40 = 0;
      goto LABEL_43;
    }

    if (v25 >> 57 > 6)
    {
      v36 = 0;
      if ((~HIDWORD(v25) & 0x7FFFFu) < ((v30 - 1) & 0x7FFFFu) || (v30 - 1) >> 19)
      {
        goto LABEL_36;
      }

      if (a4 + -v24 + -8 * (v26 & 0x7FFFF) - 524264 >= 0x20)
      {
        v36 = HIBYTE(v25) & 0xFC;
        v46 = a4 + 5;
        v47 = v36;
        v48 = v26;
        do
        {
          v49 = (v31 + 8 * (v48 & 0x7FFFF));
          v50 = v49[1];
          *(v46 - 1) = *v49;
          *v46 = v50;
          v48 += 4;
          v46 += 2;
          v47 -= 4;
        }

        while (v47);
        if (v30 == v36)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }
    }

    v36 = 0;
LABEL_36:
    v37 = v30 - v36;
    v38 = &a4[v36 + 3];
    v39 = v36 + v26;
    do
    {
      *v38++ = *(v31 + 8 * (v39++ & 0x7FFFF));
      --v37;
    }

    while (v37);
LABEL_38:
    v40 = BYTE3(v26);
LABEL_43:
    *(a4 + 4) = v40;
    return;
  }

  bzero(a4, 0x218uLL);
}

uint64_t trace::Extractor<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<1048576ul,&hash::Murmur2::hashPointer>>::retrieveTraces(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0xF) != 0 || (a2 & 0xF0FFFFFFFFFFFFFFLL) >= 0xFC0000001)
  {
    trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces();
  }

  v4 = *(a1 + 16);
  v11 = 0uLL;
  v5 = (1540483477 * ((1540483477 * ((1540483477 * a2) ^ ((1540483477 * a2) >> 24))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(a2)) ^ ((1540483477 * HIDWORD(a2)) >> 24)));
  v6 = (v4 + 16 * ((1540483477 * (v5 ^ (v5 >> 13))) & 0xFFFFF ^ ((1540483477 * (v5 ^ (v5 >> 13))) >> 15)));
  v7 = *v6;
  if (((*v6 >> 3) & 0xF00000000000000 | (16 * (*v6 & 0x7FFFFFFFFFFLL))) != a2)
  {
    return 0;
  }

  v8 = 0;
  v10[0] = a2;
  v10[1] = (v7 >> 43);
  LOBYTE(v11) = v7 < 0;
  *(&v11 + 4) = v6[1];
  if (a2 && (v7 >> 43))
  {
    trace::Extractor<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<1048576ul,&hash::Murmur2::hashPointer>>::retrieveTraces(a1, v10, a3, a4);
    return 1;
  }

  return v8;
}

void trace::Extractor<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<1048576ul,&hash::Murmur2::hashPointer>>::retrieveTraces(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a2)
  {
    v4 = *(a2 + 8) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces();
  }

  v5 = *(a2 + 20);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 8 * (*&v5 & 0x7FFFFLL));
  v8 = HIDWORD(v7);
  if (v5 == v7 && (v7 & 0xC0000000000000) == 0 && (HIDWORD(v7) - 0x1000000) >> 30 == 0)
  {
    v11 = -474048815;
    v12 = HIBYTE(v7);
    v13 = v6 + 0x400000;
    v14 = HIDWORD(v7);
    v15 = HIBYTE(v7);
    do
    {
      v16 = *(v13 + 8 * (v14 & 0x3FFFFF) + 4);
      v17 = 1540483477 * *(v13 + 8 * (v14 & 0x3FFFFF));
      v11 = (1540483477 * ((1540483477 * (v17 ^ HIBYTE(v17))) ^ (1540483477 * v11))) ^ (1540483477 * ((1540483477 * v16) ^ ((1540483477 * v16) >> 24)));
      ++v14;
      --v15;
    }

    while (v15);
    if (((1540483477 * (v11 ^ (v11 >> 13))) ^ ((1540483477 * (v11 ^ (v11 >> 13))) >> 15)) == v5)
    {
      if (v7 >> 57 > 6)
      {
        v18 = 0;
        if ((~HIDWORD(v7) & 0x3FFFFFu) < ((v12 - 1) & 0x3FFFFFu) || (v12 - 1) >> 22)
        {
          goto LABEL_18;
        }

        if (a3 - 4194280 - (8 * (v8 & 0x3FFFFF) + v6) >= 0x20)
        {
          v18 = HIBYTE(v7) & 0xFC;
          v41 = (a3 + 40);
          v42 = v18;
          v43 = v8;
          do
          {
            v44 = (v13 + 8 * (v43 & 0x3FFFFF));
            v45 = v44[1];
            *(v41 - 1) = *v44;
            *v41 = v45;
            v43 += 4;
            v41 += 2;
            v42 -= 4;
          }

          while (v42);
          if (v12 == v18)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }
      }

      v18 = 0;
LABEL_18:
      v19 = v12 - v18;
      v20 = (a3 + 8 * v18 + 24);
      v21 = v18 + v8;
      do
      {
        *v20++ = *(v13 + 8 * (v21++ & 0x3FFFFF));
        --v19;
      }

      while (v19);
LABEL_20:
      v22 = BYTE3(v8);
      goto LABEL_22;
    }
  }

  v22 = 0;
LABEL_22:
  *(a3 + 16) = v22;
  if (*(a2 + 16) == 1)
  {
    v23 = *(a2 + 24);
    *a4 = 0;
    a4[1] = 0;
    v24 = *(a1 + 8);
    v25 = *(v24 + 8 * (*&v23 & 0x7FFFFLL));
    v26 = HIDWORD(v25);
    if (v23 != v25 || (v25 & 0xC0000000000000) != 0 || (HIDWORD(v25) - 0x1000000) >> 30 != 0)
    {
      goto LABEL_42;
    }

    v29 = -474048815;
    v30 = HIBYTE(v25);
    v31 = v24 + 0x400000;
    v32 = HIDWORD(v25);
    v33 = HIBYTE(v25);
    do
    {
      v34 = *(v31 + 8 * (v32 & 0x3FFFFF) + 4);
      v35 = 1540483477 * *(v31 + 8 * (v32 & 0x3FFFFF));
      v29 = (1540483477 * ((1540483477 * (v35 ^ HIBYTE(v35))) ^ (1540483477 * v29))) ^ (1540483477 * ((1540483477 * v34) ^ ((1540483477 * v34) >> 24)));
      ++v32;
      --v33;
    }

    while (v33);
    if (((1540483477 * (v29 ^ (v29 >> 13))) ^ ((1540483477 * (v29 ^ (v29 >> 13))) >> 15)) != v23)
    {
LABEL_42:
      v40 = 0;
      goto LABEL_43;
    }

    if (v25 >> 57 > 6)
    {
      v36 = 0;
      if ((~HIDWORD(v25) & 0x3FFFFFu) < ((v30 - 1) & 0x3FFFFFu) || (v30 - 1) >> 22)
      {
        goto LABEL_36;
      }

      if (a4 + -v24 + -8 * (v26 & 0x3FFFFF) - 4194280 >= 0x20)
      {
        v36 = HIBYTE(v25) & 0xFC;
        v46 = a4 + 5;
        v47 = v36;
        v48 = v26;
        do
        {
          v49 = (v31 + 8 * (v48 & 0x3FFFFF));
          v50 = v49[1];
          *(v46 - 1) = *v49;
          *v46 = v50;
          v48 += 4;
          v46 += 2;
          v47 -= 4;
        }

        while (v47);
        if (v30 == v36)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }
    }

    v36 = 0;
LABEL_36:
    v37 = v30 - v36;
    v38 = &a4[v36 + 3];
    v39 = v36 + v26;
    do
    {
      *v38++ = *(v31 + 8 * (v39++ & 0x3FFFFF));
      --v37;
    }

    while (v37);
LABEL_38:
    v40 = BYTE3(v26);
LABEL_43:
    *(a4 + 4) = v40;
    return;
  }

  bzero(a4, 0x218uLL);
}

__n128 trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::diagnoseFault@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 & 0xFFFFFFFFFFFFFFF0;
  v4 = -1122068144 * (a2 >> 4);
  v5 = -16;
  v6 = a2 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    if ((v6 & 0xF0FFFFFFFFFFFFF0) >= 0xFC0000001)
    {
      break;
    }

    v7 = *(a1 + 16);
    v8 = (1540483477 * ((1540483477 * (v4 ^ HIBYTE(v4))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v6)) ^ ((1540483477 * HIDWORD(v6)) >> 24)));
    v9 = (1540483477 * (v8 ^ (v8 >> 13))) & 0x3FFFF ^ ((1540483477 * (v8 ^ (v8 >> 13))) >> 15);
    v10 = *(v7 + 16 * v9);
    v11 = (v10 >> 43);
    v13 = v6 != ((v10 >> 3) & 0xF00000000000000 | (16 * (v10 & 0x7FFFFFFFFFFLL))) || v6 == 0 || v11 == 0;
    if (!v13 && v6 <= a2)
    {
      v14 = v6 + v11 - 1;
      v15 = a2 >= v14;
      v16 = a2 - v14;
      if (!v15)
      {
        v16 = 0;
      }

      if (!v16)
      {
        v17 = v10 >> 63;
        if (v17)
        {
          *a3 = v6;
          *(a3 + 8) = v11;
          *(a3 + 16) = v17;
          *(a3 + 17) = 0;
          *(a3 + 19) = 0;
          result.n128_u64[0] = *(v7 + 16 * v9 + 8);
          *(a3 + 20) = result.n128_u64[0];
          *(a3 + 28) = 0;
          return result;
        }
      }
    }

    v6 -= 16;
    v4 += 1122068144;
    v5 += 16;
  }

  while (v5 < 0x3FF1);
  v19 = -1122068144 * (a2 >> 4);
  v20 = -16;
  v21 = a2 & 0xFFFFFFFFFFFFFFF0;
  while (1)
  {
    if ((v21 & 0xF0FFFFFFFFFFFFF0) >= 0xFC0000001)
    {
LABEL_35:
      v30 = 0;
      v21 = 0;
      v56 = 0u;
      v57 = 0u;
      goto LABEL_36;
    }

    v26 = *(a1 + 16);
    v27 = (1540483477 * ((1540483477 * (v19 ^ HIBYTE(v19))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v21)) ^ ((1540483477 * HIDWORD(v21)) >> 24)));
    v28 = (1540483477 * (v27 ^ (v27 >> 13))) & 0x3FFFF ^ ((1540483477 * (v27 ^ (v27 >> 13))) >> 15);
    v29 = *(v26 + 16 * v28);
    v30 = (v29 >> 43);
    v31 = v21 != ((v29 >> 3) & 0xF00000000000000 | (16 * (v29 & 0x7FFFFFFFFFFLL))) || v21 == 0;
    if (!v31 && v30 != 0)
    {
      if (v21 <= a2)
      {
        v22 = v21 + v30 - 1;
        v15 = a2 >= v22;
        v23 = a2 - v22;
        if (!v15)
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = v21 - a2;
      }

      v24 = v29 >> 63;
      if (v23 && v24 == 0)
      {
        break;
      }
    }

    v21 -= 16;
    v19 += 1122068144;
    v20 += 16;
    if (v20 >= 0x3FF1)
    {
      goto LABEL_35;
    }
  }

  *&v56 = v21;
  *(&v56 + 1) = v30;
  LOBYTE(v57) = v24;
  *(&v57 + 1) = 0;
  BYTE3(v57) = 0;
  *(&v57 + 4) = *(v26 + 16 * v28 + 8);
  HIDWORD(v57) = 0;
LABEL_36:
  v33 = -1122068144 * (a2 >> 4);
  v34 = -16;
  while (1)
  {
    if ((v3 & 0xF0FFFFFFFFFFFFF0) >= 0xFC0000001)
    {
LABEL_54:
      v43 = 0;
      v3 = 0;
      v54 = 0u;
      v55 = 0u;
      v46 = &v54;
      if (!v21)
      {
        goto LABEL_70;
      }

      goto LABEL_55;
    }

    v39 = *(a1 + 16);
    v40 = (1540483477 * ((1540483477 * (v33 ^ HIBYTE(v33))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v3)) ^ ((1540483477 * HIDWORD(v3)) >> 24)));
    v41 = (1540483477 * (v40 ^ (v40 >> 13))) & 0x3FFFF ^ ((1540483477 * (v40 ^ (v40 >> 13))) >> 15);
    v42 = *(v39 + 16 * v41);
    v43 = (v42 >> 43);
    v44 = v3 != ((v42 >> 3) & 0xF00000000000000 | (16 * (v42 & 0x7FFFFFFFFFFLL))) || v3 == 0;
    if (!v44 && v43 != 0)
    {
      if (v3 <= a2)
      {
        v35 = v3 + v43 - 1;
        v15 = a2 >= v35;
        v36 = a2 - v35;
        if (!v15)
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = v3 - a2;
      }

      v37 = v42 >> 63;
      if (v36 && v37 == 0)
      {
        break;
      }
    }

    v3 += 16;
    v33 -= 1122068144;
    v34 += 16;
    if (v34 >= 0x3FF1)
    {
      goto LABEL_54;
    }
  }

  *&v54 = v3;
  *(&v54 + 1) = v43;
  LOBYTE(v55) = v37;
  *(&v55 + 1) = 0;
  BYTE3(v55) = 0;
  *(&v55 + 4) = *(v39 + 16 * v41 + 8);
  HIDWORD(v55) = 0;
  v46 = &v54;
  if (!v21)
  {
    goto LABEL_70;
  }

LABEL_55:
  if (v30)
  {
    v46 = &v56;
    v47 = v21 + v30 - 1;
    v15 = a2 >= v47;
    v48 = a2 - v47;
    if (!v15)
    {
      v48 = 0;
    }

    if (v21 > a2)
    {
      v48 = v21 - a2;
    }

    v49 = v3 + v43 - 1;
    v15 = a2 >= v49;
    v50 = a2 - v49;
    if (!v15)
    {
      v50 = 0;
    }

    if (v3 > a2)
    {
      v50 = v3 - a2;
    }

    v51 = v48 > v50;
    v52 = &v54;
    if (!v51)
    {
      v52 = &v56;
    }

    if (!v43)
    {
      v52 = &v56;
    }

    if (v3)
    {
      v46 = v52;
    }
  }

LABEL_70:
  result = *v46;
  v53 = v46[1];
  *a3 = *v46;
  *(a3 + 16) = v53;
  return result;
}

__n128 trace::Extractor<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<1048576ul,&hash::Murmur2::hashPointer>>::diagnoseFault@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 & 0xFFFFFFFFFFFFFFF0;
  v4 = -1122068144 * (a2 >> 4);
  v5 = -16;
  v6 = a2 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    if ((v6 & 0xF0FFFFFFFFFFFFF0) >= 0xFC0000001)
    {
      break;
    }

    v7 = *(a1 + 16);
    v8 = (1540483477 * ((1540483477 * (v4 ^ HIBYTE(v4))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v6)) ^ ((1540483477 * HIDWORD(v6)) >> 24)));
    v9 = (1540483477 * (v8 ^ (v8 >> 13))) & 0xFFFFF ^ ((1540483477 * (v8 ^ (v8 >> 13))) >> 15);
    v10 = *(v7 + 16 * v9);
    v11 = (v10 >> 43);
    v13 = v6 != ((v10 >> 3) & 0xF00000000000000 | (16 * (v10 & 0x7FFFFFFFFFFLL))) || v6 == 0 || v11 == 0;
    if (!v13 && v6 <= a2)
    {
      v14 = v6 + v11 - 1;
      v15 = a2 >= v14;
      v16 = a2 - v14;
      if (!v15)
      {
        v16 = 0;
      }

      if (!v16)
      {
        v17 = v10 >> 63;
        if (v17)
        {
          *a3 = v6;
          *(a3 + 8) = v11;
          *(a3 + 16) = v17;
          *(a3 + 17) = 0;
          *(a3 + 19) = 0;
          result.n128_u64[0] = *(v7 + 16 * v9 + 8);
          *(a3 + 20) = result.n128_u64[0];
          *(a3 + 28) = 0;
          return result;
        }
      }
    }

    v6 -= 16;
    v4 += 1122068144;
    v5 += 16;
  }

  while (v5 < 0x3FF1);
  v19 = -1122068144 * (a2 >> 4);
  v20 = -16;
  v21 = a2 & 0xFFFFFFFFFFFFFFF0;
  while (1)
  {
    if ((v21 & 0xF0FFFFFFFFFFFFF0) >= 0xFC0000001)
    {
LABEL_35:
      v30 = 0;
      v21 = 0;
      v56 = 0u;
      v57 = 0u;
      goto LABEL_36;
    }

    v26 = *(a1 + 16);
    v27 = (1540483477 * ((1540483477 * (v19 ^ HIBYTE(v19))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v21)) ^ ((1540483477 * HIDWORD(v21)) >> 24)));
    v28 = (1540483477 * (v27 ^ (v27 >> 13))) & 0xFFFFF ^ ((1540483477 * (v27 ^ (v27 >> 13))) >> 15);
    v29 = *(v26 + 16 * v28);
    v30 = (v29 >> 43);
    v31 = v21 != ((v29 >> 3) & 0xF00000000000000 | (16 * (v29 & 0x7FFFFFFFFFFLL))) || v21 == 0;
    if (!v31 && v30 != 0)
    {
      if (v21 <= a2)
      {
        v22 = v21 + v30 - 1;
        v15 = a2 >= v22;
        v23 = a2 - v22;
        if (!v15)
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = v21 - a2;
      }

      v24 = v29 >> 63;
      if (v23 && v24 == 0)
      {
        break;
      }
    }

    v21 -= 16;
    v19 += 1122068144;
    v20 += 16;
    if (v20 >= 0x3FF1)
    {
      goto LABEL_35;
    }
  }

  *&v56 = v21;
  *(&v56 + 1) = v30;
  LOBYTE(v57) = v24;
  *(&v57 + 1) = 0;
  BYTE3(v57) = 0;
  *(&v57 + 4) = *(v26 + 16 * v28 + 8);
  HIDWORD(v57) = 0;
LABEL_36:
  v33 = -1122068144 * (a2 >> 4);
  v34 = -16;
  while (1)
  {
    if ((v3 & 0xF0FFFFFFFFFFFFF0) >= 0xFC0000001)
    {
LABEL_54:
      v43 = 0;
      v3 = 0;
      v54 = 0u;
      v55 = 0u;
      v46 = &v54;
      if (!v21)
      {
        goto LABEL_70;
      }

      goto LABEL_55;
    }

    v39 = *(a1 + 16);
    v40 = (1540483477 * ((1540483477 * (v33 ^ HIBYTE(v33))) ^ 0x70D300A5)) ^ (1540483477 * ((1540483477 * HIDWORD(v3)) ^ ((1540483477 * HIDWORD(v3)) >> 24)));
    v41 = (1540483477 * (v40 ^ (v40 >> 13))) & 0xFFFFF ^ ((1540483477 * (v40 ^ (v40 >> 13))) >> 15);
    v42 = *(v39 + 16 * v41);
    v43 = (v42 >> 43);
    v44 = v3 != ((v42 >> 3) & 0xF00000000000000 | (16 * (v42 & 0x7FFFFFFFFFFLL))) || v3 == 0;
    if (!v44 && v43 != 0)
    {
      if (v3 <= a2)
      {
        v35 = v3 + v43 - 1;
        v15 = a2 >= v35;
        v36 = a2 - v35;
        if (!v15)
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = v3 - a2;
      }

      v37 = v42 >> 63;
      if (v36 && v37 == 0)
      {
        break;
      }
    }

    v3 += 16;
    v33 -= 1122068144;
    v34 += 16;
    if (v34 >= 0x3FF1)
    {
      goto LABEL_54;
    }
  }

  *&v54 = v3;
  *(&v54 + 1) = v43;
  LOBYTE(v55) = v37;
  *(&v55 + 1) = 0;
  BYTE3(v55) = 0;
  *(&v55 + 4) = *(v39 + 16 * v41 + 8);
  HIDWORD(v55) = 0;
  v46 = &v54;
  if (!v21)
  {
    goto LABEL_70;
  }

LABEL_55:
  if (v30)
  {
    v46 = &v56;
    v47 = v21 + v30 - 1;
    v15 = a2 >= v47;
    v48 = a2 - v47;
    if (!v15)
    {
      v48 = 0;
    }

    if (v21 > a2)
    {
      v48 = v21 - a2;
    }

    v49 = v3 + v43 - 1;
    v15 = a2 >= v49;
    v50 = a2 - v49;
    if (!v15)
    {
      v50 = 0;
    }

    if (v3 > a2)
    {
      v50 = v3 - a2;
    }

    v51 = v48 > v50;
    v52 = &v54;
    if (!v51)
    {
      v52 = &v56;
    }

    if (!v43)
    {
      v52 = &v56;
    }

    if (v3)
    {
      v46 = v52;
    }
  }

LABEL_70:
  result = *v46;
  v53 = v46[1];
  *a3 = *v46;
  *(a3 + 16) = v53;
  return result;
}

uint64_t OUTLINED_FUNCTION_0(debug *a1, const char *a2)
{

  return debug::print(a1, a2);
}

uint64_t config::env::Parser::getSetting<39ul,BOOL,1ul>(uint64_t *a1, unsigned __int8 *a2, char a3, char *a4)
{
  v6 = config::env::Parser::getVal<39ul>(a1, a2);
  if (v6)
  {
    v7 = *(a4 + 1);
    v8 = *v7;
    if (*v7)
    {
      v9 = v7 + 1;
      do
      {
        if (v8 != *v6)
        {
          break;
        }

        ++v6;
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    if (v8 == *v6)
    {
      a3 = *a4;
    }
  }

  return a3 & 1;
}

uint64_t config::env::Parser::getTrialVal<34ul>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v4 = 1;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        if (v3 != v6)
        {
          break;
        }

        ++v5;
        v3 = a1[v4++];
        if (!v3)
        {
          v6 = *v5;
          break;
        }
      }

      if (!v6)
      {
        break;
      }

      v7 = *++a1;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  if (a1 && a1[33] == 61)
  {
    LOBYTE(v8) = a1[34];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = 35;
    v10 = a1[34];
    do
    {
      if (v10 == 32)
      {
        break;
      }

      v10 = a1[v9++];
    }

    while (v10);
    v11 = v9 - 1;
    v12 = v9 - 35;
    if (v12 > 0x7F)
    {
      return 0;
    }

    if (v11 != 34)
    {
      v15 = 0;
      do
      {
        *(a3 + v15) = v8;
        v14 = v15 + 1;
        v8 = a1[v15 + 35];
      }

      while (++v15 < v12 && v8 != 0);
    }

    else
    {
LABEL_20:
      v14 = 0;
    }

    *(a3 + v14) = 0;
    return a3;
  }

  return 0;
}

uint64_t config::env::Parser::getTrialVal<30ul>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v4 = 1;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        if (v3 != v6)
        {
          break;
        }

        ++v5;
        v3 = a1[v4++];
        if (!v3)
        {
          v6 = *v5;
          break;
        }
      }

      if (!v6)
      {
        break;
      }

      v7 = *++a1;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  if (a1 && a1[29] == 61)
  {
    LOBYTE(v8) = a1[30];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = 31;
    v10 = a1[30];
    do
    {
      if (v10 == 32)
      {
        break;
      }

      v10 = a1[v9++];
    }

    while (v10);
    v11 = v9 - 1;
    v12 = v9 - 31;
    if (v12 > 0x7F)
    {
      return 0;
    }

    if (v11 != 30)
    {
      v15 = 0;
      do
      {
        *(a3 + v15) = v8;
        v14 = v15 + 1;
        v8 = a1[v15 + 31];
      }

      while (++v15 < v12 && v8 != 0);
    }

    else
    {
LABEL_20:
      v14 = 0;
    }

    *(a3 + v14) = 0;
    return a3;
  }

  return 0;
}

uint64_t config::env::Parser::getTrialVal<19ul>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v4 = 1;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        if (v3 != v6)
        {
          break;
        }

        ++v5;
        v3 = a1[v4++];
        if (!v3)
        {
          v6 = *v5;
          break;
        }
      }

      if (!v6)
      {
        break;
      }

      v7 = *++a1;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  if (a1 && a1[18] == 61)
  {
    LOBYTE(v8) = a1[19];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = 20;
    v10 = a1[19];
    do
    {
      if (v10 == 32)
      {
        break;
      }

      v10 = a1[v9++];
    }

    while (v10);
    v11 = v9 - 1;
    v12 = v9 - 20;
    if (v12 > 0x7F)
    {
      return 0;
    }

    if (v11 != 19)
    {
      v15 = 0;
      do
      {
        *(a3 + v15) = v8;
        v14 = v15 + 1;
        v8 = a1[v15 + 20];
      }

      while (++v15 < v12 && v8 != 0);
    }

    else
    {
LABEL_20:
      v14 = 0;
    }

    *(a3 + v14) = 0;
    return a3;
  }

  return 0;
}

uint64_t config::env::Parser::getTrialVal<27ul>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v4 = 1;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        if (v3 != v6)
        {
          break;
        }

        ++v5;
        v3 = a1[v4++];
        if (!v3)
        {
          v6 = *v5;
          break;
        }
      }

      if (!v6)
      {
        break;
      }

      v7 = *++a1;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  if (a1 && a1[26] == 61)
  {
    LOBYTE(v8) = a1[27];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = 28;
    v10 = a1[27];
    do
    {
      if (v10 == 32)
      {
        break;
      }

      v10 = a1[v9++];
    }

    while (v10);
    v11 = v9 - 1;
    v12 = v9 - 28;
    if (v12 > 0x7F)
    {
      return 0;
    }

    if (v11 != 27)
    {
      v15 = 0;
      do
      {
        *(a3 + v15) = v8;
        v14 = v15 + 1;
        v8 = a1[v15 + 28];
      }

      while (++v15 < v12 && v8 != 0);
    }

    else
    {
LABEL_20:
      v14 = 0;
    }

    *(a3 + v14) = 0;
    return a3;
  }

  return 0;
}

unsigned __int8 *config::env::Parser::getVal<39ul>(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  result = _simple_getenv();
  if (!result)
  {
    v6 = *a1;
    result = _simple_getenv();
    if (result)
    {

      return config::env::Parser::getTrialVal<39ul>(result, a2, (a1 + 1));
    }
  }

  return result;
}

uint64_t config::env::Parser::getTrialVal<39ul>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v4 = 1;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        if (v3 != v6)
        {
          break;
        }

        ++v5;
        v3 = a1[v4++];
        if (!v3)
        {
          v6 = *v5;
          break;
        }
      }

      if (!v6)
      {
        break;
      }

      v7 = *++a1;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  if (a1 && a1[38] == 61)
  {
    LOBYTE(v8) = a1[39];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = 40;
    v10 = a1[39];
    do
    {
      if (v10 == 32)
      {
        break;
      }

      v10 = a1[v9++];
    }

    while (v10);
    v11 = v9 - 1;
    v12 = v9 - 40;
    if (v12 > 0x7F)
    {
      return 0;
    }

    if (v11 != 39)
    {
      v15 = 0;
      do
      {
        *(a3 + v15) = v8;
        v14 = v15 + 1;
        v8 = a1[v15 + 40];
      }

      while (++v15 < v12 && v8 != 0);
    }

    else
    {
LABEL_20:
      v14 = 0;
    }

    *(a3 + v14) = 0;
    return a3;
  }

  return 0;
}

uint64_t config::env::Parser::getTrialVal<18ul>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }

    while (1)
    {
      v4 = 1;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        if (v3 != v6)
        {
          break;
        }

        ++v5;
        v3 = a1[v4++];
        if (!v3)
        {
          v6 = *v5;
          break;
        }
      }

      if (!v6)
      {
        break;
      }

      v7 = *++a1;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  if (a1 && a1[17] == 61)
  {
    LOBYTE(v8) = a1[18];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = 19;
    v10 = a1[18];
    do
    {
      if (v10 == 32)
      {
        break;
      }

      v10 = a1[v9++];
    }

    while (v10);
    v11 = v9 - 1;
    v12 = v9 - 19;
    if (v12 > 0x7F)
    {
      return 0;
    }

    if (v11 != 18)
    {
      v15 = 0;
      do
      {
        *(a3 + v15) = v8;
        v14 = v15 + 1;
        v8 = a1[v15 + 19];
      }

      while (++v15 < v12 && v8 != 0);
    }

    else
    {
LABEL_20:
      v14 = 0;
    }

    *(a3 + v14) = 0;
    return a3;
  }

  return 0;
}

unsigned __int8 **config::env::Parser::unsetEnv<39ul>(unsigned __int8 **result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    while (1)
    {
      v4 = *v2;
      v5 = a2;
      if (*v2)
      {
        v6 = v2 + 1;
        v5 = a2;
        while (1)
        {
          v7 = *v5;
          if (v4 != v7)
          {
            break;
          }

          ++v5;
          v8 = *v6++;
          v4 = v8;
          if (!v8)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = *v5;
      }

      if (!v7 && v2[38] == 61)
      {
        v9 = result[1];
        ++result;
        v2 = v9;
        if (v9)
        {
          continue;
        }
      }

      *v3++ = v2;
      v10 = result[1];
      ++result;
      v2 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v3 = result;
  }

  *v3 = 0;
  return result;
}

void asan::initGlobalVars(uint64_t a1, uint64_t a2)
{
  asan::_shadow = a1;
  asan::_globals = a2;
  _dyld_register_func_for_add_image(asan::initGlobalVars(Shadow *,asan::GlobalsRegistry *)::$_0::__invoke);
}

uint64_t asan::GlobalsRegistryImpl::registerSection(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= 0x7FF)
  {
    asan::GlobalsRegistryImpl::registerSection();
  }

  v4 = result + 16 * v3;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  atomic_fetch_add_explicit((result + 8), 1uLL, memory_order_release);
  return result;
}

unint64_t asan::GlobalsRegistryImpl::getGlobalVar(atomic_ullong *this, unint64_t a2)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    v3 = &this[2 * explicit];
    while (1)
    {
      explicit = this[2];
      v4 = this[3];
      this += 2;
      if (v4)
      {
        break;
      }

LABEL_8:
      if (this == v3)
      {
        return 0;
      }
    }

    v5 = v4 << 6;
    while (*explicit > a2 || *(explicit + 16) + *explicit <= a2)
    {
      explicit += 64;
      v5 -= 64;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  return explicit;
}

vm_address_t vm::create<asan::GlobalsRegistryImpl>()
{
  if (0x8000uLL % *MEMORY[0x29EDCA6D0])
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
  }

  v0 = *MEMORY[0x29EDCA6B0];
  address = 0;
  v1 = vm_map(v0, &address, 0x8000uLL, 0, 1660944385, 0, 0, 0, 3, 3, 1u);
  if (v1)
  {
    vm::create<asan::GlobalsRegistryImpl>(v1, v2);
  }

  v3 = address;
  *address = &unk_2A2020B20;
  *(v3 + 8) = 0;
  bzero((v3 + 16), 0x7FF0uLL);
  return v3;
}

uint8_t *asan::initGlobalVars(Shadow *,asan::GlobalsRegistry *)::$_0::__invoke(const mach_header_64 *a1)
{
  size = 0;
  result = getsectiondata(a1, "__DATA", "__asan_globals", &size);
  v2 = size;
  if ((size & 0x3F) != 0)
  {
    asan::initGlobalVars(Shadow *,asan::GlobalsRegistry *)::$_0::__invoke();
  }

  if (size)
  {
    v3 = result;
    v4 = size >> 6;
    v5 = result;
    do
    {
      (*(*asan::_shadow + 16))(asan::_shadow, v5);
      v5 += 64;
      v2 -= 64;
    }

    while (v2);
    return (**asan::_globals)(asan::_globals, v3, v4);
  }

  return result;
}

uint64_t __asan_abi_load_n(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    result = (*(*_shadow + 88))(_shadow, a1, a2);
    if (result)
    {
      v10 = 0;
      memset(v8, 0, sizeof(v8));
      v9[0] = v2;
      v9[1] = &vars0;
      v9[2] = &v10;
      v6[0] = a1;
      v6[1] = a2;
      v7 = 0;
      asan::reportError(v9, v6);
    }
  }

  return result;
}

uint64_t __asan_abi_region_is_poisoned(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 88))(_shadow, a1, a2);
  }

  return result;
}

uint64_t __asan_abi_exp_load_n(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 88))(_shadow, a1, a2);
  }

  return result;
}

uint64_t __asan_abi_store_n(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    result = (*(*_shadow + 88))(_shadow, a1, a2);
    if (result)
    {
      v10 = 0;
      memset(v8, 0, sizeof(v8));
      v9[0] = v2;
      v9[1] = &vars0;
      v9[2] = &v10;
      v6[0] = a1;
      v6[1] = a2;
      v7 = 1;
      asan::reportError(v9, v6);
    }
  }

  return result;
}

uint64_t __asan_abi_exp_store_n(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 88))(_shadow, a1, a2);
  }

  return result;
}

uint64_t __asan_abi_address_is_poisoned(uint64_t a1)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 64))(_shadow, a1);
  }

  return result;
}

uint64_t __asan_abi_poison_memory_region(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 72))(_shadow, a1, 0, 0, a2, 249);
  }

  return result;
}

uint64_t __asan_abi_unpoison_memory_region(uint64_t a1, uint64_t a2)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 80))(_shadow, a1, a2);
  }

  return result;
}

uint64_t __asan_abi_set_shadow_xx_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _shadow;
  if (_shadow)
  {
    return (*(*_shadow + 8))(_shadow, a1, a3, a2);
  }

  return result;
}

void *__asan_abi_stack_malloc_n(int a1, size_t size)
{
  if (!_shadow)
  {
    return 0;
  }

  if (size <= 0x27)
  {
    __asan_abi_stack_malloc_n_cold_1();
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 1848) = 1;
  result = malloc_type_malloc(size, 0xF98F88CFuLL);
  *(StatusReg + 1848) = 0;
  return result;
}

void *__asan_abi_stack_malloc_always_n(int a1, size_t size)
{
  if (!_shadow)
  {
    return 0;
  }

  if (size <= 0x27)
  {
    __asan_abi_stack_malloc_always_n_cold_1();
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 1848) = 1;
  result = malloc_type_malloc(size, 0x9067D791uLL);
  *(StatusReg + 1848) = 0;
  return result;
}

void __asan_abi_stack_free_n(int a1, void *a2, unint64_t a3)
{
  if (_shadow)
  {
    if (a3 <= 0x27)
    {
      __asan_abi_stack_free_n_cold_1();
    }

    a2[4] = a2[1];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 1848) = 1;
    free(a2);
    *(StatusReg + 1848) = 0;
  }
}

uint64_t asan::initRuntime(asan *a1)
{
  if (cfg == 1)
  {
    asan::initRuntime();
  }

  cfg = *a1;
  asan::initShadow(a1);
  v2 = v1;
  inited = asan::initGlobalsRegistry(v1);

  return asan::initRuntime(v2, inited);
}

uint64_t asan::initRuntime(uint64_t a1, uint64_t a2)
{
  asan::initCompilerABI(a1);
  asan::initGlobalVars(a1, a2);
  libmallocShadow = a1;
  result = malloc_sanitizer_set_functions();
  reportShadow = a1;
  reportGlobals = a2;
  return result;
}

uint64_t asan::initReportGeneration(uint64_t result, uint64_t a2)
{
  reportShadow = result;
  reportGlobals = a2;
  return result;
}

uint64_t asan::initLibmallocHooks(Shadow *)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    asan::initLibmallocHooks(Shadow *)::$_0::__invoke();
  }

  if (a4)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 1848);
    v6 = *libmallocShadow;
    if (v5)
    {
      v7 = *(v6 + 40);
    }

    else
    {
      v7 = *(v6 + 24);
    }

    return v7();
  }

  else
  {
    v9 = *(*libmallocShadow + 72);

    return v9();
  }
}

uint64_t asan::initLibmallocHooks(Shadow *)::$_1::__invoke()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 1848);
  v1 = *libmallocShadow;
  if (v0)
  {
    return (*(v1 + 48))();
  }

  else
  {
    return (*(v1 + 32))();
  }
}

void asan::reportError(uint64_t a1, uint64_t a2)
{
  malloc_sanitizer_set_functions();
  memset(v44, 0, 384);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  __src = 0u;
  v37 = 0u;
  *&v49.dli_fname = *a1;
  v49.dli_sname = *(a1 + 16);
  *&v50.dli_fname = *a2;
  v50.dli_sname = *(a2 + 16);
  createReport(&v49, &v50, &__src);
  if (BYTE1(cfg) == 1)
  {
    if (BYTE8(v38))
    {
      v5 = "WRITE";
    }

    else
    {
      v5 = "READ";
    }

    v6 = v39;
    if (BYTE8(v42))
    {
      v7 = "freed ";
    }

    else
    {
      v7 = &unk_299E566BB;
    }

    v8 = "allocation";
    if ((v39 & 0xFFFFFFFE) == 4)
    {
      v8 = "stack variable";
    }

    if (v39 == 2)
    {
      v9 = "global variable";
    }

    else
    {
      v9 = v8;
    }

    v10 = *(&v41 + 1);
    v11 = *(&v37 + 1) - *(&v41 + 1);
    v12 = v42 + *(&v41 + 1);
    debug::print("=================================================================\n", v4);
    debug::print("Address Sanitizer: %s at address %p\n", v13, *(&v39 + 1), *(&v37 + 1));
    debug::print("Registers: pc=%p fp=%p sp=%p\n", v14, __src, v37);
    debug::print("Faulty %s of size %zu at address %p\n", v15, v5, v38, *(&v37 + 1));
    debug::print("Located at offset %td of %s%s ", v16, v11, v7, v9);
    if (v6 <= 5 && ((1 << v6) & 0x34) != 0)
    {
      debug::print("'%.*s' ", v17, v41, *(&v40 + 1));
    }

    debug::print("[%p, %p), size: %td\n", v17, v10, v12, v42);
    debug::print("\n", v18);
    v19 = *(&__src + 1);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    bzero(&v49.dli_sname, 0x208uLL);
    v49.dli_fname = *(StatusReg - 8);
    v49.dli_fbase = mach_absolute_time();
    LODWORD(v49.dli_sname) = backtrace_from_fp(v19, &v49.dli_saddr, 64);
    debug::print("%s trace on thread %llu at MAT %llu\n", v21, "Fault", v49.dli_fname, v49.dli_fbase);
    if (LODWORD(v49.dli_sname))
    {
      v23 = 0;
      do
      {
        v24 = *(&v49.dli_saddr + v23);
        memset(&v50, 0, sizeof(v50));
        dladdr(v24, &v50);
        debug::print("  %2lu. %p in %s + %zu (%s)\n", v25, ++v23, v24, v50.dli_sname, v24 - v50.dli_saddr, v50.dli_fname);
      }

      while (v23 < LODWORD(v49.dli_sname));
    }

    debug::print("\n", v22);
    if (v6 > 5 || ((1 << v6) & 0x34) == 0)
    {
      debug::print("%s trace on thread %llu at MAT %llu\n", v26, "Allocation", v43);
      if (LODWORD(v44[0]))
      {
        v28 = 0;
        do
        {
          v29 = *(v44 + v28 + 1);
          memset(&v49, 0, sizeof(v49));
          dladdr(v29, &v49);
          debug::print("  %2lu. %p in %s + %zu (%s)\n", v30, ++v28, v29, v49.dli_sname, v29 - v49.dli_saddr, v49.dli_fname);
        }

        while (v28 < LODWORD(v44[0]));
      }

      debug::print("\n", v27);
      if (BYTE8(v42) == 1)
      {
        debug::print("%s trace on thread %llu at MAT %llu\n", v31, "Deallocation", v45, v46);
        if (v47)
        {
          for (i = 0; i < v47; debug::print("  %2lu. %p in %s + %zu (%s)\n", v35, ++i, v34, v49.dli_sname, v34 - v49.dli_saddr, v49.dli_fname))
          {
            v34 = v48[i];
            memset(&v49, 0, sizeof(v49));
            dladdr(v34, &v49);
          }
        }

        debug::print("\n", v32);
      }
    }
  }

  asan::callDebuggerBreakpointSymbol(&__src);
  die();
}

void createReport(__int128 *a1@<X0>, unsigned __int8 (*a2)[24]@<X1>, uint64_t a3@<X8>)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v6 = trace::Lookup::create(v13, a2);
  v12[0] = reportShadow;
  v12[1] = v6;
  v12[2] = reportGlobals;
  v10 = *a1;
  v11 = *(a1 + 2);
  v8 = *a2;
  v9 = *&(*a2)[16];
  asan::ReportGenerator::createReport(v12, &v10, &v8, a3);
  v7 = *MEMORY[0x29EDCA608];
}

void die(void)
{
  if (!HIDWORD(cfg))
  {
    abort();
  }

  _exit(SHIDWORD(cfg));
}

void sanitizers_testonly_diagnose_error(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = 0;
  HIDWORD(v4[2]) = 0;
  *(&v4[2] + 1) = 0;
  *&v5 = v3;
  *(&v5 + 1) = &vars0;
  v6 = &v7;
  v4[0] = a1;
  v4[1] = 1;
  LOBYTE(v4[2]) = a2;
  createReport(&v5, v4, a3);
}

void asan::callDebuggerBreakpointSymbol(void *__src)
{
  memcpy(&report, __src, 0x4B0uLL);

  sanitizers_address_on_report();
}

uint64_t __asan_locate_address(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  if (qword_2A14F0160 != a1)
  {
    __asan_locate_address_cold_1();
  }

  v5 = unk_2A14F01A8;
  *a4 = qword_2A14F01A0;
  *a5 = v5;
  if (qword_2A14F0198)
  {
    if (!a3)
    {
      __asan_locate_address_cold_3();
    }

    v6 = qword_2A14F0198 + 1;
    if (qword_2A14F0198 == -1)
    {
      __asan_locate_address_cold_2();
    }

    if (a3 < v6)
    {
      v6 = a3;
    }

    v7 = v6 - 1;
    v8 = *qword_2A14F0190;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v11 = 0;
      v12 = qword_2A14F0190 + 1;
      do
      {
        *(a2 + v11) = v8;
        v10 = v11 + 1;
        v8 = *(v12 + v11);
      }

      while (++v11 < v7 && v8 != 0);
    }

    *(a2 + v10) = 0;
  }

  return qword_2A14F0188;
}

void *__asan_get_shadow_mapping(void *result, void *a2)
{
  *result = qword_2A14F05E8;
  *a2 = qword_2A14F05F0;
  return result;
}

unint64_t __asan_get_alloc_stack(uint64_t a1, void *a2, unint64_t a3, _DWORD *a4)
{
  if (qword_2A14F0160 == a1)
  {
    if (a3 >= dword_2A14F01C8)
    {
      result = dword_2A14F01C8;
    }

    else
    {
      result = a3;
    }

    if (result)
    {
      v8 = &qword_2A14F01D0;
      v9 = result;
      do
      {
        v10 = *v8++;
        *a2++ = v10;
        --v9;
      }

      while (v9);
    }

    v11 = qword_2A14F01B8;
LABEL_17:
    *a4 = v11;
    return result;
  }

  if (trace::lookupTraces(a1))
  {
    if (a3 >= v16)
    {
      result = v16;
    }

    else
    {
      result = a3;
    }

    if (result)
    {
      v12 = &v17;
      v13 = result;
      do
      {
        v14 = *v12++;
        *a2++ = v14;
        --v13;
      }

      while (v13);
    }

    v11 = v15;
    goto LABEL_17;
  }

  return 0;
}

unint64_t __asan_get_free_stack(uint64_t a1, void *a2, unint64_t a3, _DWORD *a4)
{
  if (qword_2A14F0160 == a1)
  {
    if (a3 >= dword_2A14F03E0)
    {
      result = dword_2A14F03E0;
    }

    else
    {
      result = a3;
    }

    if (result)
    {
      v8 = &qword_2A14F03E8;
      v9 = result;
      do
      {
        v10 = *v8++;
        *a2++ = v10;
        --v9;
      }

      while (v9);
    }

    v11 = qword_2A14F03D0;
LABEL_17:
    *a4 = v11;
    return result;
  }

  if (trace::lookupTraces(a1))
  {
    if (a3 >= v16)
    {
      result = v16;
    }

    else
    {
      result = a3;
    }

    if (result)
    {
      v12 = &v17;
      v13 = result;
      do
      {
        v14 = *v12++;
        *a2++ = v14;
        --v13;
      }

      while (v13);
    }

    v11 = v15;
    goto LABEL_17;
  }

  return 0;
}

double asan::initShadow(asan *this)
{
  if (0x200000000uLL % *MEMORY[0x29EDCA6D0])
  {
    vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>();
  }

  v1 = *MEMORY[0x29EDCA6B0];
  address = 0;
  v2 = vm_map(v1, &address, 0x200000000uLL, 0, 1660944385, 0, 0, 0, 3, 3, 1u);
  if (v2)
  {
    asan::initShadow(v2, v3);
  }

  shadow = &unk_2A2020A70;
  qword_2A14F0600 = address;
  *&result = 0x200000000;
  xmmword_2A14F0608 = xmmword_299E55E70;
  qword_2A14F0618 = MEMORY[0x29EDCA950];
  return result;
}

void *ASanShadow::poison(ASanShadow *this, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  if ((a2 & 7) != 0)
  {
    ASanShadow::poison();
  }

  v6 = (*(this + 1) + ((a2 - *(this + 3)) >> 3));
  v7 = a3 & 7;
  v8 = a3 >> 3;
  v9 = a4 >> 3;
  v10 = (a4 + a3 + a5) >> 3;
  if (a6 == 233)
  {
    v11 = 250;
  }

  else
  {
    v11 = a6;
  }

  if (a6 == 233)
  {
    v12 = 251;
  }

  else
  {
    v12 = a6;
  }

  if (a6 == 240)
  {
    v13 = 241;
  }

  else
  {
    v13 = v11;
  }

  if (a6 == 240)
  {
    v14 = 243;
  }

  else
  {
    v14 = v12;
  }

  memset(v6, v13, a4 >> 3);
  v15 = &v6[v9];
  bzero(v15, v8);
  v16 = &v15[v8];
  v17 = v9 + v8;
  if (v7 && v10 > v17)
  {
    *v16++ = v7;
    v18 = v10 + ~v17;
  }

  else
  {
    v18 = v10 - v17;
  }

  return memset(v16, v14, v18);
}

BOOL ASanShadow::addressIsPoisoned(ASanShadow *this, uint64_t a2)
{
  if (*(((a2 - *(this + 3)) >> 3) + *(this + 1)))
  {
    v2 = (a2 & 7) < *(((a2 - *(this + 3)) >> 3) + *(this + 1));
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t ASanShadow::regionIsPoisoned(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a2;
  v4 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
    return this;
  }

  v5 = *(this + 24);
  v6 = *(this + 8);
  if (!*(((v4 - 1 - v5) >> 3) + v6) || ((v4 - 1) & 7) < *(((v4 - 1 - v5) >> 3) + v6))
  {
    v8 = v6 + ((a2 - v5) >> 3);
    v9 = (v4 - v5) >> 3;
    if (v9 + v6 <= v8)
    {
      return 0;
    }

    v10 = v9 - ((a2 - v5) >> 3);
    v11 = v10 - 256;
    v12 = v10 >= 0x100 ? 256 : v9 - ((a2 - v5) >> 3);
    if (!memcmp((v6 + ((a2 - v5) >> 3)), &zeros, v12))
    {
      v13 = 0;
      v14 = v10 >> 8;
      v15 = (v8 + 256);
      do
      {
        v16 = v13;
        if (v14 == v13)
        {
          break;
        }

        ++v13;
        v17 = v11 >= 0x100 ? 256 : v11;
        v18 = memcmp(v15, &zeros, v17);
        v15 += 256;
        v11 -= 256;
      }

      while (!v18);
      if (v14 <= v16)
      {
        return 0;
      }
    }
  }

  do
  {
    v19 = *(((v3 - v5) >> 3) + v6);
    v20 = v3++ & 7;
    if (v19)
    {
      v21 = v20 < v19;
    }

    else
    {
      v21 = 1;
    }
  }

  while (v21);
  return v3 - 1;
}

void *ASanShadow::setShadowBytes(void *result, uint64_t a2, size_t a3, int __c)
{
  if (a3)
  {
    return memset((result[1] + a2), __c, a3);
  }

  return result;
}

uint64_t ASanShadow::getShadowValue(ASanShadow *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a2 && *(this + 2) + v3 > a2)
  {
    ASanShadow::getShadowValue();
  }

  if (a3 >= 0x11)
  {
    ASanShadow::getShadowValue();
  }

  v4 = (v3 + ((a2 - *(this + 3)) >> 3));
  if (a3 > 8 && *v4 == 0)
  {
    ++v4;
  }

  if (*v4 > 0)
  {
    ++v4;
  }

  return *v4;
}

uint64_t ASanShadow::getAllocationEnd(uint64_t a1, uint64_t *a2)
{
  IsPoisoned = ASanShadow::regionIsPoisoned(a1, *a2, a2[1]);
  if (!IsPoisoned)
  {
    ASanShadow::getAllocationEnd();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6 = (v5 + ((IsPoisoned - v4) >> 3));
  v7 = *v6;
  if (v7 <= 7)
  {
    v8 = *++v6;
    v7 = v8;
    if (v8 <= 8)
    {
      ASanShadow::getAllocationEnd();
    }
  }

  if (v7 <= 244)
  {
    if ((v7 - 241) >= 3)
    {
      --v6;
      do
      {
        v12 = *++v6;
      }

      while (v12 == 244);
      goto LABEL_19;
    }

LABEL_22:
    --v6;
    do
    {
      v14 = *++v6;
    }

    while (v14 != 243);
    do
    {
      v15 = *++v6;
    }

    while (v15 == 243);
    return v4 + 8 * &v6[-v5];
  }

  if (v7 <= 250)
  {
    if (v7 == 245)
    {
LABEL_19:
      --v6;
      do
      {
        v13 = *++v6;
      }

      while (v13 == 245);
      return v4 + 8 * &v6[-v5];
    }

    goto LABEL_22;
  }

  if (v7 == 253)
  {
LABEL_9:
    --v6;
    do
    {
      v10 = *++v6;
    }

    while (v10 == 253);
    return v4 + 8 * &v6[-v5];
  }

  --v6;
  if (v7 == 252)
  {
    do
    {
      v9 = *++v6;
    }

    while (v9 == 252);
    goto LABEL_9;
  }

  do
  {
    v11 = *++v6;
  }

  while (v11 == 251);
  return v4 + 8 * &v6[-v5];
}

unint64_t ASanShadow::getAllocationInfo(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  AllocationEnd = ASanShadow::getAllocationEnd(a1, &v8);
  v5 = AllocationEnd - *(AllocationEnd - 16);
  if (v5 > *a2 || *a2 >= AllocationEnd)
  {
    ASanShadow::getAllocationInfo();
  }

  (*(a1 + 32))(AllocationEnd - *(AllocationEnd - 16));
  return v5;
}

void *ASanShadow::poisonGlobal(ASanShadow *a1, uint64_t *a2)
{
  result = ASanShadow::poison(a1, *a2, a2[1], 0, a2[2] - a2[1], 249);
  *(((a2 - *(a1 + 3)) >> 3) + *(a1 + 1)) = 0xF9F9F9F9F9F9F9F9;
  return result;
}

void *ASanShadow::poisonAllocation(ASanShadow *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = a3 - a4;
  if (a3 <= a4)
  {
    ASanShadow::poisonAllocation();
  }

  if (v6 <= 0xF)
  {
    ASanShadow::poisonAllocation();
  }

  result = ASanShadow::poison(a1, a2, a4, 0, v6, a5);
  if (((a3 + a2) & 7) != 0)
  {
    ASanShadow::poisonAllocation();
  }

  *(a3 + a2 - 16) = a3;
  return result;
}

void *ASanShadow::poisonFreedAllocation(ASanShadow *this, uint64_t a2, uint64_t a3)
{
  result = ASanShadow::poison(this, a2, 0, 0, a3, 253);
  if ((a2 & 7) != 0)
  {
    ASanShadow::poison();
  }

  *(((a2 - *(this + 3)) >> 3) + *(this + 1)) = -4;
  return result;
}

void *ASanShadow::poisonFreedStackFrame(ASanShadow *this, uint64_t a2, uint64_t a3)
{
  result = ASanShadow::poison(this, a2, 0, 0, a3, 245);
  if ((a2 & 7) != 0)
  {
    ASanShadow::poison();
  }

  *(((a2 - *(this + 3)) >> 3) + *(this + 1)) = -12;
  return result;
}

void asan::ReportGenerator::fillStackVarInfo()
{
  __assert_rtn("fillStackVarInfo", "report_generator.cpp", 102, "alloc.isValid()");
}

{
  __assert_rtn("fillStackVarInfo", "report_generator.cpp", 109, "frame_header.magicConstant != kRetiredStackFrameMagic");
}

{
  __assert_rtn("fillStackVarInfo", "report_generator.cpp", 121, "stackVar.offset != 0");
}

{
  __assert_rtn("fillStackVarInfo", "report_generator.cpp", 118, "frameDescription != __null");
}

void vm::create<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>(debug *a1, const char *a2)
{
  v2 = *MEMORY[0x29EDCA6D0];
  OUTLINED_FUNCTION_0(a1, a2);
  abort();
}

void vm::create<trace::AllocationMap<262144ul,&(hash::Murmur2::hashPointer(unsigned long))>>(debug *a1, const char *a2)
{
  v2 = *MEMORY[0x29EDCA6D0];
  OUTLINED_FUNCTION_0(a1, a2);
  abort();
}

void vm::create<trace::Depot<524288ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>>(debug *a1, const char *a2)
{
  v2 = *MEMORY[0x29EDCA6D0];
  OUTLINED_FUNCTION_0(a1, a2);
  abort();
}

void vm::create<trace::AllocationMap<1048576ul,&(hash::Murmur2::hashPointer(unsigned long))>>(debug *a1, const char *a2)
{
  v2 = *MEMORY[0x29EDCA6D0];
  OUTLINED_FUNCTION_0(a1, a2);
  abort();
}

void trace::Extractor<trace::Depot<65536ul,64ul,8ul,hash::Murmur2,&(thread_stack_pcs)>,trace::AllocationMap<262144ul,&hash::Murmur2::hashPointer>>::retrieveTraces()
{
  __assert_rtn("get", "allocation_map.h", 96, "BlockInfo::isValidBlockAddress(blockAddress)");
}

{
  __assert_rtn("retrieveTraces", "trace_collector.h", 107, "alloc.isValid()");
}

void ASanShadow::getShadowValue()
{
  __assert_rtn("getShadowValue", "shadow.cpp", 262, "addressIsInMem(addr)");
}

{
  __assert_rtn("getShadowValue", "shadow.cpp", 263, "accessSize <= 16");
}

void ASanShadow::getAllocationEnd()
{
  __assert_rtn("getAllocationEnd", "shadow.cpp", 288, "*shadowVal > 0x8");
}

{
  __assert_rtn("getAllocationEnd", "shadow.cpp", 281, "allocationEnd");
}

void ASanShadow::poisonAllocation()
{
  __assert_rtn("poisonAllocation", "shadow.cpp", 356, "allocSize > userSize");
}

{
  __assert_rtn("poisonAllocation", "shadow.cpp", 362, "endPtr % 8 == 0");
}

{
  __assert_rtn("poisonAllocation", "shadow.cpp", 358, "redzoneSize >= 16");
}