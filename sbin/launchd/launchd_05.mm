uint64_t sub_100049DE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    do
    {
      result = sub_100049E30(v9, "\t", a3, a4, a5, a6, a7, a8, v10);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100049E5C(FILE *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a2)
  {
    v10 = a2;
    do
    {
      sub_100049E30(a1, "\t", a3, a4, a5, a6, a7, a8, v12);
      --v10;
    }

    while (v10);
  }

  return vfprintf(a1, a3, va);
}

uint64_t sub_100049ECC(FILE *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a2)
  {
    v10 = a2;
    do
    {
      sub_100049E30(a1, "\t", a3, a4, a5, a6, a7, a8, v18);
      --v10;
    }

    while (v10);
  }

  vfprintf(a1, a3, va);
  return sub_100049E30(a1, "\n", v11, v12, v13, v14, v15, v16, v18);
}

char *sub_100049F58(uint64_t a1, pid_t pid, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  flags = 0;
  if (j__proc_get_dirty(pid, &flags))
  {
    _os_assumes_log();
  }

  *(a1 + 48) = *(a1 + 48) & 0xFC | flags & 2 | ((flags & 4) != 0);
  if (j__proc_pidinfo(pid, 25, 1uLL, (a1 + 4), 24) != 24 && *__error() != 2 && *__error())
  {
    _os_assumes_log();
  }

  if (j__proc_pid_rusage(pid, 6, a3))
  {
    _os_assumes_log();
  }

  *(a1 + 32) = *(a3 + 80);
  v6 = *(a1 + 24);
  if (v6 >= 0x1401)
  {
    sub_1000441E0("retrieved exit reason with invalid reason buffer size");
  }

  if (v6)
  {
    v7 = sub_100014514(0x20uLL, 0x1000040E0EAB150uLL);
    *(v7 + 3) = sub_100014514(v6, 0x1A9BFA44uLL);
    v7[5] = v6;
    if (proc_pidinfo(pid, 24, 1uLL, v7, 32) == 32)
    {
      goto LABEL_16;
    }

    if (*__error())
    {
      _os_assumes_log();
    }

    free(*(v7 + 3));
    free(v7);
  }

  v7 = 0;
LABEL_16:
  if (sub_100046B18(pid, (a1 + 28), 0, 0))
  {
    _os_assumes_log();
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  *a1 = v8;
  if (!v7)
  {
LABEL_58:
    v36 = sub_10004A4D0(a1);
    if (!v36)
    {
      v36 = "(unknown reason)";
    }

    v32 = sub_1000166EC(v36);
    goto LABEL_61;
  }

  v9 = sub_10004A4D0(a1);
  v10 = *(v7 + 3);
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v7[5];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v10 + v11;
  v13 = v10 + 4;
  if (v10 + 4 <= (v10 + v11))
  {
    v14 = *(v7 + 3);
    do
    {
      v40 = v13 + *(v14 + 4);
      if (v40 > v12 || *v14 == -242132755)
      {
        break;
      }

      if (*v14 == 4098)
      {
        goto LABEL_23;
      }

      v13 = (v40 + 16);
      v14 = v40;
    }

    while (v40 + 16 <= v12);
  }

  v14 = 0;
  v12 = 0;
LABEL_23:
  if (v14 + 16 > v12 || (v15 = *(v14 + 4), v14 + 16 + v15 > v12))
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v41 = *v14;
  if ((*v14 & 0xFFFFFFF0) == 0x20)
  {
    v41 = 17;
  }

  if (v41 <= 2309)
  {
    if (v41 == 17 || v41 == 19)
    {
      goto LABEL_92;
    }

    goto LABEL_89;
  }

  if (v41 != 2312)
  {
    if (v41 == 2310 && v15 == 112 && (*(v14 + 8) & 0x8F) == 0)
    {
      LODWORD(v15) = 104;
      goto LABEL_92;
    }

LABEL_89:
    v43 = *(v14 + 8) & 0xF;
    v26 = v15 >= v43;
    v44 = v15 - v43;
    if (v26)
    {
      LODWORD(v15) = v44;
    }

    else
    {
      LODWORD(v15) = 0;
    }

    goto LABEL_92;
  }

  if (v15 != 32 || (*(v14 + 8) & 0x8F) != 0)
  {
    goto LABEL_89;
  }

  LODWORD(v15) = 24;
LABEL_92:
  v45 = (v14 + 16);
  if (strnlen((v14 + 16), v15) >= v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v45;
  }

LABEL_26:
  v17 = 0;
  v48[0] = 0;
  if (*v7 == 2)
  {
    v18 = v10 + v7[5];
    v19 = v10 + 4;
    if ((v10 + 4) > v18)
    {
      goto LABEL_28;
    }

    v46 = v9;
    v20 = 0;
    v21 = -1;
    do
    {
      v22 = v10[1];
      v23 = (v19 + v22);
      if (v19 + v22 > v18)
      {
        break;
      }

      v24 = *v10;
      if (*v10 == -242132755)
      {
        break;
      }

      if ((v24 & 0xFFFFFFF0) == 0x20)
      {
        v24 = 17;
      }

      if (v24 == 54)
      {
        v29 = v10[2] & 0xF;
        v26 = v22 >= v29;
        v30 = v22 - v29;
        if (!v26)
        {
          v30 = 0;
        }

        if (v30 != 4)
        {
          sub_1000441E0("PID size for exit reason mismatch");
        }

        v21 = v10[4];
      }

      else if (v24 == 55)
      {
        v25 = v10[2] & 0xF;
        v26 = v22 >= v25;
        v27 = v22 - v25;
        v28 = v26 ? v27 : 0;
        v20 = v10 + 4;
        if (strnlen(v10 + 16, v28) >= v28)
        {
          sub_1000441E0("kernel returned invalid sender procname for signal");
        }
      }

      v19 = v23 + 4;
      v10 = v23;
    }

    while ((v23 + 4) <= v18);
    v9 = v46;
    if (!v20 || v21 == -1)
    {
LABEL_28:
      asprintf(v48, "(signal info malformed)");
    }

    else
    {
      asprintf(v48, "sent by %s[%d]");
    }

    v17 = v48[0];
  }

  v31 = 0;
  v32 = 0;
  v48[0] = v9;
  v48[1] = v16;
  v48[2] = v17;
  do
  {
    v33 = v48[v31];
    if (v33)
    {
      if (v32)
      {
        v34 = sub_1000168E0("%s | %s", v32, v33);
      }

      else
      {
        v34 = sub_1000166EC(v33);
      }

      v35 = v34;
      free(v32);
      v32 = v35;
    }

    ++v31;
  }

  while (v31 != 3);
  free(v17);
  free(*(v7 + 3));
  free(v7);
  if (!v32)
  {
    goto LABEL_58;
  }

LABEL_61:
  v37 = *a1;
  if (*a1 == 3)
  {
    if (*(a1 + 4) || (*(a1 + 28) & 0x7F) != 0)
    {
      return v32;
    }

    free(v32);
    v38 = sub_10004A5FC(a1);
    v32 = sub_1000168E0("exit(%d)", v38);
    v37 = *a1;
  }

  if (!v37)
  {
    sub_100054404();
  }

  return v32;
}

const char *sub_10004A4D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 4);
  if (*a1 == 3 && v2 == 0)
  {
    v7 = *(a1 + 28) & 0x7F;
    if (!v7)
    {
      return "exit()";
    }
  }

  else
  {
    if (v2 > 1)
    {
      if (v2 != 2)
      {
        if (v2 == 7)
        {
          v10 = *(a1 + 8);
          result = xpc_exit_reason_get_label();
          if (result)
          {
            return result;
          }

          goto LABEL_24;
        }

        if (v2 == 9)
        {
          v4 = &unk_100079DB0;
          v5 = *(a1 + 8);
          v6 = 1;
          goto LABEL_17;
        }

        goto LABEL_24;
      }

      goto LABEL_12;
    }

    if (v2)
    {
      goto LABEL_15;
    }

    if (*a1 != 3)
    {
      goto LABEL_24;
    }

    v7 = *(a1 + 28) & 0x7F;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  if (v7 == 127)
  {
    goto LABEL_24;
  }

LABEL_12:
  v8 = sub_10004A6EC(a1);
  result = sub_100046574(v8);
  if (result)
  {
    return result;
  }

LABEL_15:
  if (v2 == 1)
  {
    v4 = &unk_100079DC0;
    LODWORD(v5) = v1;
    v6 = 6;
LABEL_17:
    result = sub_100016C08(v5, v4, v6);
    if (result)
    {
      return result;
    }
  }

LABEL_24:

  return sub_100046584(v2);
}

uint64_t sub_10004A5FC(_DWORD *a1)
{
  if (*a1 != 3 || a1[1] || (v1 = a1[7], (v1 & 0x7F) != 0))
  {
    sub_100054404();
  }

  return BYTE1(v1);
}

double sub_10004A648(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 1;
  return result;
}

uint64_t sub_10004A664(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*(a1 + 16) >> 6) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10004A6A4(_DWORD *a1)
{
  v1 = a1[1];
  if (v1 == 2)
  {
    return 1;
  }

  if (v1 || *a1 != 3)
  {
    return 0;
  }

  if ((a1[7] & 0x7F) != 0)
  {
    return (a1[7] & 0x7F) != 127;
  }

  return 0;
}

uint64_t sub_10004A6EC(_DWORD *a1)
{
  v1 = a1[1];
  if (v1 == 2)
  {
    return a1[2];
  }

  if (v1 || *a1 != 3 || ((result = a1[7] & 0x7F, result != 127) ? (v3 = result == 0) : (v3 = 1), v3))
  {
    sub_100054404();
  }

  return result;
}

uint64_t sub_10004A738(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 != 2)
  {
    if (v2)
    {
LABEL_9:
      if (v2 == 30)
      {
        v4 = 0;
      }

      else
      {
        v4 = (*(a1 + 16) & 0x200) == 0;
        *(a1 + 16);
      }

      if (!v4)
      {
        return 1;
      }

      goto LABEL_14;
    }

    if (*a1 != 3 || (*(a1 + 28) & 0x7F) == 0 || (*(a1 + 28) & 0x7F) == 0x7F)
    {
      goto LABEL_14;
    }
  }

  v3 = sub_10004A6EC(a1) - 4;
  if (v3 < 9 && ((0x1D7u >> v3) & 1) != 0)
  {
    return 1;
  }

  v2 = *(a1 + 4);
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_14:

  return sub_10004A7E8(a1);
}

uint64_t sub_10004A7E8(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 == 37)
  {
    return 1;
  }

  if (v1 != 23)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 >> 61 != 5)
  {
    return 0;
  }

  v3 = HIDWORD(v2) & 0x1FFFFFFF;
  v4 = v3 - 200;
  v5 = (v3 - 100) < 2;
  return v4 < 3 || v5;
}

BOOL sub_10004A85C(uint64_t a1)
{
  if (*(a1 + 4) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  return v1 == 2 || v1 == 7;
}

BOOL sub_10004A884(uint64_t a1)
{
  if (*(a1 + 4) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  return v1 == 9 || v1 == 17;
}

__n128 sub_10004A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = sub_10001318C(a1, a2, a5);
  if (v7)
  {
    v9 = v7;
    v10 = sub_10001BEE8(0);
    result = *a3;
    v11 = *(a3 + 16);
    v10[1] = *a3;
    v10[2] = v11;
    *(v10 + 6) = a4;
    *(v10 + 7) = v9;
  }

  return result;
}

uint64_t *sub_10004A9D8(uint64_t a1, int a2)
{
  if (dword_10007EA54)
  {
    return 5;
  }

  result = sub_10004AA24(a2, 1);
  if (result)
  {
    dispatch_source_merge_data(result[3], 0x45uLL);
    return 0;
  }

  return result;
}

uint64_t *sub_10004AA24(int a1, int a2)
{
  for (result = qword_10007EAC0[sub_10004BB90(a1)]; result; result = *result)
  {
    if (*(result + 40) == a2 && *(result + 4) == a1)
    {
      break;
    }
  }

  return result;
}

double sub_10004AAF4()
{
  qword_10007EA60 = 0;
  result = 0.0;
  xmmword_10007EA40 = 0u;
  unk_10007EA50 = 0u;
  return result;
}

_DWORD *sub_10004AB38(int a1, uint64_t a2)
{
  if (qword_10007EA70 != -1)
  {
    sub_1000551C8();
  }

  v4 = qword_10007EA78;
  if (qword_10007EA78 == qword_10007DC00)
  {
    qword_10007EA80 = sub_100014584(qword_10007EA80, 8 * qword_10007EA78, 16 * qword_10007EA78, 0xEBD50C58uLL);
    result = sub_100014584(qword_10007EA88, 4 * qword_10007DC00, 8 * qword_10007DC00, 0x2D7C4933uLL);
    qword_10007EA88 = result;
    qword_10007DC00 *= 2;
    v4 = qword_10007EA78;
  }

  else
  {
    result = qword_10007EA88;
  }

  *(qword_10007EA80 + 8 * v4) = a2;
  result[v4] = a1;
  qword_10007EA78 = v4 + 1;
  return result;
}

void *sub_10004AC10()
{
  result = sub_10004AD94(dword_10007F068, 0);
  if (qword_10007DC00 >> 61 || (result = sub_100014514(8 * qword_10007DC00, 0xD6EDBA93uLL), qword_10007EA80 = result, qword_10007DC00 >> 62) || (result = sub_100014514(4 * qword_10007DC00, 0x410E199DuLL), qword_10007EA88 = result, qword_10007DC08 >> 61))
  {
    __break(1u);
  }

  else
  {
    result = sub_100014514(8 * qword_10007DC08, 0x36986CD8uLL);
    qword_10007EA98 = result;
    *result = sub_10004F4D4;
    qword_10007EA90 = 1;
    qword_10007EAA0 = 40;
  }

  return result;
}

void *sub_10004ACDC(uint64_t a1, unint64_t a2)
{
  if (qword_10007EA70 != -1)
  {
    sub_1000551C8();
  }

  v4 = qword_10007EA90;
  result = qword_10007EA98;
  if (qword_10007EA90 == qword_10007DC08)
  {
    result = sub_100014584(qword_10007EA98, 8 * qword_10007EA90, 16 * qword_10007EA90, 0x3847F8D0uLL);
    qword_10007EA98 = result;
    qword_10007DC08 *= 2;
    v4 = qword_10007EA90;
  }

  result[v4] = a1;
  qword_10007EA90 = v4 + 1;
  if (qword_10007EAA0 < a2)
  {
    qword_10007EAA0 = a2;
  }

  return result;
}

uint64_t sub_10004AD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014514(0x30uLL, 0x10A00408A0210BAuLL);
  v4[4] = a1;
  *(v4 + 40) = 0;
  *(v4 + 4) = a2;
  sub_1000157D8();
  f = dispatch_mach_create_f();
  *(v4 + 3) = f;
  if (dword_10007F068 == a1)
  {
    qword_10007EC68 = f;
  }

  if (sub_10000B744(a1))
  {
    _os_assumes_log();
  }

  sub_10004B1E0(v4);
  v6 = *(v4 + 3);

  return _dispatch_mach_connect(v6, a1, 0, 0);
}

uint64_t *sub_10004AE6C(int a1)
{
  v1 = sub_10004AA24(a1, 0);
  if (!v1)
  {
    sub_1000441E0("attempt to remove non-existent server port");
  }

  v2 = v1;
  v3 = v1[3];
  dispatch_mach_cancel();

  return sub_10004B0E8(v2);
}

uint64_t sub_10004AEC0(mach_port_name_t a1, int a2, uint64_t a3)
{
  if (a2 != 69)
  {
    sub_100054404();
  }

  v5 = sub_100014514(0x30uLL, 0x10A00408A0210BAuLL);
  v5[4] = a1;
  *(v5 + 40) = 1;
  v6 = sub_1000157D8();
  v7 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v6);
  dispatch_set_context(v7, v5);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10004B074;
  handler[3] = &unk_100079E28;
  handler[4] = a3;
  handler[5] = v7;
  dispatch_source_set_event_handler(v7, handler);
  v11 = _NSConcreteStackBlock;
  v12 = 0x40000000;
  v13 = sub_10004B13C;
  v14 = &unk_100079E48;
  v15 = v7;
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_activate(v7);
  if (sub_10000B6E8(a1))
  {
    _os_assumes_log();
  }

  name = 0;
  v8 = sub_10000B7B0(a1, dword_10007F068, &name);
  if (name)
  {
    sub_10004749C(4, "Attempt to share port-destroyed. Ignoring.");
    if (sub_10000B760(name))
    {
      _os_assumes_log();
    }
  }

  *(v5 + 3) = v7;
  sub_10004B1E0(v5);
  return v8;
}

uint64_t *sub_10004B074(uint64_t a1)
{
  v2 = *(a1 + 40);
  context = dispatch_get_context(v2);
  if (v2 != context[3])
  {
    sub_100054404();
  }

  v4 = context;
  (*(*(a1 + 32) + 16))();
  dispatch_source_cancel(*(a1 + 40));

  return sub_10004B0E8(v4);
}

uint64_t *sub_10004B0E8(uint64_t *result)
{
  v3 = *result;
  if (*result == -1)
  {
    v4 = result[1];
    if (v4 == -1)
    {
      sub_1000441E0("multiple removals of port entry", v1, v2);
    }

    goto LABEL_5;
  }

  if (v3)
  {
    v4 = result[1];
LABEL_5:
    *(v3 + 8) = v4;
  }

  *result[1] = v3;
  *result = -1;
  result[1] = -1;
  return result;
}

void sub_10004B13C(uint64_t a1)
{
  v2 = *(a1 + 32);
  context = dispatch_get_context(v2);
  if (v2 != *(context + 3))
  {
    sub_100054404();
  }

  v4 = context;
  v5 = *(context + 41);
  v6 = *(context + 4);
  if (v5)
  {
    sub_10004749C(4, "Abandoning send right to 0x%x (canceled notification)", v6);
  }

  else if (sub_10000B760(v6))
  {
    _os_assumes_log();
  }

  dispatch_release(*(a1 + 32));

  free(v4);
}

unint64_t sub_10004B1E0(uint64_t a1)
{
  v5 = *(a1 + 16);
  result = sub_100016BA4(&v5, 4);
  v3 = &qword_10007EAC0[result % 0x35];
  v4 = *v3;
  *a1 = *v3;
  if (v4)
  {
    *(v4 + 8) = a1;
  }

  *v3 = a1;
  *(a1 + 8) = v3;
  return result;
}

uint64_t *sub_10004B268(int a1)
{
  v1 = sub_10004AA24(a1, 1);
  if (!v1)
  {
    sub_1000441E0("attempt to cancel notification on non-existent port entry");
  }

  v2 = v1;
  dispatch_source_cancel(v1[3]);
  *(v2 + 41) |= 1u;

  return sub_10004B0E8(v2);
}

void sub_10004B2C8(unsigned int a1, void *a2)
{
  v3 = sub_10001B5E4(a2, 0, a1);
  sub_10004B334(a2, "dispatching request");
  v4 = sub_1000157D8();

  dispatch_async_f(v4, v3, sub_10004B414);
}

void sub_10004B334(void *a1, const char *a2)
{
  v7 = 0u;
  v8 = 0u;
  if (byte_10007F136 == 1)
  {
    memset(v9, 0, sizeof(v9));
    uint64 = xpc_dictionary_get_uint64(a1, "subsystem");
    v5 = xpc_dictionary_get_uint64(a1, "routine");
    xpc_dictionary_get_audit_token();
    v6 = sub_100045C2C(&v7, v9);
    sub_10004749C(5, "ipc: caller = %s.%d, subsystem = %d, routine = %d, %s", v6, DWORD1(v8), uint64, v5, a2);
  }
}

void sub_10004B414(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = sub_10004AA24(*(a1 + 16), 0);
  if (v4)
  {
    qword_10007EA60 = v4[4];
  }

  sub_10004B334(v2, "processing dispatched request");
  sub_10004B52C(v3, v2);
  qword_10007EA60 = 0;

  sub_10001B6C8(a1);
}

void sub_10004B494(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x800uLL);
  vsnprintf(__str, 0x800uLL, a2, &a9);
  sub_10004B334(a1, __str);
}

void sub_10004B52C(uint64_t a1, void *a2)
{
  if (byte_10007EAB8 == 1)
  {
    sub_1000441E0("attempt to re-enter the server layer");
  }

  v4 = sub_10004AA24(a1, 0);
  if (v4)
  {
    qword_10007EA60 = v4[4];
  }

  value = xpc_dictionary_get_value(a2, "mig-request");
  if (value)
  {
    v6 = value;
    if (xpc_get_type(value) == &_xpc_type_data)
    {
      byte_10007F078 = 1;
      xpc_data_get_bytes_ptr(v6);
      if (xpc_data_get_length(v6) <= 0x17)
      {
        sub_1000551D4();
      }

      v7 = qword_10007EAA0;
      __chkstk_darwin();
      bzero(&v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      bzero(&v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (_xpc_pipe_handle_mig())
      {
        _os_assumes_log();
      }

      byte_10007F078 = 0;
    }
  }

  else
  {
    sub_10004B858(a1, 0, a2);
  }

  qword_10007EA60 = 0;
}

uint64_t sub_10004B6B0(_DWORD *a1, uint64_t a2)
{
  v4 = sub_10000B7E4(a1);
  v5 = *(v4 + 16);
  xmmword_10007EA40 = *v4;
  unk_10007EA50 = v5;
  qword_10007EAA8 = a1;
  qword_10007EAB0 = ((a1[1] + 3) & 0x1FFFFFFFCLL) + 52;
  if (qword_10007EA90)
  {
    v6 = 0;
    while (!(*(qword_10007EA98 + 8 * v6))(a1, a2))
    {
      if (++v6 >= qword_10007EA90)
      {
        goto LABEL_5;
      }
    }

    result = 1;
  }

  else
  {
LABEL_5:
    memset(v10, 0, sizeof(v10));
    v7 = sub_100045C2C(&xmmword_10007EA40, v10);
    sub_10004749C(65540, "%s.%d sent an invalid request: msgh_bits = 0x%x, msgh_size = %u, msgh_remote_port = 0x%x, msgh_local_port = 0x%x, msgh_id = 0x%x", v7, *(v4 + 20), *a1, a1[1], a1[2], a1[3], a1[5]);
    if (byte_10007F0FD == 1)
    {
      sub_10004749C(65541, "Killing sender of bogus IPC message: %s.%d", v7, *(v4 + 20));
      v8 = *(v4 + 20);
      if (sub_1000468E8())
      {
        _os_assumes_log();
      }
    }

    result = 0;
  }

  qword_10007EAA8 = 0;
  qword_10007EAB0 = 0;
  return result;
}

void sub_10004B858(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if (byte_10007EAB8 == 1)
  {
    sub_1000441E0("reentrant call into server layer", a2, xdict);
  }

  v4 = a2;
  byte_10007EAB8 = 1;
  byte_10007EA68 = 0;
  xpc_dictionary_set_value(xdict, "mig-request", 0);
  xdicta = 0;
  v22 = 0u;
  v23 = 0u;
  xpc_dictionary_get_audit_token();
  xmmword_10007EA40 = 0u;
  unk_10007EA50 = 0u;
  if (v4)
  {
    if (v4 <= 0x577)
    {
      v6 = v4 / 0x64u;
      if (((0x861uLL >> v6) & 1) == 0)
      {
        v7 = dword_1000577F8[v6];
        xpc_dictionary_set_uint64(xdict, "subsystem", v7);
        xpc_dictionary_set_uint64(xdict, "routine", v4);
        goto LABEL_9;
      }
    }

LABEL_13:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = sub_100045C2C(&xmmword_10007EA40, &v22);
    sub_10004B334(xdict, "xpc demux failed");
    sub_10004749C(65541, "%s.%d sent an invalid request", v10, dword_10007EA54);
    if (byte_10007F0FD == 1)
    {
      sub_10004749C(65541, "Killing sender of bogus IPC message: %s.%d", v10, dword_10007EA54);
      if (sub_1000468E8())
      {
        _os_assumes_log();
      }
    }

    goto LABEL_16;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "subsystem");
  v7 = uint64;
  if (!uint64)
  {
    goto LABEL_13;
  }

  if (uint64 > 13)
  {
    goto LABEL_13;
  }

  v4 = xpc_dictionary_get_uint64(xdict, "routine");
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!qword_10007EA78)
  {
    goto LABEL_13;
  }

  v9 = 0;
  while (*(qword_10007EA88 + 4 * v9) != v7)
  {
    if (qword_10007EA78 == ++v9)
    {
      goto LABEL_13;
    }
  }

  v11 = (*(qword_10007EA80 + 8 * v9))(a1, v4, xdict, &xdicta);
  if (v11)
  {
    v18 = v11;
    sub_10004B494(xdict, "demux error = %d", v12, v13, v14, v15, v16, v17, v11);
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v20 = reply;
      xpc_dictionary_set_int64(reply, "error", v18);
      xdicta = v20;
    }
  }

  sub_10004B334(xdict, "xpc demux succeeded");
  if (xdicta)
  {
    sub_10004B334(xdict, "sending reply");
    if (byte_10007EA68 == 1)
    {
      xpc_dictionary_set_uint64(xdicta, "req_pid", dword_10007EA54);
      xpc_dictionary_set_uint64(xdicta, "rec_execcnt", dword_10007EA5C);
    }

    if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
    {
      _os_assumes_log();
    }

    xpc_release(xdicta);
  }

LABEL_16:
  byte_10007EAB8 = 0;
}

void sub_10004BBE4(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    dispatch_release(*(a1 + 24));

    free(a1);
  }

  else
  {
    v3 = *(a1 + 16);
    if (a2 == 7)
    {
      msg = dispatch_mach_msg_get_msg();
      v5 = *(msg + 8);
      if (v5 + 1 >= 2)
      {
        sub_100055214(v5);
      }

      v6 = *(msg + 12);
      if ((v6 + 1) >= 2)
      {
        if (v3 != v6)
        {
          sub_1000551EC(v5);
        }

        if (sub_10000B760(v3))
        {
          _os_assumes_log();
        }

        if (sub_10000B774(v3, 0, *(a1 + 32)))
        {
          sub_100054420();
        }
      }
    }

    else if (a2 == 2)
    {
      qword_10007EA60 = *(a1 + 32);
      sub_10004BCD8();
      qword_10007EA60 = 0;
    }
  }
}

void sub_10004BCD8()
{
  v1 = 0;
  dispatch_mach_msg_get_msg();
  v0 = 0;
  sub_1000551D4();
}

void sub_10004BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) != -1 || *(a1 + 24) != -1)
  {
    sub_1000441E0("endpoint deallocation while still in service list");
  }

  if (*(a1 + 32) != -1 || *(a1 + 40) != -1)
  {
    sub_1000441E0("endpoint deallocation while still in domain list");
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    sub_1000441E0("endpoint deallocation while still active");
  }

  if ((v9 & 2) != 0)
  {
    sub_1000441E0("endpoint deallocation while still being watched");
  }

  if ((v9 & 0x20) == 0 && (*(a1 + 88) & 0x20) != 0)
  {
    sub_1000441E0("endpoint deallocation without cancellation");
  }

  if (*(a1 + 104))
  {
    if ((v9 & 0x88) == 0)
    {
      v10 = sub_10004BFA4(a1, 4, a3, a4, a5, a6, a7, a8);
      if (sub_10000B774(v10, 0, *(a1 + 112)))
      {
        _os_assumes_log_ctx();
      }
    }

    v11 = *(a1 + 104);

    xpc_release(v11);
  }
}

uint64_t sub_10004BFA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface");
  }

  result = sub_10004CA20(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {

    return xpc_mach_send_get_right();
  }

  return result;
}

void sub_10004C024(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = sub_10000FC98(0x40uLL);
  v20 = *(a1 + 96);
  if (v20)
  {
    v21 = sub_100022158(v20, 1);
    sub_10000FD40(v19, "%s - ", v22, v23, v24, v25, v26, v27, v21);
    free(v21);
  }

  sub_10000FD40(v19, "%s", v13, v14, v15, v16, v17, v18, a1 - 88);
  v28 = sub_10000FCFC(v19);
  sub_10000FD04(v19);
  sub_1000474DC(v28, a2, a3, &a9, v9);
  free(v28);
}

__n128 sub_10004C0FC(unint64_t a1, const char *a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_10001BCAC(a2);
  v7[6].n128_u64[0] = a1;
  v7[9].n128_u64[0] = a3;
  v7[9].n128_u64[1] = a4;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  v7[1] = result;
  v7[2] = result;
  return result;
}

char *sub_10004C144(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001BCAC(a2);
  *(v9 + 12) = a1;
  *(v9 + 18) = a4;
  *(v9 + 19) = a5;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v10;
  *(v9 + 13) = xpc_retain(a3);
  *(v9 + 80) |= 8u;
  sub_10004C1C0(v9, v11, v12, v13, v14, v15, v16, v17);
  return v9;
}

uint64_t sub_10004C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface");
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    return 37;
  }

  if ((v9 & 8) != 0)
  {
    v12 = *(a1 + 104);
    right = xpc_mach_send_get_right();
    v14 = sub_1000157D8();
    v15 = dispatch_source_create(&_dispatch_source_type_mach_send, right, 1uLL, v14);
    xpc_retain(v12);
    dispatch_set_context(v15, a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10004D888;
    handler[3] = &unk_100079F08;
    handler[4] = v15;
    dispatch_source_set_event_handler(v15, handler);
    v16[5] = _NSConcreteStackBlock;
    v16[6] = 0x40000000;
    v16[7] = sub_10004D90C;
    v16[8] = &unk_100079F28;
    v16[9] = v15;
    v16[10] = v12;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(v15);
    sub_10001B5B8(a1);
    if (*(a1 + 120))
    {
      sub_100054404();
    }

    *(a1 + 120) = v15;
  }

  else
  {
    v11 = sub_10004BFA4(a1, 1, a3, a4, a5, a6, a7, a8);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_10004D32C;
    v16[3] = &unk_100079E88;
    v16[4] = a1;
    if (sub_10004AEC0(v11, 69, v16))
    {
      _os_assumes_log_ctx();
    }

    sub_10000B684(v11, *(a1 + 112));
  }

  result = 0;
  *(a1 + 160) |= 1u;
  return result;
}

char *sub_10004C3D8(uint64_t a1, const char *a2, xpc_object_t object, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  if (object == &_xpc_BOOL_false)
  {
    return 0;
  }

  type = xpc_get_type(object);
  if (type != &_xpc_type_BOOL && type != &_xpc_type_dictionary)
  {
    return 0;
  }

  v14 = type;
  v15 = sub_10001BCAC(a2);
  v16 = v15;
  *(v15 + 12) = a1;
  *(v15 + 18) = a4;
  *(v15 + 19) = a6;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *(v15 + 1) = v17;
  *(v15 + 2) = v17;
  if (v14 == &_xpc_type_dictionary)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_10004C564;
    applier[3] = &unk_100079E68;
    applier[4] = v15;
    applier[5] = a5;
    xpc_dictionary_apply(object, applier);
  }

  if (v16[88] < 0 && (*(v16 + 80) & 4) != 0)
  {
    sub_100015968(a5, 3, "%s: _ExperimentalNonLaunching is not compatible with HideUntilCheckIn, ignoring", v16 + 168);
    sub_10001B690(v16);
    return 0;
  }

  if (strlen(v16 + 168) >= 0xFF)
  {
    sub_100015968(a5, 4, "The endpoint name %s is too long to support some features", v16 + 168);
  }

  v18 = *(v16 + 80);
  if ((v18 & 4) == 0)
  {
    *(v16 + 80) = v18 | 0x200;
  }

  return v16;
}

uint64_t sub_10004C564(uint64_t a1, const char *a2, xpc_object_t object)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  type = xpc_get_type(object);
  if (type != &_xpc_type_int64)
  {
    if (type == &_xpc_type_BOOL)
    {
      if (!strcasecmp(a2, "ResetAtClose"))
      {
        v11 = *(v6 + 160) & 0xFFEF | (16 * (object == &_xpc_BOOL_true));
      }

      else if (!strcasecmp(a2, "HideUntilCheckIn"))
      {
        sub_100015968(v5, 4, "The HideUntilCheckIn property is an architectural performance issue. Please transition away from it.");
        v11 = *(v6 + 160) & 0xFFFB | (4 * (object == &_xpc_BOOL_true));
      }

      else
      {
        if (strcasecmp(a2, "_ExperimentalNonLaunching"))
        {
          if (!strcasecmp(a2, "ExceptionServer"))
          {
            sub_100015968(v5, 3, "An empty dictionary needs to be used as the value for %s.");
            return 1;
          }

          goto LABEL_20;
        }

        if (object != &_xpc_BOOL_true)
        {
          return 1;
        }

        *(v6 + 88) |= 0x80u;
        v11 = *(v6 + 160) | 0x400;
      }

      *(v6 + 160) = v11;
      return 1;
    }

    if (type != &_xpc_type_string)
    {
      if (type != &_xpc_type_dictionary)
      {
        return 1;
      }

      if (!strcmp(a2, "ExceptionServer"))
      {
        if (xpc_dictionary_get_count(object))
        {
          sub_100015968(v5, 3, "Non-empty dictionary property on MachService: %s");
        }

        else
        {
          *(v6 + 88) |= 0x10u;
        }

        return 1;
      }

LABEL_20:
      sub_100015968(v5, 3, "Unrecognized MachService property: %s");
      return 1;
    }

    if (!strcasecmp(a2, "TaskSpecialPort"))
    {
      xpc_string_get_string_ptr(object);
      v12 = mach_task_special_port_for_id();
      if (v12 <= 0)
      {
        sub_100015968(v5, 3, "Tried to set an unknown task-special port: %s");
      }
    }

    else
    {
      if (strcasecmp(a2, "HostSpecialPort"))
      {
        goto LABEL_20;
      }

      xpc_string_get_string_ptr(object);
      v12 = mach_host_special_port_for_id();
      if (v12 <= 0)
      {
        sub_100015968(v5, 3, "Tried to set an unknown host-special port: %s");
      }
    }

    v10 = v6;
    value = v12;
LABEL_34:
    sub_10004D718(v10, value, v5);
    return 1;
  }

  if (!strcasecmp(a2, "TaskSpecialPort"))
  {
    value = xpc_int64_get_value(object);
    v10 = v6;
    goto LABEL_34;
  }

  if (strcasecmp(a2, "HostSpecialPort"))
  {
    goto LABEL_20;
  }

  v8 = xpc_int64_get_value(object);
  if (v8 < 8)
  {
    mach_host_special_port_description();
    sub_100015968(v5, 3, "Tried to set a reserved host-special port: %lld: %s");
  }

  else if (v8 > 0x23)
  {
    sub_100015968(v5, 3, "Tried to set an invalid host-special port: %lld");
  }

  else
  {
    *(v6 + 84) = v8;
  }

  return 1;
}

__n128 sub_10004C858(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10001BCAC((a1 + 168));
  v8[6].n128_u64[0] = a3;
  v8[9].n128_u64[0] = a2;
  v8[9].n128_u64[1] = a4;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  v8[1] = result;
  v8[2] = result;
  v8[10].n128_u16[0] = v8[10].n128_u16[0] & 0xFFEB | *(a1 + 160) & 0x14;
  return result;
}

xpc_object_t sub_10004C8C4(uint64_t a1, int a2)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface");
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, launch_perfcheck_property_endpoint_name, (a1 + 168));
  xpc_dictionary_set_BOOL(v4, launch_perfcheck_property_endpoint_active, *(a1 + 160) & 1);
  xpc_dictionary_set_BOOL(v4, launch_perfcheck_property_endpoint_needs_activation, (*(a1 + 160) & 0x200) != 0);
  xpc_dictionary_set_BOOL(v4, launch_perfcheck_property_endpoint_event, (*(a1 + 88) & 8) != 0);
  xpc_dictionary_set_BOOL(v4, "XPCServiceEndpointNonLaunching", *(a1 + 88) >> 7);
  if (a2)
  {
    v11 = sub_10004C9DC(a1, 1, v5, v6, v7, v8, v9, v10);
    if (v11)
    {
      v12 = v11;
      if (xpc_get_type(v11) == &_xpc_type_mach_send)
      {
        xpc_dictionary_set_value(v4, "XPCServiceEndpointPort", v12);
      }
    }
  }

  return v4;
}

uint64_t sub_10004C9DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface", v8, v9);
  }

  v10 = *(a1 + 160);
  if ((v10 & 4) != 0 && (v10 & 1) == 0)
  {
    return 0;
  }

  return sub_10004CA20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10004CA20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 104))
  {
    v9 = a2 & 7;
    switch(v9)
    {
      case 1:
        v10 = *(a1 + 160);
        if ((v10 & 8) != 0)
        {
          sub_100054404();
        }

        if (v10)
        {
          sub_100054404();
        }

        if ((v10 & 0x20) != 0)
        {
          sub_10004C024(a1, 4, "Refusing to make a port for a canceled endpoint", a4, a5, a6, a7, a8, v17);
        }

        else
        {
          v18.reserved[1] = 0;
          *&v18.flags = xmmword_100057830;
          v11 = *(*(a1 + 96) + 248);
          strlen((a1 + 168));
          v12 = sub_100032A18(v11);
          if (sub_10002CA94(v11))
          {
            v13 = 1;
          }

          else if (v12 == &unk_10007D7A8 || v12 == &unk_10007D830)
          {
            v13 = 2;
          }

          else
          {
            if (v12 != &unk_10007D8B8)
            {
              sub_1000441E0("Endpoint with unexpected domain type %s", v12[14]);
            }

            v13 = 5;
          }

          memset(v19, 0, sizeof(v19));
          v20 = v13;
          __strlcpy_chk();
          v18.flags = 1079;
          v18.reserved[0] = v19;
          if ((sub_100002D28(*(a1 + 96), 4) & 1) == 0)
          {
            v18.flags = 9271;
          }

          v15 = qword_10007DC10++;
          sub_10000B620(&v18, v15);
          *(a1 + 112) = v15;
          *(a1 + 104) = xpc_mach_send_create_with_disposition();
          if ((*(a1 + 160) & 0x402) == 2)
          {
            sub_10004D08C(a1);
          }
        }

        break;
      case 2:
        break;
      case 4:
        sub_1000441E0("GET_PORT_FORCE for endpoint %s but port not yet made", (a1 + 168));
      default:
        sub_1000441E0("Invalid get_port() flags");
    }
  }

  return *(a1 + 104);
}

uint64_t sub_10004CC54(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface", v1, v2);
  }

  return *(a1 + 96);
}

BOOL sub_10004CC84(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface", v1, v2);
  }

  return (*(a1 + 160) & 8) == 0;
}

uint64_t sub_10004CCB4(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface", a2);
  }

  sub_100049ECC(a2, a3, "%s = {", a4, a5, a6, a7, a8, a1 + 168);
  v22 = sub_10004BFA4(a1, 2, v11, v12, v13, v14, v15, v16);
  ptype = 0;
  if (v22 && (mach_port_type(mach_task_self_, v22, &ptype) || (ptype & 0x100000) != 0))
  {
    *(a1 + 88) |= 0x40u;
    v23 = " (dead)";
  }

  else
  {
    v23 = &unk_10005CEA2;
  }

  sub_100049ECC(a2, a3 + 1, "port = 0x%x%s", v17, v18, v19, v20, v21, v22, v23);
  v29 = *(a1 + 84);
  if (v29)
  {
    v30 = *(a1 + 84);
    v69 = mach_host_special_port_description();
    sub_100049ECC(a2, a3 + 1, "host-special port = %u (%s)", v31, v32, v33, v34, v35, v29, v69);
  }

  else
  {
    v36 = *(a1 + 80);
    if (v36)
    {
      if (v36 == 128)
      {
        v37 = "exception";
      }

      else
      {
        v37 = mach_task_special_port_description();
        v36 = *(a1 + 80);
      }

      sub_100049ECC(a2, a3 + 1, "task-special port = %u (%s)", v24, v25, v26, v27, v28, v36, v37);
    }
  }

  if (*(a1 + 160))
  {
    v38 = "1";
  }

  else
  {
    v38 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "active = %s", v24, v25, v26, v27, v28, v38);
  if ((*(a1 + 160) & 8) != 0)
  {
    v44 = "0";
  }

  else
  {
    v44 = "1";
  }

  sub_100049ECC(a2, a3 + 1, "managed = %s", v39, v40, v41, v42, v43, v44);
  if ((*(a1 + 160) & 0x10) != 0)
  {
    v50 = "1";
  }

  else
  {
    v50 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "reset = %s", v45, v46, v47, v48, v49, v50);
  if ((*(a1 + 160) & 4) != 0)
  {
    v56 = "1";
  }

  else
  {
    v56 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "hide = %s", v51, v52, v53, v54, v55, v56);
  if ((*(a1 + 160) & 2) != 0)
  {
    v62 = "1";
  }

  else
  {
    v62 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "watching = %s", v57, v58, v59, v60, v61, v62);
  if ((*(a1 + 160) & 0x400) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "non-launching = 1", v63, v64, v65, v66, v67);
  }

  return sub_100049ECC(a2, a3, "}", v63, v64, v65, v66, v67);
}

void *sub_10004CEEC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface");
  }

  v2 = *(a1 + 160);
  if ((v2 & 8) != 0)
  {
    sub_1000441E0("attempt to watch unmanaged endpoint");
  }

  if ((v2 & 2) != 0)
  {
    sub_1000441E0("attempt to watch endpoint that is already watched");
  }

  if (v2)
  {
    sub_1000441E0("attempt to watch an active endpoint");
  }

  if ((v2 & 0x50) == 0x10)
  {
    sub_10004CFC8(a1);
    v2 = *(a1 + 160);
  }

  *(a1 + 160) = v2 & 0xFFBD | 2;
  result = sub_100026CE4(*(a1 + 96), 1);
  if (result)
  {
    *(a1 + 160) |= 0x400u;
  }

  if (*(a1 + 104) && (*(a1 + 160) & 0x400) == 0)
  {

    return sub_10004D08C(a1);
  }

  return result;
}

void sub_10004CFC8(void *a1)
{
  if (a1[16])
  {
    sub_100054404();
  }

  if (a1[15])
  {
    sub_100054404();
  }

  v2 = a1[13];
  if (v2)
  {
    v3 = a1[14];
    a1[13] = 0;
    sub_10001B5B8(a1);
    v4 = sub_1000157D8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10004D780;
    block[3] = &unk_100079EA8;
    block[4] = v2;
    block[5] = v3;
    block[6] = a1;
    dispatch_async(v4, block);
  }
}

void *sub_10004D08C(void *a1)
{
  v2 = a1[13];
  right = xpc_mach_send_get_right();
  v4 = sub_1000157D8();
  v5 = dispatch_source_create(&_dispatch_source_type_mach_recv, right, 0x8000uLL, v4);
  dispatch_set_context(v5, a1);
  xpc_retain(v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10004D800;
  handler[3] = &unk_100079EC8;
  handler[4] = v5;
  dispatch_source_set_event_handler(v5, handler);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10004D834;
  v7[3] = &unk_100079EE8;
  v7[4] = v5;
  v7[5] = v2;
  dispatch_source_set_cancel_handler(v5, v7);
  dispatch_activate(v5);
  result = sub_10001B5B8(a1);
  if (a1[16])
  {
    sub_100054404();
  }

  a1[16] = v5;
  return result;
}

void sub_10004D1D0(uint64_t a1, integer_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_10004BFA4(a1, 2, a3, a4, a5, a6, a7, a8);
  if (v10 - 1 <= 0xFFFFFFFD)
  {
    port_info = a2;
    if (mach_port_set_attributes(mach_task_self_, v10, 9, &port_info, 1u))
    {
      v16 = "mark";
      if (!port_info)
      {
        v16 = "unmark";
      }

      sub_100020018(*(a1 + 96), 4, "Failed to %s endpoint '%s' as throttled", v11, v12, v13, v14, v15, v16);
    }

    if (a2)
    {
      v17 = 2048;
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 160) = *(a1 + 160) & 0xF7FF | v17;
  }
}

void sub_10004D28C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface");
  }

  v2 = *(a1 + 160);
  if ((v2 & 8) != 0)
  {
    sub_1000441E0("attempt to ignore unmanaged endpoint");
  }

  if ((v2 & 2) == 0)
  {
    sub_1000441E0("attempt to ignore endpoint that is already ignored");
  }

  *(a1 + 160) = v2 & 0xFFF5;
  v3 = *(a1 + 128);
  if ((v2 & 0x400) != 0 || !*(a1 + 104))
  {
    if (v3)
    {
      sub_1000441E0("endpoint %s has unexpected receive_source", (a1 + 168));
    }
  }

  else
  {
    dispatch_source_cancel(v3);
    *(a1 + 128) = 0;
  }
}

uint64_t sub_10004D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if ((*(v8 + 160) & 0x10) != 0)
  {
    sub_10004CFC8(*(a1 + 32));
  }

  else
  {
    v9 = sub_10004BFA4(*(a1 + 32), 4, a3, a4, a5, a6, a7, a8);
    sub_10000B69C(v9, *(v8 + 112));
    if (sub_10000B790(v9))
    {
      _os_assumes_log_ctx();
    }
  }

  v17 = *(v8 + 160);
  *(v8 + 160) = v17 & 0xFFBE | 0x40;
  if ((v17 & 0x100) != 0)
  {
    sub_10004D4C4(v8, v10, v11, v12, v13, v14, v15, v16);
    *(v8 + 160) &= ~0x100u;
  }

  v19 = *(v8 + 144);
  v18 = *(v8 + 152);

  return v19(v8, 1, v18);
}

void sub_10004D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    sub_1000441E0("alias endpoint given to endpoint interface");
  }

  v9 = *(a1 + 160);
  *(a1 + 160) = v9 | 0x20;
  if ((v9 & 2) != 0)
  {

    sub_10004D28C(a1);
  }

  else if (v9)
  {
    if ((v9 & 8) != 0)
    {
      dispatch_source_cancel(*(a1 + 120));
      *(a1 + 120) = 0;
    }

    else
    {
      v10 = sub_10004BFA4(a1, 4, a3, a4, a5, a6, a7, a8);
      sub_10004B268(v10);
    }

    *(a1 + 160) = *(a1 + 160) & 0xFF7E | 0x80;
    v12 = *(a1 + 144);
    v11 = *(a1 + 152);

    v12(a1, 1, v11);
  }
}

void sub_10004D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 160);
  if ((v8 & 0x100) == 0)
  {
    if (v8)
    {
      *(a1 + 160) = v8 | 0x100;
    }

    else
    {
      sub_10004D4C4(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

void sub_10004D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 160))
  {
    sub_1000441E0("attempt to drain active endpoint");
  }

  v9 = sub_10004BFA4(a1, 2, a3, a4, a5, a6, a7, a8);
  if (v9 - 1 <= 0xFFFFFFFD)
  {
    v10 = v9;
    v11 = 20;
    do
    {
      memset(msg, 0, sizeof(msg));
      v12 = mach_msg(msg, 258, 0, 0x20u, v10, 0, 0);
      if (v12)
      {
        if (v12 == 268451843)
        {
          return;
        }
      }

      else
      {
        sub_10004C024(a1, 5, "draining message: id = 0x%x", v13, v14, v15, v16, v17, msg[20]);
        mach_msg_destroy(msg);
      }

      --v11;
    }

    while (v11);
  }
}

uint64_t sub_10004D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v9 = *(a1 + 160);
  if ((v9 & 8) != 0)
  {
    return 0;
  }

  if ((v9 & 0x20) == 0)
  {
    sub_100054404();
  }

  if ((v9 & 2) != 0)
  {
    sub_100054404();
  }

  v11 = sub_10004BFA4(a1, 2, a3, a4, a5, a6, a7, a8);
  if ((v11 - 1) > 0xFFFFFFFD)
  {
    return 0;
  }

  if ((*(a1 + 160) & 0x80) != 0)
  {
    v19 = v11;
    v20 = sub_100023F20(*(a1 + 96));
    sub_1000441E0("Unable to stash abandoned service port 0x%x owner PID %d (%s)", v19, v20, (a1 + 168));
  }

  result = sub_10001C3F0(a2, (a1 + 168), v11, *(a1 + 112));
  if (!result)
  {
    sub_10004C024(a1, 5, "Saved the port to stash", v13, v14, v15, v16, v17, v21);
    v18 = *(a1 + 104);
    if (!v18)
    {
      sub_100054404();
    }

    xpc_release(v18);
    result = 0;
    *(a1 + 104) = 0;
  }

  return result;
}

void sub_10004D678(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 72))
  {
    v3 = *(a1 + 160);
    if ((v3 & 8) == 0)
    {
      if (*(a1 + 104))
      {
        sub_100054404();
      }

      if (v3)
      {
        sub_100054404();
      }

      if ((v3 & 2) != 0)
      {
        sub_100054404();
      }

      v10 = 0;
      if (sub_10001C480(a2, a1 + 168, &v10) - 1 <= 0xFFFFFFFD)
      {
        *(a1 + 112) = v10;
        *(a1 + 104) = xpc_mach_send_create_with_disposition();
        sub_10004C024(a1, 5, "Restored the port from stash", v4, v5, v6, v7, v8, v9);
      }
    }
  }
}

void sub_10004D718(uint64_t a1, int a2, _BYTE *a3)
{
  if (a2 < 7 || a2 == 9)
  {
    sub_100015968(a3, 3, "Tried to set a reserved task special port: %d");
  }

  else if (a2 > 11)
  {
    sub_100015968(a3, 3, "Bogus TaskSpecialPort number: %d");
  }

  else
  {
    *(a1 + 80) = a2;
  }
}

void sub_10004D780(uint64_t a1)
{
  v2 = *(a1 + 32);
  right = xpc_mach_send_get_right();
  if (sub_10000B774(right, 0, *(a1 + 40)))
  {
    v5 = *(a1 + 48);
    _os_assumes_log_ctx();
  }

  xpc_release(*(a1 + 32));
  v4 = *(a1 + 48);

  sub_10001B690(v4);
}

uint64_t sub_10004D800(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  v3 = context[18];
  v2 = context[19];

  return v3(context, 0, v2);
}

void sub_10004D834(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  sub_10001B690(context);
  xpc_release(*(a1 + 40));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

void sub_10004D888(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  *(context + 80) = *(context + 80) & 0xFFDE | 0x20;
  sub_10001B5B8(context);
  (*(context + 18))(context, 1, *(context + 19));
  dispatch_source_cancel(*(context + 15));
  *(context + 15) = 0;

  sub_10001B690(context);
}

void sub_10004D90C(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  sub_10001B690(context);
  xpc_release(*(a1 + 40));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

xpc_type_t sub_10004D978()
{
  if (sub_100045D60("kern.bootargs", &qword_10007EC70))
  {
    v0 = qword_10007EC70 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    sub_1000441E0("no bootargs string");
  }

  v1 = sub_1000415E4(0, "__TEXT", "__config");
  qword_10007EC78 = v1;
  if (!v1 || xpc_get_type(v1) != &_xpc_type_dictionary)
  {
    sub_1000441E0("launchd built improperly: no __TEXT,__config");
  }

  byte_10007F100 = getenv("XPC_USERSPACE_REBOOTED") != 0;
  byte_10007F101 = getenv("XPC_USERSPACE_PIVOTEDROOT") != 0;
  byte_10007F0E6 = os_variant_has_internal_content();
  if (sub_100016A4C(qword_10007EC70, "rd=md0") || sub_1000107F4("Restore") || sub_1000107F4("Ramdisk") || sub_1000107F4("RamDisk"))
  {
    byte_10007F0E3 = 1;
    byte_10007F0E4 = 1;
  }

  if (byte_10007F0E5 == 1 && byte_10007F100 == 1 && byte_10007F101 == 1)
  {
LABEL_104:
    sub_1000441E0("after the userspace pivot & reboot, os_variant_is_basesystem() should not be true");
  }

  if (byte_10007F0E1 == 1)
  {
    byte_10007F0E3 = 0;
    byte_10007F0E5 = 0;
    byte_10007F0E4 = 0;
  }

  if (os_variant_is_darwinos())
  {
    byte_10007F0E4 = 0;
  }

  v2 = qword_10007EC70;
  byte_10007F0E8 = strstr(qword_10007EC70, "-v") != 0;
  v3 = strstr(v2, "-no-corpses");
  byte_10007F130 = v3 != 0;
  if (v3)
  {
    if (_os_alloc_once_table[2] == -1)
    {
      v4 = _os_alloc_once_table[3];
      v5 = 1;
    }

    else
    {
      v4 = _os_alloc_once();
      v5 = byte_10007F130;
      v2 = qword_10007EC70;
    }

    *(v4 + 42) = v5;
  }

  qword_10007F120 = sub_100046060(v2, "launchd_force_data_status=", 0);
  byte_10007DC7C = sub_100046060(qword_10007EC70, "launchd_proxyless_spawn=", 1) != 0;
  qword_10007F0F0 = sub_100046060(qword_10007EC70, "launchd_instance_limit=", 0);
  byte_10007F102 = sub_1000460D0(qword_10007EC70, "launchd_usr_abandon_unmanaged=") != 0;
  byte_10007F103 = sub_1000460D0(qword_10007EC70, "launchd_verbose_coalition_logs=") != 0;
  if (sub_100016A4C(qword_10007EC70, "launchd_upward_connections_support="))
  {
    byte_10007F110 = sub_1000460D0(qword_10007EC70, "launchd_upward_connections_support=") != 0;
  }

  byte_10007F0E0 = sub_100046060(qword_10007EC70, "launchd_workload_properties_disabled=", 0) != 0;
  v6 = qword_10007EC70;
  if (strstr(qword_10007EC70, "launchd_automation="))
  {
    v7 = sub_1000460D0(v6, "launchd_automation=") != 0;
    v6 = qword_10007EC70;
  }

  else
  {
    if (!strstr(v6, "BATS_TESTPLAN_ID="))
    {
      goto LABEL_30;
    }

    v7 = 1;
  }

  byte_10007F0E7 = v7;
LABEL_30:
  sub_100001564(v6, sub_100045D60);
  v37 = 0;
  v36 = 4;
  sysctlbyname("kern.minimalboot", &v37, &v36, 0, 0);
  if (v37)
  {
    byte_10007F058 = 1;
  }

  __str = 0;
  if (sub_100045D60("kern.osrelease", &__str))
  {
    qword_10007F088 = strtoul(__str, 0, 0);
  }

  free(__str);
  bufsize = 1024;
  _NSGetExecutablePath(byte_10007F400, &bufsize);
  v8 = strrchr(byte_10007F400, 47);
  v9 = "launchd";
  if (v8)
  {
    v9 = v8 + 1;
  }

  qword_10007F080 = v9;
  byte_10007F134 = xpc_dictionary_get_BOOL(qword_10007EC78, "LogServiceLifecycle");
  byte_10007F136 = xpc_dictionary_get_BOOL(qword_10007EC78, "LogIPC");
  sub_10004ECD8(&byte_10007F135, "LogToConsole", "launchd_log_serial=");
  byte_10007F0FB = xpc_dictionary_get_BOOL(qword_10007EC78, "UseGuardMalloc");
  byte_10007F0FC = xpc_dictionary_get_BOOL(qword_10007EC78, "UseNanoAllocator");
  byte_10007F0FD = xpc_dictionary_get_BOOL(qword_10007EC78, "AbortOnUnknownIPC");
  byte_10007F0FE = xpc_dictionary_get_BOOL(qword_10007EC78, "RequireDomainBinding");
  byte_10007F0E9 = xpc_dictionary_get_BOOL(qword_10007EC78, "LogToFlatFile");
  sub_10004ED50(&qword_10007DC70, "LogFileMaxSize");
  sub_10004EDA4(&dword_10007DC78, "LogFileVerboseMetaLimit", "launchd_log_verbose_meta_limit=");
  byte_10007F0F8 = xpc_dictionary_get_BOOL(qword_10007EC78, "LogAllBootstrapErrors");
  byte_10007F0F9 = xpc_dictionary_get_BOOL(qword_10007EC78, "PureOnDemand");
  if (!qword_10007F0F0)
  {
    v40 = 0;
    sub_10004ED50(&v40, "MultipleInstanceLimit");
    v10 = v40;
    if (v40 <= 0)
    {
      v39 = 0;
      v38 = 4;
      if (sysctlbyname("kern.maxproc", &v39, &v38, 0, 0))
      {
        sub_100054420();
      }

      if (v39 <= 0)
      {
        sub_100054404();
      }

      v10 = v39 >> 1;
    }

    qword_10007F0F0 = v10;
  }

  sub_10004EDA4(&dword_10007DC38, "SIGTERMTimeout", 0);
  sub_10004EDA4(&dword_10007DC3C, "SIGKILLTimeout", 0);
  byte_10007F0C4 = xpc_dictionary_get_BOOL(qword_10007EC78, "CrashOnSIGTERMTimeout");
  if ((os_variant_has_internal_diagnostics() & 1) == 0)
  {
    byte_10007F0C4 = 0;
  }

  byte_10007F180 = xpc_dictionary_get_BOOL(qword_10007EC78, "ExtensionWatchdog");
  sub_10004EDA4(&dword_10007DC40, "ExtensionWatchdogTimeout", 0);
  sub_10004EDA4(&dword_10007DC44, "ShutdownTimeout", 0);
  sub_10004EDA4(&dword_10007DC68, "HighWatermark", 0);
  v40 = 0;
  if (os_parse_boot_arg_from_buffer_int() && !v40)
  {
    dword_10007DC68 = -1;
  }

  byte_10007F0C7 = xpc_dictionary_get_BOOL(qword_10007EC78, "DisableAllMemoryLimit");
  byte_10007F0C8 = xpc_dictionary_get_BOOL(qword_10007EC78, "DisableExtensionMemoryLimit");
  if (os_variant_allows_internal_security_policies() && !access("/usr/local/share/launchd-disable-memory-limits", 0))
  {
    byte_10007F0C7 = 1;
  }

  sub_10004EDA4(&dword_10007DC64, "SyncInterval", "launchd_sync_interval=");
  value = xpc_dictionary_get_value(qword_10007EC78, "Bootstrap");
  if (value)
  {
    v12 = value;
    if (xpc_get_type(value) == &_xpc_type_dictionary)
    {
      qword_10007EC80 = v12;
    }
  }

  sub_10004ECD8(&byte_10007F0C5, "SuddenShutdown", "launchd_sudden_shutdown=");
  sub_10004ECD8(&byte_10007F0C6, "ServiceStubsDisabled", "launch_service_stubs_disabled=");
  if (sub_100046060(qword_10007EC70, "launchd_disable_all_timeouts=", 0))
  {
    dword_10007DC3C = 600;
    byte_10007F180 = 0;
    dword_10007DC44 = 0;
    dword_10007F800 = 0;
  }

  if (!qword_10007EC80)
  {
    v29 = sub_100014514(0x10uLL, 0x5BF9227FuLL);
    qword_10007F090 = v29;
    *v29 = "XPC_FLAGS=0x0000000000000000";
    v29[1] = 0;
    goto LABEL_87;
  }

  v13 = xpc_dictionary_get_value(qword_10007EC80, "Paths");
  if (v13)
  {
    v14 = v13;
    if (xpc_get_type(v13) == &_xpc_type_array)
    {
      qword_10007F098 = v14;
    }
  }

  v15 = xpc_dictionary_get_value(qword_10007EC80, "SupplementalPaths");
  if (v15)
  {
    v16 = v15;
    if (xpc_get_type(v15) == &_xpc_type_array)
    {
      qword_10007F0B0 = v16;
    }
  }

  v17 = xpc_dictionary_get_value(qword_10007EC80, "SupplementalJetsamProperties");
  if (v17)
  {
    v18 = v17;
    if (xpc_get_type(v17) == &_xpc_type_array)
    {
      qword_10007F0A8 = v18;
    }
  }

  v19 = xpc_dictionary_get_value(qword_10007EC80, "UserPaths");
  if (v19)
  {
    v20 = v19;
    if (xpc_get_type(v19) == &_xpc_type_array)
    {
      qword_10007F0A0 = v20;
    }
  }

  v21 = xpc_dictionary_get_value(qword_10007EC80, "SupplementalUserPaths");
  if (v21)
  {
    v22 = v21;
    if (xpc_get_type(v21) == &_xpc_type_array)
    {
      qword_10007F0B8 = v22;
    }
  }

  v23 = sub_10004EA58();
  v24 = v23;
  if (byte_10007F0E5 == 1)
  {
    if (!v23)
    {
      v24 = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(v24, "__OSINSTALL_ENVIRONMENT", "1");
  }

  if (v24)
  {
    xpc_dictionary_apply_f();
  }

  v25 = xpc_dictionary_get_value(qword_10007EC80, "ChildDefaults");
  if (v25 && xpc_get_type(v25) == &_xpc_type_dictionary)
  {
    xpc_dictionary_apply_f();
  }

  v26 = sub_10004EA00();
  if (!v26)
  {
    v30 = sub_100014514(0x10uLL, 0x539E5BEEuLL);
    qword_10007F090 = v30;
    *v30 = "XPC_FLAGS=0x0000000000000000";
    v30[1] = 0;
    goto LABEL_86;
  }

  count = xpc_dictionary_get_count(v26);
  v28 = count + 2;
  if (((count >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63 != count >= 0xFFFFFFFFFFFFFFFELL || v28 >> 61)
  {
    __break(1u);
    goto LABEL_104;
  }

  qword_10007F090 = sub_100014514(8 * v28, 0x3DA06BA6uLL);
  v40 = 1;
  *qword_10007F090 = "XPC_FLAGS=0x0000000000000000";
  xpc_dictionary_apply_f();
  *(qword_10007F090 + 8 * v40) = 0;
LABEL_86:
  word_10007F132 = xpc_dictionary_get_int64(qword_10007EC80, "CheckedAllocationsPosixSpawnFlagsGlobal");
LABEL_87:
  if (!qword_10007EC78)
  {
    qword_10007F138 = 0;
    qword_10007F118 = 0;
    goto LABEL_102;
  }

  v31 = xpc_dictionary_get_value(qword_10007EC78, "Boot");
  v32 = qword_10007EC78;
  qword_10007F138 = v31;
  if (qword_10007EC78)
  {
    v32 = xpc_dictionary_get_value(qword_10007EC78, "ElideRoleAccountSetupPathPrefixes");
    v31 = qword_10007F138;
  }

  qword_10007F118 = v32;
  if (!v31 || xpc_get_type(v31) != &_xpc_type_dictionary)
  {
LABEL_102:
    sub_1000441E0("no boot tasks");
  }

  if (!qword_10007F118 || (result = xpc_get_type(qword_10007F118), result != &_xpc_type_array))
  {
    sub_1000441E0("no elide roleaccount setup path prefixes");
  }

  return result;
}

xpc_object_t sub_10004E478(char *key)
{
  result = qword_10007EC78;
  if (qword_10007EC78)
  {
    return xpc_dictionary_get_value(qword_10007EC78, key);
  }

  return result;
}

void *sub_10004E490()
{
  if ((byte_10007F0E3 & 1) == 0)
  {
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s/disabled.migrated", off_10007DC20[0]);
    memset(&v12, 0, sizeof(v12));
    if (stat(__str, &v12))
    {
      *v15 = off_100079F88;
      v0 = fts_open(v15, 92, 0);
      if (v0)
      {
        v1 = v0;
        v2 = fts_read(v0);
        if (v2)
        {
          v3 = v2;
          v4 = 0;
          do
          {
            fts_info = v3->fts_info;
            if (fts_info == 6)
            {
              --v4;
            }

            else if (fts_info == 1)
            {
              if (v4)
              {
                fts_set(v1, v3, 4);
              }

              bzero(from, 0x400uLL);
              bzero(to, 0x400uLL);
              if (!strcmp(v3->fts_name, "com.apple.launchd"))
              {
                snprintf(from, 0x400uLL, "%s/overrides.plist", v3->fts_path);
                snprintf(to, 0x400uLL, "%s/disabled.plist", off_10007DC20[0]);
                v6 = copyfile_state_alloc();
                if (copyfile(from, to, v6, 8u) == -1)
                {
                  sub_10005455C();
                }

                if (copyfile_state_free(v6) == -1)
                {
                  sub_10005455C();
                }
              }

              ++v4;
            }

            v3 = fts_read(v1);
          }

          while (v3);
        }

        if (fts_close(v1) == -1)
        {
          sub_10005453C();
        }
      }

      else
      {
        v7 = *__error();
        v8 = *__error();
        v9 = xpc_strerror();
        sub_10004749C(4, "failed to fts_open(/private/var/db/launchd.db, 0x%x): %d: %s", 92, v7, v9);
      }

      v10 = open(__str, 512, 438);
      if (v10 == -1)
      {
        if (*__error() != 30 && *__error())
        {
          _os_assumes_log();
        }
      }

      else
      {
        sub_1000413F8(v10);
      }
    }
  }

  qword_10007EC88 = sub_1000168E0("%s/disabled.plist", off_10007DC20[0]);
  result = sub_10004152C(qword_10007EC88);
  qword_10007EC90 = result;
  if (!result)
  {
    result = xpc_dictionary_create(0, 0, 0);
    qword_10007EC90 = result;
  }

  return result;
}

void sub_10004E754()
{
  v0 = sub_10004152C("/private/etc/com.apple.xpc.launchd.limits.plist");
  if (v0)
  {
    v1 = v0;
    xpc_dictionary_apply_f();
    xpc_release(v1);
  }

  qword_10007F128 = sub_1000496EC();
  v2 = sub_10004152C("/System/Library/UserManagement/com.apple.xpc.launchd.personas.plist");
  if (v2)
  {
    v3 = v2;
    value = xpc_dictionary_get_value(v2, "SystemPersonaServices");
    if (value)
    {
      v5 = value;
      if (xpc_get_type(value) == &_xpc_type_array)
      {
        xpc_array_apply(v5, &stru_100079FB8);
      }
    }

    xpc_release(v3);
  }

  bzero(&v8[52], 0x3CCuLL);
  strcpy(v8, "/System/Library/xpc/foreground_user_endpoints.plist");
  qword_10007F108 = sub_10004152C(v8);
  sub_100045D60("hw.jetsam_properties_product_type", &qword_10007F0D0);
  is_darwinos = os_variant_is_darwinos();
  v7 = &unk_10005CEA2;
  if (is_darwinos)
  {
    v7 = ".darwin";
  }

  qword_10007F0D8 = v7;
  sub_10000CF58();
}

void *sub_10004E8C8(char *a1, xpc_object_t object)
{
  v2 = object;
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
LABEL_6:
    value = xpc_int64_get_value(v2);
    v6 = a1;
    v7 = value;
    goto LABEL_7;
  }

  result = xpc_get_type(v2);
  if (result != &_xpc_type_array)
  {
    return result;
  }

  if (xpc_array_get_count(v2) == 1)
  {
    v2 = xpc_array_get_value(v2, 0);
    result = xpc_get_type(v2);
    if (result != &_xpc_type_int64)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = xpc_array_get_count(v2);
  if (result != 2)
  {
    return result;
  }

  v8 = xpc_array_get_value(v2, 0);
  v9 = xpc_array_get_value(v2, 1uLL);
  result = xpc_get_type(v8);
  if (result != &_xpc_type_int64)
  {
    return result;
  }

  result = xpc_get_type(v9);
  if (result != &_xpc_type_int64)
  {
    return result;
  }

  v10 = xpc_int64_get_value(v8);
  v7 = xpc_int64_get_value(v9);
  v6 = a1;
  value = v10;
LABEL_7:

  return sub_1000463D0(v6, value, v7, 0);
}

xpc_object_t sub_10004EA00()
{
  if (!qword_10007EC80)
  {
    return 0;
  }

  value = xpc_dictionary_get_value(qword_10007EC80, "Self");
  if (!value)
  {
    return 0;
  }

  v1 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 0;
  }

  return v1;
}

xpc_object_t sub_10004EA58()
{
  if (!qword_10007EC80)
  {
    return 0;
  }

  value = xpc_dictionary_get_value(qword_10007EC80, "Child");
  if (!value)
  {
    return 0;
  }

  v1 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_10004EABC(uint64_t a1, char *__str)
{
  result = snprintf(__str, 0x40uLL, "XPC_FLAGS=0x%llx", a1);
  *qword_10007F090 = __str;
  return result;
}

void sub_10004EB08()
{
  v0 = qword_10007EC90;
  if (qword_10007EC90)
  {
    v1 = qword_10007EC88;
    if (xpc_dictionary_get_BOOL(qword_10007EC90, "_dirty"))
    {
      xpc_dictionary_set_value(v0, "_dirty", 0);
      v2 = xpc_copy(v0);
      v3 = sub_1000166EC(v1);
      v4 = sub_1000157F0();
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 0x40000000;
      v5[2] = sub_10004EFE0;
      v5[3] = &unk_100079FD8;
      v5[4] = v2;
      v5[5] = v3;
      dispatch_async(v4, v5);
    }
  }
}

void sub_10004EBD4()
{
  sub_10004EB08();
  v0 = sub_1000157F0();

  dispatch_sync(v0, &stru_100079F68);
}

uint64_t sub_10004EC0C(char *key)
{
  if (byte_10007F110)
  {
    return 1;
  }

  result = qword_10007F108;
  if (qword_10007F108)
  {
    return xpc_dictionary_get_BOOL(qword_10007F108, key);
  }

  return result;
}

uint64_t sub_10004EC38(const char *a1)
{
  if (!qword_10007F118)
  {
    return 0;
  }

  v1 = sub_1000410C8(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (xpc_array_get_count(qword_10007F118))
  {
    v3 = 0;
    while (1)
    {
      string = xpc_array_get_string(qword_10007F118, v3);
      if (string)
      {
        if (sub_1000169A8(v2, string))
        {
          break;
        }
      }

      if (++v3 >= xpc_array_get_count(qword_10007F118))
      {
        goto LABEL_8;
      }
    }

    v5 = 1;
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  free(v2);
  return v5;
}

BOOL sub_10004ECD8(_BYTE *a1, char *key, char *__s2)
{
  if (__s2 && (v6 = qword_10007EC70, strstr(qword_10007EC70, __s2)))
  {
    result = sub_1000460D0(v6, __s2) != 0;
  }

  else
  {
    result = xpc_dictionary_get_BOOL(qword_10007EC78, key);
  }

  *a1 = result;
  return result;
}

void *sub_10004ED50(void *a1, const char *a2)
{
  result = xpc_dictionary_get_value(qword_10007EC78, a2);
  if (result)
  {
    v4 = result;
    result = xpc_get_type(result);
    if (result == &_xpc_type_int64)
    {
      result = xpc_int64_get_value(v4);
      *a1 = result;
    }
  }

  return result;
}

void *sub_10004EDA4(_DWORD *a1, char *key, char *__s2)
{
  if (__s2)
  {
    v6 = qword_10007EC70;
    if (strstr(qword_10007EC70, __s2))
    {
      result = sub_1000460D0(v6, __s2);
LABEL_7:
      *a1 = result;
      return result;
    }
  }

  result = xpc_dictionary_get_value(qword_10007EC78, key);
  if (result)
  {
    v8 = result;
    result = xpc_get_type(result);
    if (result == &_xpc_type_int64)
    {
      result = xpc_int64_get_value(v8);
      goto LABEL_7;
    }
  }

  return result;
}

void *sub_10004EE38(char *a1, xpc_object_t object, uint64_t a3)
{
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    v10 = 0;
    string_ptr = xpc_string_get_string_ptr(object);
    result = sub_10001B708(a1, string_ptr, 0, &v10, 1);
    if (result)
    {
      if (a3)
      {
        v8 = &qword_10007F190;
      }

      else
      {
        v8 = &qword_10007F188;
      }

      v9 = *v8;
      *result = *v8;
      if (v9)
      {
        *(v9 + 8) = result;
      }

      *v8 = result;
      result[1] = v8;
    }
  }

  return result;
}

uint64_t sub_10004EEE4(const char *a1, xpc_object_t object, uint64_t *a3)
{
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    result = strcmp(a1, "MallocStackLogging");
    if (result)
    {
      string_ptr = xpc_string_get_string_ptr(object);
      result = sub_1000168E0("%s=%s", a1, string_ptr);
      v8 = *a3;
      *(qword_10007F090 + 8 * *a3) = result;
      *a3 = v8 + 1;
    }
  }

  return result;
}

BOOL sub_10004EF78(id a1, unint64_t a2, void *a3)
{
  if (a3 && xpc_get_type(a3) == &_xpc_type_string)
  {
    v4 = qword_10007F128;
    string_ptr = xpc_string_get_string_ptr(a3);
    sub_10004954C(v4, string_ptr, &_xpc_BOOL_true);
  }

  return 1;
}

void sub_10004EFE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fopen(*(a1 + 40), "w");
  if (v3)
  {
    v4 = v3;
    fprintf(v3, "%s\n", "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>");
    if (xpc_dictionary_get_count(v2))
    {
      fwrite("<dict>\n", 7uLL, 1uLL, v4);
      xpc_dictionary_apply_f();
      v5 = "</dict>\n";
    }

    else
    {
      v5 = "<dict/>\n";
    }

    fwrite(v5, 8uLL, 1uLL, v4);
    fwrite("</plist>\n", 9uLL, 1uLL, v4);
    sub_1000415F0(v4);
  }

  else if (*__error())
  {
    _os_assumes_log();
  }

  xpc_release(*(a1 + 32));
  v6 = *(a1 + 40);

  free(v6);
}

void *sub_10004F0F4(char *a1, xpc_object_t object, FILE *a3)
{
  v4 = object;
  if (xpc_get_type(object) != &_xpc_type_dictionary || (result = xpc_dictionary_get_value(v4, "Disabled"), (v4 = result) != 0))
  {
    if (xpc_get_type(v4) == &_xpc_type_BOOL || (result = xpc_get_type(v4), result == &_xpc_type_string))
    {
      result = strchr(a1, 60);
      if (!result)
      {
        fprintf(a3, "\t<key>%s</key>\n", a1);
        if (v4 == &_xpc_BOOL_true)
        {
          v8 = "\t<true/>\n";
          v9 = 9;
        }

        else
        {
          if (v4 != &_xpc_BOOL_false)
          {
            string_ptr = xpc_string_get_string_ptr(v4);
            return fprintf(a3, "\t<string>%s</string>\n", string_ptr);
          }

          v8 = "\t<false/>\n";
          v9 = 10;
        }

        return fwrite(v8, v9, 1uLL, a3);
      }
    }
  }

  return result;
}

uint64_t sub_10004F238()
{
  if (qword_10007EC98 != -1)
  {
    sub_10005523C();
  }

  return byte_10007ECA0;
}

uint64_t (*sub_10004F290(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 73) >= 0xFFFFFFF7)
  {
    return off_10007A038[5 * (v1 - 64) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_10004F2C4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_10004A9B0();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t *sub_10004F328(uint64_t *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 6) == 1 && *(result + 1) == 40)
  {
    if (*(result + 19) << 16 == 0x100000)
    {
      result = sub_10004A9D8(*(result + 3), *(result + 7));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -300;
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004F3B0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_10004AA7C();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10004F414(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10004AAA4();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10004F470(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_10004AACC();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_10004F4D4(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 73) >= 0xFFFFFFF7 && (v5 = off_10007A038[5 * (v4 - 64) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_10004F564(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 440) >= 0xFFFFFFD8)
  {
    return *(&off_10007A1C0 + 5 * (v1 - 400) + 5);
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_10004F598(unsigned int *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, result[1] != 552) || (result = memchr(result + 8, 0, 0x200uLL)) == 0)
  {
    *(a2 + 32) = -304;
    goto LABEL_7;
  }

  *(a2 + 32) = 0x14000000000000;
  v4 = v3[3];
  v5 = v3[136];
  v6 = v3[137];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_7:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10004F648(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    result = 4294966992;
  }

  else
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 32);
    result = sub_10000E4D0();
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004F6A8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, result[1] != 168) || (result = memchr(result + 8, 0, 0x80uLL)) == 0)
  {
    *(a2 + 32) = -304;
    goto LABEL_7;
  }

  *(a2 + 32) = 0x10000000000000;
  v4 = v3[3];
  v5 = *(v3 + 20);
  result = sub_10000E4D8();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_7:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 64;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10004F768(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 184)
  {
    goto LABEL_7;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_8;
  }

  if (memchr((a1 + 48), 0, 0x80uLL))
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 28);
    v6 = *(a1 + 176);
    result = sub_10000E4D8();
  }

  else
  {
LABEL_7:
    result = 4294966992;
  }

LABEL_8:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004F808(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, result[1] != 188) || (result = memchr(result + 8, 0, 0x80uLL)) == 0)
  {
    *(a2 + 32) = -304;
    goto LABEL_7;
  }

  *(a2 + 32) = 0x13000000000000;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[40];
  v7 = *(v3 + 45);
  result = sub_10000E4E8();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_7:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10004F8BC(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && a1[1] == 164 && memchr(a1 + 8, 0, 0x80uLL))
  {
    v5 = a1[2];
    v4 = a1[3];
    v6 = a1[40];
    result = sub_10000E4D0();
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004F934(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x14000000000000;
  v3 = result[2];
  v4 = result[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10004F9C4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v5 = -304;
LABEL_8:
    *(a2 + 32) = v5;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_8;
  }

  *(a2 + 32) = 0x13000000000000;
  v3 = *(result + 12);
  v4 = *(result + 28);
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_9:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10004FA7C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  *(a2 + 52) = 16777473;
  *(a2 + 68) = 16777473;
  v3 = *(result + 12);
  v4 = *(result + 32);
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(a2 + 88);
  *(a2 + 40) = *(a2 + 84) << 7;
  *(a2 + 56) = v5 << 7;
  *(a2 + 72) = 4 * *(a2 + 92);
  *(a2 + 76) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 96;
  *(a2 + 24) = 3;
  return result;
}

uint64_t sub_10004FB5C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v5 = -304;
LABEL_8:
    *(a2 + 32) = v5;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_8;
  }

  *(a2 + 32) = 0x14000000000000;
  v3 = *(result + 12);
  v4 = *(result + 28);
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_9:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_10004FC14(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 96) = 0;
  *(a2 + 32) = 0x11000000000000;
  *(a2 + 44) = 0x10000000000000;
  *(a2 + 60) = 16777473;
  *(a2 + 76) = (*(a2 + 77) << 8) | 0x2110001;
  v3 = result[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(a2 + 96);
  *(a2 + 64) = *(a2 + 92);
  *(a2 + 80) = v4;
  *(a2 + 84) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 100;
  *(a2 + 24) = 4;
  return result;
}

_DWORD *sub_10004FD00(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10000E4D0();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 164;
    }
  }

  return result;
}

uint64_t sub_10004FD7C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    v5 = *(result + 36);
    v6 = *(result + 40);
    result = sub_10000E4D8();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

uint64_t sub_10004FE04(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 2097) >= 0xFFFFF7FF)
    {
      v7 = a1[11];
      v8 = v7 <= 0x800 && v6 - 48 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0x1FFC) + 48)
      {
        if (memchr(a1 + 12, 0, v6 - 48))
        {
          v9 = a1[3];
          v10 = a1[8];
          v11 = a1[9];
          result = sub_10000E4D0();
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10004FEAC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x13000000000000;
  v3 = result[3];
  v4 = result[8];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10004FF40(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 196)
  {
    goto LABEL_8;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_9;
  }

  if (memchr((a1 + 60), 0, 0x80uLL))
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 28);
    v6 = *(a1 + 40);
    v7 = *(a1 + 188);
    result = sub_10000E4D0();
  }

  else
  {
LABEL_8:
    result = 4294966992;
  }

LABEL_9:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10004FFF4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v8 = -304;
LABEL_9:
    *(a2 + 32) = v8;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 60))
  {
    v8 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  v3 = *(result + 12);
  v4 = *(result + 52);
  v5 = *(result + 56);
  v6 = *(result + 28);
  v7 = *(result + 40);
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_1000500DC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = result[2];
  v4 = result[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100050188(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      result = sub_10000E4D0();
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100050218(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, result[1] == 164) && (result = memchr(result + 8, 0, 0x80uLL)) != 0)
  {
    v4 = v3[3];
    v5 = v3[40];
    result = sub_10000E4D0();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

_DWORD *sub_1000502B4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 84) = 0;
  *(a2 + 36) = (*(a2 + 37) << 8) | 0x2110001;
  *(a2 + 52) = 16777473;
  *(a2 + 68) = 16777473;
  v3 = result[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(a2 + 88);
  *(a2 + 40) = *(a2 + 84);
  *(a2 + 56) = v4 << 7;
  *(a2 + 72) = 4 * *(a2 + 92);
  *(a2 + 76) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 96;
  *(a2 + 24) = 3;
  return result;
}

uint64_t sub_10005039C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v3 = result;
  if (*(result + 24) != 2 || *(result + 4) != 188)
  {
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v7 = -300;
    goto LABEL_10;
  }

  result = memchr((result + 60), 0, 0x80uLL);
  if (!result)
  {
LABEL_9:
    v7 = -304;
LABEL_10:
    *(a2 + 32) = v7;
    goto LABEL_11;
  }

  *(a2 + 32) = 0x14000000000000;
  v4 = v3[3];
  v5 = v3[7];
  v6 = v3[10];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_11:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_100050480(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_10000E4D0();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_100050504(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, result[1] != 160) || (result = memchr(result + 8, 0, 0x80uLL)) == 0)
  {
    *(a2 + 32) = -304;
    goto LABEL_7;
  }

  *(a2 + 32) = 0x14000000000000;
  v4 = v3[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_7:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_1000505AC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 176)
  {
    goto LABEL_7;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_8;
  }

  if (memchr((a1 + 48), 0, 0x80uLL))
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 28);
    result = sub_10000E4D0();
  }

  else
  {
LABEL_7:
    result = 4294966992;
  }

LABEL_8:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100050648(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 64)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      result = sub_10000E4D0();
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000506D0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 68)
  {
    v8 = -304;
LABEL_10:
    *(a2 + 32) = v8;
    goto LABEL_11;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 40) != *(result + 64))
  {
    v8 = -300;
    goto LABEL_10;
  }

  *(a2 + 32) = 0x10000000000000;
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_11:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 52;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_1000507BC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x11000000000000;
  v3 = result[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

void sub_100050848(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 3 || *(a1 + 4) != 88)
  {
    v10 = -304;
LABEL_12:
    *(a2 + 32) = v10;
    goto LABEL_13;
  }

  if (*(a1 + 39) != 1 || *(a1 + 54) != 529 || *(a1 + 70) << 16 != 1114112 || *(a1 + 40) != *(a1 + 80) || *(a1 + 56) != *(a1 + 84))
  {
    v10 = -300;
    goto LABEL_12;
  }

  *(a2 + 72) = 0;
  *(a2 + 36) = 16777473;
  *(a2 + 52) = (*(a2 + 53) << 8) | 0x2110001;
  v4 = *(a1 + 12);
  v5 = *(a1 + 28);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 56);
  v12 = *(a1 + 60);
  v9 = sub_10000E4D0();
  mig_deallocate(*(a1 + 44), (4 * *(a1 + 56)));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  if (v9)
  {
    *(a2 + 32) = v9;
LABEL_13:
    *(a2 + 24) = NDR_record;
    return;
  }

  v11 = *(a2 + 72);
  *(a2 + 40) = *(a2 + 68);
  *(a2 + 56) = v11;
  *(a2 + 60) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 76;
  *(a2 + 24) = 2;
}

_DWORD *sub_1000509B8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = (*(a2 + 37) << 8) | 0x2140001;
  v3 = result[3];
  result = sub_10000E4D0();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_100050A6C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, result[1] != 188) || (result = memchr(result + 8, 0, 0x80uLL)) == 0)
  {
    *(a2 + 32) = -304;
    goto LABEL_7;
  }

  *(a2 + 32) = 0x13000000000000;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[40];
  v7 = *(v3 + 45);
  result = sub_10000E4DC();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_7:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100050B44(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 440) >= 0xFFFFFFD8 && (v5 = *(&off_10007A1C0 + 5 * (v4 - 400) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_100050BD4(unsigned int a1, const char *a2, int a3, const void *a4, unsigned int a5, _DWORD *a6)
{
  memset(v21, 0, 204);
  v19 = 0x14000000000000;
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = 1;
  v18 = a3;
  v20 = NDR_record;
  if (&_mig_strncpy_zerofill)
  {
    v10 = mig_strncpy_zerofill(v21 + 8, a2, 128);
  }

  else
  {
    v10 = mig_strncpy(v21 + 8, a2, 128);
  }

  LODWORD(v21[0]) = 0;
  DWORD1(v21[0]) = v10;
  if (a5 > 8)
  {
    return 4294966989;
  }

  v12 = (v10 + 3) & 0xFFFFFFFC;
  memcpy(v21 + v12 + 12, a4, 8 * a5);
  *(v21 + v12 + 8) = a5;
  v13 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v12 + 8 * a5 + 60;
  *&reply_port.msgh_remote_port = __PAIR64__(v13, a1);
  *&reply_port.msgh_voucher_port = 0xB3500000000;
  v14 = mach_msg2_internal();
  v11 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (reply_port.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (reply_port.msgh_id == 2969)
      {
        if ((reply_port.msgh_bits & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (v17 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && HIWORD(v19) << 16 == 1114112)
          {
            v11 = 0;
            *a6 = v18;
            return v11;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          v11 = 4294966996;
          if (v19)
          {
            if (reply_port.msgh_remote_port)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = v19;
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&reply_port);
      return v11;
    }

    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

  return v11;
}

uint64_t sub_100050E30()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  bzero(&v10, 0x1024uLL);
  v11 = NDR_record;
  if (v4 > 0x1000)
  {
    return 4294966989;
  }

  __memcpy_chk();
  v12 = v4;
  reply_port = mig_get_reply_port();
  v10.msgh_bits = 5395;
  v10.msgh_size = ((v4 + 3) & 0x3FFC) + 36;
  *&v10.msgh_remote_port = __PAIR64__(reply_port, v5);
  *&v10.msgh_voucher_port = 0xB4000000000;
  v8 = mach_msg2_internal();
  v6 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v10.msgh_local_port);
  }

  else
  {
    if (!v8)
    {
      if (v10.msgh_id == 71)
      {
        v6 = 4294966988;
      }

      else if (v10.msgh_id == 2980)
      {
        if ((v10.msgh_bits & 0x80000000) != 0)
        {
          v6 = 4294966996;
          if (*&v11.mig_vers == 1 && v10.msgh_size == 40 && !v10.msgh_remote_port && v13 << 16 == 1114112)
          {
            v6 = 0;
            *v2 = *&v11.int_rep;
            return v6;
          }
        }

        else if (v10.msgh_size == 36)
        {
          v6 = 4294966996;
          if (v12)
          {
            if (v10.msgh_remote_port)
            {
              v6 = 4294966996;
            }

            else
            {
              v6 = v12;
            }
          }
        }

        else
        {
          v6 = 4294966996;
        }
      }

      else
      {
        v6 = 4294966995;
      }

      mach_msg_destroy(&v10);
      return v6;
    }

    mig_dealloc_reply_port(v10.msgh_local_port);
  }

  return v6;
}

uint64_t sub_100051040(unsigned int a1, const char *a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  memset(&reply_port, 0, sizeof(reply_port));
  v8 = NDR_record;
  if (&_mig_strncpy_zerofill)
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 128);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  reply_port.msgh_bits = 5395;
  reply_port.msgh_size = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&reply_port.msgh_voucher_port = 0xB4700000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&reply_port);
  }

  return v5;
}

uint64_t sub_100051218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = *(a1 + 20) + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (*(a1 + 20) == 5300)
  {
    if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      v4 = *(a1 + 40);
      *(a2 + 32) = sub_1000310C4(*(a1 + 12), *(a1 + 32));
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

char *sub_1000512D8(char *result, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  v9 = 0;
  if (a2 <= 1 || *result != 7)
  {
    return &unk_10007A860;
  }

  v3 = &result[32 * a2];
  v4 = (v3 - 32);
  if (v3 < 0x20 || v4 < result)
  {
    goto LABEL_17;
  }

  if (*v4 != 8)
  {
    return &unk_10007A860;
  }

  v8 = &result[32 * a2];
  if ((result + 32) > v3 || result + 32 < result)
  {
LABEL_17:
    __break(0x5519u);
    return result;
  }

  v7 = result + 32;
  result = sub_10005413C(result, &v7, &v9);
  if (result == &unk_10007A840)
  {
    if (v7 == v8)
    {
      ccder_sizeof();
      *a3 = ccder_sizeof();
      return &unk_10007A840;
    }

    else
    {
      return &unk_10007A880;
    }
  }

  return result;
}

uint64_t sub_1000513C4(uint64_t result, _DWORD *a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v25 = 0;
  v26 = 0;
  if (a5 > a6)
  {
    goto LABEL_37;
  }

  v11 = result;
  v25 = a5;
  v26 = a6;
  if (a6 > a5 && ((a4 - 1) & 0x8000000000000000) == 0)
  {
    v12 = a3 + 32 * a4;
    v13 = (v12 - 32);
    v14 = a4;
    do
    {
      if (v13 < a3 || (v13 + 4) > v12)
      {
        goto LABEL_37;
      }

      v15 = *v13;
      if (*v13 > 4)
      {
        switch(v15)
        {
          case 5:
            v16 = v13[2];
            break;
          case 7:
            v18 = v13[2];
            break;
          case 9:
            if (v13 >= v12 || __CFADD__(v13[1], v13[2]))
            {
              goto LABEL_37;
            }

            goto LABEL_21;
          default:
            goto LABEL_27;
        }

        result = ccder_blob_encode_tl();
        if ((result & 1) == 0)
        {
          return &unk_10007A860;
        }
      }

      else
      {
        if ((v15 - 2) < 2)
        {
          if (v13 >= v12 || __CFADD__(v13[1], v13[2]))
          {
            goto LABEL_37;
          }

LABEL_21:
          result = ccder_blob_encode_body_tl();
          if ((result & 1) == 0)
          {
            return &unk_10007A860;
          }

          goto LABEL_27;
        }

        if (v15 == 1)
        {
          v22 = 0;
          v23 = 0;
          v17 = v13[2];
          ccder_blob_reserve_tl();
          return &unk_10007A860;
        }

        if (v15 == 4)
        {
          result = sub_1000542E8(&v25, v13[1]);
          if ((result & 1) == 0)
          {
            return &unk_10007A860;
          }
        }
      }

LABEL_27:
      v13 -= 4;
    }

    while (v14-- > 1);
  }

  result = sub_1000542E8(&v25, 1uLL);
  if ((result & 1) == 0)
  {
    return &unk_10007A880;
  }

  if (!a4)
  {
LABEL_37:
    __break(0x5519u);
    return result;
  }

  v20 = *(a3 + 16);
  ccder_sizeof();
  ccder_sizeof();
  if ((ccder_blob_encode_tl() & 1) == 0)
  {
    return &unk_10007A880;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = sub_1000528BC(v11, a2, &v22, a5, a6);
  result = &unk_10007A840;
  if (v21 != &unk_10007A840)
  {
    cc_clear();
    return v21;
  }

  return result;
}

unint64_t sub_100051620(unint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  if ((*(a2 + 33) & 1) == 0)
  {
    goto LABEL_43;
  }

  v6 = *a2;
  v7 = *a2 + 64;
  v8 = *a3;
  v9 = *a3 & 0xBFFFFFFFFFFFFFFFLL;
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          if (v9 != 2)
          {
            goto LABEL_197;
          }

          if (a2 + 56 >= a2)
          {
            v10 = *(a2 + 32);
            *(result + 16) = *(a2 + 16);
            *(result + 32) = v10;
            *result = *a2;
            *(result + 48) = *(a2 + 48);
            *(result + 33) = 0;
            *(result + 8) = 0;
            *(result + 16) = 0;
            v11 = *(a3 + 8);
            v92 = 0uLL;
            *v89 = *(a2 + 40);
            result = sub_10005378C(v6, 0, 0, &v92, v89);
            if (result)
            {
              v12 = v92 < *(&v92 + 1);
              if (v92 >= *(&v92 + 1) || v11 < 1)
              {
                v13 = v11;
LABEL_159:
                if (!v12 || v13 != 0)
                {
                  return result;
                }

                if (v6 < v7)
                {
                  result = sub_10005378C(v6, 0, (v4 + 40), 0, &v92);
                  *(v4 + 33) = result;
                  return result;
                }
              }

              else
              {
                while (1)
                {
                  result = sub_10005378C(v6, 0, 0, 0, &v92);
                  if ((result & 1) == 0)
                  {
                    break;
                  }

                  v13 = v11 - 1;
                  v12 = v92 < *(&v92 + 1);
                  if (v92 >= *(&v92 + 1) || v11-- <= 1)
                  {
                    goto LABEL_159;
                  }
                }

                v47 = *(v6 + 24);
                if (!v47)
                {
                  return result;
                }

                if (v6 < v7)
                {
                  v48 = "encountered invalid element in an array";
                  goto LABEL_177;
                }
              }
            }

            else
            {
              v47 = *(v6 + 24);
              if (!v47)
              {
                return result;
              }

              if (v6 < v7)
              {
                v48 = "array decoding failure";
LABEL_177:
                v61 = "der_vm_execute_select_index";
                return v47(v6, "[%s]: %s\n", v61, v48);
              }
            }
          }

          goto LABEL_196;
        }

        if (a2 + 56 < a2)
        {
          goto LABEL_196;
        }

        v33 = *(a2 + 16);
        v92 = *a2;
        v93 = v33;
        LOBYTE(v94) = *(a2 + 32);
        *v89 = *(a2 + 34);
        *&v89[14] = *(a2 + 48);
        v34 = (a3 + 8);
        *(&v92 + 1) = 0;
        *&v93 = 0;
        if ((v8 & 0x4000000000000000) != 0)
        {
          v34 = *v34;
          v35 = 16;
        }

        else
        {
          v35 = 248;
        }

        *v82 = *(a3 + v35);
        v49 = *(a2 + 16);
        if (v49)
        {
          v50 = v34;
          v51 = 0;
          v7 = *(a2 + 40);
          *(result + 48) = *(a2 + 48);
          v52 = *(a2 + 32);
          *(result + 16) = *(a2 + 16);
          *(result + 32) = v52;
          *result = *a2;
          *(result + 33) = 0;
          *(result + 8) = 0;
          *(result + 16) = 0;
          v53 = v49 - 1;
          v54 = *(a2 + 8);
          while (1)
          {
            v55 = (v51 + v53) >> 1;
            v56 = *(v54 + 8 * v55);
            v6 = HIDWORD(v56);
            result = sub_100053D74(v50, *v82, (v7 + v56), HIDWORD(v56));
            if (!result)
            {
              break;
            }

            if ((result & 0x80000000) != 0)
            {
              if (v51 + v53 < 2)
              {
                return result;
              }

              v53 = v55 - 1;
            }

            else
            {
              v51 = v55 + 1;
            }

            if (v51 > v53)
            {
              return result;
            }
          }

          *(v4 + 33) = 1;
          v67 = *(v4 + 40);
          v68 = v67 + (HIDWORD(v56) + v56);
          if (v68 <= *(v4 + 48) && v67 <= v68)
          {
            *(v4 + 40) = v68;
            return result;
          }

          goto LABEL_196;
        }

        __s1 = 0;
        v88 = 0;
        v86 = *(a2 + 40);
        result = sub_10005378C(v6, 0, 0, &__s1, &v86);
        if (result)
        {
          if (*v82)
          {
            while (1)
            {
              if (__s1 >= v88)
              {
                goto LABEL_187;
              }

              v84 = 0;
              v85 = 0;
              v83 = 0uLL;
              if (v6 >= v7)
              {
                goto LABEL_196;
              }

              result = sub_100053DEC(v6, &v84, &v83, &__s1);
              if ((result & 1) == 0)
              {
                break;
              }

              result = sub_100053D74(v34, *v82, v84, v85);
              if (!result)
              {
                *&v89[6] = v83;
                LOBYTE(v62) = 1;
LABEL_193:
                v80 = v93;
                *v4 = v92;
                *(v4 + 16) = v80;
                *(v4 + 32) = v94;
                *(v4 + 33) = v62;
                goto LABEL_188;
              }
            }

            v62 = *(v6 + 24);
            if (v62)
            {
              result = v62(v6, "[%s]: %s\n", "der_vm_execute_select_key", "invalid dictionary element");
              LOBYTE(v62) = 0;
            }

            goto LABEL_193;
          }

          v76 = *(v6 + 24);
          if (!v76)
          {
            goto LABEL_187;
          }

          if (v6 >= v7)
          {
            goto LABEL_196;
          }

          v77 = "key length is invalid";
        }

        else
        {
          v76 = *(v6 + 24);
          if (!v76)
          {
            goto LABEL_187;
          }

          if (v6 >= v7)
          {
            goto LABEL_196;
          }

          v77 = "dictionary decoding failure";
        }

        result = v76(v6, "[%s]: %s\n", "der_vm_execute_select_key", v77);
LABEL_187:
        v78 = v93;
        *v4 = v92;
        *(v4 + 16) = v78;
        *(v4 + 32) = v94;
        *(v4 + 33) = 0;
LABEL_188:
        *(v4 + 34) = *v89;
        v26 = *&v89[14];
        goto LABEL_44;
      }

      v24 = *(v6 + 24);
      if (v24)
      {
        if (v6 >= v7)
        {
          goto LABEL_196;
        }

        result = v24(v6, "[%s]: %s\n", "der_vm_execute_nocopy", "noop");
      }

LABEL_43:
      v25 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v25;
      *(v4 + 32) = *(a2 + 32);
      v26 = *(a2 + 48);
LABEL_44:
      *(v4 + 48) = v26;
      return result;
    }

    if (v9 == 3)
    {
      if (a2 + 56 >= a2)
      {

        return sub_100052C78(result, a2, a3);
      }

      goto LABEL_196;
    }

    if (v9 == 4)
    {
      if (a2 + 56 >= a2)
      {

        return sub_100052E40(result, a2, a3);
      }

      goto LABEL_196;
    }

    if (a2 + 56 >= a2)
    {
      v18 = *(a2 + 32);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v18;
      *result = *a2;
      *(result + 48) = *(a2 + 48);
      *(result + 33) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      v89[0] = 0;
      v92 = *(a2 + 40);
      result = sub_10005399C(v6);
      if ((result & 1) == 0)
      {
        v47 = *(v6 + 24);
        if (!v47)
        {
          return result;
        }

        if (v6 < v7)
        {
          v48 = "BOOL decode failure";
          v61 = "der_vm_execute_match_BOOL";
          return v47(v6, "[%s]: %s\n", v61, v48);
        }

        goto LABEL_196;
      }

      v19 = *(a3 + 8) == v89[0];
      goto LABEL_36;
    }

    do
    {
LABEL_196:
      __break(0x5519u);
LABEL_197:
      ;
    }

    while (v6 >= v7);
    v81 = (*(v6 + 32))(v6, "[%s]: %s\n", "der_vm_execute_nocopy", "unhandled opcode");
    return sub_100052248(v81);
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      if (a2 + 56 < a2)
      {
        goto LABEL_196;
      }

      v27 = *(a2 + 32);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v27;
      *result = *a2;
      *(result + 48) = *(a2 + 48);
      *(result + 33) = 0;
      v28 = (a3 + 8);
      *(result + 8) = 0;
      *(result + 16) = 0;
      if ((v8 & 0x4000000000000000) != 0)
      {
        v28 = *v28;
        v29 = 16;
      }

      else
      {
        v29 = 248;
      }

      v40 = *(a3 + v29);
      v41 = *(a2 + 16);
      v92 = *a2;
      v93 = v41;
      v94 = *(a2 + 32);
      v95 = *(a2 + 48);
      result = sub_10005238C(&v92, 0);
      if (result != 2)
      {
        if (result != 4)
        {
          v47 = *(v6 + 24);
          if (!v47)
          {
            return result;
          }

          if (v6 < v7)
          {
            v48 = "Unexpected type to match against";
            v61 = "der_vm_execute_string_value_allowed";
            return v47(v6, "[%s]: %s\n", v61, v48);
          }

          goto LABEL_196;
        }

        result = sub_100052C78(&v92, a2, a3);
        v23 = BYTE1(v94);
        if (BYTE1(v94) != 1)
        {
          v42 = *(a2 + 16);
          *v89 = *a2;
          *&v89[16] = v42;
          v90 = *(a2 + 32);
          v91 = *(a2 + 48);
          result = sub_1000526F0(v89);
          if (!v43)
          {
            return result;
          }

          v44 = v43 - 1;
          v45 = (result + v43 - 1);
          if (v45 >= result + v43 || v45 < result)
          {
            goto LABEL_196;
          }

          if (*v45 != 42)
          {
            return result;
          }

          if (v44 > v43)
          {
            goto LABEL_196;
          }

          if (v43 != 1)
          {
            if (v44 > v40)
            {
LABEL_107:
              v23 = 0;
              goto LABEL_39;
            }

            v46 = v28;
LABEL_190:
            result = memcmp(result, v46, v44);
            v19 = result == 0;
LABEL_36:
            v23 = v19;
            goto LABEL_39;
          }

LABEL_178:
          v23 = 1;
        }

LABEL_39:
        *(v4 + 33) = v23;
        return result;
      }

      *v89 = v4;
      *&v89[8] = a3;
      v63 = *(a2 + 16);
      v92 = *a2;
      v93 = v63;
      v94 = *(a2 + 32);
      v95 = *(a2 + 48);
      v64 = sub_100052F50;
    }

    else
    {
      if (v9 == 7)
      {
        if (a2 + 56 >= a2)
        {

          return sub_100052D74(result, a2, a3);
        }

        goto LABEL_196;
      }

      if (a2 + 56 < a2)
      {
        goto LABEL_196;
      }

      v15 = *(a2 + 32);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v15;
      *result = *a2;
      *(result + 48) = *(a2 + 48);
      *(result + 33) = 0;
      v16 = (a3 + 8);
      *(result + 8) = 0;
      *(result + 16) = 0;
      if ((v8 & 0x4000000000000000) != 0)
      {
        v16 = *v16;
        v17 = 16;
      }

      else
      {
        v17 = 248;
      }

      v57 = *(a3 + v17);
      v58 = *(a2 + 16);
      v92 = *a2;
      v93 = v58;
      v94 = *(a2 + 32);
      v95 = *(a2 + 48);
      result = sub_10005238C(&v92, 0);
      if (result != 2)
      {
        if (result != 4)
        {
          v47 = *(v6 + 24);
          if (!v47)
          {
            return result;
          }

          if (v6 < v7)
          {
            v48 = "Unexpected type to match against";
            v61 = "der_vm_execute_string_prefix_value_allowed";
            return v47(v6, "[%s]: %s\n", v61, v48);
          }

          goto LABEL_196;
        }

        result = sub_100052E40(&v92, a2, a3);
        v23 = BYTE1(v94);
        if (BYTE1(v94) != 1)
        {
          v59 = *(a2 + 16);
          *v89 = *a2;
          *&v89[16] = v59;
          v90 = *(a2 + 32);
          v91 = *(a2 + 48);
          result = sub_1000526F0(v89);
          if (v57)
          {
            if (v57 > v60)
            {
              goto LABEL_107;
            }

            v79 = result;
            result = v16;
            v46 = v79;
            v44 = v57;
            goto LABEL_190;
          }

          goto LABEL_178;
        }

        goto LABEL_39;
      }

      *v89 = v4;
      *&v89[8] = a3;
      v66 = *(a2 + 16);
      v92 = *a2;
      v93 = v66;
      v94 = *(a2 + 32);
      v95 = *(a2 + 48);
      v64 = sub_1000530A4;
    }

    return sub_100052408(&v92, v89, v64);
  }

  if (v9 != 9)
  {
    if (v9 != 10)
    {
      if (v9 != 11)
      {
        goto LABEL_197;
      }

      if (a2 + 56 < a2)
      {
        goto LABEL_196;
      }

      v20 = *(a2 + 32);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v20;
      *result = *a2;
      *(result + 48) = *(a2 + 48);
      *(result + 33) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      v21 = *(a3 + 8);
      if ((v21 - 7) < 0xFFFFFFFFFFFFFFFALL)
      {
        return result;
      }

      v22 = *(a2 + 16);
      v92 = *a2;
      v93 = v22;
      v94 = *(a2 + 32);
      v95 = *(a2 + 48);
      result = sub_10005238C(&v92, 0);
      if (!result)
      {
        return result;
      }

      v19 = result == v21;
      goto LABEL_36;
    }

    if (a2 + 56 < a2)
    {
      goto LABEL_196;
    }

    v36 = *(a2 + 16);
    v37 = *(a2 + 32);
    v38 = *a2;
    v39 = *a2;
    *(result + 16) = v36;
    *(result + 32) = v37;
    *result = v38;
    *(result + 48) = *(a2 + 48);
    *(result + 33) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v92 = v39;
    v93 = v36;
    v94 = *(a2 + 32);
    v95 = *(a2 + 48);
    result = sub_10005238C(&v92, 0);
    if (result != 2)
    {
      if (result != 3)
      {
        v47 = *(v6 + 24);
        if (!v47)
        {
          return result;
        }

        if (v6 < v7)
        {
          v48 = "Unexpected type to match against";
          v61 = "der_vm_execute_integer_value_allowed";
          return v47(v6, "[%s]: %s\n", v61, v48);
        }

        goto LABEL_196;
      }

      result = sub_100052D74(&v92, a2, a3);
      v23 = BYTE1(v94);
      if (BYTE1(v94) != 1)
      {
        return result;
      }

      goto LABEL_39;
    }

    *v89 = v4;
    *&v89[8] = a3;
    v65 = *(a2 + 16);
    v92 = *a2;
    v93 = v65;
    v94 = *(a2 + 32);
    v95 = *(a2 + 48);
    v64 = sub_1000531AC;
    return sub_100052408(&v92, v89, v64);
  }

  if (a2 + 56 < a2)
  {
    goto LABEL_196;
  }

  v30 = *(a2 + 32);
  *(result + 16) = *(a2 + 16);
  *(result + 32) = v30;
  *result = *a2;
  *(result + 48) = *(a2 + 48);
  *(result + 33) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v92 = 0uLL;
  *v89 = *(a2 + 40);
  result = sub_10005378C(v6, 0, 0, &v92, v89);
  if ((result & 1) == 0)
  {
    v47 = *(v6 + 24);
    if (!v47)
    {
      return result;
    }

    if (v6 < v7)
    {
      v48 = "dictionary decoding failure";
      goto LABEL_181;
    }

    goto LABEL_196;
  }

  v31 = (a3 + 8);
  if ((*(a3 + 7) & 0x40) != 0)
  {
    v31 = *v31;
    v32 = 16;
  }

  else
  {
    v32 = 248;
  }

  v70 = *(a3 + v32);
  if (!v70)
  {
    v47 = *(v6 + 24);
    if (!v47)
    {
      return result;
    }

    if (v6 < v7)
    {
      v48 = "key length is invalid";
      goto LABEL_181;
    }

    goto LABEL_196;
  }

  if (v92 >= *(&v92 + 1))
  {
    v71 = 0;
LABEL_173:
    *(v4 + 33) = v71;
    return result;
  }

  v71 = 0;
  while (1)
  {
    __s1 = 0;
    v88 = 0;
    v86 = 0uLL;
    if (v6 >= v7)
    {
      v71 = 0;
LABEL_195:
      *(v4 + 33) = v71;
      goto LABEL_196;
    }

    result = sub_100053DEC(v6, &__s1, &v86, &v92);
    if ((result & 1) == 0)
    {
      break;
    }

    if (v88)
    {
      v72 = __s1;
      v73 = __s1 + v88 - 1;
      if (v73 >= __s1 + v88 || v73 < __s1)
      {
        goto LABEL_195;
      }

      if (*v73 == 42)
      {
        if (v88 != 1)
        {
          if (v88 - 1 > v70)
          {
            goto LABEL_156;
          }

          result = memcmp(__s1, v31, v88 - 1);
          if (result)
          {
            goto LABEL_156;
          }
        }

LABEL_155:
        *(v4 + 40) = v86;
        v71 = 1;
        goto LABEL_156;
      }
    }

    else
    {
      v72 = __s1;
    }

    result = sub_100053D74(v31, v70, v72, v88);
    if (!result)
    {
      goto LABEL_155;
    }

LABEL_156:
    if (v92 >= *(&v92 + 1))
    {
      goto LABEL_173;
    }
  }

  *(v4 + 33) = v71;
  v47 = *(v6 + 24);
  if (!v47)
  {
    return result;
  }

  v48 = "invalid dictionary element";
LABEL_181:
  v61 = "der_vm_execute_select_longest_matching_key";
  return v47(v6, "[%s]: %s\n", v61, v48);
}

unint64_t sub_100052248@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if (a2 + 256 < a2)
  {
    __break(0x5519u);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v5 = *(result + 16);
    v6[0] = *result;
    v6[1] = v5;
    v6[2] = *(result + 32);
    v7 = *(result + 48);
    return sub_100051620(a3, v6, a2);
  }

  return result;
}

uint64_t sub_1000522A4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a2 > 17)
  {
    if (a2 <= 0x200000000000000FLL)
    {
      if (a2 == 18)
      {
        return 7;
      }

      if (a2 == 23)
      {
        return 8;
      }

      return 0;
    }

    if (a2 == 0x6000000000000010)
    {
      return 9;
    }

    if (a2 != 0x2000000000000011)
    {
      if (a2 == 0x2000000000000010)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }

  if (a2 <= 1)
  {
    if (a2 != 0xA000000000000010)
    {
      if (a2 == 1)
      {
        return 5;
      }

      return 0;
    }

    return 1;
  }

  switch(a2)
  {
    case 2:
      return 3;
    case 4:
      return 6;
    case 12:
      return 4;
  }

  return 0;
}

uint64_t sub_10005238C(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v4 = *a1;
  v7 = *(a1 + 40);
  result = sub_10005378C(v4, &v8, 0, 0, &v7);
  if (result)
  {
    v6 = v8;
    if (a2)
    {
      *a2 = v8;
    }

    return sub_1000522A4(*(a1 + 24), v6);
  }

  return result;
}

unint64_t sub_100052408(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result + 56 < result)
  {
    goto LABEL_23;
  }

  v3 = result;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v13 = sub_10005261C;
  v14 = &unk_10007A820;
  v15 = a2;
  v16 = a3;
  if ((*(result + 33) & 1) == 0)
  {
    return &unk_10007A860;
  }

  v4 = *result;
  v5 = *result + 64;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  *v26 = *(result + 40);
  result = sub_10005378C(v4, &v29, 0, &v27, v26);
  if (result)
  {
    result = sub_1000522A4(*(v3 + 24), v29);
    if ((result - 3) < 0xFFFFFFFE)
    {
      v6 = *(v4 + 24);
      if (v6)
      {
        if (v4 < v5)
        {
          v6(v4, "[%s]: %s\n", "der_vm_iterate_b", "iteration over a non-iterable type");
          return &unk_10007A860;
        }

        goto LABEL_23;
      }

      return &unk_10007A860;
    }

    v9 = result;
    while (1)
    {
      if (v27 >= v28)
      {
        return &unk_10007A840;
      }

      v10 = *(v3 + 16);
      v11 = *(v3 + 32);
      v17[0] = *v3;
      v17[1] = v10;
      v17[2] = v11;
      v18 = *(v3 + 48);
      v19 = v17[0];
      v20 = v10;
      v21 = v11;
      v22 = v18;
      v23 = v9;
      v24 = 0;
      v25 = 0;
      result = sub_10005378C(*v3, &v29, &v21 + 1, 0, &v27);
      if ((result & 1) == 0)
      {
        break;
      }

      v24 = sub_1000522A4(*(&v20 + 1), v29);
      if ((v13(v12, v17) & 1) == 0)
      {
        return &unk_10007A840;
      }
    }

    v7 = *(v4 + 24);
    if (v7)
    {
      if (v4 < v5)
      {
        v8 = "encountered invalid element in an iterable";
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    return &unk_10007A880;
  }

  v7 = *(v4 + 24);
  if (!v7)
  {
    return &unk_10007A880;
  }

  if (v4 < v5)
  {
    v8 = "iterable decoding failure";
LABEL_12:
    v7(v4, "[%s]: %s\n", "der_vm_iterate_b", v8);
    return &unk_10007A880;
  }

LABEL_23:
  __break(0x5519u);
  return result;
}

uint64_t sub_10005261C(uint64_t a1, uint64_t a2)
{
  *(a2 + 120) = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v3;
  v4 = *(a2 + 112);
  v8[6] = *(a2 + 96);
  v8[7] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  return v2(v8);
}

uint64_t sub_10005266C(uint64_t a1)
{
  v1 = *a1;
  v4 = 0;
  v3 = *(a1 + 40);
  result = sub_10005389C(v1, &v4);
  if (result)
  {
    return v4;
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_integer_from_context", "Attempting to select an integer value from a non-integer DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1000526F0(uint64_t a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *(a1 + 40);
  result = sub_100053A60(v1, v4);
  if (result)
  {
    return v4[0];
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_string_from_context", "Attempting to select a string value from a non-string DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_100052774(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 40);
  result = sub_10005399C(*a1);
  if (result)
  {
    return 0;
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_BOOL_from_context", "Attempting to select a BOOLean value from a non-BOOLean DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1000527F8(uint64_t a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *(a1 + 40);
  result = sub_100053AF8(v1, v4);
  if (result)
  {
    return v4[0];
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_data_from_context", "Attempting to select a data value from a non-data DER object");
  }

  __break(0x5519u);
  return result;
}

void *sub_10005287C(void *result, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = 0;
  if (a3 <= a4)
  {
    return sub_1000528BC(result, &v4, a2, a3, a4);
  }

  __break(0x5519u);
  return result;
}

void *sub_1000528BC(void *result, _DWORD *a2, uint64_t *a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  if (!a3)
  {
    goto LABEL_17;
  }

  *a3 = 0;
  if (a4 > a5)
  {
    __break(0x5519u);
    return result;
  }

  a3[1] = a4;
  a3[2] = a5;
  if (a4 && a4 < a5)
  {
    if (a5 - a4 < 5 || (*a4 == 1836597052 ? (v10 = *(a4 + 4) == 108) : (v10 = 0), !v10))
    {
      v17[1] = a5;
      v17[2] = 0;
      v17[0] = a4;
      if (ccder_blob_decode_tl())
      {
        v26 = 0uLL;
        if (ccder_blob_decode_range())
        {
          v19 = 0;
          if (sub_10005389C(v5, &v19))
          {
            if (v19 != 1)
            {
              v14 = *(v5 + 24);
              if (!v14)
              {
                return &unk_10007A880;
              }

              v15 = "[%s]: entitlements blob has unexpected version %lld\n";
              goto LABEL_28;
            }

            v24 = 0;
            v25 = 0;
            v18 = v26;
            if (ccder_blob_decode_range())
            {
              v23 = 0;
              v20 = v5;
              v21 = 0xA000000000000010;
              v22 = 1;
              LODWORD(v23) = *a2;
              if (sub_100053240(&v20, &v26))
              {
                v11 = 2;
LABEL_23:
                *a3 = v11;
                v13 = &off_10007A8D8;
                return *v13;
              }

              goto LABEL_33;
            }

            v14 = *(v5 + 24);
            if (v14)
            {
LABEL_27:
              v15 = "[%s]: %s\n";
LABEL_28:
              v14(v5, v15);
            }
          }
        }

        else
        {
          v14 = *(v5 + 24);
          if (v14)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v26 = 0uLL;
        v24 = a4;
        v25 = a5;
        if (ccder_blob_decode_range())
        {
          v22 = 0;
          v23 = 0;
          v20 = v5;
          v21 = 0x2000000000000011;
          LODWORD(v23) = *a2;
          if (sub_100053240(&v20, v17))
          {
            v11 = 1;
            goto LABEL_23;
          }

LABEL_33:
          v13 = &off_10007A8E0;
          return *v13;
        }

        v14 = *(v5 + 24);
        if (v14)
        {
          goto LABEL_27;
        }
      }

      return &unk_10007A880;
    }

    v16 = result[3];
    if (v16)
    {
      v16(result, "[%s]: %s\n", "CEValidateWithOptions", "xml-looking blob was passed in");
    }

    return &unk_10007A850;
  }

  else
  {
LABEL_17:
    v12 = result[3];
    if (v12)
    {
      v12(result, "[%s]: %s\n", "CEValidateWithOptions", "invalid arguments passed in");
    }

    return &unk_10007A860;
  }
}

uint64_t sub_100052B74(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3 || !*a2 || !a2[1] || !a2[2])
  {
    v8 = &off_10007A8D0;
    return *v8;
  }

  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = a2[1];
  v4 = a2[2];
  if (*a2 == 2)
  {
    if (v5 <= v4)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = result;
      *(a3 + 24) = xmmword_100057890;
      *(a3 + 40) = v5;
      *(a3 + 48) = v4;
      v6 = *(a3 + 16);
      v9[0] = *a3;
      v9[1] = v6;
      v9[2] = *(a3 + 32);
      v10 = v4;
      sub_100051620(v11, v9, &unk_1000578A0);
      v7 = v11[1];
      *a3 = v11[0];
      *(a3 + 16) = v7;
      *(a3 + 32) = v11[2];
      v4 = v12;
LABEL_12:
      *(a3 + 48) = v4;
      v8 = &off_10007A8D8;
      return *v8;
    }
  }

  else if (v5 <= v4)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = result;
    *(a3 + 24) = xmmword_100057880;
    *(a3 + 40) = v5;
    goto LABEL_12;
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_100052C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 33) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a3 + 8);
  if ((*(a3 + 7) & 0x40) != 0)
  {
    v6 = *v6;
    v7 = 16;
  }

  else
  {
    v7 = 248;
  }

  v8 = *(a3 + v7);
  v15 = 0;
  v16 = 0;
  v14 = *(a2 + 40);
  result = sub_100053A60(v4, &v15);
  if (result)
  {
    v10 = v16;
    result = sub_100053D74(v6, v8, v15, v16);
    if (v8 | v10)
    {
      v11 = result == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    *(a1 + 33) = v12;
  }

  else
  {
    v13 = *(v4 + 24);
    if (v13)
    {
      if (v4 >= v4 + 64)
      {
        __break(0x5519u);
      }

      else
      {
        return v13(v4, "[%s]: %s\n", "der_vm_execute_match_string", "string decode failure");
      }
    }
  }

  return result;
}

uint64_t sub_100052D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 33) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = 0;
  v9 = *(a2 + 40);
  result = sub_10005389C(v5, &v10);
  if (result)
  {
    *(a1 + 33) = v10 == *(a3 + 8);
  }

  else
  {
    v8 = *(v5 + 24);
    if (v8)
    {
      if (v5 >= v5 + 64)
      {
        __break(0x5519u);
      }

      else
      {
        return v8(v5, "[%s]: %s\n", "der_vm_execute_match_integer", "BOOL decode failure");
      }
    }
  }

  return result;
}

uint64_t sub_100052E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 33) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a3 + 8);
  if ((*(a3 + 7) & 0x40) != 0)
  {
    v6 = *v6;
    v7 = 16;
  }

  else
  {
    v7 = 248;
  }

  v8 = *(a3 + v7);
  __s2 = 0;
  v14 = 0;
  v12 = *(a2 + 40);
  result = sub_100053A60(v4, &__s2);
  if (result)
  {
    if (v8)
    {
      if (v8 <= v14)
      {
        result = memcmp(v6, __s2, v8);
        v10 = result == 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }

    *(a1 + 33) = v10;
  }

  else
  {
    v11 = *(v4 + 24);
    if (v11)
    {
      if (v4 >= v4 + 64)
      {
        __break(0x5519u);
      }

      else
      {
        return v11(v4, "[%s]: %s\n", "der_vm_execute_match_string_prefix", "string decode failure");
      }
    }
  }

  return result;
}

unint64_t sub_100052F50(uint64_t *a1)
{
  v2 = a1[15];
  v3 = v2[1];
  v4 = (v3 + 8);
  if ((*(v3 + 7) & 0x40) != 0)
  {
    v4 = *v4;
    v5 = 16;
  }

  else
  {
    v5 = 248;
  }

  if (*(a1 + 29) != 4)
  {
    v8 = *a1;
    v9 = *(*a1 + 24);
    if (v9)
    {
      v9(v8, "[%s]: %s\n", "string_value_allowed_iterate", "Unexpected type to match against during iteration");
    }

    return 1;
  }

  v6 = *(v3 + v5);
  sub_100052C78(v17, (a1 + 7), v3);
  if (v17[33] == 1)
  {
    result = 0;
    *(*v2 + 33) = 1;
    return result;
  }

  v10 = *(a1 + 9);
  v15[0] = *(a1 + 7);
  v15[1] = v10;
  v15[2] = *(a1 + 11);
  v16 = a1[13];
  result = sub_1000526F0(v15);
  if (v11 < 2)
  {
    return 1;
  }

  v12 = v11 - 1;
  v13 = (result + v11 - 1);
  if (v13 >= result + v11 || v13 < result)
  {
    goto LABEL_19;
  }

  if (*v13 != 42)
  {
    return 1;
  }

  if (v12 > v11)
  {
LABEL_19:
    __break(0x5519u);
    return result;
  }

  if (v12 > v6)
  {
    return 1;
  }

  v14 = memcmp(result, v4, v12);
  result = 1;
  if (!v14)
  {
    *(*v2 + 33) = 1;
    return 0;
  }

  return result;
}

uint64_t sub_1000530A4(uint64_t *a1)
{
  v2 = a1[15];
  v3 = v2[1];
  v4 = (v3 + 8);
  if ((*(v3 + 7) & 0x40) != 0)
  {
    v4 = *v4;
    v5 = 16;
  }

  else
  {
    v5 = 248;
  }

  if (*(a1 + 29) == 4)
  {
    v6 = *(v3 + v5);
    sub_100052E40(v15, (a1 + 7), v3);
    if (v15[33] == 1 || (v7 = *(a1 + 9), v13[0] = *(a1 + 7), v13[1] = v7, v13[2] = *(a1 + 11), v14 = a1[13], v8 = sub_1000526F0(v13), !v6) || v6 <= v9 && !memcmp(v4, v8, v6))
    {
      result = 0;
      *(*v2 + 33) = 1;
      return result;
    }
  }

  else
  {
    v11 = *a1;
    v12 = *(*a1 + 24);
    if (v12)
    {
      v12(v11, "[%s]: %s\n", "string_prefix_allowed_iterate", "Unexpected type to match against during iteration");
    }
  }

  return 1;
}

uint64_t sub_1000531AC(uint64_t *a1)
{
  if (*(a1 + 29) == 3)
  {
    v2 = a1[15];
    sub_100052D74(v6, (a1 + 7), v2[1]);
    result = 1;
    if (v6[33] != 1)
    {
      return result;
    }

    *(*v2 + 33) = 1;
  }

  else
  {
    v4 = *a1;
    v5 = *(*a1 + 24);
    if (v5)
    {
      v5(v4, "[%s]: %s\n", "integer_allowed_iterate", "Unexpected type to match against during iteration");
    }
  }

  return 0;
}

uint64_t sub_100053240(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *result + 64;
  if (*(result + 20) > 12)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
      if (v2 < v3)
      {
        goto LABEL_22;
      }

LABEL_87:
      __break(0x5519u);
      return result;
    }

    return 0;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (v2 >= v3)
  {
    goto LABEL_87;
  }

  v5 = result;
  if ((sub_10005378C(v2, &v16, &v14, 0, a2) & 1) == 0)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
LABEL_22:
      v13 = v2;
LABEL_23:
      v4(v13, "[%s]: %s\n");
      return 0;
    }

    return 0;
  }

  if (v16 == *(v5 + 8))
  {
    v6 = *v5;
    v7 = *v5 + 64;
    v20 = 0;
    v21 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      v4 = *(v6 + 24);
      if (!v4)
      {
        return 0;
      }

      if (v6 < v7)
      {
LABEL_36:
        v13 = v6;
        goto LABEL_23;
      }

      goto LABEL_87;
    }

    if (v20 < v21)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v18 = 0;
        v19 = 0;
        v17 = 0uLL;
        result = sub_100053DEC(v6, &v18, &v17, &v20);
        if ((result & 1) == 0)
        {
          v4 = *(v6 + 24);
          if (!v4)
          {
            return 0;
          }

          if (v6 >= v7)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }

        v10 = v18;
        v11 = v19;
        result = memchr(v18, 0, v19);
        if (result)
        {
          v4 = *(v6 + 24);
          if (!v4)
          {
            return 0;
          }

          if (v6 >= v7)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }

        if (*(v5 + 16) == 1 && v8 != 0)
        {
          result = sub_100053D74(v8, v9, v10, v11);
          if ((result & 0x80000000) == 0)
          {
            break;
          }
        }

        ++*(v5 + 20);
        result = sub_100053240(v5, &v17);
        --*(v5 + 20);
        if ((result & 1) == 0)
        {
          v4 = *(v6 + 24);
          if (!v4)
          {
            return 0;
          }

          if (v6 >= v7)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }

        v8 = v18;
        v9 = v19;
        if (v20 >= v21)
        {
          goto LABEL_62;
        }
      }

      v4 = *(v6 + 24);
      if (!v4)
      {
        return 0;
      }

      if (v6 < v7)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }

LABEL_62:
    if (v14 == v15)
    {
      return 1;
    }

    v4 = *(v2 + 24);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v16 > 17)
  {
    if (v16 <= 0x200000000000000FLL)
    {
      if (v16 == 18)
      {
        if (*(v5 + 25) != 1)
        {
          v4 = *(v2 + 24);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if ((sub_100053B90(v2, &v20) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v16 == 23)
      {
        if (*(v5 + 26) != 1)
        {
          v4 = *(v2 + 24);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if ((sub_100053C28(v2, &v20) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v16 == 0x2000000000000010)
      {
        if ((sub_1000536A8(v5) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v16 == 0x2000000000000011 || v16 == 0x6000000000000010)
      {
        if (*(v5 + 27) != 1)
        {
          v4 = *(v2 + 24);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if ((sub_100053CC0(v2, &v20) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }
    }

LABEL_68:
    v4 = *(v2 + 24);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v16 <= 3)
  {
    if (v16 == 1)
    {
      if ((sub_10005399C(v2) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_62;
    }

    if (v16 == 2)
    {
      if ((sub_10005389C(v2, 0) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_62;
    }

    goto LABEL_68;
  }

  if (v16 == 4)
  {
    if (*(v5 + 24) != 1)
    {
      v4 = *(v2 + 24);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_22;
    }

    if ((sub_100053AF8(v2, &v20) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_62;
  }

  if (v16 != 12)
  {
    goto LABEL_68;
  }

  v20 = 0;
  v21 = 0;
  result = sub_100053A60(v2, &v20);
  if (result)
  {
    if (memchr(v20, 0, v21))
    {
      v4 = *(v2 + 24);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_22;
    }

    goto LABEL_62;
  }

  return result;
}

uint64_t sub_1000536A8(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v5 = 0;
  v6 = 0;
  result = ccder_blob_decode_sequence_tl();
  if (result)
  {
    return 1;
  }

  v4 = *(v1 + 24);
  if (!v4)
  {
    return 0;
  }

  if (v1 < v2)
  {
    v4(v1, "[%s]: %s\n", "der_validate_array", "array decoding failure");
    return 0;
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_10005378C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v11 = *a5;
  v10 = a5[1];
  if ((ccder_blob_decode_tag() & 1) == 0)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = "could not decode tag for next DER sub-sequence";
LABEL_8:
      v13(a1, "[%s]: %s\n", "der_decode_next", v14);
    }

    return 0;
  }

  if ((ccder_blob_decode_len() & 1) == 0)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = "could not decode size for next DER sub-sequence";
      goto LABEL_8;
    }

    return 0;
  }

  v12 = *a5;
  a5[1];
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = v11;
    a3[1] = v12;
  }

  if (a4)
  {
    *a4 = v12;
    a4[1] = v12;
  }

  *a5 = v12;
  a5[1] = v10;
  return 1;
}

uint64_t sub_10005389C(uint64_t a1, void *a2)
{
  if (ccder_blob_decode_range())
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 1;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v4(a1, "[%s]: %s\n", "der_decode_number", "unknown number encoding");
    }

    return 0;
  }
}

uint64_t sub_10005399C(uint64_t a1)
{
  if (ccder_blob_decode_range())
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = "BOOLean should be exactly 1 byte";
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = "Unknown BOOLean encoding";
LABEL_6:
      v2(a1, "[%s]: %s\n", "der_decode_BOOLean", v3);
    }
  }

  return 0;
}

uint64_t sub_100053A60(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_string", "Unknown string encoding");
    }
  }

  return v4;
}

uint64_t sub_100053AF8(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_data", "Unknown data encoding");
    }
  }

  return v4;
}

uint64_t sub_100053B90(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_numeric_string", "Unknown numeric string encoding");
    }
  }

  return v4;
}

uint64_t sub_100053C28(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_utc_time", "Unknown UTC Time encoding");
    }
  }

  return v4;
}

uint64_t sub_100053CC0(uint64_t a1, void *a2)
{
  if (ccder_blob_decode_range() & 1) != 0 || (ccder_blob_decode_range())
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }

    return 1;
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_entitlements", "Unknown DER entitlements encoding");
    }

    return 0;
  }
}

uint64_t sub_100053D74(void *__s1, size_t a2, void *__s2, size_t a4)
{
  result = 0xFFFFFFFFLL;
  if (__s1 && a2)
  {
    if (__s2)
    {
      if (a2 >= a4)
      {
        v8 = a4;
      }

      else
      {
        v8 = a2;
      }

      if (a2 < a4)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      LODWORD(result) = memcmp(__s1, __s2, v8);
      if (a2 != a4 && result == 0)
      {
        return v9;
      }

      else
      {
        return result;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100053DEC(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  if (ccder_blob_decode_sequence_tl())
  {
    if (sub_100053A60(a1, a2) && a2[1])
    {
      if ((ccder_blob_decode_tag() & 1) == 0)
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          return 0;
        }

        v9 = "unable to decode value tag for key-value pair";
        goto LABEL_13;
      }

      if ((ccder_blob_decode_len() & 1) == 0)
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          return 0;
        }

        v9 = "unable to decode value size for key-value pair";
        goto LABEL_13;
      }

      if (!*a4)
      {
        *a3 = 0uLL;
        return 1;
      }

      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = "key-value pair contains extra elements";
LABEL_13:
        v8(a1, "[%s]: %s\n", "der_decode_key_value", v9);
      }
    }

    else
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = "dictionary key is not a valid string";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = "key / value decoding failure";
      goto LABEL_13;
    }
  }

  return 0;
}

char *sub_100053F2C(uint64_t *a1, char **a2, uint64_t *a3)
{
  if (!a1)
  {
    return &unk_10007A860;
  }

  v5 = *a1;
  if (*a1 <= 4)
  {
    switch(v5)
    {
      case 1:
        a1[2] = 1;
        break;
      case 2:
        v18 = a1[2];
        break;
      case 4:
        v6 = a1[1];
        v7 = HIBYTE(v6);
        if (HIBYTE(v6) - 255 > 0xFFFFFF01)
        {
          v19 = 8;
        }

        else
        {
          v8 = 9;
          v9 = 48;
          v10 = 1;
          while ((v8 - 2) >= 2)
          {
            v11 = v6 >> v9;
            --v8;
            v9 -= 8;
            if (v7 != v11)
            {
              v10 = v8 - 1;
              goto LABEL_35;
            }
          }

          v8 = 2;
LABEL_35:
          if ((((v6 >> (8 * v10 - 8)) ^ v7) & 0x80) != 0)
          {
            v19 = v8;
          }

          else
          {
            v19 = v10;
          }
        }

        *a3 = ccder_sizeof();
        a1[2] = v19;
        return &unk_10007A840;
      default:
        return &unk_10007A860;
    }

LABEL_28:
    *a3 = ccder_sizeof();
    return &unk_10007A840;
  }

  switch(v5)
  {
    case 5:
      while (1)
      {
        result = *a2;
        v15 = a2[1];
        if (*a2 >= v15)
        {
          return &unk_10007A880;
        }

        v16 = result + 32;
        if ((result + 32) > v15 || result >= v16)
        {
          break;
        }

        *a2 = v16;
        if (!result)
        {
          return &unk_10007A880;
        }

        if (*result == 6)
        {
          *a3 = ccder_sizeof();
          a1[2] = 0;
          return &unk_10007A840;
        }

        if (result >= v16)
        {
          break;
        }

        result = sub_100053F2C();
        if (result != &unk_10007A840)
        {
          return result;
        }
      }

      __break(0x5519u);
      break;
    case 7:

      return sub_10005413C();
    case 9:
      v13 = a1[2];
      goto LABEL_28;
    default:
      return &unk_10007A860;
  }

  return result;
}

uint64_t sub_10005413C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 8);
  while (1)
  {
    if (v7 >= v8)
    {
      return &unk_10007A880;
    }

    v9 = v7 + 32;
    if ((v7 + 32) > v8 || v7 > v9)
    {
      break;
    }

    *a2 = v9;
    if (!v7)
    {
      return &unk_10007A880;
    }

    if (*v7 != 5)
    {
      if (*v7 == 8)
      {
        *a3 = ccder_sizeof();
        *(v5 + 16) = v6;
        return &unk_10007A840;
      }

      return &unk_10007A880;
    }

    v7[24] = 1;
    if (v9 >= v8)
    {
      return &unk_10007A880;
    }

    v10 = v7 + 64;
    if ((v7 + 64) > v8 || v9 > v10)
    {
      break;
    }

    *a2 = v10;
    if (v7 == -32 || *v9 != 3 || !*(v7 + 6))
    {
      return &unk_10007A880;
    }

    v11 = ccder_sizeof();
    result = 0;
    v15 = 0;
    if (v10 < v8)
    {
      v12 = v7 + 96;
      if ((v7 + 96) > v8 || v10 > v12)
      {
        break;
      }

      *a2 = v12;
      result = (v7 + 64);
    }

    result = sub_100053F2C(result, a2, &v15);
    if (result != &unk_10007A840)
    {
      return result;
    }

    v13 = *a2;
    v8 = *(a2 + 8);
    if (*a2 >= v8)
    {
      return &unk_10007A880;
    }

    v14 = v13 + 32;
    if ((v13 + 32) > v8 || v13 > v14)
    {
      break;
    }

    *a2 = v14;
    if (!v13 || *v13 != 6)
    {
      return &unk_10007A880;
    }

    v13[24] = 1;
    *(v7 + 2) = v15 + v11;
    result = ccder_sizeof();
    v6 += result;
    v7 = v14;
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1000542E8(uint64_t a1, unint64_t a2)
{
  if (HIBYTE(a2) - 255 <= 0xFFFFFF01)
  {
    v2 = 9;
    v3 = 48;
    do
    {
      if ((v2 - 2) < 2)
      {
        break;
      }

      v4 = a2 >> v3;
      --v2;
      v3 -= 8;
    }

    while (HIBYTE(a2) == v4);
  }

  return ccder_blob_reserve_tl();
}

void sub_100054404()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100054420()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_10005443C(uint64_t a1)
{
  result = _os_assumes_log_ctx();
  *(a1 + 1408) |= 1uLL;
  return result;
}

void sub_100054490(int a1)
{
  qword_10007DCB8 = "Bug in libxpc: mach_port_construct() failed";
  qword_10007DCE8 = a1;
  __break(1u);
}

void sub_1000544B8(int a1)
{
  qword_10007DCB8 = "Bug in libxpc: mach_port_assert_attributes() failed";
  qword_10007DCE8 = a1;
  __break(1u);
}

void sub_10005453C()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10005457C(const char *a1)
{
  _os_assumes_log();
  v2 = *__error();
  v3 = *__error();
  v4 = xpc_strerror();
  sub_10004749C(4, "Failed to set %s: %d - %s", a1, v2, v4);
}

void sub_100054610(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a1)
  {
    v4 = *(a3 + 16);
    v6 = *(a1 + 16);
    sub_10004749C(65539, "SERVICE CACHE DELETE UNEXPECTEDLY DELAYED: %s replaced: %s by %s, %s by %s");
  }

  else
  {
    v5 = *a2;
    sub_10004749C(65539, "SERVICE CACHE DELETE INVARIANT VIOLATED: %s not found");
  }
}

void sub_100054690()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000546C8()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_100054DE8()
{
  v0 = *__error();
  sub_10002B93C();
  return _os_assumes_log_ctx();
}

void sub_100054E1C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100054E38()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_100054E5C(int a1, uint64_t a2, char a3)
{
  strerror(a1);
  sub_100020018(a2, 5, "could not signal service for %s: %d: %s", v5, v6, v7, v8, v9, a3);
  sub_10002B93C();
  return _os_assumes_log_ctx();
}

uint64_t sub_100054EC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002C908(a1, 3, "Bootout error: %d", a4, a5, a6, a7, a8, a2);
  sub_10003DCDC();
  return _os_assumes_log_ctx();
}

void sub_100054F3C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_100054F58()
{
  v0 = *__error();
  sub_10003DCDC();
  return _os_assumes_log_ctx();
}

void sub_100054F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022158(a1, 1);
  v5 = sub_10002C974(a2, 1);
  sub_1000168E0("%s is being deactivated by a mismatched domain %s. Managed:%d.", v4, v5, *(a1 + 296) != 0);
  _os_crash();
  __break(1u);
}

void sub_100054FEC(uint64_t a1, uint64_t a2)
{
  sub_10003DD30(a1, a2);
  v4 = sub_10003DCF0();
  sub_1000168E0("underflow of service activation count during deactivate. Managed:%d. Domain: %s. Service:%s", v3, v2, v4);
  _os_crash();
  __break(1u);
}

void sub_100055028(uint64_t a1, uint64_t a2)
{
  sub_10003DD30(a1, a2);
  v4 = sub_10003DCF0();
  sub_1000168E0("overflow of service activation count during deactivation. Managed:%d. Domain: %s. Service:%s", v3, v2, v4);
  _os_crash();
  __break(1u);
}

void sub_100055064(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022158(a1, 1);
  v5 = sub_10002C974(a2, 1);
  sub_1000168E0("%s is being activated by a mismatched domain %s. Managed:%d.", v4, v5, *(a1 + 296) != 0);
  _os_crash();
  __break(1u);
}

void sub_1000550C4(uint64_t a1)
{
  sub_10003DD0C(a1);
  v3 = sub_10003DCF0();
  sub_1000168E0("underflow of service activation count during activate. Managed:%d. Domain:'%s'. Service:'%s'", v2, v1, v3);
  _os_crash();
  __break(1u);
}

void sub_100055100(uint64_t a1)
{
  sub_10003DD0C(a1);
  v3 = sub_10003DCF0();
  sub_1000168E0("overflow of service activation count during activate. Managed:%d. Domain:'%s'. Service:'%s'", v2, v1, v3);
  _os_crash();
  __break(1u);
}

int *sub_100055194(int *a1)
{
  v2 = *__error();
  _os_assumes_log();
  return sub_1000413F8(a1);
}

void sub_1000551EC(unsigned int a1)
{
  qword_10007DCB8 = "libdispatch bug: Unknown receive-right";
  qword_10007DCE8 = a1;
  __break(1u);
}

void sub_100055214(unsigned int a1)
{
  qword_10007DCB8 = "libdispatch bug: Unknown send-right";
  qword_10007DCE8 = a1;
  __break(1u);
}