uint64_t start(int a1, char **a2)
{
  if (a1 <= 1)
  {
    sub_1000014C8();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    while (1)
    {
      v7 = getopt_long(a1, a2, "c:s:h", &off_100008000, 0);
      if (v7 != 115)
      {
        break;
      }

      v6 = optarg;
    }

    if (v7 == -1)
    {
      break;
    }

    if (v7 != 99)
    {
      if (v7 == 104)
      {
        sub_100000870();
        exit(0);
      }

      sub_100001710();
    }

    v8 = optarg;
    v5 = strdup(optarg);
    v4 = strdup(v8);
  }

  v44 = v5;
  category = v4;
  v9 = optind;
  if (optind >= a1)
  {
    sub_1000014C8();
  }

  if (!v6 || !*v6)
  {
    v6 = "com.apple.log-redirect";
  }

  *v47 = 0;
  *v48 = 0;
  if (pipe(v48) || pipe(v47))
  {
    sub_1000014E8();
  }

  v43 = 0;
  v10 = posix_spawn_file_actions_init(&v43);
  if (v10)
  {
    sub_100001504(v10);
  }

  v11 = posix_spawn_file_actions_addclose(&v43, v48[0]);
  if (v11)
  {
    sub_100001524(v11);
  }

  v12 = posix_spawn_file_actions_addclose(&v43, v47[0]);
  if (v12)
  {
    sub_100001524(v12);
  }

  v13 = posix_spawn_file_actions_adddup2(&v43, v48[1], 1);
  if (v13)
  {
    sub_100001544(v13);
  }

  v14 = posix_spawn_file_actions_adddup2(&v43, v47[1], 2);
  if (v14)
  {
    sub_100001544(v14);
  }

  v15 = posix_spawn_file_actions_addclose(&v43, v48[1]);
  if (v15)
  {
    sub_100001524(v15);
  }

  v16 = posix_spawn_file_actions_addclose(&v43, v47[1]);
  if (v16)
  {
    sub_100001524(v16);
  }

  v17 = &a2[v9];
  v42 = -1;
  v18 = *v17;
  v19 = _NSGetEnviron();
  v20 = posix_spawnp(&v42, v18, &v43, 0, v17, *v19);
  if (v20)
  {
    sub_100001564(v20);
  }

  if (!v5 || !*v5)
  {
    if (asprintf(&v44, "pid-%d-stdout", v42) == -1)
    {
      sub_100001658(&v41, v46);
    }

    if (asprintf(&category, "pid-%d-stderr", v42) == -1)
    {
      sub_1000015A0(&v41, v46);
    }

    v5 = v44;
  }

  v21 = os_log_create(v6, v5);
  v22 = os_log_create(v6, category);
  close(v47[1]);
  close(v48[1]);
  v23 = dispatch_queue_create("stdout-queue", 0);
  v24 = dispatch_queue_create("stderr-queue", 0);
  v25 = dispatch_semaphore_create(0);
  if (!v25)
  {
    sub_100001584();
  }

  v26 = v25;
  v27 = dispatch_semaphore_create(0);
  if (!v27)
  {
    sub_100001584();
  }

  v28 = v27;
  v29 = v21;
  v30 = __stdoutp;
  v31 = v22;
  v32 = __stderrp;
  v33 = v29;
  v39[0] = v33;
  v39[1] = v30;
  v40 = 2;
  sub_100000D0C(v39, v48[0], v23, v26);
  v34 = v31;
  v37[0] = v34;
  v37[1] = v32;
  v38 = 3;
  sub_100000D0C(v37, v47[0], v24, v28);
  v46[0] = 0;
  if (waitpid(v42, v46, 0) == -1)
  {
    err(71, "waitpid");
  }

  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  free(v44);
  free(category);
  posix_spawn_file_actions_destroy(&v43);
  v35 = v46[0];

  return v35;
}

void sub_100000D0C(uint64_t a1, dispatch_fd_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 <= 0)
  {
    errx(64, "Invalid file descriptor.");
  }

  v9 = v8;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100000F58;
  v29[4] = sub_100000F68;
  v10 = &_dispatch_data_empty;
  v30 = &_dispatch_data_empty;
  cleanup_handler[0] = _NSConcreteStackBlock;
  cleanup_handler[1] = 3221225472;
  cleanup_handler[2] = sub_100000F70;
  cleanup_handler[3] = &unk_100004260;
  v28 = a2;
  v11 = dispatch_io_create(0, a2, v7, cleanup_handler);
  if (!v11)
  {
    v18 = __error();
    err(71, "dispatch_io_create failed with error %d", *v18);
  }

  v12 = v11;
  dispatch_io_set_low_water(v11, 1uLL);
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3254779904;
  io_handler[2] = sub_100000FC4;
  io_handler[3] = &unk_100004288;
  v20 = v12;
  v21 = v9;
  v22 = v7;
  v23 = v29;
  v13 = *a1;
  v14 = *(a1 + 8);
  v24 = v13;
  v25 = v14;
  v26 = *(a1 + 16);
  v15 = v7;
  v16 = v9;
  v17 = v12;
  dispatch_io_read(v17, 0, 0xFFFFFFFFFFFFFFFFLL, v15, io_handler);

  _Block_object_dispose(v29, 8);
}

void sub_100000F30(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100000F58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100000F70(uint64_t a1, int a2)
{
  if (a2)
  {
    warnx("dispatch io exit failed with error %d\n", a2);
  }

  v3 = *(a1 + 32);

  return close(v3);
}

void sub_100000FC4(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  if (a4)
  {
    sub_100001730(a1);
  }

  concat = dispatch_data_create_concat(*(*(*(a1 + 56) + 8) + 40), v7);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = concat;

  buffer_ptr = 0;
  size_ptr = 0;
  while (1)
  {
    v11 = dispatch_data_create_map(*(*(*(a1 + 56) + 8) + 40), &buffer_ptr, &size_ptr);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = buffer_ptr;
    v15 = memchr(buffer_ptr, 10, size_ptr);
    if (!v15)
    {
      break;
    }

    v16 = v15 - v14 + 1;
    v24[0] = *(a1 + 64);
    v24[1] = *(a1 + 72);
    v25 = *(a1 + 80);
    if (sub_10000114C(v24, buffer_ptr, v16) == -1)
    {
      sub_100001790(a1);
      break;
    }

    subrange = dispatch_data_create_subrange(*(*(*(a1 + 56) + 8) + 40), v16, size_ptr - v16);
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = subrange;
  }

  if (a2)
  {
    if (size_ptr)
    {
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      v22[0] = v20;
      v22[1] = v21;
      v23 = *(a1 + 80);
      sub_10000114C(v22, buffer_ptr, size_ptr);
    }

    dispatch_io_close(*(a1 + 32), 1uLL);
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

uint64_t sub_10000114C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v6 = a3 + 1;
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v7 = malloc_type_malloc(v6, 0x5C008F58uLL);
        if (v7)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v7 = malloc_type_malloc(v6, 0x2F48DA65uLL);
      if (!v7)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        *buf = 0u;
        v17 = &_os_log_default;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v18 = __error();
        strerror(*v18);
        _os_log_send_and_compose_impl();

        v19 = _os_crash_msg();
        sub_1000017F0(v19);
      }
    }

    v9 = v7;
    do
    {
      v11 = *a2++;
      v10 = v11;
      if (v11)
      {
        *v9++ = v10;
      }

      --v4;
    }

    while (v4);
    *v9 = 0;
    fputs(v7, *(a1 + 8));
    v12 = *(a1 + 16);
    v13 = *a1;
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
        {
          sub_10000186C(v7, v13);
        }

        goto LABEL_27;
      }

      if (v12 == 4)
      {
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_FAULT))
        {
          sub_1000017F4(v7, v13);
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (!v12)
      {
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
        {
          sub_1000018E4(v7, v13);
        }

        goto LABEL_27;
      }

      if (v12 == 1)
      {
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = v7;
          v14 = v13;
          v15 = OS_LOG_TYPE_INFO;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v14, v15, "%s", buf, 0xCu);
          goto LABEL_27;
        }

        goto LABEL_27;
      }
    }

    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v7;
      v14 = v13;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_22;
    }

LABEL_27:
    free(v7);
    v8 = 0;
    goto LABEL_28;
  }

  *__error() = 22;
  v8 = 0xFFFFFFFFLL;
LABEL_28:

  return v8;
}

id sub_10000145C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  return result;
}

uint64_t sub_1000014A4()
{

  return _os_log_send_and_compose_impl();
}

void sub_1000015A0(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v4 = *__error();
  sub_1000014A4();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100001658(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v4 = *__error();
  sub_1000014A4();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_100001730(dispatch_io_t *a1)
{
  dispatch_io_close(a1[4], 1uLL);
  dispatch_semaphore_signal(a1[5]);
  label = dispatch_queue_get_label(a1[6]);
  v3 = __error();
  warnx("Read failed for queue %s with error %d", label, *v3);
}

void sub_100001790(dispatch_io_t *a1)
{
  dispatch_io_close(a1[4], 1uLL);
  dispatch_semaphore_signal(a1[5]);
  label = dispatch_queue_get_label(a1[6]);
  v3 = __error();
  warnx("Logging failed for queue %s with error %d", label, *v3);
}

void sub_1000017F4(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s", &v2, 0xCu);
}

void sub_10000186C(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
}

void sub_1000018E4(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s", &v2, 0xCu);
}