void sub_100000FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000118C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100008158)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000012D8;
    v4[4] = &unk_100004140;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/DiagnosticExtensions.framework/DiagnosticExtensions";
    qword_100008158 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100008158)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DEAttachmentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_100008150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000012D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008158 = result;
  return result;
}