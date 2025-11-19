_BYTE *sub_100017AAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = v3;
LABEL_2:
  v5 = v4;
  v6 = *(v2 + v4);
  while (v6 == 10)
  {
    ++*(a1 + 3);
LABEL_8:
    v6 = 0;
    if (a1[7] - 1 > v5)
    {
      v4 = v5 + 1;
      *(a1 + 2) = v5 + 1;
      goto LABEL_2;
    }
  }

  if (!v6)
  {
    return 0;
  }

  if (v6 != 60)
  {
    goto LABEL_8;
  }

  v7 = v5 - v3;
  result = malloc_type_malloc(v5 - v3 + 1, 0x100004077774924uLL);
  if (!result)
  {
    puts("AMFIUnserializeXML: can't alloc temp memory");
    return 0;
  }

  if (v7 < 1)
  {
    v21 = 0;
LABEL_47:
    result[v21] = 0;
    return result;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  v11 = v3 + 3;
  v12 = result;
  while (2)
  {
    v13 = *a1;
    v14 = v10;
    v15 = v10 + 1;
    v16 = *(*a1 + v3 + v10);
    if (v16 != 38)
    {
      goto LABEL_40;
    }

    v10 = v10 + 4;
    if (v14 + 4 > v7)
    {
      goto LABEL_44;
    }

    v17 = v14 + 2;
    v18 = *(v13 + v15 + v3);
    if (v18 != 103)
    {
      if (v18 == 108)
      {
        if (*(v13 + v17 + v3) != 116 || *(v13 + v11 + v14) != 59)
        {
          goto LABEL_44;
        }

        LOBYTE(v16) = 60;
        goto LABEL_41;
      }

      v15 = v14 + 5;
      if (v14 + 5 > v7)
      {
        goto LABEL_44;
      }

      if (v18 == 113)
      {
        if (*(v13 + v3 + v17) != 117 || *(v13 + v11 + v14) != 111 || *(v13 + v3 + v10) != 116 || *(v13 + v15 + v3) != 59)
        {
          goto LABEL_44;
        }

        LODWORD(v10) = v14 + 6;
        LOBYTE(v16) = 34;
        goto LABEL_41;
      }

      if (v18 != 97)
      {
        goto LABEL_44;
      }

      v19 = v14 + 3;
      v20 = *(v13 + v3 + v17);
      if (v20 != 109)
      {
        if (v20 != 112 || *(v13 + v19 + v3) != 111 || *(v13 + v10 + v3) != 115 || *(v13 + v15 + v3) != 59)
        {
          goto LABEL_44;
        }

        LODWORD(v10) = v14 + 6;
        LOBYTE(v16) = 39;
        goto LABEL_41;
      }

      if (*(v13 + v19 + v3) != 112 || *(v13 + v3 + v10) != 59)
      {
        goto LABEL_44;
      }

      LOBYTE(v16) = 38;
LABEL_40:
      LODWORD(v10) = v15;
LABEL_41:
      *v12++ = v16;
      v9 += &_mh_execute_header;
      if (v10 >= v7)
      {
        v21 = v9 >> 32;
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  if (*(v13 + v3 + v17) == 116 && *(v13 + v11 + v14) == 59)
  {
    LOBYTE(v16) = 62;
    goto LABEL_41;
  }

LABEL_44:
  free(result);
  return 0;
}

void *sub_100017DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  sub_100007D18(a3);
  sub_100007D18(a2);
  v7[2] = v7;
  result = sub_1000180B8((a1 + 16), v7);
  result[3] = a3;
  return result;
}

void *sub_100017E30(void *a1)
{
  *a1 = off_100025930;
  sub_10000BF40((a1 + 2));
  return a1;
}

void sub_100017E74(void *a1)
{
  *a1 = off_100025930;
  sub_10000BF40((a1 + 2));

  operator delete();
}

uint64_t sub_100017ED8(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      sub_1000088E4(&std::cout);
      --v4;
    }

    while (v4);
  }

  result = sub_1000088E4(&std::cout);
  for (i = *(a1 + 32); i; i = *i)
  {
    v7 = i[3];
    (*(*i[2] + 16))(i[2], (a2 + 1));
    result = (*(*v7 + 16))(v7, (a2 + 1));
  }

  return result;
}

uint64_t sub_100017FC0(uint64_t a1)
{
  for (i = *(a1 + 32); i; i = *i)
  {
    v3 = i[3];
    sub_100007694(i[2]);
    sub_100007694(v3);
  }

  sub_10001804C((a1 + 16));
  *(a1 + 8) = -2;
  v4 = *(*a1 + 8);

  return v4(a1);
}

void *sub_10001804C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *sub_1000180B8(void *a1, void *a2)
{
  v4 = sub_100007E50(&v12, *a2 + 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_100018380(uint64_t a1, unint64_t a2)
{
  *(a1 + 8) = 1;
  *a1 = off_100025960;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100018400((a1 + 16), a2);
  return a1;
}

void sub_1000183E4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100018400(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1000186A4(result, a2);
    }

    sub_100009560();
  }

  return result;
}

void *sub_1000184A0(void *a1)
{
  *a1 = off_100025960;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000184F0(void *a1)
{
  *a1 = off_100025960;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100018560(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      sub_1000088E4(&std::cout);
      --v4;
    }

    while (v4);
  }

  result = sub_1000088E4(&std::cout);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = (*(*v8 + 16))(v8, (a2 + 1));
  }

  return result;
}

uint64_t sub_10001861C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      sub_100007694(v4);
    }

    while (v2 != v3);
    v2 = *(a1 + 16);
  }

  *(a1 + 24) = v2;
  *(a1 + 8) = -2;
  v5 = *(*a1 + 8);

  return v5(a1);
}

void sub_1000186A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000841C();
}

uint64_t sub_100018714(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      sub_1000088E4(&std::cout);
      --v3;
    }

    while (v3);
  }

  sub_1000088E4(&std::cout);
  v4 = *(a1 + 16);
  v5 = std::ostream::operator<<();

  return sub_1000088E4(v5);
}

void sub_1000187AC()
{
  v2[0] = 136315650;
  sub_100001F5C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[%s] missing profile: %@ | %u", v2, 0x1Cu);
}

void sub_10001883C()
{
  v1[0] = 136315394;
  sub_100001F5C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[%s] missing TeamName: %@", v1, 0x16u);
}

void sub_1000188BC()
{
  v1[0] = 136315394;
  sub_100001F5C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[%s] profile trust notification err: %@", v1, 0x16u);
}

void sub_10001893C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  [v4 UTF8String];
  sub_100002938();
  sub_10000294C(&_mh_execute_header, v5, v6, "%s: unable to authenticate user: %s", v7, v8, v9, v10, 2u);
}

void sub_1000189E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  [v4 UTF8String];
  sub_100002938();
  sub_10000294C(&_mh_execute_header, v5, v6, "%s: unable to set SEP developer mode state: %s", v7, v8, v9, v10, 2u);
}

void sub_100018D4C()
{
  sub_100002938();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100018DC8()
{
  sub_100002938();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100018FDC()
{
  sub_100004590();
  v3 = 1040;
  v4 = 8;
  v5 = 2096;
  v6 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: bad security token { %.8P }", v2, 0x1Cu);
}

void sub_100019070()
{
  sub_100004554();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100019160()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to read %s: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_1000191F4()
{
  sub_100004590();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019264()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to open %s for reading: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_1000192F8()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to write %s: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_10001938C()
{
  sub_100004590();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000193FC()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to open %s for writing: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_100019490()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000194B0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to open %s: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_100019544()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to stat %s: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_1000195D8()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100004534();
  sub_100004570(&_mh_execute_header, v2, v3, "unable to create %s: %d (%s)", v4, v5, v6, v7, 2u);
}

void sub_10001966C()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000196E8()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019764()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000197E0()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001985C()
{
  v2 = 136315650;
  sub_100001F5C();
  sub_1000062B4(&_mh_execute_header, v0, v1, "[%s] length of Team ID too large: %@ | %lu", v2);
}

void sub_10001995C()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000199D8()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100019AD4()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019B50()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019BCC()
{
  v2 = 136315650;
  sub_100001F5C();
  sub_1000062B4(&_mh_execute_header, v0, v1, "[%s] mismatch for staged UUID: %@ | %@", v2);
}

void sub_100019C48()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019CC4()
{
  sub_100001F5C();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019DC0()
{
  v2 = 136315650;
  sub_100001F5C();
  sub_1000062B4(&_mh_execute_header, v0, v1, "[%s] failed to untrust team ID %@: %@", v2);
}

void sub_100019EBC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unable to ratchet SEP init-state: %@", &v2, 0xCu);
}

void sub_100019F78(os_log_t log)
{
  v1 = 136315138;
  v2 = "__openAMFIConnection";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: unable to open AppleMobileFileIntegrity service", &v1, 0xCu);
}

void sub_100019FFC(os_log_t log)
{
  v1 = 136315138;
  v2 = "__openAMFIConnection";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: unable to find AppleMobileFileIntegrity service", &v1, 0xCu);
}

void sub_10001A080(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_100006DEC(&_mh_execute_header, v3, v4, "unable to read security.codesigning.monitor: %s", v5, v6, v7, v8, 2u);
}

void sub_10001A10C(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_100006DEC(&_mh_execute_header, v3, v4, "unable to read security.codesigning.config: %s", v5, v6, v7, v8, 2u);
}

void sub_10001ACC0()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001ADC4()
{
  v3[0] = 136315650;
  sub_100001F5C();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: [%@] error with request: %@", v3, 0x20u);
}

void sub_10001AE50()
{
  v2[0] = 136315650;
  sub_100001F5C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: [%@] error sending reply: %d", v2, 0x1Cu);
}

void sub_10001AEE0(unsigned int *a1)
{
  v1 = *a1;
  sub_10000AAF0();
  sub_10000292C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001AF60()
{
  sub_1000062D4();
  sub_10000292C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AFDC(unsigned int *a1)
{
  v1 = *a1;
  sub_10000AAF0();
  sub_10000292C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001B250(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[migration] %s: copy profile error: %u", &v3, 0x12u);
}

void sub_10001B2D8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[migration] %@: failed creating auxiliary signature: %@", &v3, 0x16u);
}

void sub_10001B360(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[migration] %s: missing Team ID", &v2, 0xCu);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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