void sub_1AF22D428(uint64_t a1)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 16));
  v3 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF22ED20;
  v4[3] = &unk_1E7A7D918;
  v4[4] = BytePtr;
  sub_1AF22E074(v3, 0, 0, v4);
  CFRelease(*(a1 + 16));
  CFRelease(*(a1 + 24));
}

uint64_t sub_1AF22D4D0()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658730 = result;
  return result;
}

void *sub_1AF22D4F8()
{
  if (qword_1EB658738 != -1)
  {
    sub_1AFDEC4BC();
  }

  v0 = sub_1AF0D160C(qword_1EB658730, 0x30uLL);
  v1 = *MEMORY[0x1E695E480];
  v0[2] = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v0[3] = CFDataCreateMutable(v1, 0);
  v0[6] = -1;
  v0[7] = -1;
  return v0;
}

CFTypeRef sub_1AF22D578(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

void sub_1AF22D5CC(uint64_t a1)
{
  ++*(a1 + 48);
  CFDataSetLength(*(a1 + 16), 0);
  *(a1 + 40) = 0;
  *(a1 + 56) = -1;
  memset(v2, 0, sizeof(v2));
  CFDataAppendBytes(*(a1 + 16), v2, 144);
}

UInt8 *sub_1AF22D640(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_encodeNewlyRegisteredResources_(*(a1 + 32), a2, a1, a4);
  Length = CFDataGetLength(*(a1 + 16));
  v6 = CFDataGetLength(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(*(a1 + 24));
    CFDataAppendBytes(v8, BytePtr, v7);
  }

  CFDataSetLength(*(a1 + 24), 0);
  result = CFDataGetMutableBytePtr(*(a1 + 16));
  *result = *(a1 + 40);
  *(result + 1) = 144;
  *(result + 2) = Length;
  return result;
}

__n128 sub_1AF22D6CC(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 16));
  MutableBytePtr[1] = a2;
  MutableBytePtr[2] = a3;
  MutableBytePtr[3] = a4;
  MutableBytePtr[4] = a5;
  MutableBytePtr[5] = a6;
  MutableBytePtr[6] = a7;
  MutableBytePtr[7] = a8;
  result = a9;
  MutableBytePtr[8] = a9;
  return result;
}

uint64_t sub_1AF22D744(uint64_t a1, uint64_t a2)
{
  v4 = [CFXRemoteArgumentEncoder alloc];

  return MEMORY[0x1EEE66B58](v4, sel_initWithRemoteFrameBuilder_encoder_, a1, a2);
}

__n128 sub_1AF22D78C(uint64_t a1, unsigned int a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 56) == -1)
  {
    *(a1 + 56) = CFDataGetLength(*(a1 + 16));
    v13 = 0;
    *bytes = a3;
    v11 = a4;
    v12 = a2;
    CFDataAppendBytes(*(a1 + 16), bytes, 48);
  }

  else
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC4D0();
    }
  }

  return result;
}

void sub_1AF22D814(uint64_t a1)
{
  if (*(a1 + 56) == -1)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC504();
    }
  }

  else
  {
    v2 = &CFDataGetMutableBytePtr(*(a1 + 16))[*(a1 + 56)];
    *(v2 + 9) = CFDataGetLength(*(a1 + 16)) - *(a1 + 56);
    *(a1 + 56) = -1;
    ++*(a1 + 40);
  }
}

void sub_1AF22D89C(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 1;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D8E4(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 2;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D92C(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 3;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D974(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 4;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D9BC(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 56) != -1)
  {
    v8 = v3;
    v9 = v4;
    bytes = 5;
    v6 = a2;
    v7 = a3;
    CFDataAppendBytes(*(a1 + 16), &bytes, 10);
  }
}

void sub_1AF22DA08(uint64_t a1, UInt8 a2, UInt8 a3)
{
  if (*(a1 + 56) != -1)
  {
    v6 = v3;
    v7 = v4;
    v5[0] = 6;
    v5[1] = a2;
    v5[2] = a3;
    CFDataAppendBytes(*(a1 + 16), v5, 3);
  }
}

void sub_1AF22DA54(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v4[1] = a4;
  v4[0] = 7;
  BYTE1(v4[0]) = a2;
  BYTE2(v4[0]) = a3;
  CFDataAppendBytes(*(a1 + 16), v4, 16);
}

void sub_1AF22DA94(uint64_t a1, UInt8 a2, UInt8 a3, UInt8 a4)
{
  bytes[0] = 8;
  bytes[1] = a2;
  bytes[2] = a3;
  bytes[3] = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 4);
}

void sub_1AF22DAD4(uint64_t a1, UInt8 a2, UInt8 a3, uint64_t a4)
{
  bytes[0] = 9;
  bytes[1] = a2;
  bytes[2] = a3;
  v5 = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 11);
}

void sub_1AF22DB14(uint64_t a1, UInt8 a2, UInt8 a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  *bytes = 10;
  bytes[1] = a2;
  bytes[2] = a3;
  v7 = a5;
  CFDataAppendBytes(*(a1 + 16), bytes, 24);
}

void sub_1AF22DB5C(uint64_t a1, UInt8 a2, UInt8 a3, UInt8 a4)
{
  bytes[0] = 12;
  bytes[1] = a2;
  bytes[2] = a3;
  bytes[3] = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 4);
}

void sub_1AF22DB9C(uint64_t a1, UInt8 a2, UInt8 a3, const UInt8 *a4, CFIndex a5)
{
  *bytes = 11;
  bytes[1] = a2;
  bytes[2] = a3;
  *&bytes[4] = a5;
  CFDataAppendBytes(*(a1 + 16), bytes, 8);
  CFDataAppendBytes(*(a1 + 16), a4, a5);
}

void sub_1AF22DC08(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = objc_msgSend_resourceIDForBuffer_(*(a1 + 32), a2, a2, a4);
  *bytes = 1;
  v9 = a3;
  v10 = v4;
  CFDataAppendBytes(*(a1 + 24), bytes, 24);
}

void sub_1AF22DC6C(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = objc_msgSend_resourceIDForBuffer_(*(a1 + 32), a2, a2, a4);
  *bytes = 2;
  v9 = a3;
  v10 = v4;
  CFDataAppendBytes(*(a1 + 24), bytes, 24);
}

void sub_1AF22DCD8(uint64_t a1, const char *a2, unsigned __int8 a3, uint64_t a4)
{
  v7 = objc_msgSend_resourceIDForTexture_(*(a1 + 32), a2, a2, a4);
  *bytes = 3;
  v8 = a3;
  CFDataAppendBytes(*(a1 + 24), bytes, 24);
}

void sub_1AF22DD34(uint64_t a1, const char *a2, UInt8 a3, uint64_t a4)
{
  v6 = objc_msgSend_descForSamplerState_(*(a1 + 32), a2, a2, a4);
  bytes[0] = 4;
  bytes[1] = a3;
  v8 = v6 | 0x8000000000000000;
  CFDataAppendBytes(*(a1 + 24), bytes, 10);
}

void sub_1AF22DDC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4[1] = a2;
  v4[0] = 13;
  BYTE1(v4[0]) = a3;
  BYTE2(v4[0]) = a4;
  CFDataAppendBytes(*(a1 + 16), v4, 16);
}

void sub_1AF22DE04(uint64_t a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = a2;
  CFDataAppendBytes(*(a1 + 16), v2, 16);
}

void sub_1AF22DE34(uint64_t a1, UInt8 a2, int a3, int a4, int a5, int a6)
{
  v7 = a3;
  *bytes = 14;
  bytes[1] = a2;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  CFDataAppendBytes(*(a1 + 16), bytes, 20);
}

void sub_1AF22DE78(uint64_t a1, char a2, int a3, char a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9)
{
  v9[0] = 15;
  BYTE1(v9[0]) = a2;
  BYTE2(v9[0]) = a4;
  v9[1] = a5;
  v10 = a6;
  v11 = a3;
  v12 = a7;
  v13 = a8;
  v14 = a9;
  CFDataAppendBytes(*(a1 + 16), v9, 40);
}

void sub_1AF22DED4(uint64_t a1, UInt8 a2, uint64_t a3, unsigned int a4)
{
  v5 = a3;
  *bytes = 16;
  bytes[1] = a2;
  v6 = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 24);
}

void sub_1AF22DF18(uint64_t a1, char a2, char a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v7[0] = 17;
  BYTE1(v7[0]) = a2;
  BYTE2(v7[0]) = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a7;
  CFDataAppendBytes(*(a1 + 16), v7, 40);
}

void sub_1AF22DF6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = 0;
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, a3, 1, &v19);
  LODWORD(v18) = objc_msgSend_length(v5, v6, v7, v8, 0, a2, 0);
  CFDataAppendBytes(*(a1 + 24), &v17, 24);
  v12 = objc_msgSend_bytes(v5, v9, v10, v11);
  v16 = objc_msgSend_length(v5, v13, v14, v15);
  CFDataAppendBytes(*(a1 + 24), v12, v16);
}

__n128 sub_1AF22E000(const __CFData *a1, _OWORD *a2, uint64_t a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  v6 = *(BytePtr + 4);
  v8 = *(BytePtr + 1);
  v7 = *(BytePtr + 2);
  a2[2] = *(BytePtr + 3);
  a2[3] = v6;
  *a2 = v8;
  a2[1] = v7;
  result = *(BytePtr + 5);
  v10 = *(BytePtr + 6);
  v11 = *(BytePtr + 8);
  *(a3 + 32) = *(BytePtr + 7);
  *(a3 + 48) = v11;
  *a3 = result;
  *(a3 + 16) = v10;
  return result;
}

BOOL sub_1AF22E048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == v3)
  {
    return *(a1 + 8) <= *(a2 + 8);
  }

  else
  {
    return v2 < v3;
  }
}

void sub_1AF22E074(const __CFData *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    v9 = BytePtr;
    v10 = *(BytePtr + 1);
    v11 = *(BytePtr + 2);
    if (a2)
    {
      v12 = MEMORY[0x1EEE9AC00](BytePtr, v8);
      v17 = (v28 - ((v16 + 15) & 0x1FFFFFFFF0));
      if (v10 + 48 <= v11)
      {
        v18 = 0;
        v19 = vabsq_f32(v15);
        v20 = vabsq_f32(v14);
        v21 = vabsq_f32(v13);
        do
        {
          v22 = &v17[3 * v18];
          v23 = *&v9[v10 + 32];
          v24 = *&v9[v10 + 36];
          *v22 = v10;
          *(v22 + 1) = v23;
          v25 = *&v9[v10 + 16];
          v25.i32[1] = v25.i32[0];
          v25.i32[2] = *&v9[v10 + 16];
          v22[2] = -COERCE_FLOAT(vaddq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v13, *(v9 + v10), 2), v14, *(v9 + v10), 1), v15, COERCE_FLOAT(*(v9 + v10))), vmlaq_f32(vmlaq_f32(vmulq_f32(v20, vuzp2q_s32(vdupq_lane_s32(*(v9 + v10 + 16), 1), *(v9 + v10 + 16))), v25, v19), vzip2q_s32(vtrn1q_s32(*(v9 + v10 + 16), *(v9 + v10 + 16)), *(v9 + v10 + 16)), v21)).i32[2]);
          v10 += v24;
          ++v18;
        }

        while (v10 + 48 <= v11);
      }

      qsort(v17, *v9, 0xCuLL, sub_1AF22E048);
      if (*v9)
      {
        v26 = 0;
        do
        {
          v27 = *v17;
          v17 += 3;
          (*(a4 + 16))(a4, *&v9[v27 + 32], *&v9[v27], *&v9[v27 + 16]);
          ++v26;
        }

        while (v26 < *v9);
      }
    }

    else
    {
      for (; v10 + 48 <= v11; v10 += *&v9[v10 + 36])
      {
        (*(a4 + 16))(a4, *&v9[v10 + 32], v10, *&v9[v10], *&v9[v10 + 16]);
      }
    }
  }
}

void sub_1AF22E280(const __CFData *a1, void *a2)
{
  *&v47[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  objc_msgSend_clearArgumentBufferDescriptors(a2, v6, v7, v8);
  v10 = *(BytePtr + 2);
  if (Length <= v10)
  {
    v11 = 0;
    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = &BytePtr[Length];
  v15 = &BytePtr[v10];
  do
  {
    v16 = *v15;
    if (v16 <= 2)
    {
      if (!*v15)
      {
        v20 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v9, (v15 + 24), *(v15 + 4), 0);
        v37 = 0;
        v21 = MEMORY[0x1E696ACD0];
        v22 = objc_opt_class();
        v24 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v21, v23, v22, v20, &v37);
        objc_msgSend_remoteRegisterRenderPipelineDescriptor_remoteID_(a2, v25, v24, *(v15 + 1));
        v15 += *(v15 + 4) + 24;
        continue;
      }

      if (v16 == 1)
      {
        if (v11)
        {
          v27 = sub_1AF0D5194();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC57C(v46, v47, v27);
          }
        }

        v18 = (v15 + 24);

        v11 = objc_alloc_init(CFXRemoteArgumentBufferDescriptor);
        v12 = *(v15 + 1);
        v13 = *(v15 + 4);
      }

      else
      {
        if (v16 != 2)
        {
          continue;
        }

        if (!v11)
        {
          v17 = sub_1AF0D5194();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v44, &v45, v17);
          }
        }

        v18 = (v15 + 24);
        objc_msgSend_setBuffer_offset_at_(v11, v9, *(v15 + 1), *(v15 + 4), v15[20]);
      }

      goto LABEL_32;
    }

    switch(v16)
    {
      case 3u:
        if (!v11)
        {
          v26 = sub_1AF0D5194();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v42, &v43, v26);
          }
        }

        v18 = (v15 + 24);
        objc_msgSend_setTexture_at_(v11, v9, *(v15 + 1), v15[16]);
        goto LABEL_32;
      case 4u:
        if (!v11)
        {
          v28 = sub_1AF0D5194();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v40, &v41, v28);
          }
        }

        v18 = (v15 + 10);
        objc_msgSend_setSampler_at_(v11, v9, *(v15 + 2), v15[1]);
LABEL_32:
        v15 = v18;
        break;
      case 5u:
        if (!v11)
        {
          v19 = sub_1AF0D5194();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v38, &v39, v19);
          }
        }

        objc_msgSend_remoteRegisterArgumentBufferDescriptor_remoteID_offset_(a2, v9, v11, v12, v13);

        v13 = 0;
        v12 = 0;
        v11 = 0;
        ++v15;
        break;
    }
  }

  while (v15 < v14);
  if (v11)
  {
    v29 = sub_1AF0D5194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC5C0(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

LABEL_39:
}

void sub_1AF22E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_bufferForResourceID_(*(a3 + 24), a2, *(a2 + 8), a4);
  ArgumentBufferDescriptorWithRemoteID_offset = objc_msgSend_fetchArgumentBufferDescriptorWithRemoteID_offset_(*(a3 + 24), v8, *(a2 + 8), *(a2 + 16));
  if (ArgumentBufferDescriptorWithRemoteID_offset)
  {
    v12 = ArgumentBufferDescriptorWithRemoteID_offset;
    if (!a1)
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEC638(v13, v10, v14, v11, v15, v16, v17, v18);
      }
    }

    v22 = objc_msgSend_renderPipelineDescForResourceID_(*(a3 + 24), v10, a1, v11);
    if (!v22)
    {
      v23 = sub_1AF0D5194();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEC6B0(v23, v19, v20, v21, v24, v25, v26, v27);
      }
    }

    v28 = objc_msgSend_argumentEncoder(v22, v19, v20, v21);
    if (!v28)
    {
      v29 = sub_1AF0D5194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEC728(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    v37 = v28;
    objc_msgSend_setArgumentBuffer_offset_(v28, v38, v7, *(a2 + 16));
    v39 = *(a3 + 16);
    v44[0] = *a3;
    v44[1] = v39;
    objc_msgSend_patchArgumentBufferWithEncoder_encoderContext_(v12, v40, v28, v44);
  }

  if (v7)
  {
    v41 = *(a2 + 1);
    if (v41)
    {
      objc_msgSend_setVertexBuffer_offset_atIndex_(*a3, v10, v7, *(a2 + 16), *(a2 + 2));
      v41 = *(a2 + 1);
    }

    if ((v41 & 2) != 0)
    {
      objc_msgSend_setFragmentBuffer_offset_atIndex_(*a3, v10, v7, *(a2 + 16), *(a2 + 2));
    }
  }

  else
  {
    v42 = sub_1AF0D5194();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a2 + 8);
      LODWORD(v44[0]) = 134217984;
      *(v44 + 4) = v43;
      _os_log_impl(&dword_1AF0CE000, v42, OS_LOG_TYPE_DEFAULT, "Warning: buffer rID:%llu was not found", v44, 0xCu);
    }
  }
}

void sub_1AF22E778(uint64_t a1, int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = &CFDataGetBytePtr(*(a1 + 8))[a2];
  v7 = *(v6 + 9);
  if (v7 >= 0x31)
  {
    v8 = 0;
    v9 = &v6[v7];
    v10 = (v6 + 48);
    while (2)
    {
      switch(*v10)
      {
        case 0:
          RenderPipelineForResourceID = objc_msgSend_renderPipelineForResourceID_(*(a1 + 24), v4, *(v10 + 8), v5);
          if (RenderPipelineForResourceID || (RenderPipelineForResourceID = objc_msgSend_makeRenderPipelineForResourceID_(*(a1 + 16), v4, *(v10 + 8), v5)) != 0)
          {
            objc_msgSend_setRenderPipelineState_(*a1, v4, RenderPipelineForResourceID, v5);
            v8 = *(v10 + 8);
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_49;
        case 1:
          objc_msgSend_setFrontFacingWinding_(*a1, v4, *(v10 + 1), v5);
          goto LABEL_37;
        case 2:
          objc_msgSend_setCullMode_(*a1, v4, *(v10 + 1), v5);
          goto LABEL_37;
        case 3:
          objc_msgSend_setTriangleFillMode_(*a1, v4, *(v10 + 1), v5);
          goto LABEL_37;
        case 4:
          objc_msgSend_setDepthClipMode_(*a1, v4, *(v10 + 1), v5);
LABEL_37:
          v10 += 2;
          goto LABEL_69;
        case 5:
          v2 = v2 & 0xFFFFFFFFFFFFFF00 | *(v10 + 9);
          v43 = objc_msgSend_depthStencilStateForDepthStencilDesc_(*(a1 + 24), v4, *(v10 + 1), v2);
          objc_msgSend_setDepthStencilState_(*a1, v44, v43, v45);
          v10 += 10;
          goto LABEL_69;
        case 6:
          objc_msgSend_setStencilFrontReferenceValue_backReferenceValue_(*a1, v4, *(v10 + 1), *(v10 + 2));
          v10 += 3;
          goto LABEL_69;
        case 7:
          v36 = objc_msgSend_textureForResourceID_(*(a1 + 24), v4, *(v10 + 8), v5);
          v37 = *(v10 + 1);
          if (v37)
          {
            objc_msgSend_setVertexTexture_atIndex_(*a1, v4, v36, *(v10 + 2));
            v37 = *(v10 + 1);
          }

          if ((v37 & 2) != 0)
          {
            objc_msgSend_setFragmentTexture_atIndex_(*a1, v4, v36, *(v10 + 2));
          }

          goto LABEL_49;
        case 8:
          v51 = objc_msgSend_textureForBuiltin_(*(a1 + 16), v4, *(v10 + 3), v5);
          v52 = *(v10 + 1);
          if (v52)
          {
            objc_msgSend_setVertexTexture_atIndex_(*a1, v4, v51, *(v10 + 2));
            v52 = *(v10 + 1);
          }

          if ((v52 & 2) != 0)
          {
            objc_msgSend_setFragmentTexture_atIndex_(*a1, v4, v51, *(v10 + 2));
          }

          goto LABEL_55;
        case 9:
          v25 = objc_msgSend_samplerStateForSamplerDesc_(*(a1 + 24), v4, *(v10 + 3), v5);
          v26 = *(v10 + 1);
          if (v26)
          {
            objc_msgSend_setVertexSamplerState_atIndex_(*a1, v4, v25, *(v10 + 2));
            v26 = *(v10 + 1);
          }

          if ((v26 & 2) != 0)
          {
            objc_msgSend_setFragmentSamplerState_atIndex_(*a1, v4, v25, *(v10 + 2));
          }

          v10 += 11;
          goto LABEL_69;
        case 0xA:
          v50 = *(a1 + 16);
          *buf = *a1;
          v69 = v50;
          sub_1AF22E5A0(v8, v10, buf, v5);
          goto LABEL_58;
        case 0xB:
          v19 = *(v10 + 1);
          if (v19)
          {
            objc_msgSend_setVertexBytes_length_atIndex_(*a1, v4, v10 + 8, *(v10 + 4), *(v10 + 2));
            v19 = *(v10 + 1);
          }

          if ((v19 & 2) != 0)
          {
            objc_msgSend_setFragmentBytes_length_atIndex_(*a1, v4, v10 + 8, *(v10 + 4), *(v10 + 2));
          }

          v10 += 8 + *(v10 + 4);
          goto LABEL_69;
        case 0xC:
          v20 = objc_msgSend_bufferForBuiltin_(*(a1 + 16), v4, *(v10 + 3), v5);
          v22 = v21;
          MTLBuffer = CFXBufferSliceGetMTLBuffer(v20, v21);
          v24 = *(v10 + 1);
          if (v24)
          {
            objc_msgSend_setVertexBuffer_offset_atIndex_(*a1, v4, MTLBuffer, v22, *(v10 + 2));
            v24 = *(v10 + 1);
          }

          if ((v24 & 2) != 0)
          {
            objc_msgSend_setFragmentBuffer_offset_atIndex_(*a1, v4, MTLBuffer, v22, *(v10 + 2));
          }

LABEL_55:
          v10 += 4;
          goto LABEL_69;
        case 0xD:
          v46 = objc_msgSend_textureForResourceID_(*(a1 + 24), v4, *(v10 + 8), v5);
          if (v46 || (v46 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v47, *(v10 + 8), v48)) != 0)
          {
            objc_msgSend_useResource_usage_stages_(*a1, v47, v46, *(v10 + 2), *(v10 + 1));
          }

          else
          {
            v57 = sub_1AF0D5194();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(v10 + 8);
              *buf = 134217984;
              *&buf[4] = v58;
              _os_log_impl(&dword_1AF0CE000, v57, OS_LOG_TYPE_DEFAULT, "Warning: UseResource failed with unknown resourceID: %llu", buf, 0xCu);
            }
          }

          goto LABEL_49;
        case 0xE:
          if (v8)
          {
            v14 = *a1;
            v15 = *(v10 + 1);
            v16 = *(v10 + 4);
            v17 = *(v10 + 8);
            v18 = *(v10 + 12);
            if (*(v10 + 16))
            {
              objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(v14, v4, v15, v16, v17, v18);
            }

            else
            {
              objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v14, v4, v15, v16, v17, v18);
            }
          }

          else
          {
            v54 = sub_1AF0D5194();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEC824(&v66, v67);
            }
          }

          v10 += 20;
          goto LABEL_69;
        case 0xF:
          if (v8)
          {
            v28 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v4, *(v10 + 8), v5);
            v29 = *a1;
            v30 = *(v10 + 1);
            v31 = *(v10 + 2);
            v33 = *(v10 + 16);
            v32 = *(v10 + 20);
            v34 = *(v10 + 28);
            v35 = *(v10 + 32);
            if (v35)
            {
              objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_(v29, v27, v30, v32, v31, v28, v33, v34, *(v10 + 24), v35);
            }

            else
            {
              objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(v29, v27, v30, v32, v31, v28, v33, v34);
            }
          }

          else
          {
            v55 = sub_1AF0D5194();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEC7F8(&v64, v65);
            }
          }

          goto LABEL_68;
        case 0x10:
          if (v8)
          {
            v12 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v4, *(v10 + 8), v5);
            objc_msgSend_drawPrimitives_indirectBuffer_indirectBufferOffset_(*a1, v13, *(v10 + 1), v12, *(v10 + 16));
          }

          else
          {
            v53 = sub_1AF0D5194();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEC7CC(&v62, v63);
            }
          }

LABEL_58:
          v10 += 24;
          goto LABEL_69;
        case 0x11:
          if (v8)
          {
            v38 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v4, *(v10 + 8), v5);
            v41 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v39, *(v10 + 24), v40);
            objc_msgSend_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(*a1, v42, *(v10 + 1), *(v10 + 2), v38, *(v10 + 16), v41, *(v10 + 32));
          }

          else
          {
            v56 = sub_1AF0D5194();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEC7A0(&v60, v61);
            }
          }

LABEL_68:
          v10 += 40;
          goto LABEL_69;
        case 0x12:
          v49 = *(v10 + 1);
          if (v49)
          {
            objc_msgSend_setVertexTexture_atIndex_(*a1, v4, *(v10 + 8), *(v10 + 2));
            v49 = *(v10 + 1);
          }

          if ((v49 & 2) != 0)
          {
            objc_msgSend_setFragmentTexture_atIndex_(*a1, v4, *(v10 + 8), *(v10 + 2));
          }

LABEL_49:
          v10 += 16;
LABEL_69:
          if (v10 >= v9)
          {
            return;
          }

          continue;
        default:
          v59 = sub_1AF0D5194();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEC488();
          }

          return;
      }
    }
  }
}

uint64_t sub_1AF232994(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDEDFD8(v6, v7, v8, v9, v10, v11, v12, v13);
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
    sub_1AFDD2B48(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE050(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF12DDCC(a2);
  Aligned = CScratchAllocatorAllocateAligned(a3, 32, 8);
  *Aligned = a3;
  *(Aligned + 8) = 0;
  *(Aligned + 16) = 0;
  *(Aligned + 24) = Aligned + 32;
  Count = CFArrayGetCount(a1);
  v33 = *(Aligned + 20);
  if (Count > v33)
  {
    sub_1AF2348E0(Aligned, Count - v33, 1);
  }

  v34 = sub_1AF12F518(a2);
  CStackAllocatorPushFrame(v34);
  v35 = CStackAllocatorAllocate(v34, 0x28uLL);
  v42 = v34;
  *v35 = v34;
  sub_1AF234CC4(v35, 32);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (sub_1AF1C3FAC(ValueAtIndex) == v30)
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_1AF232BBC;
        v43[3] = &unk_1E7A7D938;
        v43[4] = v35;
        sub_1AF1B94AC(ValueAtIndex, v43);
      }
    }
  }

  v38 = v35[9];
  if (v38 != -15)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      if (*(*(v35 + 3) + 2 * v40))
      {
        sub_1AF235000(Aligned, (*(v35 + 2) + v39));
        v38 = v35[9];
      }

      ++v40;
      v39 += 8;
    }

    while (v40 < (v38 + 15));
  }

  CStackAllocatorPopFrame(v42);
  return Aligned;
}

BOOL sub_1AF232BBC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (sub_1AF1BA9A4(a2))
    {
      return 1;
    }

    v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47))) ^ 0x35253C9ADE8F4CA8);
    v5 = *(a1 + 32);
    v7 = a2;
    if (!sub_1AF234D70(v5, (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47), &v7))
    {
      return 1;
    }
  }

  return result;
}

unsigned __int8 *sub_1AF232C58(unsigned __int8 *result, unsigned int a2)
{
  if (result)
  {
    v2 = 0xC6A4A7935BD1E995 * a2;
    if (a2 >= 8)
    {
      v3 = a2 >> 3;
      v4 = &result[8 * v3];
      v5 = 8 * v3;
      do
      {
        v6 = *result;
        result += 8;
        v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v2);
        v5 -= 8;
      }

      while (v5);
      result = v4;
    }

    v7 = a2 & 7;
    if (v7 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47));
        }

        goto LABEL_22;
      }

      if (v7 == 2)
      {
LABEL_21:
        v2 ^= result[1] << 8;
LABEL_22:
        v2 = 0xC6A4A7935BD1E995 * (v2 ^ *result);
        return ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47));
      }

LABEL_20:
      v2 ^= result[2] << 16;
      goto LABEL_21;
    }

    if ((a2 & 7) > 5)
    {
      if (v7 != 6)
      {
        v2 ^= result[6] << 48;
      }

      v2 ^= result[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_19;
    }

    v2 ^= result[4] << 32;
LABEL_19:
    v2 ^= result[3] << 24;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AF232D3C(uint64_t a1, void *a2)
{
  if ((sub_1AF12EE68(a1) & 0x10000) != 0)
  {
    v10 = sub_1AF103070(a2, v3, v4, v5);
    v11 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    while (v11 < objc_msgSend_count(v10, v7, v8, v9))
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(v10, v12, v11, v13);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1AF232E6C;
      v16[3] = &unk_1E7A7D960;
      v16[4] = &v17;
      sub_1AF1B94AC(v14, v16);
      ++v11;
      if (v18[3])
      {
        v6 = 1;
        goto LABEL_8;
      }
    }

    v6 = *(v18 + 24);
LABEL_8:
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1AF232E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF232E6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_1AF1BA9A4(a2))
  {
    return 1;
  }

  result = sub_1AF1B75A0(a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 2;
  }

  return result;
}

uint64_t sub_1AF232ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v18 = a2;
  *(&v18 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A488, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE0C8();
  }

  if (byte_1ED73A480)
  {
    v8 = 0xA5BDF038E97191F5;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v8, 0);
  *a1 = &unk_1F24E8D50;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  v9 = *(a4 + 24);
  v10 = *(a4 + 40);
  *(a1 + 520) = *(a4 + 56);
  *(a1 + 488) = v9;
  *(a1 + 504) = v10;
  *&v19 = *(a1 + 432);
  LOBYTE(v23) = 0;
  v25 = 0;
  v21 = 0;
  v20 = 0uLL;
  v26 = xmmword_1AFE42EB0;
  v27 = *(a1 + 440);
  v28 = 2;
  v29 = 8;
  v30 = 2;
  v31 = 1;
  *(a1 + 448) = sub_1AF2330E0(v18, *(&v18 + 1), &v18, &v19, &v20);
  v11 = v18;
  v12 = *(a1 + 432);
  *&v20 = 0;
  WORD4(v20) = 0;
  BYTE10(v20) = *(a1 + 441);
  v21 = 48;
  v22 = 0;
  if ((atomic_load_explicit(&qword_1ED73A488, memory_order_acquire) & 1) == 0)
  {
    v17 = v11;
    sub_1AFDEE114();
    v11 = v17;
  }

  if (byte_1ED73A480)
  {
    v13 = 0xA5BDF038E97191F5;
  }

  else
  {
    v13 = 0;
  }

  v23 = v13;
  v24 = -1;
  v19 = v11;
  v14 = sub_1AF23498C(&v19, 0x48u, 8u);
  sub_1AF2603E8(v14, v12, &v20, *(a1 + 448));
  *(a1 + 456) = v15;
  return a1;
}

uint64_t sub_1AF2330E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0xA0u, 0x10u);
  return sub_1AF23B34C(v8, *a3, a3[1], *a4, a5);
}

void sub_1AF233140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF23B424(*(a1 + 448), a2, a3, a4);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v6, v7, v8, v9, v10, v11);
  v13 = *(a1 + 448);
  v14 = *a2;
  v15 = *(a2 + 8);

  sub_1AF23B678(v13, v14, v15, v12);
}

void sub_1AF233194(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 480)) + 12);
  v6 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 504)) + 12);
  v7 = v5;
  v8 = v5 << 32;
  v9 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))))) >> 47));
  v13 = CFX::CrossFrameResourceManager::get(a2[4], v12);
  *(a1 + 464) = v13;
  if (!v13)
  {
    v16 = HIBYTE(v8);
    *(a1 + 464) = sub_1AF23345C(a2[4], v12);
    v17 = sub_1AF12E2AC(*(a1 + 432));
    v21 = objc_msgSend_resourceManager(v17, v18, v19, v20);
    v22 = sub_1AF225470(0, 12, 0, 1.0, 1.0);
    sub_1AF2334EC((*(a1 + 464) + 40), v22);
    v23 = sub_1AF20E1F8(v21, v22, 1);
    v24 = sub_1AF1305F8(*(a1 + 432), 256);
    v25 = *(a1 + 464);
    v26 = sub_1AFDE868C(v21);
    *&v45 = objc_msgSend_frameworkLibrary(v26, v27, v28, v29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    *(&v45 + 1) = v7;
    *(&v49 + 1) = v6;
    BYTE8(v50) = v16;
    *(&v56 + 1) = sub_1AFDEA004(v23);
    *&v57 = @"debug_probe_vert";
    v32 = @"debug_probe_frag_cube_array";
    if (!v24)
    {
      v32 = @"debug_probe_frag_2d_array";
    }

    *(&v57 + 1) = v32;
    v33 = objc_msgSend_newRenderPipelineStateWithDesc_(v21, v30, v44, v31);
    sub_1AF23355C((v25 + 16), v33);
    sub_1AF2335BC((*(a1 + 464) + 24), v23);
    v34 = sub_1AF1A516C(v22, 1);
    if (v34 && CFArrayGetValueAtIndex(v34, 0))
    {
      v35 = sub_1AFDE7F98(v21);
      sub_1AF2335BC((*(a1 + 464) + 32), v35);
    }

    v36 = *(a1 + 464);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(v44, 0, sizeof(v44));
    v37 = sub_1AFDE868C(v21);
    *&v45 = objc_msgSend_frameworkLibrary(v37, v38, v39, v40);
    *(&v45 + 1) = v7;
    *(&v49 + 1) = v6;
    BYTE8(v50) = v16;
    *&v57 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v57 + 1) = @"vfx_draw_fullscreen_fragment";
    v43 = objc_msgSend_newRenderPipelineStateWithDesc_(v21, v41, v44, v42);
    sub_1AF23355C((v36 + 48), v43);
  }

  sub_1AF260410(*(a1 + 456), a2, v14, v15);
}

uint64_t sub_1AF23345C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF2334EC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4 == a2)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEE14C(v5);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    CFRelease(a2);
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = a2;
  }
}

void sub_1AF23355C(id *a1, id a2)
{
  if (*a1 == a2)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEE14C(v4);
    }
  }

  else
  {

    *a1 = a2;
  }
}

id *sub_1AF2335BC(id *a1, id a2)
{
  if (*a1 != a2)
  {

    *a1 = a2;
  }

  return a1;
}

uint64_t sub_1AF2335FC(uint64_t *a1, uint64_t a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = sub_1AF12E2AC(a1[54]);
  v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
  v14 = objc_msgSend_renderEncoder(v6, v11, v12, v13);
  v15 = v14;
  v16 = a1[59];
  if (v16)
  {
    v17 = *(a2 + 24);
    v18 = CFX::RG::Temporal::currentFrame(v14);
    Texture = CFX::GPUResourceManager::getTexture(v17, v16, v18);
    v20 = sub_1AFDE8620(v10);
    objc_msgSend_setDepthStencilState_(*(v15 + 16), v21, v20, v22);
    v23 = sub_1AF2338B0(a1[58] + 48);
    v27 = objc_msgSend_state(v23, v24, v25, v26);
    objc_msgSend_setRenderPipelineState_(*(v15 + 16), v28, v27, v29);
    sub_1AF1F8FCC(v15, Texture, 0, v30);
    sub_1AF2010C8(v15, v31);
  }

  v78 = v10;
  v32 = sub_1AF12DDCC(a1[54]);
  v33 = sub_1AF12EE9C(a1[54], 1);
  v34 = sub_1AF1D00B0(v32);
  v35 = sub_1AF13341C(v34);
  if ((sub_1AF12EE68(a1[54]) & 0x200) != 0)
  {
    v36 = sub_1AF1CECF0(v32);
    sub_1AF159740(v36, v33, v37, v38);
  }

  v39 = *(a2 + 32);
  v40 = sub_1AF23B228();
  v41 = CFX::CrossFrameResourceManager::get(v39, v40);
  if (v41)
  {
    v42 = v41;
    v75 = v32;
    v76 = a2;
    v77 = a3;
    v43 = *(v41 + 16);
    if (v43)
    {
      v44 = *(v43 + 14872);
      if (v44)
      {
        v45 = *(v43 + 14864);
        do
        {
          v46 = *v45++;
          v39 = v39 & 0xFFFFFFFF00000000 | v46;
          v47 = sub_1AF1474D8(v35, v39);
          v48 = sub_1AF146110(v47);
          if (v48)
          {
            sub_1AF0FFEB4(v33, v48);
          }

          --v44;
        }

        while (v44);
      }
    }

    *(v42 + 16) = 0;
    a2 = v76;
    a3 = v77;
  }

  sub_1AF0FE318(v33);
  sub_1AF0FEAB4(v33);
  v49 = sub_1AFDE8620(v78);
  objc_msgSend_setDepthStencilState_(*(v15 + 16), v50, v49, v51);
  sub_1AF0FE920(v33, v55, v52, v53, v54);
  sub_1AF0FEAB4(v33);
  v56 = sub_1AF1C45EC();
  v60 = objc_msgSend_resourceManager(v6, v57, v58, v59);
  v61 = sub_1AFDE7C58(v60);
  objc_msgSend_setDepthStencilState_(*(v15 + 16), v62, v61, v63);
  objc_msgSend_setRasterizerStates_(v6, v64, v56, v65);
  if (v33 && (sub_1AF12EE68(a1[54]) & 8) != 0)
  {
    sub_1AF2338FC(a1, v15);
  }

  if ((objc_msgSend_features(v6, v66, v67, v68, v75, v76, v77) & 0x1000) != 0)
  {
    objc_msgSend_setDepthClipMode_(*(v15 + 16), v69, 1, v70);
  }

  sub_1AF260B04(a1[57], a2, a3, 0);
  sub_1AF0FCF54(v33);
  result = sub_1AF1CF8AC(v32);
  if (result)
  {
    v72 = result;
    v73 = a1[54];
    v74 = sub_1AF20107C(v15);

    return sub_1AF14E52C(v72, v73, v74);
  }

  return result;
}

uint64_t sub_1AF2338B0(uint64_t a1)
{
  if (!*a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE190(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *a1;
}

uint64_t sub_1AF2338FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  result = objc_msgSend__clusterInfo(v4, v5, v6, v7);
  v12 = *(result + 88);
  v13 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    v14 = result;
    v43 = *(result + 88);
    result = objc_msgSend__reflectionProbeArrayTexture(v4, v9, v10, v11);
    if (result)
    {
      v18 = result;
      v19 = objc_msgSend_features(v4, v15, v16, v17);
      objc_msgSend_setCullMode_(*(a2 + 16), v20, 2, v21);
      if ((v19 & 0x1000) != 0)
      {
        objc_msgSend_setDepthClipMode_(*(a2 + 16), v22, 1, v23);
      }

      v24 = sub_1AF2338B0(*(a1 + 464) + 16);
      v28 = objc_msgSend_state(v24, v25, v26, v27);
      objc_msgSend_setRenderPipelineState_(*(a2 + 16), v29, v28, v30);
      sub_1AF1F8FCC(a2, v18, 0, v31);
      objc_msgSend__setWorldBufferAtVertexIndex_fragmentIndex_(v4, v32, 0, -1);
      MTLBuffer = CFXBufferSliceGetMTLBuffer(*(v14 + 96), *(v14 + 104));
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(a2 + 16), v34, MTLBuffer, *(v14 + 104) + 368 * v43, 1);
      v35 = sub_1AF2338B0(*(a1 + 464) + 24);
      objc_msgSend__setMeshBuffers_(v4, v36, v35, v37);
      v38 = sub_1AF2338B0(*(a1 + 464) + 32);
      result = objc_msgSend__drawMeshElement_instanceCount_(v4, v39, v38, v13);
      if ((v19 & 0x1000) != 0)
      {
        v42 = *(a2 + 16);

        return objc_msgSend_setDepthClipMode_(v42, v40, 0, v41);
      }
    }
  }

  return result;
}

uint64_t sub_1AF233A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v16 = a2;
  *(&v16 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A498, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE208();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A490, 0);
  *a1 = &unk_1F24E8DA8;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *&v17 = *(a1 + 432);
  LOBYTE(v21) = 0;
  v23 = 0;
  v19 = 0;
  v18 = 0uLL;
  v24 = xmmword_1AFE42EB0;
  v25 = *(a1 + 440);
  v26 = 2;
  v27 = 128;
  v28 = 1;
  v29 = 1;
  *(a1 + 448) = sub_1AF2330E0(v16, *(&v16 + 1), &v16, &v17, &v18);
  v10 = v16;
  v11 = *(a1 + 432);
  *&v18 = 0;
  WORD4(v18) = 16;
  BYTE10(v18) = *(a1 + 441);
  v19 = 56;
  v20 = 0;
  if ((atomic_load_explicit(&qword_1ED73A498, memory_order_acquire) & 1) == 0)
  {
    v15 = v10;
    sub_1AFDEE264();
    v10 = v15;
  }

  v21 = qword_1ED73A490;
  v22 = -1;
  v17 = v10;
  v12 = sub_1AF23498C(&v17, 0x48u, 8u);
  sub_1AF2603E8(v12, v11, &v18, *(a1 + 448));
  *(a1 + 456) = v13;
  CFX::RG::TextureDescriptorReference::withSampleCount((a5 + 24), 1, &v18);
  *(a1 + 464) = sub_1AF233CC8(a4, "COLOR_PICKED", &v18);
  CFX::RG::TextureDescriptorReference::withSampleCount((a5 + 184), 1, &v18);
  *(a1 + 472) = sub_1AF233CC8(a4, "DEPTH_PICKED", &v18);
  CFX::RG::Pass::renderTo(a1, *(a1 + 464), 0x100000002, 0);
  CFX::RG::Pass::renderTo(a1, *(a1 + 472), 0x200000002, -1);
  return a1;
}

CFX::RG::Resource *sub_1AF233CC8(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v10 = a2;
  v4 = *a1;
  v5 = a1[1];
  v9 = 1;
  sub_1AF235154(v4, v5, &v10, a3, &v9);
  v7 = v6;
  CFX::RG::RenderGraphBuilder::appendResource(a1, v6);
  return v7;
}

void sub_1AF233D28(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF12EE9C(a1[54], 0);
  v8 = sub_1AF103070(v4, v5, v6, v7);
  v9 = sub_1AF232994(v8, a1[54], a1[1]);
  v10 = a1[56];
  v10[3].i64[0] = v9;
  sub_1AF23B424(v10, v11, v12, v13);
  sub_1AF23B5E0(a1[56]);
  sub_1AF23B5F4(a1[56], v14, v15, v16, v17, v18, v19);
  v21 = a1[56];
  v22 = *a2;
  v23 = *(a2 + 8);

  sub_1AF23B678(v21, v22, v23, v20);
}

uint64_t sub_1AF233DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A4A8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDEE2AC();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4A0, 0);
  *a1 = &unk_1F24E8E00;
  v8 = *(a5 + 40);
  *(a1 + 448) = *(a5 + 24);
  *(a1 + 464) = v8;
  v9 = *(a5 + 56);
  v10 = *(a5 + 72);
  v11 = *(a5 + 104);
  *(a1 + 512) = *(a5 + 88);
  *(a1 + 528) = v11;
  *(a1 + 480) = v9;
  *(a1 + 496) = v10;
  v12 = *(a5 + 120);
  v13 = *(a5 + 136);
  v14 = *(a5 + 168);
  *(a1 + 576) = *(a5 + 152);
  *(a1 + 592) = v14;
  *(a1 + 544) = v12;
  *(a1 + 560) = v13;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  CFX::RG::TextureDescriptorReference::withSampleCount((a5 + 24), 1, v19);
  v15 = sub_1AF233CC8(a4, "COLOR_OUTLINE", v19);
  *(a1 + 648) = v15;
  CFX::RG::Pass::renderTo(a1, v15, 0x100000000, 0);
  return a1;
}

void sub_1AF233EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Authoring", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/AuthoringPass.mm", 395, v6 | 0x300000000);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 648)) + 12);
  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = *(a1 + 640) != 0;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) >> 47));
  v13 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v12);
  *(a1 + 608) = v13;
  if (!v13)
  {
    *(a1 + 608) = sub_1AF2340BC(*(a2 + 32), v12);
    v14 = sub_1AF12E2AC(*(a1 + 432));
    v18 = objc_msgSend_resourceManager(v14, v15, v16, v17);
    v19 = objc_alloc_init(MEMORY[0x1E6974060]);
    v36 = *(a1 + 640) != 0;
    objc_msgSend_setConstantValue_type_atIndex_(v19, v20, &v36, 53, 0);
    v21 = *(a1 + 608);
    v22 = sub_1AFDE868C(v18);
    v30 = objc_msgSend_frameworkLibrary(v22, v23, v24, v25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v31 = v8;
    BYTE8(v32) = 1;
    *&v33 = v19;
    v34 = @"vfx_outline_vert";
    v35 = @"vfx_outline_frag";
    v28 = objc_msgSend_newRenderPipelineStateWithDesc_(v18, v26, &v29, v27);
    sub_1AF23355C((v21 + 16), v28);
  }

  prof_endFlame();
}

uint64_t sub_1AF2340BC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF234144(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(a1[54], a2, a3, a4);
  prof_beginFlameSmallData("Authoring", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/AuthoringPass.mm", 431, v6 | 0x300000000);
  v7 = sub_1AF12E2AC(a1[54]);
  v11 = objc_msgSend_renderEncoder(v7, v8, v9, v10);
  v12 = sub_1AF2338B0(a1[76] + 16);
  v16 = objc_msgSend_state(v12, v13, v14, v15);
  v19 = objc_msgSend_setRenderPipelineState_(*(v11 + 16), v17, v16, v18);
  v20 = *(a2 + 24);
  v21 = a1[77];
  v22 = CFX::RG::Temporal::currentFrame(v19);
  Texture = CFX::GPUResourceManager::getTexture(v20, v21, v22);
  v25 = sub_1AF1F8FCC(v11, Texture, 0, v24);
  v26 = *(a2 + 24);
  v27 = a1[79];
  v28 = CFX::RG::Temporal::currentFrame(v25);
  v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
  v31 = sub_1AF1F8FCC(v11, v29, 1, v30);
  v32 = a1[80];
  if (v32)
  {
    v33 = *(a2 + 24);
    v34 = CFX::RG::Temporal::currentFrame(v31);
    v35 = CFX::GPUResourceManager::getTexture(v33, v32, v34);
    v31 = sub_1AF1F8FCC(v11, v35, 2, v36);
  }

  v37 = *(a2 + 24);
  v38 = a1[78];
  v39 = CFX::RG::Temporal::currentFrame(v31);
  v40 = CFX::GPUResourceManager::getTexture(v37, v38, v39);
  sub_1AF1F8FCC(v11, v40, 3, v41);
  sub_1AF2010C8(v11, v42);

  prof_endFlame();
}

uint64_t *sub_1AF2342BC(CFX::RG::RenderGraphContext *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v8 = sub_1AF12EE9C(*(a3 + 1), 0);
  v9 = sub_1AF232D3C(*(a3 + 1), v8);
  v10 = CFX::RG::Resource::constTextureDesc(*a4);
  v11 = v10[1];
  v116 = *v10;
  v117 = v11;
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  v120 = v10[4];
  v121 = v12;
  v118 = v14;
  v119 = v13;
  v15 = v10[9];
  v17 = v10[6];
  v16 = v10[7];
  v124 = v10[8];
  v125 = v15;
  v122 = v17;
  v123 = v16;
  v18 = CFX::RG::Resource::constTextureDesc(*(a4 + 16));
  v19 = v18[1];
  v106 = *v18;
  v107 = v19;
  v20 = v18[5];
  v22 = v18[2];
  v21 = v18[3];
  v110 = v18[4];
  v111 = v20;
  v108 = v22;
  v109 = v21;
  v23 = v18[9];
  v25 = v18[6];
  v24 = v18[7];
  v114 = v18[8];
  v115 = v23;
  v112 = v25;
  v113 = v24;
  v26 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a1, *a4) + 12);
  v27 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a1, *(a4 + 16)) + 12);
  v28 = sub_1AF12E2AC(*(a3 + 1));
  v32 = objc_msgSend_sampleCount(v28, v29, v30, v31);
  v33 = v32;
  v35 = v27 < 0x2000000 || v32 < 2;
  v99 = *a3;
  v100 = *(a3 + 8);
  v102 = 0;
  v101 = 0;
  v103 = *(a4 + 16);
  v104 = 0;
  v105 = 0;
  v36 = sub_1AF234718(a2, &v99);
  v37 = v36;
  if (*(a4 + 32))
  {
    v38 = 0x200000002;
  }

  else
  {
    v38 = 0x200000001;
  }

  CFX::RG::Pass::renderTo(v36, *(a4 + 16), v38, -1);
  v39 = *(a4 + 8);
  if (v39)
  {
    CFX::RG::Pass::dependsOn(v37, v39);
  }

  if (v9)
  {
    v72 = v27;
    v85 = v122;
    v86 = v123;
    v87 = v124;
    v88 = v125;
    v81 = v118;
    v82 = v119;
    v83 = v120;
    v84 = v121;
    v79 = v116;
    v80 = v117;
    v96 = v113;
    v97 = v114;
    v98 = v115;
    v94 = v111;
    v95 = v112;
    v91 = v108;
    v92 = v109;
    v93 = v110;
    v89 = v106;
    v40 = *(a3 + 1);
    *&v77 = "Picked object";
    *(&v77 + 1) = v40;
    v78 = 0;
    v90 = v107;
    v41 = sub_1AF23476C(a2, a2, &v77);
    v42 = *a4;
    v43 = *(a4 + 8);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v116, 1, v74);
    v45 = CFX::RG::copyIfNeeded(a2, v42, v43, v74, 0, v44);
    v46 = *(a4 + 16);
    v47 = *(a4 + 24);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v106, 1, v74);
    v49 = CFX::RG::copyIfNeeded(a2, v46, v47, v74, 0, v48);
    v50 = *(a3 + 1);
    v74[0] = "Outline";
    v74[1] = v50;
    v75 = 0;
    CFX::RG::TextureDescriptorReference::withSampleCount(&v116, 1, &v76);
    v51 = sub_1AF2347C4(a2, a2, v74);
    v52 = *(v41 + 58);
    *(v51 + 77) = v52;
    v53 = CFX::RG::Temporal::currentFrame(v51);
    CFX::RG::Pass::readFrom(v51, v52, v53);
    v54 = *(v41 + 59);
    *(v51 + 78) = v54;
    v56 = CFX::RG::Temporal::currentFrame(v55);
    CFX::RG::Pass::readFrom(v51, v54, v56);
    *(v51 + 79) = v45;
    v58 = CFX::RG::Temporal::currentFrame(v57);
    CFX::RG::Pass::readFrom(v51, v45, v58);
    if ((*(a4 + 32) & 1) == 0)
    {
      *(v51 + 80) = v49;
      v60 = CFX::RG::Temporal::currentFrame(v59);
      CFX::RG::Pass::readFrom(v51, v49, v60);
    }

    CFX::RG::Pass::dependsOn(v51, v41);
    v61 = *(a4 + 24);
    if (v61)
    {
      CFX::RG::Pass::dependsOn(v51, v61);
    }

    if (v72 < 0x2000000)
    {
      v62 = 1;
    }

    else
    {
      v62 = v33;
    }

    CFX::RG::TextureDescriptorReference::withSampleCount(&v116, v62, v73);
    v63 = sub_1AF233CC8(a2, "AUTHORING COLOR OUTPUT", v73);
    v64 = *(v51 + 81);
    v37[59] = v64;
    v65 = CFX::RG::Temporal::currentFrame(v63);
    CFX::RG::Pass::readFrom(v37, v64, v65);
    CFX::RG::Pass::renderTo(v37, v63, 0x100000000, 0);
    v37[60] = v63;
    CFX::RG::Pass::dependsOn(v37, v51);
  }

  else
  {
    v66 = v26 > 0x1FFFFFF || v35;
    if (v66)
    {
      CFX::RG::Pass::renderTo(v37, *a4, 0x100000001, 0);
      v37[60] = *a4;
    }

    else
    {
      v67 = CFX::RG::Resource::constTextureDesc(*a4);
      CFX::RG::TextureDescriptorReference::withSampleCount(v67, v33, &v77);
      v68 = sub_1AF233CC8(a2, "AUTHORING COLOR OUTPUT", &v77);
      v69 = *a4;
      v37[59] = v69;
      v70 = CFX::RG::Temporal::currentFrame(v68);
      CFX::RG::Pass::readFrom(v37, v69, v70);
      CFX::RG::Pass::renderTo(v37, v68, 0x100000000, 0);
      v37[60] = v68;
    }
  }

  return v37;
}

uint64_t sub_1AF234718(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[0] = sub_1AF235290(v6[0], v4, v6, a2);
  sub_1AF235000(a1 + 22, v6);
  return v6[0];
}

uint64_t sub_1AF23476C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2352E0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2347C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF235340(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF234820(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF234868(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2348A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t *sub_1AF2348E0(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  v5 = (a1 + 32);
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (*(a1 + 20) + a2));
  v8 = sub_1AF23498C(a1, 8 * v7, 8u);
  result = memcpy(v8, v4, 8 * *(a1 + 16));
  *(a1 + 24) = v8;
  *(a1 + 20) = v7;
  if (v4 != v5)
  {
    v10 = v4;
    result = *(a1 + 8);
    if (result)
    {
      return sub_1AF234C8C(result, &v10);
    }
  }

  return result;
}

uint64_t sub_1AF23498C(void *a1, unsigned int a2, unsigned int a3)
{
  result = CScratchAllocatorAllocateAligned(*a1, a2, a3);
  v8[0] = result;
  if (a1[1])
  {
    LODWORD(v7[128]) = backtrace(v7, 128);
    v5 = a1[1];
    v8[2] = v8;
    v6 = sub_1AF234A18(v5, v8);
    memcpy(v6 + 3, v7, 0x408uLL);
    return v8[0];
  }

  return result;
}

void *sub_1AF234A18(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
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

uint64_t *sub_1AF234C8C(void *a1, void *a2)
{
  result = sub_1AF144D08(a1, a2);
  if (result)
  {
    sub_1AF145C50(a1, result);
    return 1;
  }

  return result;
}

void sub_1AF234CC4(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  v5 = 8 * v3;
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, v5, 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, v5, 8, 2);
  memset(*(a1 + 8), 255, v5);
  v6 = *(a1 + 24);

  bzero(v6, v4);
}

uint64_t sub_1AF234D70(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF234F8C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void sub_1AF234F8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF234CC4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF234D70(a1, *v3, v2);
      }

      ++v3;
      v2 += 8;
      --v6;
    }

    while (v6);
  }
}

uint64_t *sub_1AF235000(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *(result + 4);
  v5 = v4 + 1;
  if (v4 + 1 > *(result + 5))
  {
    result = sub_1AF2348E0(result, 1, 0);
    v4 = *(v3 + 4);
    v5 = v4 + 1;
  }

  *(v3[3] + 8 * v4) = *a2;
  *(v3 + 4) = v5;
  return result;
}

uint64_t sub_1AF23505C(uint64_t a1)
{
  *a1 = &unk_1F24E8E58;

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AF2350C8(uint64_t a1)
{
  *a1 = &unk_1F24E8E58;

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF235154(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4, char *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_1AF23498C(v17, 0xE0u, 8u);
  v9 = *a3;
  v10 = a4[7];
  v16[6] = a4[6];
  v16[7] = v10;
  v11 = a4[9];
  v16[8] = a4[8];
  v16[9] = v11;
  v12 = a4[3];
  v16[2] = a4[2];
  v16[3] = v12;
  v13 = a4[5];
  v16[4] = a4[4];
  v16[5] = v13;
  v14 = a4[1];
  v16[0] = *a4;
  v16[1] = v14;
  *&result = CFX::RG::Resource::Resource(v8, v9, v16, *a5, 1).n128_u64[0];
  return result;
}

uint64_t sub_1AF2351E0(uint64_t a1)
{
  *a1 = &unk_1F24E8E78;

  return a1;
}

void sub_1AF235228(uint64_t a1)
{
  *a1 = &unk_1F24E8E78;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF235290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x210u, 8u);
  return sub_1AF232ED4(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF2352E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u);
  return sub_1AF233A70(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF235340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x290u, 8u);
  return sub_1AF233DB4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2353A0(uint64_t a1)
{
  *a1 = &unk_1F24E8E98;

  sub_1AF235C34((a1 + 24), 0);
  return a1;
}

void sub_1AF235410(uint64_t a1)
{
  sub_1AF2353A0(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF235448(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  v15[0] = "BackBufferPass";
  v15[1] = v8;
  if ((atomic_load_explicit(&qword_1ED73A4B8, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = a3;
    sub_1AFDEE308();
    a2 = v13;
    a3 = v14;
  }

  if (byte_1ED73A4B0)
  {
    v9 = 0x2940D000AB344474;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v15, v9, 0);
  *a1 = &unk_1F24E8EB8;
  v10 = a5[2];
  *(a1 + 440) = *a5;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = v10;
  sub_1AF235544(v11, a4);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 472) + 24));
  return a1;
}

uint64_t sub_1AF235544(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 448));
  v5 = *(v4 + 4);
  v6 = *(v4 + 12);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ (v5 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ (v5 >> 16))));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))))) >> 47)));
  *(a1 + 472) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF235814(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF235854(a1, a2);

  return sub_1AF235544(a1, a2);
}

uint64_t sub_1AF235854(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 448)) + 12);
  v9 = CFX::RG::Pass::hash(a1);
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v9)))) >> 47)));
  *(a1 + 464) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

CFX::RG::Temporal *sub_1AF2359C4(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[58] + 16))
  {
    v6 = result;
    v7 = *(a2 + 24);
    v8 = a1[60];
    v9 = CFX::RG::Temporal::currentFrame(result);
    Texture = CFX::GPUResourceManager::getTexture(v7, v8, v9);
    v11 = *(a1[59] + 16);
    objc_msgSend_setTexture_atIndex_(v6, v12, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v6, v13, v11, 1);
    v14 = sub_1AF1403B4(a1[58] + 16);
    v16 = sub_1AFDE323C(v14);

    return objc_msgSend_dispatch_onTexture2D_(v6, v15, v16, v11);
  }

  return result;
}

uint64_t *sub_1AF235A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v10 = a2;
  v9 = a4;
  v8[0] = 2;
  *v8 = sub_1AF235D20(&v10, a3, v8, &v9);
  result = sub_1AF235000((a1 + 144), v8);
  *a5 = *v8;
  return result;
}

double sub_1AF235B04(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 60) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

uint64_t sub_1AF235B58(CFX::RG::RenderGraphContext *a1, uint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);

  return sub_1AF235B98(v4, a1, a2);
}

uint64_t sub_1AF235B98(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF235DE0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF235BF4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF235C34(CFX::RG::Resource **a1, CFX::RG::Resource *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFX::RG::Resource::~Resource(v3);

    free(v4);
  }
}

uint64_t sub_1AF235C70(uint64_t a1)
{
  *a1 = &unk_1F24E8F10;

  return a1;
}

void sub_1AF235CB8(uint64_t a1)
{
  *a1 = &unk_1F24E8F10;

  JUMPOUT(0x1B271C6B0);
}

_OWORD *sub_1AF235D20(uint64_t *a1, __int128 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v8 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  v8[4] = v9;
  v8[5] = v9;
  v8[6] = v9;
  v8[7] = v9;
  v8[8] = v9;
  v8[9] = v9;
  v8[10] = v9;
  v8[11] = v9;
  v8[12] = v9;
  v8[13] = v9;
  v10 = *a1;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v12, a2);
  CFX::RG::Resource::Resource(v8, v10, v12, *a3, *a4);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v12);
  return v8;
}

uint64_t sub_1AF235DE0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E8u, 8u);
  return sub_1AF235448(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF235E50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return (*(*result + 56))(result, a2, a4 + 8);
    }

    else if (a3 == 3)
    {
      return (*(*result + 64))();
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return (*(*result + 48))(result, a2, a4 + 8);
    }
  }

  else
  {
    return (*(*result + 40))(result, a2, a4 + 8);
  }

  return result;
}

CFX::RG::Pass *sub_1AF235F14(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A4C8, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v26 = a3;
    sub_1AFDEE354();
    a2 = v25;
    a3 = v26;
  }

  if (byte_1ED73A4C0)
  {
    v8 = 0x3E7754EAF0AF1D07;
  }

  else
  {
    v8 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, *a5, 2, v8, 0);
  *this = &unk_1F24E8F30;
  *(this + 424) = *a5;
  *this = &unk_1F24E8F88;
  v9 = *(a5 + 16);
  v10 = *(a5 + 48);
  *(this + 456) = *(a5 + 32);
  *(this + 472) = v10;
  *(this + 440) = v9;
  v11 = *(a5 + 64);
  v12 = *(a5 + 80);
  v13 = *(a5 + 112);
  *(this + 520) = *(a5 + 96);
  *(this + 536) = v13;
  *(this + 488) = v11;
  *(this + 504) = v12;
  v14 = *(a5 + 128);
  v15 = *(a5 + 144);
  v16 = *(a5 + 176);
  *(this + 584) = *(a5 + 160);
  *(this + 600) = v16;
  *(this + 552) = v14;
  *(this + 568) = v15;
  *(this + 616) = 0u;
  if (*(this + 440) == 1)
  {
    v17 = *(this + 152);
    if ((*(this + 465) & 1) == 0)
    {
      *(this + 465) = 1;
    }

    *(this + 464) = v17;
    v18 = *(this + 35);
    v27[6] = *(this + 34);
    v27[7] = v18;
    v19 = *(this + 37);
    v27[8] = *(this + 36);
    v27[9] = v19;
    v20 = *(this + 31);
    v27[2] = *(this + 30);
    v27[3] = v20;
    v21 = *(this + 33);
    v27[4] = *(this + 32);
    v27[5] = v21;
    v22 = *(this + 29);
    v27[0] = *(this + 28);
    v27[1] = v22;
    v23 = sub_1AF233CC8(a4, "MIPMAP_OUTPUT", v27);
    *(this + 78) = v23;
    CFX::RG::Pass::writeTo(this, v23);
  }

  return this;
}

uint64_t sub_1AF2360B0(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::BlitPassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 624);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v12 = Texture;
  if (*(a1 + 440) == 1)
  {
    v13 = *(a2 + 24);
    v14 = *(a1 + 616);
    v15 = CFX::RG::Temporal::currentFrame(Texture);
    v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
    v20 = objc_msgSend_arrayLength(v16, v17, v18, v19);
    if ((objc_msgSend_textureType(v16, v21, v22, v23) - 5) >= 2)
    {
      v27 = v20;
    }

    else
    {
      v27 = 6 * v20;
    }

    v28 = objc_msgSend_width(v16, v24, v25, v26);
    v32 = objc_msgSend_height(v16, v29, v30, v31);
    v36 = objc_msgSend_depth(v16, v33, v34, v35);
    if (v27)
    {
      v37 = v36;
      for (i = 0; i != v27; ++i)
      {
        memset(v42, 0, sizeof(v42));
        v41[0] = v28;
        v41[1] = v32;
        v41[2] = v37;
        memset(v40, 0, sizeof(v40));
        objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v5, v10, v16, i, 0, v42, v41, v12, i, 0, v40);
      }
    }
  }

  return objc_msgSend_generateMipmapsForTexture_(v5, v10, v12, v11);
}

void sub_1AF236200(uint64_t a1, CFX::RG::Resource *a2)
{
  *(a1 + 616) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);
  CFX::RG::Pass::readFrom(a1, a2, v4);
  if ((*(a1 + 440) & 1) == 0)
  {
    *(a1 + 624) = a2;

    CFX::RG::Pass::writeTo(a1, a2);
  }
}

void sub_1AF236270(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2362AC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF2362E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A4D8, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v17 = a3;
    sub_1AFDEE3A0();
    a2 = v16;
    a3 = v17;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4D0, 0);
  *a1 = &unk_1F24E8FE0;
  v7 = *(a5 + 24);
  v8 = *(a5 + 56);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 480) = v8;
  *(a1 + 448) = v7;
  v9 = *(a5 + 72);
  v10 = *(a5 + 88);
  v11 = *(a5 + 120);
  *(a1 + 528) = *(a5 + 104);
  *(a1 + 544) = v11;
  *(a1 + 496) = v9;
  *(a1 + 512) = v10;
  v12 = *(a5 + 136);
  v13 = *(a5 + 152);
  v14 = *(a5 + 184);
  *(a1 + 592) = *(a5 + 168);
  *(a1 + 608) = v14;
  *(a1 + 560) = v12;
  *(a1 + 576) = v13;
  result = 0.0;
  *(a1 + 632) = 0u;
  return result;
}

void sub_1AF2363B4(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(a2[4], v4);
  *(a1 + 624) = v5;
  if (!v5)
  {
    *(a1 + 624) = sub_1AF2364E0(a2[4], v4);
    v6 = sub_1AF12E2AC(*(a1 + 432));
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v11 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v11, v12, a1 + 616, 53, 20301);
    v13 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 640)) + 12);
    v14 = *(a1 + 624);
    v15 = sub_1AFDE868C(v10);
    v23 = objc_msgSend_frameworkLibrary(v15, v16, v17, v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v24 = v13;
    BYTE8(v25) = BYTE3(v13);
    *&v26 = v11;
    v27 = @"vertex_draw_quad";
    v28 = @"bloom_threshold";
    v21 = objc_msgSend_newRenderPipelineStateWithDesc_(v10, v19, &v22, v20);
    sub_1AF23355C((v14 + 16), v21);
  }
}

uint64_t sub_1AF2364E0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF236568(uint64_t *a1, uint64_t a2)
{
  prof_beginFlame("Bloom threshold", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/BloomPass.mm", 64);
  v4 = sub_1AF12E2AC(a1[54]);
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = sub_1AF2338B0(a1[78] + 16);
  v13 = objc_msgSend_state(v9, v10, v11, v12);
  v16 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13, v15);
  v17 = *(a2 + 24);
  v18 = a1[79];
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  sub_1AF1F8FCC(v8, Texture, 0, v21);
  v22 = a1[76];
  v27 = 0.1;
  if (v22)
  {
    v26 = sub_1AF160C84(v22);
    v23 = a1[76];
    if (v23)
    {
      v27 = sub_1AF160D20(v23);
    }

    *&v24 = v26;
  }

  else
  {
    LODWORD(v24) = 1.0;
  }

  *(&v24 + 1) = v27;
  v28 = v24;
  sub_1AF1F905C(v8, &v28, 8uLL, 0);
  sub_1AF2010C8(v8, v25);
  prof_endFlame();
}

uint64_t sub_1AF236694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A4E8, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDEE3FC();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4E0, 0);
  *a1 = &unk_1F24E9038;
  v7 = *(a5 + 24);
  v8 = *(a5 + 56);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 480) = v8;
  *(a1 + 448) = v7;
  v9 = *(a5 + 72);
  v10 = *(a5 + 88);
  v11 = *(a5 + 120);
  *(a1 + 528) = *(a5 + 104);
  *(a1 + 544) = v11;
  *(a1 + 496) = v9;
  *(a1 + 512) = v10;
  v12 = *(a5 + 136);
  v13 = *(a5 + 152);
  v14 = *(a5 + 184);
  *(a1 + 592) = *(a5 + 168);
  *(a1 + 608) = v14;
  *(a1 + 560) = v12;
  *(a1 + 576) = v13;
  *(a1 + 632) = 0u;
  v15 = *(a1 + 616);
  *(CFX::RG::Pass::commonRenderParameters(v16) + 274) = v15;
  return a1;
}

void sub_1AF236788(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 640)) + 12);
  v6 = *(a1 + 608);
  if (v6)
  {
    v7 = sub_1AF1611EC(v6);
  }

  else
  {
    v7 = 1;
  }

  v37 = v7;
  v8 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v7)));
  v9 = v5;
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v5)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = v5 << 32;
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 56))))) >> 47));
  v14 = CFX::CrossFrameResourceManager::get(a2[4], v13);
  *(a1 + 624) = v14;
  if (!v14)
  {
    *(a1 + 624) = sub_1AF236938(a2[4], v13);
    v15 = sub_1AF12E2AC(*(a1 + 432));
    v19 = objc_msgSend_resourceManager(v15, v16, v17, v18);
    v20 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v20, v21, &v37, 53, 20300);
    v22 = *(a1 + 624);
    v23 = sub_1AFDE868C(v19);
    v31 = objc_msgSend_frameworkLibrary(v23, v24, v25, v26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v32 = v9;
    BYTE8(v33) = HIBYTE(v12);
    *&v34 = v20;
    v35 = @"vertex_draw_quad";
    v36 = @"bloom_down_sample";
    v29 = objc_msgSend_newRenderPipelineStateWithDesc_(v19, v27, &v30, v28);
    sub_1AF23355C((v22 + 16), v29);
  }
}

uint64_t sub_1AF236938(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF2369C0(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("Bloom downsample", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/BloomPass.mm", 139);
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = sub_1AF2338B0(*(a1 + 624) + 16);
  v13 = objc_msgSend_state(v9, v10, v11, v12);
  v16 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13, v15);
  v17 = *(a2 + 24);
  v18 = *(a1 + 632);
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  sub_1AF1F8FCC(v8, Texture, 0, v21);
  v23 = *(a1 + 616) + -1.0;
  sub_1AF1F905C(v8, &v23, 4uLL, 0);
  sub_1AF2010C8(v8, v22);
  prof_endFlame();
}

uint64_t sub_1AF236AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if ((atomic_load_explicit(&qword_1ED73A4F8, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDEE458();
    a2 = v9;
    a3 = v10;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4F0, 0);
  *a1 = &unk_1F24E9090;
  memcpy((a1 + 448), a5 + 3, 0x150uLL);
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  *(a1 + 800) = 0;
  v7 = *(a1 + 776);
  *(CFX::RG::Pass::commonRenderParameters(a1) + 274) = v7;
  return a1;
}

void sub_1AF236B78(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 808)) + 12);
  v6 = *(a1 + 768);
  if (!v6)
  {
    v13.i64[0] = 0;
    v13.i32[2] = 0;
    goto LABEL_7;
  }

  v7 = sub_1AF162408(v6);
  __asm { FMOV            V1.4S, #1.0 }

  v13 = vmvnq_s8(vceqq_f32(v7, _Q1));
  v14 = *(a1 + 768);
  if (!v14)
  {
LABEL_7:
    v17 = 0;
    v15 = 0;
    v19 = 1;
    goto LABEL_11;
  }

  v44 = v13;
  v15 = sub_1AF1624AC(v14) != 1.0;
  v16 = *(a1 + 768);
  if (!v16)
  {
    v17 = 0;
    goto LABEL_9;
  }

  v17 = sub_1AF162548(v16) != 1.0;
  v18 = *(a1 + 768);
  if (!v18)
  {
LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  v19 = sub_1AF1611EC(v18);
LABEL_10:
  v13 = v44;
LABEL_11:
  v64 = v19;
  v13.i32[3] = v13.i32[2];
  v63 = (vmaxvq_u32(v13) & 0x80000000) != 0 || v15 || v17;
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v19)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v19)))) >> 47));
  v21 = 0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v63)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v63)));
  v22 = v5;
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ v5)));
  v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
  v25 = v5 << 32;
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 56))))) >> 47));
  v27 = CFX::CrossFrameResourceManager::get(a2[4], v26);
  *(a1 + 784) = v27;
  if (!v27)
  {
    *(a1 + 784) = sub_1AF236DF4(a2[4], v26);
    v28 = sub_1AF12E2AC(*(a1 + 432));
    v32 = objc_msgSend_resourceManager(v28, v29, v30, v31);
    v33 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v33, v34, &v64, 53, 20300);
    objc_msgSend_setConstantValue_type_atIndex_(v33, v35, &v63, 53, 20302);
    v36 = *(a1 + 784);
    v61 = 0u;
    v62 = 0u;
    v58 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    memset(v45, 0, sizeof(v45));
    v37 = sub_1AFDE868C(v32);
    v46 = objc_msgSend_frameworkLibrary(v37, v38, v39, v40);
    v47 = v22;
    BYTE8(v52) = HIBYTE(v25);
    *&v58 = v33;
    v59 = @"vertex_draw_quad";
    v60 = @"bloom_up_sample_color_grading";
    v43 = objc_msgSend_newRenderPipelineStateWithDesc_(v32, v41, v45, v42);
    sub_1AF23355C((v36 + 16), v43);
  }
}

uint64_t sub_1AF236DF4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF236E7C(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("Bloom upsample", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/BloomPass.mm", 218);
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = sub_1AF2338B0(*(a1 + 784) + 16);
  v13 = objc_msgSend_state(v9, v10, v11, v12);
  v16 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13, v15);
  v17 = *(a2 + 24);
  v18 = *(a1 + 792);
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  v21 = *(a2 + 24);
  v22 = *(a1 + 800);
  v23 = CFX::RG::Temporal::currentFrame(Texture);
  v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
  sub_1AF1F8FCC(v8, v24, 0, v25);
  sub_1AF1F8FCC(v8, Texture, 1, v26);
  v27 = *(a1 + 776);
  *&v28 = (v27 + 1);
  *(&v28 + 1) = v27;
  v45 = v28;
  sub_1AF1F905C(v8, &v45, 8uLL, 0);
  v29 = *(a1 + 768);
  v30 = 1.0;
  if (v29)
  {
    v40 = sub_1AF162408(v29);
    v31 = *(a1 + 768);
    if (v31)
    {
      v32 = sub_1AF1624AC(v31);
      v33 = *(a1 + 768);
      if (v33)
      {
        v30 = sub_1AF162548(v33);
      }
    }

    else
    {
      v32 = 1.0;
    }

    _Q1 = v40;
  }

  else
  {
    __asm { FMOV            V1.4S, #1.0 }

    v32 = 1.0;
  }

  v41[1] = _Q1;
  v44 = 0;
  v41[0] = 0u;
  LODWORD(v41[0]) = 1065353216;
  v42 = v32;
  v43 = v30;
  sub_1AF1F905C(v8, v41, 0x30uLL, 1);
  sub_1AF2010C8(v8, v39);
  prof_endFlame();
}

CFX::RG::Pass *sub_1AF237040(uint64_t *a1, uint64_t a2, uint64_t *a3, CFX::RG::Resource *a4)
{
  v7 = a3[1];
  if (!v7)
  {
    v7 = sub_1AF12F10C(*a3);
    if (!v7)
    {
      return 0;
    }
  }

  v8 = sub_1AF1BB260(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFX::RG::Resource::constTextureDesc(a3[2]);
  v11 = v10[1];
  v67[0] = *v10;
  v67[1] = v11;
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  v67[4] = v10[4];
  v67[5] = v12;
  v67[2] = v14;
  v67[3] = v13;
  v15 = v10[9];
  v17 = v10[6];
  v16 = v10[7];
  v67[8] = v10[8];
  v67[9] = v15;
  v67[6] = v17;
  v67[7] = v16;
  CFX::RG::TextureDescriptorReference::withSampleCount(v67, 1, v66);
  v18 = *(a3 + 6);
  v19 = *(a3 + 28);
  v20 = *(a3 + 11);
  v54 = a3;
  v21 = *(a3 + 10) << 32;
  LODWORD(v22) = (((v19 >> 16) + (((v19 >> 16) & 0x8000) >> 15)) << 16) >> 17;
  if (v22 <= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v22;
  }

  v23 = v19 & 0xFFFFFFFF00000000;
  LODWORD(v19) = (v19 + ((v19 & 0x8000) >> 15)) << 16 >> 17;
  if (v19 <= 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v19;
  }

  v24 = v23 | (v22 << 16) | v19;
  if (v22 > v19)
  {
    LODWORD(v19) = v22;
  }

  v25 = (floorf(log2f(v19)) + 1.0);
  *v55 = v18;
  *&v55[4] = v24;
  v26 = v21 | (v25 << 16) | 0x100005C;
  *&v55[12] = v26;
  v56 = v20;
  v27 = sub_1AF2373FC(a1, "BLOOM OUTPUT", v55);
  *v55 = v18;
  *&v55[4] = v24;
  *&v55[12] = v26;
  v56 = v20;
  v28 = sub_1AF2373FC(a1, "BLOOM TMP", v55);
  v29 = sub_1AF15C7A4(v9);
  v30 = v29;
  if (v29)
  {
    v31 = sub_1AF1625E4(v29);
  }

  else
  {
    v31 = 10;
  }

  v33 = *v54;
  v62[0] = "Bloom threshold";
  v62[1] = v33;
  v63 = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v64);
  v64[20] = v30;
  v65 = 0;
  v34 = sub_1AF23745C(a1, a1, v62);
  v36 = CFX::RG::copyIfNeeded(a1, v54[2], a4, v66, 0, v35);
  *(v34 + 79) = v36;
  v37 = CFX::RG::Temporal::currentFrame(v36);
  CFX::RG::Pass::readFrom(v34, v36, v37);
  *(v34 + 80) = v28;
  CFX::RG::Pass::renderTo(v34, v28, 0x100000000, 0);
  v38 = v25 - 3;
  if (v25 - 3 >= v31)
  {
    v38 = v31;
  }

  if (v38 <= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = v38;
  }

  for (i = 1; i != v39; ++i)
  {
    v41 = v34;
    v42 = *v54;
    *v55 = "Bloom downsample";
    *&v55[8] = v42;
    *&v55[16] = 0;
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v57);
    v58 = v30;
    v59 = i;
    v34 = sub_1AF2374B4(a1, a1, v55);
    *(v34 + 79) = v28;
    v43 = CFX::RG::Temporal::currentFrame(v34);
    CFX::RG::Pass::readFrom(v34, v28, v43);
    *(v34 + 80) = v28;
    CFX::RG::Pass::renderTo(v34, v28, 0x100000000, 0);
    CFX::RG::Pass::dependsOn(v34, v41);
  }

  v44 = v30;
  v45 = 0;
  v46 = v39 - 1;
  v32 = v34;
  do
  {
    v47 = v32;
    v48 = *v54;
    --v46;
    *v55 = "Bloom upsample";
    *&v55[8] = v48;
    *&v55[16] = 0;
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v57);
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v58);
    v60 = v44;
    v61 = v46;
    v32 = sub_1AF23750C(a1, a1, v55);
    *(v32 + 99) = v28;
    v49 = CFX::RG::Temporal::currentFrame(v32);
    CFX::RG::Pass::readFrom(v32, v28, v49);
    if (v45)
    {
      v51 = v27;
    }

    else
    {
      v51 = v28;
    }

    *(v32 + 100) = v51;
    v52 = CFX::RG::Temporal::currentFrame(v50);
    CFX::RG::Pass::readFrom(v32, v51, v52);
    *(v32 + 101) = v27;
    CFX::RG::Pass::renderTo(v32, v27, 0x100000000, 0);
    CFX::RG::Pass::dependsOn(v32, v47);
    if (v47 != v34)
    {
      CFX::RG::Pass::dependsOn(v32, v34);
    }

    ++v45;
  }

  while (v46 > 0);
  return v32;
}

CFX::RG::Resource *sub_1AF2373FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v4 = *a1;
  v5 = a1[1];
  v9 = 1;
  sub_1AF2378FC(v4, v5, &v10, a3, &v9);
  v7 = v6;
  CFX::RG::RenderGraphBuilder::appendResource(a1, v6);
  return v7;
}

uint64_t sub_1AF23745C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF237978(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

uint64_t sub_1AF2374B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2379C8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF23750C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF237A18(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF237568(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2375A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2375E0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unsigned __int8 *sub_1AF237618(unsigned __int8 *result, unsigned int a2)
{
  if (result)
  {
    v2 = 0;
    v3 = 0xC6A4A7935BD1E995 * a2;
    do
    {
      v4 = *&result[v2];
      v2 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3);
    }

    while (v2 != 16);
    v5 = a2 & 7;
    if (v5 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
        }

        goto LABEL_20;
      }

      if (v5 == 2)
      {
LABEL_19:
        v3 ^= result[17] << 8;
LABEL_20:
        v3 = 0xC6A4A7935BD1E995 * (v3 ^ result[16]);
        return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
      }

LABEL_18:
      v3 ^= result[18] << 16;
      goto LABEL_19;
    }

    if ((a2 & 7) > 5)
    {
      if (v5 != 6)
      {
        v3 ^= result[22] << 48;
      }

      v3 ^= result[21] << 40;
    }

    else if (v5 == 4)
    {
      goto LABEL_17;
    }

    v3 ^= result[20] << 32;
LABEL_17:
    v3 ^= result[19] << 24;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1AF2376EC(uint64_t a1)
{
  *a1 = &unk_1F24E90E8;

  return a1;
}

void sub_1AF237734(uint64_t a1)
{
  *a1 = &unk_1F24E90E8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23779C(uint64_t a1)
{
  *a1 = &unk_1F24E9108;

  return a1;
}

void sub_1AF2377E4(uint64_t a1)
{
  *a1 = &unk_1F24E9108;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23784C(uint64_t a1)
{
  *a1 = &unk_1F24E9128;

  return a1;
}

void sub_1AF237894(uint64_t a1)
{
  *a1 = &unk_1F24E9128;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF2378FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = sub_1AF23498C(v12, 0xE0u, 8u);
  v9 = *a3;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v11, a4);
  *&result = CFX::RG::Resource::Resource(v8, v9, v11, *a5, 1).n128_u64[0];
  return result;
}

double sub_1AF237978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x288u, 8u);
  return sub_1AF2362E4(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF2379C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x288u, 8u);
  return sub_1AF236694(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF237A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x330u, 8u);
  return sub_1AF236AB4(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF237A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A510, memory_order_acquire) & 1) == 0)
  {
    v11 = a2;
    v12 = a3;
    sub_1AFDEE4B4();
    a2 = v11;
    a3 = v12;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A508, 0);
  *a1 = &unk_1F24E9148;
  v8 = *(a5 + 32);
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = v8;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  v13 = *(a5 + 24);
  v14 = *(a5 + 40);
  v9 = sub_1AF2373FC(a4, "CHROMATIC_TRANSFORM_COMPOSITE_BLOOM_OUTPUT", &v13);
  *(a1 + 496) = v9;
  CFX::RG::Pass::writeTo(a1, v9);
  return a1;
}

void sub_1AF237B54(uint64_t *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  a1[59] = v5;
  if (!v5)
  {
    a1[59] = sub_1AF237BF0(*(a2 + 32), v4);
    v6 = sub_1AF12E2AC(a1[54]);
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v11 = a1[59];
    v14 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"chromatic_transform_composite_bloom", v13);

    sub_1AF23355C((v11 + 16), v14);
  }
}

uint64_t sub_1AF237BF0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF237C78(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = a1[60];
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = a1[61];
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 24);
  v15 = a1[62];
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v18 = sub_1AF1BB260(a1[55]);
  v19 = sub_1AF15C7A4(v18);
  if (v19)
  {
    v21 = sub_1AF160FEC(v19);
  }

  else
  {
    v21 = 0.0;
  }

  v29 = v21;
  objc_msgSend_setBytes_length_atIndex_(v5, v20, &v29, 4, 0);
  objc_msgSend_setTexture_atIndex_(v5, v22, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v23, v13, 1);
  objc_msgSend_setTexture_atIndex_(v5, v24, v17, 2);
  v25 = sub_1AF1403B4(a1[59] + 16);
  v26 = sub_1AFDE323C(v25);
  return objc_msgSend_dispatch_onTexture2D_(v5, v27, v26, v17);
}

uint64_t sub_1AF237DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A518, memory_order_acquire) & 1) == 0)
  {
    v12 = a2;
    v13 = a3;
    sub_1AFDEE510();
    a2 = v12;
    a3 = v13;
  }

  if (byte_1ED73A500)
  {
    v8 = 0x41EC325388DE9425;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E91A0;
  v9 = *(a5 + 32);
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = v9;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v14 = *(a5 + 24);
  v15 = *(a5 + 40);
  v10 = sub_1AF2373FC(a4, "CHROMATIC_TRANSFORM_OUTPUT", &v14);
  *(a1 + 488) = v10;
  CFX::RG::Pass::writeTo(a1, v10);
  return a1;
}

void sub_1AF237EA4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF1BB260(a1[55]);
  v5 = sub_1AF15CC7C(v4);
  v6 = v5;
  if (v5)
  {
    v25 = sub_1AF1633E8(v5);
    LODWORD(v6) = sub_1AF163864(v6);
    v7 = v25;
  }

  else
  {
    v7 = 1;
    v25 = 1;
  }

  v24 = v6;
  v8 = CFX::RG::Pass::hash(a1);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v6)))) >> 47));
  v12 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v11);
  a1[59] = v12;
  if (!v12)
  {
    a1[59] = sub_1AF238008(*(a2 + 32), v11);
    v13 = sub_1AF12E2AC(a1[54]);
    v17 = objc_msgSend_resourceManager(v13, v14, v15, v16);
    v18 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v18, v19, &v25, 29, @"sample_count");
    objc_msgSend_setConstantValue_type_withName_(v18, v20, &v24, 53, @"mask_enabled");
    v21 = a1[59];
    v23 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v17, v22, @"chromatic_transform", v18);
    sub_1AF23355C((v21 + 16), v23);
  }
}

uint64_t sub_1AF238008(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF238090(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = sub_1AF1BB260(a1[55]);
  v7 = sub_1AF15CC7C(v6);
  if (!v7)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE55C(v8);
    }
  }

  v30 = sub_1AF160D20(v7);
  v31 = vmul_n_f32(vmul_f32(COERCE_FLOAT32X2_T(sub_1AF1634FC(v7)), COERCE_FLOAT32X2_T(-2.00000048)), v30);
  v9 = 1.0 - v30;
  v10 = v9 + (v30 * sub_1AF16158C(v7));
  v32 = v10;
  v11 = (sub_1AF161628(v7) / 180.0) * 3.14159265 * v30;
  v33 = v11;
  v34 = vmul_n_f32(COERCE_FLOAT32X2_T(sub_1AF163598(v7)), v30);
  v12 = v9 + (v30 * sub_1AF1624AC(v7));
  v35 = v12;
  v13 = (sub_1AF162548(v7) / 180.0) * 3.14159265 * v30;
  v36 = v13;
  v37 = vmul_n_f32(COERCE_FLOAT32X2_T(sub_1AF163634(v7)), v30);
  v38 = sub_1AF1628E8(v7);
  v39 = sub_1AF1636D0(v7);
  v40 = sub_1AF162A28(v7);
  v41 = sub_1AF163774(v7);
  v42 = sub_1AF161A84(v7);
  v43 = sub_1AF161BCC(v7);
  v14 = *(a2 + 24);
  v15 = a1[60];
  v17 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v14, v15, v17);
  v19 = *(a2 + 24);
  v20 = a1[61];
  v21 = CFX::RG::Temporal::currentFrame(Texture);
  v22 = CFX::GPUResourceManager::getTexture(v19, v20, v21);
  objc_msgSend_setBytes_length_atIndex_(v5, v23, &v30, 112, 0);
  objc_msgSend_setTexture_atIndex_(v5, v24, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v25, v22, 1);
  v26 = sub_1AF1403B4(a1[59] + 16);
  v27 = sub_1AFDE323C(v26);
  return objc_msgSend_dispatch_onTexture2D_(v5, v28, v27, v22);
}

uint64_t *sub_1AF2382EC(CFX::RG *a1, CFX::RG::RenderGraphContext *a2, CFX::RG::RenderGraphBuilder **a3, CFX::RG::Resource *a4)
{
  v8 = *(a3 + 8);
  v37[6] = *(a3 + 7);
  v37[7] = v8;
  v9 = *(a3 + 10);
  v37[8] = *(a3 + 9);
  v37[9] = v9;
  v10 = *(a3 + 4);
  v37[2] = *(a3 + 3);
  v37[3] = v10;
  v11 = *(a3 + 6);
  v37[4] = *(a3 + 5);
  v37[5] = v11;
  v12 = *(a3 + 2);
  v37[0] = *(a3 + 1);
  v37[1] = v12;
  CFX::RG::TextureDescriptorReference::withSampleCount(v37, 1, v36);
  v14 = CFX::RG::copyIfNeeded(a1, a3[23], a4, v36, 0, v13);
  v15 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v14);
  v34 = *v15;
  v35 = *(v15 + 16);
  if (a3[22])
  {
    v16 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v14);
    v33 = *(v16 + 16);
    v32 = *v16;
    v28 = "ChromaticTransformCompositeBloomPass";
    v29 = *a3;
    v30 = v32;
    v31 = v33;
    v17 = sub_1AF2384C8(a1, a1, &v28);
    *(v17 + 60) = v14;
    v18 = CFX::RG::Temporal::currentFrame(v17);
    CFX::RG::Pass::readFrom(v17, v14, v18);
    v19 = *(a3[22] + 101);
    *(v17 + 61) = v19;
    v21 = CFX::RG::Temporal::currentFrame(v20);
    CFX::RG::Pass::readFrom(v17, v19, v21);
    CFX::RG::Pass::dependsOn(v17, a3[22]);
  }

  else
  {
    v17 = 0;
  }

  v28 = "ChromaticTransformPass";
  v29 = *a3;
  v30 = v34;
  v31 = v35;
  v22 = sub_1AF238520(a1, a1, &v28);
  v23 = v22;
  if (a3[22])
  {
    v24 = *(v17 + 62);
    v22[60] = v24;
    v25 = CFX::RG::Temporal::currentFrame(v22);
    CFX::RG::Pass::readFrom(v23, v24, v25);
    CFX::RG::Pass::dependsOn(v23, v17);
  }

  else
  {
    v22[60] = v14;
    v26 = CFX::RG::Temporal::currentFrame(v22);
    CFX::RG::Pass::readFrom(v23, v14, v26);
  }

  return v23;
}

uint64_t sub_1AF2384C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF238750(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF238520(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2387B0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23857C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2385B8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2385F0(uint64_t a1)
{
  *a1 = &unk_1F24E91F8;

  return a1;
}

void sub_1AF238638(uint64_t a1)
{
  *a1 = &unk_1F24E91F8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2386A0(uint64_t a1)
{
  *a1 = &unk_1F24E9218;

  return a1;
}

void sub_1AF2386E8(uint64_t a1)
{
  *a1 = &unk_1F24E9218;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF238750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F8u, 8u);
  return sub_1AF237A68(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2387B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF237DA4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF238810(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = sub_1AF12DDCC(a2);
  if (a3 || (a3 = sub_1AF12F10C(a2)) != 0)
  {
    v7 = sub_1AF1BB260(a3);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1AF12E2AC(a2);
      v13 = objc_msgSend_rayMap(v9, v10, v11, v12);
      v14 = sub_1AF12F6A0(a2);
      *a1 = sub_1AF15D690(v8);
      v15 = sub_1AF1D0898(v6);
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      *(a1 + 2) = v16;
      v17 = sub_1AF15CE6C(v8);
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      if (v14 == 2)
      {
        v18 = 0;
      }

      *(a1 + 3) = v18;
      *(a1 + 4) = sub_1AF15D070(v8);
      *(a1 + 5) = sub_1AF15CEC0(v8);
      *(a1 + 1) = sub_1AF15CF98(v8);
      *(a1 + 6) = sub_1AF15D25C(v8);
      *(a1 + 7) = sub_1AF15D2C8(v8);
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_1AF238920(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = *(a3 + 2);
  if (v5 || (v5 = sub_1AF12F10C(a2)) != 0)
  {
    v6 = sub_1AF1BB260(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *a3;
      if (v8 == 1)
      {
        v25 = sub_1AF15CF2C(v6);
      }

      else
      {
        v25 = 0;
      }

      if (sub_1AF15D1B4(v7))
      {
        v9 = sub_1AF15C6AC(v7) != 0;
      }

      else
      {
        v9 = 0;
      }

      if (sub_1AF15D208(v7))
      {
        v10 = sub_1AF15CA8C(v7);
      }

      else
      {
        v10 = 0;
      }

      if (a3[1] == 1)
      {
        v11 = a3[7] ^ 1;
      }

      else
      {
        v11 = 0;
      }

      v20 = v11 & 1;
      v21 = a3[3];
      v24 = sub_1AF15D0DC(v7);
      v23 = sub_1AF15D004(v7);
      v22 = sub_1AF15D148(v7);
      if (sub_1AF15D070(v7))
      {
        v12 = a3[7] ^ 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 & 1;
      v14 = v10 != 0;
      if (v10)
      {
        v15 = sub_1AF162BF0(v10) != 0;
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_1AF15D2C8(v7);
      v17 = sub_1AF15C2CC(v7);
      *a1 = v8;
      *(a1 + 1) = v25;
      *(a1 + 2) = v9 & v8;
      *(a1 + 3) = v20;
      *(a1 + 4) = a3[5];
      *(a1 + 5) = v21;
      if (v17)
      {
        v18 = v17;
        *(a1 + 6) = sub_1AF160BD4(v17);
        LOBYTE(v17) = sub_1AF160B24(v18);
      }

      else
      {
        *(a1 + 6) = 0;
      }

      *(a1 + 14) = v17;
      *(a1 + 7) = v13;
      *(a1 + 8) = v24;
      *(a1 + 9) = v14;
      *(a1 + 10) = v15;
      *(a1 + 11) = v23;
      *(a1 + 12) = v22;
      *(a1 + 13) = v16;
      *(a1 + 16) = v7;
      *(a1 + 15) = sub_1AF15D5F0(v7);
    }
  }

  return a1;
}

uint64_t sub_1AF238B28(_BYTE *a1)
{
  if (*a1 & 1) != 0 || (a1[1] & 1) != 0 || (a1[2] & 1) != 0 || (a1[3] & 1) != 0 || (a1[5] & 1) != 0 || (a1[8] & 1) != 0 || (a1[9] & 1) != 0 || (a1[11] & 1) != 0 || (a1[12] & 1) != 0 || (a1[7])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[13];
  }

  return v1 & 1;
}

void sub_1AF238B8C(uint64_t a1, float32x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v8 = sub_1AF12E2AC(a1);
  v9 = a2[2];
  if (v9 || (v9 = sub_1AF12F10C(a1)) != 0)
  {
    v10 = sub_1AF1BB260(v9);
    if (v10)
    {
      v11 = v10;
      v80 = a2[1];
      *(a4 + 240) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      v12 = 1.0;
      if (a3[1] == 1)
      {
        v13 = sub_1AF15C5B4(v10);
        if (v13)
        {
          v14 = sub_1AF160FEC(v13);
          v12 = exp2f(v14);
        }
      }

      *(a4 + 28) = v12;
      if ((sub_1AF15D1B4(v11) & 1) != 0 && (v15 = sub_1AF15C6AC(v11)) != 0 && a3[2] == 1)
      {
        sub_1AF161ED0(v15, v81);
      }

      else
      {
        sub_1AF161E9C(v81);
      }

      v16 = v81[2];
      *(a4 + 196) = v81[3];
      v17 = v81[5];
      *(a4 + 212) = v81[4];
      *(a4 + 228) = v17;
      *(a4 + 244) = v82;
      v18 = v81[1];
      *(a4 + 148) = v81[0];
      *(a4 + 164) = v18;
      *(a4 + 180) = v16;
      v19 = sub_1AF15C7A4(v11);
      if (v19)
      {
        v20 = sub_1AF160FEC(v19);
      }

      else
      {
        v20 = 0.0;
      }

      *a4 = v20;
      if (a3[11] == 1 && (v21 = sub_1AF15C89C(v11)) != 0)
      {
        v22 = v21;
        *(a4 + 4) = fminf(fmaxf(sub_1AF160FEC(v21), 0.0), 1.0);
        v23 = vdiv_f32(vdup_lane_s32(v80, 1), v80).f32[0];
        *(a4 + 16) = v23 + (fminf(fmaxf(sub_1AF160C84(v22), 0.0), 1.0) * (1.0 - v23));
        *(a4 + 8) = fminf(fmaxf(1.0 - sub_1AF160D20(v22), 0.0), 1.0);
        v24 = sub_1AF160DBC(v22);
      }

      else
      {
        *(a4 + 16) = 1065353216;
        *(a4 + 4) = 0;
        *(a4 + 8) = 0;
        v24 = 0.0;
      }

      *(a4 + 12) = v24;
      if (a3[8] == 1 && (v25 = sub_1AF15CB84(v11)) != 0)
      {
        v26 = v25;
        *(a4 + 20) = sub_1AF160C84(v25);
        v27 = sub_1AF160FEC(v26);
      }

      else
      {
        *(a4 + 20) = 0;
        v27 = 0.0;
      }

      *(a4 + 24) = v27;
      if (sub_1AF15D208(v11) && (v31 = sub_1AF15CA8C(v11)) != 0)
      {
        v32 = v31;
        *(a4 + 32) = fminf(fmaxf(sub_1AF160FEC(v31), 0.00000011921), 2.0);
        *(a4 + 36) = fminf(fmaxf(sub_1AF160C84(v32), 0.00000011921), 2.0);
        *v33.i32 = sub_1AF1624AC(v32);
        v76 = vaddq_f32(sub_1AF162408(v32), vdupq_lane_s32(v33, 0));
        v34 = vmulq_f32(sub_1AF162408(v32), xmmword_1AFE42ED0);
        v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
        *(a4 + 64) = vsubq_f32(v76, vdupq_lane_s32(*v34.f32, 0));
        *v35.i32 = sub_1AF16298C(v32) + 1.0;
        v77 = vaddq_f32(sub_1AF1628E8(v32), vdupq_lane_s32(v35, 0));
        v36 = vmulq_f32(sub_1AF1628E8(v32), xmmword_1AFE42ED0);
        v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
        *(a4 + 80) = vsubq_f32(v77, vdupq_lane_s32(*v36.f32, 0));
        *v37.i32 = sub_1AF162ACC(v32) + 1.0;
        v75 = vaddq_f32(sub_1AF162A28(v32), vdupq_lane_s32(v37, 0));
        v38 = 0;
        v39 = vmulq_f32(sub_1AF162A28(v32), xmmword_1AFE42ED0);
        v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
        *(a4 + 96) = vsubq_f32(v75, vdupq_lane_s32(*v39.f32, 0));
      }

      else
      {
        v32 = 0;
        __asm { FMOV            V0.2S, #1.0 }

        *(a4 + 32) = _D0;
        __asm { FMOV            V1.4S, #1.0 }

        *(a4 + 64) = 0u;
        *(a4 + 80) = _Q1;
        *(a4 + 96) = _Q1;
        v38 = 1;
      }

      if (a3[12] == 1)
      {
        v46 = sub_1AF15C4BC(v11);
      }

      else
      {
        v46 = 0;
      }

      objc_msgSend_time(v8, v28, v29, v30, v75.i64[0]);
      v48 = 30.0;
      v49 = floor(v47 * 30.0);
      if (v46)
      {
        *&v50 = 0.00390625 / fmax(sub_1AF160C84(v46), 0.00390625);
        *v50.i32 = *v50.i32;
        v79 = v50;
        v51 = sub_1AF160FEC(v46);
      }

      else
      {
        v51 = 0.0;
        LODWORD(v48) = 998244352;
        v79 = *&v48;
      }

      *(a4 + 112) = v51;
      v78 = sinf((v49 * 0.1) + 0.05);
      v52.f32[0] = sinf(v49 * 0.01);
      v52.f32[1] = v78;
      v53 = vmul_f32(v52, vdup_n_s32(0x45849000u));
      *&v54 = vdup_lane_s32(v79, 0);
      *(&v54 + 1) = vminnm_f32(vsub_f32(v53, vrndm_f32(v53)), vdup_n_s32(0x3F7FFFFFu));
      *(a4 + 128) = v54;
      if (v46)
      {
        v55 = sub_1AF1611EC(v46);
      }

      else
      {
        v55 = 0;
      }

      *(a4 + 116) = v55;
      if ((v38 & 1) == 0 && (sub_1AF160D20(v32) != 0.0 || sub_1AF160DBC(v32) != 0.0))
      {
        v56 = sub_1AF160D20(v32) * -0.1 + 0.31271;
        v57 = v56 * -3.0 * v56 + v56 * 2.87 + -0.275 + sub_1AF160DBC(v32) * 0.1;
        v58 = v56 / v57;
        v59 = (1.0 - v56 - v57) / v57;
        *(a4 + 48) = vdivq_f32(xmmword_1AFE42F10, vmlaq_n_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE42EE0, v58), xmmword_1AFE42EF0), xmmword_1AFE42F00, v59));
        *(a4 + 40) = 1;
      }

      if (a3[7] == 1)
      {
        v60 = sub_1AF15C994(v11);
        if (!v60)
        {
          v61 = sub_1AF0D5194();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEE5E0(v61, v62, v63, v64, v65, v66, v67, v68);
          }
        }

        v69 = sub_1AF160FEC(v60) * 0.01 * *&v80.i32[1];
        *(a4 + 144) = v69;
      }

      if (a3[5] == 1)
      {
        v70 = sub_1AF15C2CC(v11);
        sub_1AF15E280(v11, *&v80);
        *(a4 + 248) = v71;
        v72 = sub_1AF160DBC(v70);
        *(a4 + 260) = v72;
        v73 = v72 + -0.0001;
        v74 = sub_1AF160D20(v70);
        if (v73 < v74)
        {
          v74 = v73;
        }

        *(a4 + 256) = v74;
        *(a4 + 264) = sub_1AF160E58(v70);
        *(a4 + 268) = sub_1AF15D9E8(v11);
      }
    }
  }
}

uint64_t sub_1AF23921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _OWORD *a6)
{
  if ((atomic_load_explicit(&qword_1ED73A528, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v17 = a3;
    sub_1AFDEE658();
    a2 = v16;
    a3 = v17;
  }

  if (byte_1ED73A520)
  {
    v10 = 0x8D0488668FE8A629;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF250390(a1, a2, a3, a5, v10, 0);
  *a1 = &unk_1F24E9238;
  v11 = *(a5 + 40);
  v12 = *(a5 + 56);
  *(a1 + 448) = *(a5 + 24);
  *(a1 + 464) = v11;
  *(a1 + 480) = v12;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  if (a6)
  {
    CFX::RG::TextureDescriptorReference::withSampleCount(a6, 1, v20);
    v13 = sub_1AF233CC8(a4, "COMPOSITING OUTPUT", v20);
  }

  else
  {
    CFX::RG::TextureDescriptorReference::finalColor(v18);
    CFX::RG::TextureDescriptorReference::withSampleCount(v18, 1, v19);
    v14 = sub_1AF130888(*(a1 + 432));
    CFX::RG::TextureDescriptorReference::withSizeFactor(v19, v14, v20);
    v13 = sub_1AF233CC8(a4, "COMPOSITING OUTPUT", v20);
  }

  *(a1 + 544) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x100000000, 0);
  return a1;
}

void sub_1AF239390(uint64_t a1, uint64_t **a2)
{
  prof_beginFlame("Composite", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CompositePass.mm", 280);
  v63 = sub_1AF12E2AC(*(a1 + 432));
  v64 = objc_msgSend_resourceManager(v63, v4, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 544)) + 12);
  v9 = CFX::GPUResourceManager::remappedResource(a2[3], *(a1 + 544));
  v71 = a2;
  if (CFX::RG::Resource::isExternal(v9))
  {
    v10 = CFX::RG::Resource::externalResourceDesc(v9);
    v70 = CFX::RG::ExternalResourceDesc::requireLoad(v10);
  }

  else
  {
    v70 = 0;
  }

  v11 = *(a1 + 477);
  v12 = *(a1 + 478);
  v13 = *(a1 + 487);
  v14 = *(a1 + 486);
  v15 = *(a1 + 475);
  v16 = *(a1 + 479);
  v65 = *(a1 + 480);
  v66 = *(a1 + 483);
  v67 = *(a1 + 484);
  v68 = *(a1 + 481);
  v69 = *(a1 + 482);
  v17 = *(a1 + 488);
  if ((sub_1AF15D1B4(v17) & 1) != 0 && (v18 = sub_1AF15C6AC(v17)) != 0)
  {
    v19 = sub_1AF1618F4(v18);
  }

  else
  {
    v19 = 2;
  }

  v20 = v8;
  v21 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)));
  v22 = v8 << 32;
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ (v22 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ (v22 >> 56))));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ v11)));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v12)));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ v13)));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ v14)));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ v15)));
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ v16)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ v16)));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ v65)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ v65)));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ v66)));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v67)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v67)));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ v68)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ v68)));
  v34 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v69)));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ v70)));
  v36 = 0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47));
  v89[0] = v19;
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ ((0x9DDFEA08EB382D69 * (v36 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v36 ^ v19)))) ^ ((0x9DDFEA08EB382D69 * (v36 ^ ((0x9DDFEA08EB382D69 * (v36 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v36 ^ v19)))) >> 47));
  v38 = CFX::CrossFrameResourceManager::get(v71[4], v37);
  *(a1 + 496) = v38;
  if (!v38)
  {
    *(a1 + 496) = sub_1AF2398D4(v71[4], v37);
    v39 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v40, a1 + 477, 53, 0);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v41, a1 + 478, 53, 9);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v42, a1 + 486, 49, 10);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v43, a1 + 487, 53, 11);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v44, a1 + 475, 53, 1);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v45, a1 + 479, 53, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v46, a1 + 480, 53, 3);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v47, a1 + 483, 53, 4);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v48, a1 + 484, 53, 5);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v49, a1 + 481, 53, 6);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v50, a1 + 482, 53, 7);
    objc_msgSend_setConstantValue_type_atIndex_(v39, v51, v89, 49, 8);
    v52 = *(a1 + 496);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    memset(v72, 0, sizeof(v72));
    v53 = sub_1AFDE868C(v64);
    v73 = objc_msgSend_frameworkLibrary(v53, v54, v55, v56);
    v74 = v20;
    BYTE8(v79) = HIBYTE(v22);
    if (v70)
    {
      v59 = sub_1AF15BBC4();
    }

    else
    {
      v59 = 0;
    }

    *&v80 = v59;
    *&v85 = v39;
    *&v86 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v86 + 1) = @"vfx_post_process";
    v60 = objc_msgSend_newRenderPipelineStateWithDesc_(v64, v57, v72, v58);
    sub_1AF23355C((v52 + 16), v60);
  }

  if (*(a1 + 484) == 1)
  {
    v61 = sub_1AF275A98(v63, v71[4]);
  }

  else
  {
    v61 = 0;
  }

  v62 = *(a1 + 496);
  *(v62 + 24) = v61;
  sub_1AF238B8C(*(a1 + 432), (a1 + 448), (a1 + 472), v62 + 32);
  prof_endFlame();
}

uint64_t sub_1AF2398D4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF239984(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("Composite", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CompositePass.mm", 354);
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_renderEncoder(v4, v5, v6, v7);
  v9 = sub_1AF2338B0(*(a1 + 496) + 16);
  v13 = objc_msgSend_state(v9, v10, v11, v12);
  v16 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13, v15);
  v17 = *(a2 + 24);
  v18 = *(a1 + 504);
  v19 = CFX::RG::Temporal::currentFrame(v16);
  Texture = CFX::GPUResourceManager::getTexture(v17, v18, v19);
  sub_1AF1F8FCC(v8, Texture, 0, v21);
  v23 = sub_1AF1F8FCC(v8, *(*(a1 + 496) + 24), 3, v22);
  if (*(a1 + 477) == 1)
  {
    v24 = *(a2 + 24);
    v25 = *(a1 + 520);
    v26 = CFX::RG::Temporal::currentFrame(v23);
    v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
    v28 = *(a2 + 24);
    v29 = *(a1 + 512);
    v30 = CFX::RG::Temporal::currentFrame(v27);
    v31 = CFX::GPUResourceManager::getTexture(v28, v29, v30);
    sub_1AF1F8FCC(v8, v27, 2, v32);
    v23 = sub_1AF1F8FCC(v8, v31, 5, v33);
  }

  if (*(a1 + 475) == 1)
  {
    v34 = *(a2 + 24);
    v35 = *(a1 + 528);
    v36 = CFX::RG::Temporal::currentFrame(v23);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    v23 = sub_1AF1F8FCC(v8, v37, 1, v38);
  }

  if (*(a1 + 479) == 1)
  {
    v39 = *(a2 + 24);
    v40 = *(a1 + 536);
    v41 = CFX::RG::Temporal::currentFrame(v23);
    v42 = CFX::GPUResourceManager::getTexture(v39, v40, v41);
    sub_1AF1F8FCC(v8, v42, 4, v43);
  }

  if (*(a1 + 482) == 1)
  {
    v44 = sub_1AF12F10C(*(a1 + 432));
    if (v44)
    {
      v45 = sub_1AF1BB260(v44);
      if (v45)
      {
        v46 = sub_1AF15CA8C(v45);
        v48 = sub_1AF162BF0(v46);
        if (v48)
        {
          v50 = objc_msgSend_textureForMaterialProperty_(v4, v47, v48, v49);
          if (v50)
          {
            sub_1AF1F8FCC(v8, v50, 6, v51);
          }

          else if ((byte_1EB6587B8 & 1) == 0)
          {
            byte_1EB6587B8 = 1;
            v52 = sub_1AF0D5194();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEE6A4(v52);
            }
          }
        }
      }
    }
  }

  sub_1AF1F905C(v8, (*(a1 + 496) + 32), 0x110uLL, 0);
  sub_1AF2010C8(v8, v53);
  prof_endFlame();
}

double sub_1AF239C0C(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 63) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239C54(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 64) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239C9C(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 65) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239CE4(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 66) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239D2C(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 67) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

uint64_t sub_1AF239D74(uint64_t *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a2;
  v6[0] = "Composite";
  v6[1] = v4;
  v7 = 0;
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = *a4;
  v11 = *(a4 + 2);
  return sub_1AF239DD8(a1, a1, v6, a2 + 2);
}

uint64_t sub_1AF239DD8(uint64_t *a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF239F20(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF239E38(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF239E70(uint64_t a1)
{
  *a1 = &unk_1F24E9290;

  return a1;
}

void sub_1AF239EB8(uint64_t a1)
{
  *a1 = &unk_1F24E9290;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF239F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _OWORD **a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x228u, 8u);
  return sub_1AF23921C(v10, *a3, a3[1], a4, a5, *a6);
}

__n128 sub_1AF239F88(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = CFX::RG::Pass::Pass(a1, a2, a3, *a4, 4, a5, a6);
  *v7 = &unk_1F24E92B0;
  result = *a4;
  *(v7 + 424) = *a4;
  return result;
}

uint64_t sub_1AF239FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return (*(*result + 56))(result, a2, a4 + 8);
    }

    else if (a3 == 3)
    {
      return (*(*result + 64))();
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return (*(*result + 48))(result, a2, a4 + 8);
    }
  }

  else
  {
    return (*(*result + 40))(result, a2, a4 + 8);
  }

  return result;
}

void sub_1AF23A0B4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF23A0F4(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  if ((atomic_load_explicit(&qword_1ED73A538, memory_order_acquire) & 1) == 0)
  {
    v16 = v6;
    v17 = a3;
    v15 = a2;
    sub_1AFDEE6E8();
    a2 = v15;
    v6 = v16;
    a3 = v17;
  }

  if (byte_1ED73A530)
  {
    v7 = 0x374B7D265F77D55DLL;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, v6, 1, v7, 0);
  *this = &unk_1F24E9308;
  *(this + 27) = *a4;
  v8 = *(a4 + 16);
  v9 = *(a4 + 32);
  v10 = *(a4 + 64);
  *(this + 30) = *(a4 + 48);
  *(this + 31) = v10;
  *(this + 28) = v8;
  *(this + 29) = v9;
  v11 = *(a4 + 80);
  v12 = *(a4 + 96);
  v13 = *(a4 + 128);
  *(this + 34) = *(a4 + 112);
  *(this + 35) = v13;
  *(this + 32) = v11;
  *(this + 33) = v12;
  *(this + 74) = 0;
  result = 0.0;
  *(this + 36) = 0u;
  return result;
}

void sub_1AF23A1CC(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 448))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 448))))));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(a1 + 448)))));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 456))));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 464))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 464))))));
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(a1 + 464)))));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 472))));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 480))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 480))))));
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = 0x9DDFEA08EB382D69 * (v18 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(a1 + 480)))));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = 0x9DDFEA08EB382D69 * (v20 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 488))));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v23 = *(a1 + 504);
  v24 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ *(a1 + 496))) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ *(a1 + 496))));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v23)));
  v26 = 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47));
  v27 = *(a1 + 512);
  v28 = 0x9DDFEA08EB382D69 * (v26 ^ ((0x9DDFEA08EB382D69 * (v26 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v26 ^ v27)));
  v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
  v30 = 0x9DDFEA08EB382D69 * (v29 ^ COERCE_UNSIGNED_INT64(*(a1 + 520)));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) ^ ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 47));
  v32 = 0x9DDFEA08EB382D69 * (v31 ^ COERCE_UNSIGNED_INT64(*(a1 + 524)));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 47));
  v34 = 0x9DDFEA08EB382D69 * (v33 ^ COERCE_UNSIGNED_INT64(*(a1 + 528)));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) >> 47));
  v36 = 0x9DDFEA08EB382D69 * (v35 ^ COERCE_UNSIGNED_INT64(*(a1 + 532)));
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) ^ ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) >> 47));
  v38 = 0x9DDFEA08EB382D69 * (v37 ^ COERCE_UNSIGNED_INT64(*(a1 + 536)));
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) ^ ((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) >> 47));
  v40 = 0x9DDFEA08EB382D69 * (v39 ^ *(a1 + 552));
  v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v39 ^ (v40 >> 47) ^ v40)) ^ ((0x9DDFEA08EB382D69 * (v39 ^ (v40 >> 47) ^ v40)) >> 47));
  v42 = *(a1 + 544);
  if (v42 && v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v44 = v42;
      v45 = *(a1 + 512);
      if (v27)
      {
        do
        {
          v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ *v44)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ *v44)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ *v44)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ *v44)))) >> 47));
          v44 += v23;
          --v45;
        }

        while (v45);
      }

      ++v42;
    }
  }

  v46 = CFX::CrossFrameResourceManager::get(a2[4], v41);
  *(a1 + 576) = v46;
  if (!v46)
  {
    *(a1 + 576) = sub_1AF23A8A0(a2[4], v41);
    v47 = sub_1AF12E2AC(*(a1 + 560));
    v50 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 584)) + 4);
    v51 = *(a1 + 448);
    v52 = vmvnq_s8(vceqzq_f32(v51));
    v52.i32[3] = v52.i32[2];
    if ((vmaxvq_u32(v52) & 0x80000000) != 0)
    {
      v54 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*v51.f32, vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v50), xmmword_1AFE42F50), 0x30uLL))))));
      v53 = vmuls_lane_f32(((v50 << 16) >> 48), v51, 2);
    }

    else
    {
      v53 = 0;
      v54 = 0uLL;
    }

    v55 = *(a1 + 464);
    v56 = vmvnq_s8(vceqzq_f32(v55));
    v56.i32[3] = v56.i32[2];
    if ((vmaxvq_u32(v56) & 0x80000000) != 0)
    {
      v57 = *(a1 + 480);
    }

    else
    {
      v57 = *(a1 + 480);
      __asm { FMOV            V2.4S, #1.0 }

      v63 = vmvnq_s8(vceqq_f32(v57, _Q2));
      v63.i32[3] = v63.i32[2];
      if ((vmaxvq_u32(v63) & 0x80000000) == 0)
      {
        v65 = *(MEMORY[0x1E6974448] + 16);
        v64 = *(MEMORY[0x1E6974448] + 32);
        v66 = *MEMORY[0x1E6974448];
        goto LABEL_16;
      }
    }

    v67 = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v50), xmmword_1AFE42F50), 0x30uLL)));
    v66 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*v55.f32, v67)));
    v68 = vrev64_s32(v67);
    v69.i32[1] = v68.i32[1];
    v69.f32[0] = ((v50 << 16) >> 48);
    v65 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *v57.f32), v69)));
    v68.f32[1] = ((v50 << 16) >> 48);
    v64 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*&vextq_s8(v57, v57, 4uLL), v68)));
LABEL_16:
    v70 = 0;
    v71 = *(a1 + 552);
    v126 = v65;
    v127 = v66;
    v125 = v64;
    if (v71 > 2)
    {
      if (v71 <= 4)
      {
        if (v71 != 3)
        {
          v124 = v54;
          v72 = objc_alloc(MEMORY[0x1E69745C0]);
          v76 = objc_msgSend_device(v47, v73, v74, v75);
          LODWORD(v77) = *(a1 + 520);
          v80 = objc_msgSend_initWithDevice_sigma_(v72, v78, v76, v79, v77);
LABEL_36:
          v54 = v124;
          v70 = v80;
          goto LABEL_39;
        }

        v81 = MEMORY[0x1E6974638];
LABEL_33:
        v124 = v54;
        v96 = [v81 alloc];
        v100 = objc_msgSend_device(v47, v97, v98, v99);
        v80 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v96, v101, v100, *(a1 + 504), *(a1 + 512));
        goto LABEL_36;
      }

      if (v71 == 5)
      {
        v82 = MEMORY[0x1E6974610];
        goto LABEL_35;
      }

      if (v71 == 6)
      {
        v82 = MEMORY[0x1E6974588];
LABEL_35:
        v124 = v54;
        v102 = [v82 alloc];
        v106 = objc_msgSend_device(v47, v103, v104, v105);
        v80 = objc_msgSend_initWithDevice_(v102, v107, v106, v108);
        goto LABEL_36;
      }

LABEL_39:
      v128 = v54;
      v129.i64[0] = v53;
      objc_msgSend_setOffset_(v70, v48, &v128, v49, *&v124);
      v128 = v127;
      v129 = v126;
      v130 = v125;
      objc_msgSend_setClipRect_(v70, v120, &v128, v121);
      objc_msgSend_setEdgeMode_(v70, v122, *(a1 + 496), v123);
      sub_1AF23355C((*(a1 + 576) + 16), v70);
      return;
    }

    if (v71)
    {
      if (v71 != 1)
      {
        if (v71 == 2)
        {
          v81 = MEMORY[0x1E6974580];
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      v124 = v54;
      v109 = objc_alloc(MEMORY[0x1E69745F8]);
      v113 = objc_msgSend_device(v47, v110, v111, v112);
      v70 = objc_msgSend_initWithDevice_(v109, v114, v113, v115);
      LODWORD(v116) = *(a1 + 524);
      objc_msgSend_setBias_(v70, v117, v118, v119, v116);
    }

    else
    {
      v124 = v54;
      v83 = *(a1 + 544);
      if (!v83)
      {
        v84 = malloc_type_calloc(1uLL, 4 * *(a1 + 504) * *(a1 + 512), 0x100004052888210uLL);
        v83 = v84;
        v85 = *(a1 + 512) * *(a1 + 504);
        if (v85)
        {
          memset_pattern16(v84, &xmmword_1AFE21160, 4 * v85);
        }
      }

      v86 = objc_alloc(MEMORY[0x1E6974598]);
      v90 = objc_msgSend_device(v47, v87, v88, v89);
      v70 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v86, v91, v90, *(a1 + 504), *(a1 + 512), v83);
      LODWORD(v92) = *(a1 + 524);
      objc_msgSend_setBias_(v70, v93, v94, v95, v92);
      if (!*(a1 + 544))
      {
        free(v83);
      }
    }

    v54 = v124;
    goto LABEL_39;
  }
}

uint64_t sub_1AF23A8A0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

CFX::RG::Temporal *sub_1AF23A928(CFX::RG::Temporal *a1, uint64_t a2, id *a3)
{
  v6 = *(a2 + 24);
  v7 = *(a1 + 73);
  v8 = CFX::RG::Temporal::currentFrame(a1);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 74);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  result = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  if (Texture != result)
  {
    v14 = *(*(a1 + 72) + 16);
    v15 = CFX::RG::RendererPassArguments::commandBuffer(a3);

    return MEMORY[0x1EEE66B58](v14, sel_encodeToCommandBuffer_sourceTexture_destinationTexture_, v15, Texture);
  }

  return result;
}

void sub_1AF23A9EC(uint64_t a1, CFX::CrossFrameResourceManager **a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    sub_1AF23A928(a1, a2, (a4 + 8));
  }

  else if (a3 == 1)
  {
    sub_1AF23A1CC(a1, a2);
  }
}

uint64_t *sub_1AF23AA0C(uint64_t *a1, CFX::RG::Resource *a2, CFX::RG::Resource *a3, uint64_t a4)
{
  v7 = sub_1AF23AB20(a1, a4);
  v8 = CFX::RG::Resource::constTextureDesc(a2);
  v9 = v8[1];
  v22[0] = *v8;
  v22[1] = v9;
  v10 = v8[5];
  v12 = v8[2];
  v11 = v8[3];
  v23 = v8[4];
  v24 = v10;
  v22[2] = v12;
  v22[3] = v11;
  v13 = v8[9];
  v15 = v8[6];
  v14 = v8[7];
  v27 = v8[8];
  v28 = v13;
  v25 = v15;
  v26 = v14;
  CFX::RG::TextureDescriptorReference::withSampleCount(v22, 1, v21);
  v17 = CFX::RG::copyIfNeeded(a1, a2, a3, v21, "MPSConvolutionPass color input resolve", v16);
  v7[73] = v17;
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(v7, v17, v18);
  if ((v24 & 1) == 0)
  {
    LOBYTE(v24) = 1;
  }

  *(&v23 + 1) = 2;
  CFX::RG::TextureDescriptorReference::withSampleCount(v22, 1, v21);
  v19 = sub_1AF233CC8(a1, "color", v21);
  v7[74] = v19;
  CFX::RG::Pass::writeTo(v7, v19);
  return v7;
}

uint64_t sub_1AF23AB20(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1AF23AC60(v7[0], v4, v7, a2);
  v7[0] = v5;
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23AB78(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23ABB0(uint64_t a1)
{
  *a1 = &unk_1F24E9340;

  return a1;
}

void sub_1AF23ABF8(uint64_t a1)
{
  *a1 = &unk_1F24E9340;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF23AC60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x260u, 0x10u);
  return sub_1AF23A0F4(v6, *a3, a3[1], a4);
}

__n128 sub_1AF23ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  if ((atomic_load_explicit(&qword_1ED73A548, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDEE734();
    a2 = v9;
    a3 = v10;
  }

  if (byte_1ED73A540)
  {
    v7 = 0x6E138DDE28F25A91;
  }

  else
  {
    v7 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v7, 0);
  *a1 = &unk_1F24E9360;
  result = a5[1];
  *(a1 + 440) = result;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  return result;
}

void sub_1AF23AD5C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  prof_beginFlame("CopyStereoSideBySidePass", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CopyStereoSideBySidePass.mm", 22);
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v8 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 472));
  v11 = 0x9DDFEA08EB382D69 * (*(v10 + 12) ^ v9);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((*(v10 + 12) << 32) >> 56));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(a2[4], v14);
  *(a1 + 456) = v15;
  if (!v15)
  {
    v16 = sub_1AF23AE8C(a2[4], v14);
    *(a1 + 456) = v16;
    v19 = objc_msgSend_newComputePipelineStateWithFunctionName_(v8, v17, @"copy_array_to_side_by_side", v18);
    sub_1AF23355C((v16 + 16), v19);
  }

  prof_endFlame();
}

uint64_t sub_1AF23AE8C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF23AF14(void *a1, uint64_t a2, id *a3)
{
  prof_beginFlame("CopyStereoSideBySidePass", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CopyStereoSideBySidePass.mm", 42);
  v6 = CFX::RG::ComputePassArguments::encoder(a3);
  v7 = *(a2 + 24);
  v8 = a1[58];
  v9 = CFX::RG::Temporal::currentFrame(v6);
  Texture = CFX::GPUResourceManager::getTexture(v7, v8, v9);
  v11 = *(a2 + 24);
  v12 = a1[59];
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  objc_msgSend_setTexture_atIndex_(v6, v15, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v6, v16, v14, 1);
  v17 = sub_1AF1403B4(a1[57] + 16);
  v18 = sub_1AFDE323C(v17);
  objc_msgSend_dispatch_onTexture2D_(v6, v19, v18, v14);

  prof_endFlame();
}

CFX::RG::Temporal *sub_1AF23B018(uint64_t *a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v10[0].n128_u64[0] = a3;
  v10[0].n128_u64[1] = a2;
  v10[1] = *a4;
  v5 = sub_1AF23B094(a1, a1, v10);
  v6 = a4->n128_u64[0];
  *(v5 + 58) = a4->n128_u64[0];
  v7 = CFX::RG::Temporal::currentFrame(v5);
  CFX::RG::Pass::readFrom(v5, v6, v7);
  v8 = a4->n128_u64[1];
  *(v5 + 59) = v8;
  CFX::RG::Pass::writeTo(v5, v8);
  return v5;
}

uint64_t sub_1AF23B094(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF23B1D8(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

void sub_1AF23B0F0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23B128(uint64_t a1)
{
  *a1 = &unk_1F24E93B8;

  return a1;
}

void sub_1AF23B170(uint64_t a1)
{
  *a1 = &unk_1F24E93B8;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF23B1D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1E0u, 8u);
  *&result = sub_1AF23ACB0(v7, *a3, a3[1], v8, a5).n128_u64[0];
  return result;
}

uint64_t sub_1AF23B228()
{
  if ((atomic_load_explicit(&qword_1ED73A558, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE780();
  }

  return qword_1ED73A550;
}

unint64_t sub_1AF23B260(unsigned int a1)
{
  v1 = "Main culling context";
  v2 = 0xC6A4A7935BD1E995 * a1;
  if (a1 >= 8)
  {
    v3 = a1 >> 3;
    v1 = &aMainCullingCon[8 * v3];
    v4 = 8 * v3;
    v5 = "Main culling context";
    do
    {
      v6 = *v5;
      v5 += 8;
      v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v2);
      v4 -= 8;
    }

    while (v4);
  }

  v7 = a1 & 7;
  if (v7 > 3)
  {
    if ((a1 & 7) > 5)
    {
      if (v7 != 6)
      {
        v2 ^= v1[6] << 48;
      }

      v2 ^= v1[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_17;
    }

    v2 ^= v1[4] << 32;
LABEL_17:
    v2 ^= v1[3] << 24;
LABEL_18:
    v2 ^= v1[2] << 16;
    goto LABEL_19;
  }

  if ((a1 & 7) <= 1)
  {
    if ((a1 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47);
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    goto LABEL_18;
  }

LABEL_19:
  v2 ^= v1[1] << 8;
LABEL_20:
  v2 = 0xC6A4A7935BD1E995 * (v2 ^ *v1);
  return (0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47);
}

uint64_t sub_1AF23B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v6 = *a5;
  v7 = a5[2];
  *(a1 + 48) = a5[1];
  *(a1 + 64) = v7;
  *(a1 + 32) = v6;
  v8 = a5[3];
  v9 = a5[4];
  v10 = a5[6];
  *(a1 + 112) = a5[5];
  *(a1 + 128) = v10;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 144) = 0;
  v13[0] = a2;
  v13[1] = a3;
  v11 = sub_1AF23498C(v13, 0x3B20u, 0x10u);
  bzero(v11, 0x3B20uLL);
  *(a1 + 144) = v11;
  return a1;
}

uint64_t sub_1AF23B3CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 144);
  if (v2)
  {
    sub_1AF234C8C(v2, &v4);
  }

  return a1;
}

void sub_1AF23B424(int8x16_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AF130770(a1[1].i64[0], a2, a3, a4);
  prof_beginFlameSmallData("init", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/Culling.mm", 56, v5 | 0x300000000);
  v6 = a1[9].i64[0];
  v7 = a1[1].i64[0];
  v8 = a1[2].i64[0];
  v9 = a1[2].i64[1];
  v10 = sub_1AF12DDCC(v7);
  sub_1AF1243E4(v6, v7, v8, v9, v10);
  v11 = a1[7].i64[1];
  v12 = (v11 >> 3) & 1;
  if (a1[3].i64[0])
  {
    LOBYTE(v12) = 1;
  }

  v13 = a1[9].i64[0];
  *(v13 + 14652) |= v12;
  *(v13 + 14595) = a1[7].i8[0];
  *(v13 + 14648) = (v11 & 4) != 0;
  if ((v11 & 4) != 0)
  {
    v14 = 6;
  }

  else
  {
    v14 = a1[8].i8[4];
  }

  *(v13 + 14592) = v14;
  *(v13 + 14594) = a1[8].i32[0];
  *(v13 + 14655) = BYTE1(v11) & 1;
  *(v13 + 14656) = (v11 & 0x40) != 0;
  *(v13 + 14657) = a1[7].i8[1];
  *(v13 + 14649) = (v11 & 2) != 0;
  *(v13 + 14653) = (v11 & 0x80) != 0;
  if (a1[5].i8[0] == 1)
  {
    v20 = a1[4];
    v15 = sub_1AF125C8C(v13, 0);
    v16 = v20;
    *v17.i8 = vceqz_f32(*&vextq_s8(v16, v16, 8uLL));
    v17.i64[1] = v17.i64[0];
    v16.n128_u64[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(v17, 0x1FuLL)), *&v15, v20).u64[1];
    sub_1AF124608(a1[9].i64[0], 0, v16);
    v11 = a1[7].i64[1];
    v13 = a1[9].i64[0];
  }

  *(v13 + 14650) = v11 & 1;
  *(v13 + 14651) = (v11 & 0x200) != 0;
  *(v13 + 14664) = a1[6].i64[0];
  v18 = sub_1AF124D80(*(v13 + 14632));
  v19 = a1[9].i64[0];
  *(v19 + 14664) &= v18;
  *(v19 + 14672) = a1[6].i64[1];

  prof_endFlame();
}

uint64_t sub_1AF23B614(uint64_t a1)
{
  v2 = sub_1AF12DDCC(*(a1 + 16));
  v3 = sub_1AF1D00F8(v2);
  v4 = *(a1 + 144);
  v5 = *(v4 + 14592);
  v6 = *(v4 + 14704);
  v7 = *(v4 + 14712);

  return sub_1AF139198(v3, v4, v6, v7, v5, (v4 + 3072), (v4 + 7168));
}

void sub_1AF23B678(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AF130770(*(a1 + 16), a2, a3, a4);
  prof_beginFlameSmallData("cull", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/Culling.mm", 124, v7 | 0x300000000);
  sub_1AF23B784(a1, a2, a3);
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 24);
      v11 = &v10[v9];
      do
      {
        v12 = 0;
        v13 = *v10;
        while (v12 < sub_1AF12464C(*(a1 + 144)))
        {
          if ((*(*(a1 + 144) + 15128))())
          {
            sub_1AF1246F4(*(a1 + 144), v12, v13);
          }

          ++v12;
        }

        ++v10;
      }

      while (v10 != v11);
    }
  }

  else
  {
    sub_1AF126C60(*(a1 + 144));
  }

  prof_endFlame();
}

uint64_t sub_1AF23B784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12DDCC(*(a1 + 16));
  v7 = sub_1AF1D00B0(v6);
  v8 = sub_1AF13341C(v7);
  v9 = sub_1AF147440(v8);
  result = sub_1AF12464C(*(a1 + 144));
  if (result)
  {
    v11 = 0;
    v12 = 14876;
    do
    {
      v16[0] = a2;
      v16[1] = a3;
      v13 = sub_1AF23498C(v16, 4 * v9, 2u);
      v14 = *(a1 + 144);
      v15 = &v14[v12];
      *(v15 - 3) = v13;
      *(v15 - 1) = 0;
      *v15 = v9;
      ++v11;
      result = sub_1AF12464C(v14);
      v12 += 16;
    }

    while (v11 < result);
  }

  return result;
}

CFX::RG::Pass *sub_1AF23B83C(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A568, memory_order_acquire) & 1) == 0)
  {
    v17 = a5;
    sub_1AFDEE7D4();
    a5 = v17;
  }

  if (byte_1ED73A560)
  {
    v9 = 0x11A993FC41E72446;
  }

  else
  {
    v9 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, a5, 1, v9, 0);
  *this = &unk_1F24E93D8;
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[3];
  *(this + 29) = a4[2];
  *(this + 30) = v12;
  *(this + 27) = v10;
  *(this + 28) = v11;
  v13 = a4[4];
  v14 = a4[5];
  v15 = a4[7];
  *(this + 33) = a4[6];
  *(this + 34) = v15;
  *(this + 31) = v13;
  *(this + 32) = v14;
  sub_1AF23B34C(this + 560, a2, a3, *a4, a4 + 1);
  return this;
}

__n128 sub_1AF23B948(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF23B424(a1 + 35, a2, a3, a4);
  sub_1AF23B5E0(a1[35].i64);
  sub_1AF23B5F4(a1[35].i64, v6, v7, v8, v9, v10, v11);
  sub_1AF23B60C(a1[35].i64);
  if (a1[27].i8[8] == 1)
  {
    sub_1AF23B614(a1[35].i64);
  }

  if ((atomic_load_explicit(&qword_1ED73A568, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE7D4();
  }

  if (byte_1ED73A560)
  {
    v12 = 0x11A993FC41E72446;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1AF23B410(a1[35].i64);
  v14 = sub_1AF23BA44(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v13)))) ^ ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v13)))) >> 47)));
  a1[45].i64[0] = v14;
  v15 = sub_1AF170BF8(a1[35].i64);
  result = *(v14 + 48);
  v17 = *(v14 + 64);
  v18 = *(v14 + 32);
  *(v15 + 11264) = *(v14 + 16);
  *(v15 + 11312) = v17;
  *(v15 + 11296) = result;
  *(v15 + 11280) = v18;
  return result;
}

uint64_t sub_1AF23BA44(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF23BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Perform culling", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CullingPass.mm", 38, v6 | 0x300000000);
  sub_1AF23B678(a1 + 560, *a2, *(a2 + 8), v7);
  if (*(a1 + 440) == 1)
  {
    v8 = sub_1AF170BF8(a1 + 560);
    v9 = *(a2 + 32);
    v10 = sub_1AF23B228();
    *(sub_1AF23BB88(v9, v10) + 16) = v8;
  }

  prof_endFlame();
}

uint64_t sub_1AF23BB88(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

__n128 sub_1AF23BC10(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a3)
  {
    case 3:
      v6 = sub_1AF170BF8(a1[35].i64);
      sub_1AF126FA4(v6);
      v7 = sub_1AF170BF8(a1[35].i64);
      v8 = a1[45].i64[0];
      result = *(v7 + 11312);
      v9 = *(v7 + 11296);
      v10 = *(v7 + 11280);
      *(v8 + 16) = *(v7 + 11264);
      *(v8 + 32) = v10;
      *(v8 + 48) = v9;
      *(v8 + 64) = result;
      break;
    case 1:

      sub_1AF23BAE0(a1, a2, a3, a4);
      break;
    case 0:

      result.n128_u64[0] = sub_1AF23B948(a1, a2, a3, a4).n128_u64[0];
      break;
  }

  return result;
}

uint64_t sub_1AF23BCDC(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23BE28(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23BD34(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24E93D8;
  sub_1AF23B3CC(a1 + 560);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF23BD8C(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24E93D8;
  sub_1AF23B3CC(a1 + 560);
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF23BE28(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 0x10u);
  return sub_1AF23B83C(v8, *a3, a3[1], a4, *a5);
}

uint64_t *sub_1AF23BE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *v12 = v13;
  v12[1] = v13;
  v12[2] = v13;
  v12[3] = v13;
  v12[4] = v13;
  v12[5] = v13;
  v12[6] = v13;
  v12[7] = v13;
  v12[8] = v13;
  v12[9] = v13;
  v12[10] = v13;
  v12[11] = v13;
  v12[12] = v13;
  v12[13] = v13;
  v15 = CFX::RG::Resource::Resource(v12, a2, a3, a4, 2, a5);
  result = sub_1AF235000((a1 + 144), &v15);
  *a6 = v15;
  return result;
}

uint64_t *sub_1AF23BF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v11 = a2;
  v10 = a4;
  v9[0] = 2;
  sub_1AF23BFA0(&v11, a3, v9, &v10);
  *v9 = v7;
  result = sub_1AF235000((a1 + 144), v9);
  *a5 = *v9;
  return result;
}

double sub_1AF23BFA0(uint64_t *a1, uint64_t a2, char *a3, char *a4)
{
  v8 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  v8[4] = v9;
  v8[5] = v9;
  v8[6] = v9;
  v8[7] = v9;
  v8[8] = v9;
  v8[9] = v9;
  v8[10] = v9;
  v8[11] = v9;
  v8[12] = v9;
  v8[13] = v9;
  v10 = *a1;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v12, a2);
  *&result = CFX::RG::Resource::Resource(v8, v10, v12, *a3, *a4).n128_u64[0];
  return result;
}

uint64_t sub_1AF23C040(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  if ((atomic_load_explicit(&qword_1ED73A578, memory_order_acquire) & 1) == 0)
  {
    v17 = a3;
    v16 = a2;
    sub_1AFDEE820();
    a2 = v16;
    a3 = v17;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A570, 0);
  *a1 = &unk_1F24E9450;
  memcpy((a1 + 448), a5 + 2, 0x148uLL);
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  v8 = sub_1AF130888(*(a1 + 432));
  v9 = v8 * 0.5 / sub_1AF130864(*(a1 + 432));
  *(a1 + 440) = v9;
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((a1 + 456), MTLPixelFormatRGBA16Float, &v18);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v18, *(a1 + 440), &v20);
  v11 = sub_1AF233CC8(v10, "DOF_DOWNSAMPLE_COLOR_COC", &v20);
  *(a1 + 800) = v11;
  v12 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, v11);
  LODWORD(v10) = *v12;
  v13 = *(v12 + 4);
  v18 = *(v12 + 12);
  v19 = *(v12 + 20);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v21 = v13 & 0xFFFFFFFF00000000 | vcvtpd_s64_f64(v13 * 0.0625) | (vcvtpd_s64_f64((v13 >> 16) * 0.0625) << 16);
  v22 = v18;
  v20 = v10;
  v23 = v19;
  *(a1 + 808) = sub_1AF2373FC(v14, "DOF_MAX_COC", &v20);
  CFX::RG::Pass::writeTo(a1, *(a1 + 800));
  CFX::RG::Pass::writeTo(a1, *(a1 + 808));
  return a1;
}

void sub_1AF23C240(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 448);
  if (v3)
  {
    v5 = sub_1AF1BB260(v3);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1AF15C2CC(v5);
      v32 = sub_1AF160B24(v7);
      LODWORD(v6) = sub_1AF15D5F0(v6);
      v31 = v6;
      v8 = CFX::RG::Pass::hash(a1);
      v9 = *(a1 + 440);
      v10 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ COERCE_UNSIGNED_INT64(v9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ COERCE_UNSIGNED_INT64(v9))));
      v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ v9)));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v32)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v32)));
      v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
      v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v6)))) >> 47));
      v15 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v14);
      *(a1 + 776) = v15;
      if (!v15)
      {
        *(a1 + 776) = sub_1AF23C42C(*(a2 + 32), v14);
        v16 = sub_1AF12E2AC(*(a1 + 432));
        v20 = objc_msgSend_resourceManager(v16, v17, v18, v19);
        v21 = objc_alloc_init(MEMORY[0x1E6974060]);
        v30 = (1.0 / *(a1 + 440));
        objc_msgSend_setConstantValue_type_withName_(v21, v22, &v30, 29, @"DownsampleRate");
        v29 = 32;
        objc_msgSend_setConstantValue_type_withName_(v21, v23, &v29, 29, @"MaxRadius");
        objc_msgSend_setConstantValue_type_withName_(v21, v24, &v32, 49, @"Mode");
        objc_msgSend_setConstantValue_type_withName_(v21, v25, &v31, 53, @"IsOrthographic");
        v26 = *(a1 + 776);
        v28 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v20, v27, @"dof_downsample_color_coc", v21);
        sub_1AF23355C((v26 + 16), v28);
      }
    }
  }
}

uint64_t sub_1AF23C42C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

const __CFDictionary *sub_1AF23C4B4(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  result = a1[56];
  if (result)
  {
    result = sub_1AF1BB260(result);
    if (result)
    {
      v7 = result;
      v8 = sub_1AF15C2CC(result);
      v9 = *(a2 + 24);
      v10 = a1[98];
      v11 = CFX::RG::Temporal::currentFrame(v8);
      Texture = CFX::GPUResourceManager::getTexture(v9, v10, v11);
      v13 = *(a2 + 24);
      v14 = a1[99];
      v15 = CFX::RG::Temporal::currentFrame(Texture);
      v16 = CFX::GPUResourceManager::getTexture(v13, v14, v15);
      v17 = *(a2 + 24);
      v18 = a1[100];
      v19 = CFX::RG::Temporal::currentFrame(v16);
      v20 = CFX::GPUResourceManager::getTexture(v17, v18, v19);
      v21 = *(a2 + 24);
      v22 = a1[101];
      v23 = CFX::RG::Temporal::currentFrame(v20);
      v24 = CFX::GPUResourceManager::getTexture(v21, v22, v23);
      objc_msgSend_setTexture_atIndex_(v5, v25, Texture, 0);
      objc_msgSend_setTexture_atIndex_(v5, v26, v16, 1);
      objc_msgSend_setTexture_atIndex_(v5, v27, v20, 2);
      objc_msgSend_setTexture_atIndex_(v5, v28, v24, 3);
      v64 = xmmword_1AFE20670;
      v57 = objc_msgSend_width(v20, v29, v30, v31);
      v35 = objc_msgSend_height(v20, v32, v33, v34);
      *&v36 = v57;
      *(&v36 + 1) = v35;
      sub_1AF15E280(v7, v36);
      v63 = v37;
      DWORD1(v65) = sub_1AF160DBC(v8);
      v38 = *(&v65 + 1) + -0.0001;
      v39 = sub_1AF160D20(v8);
      if (v38 < v39)
      {
        v39 = v38;
      }

      v40 = v65;
      *&v40 = v39;
      v58 = v40;
      v41 = sub_1AF160E58(v8);
      v42 = v58;
      *(&v42 + 2) = v41;
      v59 = v42;
      v43 = sub_1AF15D9E8(v7);
      v44 = v59;
      *(&v44 + 3) = v43;
      v65 = v44;
      objc_msgSend_setBytes_length_atIndex_(v5, v45, &v63, 48, 0);
      v46 = sub_1AF1403B4(a1[97] + 16);
      v47 = sub_1AFDE323C(v46);
      objc_msgSend_setComputePipelineState_(v5, v48, v47, v49);
      v62[0] = objc_msgSend_width(v20, v50, v51, v52);
      v62[1] = objc_msgSend_height(v20, v53, v54, v55);
      v62[2] = 1;
      v60 = xmmword_1AFE42F68;
      v61 = 1;
      return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v5, v56, v62, &v60);
    }
  }

  return result;
}

uint64_t sub_1AF23C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A588, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDEE87C();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A580, 0);
  *a1 = &unk_1F24E94A8;
  v8 = *(a5 + 16);
  v9 = *(a5 + 48);
  *(a1 + 464) = *(a5 + 32);
  *(a1 + 480) = v9;
  *(a1 + 448) = v8;
  v10 = *(a5 + 64);
  v11 = *(a5 + 80);
  v12 = *(a5 + 112);
  *(a1 + 528) = *(a5 + 96);
  *(a1 + 544) = v12;
  *(a1 + 496) = v10;
  *(a1 + 512) = v11;
  v13 = *(a5 + 128);
  v14 = *(a5 + 144);
  v15 = *(a5 + 160);
  *(a1 + 608) = *(a5 + 176);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  *(a1 + 560) = v13;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  v16 = sub_1AF130888(*(a1 + 432));
  v17 = v16 * 0.5 / sub_1AF130864(*(a1 + 432));
  *(a1 + 440) = v17;
  CFX::RG::TextureDescriptorReference::withPixelFormat((a1 + 448), MTLPixelFormatRGBA16Float, v22);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(v22, *(a1 + 440), v23);
  v18 = sub_1AF233CC8(a4, "DOF_GATHER", v23);
  *(a1 + 640) = v18;
  CFX::RG::Pass::writeTo(a1, v18);
  return a1;
}

void sub_1AF23C870(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF160A74(a1[76]);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47));
  v7 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v6);
  a1[77] = v7;
  if (!v7)
  {
    a1[77] = sub_1AF23C9AC(*(a2 + 32), v6);
    v8 = sub_1AF12E2AC(a1[54]);
    v12 = objc_msgSend_resourceManager(v8, v9, v10, v11);
    v13 = objc_alloc_init(MEMORY[0x1E6974060]);
    v15 = v13;
    v20 = 1056964608;
    if (v4)
    {
      if (v4 == 1)
      {
        v16 = 1058642330;
      }

      else
      {
        if (v4 != 2)
        {
LABEL_9:
          objc_msgSend_setConstantValue_type_withName_(v13, v14, &v20, 3, @"RadiusScale");
          v17 = a1[77];
          v19 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v12, v18, @"dof_gather", v15);
          sub_1AF23355C((v17 + 16), v19);

          return;
        }

        v16 = 1053609165;
      }
    }

    else
    {
      v16 = 1061997773;
    }

    v20 = v16;
    goto LABEL_9;
  }
}

uint64_t sub_1AF23C9AC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF23CA34(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = a1[78];
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = a1[79];
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 24);
  v15 = a1[80];
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  objc_msgSend_setTexture_atIndex_(v5, v18, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v19, v13, 1);
  objc_msgSend_setTexture_atIndex_(v5, v20, v17, 2);
  v21 = sub_1AF1403B4(a1[77] + 16);
  v23 = sub_1AFDE323C(v21);

  return objc_msgSend_dispatch_onTexture2D_(v5, v22, v23, v17);
}

CFX::RG::Temporal *sub_1AF23CB30(CFX::RG::RenderGraphContext *this, uint64_t a2, CFX::RG::Resource *a3, CFX::RG::Resource *a4)
{
  if (!*(a2 + 32))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE8D8(v8);
    }
  }

  v9 = CFX::RG::RenderGraphContext::currentBuilder(this);
  v10 = CFX::RG::Resource::constTextureDesc(*(a2 + 8));
  v11 = v10[1];
  v87[0] = *v10;
  v87[1] = v11;
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  v87[4] = v10[4];
  v87[5] = v12;
  v87[2] = v14;
  v87[3] = v13;
  v15 = v10[9];
  v17 = v10[6];
  v16 = v10[7];
  v87[8] = v10[8];
  v87[9] = v15;
  v87[6] = v17;
  v87[7] = v16;
  CFX::RG::TextureDescriptorReference::withSampleCount(v87, 1, &v77);
  v18 = CFX::RG::Resource::constTextureDesc(*(a2 + 16));
  v19 = v18[1];
  v76[0] = *v18;
  v76[1] = v19;
  v20 = v18[5];
  v22 = v18[2];
  v21 = v18[3];
  v76[4] = v18[4];
  v76[5] = v20;
  v76[2] = v22;
  v76[3] = v21;
  v23 = v18[9];
  v25 = v18[6];
  v24 = v18[7];
  v76[8] = v18[8];
  v76[9] = v23;
  v76[6] = v25;
  v76[7] = v24;
  CFX::RG::TextureDescriptorReference::withSampleCount(v76, 1, v75);
  v61 = v83;
  v62 = v84;
  v63 = v85;
  v64 = v86;
  v57 = v79;
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v55 = v77;
  v56 = v78;
  v72 = v75[7];
  v73 = v75[8];
  v74 = v75[9];
  v70 = v75[5];
  v71 = v75[6];
  v67 = v75[2];
  v68 = v75[3];
  v69 = v75[4];
  v65 = v75[0];
  v26 = *a2;
  v54[0] = "DOF downsample color CoC";
  v54[1] = v26;
  v54[2] = *(a2 + 24);
  v66 = v75[1];
  v27 = sub_1AF23CDEC(v9, this, v54);
  v29 = CFX::RG::copyIfNeeded(v9, *(a2 + 8), a3, &v77, 0, v28);
  v27[98] = v29;
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(v27, v29, v30);
  if (a3)
  {
    CFX::RG::Pass::dependsOn(v27, a3);
  }

  v32 = CFX::RG::copyIfNeeded(v9, *(a2 + 16), a4, v75, 0, v31);
  v27[99] = v32;
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(v27, v32, v33);
  if (a4)
  {
    CFX::RG::Pass::dependsOn(v27, a4);
  }

  v34 = *a2;
  v42[0] = "DOF Gather";
  v42[1] = v34;
  v49 = v83;
  v50 = v84;
  v51 = v85;
  v52 = v86;
  v45 = v79;
  v46 = v80;
  v47 = v81;
  v48 = v82;
  v43 = v77;
  v44 = v78;
  v53 = *(a2 + 32);
  v35 = sub_1AF23CE44(v9, v9, v42);
  v36 = v27[100];
  *(v35 + 78) = v36;
  v37 = CFX::RG::Temporal::currentFrame(v35);
  CFX::RG::Pass::readFrom(v35, v36, v37);
  v38 = v27[101];
  *(v35 + 79) = v38;
  v40 = CFX::RG::Temporal::currentFrame(v39);
  CFX::RG::Pass::readFrom(v35, v38, v40);
  return v35;
}

uint64_t sub_1AF23CDEC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23D074(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF23CE44(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23D0D4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23CEA0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF23CEDC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23CF14(uint64_t a1)
{
  *a1 = &unk_1F24E9500;

  return a1;
}

void sub_1AF23CF5C(uint64_t a1)
{
  *a1 = &unk_1F24E9500;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23CFC4(uint64_t a1)
{
  *a1 = &unk_1F24E9520;

  return a1;
}

void sub_1AF23D00C(uint64_t a1)
{
  *a1 = &unk_1F24E9520;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23D074(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x330u, 8u);
  return sub_1AF23C040(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23D0D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x288u, 8u);
  return sub_1AF23C708(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A598, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = a3;
    sub_1AFDEE95C();
    a2 = v19;
    a3 = v20;
  }

  if (byte_1ED73A590)
  {
    v8 = 0x783DB8AC31EF5870;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E9540;
  v9 = *(a5 + 16);
  v10 = *(a5 + 48);
  *(a1 + 456) = *(a5 + 32);
  *(a1 + 472) = v10;
  *(a1 + 440) = v9;
  v11 = *(a5 + 64);
  v12 = *(a5 + 80);
  v13 = *(a5 + 112);
  *(a1 + 520) = *(a5 + 96);
  *(a1 + 536) = v13;
  *(a1 + 488) = v11;
  *(a1 + 504) = v12;
  v14 = *(a5 + 128);
  v15 = *(a5 + 144);
  v16 = *(a5 + 160);
  *(a1 + 600) = *(a5 + 176);
  *(a1 + 568) = v15;
  *(a1 + 584) = v16;
  *(a1 + 552) = v14;
  *(a1 + 616) = 0u;
  CFX::RG::TextureDescriptorReference::withSizeFactor((a5 + 24), 0.5, v22);
  v21[6] = v22[6];
  v21[7] = v22[7];
  v21[8] = v22[8];
  v21[9] = v22[9];
  v21[2] = v22[2];
  v21[3] = v22[3];
  v21[4] = v22[4];
  v21[5] = v22[5];
  v21[0] = v22[0];
  v21[1] = v22[1];
  v17 = sub_1AF233CC8(a4, "DOUGHNUT_BOKEH_OUTPUT", v21);
  *(a1 + 624) = v17;
  CFX::RG::Pass::writeTo(a1, v17);
  return a1;
}

void sub_1AF23D294(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF1BB260(a1[55]);
  v5 = sub_1AF15CD74(v4);
  v6 = sub_1AF163B3C(v5);
  v20 = v6;
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v6)))) >> 47));
  v9 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v8);
  a1[76] = v9;
  if (!v9)
  {
    a1[76] = sub_1AF23D398(*(a2 + 32), v8);
    v10 = sub_1AF12E2AC(a1[54]);
    v14 = objc_msgSend_resourceManager(v10, v11, v12, v13);
    v15 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v15, v16, &v20, 53, @"mask_enabled");
    v17 = a1[76];
    v19 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v14, v18, @"doughnut_bokeh", v15);
    sub_1AF23355C((v17 + 16), v19);
  }
}

uint64_t sub_1AF23D398(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF23D420(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = sub_1AF1BB260(a1[55]);
  v7 = sub_1AF15CD74(v6);
  v8 = v7;
  if (v7)
  {
    v9 = sub_1AF160FEC(v7);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = v9 / 1000.0;
  v27 = v10;
  v28 = sub_1AF163AA0(v8);
  v29 = sub_1AF160E58(v8);
  v11 = *(a2 + 24);
  v12 = a1[77];
  v14 = CFX::RG::Temporal::currentFrame(v13);
  Texture = CFX::GPUResourceManager::getTexture(v11, v12, v14);
  v16 = *(a2 + 24);
  v17 = a1[78];
  v18 = CFX::RG::Temporal::currentFrame(Texture);
  v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  objc_msgSend_setBytes_length_atIndex_(v5, v20, &v27, 24, 0);
  objc_msgSend_setTexture_atIndex_(v5, v21, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v22, v19, 1);
  v23 = sub_1AF1403B4(a1[76] + 16);
  v24 = sub_1AFDE323C(v23);
  return objc_msgSend_dispatch_onTexture2D_(v5, v25, v24, v19);
}

CFX::RG::Temporal *sub_1AF23D550(CFX::RG *a1, CFX::RG::RenderGraphContext *a2, CFX::RG::Resource **a3, CFX::RG::Resource *a4)
{
  v8 = CFX::RG::Resource::constTextureDesc(a3[22]);
  v9 = v8[1];
  v29[0] = *v8;
  v29[1] = v9;
  v10 = v8[5];
  v12 = v8[2];
  v11 = v8[3];
  v29[4] = v8[4];
  v29[5] = v10;
  v29[2] = v12;
  v29[3] = v11;
  v13 = v8[9];
  v15 = v8[6];
  v14 = v8[7];
  v29[8] = v8[8];
  v29[9] = v13;
  v29[6] = v15;
  v29[7] = v14;
  CFX::RG::TextureDescriptorReference::withSampleCount(v29, 1, v28);
  v17 = CFX::RG::copyIfNeeded(a1, a3[22], a4, v28, 0, v16);
  v18 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v17);
  v19 = *(v18 + 16);
  v26 = *v18;
  v27 = v19;
  v23 = "DoughnutBokehPass";
  v24 = *a3;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v25, &v26);
  v20 = sub_1AF23D664(a1, a1, &v23);
  *(v20 + 77) = v17;
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(v20, v17, v21);
  return v20;
}

uint64_t sub_1AF23D664(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23D7A8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23D6C0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23D6F8(uint64_t a1)
{
  *a1 = &unk_1F24E9598;

  return a1;
}

void sub_1AF23D740(uint64_t a1)
{
  *a1 = &unk_1F24E9598;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23D7A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x278u, 8u);
  return sub_1AF23D134(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23D808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_1ED73A5A8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE9A8();
  }

  if (byte_1ED73A5A0)
  {
    v10 = 0xDFD87824203AD5B5;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v10, a5);
  *a1 = &unk_1F24E95B8;
  *(a1 + 456) = 0;
  v11 = sub_1AF12F10C(*(a1 + 432));
  v12 = sub_1AF1BB260(v11);
  if (v12)
  {
    if (sub_1AF15CEC0(v12))
    {
      v13 = 2560;
    }

    else
    {
      v13 = 512;
    }
  }

  else
  {
    v13 = 512;
  }

  v15 = a4[4];
  v14 = a4[5];
  *(a1 + 448) = a4[14];
  v16 = *(a1 + 432);
  v23 = 0;
  v24 = v13;
  v25 = *(a1 + 441);
  v26 = 50;
  v27 = 0;
  if ((atomic_load_explicit(&qword_1ED73A5A8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE9A8();
  }

  if (byte_1ED73A5A0)
  {
    v17 = 0xDFD87824203AD5B5;
  }

  else
  {
    v17 = 0;
  }

  v28 = v17;
  v29 = -1;
  v30[0] = a2;
  v30[1] = a3;
  v18 = sub_1AF23498C(v30, 0x48u, 8u);
  sub_1AF2603E8(v18, v16, &v23, *(a1 + 448));
  *(a1 + 456) = v19;
  if (v15)
  {
    CFX::RG::Pass::renderTo(a1, v15, 0x100000002, 0);
  }

  if (v14)
  {
    CFX::RG::Pass::renderTo(a1, v14, 0x200000002, -1);
  }

  CFX::RG::Pass::renderTo(a1, a4[6], 0x100000002, 3);
  CFX::RG::Pass::renderTo(a1, a4[7], 0x100000002, 1);
  CFX::RG::Pass::renderTo(a1, a4[8], 0x100000002, 2);
  CFX::RG::Pass::renderTo(a1, a4[9], 0x100000002, 0);
  CFX::RG::Pass::renderTo(a1, a4[10], 0x100000002, 4);
  CFX::RG::Pass::renderTo(a1, a4[11], 0x100000002, 5);
  CFX::RG::Pass::renderTo(a1, a4[12], 0x100000002, 6);
  CFX::RG::Pass::renderTo(a1, a4[13], 0x100000002, 7);
  for (i = 0; i != 256; i += 32)
  {
    v21 = ((*(*a1 + 32))(a1) + i);
    *v21 = 0u;
    v21[1] = 0u;
  }

  sub_1AF130538(*(a1 + 432), a4[10] != 0);
  return a1;
}

double sub_1AF23DAF0(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1AF260410(a1[57], a2, a3, a4);
  v5 = (*(*a1 + 32))(a1);
  v6 = sub_1AF12F10C(a1[54]);
  if (v6)
  {
    v8 = sub_1AF1BB260(v6);
    if (v8)
    {
      v9 = sub_1AF15D6DC(v8);
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      result = v9;
      *(v5 + 32) = 0;
      *(v5 + 56) = result;
    }
  }

  return result;
}

uint64_t sub_1AF23DB6C(void *a1, const char *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = a1[54];
  v7 = sub_1AF23B41C(a1[56]);
  sub_1AF131034(v6, v7);
  sub_1AF260B04(a1[57], a2, a3, 0);
  v8 = a1[54];

  return sub_1AF131034(v8, 0);
}

uint64_t sub_1AF23DBE0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1AF12DDCC(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  return sub_1AF23DC4C(a1, a2, &v7);
}

uint64_t sub_1AF23DC4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23DCE0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23DCA8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23DCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D0u, 8u);
  return sub_1AF23D808(v8, *a3, a3[1], a4, *a5);
}

uint64_t sub_1AF23DD40(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v8 = *a5;
  *&v64[0] = "HybridCompositePass";
  *(&v64[0] + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A5B8, memory_order_acquire) & 1) == 0)
  {
    v62 = a2;
    v63 = a3;
    sub_1AFDEE9F4();
    a2 = v62;
    a3 = v63;
  }

  if (byte_1ED73A5B0)
  {
    v9 = 0x2E8422031D6ACA49;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v64, v9, 0);
  *a1 = &unk_1F24E9610;
  memcpy((a1 + 440), a5, 0x120uLL);
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((a1 + 448), MTLPixelFormatRGBA16Float, v64);
  *(a1 + 736) = sub_1AF233CC8(v10, "HybridCompositeTmp", v64);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((a1 + 448), MTLPixelFormatRGBA16Float, v64);
  *(a1 + 744) = sub_1AF233CC8(v11, "HybridCompositePassOutput", v64);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat((a1 + 448), MTLPixelFormatRGBA16Float, v64);
  v13 = sub_1AF233CC8(v12, "HybridCompositePassOutput", v64);
  *(a1 + 752) = v13;
  v14 = *(a1 + 720);
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  v16 = *(a1 + 608);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(a1 + 664);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  v22 = *(a1 + 672);
  v24 = CFX::RG::Temporal::currentFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  v25 = *(a1 + 616);
  v27 = CFX::RG::Temporal::currentFrame(v26);
  CFX::RG::Pass::readFrom(a1, v25, v27);
  v28 = *(a1 + 624);
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(a1, v28, v30);
  v31 = *(a1 + 632);
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(a1, v31, v33);
  v34 = *(a1 + 640);
  v36 = CFX::RG::Temporal::currentFrame(v35);
  CFX::RG::Pass::readFrom(a1, v34, v36);
  v37 = *(a1 + 648);
  v39 = CFX::RG::Temporal::currentFrame(v38);
  CFX::RG::Pass::readFrom(a1, v37, v39);
  v40 = *(a1 + 656);
  v42 = CFX::RG::Temporal::currentFrame(v41);
  CFX::RG::Pass::readFrom(a1, v40, v42);
  v43 = *(a1 + 680);
  v45 = CFX::RG::Temporal::currentFrame(v44);
  CFX::RG::Pass::readFrom(a1, v43, v45);
  v46 = *(a1 + 696);
  v48 = CFX::RG::Temporal::currentFrame(v47);
  CFX::RG::Pass::readFrom(a1, v46, v48);
  v49 = *(a1 + 688);
  v51 = CFX::RG::Temporal::currentFrame(v50);
  CFX::RG::Pass::readFrom(a1, v49, v51);
  v52 = *(a1 + 712);
  v54 = CFX::RG::Temporal::currentFrame(v53);
  CFX::RG::Pass::readFrom(a1, v52, v54);
  v55 = *(a1 + 704);
  v57 = CFX::RG::Temporal::currentFrame(v56);
  CFX::RG::Pass::readFrom(a1, v55, v57);
  v58 = *(a1 + 736);
  v60 = CFX::RG::Temporal::currentFrame(v59);
  CFX::RG::Pass::readFrom(a1, v58, v60);
  CFX::RG::Pass::writeTo(a1, *(a1 + 736));
  CFX::RG::Pass::writeTo(a1, *(a1 + 752));
  CFX::RG::Pass::writeTo(a1, *(a1 + 744));
  return a1;
}

uint64_t sub_1AF23E06C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v36 = objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = sub_1AF12DDCC(*(a1 + 432));
  v9 = sub_1AF1D0008(v8, 0);
  v12 = objc_msgSend_textureForMaterialProperty_(v4, v10, v9, v11, v36);
  v39 = v9;
  sub_1AF1660D8(v9);
  v13 = *(a1 + 624);
  if (v13)
  {
    LODWORD(v13) = *(a1 + 632) != 0;
  }

  v38 = v13;
  v14 = *(a1 + 640);
  v15 = *(a1 + 648);
  v16 = *(a1 + 656);
  v17 = *(a1 + 696);
  v18 = *(a1 + 712);
  v19 = sub_1AF1D0398(v8);
  v20 = sub_1AF1D02FC(v8);
  v21 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 672)) + 4) << 48;
  v40 = 0;
  if (v14)
  {
    v37 = v21 != *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 640)) + 4) << 48;
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v37 = 0;
  if (v15)
  {
LABEL_5:
    HIBYTE(v40) = v21 != *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 648)) + 4) << 48;
  }

LABEL_6:
  if (v16)
  {
    LOBYTE(v40) = v21 != *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 656)) + 4) << 48;
  }

  v22 = CFX::RG::Pass::hash(a1);
  v23 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v39)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v39)));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ (v12 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ (v12 != 0))));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v38)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v38)));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ (v14 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ (v14 != 0))));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ (v15 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ (v15 != 0))));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ (v16 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ (v16 != 0))));
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ (v17 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ (v17 != 0))));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ (v18 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ (v18 != 0))));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ (v19 != v20))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ (v19 != v20))));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v37)));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ HIBYTE(v40))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ HIBYTE(v40))));
  v34 = 0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ v40)))) ^ ((0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ v40)))) >> 47)));
  *(a1 + 728) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void *sub_1AF23E5E4(uint64_t *a1, uint64_t a2, id *this)
{
  v144 = *MEMORY[0x1E69E9840];
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[91] + 16))
  {
    v6 = result;
    v7 = sub_1AF12E2AC(a1[54]);
    v129 = sub_1AF12DDCC(a1[54]);
    v8 = *(a2 + 24);
    v9 = a1[76];
    v10 = CFX::RG::Temporal::currentFrame(v129);
    Texture = CFX::GPUResourceManager::getTexture(v8, v9, v10);
    v12 = *(a2 + 24);
    v13 = a1[84];
    v14 = CFX::RG::Temporal::currentFrame(Texture);
    v15 = CFX::GPUResourceManager::getTexture(v12, v13, v14);
    v16 = *(a2 + 24);
    v17 = a1[77];
    v18 = CFX::RG::Temporal::currentFrame(v15);
    v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
    v20 = *(a2 + 24);
    v21 = a1[83];
    v22 = CFX::RG::Temporal::currentFrame(v19);
    v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
    v24 = *(a2 + 24);
    v25 = a1[90];
    v26 = CFX::RG::Temporal::currentFrame(v23);
    v27 = CFX::GPUResourceManager::getTexture(v24, v25, v26);
    v31 = objc_msgSend_resourceManager(v7, v28, v29, v30);
    v34 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v31, v32, v7, v33);
    objc_msgSend_setTexture_atIndex_(v6, v35, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v6, v36, v19, 1);
    objc_msgSend_setTexture_atIndex_(v6, v37, v15, 2);
    objc_msgSend_setTexture_atIndex_(v6, v38, v23, 3);
    objc_msgSend_setTexture_atIndex_(v6, v39, v27, 4);
    v41 = objc_msgSend_setTexture_atIndex_(v6, v40, v34, 5);
    v42 = a1[78];
    if (v42)
    {
      v43 = *(a2 + 24);
      v44 = CFX::RG::Temporal::currentFrame(v41);
      v45 = CFX::GPUResourceManager::getTexture(v43, v42, v44);
      v41 = objc_msgSend_setTexture_atIndex_(v6, v46, v45, 7);
    }

    v47 = a1[79];
    if (v47)
    {
      v48 = *(a2 + 24);
      v49 = CFX::RG::Temporal::currentFrame(v41);
      v50 = CFX::GPUResourceManager::getTexture(v48, v47, v49);
      v41 = objc_msgSend_setTexture_atIndex_(v6, v51, v50, 8);
    }

    v52 = a1[80];
    if (v52)
    {
      v53 = *(a2 + 24);
      v54 = CFX::RG::Temporal::currentFrame(v41);
      v55 = CFX::GPUResourceManager::getTexture(v53, v52, v54);
      v41 = objc_msgSend_setTexture_atIndex_(v6, v56, v55, 9);
    }

    v57 = a1[81];
    if (v57)
    {
      v58 = *(a2 + 24);
      v59 = CFX::RG::Temporal::currentFrame(v41);
      v60 = CFX::GPUResourceManager::getTexture(v58, v57, v59);
      v41 = objc_msgSend_setTexture_atIndex_(v6, v61, v60, 10);
    }

    v62 = a1[82];
    if (v62)
    {
      v63 = *(a2 + 24);
      v64 = CFX::RG::Temporal::currentFrame(v41);
      v65 = CFX::GPUResourceManager::getTexture(v63, v62, v64);
      v66 = *(a2 + 24);
      v67 = a1[85];
      v68 = CFX::RG::Temporal::currentFrame(v65);
      v69 = CFX::GPUResourceManager::getTexture(v66, v67, v68);
      objc_msgSend_setTexture_atIndex_(v6, v70, v69, 11);
      v41 = objc_msgSend_setTexture_atIndex_(v6, v71, v65, 12);
    }

    v72 = a1[87];
    if (v72)
    {
      v73 = *(a2 + 24);
      v74 = CFX::RG::Temporal::currentFrame(v41);
      v75 = CFX::GPUResourceManager::getTexture(v73, v72, v74);
      v76 = *(a2 + 24);
      v77 = a1[86];
      v78 = CFX::RG::Temporal::currentFrame(v75);
      v79 = CFX::GPUResourceManager::getTexture(v76, v77, v78);
      objc_msgSend_setTexture_atIndex_(v6, v80, v79, 13);
      v41 = objc_msgSend_setTexture_atIndex_(v6, v81, v75, 14);
    }

    v82 = a1[89];
    if (v82)
    {
      v83 = *(a2 + 24);
      v84 = CFX::RG::Temporal::currentFrame(v41);
      v85 = CFX::GPUResourceManager::getTexture(v83, v82, v84);
      v86 = *(a2 + 24);
      v87 = a1[88];
      v88 = CFX::RG::Temporal::currentFrame(v85);
      v89 = CFX::GPUResourceManager::getTexture(v86, v87, v88);
      objc_msgSend_setTexture_atIndex_(v6, v90, v89, 15);
      objc_msgSend_setTexture_atIndex_(v6, v91, v85, 16);
    }

    memset(v138, 0, sizeof(v138));
    v94 = sub_1AF1D0008(v129, 0);
    if (v94)
    {
      v95 = objc_msgSend_textureForMaterialProperty_(v7, v92, v94, v93);
      if (v95)
      {
        objc_msgSend_setTexture_atIndex_(v6, v96, v95, 6);
      }

      else
      {
        v97 = sub_1AF1660D8(v94);
        if (v97)
        {
          v140 = *v97;
        }
      }

      v98 = sub_1AF167220(v94);
      if (v98)
      {
        v145 = __invert_f4(*v98);
      }

      else
      {
        v145 = **&MEMORY[0x1E69E9B18];
      }

      v138[1] = v145;
    }

    result = sub_1AF12F10C(a1[54]);
    if (result)
    {
      result = sub_1AF1BB260(result);
      if (result)
      {
        v99 = result;
        v100 = sub_1AF12F10C(a1[54]);
        sub_1AF27F12C(v100, v131);
        v101 = sub_1AF13050C(a1[54], 1);
        v127 = v101[1];
        v128 = *v101;
        v125 = v101[3];
        v126 = v101[2];
        v130 = sub_1AF12FCE8(a1[54], 0);
        v146.columns[1] = v127;
        v146.columns[0] = v128;
        v132[0] = v128;
        v132[1] = v127;
        v146.columns[3] = v125;
        v146.columns[2] = v126;
        v132[2] = v126;
        v132[3] = v125;
        v133 = __invert_f4(v146);
        v102 = sub_1AF15E62C(v131, &v130);
        v103 = *(v102 + 1);
        v104 = *(v102 + 2);
        v105 = *(v102 + 3);
        v134 = *v102;
        v135 = v103;
        v136 = v104;
        v137 = v105;
        v106 = sub_1AF12EF08(a1[54]);
        sub_1AF1D04D4(v129, v106);
        v141 = v107;
        v142 = *sub_1AF1D048C(v129);
        v143 = sub_1AF15D6DC(v99);
        if (v94)
        {
          v109 = sub_1AF166598(v94);
        }

        else
        {
          v109 = 0.0;
        }

        v139 = v109;
        v110 = objc_msgSend_setBytes_length_atIndex_(v6, v108, v132, 400, 8, *&v125, *&v126, *&v127, *&v128);
        v111 = *(a2 + 24);
        v112 = a1[94];
        v113 = CFX::RG::Temporal::currentFrame(v110);
        v114 = CFX::GPUResourceManager::getTexture(v111, v112, v113);
        v116 = objc_msgSend_setTexture_atIndex_(v6, v115, v114, 17);
        v117 = *(a2 + 24);
        v118 = a1[93];
        v119 = CFX::RG::Temporal::currentFrame(v116);
        v120 = CFX::GPUResourceManager::getTexture(v117, v118, v119);
        objc_msgSend_setTexture_atIndex_(v6, v121, v120, 18);
        v122 = sub_1AF1403B4(a1[91] + 16);
        v123 = sub_1AFDE323C(v122);
        return objc_msgSend_dispatch_onTexture2D_(v6, v124, v123, v120);
      }
    }
  }

  return result;
}

uint64_t sub_1AF23EB8C(CFX::RG::RenderGraphContext *a1, uint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);

  return sub_1AF23EBCC(v4, a1, a2);
}

uint64_t sub_1AF23EBCC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23ED20(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23EC28(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23EC60(uint64_t a1)
{
  *a1 = &unk_1F24E9668;

  return a1;
}

void sub_1AF23ECB0(uint64_t a1)
{
  *a1 = &unk_1F24E9668;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23ED20(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2F8u, 8u);
  return sub_1AF23DD40(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23ED80(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v8 = *a5;
  *&v30 = "IrradianceCachePass";
  *(&v30 + 1) = v8;
  if ((atomic_load_explicit(&qword_1ED73A5C8, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v27 = a3;
    sub_1AFDEEA40();
    a2 = v26;
    a3 = v27;
  }

  if (byte_1ED73A5C0)
  {
    v9 = 0x4C595C7672A6E999;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v30, v9, 0);
  *a1 = &unk_1F24E9688;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  sub_1AF23EFD8(a1, a4);
  a5[28] = sub_1AF1403B4(*(a1 + 712) + 16);
  a5[29] = sub_1AF1403B4(*(a1 + 712) + 24);
  *(a5 + 60) = *(a1 + 680);
  v10 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, a5[23]) + 4);
  *(a1 + 696) = *(a1 + 712) + 80;
  v30 = 0uLL;
  v31 = 0;
  if (((v10 + ((v10 >> 29) & 3)) << 16) >> 18 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v10 + ((v10 >> 29) & 3)) >> 2;
  }

  v12 = (((v10 >> 16) + (((v10 >> 16) >> 29) & 3)) << 16) >> 18;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  CFXTextureDescriptorMake2D(v11, v13, 0x19u, &v30);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v28 = v30;
  v29 = v31;
  *(a1 + 720) = sub_1AF2373FC(v14, "Irradiance_Cache_Reactive_Mask_Target", &v28);
  v15 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v28 = v30;
  v29 = v31;
  v16 = sub_1AF2373FC(v15, "Irradiance_Cache_Reactive_TMP_Mask_Target", &v28);
  *(a1 + 728) = v16;
  v17 = *(a1 + 608);
  v18 = CFX::RG::Temporal::currentFrame(v16);
  CFX::RG::Pass::readFrom(a1, v17, v18);
  v19 = *(a1 + 624);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  v22 = *(a1 + 728);
  v24 = CFX::RG::Temporal::currentFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  CFX::RG::Pass::writeTo(a1, *(a1 + 728));
  if (*(a1 + 689) == 1)
  {
    CFX::RG::Pass::writeTo(a1, *(*(a1 + 712) + 64));
  }

  return a1;
}

void sub_1AF23EFD8(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  v8 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 624)) + 4);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = sub_1AF12DDCC(*(a1 + 432));
  v11 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v10)));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v8)));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ (v8 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ (v8 >> 16))));
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ *(a1 + 689));
  v16 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47)));
  *(a1 + 712) = v16;
  if (!v16)
  {
    sub_1AF240058();
  }

  v17 = sub_1AF12F10C(*(a1 + 432));
  if (v17)
  {
    if (sub_1AF1BB260(v17))
    {
      v18 = sub_1AF12F10C(*(a1 + 432));
      sub_1AF27F12C(v18, &v22);
      v19 = (v23 / 180.0) * 3.14159265;
      v20 = sub_1AF130888(*(a1 + 432));
      v21 = fmax((1.0 / (v8 >> 16)), (v8 >> 16) / (v8 * v8)) * (*(a1 + 684) * v19) / (v20 / sub_1AF130864(*(a1 + 432)));
      *(a1 + 680) = v21;
    }
  }
}

uint64_t sub_1AF23F330(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF23EFD8(a1, a2);

  return sub_1AF23F370(a1, a2);
}

uint64_t sub_1AF23F370(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  objc_msgSend_resourceManager(v4, v5, v6, v7);
  CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 624));
  v8 = sub_1AF12DDCC(*(a1 + 432));
  v9 = sub_1AF1D0140(v8);
  v10 = sub_1AF1D005C(v8, 0) != 0;
  v23 = v10;
  v22 = sub_1AF1449E0(v9);
  v11 = sub_1AF1449F0(v9) != 0;
  v21 = v11;
  v12 = CFX::RG::Pass::hash(a1);
  v13 = sub_1AF12DDCC(*(a1 + 432));
  v14 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v13)));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v22)));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47))) ^ v11)));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v10)));
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = 0x9DDFEA08EB382D69 * (v18 ^ *(a1 + 688));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47)));
  *(a1 + 704) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void *sub_1AF23F734(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  result = sub_1AF12E2AC(*(a1 + 432));
  v8 = result;
  if (!*(*(a1 + 696) + 592))
  {
    if (!*(*(a1 + 704) + 16))
    {
      return result;
    }

    objc_msgSend_setBuffer_offset_atIndex_(v5, v7, *(*(a1 + 712) + 16), 0, 0);
    v9 = sub_1AF1403B4(*(a1 + 704) + 16);
    v10 = sub_1AFDE323C(v9);
    objc_msgSend_setComputePipelineState_(v5, v11, v10, v12);
    result = objc_msgSend_dispatchOnGrid1D_(v5, v13, 30000, v14);
  }

  if (*(*(a1 + 704) + 48))
  {
    objc_msgSend_setBuffer_offset_atIndex_(v5, v7, *(*(a1 + 712) + 48), 0, 0);
    v15 = sub_1AF1403B4(*(a1 + 704) + 24);
    v16 = sub_1AFDE323C(v15);
    objc_msgSend_dispatchOne_(v5, v17, v16, v18);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v19, *(*(a1 + 712) + 48), 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v20, *(*(a1 + 712) + 40), 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v21, *(*(a1 + 712) + 16), 0, 10);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v22, *(*(a1 + 712) + 24), 0, 11);
    v23 = sub_1AF1403B4(*(a1 + 704) + 32);
    v24 = sub_1AFDE323C(v23);
    objc_msgSend_setComputePipelineState_(v5, v25, v24, v26);
    objc_msgSend_dispatchOnGrid1D_(v5, v27, 480000, v28);
    v29 = sub_1AF1403B4(*(a1 + 704) + 48);
    v30 = sub_1AFDE323C(v29);
    *v196 = objc_msgSend_threadExecutionWidth(v30, v31, v32, v33);
    *&v196[8] = vdupq_n_s64(1uLL);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v34, *(*(a1 + 712) + 48), 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v5, v35, v196, 24, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v36, *(*(a1 + 712) + 56), 0, 2);
    v37 = sub_1AF1403B4(*(a1 + 704) + 40);
    v38 = sub_1AFDE323C(v37);
    objc_msgSend_dispatchOne_(v5, v39, v38, v40);
    v41 = sub_1AF12DDCC(*(a1 + 432));
    result = sub_1AF12F10C(*(a1 + 432));
    if (result)
    {
      result = sub_1AF1BB260(result);
      if (result)
      {
        v42 = sub_1AF12F10C(*(a1 + 432));
        sub_1AF27F12C(v42, v195);
        v43 = sub_1AF13050C(*(a1 + 432), 1);
        v191 = v43[1];
        v192 = *v43;
        v189 = v43[3];
        v190 = v43[2];
        v194 = sub_1AF12FCE8(*(a1 + 432), 0);
        v44 = sub_1AF1D0140(v41);
        v45 = *(a2 + 24);
        v46 = *(a1 + 608);
        v47 = CFX::RG::Temporal::currentFrame(v44);
        Texture = CFX::GPUResourceManager::getTexture(v45, v46, v47);
        v48 = *(a2 + 24);
        v49 = *(a1 + 616);
        v50 = CFX::RG::Temporal::currentFrame(Texture);
        v188 = CFX::GPUResourceManager::getTexture(v48, v49, v50);
        v51 = *(a2 + 24);
        v52 = *(a1 + 624);
        v53 = CFX::RG::Temporal::currentFrame(v188);
        v54 = CFX::GPUResourceManager::getTexture(v51, v52, v53);
        v55 = *(a2 + 24);
        v56 = *(a1 + 632);
        v57 = CFX::RG::Temporal::currentFrame(v54);
        v58 = CFX::GPUResourceManager::getTexture(v55, v56, v57);
        v60 = v58;
        v61 = *(a1 + 640);
        if (v61)
        {
          v62 = *(a2 + 24);
          v63 = CFX::RG::Temporal::currentFrame(v58);
          v61 = CFX::GPUResourceManager::getTexture(v62, v61, v63);
        }

        objc_msgSend_setTexture_atIndex_(v5, v59, v60, 0);
        objc_msgSend_setTexture_atIndex_(v5, v64, v61, 1);
        objc_msgSend_setTexture_atIndex_(v5, v65, v54, 2);
        v68 = sub_1AF1D005C(v41, 0);
        if (v68)
        {
          v69 = objc_msgSend_textureForMaterialProperty_(v8, v66, v68, v67);
          if (v69)
          {
            objc_msgSend_setTexture_atIndex_(v5, v70, v69, 6);
          }

          v71 = sub_1AF167220(v68);
          v72 = MEMORY[0x1E69E9B18];
          if (v71)
          {
            v72 = v71;
          }

          v73 = *v72;
          v74 = v72[1];
          v75 = v72[2];
          v76 = v72[3];
          v77 = *(a1 + 696);
          v77[32] = v73;
          v77[33] = v74;
          v77[34] = v75;
          v77[35] = v76;
        }

        v78 = *(a1 + 696);
        v78[8] = v192;
        v78[9] = v191;
        v78[10] = v190;
        v78[11] = v189;
        v79 = sub_1AF15E62C(v195, &v194);
        v80 = 0;
        v81 = *(v79 + 1);
        v82 = *(v79 + 2);
        v83 = *(v79 + 3);
        v84 = *(a1 + 696);
        v84[16] = *v79;
        v84[17] = v81;
        v84[18] = v82;
        v84[19] = v83;
        v85 = *(a1 + 712);
        v86 = v85[21];
        v87 = v85[22];
        v88 = v85[23];
        v89 = v85[24];
        v90 = v85[14];
        v91 = v85[15];
        v92 = v85[16];
        v197[0] = v85[13];
        v197[1] = v90;
        v197[2] = v91;
        v197[3] = v92;
        do
        {
          *(&v198 + v80 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(v197[v80])), v87, *&v197[v80], 1), v88, v197[v80], 2), v89, v197[v80], 3);
          ++v80;
        }

        while (v80 != 4);
        v93 = v199;
        v94 = v200;
        v95 = v201;
        v96 = *(a1 + 696);
        *v96 = v198;
        v96[1] = v93;
        v96[2] = v94;
        v96[3] = v95;
        *(*(a1 + 696) + 320) = __invert_f4(*(*(a1 + 712) + 336));
        *(*(a1 + 696) + 192) = __invert_f4(*(*(a1 + 712) + 208));
        *(*(a1 + 696) + 384) = __invert_f4(*(*(a1 + 712) + 80));
        if (v68)
        {
          v98 = sub_1AF166598(v68);
        }

        else
        {
          v98 = 0.0;
        }

        v99 = *(a1 + 696);
        *(v99 + 584) = v98;
        *(v99 + 596) = *(a1 + 680);
        objc_msgSend_setBytes_length_atIndex_(v5, v97, *(a1 + 712) + 80, 608, 8);
        sub_1AF144838(v44, v5);
        v100 = sub_1AF1448D8(v44);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v101, v100, 0, 0);
        v102 = sub_1AF1448D0(v44);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v5, v103, v102, 1);
        if (sub_1AF1449E0(v44))
        {
          v104 = sub_1AF1448E0(v44);
          objc_msgSend_setBuffer_offset_atIndex_(v5, v105, v104, 0, 3);
        }

        if (sub_1AF1449F0(v44))
        {
          v106 = sub_1AF1403B4(*(a1 + 704) + 48);
          v107 = sub_1AFDE323C(v106);
          v108 = sub_1AF144918(v44, v107);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v5, v109, v108, 4);
        }

        v110 = sub_1AF1448E8(v44);
        v114 = sub_1AF144A00(v44, v111, v112, v113);
        objc_msgSend_useResources_count_usage_(v5, v115, v110, v114, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v116, *(*(a1 + 712) + 48), 0, 5);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v117, *(*(a1 + 712) + 40), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v118, *(*(a1 + 712) + 16), 0, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v119, *(*(a1 + 712) + 24), 0, 11);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v120, *(*(a1 + 712) + 32), 0, 12);
        v121 = *(a1 + 704);
        if (*(*(a1 + 696) + 592))
        {
          v122 = v121 + 48;
        }

        else
        {
          v122 = v121 + 56;
        }

        v123 = sub_1AF1403B4(v122);
        v124 = sub_1AFDE323C(v123);
        objc_msgSend_setComputePipelineState_(v5, v125, v124, v126);
        v127 = *(*(a1 + 712) + 56);
        v198 = *v196;
        *&v199 = *&v196[16];
        v129 = objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v5, v128, v127, 0, &v198);
        v130 = *(a2 + 24);
        v131 = *(a1 + 720);
        v132 = CFX::RG::Temporal::currentFrame(v129);
        v133 = CFX::GPUResourceManager::getTexture(v130, v131, v132);
        v134 = *(a2 + 24);
        v135 = *(a1 + 720);
        v136 = CFX::RG::Temporal::currentFrame(v133);
        v137 = CFX::GPUResourceManager::getTexture(v134, v135, v136);
        objc_msgSend_setTexture_atIndex_(v5, v138, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v5, v139, v54, 1);
        v140 = sub_1AF2757FC(v8, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v5, v141, v140, 3);
        objc_msgSend_setTexture_atIndex_(v5, v142, v133, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v143, *(*(a1 + 712) + 48), 0, 12);
        v144 = sub_1AF1403B4(*(a1 + 704) + 72);
        v145 = sub_1AFDE323C(v144);
        objc_msgSend_dispatch_onTexture2D_(v5, v146, v145, v133);
        objc_msgSend_setTexture_atIndex_(v5, v147, v133, 0);
        objc_msgSend_setTexture_atIndex_(v5, v148, v137, 1);
        *&v198 = COERCE_UNSIGNED_INT(1.0 / objc_msgSend_width(v133, v149, v150, v151));
        objc_msgSend_setBytes_length_atIndex_(v5, v152, &v198, 8, 0);
        v153 = sub_1AF1403B4(*(a1 + 704) + 80);
        v154 = sub_1AFDE323C(v153);
        objc_msgSend_dispatch_onTexture2D_(v5, v155, v154, v137);
        objc_msgSend_setTexture_atIndex_(v5, v156, v137, 0);
        objc_msgSend_setTexture_atIndex_(v5, v157, v133, 1);
        v161 = objc_msgSend_height(v133, v158, v159, v160);
        LODWORD(v162) = 0;
        *(&v162 + 1) = 1.0 / v161;
        *&v198 = v162;
        objc_msgSend_setBytes_length_atIndex_(v5, v163, &v198, 8, 0);
        v164 = sub_1AF1403B4(*(a1 + 704) + 80);
        v165 = sub_1AFDE323C(v164);
        result = objc_msgSend_dispatch_onTexture2D_(v5, v166, v165, v133);
        if (*(a1 + 689) == 1)
        {
          objc_msgSend_setTexture_atIndex_(v5, v167, Texture, 0);
          objc_msgSend_setTexture_atIndex_(v5, v168, v54, 1);
          objc_msgSend_setTexture_atIndex_(v5, v169, v188, 2);
          v170 = sub_1AF2757FC(v8, *(a2 + 32));
          v172 = objc_msgSend_setTexture_atIndex_(v5, v171, v170, 3);
          v173 = *(a2 + 24);
          v174 = *(*(a1 + 712) + 64);
          v175 = CFX::RG::Temporal::currentFrame(v172);
          v176 = CFX::GPUResourceManager::getTexture(v173, v174, v175);
          objc_msgSend_setTexture_atIndex_(v5, v177, v176, 10);
          objc_msgSend_setBuffer_offset_atIndex_(v5, v178, *(*(a1 + 712) + 48), 0, 12);
          v179 = sub_1AF1403B4(*(a1 + 704) + 64);
          v180 = sub_1AFDE323C(v179);
          result = objc_msgSend_dispatch_onTexture2D_(v5, v181, v180, v176);
        }

        v182 = *(a1 + 696);
        v183 = v182[25];
        v182[28] = v182[24];
        v182[29] = v183;
        v184 = v182[27];
        v182[30] = v182[26];
        v182[31] = v184;
        v185 = *(a1 + 696);
        v186 = v185[3];
        v185[6] = v185[2];
        v185[7] = v186;
        v187 = v185[1];
        v185[4] = *v185;
        v185[5] = v187;
        ++*(*(a1 + 712) + 672);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2400F8(CFX::RG::RenderGraphContext *a1, uint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  result = sub_1AF24013C(v4, a1, a2);
  v6 = *(*(result + 712) + 64);
  a2[26] = *(result + 720);
  a2[27] = v6;
  return result;
}

uint64_t sub_1AF24013C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF240410(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF240198(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2401D0(uint64_t a1)
{
  *a1 = &unk_1F24E96E0;

  return a1;
}

void sub_1AF240258(uint64_t a1)
{
  *a1 = &unk_1F24E96E0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF240300(uint64_t a1)
{
  *a1 = &unk_1F24E9700;
  sub_1AF235C34((a1 + 64), 0);

  return a1;
}

void sub_1AF240378(uint64_t a1)
{
  *a1 = &unk_1F24E9700;
  sub_1AF235C34((a1 + 64), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF240410(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 8u);
  return sub_1AF23ED80(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF240470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A5E0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEA8C();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A5D8, 0);
  *a1 = &unk_1F24E9720;
  v10 = *(a5 + 40);
  *(a1 + 464) = *(a5 + 24);
  *(a1 + 440) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = v10;
  *(CFX::RG::Pass::commonRenderParameters(v11) + 277) = 6;
  v20 = 0uLL;
  v21 = 0;
  CFXTextureDescriptorMakeCube(*(a1 + 464), *(a1 + 472), &v20);
  LOBYTE(v21) = 5;
  v24 = v20;
  v25 = v21;
  v12 = sub_1AF2373FC(a4, "IRRADIANCE_PROBE_CUBEMAP_COLOR_TARGET", &v24);
  *(a1 + 488) = v12;
  CFX::RG::Pass::renderTo(a1, v12, 0x100000002, 0);
  v18 = 0uLL;
  v19 = 0;
  CFXTextureDescriptorMakeCube(*(a1 + 464), 0xFCu, &v18);
  LOBYTE(v21) = 4;
  v24 = v18;
  v25 = v19;
  v13 = sub_1AF2373FC(a4, "IRRADIANCE_PROBE_CUBEMAP_DEPTH_TARGET", &v24);
  *(a1 + 496) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x200000002, -1);
  *&v23 = *(a1 + 432);
  LOBYTE(v27) = 0;
  v29 = 0;
  v25 = 0;
  v24 = 0uLL;
  v30 = xmmword_1AFE42EB0;
  v31 = *(a1 + 440);
  v32 = 2;
  v33 = 4;
  v34 = 1;
  v35 = 1;
  *(a1 + 448) = sub_1AF2330E0(v22, *(&v22 + 1), &v22, &v23, &v24);
  *&v24 = 0;
  WORD4(v24) = 0;
  BYTE10(v24) = *(a1 + 441);
  v25 = 51;
  v26 = 0;
  if ((atomic_load_explicit(&qword_1ED73A5E0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEAE8();
  }

  v27 = qword_1ED73A5D8;
  v28 = -1;
  v14 = *(a1 + 432);
  v23 = v22;
  v15 = sub_1AF23498C(&v23, 0x48u, 8u);
  sub_1AF2603E8(v15, v14, &v24, *(a1 + 448));
  *(a1 + 456) = v16;
  return a1;
}

void sub_1AF240724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 448);
  *(v6 + 32) = *(a1 + 480);
  v7 = *(a1 + 464);
  if ((*(v6 + 80) & 1) == 0)
  {
    *(v6 + 80) = 1;
  }

  *&v8 = 0;
  *(&v8 + 2) = v7;
  *(&v8 + 3) = v7;
  *(v6 + 64) = v8;
  sub_1AF23B424(*(a1 + 448), a2, a3, a4);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v9, v10, v11, v12, v13, v14);
  sub_1AF23B60C(*(a1 + 448));
  v16 = *(a1 + 448);
  v17 = *a2;
  v18 = *(a2 + 8);

  sub_1AF23B678(v16, v17, v18, v15);
}

void sub_1AF2407BC(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *this)
{
  v5 = *(a1 + 456);
  v6 = CFX::RG::RenderPassArguments::sliceIndex(this);
  v7 = v6 | (CFX::RG::RenderPassArguments::sliceIndex(this) << 8);

  sub_1AF260B04(v5, a2, this, v7);
}

CFX::RG::Pass *sub_1AF240828(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((atomic_load_explicit(&qword_1ED73A5E8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v15 = a3;
    sub_1AFDEEB30();
    a2 = v14;
    a3 = v15;
  }

  if (byte_1ED73A5D0)
  {
    v8 = 0x64936801F5A4BA5BLL;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E9778;
  v9 = a5[2];
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  *(a1 + 56) = v9;
  v10 = RGBufferDescriptorMake((12 * v9 * v9), 0);
  Buffer_0 = RGBuilderCreateBuffer_0(a4, "IRRADIANCE_SH", v10, v11);
  *(a1 + 58) = Buffer_0;
  CFX::RG::Pass::writeTo(a1, Buffer_0);
  return a1;
}

CFX::RG::Resource *RGBuilderCreateBuffer_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a2;
  v5 = *a1;
  v6 = a1[1];
  v9 = 1;
  v7 = sub_1AF241264(v5, v6, &v10, v11, &v9);
  CFX::RG::RenderGraphBuilder::appendResource(a1, v7);
  return v7;
}

void sub_1AF240990(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ *(a1 + 452));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v6);
  *(a1 + 440) = v7;
  if (!v7)
  {
    *(a1 + 440) = sub_1AF240AD8(*(a2 + 32), v6);
    v8 = sub_1AF12E2AC(*(a1 + 432));
    v14 = objc_msgSend_resourceManager(v8, v9, v10, v11);
    v15 = *(a1 + 452) ? objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"compute_sh%d_from_cubemap_threadgroup_mem", v13, *(a1 + 448)) : objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"compute_sh%d_from_cubemap", v13, *(a1 + 448));
    v18 = *(a1 + 440);
    v19 = objc_msgSend_newComputePipelineStateWithFunctionName_(v14, v16, v15, v17);
    sub_1AF23355C((v18 + 16), v19);
    if (*(a1 + 452) == 1)
    {
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"sum_sh%d", v21, *(a1 + 448));
      v23 = *(a1 + 440);
      v26 = objc_msgSend_newComputePipelineStateWithFunctionName_(v14, v24, v22, v25);

      sub_1AF23355C((v23 + 24), v26);
    }
  }
}

uint64_t sub_1AF240AD8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF240B60(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 464);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  CFX::GPUResourceManager::getBuffer(v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v13 = *(a2 + 24);
  v14 = *(a1 + 456);
  v15 = CFX::RG::Temporal::currentFrame(v9);
  Texture = CFX::GPUResourceManager::getTexture(v13, v14, v15);
  if (*(a1 + 452) == 1)
  {
    v18 = *(a1 + 448) * *(a1 + 448);
    v19 = sub_1AF239FE4(a1);
    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v19, (72 * v18), 32);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v21, BufferWithLength, 0, 1);
    v22 = (16 * *(a1 + 448) * *(a1 + 448));
    v23 = sub_1AF1403B4(*(a1 + 440) + 16);
    v24 = sub_1AFDE323C(v23);
    v28 = objc_msgSend_threadExecutionWidth(v24, v25, v26, v27);
    v30 = 0x7FFF / v22;
    if (v28 < v30)
    {
      v30 = v28;
    }

    if (v30 >= 0x40)
    {
      v31 = 64;
    }

    else
    {
      v31 = v30;
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v5, v29, v31 * v22, 0);
    v32 = sub_1AF1403B4(*(a1 + 440) + 16);
    v33 = sub_1AFDE323C(v32);
    objc_msgSend_setComputePipelineState_(v5, v34, v33, v35);
    objc_msgSend_setTexture_atIndex_(v5, v36, Texture, 0);
    *v52 = 6;
    v50 = vdupq_n_s64(1uLL);
    *&v52[8] = v50;
    *v51 = v31;
    *&v51[8] = v50;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v37, v52, v51);
    v38 = sub_1AF1403B4(*(a1 + 440) + 24);
    v39 = sub_1AFDE323C(v38);
    objc_msgSend_setComputePipelineState_(v5, v40, v39, v41);
    objc_msgSend_setBufferSlice_atIndex_(v5, v42, v10, v12, 0);
    *v52 = v50;
    *&v52[16] = 1;
    *v51 = v50;
    *&v51[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v43, v52, v51);
  }

  else
  {
    objc_msgSend_setBufferSlice_atIndex_(v5, v16, v10, v12, 0);
    objc_msgSend_setTexture_atIndex_(v5, v44, Texture, 0);
    v45 = sub_1AF1403B4(*(a1 + 440) + 16);
    v46 = sub_1AFDE323C(v45);
    objc_msgSend_setComputePipelineState_(v5, v47, v46, v48);
    *v52 = xmmword_1AFE42F80;
    *&v52[16] = 1;
    *v51 = xmmword_1AFE42F80;
    *&v51[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v49, v52, v51);
  }
}

void *sub_1AF240DBC@<X0>(CFX::RG::RenderGraphBuilder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = a4 + 24;
  result = sub_1AF2622A0(a1, v7, *a3);
  v9 = *(a3 + 8);
  if (*(v9 + 8))
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = *(*(v9 + 16) + 8 * v11);
      v13 = *a3;
      v24[0] = "Irradiance probe render cubemap pass";
      v24[1] = v13;
      v25 = 0;
      v26 = 1024;
      v27 = 115;
      v28 = v12;
      v14 = sub_1AF2410F4(a1, a1, v24);
      v15 = v14;
      if (v10)
      {
        v16 = v10[61];
        v17 = CFX::RG::Temporal::currentFrame(v14);
        CFX::RG::Pass::readFrom(v15, v16, v17);
      }

      v18 = *a3;
      v22[0] = "Irradiance probe compute sh pass";
      v22[1] = v18;
      v23 = 0x100000000;
      LODWORD(v23) = *(a3 + 16);
      v19 = sub_1AF24114C(a1, a1, v22);
      v20 = *(v15 + 488);
      *(v19 + 57) = v20;
      v21 = CFX::RG::Temporal::currentFrame(v19);
      CFX::RG::Pass::readFrom(v19, v20, v21);
      v24[0] = v19;
      result = sub_1AF240F04(a4, v24);
      ++v11;
      v9 = *(a3 + 8);
    }

    while (v11 < *(v9 + 8));
  }

  return result;
}

_DWORD *sub_1AF240F04(_DWORD *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = v4 + 1;
  v7 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v8 = ((v5 + 1) * 1.5);
    Aligned = CStackAllocatorAllocateAligned(*result, 8 * v8, 8, 2);
    result = memcpy(Aligned, v7, 8 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v8;
    v4 = v3[2];
    v6 = v4 + 1;
    v7 = Aligned;
  }

  *(v7 + v4) = *a2;
  v3[2] = v6;
  return result;
}

void sub_1AF240FAC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF240FE8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unsigned __int8 *sub_1AF241020(unsigned __int8 *result, unsigned int a2)
{
  if (result)
  {
    v2 = 0;
    v3 = 0xC6A4A7935BD1E995 * a2;
    do
    {
      v4 = *&result[v2];
      v2 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3);
    }

    while (v2 != 32);
    v5 = a2 & 7;
    if (v5 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
        }

        goto LABEL_20;
      }

      if (v5 == 2)
      {
LABEL_19:
        v3 ^= result[33] << 8;
LABEL_20:
        v3 = 0xC6A4A7935BD1E995 * (v3 ^ result[32]);
        return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
      }

LABEL_18:
      v3 ^= result[34] << 16;
      goto LABEL_19;
    }

    if ((a2 & 7) > 5)
    {
      if (v5 != 6)
      {
        v3 ^= result[38] << 48;
      }

      v3 ^= result[37] << 40;
    }

    else if (v5 == 4)
    {
      goto LABEL_17;
    }

    v3 ^= result[36] << 32;
LABEL_17:
    v3 ^= result[35] << 24;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1AF2410F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2411A4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24114C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF241204(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2411A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F8u, 8u);
  return sub_1AF240470(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF241204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u);
  return sub_1AF240828(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF241264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0xE0u, 8u);
  return CFX::RG::Resource::Resource(v8, *a3, *a4, a4[1], *a5, 1);
}

uint64_t sub_1AF2412C8(uint64_t a1)
{
  *a1 = &unk_1F24E97D0;

  return a1;
}

void sub_1AF241318(uint64_t a1)
{
  *a1 = &unk_1F24E97D0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF241388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFX::CrossFrameResourceManager *a5, uint64_t a6)
{
  if ((atomic_load_explicit(&qword_1ED73A5F8, memory_order_acquire) & 1) == 0)
  {
    v34 = a2;
    sub_1AFDEEB7C();
    a2 = v34;
  }

  if (byte_1ED73A5F0)
  {
    v11 = 0x8C1DCF5E2BFD8933;
  }

  else
  {
    v11 = 0;
  }

  sub_1AF250390(a1, a2, a3, a6, v11, 0);
  *a1 = &unk_1F24E97F0;
  *(a1 + 448) = *(a6 + 24);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  v12 = *(a6 + 24);
  v13 = CFX::RG::Resource::textureDesc(v12);
  if ((*(v13 + 80) & 1) == 0)
  {
    *(v13 + 80) = 1;
  }

  *(v13 + 72) = 1;
  v14 = *(a6 + 32);
  v15 = CFX::RG::Pass::hash(a1);
  v16 = CFX::CrossFrameResourceManager::get(a5, v15);
  *(a1 + 464) = v16;
  if (!v16)
  {
    v17 = CFX::RG::Pass::hash(a1);
    *(a1 + 464) = sub_1AF24168C(a5, v17);
    v18 = sub_1AF12E2AC(*(a1 + 432));
    *(*(a1 + 464) + 32) = *(*(a1 + 464) + 32) & 0xFD | (objc_msgSend_features(v18, v19, v20, v21) >> 10) & 2;
    CFX::RG::TextureDescriptorReference::finalColor(v35);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v35, MTLPixelFormatRGBA16Float, v36);
    sub_1AF241720(a4, "pingPongTex", v36, 1, &v37);
    v22 = *(a1 + 464);
    v23 = v37;
    v37 = 0;
    sub_1AF235C34((v22 + 16), v23);
    v24 = v37;
    v37 = 0;
    if (v24)
    {
      CFX::RG::Resource::~Resource(v24);
      free(v25);
    }

    v16 = *(a1 + 464);
    if ((*(v16 + 32) & 2) == 0)
    {
      CFX::RG::TextureDescriptorReference::finalColor(v35);
      CFX::RG::TextureDescriptorReference::withPixelFormat(v35, MTLPixelFormatRGBA16Float, v36);
      sub_1AF241720(a4, "pingPongTex", v36, 1, &v37);
      v26 = *(a1 + 464);
      v27 = v37;
      v37 = 0;
      sub_1AF235C34((v26 + 24), v27);
      v28 = v37;
      v37 = 0;
      if (v28)
      {
        CFX::RG::Resource::~Resource(v28);
        free(v29);
      }

      v16 = *(a1 + 464);
    }
  }

  if ((*(v16 + 32) & 2) != 0)
  {
    *(v16 + 32) &= ~1u;
    if (sub_1AF1309D4(*(a1 + 432)))
    {
      v31 = 0x100000001;
    }

    else
    {
      v31 = 0x100000002;
    }

    v30 = CFX::RG::Pass::renderTo(a1, *(*(a1 + 464) + 8 * (*(*(a1 + 464) + 32) & 1) + 16), v31, 0);
  }

  else
  {
    *(*(a1 + 464) + 32) = (*(*(a1 + 464) + 32) & 0xFE | sub_1AF1309D4(*(a1 + 432)) & 1) ^ 1;
    v30 = CFX::RG::Pass::renderTo(a1, *(*(a1 + 464) + 8 * (*(*(a1 + 464) + 32) & 1) + 16), 0x100000000, 0);
  }

  v32 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v12, v32);
  if (sub_1AF1309E8(*(a1 + 432)))
  {
    CFX::RG::Pass::renderTo(a1, v14, 0x100000000, 1);
  }

  return a1;
}

uint64_t sub_1AF24168C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1AF241720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *v10 = v11;
  v10[1] = v11;
  v10[2] = v11;
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v11;
  v10[6] = v11;
  v10[7] = v11;
  v10[8] = v11;
  v10[9] = v11;
  v10[10] = v11;
  v10[11] = v11;
  v10[12] = v11;
  v10[13] = v11;
  v12 = a3[7];
  v19[6] = a3[6];
  v19[7] = v12;
  v13 = a3[9];
  v19[8] = a3[8];
  v19[9] = v13;
  v14 = a3[3];
  v19[2] = a3[2];
  v19[3] = v14;
  v15 = a3[5];
  v19[4] = a3[4];
  v19[5] = v15;
  v16 = a3[1];
  v19[0] = *a3;
  v19[1] = v16;
  CFX::RG::Resource::Resource(v10, a2, v19, 2, a4);
  *&v19[0] = v17;
  result = sub_1AF235000((a1 + 144), v19);
  *a5 = *&v19[0];
  return result;
}

uint64_t sub_1AF2417EC(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v5 = *(*(a1 + 464) + 32);
  v6 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 456)) + 12);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
  v9 = CFX::CrossFrameResourceManager::get(a2[4], v8);
  *(a1 + 472) = v9;
  if (!v9)
  {
    *(a1 + 472) = sub_1AF2419CC(a2[4], v8);
    v13 = objc_msgSend_resourceManager(v4, v10, v11, v12);
    v14 = *(a1 + 472);
    v15 = sub_1AFDE868C(v13);
    *&v36 = objc_msgSend_frameworkLibrary(v15, v16, v17, v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    *(&v36 + 1) = 115;
    v21 = @"vfx_jittering_color_attachment";
    if ((v5 & 2) == 0)
    {
      v21 = @"vfx_jittering_texture";
    }

    *&v48 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v48 + 1) = v21;
    if ((v5 & 2) != 0)
    {
      v22 = @"vfx_jittering_color_attachment_drawable";
    }

    else
    {
      v22 = @"vfx_jittering_texture_drawable";
    }

    v23 = objc_msgSend_newRenderPipelineStateWithDesc_(v13, v19, v35, v20);
    sub_1AF23355C((v14 + 24), v23);
    v24 = *(a1 + 472);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    memset(v35, 0, sizeof(v35));
    v25 = sub_1AFDE868C(v13);
    *&v36 = objc_msgSend_frameworkLibrary(v25, v26, v27, v28);
    *(&v36 + 1) = 115;
    *&v37 = v6;
    *&v48 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v48 + 1) = v22;
    v31 = objc_msgSend_newRenderPipelineStateWithDesc_(v13, v29, v35, v30);
    sub_1AF23355C((v24 + 16), v31);
  }

  v32 = a2[4];
  v33 = CFX::RG::Pass::hash(a1);
  return sub_1AF24168C(v32, v33);
}

uint64_t sub_1AF2419CC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF241A54(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF2505C4(a1);
  v5 = a1[56];
  v6 = sub_1AF1309E8(a1[54]);
  v7 = 24;
  if (v6)
  {
    v7 = 16;
  }

  v8 = sub_1AF2338B0(a1[59] + v7);
  v12 = objc_msgSend_state(v8, v9, v10, v11);
  v15 = objc_msgSend_setRenderPipelineState_(*(v4 + 16), v13, v12, v14);
  v16 = *(a2 + 24);
  v17 = CFX::RG::Temporal::currentFrame(v15);
  Texture = CFX::GPUResourceManager::getTexture(v16, v5, v17);
  v20 = sub_1AF1F8FCC(v4, Texture, 0, v19);
  v21 = a1[58];
  if ((*(v21 + 32) & 2) == 0)
  {
    v22 = *(a2 + 24);
    v23 = *(v21 + 8 * ((*(v21 + 32) & 1) == 0) + 16);
    v24 = CFX::RG::Temporal::currentFrame(v20);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    sub_1AF1F8FCC(v4, v25, 1, v26);
  }

  v27 = sub_1AF1309D4(a1[54]);
  v28 = v27 + 1;
  if (v27 == -1)
  {
    v29 = sub_1AF0D5194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEEBC8(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  *&v37 = v28 + -1.0;
  *(&v37 + 1) = 1.0 / v28;
  v40 = v37;
  sub_1AF1F905C(v4, &v40, 8uLL, 0);
  return sub_1AF2010C8(v4, v38);
}

uint64_t sub_1AF241BB4(uint64_t *a1, uint64_t a2, CFX::CrossFrameResourceManager *a3, uint64_t a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF241DE4(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF241C14(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF241C4C(void *a1)
{
  *a1 = &unk_1F24E9848;
  for (i = 3; i != 1; --i)
  {
    sub_1AF235C34(&a1[i], 0);
  }

  return a1;
}

void sub_1AF241CA8(void *a1)
{
  *a1 = &unk_1F24E9848;
  for (i = 3; i != 1; --i)
  {
    sub_1AF235C34(&a1[i], 0);
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF241D24(uint64_t a1)
{
  *a1 = &unk_1F24E9868;

  return a1;
}

void sub_1AF241D74(uint64_t a1)
{
  *a1 = &unk_1F24E9868;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF241DE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, CFX::CrossFrameResourceManager *a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1E0u, 8u);
  return sub_1AF241388(v10, *a3, a3[1], a4, a5, a6);
}

uint64_t sub_1AF241E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = (a1 + 444);
  if ((atomic_load_explicit(&qword_1ED73A610, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = a3;
    sub_1AFDEEC40();
    a2 = v19;
    a3 = v20;
  }

  if (byte_1ED73A600)
  {
    v9 = 0xF406179A13730E78;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v9, 0);
  *a1 = &unk_1F24E9888;
  v10 = *(a5 + 32);
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = v10;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v11 = *v8;
  LODWORD(v12) = (*v8 / *(a1 + 464));
  if (v12 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v12;
  }

  LODWORD(v13) = ((v11 >> 16) / *(a1 + 464));
  if (v13 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  v14 = *(a1 + 460);
  v15 = v11 & 0xFFFFFFFF00000000 | v12 | (v13 << 16);
  v16 = v8[1] & 0xFFFFFF00FFFF0000;
  v21 = *(a1 + 440);
  v22 = v15;
  v23 = v16 | 0x300000073;
  v24 = v14;
  v17 = sub_1AF2373FC(a4, "LENS_BLUR_DOWNSAMPLE", &v21);
  *(a1 + 488) = v17;
  CFX::RG::Pass::writeTo(a1, v17);
  return a1;
}

void sub_1AF241FA8(uint64_t *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  a1[59] = v5;
  if (!v5)
  {
    a1[59] = sub_1AF2420AC(*(a2 + 32), v4);
    v6 = sub_1AF12E2AC(a1[54]);
    v10 = objc_msgSend_resourceManager(v6, v7, v8, v9);
    v22 = 0;
    v11 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v11, v12, &v22, 53, 20501);
    v13 = a1[59];
    v15 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v14, @"compute_downsample2", v11);
    sub_1AF23355C((v13 + 16), v15);
    v16 = a1[59];
    v18 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v17, @"compute_downsample4", v11);
    sub_1AF23355C((v16 + 24), v18);
    v19 = a1[59];
    v21 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v20, @"compute_downsample8", v11);
    sub_1AF23355C((v19 + 32), v21);
  }
}

uint64_t sub_1AF2420AC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF242138(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 480);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 488);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  objc_msgSend_setTexture_atIndex_(v5, v14, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v15, v13, 1);
  v22 = 0;
  v16 = *(a1 + 464);
  switch(v16)
  {
    case 8:
      v17 = *(*(a1 + 472) + 32);
      if (v17)
      {
LABEL_9:
        v22 = v17;
      }

      break;
    case 4:
      v17 = *(*(a1 + 472) + 24);
      if (v17)
      {
        goto LABEL_9;
      }

      break;
    case 2:
      v17 = *(*(a1 + 472) + 16);
      if (v17)
      {
        goto LABEL_9;
      }

      break;
    default:
      v18 = sub_1AF0D5194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEEC8C(v18);
      }

      break;
  }

  v19 = sub_1AF1403B4(&v22);
  v20 = sub_1AFDE323C(v19);
  objc_msgSend_dispatch_onTexture2D_(v5, v21, v20, v13);
}

uint64_t sub_1AF2422A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = (a1 + 444);
  if ((atomic_load_explicit(&qword_1ED73A618, memory_order_acquire) & 1) == 0)
  {
    v23 = a3;
    v24 = a2;
    sub_1AFDEECD0();
    a2 = v24;
    a3 = v23;
  }

  if (byte_1ED73A608)
  {
    v9 = 0x3B7BCF15DA1D0A80;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v9, 0);
  *a1 = &unk_1F24E98E0;
  v10 = *(a5 + 16);
  v11 = *(a5 + 32);
  *(a1 + 472) = *(a5 + 48);
  *(a1 + 440) = v10;
  *(a1 + 456) = v11;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0;
  v12 = *v8;
  v13 = v8[1];
  LODWORD(v14) = (*v8 / *(a1 + 464));
  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = ((v12 >> 16) / *(a1 + 464));
  if (v15 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v15;
  }

  v17 = *(a1 + 460);
  v18 = v12 & 0xFFFF00000000 | v14 | (v15 << 16) | (*(a1 + 472) << 48);
  v25 = *(a1 + 440);
  v16 = v25;
  v26 = v18;
  v19 = v13 & 0xFFFFF000FFFF0000 | 0x30300000073;
  v27 = v19;
  v28 = v17;
  v20 = sub_1AF2373FC(a4, "LENS_BLUR_HORIZONTAL_REAL", &v25);
  *(a1 + 496) = v20;
  CFX::RG::Pass::writeTo(a1, v20);
  v25 = v16;
  v26 = v18;
  v27 = v19;
  v28 = v17;
  v21 = sub_1AF2373FC(a4, "LENS_BLUR_HORIZONTAL_IMAGINARY", &v25);
  *(a1 + 504) = v21;
  CFX::RG::Pass::writeTo(a1, v21);
  return a1;
}

uint64_t sub_1AF242458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v5);
  *(a1 + 480) = v6;
  if (!v6)
  {
    *(a1 + 480) = sub_1AF242590(*(a2 + 32), v5);
    v10 = objc_msgSend_resourceManager(v4, v7, v8, v9);
    v14 = objc_msgSend_device(v4, v11, v12, v13);
    if (j__objc_msgSend_supportsWritableArrayOfTextures(v14, v15, v16, v17))
    {
      v18 = @"compute_lens_blur_horizontal";
    }

    else
    {
      v18 = @"compute_lens_blur_horizontal_no_array_write";
    }

    v26 = 1;
    do
    {
      v19 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_atIndex_(v19, v20, &v26, 29, 20500);
      v21 = *(a1 + 480) + 8 * v26;
      v23 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v22, v18, v19);
      sub_1AF23355C((v21 + 8), v23);

      v24 = v26++;
    }

    while (v24 < 3);
  }

  result = sub_1AF275E98(v4, *(a2 + 32), *(a1 + 472), 0, *(a1 + 468));
  *(*(a1 + 480) + 40) = result;
  return result;
}

uint64_t sub_1AF242590(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF242628(uint64_t a1, CFX::RG::RenderGraphContext *a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = sub_1AF12E2AC(*(a1 + 432));
  v7 = *(a2 + 3);
  v8 = *(a1 + 488);
  v9 = CFX::RG::Temporal::currentFrame(v6);
  Texture = CFX::GPUResourceManager::getTexture(v7, v8, v9);
  v10 = *(a2 + 3);
  v11 = *(a1 + 496);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 3);
  v15 = *(a1 + 504);
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v18 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 496)) + 12);
  v19 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 504)) + 12);
  v47 = vcvtps_s32_f32(*(a1 + 468));
  v23 = objc_msgSend_device(v6, v20, v21, v22);
  if (j__objc_msgSend_supportsWritableArrayOfTextures(v23, v24, v25, v26))
  {
    objc_msgSend_setTexture_atIndex_(v5, v27, v13, 1);
    objc_msgSend_setTexture_atIndex_(v5, v29, v17, 2);
  }

  else if (*(a1 + 472) >= 1)
  {
    v30 = 4;
    do
    {
      v31 = objc_msgSend_newTextureViewWithPixelFormat_(v13, v27, v18, v28);
      v34 = objc_msgSend_newTextureViewWithPixelFormat_(v17, v32, v19, v33);
      v35 = v30 - 3;
      objc_msgSend_setTexture_atIndex_(v5, v36, v31, v30 - 3);
      objc_msgSend_setTexture_atIndex_(v5, v37, v34, v30++);
    }

    while (v35 < *(a1 + 472));
  }

  objc_msgSend_setTexture_atIndex_(v5, v27, Texture, 0);
  objc_msgSend_setBytes_length_atIndex_(v5, v38, v46, 40, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v39, *(*(a1 + 480) + 40), 0, 1);
  v45 = *(*(a1 + 480) + 8 * *(a1 + 472) + 8);
  v40 = v45;
  v41 = sub_1AF1403B4(&v45);
  v42 = sub_1AFDE323C(v41);
  objc_msgSend_dispatch_onTexture2D_(v5, v43, v42, Texture);
}

uint64_t sub_1AF242848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = (a1 + 444);
  if ((atomic_load_explicit(&qword_1ED73A628, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = a3;
    sub_1AFDEED1C();
    a2 = v19;
    a3 = v20;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A620, 0);
  *a1 = &unk_1F24E9938;
  v9 = *(a5 + 16);
  v10 = *(a5 + 32);
  *(a1 + 472) = *(a5 + 48);
  *(a1 + 440) = v9;
  *(a1 + 456) = v10;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0;
  v11 = *v8;
  LODWORD(v12) = (*v8 / *(a1 + 464));
  if (v12 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v12;
  }

  LODWORD(v13) = ((v11 >> 16) / *(a1 + 464));
  if (v13 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  v14 = *(a1 + 460);
  v15 = v11 & 0xFFFFFFFF00000000 | v12 | (v13 << 16);
  v16 = v8[1] & 0xFFFFFF00FFFF0000;
  v21 = *(a1 + 440);
  v22 = v15;
  v23 = v16 | 0x300000073;
  v24 = v14;
  v17 = sub_1AF2373FC(a4, "LENS_BLUR_OUTPUT", &v21);
  *(a1 + 504) = v17;
  CFX::RG::Pass::writeTo(a1, v17);
  return a1;
}

double sub_1AF242998(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = sub_1AF12E2AC(*(a1 + 432));
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v5);
  *(a1 + 480) = v6;
  if (!v6)
  {
    *(a1 + 480) = sub_1AF242B24(*(a2 + 32), v5);
    v10 = objc_msgSend_resourceManager(v4, v7, v8, v9);
    v20.i32[0] = 1;
    do
    {
      v11 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_atIndex_(v11, v12, &v20, 29, 20500);
      v13 = *(a1 + 480) + 8 * v20.i32[0];
      v15 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v14, @"compute_lens_blur_vertical", v11);
      sub_1AF23355C((v13 + 8), v15);

      v16 = v20.i32[0]++;
    }

    while (v16 < 3);
  }

  v17 = sub_1AF275E98(v4, *(a2 + 32), *(a1 + 472), &v20, *(a1 + 468));
  v18 = *(a1 + 480);
  *(v18 + 40) = v17;
  *&result = vextq_s8(v20, v20, 8uLL).u64[0];
  *(v18 + 48) = result;
  if (*(a1 + 472) >= 2)
  {
    *&result = vextq_s8(v21, v21, 8uLL).u64[0];
    *(*(a1 + 480) + 56) = result;
    if (*(a1 + 472) >= 3)
    {
      *&result = vextq_s8(v22, v22, 8uLL).u64[0];
      *(*(a1 + 480) + 64) = result;
    }
  }

  return result;
}

uint64_t sub_1AF242B24(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF242BC0(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = vcvtps_s32_f32(*(a1 + 468));
  v52 = v6;
  v7 = *(a1 + 480);
  v8 = *(a1 + 488);
  v50 = *(v7 + 48);
  v51 = *(v7 + 64);
  v9 = *(a2 + 24);
  v10 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v9, v8, v10);
  v12 = *(a2 + 24);
  v13 = *(a1 + 496);
  v14 = CFX::RG::Temporal::currentFrame(Texture);
  v15 = CFX::GPUResourceManager::getTexture(v12, v13, v14);
  v16 = *(a2 + 24);
  v17 = *(a1 + 504);
  v18 = CFX::RG::Temporal::currentFrame(v15);
  v19 = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  objc_msgSend_setTexture_atIndex_(v5, v20, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v21, v15, 1);
  objc_msgSend_setTexture_atIndex_(v5, v22, v19, 2);
  objc_msgSend_setBytes_length_atIndex_(v5, v23, v49, 40, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v24, *(*(a1 + 480) + 40), 0, 1);
  v25 = sub_1AF1403B4(*(a1 + 480) + 8 * *(a1 + 472) + 8);
  v26 = sub_1AFDE323C(v25);
  v30 = objc_msgSend_threadExecutionWidth(v26, v27, v28, v29);
  v31 = (v30 + 126) / v30 * v30;
  v35 = objc_msgSend_width(v19, v32, v33, v34);
  v39 = objc_msgSend_height(v19, v36, v37, v38);
  v40 = 16 * *(a1 + 472) * (v31 + (2 * v6));
  v41 = (v31 + v39 - 1) / v31;
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v5, v42, v40, 0);
  objc_msgSend_setComputePipelineState_(v5, v43, v26, v44);
  v48[0] = v35;
  v48[1] = v41;
  v48[2] = 1;
  v47[0] = 1;
  v47[1] = v31;
  v47[2] = 1;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v45, v48, v47);
}

CFX::RG::Temporal *sub_1AF242D84(CFX::RG *a1, CFX::RG::RenderGraphContext *a2, uint64_t *a3, CFX::RG::Resource *a4)
{
  v8 = CFX::RG::Resource::constTextureDesc(a3[1]);
  v9 = v8[1];
  v64[0] = *v8;
  v64[1] = v9;
  v10 = v8[5];
  v12 = v8[2];
  v11 = v8[3];
  v64[4] = v8[4];
  v64[5] = v10;
  v64[2] = v12;
  v64[3] = v11;
  v13 = v8[9];
  v15 = v8[6];
  v14 = v8[7];
  v64[8] = v8[8];
  v64[9] = v13;
  v64[6] = v15;
  v64[7] = v14;
  CFX::RG::TextureDescriptorReference::withSampleCount(v64, 1, v63);
  v17 = CFX::RG::copyIfNeeded(a1, a3[1], a4, v63, 0, v16);
  v18 = a3[3];
  v19 = 0x3F847AE147AE147BLL;
  LOWORD(v19) = *(a3 + 18);
  v20 = *(a3 + 4) * 0.01 * v19;
  v21 = 8.0;
  if (v20 > 128.0 || (v21 = 4.0, v20 > 32.0) || (v22 = 2.0, v21 = 1.0, v20 < 4.0))
  {
    v22 = v21;
  }

  v23 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v17);
  v24 = *v23;
  v25 = *(v23 + 4);
  v61 = *(v23 + 12);
  v62 = *(v23 + 20);
  LOWORD(v26) = *(a3 + 16);
  v27 = v26 / v25;
  v28 = fmax((v22 / v27), 1.0);
  if (v28 <= 8)
  {
    if (v28 <= 4)
    {
      if (v28 < 3)
      {
        v29 = 1;
        goto LABEL_12;
      }

      v29 = 2;
    }

    else
    {
      v29 = 4;
    }
  }

  else
  {
    v29 = 8;
  }

  v59 = 0;
  v30 = *a3;
  v53 = "Lens blur downsample pass";
  v54 = v30;
  v55 = v24;
  v56 = v25;
  v57 = v61;
  v58 = v62;
  LOBYTE(v59) = v29;
  v31 = sub_1AF243088(a1, a1, &v53);
  *(v31 + 60) = v17;
  v32 = CFX::RG::Temporal::currentFrame(v31);
  CFX::RG::Pass::readFrom(v31, v17, v32);
  v17 = *(v31 + 61);
LABEL_12:
  v59 = 0;
  v60 = 0;
  v33 = *a3;
  v53 = "Lens blur horizontal pass";
  v54 = v33;
  v55 = v24;
  v56 = v25;
  v57 = v61;
  v34 = fminf(v20 / fmaxf(v22, v27), 63.0);
  v58 = v62;
  LOBYTE(v59) = v29;
  v35 = v18 + 1;
  *(&v59 + 1) = v34;
  LODWORD(v60) = v35;
  v36 = sub_1AF2430E0(a1, a1, &v53);
  *(v36 + 61) = v17;
  v37 = CFX::RG::Temporal::currentFrame(v36);
  CFX::RG::Pass::readFrom(v36, v17, v37);
  v51 = 0;
  v52 = 0;
  v38 = *a3;
  v46[0] = "Lens blur vertical pass";
  v46[1] = v38;
  v47 = v24;
  v48 = v25;
  v49 = v61;
  v50 = v62;
  LOBYTE(v51) = v29;
  *(&v51 + 1) = v34;
  LODWORD(v52) = v35;
  v39 = sub_1AF243138(a1, a1, v46);
  v40 = *(v36 + 62);
  *(v39 + 61) = v40;
  v41 = CFX::RG::Temporal::currentFrame(v39);
  CFX::RG::Pass::readFrom(v39, v40, v41);
  v42 = *(v36 + 63);
  *(v39 + 62) = v42;
  v44 = CFX::RG::Temporal::currentFrame(v43);
  CFX::RG::Pass::readFrom(v39, v42, v44);
  return v39;
}

uint64_t sub_1AF243088(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2434B4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2430E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF243514(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF243138(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF243574(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF243194(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2431D0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF24320C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF243244(uint64_t a1)
{
  *a1 = &unk_1F24E9990;

  return a1;
}

void sub_1AF24329C(uint64_t a1)
{
  *a1 = &unk_1F24E9990;

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF243314(void *a1)
{
  *a1 = &unk_1F24E99B0;
  for (i = 4; i != 1; --i)
  {
  }

  return a1;
}

void sub_1AF24336C(void *a1)
{
  *a1 = &unk_1F24E99B0;
  for (i = 4; i != 1; --i)
  {
  }

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF2433E4(void *a1)
{
  *a1 = &unk_1F24E99D0;
  for (i = 4; i != 1; --i)
  {
  }

  return a1;
}

void sub_1AF24343C(void *a1)
{
  *a1 = &unk_1F24E99D0;
  for (i = 4; i != 1; --i)
  {
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2434B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u);
  return sub_1AF241E4C(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF243514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x200u, 8u);
  return sub_1AF2422A4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF243574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x200u, 8u);
  return sub_1AF242848(v8, *a3, a3[1], a4, a5);
}

uint64_t *sub_1AF2436E8(uint64_t *a1, uint64_t a2, uint64_t a3, CFX::RG *a4, uint64_t a5, CFX::RG::Pass *a6)
{
  *a1 = &unk_1F24E99F0;
  if ((atomic_load_explicit(&qword_1ED73A638, memory_order_acquire) & 1) == 0)
  {
    v33 = a3;
    v32 = a2;
    sub_1AFDEEDE4();
    a2 = v32;
    a3 = v33;
  }

  if (byte_1ED73A630)
  {
    v10 = 0x5309FB0C36391206;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a1) ^ ((0x9DDFEA08EB382D69 * a1) >> 47));
  sub_1AF250390(a1, a2, a3, a5, v10, 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47)));
  *a1 = &unk_1F24E99F0;
  a1[56] = 0;
  a1[57] = 0;
  v12 = sub_1AF12F398(a1[54]);
  v35 = 0uLL;
  (*(v12 + 48))(a1[54], &v35);
  v13 = (*(*a1 + 32))(a1);
  v14 = vcvt_hight_f64_f32(v35);
  *v13 = vcvtq_f64_f32(*v35.f32);
  *(v13 + 16) = v14;
  if (a6)
  {
    CFX::RG::Pass::dependsOn(a1, a6);
  }

  v15 = *(a5 + 32);
  v16 = CFX::RG::Resource::constTextureDesc(v15);
  CFX::RG::TextureDescriptorReference::withSampleCount(v16, 1, v34);
  v18 = CFX::RG::copyIfNeeded_r(a4, v15, a6, v34, "PostProcessSPI Copy color", v17);
  v20 = v19;
  v21 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v18, v21);
  CFX::RG::Pass::dependsOn(a1, v20);
  v22 = *(a5 + 40);
  if (v22)
  {
    v23 = CFX::RG::Resource::constTextureDesc(*(a5 + 40));
    CFX::RG::TextureDescriptorReference::withSampleCount(v23, 1, v34);
    v25 = CFX::RG::copyIfNeeded_r(a4, v22, a6, v34, "PostProcessSPI Copy color1", v24);
    v27 = v26;
    v28 = CFX::RG::Temporal::currentFrame(v25);
    CFX::RG::Pass::readFrom(a1, v25, v28);
    CFX::RG::Pass::dependsOn(a1, v27);
  }

  v29 = CFX::RG::Resource::constTextureDesc(*(a5 + 32));
  CFX::RG::TextureDescriptorReference::withSampleCount(v29, 1, v34);
  v30 = sub_1AF233CC8(a4, "PostProcessSPI output", v34);
  a1[57] = v30;
  CFX::RG::Pass::renderTo(a1, v30, 0x100000001, 0);
  return a1;
}

void sub_1AF243968(uint64_t *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  if ((atomic_load_explicit(&qword_1ED73A638, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEDE4();
  }

  v5 = 0x5309FB0C36391206;
  if (!byte_1ED73A630)
  {
    v5 = 0;
  }

  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47));
  v8 = *(a2 + 32);
  v7 = (a2 + 32);
  v9 = CFX::CrossFrameResourceManager::get(v8, v6);
  a1[56] = v9;
  if (!v9)
  {
    sub_1AFDEEE30(v7, v6, a1 + 56, a1);
  }
}

uint64_t sub_1AF243A2C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF243AB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 448) + 16);
  objc_msgSend_setCurrentPass_(v5, a2, a1, a4);
  v6 = sub_1AF12F398(*(a1 + 432));
  (*(v6 + 56))(*(a1 + 432), v5);

  return objc_msgSend_setCurrentPass_(v5, v7, 0, v8);
}

uint64_t sub_1AF243B18(uint64_t *a1, uint64_t *a2, CFX::RG::Pass *a3)
{
  v9 = a3;
  v3 = *a2;
  v5[0] = "PostProcessSPI";
  v5[1] = v3;
  v6 = 0;
  v7 = *a2;
  v8 = a2[2];
  return sub_1AF243B6C(a1, a1, v5, &v9);
}

uint64_t sub_1AF243B6C(uint64_t *a1, CFX::RG *a2, uint64_t a3, CFX::RG::Pass **a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF243CB4(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF243BCC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF243C04(uint64_t a1)
{
  *a1 = &unk_1F24E9A48;

  return a1;
}

void sub_1AF243C4C(uint64_t a1)
{
  *a1 = &unk_1F24E9A48;

  JUMPOUT(0x1B271C6B0);
}

uint64_t *sub_1AF243CB4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG *a4, uint64_t a5, CFX::RG::Pass **a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1D0u, 8u);
  return sub_1AF2436E8(v10, *a3, a3[1], a4, a5, *a6);
}

uint64_t sub_1AF243D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v16 = a2;
  *(&v16 + 1) = a3;
  if ((atomic_load_explicit(&qword_1ED73A648, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEE90();
  }

  if (byte_1ED73A640)
  {
    v8 = 0x82816288C4F8725ALL;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v8, 0);
  *a1 = &unk_1F24E9A68;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *&v17 = *(a1 + 432);
  LOBYTE(v21) = 0;
  v23 = 0;
  v19 = 0;
  v18 = 0uLL;
  v24 = xmmword_1AFE42EB0;
  v25 = *(a1 + 440);
  v26 = 2;
  v27 = 8;
  v28 = 4;
  v29 = 1;
  *(a1 + 448) = sub_1AF2330E0(v16, *(&v16 + 1), &v16, &v17, &v18);
  v9 = v16;
  v10 = *(a1 + 432);
  *&v18 = 0;
  WORD4(v18) = 256;
  BYTE10(v18) = *(a1 + 441);
  v19 = 48;
  v20 = 0;
  if ((atomic_load_explicit(&qword_1ED73A648, memory_order_acquire) & 1) == 0)
  {
    v15 = v9;
    sub_1AFDEEEDC();
    v9 = v15;
  }

  if (byte_1ED73A640)
  {
    v11 = 0x82816288C4F8725ALL;
  }

  else
  {
    v11 = 0;
  }

  v21 = v11;
  v22 = -1;
  v17 = v9;
  v12 = sub_1AF23498C(&v17, 0x48u, 8u);
  sub_1AF2603E8(v12, v10, &v18, *(a1 + 448));
  *(a1 + 456) = v13;
  return a1;
}

void sub_1AF243F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Manipulator", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ManipulatorPass.mm", 45, v6 | 0x300000000);
  sub_1AF23B424(*(a1 + 448), v7, v8, v9);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v10, v11, v12, v13, v14, v15);
  sub_1AF23B678(*(a1 + 448), *a2, *(a2 + 8), v16);

  prof_endFlame();
}

void sub_1AF243FA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Manipulator", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ManipulatorPass.mm", 55, v6 | 0x300000000);
  sub_1AF260410(*(a1 + 456), a2, v7, v8);

  prof_endFlame();
}

void sub_1AF244018(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *a3, uint64_t a4)
{
  v7 = sub_1AF130770(*(a1 + 432), a2, a3, a4);
  prof_beginFlameSmallData("Manipulator", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/ManipulatorPass.mm", 60, v7 | 0x300000000);
  sub_1AF260B04(*(a1 + 456), a2, a3, 0);

  prof_endFlame();
}

uint64_t sub_1AF2440A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF244164(a1, a2);
  CFX::RG::Pass::renderTo(v6, a3, 0x100000001, 0);
  v7 = *(a2 + 136);
  v14[6] = *(a2 + 120);
  v14[7] = v7;
  v8 = *(a2 + 168);
  v14[8] = *(a2 + 152);
  v14[9] = v8;
  v9 = *(a2 + 72);
  v14[2] = *(a2 + 56);
  v14[3] = v9;
  v10 = *(a2 + 104);
  v14[4] = *(a2 + 88);
  v14[5] = v10;
  v11 = *(a2 + 40);
  v14[0] = *(a2 + 24);
  v14[1] = v11;
  v12 = sub_1AF233CC8(a1, "MANIPULATOR_DEPTH", v14);
  CFX::RG::Pass::renderTo(v6, v12, 0x200000002, -1);
  *(v6 + 464) = v12;
  return v6;
}

uint64_t sub_1AF244164(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[0] = sub_1AF2441F4(v6[0], v4, v6, a2);
  sub_1AF235000(a1 + 22, v6);
  return v6[0];
}

void sub_1AF2441BC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2441F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x1D8u, 8u);
  return sub_1AF243D1C(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF244244(uint64_t a1)
{
  *a1 = &unk_1F24E9AC0;

  *(a1 + 16) = 0;
  return a1;
}

void sub_1AF244290(uint64_t a1)
{
  *a1 = &unk_1F24E9AC0;

  *(a1 + 16) = 0;

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Resource **sub_1AF2442FC(CFX::RG::Resource **this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const void *a6)
{
  if ((atomic_load_explicit(&qword_1ED73A658, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDEEF14();
    a2 = v20;
    a3 = v21;
  }

  if (byte_1ED73A650)
  {
    v9 = 0x1A7B0322067A52BCLL;
  }

  else
  {
    v9 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "MetalFXUpscalePass", 1, v9, 0);
  *this = &unk_1F24E9AE0;
  memcpy(this + 53, a6, 0x2A0uLL);
  this[137] = 0;
  this[139] = 0;
  this[138] = 0;
  CFX::RG::TextureDescriptorReference::withPixelFormat((this + 54), MTLPixelFormatRGBA16Float, v22);
  v10 = sub_1AF233CC8(a4, "MetalFXUpscalePassOutput", v22);
  this[140] = v10;
  v11 = this[134];
  v12 = CFX::RG::Temporal::currentFrame(v10);
  CFX::RG::Pass::readFrom(this, v11, v12);
  v13 = this[135];
  v15 = CFX::RG::Temporal::currentFrame(v14);
  CFX::RG::Pass::readFrom(this, v13, v15);
  v16 = this[136];
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(this, v16, v18);
  CFX::RG::Pass::writeTo(this, this[140]);
  return this;
}

uint64_t sub_1AF244458(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 424));
  *(a1 + 1104) = v4;
  *(a1 + 1112) = objc_msgSend_resourceManager(v4, v5, v6, v7);
  CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1120));
  v8 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1072));
  v9 = *(v8 + 4);
  v10 = *(v8 + 12);
  v11 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1080));
  v12 = *(v11 + 4);
  v13 = *(v11 + 12);
  v14 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1088));
  v15 = *(v14 + 4);
  v16 = *(v14 + 12);
  v17 = CFX::RG::Pass::hash(a1);
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v9)));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ (v9 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ (v9 >> 16))));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47))) ^ v10)));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47))) ^ v12)));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ (v12 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47))) ^ (v12 >> 16))));
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47))) ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47))) ^ v13)));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47))) ^ v15)));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ (v15 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ (v15 >> 16))));
  v26 = 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47));
  result = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ ((0x9DDFEA08EB382D69 * (v26 ^ v16)) >> 47) ^ (0x9DDFEA08EB382D69 * (v26 ^ v16)))) ^ ((0x9DDFEA08EB382D69 * (v26 ^ ((0x9DDFEA08EB382D69 * (v26 ^ v16)) >> 47) ^ (0x9DDFEA08EB382D69 * (v26 ^ v16)))) >> 47)));
  *(a1 + 1096) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AF244768(uint64_t a1, CFX::RG::RenderGraphContext *a2, id *a3)
{
  v6 = *(a2 + 3);
  v7 = *(a1 + 1072);
  v8 = CFX::RG::Temporal::currentFrame(a1);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 3);
  v11 = *(a1 + 1080);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 3);
  v15 = *(a1 + 1088);
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v18 = *(a2 + 3);
  v19 = *(a1 + 1120);
  v20 = CFX::RG::Temporal::currentFrame(v17);
  v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
  objc_msgSend_setColorTexture_(*(*(a1 + 1096) + 16), v22, Texture, v23);
  objc_msgSend_setDepthTexture_(*(*(a1 + 1096) + 16), v24, v13, v25);
  objc_msgSend_setMotionTexture_(*(*(a1 + 1096) + 16), v26, v17, v27);
  objc_msgSend_setOutputTexture_(*(*(a1 + 1096) + 16), v28, v21, v29);
  v59 = sub_1AF130C00(*(a1 + 424), 0);
  v33 = 0.5 - (objc_msgSend_inputWidth(*(*(a1 + 1096) + 16), v30, v31, v32) * v59.f32[0]) * 0.5;
  *&v33 = v33;
  objc_msgSend_setJitterOffsetX_(*(*(a1 + 1096) + 16), v34, v35, v36, v33);
  v40 = 0.5 - vmuls_lane_f32(objc_msgSend_inputHeight(*(*(a1 + 1096) + 16), v37, v38, v39), v59, 1) * 0.5;
  *&v40 = v40;
  *&v40 = -*&v40;
  objc_msgSend_setJitterOffsetY_(*(*(a1 + 1096) + 16), v41, v42, v43, v40);
  v44 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 1088)) + 4);
  *&v45 = v44;
  objc_msgSend_setMotionVectorScaleX_(*(*(a1 + 1096) + 16), v46, v47, v48, v45);
  *&v49 = (v44 >> 16);
  objc_msgSend_setMotionVectorScaleY_(*(*(a1 + 1096) + 16), v50, v51, v52, v49);
  objc_msgSend_setDepthReversed_(*(*(a1 + 1096) + 16), v53, 1, v54);
  v55 = *(*(a1 + 1096) + 16);
  v56 = CFX::RG::RendererPassArguments::commandBuffer(a3);

  return MEMORY[0x1EEE66B58](v55, sel_encodeToCommandBuffer_, v56, v57);
}