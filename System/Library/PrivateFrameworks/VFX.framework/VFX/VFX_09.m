uint64_t sub_1AF16B950(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void sub_1AF16B998(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[3];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[3] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[3] = v13;
    v14 = a1[4];
    if (v14)
    {
      sub_1AF1B66E4(v14, cf);
    }

    v15 = a1[5];
    if (v15)
    {
      sub_1AF1CA4DC(v15);
    }

    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t sub_1AF16BA50(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

void sub_1AF16BA98(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 32);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      *(a1 + 32) = CFRetain(cf);
      sub_1AF1B66E4(cf, *(a1 + 24));
    }

    else
    {
      *(a1 + 32) = 0;
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      sub_1AF1CA4DC(v13);
    }

    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t sub_1AF16BB4C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

void sub_1AF16BB94(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[5];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[5] = 0;
    }

    if (cf)
    {
      a1[5] = CFRetain(cf);
      sub_1AF1CA4DC(cf);
    }

    else
    {
      a1[5] = 0;
    }

    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t sub_1AF16BC38(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

void sub_1AF16BC80(void *a1, const __CFArray *cf)
{
  v2 = cf;
  if (cf && !CFArrayGetCount(cf))
  {
    v2 = 0;
  }

  v4 = a1[6];
  if (v4 != v2)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[6] = 0;
    }

    if (v2)
    {
      v5 = CFRetain(v2);
    }

    else
    {
      v5 = 0;
    }

    a1[6] = v5;
    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
    v6 = a1[2];

    sub_1AF1B78DC(v6);
  }
}

void sub_1AF16BD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF16BD94;
  v3[3] = &unk_1E7A7AE68;
  v3[4] = a2;
  sub_1AF28A5FC(v2, v3);
}

uint64_t sub_1AF16BD94(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF16C160;
  v6[3] = &unk_1E7A7AEB8;
  v6[4] = v4;
  v7 = 0;
  return objc_msgSend__enumerateDependencyNodesUsingBlock_(a3, a2, v6, a4);
}

uint64_t sub_1AF16BE10(uint64_t *a1, _OWORD *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF16BEFC;
  v8[3] = &unk_1E7A7AE90;
  v8[4] = &v9;
  v8[5] = a2;
  sub_1AF28A5FC(v4, v8);
  if ((v10[3] & 1) == 0)
  {
    v5 = a1[5];
    if (!v5)
    {
      v6 = 0;
      goto LABEL_5;
    }

    sub_1AF1C9DE4(v5, a1[2], a2);
  }

  v6 = 1;
LABEL_5:
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1AF16BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF16BEFC(uint64_t result, const char *a2, void *a3, uint64_t a4)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v4 = result;
    result = objc_msgSend__getDeformedMeshBoundingBox_(a3, a2, *(result + 40), a4);
    *(*(*(v4 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_1AF16BF50(void *a1)
{
  sub_1AF1BE334(@"kCFXNotificationDeformerStackWillDie", a1, 0, 1u);
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }
}

CFStringRef sub_1AF16BFD0(void *a1)
{
  if (sub_1AF16B6E4(a1))
  {

    return sub_1AF375358(a1);
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v4 = sub_1AF3753A8(a1);
    CFStringAppendFormat(Mutable, 0, @"<%s %p | geometry: %p\n", v4, a1, a1[3]);
    if (a1[4])
    {
      CFStringAppendFormat(Mutable, 0, @"  morpher: %p\n", a1[4]);
    }

    if (a1[5])
    {
      CFStringAppendFormat(Mutable, 0, @"  skinner: %p\n", a1[5]);
    }

    v5 = a1[6];
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF16C110;
      v6[3] = &unk_1E7A79918;
      v6[4] = Mutable;
      sub_1AF28A5FC(v5, v6);
    }

    CFStringAppend(Mutable, @">");
    return Mutable;
  }
}

void sub_1AF16C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  CFStringAppendFormat(v4, 0, @"  %@: %p\n", v6, a3);
}

uint64_t sub_1AF16C160(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(a3, a2, a3, a4);
  result = sub_1AF1B7558(v5);
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }

  return result;
}

void sub_1AF16C1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    free(v1);
  }
}

uint64_t sub_1AF16C1E4()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658568 = result;
  return result;
}

void *sub_1AF16C20C(uint64_t a1, CFIndex a2)
{
  if (qword_1EB658570 != -1)
  {
    sub_1AFDD7AA4();
  }

  v4 = sub_1AF0D160C(qword_1EB658568, 0x18uLL);
  if (!v4)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7AB8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v4[3] = 0;
  v4[2] = 0;
  v41 = v4 + 2;
  v13 = sub_1AF1A3D1C(a1, a2, 1);
  v14 = sub_1AF1A7674(v13);
  v15 = sub_1AF1A4CE8(a1, 1);
  v16 = sub_1AF1AE6EC(v15);
  v17 = (v16 * v16);
  v18 = malloc_type_calloc(1uLL, v17, 0xF2156364uLL);
  if (v14 < 1)
  {
    v4[3] = 0;
  }

  else
  {
    v39 = v4 + 3;
    v40 = v4;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = sub_1AF1A7C24(v13, v19, 0, 0);
      v22 = sub_1AF1A7C24(v13, v19, 1, 0);
      v23 = sub_1AF1A7C24(v13, v19, 2, 0);
      if (v21 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v21 <= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      v26 = &v18[v24 * v16];
      if ((v26[v25] & 1) == 0)
      {
        v26[v25] = 1;
        ++v20;
      }

      if (v22 >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = v22;
      }

      if (v22 <= v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = v22;
      }

      v29 = &v18[v27 * v16];
      if ((v29[v28] & 1) == 0)
      {
        v29[v28] = 1;
        ++v20;
      }

      if (v23 >= v21)
      {
        v30 = v21;
      }

      else
      {
        v30 = v23;
      }

      if (v23 <= v21)
      {
        v31 = v21;
      }

      else
      {
        v31 = v23;
      }

      v32 = &v18[v30 * v16];
      if ((v32[v31] & 1) == 0)
      {
        v32[v31] = 1;
        ++v20;
      }

      ++v19;
    }

    while (v14 != v19);
    v4 = v40;
    *v39 = v20;
    if (v20)
    {
      v33 = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
      *v41 = v33;
      if (v17 < 1)
      {
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        do
        {
          if (v18[v34] == 1)
          {
            v36 = &v33[16 * v35];
            *v36 = v34 / v16;
            v36[1] = v34 + -v16 * (v34 / v16);
            ++v35;
          }

          ++v34;
        }

        while (v17 != v34);
      }

      if (v35 != *v39)
      {
        v37 = sub_1AF0D5194();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD7B30(v39, v35, v37);
        }
      }
    }
  }

  free(v18);
  v4[4] = v4[3];
  return v4;
}

uint64_t sub_1AF16C49C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7AB8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF16C4E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7AB8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 24) <= a2)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7BCC(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return *(a1 + 16) + 16 * a2;
}

void sub_1AF16C56C(void *a1)
{
  v2 = a1[6];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1[3] + 8 * i);
      if (v4)
      {
        CFRelease(v4);
        *(a1[3] + 8 * i) = 0;
        v2 = a1[6];
      }
    }
  }

  v5 = a1[5];
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(a1[2] + 8 * j);
      if (v7)
      {
        CFRelease(v7);
        *(a1[2] + 8 * j) = 0;
        v5 = a1[5];
      }
    }
  }

  v8 = a1[3];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[4];
  if (v10)
  {

    free(v10);
  }
}

uint64_t sub_1AF16C640()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658578 = result;
  return result;
}

void *sub_1AF16C668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v43[5] = *MEMORY[0x1E69E9840];
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7C44(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7CBC(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = sub_1AF1AE6EC(a2);
  if (a3)
  {
    v23 = *(a3 + 24);
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_1AF1A7674(a1);
  if (!v22)
  {
    return 0;
  }

  v25 = v24;
  if (qword_1EB658580 != -1)
  {
    sub_1AFDD7D34();
  }

  v26 = sub_1AF0D160C(qword_1EB658578, 0x30uLL);
  v26[2] = malloc_type_calloc(8uLL, v22, 0x2004093837F09uLL);
  v26[5] = v22;
  v26[7] = v25;
  if (v25 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        v29 = sub_1AF1A7C24(a1, i, j, 0);
        v31 = *(v26[2] + 8 * v29);
        if (!v31)
        {
          *(v26[2] + 8 * v29) = sub_1AF1D2E60();
          v31 = *(v26[2] + 8 * v29);
        }

        sub_1AF1D3E90(v31, i, v30);
      }
    }
  }

  if (v23)
  {
    v26[3] = malloc_type_calloc(8uLL, v23, 0x2004093837F09uLL);
    v26[6] = v23;
    v26[4] = malloc_type_calloc(0x18uLL, v25, 0xD6F6AC48uLL);
    v32 = malloc_type_calloc(1uLL, v25, 0x100004077774924uLL);
    if (v23 >= 1)
    {
      for (k = 0; k != v23; ++k)
      {
        v34 = sub_1AF16C4E4(a3, k);
        v35 = sub_1AF1D3EA0(*(v26[2] + 8 * *v34), *(v26[2] + 8 * v34[1]));
        *(v26[3] + 8 * k) = v35;
        v36 = sub_1AF1D2EB4(v35);
        if (v36 != -1)
        {
          for (m = v36; m != -1; m = sub_1AF1D2F28(v35, m))
          {
            if (v32[m] >= 3u)
            {
              v38 = sub_1AF0D5194();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDD7D5C(v42, v43, v38);
              }
            }

            v39 = v32[m];
            v40 = v26[4] + 24 * m;
            v32[m] = v39 + 1;
            *(v40 + 8 * v39) = k;
          }
        }
      }
    }

    free(v32);
  }

  return v26;
}

uint64_t sub_1AF16C948(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7DAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 32) + 24 * a2;
}

id sub_1AF16C9A4(uint64_t a1)
{
  sub_1AF16CA10(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  return objc_storeWeak((a1 + 16), 0);
}

const __CFDictionary *sub_1AF16CA10(void *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C3F64(a1);
  v11 = v10;
  if (v10)
  {
    v12 = sub_1AF1CF830(v10);
    if (v12)
    {
      sub_1AF1183E0(v12, a1);
    }
  }

  result = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (result)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF16D99C;
    v16[3] = &unk_1E7A79EA0;
    v16[4] = v11;
    return sub_1AF375240(result, v16, v14, v15);
  }

  return result;
}

void sub_1AF16CAEC()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD7E9C(v0);
  }
}

void sub_1AF16CB28()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD7EE0(v0);
  }
}

uint64_t sub_1AF16CB64()
{
  if (qword_1ED73ACE8 != -1)
  {
    sub_1AFDD7F24();
  }

  return qword_1ED73ACE0;
}

double sub_1AF16CB9C()
{
  qword_1ED73ACE0 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E7A68;
  unk_1ED72F3A8 = xmmword_1F24E7A68;
  unk_1ED72F3B8 = *off_1F24E7A78;
  qword_1ED72F3C8 = qword_1F24E7A88;
  return result;
}

uint64_t sub_1AF16CBEC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

CFStringRef sub_1AF16CC34(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t sub_1AF16CCC0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

id sub_1AF16CD08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v5, a2, a3, a4, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 24);
  if (!result)
  {
    v11 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, a4);
    result = objc_msgSend_UUIDString(v11, v12, v13, v14);
    *(a1 + 24) = result;
  }

  return result;
}

CFTypeRef sub_1AF16CD6C(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

id *sub_1AF16CDEC(id *result)
{
  if (result)
  {
    return objc_loadWeak(result + 2);
  }

  return result;
}

id sub_1AF16CDFC(uint64_t a1, id obj)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return objc_storeWeak((a1 + 16), obj);
}

uint64_t sub_1AF16CE58(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

const __CFDictionary *sub_1AF16CEA0(uint64_t a1, void *key)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void sub_1AF16CF28(CFTypeRef *a1, void *key, const __CFDictionary *a3, int a4)
{
  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v8, v9, v10, v11, v12, v13, v14, v15);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (sub_1AF16CEA0(a1, key) != a3)
  {
    Mutable = a1[5];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      a1[5] = Mutable;
    }

    if (a3)
    {
      CFDictionarySetValue(Mutable, key, a3);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, key);
      if (!CFDictionaryGetCount(a1[5]))
      {
        CFRelease(a1[5]);
        a1[5] = 0;
      }
    }

    if (a4)
    {
      sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, key, 1u);
    }
  }
}

const __CFDictionary *sub_1AF16D04C(uint64_t a1, void *key)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    return (CFDictionaryContainsKey(result, key) != 0);
  }

  return result;
}

void sub_1AF16D0DC(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 40) = 0;
  }

  if (theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      *(a1 + 40) = CFDictionaryCreateMutableCopy(0, 0, theDict);
    }
  }
}

void sub_1AF16D160(uint64_t a1, CFTypeRef *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7FB0(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD8028(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF16CBEC(a1);
  sub_1AF16CC34(a2, v20);
  v21 = sub_1AF16CE58(a1);
  sub_1AF16D0DC(a2, v21);
  sub_1AF16CF28(a2, @"_kvc", 0, 1);
  sub_1AF16CF28(a2, @"kAnimationsKey", 0, 1);
}

const void *sub_1AF16D234(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (qword_1ED73AE80 != -1)
    {
      sub_1AFDD80A0();
    }

    return (CFDictionaryGetValue(qword_1ED73AE88, v1) != 0);
  }

  return result;
}

CFDictionaryRef sub_1AF16D290()
{
  v66 = *MEMORY[0x1E69E9840];
  if (qword_1ED73AE88)
  {
    v0 = sub_1AF0D5194();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD80B4(v0, v1, v2, v3, v4, v5, v6, v7);
    }
  }

  keys[0] = sub_1AF1B2A04();
  keys[1] = sub_1AF1A2D3C();
  v17 = sub_1AF11AF8C();
  v18 = sub_1AF1157BC();
  v19 = sub_1AF1142BC();
  v20 = sub_1AF11D778();
  v21 = sub_1AF1A0AD8();
  v22 = sub_1AF195EF4();
  v23 = sub_1AF1A67B8();
  v24 = sub_1AF1B846C();
  v25 = sub_1AF15BEA8();
  v26 = sub_1AF19AF4C();
  v27 = sub_1AF1C6EF0();
  v28 = sub_1AF1C8B10();
  v29 = sub_1AF16FA20();
  v30 = sub_1AF1ADB18();
  v31 = sub_1AF1B42EC();
  v32 = sub_1AF1B630C();
  v33 = sub_1AF1CF31C();
  v34 = sub_1AF1BE9BC();
  v35 = sub_1AF1C611C();
  v36 = sub_1AF1C621C();
  v37 = sub_1AF15B134();
  v38 = sub_1AF16EA90();
  v39 = sub_1AF1D5200();
  v40 = sub_1AF1A0878();
  v41 = sub_1AF14F01C();
  v42 = sub_1AF14EF74();
  v43 = sub_1AF14F0C4();
  v44 = sub_1AF14EFE4();
  v45 = sub_1AF15146C();
  v46 = sub_1AF14EFAC();
  v47 = sub_1AF14F054();
  v48 = sub_1AF155A40();
  v49 = sub_1AF14F08C();
  v50 = sub_1AF1571B4();
  v51 = sub_1AF16A528();
  v52 = sub_1AF135A30();
  v53 = sub_1AF350138();
  v54 = sub_1AF1608E8();
  v55 = sub_1AF160EF4();
  v56 = sub_1AF1610AC();
  v57 = sub_1AF161324();
  v58 = sub_1AF161760();
  v59 = sub_1AF162244();
  v60 = sub_1AF162C38();
  v61 = sub_1AF162D7C();
  v62 = sub_1AF162694();
  v63 = sub_1AF162F04();
  v64 = sub_1AF163130();
  v8 = sub_1AF163954();
  v9 = 0;
  v65 = v8;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v10 = xmmword_1AFE21110;
  v11 = vdupq_n_s64(2uLL);
  v12 = vdupq_n_s64(0x33uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v12, v10)).u8[0])
    {
      *&v14[v9] = 1;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v10)).i32[1])
    {
      *(&v14[v9] + 1) = 1;
    }

    v10 = vaddq_s64(v10, v11);
    ++v9;
  }

  while (v9 != 26);
  result = CFDictionaryCreate(0, keys, v14, 51, 0, 0);
  qword_1ED73AE88 = result;
  return result;
}

BOOL sub_1AF16D5A8(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  return sub_1AF1B3A08(v10) || v10 == sub_1AF1A0AD8();
}

const __CFDictionary *sub_1AF16D614(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16D670(a1, @"kAnimationsKey", 0);
}

const __CFDictionary *sub_1AF16D670(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = sub_1AF375248();
    sub_1AF16CF28(a1, key, Value, 1);
    if (CFGetRetainCount(Value) <= 1)
    {
      v16 = sub_1AF0D5194();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD812C(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    CFRelease(Value);
  }

  return Value;
}

void sub_1AF16D744(void *a1, uint64_t *a2, const void *a3, const void *a4, double a5)
{
  if (!a1 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDCFFDC(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (!a3)
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  sub_1AF16D870(a1, a3, 1);
  v34 = sub_1AF16D670(a1, @"kAnimationsKey", 1);
  sub_1AF375230(v34, a3, a2);
  v35 = sub_1AF1C3FAC(a1);
  if (v35)
  {
    v36 = v35;
    v37 = sub_1AF1CF830(v35);
    sub_1AF1C3CB4(a2, v36);
    sub_1AF117C30(v37, a2, a1, a3, a4, a5);
  }
}

void sub_1AF16D870(void *a1, const void *a2, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0D34(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (v22)
  {
    v23 = v22;
    CFRetain(v22);
    v24 = sub_1AF1C3FAC(a1);
    v27 = v24;
    if (v24)
    {
      v28 = sub_1AF1CF830(v24);
      if (a3)
      {
        sub_1AF118354(v28, a1, a2);
      }

      else
      {
        sub_1AF116774(v28, a1);
      }
    }

    v29 = sub_1AF375228(v23, a2, v25, v26);
    if (v29)
    {
      sub_1AF1C3A90(v29, v27);
      sub_1AF375238(v23, a2, v30, v31);
      if ((a3 & 1) == 0 && !j__objc_msgSend_count(v23, v32, v33, v34))
      {
        sub_1AF16CF28(a1, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v23);
  }
}

void sub_1AF16D9A8(void *a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF1C3F64(a1);
  v15 = v14;
  if (v14)
  {
    v16 = sub_1AF1CF830(v14);
    if (v16)
    {
      sub_1AF1187D4(v16, a1, a2, a3);
    }
  }

  v17 = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (v17)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1AF16DABC;
    v20[3] = &unk_1E7A79EA0;
    v20[4] = v15;
    sub_1AF375240(v17, v20, v18, v19);
    sub_1AF16CF28(a1, @"kAnimationsKey", 0, 1);
  }
}

void sub_1AF16DAC8(void *a1, const void *a2, const void *a3, double a4)
{
  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0D34(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  v24 = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (v24)
  {
    v25 = v24;
    CFRetain(v24);
    v26 = sub_1AF1C3FAC(a1);
    v29 = v26;
    if (v26)
    {
      v30 = sub_1AF1CF830(v26);
      sub_1AF1189A8(v30, a1, a2, a3, a4);
    }

    v31 = sub_1AF375228(v25, a2, v27, v28);
    if (v31)
    {
      sub_1AF1C3A90(v31, v29);
      sub_1AF375238(v25, a2, v32, v33);
      if (!j__objc_msgSend_count(v25, v34, v35, v36))
      {
        sub_1AF16CF28(a1, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v25);
  }
}

uint64_t sub_1AF16DBF8(void *a1, void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD81A4(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF16DCF4(a1, @"kBindingsKey", 1);
  CFArrayAppendValue(v20, a2);
  result = sub_1AF1C3FAC(a1);
  if (result)
  {
    v22 = sub_1AF1CF830(result);
    v26 = objc_msgSend_keyPathDst(a2, v23, v24, v25);
    v30 = objc_msgSend_sourceObject(a2, v27, v28, v29);
    v34 = objc_msgSend_keyPathSrc(a2, v31, v32, v33);
    v38 = objc_msgSend_options(a2, v35, v36, v37);
    return sub_1AF119208(v22, a1, v26, v30, v34, v38);
  }

  return result;
}

const __CFDictionary *sub_1AF16DCF4(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    sub_1AF16CF28(a1, key, Value, 1);
    CFRelease(Value);
  }

  return Value;
}

void sub_1AF16DDA8(CFTypeRef *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C3FAC(a1);
  if (v10)
  {
    v11 = sub_1AF1CF830(v10);
    if (v11)
    {
      sub_1AF11960C(v11, a1);
    }
  }

  sub_1AF16CF28(a1, @"kBindingsKey", 0, 1);
}

void sub_1AF16DE24(CFTypeRef *a1, const __CFString *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD821C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF16DCF4(a1, @"kBindingsKey", 0);
  if (v20)
  {
    v21 = v20;
    v22 = v20;
    v23 = sub_1AF1C3FAC(a1);
    if (v23)
    {
      v27 = sub_1AF1CF830(v23);
      sub_1AF1194EC(v27, a1, a2);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = objc_msgSend_copy(v21, v24, v25, v26, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v41, v45, 16);
    if (v30)
    {
      v34 = v30;
      v35 = *v42;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v28);
          }

          v37 = *(*(&v41 + 1) + 8 * i);
          v38 = objc_msgSend_keyPathDst(v37, v31, v32, v33);
          if (objc_msgSend_isEqualToString_(v38, v39, a2, v40))
          {
            objc_msgSend_removeObject_(v21, v31, v37, v33);
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v41, v45, 16);
      }

      while (v34);
    }

    if (!objc_msgSend_count(v21, v31, v32, v33))
    {
      sub_1AF16CF28(a1, @"kBindingsKey", 0, 1);
    }
  }
}

void sub_1AF16DFF8(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF16CF28(a1, @"kShaderModifiers", a2, 1);
  v12 = CFGetTypeID(a1);
  if (sub_1AF1B3A08(v12))
  {
    sub_1AF1B38E8(a1);
  }

  else if (v12 == sub_1AF1A0AD8())
  {
    sub_1AF1A1A4C(a1);
  }
}

const __CFDictionary *sub_1AF16E098(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kShaderModifiers");
}

const __CFArray *sub_1AF16E0F0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = sub_1AF16E098(a1);
  if (result)
  {
    v13 = result;
    Count = CFArrayGetCount(result);
    v15 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v16 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
        v18 = sub_1AF148D18(ValueAtIndex) == a2;
        result = v18;
        v18 = v18 || v15 == v16++;
      }

      while (!v18);
    }
  }

  return result;
}

void sub_1AF16E18C(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF16CF28(a1, @"kShadableMinimumMTLLanguageVersionKey", a2, 1);
}

const __CFDictionary *sub_1AF16E1F8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kShadableMinimumMTLLanguageVersionKey");
}

const __CFDictionary *sub_1AF16E250(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"_kvc");
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a2)
  {
    Value = sub_1AF135AAC();
    sub_1AF16CF28(a1, @"_kvc", Value, 1);
    CFRelease(Value);
  }

  return Value;
}

void sub_1AF16E2D4(uint64_t a1, void *a2, __int16 *a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD8294(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = sub_1AF16E250(a1, 1);
  sub_1AF135E2C(v22, a2, a3);
}

void sub_1AF16E368(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD8294(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF16E250(a1, 1);
  sub_1AF135D68(v20, a2);
}

const __CFDictionary *sub_1AF16E3F4(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD8294(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return sub_1AF135D60(result, a2);
    }
  }

  return result;
}

const __CFDictionary *sub_1AF16E48C(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return sub_1AF136048(result, a2, v13, v14);
    }
  }

  return result;
}

const __CFDictionary *sub_1AF16E4FC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return sub_1AF1360C8(result, a2, v13, v14);
    }
  }

  return result;
}

uint64_t sub_1AF16E56C(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, @"_kvc");
  if (!Value)
  {
    return 0;
  }

  return sub_1AF135B18(Value, a2, a3, a4);
}

uint64_t sub_1AF16E5E4(void *a1)
{
  v2 = a1[5];
  if (v2 && (Value = CFDictionaryGetValue(v2, @"_kvc")) != 0)
  {
    v4 = sub_1AF136040(Value);
  }

  else
  {
    v4 = 0;
  }

  v5 = CFGetTypeID(a1);
  if (v5 == sub_1AF1A0AD8())
  {
    return sub_1AF1A1B38(a1) + v4;
  }

  return v4;
}

const __CFDictionary *sub_1AF16E66C(uint64_t a1, uint64_t a2)
{
  result = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (result)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF16E91C;
    v6[3] = &unk_1E7A79EA0;
    v6[4] = a2;
    return sub_1AF375240(result, v6, v4, v5);
  }

  return result;
}

void *sub_1AF16E6FC(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD830C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1CF830(a2);
  v21 = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (v21)
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1AF16E928;
    v51[3] = &unk_1E7A7AF18;
    v51[4] = a2;
    v51[5] = v20;
    v51[6] = a1;
    sub_1AF375240(v21, v51, v22, v23);
  }

  result = sub_1AF16DCF4(a1, @"kBindingsKey", 0);
  if (result)
  {
    v26 = result;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v25, &v47, v52, 16);
    if (result)
    {
      v30 = result;
      v31 = *v48;
      do
      {
        v32 = 0;
        do
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v47 + 1) + 8 * v32);
          v34 = objc_msgSend_keyPathDst(v33, v27, v28, v29);
          v38 = objc_msgSend_sourceObject(v33, v35, v36, v37);
          v42 = objc_msgSend_keyPathSrc(v33, v39, v40, v41);
          v46 = objc_msgSend_options(v33, v43, v44, v45);
          sub_1AF119208(v20, a1, v34, v38, v42, v46);
          v32 = v32 + 1;
        }

        while (v30 != v32);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v47, v52, 16);
        v30 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_1AF16E928(uint64_t *a1, const void *a2, uint64_t *cf)
{
  sub_1AF1C3CB4(cf, a1[4]);
  v6 = a1[5];
  v7 = a1[6];

  sub_1AF117C30(v6, cf, v7, a2, 0, 0.0);
}

uint64_t sub_1AF16E988(uint64_t a1, float32x4_t *a2, int32x4_t *a3, int32x2_t a4)
{
  v7 = sub_1AF1C3FAC(a1);
  if (v7)
  {
    v9 = sub_1AF1CFC48(v7);
  }

  else
  {
    v9 = xmmword_1AFE20160;
  }

  *v8.i8 = vbsl_s8(vceqz_f32(*(a1 + 228)), vdup_lane_s32(a4, 0), *(a1 + 228));
  if (v9.n128_f32[1] == 0.0)
  {
    if (v9.n128_f32[2] == 0.0)
    {
      v13.i32[0] = 0;
      v13.i32[3] = 0;
      v13.f32[1] = -*v8.i32;
      v13.f32[2] = -*&v8.i32[1];
      *a2 = v13;
      v9.n128_u32[0] = 925353388;
      *(v9.n128_u64 + 4) = v8.i64[0];
      v8 = v9;
    }

    else
    {
      *&v12 = -*v8.i32;
      *(&v12 + 1) = -*&v8.i32[1];
      *a2 = v12;
      v8.i32[2] = 925353388;
    }
  }

  else
  {
    v10 = vnegq_f32(vzip1q_s32(v8, v9));
    v10.i32[1] = 0;
    *a2 = v10;
    v11 = vdupq_n_s32(0x3727C5ACu);
    v8 = vtrn2q_s32(vzip1q_s32(v11, v8), v11);
  }

  *a3 = v8;
  return 1;
}

uint64_t sub_1AF16EA90()
{
  if (qword_1ED73ACD8 != -1)
  {
    sub_1AFDD8384();
  }

  return qword_1ED73ACD0;
}

double sub_1AF16EAC8()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ACD0 = v0;
  v1 = sub_1AF1B2A04();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"reflectionFalloffEnd", 0xD8u, 1, 0);
  sub_1AF1DD02C(@"reflectionFalloffStart", 0xD4u, 1, 0);
  sub_1AF1DD02C(@"reflectivity", 0xD0u, 1, 0);
  sub_1AF1DD02C(@"width", 0xE4u, 1, 0);
  sub_1AF1DD02C(@"length", 0xE8u, 1, 0);
  sub_1AF1DD018();
  unk_1ED72F2C0 = xmmword_1F24E7AB0;
  unk_1ED72F2D0 = xmmword_1F24E7AC0;
  qword_1ED72F2B8 = sub_1AF16F0F8;
  unk_1ED72F2E0 = *algn_1F24E7AD0;
  qword_1ED72F2F0 = qword_1F24E7AE0;
  unk_1ED72F2F8 = sub_1AF16F940;
  result = *&xmmword_1F24E7AE8;
  xmmword_1ED72F2A8 = xmmword_1F24E7AE8;
  return result;
}

float sub_1AF16EC88(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

void sub_1AF16ECD0(void *a1)
{
  sub_1AF1B38E8(a1);
  v2 = sub_1AF1C3FAC(a1);

  sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v2, 0, 1u);
}

void sub_1AF16ED28(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 208);
  if (a2 != 0.0 && v12 == 0.0)
  {
    *(a1 + 208) = a2;
LABEL_9:
    sub_1AF16ECD0(a1);
    return;
  }

  *(a1 + 208) = a2;
  if (a2 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float sub_1AF16EDB0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 212);
}

void sub_1AF16EDF8(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 212);
  if (a2 != 0.0 && v12 == 0.0)
  {
    *(a1 + 212) = a2;
LABEL_9:
    sub_1AF16ECD0(a1);
    return;
  }

  *(a1 + 212) = a2;
  if (a2 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float sub_1AF16EE80(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void sub_1AF16EEC8(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 216);
  if (a2 != 0.0 && v12 == 0.0)
  {
    *(a1 + 216) = a2;
LABEL_9:
    sub_1AF16ECD0(a1);
    return;
  }

  *(a1 + 216) = a2;
  if (a2 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float sub_1AF16EF50(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 220);
}

void sub_1AF16EF98(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 != 0.0 && *(a1 + 220) != a2)
  {
    *(a1 + 220) = a2;
    sub_1AF16ECD0(a1);
  }
}

uint64_t sub_1AF16F008(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void sub_1AF16F050(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 224) != a2)
  {
    *(a1 + 224) = a2;
    sub_1AF16ECD0(a1);
  }
}

__CFArray *sub_1AF16F0F8(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 208;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v5, @"name", @"reflectivity");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 212;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v9, @"name", @"reflectionFalloffStart");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 216;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v13, @"name", @"reflectionFalloffEnd");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 220;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v17, @"name", @"resolutionScaleFactor");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = MEMORY[0x1E695E9E8];
  v22 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 224;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v22, @"name", @"sampleCount");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, v3, v21);
  v41 = 0;
  valuePtr = 45;
  v40 = a1 + 240;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v26, @"name", @"reflectionBitMask");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 228;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v30, @"name", @"width");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 232;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v34, @"name", @"length");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = sub_1AF1B2210(a1);
  v43.length = CFArrayGetCount(v38);
  v43.location = 0;
  CFArrayAppendArray(Mutable, v38, v43);
  CFRelease(v38);
  return Mutable;
}

uint64_t sub_1AF16F8C0(uint64_t a1, int32x2_t a2, uint64_t a3, float32x4_t *a4, int32x4_t *a5)
{
  a2.i32[0] = *"(knN";
  sub_1AF16E988(a1, a4, a5, a2);
  return 1;
}

const void *sub_1AF16F8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF1B2C1C(a1);
  if (result)
  {

    return sub_1AF1C39FC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1AF16F940(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF16F978(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 208) == __dst)
  {
    sub_1AF16ED28(a1, *__src);
  }

  else if ((a1 + 216) == __dst)
  {
    sub_1AF16EEC8(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

id sub_1AF16F9B4(uint64_t a1)
{
  if (*(a1 + 80) || (*(a1 + 88) & 4) == 0)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 72) = 0;
    }
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  return sub_1AF16C9A4(a1);
}

uint64_t sub_1AF16FA20()
{
  if (qword_1ED73ACB8 != -1)
  {
    sub_1AFDD8410();
  }

  return qword_1ED73ACB0;
}

double sub_1AF16FA58()
{
  qword_1ED73ACB0 = _CFRuntimeRegisterClass();
  qword_1ED72F148 = sub_1AF170528;
  result = *&xmmword_1F24E7B18;
  xmmword_1ED72F0F8 = xmmword_1F24E7B18;
  return result;
}

uint64_t sub_1AF16FAAC()
{
  if (qword_1ED73ACB8 != -1)
  {
    sub_1AFDD8410();
  }

  v1 = qword_1ED73ACB0;

  return sub_1AF0D160C(v1, 0x50uLL);
}

uint64_t sub_1AF16FAF4(const void *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF16FAAC();
  if (!v10)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  sub_1AF16FB7C(v10, a1);
  return v10;
}

CFTypeRef sub_1AF16FB7C(uint64_t a1, CFTypeRef cf)
{
  if (!cf && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD8424(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0208(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  *(a1 + 64) = cf;
  return CFRetain(cf);
}

uint64_t sub_1AF16FC00(const void *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF16FAF4(a1);
  *(v12 + 88) |= 1u;
  if (a2)
  {
    v13 = sub_1AF1CB65C(a1);
    Mutable = CFDataCreateMutable(0, v13);
    v15 = sub_1AF1CB65C(a1);
    CFDataSetLength(Mutable, v15);
    sub_1AF16FCB0(v12, Mutable);
    CFRelease(Mutable);
  }

  return v12;
}

CFTypeRef sub_1AF16FCB0(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 88) & 4) != 0)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8514(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (*(a1 + 80))
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD858C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void sub_1AF16FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

void sub_1AF16FDD8(uint64_t a1, const char *a2)
{
  if (sub_1AF1CB35C(*(a1 + 64)))
  {
    v7 = sub_1AF170020(a1, v4, v5, v6);
    v9 = v8;
    v10 = v8;
    v11 = sub_1AF1CAE64(BYTE6(v8), HIBYTE(v8), v8, 0, 0);
    sub_1AF112944(a2, v11);
    sub_1AF1CB108(v11, a2, v12, v13);
    CFRelease(v11);
    if (!v7)
    {
      return;
    }

    v14 = sub_1AF1CB6A8(*(a1 + 64));
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v14 * v9);
    CFDataSetLength(Mutable, v14 * v9);
    BytePtr = CFDataGetBytePtr(Mutable);
    if (v9)
    {
      v17 = BytePtr;
      v18 = 0;
      do
      {
        memcpy(v17, &v7[v18], v14);
        v18 += BYTE5(v9);
        v17 += v14;
        --v10;
      }

      while (v10);
    }

    sub_1AF16FCB0(a2, Mutable);
    v19 = Mutable;
LABEL_14:

    CFRelease(v19);
    return;
  }

  v20 = sub_1AF1CB2E4(*(a1 + 64));
  sub_1AF112944(a2, v20);
  sub_1AF1CB108(v20, a2, v21, v22);
  CFRelease(v20);
  if (!*(a1 + 80))
  {
    v29 = *(a1 + 72);
    if (!v29)
    {
      return;
    }

    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v29);
    sub_1AF16FCB0(a2, MutableCopy);
    v19 = MutableCopy;
    goto LABEL_14;
  }

  v23 = sub_1AF0D5194();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_DEFAULT, "Warning: Cannot duplicate a Metal Buffer source. Create an empty data instead.", buf, 2u);
  }

  capacity = 0;
  v26 = sub_1AF289F78(*(a1 + 72), &capacity, v24, v25);
  v27 = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
  CFDataSetLength(v27, capacity);
  MutableBytePtr = CFDataGetMutableBytePtr(v27);
  memcpy(MutableBytePtr, v26, capacity);
  sub_1AF16FCB0(a2, v27);
  CFRelease(v27);
}

const UInt8 *sub_1AF170020(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 64);
  if (sub_1AF1CAEF0(v4, a2, a3, a4))
  {
    v7 = sub_1AF1CAF40(v4, 0, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  sub_1AF12DB9C(v4);
  sub_1AF121B74(v4);
  v8 = sub_1AF1CAED8(v4);
  v9 = sub_1AF1CAED0(v4);
  if (v8 != sub_1AF28844C(v8))
  {
    sub_1AF2884B4(v8);
  }

  sub_1AF2885E4(v8, v9);
  return v7;
}

const char *sub_1AF170120(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF16FAAC();
  sub_1AF16FDD8(a1, v10);
  return v10;
}

void *sub_1AF17017C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v5, a2, a3, a4, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 72);
  if (*(a1 + 80))
  {
    return sub_1AF289FB8(result, a2, a3, a4);
  }

  return result;
}

void *sub_1AF1701CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v5, a2, a3, a4, v6, v7, v8, v9);
    }
  }

  result = a1[9];
  if (a1[10])
  {
    return sub_1AF289FB8(result, a2, a3, a4);
  }

  if (!result)
  {
    result = a1[8];
    if (result)
    {
      return sub_1AF1CAEF0(result, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1AF170230(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

void sub_1AF170288(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 88) & 4) == 0)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8604(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (*(a1 + 80))
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD867C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  *(a1 + 72) = a2;
}

uint64_t sub_1AF17032C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

BOOL sub_1AF17039C(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  v3 = sub_1AF17032C(a1);
  return sub_1AF1CAEF0(v3, v4, v5, v6) == *(a1 + 72);
}

void sub_1AF1703F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = *(a1 + 88) & 0xFD | (2 * (a2 != 0));
  if (a2)
  {
    v12 = sub_1AF1CD9FC(5);
    *sub_1AF1CDA60(v12) = a2;
    sub_1AF16D044(a1, @"listener", v12);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    sub_1AF16D044(a1, @"listener", 0);
  }
}

uint64_t sub_1AF1704B0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 88) & 2) == 0)
  {
    return 0;
  }

  result = sub_1AF16CEA0(a1, @"listener");
  if (result)
  {
    result = sub_1AF1CDA60(result);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t sub_1AF170528(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF170560(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    memcpy(__s1, __s2, __n);
    result = sub_1AF1704B0(a1);
    if (result)
    {

      return sub_1AF1C37D4(result, a1);
    }
  }

  return result;
}

CFStringRef sub_1AF1705F0(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  v4 = sub_1AF170658(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %@>", v3, a1, v4);
}

uint64_t sub_1AF170658(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD86F4(v2);
    }
  }

  return sub_1AF16CBEC(a1);
}

uint64_t sub_1AF1706B8(const void *a1)
{
  v1 = CFGetTypeID(a1);
  if (v1 == sub_1AF1A2D3C())
  {
    return 1;
  }

  if (v1 == sub_1AF15B134())
  {
    return 2;
  }

  v3 = CFCopyTypeIDDescription(v1);
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD8778(v3, v4);
  }

  CFRelease(v3);
  return 0;
}

const void *sub_1AF170740(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == sub_1AF1A2D3C())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_1AF17079C(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 133) = 1;
  *&result = 83951873;
  *(a1 + 129) = 83951873;
  return result;
}

void sub_1AF1707C0(void *a1)
{
  sub_1AF174F04(a1);
  sub_1AF18053C(a1);
  v2 = a1[19];
  if (v2)
  {
    CFRelease(v2);
    a1[19] = 0;
  }

  v3 = a1[18];
  if (v3)
  {
    CFRelease(v3);
    a1[18] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
    a1[17] = 0;
  }
}

CFTypeRef sub_1AF17081C(uint64_t a1, uint64_t a2)
{
  *(a2 + 133) = *(a1 + 133);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 132) = *(a1 + 132);
  sub_1AF174F04(a2);
  sub_1AF18053C(a2);
  v4 = *(a2 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 152) = 0;
  }

  v5 = *(a2 + 144);
  v6 = *(a1 + 144);
  if (v5 != v6)
  {
    if (v5)
    {
      CFRelease(*(a2 + 144));
      *(a2 + 144) = 0;
      v6 = *(a1 + 144);
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(a2 + 144) = v6;
  }

  v7 = *(a2 + 136);
  result = *(a1 + 136);
  if (v7 != result)
  {
    if (v7)
    {
      CFRelease(*(a2 + 136));
      *(a2 + 136) = 0;
      result = *(a1 + 136);
    }

    if (result)
    {
      result = CFRetain(result);
    }

    *(a2 + 136) = result;
  }

  return result;
}

BOOL sub_1AF1708D8(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1 & 0xC;
  if ((v1 & 0xC) == 0)
  {
    v4 = sub_1AF1B2C1C(a1);
    v5 = sub_1AF1A516C(v4, 0);
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
LABEL_6:
      v2 = 4;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        v10 = sub_1AF1A7034(ValueAtIndex);
        if (!sub_1AF1A72E0(v10))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_6;
        }
      }

      v2 = 8;
    }

    *(a1 + 200) = v2 | v1;
  }

  return v2 == 4;
}

void sub_1AF1709B8(__n128 *a1, int a2)
{
  v4 = a1[8].n128_u8[0];
  if (v4 != a2)
  {
    a1[8].n128_u8[0] = a2;
    v5 = a1[9].n128_u64[1];
    if (v5)
    {
      CFRelease(v5);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  v6 = a1[11].n128_u8[0];

  sub_1AF170A30(a1, v6, v6, v4, a2);
}

void sub_1AF170A30(__n128 *a1, int a2, int a3, int a4, int a5)
{
  if ((sub_1AF174E14(a1) & 1) == 0 && (a3 == 4 ? (v10 = a5 == 0) : (v10 = 1), v10 ? (v11 = 0) : (v11 = 1), a2 == 4 ? (v12 = a4 == 0) : (v12 = 1), v12 ? (v13 = 0) : (v13 = 1), v13 == v11))
  {
    if ((a2 != 0) != (a3 == 0))
    {
      return;
    }

    v14 = 6;
  }

  else
  {
    v14 = 7;
  }

  v15 = sub_1AF1C3FAC(a1);

  sub_1AF1CF760(v15, v14, a1, 0);
}

void sub_1AF170AFC(__n128 *a1, int a2)
{
  if (a1[8].n128_u8[1] != a2)
  {
    a1[8].n128_u8[1] = a2;
    v3 = a1[9].n128_u64[1];
    if (v3)
    {
      CFRelease(v3);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  v4 = a1[11].n128_u8[0];
  v5 = a1[8].n128_u8[0];

  sub_1AF170A30(a1, v4, v4, v5, v5);
}

void sub_1AF170B70(uint64_t a1, int a2)
{
  if (a2 != *(a1 + 130))
  {
    *(a1 + 130) = a2;
    v3 = *(a1 + 152);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 152) = 0;
    }

    sub_1AF1B1D38(a1);
    v4 = *(a1 + 176);
    v5 = *(a1 + 128);

    sub_1AF170A30(a1, v4, v4, v5, v5);
  }
}

void sub_1AF170C00(__n128 *a1, CFTypeRef cf)
{
  v3 = a1[9].n128_u64[0];
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      a1[9].n128_u64[0] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[9].n128_u64[0] = v5;
    v6 = a1[9].n128_u64[1];
    if (v6)
    {
      CFRelease(v6);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  sub_1AF1804E8(a1);
  v7 = a1[11].n128_u8[0];
  v8 = a1[8].n128_u8[0];

  sub_1AF170A30(a1, v7, v7, v8, v8);
}

void sub_1AF170CA0(__n128 *a1, CFTypeRef cf)
{
  v3 = a1[8].n128_u64[1];
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      a1[8].n128_u64[1] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[8].n128_u64[1] = v5;
    v6 = a1[9].n128_u64[1];
    if (v6)
    {
      CFRelease(v6);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  sub_1AF1804E8(a1);
  v7 = a1[11].n128_u8[0];
  v8 = a1[8].n128_u8[0];

  sub_1AF170A30(a1, v7, v7, v8, v8);
}

unint64_t sub_1AF170D58(float a1)
{
  v1 = a1 * 0.5;
  if ((a1 * 0.5) > 1.0)
  {
    v1 = 1.0;
  }

  v2 = 2.0 - (a1 * 0.5);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  return LODWORD(v1) | (LODWORD(v2) << 32);
}

void sub_1AF170D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1B2C1C(a1);
  v5 = sub_1AF1A4C6C(v4, 0, 0);
  v8 = a1 + 136;
  v6 = *(a1 + 136);
  v7 = *(v8 + 8);
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v5;
    if (sub_1AF1A7634(v6) != 1)
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD87F0(v11);
      }
    }

    v12 = sub_1AF1AF080(v7);
    v13 = sub_1AF1A7674(v6);
    v14 = sub_1AF1A3CCC(v4);
    if (v14 >= 1)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        v17 = sub_1AF1A3D1C(v4, i, 0);
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        sub_1AF1A767C(v17, v10, &v20);
        v19[0] = v20;
        v19[1] = v21;
        v19[2] = v22;
        v19[3] = v23;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = sub_1AF170F14;
        v18[3] = &unk_1E7A7AF80;
        v18[6] = v6;
        v18[7] = 0;
        v18[8] = v12;
        v18[4] = a2;
        v18[5] = v13;
        sub_1AF1A80E4(v19, v18, v22);
      }
    }
  }
}

uint64_t sub_1AF170F14(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v5 = result;
    v6 = 0;
    v7 = a4;
    do
    {
      v8 = *(a3 + 4 * v6++);
      v9 = v6;
      if (v6 == v7)
      {
        v9 = 0;
      }

      v10 = *(a3 + 4 * v9);
      v11 = 0.0;
      if (*(v5 + 40) >= 1)
      {
        v12 = 0;
        while (1)
        {
          v13 = sub_1AF1A7C24(*(v5 + 48), v12, 0, *(v5 + 56));
          v14 = sub_1AF1A7C24(*(v5 + 48), v12, 1, *(v5 + 56));
          if (v8 == v13 && v10 == v14)
          {
            break;
          }

          if (v8 == v14 && v10 == v13)
          {
            break;
          }

          if (++v12 >= *(v5 + 40))
          {
            goto LABEL_18;
          }
        }

        v11 = *sub_1AF1CAF40(*(v5 + 64), v12, v15, v16);
      }

LABEL_18:
      result = (*(*(v5 + 32) + 16))(v11);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_1AF171018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B2C1C(a1);
  v4 = sub_1AF1A4604(v3, 0, 0, 0);
  result = sub_1AF1A4604(v3, 7, 0, 0);
  if (result)
  {
    v6 = sub_1AF1AF080(result);
    result = sub_1AF1AE6EC(v4);
    if (result >= 1)
    {
      v9 = result;
      for (i = 0; i != v9; ++i)
      {
        v11 = sub_1AF1CAF40(v6, i, v7, v8);
        result = (*(a2 + 16))(a2, i, *v11);
      }
    }
  }

  return result;
}

const void *sub_1AF1710CC(uint64_t a1)
{
  sub_1AF17CA14();
  v2 = *(a1 + 152);
  if (!v2)
  {
    v3 = sub_1AF1B2C1C(a1);
    v2 = v3;
    if (*(a1 + 128))
    {
      v4 = sub_1AF0D5194();
      v5 = os_signpost_id_generate(v4);
      v6 = sub_1AF0D5194();
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v6))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Subdivision", &unk_1AFF70A1D, buf, 2u);
        }
      }

      if (sub_1AF17D0F0(a1))
      {
        sub_1AF17D98C((a1 + 128), v2);
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        *buf = 0u;
        sub_1AF17E078(buf, a1 + 128, v2);
        sub_1AF17DF0C(a1 + 128);
      }

      v8 = CFRetain(v2);
    }

    else
    {
      v8 = CFRetain(v3);
      v2 = v8;
    }

    *(a1 + 152) = v8;
  }

  return v2;
}

uint64_t sub_1AF1712E4(uint64_t a1)
{
  v5 = (a1 + 216);
  sub_1AF1713B0(&v5);
  v5 = (a1 + 192);
  sub_1AF171480(&v5);
  v5 = (a1 + 168);
  sub_1AF171480(&v5);
  v5 = (a1 + 144);
  sub_1AF171480(&v5);
  v5 = (a1 + 120);
  sub_1AF171480(&v5);
  v5 = (a1 + 96);
  sub_1AF171480(&v5);
  v5 = (a1 + 72);
  sub_1AF171480(&v5);
  v5 = (a1 + 48);
  sub_1AF17154C(&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1AF1713B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF171404(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF171404(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 24);
      sub_1AF171480(&v4);
      v4 = (v3 - 48);
      sub_1AF171480(&v4);
      v4 = (v3 - 72);
      sub_1AF171480(&v4);
      v3 -= 72;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void sub_1AF171480(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF1714D4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF1714D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 64);
      if (v4)
      {
        *(v3 - 56) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 88);
      if (v5)
      {
        *(v3 - 80) = v5;
        operator delete(v5);
      }

      v6 = v3 - 112;
      v7 = *(v3 - 112);
      if (v7)
      {
        *(v3 - 104) = v7;
        operator delete(v7);
      }

      v3 -= 112;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void sub_1AF17154C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF1715A0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF1715A0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1AF171620(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF17163C(uint64_t a1, int a2)
{
  result = *(*(a1 + 160) + 24);
  if (result)
  {
    return sub_1AF171650(result, a2);
  }

  return result;
}

BOOL sub_1AF171650(uint64_t a1, int a2)
{
  if ((a2 - 2) > 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = dword_1AFE21784[(a2 - 2)];
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 40);
  v6 = 1;
  do
  {
    v7 = *(v5 + 16 * v4) == v2;
    result = v7;
    v4 = v6++;
  }

  while (!v7 && v3 > v4);
  return result;
}

void *sub_1AF1716B4(void *result)
{
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  return result;
}

void sub_1AF1716C0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v10 = *(a1 + 120);
    sub_1AF179DE8(&v10);
    MEMORY[0x1B271C6B0](v2, 0x20C40960023A9);
  }

  sub_1AF179D9C(a1 + 32);
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 == v5)
    {
      goto LABEL_7;
    }

    do
    {
      sub_1AF179D9C(v4);
      v4 += 56;
    }

    while (v4 != v5);
    v3 = *(a1 + 88);
    if (v3)
    {
LABEL_7:
      v6 = *v3;
      if (*v3)
      {
        v3[1] = v6;
        operator delete(v6);
      }

      MEMORY[0x1B271C6B0](v3, 0x20C40960023A9);
    }
  }

  sub_1AF179D38(a1 + 144);
  for (i = 0; i != 80; i += 8)
  {
  }

  v8 = (a1 + 408);
  v9 = 10;
  do
  {

    ++v8;
    --v9;
  }

  while (v9);
}

__CFString *sub_1AF171850(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p>", v3, a1);
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v7 = objc_msgSend_length(*(a1 + 64), v4, v5, v6);
  v8 = *(a1 + 32);
  v12 = objc_msgSend_length(*(a1 + 48), v9, v10, v11);
  v82 = a1;
  v16 = objc_msgSend_length(*(a1 + 56), v13, v14, v15);
  v85[3] += 16 * v8 + v7 + v12 + v16;
  CFStringAppend(Mutable, @"\nVertex patch table:");
  v17 = sub_1AF2891D8(16 * v8);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v17);
  v18 = v82;
  if (*(v82 + 32))
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = (*(v18 + 40) + 16 * v19);
      v22 = *v21 - 4;
      v23 = @"QUADS";
      if (v22 <= 5)
      {
        v23 = off_1E7A7B138[v22];
      }

      CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v21[1], v23);
      v19 = v20;
      v18 = v82;
      v24 = *(v82 + 32) > v20++;
    }

    while (v24);
  }

  v25 = *(v18 + 64);
  v26 = sub_1AF2891D8(v7);
  CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v25, v26);
  v27 = *(v82 + 48);
  v28 = sub_1AF2891D8(v12);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v27, v28);
  v29 = *(v82 + 56);
  v30 = sub_1AF2891D8(v16);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v29, v30);
  v31 = *(v82 + 88);
  if (v31)
  {
    v32 = *(*(v82 + 88) + 8) - *v31;
    if (v32)
    {
      v33 = 0;
      v81 = 0x6DB6DB6DB6DB6DB7 * (v32 >> 3);
      do
      {
        CFStringAppendFormat(Mutable, 0, @"\nFVar patch table (channel %zu):", v33);
        v37 = **(v82 + 88);
        if (0x6DB6DB6DB6DB6DB7 * ((*(*(v82 + 88) + 8) - v37) >> 3) <= v33)
        {
          sub_1AF10A1D0();
        }

        v38 = (v37 + 56 * v33);
        v39 = objc_msgSend_length(v38[4], v34, v35, v36);
        v40 = *v38;
        v44 = objc_msgSend_length(v38[2], v41, v42, v43);
        v48 = objc_msgSend_length(v38[3], v45, v46, v47);
        v85[3] += 16 * v40 + v39 + v44 + v48;
        v49 = sub_1AF2891D8(16 * v40);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v49);
        if (*v38)
        {
          v50 = 0;
          v51 = 1;
          do
          {
            v52 = (v38[1] + 16 * v50);
            v53 = *v52 - 4;
            v54 = @"QUADS";
            if (v53 <= 5)
            {
              v54 = off_1E7A7B138[v53];
            }

            CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v52[1], v54);
            v50 = v51;
            v24 = *v38 > v51++;
          }

          while (v24);
        }

        v55 = v38[4];
        v56 = sub_1AF2891D8(v39);
        CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v55, v56);
        v57 = v38[2];
        v58 = sub_1AF2891D8(v44);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v57, v58);
        v59 = v38[3];
        v60 = sub_1AF2891D8(v48);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v59, v60);
        ++v33;
      }

      while (v33 != v81);
    }
  }

  if (*(v82 + 96) && *(v82 + 104))
  {
    CFStringAppend(Mutable, @"\nLegacy Gregory patch table:");
    v64 = objc_msgSend_length(*(v82 + 96), v61, v62, v63);
    v68 = objc_msgSend_length(*(v82 + 104), v65, v66, v67);
    v85[3] += v68 + v64;
    v69 = *(v82 + 96);
    v70 = sub_1AF2891D8(v64);
    CFStringAppendFormat(Mutable, 0, @"\n  - Vertex valence buffer: %p (%@)", v69, v70);
    v71 = *(v82 + 104);
    v72 = sub_1AF2891D8(v68);
    CFStringAppendFormat(Mutable, 0, @"\n  - Quad offsets buffer: %p (%@)", v71, v72);
  }

  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = sub_1AF1794E8;
  v83[3] = &unk_1E7A7B038;
  v83[4] = &v84;
  v83[5] = Mutable;
  CFStringAppend(Mutable, @"\nVertex Refiner:");
  (sub_1AF1794E8)(v83, v82 + 144);
  v76 = objc_msgSend_length(*(v82 + 352), v73, v74, v75);
  v85[3] += v76;
  v77 = *(v82 + 352);
  v78 = sub_1AF2891D8(v76);
  CFStringAppendFormat(Mutable, 0, @"\n  - Skin/morph indexing table: %p (%@)", v77, v78);
  v79 = sub_1AF2891D8(v85[3]);
  CFStringAppendFormat(Mutable, 0, @"\nTotal memory usage: %@", v79);
  _Block_object_dispose(&v84, 8);
  return Mutable;
}

void sub_1AF171DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF171E08()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB64FB68 = result;
  return result;
}

double sub_1AF171E30(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 80))
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8874(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v22 = 0;
  v23 = 0;
  v12 = sub_1AFDE323C(*(a1 + 80));
  if (!sub_1AFDBB5E8(v12, *(a1 + 40), (a1 + 56), *(a1 + 48), (a1 + 68), 0, &v22, 0, &v22, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), 0, 0, 0, *(a1 + 32), a2))
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD88EC(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return nullsub_106();
}

void sub_1AF171F0C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (sub_1AF1B40A0(a2))
  {
    *(a1 + 360) = objc_msgSend_computePipelineStateForKernel_(a3, v8, @"vfx_osd_synchronize_coarse_positions_no_argument_buffer", v9);
    v10 = sub_1AF1B2C1C(a2);
    v12 = sub_1AF1A4FA8(v10);
    v13 = *(a2 + 168);
    if (!v13)
    {
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8964(v14, v11, v15, v16, v17, v18, v19, v20);
      }
    }

    v22 = *(v13 + 32);
    v21 = *(v13 + 40);
    __p = 0;
    v36 = 0;
    v37 = 0;
    v23 = (v21 - v22) >> 2;
    if (v21 != v22)
    {
      sub_1AF17C384(&__p, (v21 - v22) >> 2);
    }

    if (v23 != *(a1 + 28))
    {
      v24 = sub_1AF0D5194();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD89DC(v24, v11, v25, v26, v27, v28, v29, v30);
      }
    }

    v31 = __p;
    if (v21 != v22)
    {
      v32 = 0;
      v33 = *(v13 + 32);
      do
      {
        v34 = *(v33 + 4 * v32);
        if (v12)
        {
          v34 = *(v12 + 4 * v34);
        }

        v31[v32++] = v34;
      }

      while (v23 > v32);
    }

    *(a1 + 352) = objc_msgSend_newBufferWithBytes_length_options_(*a4, v11, v31, v36 - v31, 0);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = objc_msgSend_computePipelineStateForKernel_(a3, v8, @"vfx_osd_synchronize_indexed_coarse_positions_no_argument_buffer", v9);
  }
}

void sub_1AF1720A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF1720C0(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = objc_alloc(MEMORY[0x1E696ACD0]);
  v12 = objc_msgSend_initForReadingFromData_error_(v10, v11, a1, 0);
  v18 = 0;
  if (objc_msgSend_decodeInt32ForKey_(v12, v13, @"version", v14) >= 3)
  {
    if (!a5)
    {
      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8A54(v19, v15, v16, v17, v20, v21, v22, v23);
      }
    }

    v24 = objc_msgSend_commandBuffer(a5, v15, v16, v17);
    v28 = objc_msgSend_computeCommandEncoder(v24, v25, v26, v27);
    v108[0] = objc_msgSend_device(a5, v29, v30, v31);
    v108[1] = a5;
    v109 = v24;
    v110 = v28;
    if (qword_1EB64FB60 != -1)
    {
      sub_1AFDD8ACC();
    }

    v18 = sub_1AF0D160C(qword_1EB64FB68, 0x2F0uLL);
    v106 = 0;
    v107 = 0;
    v33 = objc_msgSend_decodeBytesForKey_returnedLength_(v12, v32, @"primvarDataTypeHash", &v106);
    if (v106 == 4)
    {
      *(v18 + 24) = *v33;
    }

    *(v18 + 28) = objc_msgSend_decodeInt32ForKey_(v12, v34, @"coarseVertexCount", v35);
    sub_1AF172A2C(v12, @"vertexPatchTable", v108, v36, size);
    v37 = v112;
    *(v18 + 32) = *size;
    *(v18 + 48) = v37;
    *(v18 + 64) = v113;
    *(v18 + 80) = v114;
    v40 = objc_msgSend_stringByAppendingString_(@"fvarPatchTables", v38, @".count", v39);
    if (objc_msgSend_decodeInt32ForKey_(v12, v41, v40, v42))
    {
      operator new();
    }

    *(v18 + 88) = 0;
    v104 = a3;
    if (a3[6] == 2)
    {
      v45 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v43, @".vertexValenceBuffer", v44);
      v46 = sub_1AF173244(v12, v45, v108, 0);
      v49 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v47, @".quadOffsetsBuffer", v48);
      v50 = sub_1AF173244(v12, v49, v108, 0);
      v53 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v51, @".quadOffsetsBaseGregory", v52);
      v56 = objc_msgSend_decodeInt32ForKey_(v12, v54, v53, v55);
      v59 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v57, @".quadOffsetsBaseGregoryBoundary", v58);
      v62 = objc_msgSend_decodeInt32ForKey_(v12, v60, v59, v61);
    }

    else
    {
      v46 = 0;
      v50 = 0;
      v56 = -1;
      v62 = -1;
    }

    *(v18 + 96) = v46;
    *(v18 + 104) = v50;
    *(v18 + 112) = v56;
    *(v18 + 116) = v62;
    v63 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v43, @".elementCount", v44);
    v66 = objc_msgSend_decodeInt32ForKey_(v12, v64, v63, v65);
    v69 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v67, @".patchArrayCount", v68);
    v72 = objc_msgSend_decodeInt32ForKey_(v12, v70, v69, v71);
    if (v66 && v72)
    {
      operator new();
    }

    *(v18 + 120) = 0;
    sub_1AF172BA8(v12, @"vertexRefiner", a4, v108, size);
    v73 = v114;
    *(v18 + 176) = v113;
    *(v18 + 192) = v73;
    *(v18 + 208) = v115;
    *(v18 + 224) = v116;
    v74 = v112;
    *(v18 + 144) = *size;
    *(v18 + 160) = v74;
    *(v18 + 184) = *(v18 + 64);
    *(v18 + 192) = *(v18 + 64);
    v75 = sub_1AF171E30(v18 + 144, v108);
    *(v18 + 16) = 0;
    v78 = objc_msgSend_stringByAppendingString_(@"fvarRefiners", v76, @".count", v77, v75);
    if (objc_msgSend_decodeInt32ForKey_(v12, v79, v78, v80))
    {
      operator new();
    }

    v107 = 0;
    sub_1AF172DA0(v18, v104, a4, v108);
    *(v18 + 352) = sub_1AF173244(v12, @"skinMorphSubdivIndexToMetalIndexBuffer", v108, 0);
    if (objc_msgSend_containsValueForKey_(v12, v81, @"synchronizeCoarsePositionsPipeline.functionName", v82))
    {
      v83 = objc_opt_class();
      v85 = objc_msgSend_decodeObjectOfClass_forKey_(v12, v84, v83, @"synchronizeCoarsePositionsPipeline.functionName");
      *(v18 + 360) = objc_msgSend_computePipelineStateForKernel_(a4, v86, v85, v87);
    }

    *(v18 + 128) = sub_1AF173244(v12, @"fvarChannelDescriptorsBuffer", v108, 0);
    *(v18 + 136) = sub_1AF173244(v12, @"fvarChannelsPackedDataBuffer", v108, 0);
    objc_msgSend_endEncoding(v110, v88, v89, v90);
    objc_msgSend_commit(v109, v91, v92, v93);
    objc_msgSend_waitUntilCompleted(v109, v94, v95, v96);
    if (objc_msgSend_status(v109, v97, v98, v99) == 4)
    {
      goto LABEL_26;
    }

    v100 = sub_1AF0D5194();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD8AF4(&v109, v100, v101, v102);
      if (!a6)
      {
        goto LABEL_25;
      }
    }

    else if (!a6)
    {
LABEL_25:
      CFRelease(v18);
      v18 = 0;
LABEL_26:
      sub_1AF17332C(&v107);
      goto LABEL_27;
    }

    (*(a6 + 16))(a6, v109, 1);
    goto LABEL_25;
  }

LABEL_27:
  objc_msgSend_finishDecoding(v12, v15, v16, v17);

  return v18;
}

void sub_1AF1729E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  sub_1AF179AF8(&a28);
  MEMORY[0x1B271C6B0](a19, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF172A2C@<X0>(void *a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, size_t *a5@<X8>)
{
  size = 0;
  v9 = objc_msgSend_stringByAppendingString_(a2, a2, @".patchArrays", a4);
  v11 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v10, v9, &size);
  v12 = size;
  *a5 = size >> 4;
  v13 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
  a5[1] = v13;
  memcpy(v13, v11, size);
  v16 = objc_msgSend_stringByAppendingString_(a2, v14, @".dataBufferOffset", v15);
  a5[5] = objc_msgSend_decodeInt32ForKey_(a1, v17, v16, v18);
  v21 = objc_msgSend_stringByAppendingString_(a2, v19, @".dataBufferCoarseDataSize", v20);
  a5[6] = objc_msgSend_decodeInt32ForKey_(a1, v22, v21, v23);
  v26 = objc_msgSend_stringByAppendingString_(a2, v24, @".dataBufferFullDataSize", v25);
  v29 = objc_msgSend_decodeInt32ForKey_(a1, v27, v26, v28);
  v32 = objc_msgSend_stringByAppendingString_(a2, v30, @".patchIndexBuffer", v31);
  a5[2] = sub_1AF173244(a1, v32, a3, 0);
  v35 = objc_msgSend_stringByAppendingString_(a2, v33, @".patchParamBuffer", v34);
  a5[3] = sub_1AF173244(a1, v35, a3, 0);
  v38 = objc_msgSend_stringByAppendingString_(a2, v36, @".dataBuffer", v37);
  result = sub_1AF173244(a1, v38, a3, v29);
  a5[4] = result;
  return result;
}

id sub_1AF172BA8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = objc_msgSend_stringByAppendingString_(a2, a2, @".stencilTable", a4);
  v13 = objc_msgSend_stringByAppendingString_(v10, v11, @".sizesBuffer", v12);
  v14 = sub_1AF173244(a1, v13, a4, 0);
  v17 = objc_msgSend_stringByAppendingString_(v10, v15, @".offsetsBuffer", v16);
  v18 = sub_1AF173244(a1, v17, a4, 0);
  v21 = objc_msgSend_stringByAppendingString_(v10, v19, @".indicesBuffer", v20);
  v22 = sub_1AF173244(a1, v21, a4, 0);
  v25 = objc_msgSend_stringByAppendingString_(v10, v23, @".weightsBuffer", v24);
  v26 = sub_1AF173244(a1, v25, a4, 0);
  v29 = objc_msgSend_stringByAppendingString_(v10, v27, @".numStencils", v28);
  v32 = objc_msgSend_decodeInt32ForKey_(a1, v30, v29, v31);
  *a5 = v14;
  *(a5 + 8) = v18;
  *(a5 + 16) = v22;
  *(a5 + 24) = v26;
  *(a5 + 32) = v32;
  v35 = objc_msgSend_stringByAppendingString_(a2, v33, @".evaluatorInput", v34);
  v49 = 0;
  __dst = 0uLL;
  v50 = 0;
  __n = 0;
  v38 = objc_msgSend_stringByAppendingString_(v35, v36, @".srcDesc", v37);
  v40 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v39, v38, &__n);
  v43 = objc_msgSend_stringByAppendingString_(v35, v41, @".dstDesc", v42);
  v45 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v44, v43, &v50);
  memcpy(&__dst, v40, __n);
  memcpy(&__dst + 12, v45, v50);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = __dst;
  *(a5 + 72) = v49;
  *&__dst = 0;
  DWORD2(__dst) = 0;
  result = objc_msgSend_computeEvaluatorWithContext_srcDesc_dstDesc_duDesc_dvDesc_(a3, v46, a4, a5 + 56, a5 + 68, &__dst, &__dst);
  *(a5 + 80) = result;
  return result;
}

void sub_1AF172DA0(uint64_t a1, _BYTE *a2, void *a3, void **a4)
{
  v5 = a2;
  *&v68[5] = *MEMORY[0x1E69E9840];
  v7 = a2[4];
  v8 = sub_1AF17CF8C(*(a1 + 24));
  v9 = sub_1AF17CF9C(*(a1 + 24));
  if (v8)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  if (!*(a1 + 32))
  {
    v14 = 0;
    v27 = 0;
    goto LABEL_31;
  }

  v61 = v7;
  v64 = a4;
  v12 = v5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = v11 + 8 * v9;
  do
  {
    v18 = (*(a1 + 40) + 16 * v13);
    v20 = v18[1];
    v67 = *v18;
    v19 = v67;
    v21 = sub_1AF174B38(&v67);
    if (v19 <= 5)
    {
      if (v19 < 3 || v19 == 5)
      {
        v23 = sub_1AF0D5194();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD8BB8(&v65, v66);
        }
      }

      goto LABEL_25;
    }

    if (v19 > 7)
    {
      if (v19 == 8)
      {
        *(a1 + 244) = 12 * v14;
        *(a1 + 260) = v15;
        goto LABEL_24;
      }

      if (v19 == 9)
      {
        *(a1 + 246) = 12 * v14;
        *(a1 + 262) = v15;
        v15 += v20 * v17 * v21 + 12 * v20 * v21;
      }
    }

    else
    {
      if (v19 != 6)
      {
        *(a1 + 242) = 12 * v14;
        *(a1 + 258) = v15;
LABEL_24:
        v15 += v20 * v17 * v21 + 60 * v20 * v21;
        goto LABEL_25;
      }

      v24 = v12[3];
      *(a1 + 240) = 12 * v14;
      v25 = 36.0;
      if (!v24)
      {
        v25 = 12.0;
      }

      *(a1 + 256) = v15;
      v15 = (v15 + ((v25 * v20) * v21)) + v20 * v17 * v21;
    }

LABEL_25:
    v14 += v20;
    v13 = v16;
    v26 = *(a1 + 32) > v16++;
  }

  while (v26);
  if (v15)
  {
    a4 = v64;
    v27 = objc_msgSend_newBufferWithLength_options_(*v64, v10, v15, 32);
    v5 = v12;
  }

  else
  {
    v27 = 0;
    v5 = v12;
    a4 = v64;
  }

  v7 = v61;
LABEL_31:
  *(a1 + 248) = v27;
  if (v7)
  {
    v28 = objc_msgSend_newBufferWithLength_options_(*a4, v10, 80 * v14, 32);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 264) = v28;
  *(a1 + 232) = objc_msgSend_newBufferWithLength_options_(*a4, v10, 12 * v14, 32);
  if (*(a1 + 32))
  {
    v29 = 0;
    v30 = a1 + 272;
    v60 = *(a1 + 24);
    v62 = v5[4] << 16;
    v31 = 1;
    do
    {
      v32 = *(*(a1 + 40) + 16 * v29);
      v33 = v32 - 4;
      if ((v32 - 4) > 5)
      {
        LOBYTE(v35) = 1;
        v34 = 256;
      }

      else
      {
        v34 = qword_1AFE21740[v33];
        v35 = 0x60504030102uLL >> (8 * v33);
      }

      if (*(v30 + 8 * v32))
      {
        v36 = sub_1AF0D5194();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD8BE4(&v67, v68, v36);
        }
      }

      if (v5[2] == 1)
      {
        v37 = v5;
        if (!v5[3])
        {
          v34 = 0;
        }

        v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v64 = v64 & 0xFFFFFFFF00000000 | v60;
        v39 = sub_1AF1735B8(v34 | v62 | v35 | 0x2000000000, v60, v38);
        v40 = objc_alloc_init(MEMORY[0x1E6974020]);
        v41 = sub_1AF1F32F0();
        objc_msgSend_setLanguageVersion_(v40, v42, v41, v43);
        objc_msgSend_setFastMathEnabled_(v40, v44, 1, v45);
        objc_msgSend_setPreprocessorMacros_(v40, v46, v38, v47);
        objc_msgSend_setAdditionalCompilerArguments_(v40, v48, @" -w ", v49);

        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v54 = sub_1AF173490(v35, v51);
        if (qword_1EB64FB50 != -1)
        {
          sub_1AFDD8C28();
        }

        v55 = objc_msgSend_initWithFormat_(v50, v52, @"%@%@%@", v53, v39, v54, qword_1EB64FB58);
        v56 = sub_1AFDE868C(a3);
        v58 = objc_msgSend_libraryForSourceCode_options_(v56, v57, v55, v40);
        *(v30 + 8 * v32) = objc_msgSend_newComputePipelineStateWithFunctionName_library_(a3, v59, @"compute_opensubdiv", v58);

        v5 = v37;
      }

      v29 = v31;
      v26 = *(a1 + 32) > v31++;
    }

    while (v26);
  }
}

uint64_t sub_1AF173244(void *a1, const char *a2, void **a3, size_t a4)
{
  if (!objc_msgSend_containsValueForKey_(a1, a2, a2, a4))
  {
    return 0;
  }

  __n = 0;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v8, a2, &__n);
  if (__n >= a4)
  {
    return objc_msgSend_newBufferWithBytes_length_options_(*a3, v9, v10, __n, 0);
  }

  v11 = malloc_type_malloc(a4, 0x100004077774924uLL);
  memcpy(v11, v10, __n);
  v13 = objc_msgSend_newBufferWithBytes_length_options_(*a3, v12, v11, a4, 0);
  free(v11);
  return v13;
}

void sub_1AF17332C(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = v1[1];
    if (*v1 == v3)
    {
      goto LABEL_5;
    }

    do
    {
      sub_1AF179D38(v2);
      v2 += 88;
    }

    while (v2 != v3);
    v1 = *a1;
    if (*a1)
    {
LABEL_5:
      v5 = *v1;
      if (*v1)
      {
        v1[1] = v5;
        operator delete(v5);
      }

      JUMPOUT(0x1B271C6B0);
    }
  }
}

uint64_t sub_1AF1733C8()
{
  if (qword_1EB64FB70 != -1)
  {
    sub_1AFDD8C50();
  }

  return qword_1EB64FB78;
}

void sub_1AF173400()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC6184();
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB64FB78 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF173474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF173490@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (qword_1EB6585B0 != -1)
        {
          sub_1AFDD8C8C();
        }

        v2 = &qword_1EB6585A8;
        return *v2;
      case 5:
        if (qword_1EB6585C0 != -1)
        {
          sub_1AFDD8C78();
        }

        v2 = &qword_1EB6585B8;
        return *v2;
      case 6:
        if (qword_1EB6585D0 != -1)
        {
          sub_1AFDD8C64();
        }

        v2 = &qword_1EB6585C8;
        return *v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (qword_1EB658590 != -1)
        {
          sub_1AFDD8CC8();
        }

        v2 = &qword_1EB658588;
        return *v2;
      case 2:
        if (qword_1EB6585A0 != -1)
        {
          sub_1AFDD8CB4();
        }

        v2 = &qword_1EB658598;
        return *v2;
      case 3:
        if (qword_1EB64FB40 != -1)
        {
          sub_1AFDD8CA0();
        }

        v2 = &qword_1EB64FB48;
        return *v2;
    }
  }

  return a2;
}

uint64_t sub_1AF1735B8(unint64_t a1, unsigned int a2, void *a3)
{
  if ((a1 - 2) > 4u)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_1AFE21784[(a1 - 2)];
  }

  v252[0] = v6;
  v7 = sub_1AF174B38(v252);
  objc_msgSend_setObject_forKeyedSubscript_(a3, v8, MEMORY[0x1E695E118], @"USE_OPENSUBDIV");
  v11 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, (v252[0] - 5) < 5, v10);
  objc_msgSend_setObject_forKeyedSubscript_(a3, v12, v11, @"OSD_IS_ADAPTIVE");
  v235 = a1;
  if (v6 > 6)
  {
    switch(v6)
    {
      case 7:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, MEMORY[0x1E695E118], @"OSD_PATCH_GREGORY");
        break;
      case 8:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, MEMORY[0x1E695E118], @"OSD_PATCH_GREGORY_BOUNDARY");
        break;
      case 9:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, MEMORY[0x1E695E118], @"OSD_PATCH_GREGORY_BASIS");
        break;
      default:
        goto LABEL_18;
    }

    objc_msgSend_setObject_forKeyedSubscript_(a3, v15, &unk_1F25D4168, @"CONTROL_POINTS_PER_PATCH");
    v7 = 4;
  }

  else
  {
    switch(v6)
    {
      case 3:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, MEMORY[0x1E695E118], @"OSD_PATCH_QUADS");
        break;
      case 4:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, MEMORY[0x1E695E118], @"OSD_PATCH_TRIANGLES");
        break;
      case 6:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, MEMORY[0x1E695E118], @"OSD_PATCH_REGULAR");
        objc_msgSend_setObject_forKeyedSubscript_(a3, v14, &unk_1F25D4150, @"CONTROL_POINTS_PER_PATCH");
        break;
    }
  }

LABEL_18:
  v236 = a3;
  v16 = a2;
  v17 = sub_1AF17CF8C(a2);
  v18 = sub_1AF17CF9C(v16);
  if (v17)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1AF17D020(v16);
  v21 = sub_1AF17D030(v16);
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v232 = v22;
  v233 = v21;
  v231 = sub_1AF17D0AC(v16);
  sub_1AF174B64(v242);
  sub_1AF17C688(&v243, "#define OSD_UV_CORRECTION if (t > 0.5) { ti += 0.01f; } else { ti += 0.01f; }\n", 78);
  v234 = v19 + 2 * v18;
  if (v234)
  {
    sub_1AF17C688(&v243, "struct OsdInputVertexType { \n", 29);
    sub_1AF17C688(&v243, "    metal::packed_float3 position; \n", 36);
    for (i = 0; i != 8; ++i)
    {
      if (sub_1AF17CEB0(v16, i) == 2)
      {
        v24 = sub_1AF17C688(&v243, "    metal::packed_float2 texcoord", 33);
        std::to_string(&__dst, i);
        v25 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        v26 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        v27 = sub_1AF17C688(v24, v25, v26);
        sub_1AF17C688(v27, "; \n", 3);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v16) == 2)
    {
      sub_1AF17C688(&v243, "    metal::packed_float4 color; \n", 33);
    }

    sub_1AF17C688(&v243, "}; \n", 4);
    sub_1AF17C688(&v243, "#define OSD_USER_VARYING_DECLARE                             ", 61);
    for (j = 0; j != 8; ++j)
    {
      if (sub_1AF17CEB0(v16, j) == 2)
      {
        v29 = sub_1AF17C688(&v243, "float2 texcoord", 15);
        std::to_string(&__dst, j);
        v30 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        v31 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        v32 = sub_1AF17C688(v29, v30, v31);
        sub_1AF17C688(v32, "; ", 2);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v16) == 2)
    {
      sub_1AF17C688(&v243, "float4 color; ", 14);
    }

    sub_1AF17C688(&v243, "\n", 1);
    sub_1AF17C688(&v243, "#define OSD_USER_VARYING_DECLARE_PACKED                             ", 68);
    for (k = 0; k != 8; ++k)
    {
      if (sub_1AF17CEB0(v16, k) == 2)
      {
        v34 = sub_1AF17C688(&v243, "metal::packed_float2 texcoord", 29);
        std::to_string(&__dst, k);
        v35 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        v36 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        v37 = sub_1AF17C688(v34, v35, v36);
        sub_1AF17C688(v37, "; ", 2);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v16) == 2)
    {
      sub_1AF17C688(&v243, "metal::packed_float4 color; ", 28);
    }

    sub_1AF17C688(&v243, "\n", 1);
    sub_1AF17C688(&v243, "#define OSD_USER_VARYING_PER_VERTEX(in, out)                 ", 61);
    for (m = 0; m != 8; ++m)
    {
      if (sub_1AF17CEB0(v16, m) == 2)
      {
        v39 = sub_1AF17C688(&v243, "out.texcoord", 12);
        std::to_string(&__dst, m);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        v42 = sub_1AF17C688(v39, p_dst, size);
        v43 = sub_1AF17C688(v42, " = in.texcoord", 14);
        std::to_string(&v240, m);
        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v240;
        }

        else
        {
          v44 = v240.__r_.__value_.__r.__words[0];
        }

        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v45 = v240.__r_.__value_.__l.__size_;
        }

        v46 = sub_1AF17C688(v43, v44, v45);
        sub_1AF17C688(v46, "; ", 2);
        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v240.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v16) == 2)
    {
      sub_1AF17C688(&v243, "out.color = in.color; ", 22);
    }

    sub_1AF17C688(&v243, "\n", 1);
    sub_1AF17C688(&v243, "#define OSD_USER_VARYING_PER_CONTROL_POINT(in, out)          ", 61);
    for (n = 0; n != 8; ++n)
    {
      if (sub_1AF17CEB0(v16, n) == 2)
      {
        v48 = sub_1AF17C688(&v243, "out.texcoord", 12);
        std::to_string(&__dst, n);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &__dst;
        }

        else
        {
          v49 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = __dst.__r_.__value_.__l.__size_;
        }

        v51 = sub_1AF17C688(v48, v49, v50);
        v52 = sub_1AF17C688(v51, " = in.texcoord", 14);
        std::to_string(&v240, n);
        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v240;
        }

        else
        {
          v53 = v240.__r_.__value_.__r.__words[0];
        }

        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v54 = v240.__r_.__value_.__l.__size_;
        }

        v55 = sub_1AF17C688(v52, v53, v54);
        sub_1AF17C688(v55, "; ", 2);
        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v240.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v16) == 2)
    {
      sub_1AF17C688(&v243, "out.color = in.color; ", 22);
    }

    sub_1AF17C688(&v243, "\n", 1);
    sub_1AF17C688(&v243, "#define OSD_USER_VARYING_PER_EVAL_POINT(UV, a, b, c, d, out) ", 61);
    for (ii = 0; ii != 8; ++ii)
    {
      if (sub_1AF17CEB0(v16, ii) == 2)
      {
        v57 = sub_1AF17C688(&v243, "out.texcoord", 12);
        std::to_string(&__dst, ii);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &__dst;
        }

        else
        {
          v58 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = __dst.__r_.__value_.__l.__size_;
        }

        v60 = sub_1AF17C688(v57, v58, v59);
        v61 = sub_1AF17C688(v60, " = mix(mix(a.texcoord", 21);
        std::to_string(&v240, ii);
        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v240;
        }

        else
        {
          v62 = v240.__r_.__value_.__r.__words[0];
        }

        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v240.__r_.__value_.__l.__size_;
        }

        v64 = sub_1AF17C688(v61, v62, v63);
        v65 = sub_1AF17C688(v64, ", b.texcoord", 12);
        std::to_string(&v239, ii);
        if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v239;
        }

        else
        {
          v66 = v239.__r_.__value_.__r.__words[0];
        }

        if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v239.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v239.__r_.__value_.__l.__size_;
        }

        v68 = sub_1AF17C688(v65, v66, v67);
        v69 = sub_1AF17C688(v68, ", UV.x), mix(c.texcoord", 23);
        std::to_string(&v238, ii);
        if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v238;
        }

        else
        {
          v70 = v238.__r_.__value_.__r.__words[0];
        }

        if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = HIBYTE(v238.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v71 = v238.__r_.__value_.__l.__size_;
        }

        v72 = sub_1AF17C688(v69, v70, v71);
        v73 = sub_1AF17C688(v72, ", d.texcoord", 12);
        std::to_string(&v237, ii);
        if ((v237.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v237;
        }

        else
        {
          v74 = v237.__r_.__value_.__r.__words[0];
        }

        if ((v237.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(v237.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = v237.__r_.__value_.__l.__size_;
        }

        v76 = sub_1AF17C688(v73, v74, v75);
        sub_1AF17C688(v76, ", UV.x), UV.y); ", 16);
        if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v237.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v238.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v239.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v240.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v16) == 2)
    {
      sub_1AF17C688(&v243, "out.color = mix(mix(a.color, b.color, UV.x), mix(c.color, d.color, UV.x), UV.y); ", 81);
    }

    sub_1AF17C688(&v243, "\n", 1);
    sub_1AF17C688(&v243, "#define OSD_USER_VARYING_DECLARE_ATTRIBUTE                   ", 61);
    v77 = 0;
    v78 = 11;
    do
    {
      if (sub_1AF17CEB0(v16, v77) == 2)
      {
        v79 = sub_1AF17C688(&v243, "float2 texcoord", 15);
        std::to_string(&__dst, v77);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &__dst;
        }

        else
        {
          v80 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v81 = __dst.__r_.__value_.__l.__size_;
        }

        v82 = sub_1AF17C688(v79, v80, v81);
        v83 = sub_1AF17C688(v82, " [[attribute(", 13);
        std::to_string(&v240, v78);
        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v240;
        }

        else
        {
          v84 = v240.__r_.__value_.__r.__words[0];
        }

        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = v240.__r_.__value_.__l.__size_;
        }

        v86 = sub_1AF17C688(v83, v84, v85);
        sub_1AF17C688(v86, ")]]; ", 5);
        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v240.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        ++v78;
      }

      ++v77;
    }

    while (v77 != 8);
    if (sub_1AF17CEA8(v16) == 2)
    {
      v87 = sub_1AF17C688(&v243, "float4 color [[attribute(", 25);
      std::to_string(&__dst, v78);
      v88 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      v89 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
      v90 = sub_1AF17C688(v87, v88, v89);
      sub_1AF17C688(v90, ")]]; ", 5);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    sub_1AF17C688(&v243, "\n", 1);
  }

  else
  {
    sub_1AF17C688(&v243, "struct OsdInputVertexType { \n", 29);
    sub_1AF17C688(&v243, "    metal::packed_float3 position; \n", 36);
    sub_1AF17C688(&v243, "}; \n", 4);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v236, v91, &unk_1F25D4180, @"VERTEX_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v92, &unk_1F25D4198, @"PATCH_INDICES_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v93, &unk_1F25D41B0, @"CONTROL_INDICES_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v94, &unk_1F25D41C8, @"OSD_PATCHPARAM_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v95, &unk_1F25D41E0, @"OSD_PERPATCHVERTEXBEZIER_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v96, &unk_1F25D41F8, @"OSD_PERPATCHTESSFACTORS_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v97, &unk_1F25D4210, @"OSD_VALENCE_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v98, &unk_1F25D4228, @"OSD_QUADOFFSET_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v99, &unk_1F25D4240, @"TRANSFORMS_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v100, &unk_1F25D4258, @"TESSELLATION_LEVEL_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v101, &unk_1F25D41B0, @"INDICES_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v102, &unk_1F25D4270, @"QUAD_TESSFACTORS_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v103, &unk_1F25D41E0, @"OSD_PERPATCHVERTEXGREGORY_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v104, &unk_1F25D4288, @"OSD_PATCH_INDEX_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v105, &unk_1F25D42A0, @"OSD_DRAWINDIRECT_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v106, &unk_1F25D42B8, @"OSD_KERNELLIMIT_BUFFER_INDEX");
  v109 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v107, (v235 >> 8) & 1, v108);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v110, v109, @"OSD_PATCH_ENABLE_SINGLE_CREASE");
  v113 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v111, 0, v112);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v114, v113, @"OSD_FRACTIONAL_EVEN_SPACING");
  v117 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v115, (v235 >> 16) & 1, v116);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v118, v117, @"OSD_FRACTIONAL_ODD_SPACING");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v119, &unk_1F25D4150, @"OSD_MAX_TESS_LEVEL");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v120, &unk_1F25D42D0, @"USE_STAGE_IN");
  v123 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v121, (v235 & 0x10000) == 0, v122);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v124, v123, @"USE_PTVS_FACTORS");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v125, &unk_1F25D42E8, @"USE_PTVS_SHARPNESS");
  v128 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v126, WORD2(v235), v127);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v129, v128, @"THREADS_PER_THREADGROUP");
  if (v7 / WORD2(v235) <= 1)
  {
    v132 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v130, 1, v131);
  }

  else
  {
    v132 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v130, v7 / WORD2(v235), v131);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v236, v133, v132, @"CONTROL_POINTS_PER_THREAD");
  v136 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v134, v7, v135);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v137, v136, @"VERTEX_CONTROL_POINTS_PER_PATCH");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v138, &unk_1F25D42B8, @"OSD_MAX_VALENCE");
  v141 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v139, (v234 + 3), v140);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v142, v141, @"OSD_NUM_ELEMENTS");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v143, &unk_1F25D42D0, @"OSD_ENABLE_BACKPATCH_CULL");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v144, &unk_1F25D42D0, @"OSD_USE_PATCH_INDEX_BUFFER");
  v147 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v145, (v235 >> 16) & 1, v146);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v148, v147, @"OSD_ENABLE_SCREENSPACE_TESSELLATION");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v149, &unk_1F25D42D0, @"OSD_ENABLE_PATCH_CULL");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v150, &unk_1F25D42E8, @"NEEDS_BARRIER");
  if (v232 + 2 * v233)
  {
    v153 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v151, (v232 + 2 * v233), v152);
    objc_msgSend_setObject_forKeyedSubscript_(v236, v154, v153, @"OSD_FVAR_WIDTH");
    v157 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v155, v231, v156);
    objc_msgSend_setObject_forKeyedSubscript_(v236, v158, v157, @"OSD_FVAR_USES_MULTIPLE_CHANNELS");
    objc_msgSend_setObject_forKeyedSubscript_(v236, v159, &unk_1F25D4300, @"OSD_FVAR_DATA_BUFFER_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v236, v160, &unk_1F25D4318, @"OSD_FVAR_INDICES_BUFFER_INDEX");
    if ((v252[0] - 5) <= 4)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v236, v161, &unk_1F25D4150, @"OSD_FVAR_PATCHPARAM_BUFFER_INDEX");
      objc_msgSend_setObject_forKeyedSubscript_(v236, v162, &unk_1F25D4330, @"OSD_FVAR_PATCH_ARRAY_BUFFER_INDEX");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v236, v161, &unk_1F25D4300, @"OSD_FVAR_CHANNELS_CHANNEL_COUNT_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v236, v163, &unk_1F25D4318, @"OSD_FVAR_CHANNELS_CHANNEL_DESCRIPTORS_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v236, v164, &unk_1F25D4150, @"OSD_FVAR_CHANNELS_PACKED_DATA_BUFFER_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v236, v165, &unk_1F25D4330, @"OSD_FVAR_CHANNELS_PATCH_ARRAY_INDEX_BUFFER_INDEX");
  }

  objc_msgSend_setObject_forKeyedSubscript_(v236, v151, &unk_1F25D4348, @"OSD_PRIMVAR_INTERPOLATION_MODE_USER_VARYING");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v166, &unk_1F25D4360, @"OSD_PRIMVAR_INTERPOLATION_MODE_FACE_VARYING");
  v167 = MEMORY[0x1E696AD98];
  v168 = sub_1AF17CEA8(v16);
  v171 = objc_msgSend_numberWithUnsignedInt_(v167, v169, v168, v170);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v172, v171, @"OSD_COLOR_INTERPOLATION_MODE");
  v173 = MEMORY[0x1E696AD98];
  v174 = sub_1AF17CEB0(v16, 0);
  v177 = objc_msgSend_numberWithUnsignedInt_(v173, v175, v174, v176);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v178, v177, @"OSD_TEXCOORD0_INTERPOLATION_MODE");
  v179 = MEMORY[0x1E696AD98];
  v180 = sub_1AF17CEB0(v16, 1);
  v183 = objc_msgSend_numberWithUnsignedInt_(v179, v181, v180, v182);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v184, v183, @"OSD_TEXCOORD1_INTERPOLATION_MODE");
  v185 = MEMORY[0x1E696AD98];
  v186 = sub_1AF17CEB0(v16, 2);
  v189 = objc_msgSend_numberWithUnsignedInt_(v185, v187, v186, v188);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v190, v189, @"OSD_TEXCOORD2_INTERPOLATION_MODE");
  v191 = MEMORY[0x1E696AD98];
  v192 = sub_1AF17CEB0(v16, 3);
  v195 = objc_msgSend_numberWithUnsignedInt_(v191, v193, v192, v194);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v196, v195, @"OSD_TEXCOORD3_INTERPOLATION_MODE");
  v197 = MEMORY[0x1E696AD98];
  v198 = sub_1AF17CEB0(v16, 4);
  v201 = objc_msgSend_numberWithUnsignedInt_(v197, v199, v198, v200);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v202, v201, @"OSD_TEXCOORD4_INTERPOLATION_MODE");
  v203 = MEMORY[0x1E696AD98];
  v204 = sub_1AF17CEB0(v16, 5);
  v207 = objc_msgSend_numberWithUnsignedInt_(v203, v205, v204, v206);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v208, v207, @"OSD_TEXCOORD5_INTERPOLATION_MODE");
  v209 = MEMORY[0x1E696AD98];
  v210 = sub_1AF17CEB0(v16, 6);
  v213 = objc_msgSend_numberWithUnsignedInt_(v209, v211, v210, v212);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v214, v213, @"OSD_TEXCOORD6_INTERPOLATION_MODE");
  v215 = MEMORY[0x1E696AD98];
  v216 = sub_1AF17CEB0(v16, 7);
  v219 = objc_msgSend_numberWithUnsignedInt_(v215, v217, v216, v218);
  objc_msgSend_setObject_forKeyedSubscript_(v236, v220, v219, @"OSD_TEXCOORD7_INTERPOLATION_MODE");
  objc_msgSend_setObject_forKeyedSubscript_(v236, v221, &unk_1F25D42D0, @"CFX_OPTIMIZE_OPENSUBDIV_STORAGE");
  v223 = MEMORY[0x1E696AEC0];
  if ((v250 & 0x10) != 0)
  {
    v225 = v249;
    if (v249 < v246)
    {
      v249 = v246;
      v225 = v246;
    }

    locale = v245[4].__locale_;
  }

  else
  {
    if ((v250 & 8) == 0)
    {
      v224 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_202;
    }

    locale = v245[1].__locale_;
    v225 = v245[3].__locale_;
  }

  v224 = v225 - locale;
  if ((v225 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  if (v224 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v225 - locale;
  if (v224)
  {
    memmove(&__dst, locale, v224);
  }

LABEL_202:
  __dst.__r_.__value_.__s.__data_[v224] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v227 = objc_msgSend_stringWithCString_encoding_(v223, v222, &__dst, 4);
  }

  else
  {
    v227 = objc_msgSend_stringWithCString_encoding_(v223, v222, __dst.__r_.__value_.__l.__data_, 4);
  }

  v228 = v227;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v242[0] = *MEMORY[0x1E69E54D8];
  v229 = *(MEMORY[0x1E69E54D8] + 72);
  *(v242 + *(v242[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v243 = v229;
  v244 = MEMORY[0x1E69E5548] + 16;
  if (v248 < 0)
  {
    operator delete(__p);
  }

  v244 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v245);
  std::iostream::~basic_iostream();
  MEMORY[0x1B271C650](&v251);
  return v228;
}

void sub_1AF174A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_1AF17A1D4(&a45, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B271C650](&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF174B38(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 8)
  {
    return -1;
  }

  else
  {
    return word_1AFE21770[v1];
  }
}

uint64_t *sub_1AF174B64(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1AF17C4C4((a1 + 3), 24);
  return a1;
}

void sub_1AF174DE0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B271C650](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF174E14(__n128 *a1)
{
  v1 = a1[10].n128_u64[0];
  if (!v1)
  {
    return 0;
  }

  v5 = 0uLL;
  v6 = 0;
  sub_1AF1B40F0(a1, &v5);
  if ((v6 & 0x100) != 0)
  {
    v3 = a1[8].n128_u64[1];
    if (v3)
    {
      LODWORD(v3) = a1[9].n128_u64[0] != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (*(v1 + 3) && v1[4] == ((BYTE1(v6) >> 1) & 1) && v1[2] == a1[8].n128_u8[1] && v3 == v1[3] && *v1 == a1[8].n128_u8[0] && v1[7] == a1[8].n128_u8[3] && v1[8] == a1[8].n128_u8[4] && *(v1 + 2) == (a1[9].n128_u64[0] ^ a1[8].n128_u64[1]))
  {
    return 0;
  }

  sub_1AF174F04(a1);
  return 1;
}

void sub_1AF174F04(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    v3 = v1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v1);
    *(a1 + 160) = 0;
  }
}

char *sub_1AF174F44(uint64_t a1, int a2, uint64_t a3)
{
  sub_1AF17CA14();
  v6 = *(a1 + 160);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (v7)
  {
    if (!v6)
    {
      return v6;
    }

    v43 = a3;
    v8 = *(v6 + 3) == 0;
  }

  else
  {
    if (!*(a1 + 128))
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8CDC(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v45 = 0uLL;
    v46 = 0;
    sub_1AF1B40F0(a1, &v45);
    v17 = (v46 & 0x100) != 0 && *(a1 + 136) && *(a1 + 144) != 0;
    v18 = *(a1 + 128);
    v19 = *(a1 + 129);
    v20 = (BYTE1(v46) >> 1) & 1;
    v43 = a3;
    v21 = sub_1AF1305F8(a3, 64);
    v22 = *(a1 + 131);
    v23 = *(a1 + 144) ^ *(a1 + 136);
    v6 = malloc_type_malloc(0x20uLL, 0x10200404C916D5DuLL);
    *(a1 + 160) = v6;
    *v6 = v18;
    v6[1] = 0;
    v6[2] = v19;
    v6[3] = v17;
    v6[4] = v20;
    v6[5] = v21;
    v6[6] = 0;
    *(v6 + 7) = v22;
    *(v6 + 3) = 0;
    *(v6 + 9) = 0;
    v8 = 1;
    *(v6 + 2) = v23;
    *(v6 + 3) = 0;
  }

  if (v8 && a2 != 0)
  {
    if (!v43)
    {
      v25 = sub_1AF0D5194();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD2B48(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    v33 = sub_1AF12E2AC(v43);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1AF17515C;
    v44[3] = &unk_1E7A7AFA8;
    v44[4] = v33;
    v44[5] = a1;
    v44[6] = v6;
    v37 = objc_msgSend_resourceManager(v33, v34, v35, v36);
    v41 = objc_msgSend_commandQueue(v33, v38, v39, v40);
    *(v6 + 3) = sub_1AF1751D0(a1, v43, v6, v37, v41, v44);
  }

  return v6;
}

void sub_1AF17515C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_commandBufferStatusMonitor(*(a1 + 32), a2, a3, a4);
  objc_msgSend_renderContext_commandBufferDidCompleteWithError_(v6, v7, *(a1 + 32), a2);
  v8 = sub_1AF0D5194();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD8D54(a1);
  }

  v9 = *(*(a1 + 48) + 24);
  if (v9)
  {
    CFRelease(v9);
    *(*(a1 + 48) + 24) = 0;
  }
}

uint64_t sub_1AF1751D0(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5, uint64_t a6)
{
  v53[5] = *MEMORY[0x1E69E9840];
  sub_1AF16CBEC(a1);
  if (!a2 || (v8 = sub_1AF12F398(a2), !*(v8 + 16)) || (v9 = v8, v10 = sub_1AF17A324(a1), (v11 = (*(v9 + 16))(a2, v10)) == 0) || (v13 = sub_1AF1720C0(v11, v12, a3, a4, a5, a6)) == 0)
  {
    if (sub_1AF17D0F0(a1))
    {
      if (!a5)
      {
        v14 = sub_1AF0D5194();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD8A54(v14, v15, v16, v17, v18, v19, v20, v21);
        }
      }

      os_variant_has_internal_diagnostics();
      v25 = objc_msgSend_commandBuffer(a5, v22, v23, v24);
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = sub_1AF17A588;
      v53[3] = &unk_1E7A7B060;
      v53[4] = a6;
      objc_msgSend_addCompletedHandler_(v25, v26, v53, v27);
      v31 = objc_msgSend_computeCommandEncoder(v25, v28, v29, v30);
      v49 = objc_msgSend_device(a5, v32, v33, v34);
      v50 = a5;
      v51 = v25;
      v52 = v31;
      v35 = sub_1AF1B2C1C(a1);
      sub_1AF17D98C((a1 + 128), v35);
      sub_1AF17CBA0(a1 + 128, v35);
      v43 = 0u;
      v42 = 0u;
      *&v41[8] = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0;
      sub_1AF17EC80(v41, a1 + 128, v35);
      sub_1AF17DF0C(a1 + 128);
    }

    return 0;
  }

  return v13;
}

void sub_1AF176168(_Unwind_Exception *a1)
{
  sub_1AF17C11C((v1 + 320));
  sub_1AF17C22C(v1 + 432);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF176290(uint64_t a1)
{
  v1 = *(*(a1 + 160) + 24);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

double sub_1AF1762AC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (!v5 || v5 != a4)
    {
      *(v4 + 16) = a4;
      v38 = *(v4 + 28);
      if (!*(v4 + 360))
      {
        v9 = sub_1AF0D5194();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD8EE0(v9, a2, a3, a4, v10, v11, v12, v13);
        }
      }

      v14 = objc_msgSend_commandQueue(a3, a2, a3, a4);
      v18 = objc_msgSend_resourceComputeEncoder(a3, v15, v16, v17);
      v19 = sub_1AFDE323C(*(v4 + 360));
      objc_msgSend_setComputePipelineState_(v18, v20, v19, v21);
      v22 = sub_1AF17CF8C(*(v4 + 24));
      v23 = sub_1AF17CF9C(*(v4 + 24));
      if (v22)
      {
        v25 = 4;
      }

      else
      {
        v25 = 0;
      }

      v37 = ((v25 + 2 * v23) & 0xFE) + 3;
      objc_msgSend_setBuffer_offset_atIndex_(v18, v24, a2, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v18, v26, *(v4 + 64), 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v18, v27, *(v4 + 352), 0, 2);
      objc_msgSend_setBytes_length_atIndex_(v18, v28, &v37, 4, 3);
      objc_msgSend_setBytes_length_atIndex_(v18, v29, &v38, 4, 4);
      objc_msgSend_dispatchOnGrid1D_(v18, v30, v38, v31);
      v36[0] = objc_msgSend_device(v14, v32, v33, v34);
      v36[1] = v14;
      v36[2] = 0;
      v36[3] = v18;
      return sub_1AF171E30(v4 + 144, v36);
    }
  }

  return result;
}

BOOL sub_1AF17641C(uint64_t a1)
{
  result = 0;
  if (*(a1 + 2) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (!*(v1 + 20))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF176448(uint64_t result, void *a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*(result + 2) == 1)
  {
    v62 = v5;
    v63 = v6;
    v7 = result;
    v8 = *(result + 24);
    if (v8)
    {
      v9 = *(v8 + 20);
      if (!v9 || v9 != a4)
      {
        *(v8 + 20) = a4;
        LOBYTE(a5) = *(result + 1);
        v61 = LODWORD(a5);
        v12 = objc_msgSend_resourceComputeEncoder(a2, a2, a3, a4);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v13, *(v8 + 64), *(v8 + 72), 5);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v14, *(v8 + 48), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v15, *(v8 + 56), 0, 8);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v16, *(v8 + 264), 0, 11);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v17, *(v8 + 232), 0, 19);
        objc_msgSend_setBytes_length_atIndex_(v12, v18, &v61, 4, 13);
        result = objc_msgSend_setBytes_length_atIndex_(v12, v19, a3, 192, 22);
        if (*(v7 + 6) == 2)
        {
          objc_msgSend_setBuffer_offset_atIndex_(v12, v20, *(v8 + 104), 0, 10);
          result = objc_msgSend_setBuffer_offset_atIndex_(v12, v21, *(v8 + 96), 0, 9);
        }

        if (*(v8 + 32))
        {
          v22 = 0;
          v49 = xmmword_1AFE21730;
          v23 = 1;
          do
          {
            v24 = (*(v8 + 40) + 16 * v22);
            v26 = *v24;
            v25 = v24[1];
            v28 = v24[2];
            v27 = v24[3];
            v60 = v26;
            if ((v26 - 6) <= 2)
            {
              objc_msgSend_setBuffer_offset_atIndex_(v12, v20, *(v8 + 248), 0, 7);
            }

            v29 = sub_1AF174B38(&v60);
            v31 = v29;
            if (v26 == 9)
            {
              v32 = 4;
            }

            else
            {
              v32 = v29;
            }

            v33 = v32 >> 5;
            if (v33 <= 1)
            {
              v33 = 1;
            }

            v50 = v33;
            objc_msgSend_setBufferOffset_atIndex_(v12, v30, 12 * v27, 8, v49);
            objc_msgSend_setBufferOffset_atIndex_(v12, v34, 4 * v28, 6);
            v35 = sub_1AFDE323C(*(v8 + 272 + 8 * v26));
            objc_msgSend_setComputePipelineState_(v12, v36, v35, v37);
            v39 = 0;
            if (v26 > 4)
            {
              if (v26 <= 6)
              {
                if (v26 == 5)
                {
LABEL_30:
                  v42 = sub_1AF0D5194();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    sub_1AFDD8BB8(&v58, v59);
                  }

                  goto LABEL_32;
                }

                v39 = v25 * v31;
                objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 240), 19);
                objc_msgSend_setBufferOffset_atIndex_(v12, v41, *(v8 + 256), 7);
              }

              else
              {
                if (v26 == 7)
                {
                  v39 = 4 * v25;
                  objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 242), 19);
                  objc_msgSend_setBufferOffset_atIndex_(v12, v43, *(v8 + 258), 7);
                  v45 = *(v8 + 112);
                }

                else
                {
                  if (v26 != 8)
                  {
                    if (v26 == 9)
                    {
                      v39 = 4 * v25;
                      objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 246), 19);
                    }

                    goto LABEL_36;
                  }

                  v39 = 4 * v25;
                  objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 244), 19);
                  objc_msgSend_setBufferOffset_atIndex_(v12, v46, *(v8 + 260), 7);
                  v45 = *(v8 + 116);
                }

                objc_msgSend_setBufferOffset_atIndex_(v12, v44, 4 * v45, 10);
              }
            }

            else
            {
              if (v26 < 3)
              {
                goto LABEL_30;
              }

              if ((v26 - 3) < 2)
              {
                v40 = sub_1AF0D5194();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDD8BB8(&v56, v57);
                }

LABEL_32:
                v39 = 0;
              }
            }

LABEL_36:
            v55 = v39;
            objc_msgSend_setBytes_length_atIndex_(v12, v38, &v55, 4, 12);
            if (*(v7 + 5) == 1)
            {
              v53 = v25 * v32;
              v54 = vdupq_n_s64(1uLL);
              v51 = v49;
              v52 = 1;
              result = objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v12, v47, &v53, &v51);
            }

            else
            {
              v53 = ((v25 * v32 / v50) + 31) >> 5;
              v54 = vdupq_n_s64(1uLL);
              v51 = v49;
              v52 = 1;
              result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v12, v47, &v53, &v51);
            }

            v22 = v23;
          }

          while (*(v8 + 32) > v23++);
        }
      }
    }
  }

  return result;
}

void sub_1AF176848(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return;
  }

  if (!sub_1AF171650(*(a1 + 24), a3))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8F58(v14);
    }
  }

  if ((a3 - 2) > 4)
  {
    v15 = 3;
  }

  else
  {
    v15 = dword_1AFE21784[(a3 - 2)];
  }

  v16 = v5[11];
  if (v16)
  {
    v17 = -1227133513 * ((v16[1] - *v16) >> 3);
  }

  else
  {
    v17 = 0;
  }

  v75 = v17;
  v86 = v17;
  v18 = objc_msgSend_renderEncoder(a2, v11, v12, v13);
  LODWORD(v19) = 1.0;
  objc_msgSend_setTessellationFactorScale_(*(v18 + 2), v20, v21, v22, v19);
  v25 = v5[8];
  v26 = v5[6];
  if (!v25)
  {
    v27 = sub_1AF0D5194();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8FF0(v27, v23, v28, v29, v30, v31, v32, v33);
    }
  }

  v74 = v15 - 5;
  LOBYTE(v24) = *(a1 + 1);
  v85 = v24;
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v23, v25, 0, 5);
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v34, v26, 0, 6);
  sub_1AF176E98(v18, &v85, 4uLL, 13);
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v35, v5[33], 0, 11);
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v36, v5[7], 0, 8);
  if (v16)
  {
    if (v75 >= 2)
    {
      sub_1AF176E98(v18, &v86, 4uLL, 14);
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v38, v5[16], 0, 15);
      v39 = v5 + 17;
LABEL_20:
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, *v39, 0, 16);
      goto LABEL_21;
    }

    v40 = v5[11];
    v41 = *v40;
    if (v40[1] == *v40)
    {
LABEL_78:
      sub_1AF10A1D0();
    }

    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, v41[4], v41[5], 14);
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v42, v41[2], 0, 15);
    if (v74 <= 4)
    {
      v39 = v41 + 3;
      goto LABEL_20;
    }
  }

LABEL_21:
  if (*(a1 + 6) == 2)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, v5[13], 0, 10);
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v43, v5[12], 0, 9);
  }

  v84 = 0;
  v44 = v5[4];
  if (v44)
  {
    LODWORD(v45) = 0;
    v46 = 0;
    v47 = v15 - 6;
    v48 = a4;
    v49 = a5;
    while (1)
    {
      v50 = (v5[5] + 16 * v46);
      v83 = *v50;
      if (v83 == v15)
      {
        break;
      }

LABEL_67:
      v45 = (v45 + 1);
      v84 = v45;
      v46 = v45;
      if (v44 <= v45)
      {
        return;
      }
    }

    if (v47 <= 2)
    {
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, v5[31], 0, 7);
    }

    objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v37, 12 * v50[3], 8);
    objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v51, 4 * v50[2], 6);
    if (v16)
    {
      if (v75 >= 2)
      {
        v53 = &v84;
        v54 = v18;
        v55 = 4;
LABEL_34:
        sub_1AF176E98(v54, v53, v55, 17);
        goto LABEL_35;
      }

      v56 = *v5[11];
      if (*(v5[11] + 8) == v56)
      {
        goto LABEL_78;
      }

      v57 = *(v56 + 8) + 16 * v84;
      objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v52, 4 * *(v57 + 8), 15);
      if (v74 <= 4)
      {
        objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v52, 12 * *(v57 + 12), 16);
        v54 = v18;
        v53 = v57;
        v55 = 16;
        goto LABEL_34;
      }
    }

LABEL_35:
    if (v15 > 9)
    {
      goto LABEL_43;
    }

    if (((1 << v15) & 0x27) != 0)
    {
      v58 = sub_1AF0D5194();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD8BB8(&v81, v82);
      }
    }

    else
    {
      if (((1 << v15) & 0x1C0) != 0)
      {
        objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v52, *(v5 + v47 + 128), 7);
      }

      else if (v15 != 9)
      {
        goto LABEL_43;
      }

      objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v18 + 2), v52, v5[29], *(v5 + v47 + 120), 0);
    }

LABEL_43:
    v59 = sub_1AF174B38(&v83);
    v60 = v5[15];
    if (!v60)
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      operator new();
    }

    v61 = *v60;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v5[15] + 8) - v61) >> 3) <= v48)
    {
      sub_1AF10A1D0();
    }

    v62 = *(v61 + 24 * v48);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v61 + 24 * v48 + 8) - v62) >> 3) <= v84)
    {
      sub_1AF10A1D0();
    }

    sub_1AF17C3C0(&v78, (v62 + 24 * v84));
    if (v15 > 4)
    {
      if ((v15 - 6) < 4)
      {
        v63 = v78;
        v68 = v79;
        if (v78 != v79)
        {
          do
          {
            objc_msgSend_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_(*(v18 + 2), v37, v59, *v63, v63[1], 0, 0, *v18 * v49, 0);
            v63 += 2;
          }

          while (v63 != v68);
LABEL_63:
          v63 = v78;
        }

LABEL_64:
        if (v63)
        {
          v79 = v63;
          operator delete(v63);
        }

        LODWORD(v45) = v84;
        v44 = v5[4];
        goto LABEL_67;
      }
    }

    else if (v15 >= 3)
    {
      if (v15 != 3)
      {
        v63 = v78;
        v70 = v79;
        if (v78 == v79)
        {
          goto LABEL_64;
        }

        do
        {
          v71 = 3 * *v63;
          v72 = 3 * v63[1];
          v73 = *(v18 + 2);
          if (*v18 * v49 < 2)
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v73, v37, 3, v71, v72);
          }

          else
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v73, v37, 3, v71, v72);
          }

          v63 += 2;
        }

        while (v63 != v70);
        goto LABEL_63;
      }

      v63 = v78;
      v64 = v79;
      if (v78 != v79)
      {
        do
        {
          v65 = 6 * *v63;
          v66 = 6 * v63[1];
          v67 = *(v18 + 2);
          if (*v18 * v49 < 2)
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v67, v37, 3, v65, v66);
          }

          else
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v67, v37, 3, v65, v66);
          }

          v63 += 2;
        }

        while (v63 != v64);
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    v69 = sub_1AF0D5194();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD8BB8(&v76, v77);
    }

    goto LABEL_63;
  }
}

void sub_1AF176E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF176E98(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v6 = CFXBufferAllocatorPerFrameAllocateWithBytes(**(a1 + 32), a2, a3);
  v8 = v7;
  MTLBuffer = CFXBufferSliceGetMTLBuffer(v6, v7);
  v11 = *(a1 + 16);

  return objc_msgSend_setVertexBuffer_offset_atIndex_(v11, v9, MTLBuffer, v8, a4);
}

uint64_t sub_1AF176F00(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = *(*(a1 + 160) + 24);
  v9 = sub_1AF170BF8(a1);
  result = sub_1AF170C98(a1);
  if (v9 && result)
  {
    result = sub_1AFDEA180(a2, 0, v11, v12);
    v13 = result;
    if (*(v8 + 752))
    {
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v190 = result;
      v14 = sub_1AF1B2C1C(a1);
      v15 = sub_1AF1A4C6C(v14, 0, 0);
      *(v8 + 728) = 0;
      v16 = sub_1AF1A3CCC(v14);
      if (v16 >= 1)
      {
        v17 = v16;
        for (i = 0; i != v17; ++i)
        {
          v19 = sub_1AF1A3D1C(v14, i, 0);
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          sub_1AF1A767C(v19, v15, &v195);
          v194[0] = v195;
          v194[1] = v196;
          v194[2] = v197;
          v194[3] = v198;
          v193[0] = MEMORY[0x1E69E9820];
          v193[1] = 3221225472;
          v193[2] = sub_1AF1774C0;
          v193[3] = &unk_1E7A7AFC8;
          v193[4] = v8;
          sub_1AF1A80E4(v194, v193, v197);
        }
      }

      v20 = *(v8 + 728) << 6;
      v21 = malloc_type_malloc(v20, 0x1000040E0EAB150uLL);
      sub_1AF1B40A0(a1);
      v22 = 8 * *(v8 + 728);
      v23 = malloc_type_malloc(v22, 0x100004052888210uLL);
      *&v195 = 0;
      *(&v195 + 1) = &v195;
      *&v196 = 0x2020000000;
      DWORD2(v196) = 0;
      v192[0] = MEMORY[0x1E69E9820];
      v192[1] = 3221225472;
      v192[2] = sub_1AF1774D4;
      v192[3] = &unk_1E7A7AFF0;
      v192[4] = &v195;
      v192[5] = v21;
      v192[6] = v23;
      sub_1AF170D90(a1, v192);
      v27 = objc_msgSend_device(v190, v24, v25, v26);
      *(v8 + 736) = objc_msgSend_newBufferWithBytes_length_options_(v27, v28, v21, v20, 0);
      *(v8 + 744) = objc_msgSend_newBufferWithBytes_length_options_(v27, v29, v23, v22, 0);
      free(v21);
      free(v23);
      v30 = objc_alloc_init(MEMORY[0x1E69741E0]);
      v34 = objc_msgSend_attributes(v30, v31, v32, v33);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, 0, v36);
      objc_msgSend_setFormat_(v37, v38, 30, v39);
      v43 = objc_msgSend_attributes(v30, v40, v41, v42);
      v46 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0, v45);
      objc_msgSend_setOffset_(v46, v47, 0, v48);
      v52 = objc_msgSend_attributes(v30, v49, v50, v51);
      v55 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 0, v54);
      objc_msgSend_setBufferIndex_(v55, v56, 18, v57);
      v61 = objc_msgSend_attributes(v30, v58, v59, v60);
      v64 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 3, v63);
      objc_msgSend_setFormat_(v64, v65, 31, v66);
      v70 = objc_msgSend_attributes(v30, v67, v68, v69);
      v73 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 3, v72);
      objc_msgSend_setOffset_(v73, v74, 16, v75);
      v79 = objc_msgSend_attributes(v30, v76, v77, v78);
      v82 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, 3, v81);
      objc_msgSend_setBufferIndex_(v82, v83, 19, v84);
      v88 = objc_msgSend_layouts(v30, v85, v86, v87);
      v91 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, 18, v90);
      objc_msgSend_setStride_(v91, v92, 32, v93);
      v97 = objc_msgSend_layouts(v30, v94, v95, v96);
      v100 = objc_msgSend_objectAtIndexedSubscript_(v97, v98, 18, v99);
      objc_msgSend_setStepFunction_(v100, v101, 1, v102);
      v106 = objc_msgSend_layouts(v30, v103, v104, v105);
      v109 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, 19, v108);
      objc_msgSend_setStride_(v109, v110, 32, v111);
      v115 = objc_msgSend_layouts(v30, v112, v113, v114);
      v118 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, 19, v117);
      objc_msgSend_setStepFunction_(v118, v119, 1, v120);
      *(v8 + 752) = v30;
      _Block_object_dispose(&v195, 8);
      v13 = v190;
    }

    v121 = sub_1AFDEA004(a2);
    v125 = objc_msgSend_attributes(v121, v122, v123, v124);
    v128 = objc_msgSend_objectAtIndexedSubscript_(v125, v126, 0, v127);
    v132 = objc_msgSend_attributes(*(v8 + 752), v129, v130, v131);
    v135 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, 0, v134);
    v142 = objc_msgSend_format(v128, v136, v137, v138) - 26;
    if (v142 < 6 && ((0x33u >> v142) & 1) != 0)
    {
      v143 = qword_1AFE21798[v142];
    }

    else
    {
      v144 = sub_1AF0D5194();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD9068(v128, v144, v140, v141);
      }

      v143 = 0;
    }

    if (!*(v8 + 760))
    {
      LODWORD(v195) = v143;
      v145 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_withName_(v145, v146, &v195, 33, @"src_type_size");
      v150 = objc_msgSend_resourceManager(a3, v147, v148, v149);
      v153 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v151, @"%d", v152, v195);
      v155 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(v150, v154, @"vfx_osd_synchronize_coarse_positions_authoring", v145, v153);

      *(v8 + 760) = v155;
    }

    v156 = objc_msgSend_offset(v128, v139, v140, v141);
    v157 = sub_1AFDEA004(a2);
    v161 = objc_msgSend_layouts(v157, v158, v159, v160);
    v165 = objc_msgSend_bufferIndex(v128, v162, v163, v164);
    v168 = objc_msgSend_objectAtIndexedSubscript_(v161, v166, v165, v167);
    LODWORD(v195) = objc_msgSend_stride(v168, v169, v170, v171) / v143;
    LODWORD(v161) = objc_msgSend_offset(v135, v172, v173, v174);
    LODWORD(v194[0]) = 8;
    v191 = 2 * *(v8 + 728);
    v178 = objc_msgSend_resourceComputeEncoder(a3, v175, v176, v177);
    objc_msgSend_resetCache(v178, v179, v180, v181);
    objc_msgSend_setBuffer_offset_atIndex_(v178, v182, v13, v156, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v178, v183, *(v8 + 736), v161, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v178, v184, *(v8 + 744), 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v178, v185, &v195, 4, 3);
    objc_msgSend_setBytes_length_atIndex_(v178, v186, v194, 4, 4);
    objc_msgSend_setBytes_length_atIndex_(v178, v187, &v191, 4, 5);
    v188 = sub_1AFDE323C(*(v8 + 760));
    return objc_msgSend_dispatchOnVertices_vertexCount_(v178, v189, v188, v191);
  }

  return result;
}

unint64_t sub_1AF1774D4(void *a1, int a2, int a3, float a4)
{
  result = sub_1AF170D58(a4);
  v8 = a1[5] + 32 * (2 * *(*(a1[4] + 8) + 24));
  *(v8 + 16) = result;
  *(v8 + 24) = v9;
  v10 = a1[5] + 32 * ((2 * *(*(a1[4] + 8) + 24)) | 1u);
  *(v10 + 16) = result;
  *(v10 + 24) = v9;
  v11 = a1[6];
  *(v11 + 4 * (2 * *(*(a1[4] + 8) + 24))) = a2;
  *(v11 + 4 * ((2 * (*(*(a1[4] + 8) + 24))++) | 1u)) = a3;
  return result;
}

uint64_t sub_1AF17757C(uint64_t result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v6 = *(*(a2 + 160) + 24);
  v7 = v6[94];
  if (v7)
  {
    v9[0] = v6[92];
    v9[1] = v9[0];
    v8 = 0u;
    return sub_1AF100354(result, 1, 2 * v6[91], v9, &v8, 18, 2, v7, a3, a4, a5, a6, 0, 0);
  }

  return result;
}

uint64_t sub_1AF177608(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 120);
  if (!v4)
  {
    return 1;
  }

  v5 = *v4;
  v6 = *(*(a1 + 120) + 8) - v5;
  if (v6 == 24)
  {
    return 1;
  }

  if (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) <= a2)
  {
    sub_1AF10A1D0();
  }

  v9 = (v5 + 24 * a2);
  v8 = *v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 3) <= a3)
  {
    sub_1AF10A1D0();
  }

  v10 = v8 + 24 * a3;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v11 == v12)
  {
    return 0;
  }

  do
  {
    v13 = *v11 > a4 || v11[1] + *v11 <= a4;
    result = !v13;
    if (!v13)
    {
      break;
    }

    v11 += 2;
  }

  while (v11 != v12);
  return result;
}

uint64_t sub_1AF1776C8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 120);
  if (v5)
  {
    v6 = -1431655765 * ((v5[1] - *v5) >> 3);
    if (v6)
    {
      v7 = 0;
      v8 = a2;
      do
      {
        v9 = **(v4 + 120);
        if (0xAAAAAAAAAAAAAAABLL * ((*(*(v4 + 120) + 8) - v9) >> 3) <= v7)
        {
          sub_1AF10A1D0();
        }

        v10 = v7;
        v12 = (v9 + 24 * v7);
        v11 = *v12;
        if (0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3) <= v8)
        {
          sub_1AF10A1D0();
        }

        v13 = (v11 + 24 * v8);
        v14 = *v13;
        v15 = v13[1];
        while (v14 != v15)
        {
          v16 = *v14;
          v17 = v14[1];
          v14 += 2;
          result = (*(a3 + 16))(a3, v10, v16, v17);
        }

        v7 = v10 + 1;
      }

      while (v10 + 1 != v6);
    }
  }

  else
  {
    v18 = *(*(result + 40) + 16 * a2 + 4);
    v19 = *(a3 + 16);

    return v19(a3, 0, 0, v18);
  }

  return result;
}

uint64_t sub_1AF17780C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v477 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_resourceManager(a2, a2, a3, a4);
  v7 = *(a1 + 160);
  v8 = *(v7 + 24);
  v9 = *(v8 + 400);
  v445 = v8;
  if (!v9)
  {
    v412 = v6;
    v10 = sub_1AF1B2C1C(a1);
    if (!sub_1AF16CBEC(v10))
    {
      sub_1AF16CBEC(a1);
    }

    if (*(v7 + 2) == 1)
    {
      v411 = v7;
      v14 = *(v445 + 56);
      if (objc_msgSend_storageMode(v14, v11, v12, v13) != 2)
      {
        if (objc_msgSend_storageMode(v14, v15, v16, v17))
        {
          v18 = sub_1AF0D5194();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD9134(v18, v15, v16, v17, v19, v20, v21, v22);
          }
        }
      }

      v23 = objc_msgSend_length(v14, v15, v16, v17);
      v24 = malloc_type_malloc(v23, 0x10000403E1C8BA9uLL);
      v28 = objc_msgSend_device(v4, v25, v26, v27);
      v32 = objc_msgSend_length(v14, v29, v30, v31);
      v417 = v24;
      v34 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v28, v33, v24, v32, 0, 0);
      v410 = v4;
      v38 = objc_msgSend_commandQueue(v4, v35, v36, v37);
      v42 = objc_msgSend_commandBuffer(v38, v39, v40, v41);
      v46 = objc_msgSend_blitCommandEncoder(v42, v43, v44, v45);
      v50 = objc_msgSend_length(v14, v47, v48, v49);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v46, v51, v14, 0, v34, 0, v50);
      objc_msgSend_endEncoding(v46, v52, v53, v54);
      objc_msgSend_commit(v42, v55, v56, v57);
      objc_msgSend_waitUntilCompleted(v42, v58, v59, v60);

      v420 = sub_1AF17CEB0(*(v445 + 24), 0);
      v459 = v420 == 3;
      v61 = sub_1AF1A3CCC(v10);
      v438 = v61;
      if (v61 > 1 == (*(v445 + 120) == 0))
      {
        v63 = sub_1AF0D5194();
        v61 = os_log_type_enabled(v63, OS_LOG_TYPE_FAULT);
        if (v61)
        {
          sub_1AFDD91AC(v63, v62, v64, v65, v66, v67, v68, v69);
        }
      }

      v409 = &v405;
      v70 = v438;
      v71 = (4 * v438);
      MEMORY[0x1EEE9AC00](v61, v62);
      v423 = &v405 - ((v71 + 15) & 0x7FFFFFFF0);
      bzero(v423, v71);
      v74 = v412;
      if (*(v445 + 32))
      {
        v75 = 0;
        v435 = 0;
        v76 = 0;
        v77 = 0;
        v443 = v456;
        v444 = v454;
        v78 = v445;
        v441 = v452;
        v442 = v71;
        while (1)
        {
          v79 = (*(v78 + 40) + 16 * v75);
          v80 = *v79;
          v81 = v79[1];
          if (*v79 > 4)
          {
            if (v80 - 7 < 3)
            {
              v83 = sub_1AF0D5194();
              v72 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
              if (v72)
              {
                sub_1AFDD8BB8(&v449, v450);
              }

              goto LABEL_38;
            }

            if (v80 == 6)
            {
              v85 = v79[3];
              v435 += 25 * v81;
              v451[0] = MEMORY[0x1E69E9820];
              v451[1] = 3221225472;
              v452[0] = sub_1AF1794D4;
              v452[1] = &unk_1E7A7B010;
              v452[2] = v423;
              v72 = sub_1AF1776C8(v445, v77, v451);
              if (v81)
              {
                for (i = 0; i != v81; ++i)
                {
                  v87 = v76;
                  v88 = v417[3 * v85 + 3 * i];
                  v89 = ((v88 >> 29) & 1) + (v88 >> 31) + ((v88 >> 28) & 1) + ((v88 >> 30) & 1);
                  if (v438)
                  {
                    v90 = 0;
                    do
                    {
                      v72 = sub_1AF177608(v445, v90, v77, i);
                      if (v72)
                      {
                        *&v423[4 * v90] += 4 * v89;
                      }

                      ++v90;
                    }

                    while (v70 != v90);
                  }

                  v76 = v87 + 4 * v89;
                }

                v74 = v412;
                v71 = v442;
              }

              else
              {
                v74 = v412;
              }

              goto LABEL_38;
            }

            if (v80 == 5)
            {
LABEL_24:
              v84 = sub_1AF0D5194();
              v72 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
              if (v72)
              {
                sub_1AFDD8BB8(&v457, v458);
              }
            }
          }

          else
          {
            if (v80 < 3)
            {
              goto LABEL_24;
            }

            if (v80 == 3)
            {
              v435 += 4 * v81;
              v455[0] = MEMORY[0x1E69E9820];
              v455[1] = 3221225472;
              v456[0] = sub_1AF1794AC;
              v456[1] = &unk_1E7A7B010;
              v456[2] = v423;
              v82 = v455;
              goto LABEL_27;
            }

            if (v80 == 4)
            {
              v435 += 3 * v81;
              v453[0] = MEMORY[0x1E69E9820];
              v453[1] = 3221225472;
              v454[0] = sub_1AF1794C0;
              v454[1] = &unk_1E7A7B010;
              v454[2] = v423;
              v82 = v453;
LABEL_27:
              v72 = sub_1AF1776C8(v445, v77, v82);
            }
          }

LABEL_38:
          v78 = v445;
          v75 = ++v77;
          if (*(v445 + 32) <= v77)
          {
            goto LABEL_44;
          }
        }
      }

      v76 = 0;
      v435 = 0;
LABEL_44:
      v92 = 1;
      if (v435 + v76 - 1 > 0xFF)
      {
        v92 = 2;
      }

      if ((v435 + v76 - 1) >> 16)
      {
        v93 = 4;
      }

      else
      {
        v93 = v92;
      }

      v407 = v435 + v76;
      if ((v93 - 1) >= 2)
      {
        if (v93 == 4)
        {
          v94 = 1;
        }

        else
        {
          v95 = sub_1AF0D5194();
          v72 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
          if (v72)
          {
            sub_1AFDD9224(v93, v95);
          }

          v94 = -1;
        }

        v439 = v94;
      }

      else
      {
        v439 = 0;
        v93 = 2;
      }

      v96 = v445;
      MEMORY[0x1EEE9AC00](v72, v73);
      v444 = (&v405 - ((v71 + 15) & 0x7FFFFFFF0));
      MEMORY[0x1EEE9AC00](v97, v98);
      v100 = &v405 - v99;
      if (v438)
      {
        v101 = 0;
        v102 = v423 - 4;
        v103 = v444;
        do
        {
          if (v101)
          {
            v104 = *(v103 - 1) + 3 * *&v101[v102];
          }

          else
          {
            v104 = 0;
          }

          *v103++ = v104;
          *&v101[v100] = 0;
          v101 += 4;
        }

        while (v71 != v101);
      }

      v105 = (3 * *&v423[4 * (v438 - 1)] + v444[v438 - 1]);
      v408 = v93;
      v406 = v93 * v105;
      v106 = malloc_type_malloc(v93 * v105, 0x446DC8C6uLL);
      v415 = v76;
      if (v76)
      {
        v436 = malloc_type_malloc(12 * v76, 0x10000403E1C8BA9uLL);
      }

      else
      {
        v436 = 0;
      }

      if (*(v96 + 32))
      {
        v108 = 0;
        v431 = 0;
        LODWORD(v443) = 0;
        v109 = 0;
        v418 = v96 + 488;
        v419 = v96 + 408;
        v413 = v96 + 648;
        v414 = v96 + 568;
        _Q0.i64[0] = v435 | 0x600000000;
        v433 = _Q0;
        __asm { FMOV            V0.2S, #1.0 }

        v430 = _Q0;
        v432 = &v472;
        v426 = 4575657222471680000;
        _Q0.i32[1] = 1063256064;
        v425 = 0x3F6000003F800000;
        while (1)
        {
          v113 = (*(v96 + 40) + 16 * v108);
          v114 = *v113;
          v422 = v114;
          if (v114 <= 6)
          {
            break;
          }

          switch(v114)
          {
            case 7:
              v174 = 0;
              v173 = 4;
              break;
            case 9:
              v174 = 0;
              v173 = 6;
              break;
            case 8:
              v174 = 0;
              v173 = 5;
              break;
            default:
              goto LABEL_169;
          }

LABEL_181:
          if ((v174 & *(v411 + 3)) != 0)
          {
            v203 = 0x2000000100;
          }

          else
          {
            v203 = 0x2000000000;
          }

          v204 = *(v96 + 24);
          if (*(v419 + 8 * v114))
          {
            v205 = sub_1AF0D5194();
            v206 = os_log_type_enabled(v205, OS_LOG_TYPE_FAULT);
            v114 = v422;
            if (v206)
            {
              sub_1AFDD929C(v467, &v468, v205);
              v114 = v422;
            }
          }

          if (*(v418 + 8 * v114))
          {
            v207 = sub_1AF0D5194();
            v208 = os_log_type_enabled(v207, OS_LOG_TYPE_FAULT);
            v114 = v422;
            if (v208)
            {
              sub_1AFDD92E0(v465, &v466, v207);
              v114 = v422;
            }
          }

          if (*(v414 + 8 * v114))
          {
            v209 = sub_1AF0D5194();
            v210 = os_log_type_enabled(v209, OS_LOG_TYPE_FAULT);
            v114 = v422;
            if (v210)
            {
              sub_1AFDD9324(v463, &v464, v209);
              v114 = v422;
            }
          }

          if (*(v413 + 8 * v114))
          {
            v211 = sub_1AF0D5194();
            if (os_log_type_enabled(v211, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD9368(v461, &v462, v211);
            }
          }

          v212 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v416 = v416 & 0xFFFFFFFF00000000 | v204;
          v213 = sub_1AF1735B8(v203 | v173, v204, v212);
          v214 = objc_alloc_init(MEMORY[0x1E6974020]);
          v215 = sub_1AF1F32F0();
          objc_msgSend_setLanguageVersion_(v214, v216, v215, v217);
          objc_msgSend_setFastMathEnabled_(v214, v218, 1, v219);
          v442 = v212;
          objc_msgSend_setPreprocessorMacros_(v214, v220, v212, v221);
          objc_msgSend_setAdditionalCompilerArguments_(v214, v222, @" -w ", v223);
          v224 = objc_alloc(MEMORY[0x1E696AEC0]);
          v225 = v224;
          if (v420 == 3)
          {
            v441 = v224;
            v96 = v445;
            v226 = v213;
            if (qword_1EB64FB70 != -1)
            {
              sub_1AFDD93D4();
            }

            v227 = qword_1EB64FB78;
            v230 = sub_1AF173490(v173, &unk_1EB64F000);
            if (qword_1EB6585E0 != -1)
            {
              sub_1AFDD93AC();
            }

            v231 = objc_msgSend_initWithFormat_(v441, v228, @"%@%@%@%@", v229, v226, v227, v230, qword_1EB6585D8);
            v232 = 8;
          }

          else
          {
            v235 = sub_1AF173490(v173, v420);
            v96 = v445;
            if (qword_1EB6585E0 != -1)
            {
              sub_1AFDD93AC();
            }

            v231 = objc_msgSend_initWithFormat_(v225, v233, @"%@%@%@", v234, v213, v235, qword_1EB6585D8);
            v232 = 6;
          }

          LODWORD(v441) = v232;
          v236 = v412;
          v237 = sub_1AFDE868C(v412);
          v239 = objc_msgSend_libraryForSourceCode_options_(v237, v238, v231, v214);

          v74 = v236;
          LOWORD(v469) = v441;
          LOWORD(v448) = 0;
          LOWORD(v447) = 3;
          LOWORD(v446) = 6;
          v240 = objc_alloc_init(MEMORY[0x1E6974060]);
          objc_msgSend_setConstantValue_type_atIndex_(v240, v241, &v469, 37, 1);
          objc_msgSend_setConstantValue_type_atIndex_(v240, v242, &v448, 37, 2);
          objc_msgSend_setConstantValue_type_atIndex_(v240, v243, &v447, 37, 3);
          objc_msgSend_setConstantValue_type_atIndex_(v240, v244, &v446, 37, 4);
          objc_msgSend_setConstantValue_type_atIndex_(v240, v245, &v459, 53, 8);
          v247 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v236, v246, @"osd_rt_eval_regular_point_vertex", v239, v240, 0);
          v249 = v422;
          *(v419 + 8 * v422) = v247;
          if (v415)
          {
            v250 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v236, v248, @"osd_rt_eval_extra_point_vertex", v239, v240, 0);
            v249 = v422;
          }

          else
          {
            v250 = 0;
          }

          *(v418 + 8 * v249) = v250;
          if (v420 == 3)
          {
            *(v96 + 368) = 1;
            v251 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v236, v248, @"osd_rt_eval_regular_point_fvar", v239, v240, 0);
            v253 = v422;
            *(v414 + 8 * v422) = v251;
            if (v415)
            {
              v254 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v236, v252, @"osd_rt_eval_extra_point_fvar", v239, v240, 0);
              v253 = v422;
            }

            else
            {
              v254 = 0;
            }

            *(v413 + 8 * v253) = v254;
          }

          v108 = ++v109;
          if (*(v96 + 32) <= v109)
          {
            goto LABEL_214;
          }
        }

        v424 = v113[1];
        switch(v114)
        {
          case 3:
            if (v439)
            {
              if (v439 == 1)
              {
                v175 = v444;
                if (v438)
                {
                  v176 = 0;
                  do
                  {
                    if (v424 >= 1)
                    {
                      v177 = 0;
                      do
                      {
                        v178 = sub_1AF177608(v96, v176, v109, v177);
                        v179 = *&v100[4 * v176];
                        if (v178)
                        {
                          v180 = v179 + *(v175 + 4 * v176);
                          v181 = v431;
                          v106[v180] = v431;
                          v106[v180 + 1] = v181 + 1;
                          v106[v180 + 2] = v181 + 3;
                          v106[v180 + 3] = v181;
                          v106[v180 + 4] = v181 + 3;
                          v106[v180 + 5] = v181 + 2;
                        }

                        ++v177;
                        v431 += 4;
                        *&v100[4 * v176] = v179 + 6;
                      }

                      while (v424 != v177);
                    }

                    ++v176;
                    v174 = 1;
                  }

                  while (v176 != v70);
                  goto LABEL_168;
                }
              }
            }

            else
            {
              v189 = v444;
              if (v438)
              {
                v190 = 0;
                do
                {
                  if (v424 >= 1)
                  {
                    v191 = 0;
                    do
                    {
                      v192 = sub_1AF177608(v96, v190, v109, v191);
                      v193 = *&v100[4 * v190];
                      if (v192)
                      {
                        v194 = v193 + *(v189 + 4 * v190);
                        v195 = v431;
                        *(v106 + v194) = v431;
                        *(v106 + v194 + 1) = v195 + 1;
                        *(v106 + v194 + 2) = v195 + 3;
                        *(v106 + v194 + 3) = v195;
                        *(v106 + v194 + 4) = v195 + 3;
                        *(v106 + v194 + 5) = v195 + 2;
                      }

                      ++v191;
                      v431 += 4;
                      *&v100[4 * v190] = v193 + 6;
                    }

                    while (v424 != v191);
                  }

                  ++v190;
                  v174 = 1;
                }

                while (v190 != v70);
LABEL_168:
                v173 = 1;
LABEL_178:
                v114 = v422;
                goto LABEL_181;
              }
            }

            break;
          case 4:
            if (v439)
            {
              if (v439 != 1 || (v182 = v444, !v438))
              {
LABEL_179:
                v173 = 2;
LABEL_180:
                v174 = 1;
                goto LABEL_181;
              }

              v183 = 0;
              do
              {
                if (v424 >= 1)
                {
                  v184 = 0;
                  do
                  {
                    v185 = sub_1AF177608(v96, v183, v109, v184);
                    v186 = *&v100[4 * v183];
                    if (v185)
                    {
                      v187 = v186 + *(v182 + 4 * v183);
                      v188 = v431;
                      v106[v187] = v431;
                      v106[v187 + 1] = v188 + 1;
                      v106[v187 + 2] = v188 + 2;
                    }

                    ++v184;
                    v431 += 3;
                    *&v100[4 * v183] = v186 + 3;
                  }

                  while (v424 != v184);
                }

                ++v183;
                v173 = 2;
                v174 = 1;
              }

              while (v183 != v70);
            }

            else
            {
              v196 = v444;
              if (!v438)
              {
                goto LABEL_179;
              }

              v197 = 0;
              do
              {
                if (v424 >= 1)
                {
                  v198 = 0;
                  do
                  {
                    v199 = sub_1AF177608(v96, v197, v109, v198);
                    v200 = *&v100[4 * v197];
                    if (v199)
                    {
                      v201 = v200 + *(v196 + 4 * v197);
                      v202 = v431;
                      *(v106 + v201) = v431;
                      *(v106 + v201 + 1) = v202 + 1;
                      *(v106 + v201 + 2) = v202 + 2;
                    }

                    ++v198;
                    v431 += 3;
                    *&v100[4 * v197] = v200 + 3;
                  }

                  while (v424 != v198);
                }

                ++v197;
                v173 = 2;
                v174 = 1;
              }

              while (v197 != v70);
            }

            goto LABEL_178;
          case 6:
            if (v424 >= 1)
            {
              v115 = 0;
              v421 = &v417[3 * v113[3]];
              while (1)
              {
                v116 = 0;
                LODWORD(v441) = *&v421[12 * v115];
                do
                {
                  v117 = 0;
                  LODWORD(v440) = v431 + 5 * v116;
                  v429 = v116;
                  v437 = (v116 == 0) & (v441 >> 28);
                  v434 = (v116 == 3) & (v441 >> 30);
                  LODWORD(v442) = v437 | v434;
                  v118 = v430;
                  *&v118.i32[1] = (v116 + 0.5) * 0.25;
                  v428 = v118;
                  v118.i32[0] = 0;
                  v427 = v118;
                  do
                  {
                    v119 = v440 + v117;
                    _ZF = v441 < 0 && v117 == 0;
                    v121 = _ZF;
                    v122 = (v117 == 3) & (v441 >> 29);
                    v123 = v442;
                    if (_ZF)
                    {
                      v123 = 1;
                    }

                    if ((v123 & 1) == 0 && !v122)
                    {
                      _Q0.i32[0] = v440 + v117;
                      v118 = _Q0;
                      v118.i32[1] = v119 + 1;
                      v469 = v118.i64[0];
                      _Q0.i32[1] = v119 + 6;
                      v470 = v119 + 6;
                      v472 = v119 + 5;
                      v471 = _Q0.i64[0];
                      v124 = 1;
                      v125 = 2;
                      goto LABEL_110;
                    }

                    v126 = v443;
                    if (v437)
                    {
                      v127 = v443 + 1;
                      if (v121)
                      {
                        v128 = v436;
                        v129 = &v436[12 * v443];
                        v130 = v443 + v435;
                        v131 = v443 + 2;
                        *v129 = v115;
                        *(v129 + 4) = 1040187392;
                        v132 = &v128[12 * v127];
                        *v132 = v115;
                        *(v132 + 4) = 0x3E00000000000000;
                        _Q0.i32[0] = v130;
                        *v118.i8 = vadd_s32(__PAIR64__(v119, v127), *v433.i8);
                        v469 = vzip1q_s32(_Q0, v118).u64[0];
                        LODWORD(v133) = v130;
                        HIDWORD(v133) = v119 + 1;
                        *v432 = v118.i32[1];
                        v471 = v133;
                        v470 = v119;
                        v474 = v119 + 5;
                        _Q0.i32[1] = v118.i32[1];
                        v473 = v118.i64[0];
                        v476 = v118.i32[0];
                        v475 = _Q0.i64[0];
                        goto LABEL_97;
                      }

                      if (v122)
                      {
                        v137 = v436;
                        v138 = &v436[12 * v443];
                        v139 = v435;
                        v140 = v443 + v435;
                        v131 = v443 + 2;
                        *v138 = v115;
                        *(v138 + 4) = 1063256064;
                        v141 = &v137[12 * v127];
                        *v141 = v115;
                        *(v141 + 4) = 0x3E0000003F800000;
                        _Q0.i32[0] = v140;
                        v142 = v127 + v139;
                        v469 = __PAIR64__(v142, v140);
                        v118 = _Q0;
                        v118.i32[1] = v119 + 1;
                        v470 = v119 + 5;
                        v472 = v142;
                        v471 = v118.i64[0];
                        v118.i32[0] = v142;
                        v118.i32[1] = v119 + 6;
                        v473 = v118.i64[0];
                        _Q0.i32[1] = v119 + 5;
                        v474 = v119 + 5;
                        v476 = v119;
LABEL_96:
                        v475 = _Q0.i64[0];
LABEL_97:
                        v124 = 1;
                        v125 = 4;
                        LODWORD(v443) = v131;
                        goto LABEL_110;
                      }

                      v152 = v443;
                      v153 = &v436[12 * v443];
                      *v153 = v115;
                      *(v153 + 4) = COERCE_UNSIGNED_INT((v117 + 0.5) * 0.25);
                      _Q0.i32[0] = v119;
                      _Q0.i32[1] = v152 + v435;
                      v118.i32[0] = v152 + v435;
                      LODWORD(v154) = v152 + v435;
                      HIDWORD(v154) = v119 + 1;
                      v469 = v154;
                      v118.i32[1] = v119 + 6;
                      v155 = v119 + 5;
                      v470 = v118.i32[1];
                      v472 = v155;
LABEL_109:
                      v471 = v118.i64[0];
                      v474 = v155;
                      v473 = _Q0.i64[0];
                      v124 = 1;
                      v125 = 3;
                      LODWORD(v443) = v127;
                      goto LABEL_110;
                    }

                    if (v434)
                    {
                      v127 = v443 + 1;
                      if (v121)
                      {
                        v134 = v436;
                        v135 = &v436[12 * v443];
                        *v135 = v115;
                        *(v135 + 4) = 0x3F8000003E000000;
                        v136 = &v134[12 * v127];
                        *v136 = v115;
                        *(v136 + 4) = 0x3F60000000000000;
                        _Q0.i32[0] = v119;
                        _Q0.i32[1] = v119 + 1;
                        v131 = v126 + 2;
                        v469 = _Q0.i64[0];
                        _Q0.i32[0] = v119 + 1;
                        v118 = _Q0;
                        v118.i32[1] = v126 + v435;
                        v470 = v127 + v435;
                        v472 = v127 + v435;
                        v471 = v118.i64[0];
                        _Q0.i32[1] = v119 + 6;
                        v473 = _Q0.i64[0];
                        _Q0.i32[0] = v126 + v435;
                        _Q0.i32[1] = v119 + 5;
                        v474 = v126 + v435;
                        v476 = v127 + v435;
                        goto LABEL_96;
                      }

                      v145 = v119 + 1;
                      if (v122)
                      {
                        v146 = v436;
                        v147 = v443;
                        v148 = &v436[12 * v443];
                        *v148 = v115;
                        _Q0.i64[0] = v425;
                        *(v148 + 4) = v426;
                        v149 = &v146[12 * v127];
                        *v149 = v115;
                        *(v149 + 4) = _Q0.i64[0];
                        _Q0.i32[0] = v119;
                        v150 = v127 + v435;
                        v469 = __PAIR64__(v145, v119);
                        v118 = _Q0;
                        v118.i32[1] = v150;
                        v151 = v147 + 2;
                        v470 = v150;
                        v472 = v147 + v435;
                        v471 = v118.i64[0];
                        v473 = __PAIR64__(v119 + 6, v150);
                        _Q0.i32[1] = v147 + v435;
                        v474 = v147 + v435;
                        v476 = v119 + 5;
                        v475 = _Q0.i64[0];
                        v124 = 1;
                        v125 = 4;
LABEL_106:
                        LODWORD(v443) = v151;
                        goto LABEL_110;
                      }

                      HIDWORD(v158) = v430.i32[1];
                      *&v158 = (v117 + 0.5) * 0.25;
                      v159 = v443;
                      v160 = &v436[12 * v443];
                      *v160 = v115;
                      *(v160 + 4) = v158;
                      _Q0.i32[0] = v119;
                      v118 = _Q0;
                      v470 = v119 + 6;
                      v472 = v159 + v435;
                      _Q0.i32[1] = v159 + v435;
                      v469 = __PAIR64__(v145, v159 + v435);
                      v155 = v119 + 5;
                      v118.i32[1] = v145;
                      goto LABEL_109;
                    }

                    if (v121)
                    {
                      if ((v442 & 1) == 0)
                      {
                        v143 = &v436[12 * v443];
                        *v143 = v115;
                        _Q0.i64[1] = v427.i64[1];
                        *(v143 + 4) = v427.i64[0];
                        v144 = vadd_s32(__PAIR64__(v119, v126), *v433.i8);
                        v469 = __PAIR64__(v119 + 1, v119);
                        v470 = v144.i32[0];
                        v472 = v119 + 5;
                        _Q0.i32[1] = v144.i32[1];
                        v471 = v144;
                        v474 = v144.i32[0];
                        v473 = __PAIR64__(v144.u32[1], v119 + 1);
                        v124 = 1;
                        v125 = 3;
                        LODWORD(v443) = v126 + 1;
                        goto LABEL_110;
                      }
                    }

                    else if (v122)
                    {
                      v156 = &v436[12 * v443];
                      v157 = v443 + v435;
                      v151 = v443 + 1;
                      *v156 = v115;
                      _Q0 = v428;
                      *(v156 + 4) = v428.i64[0];
                      _Q0.i32[0] = v119;
                      v118 = _Q0;
                      v118.i32[1] = v119 + 1;
                      v469 = v118.i64[0];
                      _Q0.i32[1] = v157;
                      v470 = v157;
                      v472 = v119 + 5;
                      v471 = __PAIR64__(v119 + 6, v157);
                      v474 = v119 + 5;
                      v473 = _Q0.i64[0];
                      v124 = 1;
                      v125 = 3;
                      goto LABEL_106;
                    }

                    v124 = 0;
                    v125 = 0;
LABEL_110:
                    if (v439)
                    {
                      if (v439 == 1 && v438)
                      {
                        v161 = 0;
                        do
                        {
                          if ((v124 & sub_1AF177608(v445, v161, v109, v115)) == 1)
                          {
                            v162 = *&v100[4 * v161];
                            v163 = v162 + v444[v161];
                            v164 = &v469;
                            v165 = v125;
                            do
                            {
                              v166 = *v164;
                              v164 += 2;
                              _Q0 = v166;
                              v106[v163] = v166.i32[0];
                              v106[v163 + 1] = v166.i32[1];
                              v106[v163 + 2] = v166.i32[2];
                              v162 += 3;
                              v163 += 3;
                              --v165;
                            }

                            while (v165);
                            *&v100[4 * v161] = v162;
                          }

                          ++v161;
                        }

                        while (v161 != v70);
                      }
                    }

                    else if (v438)
                    {
                      v167 = 0;
                      do
                      {
                        if ((v124 & sub_1AF177608(v445, v167, v109, v115)) == 1)
                        {
                          v168 = *&v100[4 * v167];
                          v169 = v168 + v444[v167];
                          v170 = &v469;
                          v171 = v125;
                          do
                          {
                            v172 = *v170;
                            v170 += 2;
                            _Q0 = v172;
                            *(v106 + v169) = v172.i16[0];
                            *(v106 + v169 + 1) = v172.i16[2];
                            *(v106 + v169 + 2) = v172.i16[4];
                            v168 += 3;
                            v169 += 3;
                            --v171;
                          }

                          while (v171);
                          *&v100[4 * v167] = v168;
                        }

                        ++v167;
                      }

                      while (v167 != v70);
                    }

                    ++v117;
                  }

                  while (v117 != 4);
                  v116 = v429 + 1;
                }

                while (v429 != 3);
                v431 += 25;
                if (++v115 == v424)
                {
                  v173 = 3;
                  v174 = 1;
                  v96 = v445;
                  goto LABEL_178;
                }
              }
            }

            v173 = 3;
            goto LABEL_180;
        }

LABEL_169:
        v174 = 1;
        v173 = 1;
        goto LABEL_181;
      }

LABEL_214:
      free(v417);
      v255 = v436;
      if (v436)
      {
        v256 = v415;
        sub_1AFDE8444(v74, v436, (12 * v415), 0);
        *(v96 + 372) = v256;
        *(v96 + 376) = v435;
        *(v96 + 384) = v257;
        free(v255);
      }

      v258 = v74;
      v259 = sub_1AF1F1A7C(30);
      v442 = v259;
      v260 = sub_1AF1F1A7C(30);
      v261 = sub_1AF1F1A7C(29);
      if (v420 == 3)
      {
        v262 = v261;
      }

      else
      {
        v262 = 0;
      }

      v440 = v260 + v259;
      v263 = v440 + v262;
      *(v96 + 392) = v440 + v262;
      v441 = (v260 + v259 + v262);
      sub_1AFDE851C(v258, v263 * v407, 32);
      v443 = v264;
      sub_1AFDE8444(v258, v106, v406, 0);
      v266 = v265;
      free(v106);
      v267 = objc_alloc(MEMORY[0x1E695DF70]);
      v273 = objc_msgSend_initWithCapacity_(v267, v268, v70, v269);
      v274 = v423;
      v275 = v408;
      v276 = v444;
      if (v438)
      {
        do
        {
          v278 = *v274++;
          v277 = v278;
          v279 = objc_alloc_init(VFXMTLBuffer);
          objc_msgSend_setBuffer_(v279, v280, v266, v281);
          v282 = *v276++;
          objc_msgSend_setOffset_(v279, v283, v275 * v282, v284);
          v285 = v266;
          v286 = objc_alloc_init(VFXMTLMeshElement);
          sub_1AFDEA640(v286, v439);
          sub_1AFDEA31C(v286, v279);
          sub_1AFDEA61C(v286, (3 * v277));
          sub_1AFDEA2A8(v286, 3);
          sub_1AFDEA4AC(v286, 0, v277);
          objc_msgSend_addObject_(v273, v287, v286, v288);

          v266 = v285;
          --v70;
        }

        while (v70);
      }

      v289 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], v270, v271, v272);
      v293 = objc_msgSend_layouts(v289, v290, v291, v292);
      v296 = objc_msgSend_objectAtIndexedSubscript_(v293, v294, 18, v295);
      objc_msgSend_setStride_(v296, v297, v441, v298);
      objc_msgSend_setStepFunction_(v296, v299, 1, v300);
      v304 = objc_msgSend_attributes(v289, v301, v302, v303);
      v307 = objc_msgSend_objectAtIndexedSubscript_(v304, v305, 0, v306);
      objc_msgSend_setFormat_(v307, v308, 30, v309);
      objc_msgSend_setOffset_(v307, v310, 0, v311);
      objc_msgSend_setBufferIndex_(v307, v312, 18, v313);
      v317 = objc_msgSend_attributes(v289, v314, v315, v316);
      v320 = objc_msgSend_objectAtIndexedSubscript_(v317, v318, 1, v319);
      objc_msgSend_setFormat_(v320, v321, 30, v322);
      objc_msgSend_setOffset_(v320, v323, v442, v324);
      objc_msgSend_setBufferIndex_(v320, v325, 18, v326);
      if (v459)
      {
        v330 = objc_msgSend_attributes(v289, v327, v328, v329);
        v333 = objc_msgSend_objectAtIndexedSubscript_(v330, v331, 6, v332);
        objc_msgSend_setFormat_(v333, v334, 29, v335);
        objc_msgSend_setOffset_(v333, v336, v440, v337);
        objc_msgSend_setBufferIndex_(v333, v338, 18, v339);
      }

      v9 = objc_alloc_init(VFXMTLMesh);
      sub_1AFDEA024(v9, v289);
      v340 = v443;
      v460 = v443;
      v342 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v341, &v460, 1);
      sub_1AFDEA1F4(v9, v342);
      sub_1AFDEA214(v9, v273);

      v8 = v445;
      *(v445 + 400) = v9;
      v4 = v410;
    }

    else
    {
      v91 = sub_1AF0D5194();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD90F0(v91);
      }

      v9 = 0;
      v8 = v445;
    }
  }

  v442 = v9;
  v343 = sub_1AFDEA1E8(v9);
  v444 = objc_msgSend_objectAtIndexedSubscript_(v343, v344, 0, v345);
  v349 = objc_msgSend_resourceComputeEncoder(v4, v346, v347, v348);
  v351 = v349;
  v352 = *(v8 + 48);
  v353 = *(v8 + 56);
  if (*(v8 + 368))
  {
    v354 = *(v8 + 88);
    v356 = *v354;
    v355 = v354[1];
    LODWORD(v469) = -1227133513 * ((v355 - *v354) >> 3);
    if (v469 < 2)
    {
      if (v355 == v356)
      {
LABEL_253:
        sub_1AF10A1D0();
      }

      objc_msgSend_setBuffer_offset_atIndex_(v349, v350, v356[4], v356[5], 14);
      objc_msgSend_setBuffer_offset_atIndex_(v351, v359, v356[2], 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v351, v360, v356[3], 0, 16);
      LODWORD(v443) = 0;
    }

    else
    {
      objc_msgSend_setBytes_length_atIndex_(v349, v350, &v469, 4, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v351, v357, *(v8 + 128), 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v351, v358, *(v8 + 136), 0, 16);
      LODWORD(v443) = 1;
    }
  }

  else
  {
    LODWORD(v443) = 0;
    LODWORD(v469) = 0;
  }

  v448 = 0;
  v361 = v8;
  if (*(v8 + 32))
  {
    v362 = 0;
    v363 = 0;
    do
    {
      v364 = (*(v361 + 40) + 16 * v362);
      v365 = *v364;
      v366 = v364[1];
      v367 = v364[2];
      objc_msgSend_setBuffer_offset_atIndex_(v351, v350, v353, 12 * v364[3], 8);
      objc_msgSend_setBuffer_offset_atIndex_(v351, v368, v352, 4 * v367, 6);
      if (v365 == 6)
      {
        v370 = v445;
        v371 = *(v445 + 248);
        v372 = *(v445 + 256);
        v447 = 25 * v366;
        objc_msgSend_setBytes_length_atIndex_(v351, v350, &v447, 4, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v351, v373, v444, *(v370 + 392) * v363, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v351, v374, v371, v372, 7);
        v375 = sub_1AFDE323C(*(v370 + 456));
        objc_msgSend_setComputePipelineState_(v351, v376, v375, v377);
        objc_msgSend_dispatchOnGrid1D_(v351, v378, 25 * v366, v379);
        if (*(v370 + 368) == 1)
        {
          if (v443)
          {
            objc_msgSend_setBytes_length_atIndex_(v351, v350, &v448, 4, 17);
          }

          else
          {
            v380 = **(v445 + 88);
            if (*(*(v445 + 88) + 8) == v380)
            {
              goto LABEL_253;
            }

            v381 = *(v380 + 8) + 16 * v448;
            objc_msgSend_setBufferOffset_atIndex_(v351, v350, 4 * *(v381 + 8), 15);
            objc_msgSend_setBufferOffset_atIndex_(v351, v382, 12 * *(v381 + 12), 16);
            objc_msgSend_setBytes_length_atIndex_(v351, v383, v381, 16, 17);
          }

          v370 = v445;
          v384 = sub_1AFDE323C(*(v445 + 616));
          objc_msgSend_setComputePipelineState_(v351, v385, v384, v386);
          objc_msgSend_dispatchOnGrid1D_(v351, v387, v447, v388);
        }

        v389 = v447;
        v446 = *(v370 + 372);
        if (v446)
        {
          objc_msgSend_setBytes_length_atIndex_(v351, v350, &v446, 4, 0);
          objc_msgSend_setBufferOffset_atIndex_(v351, v390, *(v370 + 392) * *(v370 + 376), 1);
          objc_msgSend_setBuffer_offset_atIndex_(v351, v391, *(v370 + 384), 0, 2);
          v392 = sub_1AFDE323C(*(v370 + 536));
          objc_msgSend_setComputePipelineState_(v351, v393, v392, v394);
          objc_msgSend_dispatchOnGrid1D_(v351, v395, v446, v396);
          if (*(v370 + 368) == 1)
          {
            v397 = sub_1AFDE323C(*(v370 + 696));
            objc_msgSend_setComputePipelineState_(v351, v398, v397, v399);
            objc_msgSend_dispatchOnGrid1D_(v351, v400, v446, v401);
          }
        }

        v363 += v389;
      }

      else
      {
        v369 = v363 + 4 * v366;
        if (v365 != 3)
        {
          v369 = v363;
        }

        if (v365 == 4)
        {
          v363 += 3 * v366;
        }

        else
        {
          v363 = v369;
        }
      }

      v362 = ++v448;
      v361 = v445;
    }

    while (*(v445 + 32) > v448);
  }

  if (*(v361 + 368))
  {
    *(v361 + 368) = 0;
    v402 = (v361 + 648);
    v403 = 10;
    do
    {

      *(v402 - 10) = 0;
      *v402++ = 0;
      --v403;
    }

    while (v403);
  }

  return v442;
}

void sub_1AF1794E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_length(*a2, a2, a3, a4);
  v10 = objc_msgSend_length(*(a2 + 8), v7, v8, v9);
  v14 = objc_msgSend_length(*(a2 + 16), v11, v12, v13);
  v18 = objc_msgSend_length(*(a2 + 24), v15, v16, v17);
  v19 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v10 + v6 + v14 + v18;
  CFStringAppendFormat(v19, 0, @"\n  - Vertex stencil table (%d stencils)", *(a2 + 32));
  v20 = *(a1 + 40);
  v21 = *a2;
  v22 = sub_1AF2891D8(v6);
  CFStringAppendFormat(v20, 0, @"\n    - Sizes buffer: %p (%@)", v21, v22);
  v23 = *(a1 + 40);
  v24 = *(a2 + 8);
  v25 = sub_1AF2891D8(v10);
  CFStringAppendFormat(v23, 0, @"\n    - Offsets buffer: %p (%@)", v24, v25);
  v26 = *(a1 + 40);
  v27 = *(a2 + 16);
  v28 = sub_1AF2891D8(v14);
  CFStringAppendFormat(v26, 0, @"\n    - Indices buffer: %p (%@)", v27, v28);
  v29 = *(a1 + 40);
  v30 = *(a2 + 24);
  v31 = sub_1AF2891D8(v18);
  CFStringAppendFormat(v29, 0, @"\n    - Weights buffer: %p (%@)", v30, v31);
  v35 = objc_msgSend_length(*(a2 + 40), v32, v33, v34);
  v39 = objc_msgSend_length(*(a2 + 40), v36, v37, v38);
  v40 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v39 + v35;
  CFStringAppend(v40, @"\n  - Vertex evalutor input");
  v41 = *(a1 + 40);
  v42 = *(a2 + 40);
  v43 = *(a2 + 56);
  v44 = *(a2 + 60);
  v45 = *(a2 + 64);
  v46 = sub_1AF2891D8(v35);
  CFStringAppendFormat(v41, 0, @"\n    - Src buffer: [offset:%d length:%d stride:%d] %p (%@)", v43, v44, v45, v42, v46);
  v47 = *(a1 + 40);
  v48 = *(a2 + 48);
  v49 = *(a2 + 68);
  v50 = *(a2 + 72);
  v51 = *(a2 + 76);
  v52 = sub_1AF2891D8(v39);
  CFStringAppendFormat(v47, 0, @"\n    - Dst buffer: [offset:%d length:%d stride:%d] %p (%@)", v49, v50, v51, v48, v52);
}

void *sub_1AF1796E8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AF179770(result, a2);
  }

  return result;
}

void sub_1AF179770(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1AF1797C0(a1, a2);
  }

  sub_1AF10A1D0();
}

void sub_1AF1797C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF17981C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AF179868(a1, a2);
  }

  sub_1AF10A1D0();
}

void sub_1AF179868(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF1798C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AF17981C(result, a4);
  }

  return result;
}

void *sub_1AF179938(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1AF10A1E0(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void *sub_1AF1799D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AF17981C(result, a2);
  }

  return result;
}

void *sub_1AF179A58(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AF17981C(result, a2);
  }

  return result;
}

void sub_1AF179AF8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF179B4C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF179B4C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_1AF179BA4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AF179C2C(result, a2);
  }

  return result;
}

void sub_1AF179C2C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1AF179C7C(a1, a2);
  }

  sub_1AF10A1D0();
}

void sub_1AF179C7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

id sub_1AF179CD8()
{
  v0 = sub_1AF28A7E4(@"CFX-OpenSubdiv_compute.metal");
  v1 = sub_1AF28A7E4(@"vfx_metal");
  result = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v0, v2, @"#import vfx_metal", v1);
  qword_1EB64FB58 = result;
  return result;
}

void sub_1AF179D38(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void sub_1AF179D9C(uint64_t a1)
{
  free(*(a1 + 8));

  v2 = *(a1 + 32);
}

void sub_1AF179DE8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_1AF179AF8(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1AF179E5C()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(3);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB658588 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF179ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF179EF0()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(4);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB658598 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF179F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF179F84()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(6);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB64FB48 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF179FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF17A018()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(7);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB6585A8 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF17A090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF17A0AC()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(8);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB6585B8 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF17A124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF17A140()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(9);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB6585C8 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF17A1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF17A1D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1AF17A324(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&c);
  v2 = sub_1AF1B2C1C(a1);
  v3 = v2;
  if (v2)
  {
    v4 = sub_1AF1A3CCC(v2);
    if (v4 >= 1)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AF1A3D1C(v3, i, 0);
        v8 = sub_1AF1A7034(v7);
        if (sub_1AF1A72E0(v8))
        {
          v32[0] = 0;
          v9 = sub_1AF1A73C0(v7, v32);
          if (v9)
          {
            v10 = v9;
            BytePtr = CFDataGetBytePtr(v9);
            Length = CFDataGetLength(v10);
            CC_SHA256_Update(&c, BytePtr, Length);
          }

          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = sub_1AF17AFD0;
          v30[3] = &unk_1E7A7B0A8;
          v30[4] = &c;
          sub_1AF1A74B0(v7, v30);
        }
      }
    }
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1AF17B000;
  v29[3] = &unk_1E7A7B0C8;
  v29[4] = &c;
  sub_1AF1A2BEC(v3, 0, v29);
  CC_SHA256_Final(md, &c);
  v13 = 0;
  v14 = v32;
  v15.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v15.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v16.i64[0] = 0x3737373737373737;
  v16.i64[1] = 0x3737373737373737;
  v17.i64[0] = 0x3030303030303030;
  v17.i64[1] = 0x3030303030303030;
  v18.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v18.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v19.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v19.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v20 = *&md[v13];
    v21.i64[0] = 0x3737373737373737;
    v21.i64[1] = 0x3737373737373737;
    v22.i64[0] = 0x3030303030303030;
    v22.i64[1] = 0x3030303030303030;
    v36.val[0] = vbslq_s8(vcgtq_u8(v15, v20), vsraq_n_u8(v22, v20, 4uLL), vsraq_n_u8(v21, v20, 4uLL));
    v23 = vandq_s8(v20, v18);
    v36.val[1] = vbslq_s8(vcgtq_u8(v19, v23), vorrq_s8(v23, v17), vaddq_s8(v23, v16));
    vst2q_s8(v14, v36);
    v14 += 32;
    v13 += 16;
  }

  while (v13 != 32);
  v33 = 0;
  v24 = MEMORY[0x1E696AEC0];
  v25 = sub_1AF1B1F38(a1);
  return objc_msgSend_stringWithFormat_(v24, v26, @"%@-%s", v27, v25, v32);
}

uint64_t sub_1AF17A588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_status(a2, a2, a3, a4);
  if (result != 4)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD93FC(a2, v7, v8, v9);
    }

    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, a2, 0);
    }
  }

  return result;
}

void *sub_1AF17A60C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_1AF123244(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void sub_1AF17A6AC(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1AF10A1D0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1AF123244(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

CFTypeRef sub_1AF17A7C4(void *a1)
{
  v162 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[9];
  v5 = objc_alloc(MEMORY[0x1E696ACC8]);
  inited = objc_msgSend_initRequiringSecureCoding_(v5, v6, 0, v7);
  if (!v2)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8A54(v9, v8, v10, v11, v12, v13, v14, v15);
    }
  }

  v142 = a1;
  v141 = v4;
  v148 = 0;
  v149 = &v148;
  v150 = 0x5012000000;
  v151 = sub_1AF17BBF8;
  v152 = nullsub_107;
  v153 = "c";
  v154 = 0u;
  v155 = 0u;
  v147[0] = MEMORY[0x1E69E9820];
  v147[1] = 3221225472;
  v147[2] = sub_1AF17BC08;
  v147[3] = &unk_1E7A7B0F0;
  v147[4] = v2;
  v147[5] = &v148;
  objc_msgSend_encodeInt32_forKey_(inited, v8, 3, @"version");
  objc_msgSend_encodeBytes_length_forKey_(inited, v16, v3 + 24, 4, @"primvarDataTypeHash");
  objc_msgSend_encodeInt32_forKey_(inited, v17, *(v3 + 28), @"coarseVertexCount");
  sub_1AF17BCA4(inited, @"vertexPatchTable", v3 + 32, v147);
  v20 = *(v3 + 88);
  if (v20)
  {
    v21 = (v20[1] - *v20) >> 3;
    v22 = 0x6DB6DB6DB6DB6DB7 * v21;
    if (-1227133513 * v21)
    {
      v23 = objc_msgSend_stringByAppendingString_(@"fvarPatchTables", v18, @".count", v19);
      objc_msgSend_encodeInt32_forKey_(inited, v24, v22, v23);
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *v20;
        if (0x6DB6DB6DB6DB6DB7 * ((v20[1] - *v20) >> 3) <= v26)
        {
          sub_1AF10A1D0();
        }

        v28 = objc_msgSend_stringByAppendingFormat_(@"fvarPatchTables", v18, @".[%d]", v19, v26);
        sub_1AF17BCA4(inited, v28, v27 + v25, v147);
        ++v26;
        v25 += 56;
      }

      while (v22 != v26);
    }
  }

  if (*(v3 + 96) && *(v3 + 104))
  {
    v29 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v18, @".vertexValenceBuffer", v19);
    sub_1AF17BF88(inited, v29, *(v3 + 96), v147, 0);
    v32 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v30, @".quadOffsetsBuffer", v31);
    sub_1AF17BF88(inited, v32, *(v3 + 104), v147, 0);
    v33 = *(v3 + 112);
    v36 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v34, @".quadOffsetsBaseGregory", v35);
    objc_msgSend_encodeInt32_forKey_(inited, v37, v33, v36);
    v38 = *(v3 + 116);
    v41 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v39, @".quadOffsetsBaseGregoryBoundary", v40);
    objc_msgSend_encodeInt32_forKey_(inited, v42, v38, v41);
  }

  v43 = *(v3 + 120);
  if (v43)
  {
    v45 = *v43;
    v44 = v43[1];
    v47 = **v43;
    v46 = (*v43)[1];
    v48 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v18, @".elementCount", v19);
    v144 = -1431655765 * ((v44 - v45) >> 3);
    objc_msgSend_encodeInt32_forKey_(inited, v49, v144, v48);
    v52 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v50, @".patchArrayCount", v51);
    v143 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v47) >> 3);
    objc_msgSend_encodeInt32_forKey_(inited, v53, v143, v52);
    if (v144)
    {
      v56 = 0;
      for (i = 0; i < v144; v56 = ++i)
      {
        if (v143)
        {
          v57 = 0;
          v58 = 0;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * (v43[1] - *v43) <= i)
            {
              sub_1AF10A1D0();
            }

            v60 = &(*v43)[3 * i];
            v59 = *v60;
            if (0xAAAAAAAAAAAAAAABLL * ((v60[1] - *v60) >> 3) <= v58)
            {
              sub_1AF10A1D0();
            }

            v61 = (v59 + v57);
            v63 = *v61;
            v62 = v61[1];
            v64 = objc_msgSend_stringByAppendingFormat_(@"patchRangesTable", v54, @".[%d][%d]", v55, v56, v58);
            objc_msgSend_encodeBytes_length_forKey_(inited, v65, v63, v62 - v63, v64);
            ++v58;
            v57 += 24;
          }

          while (v143 != v58);
        }
      }
    }
  }

  sub_1AF17BE0C(inited, @"vertexRefiner", v3 + 144, v147);
  v68 = v142[6];
  if (v68)
  {
    v69 = (v68[1] - *v68) >> 3;
    v70 = 0x2E8BA2E8BA2E8BA3 * v69;
    if (-1171354717 * v69)
    {
      v71 = objc_msgSend_stringByAppendingString_(@"fvarRefiners", v66, @".count", v67);
      objc_msgSend_encodeInt32_forKey_(inited, v72, v70, v71);
      v75 = 0;
      v76 = 0;
      do
      {
        v77 = *v68;
        if (0x2E8BA2E8BA2E8BA3 * ((v68[1] - *v68) >> 3) <= v76)
        {
          sub_1AF10A1D0();
        }

        v78 = objc_msgSend_stringByAppendingFormat_(@"fvarRefiners", v73, @".[%d]", v74, v76);
        sub_1AF17BE0C(inited, v78, v77 + v75, v147);
        ++v76;
        v75 += 88;
      }

      while (v70 != v76);
    }
  }

  sub_1AF17BF88(inited, @"skinMorphSubdivIndexToMetalIndexBuffer", *(v3 + 352), v147, 0);
  v79 = *(v3 + 360);
  if (v79)
  {
    v80 = sub_1AFDEA004(v79);
    v84 = objc_msgSend_name(v80, v81, v82, v83);
    objc_msgSend_encodeObject_forKey_(inited, v85, v84, @"synchronizeCoarsePositionsPipeline.functionName");
  }

  sub_1AF17BF88(inited, @"fvarChannelDescriptorsBuffer", *(v3 + 128), v147, 0);
  sub_1AF17BF88(inited, @"fvarChannelsPackedDataBuffer", *(v3 + 136), v147, 0);
  if (!v149[6])
  {
    goto LABEL_37;
  }

  if (!v149[9])
  {
    v89 = sub_1AF0D5194();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD94B8(v89, v86, v87, v88, v90, v91, v92, v93);
    }
  }

  if (!v149[8])
  {
    v94 = sub_1AF0D5194();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9530(v94, v86, v87, v88, v95, v96, v97, v98);
    }
  }

  objc_msgSend_endEncoding(v149[9], v86, v87, v88);
  objc_msgSend_commit(v149[8], v99, v100, v101);
  objc_msgSend_waitUntilCompleted(v149[8], v102, v103, v104);
  if (objc_msgSend_status(v141, v105, v106, v107) != 4)
  {
    v112 = sub_1AF0D5194();
    if (!os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v116 = objc_msgSend_status(v141, v113, v114, v115);
    v120 = objc_msgSend_error(v141, v117, v118, v119);
    v124 = objc_msgSend_logs(v141, v121, v122, v123);
    *buf = 67109634;
    v157 = v116;
    v158 = 2112;
    v159 = v120;
    v160 = 2112;
    v161 = v124;
    v125 = "Error: OpenSubdiv archiver dependency command buffer execution failed with status %d, error: %@\n%@";
    v126 = v112;
LABEL_46:
    _os_log_error_impl(&dword_1AF0CE000, v126, OS_LOG_TYPE_ERROR, v125, buf, 0x1Cu);
    goto LABEL_41;
  }

  if (objc_msgSend_status(v149[8], v108, v109, v110) == 4)
  {
LABEL_37:
    v111 = objc_msgSend_encodedData(inited, v86, v87, v88);
    goto LABEL_42;
  }

  v127 = sub_1AF0D5194();
  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
  {
    v132 = objc_msgSend_status(v149[8], v128, v129, v130);
    v136 = objc_msgSend_error(v149[8], v133, v134, v135);
    v140 = objc_msgSend_logs(v149[8], v137, v138, v139);
    *buf = 67109634;
    v157 = v132;
    v158 = 2112;
    v159 = v136;
    v160 = 2112;
    v161 = v140;
    v125 = "Error: OpenSubdiv archiver command buffer execution failed with status %d, error: %@\n%@";
    v126 = v127;
    goto LABEL_46;
  }

LABEL_41:
  v111 = 0;
LABEL_42:

  _Block_object_dispose(&v148, 8);
  if (v111)
  {
    return CFAutorelease(v111);
  }

  else
  {
    return 0;
  }
}

void sub_1AF17AF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF17AFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return CC_SHA256_Update(*(a1 + 32), v4, 0x10u);
}

const __CFData *sub_1AF17B000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AF17CB68(a3, a4, 0);
  if (result)
  {
    result = sub_1AF1AE6E8(a2);
    if (result)
    {
      v7 = result;
      BytePtr = CFDataGetBytePtr(result);
      Length = CFDataGetLength(v7);
      v10 = *(a1 + 32);

      return CC_SHA256_Update(v10, BytePtr, Length);
    }
  }

  return result;
}

void sub_1AF17B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  *a1 = &unk_1F24E7C58;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  *(a1 + 104) = a8;
  if (a6)
  {
    sub_1AFDCACFC(a2, (16 * a6) & 0x300 | a5 & 0xF | (((a6 >> 3) & 1) << 10) | 0xF0, a3, a4, a5, a6, a7, a8, v13);
  }

  else
  {
    sub_1AFDCAA60(a2, a5 & 0xF | (32 * (((*(**(a2 + 40) + 464) - *(**(a2 + 40) + 456)) >> 3) > 0)), a3, a4, a5, a6, a7, a8, v13);
  }

  sub_1AF17B1A4(a1, v11, v10, v9, a6);
}

void sub_1AF17B1A4(uint64_t a1, int a2, int a3, char a4, unint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = ~(16 * *(v6 + 8)) & 0x10;
  if (a2 >= 1)
  {
    sub_1AFDBB9A8(v6, v7 | 0x2A4);
  }

  if (a3 >= 1)
  {
    sub_1AFDBB9A8(*(a1 + 8), v7 | 0x2A5);
  }

  if ((a5 & 0x180) == 0x100)
  {
    v8 = -4294956032;
  }

  else
  {
    v8 = -4294956288;
  }

  if ((a5 & 0x40) != 0)
  {
    v8 = -4294956544;
  }

  sub_1AFDB2578(*(a1 + 8), ((a5 << 10) & 0x3000 | (16 * (a4 & 0xF)) | (a5 >> 2) & 0xC) ^ v8, 0);
}

void sub_1AF17B404(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    sub_1AFDCBF9C();
  }

  if (a4)
  {
    sub_1AFDCBF9C();
  }
}

void sub_1AF17B468(void *a1)
{
  sub_1AF17C11C(a1);

  JUMPOUT(0x1B271C6B0);
}

BOOL sub_1AF17B4B8(uint64_t a1)
{
  v2 = *(**(*(a1 + 8) + 88) + 8);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  LODWORD(v11) = v11 + v12 * v2;
  v3 = sub_1AF17B658(*(a1 + 88), &v13, &v11);
  result = sub_1AF17B6A0(*(a1 + 32), &v13, *(a1 + 32), &v11, *(a1 + 72), v3, *(a1 + 104));
  if (*(a1 + 64) >= 1)
  {
    v9 = *(a1 + 60);
    v10 = *(a1 + 68);
    v7 = *(a1 + 60);
    v8 = *(a1 + 68);
    LODWORD(v7) = v7 + v8 * v2;
    v5 = sub_1AF17B658(*(a1 + 88), &v9, &v7);
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(a1 + 32);
    }

    return sub_1AF17B6A0(v6, &v9, v6, &v7, *(a1 + 80), v5, *(a1 + 104));
  }

  return result;
}

uint64_t *sub_1AF17B658(uint64_t *result, int *a2, int *a3)
{
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v3 = 0;
    v4 = 0;
    return sub_1AF17B7BC(result, a2, a3, &v5, &v3);
  }

  return result;
}

BOOL sub_1AF17B6A0(uint64_t a1, _DWORD *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a6)
  {
    sub_1AFDBACE8();
  }

  return sub_1AF17BB28(a6, a1, a2, a3, a4, a5, a7);
}

uint64_t sub_1AF17B7BC(uint64_t *a1, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_43:
    sub_1AFDBACE8();
  }

  v8 = a2[1];
  v7 = a2[2];
  v9 = *a2;
  v11 = a3[1];
  v10 = a3[2];
  v12 = *a3;
  v13 = a4[1];
  v14 = a4[2];
  v15 = *a4;
  v17 = a5[1];
  v16 = a5[2];
  v18 = *a5;
  while (1)
  {
    v19 = v7 ? v9 % v7 : 0;
    v20 = *(v5 + 8);
    v21 = v20 ? *v5 % v20 : 0;
    if (v19 == v21 && v7 == v20 && v8 == *(v5 + 4))
    {
      v23 = v10 ? v12 % v10 : 0;
      v24 = *(v5 + 20);
      v25 = v24 ? *(v5 + 12) % v24 : 0;
      if (v23 == v25 && v10 == v24 && v11 == *(v5 + 16))
      {
        v26 = v14 ? v15 % v14 : 0;
        v27 = *(v5 + 32);
        v28 = v27 ? *(v5 + 24) % v27 : 0;
        if (v26 == v28 && v14 == v27 && v13 == *(v5 + 28))
        {
          v29 = v16 ? v18 % v16 : 0;
          v30 = *(v5 + 44);
          v31 = v30 ? *(v5 + 36) % v30 : 0;
          if (v29 == v31 && v16 == v30 && v17 == *(v5 + 40))
          {
            return *(v5 + 48);
          }
        }
      }
    }

    v5 += 56;
    if (v5 == v6)
    {
      goto LABEL_43;
    }
  }
}

void sub_1AF17BACC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

BOOL sub_1AF17BB28(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1AFDCC098(a2);
  v14 = sub_1AFDCC098(a4);
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  return sub_1AFDBB5E8(a1, v13, a3, v14, a5, 0, &v18, 0, &v16, *a6, *(a6 + 8), *(a6 + 16), *(a6 + 24), 0, 0, 0, *(a6 + 48), a7);
}

__n128 sub_1AF17BBF8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_1AF17BC08@<Q0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(*(a1 + 40) + 8);
  if (!*(v6 + 48))
  {
    *(*(*(a1 + 40) + 8) + 48) = objc_msgSend_device(*(a1 + 32), a2, a3, a4);
    *(*(*(a1 + 40) + 8) + 56) = *(a1 + 32);
    *(*(*(a1 + 40) + 8) + 64) = objc_msgSend_commandBuffer(*(*(*(a1 + 40) + 8) + 56), v8, v9, v10);
    *(*(*(a1 + 40) + 8) + 72) = objc_msgSend_blitCommandEncoder(*(*(*(a1 + 40) + 8) + 64), v11, v12, v13);
    v6 = *(*(a1 + 40) + 8);
  }

  result = *(v6 + 48);
  v15 = *(v6 + 64);
  *a5 = result;
  *(a5 + 16) = v15;
  return result;
}

uint64_t sub_1AF17BCA4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = *(a3 + 8);
    v9 = 16 * *a3;
    v10 = objc_msgSend_stringByAppendingString_(a2, a2, @".patchArrays", a4);
    objc_msgSend_encodeBytes_length_forKey_(v7, v11, v8, v9, v10);
    v14 = objc_msgSend_stringByAppendingString_(a2, v12, @".patchIndexBuffer", v13);
    sub_1AF17BF88(v7, v14, *(a3 + 16), a4, 0);
    v17 = objc_msgSend_stringByAppendingString_(a2, v15, @".patchParamBuffer", v16);
    sub_1AF17BF88(v7, v17, *(a3 + 24), a4, 0);
    v20 = objc_msgSend_stringByAppendingString_(a2, v18, @".dataBuffer", v19);
    sub_1AF17BF88(v7, v20, *(a3 + 32), a4, *(a3 + 48));
    v21 = *(a3 + 40);
    v24 = objc_msgSend_stringByAppendingString_(a2, v22, @".dataBufferOffset", v23);
    objc_msgSend_encodeInt32_forKey_(v7, v25, v21, v24);
    v26 = *(a3 + 48);
    v29 = objc_msgSend_stringByAppendingString_(a2, v27, @".dataBufferCoarseDataSize", v28);
    objc_msgSend_encodeInt32_forKey_(v7, v30, v26, v29);
    v34 = objc_msgSend_length(*(a3 + 32), v31, v32, v33);
    v38 = objc_msgSend_stringByAppendingString_(a2, v35, @".dataBufferFullDataSize", v36);

    return objc_msgSend_encodeInt32_forKey_(v7, v37, v34, v38);
  }

  return result;
}

uint64_t sub_1AF17BE0C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = objc_msgSend_stringByAppendingString_(a2, a2, @".stencilTable", a4);
    v11 = objc_msgSend_stringByAppendingString_(v8, v9, @".sizesBuffer", v10);
    sub_1AF17BF88(v7, v11, *a3, a4, 0);
    v14 = objc_msgSend_stringByAppendingString_(v8, v12, @".offsetsBuffer", v13);
    sub_1AF17BF88(v7, v14, *(a3 + 8), a4, 0);
    v17 = objc_msgSend_stringByAppendingString_(v8, v15, @".indicesBuffer", v16);
    sub_1AF17BF88(v7, v17, *(a3 + 16), a4, 0);
    v20 = objc_msgSend_stringByAppendingString_(v8, v18, @".weightsBuffer", v19);
    sub_1AF17BF88(v7, v20, *(a3 + 24), a4, 0);
    v21 = *(a3 + 32);
    v24 = objc_msgSend_stringByAppendingString_(v8, v22, @".numStencils", v23);
    objc_msgSend_encodeInt32_forKey_(v7, v25, v21, v24);
    v28 = objc_msgSend_stringByAppendingString_(a2, v26, @".evaluatorInput", v27);
    v31 = objc_msgSend_stringByAppendingString_(v28, v29, @".srcDesc", v30);
    objc_msgSend_encodeBytes_length_forKey_(v7, v32, a3 + 56, 12, v31);
    v36 = objc_msgSend_stringByAppendingString_(v28, v33, @".dstDesc", v34);

    return objc_msgSend_encodeBytes_length_forKey_(v7, v35, a3 + 68, 12, v36);
  }

  return result;
}

void sub_1AF17BF88(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5;
    if (!a5)
    {
      v5 = objc_msgSend_length(a3, a2, a3, a4);
    }

    if (objc_msgSend_storageMode(a3, a2, a3, a4) == 2)
    {
      v13 = objc_msgSend_device(a3, v10, v11, v12);
      v15 = objc_msgSend_newBufferWithLength_options_(v13, v14, v5, 0);
      (*(a4 + 16))(v22, a4);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22[3], v16, a3, 0, v15, 0, v5);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1AF17C0D8;
      v21[3] = &unk_1E7A7B118;
      v21[4] = a1;
      v21[5] = v15;
      v21[6] = a2;
      v21[7] = v5;
      objc_msgSend_addCompletedHandler_(v22[2], v17, v21, v18);
    }

    else
    {
      v20 = objc_msgSend_contents(a3, v10, v11, v12);

      objc_msgSend_encodeBytes_length_forKey_(a1, v19, v20, v5, a2);
    }
  }
}

uint64_t sub_1AF17C0D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v7 = objc_msgSend_contents(*(a1 + 40), a2, a3, a4);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);

  return objc_msgSend_encodeBytes_length_forKey_(v5, v6, v7, v8, v9);
}

void *sub_1AF17C11C(void *a1)
{
  *a1 = &unk_1F24E7C58;
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_1AFDCA848(v2);
    MEMORY[0x1B271C6B0](v3, 0x10A0C40D2671FEALL);
  }

  if (a1[2])
  {
    v4 = sub_1AFDB59D4();
    MEMORY[0x1B271C6B0](v4, 0x10F0C403D579C5ELL);
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = sub_1AFDCBF04(v5);
    MEMORY[0x1B271C6B0](v6, 0x1080C40E0210B95);
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = sub_1AFDCBF04(v7);
    MEMORY[0x1B271C6B0](v8, 0x1080C40E0210B95);
  }

  if (a1[9])
  {
    v9 = sub_1AFDBACE4();
    MEMORY[0x1B271C6B0](v9, 0x1080C40ADB4D971);
  }

  if (a1[10])
  {
    v10 = sub_1AFDBACE4();
    MEMORY[0x1B271C6B0](v10, 0x1080C40ADB4D971);
  }

  v11 = a1[12];
  if (v11)
  {
    v12 = sub_1AFDB710C(v11);
    MEMORY[0x1B271C6B0](v12, 0xA0C4074858A82);
  }

  return a1;
}

uint64_t sub_1AF17C22C(uint64_t a1)
{
  v7 = (a1 + 112);
  sub_1AF17C2A8(&v7);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_1AF17C2A8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        sub_1AF17C32C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1AF17C32C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void sub_1AF17C384(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1AF123244(a1, a2);
  }

  sub_1AF10A1D0();
}

void *sub_1AF17C3C0(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1AF17C428(result, (v2 - *a2) >> 4);
  }

  return result;
}

void sub_1AF17C428(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1AF10A1E0(a1, a2);
  }

  sub_1AF10A1D0();
}

id sub_1AF17C464()
{
  v0 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Raytracing.metal");
  v1 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Raytracing.h");
  result = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v0, v2, @"#import CFX-OpenSubdiv-Raytracing.h", v1);
  qword_1EB6585D8 = result;
  return result;
}

uint64_t sub_1AF17C4C4(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B271C600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1AF17C580(a1);
  return a1;
}

void sub_1AF17C558(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1AF17C580(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}