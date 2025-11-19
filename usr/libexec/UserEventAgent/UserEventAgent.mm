BOOL xpc_event_provider_token_set_state(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    sub_100000AB0(&v2, v3);
  }

  return xpc_event_publisher_set_subscriber_keepalive() == 0;
}

void sub_100000AB0(void *a1, _OWORD *a2)
{
  sub_100000CB8(a1, a2);
  sub_10000263C();
  sub_100002608();
  sub_1000025E4();
  sub_100002624();
  __break(1u);
}

BOOL xpc_event_provider_token_fire_with_reply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 16))
  {
    sub_100000AB0(&v7, v8);
  }

  if (a4)
  {
    v4 = *(a1 + 8);
    v5 = xpc_event_publisher_fire_with_reply();
  }

  else if (*(a1 + 48) == 1)
  {
    v5 = xpc_event_publisher_fire_noboost();
  }

  else
  {
    v5 = xpc_event_publisher_fire();
  }

  return v5 == 0;
}

uint64_t sub_100000BB8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    if (a4)
    {
      sub_100002DA4(&v11, v12);
    }

    v10 = *(result + 32);
    v5 = *(v10 + 24);
    v9 = *(v10 + 32);
    v6 = 2;
    v7 = a3;
    v8 = 0;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v4 = *(result + 32);
    v5 = *(v4 + 24);
    v6 = 1;
    v7 = a3;
    v8 = a4;
    v9 = *(v4 + 32);
  }

  return v5(v6, v7, v8, v9);
}

void sub_100000C98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

double sub_100000CB8(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void start(int a1, uint64_t a2)
{
  v4 = &selRef_UTF8String;
  qword_10000C040 = os_log_create("com.apple.UserEventAgent", "Daemon");
  if (setiopolicy_np(9, 0, 1))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *buf = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v4 = *__error();
    v10 = __error();
    strerror(*v10);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    if (qword_10000C070 != -1)
    {
      dispatch_once(&qword_10000C070, &stru_100008398);
    }

    qword_10000C048 = objc_alloc_init(NSMutableSet);
    if (qword_10000C048)
    {
      qword_10000C050 = objc_alloc_init(NSMutableSet);
      if (qword_10000C050)
      {
        CFBundleGetMainBundle();
        if (qword_10000C078 != -1)
        {
          dispatch_once(&qword_10000C078, &stru_1000083B8);
        }

        if (a1 < 4 || (byte_10000C080 & 1) == 0)
        {
          goto LABEL_25;
        }

        v5 = *(a2 + 16);
        v6 = *v5;
        if (v6 == 100)
        {
          if (v5[1])
          {
            goto LABEL_19;
          }

          v7 = a1 - 3;
          dword_10000C058 = a1 - 3;
          byte_10000C05D = 1;
          v8 = qword_10000C040;
          if (os_log_type_enabled(qword_10000C040, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v9 = "Not running some plugin in original UserEventAgent";
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 != 114 || v5[1])
          {
LABEL_19:
            v7 = dword_10000C058;
            qword_10000C060 = a2 + 24;
            if (dword_10000C058 < 1)
            {
LABEL_24:
              byte_10000C05C = 0;
              byte_10000C05D = 0;
              qword_10000C060 = 0;
LABEL_25:
              vproc_swap_integer();
              fwrite("This program is not meant to be run directly.\n", 0x2EuLL, 1uLL, __stderrp);
              goto LABEL_27;
            }

LABEL_22:
            if (byte_10000C05C != 1 || v7 == 1)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v7 = a1 - 3;
          dword_10000C058 = a1 - 3;
          byte_10000C05C = 1;
          v8 = qword_10000C040;
          if (os_log_type_enabled(qword_10000C040, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v9 = "Running specific plugin in UserEventAgent";
LABEL_18:
            _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v9, buf, 2u);
            goto LABEL_19;
          }
        }

        qword_10000C060 = a2 + 24;
        goto LABEL_22;
      }

      v11 = qword_10000C040;
      if (os_log_type_enabled(qword_10000C040, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  v11 = *(v4 + 64);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create a set.", buf, 2u);
  }

LABEL_27:
  exit(1);
}