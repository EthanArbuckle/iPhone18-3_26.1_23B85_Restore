xpc_object_t sub_100010D84(int64_t a1, int64_t a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "vers", a1);
  xpc_dictionary_set_int64(empty, "comp", 1);
  xpc_dictionary_set_int64(empty, "ccat", a2);
  if (object)
  {
    xpc_dictionary_set_value(empty, "reqs", object);
  }

  return empty;
}

xpc_object_t sub_100010E34(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    return 0;
  }

  empty = xpc_array_create_empty();
  if (sub_100011320(a1, empty))
  {
    v3 = sub_100010FA0(empty);
    count = xpc_array_get_count(empty);
    sub_100011044(v3, count);
    xpc_release(empty);
    return 0;
  }

  if (!empty)
  {
    return 0;
  }

  v7 = sub_100010FA0(empty);
  v8 = xpc_array_get_count(empty);
  length = 0;
  v5 = 0;
  if (sub_1000512D8(v7, v8, &length) == &unk_10007A840)
  {
    v9 = sub_100014514(length, 0x62CB2CE0uLL);
    v11 = 1;
    if (sub_1000513C4(&qword_1000782C8, &v11, v7, v8, v9, v9 + length) == &unk_10007A840)
    {
      v5 = xpc_data_create(v9, length);
    }

    else
    {
      v5 = 0;
    }

    free(v9);
  }

  v10 = xpc_array_get_count(empty);
  sub_100011044(v7, v10);
  xpc_release(empty);
  return v5;
}

size_t sub_100010FA0(void *a1)
{
  result = xpc_array_get_count(a1);
  if (result >> 59)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_100014514(32 * result, 0x14D3B917uLL);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_1000119CC;
    applier[3] = &unk_100078388;
    applier[4] = v3;
    xpc_array_apply(a1, applier);
    return v3;
  }

  return result;
}

void sub_100011044(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1 + 1;
    do
    {
      if (*(v4 - 1) == 3)
      {
        free(*v4);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

xpc_object_t sub_1000110AC(unint64_t a1, uint64_t a2)
{
  v13 = 0uLL;
  v14 = 0;
  v12 = 1;
  v2 = sub_1000528BC(&qword_1000782C8, &v12, &v13, a1, a1 + a2);
  result = 0;
  if (v2 == &unk_10007A840)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v13;
    *&v5 = v14;
    if (sub_100052B74(&qword_1000782C8, &v4, &v8) == &unk_10007A840)
    {
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v7 = v11;
      return sub_10000FE78(&v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t sub_100011184(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  *(&v15 + 1) = 0;
  v6 = sub_1000112A8(a1, a2, &v15 + 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *&v15 = 0;
  v8 = sub_1000112A8(a3, a4, &v15);
  if (v8)
  {
    v9 = v8;
    if (v15 == 0)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(empty, "$and", v9);
      v12 = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(v12, "$and", v7);
      xpc_dictionary_set_value(v12, "$or", empty);
      xpc_release(empty);
      v13 = sub_100010D84(1, 0, v12);
      xpc_release(v12);
      v10 = sub_100010E34(v13);
      xpc_release(v13);
    }

    else
    {
      v10 = 0;
    }

    xpc_release(v7);
  }

  else
  {
    v10 = 0;
    v9 = v7;
  }

  xpc_release(v9);
  return v10;
}

xpc_object_t sub_1000112A8(unint64_t a1, uint64_t a2, int64_t *a3)
{
  v4 = sub_1000110AC(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  value = xpc_dictionary_get_value(v4, "reqs");
  v7 = value;
  if (value)
  {
    xpc_retain(value);
  }

  *a3 = xpc_dictionary_get_int64(v5, "ccat");
  xpc_release(v5);
  return v7;
}

uint64_t sub_100011320(void *a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 4;
  v4 = sub_100010BC8(a1);
  v14 = 0;
  v15 = 0;
  bytes = 7;
  v13 = 0;
  xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10001143C;
  applier[3] = &unk_100078340;
  applier[5] = a2;
  applier[6] = a1;
  applier[4] = &v8;
  xpc_array_apply(v4, applier);
  xpc_release(v4);
  v5 = *(v9 + 6);
  if (!v5)
  {
    v14 = 0;
    v15 = 0;
    bytes = 8;
    v13 = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_10001143C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v17 = 0;
  v18 = 0;
  bytes = 5;
  v16 = 0;
  xpc_array_set_data(v5, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  string_ptr = xpc_string_get_string_ptr(a3);
  v12[3] = 0;
  v12[0] = 3;
  v12[1] = sub_1000166EC(string_ptr);
  v12[2] = xpc_string_get_length(a3);
  xpc_array_set_data(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v12, 0x20uLL);
  v7 = *(a1 + 48);
  v8 = xpc_string_get_string_ptr(a3);
  value = xpc_dictionary_get_value(v7, v8);
  if (value)
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100011674(value, *(a1 + 40));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      bytes = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        v16 = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      xpc_string_get_string_ptr(a3);
      _os_log_simple();
      return 0;
    }

    else
    {
      v10 = *(a1 + 40);
      v17 = 0;
      v18 = 0;
      bytes = 6;
      v16 = 0;
      xpc_array_set_data(v10, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      return 1;
    }
  }

  else
  {
    bytes = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      bytes = 0;
      v16 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    xpc_string_get_string_ptr(a3);
    _os_log_simple();
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  return result;
}

uint64_t sub_100011674(void *a1, void *a2)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_string)
  {
    v16 = 0;
    bytes = 2;
    string_ptr = xpc_string_get_string_ptr(a1);
    length = xpc_string_get_length(a1);
LABEL_12:
    v15 = length;
LABEL_16:
    LOBYTE(v16) = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    return 0;
  }

  v5 = type;
  if (type == &_xpc_type_int64)
  {
    bytes = 4;
    v16 = 0;
    string_ptr = xpc_int64_get_value(a1);
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (type == &_xpc_type_BOOL)
  {
    bytes = 1;
    v16 = 0;
    string_ptr = xpc_BOOL_get_value(a1);
    goto LABEL_15;
  }

  if (type == &_xpc_type_data)
  {
    v16 = 0;
    bytes = 9;
    string_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    goto LABEL_12;
  }

  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_array)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2000000000;
      v12 = 4;
      v15 = 0;
      v16 = 0;
      bytes = 5;
      string_ptr = 0;
      xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      bytes = _NSConcreteStackBlock;
      string_ptr = 0x40000000;
      v15 = sub_100011980;
      v16 = &unk_100078368;
      v17 = &v9;
      v18 = a2;
      xpc_array_apply(a1, &bytes);
      v7 = *(v10 + 6);
      if (!v7)
      {
        v21 = 0;
        v22 = 0;
        v19 = 6;
        v20 = 0;
        xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &v19, 0x20uLL);
        v7 = *(v10 + 6);
      }

      _Block_object_dispose(&v9, 8);
    }

    else
    {
      bytes = 0;
      string_ptr = 0;
      v19 = 0;
      v20 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        string_ptr = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v9 = 0;
        _dyld_get_shared_cache_range();
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      xpc_type_get_name(v5);
      _os_log_simple();
      return 1;
    }

    return v7;
  }

  return sub_100011320(a1, a2);
}

uint64_t sub_1000119CC(uint64_t a1, uint64_t a2, xpc_object_t xdata)
{
  v3 = (*(a1 + 32) + 32 * a2);
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  v5 = bytes_ptr[1];
  *v3 = *bytes_ptr;
  v3[1] = v5;
  return 1;
}

void *sub_100011A04()
{
  v0 = sub_100014514(0x18uLL, 0x80040D6874129uLL);
  os_map_str_init();
  return v0;
}

size_t sub_100011A4C(uint64_t a1, const char *a2)
{
  v3 = os_map_str_find();
  if (v3)
  {
    ++*v3;
    return (v3 + 1);
  }

  v5 = strlen(a2);
  v6 = v5 + 4;
  v7 = v5 >= 0xFFFFFFFFFFFFFFFCLL;
  result = v5 + 5;
  v9 = ((v6 == -1) << 63) >> 63 != (v6 == -1);
  if (!v7 && !v9)
  {
    v10 = sub_100014514(result, 0x66FC508FuLL);
    v4 = v10 + 1;
    v11 = strlen(a2);
    memcpy(v10 + 1, a2, v11);
    *v10 = 1;
    os_map_str_insert();
    return v4;
  }

  __break(1u);
  return result;
}

void sub_100011B10()
{
  v0 = os_map_str_find();
  if (!v0)
  {
    sub_1000545D8();
  }

  v1 = v0;
  if ((*v0)-- == 1)
  {
    os_map_str_delete();

    free(v1);
  }
}

void sub_100011B8C(void *a1)
{
  if (os_map_str_count())
  {
    sub_1000545F4();
  }

  os_map_str_destroy();

  free(a1);
}

uint64_t sub_100011BD4()
{
  sub_10004AB38(12, sub_100011C28);
  qword_10007DF60 = 0;
  qword_10007DF68 = 0;
  qword_10007DF70 = 0x900000000;

  return sub_100011DA0(0);
}

uint64_t sub_100011C28(uint64_t a1, int a2, void *a3)
{
  v5 = sub_10004AB10();
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(v5, 40))
  {
    return 144;
  }

  if (a2 != 1300)
  {
    return 33;
  }

  memset(v13, 0, sizeof(v13));
  v6 = sub_100045C2C(v5, v13);
  sub_100012594(5, "trial factors reload initiated by %s[%d]", v6, *(v5 + 5));
  v7 = xpc_retain(a3);
  reply = xpc_dictionary_create_reply(v7);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(reply, "reload-error", 0);
  xpc_dictionary_set_value(reply, "errors", empty);
  xpc_release(empty);
  v10 = sub_1000157E4();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000125D8;
  block[3] = &unk_1000783A8;
  block[4] = v7;
  block[5] = reply;
  dispatch_async(v10, block);
  return 0;
}

uint64_t sub_100011DA0(void *a1)
{
  sub_100010B28();
  v2 = sub_10001C850("/System/Library/Trial/AllowedFactorsAndDefaults");
  count = xpc_array_get_count(v2);
  sub_100012594(5, "reading known trial factors from %zu paths", count);
  if (xpc_array_get_count(v2))
  {
    v4 = 0;
    do
    {
      string = xpc_array_get_string(v2, v4);
      sub_100012594(5, "  [%zu] => %s", v4++, string);
    }

    while (v4 < xpc_array_get_count(v2));
  }

  empty = xpc_array_create_empty();
  if (xpc_array_get_count(v2))
  {
    v7 = 0;
    while (1)
    {
      LODWORD(v25) = 0;
      v8 = xpc_array_get_string(v2, v7);
      v9 = sub_10001C9BC(v8, &v25);
      if (v9)
      {
        break;
      }

      sub_100012594(3, "failed to read known factors plist from %s: %d", v8, v25);
      v11 = v25;
LABEL_12:
      sub_100012634(a1, v8, v11);
LABEL_13:
      if (++v7 >= xpc_array_get_count(v2))
      {
        goto LABEL_18;
      }
    }

    v10 = v9;
    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      v11 = sub_10001271C(v10);
      if (v11)
      {
        goto LABEL_11;
      }

      array = xpc_dictionary_get_array(v10, "KnownFactors");
      if (array && sub_100016B6C(array))
      {
        LODWORD(v25) = 0;
        v14 = xpc_dictionary_get_array(v10, "KnownFactors");
        applier = _NSConcreteStackBlock;
        v30 = 0x40000000;
        v31 = sub_10001277C;
        v32 = &unk_1000783C8;
        v33 = empty;
        xpc_array_apply(v14, &applier);
        xpc_release(v10);
        goto LABEL_13;
      }
    }

    v11 = 109;
LABEL_11:
    v12 = xpc_strerror();
    sub_100012594(3, "failed to validate known factors plist from %s: %s: %d", v8, v12, v11);
    xpc_release(v10);
    LODWORD(v25) = v11;
    goto LABEL_12;
  }

LABEL_18:
  sub_100012594(5, "reading active trial factors from %s", "/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist");
  v24 = 0;
  v15 = sub_10001CA3C("/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist", &v24);
  v16 = v15;
  if (!v24)
  {
    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2000000000;
      v28 = sub_10001271C(v16);
      v17 = *(v26 + 6);
      if (!v17)
      {
        dictionary = xpc_dictionary_get_dictionary(v16, "ActiveLowLevelFactors");
        if (dictionary)
        {
          applier = _NSConcreteStackBlock;
          v30 = 0x40000000;
          v31 = sub_1000127C8;
          v32 = &unk_1000783F0;
          v33 = &v25;
          v34 = empty;
          xpc_dictionary_apply(dictionary, &applier);
          v17 = *(v26 + 6);
          _Block_object_dispose(&v25, 8);
          v24 = v17;
          if (!v17)
          {
            goto LABEL_27;
          }

LABEL_26:
          sub_100012634(a1, "/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist", v17);
          xpc_release(v16);
          v16 = 0;
          goto LABEL_27;
        }

        v17 = 109;
      }

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v17 = 109;
    }

    v24 = v17;
    goto LABEL_26;
  }

  if (v15)
  {
    sub_100054404();
  }

  sub_100012634(a1, "/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist", v24);
LABEL_27:
  if (xpc_get_type(empty) != &_xpc_type_array)
  {
    sub_100054404();
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  v18 = xpc_dictionary_get_dictionary(v16, "ActiveLowLevelFactors");
  if (!v18)
  {
    sub_100054404();
  }

  v19 = v18;
  v20 = xpc_dictionary_create_empty();
  applier = _NSConcreteStackBlock;
  v30 = 0x40000000;
  v31 = sub_100012880;
  v32 = &unk_100078410;
  v33 = empty;
  v34 = v20;
  if (!xpc_dictionary_apply(v19, &applier))
  {
    xpc_release(v20);
LABEL_32:
    v20 = 0;
  }

  os_unfair_lock_lock(&unk_10007DF78);
  v21 = qword_10007DF60;
  qword_10007DF60 = v20;
  ++qword_10007DF68;
  os_unfair_lock_unlock(&unk_10007DF78);
  xpc_release(v2);
  xpc_release(empty);
  if (v16)
  {
    xpc_release(v16);
  }

  if (v21)
  {
    xpc_release(v21);
  }

  return sub_100010B28();
}

void sub_10001224C(uint64_t a1)
{
  os_unfair_lock_lock(&unk_10007DF78);
  if (qword_10007DF60)
  {
    v2 = *(a1 + 256);
    if (!v2)
    {
      v2 = a1;
    }

    v3 = *(v2 + 576);
    v4 = (v2 + 1424);
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    value = xpc_dictionary_get_value(qword_10007DF60, v5);
    if (value)
    {
      v7 = value;
      v12 = 0;
      empty = xpc_array_create_empty();
      v13 = _NSConcreteStackBlock;
      v14 = 0x40000000;
      v15 = sub_100012B2C;
      v16 = &unk_100078478;
      v17 = &qword_10007DF60;
      v18 = a1;
      v19 = &v12;
      v20 = empty;
      sub_100012A94(v7, &v13);
      v9 = HIDWORD(v12);
      *(a1 + 1212) = HIDWORD(v12);
      LODWORD(qword_10007DF70) = qword_10007DF70 + v9;
      v10 = sub_10000FC98(0x80uLL);
      v13 = _NSConcreteStackBlock;
      v14 = 0x40000000;
      v15 = sub_100012C50;
      v16 = &unk_1000784C0;
      v17 = empty;
      v18 = v10;
      sub_100012A94(empty, &v13);
      v11 = sub_10000FCFC(v10);
      sub_10000FD04(v10);
      if (v11 && *v11)
      {
        sub_100002C64(a1, "__TRIFactors", v11, 0);
      }

      free(v11);
      xpc_release(empty);
    }
  }

  os_unfair_lock_unlock(&unk_10007DF78);
}

void sub_1000123F4(uint64_t a1)
{
  os_unfair_lock_lock(&unk_10007DF78);
  LODWORD(qword_10007DF70) = qword_10007DF70 - *(a1 + 1212);
  *(a1 + 1212) = 0;
  v2 = a1 + 1024;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (sub_1000169A8((v2 + 32), "__TRIFactors="))
    {
      sub_100002BD0(a1, v2);
      break;
    }
  }

  os_unfair_lock_unlock(&unk_10007DF78);
}

void sub_100012488(FILE *a1, uint64_t a2)
{
  os_unfair_lock_lock(&unk_10007DF78);
  sub_100049ECC(a1, a2, "trial factors reloads = %zu", v4, v5, v6, v7, v8, qword_10007DF68);
  sub_100049ECC(a1, a2, "trial factors memory = %d/%d", v9, v10, v11, v12, v13, qword_10007DF70, HIDWORD(qword_10007DF70));
  sub_100049ECC(a1, a2, "trial factors = {", v14, v15, v16, v17, v18);
  if (qword_10007DF60)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100012CBC;
    applier[3] = &unk_100078500;
    applier[4] = a1;
    applier[5] = a2;
    xpc_dictionary_apply(qword_10007DF60, applier);
  }

  sub_100049ECC(a1, a2, "}", v19, v20, v21, v22, v23);
  os_unfair_lock_unlock(&unk_10007DF78);
}

void sub_1000125D8(uint64_t a1)
{
  sub_100011DA0(*(a1 + 40));
  xpc_release(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = xpc_pipe_routine_reply();
  xpc_release(*(a1 + 40));
  if ((v3 | 0x20) != 0x20)
  {
    _os_assumes_log();
  }
}

void sub_100012634(void *a1, const char *a2, int a3)
{
  if (!a3)
  {
    sub_100054404();
  }

  v6 = xpc_strerror();
  sub_100012594(4, "failed to process path: %s: %s: %d", a2, v6, a3);
  if (a1)
  {
    dictionary = xpc_dictionary_get_dictionary(a1, "errors");
    int64 = xpc_dictionary_get_int64(a1, "reload-error");
    xpc_dictionary_set_int64(dictionary, a2, a3);
    if (int64)
    {
      v9 = 133;
    }

    else
    {
      v9 = a3;
    }

    xpc_dictionary_set_int64(a1, "reload-error", v9);
  }
}

uint64_t sub_10001271C(void *a1)
{
  result = xpc_dictionary_get_value(a1, "Version");
  if (result)
  {
    v2 = result;
    if (xpc_get_type(result) == &_xpc_type_int64)
    {
      if (xpc_int64_get_value(v2) == 1)
      {
        return 0;
      }

      else
      {
        return 45;
      }
    }

    else
    {
      return 109;
    }
  }

  return result;
}

uint64_t sub_10001277C(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if ((sub_100016AEC(*(a1 + 32), string_ptr) & 1) == 0)
  {
    xpc_array_append_value(*(a1 + 32), xstring);
  }

  return 1;
}

uint64_t sub_1000127C8(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_array && sub_100016B6C(object))
  {
    if (!xpc_array_get_count(object))
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 40);
      string = xpc_array_get_string(object, v5);
      if ((sub_100016AEC(v6, string) & 1) == 0)
      {
        break;
      }

      if (++v5 >= xpc_array_get_count(object))
      {
        return 1;
      }
    }

    v9 = 22;
  }

  else
  {
    v9 = 109;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = v9;
  return result;
}

uint64_t sub_100012880(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    sub_100054404();
  }

  v6 = *(a1 + 32);
  empty = xpc_array_create_empty();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_100012970;
  v9[3] = &unk_100078430;
  v9[4] = v6;
  v9[5] = empty;
  if (xpc_array_apply(object, v9))
  {
    if (empty)
    {
      xpc_dictionary_set_value(*(a1 + 40), a2, empty);
      xpc_release(empty);
      return 1;
    }
  }

  else
  {
    xpc_release(empty);
  }

  return 0;
}

BOOL sub_100012970(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    sub_100054404();
  }

  v5 = *(a1 + 32);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100012A50;
  v8[3] = &unk_100078458;
  v8[4] = &v9;
  v8[5] = object;
  xpc_array_apply(v5, v8);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  if (v6)
  {
    xpc_array_append_value(*(a1 + 40), v6);
  }

  return v6 != 0;
}

BOOL sub_100012A50(uint64_t a1, int a2, xpc_object_t object1)
{
  v5 = xpc_equal(object1, *(a1 + 40));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = object1;
  }

  return !v5;
}

BOOL sub_100012A94(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    sub_100054404();
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100012BD4;
  applier[3] = &unk_1000784A0;
  applier[4] = a2;
  return xpc_array_apply(a1, applier);
}

uint64_t sub_100012B2C(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *v6;
  if ((*v6 & 1) != 0 || (v8 = *(a1 + 40), !sub_100016A4C(a3, "SanitizersAllocationTraces")))
  {
    v9 = 0;
  }

  else
  {
    if ((*(v8 + 1416) & 4) == 0)
    {
      return 1;
    }

    v7 = 1;
    v9 = 9;
  }

  if (*(v5 + 20) - *(v5 + 16) >= v9)
  {
    *v6 = v7;
    *(v6 + 4) = sub_100017160(*(v6 + 4), v9);
    xpc_array_set_string(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, a3);
  }

  return 1;
}

uint64_t sub_100012BD4(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    sub_100054404();
  }

  v6 = *(a1 + 32);
  string_ptr = xpc_string_get_string_ptr(object);
  v8 = *(v6 + 16);

  return v8(v6, a2, string_ptr);
}

uint64_t sub_100012C50(uint64_t a1, size_t a2, char a3)
{
  if (xpc_array_get_count(*(a1 + 32)) - 1 <= a2)
  {
    v11 = "%s";
  }

  else
  {
    v11 = "%s ";
  }

  sub_10000FD40(*(a1 + 40), v11, v5, v6, v7, v8, v9, v10, a3);
  return 1;
}

uint64_t sub_100012CBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(*(a1 + 32), *(a1 + 40) + 1, "%s =>", a4, a5, a6, a7, a8, a2);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100012D60;
  applier[3] = &unk_1000784E0;
  v10 = *(a1 + 40);
  applier[4] = *(a1 + 32);
  applier[5] = v10;
  xpc_array_apply(a3, applier);
  return 1;
}

uint64_t sub_100012D60(uint64_t a1, uint64_t a2, xpc_object_t xstring)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100049ECC(v4, v5 + 2, "[%zu] => %s", v7, v8, v9, v10, v11, a2, string_ptr);
  return 1;
}

void sub_100012DB8(uint64_t a1)
{
  if (*(a1 + 16) != 2)
  {
    sub_100054404();
  }

  if (*(a1 + 32))
  {
    sub_100054404();
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  v2 = *(a1 + 64);

  free(v2);
}

_BYTE *sub_100012E18(uint64_t a1, const char *a2, const char *a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    sub_100054404();
  }

  v10 = sub_10001BFF8(0);
  v10[16] = 0;
  *(v10 + 5) = a4;
  *(v10 + 3) = a1;
  *(v10 + 4) = 1;
  *(v10 + 10) = -1;
  *(v10 + 6) = 0;
  if (a2)
  {
    *(v10 + 6) = sub_1000166EC(a2);
  }

  *(v10 + 7) = 0;
  if (a3)
  {
    *(v10 + 7) = sub_1000166EC(a3);
  }

  *(v10 + 8) = 0;
  *(v10 + 9) = a5;
  return v10;
}

uint64_t sub_100012EB4(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    sub_100054404();
  }

  if (*(result + 16))
  {
    sub_100054404();
  }

  *(result + 32) = v1 + 1;
  return result;
}

uint64_t sub_100012EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    sub_100054404();
  }

  if (*(a1 + 16))
  {
    sub_100054404();
  }

  v3 = v1 - 1;
  *(a1 + 32) = v3;
  if (!v3)
  {
    *(a1 + 16) = 1;
    (*(a1 + 72))(*(a1 + 24));
  }

  return a1;
}

void *sub_100012F44(void *result, const void *a2)
{
  if (result[4])
  {
    sub_100054404();
  }

  v2 = result;
  if (*(result + 16) != 1)
  {
    sub_100054404();
  }

  *(result + 16) = 2;
  if (a2)
  {
    result = sub_1000166A0(a2, 0x168uLL);
    v2[8] = result;
  }

  return result;
}

uint64_t sub_100012F9C(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(a2, a3, "ID = %llu", a4, a5, a6, a7, a8, *(a1 + 24));
  v16 = *(a1 + 20);
  v17 = "unknown";
  v18 = "jetsam";
  if (v16 != 1)
  {
    v18 = "unknown";
  }

  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = "resource";
  }

  sub_100049ECC(a2, a3, "type = %s", v11, v12, v13, v14, v15, v19);
  v25 = *(a1 + 16);
  if (v25 <= 2)
  {
    v17 = (&off_100078520)[v25];
  }

  sub_100049ECC(a2, a3, "state = %s", v20, v21, v22, v23, v24, v17);
  result = sub_100049ECC(a2, a3, "active count = %llu", v26, v27, v28, v29, v30, *(a1 + 32));
  if (*(a1 + 48))
  {
    result = sub_100049ECC(a2, a3, "name = %s", v32, v33, v34, v35, v36, *(a1 + 48));
  }

  if (*(a1 + 56))
  {
    return sub_100049ECC(a2, a3, "bundle ID = %s", v32, v33, v34, v35, v36, *(a1 + 56));
  }

  return result;
}

uint64_t sub_1000130D8(uint64_t result, int a2)
{
  if (*(result + 16) != a2)
  {
    sub_100054404();
  }

  return result;
}

void sub_10001311C(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = os_map_str_delete();
  if (v4 != a1)
  {
    sub_100054610(v4, v3, a1);
  }

  xpc_release(*(a1 + 24));
  free(*(a1 + 16));
  v5 = *(a1 + 32);

  free(v5);
}

void *sub_10001318C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  property = xpc_bundle_get_property();
  if (!property)
  {
    *a3 = 107;
    v26 = "Could not get path for service bundle.";
LABEL_11:
    sub_10002C908(a1, 3, v26, v6, v7, v8, v9, v10, v28);
    return 0;
  }

  v11 = property;
  info_dictionary = xpc_bundle_get_info_dictionary();
  if (!info_dictionary)
  {
    *a3 = 107;
    v28 = v11;
    v26 = "Could not get Info.plist for bundle at %s";
    goto LABEL_11;
  }

  v13 = info_dictionary;
  string = xpc_dictionary_get_string(info_dictionary, "CFBundleIdentifier");
  if (!string)
  {
    sub_10002C908(a1, 3, "Bundle Info.plist at %s does not have a CFBundleIdentifier", v15, v16, v17, v18, v19, v11);
    v25 = 0;
    *a3 = 107;
    return v25;
  }

  v20 = string;
  executable_path = xpc_bundle_get_executable_path();
  v22 = os_map_str_find();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  v24 = (v22 + 40);
  if (!sub_100016A6C(v20, (v22 + 40)))
  {
    sub_10004749C(65539, "CACHE INVARIANT VIOLATED: %s | %s != %s", v11, v20, v24);
LABEL_16:
    os_map_str_delete();
    goto LABEL_8;
  }

  if (!sub_100016A6C(executable_path, v23[2]))
  {
    sub_10004749C(65539, "CACHE INVARIANT VIOLATED: %s | %s != %s", v11, executable_path, v23[2]);
    goto LABEL_16;
  }

  v25 = sub_10001B5B8(v23);
  if (!v25)
  {
LABEL_8:
    v25 = sub_10001C078(v20);
    v25[2] = sub_1000166EC(executable_path);
    v25[3] = xpc_retain(v13);
    v25[4] = sub_1000166EC(v11);
    os_map_str_insert();
  }

  return v25;
}

uint64_t sub_100013350(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x728uLL);
  *(a1 + 1128) = 0x6400000064;
  if (posix_spawnattr_init(a1))
  {
    sub_100054420();
  }

  result = posix_spawn_file_actions_init((a1 + 8));
  if (result)
  {
    sub_100054420();
  }

  *(a1 + 1208) = a2;
  return result;
}

void sub_1000133A8(uint64_t a1)
{
  posix_spawnattr_destroy(a1);
  posix_spawn_file_actions_destroy((a1 + 8));
  while (1)
  {
    v2 = *(a1 + 1824);
    if (!v2)
    {
      break;
    }

    *(a1 + 1824) = *v2;
    free(v2);
  }

  free(*(a1 + 1216));
  free(*(a1 + 1232));
  if (*(a1 + 1248))
  {
    v3 = *(a1 + 1240);

    free(v3);
  }
}

uint64_t sub_100013424(posix_spawnattr_t *a1, __int16 a2, __int16 a3)
{
  v7 = 0;
  if (posix_spawnattr_getflags(a1, &v7))
  {
    sub_100054420();
  }

  v7 = v7 & ~a3 | a2;
  result = posix_spawnattr_setflags(a1, v7);
  if (result)
  {
    sub_100054420();
  }

  return result;
}

uint64_t sub_100013494(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!*(a1 + 1208))
  {
    v20 = "Missing program";
    v21 = 22;
    v22 = 581;
    return sub_100021AF4(a1, v21, 0, v22, 0, v20, a7, a8, v143);
  }

  if (*(a2 + 108))
  {
    v12 = 16512;
  }

  else
  {
    v12 = 0x4000;
  }

  v13 = *(a2 + 240);
  if ((v13 & 0x8000) == 0 || MEMORY[0xFFFFF4084] == 0)
  {
    v15 = 1024;
  }

  else
  {
    v15 = 1280;
  }

  if ((v13 & 0x10000) != 0 && posix_spawnattr_disable_ptr_auth_a_keys_np())
  {
    sub_100054420();
  }

  if (*(a2 + 202) && posix_spawnattr_set_use_sec_transition_shims_np())
  {
    sub_100054420();
  }

  sub_100013424(v8, (v13 >> 9) & 0x200 | v12 | (v13 >> 7) & 0x8000 | v15 | *(a2 + 242) & 0x800, 0);
  v16 = _xpc_spawnattr_binprefs_unpack(a2, a3);
  if (v16)
  {
    v17 = v16;
    xpc_binprefs_set_psattr(v16, v8);
    free(v17);
  }

  v18 = *(a2 + 204);
  if (v18 && posix_spawnattr_set_qos_class_np(v8, v18))
  {
    sub_100054420();
  }

  v19 = *(a2 + 240);
  if ((v19 & 0x200000) != 0)
  {
    if ((*(a2 + 232) != 100 || *(a2 + 228)) && posix_spawnattr_setcpumonitor())
    {
      sub_100054420();
    }
  }

  else if ((v19 & 2) != 0)
  {
    if (posix_spawnattr_setcpumonitor_default())
    {
      sub_100054420();
    }
  }

  else if ((v19 & 1) == 0 && posix_spawnattr_setcpumonitor_default())
  {
    sub_100054420();
  }

  v24 = *(a2 + 120);
  v25 = *(a2 + 124);
  v26 = *(a2 + 128);
  v27 = *(a2 + 132);
  if (posix_spawnattr_setjetsam_ext())
  {
    sub_100054420();
  }

  v28 = *(a2 + 136);
  if (posix_spawnattr_set_threadlimit_ext())
  {
    sub_100054420();
  }

  v29 = *(a2 + 140);
  if (posix_spawnattr_set_max_addr_np())
  {
    sub_100054420();
  }

  v30 = *(a2 + 148);
  v31 = *(a2 + 152);
  if (posix_spawnattr_set_portlimits_ext())
  {
    sub_100054420();
  }

  v32 = *(a2 + 156);
  v33 = *(a2 + 160);
  if (posix_spawnattr_set_filedesclimit_ext())
  {
    sub_100054420();
  }

  v34 = *(a2 + 164);
  v35 = *(a2 + 168);
  if (posix_spawnattr_set_kqworklooplimit_ext())
  {
    sub_100054420();
  }

  v36 = *(a2 + 176);
  if (posix_spawnattr_set_conclavememlimit_ext())
  {
    sub_100054420();
  }

  if ((*(a2 + 243) & 2) != 0 && posix_spawnattr_set_max_addr_np())
  {
    sub_100054420();
  }

  v37 = *(a2 + 180);
  if (posix_spawnattr_set_crash_behavior_np())
  {
    sub_100054420();
  }

  v38 = *(a2 + 184);
  if (posix_spawnattr_set_crash_behavior_deadline_np())
  {
    sub_100054420();
  }

  v39 = *(a2 + 200);
  if (posix_spawnattr_set_launch_type_np())
  {
    sub_100054420();
  }

  v40 = *(a2 + 192);
  v41 = *(a2 + 196);
  if (posix_spawnattr_set_crash_count_np())
  {
    sub_100054420();
  }

  v42 = *(a2 + 116);
  if (posix_spawnattr_set_darwin_role_np())
  {
    sub_100054420();
  }

  v43 = *(a2 + 233);
  if (v43 == 1)
  {
    if (posix_spawnattr_setdataless_iopolicy_np())
    {
      sub_100054420();
    }
  }

  else if (v43 == 2 && posix_spawnattr_setdataless_iopolicy_np())
  {
    sub_100054420();
  }

  v44 = *(a2 + 80);
  if (v44)
  {
    v45 = _xpc_spawnattr_unpack_string(a2, a3, v44);
    if (!v45)
    {
      v50 = "Unable to unpack container_id";
      v51 = v8;
      v52 = 127;
      goto LABEL_64;
    }

    v48 = v45;
    v49 = *(a2 + 84);
    if (!v49)
    {
      sandbox_spawnattrs_init();
LABEL_59:
      if (sandbox_spawnattrs_setcontainer() == -1)
      {
        sub_10005453C();
      }

LABEL_60:
      if (posix_spawnattr_setmacpolicyinfo_np())
      {
        sub_100054420();
      }

      goto LABEL_65;
    }
  }

  else
  {
    v49 = *(a2 + 84);
    if (!v49)
    {
      goto LABEL_65;
    }

    v48 = 0;
  }

  if (_xpc_spawnattr_unpack_string(a2, a3, v49))
  {
    sandbox_spawnattrs_init();
    if (sandbox_spawnattrs_setprofilename() == -1)
    {
      sub_10005453C();
    }

    if (!v48)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v50 = "Unable to unpack sandbox profile";
  v51 = v8;
  v52 = 136;
LABEL_64:
  result = sub_100021AF4(v51, 22, 0, v52, 0, v50, v46, v47, v143);
  if (result)
  {
    return result;
  }

LABEL_65:
  v53 = *(a2 + 88);
  if (v53)
  {
    _xpc_spawnattr_unpack_string(a2, a3, v53);
    if (posix_spawnattr_set_subsystem_root_path_np())
    {
      sub_100054420();
    }
  }

  v54 = *(a2 + 16);
  if (v54)
  {
    v55 = sub_100014514(8 * v54 + 8, 0x14382343uLL);
    *(v8 + 1216) = v55;
    if (!_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 20), v55, *(a2 + 16)))
    {
      v72 = "Unable to unpack argv";
      v73 = v8;
      v74 = 538;
      goto LABEL_77;
    }

    v58 = (*(v8 + 1216) + 8 * *(a2 + 16));
  }

  else
  {
    v59 = sub_100014514(0x10uLL, 0xC1E8D02EuLL);
    *(v8 + 1216) = v59;
    *v59 = *(v8 + 1208);
    v58 = v59 + 1;
  }

  *v58 = 0;
  v60 = sub_100014514(8 * *(a2 + 24) + 56, 0xE4322039uLL);
  *(v8 + 1232) = v60;
  v64 = *(a2 + 24);
  if (!v64)
  {
LABEL_74:
    v65 = *(a2 + 240);
    sub_10001444C(v8, "XXXXXXXX%s=%llx", v61, v62, v64, v63, v56, v57, "XPC_FLAGS");
    goto LABEL_78;
  }

  if (_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 28), v60, v64))
  {
    *(v8 + 1224) = *(a2 + 24);
    goto LABEL_74;
  }

  v72 = "Unable to unpack environment";
  v73 = v8;
  v74 = 566;
LABEL_77:
  result = sub_100021AF4(v73, 22, 0, v74, 0, v72, v56, v57, v143);
  if (result)
  {
    return result;
  }

LABEL_78:
  if (*(v8 + 1128) != -101)
  {
    if (a4)
    {
      v144 = *a4;
      *(v8 + 1120) = sub_10001444C(v8, "XXXXXXXX%s=%s", v66, v67, v68, v69, v70, v71, "LOGNAME") + 8;
      sub_10001444C(v8, "XXXXXXXX%s=%s", v75, v76, v77, v78, v79, v80, "USER");
      v145 = a4[6];
      sub_10001444C(v8, "XXXXXXXX%s=%s", v81, v82, v83, v84, v85, v86, "HOME");
      v146 = a4[7];
      sub_10001444C(v8, "XXXXXXXX%s=%s", v87, v88, v89, v90, v91, v92, "SHELL");
      v99 = *(v8 + 1128);
      if (v99 >= 0x1F5 && v99 != -2)
      {
        v147 = a4[6];
        sub_10001444C(v8, "XXXXXXXX%s=%s/tmp", v93, v94, v95, v96, v97, v98, "TMPDIR");
      }

      v100 = *(v8 + 1120);
      if (posix_spawnattr_set_login_np())
      {
        sub_100054420();
      }

      v101 = *(v8 + 1128);
      if (posix_spawnattr_set_uid_np())
      {
        sub_100054420();
      }

      v102 = *(v8 + 1132);
      if (posix_spawnattr_set_gid_np())
      {
        sub_100054420();
      }

      v103 = *(a2 + 240);
      if ((v103 & 0x2000) == 0)
      {
        v104 = *(v8 + 1136);
        if (posix_spawnattr_set_groups_np())
        {
          sub_100054420();
        }

        v103 = *(a2 + 240);
      }

      if ((v103 & 0x1000000) != 0)
      {
        v105 = *(v8 + 1128);
        if (posix_spawnattr_set_persona_uid_np())
        {
          sub_100054420();
        }

        v106 = *(v8 + 1132);
        if (posix_spawnattr_set_persona_gid_np())
        {
          sub_100054420();
        }

        if ((*(a2 + 241) & 0x20) == 0)
        {
          v107 = *(v8 + 1136);
          if (posix_spawnattr_set_persona_groups_np())
          {
            sub_100054420();
          }
        }
      }
    }

    else
    {
      result = sub_100021AF4(v8, 22, 0, 355, 0, "Unable to setup identify", v70, v71, v143);
      if (result)
      {
        return result;
      }
    }
  }

  v108 = xpc_dictionary_create(0, 0, 0);
  if (*(v8 + 1224))
  {
    v109 = 0;
    v110 = 0;
    while (1)
    {
      v111 = *(*(v8 + 1232) + 8 * v109);
      v112 = strchr(v111, 61);
      if (!v112 || v112 == v111)
      {
        break;
      }

      v116 = sub_100016744(v111, v112 - v111);
      if (!xpc_dictionary_get_value(v108, v116))
      {
        xpc_dictionary_set_BOOL(v108, v116, 1);
        *(*(v8 + 1232) + 8 * v110++) = v111;
      }

      free(v116);
      if (++v109 >= *(v8 + 1224))
      {
        goto LABEL_107;
      }
    }

    result = sub_100021AF4(v8, 22, 0, 465, 0, "Invalid environment[%zd]: %s", v113, v114, v109);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v110 = 0;
LABEL_107:
    xpc_release(v108);
    *(v8 + 1224) = v110;
    *(*(v8 + 1232) + 8 * v110) = 0;
  }

  v117 = *(a2 + 64);
  if (v117)
  {
    v120 = _xpc_spawnattr_unpack_string(a2, a3, v117);
    if (!v120)
    {
      v121 = "Unable to unpack cwd";
      v122 = v8;
      v123 = 225;
LABEL_143:
      result = sub_100021AF4(v122, 22, 0, v123, 0, v121, v118, v119, v143);
LABEL_144:
      if (result)
      {
        return result;
      }

      goto LABEL_145;
    }
  }

  else
  {
    v120 = "/";
  }

  v124 = *(a2 + 68);
  if (v124)
  {
    v125 = _xpc_spawnattr_unpack_string(a2, a3, v124);
    if (!v125)
    {
      v121 = "Unable to unpack stdin";
      v122 = v8;
      v123 = 242;
      goto LABEL_143;
    }

    v126 = v125;
    bzero(__str, 0x400uLL);
    if (*v126 != 47)
    {
      v148 = v126;
      v126 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v120, v148);
    }

    v127 = sub_1000144B4(v126);
    if (v127)
    {
      result = sub_100021AF4(v8, v127, 0, 254, 0, "Unable to create stdin directory (%s)", v128, v129, v126);
      goto LABEL_144;
    }

    if (posix_spawn_file_actions_addopen((v8 + 8), 0, v126, 131584, 0x1B6u))
    {
      sub_100054420();
    }
  }

  else if (posix_spawn_file_actions_addopen((v8 + 8), 0, "/dev/null", 0x20000, 0x1B6u))
  {
    sub_100054420();
  }

  v130 = *(a2 + 72);
  if (v130)
  {
    v131 = _xpc_spawnattr_unpack_string(a2, a3, v130);
    if (!v131)
    {
      v121 = "Unable to unpack stdout";
      v122 = v8;
      v123 = 269;
      goto LABEL_143;
    }

    v132 = v131;
    bzero(__str, 0x400uLL);
    if (*v132 != 47)
    {
      v149 = v132;
      v132 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v120, v149);
    }

    v133 = sub_1000144B4(v132);
    if (v133)
    {
      result = sub_100021AF4(v8, v133, 0, 281, 0, "Unable to create stdout directory (%s)", v134, v135, v132);
      goto LABEL_144;
    }

    if (posix_spawn_file_actions_addopen((v8 + 8), 1, v132, 131594, 0x1B6u))
    {
      sub_100054420();
    }
  }

  else if (posix_spawn_file_actions_addopen((v8 + 8), 1, "/dev/null", 131074, 0x1B6u))
  {
    sub_100054420();
  }

  v136 = *(a2 + 76);
  if (v136)
  {
    v137 = _xpc_spawnattr_unpack_string(a2, a3, v136);
    if (!v137)
    {
      v121 = "Unable to unpack stderr";
      v122 = v8;
      v123 = 296;
      goto LABEL_143;
    }

    v138 = v137;
    bzero(__str, 0x400uLL);
    if (*v138 != 47)
    {
      v150 = v138;
      v138 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v120, v150);
    }

    v139 = sub_1000144B4(v138);
    if (v139)
    {
      result = sub_100021AF4(v8, v139, 0, 308, 0, "Unable to create stderr directory (%s)", v140, v141, v138);
      goto LABEL_144;
    }

    if (posix_spawn_file_actions_addopen((v8 + 8), 2, v138, 131594, 0x1B6u))
    {
      sub_100054420();
    }
  }

  else if (posix_spawn_file_actions_addopen((v8 + 8), 2, "/dev/null", 131074, 0x1B6u))
  {
    sub_100054420();
  }

LABEL_145:
  if ((*(a2 + 242) & 2) != 0)
  {
    v142 = *(v8 + 1128);
    if (!v142 || v142 == -101)
    {
      v20 = "extensions cannot run as root";
      a1 = v8;
      v21 = 1;
      v22 = 775;
      return sub_100021AF4(a1, v21, 0, v22, 0, v20, a7, a8, v143);
    }
  }

  return 0;
}

uint64_t sub_100013FE4(posix_spawnattr_t *a1, uint64_t a2, uint64_t a3, xpc_object_t xarray, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 224);
  if (!v8)
  {
    return 0;
  }

  v11 = *(a2 + 220);
  v12 = 4 * v8;
  if (v12 > a3 - v11)
  {
    v27 = *(a2 + 220);
    return sub_100021AF4(a1, 22, 0, 803, 0, "No space for special ports: %zu > (%zu - %d)", a7, a8, v12);
  }

  v15 = 0;
  v16 = 0;
  v17 = a2 + v11 + 244;
  while (1)
  {
    xpc_array_get_value(xarray, v16);
    right = xpc_mach_send_get_right();
    v21 = right;
    if (right - 1 >= 0xFFFFFFFE)
    {
      v26 = v16;
      v23 = "Invalid special port[%zd]: %d";
      v24 = a1;
      v25 = 812;
      return sub_100021AF4(v24, 22, 0, v25, 0, v23, v19, v20, v26);
    }

    v22 = *(v17 + 4 * v16);
    if ((v22 - 128) > 2)
    {
      if (v22 == 4)
      {
        if ((*(a2 + 243) & 4) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = right;
        }
      }

      if (posix_spawnattr_setspecialport_np(a1, v21, v22))
      {
        sub_100054420();
      }

      goto LABEL_16;
    }

    if (*(v17 + 4 * v16) - 129 <= 1)
    {
      break;
    }

LABEL_16:
    if (++v16 >= *(a2 + 224))
    {
      return 0;
    }
  }

  if ((v15 & 1) == 0)
  {
    v15 = 1;
    if (posix_spawnattr_set_registered_ports_np())
    {
      sub_100054420();
    }

    goto LABEL_16;
  }

  v23 = "Already registered ports";
  v24 = a1;
  v25 = 826;
  return sub_100021AF4(v24, 22, 0, v25, 0, v23, v19, v20, v26);
}

size_t sub_10001418C(uint64_t a1, xpc_object_t xarray)
{
  result = xpc_array_get_count(xarray);
  if (result)
  {
    v5 = 0;
    while (1)
    {
      value = xpc_array_get_value(xarray, v5 + 1);
      if (xpc_get_type(value) != &_xpc_type_int64)
      {
        v13 = "setup_fds bad int type";
        v14 = a1;
        v15 = 870;
        return sub_100021AF4(v14, 9, 0, v15, 0, v13, v7, v8, v16);
      }

      v9 = xpc_int64_get_value(value);
      if (v9 < 0 || getdtablesize() <= v9)
      {
        getdtablesize();
        return sub_100021AF4(a1, 9, 0, 874, 0, "setup_fds bad dest: %d table: %d", v11, v12, v9);
      }

      v10 = xpc_array_get_value(xarray, v5);
      if (xpc_get_type(v10) != &_xpc_type_fd)
      {
        break;
      }

      _xpc_fd_get_port();
      if (posix_spawn_file_actions_add_fileportdup2_np())
      {
        sub_100054420();
      }

      v5 += 2;
      if (v5 >= xpc_array_get_count(xarray))
      {
        return 0;
      }
    }

    v13 = "setup_fds bad fd type";
    v14 = a1;
    v15 = 879;
    return sub_100021AF4(v14, 9, 0, v15, 0, v13, v7, v8, v16);
  }

  return result;
}

uint64_t sub_1000142E0(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5)
{
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = _xpc_spawnattr_unpack_bytes(a2, a3, *(a2 + 8), v8);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!a4 || !a5)
  {
    if (!v11)
    {
      return 0;
    }

    *(a1 + 1240) = sub_1000166A0(v9, v8);
    *(a1 + 1248) = v8;
    goto LABEL_20;
  }

  if (v11)
  {
    v12 = sub_100011184(a4, a5, v9, v8);
    if (v12)
    {
      v15 = v12;
      length = xpc_data_get_length(v12);
      *(a1 + 1248) = length;
      v17 = sub_100014514(length, 0x478D6232uLL);
      *(a1 + 1240) = v17;
      bytes = xpc_data_get_bytes(v15, v17, 0, *(a1 + 1248));
      v19 = *(a1 + 1248);
      xpc_release(v15);
      if (bytes == v19)
      {
        v20 = *(a1 + 1240);
        v21 = *(a1 + 1248);
        goto LABEL_20;
      }

      v23 = "Unable to copy merged spawn constraints";
      v24 = a1;
      v25 = 944;
    }

    else
    {
      v23 = "Unable to merge spawn constraints";
      v24 = a1;
      v25 = 939;
    }

    return sub_100021AF4(v24, 22, 0, v25, 0, v23, v13, v14, v26);
  }

  *(a1 + 1240) = sub_1000166A0(a4, a5);
  *(a1 + 1248) = a5;
LABEL_20:
  result = amfi_launch_constraint_set_spawnattr();
  if (result)
  {
    sub_100054420();
  }

  return result;
}

char *sub_10001444C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14[0] = 0;
  v14[1] = &a9;
  vasprintf(v14, a2, &a9);
  v10 = v14[0];
  *v14[0] = a1[228];
  a1[228] = v10;
  result = v10 + 8;
  v12 = a1[154];
  v13 = a1[153];
  a1[153] = v13 + 1;
  *(v12 + 8 * v13) = result;
  return result;
}

uint64_t sub_1000144B4(char *a1)
{
  v2 = strrchr(a1, 47);
  if (!v2)
  {
    return 22;
  }

  v3 = v2;
  v4 = *v2;
  *v2 = 0;
  LODWORD(result) = mkpath_np(a1, 0x1F6u);
  if (result == 17)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

  *v3 = v4;
  return result;
}

void *sub_100014514(size_t size, malloc_type_id_t type_id)
{
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      sub_100054420();
    }
  }

  while (sub_100016680());
  return v4;
}

void *sub_100014584(void *ptr, int a2, size_t size, malloc_type_id_t type_id)
{
  do
  {
    v7 = malloc_type_realloc(ptr, size, type_id);
    if (v7)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      sub_100054420();
    }
  }

  while (sub_100016680());
  return v7;
}

void sub_1000145F8(uint64_t a1, int a2)
{
  if (sub_100032A18(a1) == &unk_10007D720)
  {

    sub_10001464C(a2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_10001464C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != 18)
  {
    switch(dword_10007DF98)
    {
      case 0:
        if (a1 != 1)
        {
          goto LABEL_38;
        }

        break;
      case 1:
        if ((a1 - 1) >= 2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        if (a1 != 3)
        {
          goto LABEL_38;
        }

        break;
      case 3:
        if (a1 != 4)
        {
          goto LABEL_38;
        }

        break;
      case 4:
        if (a1 != 5)
        {
          goto LABEL_38;
        }

        break;
      case 5:
        if (a1 != 6)
        {
          goto LABEL_38;
        }

        break;
      case 6:
        if (a1 != 7)
        {
          goto LABEL_38;
        }

        break;
      case 7:
        if (a1 != 8)
        {
          goto LABEL_38;
        }

        break;
      case 8:
        if (a1 != 9)
        {
          goto LABEL_38;
        }

        break;
      case 9:
        if (a1 != 10)
        {
          goto LABEL_38;
        }

        break;
      case 10:
        if (a1 != 11)
        {
          goto LABEL_38;
        }

        break;
      case 11:
        if (a1 != 12)
        {
          goto LABEL_38;
        }

        break;
      case 12:
        if (a1 != 13)
        {
          goto LABEL_38;
        }

        break;
      case 13:
        if (a1 != 14)
        {
          goto LABEL_38;
        }

        break;
      case 14:
        if (a1 != 15)
        {
          goto LABEL_38;
        }

        break;
      case 15:
      case 18:
        if (a1 != 16)
        {
          goto LABEL_38;
        }

        break;
      case 16:
        if (a1 != 17)
        {
          goto LABEL_38;
        }

        goto LABEL_3;
      default:
LABEL_38:
        v9 = off_1000785E8[dword_10007DF98];
        sub_1000441E0("Unexpected shutdown transition %s -> %s", v9, off_1000785E8[a1]);
    }
  }

  v10 = off_1000785E8[a1];
  sub_100047654("shutdown", 196613, "shutdown %s -> %s", a4, a5, a6, a7, a8, off_1000785E8[dword_10007DF98]);
LABEL_3:
  dword_10007DF98 = a1;
}

void sub_10001481C()
{
  dword_10007DF98 = 0;
  dword_10007DF9C = 0;
  dword_10007DFA0 = 0;
  byte_10007DFA4 = 0;
  sub_10001A284();
}

void sub_100014840()
{
  if (dword_10007DF98 >= 2)
  {
    sub_100054404();
  }

  sub_10001A104(&stru_100078588);
  sub_10000C494(&stru_1000785C8);
  sub_10001497C();

  sub_10001464C(2, v0, v1, v2, v3, v4, v5, v6);
}

void sub_1000148A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100047654("shutdown timeout", 196611, "%s", a4, a5, a6, a7, a8, "Shutting the system down has taken too long. launchd is rebooting\n(or halting) the system now. Any processes that are still running\nwill be abandoned to the mercy of the kernel.\n");
  v8 = sub_1000151CC();
  sub_10001464C(18, v9, v10, v11, v12, v13, v14, v15);
  sub_100014B20("%s", v8);
  free(v8);
  v16 = sub_10003283C();
  sub_100014FB0(v16);
}

void sub_100014910(id a1, unsigned int a2)
{
  if (a2 == 2)
  {
    if ((byte_10007DFA4 & 1) == 0)
    {
      sub_100054404();
    }

    byte_10007DFA4 = 0;
    if (dword_10007DF98 == 14)
    {
      sub_100014F90();
    }
  }

  else if (a2 == 1)
  {
    if (byte_10007DFA4 == 1)
    {
      sub_100054404();
    }

    byte_10007DFA4 = 1;
  }
}

void sub_10001497C()
{
  if (dword_10007DF98 == 1)
  {
    sub_10004749C(5, "shutdown already committed");
    goto LABEL_11;
  }

  if (dword_10007DF98)
  {
    sub_1000441E0("Attempting to commit shutdown unexpectedly: %s", off_1000785E8[dword_10007DF98]);
  }

  sub_10004749C(5, "committing to system shutdown");
  v0 = dispatch_queue_create("com.apple.xpc.launchd.system-override", 0);
  dispatch_async_f(v0, 0, sub_100015194);
  dispatch_release(v0);
  if (dword_10007DF9C)
  {
    if (dword_10007DF9C == 1)
    {
      v8 = "kern.willuserspacereboot";
      goto LABEL_10;
    }

    if (dword_10007DF9C != 2)
    {
      goto LABEL_11;
    }

    sub_100048E6C();
  }

  sub_100045FB0("kern.willshutdown", 1);
  v8 = "security.mac.asp.willshutdown";
LABEL_10:
  sub_100045FB0(v8, 1);
LABEL_11:

  sub_10001464C(1, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100014A88(int a1, int a2, uint64_t a3, int a4)
{
  if (dword_10007DF98)
  {
    sub_10004749C(3, "Shutdown already started: %s", off_1000785E8[dword_10007DF98]);
    return 37;
  }

  else
  {
    dword_10007DF9C = a1;
    dword_10007DFA8 = a2;
    if (a3)
    {
      sub_100054404();
    }

    dword_10007DFA0 = a4;
    sub_10001497C();
    return 0;
  }
}

void sub_100014B20(char *a1, ...)
{
  va_start(va, a1);
  if (dword_10007DF98 != 18 && (dword_10007DF98 - 2) >= 0xA)
  {
    sub_100054404();
  }

  dword_10007DF9C = 0;
  v10[0] = 0;
  va_copy(&v10[1], va);
  vasprintf(v10, a1, va);
  v8 = v10[0];
  v9 = v10[0];
  if (!v10[0])
  {
    _os_assumes_log();
    v10[0] = a1;
    v9 = a1;
  }

  sub_100047654("hard reboot", 196612, "Could not cleanly tear down userspace. Will force a full hardware reboot. (%s)", v3, v4, v5, v6, v7, v9);
  free(v8);
}

uint64_t sub_100014BCC(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_10007DF98 != 11)
  {
    sub_100054404();
  }

  sub_10002C908(a1, 5, "cleaning up", a4, a5, a6, a7, a8, v25);
  sub_10001464C(12, v9, v10, v11, v12, v13, v14, v15);
  sub_10004EBD4();
  sub_10001464C(13, v16, v17, v18, v19, v20, v21, v22);
  sub_10001F938();
  result = sub_100014CB4();
  if ((result & 1) == 0)
  {
    sub_100014D48();
    v24 = sub_1000157D8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100014E34;
    block[3] = &unk_100078680;
    block[4] = a1;
    dispatch_async(v24, block);
    result = sub_10001B5B8(a1);
    if (a1[47])
    {
      sub_100054404();
    }
  }

  return result;
}

uint64_t sub_100014CB4()
{
  sub_100015808();
  if (dword_10007DF98 != 13)
  {
    sub_100054404();
  }

  if (dword_10007DF9C)
  {
    if (byte_10007F102 == 1)
    {
      sub_10004749C(65540, "Abandoning lingering coalitions");
    }

    else if (sub_10001F2AC(0))
    {
      return 0;
    }
  }

  sub_10001464C(14, v0, v1, v2, v3, v4, v5, v6);
  if ((byte_10007DFA4 & 1) == 0)
  {
    sub_100014F90();
  }

  return 1;
}

uint64_t sub_100014D48()
{
  if (dword_10007DF98 != 13)
  {
    sub_100054404();
  }

  data_np = sysctlbyname_get_data_np();
  if (data_np)
  {
    if (data_np == -1)
    {
      sub_10005455C();
    }
  }

  else
  {
    free(0);
  }

  return sub_100046938();
}

void sub_100014E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (dword_10007DF98 == 13)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_1000153A4;
    v13[3] = &unk_1000786C8;
    v13[4] = a1;
    if (sub_10001F2AC(v13))
    {
      sub_100014D48();
      v10 = dispatch_time(0, 1000000000);
      v11 = sub_1000157D8();
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_100015408;
      v12[3] = &unk_1000786E8;
      v12[4] = a1;
      dispatch_after(v10, v11, v12);
    }
  }

  else
  {

    sub_10002C908(a1, 65541, "Polling for lingering coalitions stopped", a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_100014F78()
{
  if (dword_10007DF98 == 13)
  {
    return sub_100014CB4();
  }

  return result;
}

void sub_100014F90()
{
  sub_10001A284();
  sub_10001464C(15, v0, v1, v2, v3, v4, v5, v6);
  v7 = sub_10003283C();
  sub_100014FB0(v7);
}

void sub_100014FD8(uint64_t a1, uint64_t a2)
{
  if (dword_10007DF98 == 15 || dword_10007DF98 == 18)
  {
    v2 = a2;
    v3 = a1;
    v5 = mach_host_self();
    sub_100048C5C(v5, 0);
    v6 = dword_10007DFA0;
    v41 = sub_10000B4A8(*(v3 + 272)) / 0xF4240uLL;
    sub_10002C908(v3, 5, "shutting down system: flags = 0x%x, time = %llu ms", v7, v8, v9, v10, v11, v6);
    v12 = sub_10000B4A8(*(v3 + 272));
    sub_10002C908(v3, 196613, "Userspace teardown took: %llu ms", v13, v14, v15, v16, v17, v12 / 0xF4240);
    if (!dword_10007DF9C)
    {
      v40 = dword_10007DFA0;
      v25 = "Will be calling reboot(2) with flags: 0x%x";
      goto LABEL_12;
    }

    if (dword_10007DF9C != 2)
    {
      if (dword_10007DF9C == 1)
      {
        sub_10002C908(v3, 196613, "Will be re-execing for a userspace reboot", v20, v21, v22, v23, v24, v40);
        v18 = 4;
        v19 = 1;
        goto LABEL_14;
      }

LABEL_13:
      v19 = 0;
      v18 = 1;
LABEL_14:
      sub_10004749C(196613, "Quiescing queues");
      sub_10001464C(16, v26, v27, v28, v29, v30, v31, v32);
      sub_10000EA30();
      sub_100047120();
      sub_10000E290("launchd quiesce complete\n");
      sub_10001464C(17, v33, v34, v35, v36, v37, v38, v39);
      if (v19)
      {
        sub_10000FC5C("kern.userspacerebootpurpose", dword_10007DFA8);
        sub_10000FC60("kern.userspacereboottime", v2);
      }

      sub_100015178(v18);
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v25 = "Rebooting to device recovery environment";
LABEL_12:
  sub_10002C908(v3, 196613, v25, v20, v21, v22, v23, v24, v40);
  goto LABEL_13;
}

uint64_t sub_100015194()
{
  pthread_setname_np("system shutdown has begun");
  result = system_override();
  if (result == -1)
  {
    sub_10005453C();
  }

  return result;
}

char *sub_1000151CC()
{
  if (dword_10007DF98 != 13)
  {
    return sub_1000168E0("userspace shutdown timed out: %s", off_1000785E8[dword_10007DF98]);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v0 = sub_10000FC98(0x40uLL);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100015330;
  v4[3] = &unk_1000786A8;
  v4[4] = &v5;
  v4[5] = v0;
  sub_10001F2AC(v4);
  if (*(v6 + 6) < 1)
  {
    v2 = sub_1000168E0("userspace shutdown timed out: %s. Unable to identify lingering coalitions.", off_1000785E8[dword_10007DF98]);
  }

  else
  {
    v1 = sub_10000FCFC(v0);
    v2 = sub_1000168E0("userspace shutdown timed out: %s (%d).%s", off_1000785E8[dword_10007DF98], *(v6 + 6), v1);
    free(v1);
  }

  sub_10000FD04(v0);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100015330(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = sub_100010B1C(a2);
  sub_1000130C0(a2);
  sub_10000FD40(v4, " %llu (%s),", v6, v7, v8, v9, v10, v11, v5);
  ++*(*(*(a1 + 32) + 8) + 24);
}

void sub_1000153A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_100010B1C(a2);
  sub_1000130C0(a2);
  sub_10002C908(v3, 65540, "Lingering coalition: %llu (%s)", v5, v6, v7, v8, v9, v4);
}

uint64_t sub_100015410(uint32_t a1)
{
  *__error() = 0;
  result = usrctl(a1);
  if (result)
  {
    v3 = result;
    v4 = __error();
    sub_1000441E0("usrctl(0x%x) returned %d (errno %d)", a1, v3, *v4);
  }

  return result;
}

void sub_10001546C()
{
  v0 = getenv("XPC_UNLOCK_TIMESTAMP");
  if (v0)
  {
    v1 = v0;
    __endptr = 0;
    v2 = strtoull(v0, &__endptr, 16);
    if (__endptr == v1 + 16 && v2 != -1)
    {
      v9 = v2;
      sub_100015668(v2);
      v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
      sub_10004749C(65541, "Device unlocked %qus ago", (v10 - v9) / 0x3B9ACA00);
      return;
    }
  }

  v4 = sub_100016C38();
  if (v4)
  {
    v5 = v4;
    v6 = sub_100016CD8();
    qword_10007DFB0 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = sub_1000157D8();
      sub_100016E0C(v7, v8);
      if (!sub_1000170F0(qword_10007DFB0, v5, "IOGeneralInterest", sub_1000155F4, 0, &dword_10007DFB8))
      {
        return;
      }

      sub_10004749C(65541, "failed to add interest notification");
    }

    else
    {
      sub_10004749C(65541, "failed to create notification port for AKS");
    }
  }

  else
  {
    sub_10004749C(65541, "failed to find %s service");
  }

  if (dword_10007DFB8)
  {
    sub_10000B760(dword_10007DFB8);
  }

  v11 = qword_10007DFB0;
  if (qword_10007DFB0)
  {

    sub_100016D50(v11);
  }
}

void sub_1000155F4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -469774321)
  {
    sub_10004749C(65541, "Got first unlock unregistering for AKS events");
    v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
    sub_100015668(v3);
    if (dword_10007DFB8)
    {
      sub_10000B760(dword_10007DFB8);
      dword_10007DFB8 = 0;
      sub_100016D50(qword_10007DFB0);
      qword_10007DFB0 = 0;
    }
  }
}

uint64_t sub_100015668(uint64_t a1)
{
  byte_10007F010 = 1;
  qword_10007F018 = a1;
  *__str = 0;
  v3 = 0;
  v4 = 0;
  snprintf(__str, 0x11uLL, "%016llx", a1);
  return setenv("XPC_UNLOCK_TIMESTAMP", __str, 1);
}

dispatch_queue_t sub_1000156F8()
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v1 = qos_class_main();
  v2 = dispatch_queue_attr_make_with_qos_class(initially_inactive, v1, 0);
  qword_10007DFC0 = dispatch_queue_create("com.apple.xpc.launchd.eventq", v2);
  v3 = qos_class_main();
  v4 = dispatch_queue_attr_make_with_qos_class(0, v3, 0);
  qword_10007DFC8 = dispatch_queue_create_with_target_V2("com.apple.xpc.launchd.spawn", v4, 0);
  qword_10007F020 = dispatch_queue_create("com.apple.xpc.launchd.ioq", 0);
  v5 = dispatch_queue_attr_make_with_qos_class(0, 5u, 0);
  qword_10007DFD0 = dispatch_queue_create("com.apple.xpc.launchd.bgioq", v5);
  result = dispatch_queue_create("com.apple.xpc.launchd.bglogq", v5);
  qword_10007DFD8 = result;
  return result;
}

void *sub_10001582C(uint64_t a1, const char *a2)
{
  v3 = sub_10002C974(a1, 1);
  v4 = sub_1000168E0("%s/%s", v3, a2);
  free(v3);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000158F0;
  v7[3] = &unk_100078708;
  v7[4] = v4;
  v5 = sub_100014514(0x18uLL, 0x10900405A8FBCA6uLL);
  *v5 = sub_100016954(v7);
  v5[1] = v4;
  return v5;
}

void sub_100015920(uint64_t a1)
{
  free(*(a1 + 8));
  *(a1 + 8) = 0;
  _Block_release(*a1);

  free(a1);
}

void sub_100015968(_BYTE *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  a1[16] = 1;
  v4[0] = 0;
  va_copy(&v4[1], va);
  if (vasprintf(v4, a3, va) != -1)
  {
    (*(*a1 + 16))();
    free(v4[0]);
  }
}

uint64_t sub_1000159E0()
{
  result = xpc_string_cache_create();
  qword_10007DFE0 = result;
  return result;
}

void sub_100015A20(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 36);
  v4 = *(a1 + 56);
  if ((v4 - 1) < 2)
  {
    v7 = *(a1 + 64);
    sub_100015A08();
    sub_100015A14();
    *(a1 + 80) = j__xpc_bundle_create_with_string_cache();
    sub_10001B5B8(a1);
    global_queue = dispatch_get_global_queue(0, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_100016158;
    v10[3] = &unk_1000787A8;
    v10[4] = a1;
    v6 = v10;
  }

  else if (v4 == 3)
  {
    sub_10001B5B8(a1);
    global_queue = sub_1000157E4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100015D74;
    block[3] = &unk_100078748;
    block[4] = a1;
    v6 = block;
  }

  else
  {
    if (*(a1 + 56))
    {
      sub_1000441E0("unsupported IO type %d", *(a1 + 56));
    }

    sub_10001B5B8(a1);
    global_queue = sub_1000157E4();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_100015BFC;
    v9[3] = &unk_100078728;
    v9[4] = a1;
    v6 = v9;
  }

  dispatch_async(global_queue, v6);
}

void sub_100015BFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1000157E4();
  dispatch_assert_queue_V2(v3);
  v4 = *(v2 + 64);
  v5 = guarded_open_np();
  if (v5 < 0)
  {
    v7 = *__error();
    goto LABEL_7;
  }

  v6 = v5;
  if (fstat(v5, (v2 + 96)))
  {
LABEL_3:
    v7 = *__error();
    goto LABEL_4;
  }

  if ((*(v2 + 100) + 0x4000) >= 0xB000u || ((0x561u >> ((*(v2 + 100) + 0x4000) >> 12)) & 1) == 0)
  {
    v8 = sub_100041188(v6);
    if (v8)
    {
      v9 = v8;
      free(*(v2 + 64));
      *(v2 + 64) = v9;
      v10 = *(v2 + 192);
      v11 = sub_100014514(v10, 0x555D6251uLL);
      v12 = read(v6, v11, v10);
      if (v12 < 0 || v12 == v10)
      {
        v13 = dispatch_data_create(v11, v10, 0, _dispatch_data_destructor_free);
        v7 = 0;
        *(v2 + 72) = v13;
      }

      else
      {
        free(v11);
        v7 = 5;
      }

      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = dword_1000576E0[(*(v2 + 100) + 0x4000) >> 12];
LABEL_4:
  if (guarded_close_np() == -1)
  {
    sub_10005453C();
  }

LABEL_7:
  sub_100016024(v2, 0, v7);
  sub_10001B690(*(a1 + 32));
}

void sub_100015D74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1000157E4();
  dispatch_assert_queue_V2(v3);
  v4 = *(v2 + 64);
  v5 = guarded_open_np();
  if (v5 < 0)
  {
    v10 = __error();
    sub_100016024(v2, 0, *v10);
    goto LABEL_37;
  }

  v6 = v5;
  if (!fstat(v5, (v2 + 96)))
  {
    if ((*(v2 + 100) & 0xF000) != 0x4000)
    {
      v8 = 0;
      v9 = 20;
      goto LABEL_34;
    }

    v8 = sub_100041188(v6);
    if (!v8)
    {
      v7 = __error();
      goto LABEL_4;
    }

    free(*(v2 + 64));
    *(v2 + 64) = v8;
    v25[0] = v8;
    v25[1] = 0;
    v8 = sub_100010918();
    v11 = fts_open(v25, 92, 0);
    if (v11)
    {
      v12 = v11;
      v13 = fts_read(v11);
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        while (1)
        {
          fts_info = v14->fts_info;
          if (fts_info > 6)
          {
            break;
          }

          if (fts_info == 1)
          {
            if (v15)
            {
              ++v15;
              fts_set(v12, v14, 4);
              fts_path = v14->fts_path;
              v18 = 3;
LABEL_21:
              fts_errno = 0;
              goto LABEL_23;
            }

            v15 = 1;
          }

          else
          {
            if (fts_info != 6)
            {
              goto LABEL_18;
            }

            --v15;
          }

LABEL_25:
          v14 = fts_read(v12);
          if (!v14)
          {
            goto LABEL_29;
          }
        }

        if (fts_info == 7)
        {
          fts_path = v14->fts_path;
          fts_errno = v14->fts_errno;
          v18 = 4;
        }

        else
        {
          if (fts_info == 11)
          {
            fts_path = v14->fts_path;
            v18 = 0;
            goto LABEL_21;
          }

LABEL_18:
          fts_path = v14->fts_path;
          v18 = 4;
          fts_errno = 108;
        }

LABEL_23:
        v20 = sub_10000EBAC(v18, fts_path, fts_errno);
        if (v20)
        {
          sub_1000109BC(v8, v20);
          sub_10001B690(v20);
        }

        goto LABEL_25;
      }

LABEL_29:
      if (fts_close(v12) == -1)
      {
        sub_10005453C();
      }
    }

    else
    {
      v21 = *(v2 + 64);
      v22 = *__error();
      v23 = *__error();
      v24 = xpc_strerror();
      sub_10004749C(4, "failed to fts_open(%s, 0x%x): %d: %s", v21, 92, v22, v24);
    }

    v9 = 0;
    goto LABEL_34;
  }

  v7 = __error();
  v8 = 0;
LABEL_4:
  v9 = *v7;
LABEL_34:
  if (guarded_close_np() == -1)
  {
    sub_10005453C();
  }

  sub_100016024(v2, v8, v9);
  if (v8)
  {
    sub_10001B690(v8);
  }

LABEL_37:
  sub_10001B690(*(a1 + 32));
}

void sub_100016024(uint64_t a1, void *a2, int a3)
{
  v6 = sub_1000157E4();
  dispatch_assert_queue_V2(v6);
  *(a1 + 240) = a3;
  sub_10001B5B8(a1);
  if (a2)
  {
    sub_10001B5B8(a2);
  }

  v7 = *(a1 + 248);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1000160E8;
  v8[3] = &unk_100078768;
  v8[4] = a1;
  v8[5] = a2;
  dispatch_async(v7, v8);
}

void sub_1000160E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 240);
  (*(*(v3 + 256) + 16))();
  v5 = *(a1 + 40);
  if (v5)
  {
    sub_10001B690(v5);
  }

  v6 = *(a1 + 32);

  sub_10001B690(v6);
}

void sub_100016158(uint64_t a1)
{
  v2 = sub_10000EB30();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(*(a1 + 32) + 80);
  xpc_bundle_resolve_sync();
  dispatch_semaphore_signal(v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 248);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000161FC;
  block[3] = &unk_100078788;
  block[4] = v4;
  dispatch_async(v5, block);
}

void sub_1000161FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v2 + 248));
  v3 = *(v2 + 80);
  error = xpc_bundle_get_error();
  if (!error)
  {
    property = xpc_bundle_get_property();
    *(v2 + 96) = *property;
    v6 = property[4];
    v8 = property[1];
    v7 = property[2];
    *(v2 + 144) = property[3];
    *(v2 + 160) = v6;
    *(v2 + 112) = v8;
    *(v2 + 128) = v7;
    v9 = property[8];
    v11 = property[5];
    v10 = property[6];
    *(v2 + 208) = property[7];
    *(v2 + 224) = v9;
    *(v2 + 176) = v11;
    *(v2 + 192) = v10;
  }

  *(v2 + 240) = error;
  (*(*(v2 + 256) + 16))();
  v12 = *(a1 + 32);

  sub_10001B690(v12);
}

size_t _xpc_spawnattr_pack_string_fragment(uint64_t a1, _DWORD *a2, void *a3, char *__src)
{
  strcpy((a1 + *a2 + 244), __src);
  result = strlen(__src);
  *a2 += result;
  *a3 -= result;
  return result;
}

size_t _xpc_spawnattr_pack_string(uint64_t a1, _DWORD *a2, void *a3, char *__src)
{
  strcpy((a1 + *a2 + 244), __src);
  result = strlen(__src);
  *a2 += result + 1;
  *a3 -= result + 1;
  return result;
}

const char *_xpc_spawnattr_unpack_string(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a1 + a3 + 244);
  if (strnlen(v3, a2 - a3) + 1 <= a2 - a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *_xpc_spawnattr_pack_bytes(uint64_t a1, _DWORD *a2, void *a3, void *__src, size_t __n)
{
  v5 = __n;
  result = memcpy((a1 + *a2 + 244), __src, __n);
  *a2 += v5;
  *a3 -= v5;
  return result;
}

uint64_t _xpc_spawnattr_unpack_bytes(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2 - a3 >= a4)
  {
    v4 = a1 + a3 + 244;
  }

  else
  {
    v4 = 0;
  }

  if (a2 <= a3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

const char *_xpc_spawnattr_unpack_strings(uint64_t a1, unint64_t a2, unsigned int a3, const char **a4, uint64_t a5)
{
  if (a3 >= a2)
  {
    return 0;
  }

  v5 = a5;
  if (!a5)
  {
    return *a4;
  }

  v7 = a3;
  v9 = a1 + 244;
  for (i = a4; ; ++i)
  {
    v11 = (v9 + v7);
    v12 = strnlen(v11, a2 - v7);
    if (v12 + 1 > a2 - v7)
    {
      break;
    }

    v7 += v12 + 1;
    *i = v11;
    if (!--v5)
    {
      return *a4;
    }
  }

  return 0;
}

uint64_t _xpc_spawnattr_binprefs_pack(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v8 = xpc_binprefs_count(a2);
  *(a1 + 32) = v8;
  v9 = 0;
  if (v8)
  {
    *(a1 + 36) = *a3;
    v10 = 8 * (v8 - 1);
    v11 = v8;
    v12 = (*a3 + a1 + 248);
    do
    {
      *(v12 - 1) = xpc_binprefs_cpu_type(a2, v9);
      *v12 = xpc_binprefs_cpu_subtype(a2, v9);
      v12 += 2;
      ++v9;
    }

    while (v11 != v9);
    v9 = v10 + 8;
  }

  else
  {
    *(a1 + 36) = 0;
  }

  result = xpc_binprefs_count(a2);
  if (v9 != 8 * result)
  {
    sub_100054404();
  }

  *a3 += v9;
  *a4 -= v9;
  return result;
}

uint64_t _xpc_spawnattr_binprefs_unpack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2 || a2 - *(a1 + 36) < 8 * v2)
  {
    return 0;
  }

  xpc_binprefs_alloc();
  v4 = v5;
  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = (*(a1 + 36) + a1 + 248);
    do
    {
      xpc_binprefs_add(v4, *(v7 - 1), *v7);
      ++v6;
      v7 += 2;
    }

    while (v6 < *(a1 + 32));
  }

  return v4;
}

void *sub_1000166A0(const void *a1, size_t size)
{
  v4 = sub_100014514(size, 0x39A35613uLL);

  return memcpy(v4, a1, size);
}

char *sub_1000166EC(const char *a1)
{
  for (i = a1; ; a1 = i)
  {
    result = strdup(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_100054420();
      }
    }

    sub_100016680();
  }

  return result;
}

char *sub_100016744(const char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  while (1)
  {
    result = strndup(a1, a2);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_100054420();
      }
    }

    sub_100016680();
    a1 = v3;
    a2 = v2;
  }

  return result;
}

uint64_t sub_1000167A0(const char *a1, const char *a2)
{
  memset(v8, 0, sizeof(v8));
  sub_100016860(a1, v8);
  memset(v7, 0, sizeof(v7));
  sub_100016860(a2, v7);
  v3 = 0;
  while (1)
  {
    v4 = v8[v3];
    v5 = v7[v3];
    if (v4 > v5)
    {
      break;
    }

    if (v4 < v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v3 == 3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100016860(const char *a1, uint64_t a2)
{
  v3 = strdup(a1);
  v4 = 0;
  __stringp = v3;
  do
  {
    v5 = strsep(&__stringp, ".");
    if (!v5)
    {
      break;
    }

    v6 = 0;
    *(a2 + v4) = strtoull(v5, &v6, 10);
    v4 += 8;
  }

  while (v4 != 24);
  free(v3);
}

char *sub_1000168E0(char *a1, ...)
{
  va_start(va, a1);
  v3 = 0;
  while (1)
  {
    vasprintf(&v3, a1, va);
    result = v3;
    if (v3)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_100054420();
      }
    }

    sub_100016680();
  }

  return result;
}

void *sub_100016954(const void *a1)
{
  for (i = a1; ; a1 = i)
  {
    result = _Block_copy(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_100054420();
      }
    }

    sub_100016680();
  }

  return result;
}

BOOL sub_1000169EC(const char *a1, const char *a2)
{
  v4 = &a1[strlen(a1)];
  v5 = &v4[-strlen(a2)];
  return v5 >= a1 && strcmp(v5, a2) == 0;
}

BOOL sub_100016A6C(char *__s1, const char *a2)
{
  result = (__s1 | a2) == 0;
  if (__s1)
  {
    if (a2)
    {
      return strcmp(__s1, a2) == 0;
    }
  }

  return result;
}

BOOL sub_100016AAC(char *a1, const char *a2)
{
  result = (a1 | a2) == 0;
  if (a1)
  {
    if (a2)
    {
      return strcasecmp(a1, a2) == 0;
    }
  }

  return result;
}

size_t sub_100016AEC(xpc_object_t xarray, const char *a2)
{
  result = 0;
  if (xarray)
  {
    if (a2)
    {
      result = xpc_array_get_count(xarray);
      if (result)
      {
        v5 = result;
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(xarray, v6);
          if (string)
          {
            if (!strcmp(string, a2))
            {
              break;
            }
          }

          if (v5 == ++v6)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100016BA4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 5381;
  }

  result = 5381;
  do
  {
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    result = 33 * result + v4;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t sub_100016BD8(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 1;
  do
  {
    result = 33 * result + v1;
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_100016C08(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a2 + 8; *(i - 8) != a1; i += 16)
  {
    if (!--a3)
    {
      return 0;
    }
  }

  return *i;
}

uint64_t sub_100016C38()
{
  sub_100016C7C();
  if (sub_100050E30())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016C7C()
{
  io_main = 0;
  v0 = mach_host_self();
  v1 = host_get_io_main(v0, &io_main);
  mach_port_deallocate(mach_task_self_, v0);
  if (v1)
  {
    return 0;
  }

  else
  {
    return io_main;
  }
}

mach_port_name_t *sub_100016CD8()
{
  v0 = sub_100016C7C();
  v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040B400383CuLL);
  v2 = v1;
  if (v1)
  {
    *v1 = v0;
    if (mach_port_allocate(mach_task_self_, 1u, v1 + 1))
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void sub_100016D50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 24));
  }

  sub_100016D98(a1);
}

void sub_100016D98(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 32), 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    mach_port_mod_refs(mach_task_self_, *(a1 + 4), 1u, -1);
    mach_port_deallocate(mach_task_self_, *a1);

    free(a1);
  }
}

void sub_100016E0C(uint64_t a1, dispatch_queue_t queue)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  if (queue)
  {
    atomic_fetch_add_explicit((a1 + 32), 1u, memory_order_relaxed);
    v5 = dispatch_source_create(&_dispatch_source_type_mach_recv, *(a1 + 4), 0, queue);
    dispatch_set_context(v5, a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100016EFC;
    handler[3] = &unk_100078808;
    handler[4] = v5;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_source_set_cancel_handler_f(v5, sub_100016D98);
    *(a1 + 24) = v5;
    dispatch_activate(v5);
  }
}

uint64_t sub_100016F18(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  mig_reply_setup(a1, a2);
  a2[1].msgh_remote_port = -305;
  if (a1->msgh_id != 53)
  {
    return 1;
  }

  v4 = a1 + 1;
  if ((a1->msgh_bits & 0x80000000) != 0)
  {
    if (v4->msgh_bits)
    {
      msgh_size = a1[1].msgh_size;
    }

    else
    {
      msgh_size = 0;
    }

    v4 = (a1 + 12 * v4->msgh_bits + 28);
    v6 = a1;
  }

  else
  {
    msgh_size = 0;
    v6 = 0;
  }

  v8 = a1->msgh_size;
  msgh_remote_port = a1->msgh_remote_port;
  if (msgh_remote_port)
  {
    refs = 0;
    if (mach_port_get_refs(mach_task_self_, msgh_remote_port, 0, &refs) || refs < 2)
    {
      goto LABEL_29;
    }
  }

  v10 = v4->msgh_size & 0xFFF;
  if ((v10 - 100) < 3)
  {
    v12 = *&v4->msgh_voucher_port;
    v11 = *&v4[1].msgh_bits;
    msgh_bits = msgh_remote_port;
LABEL_16:
    v12(v11, msgh_bits);
    goto LABEL_28;
  }

  v14 = v8 + a1 - (v4 + 72) - (v4->msgh_size >> 30);
  if (v10 == 160)
  {
    p_msgh_size = &v4[3].msgh_size;
    if (((v14 + 0x7FFFFFFFCLL) & 0x7FFFFFFF0) == 0)
    {
      p_msgh_size = *p_msgh_size;
    }

    if (!msgh_size)
    {
      msgh_size = v4[1].msgh_remote_port;
    }

    (*&v4->msgh_voucher_port)(*&v4[1].msgh_bits, msgh_size, v4[3].msgh_bits, p_msgh_size);
  }

  else if (v10 == 150)
  {
    v15 = (v14 + 0x7FFFFFFFCLL) >> 3;
    v12 = *&v4->msgh_voucher_port;
    v11 = *&v4[1].msgh_bits;
    msgh_bits = v4[3].msgh_bits;
    switch(v15)
    {
      case 2:
        (v12)(v11, msgh_bits, *&v4[3].msgh_size, *&v4[3].msgh_local_port);
        break;
      case 1:
        (v12)(v11, msgh_bits, *&v4[3].msgh_size);
        break;
      case 0:
        goto LABEL_16;
      default:
        (v12)(v11, msgh_bits, &v4[3].msgh_size);
        break;
    }
  }

LABEL_28:
  if (msgh_remote_port)
  {
LABEL_29:
    mach_port_deallocate(mach_task_self_, msgh_remote_port);
  }

  if (v6 && v6[1].msgh_bits)
  {
    v17 = 0;
    v18 = &v6[1].msgh_size;
    do
    {
      v19 = *v18;
      v18 += 3;
      mach_port_deallocate(mach_task_self_, v19);
      ++v17;
    }

    while (v17 < v6[1].msgh_bits);
  }

  return 1;
}

uint64_t sub_1000170F0(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v7[0] = 0;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a2;
  return sub_100050BD4(a2, a3, *(a1 + 4), v7, 4u, a6);
}

uint64_t sub_100017160(unsigned int a1, unsigned int a2)
{
  v2 = a1 + a2;
  if (v2 == (v2 & 0x1FFFFFFFFLL) && (v2 << 31) >> 31 == v2)
  {
    return a1 + a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

xpc_type_t sub_100017184(FILE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    sub_100049DE0(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  result = xpc_get_type(a4);
  if (result == &_xpc_type_string)
  {
    value = COERCE_DOUBLE(xpc_string_get_string_ptr(a4));
    v35 = "%s";
LABEL_22:
    v38 = a1;
    v39 = 0;
    return sub_100049ECC(v38, v39, v35, v12, v13, v14, v15, v16, *&value);
  }

  if (result == &_xpc_type_int64)
  {
    value = COERCE_DOUBLE(xpc_int64_get_value(a4));
    v35 = "%lld";
    goto LABEL_22;
  }

  if (result == &_xpc_type_uint64)
  {
    value = COERCE_DOUBLE(xpc_uint64_get_value(a4));
    v35 = "%llu";
    goto LABEL_22;
  }

  if (result == &_xpc_type_double)
  {
    value = xpc_double_get_value(a4);
    v35 = "%f";
    goto LABEL_22;
  }

  if (result == &_xpc_type_BOOL)
  {
    if (a4 == &_xpc_BOOL_true)
    {
      v36 = "true";
    }

    else
    {
      v36 = "false";
    }

    value = *&v36;
    v35 = "%s";
    goto LABEL_22;
  }

  if (result == &_xpc_type_date)
  {
    xpc_date_get_value_absolute();
    v44 = (v37 + 978307200.0);
    memset(&v43, 0, sizeof(v43));
    gmtime_r(&v44, &v43);
    *v45 = 0;
    v46 = 0;
    memset(v47, 0, sizeof(v47));
    strftime(v45, 0x1EuLL, "%a %b %d %T %Y %Z", &v43);
    value = COERCE_DOUBLE(v45);
    v35 = "%s (approx)";
    goto LABEL_22;
  }

  if (result != &_xpc_type_array)
  {
    if (result != &_xpc_type_dictionary)
    {
      if (result != &_xpc_type_bundle)
      {
        return result;
      }

      sub_100049ECC(a1, 0, "@bundle {", v12, v13, v14, v15, v16);
      info_dictionary = xpc_bundle_get_info_dictionary();
      sub_100049E5C(a1, a2 + 1, "info plist = ", v18, v19, v20, v21, v22);
      sub_100017184(a1, a2 + 1, 0, info_dictionary);
      v23 = xpc_bundle_copy_services();
      sub_100049E5C(a1, a2 + 1, "service bundles => ", v24, v25, v26, v27, v28);
      sub_100017184(a1, a2 + 1, 0, v23);
      xpc_release(v23);
      v34 = "}";
      goto LABEL_29;
    }

    sub_100049ECC(a1, 0, "{", v12, v13, v14, v15, v16);
    *&v43.tm_sec = 0;
    *&v43.tm_hour = a1;
    *&v43.tm_mon = a2 + 1;
    xpc_dictionary_apply_f();
    v35 = "}";
    v38 = a1;
    v39 = a2;
    return sub_100049ECC(v38, v39, v35, v12, v13, v14, v15, v16, *&value);
  }

  sub_100049ECC(a1, 0, "[", v12, v13, v14, v15, v16);
  if (xpc_array_get_count(a4))
  {
    v40 = 0;
    do
    {
      sub_100049E5C(a1, a2 + 1, "%lu = ", v29, v30, v31, v32, v33, v40);
      v41 = xpc_array_get_value(a4, v40);
      sub_100017184(a1, a2 + 1, 0, v41);
      ++v40;
    }

    while (v40 < xpc_array_get_count(a4));
  }

  v34 = "]";
LABEL_29:

  return sub_100049ECC(a1, a2, v34, v29, v30, v31, v32, v33);
}

uint64_t sub_10001755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  sub_100049E5C(v9, v10, "%s => ", a4, a5, a6, a7, a8, a1);

  return sub_100017184(v9, v10, 0, a2);
}

uint64_t sub_1000175C8(uint64_t a1, mach_port_context_t a2)
{
  v4.reserved[1] = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 7;
  __strlcpy_chk();
  *&v4.flags = 0x80000024B3;
  v4.reserved[0] = v5;
  return sub_10000B620(&v4, a2);
}

void start()
{
  if (!getenv("LAUNCH_DID_REEXEC") && !getenv("XPC_USERSPACE_REBOOTED"))
  {
    sub_100045FB0("kern.initproc_spawned", 1);
  }

  _os_crash_callback = os_crash_function;
  v0 = isatty(1);
  if (v0 && (byte_10007F0E1 & 1) == 0)
  {
    v22 = v0;
    v23 = __stdoutp;
    v24 = getprogname();
    fprintf(v23, "%s cannot be run directly.\n", v24);
    v25 = getprogname();
    sub_1000441E0("%s cannot be run directly (stdout: %d)", v25, v22);
  }

  v1 = getpid();
  if (v1 != 1 && (byte_10007F0E1 & 1) == 0)
  {
    v26 = v1;
    v27 = __stdoutp;
    v28 = getprogname();
    fprintf(v27, "%s cannot be run directly.\n", v28);
    v29 = getprogname();
    sub_1000441E0("%s cannot be run directly (pid = %d)", v29, v26);
  }

  v2 = mach_host_self();
  panic_init(v2);
  sub_1000159E0();
  sub_1000156F8();
  sub_10001A408();
  if ((byte_10007F0E1 & 1) == 0)
  {
    sub_100017CF4(0, 0);
    sub_100017CF4(1, 1);
    sub_100017CF4(2, 2);
  }

  sub_100010B28();
  sub_100010550();
  v3 = sub_10004D978();
  nullsub_23(v3, v4);
  memset(out, 0, 37);
  memset(init_port_set, 0, sizeof(init_port_set));
  _NSGetMachExecuteHeader();
  if (_dyld_get_image_uuid())
  {
    goto LABEL_53;
  }

  _os_assumes_log();
  while (1)
  {
    sub_10004749C(5, "hello, launchd UUID: %s", out);
    sub_100044E10();
    if (byte_10007F0FB == 1)
    {
      dword_10007DC68 = -1;
    }

    if (byte_10007F0C7 == 1)
    {
      sub_10004749C(65543, "Memory limit override file is present, disabling memory limits.");
      dword_10007DC68 = -1;
    }

    getpid();
    if (memorystatus_control() == -1)
    {
      v5 = dword_10007DC68;
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      sub_10004749C(65539, "Could not opt into %d MB Jetsam high watermark: %d: %s", v5, v6, v8);
    }

    sub_10004749C(65541, "%s", off_10007DC88[0]);
    v45 = 0;
    if (sub_100045D60("kern.bootargs", &v45))
    {
      sub_10004749C(65541, "boot-args = %s", v45);
    }

    free(v45);
    getpid();
    if (proc_disable_wakemon() == -1)
    {
      v30 = *__error();
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    else
    {
      if (byte_10007F0E1 == 1)
      {
        byte_10007F135 = 1;
        sub_10004749C(65541, "Lean Testing Environment starting.");
      }

      v9 = byte_10007F0E5;
      if (byte_10007F0E3 == 1 && (byte_10007F0E5 & 1) == 0)
      {
        byte_10007F135 = 1;
        sub_10004749C(65541, "Restore environment starting.");
        v9 = byte_10007F0E5;
      }

      if (v9)
      {
        byte_10007F135 = 1;
        sub_10004749C(65541, "BaseSystem environment starting.");
      }

      if (setsid() == -1 && (byte_10007F0E1 & 1) == 0 && (byte_10007F100 != 1 || *__error() != 1) && *__error())
      {
        goto LABEL_52;
      }

      if (chdir("/") != -1)
      {
        if (setlogin("root") != -1)
        {
          v10 = 0;
          while (1)
          {
            v11 = dword_100057760[v10];
            dword_10007DFE8 |= 1 << (v11 - 1);
            if (signal(v11, 1) == -1)
            {
              v12 = *__error();
              _os_assumes_log();
            }

            if (++v10 == 21)
            {
              v13 = task_set_special_port(mach_task_self_, 4, 0);
              if (!v13)
              {
                bootstrap_port = 0;
                v14 = sub_1000175C8(off_10007D798, 0x70507uLL);
                init_port_set[0] = v14;
                if (!mach_ports_register(mach_task_self_, init_port_set, 1u))
                {
                  dword_10007F068 = v14;
                  qword_10007F070 = xpc_mach_send_create_with_disposition();
                  qword_10007F028 = mach_absolute_time();
                  uuid_generate(byte_10007F140);
                  LODWORD(qword_10007F150) = getuid();
                  HIDWORD(qword_10007F150) = geteuid();
                  dword_10007F158 = getegid();
                  dword_10007F15C = geteuid();
                  LODWORD(qword_10007F160) = getegid();
                  HIDWORD(qword_10007F160) = getpid();
                  dword_10007F168 = sub_100021F44();
                  unk_10007F16C = 0;
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  v39 = 0u;
                  v40 = 0u;
                  v37 = 0u;
                  v38 = 0u;
                  v35 = 0u;
                  v36 = 0u;
                  *init_port_set = 0u;
                  v34 = 0u;
                  v15 = getpid();
                  v16 = sub_100045BEC(v15, init_port_set);
                  if (v16)
                  {
                    if (v16 != 45)
                    {
                      sub_1000441E0("could not get unique pid");
                    }
                  }

                  qword_10007F030 = *(&v42 + 1);
                  sub_10004AAF4();
                  sub_10000E968();
                  sub_10003EDD8();
                  sub_10002223C();
                  sub_10003126C();
                  sub_100040BE0();
                  sub_100042050();
                  sub_10003E324();
                  sub_10003DD54();
                  nullsub_23(v17, v18);
                  sub_10001481C();
                  sub_100000CC4();
                  sub_10001F280();
                  v19 = sub_10000CF10();
                  nullsub_23(v19, v20);
                  sub_10000E510();
                  sub_100013108();
                  sub_10001F9D0();
                  sub_100001260();
                  sub_10001546C();
                  sub_1000489A4();
                  v21 = sub_1000157D8();
                  dispatch_activate(v21);
                  dispatch_main();
                }

                sub_1000441E0("could not set up inheritance port");
              }

              sub_10004749C(3, "Could not neuter bootstrap port: 0x%x", v13);
              exit(1);
            }
          }
        }

        goto LABEL_51;
      }
    }

    v31 = *__error();
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_51:
    v32 = *__error();
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_52:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_53:
    uuid_unparse(init_port_set, out);
  }
}

int *sub_100017CF4(int a1, int a2)
{
  result = open("/dev/null", a1 | 0x20000, 438);
  if (result != -1)
  {
    v4 = dup2(result, a2);
    if (v4 == -1 && *__error())
    {
      sub_100054420();
    }

    return sub_1000413F8(v4);
  }

  return result;
}

size_t sub_100017D88(const char *a1)
{
  if (sub_100017DF8(a1, "Frameworks") & 1) != 0 || (sub_100017DF8(a1, "PrivateFrameworks"))
  {
    return 1;
  }

  return sub_100017DF8(a1, "AppRemovalServices");
}

size_t sub_100017DF8(const char *a1, const char *a2)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", "/System/Library", a2);
  if (sub_1000169A8(a1, __str))
  {
    return 1;
  }

  result = sub_10004E478("SystemRoots");
  if (result)
  {
    v5 = result;
    if (xpc_get_type(result) == &_xpc_type_array)
    {
      result = xpc_array_get_count(v5);
      if (result)
      {
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(v5, v6);
          if (string)
          {
            v8 = string;
            bzero(__str, 0x400uLL);
            snprintf(__str, 0x400uLL, "%s/%s", v8, a2);
            if (sub_1000169A8(a1, __str))
            {
              break;
            }
          }

          if (++v6 >= xpc_array_get_count(v5))
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_100017F4C(char a1, const char *a2, _OWORD *a3, uint64_t a4, NSObject *a5)
{
  v10 = sub_10001BC6C(0);
  v10[100] = a1;
  *(v10 + 2) = sub_1000166EC(a2);
  v11 = a3[1];
  *(v10 + 24) = *a3;
  *(v10 + 40) = v11;
  *(v10 + 7) = a4;
  *(v10 + 8) = a5;
  dispatch_retain(a5);
  return v10;
}

void sub_100017FC4(uint64_t a1)
{
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  free(*(a1 + 16));
  dispatch_release(*(a1 + 64));
  v2 = *(a1 + 72);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    sub_10001B690(v4);
    *(a1 + 88) = 0;
  }
}

void *sub_100018034(uint64_t a1, void *aBlock)
{
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  result = _Block_copy(aBlock);
  *(a1 + 72) = result;
  return result;
}

void *sub_10001806C(uint64_t a1, void *aBlock)
{
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  result = _Block_copy(aBlock);
  *(a1 + 80) = result;
  return result;
}

void sub_1000180A4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  *(a1 + 101) |= 1u;
  sub_10001B5B8(a1);
  if (!*(a1 + 72))
  {
    sub_100054404();
  }

  if (!*(a1 + 80))
  {
    sub_100054404();
  }

  v2 = *(a1 + 16);
  if (*v2 != 47 || sub_1000169A8(*(a1 + 16), "/usr/lib") || sub_1000169A8(v2, "/usr/local/lib"))
  {

    sub_100018338(a1);
    return;
  }

  v3 = *(a1 + 100);
  if (v3 > 3)
  {
    if (v3 - 4 < 2)
    {
      if (qword_10007DFF0)
      {
        if (xpc_dictionary_get_BOOL(qword_10007DFF0, *(a1 + 16)))
        {
          sub_100019154(a1);
          return;
        }

        v3 = *(a1 + 100);
      }

      if (v3 == 5)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v5 = sub_10000EBAC(v10, *(a1 + 16), 0);
      v11 = *(a1 + 40);
      *(v5 + 1) = *(a1 + 24);
      *(v5 + 2) = v11;
      v7 = *(a1 + 64);
      *(v5 + 6) = *(a1 + 56);
      v12 = _NSConcreteStackBlock;
      v13 = 0x40000000;
      v8 = &unk_100078950;
      v9 = sub_1000194C0;
      goto LABEL_37;
    }

    if (v3 - 6 < 2)
    {
      if (v3 == 7)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      v5 = sub_10000EBAC(v4, *(a1 + 16), 0);
      v6 = *(a1 + 40);
      *(v5 + 1) = *(a1 + 24);
      *(v5 + 2) = v6;
      v7 = *(a1 + 64);
      *(v5 + 6) = *(a1 + 56);
      v12 = _NSConcreteStackBlock;
      v13 = 0x40000000;
      v8 = &unk_100078970;
      v9 = sub_1000196B0;
LABEL_37:
      v14 = v9;
      v15 = v8;
      v16 = a1;
      v17 = v5;
      sub_10000EBE0(v5, v7, &v12);
      return;
    }

LABEL_42:
    sub_100054674();
  }

  switch(v3)
  {
    case 1u:

      sub_1000183BC(a1);
      break;
    case 2u:

      sub_10001848C(a1);
      break;
    case 3u:

      sub_10001856C(a1);
      break;
    default:
      goto LABEL_42;
  }
}

void sub_100018338(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  (*(*(a1 + 72) + 16))();
  if ((*(a1 + 101) & 1) == 0)
  {
    sub_100054690();
  }

  *(a1 + 101) &= ~1u;

  sub_10001B690(a1);
}

void sub_1000183BC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
  if (sub_1000169EC(v3, ".plist"))
  {
    v4 = 2;
  }

  else if (sub_1000169EC(v3, ".xpc") || sub_1000169EC(v3, ".pluginkit"))
  {
    v2 |= 0x1000uLL;
    v4 = 7;
  }

  else
  {
    v4 = 3;
  }

  v5 = sub_100017F4C(v4, v3, (a1 + 24), v2, *(a1 + 64));
  sub_10001905C(a1, v5);
  sub_10001B690(v5);

  sub_100019154(a1);
}

void sub_10001848C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (sub_1000169EC(v2, ".plist"))
  {
    v3 = sub_10000EBAC(0, v2, 0);
    v4 = *(a1 + 40);
    *(v3 + 1) = *(a1 + 24);
    *(v3 + 2) = v4;
    v5 = *(a1 + 64);
    *(v3 + 6) = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10001930C;
    v6[3] = &unk_100078910;
    v6[4] = a1;
    v6[5] = v3;
    sub_10000EBE0(v3, v5, v6);
  }

  else
  {

    sub_100018338(a1);
  }
}

void sub_10001856C(uint64_t a1)
{
  v2 = sub_10000EBAC(3, *(a1 + 16), 0);
  v3 = *(a1 + 40);
  *(v2 + 1) = *(a1 + 24);
  *(v2 + 2) = v3;
  v4 = *(a1 + 64);
  *(v2 + 6) = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100019360;
  v5[3] = &unk_100078930;
  v5[4] = a1;
  v5[5] = v2;
  sub_10000EBE0(v2, v4, v5);
}

void sub_100018608(uint64_t a1)
{
  if (*(a1 + 148))
  {
    sub_100054404();
  }

  sub_10001B690(*(a1 + 48));
  v2 = *(a1 + 72);
  if (v2)
  {
    xpc_release(v2);
  }

  dispatch_release(*(a1 + 16));
  _Block_release(*(a1 + 24));
  xpc_release(*(a1 + 80));
  v3 = *(a1 + 96);
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    dispatch_release(v4);
  }

  sub_10001B690(*(a1 + 64));
  v5 = *(a1 + 32);

  sub_10001B690(v5);
}

void sub_1000186B8(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if ((a2 - 1) >= 2)
  {
    sub_100054404();
  }

  v9 = a6;
  if (!a1[32])
  {
    a1[32] = mach_absolute_time();
  }

  if (a2 == 1)
  {
    sub_10002D450(a1, 8, a3, a4, a5, a6, a7, a8, v45);
  }

  v15 = sub_1000157D8();
  v16 = sub_10001BC2C(0);
  *(v16 + 6) = sub_10001B5B8(a1);
  v16[104] = a2;
  *(v16 + 11) = v9;
  if (a7)
  {
    if (a2 != 1)
    {
      sub_100054404();
    }

    *(v16 + 12) = xpc_retain(a7);
  }

  if (a3)
  {
    *(v16 + 9) = xpc_retain(a3);
  }

  *(v16 + 2) = v15;
  dispatch_retain(v15);
  *(v16 + 10) = xpc_dictionary_create(0, 0, 0);
  *(v16 + 4) = sub_100010918();
  if (a2 == 2 && a3)
  {
    v17 = dispatch_group_create();
    *(v16 + 7) = v17;
    dispatch_group_enter(v17);
  }

  *(v16 + 8) = sub_1000496EC();
  if (a5 == &qword_10007F150 || (*a5 == qword_10007F150 ? (v18 = *(a5 + 8) == *&dword_10007F158) : (v18 = 0), v18 ? (v19 = *(a5 + 16) == qword_10007F160) : (v19 = 0), v19 ? (v20 = *(a5 + 24) == *&dword_10007F168) : (v20 = 0), v20))
  {
    v21 = 2;
  }

  else if (sub_10001A604(a5))
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v16[112] = v21;
  v22 = *(a5 + 16);
  *(v16 + 116) = *a5;
  *(v16 + 132) = v22;
  if (xpc_get_type(a4) != &_xpc_type_array)
  {
    if (xpc_get_type(a4) != &_xpc_type_string)
    {
      if (xpc_get_type(a4) != &_xpc_type_dictionary)
      {
        sub_1000546AC();
      }

      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_1000197F0;
      applier[3] = &unk_100078990;
      applier[4] = v9;
      applier[5] = v16;
      xpc_dictionary_apply(a4, applier);
      goto LABEL_59;
    }

    if (v9 == 2)
    {
      v31 = (v9 & 0x1000) == 0;
      v32 = 6;
      v33 = 4;
    }

    else
    {
      if (v9 != 1)
      {
        v34 = 1;
LABEL_58:
        string_ptr = xpc_string_get_string_ptr(a4);
        v36 = sub_1000157D8();
        v37 = sub_100017F4C(v34, string_ptr, v16 + 116, v9 & 0xFFFFFF00, v36);
        sub_100019704(v16, v37);
        sub_10001B690(v37);
        goto LABEL_59;
      }

      v31 = (v9 & 0x1000) == 0;
      v32 = 7;
      v33 = 5;
    }

    if (v31)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    goto LABEL_58;
  }

  if (xpc_array_get_count(a4))
  {
    v23 = 0;
    do
    {
      string = xpc_array_get_string(a4, v23);
      if (string)
      {
        v25 = string;
        if ((v9 & 0x1000) != 0)
        {
          v26 = 6;
        }

        else
        {
          v26 = 4;
        }

        if ((v9 & 0x1000) != 0)
        {
          v27 = 7;
        }

        else
        {
          v27 = 5;
        }

        if (v9 != 1)
        {
          v27 = 1;
        }

        if (v9 == 2)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        v9 = v9 & 0xFFFFFF00;
        v29 = sub_1000157D8();
        v30 = sub_100017F4C(v28, v25, v16 + 116, v9, v29);
        sub_100019704(v16, v30);
        sub_10001B690(v30);
      }

      ++v23;
    }

    while (v23 < xpc_array_get_count(a4));
  }

LABEL_59:
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_100018B1C;
  aBlock[3] = &unk_100078828;
  aBlock[4] = v16;
  if (v16[148])
  {
    sub_100054404();
  }

  *(v16 + 3) = _Block_copy(aBlock);
  v38 = sub_1000157D8();
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 0x40000000;
  v46[2] = sub_100018D60;
  v46[3] = &unk_100078848;
  v46[4] = v16;
  v39 = sub_10003DE30(a3, v38, v46);
  if (a3)
  {
    if ((v39 & 1) == 0)
    {
      sub_10002C908(a1, 5, "couldn't handoff domain IO, asynced away", v40, v41, v42, v43, v44, v45);
    }
  }
}

void sub_100018B1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if ((*(v2 + 89) & 4) != 0)
  {
    if (*(v2 + 104) != 1)
    {
      sub_100054404();
    }

    v4 = *(v2 + 64);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_100019F24;
    v16[3] = &unk_100078A10;
    v16[4] = v3;
    v16[5] = v2;
    sub_10004964C(v4, v16);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    if (*(v2 + 104) == 1)
    {
      v6 = "bootstrap-error";
    }

    else
    {
      v6 = "bootout-error";
    }

    xpc_dictionary_set_int64(*(v2 + 72), v6, *(v2 + 108));
    xpc_dictionary_set_value(v5, "errors", *(v2 + 80));
    if (*(v2 + 56))
    {
      xpc_retain(v5);
      sub_10001B5B8(v3);
      dispatch_group_leave(*(v2 + 56));
      v7 = *(v2 + 56);
      v8 = *(v2 + 16);
      v10 = _NSConcreteStackBlock;
      v11 = 0x40000000;
      v12 = sub_100019FBC;
      v13 = &unk_100078A30;
      v14 = v5;
      v15 = v3;
      dispatch_group_notify(v7, v8, &v10);
    }

    else if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
    {
      _os_assumes_log_ctx();
    }
  }

  else
  {
    v9 = *(v2 + 80);
    v10 = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10001A03C;
    v13 = &unk_100078A50;
    v14 = v2;
    xpc_dictionary_apply(v9, &v10);
  }

  if ((*(v2 + 89) & 0x20) != 0)
  {
    v3[33] = sub_10000B4A8(v3[32]);
    sub_10002D7C4(v3);
  }

  if (*(v2 + 104) == 1)
  {
    sub_10002D4F0(v3, 8);
  }

  sub_10001B690(*(a1 + 32));
}

void sub_100018D60(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 16));
  if (*(v1 + 148))
  {
    sub_100054404();
  }

  *(v1 + 148) |= 1u;
  sub_10001B5B8(v1);
  if (sub_100010B1C(*(v1 + 32)))
  {
    v2 = sub_100010B1C(*(v1 + 32));
    if (*(v1 + 90))
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = sub_100010AF4(*(v1 + 32), i);
        sub_1000180A4(v5);
      }
    }
  }

  else
  {

    sub_100019E1C(v1);
  }
}

void sub_100018E2C(void *a1, const char *a2, void *a3, _OWORD *a4, uint64_t a5)
{
  v10 = sub_1000157D8();
  v11 = sub_100017F4C(6, a2, a4, 20480, v10);
  if (a3)
  {
    xpc_retain(a3);
  }

  sub_10001B5B8(a1);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_100018F24;
  v12[3] = &unk_100078870;
  v12[4] = a5;
  v12[5] = a3;
  v12[6] = a1;
  v12[7] = v11;
  sub_100018034(v11, v12);
  sub_10001806C(v11, &stru_1000788B0);
  sub_1000180A4(v11);
}

void sub_100018F24(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a3;
  if (!a3)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      if (!sub_10000ED38(a2))
      {
        sub_100054404();
      }

      info_dictionary = xpc_bundle_get_info_dictionary();
      if (info_dictionary)
      {
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 0x40000000;
        applier[2] = sub_10001A0E4;
        applier[3] = &unk_100078A70;
        applier[4] = info_dictionary;
        xpc_dictionary_apply(v5, applier);
      }
    }

    sub_100030B1C(*(a1 + 48), a2, *(a1 + 40), 0, &v8);
    v7 = *(a1 + 40);
    if (v7)
    {
      xpc_release(v7);
    }
  }

  (*(*(a1 + 32) + 16))();
  sub_10001B690(*(a1 + 48));
  sub_10001B690(*(a1 + 56));
}

void *sub_10001905C(uint64_t a1, void *a2)
{
  if (*(a1 + 96))
  {
    sub_100054404();
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_100019220;
  aBlock[3] = &unk_1000788D0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  sub_100018034(a2, aBlock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100019304;
  v6[3] = &unk_1000788F0;
  v6[4] = a1;
  sub_10001806C(a2, v6);
  v4 = *(a1 + 88);
  if (!v4)
  {
    v4 = sub_100010918();
    *(a1 + 88) = v4;
  }

  return sub_1000109BC(v4, a2);
}

void sub_100019154(uint64_t a1)
{
  if (*(a1 + 88))
  {
    sub_10001B5B8(a1);
    v2 = sub_100010B1C(*(a1 + 88));
    *(a1 + 96) = v2;
    if (!v2)
    {
      sub_100054404();
    }

    if (sub_100010B1C(*(a1 + 88)))
    {
      v3 = 0;
      do
      {
        v4 = sub_100010AF4(*(a1 + 88), v3);
        sub_1000180A4(v4);
        ++v3;
      }

      while (v3 < sub_100010B1C(*(a1 + 88)));
    }

    sub_10001B690(a1);
  }

  else
  {

    sub_100018338(a1);
  }
}

void sub_100019220(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_100019294(*(a1 + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  if (!v4)
  {
    sub_100054404();
  }

  v5 = v4 - 1;
  *(v3 + 96) = v5;
  if (!v5)
  {

    sub_100018338(v3);
  }
}

uint64_t sub_100019294(uint64_t a1)
{
  if ((*(a1 + 101) & 1) == 0)
  {
    sub_100054690();
  }

  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = *(*(a1 + 80) + 16);

  return v2();
}

void sub_10001930C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100054404();
  }

  v3 = *(a1 + 40);
  sub_100018338(*(a1 + 32));
  v4 = *(a1 + 40);

  sub_10001B690(v4);
}

void sub_100019360(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    sub_100018338(*(a1 + 32));
  }

  else
  {
    if (!a2)
    {
      sub_100054404();
    }

    if (!sub_100010B1C(a2) && (*(*(a1 + 32) + 57) & 0x20) == 0)
    {
      sub_10004749C(4, "Activated a directory (%s) and found no files", "<private>");
    }

    if (sub_100010B1C(a2))
    {
      v5 = 0;
      do
      {
        v6 = sub_100010AF4(a2, v5);
        v7 = *(a1 + 32);
        v8 = *(v7 + 40);
        *(v6 + 16) = *(v7 + 24);
        *(v6 + 32) = v8;
        *(v6 + 48) = *(v7 + 56);
        v9 = sub_10000ECF0(v6);
        v10 = sub_10000ED30(v6);
        if (v9 == 3)
        {
          v11 = 5;
        }

        else
        {
          v11 = 2;
        }

        v12 = sub_100017F4C(v11, v10, (*(a1 + 32) + 24), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
        sub_10001905C(*(a1 + 32), v12);
        sub_10001B690(v12);
        ++v5;
      }

      while (v5 < sub_100010B1C(a2));
    }

    sub_100019154(*(a1 + 32));
  }

  v13 = *(a1 + 40);

  sub_10001B690(v13);
}

void sub_1000194C0(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    sub_100054404();
  }

  if (a3)
  {
    sub_100018338(*(a1 + 32));
    v4 = (a1 + 40);
  }

  else
  {
    v4 = (a1 + 40);
    sub_10000ED38(*(a1 + 40));
    v5 = xpc_bundle_copy_services();
    if (xpc_array_get_count(v5))
    {
      v6 = 0;
      do
      {
        value = xpc_array_get_value(v5, v6);
        if (sub_10000ED00(*v4))
        {
          v8 = sub_10001A6F0(value);
          v9 = sub_10000ECF0(v8);
          v10 = *(*(a1 + 32) + 56);
          v11 = sub_10000ED30(v8);
          if (v9 == 1)
          {
            v12 = 7;
          }

          else
          {
            v12 = 6;
          }

          v13 = sub_100017F4C(v12, v11, (*(a1 + 32) + 24), v10 | 0x1000, *(*(a1 + 32) + 64));
          v14 = *(v13 + 40);
          *(v8 + 1) = *(v13 + 24);
          *(v8 + 2) = v14;
          *(v8 + 6) = *(v13 + 7);
          sub_100019294(*(a1 + 32));
          sub_10001B690(v13);
        }

        else
        {
          path = xpc_bundle_get_path();
          v8 = sub_100017F4C(7, path, (*(a1 + 32) + 24), *(*(a1 + 32) + 56) | 0x1000, *(*(a1 + 32) + 64));
          sub_10001905C(*(a1 + 32), v8);
        }

        sub_10001B690(v8);
        ++v6;
      }

      while (v6 < xpc_array_get_count(v5));
    }

    if ((sub_10000ED00(*v4) & 1) == 0 && !xpc_array_get_count(v5))
    {
      v16 = *(a1 + 32);
      v17 = qword_10007DFF0;
      if (!qword_10007DFF0)
      {
        v17 = xpc_dictionary_create(0, 0, 0);
        qword_10007DFF0 = v17;
      }

      xpc_dictionary_set_BOOL(v17, *(v16 + 16), 1);
    }

    xpc_release(v5);
    sub_100019154(*(a1 + 32));
  }

  v18 = *v4;

  sub_10001B690(v18);
}

void sub_1000196B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100054404();
  }

  v3 = *(a1 + 40);
  sub_100018338(*(a1 + 32));
  v4 = *(a1 + 40);

  sub_10001B690(v4);
}

void *sub_100019704(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    sub_100054404();
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1000198D0;
  aBlock[3] = &unk_1000789D0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  sub_100018034(a2, aBlock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100019EB8;
  v5[3] = &unk_1000789F0;
  v5[4] = a1;
  sub_10001806C(a2, v5);
  return sub_1000109BC(*(a1 + 32), a2);
}

uint64_t sub_1000197F0(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_uint64)
  {
    value = xpc_uint64_get_value(object);
  }

  else
  {
    value = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 32) | value;
  v9 = (*(a1 + 32) | value);
  if ((v8 & 0x1000) != 0)
  {
    v10 = 6;
  }

  else
  {
    v10 = 4;
  }

  if ((v8 & 0x1000) != 0)
  {
    v11 = 7;
  }

  else
  {
    v11 = 5;
  }

  if (v9 != 1)
  {
    v11 = 1;
  }

  if (v9 == 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_1000157D8();
  v14 = sub_100017F4C(v12, a2, (v7 + 116), v8 & 0xFFFFFF00, v13);
  sub_100019704(*(a1 + 40), v14);
  sub_10001B690(v14);
  return 1;
}

void sub_1000198D0(uint64_t a1, void *a2, int a3)
{
  sub_1000199C8(*(a1 + 32), *(a1 + 40), a2, a3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40) + 1;
  *(v4 + 40) = v6;
  if (v6 > sub_100010B1C(v5))
  {
    sub_100054404();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  v9 = sub_100010B1C(*(v7 + 32));
  v10 = *(a1 + 32);
  if (v8 == v9)
  {

    sub_100019E1C(v10);
  }

  else if (*(v10 + 90))
  {
    v11 = sub_1000157D8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100019E88;
    block[3] = &unk_1000789B0;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }
}

void sub_1000199C8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v4 = a4;
  if (!a4)
  {
    v7 = *(a1 + 104);
    if ((v7 - 1) >= 2)
    {
      sub_100054404();
    }

    v9 = *(a1 + 48);
    if (sub_10002CF00(v9))
    {
      v4 = 124;
      goto LABEL_49;
    }

    v10 = *(a2 + 100);
    if ((v10 - 6) >= 2)
    {
      if (v10 != 2)
      {
LABEL_48:
        v4 = 0;
        goto LABEL_49;
      }

      if (v7 == 1)
      {
        if (*(a1 + 96))
        {
          v4 = 22;
          goto LABEL_49;
        }

        v11 = sub_10002FE08(v9, a3);
        goto LABEL_27;
      }

      v12 = sub_10003060C(v9, a3, *(a1 + 56));
      if (((v12 == 36) & (*(a1 + 90) >> 1)) != 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = v12;
      }
    }

    else
    {
      if (v7 == 2)
      {
        v4 = 116;
        goto LABEL_49;
      }

      if ((*(a1 + 89) & 4) == 0)
      {
        v11 = sub_100030ADC(v9, a3, *(a1 + 96));
LABEL_27:
        v4 = v11;
        goto LABEL_49;
      }

      sub_10000ED38(a3);
      v13 = *(a1 + 64);
      info_dictionary = xpc_bundle_get_info_dictionary();
      if (!info_dictionary || (v15 = info_dictionary, (string = xpc_dictionary_get_string(info_dictionary, "CFBundleIdentifier")) == 0))
      {
        v4 = 107;
        goto LABEL_49;
      }

      v17 = string;
      v18 = sub_100049614(v13, string);
      if (!v18)
      {
        goto LABEL_47;
      }

      v19 = v18;
      sub_10000ED38(v18);
      property = xpc_bundle_get_property();
      v21 = xpc_bundle_get_property();
      if (sub_100017D88(v21) && !sub_100017D88(property))
      {
        v4 = 127;
        goto LABEL_49;
      }

      if (sub_100017D88(v21) & 1) == 0 && (sub_100017D88(property))
      {
        v4 = 127;
LABEL_46:
        v34 = sub_10000ED30(v19);
        sub_100019EC0(a1, v34, v4);
LABEL_47:
        a3[6] &= ~0x400uLL;
        sub_10004954C(v13, v17, a3);
        goto LABEL_48;
      }

      if (sub_100017D88(v21) & 1) != 0 || (sub_100017D88(property))
      {
        if (!strcmp(v21, property))
        {
          v4 = 121;
        }

        else
        {
          sub_10002C908(*(a1 + 48), 4, "Conflicts exist in System services. Randomly deciding: path1 = %s, path2 = %s", v22, v23, v24, v25, v26, property);
          v4 = 130;
        }
      }

      else
      {
        v27 = xpc_dictionary_get_string(v15, "CFBundleVersion");
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = "0";
        }

        v29 = xpc_bundle_get_info_dictionary();
        v30 = xpc_dictionary_get_string(v29, "CFBundleVersion");
        if (v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = "0";
        }

        v32 = sub_1000167A0(v28, v31);
        if ((v32 + 1) >= 2)
        {
          v33 = 0;
        }

        else
        {
          v33 = 3;
        }

        if (v32 == 1)
        {
          v33 = 2;
        }

        v4 = 129;
        if ((v33 | 2) == 2)
        {
          goto LABEL_46;
        }
      }
    }
  }

LABEL_49:
  v35 = *(a2 + 100);
  if (v35 == 2)
  {
    if ((*(a1 + 89) & 0x20) != 0)
    {
      goto LABEL_64;
    }

    if (*(a1 + 104) == 1)
    {
      v36 = "Bootstrap";
    }

    else
    {
      v36 = "Bootout";
    }

    if (v4)
    {
      xpc_strerror();
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      sub_100045C2C(a1 + 116, &v47);
      if (v4 != 36)
      {
        sub_10002C908(*(a1 + 48), 5, "%s by %s[%d] for %s failed (%d: %s)", v37, v38, v39, v40, v41, v36);
LABEL_59:
        LOBYTE(v35) = *(a2 + 100);
        goto LABEL_60;
      }
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      sub_100045C2C(a1 + 116, &v47);
    }

    sub_10002C908(*(a1 + 48), 5, "%s by %s[%d] for %s succeeded (%d: %s)", v37, v38, v39, v40, v41, v36);
    goto LABEL_59;
  }

LABEL_60:
  if ((v35 & 0xFE) != 4 || (v4 - 107) > 0x15 || ((1 << (v4 - 107)) & 0x200005) == 0)
  {
LABEL_64:
    if (!v4)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v4 = 121;
LABEL_65:
  sub_100019EC0(a1, *(a2 + 16), v4);
LABEL_66:
  v42 = *(a1 + 104);
  if (v42 == 2)
  {
    v45 = *(a2 + 16);
    v46 = *(a1 + 136);
  }

  else if (v42 == 1)
  {
    v43 = *(a2 + 16);
    v44 = *(a1 + 136);
  }
}

void sub_100019E1C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  (*(*(a1 + 24) + 16))();
  if ((*(a1 + 148) & 1) == 0)
  {
    sub_100054690();
  }

  *(a1 + 148) &= ~1u;

  sub_10001B690(a1);
}

void sub_100019E88(uint64_t a1)
{
  v1 = sub_100010AF4(*(*(a1 + 32) + 32), *(*(a1 + 32) + 40));

  sub_1000180A4(v1);
}

void sub_100019EC0(uint64_t a1, const char *a2, int a3)
{
  if (!a3)
  {
    sub_100054404();
  }

  if (*(a1 + 112) != 2)
  {
    v5 = 5;
    goto LABEL_6;
  }

  xpc_dictionary_set_int64(*(a1 + 80), a2, a3);
  if (*(a1 + 108))
  {
    v5 = 133;
LABEL_6:
    *(a1 + 108) = v5;
    return;
  }

  *(a1 + 108) = a3;
}

void sub_100019F24(uint64_t a1, int a2, id a3)
{
  Class = j__object_getClass(a3);
  if (Class != sub_10001BE4C())
  {
    sub_100054404();
  }

  v6 = sub_100030ADC(*(a1 + 32), a3, *(*(a1 + 40) + 96));
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = sub_10000ED30(a3);

    sub_100019EC0(v8, v9, v7);
  }
}

void sub_100019FBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_pipe_routine_reply();
  xpc_release(*(a1 + 32));
  if ((v3 | 0x20) != 0x20)
  {
    v5 = *(a1 + 40);
    _os_assumes_log_ctx();
  }

  v4 = *(a1 + 40);

  sub_10001B690(v4);
}

uint64_t sub_10001A03C(uint64_t a1, char a2, xpc_object_t xint)
{
  v4 = *(a1 + 32);
  value = xpc_int64_get_value(xint);
  v6 = (value - 119) > 0x21 || ((1 << (value - 119)) & 0x220008025) == 0;
  if (v6 || byte_10007F0F8 == 1)
  {
    v7 = *(v4 + 48);
    xpc_strerror();
    sub_10002C908(v7, 3, "Failed to bootstrap path: path = %s, error = %d: %s", v8, v9, v10, v11, v12, a2);
  }

  return 1;
}

void sub_10001A104(const void *a1)
{
  if (dword_10007DC44)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v3 = dispatch_queue_create("com.apple.xpc.launchd.timeout", v2);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    qword_10007DFF8 = v4;
    v5 = dispatch_time(0, 1000000000 * dword_10007DC44);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = qword_10007DFF8;
    v7 = _Block_copy(a1);
    dispatch_set_context(v6, v7);
    dispatch_source_set_event_handler_f(qword_10007DFF8, sub_10001A200);
    v8 = qword_10007DFF8;

    dispatch_activate(v8);
  }
}

void sub_10001A200(uint64_t a1)
{
  v2 = sub_10003283C();
  v3 = sub_1000157D8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001A364;
  v4[3] = &unk_100078A98;
  v4[4] = a1;
  v4[5] = v2;
  dispatch_async_and_wait(v3, v4);
}

void sub_10001A284()
{
  if (qword_10007DFF8)
  {
    dispatch_source_cancel(qword_10007DFF8);
    dispatch_release(qword_10007DFF8);
    qword_10007DFF8 = 0;
  }
}

void sub_10001A2BC(uint64_t a1)
{
  if (qword_10007DFF8)
  {
    v2 = sub_10003283C();
    v3 = mach_absolute_time();
    v4 = sub_10000B544(v3 - *(v2 + 272));
    v5 = a1 + 1000000000 * dword_10007DC44;
    if (v5 > v4)
    {
      v6 = qword_10007DFF8;
      v7 = dispatch_time(0, v5 - v4);

      dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

uint64_t sub_10001A364(uint64_t a1)
{
  nullsub_23(*(a1 + 40), "shutdowntimeout");
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10001A3B0(uint64_t a1)
{
  free(*(a1 + 72));
  if (*(a1 + 24))
  {
    sub_100054404();
  }

  if (*(a1 + 32))
  {
    sub_100054404();
  }

  if (*(a1 + 40))
  {
    sub_100054404();
  }

  if (*(a1 + 48))
  {
    sub_100054404();
  }
}

uint64_t sub_10001A408()
{
  os_map_64_init();

  return os_map_64_insert();
}

uint64_t sub_10001A464(uint64_t a1)
{
  v2 = *(a1 + 1352);
  if (!v2)
  {
    return 121;
  }

  *(v2 + 32) = 0;
  *(a1 + 1352) = 0;
  sub_10001A4A0(v2);
  return 0;
}

void sub_10001A4A0(uint64_t a1)
{
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  if (!v2)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 64);
      if (v4)
      {
        *(v4 + 64) = v5;
      }

      *v5 = v4;
      *(a1 + 56) = -1;
      *(a1 + 64) = -1;
      sub_10001A4A0(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 16);
    os_map_64_delete();

    sub_10001B690(a1);
  }
}

void *sub_10001A534(uint64_t a1)
{
  v2 = sub_100010918();
  sub_10001A568(v2, *(a1 + 1352));
  return v2;
}

uint64_t sub_10001A568(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 48);
    if (v2)
    {
      v3 = result;
      do
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          sub_1000109BC(v3, v4);
        }

        result = sub_10001A568(v3, v2);
        v2 = *(v2 + 56);
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10001A5BC()
{
  v0 = sub_100010918();
  v1 = os_map_64_find();
  sub_10001A568(v0, v1);
  return v0;
}

BOOL sub_10001A604(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return sandbox_check_by_audit_token() == 0;
}

BOOL sub_10001A64C(__int128 *a1, uint64_t a2, int a3)
{
  if ((a3 - 2) <= 2)
  {
    v3 = dword_1000577B4[a3 - 2];
  }

  v5 = *a1;
  v6 = a1[1];
  return sandbox_check_by_audit_token() == 0;
}

BOOL sub_10001A6A4(__int128 *a1, __int128 *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  return sandbox_check_process_signal_target() == 0;
}

_BYTE *sub_10001A6F0(void *a1)
{
  if (xpc_bundle_get_property() == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  property = xpc_bundle_get_property();
  v4 = sub_10000EB3C(v2, property);
  *(v4 + 10) = xpc_retain(a1);
  v5 = unk_10007D5E8;
  *(v4 + 8) = xmmword_10007D5D8;
  *(v4 + 9) = v5;
  v6 = unk_10007D5C8;
  *(v4 + 6) = xmmword_10007D5B8;
  *(v4 + 7) = v6;
  v7 = unk_10007D608;
  *(v4 + 10) = xmmword_10007D5F8;
  *(v4 + 11) = v7;
  v8 = unk_10007D628;
  *(v4 + 12) = xmmword_10007D618;
  *(v4 + 13) = v8;
  *(v4 + 14) = xmmword_10007D638;
  v4[264] |= 1u;
  return v4;
}

BOOL sub_10001A794(const char *a1)
{
  v2 = 0;
  do
  {
    result = sub_1000169A8(a1, off_100078AB8[v2]);
    if (result)
    {
      break;
    }
  }

  while (v2++ != 1);
  return result;
}

size_t sub_10001A7E8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    if (sub_1000169EC(*(a1 + 64), ".appex"))
    {
      v13 = *(a1 + 64);
      goto LABEL_15;
    }

LABEL_16:
    v2 = *(a1 + 56);
LABEL_17:
    if (v2 == 2)
    {
      v14 = sub_10001B118(*(a1 + 64));
    }

    else
    {
      if (v2 == 1)
      {
        v16 = *(a1 + 64);
        v17 = sub_10001B0D8(v16);
        if (!v17)
        {
          v18 = sub_10001B118(v16);
          if (!v18)
          {
            return 148;
          }

          v17 = v18;
          sub_10004749C(5, "Found XPCService bundle by executable: %s", v16);
        }

LABEL_28:
        if (*(a1 + 56) >= 3u)
        {
          sub_1000441E0("unsupported cached entry type %d", *(a1 + 56));
        }

        *(a1 + qword_1000577C0[*(a1 + 56)]) = v17;
        *(a1 + 264) |= 1u;
        *(a1 + 240) = 0;
        v19 = unk_10007D628;
        *(a1 + 192) = xmmword_10007D618;
        *(a1 + 208) = v19;
        *(a1 + 224) = xmmword_10007D638;
        v20 = unk_10007D5E8;
        *(a1 + 128) = xmmword_10007D5D8;
        *(a1 + 144) = v20;
        v21 = unk_10007D608;
        *(a1 + 160) = xmmword_10007D5F8;
        *(a1 + 176) = v21;
        v22 = unk_10007D5C8;
        *(a1 + 96) = xmmword_10007D5B8;
        *(a1 + 112) = v22;
        dispatch_assert_queue_V2(*(a1 + 248));
        (*(*(a1 + 256) + 16))();
        return 0;
      }

      if (v2)
      {
        return 148;
      }

      if (!qword_10007F038)
      {
        return 148;
      }

      v15 = sub_100049614(qword_10007F038, *(a1 + 64));
      if (!v15)
      {
        return 148;
      }

      v14 = sub_100049864(v15);
    }

LABEL_27:
    v17 = v14;
    if (v14)
    {
      goto LABEL_28;
    }

    return 148;
  }

  if (v2 == 2)
  {
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s", *(a1 + 64));
    v12 = strrchr(__str, 47);
    if (v12)
    {
      *v12 = 0;
    }

    if (sub_1000169EC(__str, ".appex"))
    {
      v13 = __str;
LABEL_15:
      v14 = sub_10001B0D8(v13);
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (v2 != 3)
  {
    goto LABEL_17;
  }

  v3 = *(a1 + 64);
  if ((sub_100016AEC(qword_10007F098, v3) & 1) == 0 && (!qword_10007F0A0 || !sub_100016AEC(qword_10007F0A0, v3)))
  {
    return 148;
  }

  result = strlen(*(a1 + 64));
  v5 = result + 2;
  if (((result >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63 == result >= 0xFFFFFFFFFFFFFFFELL)
  {
    v6 = sub_100014514(result + 2, 0x83F4C8DEuLL);
    strlcpy(v6, *(a1 + 64), v5);
    *&v6[v5 - 2] = 47;
    v7 = sub_100010918();
    *__str = _NSConcreteStackBlock;
    v24 = 0x40000000;
    v25 = sub_10001B058;
    v26 = &unk_100078AD0;
    v27 = v6;
    v28 = v7;
    sub_10004964C(qword_10007F038, __str);
    v8 = unk_10007D6B8;
    *(a1 + 192) = xmmword_10007D6A8;
    *(a1 + 208) = v8;
    *(a1 + 224) = xmmword_10007D6C8;
    v9 = unk_10007D678;
    *(a1 + 128) = xmmword_10007D668;
    *(a1 + 144) = v9;
    v10 = unk_10007D698;
    *(a1 + 160) = xmmword_10007D688;
    *(a1 + 176) = v10;
    v11 = unk_10007D658;
    *(a1 + 96) = xmmword_10007D648;
    *(a1 + 112) = v11;
    dispatch_assert_queue_V2(*(a1 + 248));
    (*(*(a1 + 256) + 16))();
    sub_10001B690(v7);
    free(v6);
    return 0;
  }

  __break(1u);
  return result;
}

xpc_object_t sub_10001AB48()
{
  v0 = open("/System/Library/xpc/launchd.plist", 0);
  if ((v0 & 0x80000000) != 0)
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    sub_10004749C(65539, "Unable to open %s [%d:%s]", "/System/Library/xpc/launchd.plist", v6, v8);
    return 0;
  }

  else
  {
    v1 = v0;
    memset(&v13, 0, sizeof(v13));
    if (fstat(v0, &v13))
    {
      v2 = *__error();
      v3 = __error();
      v4 = strerror(*v3);
      sub_10004749C(65539, "Unable to stat %s [%d:%s]", "/System/Library/xpc/launchd.plist", v2, v4);
      v5 = 0;
    }

    else
    {
      st_size = v13.st_size;
      v10 = sub_100046508((v13.st_size + vm_page_size - 1) & -vm_page_size);
      v11 = dispatch_data_create(v10, st_size, 0, _dispatch_data_destructor_vm_deallocate);
      v5 = xpc_data_create_with_dispatch_data(v11);
      dispatch_release(v11);
    }

    sub_1000413F8(v1);
  }

  return v5;
}

void sub_10001AC80(xpc_object_t xdata)
{
  v1 = xdata;
  if (!xdata)
  {
    sub_10004749C(65539, "No MRM cache found");
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  xpc_data_get_bytes_ptr(xdata);
  xpc_data_get_length(v1);
  sub_100015A08();
  sub_100015A14();
  v2 = j__xpc_create_from_plist_with_string_cache();
  v1 = v2;
  if (!v2)
  {
    sub_10004749C(65541, "Unable to parse MRM cache");
    goto LABEL_7;
  }

  value = xpc_dictionary_get_value(v2, "SystemLibraryTreeState");
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v4, "_imagePathToInfo", value);
  xpc_dictionary_set_value(v1, "SystemLibraryTreeState", v4);
  xpc_release(v4);
  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(v1, "LaunchDaemons");
    v7 = v6;
    if (v6)
    {
      if (xpc_get_type(v6) == &_xpc_type_dictionary)
      {
        v7 = xpc_retain(v7);
      }

      else
      {
        v7 = 0;
      }
    }

    v8 = xpc_dictionary_get_value(v1, "SystemLibraryTreeState");
    v9 = v8;
    if (v8)
    {
      if (xpc_get_type(v8) == &_xpc_type_dictionary && (v15 = xpc_dictionary_get_value(v9, "_imagePathToInfo")) != 0 && (v16 = v15, xpc_get_type(v15) == &_xpc_type_dictionary))
      {
        v9 = xpc_dictionary_create(0, 0, 0);
        applier = _NSConcreteStackBlock;
        v18 = 0x40000000;
        v19 = sub_10001B2F4;
        v20 = &unk_100078B30;
        v21 = v9;
        xpc_dictionary_apply(v16, &applier);
      }

      else
      {
        v9 = 0;
      }
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    applier = _NSConcreteStackBlock;
    v18 = 0x40000000;
    v19 = sub_10001B4F8;
    v20 = &unk_100078B50;
    v21 = v10;
    v11 = xpc_dictionary_get_value(v1, "AppExtensions");
    if (v11)
    {
      v12 = v11;
      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        xpc_dictionary_apply(v12, &applier);
      }
    }

    v13 = xpc_dictionary_get_value(v1, "AppRemovalServices");
    if (v13)
    {
      v14 = v13;
      if (xpc_get_type(v13) == &_xpc_type_dictionary)
      {
        xpc_dictionary_apply(v14, &applier);
      }
    }

    sub_10001B194(v7, v9, v10);
    if (v7)
    {
      xpc_release(v7);
    }

    if (v9)
    {
      xpc_release(v9);
    }

    if (v10)
    {
      xpc_release(v10);
    }

    goto LABEL_34;
  }

  v5 = 0;
LABEL_8:
  if (byte_10007F0E3 != 1 || byte_10007F0E5 == 1)
  {
    sub_1000441E0("No service cache");
  }

  sub_10001B194(0, 0, 0);
  if ((v5 & 1) == 0)
  {
LABEL_34:
    xpc_release(v1);
    return;
  }

  if (!dword_10007F0C0)
  {

    sub_10004749C(65540, "Unable to load cache");
  }
}

void sub_10001B058(uint64_t a1, const char *a2)
{
  if (sub_1000169A8(a2, *(a1 + 32)))
  {
    v4 = sub_10000EBAC(0, a2, 0);
    sub_1000109BC(*(a1 + 40), v4);

    sub_10001B690(v4);
  }
}

xpc_object_t sub_10001B0D8(char *key)
{
  result = xpc_dictionary_get_value(qword_10007F048, key);
  if (result)
  {

    return xpc_retain(result);
  }

  return result;
}

uint64_t sub_10001B118(char *key)
{
  if (!xpc_dictionary_get_value(qword_10007F040, key))
  {
    return 0;
  }

  sub_100015A08();
  sub_100015A14();
  v1 = j__xpc_bundle_create_from_origin_with_string_cache();
  xpc_bundle_populate();
  return v1;
}

xpc_object_t sub_10001B194(void *a1, void *a2, void *a3)
{
  if (qword_10007F038)
  {
    sub_10001B690(qword_10007F038);
  }

  qword_10007F038 = sub_1000496EC();
  if (a1 && xpc_get_type(a1) == &_xpc_type_dictionary)
  {
    xpc_dictionary_apply(a1, &stru_100078B10);
  }

  if (qword_10007F040)
  {
    xpc_release(qword_10007F040);
  }

  if (a2 && xpc_get_type(a2) == &_xpc_type_dictionary)
  {
    v6 = xpc_retain(a2);
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
  }

  qword_10007F040 = v6;
  if (qword_10007F048)
  {
    xpc_release(qword_10007F048);
  }

  if (a3 && xpc_get_type(a3) == &_xpc_type_dictionary)
  {
    result = xpc_retain(a3);
  }

  else
  {
    result = xpc_dictionary_create(0, 0, 0);
  }

  qword_10007F048 = result;
  return result;
}

BOOL sub_10001B29C(id a1, const char *a2, void *a3)
{
  sub_1000497F4();
  v5 = v4;
  sub_10004954C(qword_10007F038, a2, v4);
  sub_10001B690(v5);
  return 1;
}

uint64_t sub_10001B2F4(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) == &_xpc_type_dictionary && (v9 = xpc_dictionary_get_value(object, "_serviceBundles")) != 0 && (v10 = v9, xpc_get_type(v9) == &_xpc_type_array) && xpc_array_get_count(v10))
  {
    v7 = xpc_array_create(0, 0);
    if (xpc_array_get_count(v10))
    {
      v11 = 0;
      do
      {
        value = xpc_array_get_value(v10, v11);
        if (value)
        {
          v13 = value;
          if (xpc_get_type(value) == &_xpc_type_dictionary)
          {
            v14 = sub_10001B454(v13);
            if (v14)
            {
              v15 = v14;
              xpc_array_append_value(v7, v14);
              xpc_release(v15);
            }
          }
        }

        ++v11;
      }

      while (v11 < xpc_array_get_count(v10));
    }
  }

  else
  {
    v6 = qword_10007E018;
    if (!qword_10007E018)
    {
      v6 = xpc_array_create(0, 0);
      qword_10007E018 = v6;
    }

    if (xpc_array_get_count(v6))
    {
      sub_1000546C8();
    }

    v7 = xpc_retain(qword_10007E018);
  }

  if (v7)
  {
    xpc_dictionary_set_value(*(a1 + 32), a2, v7);
    xpc_release(v7);
  }

  return 1;
}

uint64_t sub_10001B454(void *a1)
{
  value = xpc_dictionary_get_value(a1, "_infoPlist");
  if (!value || xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 0;
  }

  string = xpc_dictionary_get_string(a1, "_executablePath");
  if (string)
  {
    sub_100015A08();
    sub_100015A14();
    string = j__xpc_bundle_create_from_origin_with_string_cache();
    xpc_bundle_populate();
  }

  return string;
}

uint64_t sub_10001B4F8(uint64_t a1, const char *a2, void *a3)
{
  v5 = sub_10001B454(a3);
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_value(*(a1 + 32), a2, v5);
    xpc_release(v6);
  }

  return 1;
}

void *sub_10001B550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100014514(0x18uLL, 0x1080040CC6EE3FDuLL);
  *v7 = a1;
  v7[1] = a3;
  v7[2] = a4;
  if (a1)
  {
    sub_10001BAF8(a1);
    v8 = a1;
  }

  return v7;
}

void *sub_10001B5B8(void *a1)
{
  sub_10001BAF8(a1);
  v2 = a1;
  return a1;
}

void *sub_10001B5E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100014514(0x18uLL, 0x1080040CC6EE3FDuLL);
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  if (a1)
  {
    xpc_retain(a1);
  }

  return v6;
}

void sub_10001B648(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_10001BAF8(*a1);
  }

  free(a1);
}

void sub_10001B690(void *a1)
{
  sub_10001BAF8(a1);
}

void sub_10001B6C8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    xpc_release(v2);
  }

  free(a1);
}

char *sub_10001B708(char *__s, const char *a2, uint64_t a3, size_t *a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v9 = 0;
    while (strcmp(__s, off_100078B70[v9]))
    {
      if (++v9 == 2)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v10 = strlen(__s);
  v11 = v10 + 1;
  v12 = v10 == -1;
  result = strlen(a2);
  v14 = &result[v11];
  v15 = __CFADD__(result, v11);
  v16 = (v14 + 1);
  v17 = ((v14 == -1) << 63) >> 63 != (v14 == -1);
  if (!v12 && !v15 && !v17)
  {
    result = (v16 + 32);
    if (v16 < 0xFFFFFFFFFFFFFFE0)
    {
      v18 = sub_100014514(result, 0xA9BED039uLL);
      *(v18 + 3) = a3;
      snprintf(v18 + 32, v16, "%s=%s", __s, a2);
      *a4 = v16;
      return v18;
    }
  }

  __break(1u);
  return result;
}

size_t sub_10001B804(uint64_t a1, size_t *a2)
{
  v3 = (a1 + 32);
  v4 = strlen((a1 + 32));
  v5 = v4 + 1;
  v6 = __CFADD__(v4 + 1, 32);
  result = v4 + 33;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_100014514(result, 0x1C7ED0A3uLL);
    snprintf(v8 + 32, v5, "%s", v3);
    *a2 = v5;
    return v8;
  }

  return result;
}

uint64_t sub_10001B880(uint64_t a1, uint64_t a2, FILE *a3)
{
  v5 = a1 + 32;
  v6 = strchr((a1 + 32), 61);
  *v6 = 0;
  result = sub_100049ECC(a3, a2, "%s => %s", v7, v8, v9, v10, v11, v5, v6 + 1);
  *v6 = 61;
  return result;
}

char *sub_10001B8F8(uint64_t a1, const char *a2)
{
  result = strchr((a1 + 32), 61);
  if (result)
  {
    v5 = result;
    *result = 0;
    result = (strcmp((a1 + 32), a2) == 0);
    *v5 = 61;
  }

  return result;
}

char *sub_10001B958(uint64_t a1)
{
  v1 = strchr((a1 + 32), 61);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10001B984(const char *a1)
{
  if (sub_1000169A8(a1, "__XPC_"))
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  if (!strcmp(&a1[v2], "LD_LIBRARY_PATH"))
  {
    return 1;
  }

  result = sub_1000169A8(&a1[v2], "DYLD_");
  if (!result)
  {
    return result;
  }

  if (!sub_1000169A8(&a1[v2], "DYLD_PRINT_"))
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = strcmp(&a1[v2], (&off_100078B88)[v4]);
    result = v5 != 0;
    if (!v5)
    {
      break;
    }
  }

  while (v4++ != 10);
  return result;
}

_DWORD *sub_10001BA40(mach_port_name_t a1, int a2)
{
  v4 = sub_100014514(0x18uLL, 0x10A00404E934A1DuLL);
  if (sub_10000B744(a1))
  {
    _os_assumes_log();
  }

  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void sub_10001BAA8(mach_port_name_t *a1)
{
  if (sub_10000B760(a1[4]))
  {
    _os_assumes_log();
  }

  free(a1);
}

uint64_t sub_10001BAF8(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    sub_100054404();
  }

  return result;
}

uint64_t sub_10001BB44(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    sub_100054404();
  }

  *(result + 8) = 1;
  return result;
}

id sub_10001BB6C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 32);
}

id sub_10001BBAC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 24);
}

id sub_10001BBEC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 1016);
}

id sub_10001BC2C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 144);
}

id sub_10001BC6C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 96);
}

char *sub_10001BCAC(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 161);
  strcpy(Instance + 168, a1);
  return Instance;
}

id sub_10001BCFC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 56);
}

id sub_10001BD3C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 80);
}

char *sub_10001BD7C(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 33);
  strcpy(Instance + 40, a1);
  return Instance;
}

id sub_10001BDCC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 80);
}

id sub_10001BE0C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 264);
}

id sub_10001BE58(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 80);
}

char *sub_10001BE98(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 1417);
  strcpy(Instance + 1424, a1);
  return Instance;
}

id sub_10001BEE8(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 56);
}

char *sub_10001BF28(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 209);
  strcpy(Instance + 216, a1);
  return Instance;
}

id sub_10001BF78(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 40);
}

id sub_10001BFB8(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 24);
}

id sub_10001BFF8(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 72);
}

id sub_10001C038(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 16);
}

char *sub_10001C078(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 33);
  strcpy(Instance + 40, a1);
  return Instance;
}

char *sub_10001C0C8(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 25);
  strcpy(Instance + 32, a1);
  return Instance;
}

uint64_t sub_10001C118(uid_t a1, _DWORD *a2)
{
  v4 = sub_10003DEF0();
  if (v4 && v4 == a1)
  {
    v5 = sub_10001C18C(0x1F5u, a2);
    sub_10001C1F0(a2);
    return v5;
  }

  else
  {

    return sub_10001C18C(a1, a2);
  }
}

uint64_t sub_10001C18C(uid_t a1, uint64_t a2)
{
  v4 = 0;
  result = getpwuid_r(a1, a2, (a2 + 72), 0x1000uLL, &v4);
  if (!result)
  {
    if (v4)
    {
      sub_10001C3AC(*a2, *(a2 + 20), a2);
      return 0;
    }

    else
    {
      return 114;
    }
  }

  return result;
}

uint64_t sub_10001C1F0(_DWORD *a1)
{
  result = sub_10003DEF0();
  if (result)
  {
    if (a1[4] == 501)
    {
      a1[4] = result;
    }

    if (a1[5] == 501)
    {
      a1[5] = result;
    }

    v3 = a1[1058];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = a1 + 1042;
      do
      {
        if (v5[v4] == 501)
        {
          v5[v4] = result;
          v3 = a1[1058];
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }

  return result;
}

uint64_t sub_10001C270()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (v0)
  {
    v11[0] = 0;
    result = getpwnam_r(v0, v1, (v1 + 72), 0x1000uLL, v11);
    if (result)
    {
      return result;
    }

    if (!v11[0])
    {
      return 114;
    }

    gr_gid = v2[5];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    gr_gid = -101;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  bzero(v11, 0x1000uLL);
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  result = getgrnam_r(v4, &v10, v11, 0x1000uLL, &v9);
  if (result)
  {
    return result;
  }

  if (!v9)
  {
    return 115;
  }

  gr_gid = v10.gr_gid;
LABEL_10:
  if (gr_gid != -101)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = "root";
    }

    sub_10001C3AC(v8, gr_gid, v2);
  }

  sub_10001C1F0(v2);
  return 0;
}

uint64_t sub_10001C3AC(const char *a1, int a2, uint64_t a3)
{
  *(a3 + 4232) = 16;
  result = getgrouplist(a1, a2, (a3 + 4168), (a3 + 4232));
  if (result == -1)
  {
    return sub_10005455C();
  }

  return result;
}

uint64_t sub_10001C3F0(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  if (os_map_str_find())
  {
    return 17;
  }

  v8 = sub_100014514(0x18uLL, 0x1090040D67CC068uLL);
  *v8 = sub_1000166EC(a2);
  v8[2] = a3;
  *(v8 + 2) = a4;
  os_map_str_insert();
  return 0;
}

uint64_t sub_10001C480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = os_map_str_delete();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 8);
  *a3 = *(v4 + 16);
  free(*v4);
  free(v5);
  return v6;
}

void sub_10001C4DC(void *a1)
{
  os_map_str_clear();
  os_map_str_destroy();

  free(a1);
}

BOOL sub_10001C524(id a1, const char *a2, void *a3)
{
  if (sub_10000B774(*(a3 + 2), 0, *(a3 + 2)))
  {
    sub_100054420();
  }

  free(*a3);
  free(a3);
  return 1;
}

uint64_t sub_10001C570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10001C588(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a2 + 24);
  v4 = v3 >= *a3;
  v5 = v3 > *a3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10001C5A0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a2;
  if (*(a1 + 24) == 4982)
  {
    node = rb_tree_find_node(*(a1 + 16), &v8);
    if (node)
    {
      v6 = node;
      rb_tree_remove_node(*(a1 + 16), node);
      os_release(v6[4]);
      free(v6);
    }

    if (a3)
    {
      v7 = malloc_type_malloc(0x28uLL, 0x108004034BCA2CCuLL);
      v7[3] = v8;
      v7[4] = os_retain(a3);
      if (rb_tree_insert_node(*(a1 + 16), v7) != v7)
      {
        sub_100054404();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

rb_tree_t **sub_10001C668(rb_tree_t **result, uint64_t a2)
{
  v2 = a2;
  if (*(result + 6) == 4982)
  {
    result = rb_tree_find_node(result[2], &v2);
    if (result)
    {
      return result[4];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

rb_tree_t **sub_10001C6B0(rb_tree_t **result, uint64_t a2)
{
  if (*(result + 6) == 4982)
  {
    v3 = result;
    result = rb_tree_iterate(result[2], 0, 1u);
    if (result)
    {
      v4 = result;
      do
      {
        (*(a2 + 16))(a2, v4[3], v4[4]);
        result = rb_tree_iterate(v3[2], v4, 1u);
        v4 = result;
      }

      while (result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_10001C734(size_t result)
{
  if (*(result + 24) == 4982)
  {
    return rb_tree_count(*(result + 16));
  }

  __break(1u);
  return result;
}

void *sub_10001C750()
{
  v0 = sub_10001BFB8(0);
  v1 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
  v0[2] = v1;
  rb_tree_init(v1, off_10007D6D8);
  *(v0 + 6) = 4982;
  return v0;
}

void sub_10001C7AC(uint64_t a1)
{
  if (*(a1 + 24) == 4982)
  {
    *(a1 + 24) = 0;
    v3 = rb_tree_iterate(*(a1 + 16), 0, 1u);
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = rb_tree_iterate(*(a1 + 16), v4, 1u);
        rb_tree_remove_node(*(a1 + 16), v4);
        os_release(v4[4]);
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(a1 + 16);

    free(v6);
  }

  else
  {
    __break(1u);
  }
}

xpc_object_t sub_10001C850(char *a1)
{
  empty = xpc_array_create_empty();
  v15[0] = a1;
  v15[1] = 0;
  v3 = fts_open(v15, 92, 0);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
LABEL_3:
    v6 = v5;
    while (1)
    {
      v7 = fts_read(v4);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      fts_info = v7->fts_info;
      switch(fts_info)
      {
        case 11:
          if (sub_1000169EC(v7->fts_path, ".plist"))
          {
            v10 = xpc_string_create(v8->fts_path);
            xpc_array_append_value(empty, v10);
            xpc_release(v10);
          }

          break;
        case 6:
          --v5;
          goto LABEL_3;
        case 1:
          v5 = 1;
          if (v6)
          {
            v5 = v6 + 1;
            fts_set(v4, v7, 4);
          }

          goto LABEL_3;
      }
    }

    if (fts_close(v4) == -1)
    {
      sub_10005453C();
    }
  }

  else
  {
    v11 = *__error();
    v12 = *__error();
    v13 = xpc_strerror();
    sub_10004749C(4, "failed to fts_open(%s, 0x%x): %d: %s", a1, 92, v11, v13);
  }

  return empty;
}

void *sub_10001C9C8(const char *a1, int a2, int *a3)
{
  if (access(a1, 4))
  {
    v6 = __error();
    result = 0;
    v8 = *v6;
  }

  else
  {
    if (a2)
    {
      result = sub_10004152C(a1);
    }

    else
    {
      result = sub_100041440(a1);
    }

    if (result)
    {
      v8 = 0;
    }

    else
    {
      v8 = 109;
    }
  }

  *a3 = v8;
  return result;
}

void sub_10001CA48(uint64_t a1)
{
  if (qword_10007E020 == a1)
  {
    qword_10007E020 = 0;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = 0;
    v4 = dword_10007DBD8;
    do
    {
      v5 = *(*(a1 + 64) + 4 * v3);
      if ((v5 & 0x80000000) == 0 && v5 != v4)
      {
        sub_1000413F8(v5);
        v4 = dword_10007DBD8;
        v2 = *(a1 + 88);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 32) != -1 || *(a1 + 40) != -1)
  {
    sub_1000441E0("socket deallocated while still in domain list");
  }

  if (*(a1 + 16) != -1 || *(a1 + 24) != -1)
  {
    sub_1000441E0("socket deallocated while still in service list");
  }

  if ((*(a1 + 212) & 0x84) == 4)
  {
    sub_1000441E0("socket deallocated while still active");
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 136));
  free(*(a1 + 144));
  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 176));
  free(*(a1 + 184));
  v6 = *(a1 + 200);

  xpc_release(v6);
}

void sub_10001CBBC(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = sub_10001CC24(a1);
  sub_1000474DC(v12, a2, a3, &a9, v9);
  free(v12);
}

char *sub_10001CC24(uint64_t a1)
{
  v8 = sub_10000FC98(0x40uLL);
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = sub_100022158(v9, 1);
    sub_10000FD40(v8, "%s - ", v11, v12, v13, v14, v15, v16, v10);
    free(v10);
  }

  sub_10000FD40(v8, "%s", v2, v3, v4, v5, v6, v7, a1 - 40);
  v17 = sub_10000FCFC(v8);
  sub_10000FD04(v8);
  return v17;
}

char *sub_10001CCC0(uint64_t a1, uint64_t a2, const char *a3, int a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_10001BF28(a3);
  *(v16 + 7) = a1;
  *(v16 + 24) = -1;
  *(v16 + 26) = a4;
  dispatch_retain(a6);
  *(v16 + 14) = a6;
  *(v16 + 15) = a7;
  *(v16 + 16) = a8;
  *(v16 + 25) = xpc_retain(a5);
  *(v16 + 106) |= 2u;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *(v16 + 1) = v17;
  *(v16 + 2) = v17;
  v18 = sub_100023EEC(a1);
  v19 = *(v18 + 20);
  if (v19)
  {
    v20 = v18;
    if (v19 != getpid())
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        *(v16 + 27) = v21;
      }
    }
  }

  string = xpc_dictionary_get_string(a5, "SockPathName");
  if (string && !strcmp(string, "/var/run/syslog"))
  {
    xpc_dictionary_set_BOOL(a5, "SystemLoggingSocket", 1);
  }

  *(v16 + 25) = 1;
  v23 = sub_10001B550(v16, 1, a9, 0);
  xpc_dictionary_apply_f();
  sub_10001B648(v23);
  if (!*(v16 + 52) && sub_100032A18(a2) != &unk_10007D720 && *(v16 + 26) != a4)
  {
    sub_10001CBBC(v16, 3, "Not allowed to set SockPathOwner to UID %d. Remove key.", v25, v26, v27, v28, v29, *(v16 + 26));
    *(v16 + 52) = 1;
  }

  return v16;
}

void sub_10001CE6C(const char *a1, xpc_object_t object, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  type = xpc_get_type(object);
  if (!strcasecmp(a1, "SockType"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    string_ptr = xpc_string_get_string_ptr(object);
    if (!strcasecmp(string_ptr, "stream"))
    {
      v12 = 1;
    }

    else if (!strcasecmp(string_ptr, "dgram"))
    {
      v12 = 2;
    }

    else
    {
      if (strcasecmp(string_ptr, "seqpacket"))
      {
        sub_100015968(v5, 3, "Unrecognized %s");
        goto LABEL_66;
      }

      v12 = 5;
    }

    *(v6 + 100) = v12;
    return;
  }

  if (!strcasecmp(a1, "SockPassive"))
  {
    if (type == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(object))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v6 + 212) & 0xFFFD;
LABEL_28:
      v11 = v10 | v9;
LABEL_29:
      *(v6 + 212) = v11;
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SecureSocketWithKey"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    if (!*(v6 + 144))
    {
      v13 = xpc_string_get_string_ptr(object);
      *(v6 + 136) = sub_1000166EC(v13);
      return;
    }

    goto LABEL_35;
  }

  if (!strcasecmp(a1, "SockPathName"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    if (*(v6 + 136))
    {
LABEL_35:
      sub_100015968(v5, 3, "Can't have both %s and %s");
      goto LABEL_66;
    }

    if (xpc_string_get_length(object) >= 0x68)
    {
      sub_100015968(v5, 3, "%s value is too long.", a1);
      v15 = 34;
LABEL_67:
      *(v6 + 208) = v15;
      return;
    }

    v17 = xpc_string_get_string_ptr(object);
    if (v17)
    {
      *(v6 + 144) = sub_1000166EC(v17);
      return;
    }

LABEL_66:
    v15 = 22;
    goto LABEL_67;
  }

  if (!strcasecmp(a1, "SockPathOwner"))
  {
    if (type == &_xpc_type_int64)
    {
      *(v6 + 104) = xpc_int64_get_value(object);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockPathGroup"))
  {
    if (type == &_xpc_type_int64)
    {
      *(v6 + 108) = xpc_int64_get_value(object);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockPathMode"))
  {
    if (type == &_xpc_type_int64)
    {
      *(v6 + 152) = xpc_int64_get_value(object);
      v11 = *(v6 + 212) | 8;
      goto LABEL_29;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockNodeName"))
  {
    if (type == &_xpc_type_string)
    {
      v14 = xpc_string_get_string_ptr(object);
      *(v6 + 160) = sub_1000166EC(v14);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "MulticastGroup"))
  {
    if (type == &_xpc_type_string)
    {
      v16 = xpc_string_get_string_ptr(object);
      *(v6 + 168) = sub_1000166EC(v16);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockServiceName"))
  {
    if (type == &_xpc_type_string)
    {
      v22 = xpc_string_get_string_ptr(object);
      v19 = sub_1000166EC(v22);
    }

    else
    {
      if (type != &_xpc_type_int64)
      {
        goto LABEL_65;
      }

      value = xpc_int64_get_value(object);
      v19 = sub_1000168E0("%lld", value);
    }

    *(v6 + 176) = v19;
    return;
  }

  if (!strcasecmp(a1, "SockFamily"))
  {
    if (type == &_xpc_type_string)
    {
      v20 = xpc_string_get_string_ptr(object);
      if (!strcasecmp(v20, "IPv4"))
      {
        v21 = 2;
      }

      else if (!strcasecmp(v20, "IPv6"))
      {
        v21 = 30;
      }

      else
      {
        if (!strcasecmp(v20, "IPv4v6"))
        {
          *(v6 + 192) = 30;
          v11 = *(v6 + 212) | 0x20;
          goto LABEL_29;
        }

        if (strcasecmp(v20, "Unix"))
        {
LABEL_80:
          sub_100015968(v5, 4, "Unrecognized %s");
          return;
        }

        v21 = 1;
      }

      *(v6 + 192) = v21;
      return;
    }

LABEL_65:
    xpc_type_get_name(type);
    sub_100015968(v5, 3, "Invalid type for socket dictionary (key/type): %s/%s");
    goto LABEL_66;
  }

  if (!strcasecmp(a1, "SockProtocol"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    v23 = xpc_string_get_string_ptr(object);
    if (!strcasecmp(v23, "TCP"))
    {
      v25 = 6;
    }

    else
    {
      if (strcasecmp(v23, "UDP"))
      {
        goto LABEL_80;
      }

      v25 = 17;
    }

    *(v6 + 196) = v25;
    return;
  }

  if (strcasecmp(a1, "Bonjour"))
  {
    if (!strcasecmp(a1, "SystemLoggingSocket"))
    {
      if (xpc_BOOL_get_value(object))
      {
        v9 = 64;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v6 + 212) & 0xFFBF;
    }

    else
    {
      if (strcasecmp(a1, "ReceivePacketInfo"))
      {
        if (strcasecmp(a1, "BoundInterface"))
        {
          sub_100015968(v5, 4, "Unknown socket key %s");
          return;
        }

        if (type == &_xpc_type_string)
        {
          v24 = xpc_string_get_string_ptr(object);
          *(v6 + 184) = sub_1000166EC(v24);
          return;
        }

        goto LABEL_65;
      }

      if (xpc_BOOL_get_value(object))
      {
        v9 = 512;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v6 + 212) & 0xFDFF;
    }

    goto LABEL_28;
  }

  if (type != &_xpc_type_BOOL || xpc_BOOL_get_value(object))
  {
    v11 = *(v6 + 212) | 0x10;
    goto LABEL_29;
  }
}

void sub_10001D438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 212) & 0x40) != 0)
  {
    if (qword_10007E020)
    {
      sub_10001CBBC(a1, 3, "System logger socket is already claimed by: %s", a4, a5, a6, a7, a8, qword_10007E020 - 40);
      *(a1 + 208) = 37;
      v10 = a1;
      v11 = 1;
    }

    else
    {
      qword_10007E020 = a1;
      *(a1 + 64) = sub_100014514(4uLL, 0x100004052888210uLL);
      *(a1 + 72) = sub_100014514(1uLL, 0x100004077774924uLL);
      *(a1 + 88) = 1;
      v17 = *(a1 + 64);
      *v17 = dword_10007DBD8;
      *(a1 + 100) = 2;
      *(a1 + 212) |= 4u;
      if (*v17 == -1)
      {
        sub_10001CBBC(a1, 4, "System logger socket was not opened during early boot. (Proceeding anyway)", v12, v13, v14, v15, v16, v18);
      }

      v10 = a1;
      v11 = 0;
    }

    sub_10001D594(v10, v11);
  }

  else
  {
    sub_10001B5B8(a1);
    v9 = sub_1000157E4();

    dispatch_async_f(v9, a1, sub_10001D620);
  }
}

void sub_10001D594(void *a1, int a2)
{
  v4 = sub_100014514(0x10uLL, 0x10200403A5D3213uLL);
  *v4 = sub_10001B5B8(a1);
  v4[2] = a2;
  v5 = a1[14];

  dispatch_async_f(v5, v4, sub_10001F01C);
}

void sub_10001D620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 136);
  if (v9 || *(a1 + 144))
  {
    if (!byte_10007F050)
    {
      sub_100047654("fixup-mobile-tmp", 196611, "launchd has not fixed mobile/tmp (socket)", a4, a5, a6, a7, a8, v190);
      v9 = *(a1 + 136);
    }

    bzero(&v201, 0x400uLL);
    if (v9)
    {
      __strlcpy_chk();
      if (!mkdtemp(&v201) && *__error())
      {
        _os_assumes_log_ctx();
      }

      *(a1 + 144) = sub_1000168E0("%s/%s", &v201, (a1 + 216));
    }

    *(a1 + 64) = sub_100014514(4uLL, 0x100004052888210uLL);
    *(a1 + 72) = sub_100014514(1uLL, 0x100004077774924uLL);
    *(a1 + 88) = 1;
    v10 = socket(1, *(a1 + 100), 0);
    **(a1 + 64) = v10;
    if (v10 == -1)
    {
      goto LABEL_145;
    }

    if ((*(a1 + 212) & 2) == 0)
    {
      v11 = v10;
      memset(v214, 0, 106);
      BYTE1(v214[0].st_dev) = 1;
      strncpy(&v214[0].st_dev + 2, *(a1 + 144), 0x67uLL);
      if (connect(v11, v214, 0x6Au))
      {
        v12 = *__error();
        v13 = *(a1 + 144);
        xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to connect() a socket: path=%s, error=%s (%d)", v14, v15, v16, v17, v18, v13);
        if (v12 == -1)
        {
LABEL_145:
          v145 = *__error();
          _os_assumes_log_ctx();
          v20 = *__error();
          goto LABEL_138;
        }
      }

      goto LABEL_137;
    }

    bzero(v214, 0x400uLL);
    if (dirname_r(*(a1 + 144), v214))
    {
      bzero(v202, 0x400uLL);
      if (basename_r(*(a1 + 144), v202))
      {
        if (mkdir(v214, 0x1EDu) && (v19 = __error(), v20 = *v19, *v19 != 17))
        {
          v121 = *v19;
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to mkdir() socket directory: path=%s, mode=%o, error=%s (%d)", v122, v123, v124, v125, v126, v214);
        }

        else
        {
          v21 = open(v214, 0x100000);
          if ((v21 & 0x80000000) == 0)
          {
            v22 = v21;
            v23 = sub_1000166EC(v202);
            goto LABEL_140;
          }

          v20 = *__error();
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to open() socket directory: path=%s, error=%s (%d)", v127, v128, v129, v130, v131, v214);
        }
      }

      else
      {
        v20 = *__error();
        v113 = *(a1 + 144);
        xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to basename_r() a socket path: path=%s, error=%s (%d)", v114, v115, v116, v117, v118, v113);
      }
    }

    else
    {
      v20 = *__error();
      v24 = *(a1 + 144);
      xpc_strerror();
      sub_10001CBBC(a1, 3, "Failed to dirname_r() a socket path: path=%s, error=%s (%d)", v25, v26, v27, v28, v29, v24);
    }

    v23 = 0;
    v22 = 0xFFFFFFFFLL;
    if (v20)
    {
      goto LABEL_134;
    }

LABEL_140:
    memset(v214, 0, 144);
    if (fstatat(v22, v23, v214, 2048))
    {
      v137 = __error();
      v20 = *v137;
      if (*v137 != 2)
      {
        v138 = *(a1 + 144);
        v139 = *v137;
        xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to fstatat() old socket path: path=%s, error=%s (%d)", v140, v141, v142, v143, v144, v138);
        goto LABEL_143;
      }
    }

    else
    {
      if (*(a1 + 104) != v214[0].st_uid)
      {
        sub_10001CBBC(a1, 3, "Cannot remove old socket path; UIDs mismatch: socket owner=%d, path=%d", v132, v133, v134, v135, v136, *(a1 + 104));
        v20 = 122;
        goto LABEL_134;
      }

      if ((v214[0].st_mode & 0xF000) != 0xC000)
      {
        sub_10001CBBC(a1, 3, "Old socket path is not a socket; path=%s", v132, v133, v134, v135, v136, *(a1 + 144));
        v20 = 79;
        goto LABEL_134;
      }

      if (unlinkat(v22, v23, 2048))
      {
        v146 = __error();
        v20 = *v146;
        if (*v146 != 2)
        {
          v183 = *(a1 + 144);
          v184 = *v146;
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to unlinkat() old socket path: path=%s, error=%s (%d)", v185, v186, v187, v188, v189, v183);
LABEL_143:
          if (v20)
          {
            goto LABEL_134;
          }
        }
      }
    }

    memset(v214, 0, 106);
    BYTE1(v214[0].st_dev) = 1;
    strncpy(&v214[0].st_dev + 2, *(a1 + 144), 0x67uLL);
    if (!bind(**(a1 + 64), v214, 0x6Au) || (v20 = *__error(), v147 = *(a1 + 144), xpc_strerror(), sub_10001CBBC(a1, 3, "Failed to bind() a socket: path=%s, error=%s (%d)", v148, v149, v150, v151, v152, v147), !v20))
    {
      if (*(a1 + 108))
      {
        v153 = *(a1 + 108);
      }

      else
      {
        v153 = *(a1 + 104) == 0;
      }

      if (fchownat(v22, v23, *(a1 + 104), v153, 32))
      {
        v154 = *__error();
        v155 = *(a1 + 144);
        xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to fchownat() a socket: path=%s, uid=%d, gid=%d, error=%s (%d)", v156, v157, v158, v159, v160, v155);
        v20 = v154;
        if (!v154)
        {
          goto LABEL_163;
        }
      }

      else if (!*(a1 + 136) || (v161 = *(a1 + 104)) == 0 || !fchown(v22, v161, 0) || (v20 = *__error(), v162 = *(a1 + 144), v163 = *(a1 + 104), xpc_strerror(), sub_10001CBBC(a1, 3, "Failed to fchown() secure socket directory: path=%s, uid=%d, gid=%d, error=%s (%d)", v164, v165, v166, v167, v168, v162), !v20))
      {
LABEL_163:
        if ((*(a1 + 212) & 8) != 0)
        {
          v169 = *(a1 + 152);
        }

        else
        {
          v169 = 438;
        }

        if (fchmodat(v22, v23, v169, 32))
        {
          v170 = *__error();
          v171 = *(a1 + 144);
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to fchmodat() a socket: path=%s, mode=%o, error=%s (%d)", v172, v173, v174, v175, v176, v171);
          v20 = v170;
        }

        else
        {
          v20 = 0;
        }
      }
    }

LABEL_134:
    sub_1000413F8(v22);
    free(v23);
    if (v20)
    {
LABEL_138:
      *(a1 + 208) = v20;
LABEL_139:
      *(a1 + 212) |= 4u;
      sub_10001D594(a1, v20 != 0);
      sub_10001B690(a1);
      return;
    }

    if ((*(a1 + 100) | 4) == 5 && listen(**(a1 + 64), -1) == -1)
    {
      goto LABEL_145;
    }

LABEL_137:
    v20 = 0;
    goto LABEL_138;
  }

  memset(&v199, 0, sizeof(v199));
  v30 = *(a1 + 100);
  v31 = *(a1 + 196);
  v199.ai_family = *(a1 + 192);
  v199.ai_socktype = v30;
  v199.ai_protocol = v31;
  if ((*(a1 + 212) & 2) != 0)
  {
    v199.ai_flags = 1;
  }

  v198 = 0;
  v32 = getaddrinfo(*(a1 + 160), *(a1 + 176), &v199, &v198);
  if (v32)
  {
    v177 = v32;
    _os_assumes_log_ctx();
    gai_strerror(v177);
    sub_10001CBBC(a1, 3, "getaddrinfo(3): %d: %s", v178, v179, v180, v181, v182, v177);
    v20 = sub_10001F0D8(v177);
    *(a1 + 208) = v20;
    if (v20)
    {
      goto LABEL_139;
    }

LABEL_128:
    if ((*(a1 + 212) & 0x10) != 0)
    {
      sub_10001B5B8(a1);
      v120 = sub_1000157D8();
      dispatch_async_f(v120, a1, sub_10001F078);
      v20 = *(a1 + 208);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_139;
  }

  v33 = v198;
  v34 = *(a1 + 88);
  if (v198)
  {
    do
    {
      ++v34;
      v33 = v33->ai_next;
    }

    while (v33);
    *(a1 + 88) = v34;
  }

  if (!(v34 >> 62))
  {
    *(a1 + 64) = sub_100014514(4 * v34, 0xB7D1F305uLL);
    *(a1 + 72) = sub_100014514(*(a1 + 88), 0xE944D6D0uLL);
    v35 = v198;
    if (!v198)
    {
      v119 = 0;
      goto LABEL_127;
    }

    v36 = 0;
    v37 = "PATH";
    while (1)
    {
      v38 = socket(v35->ai_family, v35->ai_socktype, v35->ai_protocol);
      *(*(a1 + 64) + 4 * v36) = v38;
      if (v38 == -1)
      {
        v50 = *__error();
        _os_assumes_log_ctx();
        ai_protocol = v35->ai_protocol;
        v194 = v36;
        ai_socktype = v35->ai_socktype;
        sub_10001CBBC(a1, 3, "Could not create socket for resolved listener (family = %d, type = %d, protocol = %d, idx = %lu: ", v51, v52, v53, v54, v55, v35->ai_family);
        goto LABEL_123;
      }

      v197 = 0;
      v39 = *(a1 + 184);
      if (v39)
      {
        LODWORD(v39) = if_nametoindex(v39);
        v197 = v39;
        if (!v39)
        {
          ai_socktype = v36;
          sub_10001CBBC(a1, 3, "Could not get interface index (name = %s, idx = %lu)", v40, v41, v42, v43, v44, *(a1 + 184));
          goto LABEL_123;
        }
      }

      v196 = 1;
      v45 = *(a1 + 212);
      if ((v45 & 2) == 0)
      {
        v46 = connect(*(*(a1 + 64) + 4 * v36), v35->ai_addr, v35->ai_addrlen);
        if (!v46)
        {
          goto LABEL_99;
        }

        if (v46 == -1)
        {
          goto LABEL_98;
        }

        goto LABEL_123;
      }

      ai_family = v35->ai_family;
      if (ai_family == 2)
      {
        if ((v45 & 0x20) != 0)
        {
          sub_1000413F8(*(*(a1 + 64) + 4 * v36));
          *(*(a1 + 64) + 4 * v36) = -1;
          goto LABEL_123;
        }

        if ((*(a1 + 212) & 0x200) == 0)
        {
          if (!v39)
          {
            goto LABEL_69;
          }

LABEL_48:
          v49 = setsockopt(*(*(a1 + 64) + 4 * v36), 0, 25, &v197, 4u);
          if (v49)
          {
            if (v49 == -1)
            {
              goto LABEL_98;
            }

            goto LABEL_123;
          }

          goto LABEL_69;
        }

        v56 = setsockopt(*(*(a1 + 64) + 4 * v36), 0, 20, &v196, 4u);
        if (v56)
        {
          if (v56 == -1)
          {
            goto LABEL_98;
          }

          goto LABEL_123;
        }

        v59 = setsockopt(*(*(a1 + 64) + 4 * v36), 0, 7, &v196, 4u);
        if (v59)
        {
          if (v59 == -1)
          {
            goto LABEL_98;
          }

          goto LABEL_123;
        }

        if (v197)
        {
          goto LABEL_48;
        }
      }

      else if (ai_family == 30)
      {
        if ((v45 & 0x20) == 0)
        {
          v48 = setsockopt(*(*(a1 + 64) + 4 * v36), 41, 27, &v196, 4u);
          if (v48)
          {
            if (v48 == -1)
            {
              goto LABEL_98;
            }

            goto LABEL_123;
          }

          *(a1 + 96) = *(*(a1 + 64) + 4 * v36);
          v45 = *(a1 + 212);
        }

        if ((v45 & 0x200) != 0)
        {
          v57 = setsockopt(*(*(a1 + 64) + 4 * v36), 41, 61, &v196, 4u);
          if (v57)
          {
            if (v57 == -1)
            {
              goto LABEL_98;
            }

            goto LABEL_123;
          }
        }

        if (v197)
        {
          v58 = setsockopt(*(*(a1 + 64) + 4 * v36), 41, 125, &v197, 4u);
          if (v58)
          {
            if (v58 == -1)
            {
              goto LABEL_98;
            }

            goto LABEL_123;
          }
        }
      }

LABEL_69:
      v60 = *(*(a1 + 64) + 4 * v36);
      if (*(a1 + 168))
      {
        v61 = setsockopt(v60, 0xFFFF, 512, &v196, 4u);
        if (v61)
        {
          if (v61 == -1)
          {
            goto LABEL_98;
          }

          goto LABEL_123;
        }
      }

      else
      {
        v62 = setsockopt(v60, 0xFFFF, 4, &v196, 4u);
        if (v62)
        {
          if (v62 == -1)
          {
            goto LABEL_98;
          }

          goto LABEL_123;
        }
      }

      v63 = bind(*(*(a1 + 64) + 4 * v36), v35->ai_addr, v35->ai_addrlen);
      if (v63)
      {
        if (v63 == -1)
        {
          goto LABEL_98;
        }

        goto LABEL_123;
      }

      v64 = getsockname(*(*(a1 + 64) + 4 * v36), v35->ai_addr, &v35->ai_addrlen);
      if (v64)
      {
        if (v64 == -1)
        {
          goto LABEL_98;
        }

        goto LABEL_123;
      }

      v65 = *(a1 + 168);
      if (v65)
      {
        v66 = *(*(a1 + 64) + 4 * v36);
        v67 = v35->ai_protocol;
        v68 = *&v35->ai_family;
        *&v214[0].st_uid = 0uLL;
        v195 = v68;
        *&v214[0].st_mode = v68;
        v214[0].st_dev = 1;
        HIDWORD(v214[0].st_ino) = v67;
        v214[0].st_atimespec = 0uLL;
        *&v201.st_dev = 0;
        v69 = getaddrinfo(v65, 0, v214, &v201);
        if (!v69)
        {
          v81 = *&v201.st_dev;
          if (!*&v201.st_dev)
          {
LABEL_94:
            freeaddrinfo(*&v201.st_dev);
            goto LABEL_95;
          }

          while (2)
          {
            if (v195 == 30)
            {
              LODWORD(v203) = 0;
              memset(v202, 0, sizeof(v202));
              *v202 = *(*(v81 + 32) + 8);
              v82 = v66;
              v83 = 41;
              v84 = 20;
LABEL_90:
              if (setsockopt(v82, v83, 12, v202, v84) != -1)
              {
                goto LABEL_94;
              }

              v85 = *__error();
              _os_assumes_log_ctx();
            }

            else
            {
              if (v195 == 2)
              {
                *v202 = 0;
                *v202 = *(*(v81 + 32) + 4);
                v82 = v66;
                v83 = 0;
                v84 = 8;
                goto LABEL_90;
              }

              sub_10001CBBC(a1, 3, "Unknown family encountered during multicast group bind: %d", v70, v71, v72, v73, v74, v195);
            }

            v81 = *(v81 + 40);
            if (!v81)
            {
              goto LABEL_94;
            }

            continue;
          }
        }

        v75 = v69;
        ai_socktype = gai_strerror(v69);
        sub_10001CBBC(a1, 3, "getaddrinfo(3): %d: %s", v76, v77, v78, v79, v80, v75);
        sub_10001F0D8(v75);
      }

LABEL_95:
      if ((v35->ai_socktype | 4) != 5 || (v86 = listen(*(*(a1 + 64) + 4 * v36), -1)) == 0)
      {
LABEL_99:
        v87 = *(*(a1 + 64) + 4 * v36);
        v88 = sub_100024564(*(a1 + 56));
        if (*v88 == 47)
        {
          v89 = 0;
        }

        else
        {
          v91 = getenv(v37);
          if (!v91)
          {
            sub_10001CBBC(a1, 3, "No PATH environment variable set. The application firewall will not work with this service.", v92, v93, v94, v95, v96, v190);
            goto LABEL_121;
          }

          v89 = sub_1000166EC(v91);
          __stringp = v89;
          v213 = 0u;
          v212 = 0u;
          v211 = 0u;
          v210 = 0u;
          v209 = 0u;
          v208 = 0u;
          v207 = 0u;
          v206 = 0u;
          v205 = 0u;
          v204 = 0u;
          v203 = 0u;
          *v202 = 0u;
          v97 = strsep(&__stringp, ":");
          if (v97)
          {
            v103 = 0;
            while (v103 != 24)
            {
              v104 = v103 + 1;
              *&v202[8 * v103] = v97;
              v97 = strsep(&__stringp, ":");
              v103 = v104;
              if (!v97)
              {
                goto LABEL_113;
              }
            }

            sub_10001CBBC(a1, 4, "PATH contains lots of paths. Some will be skipped.", v98, v99, v100, v101, v102, v190);
            v104 = 24;
LABEL_113:
            v105 = v37;
            v106 = 0;
            v107 = 8 * v104;
            while (1)
            {
              bzero(v214, 0x400uLL);
              snprintf(v214, 0x400uLL, "%s/%s", *&v202[v106], v88);
              memset(&v201, 0, sizeof(v201));
              if (!stat(v214, &v201))
              {
                break;
              }

              v106 += 8;
              if (v107 == v106)
              {
                goto LABEL_118;
              }
            }

            free(v89);
            v88 = sub_1000166EC(v214);
            v89 = v88;
LABEL_118:
            v37 = v105;
            if (!v88)
            {
              sub_10001CBBC(a1, 3, "Socket's service points to a non-existent executable. The application firewall will not work with this service.", v108, v109, v110, v111, v112, v191);
LABEL_120:
              free(v89);
LABEL_121:
              if (fcntl(*(*(a1 + 64) + 4 * v36), 4, 4, ai_socktype, ai_protocol, v194) == -1)
              {
                sub_10005455C();
              }

              goto LABEL_123;
            }
          }
        }

        v90 = strlen(v88);
        if (setsockopt(v87, 0xFFFF, 4229, v88, v90 + 1) == -1 && *__error() != 42 && *__error())
        {
          _os_assumes_log_ctx();
        }

        goto LABEL_120;
      }

      if (v86 == -1)
      {
LABEL_98:
        sub_100054DC0();
      }

LABEL_123:
      ++v36;
      v35 = v35->ai_next;
      if (!v35)
      {
        v119 = v198;
LABEL_127:
        freeaddrinfo(v119);
        *(a1 + 208) = 0;
        goto LABEL_128;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10001E554(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    return 0;
  }

  result = *(a1 + 144);
  *a2 = v2;
  return result;
}

void sub_10001E570(uint64_t a1)
{
  v1 = *(a1 + 212);
  if ((v1 & 0x100) != 0)
  {
    sub_1000441E0("attempt to watch socket that is already watched");
  }

  if ((v1 & 0x80) != 0)
  {
    sub_1000441E0("attempt to watch canceled socket");
  }

  if (*(a1 + 80))
  {
    sub_100054404();
  }

  v3 = *(a1 + 88);
  if (v3 >> 61)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 80) = sub_100014514(8 * v3, 0x5CF470B0uLL);
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(*(a1 + 64) + 4 * v5);
        if (v6 != -1)
        {
          break;
        }

LABEL_15:
        if (++v5 >= v4)
        {
          goto LABEL_16;
        }
      }

      v7 = dup(*(*(a1 + 64) + 4 * v5));
      if (v7 == -1)
      {
        sub_10005455C();
      }

      else
      {
        v13 = v7;
        if ((v7 & 0x80000000) == 0)
        {
          v14 = sub_1000157D8();
          v15 = dispatch_source_create(&_dispatch_source_type_read, v13, 0, v14);
          dispatch_set_context(v15, a1);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = sub_10001F19C;
          handler[3] = &unk_100078C20;
          handler[4] = v15;
          v17 = v6;
          dispatch_source_set_event_handler(v15, handler);
          dispatch_source_set_mandatory_cancel_handler();
          dispatch_activate(v15);
          if (v15)
          {
            goto LABEL_14;
          }
        }
      }

      sub_10001CBBC(a1, 4, "Unable to monitor socket #%zu", v8, v9, v10, v11, v12, v5);
      v15 = 0;
LABEL_14:
      v4 = *(a1 + 88);
      *(*(a1 + 80) + 8 * v5) = v15;
      goto LABEL_15;
    }

LABEL_16:
    *(a1 + 212) |= 0x100u;
  }
}

void sub_10001E76C(uint64_t a1)
{
  v1 = *(a1 + 212);
  if ((v1 & 0x100) == 0)
  {
    sub_1000441E0("attempt to ignore socket that is already ignored");
  }

  if ((v1 & 0x80) != 0)
  {
    sub_1000441E0("attempt to ignore canceled socket");
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    sub_100054404();
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 80) + 8 * i);
      if (*(*(a1 + 64) + 4 * i) == -1)
      {
        if (v6)
        {
          sub_100054404();
        }
      }

      else if (v6)
      {
        dispatch_source_cancel(v6);
        v4 = *(a1 + 88);
        *(*(a1 + 80) + 8 * i) = 0;
      }
    }

    v3 = *(a1 + 80);
  }

  free(v3);
  *(a1 + 80) = 0;
  *(a1 + 212) &= ~0x100u;
}

uint64_t sub_10001E820(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 212);
  if (v6)
  {
    return 37;
  }

  if (!*(a1 + 136) && a3 && *(a1 + 144))
  {
    v16 = (v6 & 2) != 0 ? "network-inbound" : "network-outbound";
    if (!sub_10001A64C(a3, v16, 4) && !sub_100026F1C(a2))
    {
      return 159;
    }
  }

  *a4 = *(a1 + 64);
  v12 = *(a1 + 88);
  *a6 = v12;
  if (a5)
  {
    *a5 = *(a1 + 72);
  }

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 64) + 4 * v13);
      if (v14 != -1 && fcntl(v14, 4, 0) == -1)
      {
        sub_10005455C();
      }

      ++v13;
    }

    while (v13 < *(a1 + 88));
  }

  result = 0;
  *(a1 + 212) |= 1u;
  return result;
}

uint64_t sub_10001E940(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 64);
  *a3 = *(result + 88);
  return result;
}

uint64_t sub_10001E95C(uint64_t result)
{
  *(result + 212) &= ~1u;
  v1 = *(result + 88);
  if (v1)
  {
    v2 = result;
    for (i = 0; i < v1; ++i)
    {
      result = *(v2[8] + 4 * i);
      if (result != -1)
      {
        result = fcntl(result, 4, 4);
        if (result == -1)
        {
          result = sub_10005455C();
        }

        *(v2[9] + i) = 0;
        v1 = v2[11];
      }
    }
  }

  return result;
}

void sub_10001E9F4(uint64_t a1)
{
  v2 = *(a1 + 212);
  if ((v2 & 0x100) != 0)
  {
    sub_10001E76C(a1);
    v2 = *(a1 + 212);
  }

  *(a1 + 212) = v2 | 0x80;
}

uint64_t sub_10001EA30(void *a1, unsigned int **a2, void *a3)
{
  v3 = a1[11];
  if (v3 >> 62)
  {
    __break(1u);
  }

  v7 = sub_100014514(4 * v3, 0x459FF4ADuLL);
  v8 = a1[11];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = a1[8];
      if (*(v11 + 4 * v10) != -1)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0;
        v27 = 0u;
        v25 = 128;
        v12 = accept(*(v11 + 4 * v10), &v26, &v25);
        if (v12 == -1)
        {
          v14 = __error();
          v15 = *v14;
          if (*(a1[9] + v10) == 1)
          {
            v16 = *v14;
            xpc_strerror();
            sub_10001CBBC(a1, 3, "Got a socket event but accept() failed with errno %d - %s", v17, v18, v19, v20, v21, v15);
          }

          if (v15 != 35)
          {
            if (v9)
            {
              v23 = v7;
              do
              {
                v24 = *v23++;
                sub_1000413F8(v24);
                --v9;
              }

              while (v9);
            }

            free(v7);
            return v15;
          }
        }

        else
        {
          v13 = v12;
          if (fcntl(v12, 4, 0) == -1)
          {
            sub_10005455C();
          }

          v7[v9++] = v13;
        }

        *(a1[9] + v10) = 0;
        v8 = a1[11];
      }

      if (++v10 >= v8)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = 0;
LABEL_16:
  v15 = 0;
  *a2 = v7;
  *a3 = v9;
  return v15;
}

uint64_t sub_10001EBE8(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(a2, a3, "%s = {", a4, a5, a6, a7, a8, a1 + 216);
  v16 = *(a1 + 212);
  if ((v16 & 4) == 0)
  {
    v17 = "(animating)";
    goto LABEL_65;
  }

  if ((v16 & 0x40) != 0)
  {
    v17 = "(system logger socket)";
    goto LABEL_65;
  }

  v18 = *(a1 + 100) - 1;
  v19 = "(unknown)";
  if (v18 <= 4)
  {
    v19 = off_100078C60[v18];
  }

  sub_100049ECC(a2, a3 + 1, "type = %s", v11, v12, v13, v14, v15, v19);
  if (!*(a1 + 144) && !*(a1 + 136))
  {
    if (*(a1 + 160))
    {
      v83 = *(a1 + 160);
      sub_100049ECC(a2, a3 + 1, "node name = %s", v22, v23, v24, v25, v26);
    }

    if (*(a1 + 168))
    {
      v83 = *(a1 + 168);
      sub_100049ECC(a2, a3 + 1, "multicast group = %s", v22, v23, v24, v25, v26);
    }

    if (*(a1 + 176))
    {
      v83 = *(a1 + 176);
      sub_100049ECC(a2, a3 + 1, "service name = %s", v22, v23, v24, v25, v26);
    }

    if (*(a1 + 184))
    {
      v83 = *(a1 + 184);
      sub_100049ECC(a2, a3 + 1, "bound interface = %s", v22, v23, v24, v25, v26);
    }

    v27 = *(a1 + 192);
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = "ipv4";
        goto LABEL_33;
      }

      if (v27 == 30)
      {
        v28 = "ipv6";
        goto LABEL_33;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      if (v27 == 1)
      {
        v28 = "unix";
LABEL_33:
        sub_100049ECC(a2, a3 + 1, "family = %s", v22, v23, v24, v25, v26, v28);
LABEL_34:
        v29 = *(a1 + 196);
        if (v29)
        {
          v30 = "udp";
          if (v29 != 17)
          {
            v30 = "(unknown)";
          }

          if (v29 == 6)
          {
            v31 = "tcp";
          }

          else
          {
            v31 = v30;
          }

          sub_100049ECC(a2, a3 + 1, "protocol = %s", v22, v23, v24, v25, v26, v31);
        }

        goto LABEL_41;
      }
    }

    v28 = "(unknown)";
    goto LABEL_33;
  }

  sub_100049ECC(a2, a3 + 1, "path = %s", v22, v23, v24, v25, v26, *(a1 + 144));
  if ((*(a1 + 212) & 8) != 0)
  {
    LOWORD(v83) = *(a1 + 152);
    sub_100049ECC(a2, a3 + 1, "mode = %o", v22, v23, v24, v25, v26);
  }

  if (*(a1 + 136))
  {
    v83 = *(a1 + 136);
    sub_100049ECC(a2, a3 + 1, "secure key = %s", v22, v23, v24, v25, v26);
  }

  if (*(a1 + 104))
  {
    LODWORD(v83) = *(a1 + 104);
    sub_100049ECC(a2, a3 + 1, "owner uid = %u", v22, v23, v24, v25, v26);
    if (*(a1 + 104))
    {
      sub_100049ECC(a2, a3 + 1, "group id = %u", v22, v23, v24, v25, v26, *(a1 + 108));
    }
  }

LABEL_41:
  if (*(a1 + 208))
  {
    LODWORD(v83) = *(a1 + 208);
    sub_100049ECC(a2, a3 + 1, "error = %d", v22, v23, v24, v25, v26);
  }

  sub_100049F4C(a2, v20, v21, v22, v23, v24, v25, v26, v83);
  sub_100049ECC(a2, a3 + 1, "sockets = {", v32, v33, v34, v35, v36);
  if (*(a1 + 88))
  {
    v42 = 0;
    do
    {
      if (*(*(a1 + 72) + v42))
      {
        v43 = &unk_10005CEA2;
      }

      else
      {
        v43 = "no ";
      }

      sub_100049ECC(a2, a3 + 2, "%d (%sbytes to read)", v37, v38, v39, v40, v41, *(*(a1 + 64) + 4 * v42++), v43);
    }

    while (v42 < *(a1 + 88));
  }

  sub_100049ECC(a2, a3 + 1, "}", v37, v38, v39, v40, v41);
  sub_100049F4C(a2, v44, v45, v46, v47, v48, v49, v50, v84);
  if (*(a1 + 212))
  {
    v56 = "1";
  }

  else
  {
    v56 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "active = %s", v51, v52, v53, v54, v55, v56);
  if ((*(a1 + 212) & 2) != 0)
  {
    v62 = "1";
  }

  else
  {
    v62 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "passive = %s", v57, v58, v59, v60, v61, v62);
  if ((*(a1 + 212) & 0x10) != 0)
  {
    v68 = "1";
  }

  else
  {
    v68 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "bonjour = %s", v63, v64, v65, v66, v67, v68);
  if ((*(a1 + 212) & 0x20) != 0)
  {
    v74 = "1";
  }

  else
  {
    v74 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "ipv4v6 = %s", v69, v70, v71, v72, v73, v74);
  if ((*(a1 + 212) & 0x200) != 0)
  {
    v75 = "1";
  }

  else
  {
    v75 = "0";
  }

  v82 = v75;
  v17 = "receive_packet_info = %s";
LABEL_65:
  sub_100049ECC(a2, a3 + 1, v17, v11, v12, v13, v14, v15, v82);

  return sub_100049ECC(a2, a3, "}", v76, v77, v78, v79, v80);
}

void sub_10001F01C(unsigned int *a1)
{
  v2 = *a1;
  (*(*a1 + 120))(*a1, a1[2], *(*a1 + 128));
  sub_10001B690(v2);

  free(a1);
}

void sub_10001F078(uint64_t a1)
{
  if ((*(a1 + 212) & 0x80) == 0)
  {
    sub_10003FEAC(*(a1 + 56), "com.apple.bonjour.registration", (a1 + 216), *(a1 + 200));
  }

  sub_10001B690(a1);
}

uint64_t sub_10001F0D8(int a1)
{
  switch(a1)
  {
    case 1:
    case 5:
    case 9:
    case 10:
      result = 45;
      break;
    case 2:
      result = 35;
      break;
    case 3:
    case 12:
    case 13:
      result = 22;
      break;
    case 4:
      result = 153;
      break;
    case 6:
      result = 12;
      break;
    case 7:
    case 8:
      result = 3;
      break;
    case 11:
      result = *__error();
      break;
    case 14:
      result = 34;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t sub_10001F19C(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  v3 = context[11];
  if (v3)
  {
    v4 = 0;
    while (*(context[8] + 4 * v4) != *(a1 + 40))
    {
      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    *(context[9] + v4) = 1;
  }

LABEL_7:
  v6 = context[15];
  v5 = context[16];

  return v6(context, 2, v5);
}

void sub_10001F218(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));
  sub_1000413F8(handle);
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

uint64_t sub_10001F258(int *a1)
{
  v2 = *a1;

  return _os_assumes_log_ctx();
}

void sub_10001F280()
{
  qword_10007E028 = 0;
  byte_10007E030 = 0;
  qword_10007E038 = 0;
  qword_10007E040 = 0;
  qword_10007E048 = 0;
}

BOOL sub_10001F2AC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10001F33C();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10001F370;
    v5[3] = &unk_100078C90;
    v5[4] = a1;
    sub_10001C6B0(v2, v5);
  }

  v3 = sub_10001F33C();
  return sub_10001C734(v3) != 0;
}

void *sub_10001F33C()
{
  sub_100015808();
  result = qword_10007E040;
  if (!qword_10007E040)
  {
    result = sub_10001C750();
    qword_10007E040 = result;
  }

  return result;
}

uint64_t sub_10001F384(void *a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "cid");
  if (!uint64)
  {
    return 22;
  }

  v5 = uint64;
  v6 = sub_10001F33C();
  v7 = sub_10001C668(v6, v5);
  if (v7)
  {
    v8 = v7;
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v10 = reply;
      sub_10001F408(reply, v8);
      result = 0;
      *a2 = v10;
      return result;
    }

    return 22;
  }

  return 3;
}

void sub_10001F408(void *a1, uint64_t a2)
{
  v4 = sub_100010B1C(a2);
  xpc_dictionary_set_uint64(a1, "cid", v4);
  v5 = sub_1000130C0(a2);
  v6 = sub_1000130C8(a2);
  if (v5)
  {
    xpc_dictionary_set_string(a1, "name", v5);
  }

  if (v6)
  {
    xpc_dictionary_set_string(a1, "bundle_identifier", v6);
  }

  v7 = sub_10000ED30(a2);
  if (v7)
  {
    xpc_dictionary_set_data(a1, "resource-usage-blob", v7, 0x168uLL);
  }

  v8 = sub_1000130F8(a2);

  xpc_dictionary_set_int64(a1, "leader-pid", v8);
}

uint64_t sub_10001F4E4(void *a1, void *a2)
{
  byte_10007E030 = 1;
  v4 = qword_10007E048;
  if (!qword_10007E048)
  {
    v4 = sub_100010918();
    qword_10007E048 = v4;
  }

  if (sub_100010B1C(v4))
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v6 = reply;
      v7 = qword_10007E048;
      if (!qword_10007E048)
      {
        v7 = sub_100010918();
        qword_10007E048 = v7;
      }

      v8 = sub_100010AF4(v7, 0);
      sub_1000130D8(v8, 2);
      sub_10001F408(v6, v8);
      v9 = qword_10007E048;
      if (!qword_10007E048)
      {
        v9 = sub_100010918();
        qword_10007E048 = v9;
      }

      sub_100010A70(v9, 0);
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 22;
    }
  }

  else if (qword_10007E028)
  {
    return 37;
  }

  else
  {
    v11 = xpc_dictionary_create_reply(a1);
    result = 0;
    qword_10007E028 = v11;
  }

  return result;
}

uint64_t sub_10001F5CC(uint64_t a1)
{
  v2 = sub_10001F33C();
  v3 = sub_10001C668(v2, a1);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  sub_1000130D8(v3, 1);
  if (!sub_1000130D0(v4))
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    if (coalition_info_resource_usage() == -1)
    {
      sub_10005455C();
    }

    sub_100012F44(v4, v11);
    v6 = qword_10007E028;
    if (qword_10007E028)
    {
      qword_10007E028 = 0;
      sub_10001F408(v6, v4);
      v7 = xpc_pipe_routine_reply();
      xpc_release(v6);
      if (!v7)
      {
        goto LABEL_11;
      }

      if (v7 != 32)
      {
        _os_assumes_log();
        goto LABEL_11;
      }
    }

    sub_10001F964(v4);
    goto LABEL_11;
  }

  sub_100012F44(v4, 0);
LABEL_11:
  if (byte_10007F103 == 1)
  {
    v8 = sub_1000130C0(v4);
    sub_10004749C(65541, "coalition_reap(%llu) [%s]", a1, v8);
  }

  sub_10000E878();
  v9 = sub_10001F33C();
  v10 = sub_100010B1C(v4);
  sub_10001C5A0(v9, v10, 0);
  return 0;
}