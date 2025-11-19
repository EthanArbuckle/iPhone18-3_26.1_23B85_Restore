id sub_1AFAD6410(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v9(v10, v11, v12, v13);

  return v14;
}

void *sub_1AFAD64F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6[4] = a2;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AFAD5E48;
  v6[3] = a3;
  result = _Block_copy(v6);
  *a4 = result;
  return result;
}

uint64_t sub_1AFAD6568(void *a1, void *a2, void *a3, void *a4)
{
  v48[10] = *MEMORY[0x1E69E9840];
  v7 = [a1 toNumber];
  v8 = [v7 unsignedIntegerValue];

  sub_1AFADAE08(v8, &v44);
  sub_1AFABB57C(&v44, v48);
  v9 = sub_1AFDFCEC8();
  v10 = [a2 objectForKeyedSubscript_];

  v11 = [v10 toString];
  v12 = sub_1AFDFCEF8();
  v14 = v13;

  v15 = sub_1AFDFCEC8();
  v16 = [a2 objectForKeyedSubscript_];

  v17 = [v16 toString];
  v18 = sub_1AFDFCEF8();
  v20 = v19;

  v21 = sub_1AFDFCEC8();
  v22 = [a2 objectForKeyedSubscript_];

  if ([v22 isNull] || objc_msgSend(v22, sel_isUndefined))
  {

LABEL_4:
    v23 = 0;
    v24 = 0;
    goto LABEL_5;
  }

  v30 = [v22 toString];

  if (!v30)
  {
    goto LABEL_4;
  }

  v31 = sub_1AFDFCEF8();
  v24 = v32;

  v23 = v31;
LABEL_5:
  sub_1AFC001A0(v12, v14, v18, v20, v23, v24, v48[0], &v44);

  v25 = v45;
  if (!v45)
  {
    return sub_1AFABB5D8(v48);
  }

  v26 = v44;
  v27 = v46;
  v28 = v47;
  if ([a3 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v39 = v42;
  v40 = v43;
  if (*(&v43 + 1))
  {
    sub_1AF0D4478(0, &qword_1EB633BB0);
    if (swift_dynamicCast())
    {
      sub_1AFAD3B10(a4, &v42);
      *(&v40 + 1) = &type metadata for Extensions;
      v41 = &off_1F253E6E8;
      sub_1AF60685C(&v39, &v42);
      v33 = *(&v40 + 1);
      v34 = v41;
      sub_1AF448018(&v39, *(&v40 + 1));
      v35 = sub_1AF8727C0(v33, v34);
      sub_1AFC24D14(v27, v28, v36, v35);

      v37 = v26;
      v38 = v25;
      sub_1AF585778(&v37);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v42);
      sub_1AFABB5D8(v48);
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v39);
    }

    else
    {
      sub_1AFABB5D8(v48);
      v37 = v26;
      v38 = v25;
      sub_1AF585778(&v37);
    }
  }

  else
  {
    sub_1AFABB5D8(v48);
    v37 = v26;
    v38 = v25;
    sub_1AF585778(&v37);

    return sub_1AF44CB60(&v39);
  }
}

id sub_1AFAD69A8(void *a1, void *a2, void *a3)
{
  v6 = [a1 toNumber];
  v7 = [v6 unsignedIntegerValue];

  sub_1AFADAE08(v7, &v38);
  sub_1AFABB57C(&v38, v40);
  v8 = sub_1AFDFCEC8();
  v9 = [a2 objectForKeyedSubscript_];

  v10 = [v9 toString];
  v11 = sub_1AFDFCEF8();
  v13 = v12;

  v14 = sub_1AFDFCEC8();
  v15 = [a2 objectForKeyedSubscript_];

  v16 = [v15 toString];
  v17 = sub_1AFDFCEF8();
  v19 = v18;

  v20 = sub_1AFDFCEC8();
  v21 = [a2 objectForKeyedSubscript_];

  if ([v21 isNull] || objc_msgSend(v21, sel_isUndefined))
  {

LABEL_4:
    v22 = 0;
    v23 = 0;
    goto LABEL_5;
  }

  v26 = [v21 toString];

  if (!v26)
  {
    goto LABEL_4;
  }

  v27 = sub_1AFDFCEF8();
  v23 = v28;

  v22 = v27;
LABEL_5:
  sub_1AFC001A0(v11, v13, v17, v19, v22, v23, v40[0], &v41);

  if (!*(&v41 + 1))
  {
    v24 = [a1 context];
    v25 = [objc_opt_self() valueWithNullInContext_];

LABEL_18:
    sub_1AFABB5D8(v40);
    return v25;
  }

  v38 = v41;
  v39[0] = v42[0];
  *(v39 + 12) = *(v42 + 12);
  if ([a3 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_1AF44CB60(v37);
    goto LABEL_17;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v31 = [a1 context];
    v25 = [objc_opt_self() valueWithNullInContext_];

    v37[0] = v38;
    sub_1AF585778(v37);

    goto LABEL_18;
  }

  sub_1AFC00540(&v38, v34, &v35);
  if (*(&v36 + 1))
  {
    sub_1AF449D40(&v35, v37);
    v29 = [a1 context];
    v30 = sub_1AFAD42DC(v37, v29);
    v35 = v38;
    sub_1AF585778(&v35);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
  }

  else
  {
    sub_1AF44CB60(&v35);
    v33 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];
    v37[0] = v38;
    sub_1AF585778(v37);
  }

  sub_1AFABB5D8(v40);
  return v30;
}

uint64_t sub_1AFAD6EA4(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 JSGlobalContextRef];

  TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v3, [a1 JSValueRef], 0);
  ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v3, TypedArrayBuffer, 0);
  if (ArrayBufferBytesPtr)
  {
    v7 = *ArrayBufferBytesPtr;
  }

  else
  {
    v7 = 0uLL;
  }

  v8 = vmulq_f32(v7, v7);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vdupq_lane_s32(*v8.f32, 0);
  v9.i32[3] = 0;
  v10 = vrsqrteq_f32(v9);
  v11 = vmulq_f32(v10, vrsqrtsq_f32(v9, vmulq_f32(v10, v10)));
  v12 = vmulq_f32(v11, v11);
  v13 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v8.f32[0] != 0.0)), 0x1FuLL));
  v13.i32[3] = 0;
  v14 = vbslq_s8(vcltzq_s32(v13), vmulq_f32(v7, vmulq_f32(v11, vrsqrtsq_f32(v9, v12))), v7);
  v12.i32[0] = v14.i32[2];
  v6.i32[0] = 1.0;
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v11.f32[0] = *vbslq_s8(v13, v6, v12).i32;
  *v13.i32 = v14.f32[1] / (fabsf(v14.f32[2]) + 1.0);
  v15 = vmuls_lane_f32(*v13.i32, *v14.f32, 1);
  v16 = -(v14.f32[0] * *v13.i32);
  v17 = v14.f32[2] + (v11.f32[0] * v15);
  v18 = v11.f32[0] * v16;
  v19 = 1.0 - v15;
  v20 = vmuls_lane_f32(-v11.f32[0], *v14.f32, 1);
  v21 = v14.f32[2] + (v17 + v19);
  if (v21 <= 0.0)
  {
    if (v17 < v19 || v17 < v14.f32[2])
    {
      if (v19 <= v14.f32[2])
      {
        v30 = sqrtf(((v14.f32[2] + 1.0) - v17) - v19);
        v14.i32[0] = vsubq_f32(v14, v14).u32[0];
        v14.f32[1] = v14.f32[1] + v20;
        v14.f32[2] = v30 * v30;
        v14.f32[3] = v18 - v16;
        v24 = vmulq_n_f32(v14, 0.5 / v30);
      }

      else
      {
        v26 = sqrtf(((v19 + 1.0) - v17) - v14.f32[2]);
        v27.f32[0] = v16 + v18;
        v27.f32[1] = v26 * v26;
        *&v27.u32[2] = vrev64_s32(vadd_f32(*v14.f32, __PAIR64__(LODWORD(v20), v14.u32[0])));
        v24 = vmulq_n_f32(v27, 0.5 / v26);
      }
    }

    else
    {
      v28 = sqrtf(((v17 + 1.0) - v19) - v14.f32[2]);
      v29.f32[0] = v28 * v28;
      v29.f32[1] = v16 + v18;
      *&v29.u32[2] = vsub_f32(__PAIR64__(LODWORD(v20), v14.u32[0]), *v14.f32);
      v24 = vmulq_n_f32(v29, 0.5 / v28);
    }
  }

  else
  {
    v22 = sqrtf(v21 + 1.0);
    v23.f32[0] = v20 - v14.f32[1];
    v23.i32[1] = vaddq_f32(v14, v14).u32[0];
    v23.f32[2] = v18 - v16;
    v23.f32[3] = v22 * v22;
    v24 = vmulq_n_f32(v23, 0.5 / v22);
  }

  v35 = v24;
  sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v36[3] = v31;
  v36[0] = swift_allocObject();
  *(v36[0] + 16) = v35;
  v32 = [a1 context];
  v33 = sub_1AFAD42DC(v36, v32);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
  return v33;
}

id sub_1AFAD7194(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void *sub_1AFAD71FC()
{
  v1[4] = sub_1AFAD7280;
  v1[5] = 0;
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1107296256;
  v1[2] = sub_1AFAD760C;
  v1[3] = &unk_1F255DE98;
  result = _Block_copy(v1);
  qword_1EB642818 = result;
  return result;
}

uint64_t sub_1AFAD7280(void *a1, void *a2)
{
  v4 = [a1 context];
  v5 = [v4 JSGlobalContextRef];

  if ((JSObjectGetTypedArrayByteLength(v5, [a1 JSValueRef], 0) & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
  {
    [a2 toDouble];
    v7 = v6;
    v8 = [a1 context];
    v9 = [v8 JSGlobalContextRef];

    TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v9, [a1 JSValueRef], 0);
    ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v9, TypedArrayBuffer, 0);
    if (ArrayBufferBytesPtr)
    {
      v12 = *ArrayBufferBytesPtr;
    }

    else
    {
      v12 = 0uLL;
    }

    v18 = vmulq_f32(v12, v12);
    v18.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
    v19 = vdupq_lane_s32(*v18.f32, 0);
    v19.i32[3] = 0;
    v20 = vrsqrteq_f32(v19);
    v21 = vmulq_f32(v20, vrsqrtsq_f32(v19, vmulq_f32(v20, v20)));
    v22 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v18.f32[0] != 0.0)), 0x1FuLL));
    v22.i32[3] = 0;
    v38 = vbslq_s8(vcltzq_s32(v22), vmulq_f32(v12, vmulq_f32(v21, vrsqrtsq_f32(v19, vmulq_f32(v21, v21)))), v12);
    v23 = __sincosf_stret(v7 * 0.5);
    v24 = vmulq_n_f32(v38, v23.__sinval);
    v24.i32[3] = LODWORD(v23.__cosval);
    v39 = v24;
    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v43 = v25;
    v42[0] = swift_allocObject();
    *(v42[0] + 16) = v39;
    v26 = [a1 context];
  }

  else
  {
    v13 = [a1 context];
    v14 = [v13 JSGlobalContextRef];

    v15 = JSObjectGetTypedArrayBuffer(v14, [a1 JSValueRef], 0);
    v16 = JSObjectGetArrayBufferBytesPtr(v14, v15, 0);
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0uLL;
    }

    v27 = vmulq_f32(v17, v17);
    v27.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
    v28 = vdupq_lane_s32(*v27.f32, 0);
    v28.i32[3] = 0;
    v29 = vrsqrteq_f32(v28);
    v30 = vmulq_f32(v29, vrsqrtsq_f32(v28, vmulq_f32(v29, v29)));
    v31 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v27.f32[0] != 0.0)), 0x1FuLL));
    v31.i32[3] = 0;
    v40 = vbslq_s8(vcltzq_s32(v31), vmulq_f32(v17, vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)))), v17);
    v32 = __sincosf_stret(vmuls_lane_f32(0.5, v17, 3));
    v33 = vmulq_n_f32(v40, v32.__sinval);
    v33.i32[3] = LODWORD(v32.__cosval);
    v41 = v33;
    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v43 = v34;
    v42[0] = swift_allocObject();
    *(v42[0] + 16) = v41;
    v26 = [a1 context];
  }

  v35 = v26;
  v36 = sub_1AFAD42DC(v42, v35);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v42);
  return v36;
}

id sub_1AFAD760C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = v5(v6, v7);

  return v8;
}

uint64_t sub_1AFAD76C0(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 JSGlobalContextRef];

  TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v3, [a1 JSValueRef], 0);
  ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v3, TypedArrayBuffer, 0);
  if (ArrayBufferBytesPtr)
  {
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    v7 = vmulq_f32(*ArrayBufferBytesPtr, v6);
  }

  else
  {
    v7.i64[0] = 0;
    v7.i32[2] = 0;
  }

  v7.i32[3] = 0;
  x = v7;
  v20 = _simd_cos_f4(v7);
  v8 = _simd_sin_f4(x);
  v9 = vextq_s8(v20, v20, 4uLL);
  v10 = vmulq_f32(vzip1q_s32(vrev64q_s32(v20), v20), vextq_s8(vzip1q_s32(v9, v8), v9, 8uLL));
  v11 = vzip2q_s32(vzip1q_s32(v20, v8), v8);
  v11.f32[3] = -v8.f32[0];
  v12 = vextq_s8(v8, v8, 8uLL);
  v13 = vtrn1q_s32(v8, vextq_s8(v20, v20, 8uLL));
  v8.i32[3] = v8.i32[1];
  v14 = vtrn1q_s32(v12, v20);
  v14.f32[1] = -v20.f32[0];
  v21 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v8, v11), v14)), v13, v10);
  type metadata accessor for simd_quatf(0);
  v22[3] = v15;
  v22[0] = swift_allocObject();
  *(v22[0] + 16) = v21;
  v16 = [a1 context];
  v17 = sub_1AFAD42DC(v22, v16);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  return v17;
}

uint64_t sub_1AFAD7868(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 JSGlobalContextRef];

  if ((JSObjectGetTypedArrayByteLength(v3, [a1 JSValueRef], 0) & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
  {
    v4 = [a1 context];
    v5 = [v4 JSGlobalContextRef];

    TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v5, [a1 JSValueRef], 0);
    ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v5, TypedArrayBuffer, 0);
    if (ArrayBufferBytesPtr)
    {
      v9 = *ArrayBufferBytesPtr;
    }

    else
    {
      *&v9 = 0;
      DWORD2(v9) = 0;
    }

    v15 = fmaxf(fmaxf(*&v9, *(&v9 + 2)), *(&v9 + 1));
    v16 = v15 - fminf(fminf(*&v9, *(&v9 + 2)), *(&v9 + 1));
    LODWORD(v8) = 0;
    if (v16 != 0.0)
    {
      v17 = ((*&v9 - *(&v9 + 1)) / v16) + 4.0;
      if (*(&v9 + 1) == v15)
      {
        v17 = ((*(&v9 + 2) - *&v9) / v16) + 2.0;
      }

      if (*&v9 == v15)
      {
        v18 = (*(&v9 + 1) - *(&v9 + 2)) / v16;
      }

      else
      {
        v18 = v17;
      }

      if (v18 >= 0.0)
      {
        *&v8 = v18 * 0.16667;
      }

      else
      {
        *&v8 = (v18 * 0.16667) + 1.0;
      }
    }

    v19 = v16 / v15;
    if (v15 == 0.0)
    {
      v19 = 0.0;
    }

    *(&v8 + 1) = v19;
    *(&v8 + 2) = v15;
    v33 = v8;
    sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v36 = v20;
    v35[0] = swift_allocObject();
    *(v35[0] + 16) = v33;
    v21 = [a1 context];
  }

  else
  {
    v10 = [a1 context];
    v11 = [v10 JSGlobalContextRef];

    v12 = JSObjectGetTypedArrayBuffer(v11, [a1 JSValueRef], 0);
    v13 = JSObjectGetArrayBufferBytesPtr(v11, v12, 0);
    if (v13)
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0uLL;
    }

    v22 = fmaxf(fmaxf(*&v14, *(&v14 + 2)), *(&v14 + 1));
    v23 = v22 - fminf(fminf(*&v14, *(&v14 + 2)), *(&v14 + 1));
    v24 = 0.0;
    LODWORD(v25) = 0;
    if (v23 != 0.0)
    {
      v26 = ((*&v14 - *(&v14 + 1)) / v23) + 4.0;
      if (*(&v14 + 1) == v22)
      {
        v26 = ((*(&v14 + 2) - *&v14) / v23) + 2.0;
      }

      v27 = (*(&v14 + 1) - *(&v14 + 2)) / v23;
      if (*&v14 != v22)
      {
        v27 = v26;
      }

      *&v25 = (v27 * 0.16667) + 1.0;
      if (v27 >= 0.0)
      {
        *&v25 = v27 * 0.16667;
      }
    }

    v28 = v23 / v22;
    if (v22 != 0.0)
    {
      v24 = v28;
    }

    *(&v25 + 1) = v24;
    *(&v25 + 1) = __PAIR64__(HIDWORD(v14), LODWORD(v22));
    v34 = v25;
    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v36 = v29;
    v35[0] = swift_allocObject();
    *(v35[0] + 16) = v34;
    v21 = [a1 context];
  }

  v30 = v21;
  v31 = sub_1AFAD42DC(v35, v30);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v35);
  return v31;
}

uint64_t sub_1AFAD7C38(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 JSGlobalContextRef];

  if ((JSObjectGetTypedArrayByteLength(v3, [a1 JSValueRef], 0) & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
  {
    v4 = [a1 context];
    v5 = [v4 JSGlobalContextRef];

    TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v5, [a1 JSValueRef], 0);
    ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v5, TypedArrayBuffer, 0);
    v8.i64[0] = 0;
    v8.i32[2] = 0;
    if (ArrayBufferBytesPtr)
    {
      v8 = *ArrayBufferBytesPtr;
    }

    v8.i32[3] = 0;
    v9 = vmaxnmq_f32(v8, 0);
    v9.i32[3] = 0;
    v10 = vminnmq_f32(v9, xmmword_1AFE208C0);
    if (v10.f32[1] == 0.0)
    {
      v11 = vdupq_laneq_s32(v10, 2);
    }

    else
    {
      v27 = 6.0 * v10.f32[0];
      if (v10.f32[0] == 1.0)
      {
        v27 = 0.0;
      }

      v28 = v27;
      v29 = v27 - v27;
      v11 = vdupq_laneq_s32(v10, 2);
      v11.i32[1] = vmuls_lane_f32(1.0 - v10.f32[1], v10, 2);
      v11.i32[2] = vmuls_lane_f32(1.0 - (v10.f32[1] * v29), v10, 2);
      v30 = vmuls_lane_f32(1.0 - (v10.f32[1] * (1.0 - v29)), v10, 2);
      v31 = v11;
      *&v31.i32[3] = v30;
      if (v28 <= 1)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            v11 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
          }
        }

        else
        {
          v11 = vzip1q_s32(v31, vextq_s8(v31, v31, 0xCuLL));
        }
      }

      else
      {
        switch(v28)
        {
          case 2:
            v11 = vrev64q_s32(v31);
            break;
          case 3:
            v11 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
            break;
          case 4:
            v11 = vextq_s8(v31, vrev64q_s32(v31), 0xCuLL);
            break;
        }
      }
    }

    v37 = v11;
    sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v40 = v12;
    v39[0] = swift_allocObject();
    *(v39[0] + 16) = v37;
    v13 = [a1 context];
  }

  else
  {
    v14 = [a1 context];
    v15 = [v14 JSGlobalContextRef];

    v16 = JSObjectGetTypedArrayBuffer(v15, [a1 JSValueRef], 0);
    v17 = JSObjectGetArrayBufferBytesPtr(v15, v16, 0);
    v18 = 0uLL;
    if (v17)
    {
      v18 = *v17;
    }

    v19 = v18;
    v19.i32[3] = 0;
    v20 = vmaxnmq_f32(v19, 0);
    v20.i32[3] = 0;
    v21 = vminnmq_f32(v20, xmmword_1AFE208C0);
    if (v21.f32[1] == 0.0)
    {
      v22 = vdupq_laneq_s32(v21, 2);
    }

    else
    {
      v32 = 6.0 * v21.f32[0];
      if (v21.f32[0] == 1.0)
      {
        v32 = 0.0;
      }

      v33 = v32;
      v34 = v32 - v32;
      v22 = vdupq_laneq_s32(v21, 2);
      v22.i32[1] = vmuls_lane_f32(1.0 - v21.f32[1], v21, 2);
      v22.i32[2] = vmuls_lane_f32(1.0 - (v21.f32[1] * v34), v21, 2);
      v35 = vmuls_lane_f32(1.0 - (v21.f32[1] * (1.0 - v34)), v21, 2);
      v36 = v22;
      *&v36.i32[3] = v35;
      if (v33 <= 1)
      {
        if (v33)
        {
          if (v33 == 1)
          {
            v22 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
          }
        }

        else
        {
          v22 = vzip1q_s32(v36, vextq_s8(v36, v36, 0xCuLL));
        }
      }

      else
      {
        switch(v33)
        {
          case 2:
            v22 = vrev64q_s32(v36);
            break;
          case 3:
            v22 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
            break;
          case 4:
            v22 = vextq_s8(v36, vrev64q_s32(v36), 0xCuLL);
            break;
        }
      }
    }

    v22.i32[3] = v18.i32[3];
    v38 = v22;
    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v40 = v23;
    v39[0] = swift_allocObject();
    *(v39[0] + 16) = v38;
    v13 = [a1 context];
  }

  v24 = v13;
  v25 = sub_1AFAD42DC(v39, v24);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
  return v25;
}

uint64_t sub_1AFAD80A4(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 JSGlobalContextRef];

  if ((JSObjectGetTypedArrayByteLength(v3, [a1 JSValueRef], 0) & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
  {
    v4 = [a1 context];
    v5 = [v4 JSGlobalContextRef];

    TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v5, [a1 JSValueRef], 0);
    ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v5, TypedArrayBuffer, 0);
    if (ArrayBufferBytesPtr)
    {
      v8 = *ArrayBufferBytesPtr;
    }

    else
    {
      v8 = 0uLL;
    }

    v27 = v8;
    v14 = vdivq_f32(vaddq_f32(v8, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du));
    v14.i32[3] = 0;
    v15 = _simd_pow_f4(v14, xmmword_1AFE42AB0);
    v16 = vcgeq_f32(vdupq_n_s32(0x3D25AEE6u), v27);
    v16.i32[3] = 0;
    v28 = vbslq_s8(vcltzq_s32(v16), vdivq_f32(v27, vdupq_n_s32(0x414EB852u)), v15);
    sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v32 = v17;
    v31[0] = swift_allocObject();
    *(v31[0] + 16) = v28;
    v18 = [a1 context];
  }

  else
  {
    v9 = [a1 context];
    v10 = [v9 JSGlobalContextRef];

    v11 = JSObjectGetTypedArrayBuffer(v10, [a1 JSValueRef], 0);
    v12 = JSObjectGetArrayBufferBytesPtr(v10, v11, 0);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0uLL;
    }

    v29 = v13;
    v19 = vdivq_f32(vaddq_f32(v13, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du));
    v19.i32[3] = 0;
    v20 = _simd_pow_f4(v19, xmmword_1AFE42AB0);
    v21 = vcgeq_f32(vdupq_n_s32(0x3D25AEE6u), v29);
    v21.i32[3] = 0;
    v22 = vbslq_s8(vcltzq_s32(v21), vdivq_f32(v29, vdupq_n_s32(0x414EB852u)), v20);
    v22.i32[3] = v29.i32[3];
    v30 = v22;
    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v32 = v23;
    v31[0] = swift_allocObject();
    *(v31[0] + 16) = v30;
    v18 = [a1 context];
  }

  v24 = v18;
  v25 = sub_1AFAD42DC(v31, v24);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
  return v25;
}

uint64_t sub_1AFAD840C(void *a1)
{
  v2 = [a1 context];
  v3 = [v2 JSGlobalContextRef];

  if ((JSObjectGetTypedArrayByteLength(v3, [a1 JSValueRef], 0) & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
  {
    v4 = [a1 context];
    v5 = [v4 JSGlobalContextRef];

    TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v5, [a1 JSValueRef], 0);
    ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v5, TypedArrayBuffer, 0);
    if (ArrayBufferBytesPtr)
    {
      v8 = *ArrayBufferBytesPtr;
    }

    else
    {
      v8 = 0uLL;
    }

    v25 = v8;
    v8.i32[3] = 0;
    v14 = _simd_pow_f4(v8, xmmword_1AFE6CA40);
    v15 = vcgeq_f32(vdupq_n_s32(0x3B4D2E1Cu), v25);
    v15.i32[3] = 0;
    v26 = vbslq_s8(vcltzq_s32(v15), vmulq_f32(v25, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), v14));
    sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v30 = v16;
    v29[0] = swift_allocObject();
    *(v29[0] + 16) = v26;
    v17 = [a1 context];
  }

  else
  {
    v9 = [a1 context];
    v10 = [v9 JSGlobalContextRef];

    v11 = JSObjectGetTypedArrayBuffer(v10, [a1 JSValueRef], 0);
    v12 = JSObjectGetArrayBufferBytesPtr(v10, v11, 0);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0uLL;
    }

    v27 = v13;
    v13.i32[3] = 0;
    v18 = _simd_pow_f4(v13, xmmword_1AFE6CA40);
    v19 = vcgeq_f32(vdupq_n_s32(0x3B4D2E1Cu), v27);
    v19.i32[3] = 0;
    v20 = vbslq_s8(vcltzq_s32(v19), vmulq_f32(v27, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), v18));
    v20.i32[3] = v27.i32[3];
    v28 = v20;
    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v30 = v21;
    v29[0] = swift_allocObject();
    *(v29[0] + 16) = v28;
    v17 = [a1 context];
  }

  v22 = v17;
  v23 = sub_1AFAD42DC(v29, v22);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
  return v23;
}

void *sub_1AFAD8744()
{
  v1[4] = sub_1AFAD87C8;
  v1[5] = 0;
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1107296256;
  v1[2] = sub_1AFAD91A4;
  v1[3] = &unk_1F255DF60;
  result = _Block_copy(v1);
  qword_1EB642848 = result;
  return result;
}

uint64_t sub_1AFAD87C8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v84[10] = *MEMORY[0x1E69E9840];
  v10 = [a1 toNumber];
  v11 = [v10 unsignedIntegerValue];

  sub_1AFADAE08(v11, &v81);
  sub_1AFABB57C(&v81, v84);
  if ([a2 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  v81 = v79;
  v82 = v80;
  if (!*(&v80 + 1))
  {
    sub_1AF44CB60(&v81);
    goto LABEL_12;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v22 = [a1 context];
    v23 = [objc_opt_self() valueWithNullInContext_];
LABEL_13:

LABEL_14:
    sub_1AFABB5D8(v84);
    return v23;
  }

  v12 = [a3 toString];
  if (!v12)
  {
    v22 = [a1 context];
    v23 = [objc_opt_self() valueWithNullInContext_];

    goto LABEL_13;
  }

  v13 = v12;
  sub_1AFDFCEF8();

  v14 = sub_1AFDFCEC8();
  v15 = NSSelectorFromString(v14);
  swift_bridgeObjectRelease_n();

  if ([a4 isArray] & 1) == 0 || (v16 = sub_1AFDFCEC8(), v17 = objc_msgSend(a4, sel_objectForKeyedSubscript_, v16), v16, LODWORD(v16) = objc_msgSend(v17, sel_toInt32), v17, v18 = v16, (v16) || (v19 = objc_msgSend(a5, sel_toNumber), v20 = objc_msgSend(v19, sel_unsignedLongLongValue), v19, v74 = v84[0], v21 = sub_1AF9105CC(v20, v84[0], 0), (~v21 & 0xF000000000000007) == 0))
  {
    v25 = [a1 context];
    v23 = [objc_opt_self() valueWithNullInContext_];

    goto LABEL_14;
  }

  v70 = v15;
  v71 = v21;
  v72 = v77;
  v26 = v18 >> 1;
  v69 = v18 >> 1;
  if (v18)
  {
    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = 1;
    v30 = &selRef_numberWithBool_;
    v31 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v76 = v26;
      v32 = [a4 v30[16]];
      v33 = [v32 toNumber];

      v34 = [v33 unsignedLongLongValue];
      v35 = sub_1AF9105CC(v34, v74, 0);
      if ((~v35 & 0xF000000000000007) == 0)
      {
        break;
      }

      v36 = v35;
      v37 = [a4 v30[16]];
      if (!v37)
      {
        v68 = [a1 context];
        v64 = [objc_opt_self() valueWithNullInContext_];

        sub_1AF914F8C(v71);
        v67 = v36;
        goto LABEL_45;
      }

      v38 = v37;
      sub_1AF90E730(v36);
      if (!v39)
      {
        *&v81 = 0;
        *(&v81 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
        *&v79 = v36;
        sub_1AFDFE458();
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      sub_1AFAD3B10(v38, &v79);
      *(&v82 + 1) = &type metadata for Extensions;
      v83 = &off_1F253E6E8;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);
      sub_1AF449D40(&v79, &v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1AF4278A0(0, v31[2] + 1, 1, v31);
      }

      v41 = v31[2];
      v40 = v31[3];
      if (v41 >= v40 >> 1)
      {
        v31 = sub_1AF4278A0(v40 > 1, v41 + 1, 1, v31);
      }

      v31[2] = v41 + 1;
      sub_1AF0FBA54(&v81, &v31[5 * v41 + 4]);
      v42 = v31[v27 + 7];
      v43 = v31[v27 + 8];
      sub_1AF448018(&v31[v27 + 4], v42);
      v44 = sub_1AF872958(v42, v43);
      v75 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AF42469C(0, *(v28 + 2) + 1, 1, v28);
      }

      v45 = v28;
      v46 = *(v28 + 2);
      v47 = v45;
      v48 = *(v45 + 3);
      if (v46 >= v48 >> 1)
      {
        v47 = sub_1AF42469C(v48 > 1, v46 + 1, 1, v47);
      }

      sub_1AF914F8C(v36);

      *(v47 + 2) = v46 + 1;
      v49 = &v47[8 * v46];
      v28 = v47;
      *(v49 + 4) = v44;
      v29 += 2;
      v27 += 10;
      v26 = v76 - 1;
      v31 = v75;
      a4 = v73;
      v30 = &selRef_numberWithBool_;
      if (v76 == 1)
      {
        goto LABEL_33;
      }
    }

    v66 = [a1 context];
    v64 = [objc_opt_self() valueWithNullInContext_];

    v67 = v71;
LABEL_45:
    sub_1AF914F8C(v67);
    sub_1AFABB5D8(v84);
    goto LABEL_46;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_33:
  if (sub_1AF90F890(v71, 0xC000000000000000))
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
  }

  else
  {
    sub_1AF90EDE8(v71, &v79, 0.0);
    *(&v82 + 1) = &type metadata for Extensions;
    v83 = &off_1F253E6E8;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);
    sub_1AF449D40(&v79, &v81);
  }

  sub_1AFADAF7C(&v81, &v79);
  v50 = *(&v80 + 1);
  sub_1AFADB074(&v79);
  if (v50)
  {
    v51 = *(&v82 + 1);
    v52 = v83;
    v53 = sub_1AF448018(&v81, *(&v82 + 1));
    v59 = sub_1AF87295C(v51, v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    v59 = 0;
  }

  sub_1AF38CA1C(v72, v70, v28 + 4, v69, v59);
  sub_1AFADAF7C(&v81, &v77);
  if (v78)
  {
    sub_1AF0FBA54(&v77, &v79);
    v60 = *(&v80 + 1);
    v61 = sub_1AF441150(&v79, *(&v80 + 1));
    v78 = v60;
    v62 = sub_1AF585714(&v77);
    (*(*(v60 - 8) + 16))(v62, v61, v60);
    v63 = [a1 context];
    v64 = sub_1AFAD42DC(&v77, v63);

    sub_1AF914F8C(v71);
    sub_1AFABB5D8(v84);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v77);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v79);
  }

  else
  {
    sub_1AFADB074(&v77);
    v65 = [a1 context];
    v64 = [objc_opt_self() valueWithNullInContext_];

    sub_1AF914F8C(v71);
    sub_1AFABB5D8(v84);
  }

  sub_1AFADB074(&v81);
LABEL_46:

  return v64;
}

id sub_1AFAD91A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v11(v12, v13, v14, v15, v16);

  return v17;
}

void *sub_1AFAD929C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6[4] = a2;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AFAD7194;
  v6[3] = a3;
  result = _Block_copy(v6);
  *a4 = result;
  return result;
}

id sub_1AFAD9310(void *a1)
{
  v2 = [a1 toNumber];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  sub_1AFADAE08(v4, v14);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1AF12F4D0(Strong);
    if (v7)
    {
      v8 = v7;
      sub_1AFABB5D8(v14);

LABEL_10:
      v14[3] = sub_1AF0D4478(0, &qword_1EB633BB0);
      v14[0] = v8;
      v11 = v8;
      v12 = [a1 context];
      v10 = sub_1AFAD42DC(v14, v12);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
      return v10;
    }

    v8 = sub_1AF12F434(v6);

    sub_1AFABB5D8(v14);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1AFABB5D8(v14);
  }

  v9 = [a1 context];
  v10 = [objc_opt_self() valueWithNullInContext_];

  return v10;
}

void *sub_1AFAD9488()
{
  v1[4] = sub_1AFAD950C;
  v1[5] = 0;
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1107296256;
  v1[2] = sub_1AFAD9B78;
  v1[3] = &unk_1F255DF10;
  result = _Block_copy(v1);
  qword_1EB642858 = result;
  return result;
}

id sub_1AFAD950C(void *a1, void *a2, void *a3)
{
  v6 = [a1 toNumber];
  if (!v6 || (v7 = v6, v8 = [v6 unsignedIntegerValue], v7, !v8))
  {
    v13 = [a1 context];
    v14 = [objc_opt_self() valueWithNullInContext_];
    goto LABEL_15;
  }

  sub_1AFADAE08(v8, v32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    sub_1AFABB5D8(v32);
    goto LABEL_8;
  }

  v10 = Strong;
  v11 = sub_1AF12F4D0(Strong);
  if (v11)
  {
    v12 = v11;
    sub_1AFABB5D8(v32);

    goto LABEL_10;
  }

  v12 = sub_1AF12F434(v10);

  sub_1AFABB5D8(v32);
  if (!v12)
  {
LABEL_8:
    v13 = [a1 context];
    v14 = [objc_opt_self() valueWithNullInContext_];
    goto LABEL_15;
  }

LABEL_10:
  v15 = [a3 toDictionary];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v17 = sub_1AFDFCC08();

  v18 = [a2 context];
  v19 = [v18 JSGlobalContextRef];

  TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v19, [a2 JSValueRef], 0);
  ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v19, TypedArrayBuffer, 0);
  if (ArrayBufferBytesPtr)
  {
    v31 = vcvtq_f64_f32(*ArrayBufferBytesPtr);
    v22 = v12;
    sub_1AFAD98D0(v17);

    type metadata accessor for VFXHitTestOption(0);
    sub_1AFADAEBC();
    v23 = sub_1AFDFCBE8();

    v24 = [v22 hitTest:v23 options:*&v31];

    sub_1AF0D4478(0, &qword_1EB6427A0);
    v25 = sub_1AFDFD418();

    sub_1AFADAF14(0, &qword_1EB63B9B0, &qword_1EB6427A0, &off_1E7A77AA8, MEMORY[0x1E69E62F8]);
    v32[3] = v26;
    v32[0] = v25;
    v27 = [a1 context];
    v28 = sub_1AFAD42DC(v32, v27);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
    return v28;
  }

  v13 = [a1 context];
  v14 = [objc_opt_self() valueWithNullInContext_];
LABEL_15:
  v30 = v14;

  return v30;
}

uint64_t sub_1AFAD98D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1AF4429B4();
    v2 = sub_1AFDFE5C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_14:
    v11 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1AF442860(*(a1 + 48) + 40 * v11, &v25);
    sub_1AF0D5A54(*(a1 + 56) + 32 * v11, v27 + 8);
    v23[0] = v27[0];
    v23[1] = v27[1];
    v24 = v28;
    *&v22[5] = v25;
    *&v22[7] = v26;
    v20[4] = v25;
    v20[5] = v26;
    v21 = *&v27[0];
    type metadata accessor for VFXHitTestOption(0);
    swift_dynamicCast();
    sub_1AF449D40((v23 + 8), &v22[1]);
    v12 = v22[0];
    sub_1AF449D40(&v22[1], v20);
    sub_1AF449D40(v20, v22);
    sub_1AFDFCEF8();
    sub_1AFDFF288();
    sub_1AFDFD038();
    v13 = sub_1AFDFF2F8();

    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) != 0)
    {
      v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = (63 - v14) >> 6;
      do
      {
        if (v16 + 1 == v17)
        {
          v16 = 0;
        }

        else
        {
          ++v16;
        }

        v18 = *(v7 + 8 * v16);
      }

      while (v18 == -1);
      v9 = __clz(__rbit64(~v18)) + (v16 << 6);
    }

    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v9) = v12;
    sub_1AF449D40(v22, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v8++ + 72);
    if (v5)
    {
      v8 = v10;
      goto LABEL_14;
    }
  }

  return v2;
}

id sub_1AFAD9B78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7(v8, v9, v10);

  return v11;
}

void *sub_1AFAD9C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6[4] = a2;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AFAD6410;
  v6[3] = a3;
  result = _Block_copy(v6);
  *a4 = result;
  return result;
}

id sub_1AFAD9CB4(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 toNumber];
  if (!v8 || (v9 = v8, v10 = [v8 unsignedIntegerValue], v9, !v10))
  {
    v15 = [a1 context];
    v16 = [objc_opt_self() valueWithNullInContext_];
    goto LABEL_16;
  }

  sub_1AFADAE08(v10, v40);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    sub_1AFABB5D8(v40);
    goto LABEL_15;
  }

  v12 = Strong;
  v13 = sub_1AF12F4D0(Strong);
  if (v13)
  {
    v14 = v13;
    sub_1AFABB5D8(v40);
  }

  else
  {
    v14 = sub_1AF12F434(v12);

    sub_1AFABB5D8(v40);
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v17 = [a4 toDictionary];
  if (!v17)
  {
LABEL_15:
    v15 = [a1 context];
    v16 = [objc_opt_self() valueWithNullInContext_];
    goto LABEL_16;
  }

  v18 = v17;
  v19 = sub_1AFDFCC08();

  v20 = [a2 context];
  v21 = [v20 JSGlobalContextRef];

  TypedArrayBuffer = JSObjectGetTypedArrayBuffer(v21, [a2 JSValueRef], 0);
  ArrayBufferBytesPtr = JSObjectGetArrayBufferBytesPtr(v21, TypedArrayBuffer, 0);
  if (ArrayBufferBytesPtr)
  {
    v39 = *ArrayBufferBytesPtr;
    v24 = [a3 context];
    v25 = [v24 JSGlobalContextRef];

    v26 = JSObjectGetTypedArrayBuffer(v25, [a3 JSValueRef], 0);
    v27 = JSObjectGetArrayBufferBytesPtr(v25, v26, 0);
    if (v27)
    {
      v38 = *v27;
      v28 = v14;
      v29 = sub_1AFAD98D0(v19);

      sub_1AF3DA05C(v29);

      v30 = sub_1AFDFCBE8();

      v31 = [v28 hitTestWithSegmentFromPoint:v30 toPoint:*&v39 options:*&v38];

      v32 = sub_1AFDFD418();
      sub_1AFADAE64(0, &qword_1EB6382E0, MEMORY[0x1E69E62F8]);
      v40[3] = v33;
      v40[0] = v32;
      v34 = [a1 context];
      v35 = sub_1AFAD42DC(v40, v34);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
      return v35;
    }
  }

  v15 = [a1 context];
  v16 = [objc_opt_self() valueWithNullInContext_];
LABEL_16:
  v37 = v16;

  return v37;
}

uint64_t sub_1AFADA0C8()
{
  sub_1AFADAA2C(0, &qword_1ED722F10, sub_1AF6F2AA8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE99990;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x80000001AFF42860;
  if (qword_1EB637260 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB6427F8;
  v2 = sub_1AFADAA90();
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000001DLL;
  *(inited + 88) = 0x80000001AFF42820;
  _Block_copy(v1);
  if (qword_1EB637258 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6427F0;
  v4 = sub_1AFADAB0C();
  *(inited + 96) = v3;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001AFF428A0;
  _Block_copy(v3);
  if (qword_1EB637270 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB642808;
  *(inited + 144) = qword_1EB642808;
  *(inited + 168) = v2;
  *(inited + 176) = 0xD00000000000001BLL;
  *(inited + 184) = 0x80000001AFF42880;
  _Block_copy(v5);
  if (qword_1EB637268 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB642800;
  *(inited + 192) = qword_1EB642800;
  *(inited + 216) = v4;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x80000001AFF3AF40;
  _Block_copy(v6);
  if (qword_1EB6372B0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB642848;
  v8 = sub_1AFADAB90();
  *(inited + 240) = v7;
  *(inited + 264) = v8;
  *(inited + 272) = 0xD00000000000001DLL;
  *(inited + 280) = 0x80000001AFF45F00;
  _Block_copy(v7);
  if (qword_1EB6372B8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB642850;
  v10 = sub_1AFADAC10();
  *(inited + 288) = v9;
  *(inited + 312) = v10;
  *(inited + 320) = 0xD000000000000016;
  *(inited + 328) = 0x80000001AFF45F20;
  _Block_copy(v9);
  if (qword_1EB6372C0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB642858;
  v12 = sub_1AFADAC78();
  *(inited + 336) = v11;
  *(inited + 360) = v12;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x80000001AFF45F40;
  _Block_copy(v11);
  if (qword_1EB6372C8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB642860;
  *(inited + 384) = qword_1EB642860;
  *(inited + 408) = v2;
  *(inited + 416) = 0xD000000000000014;
  *(inited + 424) = 0x80000001AFF40630;
  _Block_copy(v13);
  if (qword_1EB637278 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB642810;
  *(inited + 432) = qword_1EB642810;
  *(inited + 456) = v10;
  *(inited + 464) = 0xD000000000000017;
  *(inited + 472) = 0x80000001AFF405B0;
  _Block_copy(v14);
  if (qword_1EB637280 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB642818;
  v16 = sub_1AFADACE8();
  *(inited + 480) = v15;
  *(inited + 504) = v16;
  *(inited + 512) = 0xD000000000000013;
  *(inited + 520) = 0x80000001AFF40550;
  _Block_copy(v15);
  if (qword_1EB637288 != -1)
  {
    swift_once();
  }

  v17 = qword_1EB642820;
  *(inited + 552) = v10;
  *(inited + 528) = v17;
  strcpy((inited + 560), "vfx_rgb_to_hsb");
  *(inited + 575) = -18;
  _Block_copy(v17);
  if (qword_1EB637290 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB642828;
  *(inited + 600) = v10;
  *(inited + 576) = v18;
  strcpy((inited + 608), "vfx_hsb_to_rgb");
  *(inited + 623) = -18;
  _Block_copy(v18);
  if (qword_1EB637298 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB642830;
  *(inited + 648) = v10;
  *(inited + 624) = v19;
  *(inited + 656) = 0xD000000000000012;
  *(inited + 664) = 0x80000001AFF45F60;
  _Block_copy(v19);
  if (qword_1EB6372A0 != -1)
  {
    swift_once();
  }

  v20 = qword_1EB642838;
  *(inited + 696) = v10;
  *(inited + 672) = v20;
  *(inited + 704) = 0xD000000000000012;
  *(inited + 712) = 0x80000001AFF45F80;
  _Block_copy(v20);
  if (qword_1EB6372A8 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB642840;
  *(inited + 744) = v10;
  *(inited + 720) = v21;
  _Block_copy(v21);
  v22 = sub_1AF440858(inited);
  swift_setDeallocating();
  sub_1AF6F2AA8();
  result = swift_arrayDestroy();
  qword_1EB6C35A0 = v22;
  return result;
}

uint64_t sub_1AFADA764()
{
  if (qword_1EB6372D0 != -1)
  {
    swift_once();
  }

  v0 = 1 << *(qword_1EB6C35A0 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(qword_1EB6C35A0 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = 0;

  v5 = v24 + 72;
  while (1)
  {
    if (v2)
    {
      v8 = v4;
LABEL_17:
      v11 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v12 = v11 | (v8 << 6);
      v13 = (*(v24 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1AF0D5A54(*(v24 + 56) + 32 * v12, &v27);
      *&v29 = v15;
      *(&v29 + 1) = v14;
      sub_1AF449D40(&v27, &v30);
    }

    else
    {
      v9 = v3 <= v4 + 1 ? v4 + 1 : v3;
      v10 = v9 - 1;
      while (1)
      {
        v8 = v4 + 1;
        if (v4 + 1 >= v3)
        {
          break;
        }

        v2 = *(v5 + 8 * v4++);
        if (v2)
        {
          v4 = v8;
          goto LABEL_17;
        }
      }

      v2 = 0;
      v30 = 0u;
      v31 = 0u;
      v4 = v10;
      v29 = 0u;
    }

    v32 = v29;
    v33[0] = v30;
    v33[1] = v31;
    if (!*(&v29 + 1))
    {
    }

    sub_1AF449D40(v33, &v29);
    sub_1AF44CBE4(&v29, &v27);
    v16 = v28;
    if (v28)
    {
      v17 = sub_1AF441150(&v27, v28);
      v26 = &v23;
      v18 = *(v16 - 8);
      v19 = MEMORY[0x1EEE9AC00](v17, v17);
      v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v6 = sub_1AFDFEE08();
      (*(v18 + 8))(v21, v16);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_1AFDFCEC8();

    [v25 setObject:v6 forKeyedSubscript:v7];
    swift_unknownObjectRelease();

    sub_1AF44CB60(&v29);
  }
}

void sub_1AFADAA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AFADAA90()
{
  result = qword_1EB642868;
  if (!qword_1EB642868)
  {
    sub_1AF0D4478(255, &qword_1EB6383F0);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_1EB642868);
  }

  return result;
}

unint64_t sub_1AFADAB0C()
{
  result = qword_1EB642870;
  if (!qword_1EB642870)
  {
    sub_1AF0D4478(255, &qword_1EB6383F0);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_1EB642870);
  }

  return result;
}

unint64_t sub_1AFADAB90()
{
  result = qword_1EB642878;
  if (!qword_1EB642878)
  {
    sub_1AF0D4478(255, &qword_1EB6383F0);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_1EB642878);
  }

  return result;
}

unint64_t sub_1AFADAC10()
{
  result = qword_1EB642880;
  if (!qword_1EB642880)
  {
    sub_1AF0D4478(255, &qword_1EB6383F0);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB642880);
  }

  return result;
}

unint64_t sub_1AFADAC78()
{
  result = qword_1EB642888;
  if (!qword_1EB642888)
  {
    sub_1AF0D4478(255, &qword_1EB6383F0);
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &qword_1EB642888);
  }

  return result;
}

unint64_t sub_1AFADACE8()
{
  result = qword_1EB642890;
  if (!qword_1EB642890)
  {
    sub_1AF0D4478(255, &qword_1EB6383F0);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1EB642890);
  }

  return result;
}

uint64_t sub_1AFADAD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  v6 = sub_1AFDFDA28();
  v8 = 0;
  (*(*v5 + 88))(v6, &v8, a1, a2);
}

uint64_t sub_1AFADADF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AFADAE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AFADAEBC()
{
  result = qword_1EB637E00;
  if (!qword_1EB637E00)
  {
    type metadata accessor for VFXHitTestOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB637E00);
  }

  return result;
}

void sub_1AFADAF14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF0D4478(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AFADAF7C(uint64_t a1, uint64_t a2)
{
  sub_1AFADAA2C(0, &qword_1EB642898, sub_1AFADB010, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AFADB010()
{
  result = qword_1EB638418;
  if (!qword_1EB638418)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB638418);
  }

  return result;
}

uint64_t sub_1AFADB074(uint64_t a1)
{
  sub_1AFADAA2C(0, &qword_1EB642898, sub_1AFADB010, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for ScriptParameterJSMapper(id *a1)
{
}

uint64_t initializeWithCopy for ScriptParameterJSMapper(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  v8 = v3;

  v9 = v7;

  return a1;
}

uint64_t assignWithCopy for ScriptParameterJSMapper(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v7 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v7;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;
  v10 = v8;

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

__n128 initializeWithTake for ScriptParameterJSMapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for ScriptParameterJSMapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptParameterJSMapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptParameterJSMapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFADB484()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *(*v0 + 32);
  }

  else
  {
    v2 = 0;
  }

  sub_1AF64DF4C(0, v1 != 0);
  return v2;
}

uint64_t sub_1AFADB4E4(uint64_t a1, unsigned __int8 a2)
{
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_2;
  }

  type metadata accessor for frame_constants(0);
  if (swift_dynamicCastMetatype())
  {
LABEL_4:
    v4 = a2 != 2;
    return v4 & 1;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
LABEL_10:
    v4 = 0;
    return v4 & 1;
  }

  if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
  {
    sub_1AF8C0110();
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        if (a2 != 3)
        {
          v6 = sub_1AFDFEE28();

          if (v6)
          {
            goto LABEL_10;
          }

          if (a2 < 4u)
          {
            v7 = sub_1AFDFEE28();

            v4 = v7 ^ 1;
            return v4 & 1;
          }
        }

        v4 = 0;
        return v4 & 1;
      }

      if (a1 != MEMORY[0x1E69E7CA0] + 8)
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_4;
        }

        type metadata accessor for __vfx_sampler1d(0);
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_4;
        }

        type metadata accessor for __vfx_sampler2d(0);
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_4;
        }

        type metadata accessor for __vfx_sampler3d(0);
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_2:
  v4 = 1;
  return v4 & 1;
}

float sub_1AFADB790@<S0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v2.i64[0] = vmulq_f32(*a1, v2).u64[0];
  result = vmuls_lane_f32(0.5, *a1, 2);
  v2.i64[1] = LODWORD(result);
  *a2 = v2;
  return result;
}

float sub_1AFADB7B4(float32x4_t *a1, _OWORD *a2)
{
  *&v2 = vaddq_f32(*a1, *a1).u64[0];
  result = COERCE_FLOAT(a1->i64[1]) + COERCE_FLOAT(a1->i64[1]);
  *(&v2 + 2) = result;
  HIDWORD(v2) = 0;
  *a2 = v2;
  return result;
}

float32x2_t sub_1AFADB7D4@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  result = vmul_f32(*a1, 0x3F0000003F000000);
  *a2 = result;
  return result;
}

float32x2_t sub_1AFADB7E8(float32x2_t *a1, float32x2_t *a2)
{
  result = vadd_f32(*a1, *a1);
  *a2 = result;
  return result;
}

float sub_1AFADB7F8@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  return result;
}

float sub_1AFADB80C(float *a1, float *a2)
{
  result = *a1 + *a1;
  *a2 = result;
  return result;
}

uint64_t sub_1AFADB81C()
{
  if ((*(v0 + 42) & 0x80) != 0)
  {
    return *(v0 + 40);
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1AFDFDFD8();
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 1;
  }

  v4 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (!sub_1AF640E28(v4))
    {
      return 1;
    }

    v6 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v7 = sub_1AF6411A4(v6);
      sub_1AFAF6E24(*(v1 + 24), *(v1 + 24));
      return v7 != v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFADB930(unsigned __int16 **a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(v4 + 16);

  v49 = v6;

  v50 = v4;
  sub_1AF630914(v5, v4, v55);
  *(v3 + 96) = v56;
  v7 = v55[1];
  *(v3 + 64) = v55[0];
  *(v3 + 80) = v7;
  v8 = *(v3 + 8);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_19:

    return 1;
  }

  v10 = 0;
  v11 = (v8 + 48);
  v45 = *(v8 + 16);
  v46 = v5;
  v51 = v3;
  while (1)
  {
    v14 = *(v11 - 2);
    if (v14 >> 60 != 5)
    {
      goto LABEL_5;
    }

    v15 = *v11;
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    v18 = *(v3 + 28);
    v19 = *(v3 + 36);
    v20 = *(v11 - 8);

    sub_1AF443EE0(v14);
    v53 = v15;
    sub_1AF444224(v15);
    v52 = v14;
    v24 = sub_1AFAE0478(v14, v20, v16, v17, v18, v19, v50, 0, v5);
    if (v23 >= 0xFCu)
    {
      break;
    }

    v25 = v21;
    v26 = v22;
    v27 = v23;

    if (v27 >> 6)
    {
      v3 = v51;
      if (v27 >> 6 == 1)
      {
        sub_1AF448910(v24, v25, v26, v27);
        v13 = v24;
        v28 = v25;
        v29 = v26;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v13 = v24(v50);
        v28 = v30;
        v29 = v31;
        if (v30)
        {
LABEL_15:
          v48 = v13;
          v32 = swift_allocObject();
          *(v32 + 16) = v28;
          *(v32 + 24) = v29;
          v47 = v32;
          v33 = *(v3 + 56);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1AF4221DC(0, v33[2] + 1, 1, v33);
          }

          v35 = v33[2];
          v34 = v33[3];
          if (v35 >= v34 >> 1)
          {
            v33 = sub_1AF4221DC(v34 > 1, v35 + 1, 1, v33);
          }

          v33[2] = v35 + 1;
          v12 = &v33[2 * v35];
          v12[4] = sub_1AF464154;
          v12[5] = v47;
          v3 = v51;
          *(v51 + 56) = v33;
          v13 = v48;
        }
      }
    }

    else
    {
      sub_1AF448910(v24, v25, v26, v27);
      v13 = v24;
      v28 = v25;
      v29 = v26;
      v3 = v51;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    *(*v3 + 8 * v10) = v13;
    sub_1AF0FB8EC(v28);
    sub_1AF93DA44(v24, v25, v26, v27);
    sub_1AF443F24(v52);
    sub_1AF444AF4(v53);
    v9 = v45;
    v5 = v46;
LABEL_5:
    ++v10;
    v11 += 5;
    if (v9 == v10)
    {
      goto LABEL_19;
    }
  }

  if (*(v49 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) == 1)
  {

    sub_1AF443F24(v14);
    sub_1AF444AF4(v53);
  }

  else
  {
    v37 = *(v49 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    v54[1] = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
    sub_1AFDFE458();
    v38 = sub_1AFDFDA08();
    v54[0] = 0;
    (*(*v37 + 88))(v38, v54, 0, 0xE000000000000000);

    sub_1AF443F24(v14);
    sub_1AF444AF4(v53);
  }

  v39 = *(v51 + 56);
  sub_1AF630994(v50, a1, v55);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v39 + 40;
    do
    {
      v42 = *(v41 - 8);

      v42(v43);

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  return 0;
}

uint64_t sub_1AFADBD8C(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void))
{
  if (!a9)
  {
    a10();
    return 0;
  }

  v407 = &unk_1F262DBA0;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (!v15)
  {
    v24 = swift_unknownObjectRetain();
    (a10)(v24);
LABEL_262:
    swift_unknownObjectRelease();
    return 0;
  }

  v16 = v15;
  v366 = a5;
  v17 = *(a8 + 248);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = v17;
  v395 = [v16 bufferStructType];
  v375 = v18;
  CFXBufferAllocatorPerFrameAllocateWithLength(v18, [v16 bufferDataSize]);
  v20 = v19;
  v22 = v21;
  v23 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v373 = v20;
  v394 = v22;
  if (v23 == 2)
  {
    v387 = 0;
  }

  else
  {
    v25 = [swift_unknownObjectRetain() contents];
    v26 = v20;
    v387 = &v25[v22];
  }

  if (!*a2)
  {
    memset(v416, 0, sizeof(v416));
    v417 = xmmword_1AFE4C450;
    *a2 = sub_1AFAB8C08(v416, *(a1 + 16));
  }

  v27 = OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v28 = type metadata accessor for ScriptingConfiguration();
  v29 = *(a1 + 16);
  if (!v29)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v35 = v394;
LABEL_19:
    swift_getObjectType();
    v36 = sub_1AF6F458C(v373, v35, 0, 6);
    (a10)(v36);

    v37 = v34[2];
    if (v37)
    {
      v38 = v34 + 5;
      do
      {
        v39 = *(v38 - 1);

        v39(v40);

        v38 += 2;
        --v37;
      }

      while (v37);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  v359 = a6;
  v374 = a8;
  v30 = 0;
  v397 = 0;
  v372 = 0;
  v355 = *(v10 + v27 + *(v28 + 36));
  v383 = v10;
  v381 = (v10 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v31 = a1 + 32;
  if (HIDWORD(a4))
  {
    v32 = 0;
  }

  else
  {
    v32 = a4 == -1;
  }

  v33 = v32;
  v356 = v33;
  v34 = MEMORY[0x1E69E7CC0];
  v360 = 7;
  v35 = v394;
  v380 = *(a1 + 16);
  v393 = a1 + 32;
  while (2)
  {
    v42 = v30;
    v43 = (v31 + 40 * v30);
    v44 = *v43;
    v45 = v43[2];
    ++v30;
    switch((*v43 >> 59) & 0x1E | (*v43 >> 2) & 1)
    {
      case 1uLL:
        v389 = v30;
        v46 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        __src = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x48);
        sub_1AF44596C((v44 & 0xFFFFFFFFFFFFFFBLL) + 16, &v405);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          sub_1AF443EE0(v44);
          sub_1AF444224(v45);
          sub_1AF443EE0(v44);

          sub_1AF443F24(v44);
          sub_1AF444AF4(v45);
          sub_1AF4459C8(&v405);
          sub_1AF443F24(v44);
          v312 = v34[2];
          if (v312)
          {
            v313 = v34 + 5;
            do
            {
              v314 = *(v313 - 1);

              v314(v315);

              v313 += 2;
              --v312;
            }

            while (v312);
          }

          goto LABEL_261;
        }

        v376 = v34;
        v48 = *(&v405 + 1);
        v49 = Strong;
        ObjectType = swift_getObjectType();
        v404 = ObjectType;
        *&v403 = v49;
        v51 = *(v48 + 16);
        sub_1AF443EE0(v44);
        sub_1AF444224(v45);
        sub_1AF443EE0(v44);

        swift_unknownObjectRetain();
        v52 = v51(ObjectType, v48);
        if (qword_1EB633DC0 != -1)
        {
          v286 = v52;
          v287 = v53;
          swift_once();
          v52 = v286;
          v53 = v287;
        }

        if (v52 == *(qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier) && v53 == *(qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8))
        {

          v56 = v376;
          v57 = v46;
        }

        else
        {
          v55 = sub_1AFDFEE28();

          v56 = v376;
          v57 = v46;
          if ((v55 & 1) == 0)
          {
LABEL_125:
            sub_1AF0D5A54(&v403, &v398);
            sub_1AF4498F4(0, &unk_1EB633A00);
            if (swift_dynamicCast())
            {
              v146 = v400[0];
              v147 = swift_getObjectType();
              (*(*(&v146 + 1) + 32))(v400, v147, *(&v146 + 1));

              sub_1AF449D40(v400, &v401);
            }

            else
            {
              sub_1AF0D5A54(&v403, &v401);
            }

            v148 = sub_1AFDFDFD8();
            v149 = swift_conformsToProtocol2();
            if (v149)
            {
              v150 = v148 == 0;
            }

            else
            {
              v150 = 1;
            }

            if (v150 || (v151 = v149, sub_1AF441150(&v401, v402), v152 = sub_1AFDFEE08(), v153 = sub_1AFAF6214(v57, v152, v148, v151), swift_unknownObjectRelease(), !v153))
            {
              swift_unknownObjectRelease();

              sub_1AF443F24(v44);
              sub_1AF444AF4(v45);
              sub_1AF4459C8(&v405);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v401);
            }

            else
            {
              sub_1AFDFDFD8();
              swift_getAtAnyKeyPath();
              if (v399)
              {
                sub_1AF449D40(&v398, v400);
                v154 = sub_1AFAF6E24(__src, __src);
                v156 = ecs_stack_allocator_allocate(*(a7 + 32), v154, v155);
                sub_1AF0D5A54(v400, &v398);
                sub_1AF441150(&v398, v399);
                DynamicType = swift_getDynamicType();
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v398);
                sub_1AF8713D0(v400, v156, DynamicType);

                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v400);
                v158 = swift_allocObject();
                *(v158 + 16) = DynamicType;
                *(v158 + 24) = v156;
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v401);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v403);
                v159 = swift_allocObject();
                *(v159 + 16) = sub_1AFAE31E0;
                *(v159 + 24) = v158;
                swift_retain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v56 = sub_1AF4221DC(0, v56[2] + 1, 1, v56);
                }

                v160 = v56;
                v161 = v56[2];
                v162 = v160;
                v163 = v160[3];
                if (v161 >= v163 >> 1)
                {
                  v162 = sub_1AF4221DC(v163 > 1, v161 + 1, 1, v162);
                }

                v162[2] = v161 + 1;
                v164 = &v162[2 * v161];
                v34 = v162;
                v164[4] = sub_1AF6D25EC;
                v164[5] = v159;
                v165 = sub_1AFAF6E24(__src, __src);
                v166 = [v395 members];
                sub_1AF0D4478(0, &qword_1ED723130);
                v167 = sub_1AFDFD418();

                if ((v167 & 0xC000000000000001) != 0)
                {
                  v168 = MEMORY[0x1B2719C70](v397, v167);
                }

                else
                {
                  v168 = *(v167 + 8 * v397 + 32);
                }

                v169 = v168;

                memcpy([v169 offset] + v387, v156, v165);
                swift_unknownObjectRelease();

                sub_1AF443F24(v44);
                sub_1AF444AF4(v45);

                sub_1AF4459C8(&v405);
                sub_1AF443F24(v44);
                ++v397;
                v31 = v393;
                v35 = v394;
                v30 = v389;
                v29 = v380;
                goto LABEL_27;
              }

              swift_unknownObjectRelease();

              sub_1AF443F24(v44);
              sub_1AF444AF4(v45);
              sub_1AF4459C8(&v405);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v401);
              sub_1AFAE1E60(&v398, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
            }

            goto LABEL_295;
          }
        }

        v141 = swift_unknownObjectUnownedLoadStrong();
        if (v141)
        {
          v142 = v141;
          v143 = sub_1AF12F434(v141);
          if (v143)
          {
            v144 = v143;
            v402 = sub_1AF0D4478(0, &qword_1ED72E0A8);
            v145 = v144;

            *&v401 = v145;
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v403);
            sub_1AF449D40(&v401, &v403);
            goto LABEL_125;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        sub_1AF443F24(v44);
        sub_1AF444AF4(v45);
        sub_1AF4459C8(&v405);
LABEL_295:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v403);
        sub_1AF443F24(v44);
        v326 = v56[2];
        if (v326)
        {
          v327 = v56 + 5;
          do
          {
            v328 = *(v327 - 1);

            v328(v329);

            v327 += 2;
            --v326;
          }

          while (v326);
        }

        goto LABEL_261;
      case 2uLL:
      case 3uLL:
        v292 = *(v383 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
        sub_1AF444224(v45);
        sub_1AF443EE0(v44);

        v293 = sub_1AFDFDA08();
        *&v405 = 0;
        (*(*v292 + 88))(v293, &v405, 0xD000000000000023, 0x80000001AFF463B0);

        sub_1AF443F24(v44);
        sub_1AF444AF4(v45);
        v294 = v34[2];
        if (v294)
        {
          v295 = v34 + 5;
          do
          {
            v296 = *(v295 - 1);

            v296(v297);

            v295 += 2;
            --v294;
          }

          while (v294);
        }

        goto LABEL_261;
      case 4uLL:
        v392 = v30;
        v111 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v112 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v414 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *v415 = v112;
        *&v415[12] = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x34);
        v113 = (*a2 + 40 * v42);
        v114 = v113[7];
        if ((~*(v113 + 14) & 0xFCLL) != 0)
        {
          v115 = v113[4];
          v378 = v113[5];
          v116 = v113[6];
          v117 = v113[8];
          v118 = v114 & 0x3F;
          if (v114 >> 6 != 1)
          {
            v118 = v113[6];
          }

          v119 = v114 >> 6 ? v118 : v113[7];
          if (v119 && (v119 == 1 || v117 >= v355))
          {
            sub_1AF443EE0(v44);
            sub_1AF444224(v45);
            sub_1AF443EE0(v44);
            sub_1AFAE2954(v115, v378, v116, v114);
LABEL_170:
            v185 = v114 >> 6;
            if (!(v114 >> 6))
            {
              goto LABEL_205;
            }

            goto LABEL_201;
          }
        }

        sub_1AF443EE0(v44);
        sub_1AF444224(v45);
        sub_1AF443EE0(v44);
        v120 = sub_1AFADE83C(v111, &v414, 1, v366, v359 & 1, a7);
        v378 = v121;
        if (v123 > 0xFBu)
        {
          sub_1AF443F24(v44);
          sub_1AF444AF4(v45);

          sub_1AF443F24(v44);
          v322 = v34[2];
          if (v322)
          {
            v323 = v34 + 5;
            do
            {
              v324 = *(v323 - 1);

              v324(v325);

              v323 += 2;
              --v322;
            }

            while (v322);
          }

          goto LABEL_261;
        }

        v115 = v120;
        v116 = v122;
        LOBYTE(v114) = v123;
        if (v123 >> 6)
        {
          if (v123 >> 6 == 1)
          {
            goto LABEL_205;
          }

          if (!v122)
          {
            goto LABEL_170;
          }

          v124 = v122;
        }

        else
        {
          v124 = v123;
          if (!v123)
          {
            LOBYTE(v114) = 0;
            goto LABEL_205;
          }
        }

        if (v124)
        {
          if (v124 == 1)
          {
            v186 = 0;
          }

          else
          {
            v186 = v355;
          }
        }

        else
        {
          v186 = -1;
        }

        v202 = *a2;
        sub_1AF448910(v120, v121, v122, v123);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v202 = sub_1AFC0DAF8(v202);
        }

        v203 = &v202[5 * v42];
        v204 = v203[4];
        v205 = v203[5];
        v206 = v203[6];
        v207 = v203[7];
        v203[4] = v115;
        v203[5] = v378;
        v203[6] = v116;
        v203[7] = v114;
        v203[8] = v186;
        sub_1AF44893C(v204, v205, v206, v207);
        *a2 = v202;
        v185 = v114 >> 6;
        if (!(v114 >> 6))
        {
          goto LABEL_205;
        }

LABEL_201:
        if (v185 != 1)
        {
          v371 = v115;
          __srcd = v115(a7);
          v209 = v208;
          v211 = v210;
          v386 = v45;
          if (!v208)
          {
            goto LABEL_203;
          }

          goto LABEL_206;
        }

LABEL_205:
        v209 = v378;
        sub_1AF0FBD8C(v378);
        v371 = v115;
        __srcd = v115;
        v211 = v116;
        v386 = v45;
        if (!v378)
        {
LABEL_203:
          v212 = v34;
          goto LABEL_211;
        }

LABEL_206:
        v213 = swift_allocObject();
        *(v213 + 16) = v209;
        *(v213 + 24) = v211;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1AF4221DC(0, v34[2] + 1, 1, v34);
        }

        v214 = v34;
        v215 = v34[2];
        v212 = v214;
        v216 = v214[3];
        if (v215 >= v216 >> 1)
        {
          v212 = sub_1AF4221DC(v216 > 1, v215 + 1, 1, v212);
        }

        v212[2] = v215 + 1;
        v217 = &v212[2 * v215];
        v217[4] = sub_1AF6D25EC;
        v217[5] = v213;
LABEL_211:
        v218 = sub_1AFAF6E24(*&v415[8], *&v415[8]);
        v219 = [v395 members];
        sub_1AF0D4478(0, &qword_1ED723130);
        v220 = sub_1AFDFD418();

        if ((v220 & 0xC000000000000001) != 0)
        {
          v221 = MEMORY[0x1B2719C70](v397, v220);
        }

        else
        {
          v221 = *(v220 + 8 * v397 + 32);
        }

        v222 = v221;

        memcpy([v222 offset] + v387, __srcd, v218);
        sub_1AF443F24(v44);
        sub_1AF444AF4(v386);
        sub_1AF4488E4(v371, v378, v116, v114);

        sub_1AF0FB8EC(v209);
        sub_1AF443F24(v44);
        ++v397;
        v34 = v212;
        v35 = v394;
        v29 = v380;
        v30 = v392;
        goto LABEL_26;
      case 5uLL:
        v391 = v30;
        v90 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        v91 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v92 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v377 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v93 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
        v94 = *(a7 + 32);
        sub_1AF443EE0(v44);
        sub_1AF444224(v45);
        sub_1AF443EE0(v44);
        v95 = ecs_stack_allocator_allocate(v94, 16, 16);
        v96 = v95;
        if ((v93 - 1) < 2)
        {
          v97 = v92 == -1 && v90 == 0;
          v29 = v380;
          v98 = v397;
          v31 = v393;
          if (v97 || (v91 & 0x80000000) != 0 || v381[1] <= v91)
          {
            goto LABEL_258;
          }

          v99 = (*v381 + 12 * v91);
          if (v90 != -1 && v99[2] != v90)
          {
            goto LABEL_258;
          }

          v101 = *(v99 + 2);
          v102 = *(*(v383 + 144) + 8 * *v99 + 32);
          v103 = *(v102 + 48);
          v104 = (v103 + 32);
          v105 = *(v103 + 16) + 1;
          do
          {
            if (!--v105)
            {
              goto LABEL_258;
            }

            v106 = v104 + 5;
            v107 = *v104;
            v104 += 5;
          }

          while (v107 != &type metadata for WorldTransform);
          v385 = v45;
          v108 = v95;
          v109 = (&(*(v106 - 2))[4 * v101] + *(v102 + 128));
          v353 = *v109;
          v357 = v109[1];
          *__srca = v109[2];
          v367 = v109[3];
          sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
            goto LABEL_309;
          }

          v35 = v394;
          if (swift_dynamicCastMetatype())
          {
            v110 = v367;
            v110.i32[3] = v345;
            v96 = v108;
            goto LABEL_232;
          }

          if (swift_dynamicCastMetatype())
          {
            v199 = vmulq_f32(v353, v353);
            v200 = vmulq_f32(v357, v357);
            *v110.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v199, v199, 8uLL), *&vextq_s8(v200, v200, 8uLL)), vadd_f32(vzip1_s32(*v199.i8, *v200.i8), vzip2_s32(*v199.i8, *v200.i8))));
            v201 = vmulq_f32(*__srca, *__srca);
            v110.i64[1] = COERCE_UNSIGNED_INT(sqrtf(v201.f32[2] + vaddv_f32(*v201.f32)));
            v96 = v108;
            goto LABEL_232;
          }

          if (swift_dynamicCastMetatype())
          {
            v264 = vmulq_f32(v353, v353);
            v265 = vmulq_f32(v357, v357);
            v266 = vmulq_f32(*__srca, *__srca);
            v267 = vzip2q_s32(v264, v266);
            v268 = vzip1q_s32(vzip1q_s32(v264, v266), v265);
            v269 = vtrn2q_s32(v264, v265);
            v269.i32[2] = v266.i32[1];
            v270 = vaddq_f32(vzip1q_s32(v267, vdupq_laneq_s32(v265, 2)), vaddq_f32(v268, v269));
            v265.i64[0] = 0x80000000800000;
            v265.i64[1] = 0x80000000800000;
            v236 = vcgeq_f32(v265, v270);
            v270.i32[3] = 0;
            v271 = vrsqrteq_f32(v270);
            v272 = vmulq_f32(v271, vrsqrtsq_f32(v270, vmulq_f32(v271, v271)));
            v273 = v236;
            v273.i32[3] = 0;
            v274 = vbslq_s8(vcltzq_s32(v273), v270, vmulq_f32(v272, vrsqrtsq_f32(v270, vmulq_f32(v272, v272))));
            v241 = vmulq_n_f32(v353, v274.f32[0]);
            v242 = vmulq_lane_f32(v357, *v274.f32, 1);
            v243 = vmulq_laneq_f32(*__srca, v274, 2);
            v244 = vuzp1q_s32(v243, v243);
            v245 = vuzp1q_s32(v242, v242);
            v246 = v241;
            if (v236.i32[0])
            {
              v275 = vmlaq_f32(vmulq_f32(vextq_s8(v244, v243, 0xCuLL), vnegq_f32(v242)), v243, vextq_s8(v245, v242, 0xCuLL));
              v246 = vextq_s8(vuzp1q_s32(v275, v275), v275, 0xCuLL);
            }

            v248 = vuzp1q_s32(v241, v241);
            v249 = v242;
            v96 = v108;
            if (!v236.i32[1])
            {
              goto LABEL_228;
            }

            goto LABEL_227;
          }

LABEL_311:
          *&v405 = 0;
          *(&v405 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v405 = 0xD000000000000018;
          *(&v405 + 1) = 0x80000001AFF46270;
          v344 = sub_1AFDFF4B8();
          MEMORY[0x1B2718AE0](v344);

          goto LABEL_312;
        }

        if (v93)
        {
          goto LABEL_312;
        }

        sub_1AF3C9244(v91 | (v90 << 32), v408);
        v29 = v380;
        v98 = v397;
        v31 = v393;
        if (v409)
        {
LABEL_258:

          sub_1AF443F24(v44);
          sub_1AF444AF4(v45);
          sub_1AF443F24(v44);
          v288 = v34[2];
          if (v288)
          {
            v289 = v34 + 5;
            do
            {
              v290 = *(v289 - 1);

              v290(v291);

              v289 += 2;
              --v288;
            }

            while (v288);
          }

          goto LABEL_261;
        }

        v347 = v408[0];
        v348 = v408[1];
        v350 = v408[2];
        v351 = v408[3];
        v369 = xmmword_1AFE201A0;
        __srcc = xmmword_1AFE20180;
        v358 = xmmword_1AFE20160;
        v354 = xmmword_1AFE20150;
        v385 = v45;
        if (v356)
        {
          v35 = v394;
        }

        else
        {
          v191 = v96;

          v192 = sub_1AF3C9170(a4);
          v194 = v193;

          if ((v194 & 1) != 0 || v192 == 0xFFFFFFFF)
          {
            v35 = v394;
          }

          else
          {

            sub_1AF3C9330(v192, v412);

            v35 = v394;
            if (v413)
            {

              sub_1AF3C9244(v192, &v410);

              v96 = v191;
              if ((v411 & 1) == 0)
              {
                v418 = __invert_f4(v410);
                v354 = v418.columns[0];
                v358 = v418.columns[1];
                __srcc = v418.columns[2];
                v369 = v418.columns[3];
              }

              goto LABEL_186;
            }

            v354 = v412[0];
            v358 = v412[1];
            __srcc = v412[2];
            v369 = v412[3];
          }

          v96 = v191;
        }

LABEL_186:
        sub_1AFDFDFD8();
        if (swift_conformsToProtocol2())
        {
          if (swift_dynamicCastMetatype())
          {
            v110 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v351.f32[0]), v358, *v351.f32, 1), __srcc, v351, 2), v369, v351, 3);
            v110.i32[3] = v346;
            goto LABEL_232;
          }

          v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v347.f32[0]), v358, *v347.f32, 1), __srcc, v347, 2), v369, v347, 3);
          v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v348.f32[0]), v358, *v348.f32, 1), __srcc, v348, 2), v369, v348, 3);
          v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v350.f32[0]), v358, *v350.f32, 1), __srcc, v350, 2), v369, v350, 3);
          if (swift_dynamicCastMetatype())
          {
            v196 = vmulq_f32(v352, v352);
            v197 = vmulq_f32(v349, v349);
            *v110.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v196, v196, 8uLL), *&vextq_s8(v197, v197, 8uLL)), vadd_f32(vzip1_s32(*v196.i8, *v197.i8), vzip2_s32(*v196.i8, *v197.i8))));
            v198 = vmulq_f32(v370, v370);
            v110.i64[1] = COERCE_UNSIGNED_INT(sqrtf(v198.f32[2] + vaddv_f32(*v198.f32)));
            goto LABEL_232;
          }

          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_311;
          }

          v229 = vmulq_f32(v352, v352);
          v230 = vmulq_f32(v349, v349);
          v231 = vmulq_f32(v370, v370);
          v232 = vzip2q_s32(v229, v231);
          v233 = vzip1q_s32(vzip1q_s32(v229, v231), v230);
          v234 = vtrn2q_s32(v229, v230);
          v234.i32[2] = v231.i32[1];
          v235 = vaddq_f32(vzip1q_s32(v232, vdupq_laneq_s32(v230, 2)), vaddq_f32(v233, v234));
          v230.i64[0] = 0x80000000800000;
          v230.i64[1] = 0x80000000800000;
          v236 = vcgeq_f32(v230, v235);
          v235.i32[3] = 0;
          v237 = vrsqrteq_f32(v235);
          v238 = vmulq_f32(v237, vrsqrtsq_f32(v235, vmulq_f32(v237, v237)));
          v239 = v236;
          v239.i32[3] = 0;
          v240 = vbslq_s8(vcltzq_s32(v239), v235, vmulq_f32(v238, vrsqrtsq_f32(v235, vmulq_f32(v238, v238))));
          v241 = vmulq_n_f32(v352, v240.f32[0]);
          v242 = vmulq_lane_f32(v349, *v240.f32, 1);
          v243 = vmulq_laneq_f32(v370, v240, 2);
          v244 = vuzp1q_s32(v243, v243);
          v245 = vuzp1q_s32(v242, v242);
          v246 = v241;
          if (v236.i32[0])
          {
            v247 = vmlaq_f32(vmulq_f32(vextq_s8(v244, v243, 0xCuLL), vnegq_f32(v242)), v243, vextq_s8(v245, v242, 0xCuLL));
            v246 = vextq_s8(vuzp1q_s32(v247, v247), v247, 0xCuLL);
          }

          v248 = vuzp1q_s32(v241, v241);
          v249 = v242;
          if (!v236.i32[1])
          {
            goto LABEL_228;
          }

LABEL_227:
          v250 = vmlaq_f32(vmulq_f32(vextq_s8(v248, v241, 0xCuLL), vnegq_f32(v243)), v241, vextq_s8(v244, v243, 0xCuLL));
          v249 = vextq_s8(vuzp1q_s32(v250, v250), v250, 0xCuLL);
LABEL_228:
          if (v236.i32[2])
          {
            v251 = vmlaq_f32(vmulq_f32(vextq_s8(v245, v242, 0xCuLL), vnegq_f32(v241)), v242, vextq_s8(v248, v241, 0xCuLL));
            v243 = vextq_s8(vuzp1q_s32(v251, v251), v251, 0xCuLL);
          }

          v252 = (*v246.i32 + *&v249.i32[1]) + v243.f32[2];
          if (v252 <= 0.0)
          {
            v262 = *v246.i32 < *&v249.i32[1] || *v246.i32 < v243.f32[2];
            v255 = v377;
            if (v262)
            {
              if (*&v249.i32[1] <= v243.f32[2])
              {
                v281 = vzip2q_s32(v246, v249).u64[0];
                v282 = __PAIR64__(v246.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v243.f32[2] + 1.0) - *v246.i32) - *&v249.i32[1])));
                v283 = vdup_lane_s32(*v249.i8, 0);
                *v284.f32 = vadd_f32(v281, *v243.f32);
                v285 = vsub_f32(*v246.i8, v283);
                v283.i32[0] = v282.i32[0];
                v283.i32[0] = vmul_f32(v282, v283).u32[0];
                v283.i32[1] = v285.i32[1];
                *&v284.u32[2] = v283;
                v110 = vmulq_n_f32(v284, 0.5 / v282.f32[0]);
                goto LABEL_233;
              }

              v276 = sqrtf(((*&v249.i32[1] + 1.0) - *v246.i32) - v243.f32[2]);
              v280.f32[0] = *&v246.i32[1] + *v249.i32;
              v263 = vzip2q_s32(v246, v249).u64[0];
              v280.f32[1] = v276 * v276;
              *&v280.u32[2] = vext_s8(vadd_f32(*v243.f32, v263), vsub_f32(*v243.f32, v263), 4uLL);
            }

            else
            {
              v276 = sqrtf(((*v246.i32 + 1.0) - *&v249.i32[1]) - v243.f32[2]);
              v280.f32[0] = v276 * v276;
              v277 = *&v246.i32[1] + *v249.i32;
              v278 = vzip2q_s32(v246, v249).u64[0];
              LODWORD(v279) = vadd_f32(v278, *v243.f32).u32[0];
              HIDWORD(v279) = vsub_f32(v278, *&v243).i32[1];
              v280.f32[1] = v277;
              v280.i64[1] = v279;
            }

            v110 = vmulq_n_f32(v280, 0.5 / v276);
LABEL_233:
            v256 = v96;
            *v96 = v110;
            v257 = sub_1AFAF6E24(v255, v255);
            v258 = [v395 members];
            sub_1AF0D4478(0, &qword_1ED723130);
            v259 = sub_1AFDFD418();

            if ((v259 & 0xC000000000000001) != 0)
            {
              v260 = MEMORY[0x1B2719C70](v98, v259);
            }

            else
            {
              v260 = *(v259 + 8 * v98 + 32);
            }

            v261 = v260;

            memcpy([v261 offset] + v387, v256, v257);

            sub_1AF443F24(v44);
            sub_1AF444AF4(v385);
            sub_1AF443F24(v44);
            v397 = v98 + 1;
            v30 = v391;
            goto LABEL_27;
          }

          v253 = sqrtf(v252 + 1.0);
          *v254.f32 = vsub_f32(*&vzip2q_s32(v249, vuzp1q_s32(v249, v243)), *&vtrn2q_s32(v243, vzip2q_s32(v243, v246)));
          v254.f32[2] = *&v246.i32[1] - *v249.i32;
          v254.f32[3] = v253 * v253;
          v110 = vmulq_n_f32(v254, 0.5 / v253);
LABEL_232:
          v255 = v377;
          goto LABEL_233;
        }

        __break(1u);
LABEL_309:
        __break(1u);
LABEL_312:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      case 6uLL:
      case 7uLL:
      case 0xAuLL:
      case 0xBuLL:
        goto LABEL_27;
      case 8uLL:
        v65 = v30;
        v66 = v34;
        v67 = v43[2];
        v68 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v69 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v70 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
        if (*((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
        {
          v71 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v72 = v383;
          if (v69 != 1)
          {
            sub_1AF443EE0(v44);
            sub_1AF444224(v67);
            sub_1AF443EE0(v44);
LABEL_300:
            v330 = *(v383 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
            *&v405 = 0;
            *(&v405 + 1) = 0xE000000000000000;

            sub_1AFDFE218();
            v403 = v405;
            MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF46330);
            *&v405 = v68;
            *(&v405 + 1) = v71;
            v406 = v69;
            sub_1AFDFE458();
            v331 = v403;
            v332 = sub_1AFDFDA08();
            *&v405 = 0;
            (*(*v330 + 88))(v332, &v405, v331, *(&v331 + 1));

            sub_1AF443F24(v44);
            sub_1AF444AF4(v67);
            sub_1AF443F24(v44);
            v333 = v66[2];
            if (v333)
            {
              v334 = v66 + 5;
              do
              {
                v335 = *(v334 - 1);

                v335(v336);

                v334 += 2;
                --v333;
              }

              while (v333);
            }

            goto LABEL_261;
          }

          sub_1AF443EE0(v44);
          sub_1AF444224(v67);
          sub_1AF443EE0(v44);
          LOBYTE(v405) = 1;
          v73 = sub_1AF7016BC(v68, v71, v383, 0x100000000);
          if (v74)
          {
            goto LABEL_300;
          }

          v68 = v73;
          v75 = v67;
          v35 = v394;
        }

        else
        {
          sub_1AF443EE0(v44);
          v75 = v67;
          sub_1AF444224(v67);
          sub_1AF443EE0(v44);
          v72 = v383;
        }

        v137 = sub_1AF8D93C8(v68, &v405, v72, v374);
        v34 = v66;
        if (!v137)
        {
          v316 = *(v72 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

          v317 = sub_1AFDFDA08();
          *&v405 = 0;
          (*(*v316 + 88))(v317, &v405, 0xD000000000000027, 0x80000001AFF46350);

          sub_1AF443F24(v44);
          sub_1AF444AF4(v75);

          sub_1AF443F24(v44);
          v318 = v66[2];
          if (v318)
          {
            v319 = v66 + 5;
            do
            {
              v320 = *(v319 - 1);

              v320(v321);

              v319 += 2;
              --v318;
            }

            while (v318);
          }

          goto LABEL_261;
        }

        v138 = v137;
        v139 = [v137 textureType];
        if (v70 == 2)
        {
          if (v139 != 7)
          {
            goto LABEL_275;
          }
        }

        else if (v70 == 1)
        {
          if (v139 != 2)
          {
            goto LABEL_275;
          }
        }

        else
        {
          if (v70)
          {
            v140 = 0;
          }

          else
          {
            v140 = v139 == 0;
          }

          if (!v140)
          {
LABEL_275:
            v302 = *(v72 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
            *&v405 = 0;
            *(&v405 + 1) = 0xE000000000000000;
            v303 = v139;

            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF46380);
            LOBYTE(v403) = v70;
            v304 = v75;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x3A6C617574636120, 0xE800000000000000);
            *&v403 = v303;
            type metadata accessor for MTLTextureType(0);
            sub_1AFDFE458();
            v306 = *(&v405 + 1);
            v305 = v405;
            v307 = sub_1AFDFDA08();
            *&v405 = 0;
            (*(*v302 + 88))(v307, &v405, v305, v306);

            sub_1AF443F24(v44);
            sub_1AF444AF4(v304);

            swift_unknownObjectRelease();
            sub_1AF443F24(v44);
            v308 = v66[2];
            if (v308)
            {
              v309 = v66 + 5;
              do
              {
                v310 = *(v309 - 1);

                v310(v311);

                v309 += 2;
                --v308;
              }

              while (v308);
            }

LABEL_261:

            swift_unknownObjectRelease();
            goto LABEL_262;
          }
        }

        [a9 setTexture:v138 atIndex:v372];
        sub_1AF443F24(v44);
        sub_1AF444AF4(v75);

        swift_unknownObjectRelease();
        sub_1AF443F24(v44);
        ++v372;
        v29 = v380;
LABEL_25:
        v30 = v65;
LABEL_26:
        v31 = v393;
        goto LABEL_27;
      case 9uLL:
        v390 = v30;
        v384 = v43[2];
        v59 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v58 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v60 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        if (!*((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
        {
          sub_1AF443EE0(v44);
          sub_1AF444224(v384);
          sub_1AF443EE0(v44);
          v64 = v59;
          v62 = v59;
LABEL_143:
          v61 = v383;
          goto LABEL_144;
        }

        if (v60 != 1)
        {
          sub_1AF443EE0(v44);
          sub_1AF444224(v384);
          sub_1AF443EE0(v44);
          v62 = a4;
          v64 = a4;
          goto LABEL_143;
        }

        sub_1AF443EE0(v44);
        sub_1AF444224(v384);
        sub_1AF443EE0(v44);
        sub_1AFAB8864(v59, v58, 1);
        LOBYTE(v405) = 1;
        v61 = v383;
        v62 = sub_1AF7016BC(v59, v58, v383, 0x100000000);
        if (v63)
        {
          *&v405 = 0;
          *(&v405 + 1) = 0xE000000000000000;

          sub_1AFDFE218();
          v403 = v405;
          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF46250);
          *&v405 = v59;
          *(&v405 + 1) = v58;
          v406 = 1;
          sub_1AFDFE458();
          sub_1AF7D4C4C(v59, v58, 1);
          v338 = *(&v403 + 1);
          v337 = v403;
          v339 = sub_1AFDFDA08();
          *&v405 = 1;
          sub_1AF75A4B4(v339, v337, v338, &v405);

          sub_1AF443F24(v44);
          sub_1AF444AF4(v384);
          sub_1AF443F24(v44);
          v340 = v34[2];
          if (v340)
          {
            v341 = v34 + 5;
            do
            {
              v342 = *(v341 - 1);

              v342(v343);

              v341 += 2;
              --v340;
            }

            while (v340);
          }

          goto LABEL_261;
        }

        v64 = v62;
LABEL_144:
        v170 = HIDWORD(v62);
        v171 = v64 == -1 && v170 == 0;
        if (v171 || v64 < 0 || v381[1] <= v64 || ((v172 = (*v381 + 12 * v64), v170 != 0xFFFFFFFF) ? (v173 = v172[2] == HIDWORD(v62)) : (v173 = 1), !v173))
        {
          swift_unknownObjectRetain();
          sub_1AF443F24(v44);
          sub_1AF444AF4(v384);

          sub_1AF7D4C4C(v59, v58, v60);
          swift_unknownObjectRelease();
          goto LABEL_271;
        }

        v174 = *(v172 + 2);
        v175 = *(*(v61 + 144) + 8 * *v172 + 32);
        v176 = *(v175 + 48);
        v177 = (v176 + 32);
        v178 = *(v176 + 16) + 1;
        do
        {
          if (!--v178)
          {
            v184 = 2;
            goto LABEL_220;
          }

          v179 = v177 + 5;
          v180 = *v177;
          v177 += 5;
        }

        while (v180 != &type metadata for EmitterRuntime);
        v379 = v34;
        v181 = &(*(v179 - 2))[53 * v174] + *(v175 + 128);
        v182 = *(v181 + 424);
        if (v182)
        {
          v368 = *(v181 + 432);
          __srcb = *(v181 + 440);
          if (v60 >= 2)
          {
            if (*(v181 + 336))
            {
              v195 = *(v181 + 512);
            }

            else
            {
              LODWORD(v195) = 0;
            }

            v226 = swift_getObjectType();
            v227 = *(v181 + 344);
            v228 = *(v181 + 352) + *(v181 + 368) * v195;
            swift_unknownObjectRetain();
            sub_1AFAB8864(v59, v58, 2);
            swift_unknownObjectRetain();
            sub_1AF6F34C4(v227, v228, 0, 4, v226);
            sub_1AF6F353C(v182, v368, __srcb, 0);
            swift_unknownObjectRelease();
          }

          else
          {
            if (*(v181 + 336) == 1)
            {
              v183 = *(v181 + 512);
            }

            else
            {
              LODWORD(v183) = 0;
            }

            swift_getObjectType();
            v223 = *(v181 + 344);
            v224 = (*(v181 + 352) + *(v181 + 368) * v183) | (*(v181 + 368) << 32);
            swift_unknownObjectRetain();
            sub_1AFAB8864(v59, v58, v60);
            swift_unknownObjectRetain();
            sub_1AF6F458C(v223, v224, 0, v360);
            v225 = swift_unknownObjectRetain();
            sub_1AF6F463C(v225, v368, __srcb, 0);
            swift_unknownObjectRelease_n();
            v360 += 2;
          }

          v184 = 1;
          v29 = v380;
          v31 = v393;
        }

        else
        {
          swift_unknownObjectRetain();
          sub_1AFAB8864(v59, v58, v60);
          v184 = 0;
        }

        swift_unknownObjectRelease();
        sub_1AF7D4C4C(v59, v58, v60);
        v34 = v379;
LABEL_220:
        sub_1AF443F24(v44);
        sub_1AF444AF4(v384);
        sub_1AF7D4C4C(v59, v58, v60);
        if (v184 != 2 && (v184 & 1) != 0)
        {
          sub_1AF443F24(v44);
          v35 = v394;
          v30 = v390;
LABEL_27:
          if (v30 == v29)
          {
            goto LABEL_19;
          }

          continue;
        }

LABEL_271:
        sub_1AF443F24(v44);
        v298 = v34[2];

        if (v298)
        {
          v299 = v34 + 5;
          do
          {
            v300 = *(v299 - 1);

            v300(v301);

            v299 += 2;
            --v298;
          }

          while (v298);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        return 0;
      case 0xCuLL:
        v65 = v30;
        v76 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        v77 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v78 = 0;
        v79 = v77 == -1 && v76 == 0;
        if (v79 || (v77 & 0x80000000) != 0)
        {
          v80 = v397;
        }

        else
        {
          v80 = v397;
          if (v381[1] <= v77)
          {
            goto LABEL_179;
          }

          v81 = (*v381 + 12 * v77);
          if (v76 == -1 || v81[2] == v76)
          {
            v83 = *(v81 + 2);
            v84 = *(*(v383 + 144) + 8 * *v81 + 32);
            v85 = *(v84 + 48);
            v86 = (v85 + 32);
            v87 = *(v85 + 16) + 1;
            while (--v87)
            {
              v88 = v86 + 5;
              v89 = *v86;
              v86 += 5;
              if (v89 == &type metadata for Seed)
              {
                v78 = *(&(*(v88 - 2))->Kind + 8 * v83 + *(v84 + 128));
                goto LABEL_179;
              }
            }
          }

          v78 = 0;
        }

        goto LABEL_179;
      case 0xDuLL:
        v65 = v30;
        v125 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
        v126 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v78 = 0;
        v127 = v126 == -1 && v125 == 0;
        if (v127 || (v126 & 0x80000000) != 0)
        {
          v80 = v397;
        }

        else
        {
          v80 = v397;
          if (v381[1] <= v126)
          {
            goto LABEL_179;
          }

          v128 = (*v381 + 12 * v126);
          if (v125 == -1 || v128[2] == v125)
          {
            v130 = *(v128 + 2);
            v131 = *(*(v383 + 144) + 8 * *v128 + 32);
            v132 = *(v131 + 48);
            v133 = (v132 + 32);
            v134 = *(v132 + 16) + 1;
            while (--v134)
            {
              v135 = v133 + 5;
              v136 = *v133;
              v133 += 5;
              if (v136 == &type metadata for Seed)
              {
                v78 = *(&(*(v135 - 2))->Kind + 8 * v130 + *(v131 + 128));
                goto LABEL_179;
              }
            }
          }

          v78 = 0;
        }

LABEL_179:
        sub_1AF443EE0(v44);
        sub_1AF444224(v45);
        sub_1AF443EE0(v44);
        v187 = [v395 members];
        sub_1AF0D4478(0, &qword_1ED723130);
        v188 = sub_1AFDFD418();

        if ((v188 & 0xC000000000000001) != 0)
        {
          v189 = MEMORY[0x1B2719C70](v80, v188);
        }

        else
        {
          v189 = *(v188 + 8 * v80 + 32);
        }

        v190 = v189;

        *([v190 offset] + v387) = v78;

        sub_1AF443F24(v44);
        sub_1AF444AF4(v45);
        sub_1AF443F24(v44);
        v397 = v80 + 1;
        goto LABEL_25;
      case 0x10uLL:
        if (v44 == 0x8000000000000000)
        {
          swift_getObjectType();
          sub_1AF444224(v45);
          sub_1AFB1995C(v383, v360);
          sub_1AF444AF4(v45);
          ++v360;
        }

        goto LABEL_27;
      default:
        goto LABEL_312;
    }
  }
}

uint64_t sub_1AFADE664()
{
  if ((*(v0 + 42) & 0x80) != 0 || (*(v0 + 40) & 1) == 0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1AFDFDFD8();
  if (!swift_conformsToProtocol2() || v2 == 0)
  {
    return 0;
  }

  v4 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (sub_1AF640E28(v4))
    {
      v6 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v7 = sub_1AF6411A4(v6);
        sub_1AFAF6E24(*(v1 + 24), *(v1 + 24));
        return v7 == v8;
      }

      goto LABEL_13;
    }

    return 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AFADE76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  sub_1AF871824(a3, a2, v12);
  v10 = &type metadata for Extensions;
  v11 = &off_1F253E6E8;
  sub_1AF60685C(v9, a4);
  v7 = v10;
  sub_1AF441150(v9, v10);
  sub_1AF871960(v12, a5, v7);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  sub_1AF871620();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

uint64_t (*sub_1AFADE83C(unint64_t a1, void *a2, char a3, uint64_t a4, char a5, uint64_t a6))(uint64_t a1)
{
  v61 = HIDWORD(a1);
  if (a5)
  {
    v9 = a2[4];
    if (*(a2 + 40) != 1)
    {
      goto LABEL_12;
    }

    v10 = a5;
    v11 = a4;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else if (a4 > 1049)
  {
    v13 = a4 < 0x425;
    v14 = a4 < 0x7DE;
    v9 = a2[4];
    if ((a2[5] & 1) == 0)
    {
      goto LABEL_12;
    }

    v10 = a5;
    v11 = a4;
    v12 = 0;
  }

  else
  {
    v10 = a5;
    v11 = a4;
    v15 = sub_1AFADB4E4(a2[3], 3u);
    v12 = v15;
    v9 = a2[4];
    if ((a2[5] & 1) == 0)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }

      v12 = 1;
      v14 = 1;
LABEL_29:
      v60 = a2[2];
      v32 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v33 = result;
      if ((*(a2 + 21) & 0x400) == 0)
      {
LABEL_31:
        if ((a3 & 1) == 0)
        {
          v34 = sub_1AF90DEFC(a2[3]);
          if ((~v34 & 0xF000000000000007) != 0)
          {
            v38 = v34;
            sub_1AF90EDE8(v34, &v66, 0.0);
            sub_1AF914F8C(v38);
          }

          else
          {
            v66 = 0u;
            v67 = 0u;
          }

          v68 = v66;
          v69 = v67;
          if (*(&v67 + 1))
          {
            goto LABEL_54;
          }

          sub_1AFAE1E60(&v68, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        }

        if (v32 == &type metadata for TextureFileAsset)
        {
          sub_1AFDFE008();
          KeyPath = swift_getKeyPath();
          v40 = MEMORY[0x1B2719A10](v60, KeyPath);

          if (v40)
          {
            v41 = sub_1AF67E54C(a1, v63);
            if (v42)
            {
              v72 = MEMORY[0x1E69E6158];
              *&v71 = v41;
              *(&v71 + 1) = v42;
LABEL_55:
              v44 = a2[3];
              DynamicType = MEMORY[0x1E69E7CA0] + 8;
              if ((v44 == MEMORY[0x1E69E7CA0] + 8) | v12 & 1)
              {
                v46 = *(a6 + 32);
                v47 = 32;
                v48 = 8;
              }

              else
              {
                sub_1AF0D5A54(&v71, &v68);
                sub_1AF441150(&v68, *(&v69 + 1));
                DynamicType = swift_getDynamicType();
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v68);
                v49 = sub_1AFAF6E24(v44, v44);
                v51 = v50;
                v46 = *(a6 + 32);
                v47 = v49;
                v48 = v51;
              }

              v21 = ecs_stack_allocator_allocate(v46, v47, v48);
              sub_1AF8713D0(&v71, v21, DynamicType);
              if ((a3 & 2) != 0)
              {
                v68 = *a2;

                sub_1AF450FE0(&v68, &v66);

                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);

                v53 = swift_allocObject();
                v54 = *(a2 + 1);
                *(v53 + 24) = *a2;
                *(v53 + 16) = a3;
                *(v53 + 40) = v54;
                *(v53 + 52) = *(a2 + 28);
                *(v53 + 72) = v21;
                *(v53 + 80) = v63;
                *(v53 + 88) = a1;
                *(v53 + 92) = v61;
                *(v53 + 96) = DynamicType;
              }

              else
              {
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
                v52 = swift_allocObject();
                *(v52 + 16) = DynamicType;
                *(v52 + 24) = v21;
              }

              return v21;
            }

            return 0;
          }
        }

        v43 = sub_1AF6824B0(v32, v33, a1);
        if (v43)
        {
          sub_1AF6794BC(v43, v60, v32);
LABEL_54:
          sub_1AF449D40(&v68, &v71);
          goto LABEL_55;
        }

        return 0;
      }

      sub_1AF67E3AC(v32, result, a1, &v68);
      if (!*(&v69 + 1))
      {
        sub_1AFAE28BC(&v68, &qword_1EB634220, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        return 0;
      }

      sub_1AF0FBA54(&v68, &v71);
      sub_1AF441194(&v71, &v66);
      sub_1AF4498F4(0, &qword_1ED72FFF0);
      sub_1AF4498F4(0, &unk_1ED7259B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
        v65 = 0;
        memset(v64, 0, sizeof(v64));
        sub_1AFAE28BC(v64, &qword_1EB63D018, &unk_1ED7259B0, &protocol descriptor for ComponentMeta);
        return 0;
      }

      sub_1AF0FBA54(v64, &v68);
      if ((v10 & 1) == 0 && v11 < 1053 || v14 && a2[3] == MEMORY[0x1E69E7CA0] + 8 || (v35 = *(&v69 + 1), v36 = v70, sub_1AF441150(&v68, *(&v69 + 1)), (v37 = (*(*(v36 + 8) + 56))(*a2, a2[1], a2[3], (a3 & 2) == 0, v35)) == 0))
      {
        v55 = *(&v69 + 1);
        v56 = v70;
        sub_1AF441150(&v68, *(&v69 + 1));
        LOBYTE(v55) = sub_1AF493510(*a2, a2[1], a2[3], v55, v56);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v68);
        if ((v55 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_31;
      }

      v21 = v37;
      if ((a3 & 2) != 0)
      {
        v57 = *(v33 + 8);
        if ((*(v57 + 48))(v32, v57))
        {

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);

          v58 = swift_allocObject();
          *(v58 + 16) = v63;
          *(v58 + 24) = a1;
          *(v58 + 28) = v61;
          goto LABEL_69;
        }

        if ((*(v57 + 56))(v32, v57))
        {

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);

          v59 = swift_allocObject();
          *(v59 + 16) = v63;
          *(v59 + 24) = v32;
          *(v59 + 32) = v33;
          *(v59 + 40) = a1;
          *(v59 + 44) = v61;
          goto LABEL_69;
        }
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
LABEL_69:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v68);
      return v21;
    }

    v13 = 1;
    v14 = 1;
  }

  if (sub_1AFADE664() & 1) == 0 || v13 || (v12)
  {
    goto LABEL_29;
  }

LABEL_12:
  v16 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v18 = sub_1AF6824B0(v16, result, a1);
  if (v18)
  {
    v19 = v18;
    if (sub_1AFADE664())
    {
      v9 = 0;
    }

    v20 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v21 = (v19 + v9);
      if ((a3 & 2) != 0)
      {
        v22 = result;
        if (((*(*(result + 1) + 48))(v20) & 1) != 0 && (*(a2 + 21) & 0x200) == 0)
        {
          v23 = swift_allocObject();
          *(v23 + 16) = v20;
          *(v23 + 24) = v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v21;
          *(v23 + 48) = v63;
          *(v23 + 56) = a1;
          *(v23 + 60) = v61;

          return sub_1AFAE2868;
        }
      }

      return v21;
    }

    goto LABEL_71;
  }

  v24 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v25 = result;
    v26 = *(a6 + 32);
    v27 = sub_1AF640D40(v24);
    v28 = sub_1AF6411A8(v24);
    v29 = ecs_stack_allocator_allocate(v26, v27, v28);
    sub_1AF6412CC(v29, 1, v24);
    if (sub_1AFADE664())
    {
      v30 = 0;
    }

    else
    {
      v30 = v9;
    }

    v21 = v29 + v30;
    v31 = swift_allocObject();
    v31[2] = v24;
    v31[3] = v25;
    v31[4] = v29;
    return v21;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1AFADF120(uint64_t a1, unint64_t a2)
{

  sub_1AF678B44(a2);
}

uint64_t sub_1AFADF170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  sub_1AF683D58(a2, a3, a4, a1);
}

uint64_t sub_1AFADF1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 16);
  v11 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v11 == &type metadata for TextureFileAsset)
  {
    sub_1AFDFE008();
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x1B2719A10](v10, KeyPath);

    if (v14)
    {

      sub_1AF682E04(a5, a4, a3);

      return sub_1AF585778(a3);
    }
  }

  sub_1AF871824(a3, a6, v20);

  v15 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_1AF6824B0(v15, result, a5);
  if (v17 && (v18 = sub_1AF67A4CC(v20, v17, v10, v15), (v18 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v18, v19);
    sub_1AF682600(v15, v16, a5, sub_1AF702438);
  }

  else
  {
  }

  sub_1AF871620();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
}

uint64_t sub_1AFADF438(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = *a2;
  v7 = a2[1];
  sub_1AF4486E4();

  if (sub_1AFDFDF18())
  {
    if (v3 != v8 || v4 != v7)
    {
      goto LABEL_8;
    }

LABEL_7:

    return 0;
  }

  if (v6 == v8 && v5 == v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = sub_1AFDFEE28();

  if (v9)
  {
    return 0;
  }

  v12 = *a2;
  v11 = a2[1];

  sub_1AF8E1C20(v12, v11);
  return 1;
}

uint64_t sub_1AFADF55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7;
  v13 = HIDWORD(a7);
  v14 = *(a1 + 32);
  v15 = sub_1AF640D40(a2);
  v16 = sub_1AF6411A8(a2);
  v17 = ecs_stack_allocator_allocate(v14, v15, v16);
  sub_1AF641760();
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = v7;
  *(v18 + 28) = v13;
  *(v18 + 32) = v17;
  *(v18 + 40) = a4;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a1;
  return a5;
}

uint64_t sub_1AFADF654(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v12 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v12[2] == HIDWORD(a2))
    {
      v13 = *(v12 + 2);
      v14 = *(*(a1 + 144) + 8 * *v12 + 32);
      if ((*(*(a6 + 8) + 88))(a3, a4, a5))
      {
        v15 = *(v14 + 192);
        if (v15)
        {
          v16 = *(v14 + 208);
          *(v15 + 8 * (v13 >> 6)) |= 1 << v13;
          *(v16 + 8 * (v13 >> 6)) &= ~(1 << v13);
        }

        sub_1AF705804(v13);
      }
    }
  }

  return sub_1AF640BC8();
}

uint64_t sub_1AFADF79C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED73B840;
  v15 = 0;
  v16 = 2;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Particle;
  *(inited + 40) = &off_1F252D7A8;
  sub_1AF5F58E4(inited, 1, v10);
  swift_setDeallocating();
  sub_1AFAE1EE4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 56) = &type metadata for EmitterReference;
  *(v6 + 64) = &off_1F2563D20;
  *(v6 + 32) = v3;
  v7 = v6 + 32;
  *(v6 + 36) = v4;
  sub_1AF5FC13C(v6, v11);
  sub_1AF692DB0(v10);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  sub_1AF6B06C0(a2, v11, 0x200000000, v12);
  sub_1AF692DB0(v11);
  if (!*&v12[0])
  {
    return 0;
  }

  v8 = v13;
  sub_1AFAE1E60(v12, &qword_1ED725EA0, &type metadata for QueryResult);
  return v8;
}

uint64_t sub_1AFADF970(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v3 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v2 = sub_1AF682350(a1);

    v3 = *(v2 + 16);
    if (!v3)
    {
LABEL_8:
    }
  }

  v5 = v2 + 40;
  while (((*(*v5 + 24))() & 1) == 0)
  {
    v5 += 16;
    if (!--v3)
    {
      goto LABEL_8;
    }
  }

  v7 = v1 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  result = type metadata accessor for ScriptingConfiguration();
  ++*(v7 + *(result + 36));
  return result;
}

uint64_t sub_1AFADFA74(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v2 = sub_1AF682350(a1);
  }

  v4 = v2 + 40;
  v5 = *(v2 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 16;
    v7 = (*(*v4 + 24))();
    v4 = v6;
    if (v7)
    {

      v8 = v1 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
      result = type metadata accessor for ScriptingConfiguration();
      ++*(v8 + *(result + 36));
      return result;
    }
  }
}

uint64_t *sub_1AFADFB74(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4[1];
  if (result)
  {
    if (v9)
    {
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      return sub_1AF64923C(a5, a6, a7, a8, result, a2, a3, a9);
    }
  }

  else if (v9)
  {
    v10 = a4[2];
    v11 = a4[3];
    v14 = swift_unownedRetainStrong();
    v15 = *(v14 + 232);
    v16 = *(v14 + 240);

    return sub_1AFAE24FC(a5, a7, v15, v16, 0, v10, v11);
  }

  return result;
}

float32x4_t *sub_1AFADFC9C(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  v10 = ecs_stack_allocator_allocate(*(a6 + 32), 16, 16);
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      goto LABEL_50;
    }

    if ((a5 & 1) == 0)
    {
      v14 = v10;
      sub_1AF3C9244(a1, v85);
      if ((v86 & 1) == 0)
      {
        v76 = v85[0];
        v77 = v85[1];
        v79 = v85[2];
        v80 = v85[3];
        if (a4 == 0xFFFFFFFF || (, v18 = sub_1AF3C9170(a4), v20 = v19, , (v20 & 1) != 0) || (sub_1AF5AFFBC(v18, &v87), (v88 & 1) != 0))
        {
          *&v83[48] = xmmword_1AFE201A0;
          *&v83[32] = xmmword_1AFE20180;
          *&v83[16] = xmmword_1AFE20160;
          *v83 = xmmword_1AFE20150;
        }

        else
        {
          *v83 = v87;
        }

        sub_1AFDFDFD8();
        if (swift_conformsToProtocol2())
        {
          if (swift_dynamicCastMetatype())
          {
            v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v83, v80.f32[0]), *&v83[16], *v80.f32, 1), *&v83[32], v80, 2), *&v83[48], v80, 3);
            result = v14;
            goto LABEL_40;
          }

          v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v83, v76.f32[0]), *&v83[16], *v76.f32, 1), *&v83[32], v76, 2), *&v83[48], v76, 3);
          v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v83, v77.f32[0]), *&v83[16], *v77.f32, 1), *&v83[32], v77, 2), *&v83[48], v77, 3);
          v84 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v83, v79.f32[0]), *&v83[16], *v79.f32, 1), *&v83[32], v79, 2), *&v83[48], v79, 3);
          if (swift_dynamicCastMetatype())
          {
            v48 = vmulq_f32(v81, v81);
            v49 = vmulq_f32(v78, v78);
            *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v49.i8), vzip2_s32(*v48.i8, *v49.i8))));
            v50 = vmulq_f32(v84, v84);
            v13.i64[1] = COERCE_UNSIGNED_INT(sqrtf(v50.f32[2] + vaddv_f32(*v50.f32)));
            result = v14;
            goto LABEL_40;
          }

          if (!swift_dynamicCastMetatype())
          {
            sub_1AFDFE218();

            v75 = sub_1AFDFF4B8();
            MEMORY[0x1B2718AE0](v75);

            goto LABEL_50;
          }

          v58 = vmulq_f32(v81, v81);
          v59 = vmulq_f32(v78, v78);
          v60 = vmulq_f32(v84, v84);
          v61 = vzip2q_s32(v58, v60);
          v62 = vzip1q_s32(vzip1q_s32(v58, v60), v59);
          v63 = vtrn2q_s32(v58, v59);
          v63.i32[2] = v60.i32[1];
          v64 = vaddq_f32(vzip1q_s32(v61, vdupq_laneq_s32(v59, 2)), vaddq_f32(v62, v63));
          v59.i64[0] = 0x80000000800000;
          v59.i64[1] = 0x80000000800000;
          v28 = vcgeq_f32(v59, v64);
          v64.i32[3] = 0;
          v65 = vrsqrteq_f32(v64);
          v66 = vmulq_f32(v65, vrsqrtsq_f32(v64, vmulq_f32(v65, v65)));
          v67 = v28;
          v67.i32[3] = 0;
          v68 = vbslq_s8(vcltzq_s32(v67), v64, vmulq_f32(v66, vrsqrtsq_f32(v64, vmulq_f32(v66, v66))));
          v33 = vmulq_n_f32(v81, v68.f32[0]);
          v34 = vmulq_lane_f32(v78, *v68.f32, 1);
          v35 = vmulq_laneq_f32(v84, v68, 2);
          v36 = vuzp1q_s32(v35, v35);
          v37 = vuzp1q_s32(v34, v34);
          v38 = v33;
          if (v28.i32[0])
          {
            v69 = vmlaq_f32(vmulq_f32(vextq_s8(v36, v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(v37, v34, 0xCuLL));
            v38 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
          }

          v40 = vuzp1q_s32(v33, v33);
          v41 = v34;
          result = v14;
          if (v28.i32[1])
          {
LABEL_24:
            v42 = vmlaq_f32(vmulq_f32(vextq_s8(v40, v33, 0xCuLL), vnegq_f32(v35)), v33, vextq_s8(v36, v35, 0xCuLL));
            v41 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
          }

LABEL_25:
          if (v28.i32[2])
          {
            v43 = vmlaq_f32(vmulq_f32(vextq_s8(v37, v34, 0xCuLL), vnegq_f32(v33)), v34, vextq_s8(v40, v33, 0xCuLL));
            v35 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
          }

          v44 = (*v38.i32 + *&v41.i32[1]) + v35.f32[2];
          if (v44 > 0.0)
          {
            v45 = sqrtf(v44 + 1.0);
            *v46.f32 = vsub_f32(*&vzip2q_s32(v41, vuzp1q_s32(v41, v35)), *&vtrn2q_s32(v35, vzip2q_s32(v35, v38)));
            v46.f32[2] = *&v38.i32[1] - *v41.i32;
            v46.f32[3] = v45 * v45;
            v47 = 0.5 / v45;
LABEL_29:
            v13 = vmulq_n_f32(v46, v47);
            goto LABEL_40;
          }

          if (*v38.i32 < *&v41.i32[1] || *v38.i32 < v35.f32[2])
          {
            if (*&v41.i32[1] <= v35.f32[2])
            {
              v70 = vzip2q_s32(v38, v41).u64[0];
              v71 = __PAIR64__(v38.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v35.f32[2] + 1.0) - *v38.i32) - *&v41.i32[1])));
              v72 = vdup_lane_s32(*v41.i8, 0);
              v73 = vsub_f32(*v38.i8, v72);
              v72.i32[0] = v71.i32[0];
              v72.i32[0] = vmul_f32(v71, v72).u32[0];
              v72.i32[1] = v73.i32[1];
              *v46.f32 = vadd_f32(v70, *v35.f32);
              *&v46.u32[2] = v72;
              v47 = 0.5 / v71.f32[0];
              goto LABEL_29;
            }

            v53 = sqrtf(((*&v41.i32[1] + 1.0) - *v38.i32) - v35.f32[2]);
            v57.f32[0] = *&v38.i32[1] + *v41.i32;
            v52 = vzip2q_s32(v38, v41).u64[0];
            v57.f32[1] = v53 * v53;
            *&v57.u32[2] = vext_s8(vadd_f32(*v35.f32, v52), vsub_f32(*v35.f32, v52), 4uLL);
          }

          else
          {
            v53 = sqrtf(((*v38.i32 + 1.0) - *&v41.i32[1]) - v35.f32[2]);
            v57.f32[0] = v53 * v53;
            v54 = *&v38.i32[1] + *v41.i32;
            v55 = vzip2q_s32(v38, v41).u64[0];
            LODWORD(v56) = vadd_f32(v55, *v35.f32).u32[0];
            HIDWORD(v56) = vsub_f32(v55, *&v35).i32[1];
            v57.f32[1] = v54;
            v57.i64[1] = v56;
          }

          v13 = vmulq_n_f32(v57, 0.5 / v53);
          goto LABEL_40;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    return 0;
  }

  v11 = v10;
  sub_1AF3C9244(a1, &v87);
  if (v88)
  {
    return 0;
  }

  v82 = v87;
  sub_1AFDFDFD8();
  if (!swift_conformsToProtocol2())
  {
    __break(1u);
    goto LABEL_49;
  }

  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      v15 = vmulq_f32(v82.columns[0], v82.columns[0]);
      v16 = vmulq_f32(v82.columns[1], v82.columns[1]);
      *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vadd_f32(vzip1_s32(*v15.i8, *v16.i8), vzip2_s32(*v15.i8, *v16.i8))));
      v17 = vmulq_f32(v82.columns[2], v82.columns[2]);
      v13.i64[1] = COERCE_UNSIGNED_INT(sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)));
      result = v11;
      goto LABEL_40;
    }

    if (!swift_dynamicCastMetatype())
    {
      while (1)
      {
        *&v85[0] = 0;
        *(&v85[0] + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v85[0] = 0xD000000000000018;
        *(&v85[0] + 1) = 0x80000001AFF46270;
        v74 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v74);

LABEL_50:
        sub_1AFDFE518();
        __break(1u);
      }
    }

    v21 = vmulq_f32(v82.columns[0], v82.columns[0]);
    v22 = vmulq_f32(v82.columns[1], v82.columns[1]);
    v23 = vmulq_f32(v82.columns[2], v82.columns[2]);
    v24 = vzip2q_s32(v21, v23);
    v25 = vzip1q_s32(vzip1q_s32(v21, v23), v22);
    v26 = vtrn2q_s32(v21, v22);
    v26.i32[2] = v23.i32[1];
    v27 = vaddq_f32(vzip1q_s32(v24, vdupq_laneq_s32(v22, 2)), vaddq_f32(v25, v26));
    v22.i64[0] = 0x80000000800000;
    v22.i64[1] = 0x80000000800000;
    v28 = vcgeq_f32(v22, v27);
    v27.i32[3] = 0;
    v29 = vrsqrteq_f32(v27);
    v30 = vmulq_f32(v29, vrsqrtsq_f32(v27, vmulq_f32(v29, v29)));
    v31 = v28;
    v31.i32[3] = 0;
    v32 = vbslq_s8(vcltzq_s32(v31), v27, vmulq_f32(v30, vrsqrtsq_f32(v27, vmulq_f32(v30, v30))));
    v33 = vmulq_n_f32(v82.columns[0], v32.f32[0]);
    v34 = vmulq_lane_f32(v82.columns[1], *v32.f32, 1);
    v35 = vmulq_laneq_f32(v82.columns[2], v32, 2);
    v36 = vuzp1q_s32(v35, v35);
    v37 = vuzp1q_s32(v34, v34);
    v38 = v33;
    if (v28.i32[0])
    {
      v39 = vmlaq_f32(vmulq_f32(vextq_s8(v36, v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(v37, v34, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
    }

    v40 = vuzp1q_s32(v33, v33);
    v41 = v34;
    result = v11;
    if (v28.i32[1])
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  result = v11;
  v13 = v82.columns[3];
LABEL_40:
  *result = v13;
  return result;
}

uint64_t sub_1AFAE0478(unint64_t a1, char a2, uint64_t a3, char a4, unint64_t a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v12 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  v14 = a2;
  result = 0;
  switch(v12)
  {
    case 1uLL:
      v17 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v18 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x48);
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v224);
      if (!a7)
      {
        goto LABEL_62;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_62;
      }

      v21 = Strong;
      v206 = v18;
      v22 = *(&v224 + 1);
      ObjectType = swift_getObjectType();
      *(&v231 + 1) = ObjectType;
      *&v230 = v21;
      v24 = *(v22 + 16);

      swift_unknownObjectRetain();
      v25 = v24(ObjectType, v22);
      if (qword_1EB633DC0 != -1)
      {
        v187 = v25;
        v188 = v26;
        swift_once();
        v25 = v187;
        v26 = v188;
      }

      if (v25 == *(qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier) && v26 == *(qword_1EB6C2AA8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8))
      {

        goto LABEL_78;
      }

      v28 = sub_1AFDFEE28();

      if (v28)
      {
LABEL_78:
        if (a8 && (v101 = swift_unknownObjectUnownedLoadStrong()) != 0)
        {
          v102 = v101;
          v103 = sub_1AF12F434(v101);
          if (v103)
          {
            v104 = v103;
            *(&v220 + 1) = sub_1AF0D4478(0, &qword_1ED72E0A8);
            v105 = v104;

            *&v219 = v105;
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v230);
            sub_1AF449D40(&v219, &v230);
            goto LABEL_82;
          }

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        sub_1AF4459C8(&v224);
        goto LABEL_121;
      }

LABEL_82:
      sub_1AF0D5A54(&v230, &v214);
      sub_1AF4498F4(0, &unk_1EB633A00);
      v106 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v107 = v216;
        v108 = swift_getObjectType();
        (*(*(&v107 + 1) + 32))(&v216, v108, *(&v107 + 1));

        sub_1AF449D40(&v216, &v219);
      }

      else
      {
        sub_1AF0D5A54(&v230, &v219);
      }

      v143 = sub_1AFDFDFD8();
      v144 = swift_conformsToProtocol2();
      if (!v144 || !v143 || (v145 = v144, sub_1AF441150(&v219, *(&v220 + 1)), v146 = sub_1AFDFEE08(), v147 = sub_1AFAF6214(v17, v146, v143, v145), swift_unknownObjectRelease(), !v147))
      {
        swift_unknownObjectRelease();

        sub_1AF4459C8(&v224);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v219);
        goto LABEL_121;
      }

      sub_1AFDFDFD8();
      if (a2)
      {
        goto LABEL_151;
      }

      v149 = sub_1AF90DEFC(v148);
      if ((~v149 & 0xF000000000000007) != 0)
      {
        v174 = v149;
        sub_1AF90EDE8(v149, &v212, 0.0);
        sub_1AF914F8C(v174);
      }

      else
      {
        v212 = 0u;
        v213 = 0u;
      }

      v214 = v212;
      v215 = v213;
      if (!*(&v213 + 1))
      {
        sub_1AFAE1E60(&v214, &qword_1ED726850, v106 + 8);
LABEL_151:
        swift_getAtAnyKeyPath();
        if (*(&v215 + 1))
        {
          goto LABEL_152;
        }

        swift_unknownObjectRelease();

        sub_1AF4459C8(&v224);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v219);
        sub_1AFAE1E60(&v214, &qword_1ED726850, v106 + 8);
LABEL_121:
        v150 = 0;
        goto LABEL_122;
      }

LABEL_152:
      sub_1AF449D40(&v214, &v216);
      v175 = sub_1AFAF6E24(v206, v206);
      v177 = ecs_stack_allocator_allocate(a7[4], v175, v176);
      sub_1AF0D5A54(&v216, &v214);
      sub_1AF441150(&v214, *(&v215 + 1));
      DynamicType = swift_getDynamicType();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v214);
      v150 = v177;
      sub_1AF8713D0(&v216, v177, DynamicType);
      swift_unknownObjectRelease();

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v216);
      sub_1AF4459C8(&v224);
      if ((a2 & 2) != 0)
      {
        sub_1AF0D5A54(&v219, &v214);
        v180 = swift_allocObject();
        *(v180 + 16) = a2;
        *(v180 + 24) = DynamicType;
        *(v180 + 32) = v177;
        sub_1AF449D40(&v214, (v180 + 40));
        *(v180 + 72) = v147;
      }

      else
      {

        v179 = swift_allocObject();
        *(v179 + 16) = DynamicType;
        *(v179 + 24) = v177;
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v219);
LABEL_122:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v230);
      return v150;
    case 2uLL:
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v224);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_62;
      }

      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v218 = &unk_1F25F47D0;
        v52 = v51;
        v53 = swift_dynamicCastObjCProtocolConditional();
        if (v53)
        {
          v54 = v53;
          swift_unknownObjectRetain();
          v55 = [v54 presentationObject];
          sub_1AFDFDFB8();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1AF4459C8(&v224);
          sub_1AF0D4478(0, &qword_1EB633BB0);
          if (swift_dynamicCast())
          {
            v52 = v219;
            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_1AF4459C8(&v224);
        }

        return v52;
      }

      swift_unknownObjectRelease();
LABEL_62:
      sub_1AF4459C8(&v224);
      return 0;
    case 3uLL:
      if (!a7)
      {
        return 0;
      }

      v88 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      result = ecs_stack_allocator_allocate(a7[4], 8, 8);
      *result = v88;
      return result;
    case 4uLL:
      v85 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v86 = *(v85 + 16);
      v87 = *(v85 + 40);
      v224 = *(v85 + 24);
      *v225 = v87;
      *&v225[12] = *(v85 + 52);
      if (!a7)
      {
        return 0;
      }

      return sub_1AFADE83C(v86, &v224, a2, a3, a4 & 1, a7);
    case 5uLL:
      return sub_1AFADFC9C(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x44), a5, a6 & 1, a7);
    case 6uLL:
      return *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    case 7uLL:
      if (!a7)
      {
        return 0;
      }

      v201 = a5;
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1AF4486E4();
      v43 = sub_1AFDFDE98();
      *&v224 = v41;
      *(&v224 + 1) = v42;
      *&v230 = 0x72657474696D6524;
      *(&v230 + 1) = 0xE90000000000002ELL;
      sub_1AF770DF0();
      sub_1AF770E44();
      if ((sub_1AFDFCD68() & 1) == 0)
      {

        if (a6)
        {
          v89 = 0;
          LOBYTE(v90) = 1;
        }

        else
        {
          v110 = sub_1AF65CCB0(v201);
          v90 = HIDWORD(v110) & 1;
          v89 = v110;
        }

        v111 = thread_worker_index();
        if (*v111 == -1)
        {
          v112 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        }

        else
        {
          v112 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v111 + 8;
        }

        v113 = *v112;
        ecs_stack_allocator_push_snapshot(*(*v112 + 32));
        LOBYTE(v224) = v90;
        sub_1AF702248(v41, v42, v9, v89 | (v90 << 32), &v224);
        v114 = *v225;
        if (!*v225)
        {
          v122 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
          *&v230 = 0;
          *(&v230 + 1) = 0xE000000000000000;

          sub_1AFDFE218();

          *&v230 = 0xD000000000000017;
          *(&v230 + 1) = 0x80000001AFF31000;
          MEMORY[0x1B2718AE0](v41, v42);
          v123 = v230;
          v124 = sub_1AFDFDA08();
          *&v230 = 0;
          (*(*v122 + 88))(v124, &v230, v123, *(&v123 + 1));

          ecs_stack_allocator_pop_snapshot(*(v113 + 32));
          return 0;
        }

        v115 = v226;
        v200 = *&v225[8];
        v116 = *&v225[24];
        v117 = *(&v224 + 1);
        v119 = v224;
        v118 = DWORD1(v224);
        v120 = WORD1(v226);
        ecs_stack_allocator_pop_snapshot(*(v113 + 32));
        v121 = v119;
        goto LABEL_133;
      }

      if (a6)
      {

        return 0;
      }

      v109 = *(v43 + 16);
      if (v109)
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v219 = v43;
      if (!isUniquelyReferenced_nonNull_native || v109 - (v109 != 0) > *(v43 + 24) >> 1)
      {
        v43 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v109, 1, v43);
        *&v219 = v43;
      }

      sub_1AF64C314(0, v109 != 0, 0);

      *&v224 = v43;
      sub_1AFAE1F50(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF488088();
      v157 = sub_1AFDFCD98();
      v159 = v158;

      sub_1AF701F04(v157, v159, &v224);

      v114 = *(&v224 + 1);
      if (*(&v224 + 1))
      {
        v121 = v201;
        v118 = HIDWORD(v201);
        v120 = *&v225[26];
        v116 = *&v225[16];
        v200 = *v225;
        v117 = v224;
        v115 = v225[24];
LABEL_133:
        *&v230 = v117;
        *(&v230 + 1) = v114;
        v231 = v200;
        *&v232 = v116;
        BYTE8(v232) = v115 & 1;
        WORD5(v232) = v120;
        v160 = v121 | (v118 << 32);

        v161 = sub_1AFADE83C(v160, &v230, a2, a3, a4 & 1, a7);

        swift_bridgeObjectRelease_n();
        return v161;
      }

      return 0;
    case 8uLL:
      if (!a7)
      {
        return 0;
      }

      v73 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v74 = *(v73 + 16);
      v75 = *(v73 + 32);
      v10 = *(v73 + 33);
      v76 = *(v73 + 34);
      v77 = *(v73 + 35);
      if (*(v73 + 32))
      {
        v78 = *(v73 + 24);
        if (v75 != 1 || (v79 = a7, LOBYTE(v224) = 1, v81 = sub_1AF7016BC(v74, v78, v9, 0x100000000), (v82 & 1) != 0))
        {
          *&v224 = 0;
          *(&v224 + 1) = 0xE000000000000000;

          sub_1AFDFE218();
          v230 = v224;
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF461A0);
          *&v224 = v74;
          *(&v224 + 1) = v78;
          v225[0] = v75;
          sub_1AFDFE458();
          v84 = *(&v230 + 1);
          v83 = v230;
LABEL_104:
          v129 = sub_1AFDFDA08();
          *&v224 = 1;
          sub_1AF75A4B4(v129, v83, v84, &v224);

          return 1;
        }

        v14 = a2;
        v74 = v81;
      }

      else
      {
        v79 = a7;
      }

      sub_1AF8E60EC(v74, (v14 & 8) == 0, &v219);
      if (!v223)
      {
        *&v224 = 0;
        *(&v224 + 1) = 0xE000000000000000;

        sub_1AFDFE218();

        *&v224 = 0xD000000000000023;
        *(&v224 + 1) = 0x80000001AFF461C0;
        v128 = sub_1AF656F38();
        MEMORY[0x1B2718AE0](v128);

        v84 = *(&v224 + 1);
        v83 = v224;
        goto LABEL_104;
      }

      v230 = v219;
      v231 = v220;
      v232 = v221;
      v233 = v222;
      v234 = v223;
      if (v10 == 2)
      {
        v125 = ecs_stack_allocator_allocate(v79[4], 96, 16);
        sub_1AF44222C(&v230, &v224);
        sub_1AF478ACC(&v230, v76, v77, &v224);
        v151 = v228;
        if (v228 != 1)
        {
          v167 = v229;
          *(v125 + 1) = *v225;
          *(v125 + 2) = *&v225[16];
          *(v125 + 3) = v226;
          v125[8] = v227;
          v125[9] = v151;
          *v125 = v224;
          *(v125 + 5) = v167;
          goto LABEL_142;
        }
      }

      else if (v10 == 1)
      {
        v125 = ecs_stack_allocator_allocate(v79[4], 56, 8);
        sub_1AF44222C(&v230, &v224);
        sub_1AF478700(&v230, v76, v77, &v224);
        v126 = *&v225[24];
        if (*&v225[24] != 1)
        {
          v127 = v226;
          *v125 = v224;
          *(v125 + 1) = *v225;
          v125[4] = *&v225[16];
          v125[5] = v126;
          v125[6] = v127;
LABEL_142:
          sub_1AFAE1E60(&v219, &unk_1ED725420, &type metadata for TextureCPURuntime);
          return v125;
        }
      }

      else
      {
        if (v10)
        {
          while (1)
          {
            *&v224 = 0;
            *(&v224 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF461F0);
            LOBYTE(v216) = v10;
            sub_1AFDFE458();
LABEL_166:
            sub_1AFDFE518();
            __break(1u);
          }
        }

        v125 = ecs_stack_allocator_allocate(v79[4], 40, 8);
        sub_1AF44222C(&v230, &v224);
        sub_1AF4783C0(&v230, v76, v77, &v224);
        v152 = *&v225[8];
        if (*&v225[8] != 1)
        {
          v168 = *&v225[16];
          *v125 = v224;
          v125[2] = *v225;
          v125[3] = v152;
          v125[4] = v168;
          goto LABEL_142;
        }
      }

      sub_1AFDFE218();

      v216 = v232;
      v217 = v233;
      v153 = sub_1AF467494(&v216);
      v154 = sub_1AF4720E8(v153);
      MEMORY[0x1B2718AE0](v154);

      v155 = sub_1AFDFDA08();
      *&v216 = 1;
      sub_1AF75A4B4(v155, 0xD000000000000022, 0x80000001AFF46220, &v216);

      sub_1AFAE1E60(&v219, &unk_1ED725420, &type metadata for TextureCPURuntime);
      return 1;
    case 9uLL:
      if (!a7)
      {
        return 0;
      }

      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if (!*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
      {
        v37 = a7;
LABEL_69:
        v93 = sub_1AFADF79C(v34, v9);
        result = ecs_stack_allocator_allocate(v37[4], 40, 8);
        v94 = v37[4];
        *result = 238122804;
        *(result + 8) = v9;
        *(result + 16) = v94;
        *(result + 24) = v34;
        *(result + 32) = v93;
        return result;
      }

      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v37 = a7;
      if (v35 == 1)
      {

        LOBYTE(v224) = 1;
        v38 = sub_1AF7016BC(v34, v36, v9, 0x100000000);
        if ((v39 & 1) == 0)
        {
          a5 = v38;
LABEL_68:
          v92 = v34;
          v34 = a5;
          sub_1AF7D4C4C(v92, v36, v35);
          goto LABEL_69;
        }
      }

      else if ((a6 & 1) == 0)
      {
        goto LABEL_68;
      }

      *&v224 = 0;
      *(&v224 + 1) = 0xE000000000000000;

      sub_1AFDFE218();
      v230 = v224;
      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF46250);
      *(&v224 + 1) = v36;
      v225[0] = v35;
      sub_1AFDFE458();
      sub_1AF7D4C4C(v34, v36, v35);
      v91 = sub_1AFDFDA08();
      *&v224 = 1;
      sub_1AF75A4B4(v91, v230, *(&v230 + 1), &v224);

      return 0;
    case 0xAuLL:
      v56 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v224 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      *v225 = v56;
      *&v225[12] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x2C);
      if (!a9 || !a7)
      {
        return 0;
      }

      v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v58 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v59 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v60 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v61 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v62 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x3A);

      if (sub_1AFADB81C())
      {
        v197 = v61;
        v198 = v60;
        v199 = v59;
        v202 = v58;
        v211 = *&v225[8];
        sub_1AFAF6E24(*&v225[8], *&v225[8]);
        v204 = v63;
        v65 = v64;
        v66 = *v225;
        v67 = sub_1AFDFDFD8();
        v68 = swift_conformsToProtocol2();
        if (v68)
        {
          v69 = *(v68 + 8);
          v219 = v224;
          sub_1AF450FE0(&v219, &v230);

          v196 = v67;
          v70 = sub_1AF64B03C(v67);
          if (v72)
          {
            sub_1AF585778(&v219);

            return 0;
          }

          v191 = v71;
          v192 = v57;
          v195 = v70;
          v130 = *(a9 + 240) * v65;
          v205 = ecs_stack_allocator_allocate(a7[4], v130, v204);
          v193 = *(a9 + 240);
          v194 = *(a9 + 232);
          v131 = sub_1AFDFDFD8();
          if (swift_conformsToProtocol2())
          {
            v132 = sub_1AFDFDFD8();
            if (swift_conformsToProtocol2())
            {
              v190 = v10 | (v62 << 16);
              v189 = v205 + v130;
              v133 = sub_1AF6411A4(v132);
              sub_1AFAF6E24(v211, v211);
              v135 = v134;
              sub_1AFDFE008();
              KeyPath = swift_getKeyPath();
              v137 = MEMORY[0x1B2719A10](v66, KeyPath);

              if (v137)
              {
                v138 = v193 - v194;
                if (v193 != v194)
                {
                  v139 = (v205 + v135 * v194);
                  v140.i64[0] = 0x3F0000003F000000;
                  v140.i64[1] = 0x3F0000003F000000;
                  v141 = (v195 + v133 * v194);
                  do
                  {
                    *&v142 = vmulq_f32(*v141, v140).u64[0];
                    *(&v142 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, *v141, 2));
                    *v139 = v142;
                    v139 = (v139 + v135);
                    v141 = (v141 + v133);
                    --v138;
                  }

                  while (v138);
                }
              }

              else
              {
                v162 = swift_getKeyPath();
                v163 = MEMORY[0x1B2719A10](v66, v162);

                if (v163)
                {
                  v164 = v193 - v194;
                  if (v193 != v194)
                  {
                    v165 = (v205 + v135 * v194);
                    v166 = (v195 + v133 * v194);
                    do
                    {
                      *v165 = vmul_f32(*v166, 0x3F0000003F000000);
                      v165 = (v165 + v135);
                      v166 = (v166 + v133);
                      --v164;
                    }

                    while (v164);
                  }
                }

                else
                {
                  v169 = swift_getKeyPath();
                  v170 = MEMORY[0x1B2719A10](v66, v169);

                  if (v170)
                  {
                    v171 = v193 - v194;
                    if (v193 != v194)
                    {
                      v172 = (v205 + v135 * v194);
                      v173 = (v195 + v133 * v194);
                      do
                      {
                        *v172 = *v173 * 0.5;
                        v172 = (v172 + v135);
                        v173 = (v173 + v133);
                        --v171;
                      }

                      while (v171);
                    }
                  }

                  else
                  {
                    v181 = v193 - v194;
                    if (v193 != v194)
                    {
                      v182 = v205 + v135 * v194;
                      v183 = v195 + v133 * v194;
                      do
                      {
                        sub_1AF6794BC(v183, v66, v131);
                        sub_1AF871630(&v230, v182, v211);
                        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v230);
                        v182 += v135;
                        v183 += v133;
                        --v181;
                      }

                      while (v181);
                    }
                  }
                }
              }

              swift_unownedRetainStrong();
              sub_1AF450FE0(&v219, &v230);

              swift_unownedRetain();

              v184 = swift_allocObject();
              *(v184 + 16) = 0;
              *(v184 + 24) = 0;
              *(v184 + 32) = 0;
              *(v184 + 40) = v192;
              *(v184 + 48) = v202;
              *(v184 + 56) = v199;
              *(v184 + 64) = v198;
              *(v184 + 72) = v197;
              *(v184 + 80) = v190;
              *(v184 + 88) = v205;
              *(v184 + 96) = v189;
              *(v184 + 104) = v195;
              *(v184 + 112) = v191;
              *(v184 + 120) = v196;
              *(v184 + 128) = v69;
              *(v184 + 136) = v211;
              *(v184 + 144) = a9;
              v185 = a7[8];
              v186 = (a7[6] + 48 * v185);
              *v186 = v196;
              v186[1] = v69;
              v186[2] = v211;
              v186[3] = v205;
              v186[4] = sub_1AFAE1E1C;
              v186[5] = v184;
              sub_1AF585778(&v219);

              a7[8] = v185 + 1;

              return v205;
            }

LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

LABEL_162:
        __break(1u);
      }

      else
      {
        v95 = sub_1AFDFDFD8();
        v96 = swift_conformsToProtocol2();
        if (v96)
        {
          v97 = sub_1AF64B110(v95, v96, 0, 0, 0, a7);
          v99 = v98;

          if ((v99 & 1) == 0)
          {
            if (v225[24])
            {
              v100 = 0;
            }

            else
            {
              v100 = *&v225[16];
            }

            return v97 + v100;
          }

          return 0;
        }
      }

      __break(1u);
      goto LABEL_164;
    case 0xBuLL:
      if (!a9)
      {
        return 0;
      }

      v29 = sub_1AFDFDFD8();
      if (swift_conformsToProtocol2())
      {
        v30 = sub_1AF64AFF4(v29);

        return v30;
      }

      __break(1u);
      goto LABEL_162;
    case 0xCuLL:
      if (!a7)
      {
        return 0;
      }

      v31 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v32 = ecs_stack_allocator_allocate(a7[4], 4, 4);
      v33 = sub_1AF3C9600(v31);
      result = v32;
      if ((v33 & 0xFF00000000) == 0x200000000)
      {
        LODWORD(v33) = 0;
      }

      *v32 = v33;
      return result;
    case 0xDuLL:
      if (!a7)
      {
        return 0;
      }

      v44 = a7[2] + OBJC_IVAR____TtC3VFX13EntityManager_clock;
      v45 = *(v44 + 8);
      v46 = *(v44 + 16);
      v48 = sub_1AF3C9600(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      if ((v48 & 0xFF00000000) == 0x200000000)
      {
        v49 = 0;
      }

      else
      {
        v49 = v48;
      }

      v50 = v46 + v45 + v49;
      result = ecs_stack_allocator_allocate(a7[4], 4, 4);
      *result = v50;
      return result;
    case 0xFuLL:
      return result;
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        return 0;
      }

      if (a1 != 0x8000000000000008)
      {
        goto LABEL_166;
      }

      return 0;
    default:
      goto LABEL_166;
  }
}

uint64_t sub_1AFAE1E60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFAE1F50(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFAE1EE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF4498F4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AFAE1F50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AFAE1FA0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[2];
  v5 = a1[4];
  v6 = *(v2 + 8);
  v7 = 8 * *(v6 + 16);

  v8 = ecs_stack_allocator_allocate(v5, v7, 8);
  *v3 = v8;
  v9 = v4 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v10 = type metadata accessor for ScriptingConfiguration();
  v55 = *(v3 + 40);
  v56 = *(v9 + *(v10 + 36));
  v59 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = sub_1AFC0DAF8(v55);
    v11 = *(v6 + 16);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_49:

    *(v3 + 40) = v55;
    return 1;
  }

  v11 = *(v6 + 16);
  if (!v11)
  {
    goto LABEL_49;
  }

LABEL_3:
  v12 = (v6 + 48);
  v13 = v55 + 8;
  v57 = v3;
  while (1)
  {
    v17 = *(v12 - 2);
    if (v17 >> 60 == 5)
    {
      goto LABEL_6;
    }

    v18 = *(v12 - 8);
    v65 = *(v12 - 2);
    v66 = *v12;
    v19 = *(v13 - 1);
    v64 = v11;
    if ((~*(v13 - 2) & 0xFCLL) == 0)
    {
      goto LABEL_17;
    }

    v16 = *(v13 - 2);
    LOBYTE(v20) = *(v13 - 1);
    if (!(v19 >> 6))
    {
      goto LABEL_12;
    }

    if (v19 >> 6 == 1)
    {
      LOBYTE(v20) = v19 & 0x3F;
LABEL_12:
      v20 = v20;
      if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v20 = v16;
    if (!v16)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = *(v13 - 4);
    v21 = *(v13 - 3);
    if (v20 == 1 || *v13 >= v56)
    {
      sub_1AF443EE0(v17);
      sub_1AF444224(v66);
      sub_1AFAE2954(v15, v21, v16, v19);
      goto LABEL_23;
    }

LABEL_17:
    v22 = *(v3 + 16);
    v23 = *(v3 + 24);
    v24 = *(v3 + 28);
    v25 = *(v3 + 36);
    v26 = *(v12 - 2);
    sub_1AF443EE0(v17);
    sub_1AF444224(v66);
    v27 = sub_1AFAE0478(v26, v18, v22, v23, v24, v25, a1, a2, 0);
    if (v30 >= 0xFCu)
    {
      break;
    }

    v15 = v27;
    v21 = v28;
    v16 = v29;
    LOBYTE(v19) = v30;
    if (!(v30 >> 6))
    {
      v31 = v30;
      if (!v30)
      {
        LOBYTE(v19) = 0;
        goto LABEL_36;
      }

LABEL_26:
      if (v31)
      {
        if (v31 == 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = v56;
        }
      }

      else
      {
        v33 = -1;
      }

      sub_1AF448910(v27, v28, v29, v30);
      v34 = *(v13 - 4);
      v35 = *(v13 - 3);
      v36 = *(v13 - 2);
      v37 = *(v13 - 1);
      *(v13 - 4) = v15;
      *(v13 - 3) = v21;
      *(v13 - 2) = v16;
      *(v13 - 1) = v19;
      *v13 = v33;
      sub_1AF44893C(v34, v35, v36, v37);
      v32 = v19 >> 6;
      if (!(v19 >> 6))
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if (v30 >> 6 == 1)
    {
      goto LABEL_36;
    }

    if (v29)
    {
      v31 = v29;
      goto LABEL_26;
    }

LABEL_23:
    v32 = v19 >> 6;
    if (!(v19 >> 6))
    {
      goto LABEL_36;
    }

LABEL_32:
    if (v32 != 1)
    {
      v63 = v21;
      v38 = v15(a1);
      v40 = v39;
      v42 = v41;
      if (v39)
      {
        goto LABEL_37;
      }

      goto LABEL_5;
    }

LABEL_36:
    sub_1AF0FBD8C(v21);
    v38 = v15;
    v63 = v21;
    v40 = v21;
    v42 = v16;
    if (v40)
    {
LABEL_37:
      v61 = v15;
      v43 = swift_allocObject();
      *(v43 + 16) = v40;
      *(v43 + 24) = v42;
      v44 = *(v3 + 48);

      v62 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1AF4221DC(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1AF4221DC(v45 > 1, v46 + 1, 1, v44);
      }

      v44[2] = v46 + 1;
      v14 = &v44[2 * v46];
      v14[4] = sub_1AF6D25EC;
      v14[5] = v43;
      *(v57 + 48) = v44;
      v3 = v57;
      v15 = v61;
      v16 = v62;
    }

LABEL_5:
    *v8 = v38;
    sub_1AF0FB8EC(v40);
    sub_1AF443F24(v65);
    sub_1AF444AF4(v66);
    sub_1AF4488E4(v15, v63, v16, v19);
    v11 = v64;
LABEL_6:
    v12 += 5;
    ++v8;
    v13 += 5;
    if (!--v11)
    {
      goto LABEL_49;
    }
  }

  *(v3 + 40) = v55;
  if (*(v59 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) == 1)
  {
    sub_1AF443F24(v65);
    sub_1AF444AF4(v66);
  }

  else
  {
    v47 = *(v59 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
    v67[1] = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
    sub_1AFDFE458();
    v48 = sub_1AFDFDA08();
    v67[0] = 0;
    (*(*v47 + 88))(v48, v67, 0, 0xE000000000000000);
    sub_1AF443F24(v65);
    sub_1AF444AF4(v66);
  }

  v49 = *(v3 + 48);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v49 + 40;
    do
    {
      v52 = *(v51 - 8);

      v52(v53);

      v51 += 16;
      --v50;
    }

    while (v50);
  }

  return 0;
}

uint64_t sub_1AFAE24FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v42 = a2;
  v16 = sub_1AF6411A4(v14);
  result = sub_1AFAF6E24(a7, a7);
  v18 = v17;
  if (a5)
  {
    v19 = a3;
    v20 = a4 - a3;
    if (v20)
    {
      v21 = v42 + v16 * v19;
      while (1)
      {
        sub_1AF871824(a1, a7, v43);
        sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          break;
        }

        sub_1AF679690(v43);
        result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
        a1 += v18;
        v21 += v16;
        if (!--v20)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v41 = a4;
    sub_1AFDFE008();
    KeyPath = swift_getKeyPath();
    v23 = MEMORY[0x1B2719A10](a6, KeyPath);

    if (v23)
    {
      v24 = v41 - a3;
      if (v41 != a3)
      {
        v25 = (v42 + v16 * a3);
        v26 = (a1 + v18 * a3);
        do
        {
          *&v27 = vaddq_f32(*v26, *v26).u64[0];
          *(&v27 + 2) = COERCE_FLOAT(v26->i64[1]) + COERCE_FLOAT(v26->i64[1]);
          HIDWORD(v27) = 0;
          *v25 = v27;
          v25 = (v25 + v16);
          v26 = (v26 + v18);
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      v28 = swift_getKeyPath();
      v29 = MEMORY[0x1B2719A10](a6, v28);

      if (v29)
      {
        v30 = v41 - a3;
        if (v41 != a3)
        {
          v31 = (v42 + v16 * a3);
          v32 = (a1 + v18 * a3);
          do
          {
            *v31 = vadd_f32(*v32, *v32);
            v31 = (v31 + v16);
            v32 = (v32 + v18);
            --v30;
          }

          while (v30);
        }
      }

      else
      {
        v33 = swift_getKeyPath();
        v34 = MEMORY[0x1B2719A10](a6, v33);

        if (v34)
        {
          v35 = v41 - a3;
          if (v41 != a3)
          {
            v36 = (v42 + v16 * a3);
            v37 = (a1 + v18 * a3);
            do
            {
              *v36 = *v37 + *v37;
              v36 = (v36 + v16);
              v37 = (v37 + v18);
              --v35;
            }

            while (v35);
          }
        }

        else
        {
          v38 = v41 - a3;
          if (v41 != a3)
          {
            v39 = v42 + v16 * a3;
            v40 = a1 + v18 * a3;
            while (1)
            {
              sub_1AF871824(v40, a7, v43);
              sub_1AFDFDFD8();
              result = swift_conformsToProtocol2();
              if (!result)
              {
                break;
              }

              sub_1AF679690(v43);
              result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
              v39 += v16;
              v40 += v18;
              if (!--v38)
              {
                return result;
              }
            }

            goto LABEL_30;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFAE28BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFAE1EE4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFAE2954(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((~a4 & 0xFC) != 0)
  {
    return sub_1AF448910(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t destroy for MappedLocation(uint64_t result)
{
  if (*(result + 8))
  {
  }

  return result;
}

__n128 sub_1AFAE297C(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = (a2 + 1);
  v2 = a2[1];
  if (v2)
  {
    v4 = a2[2];
    a1[1] = v2;
    a1[2] = v4;
  }

  else
  {
    result = *v3;
    *(a1 + 1) = *v3;
  }

  return result;
}

void *assignWithCopy for MappedLocation(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1 + 1;
  v5 = a2 + 1;
  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v7 = a2[2];
      a1[1] = v4;
      a1[2] = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = a2[2];
  a1[1] = v4;
  a1[2] = v6;

  return a1;
}

__n128 assignWithTake for MappedLocation(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = (a1 + 1);
  v4 = (a2 + 1);
  v3 = a2[1];
  if (a1[1])
  {
    if (v3)
    {
      v5 = a2[2];
      a1[1] = v3;
      a1[2] = v5;

      return result;
    }
  }

  else if (v3)
  {
    v7 = a2[2];
    a1[1] = v3;
    a1[2] = v7;
    return result;
  }

  result = *v4;
  *v2 = *v4;
  return result;
}

uint64_t destroy for ScriptParameterBuffer()
{
}

uint64_t initializeWithCopy for ScriptParameterBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;

  return a1;
}

uint64_t assignWithCopy for ScriptParameterBuffer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  LOBYTE(v4) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = v4;
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  return a1;
}

uint64_t assignWithTake for ScriptParameterBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t initializeWithCopy for CachedLocationMapping(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1AF448910(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for CachedLocationMapping(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1AF448910(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  sub_1AF4488E4(v8, v9, v10, v11);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for CachedLocationMapping(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_1AF4488E4(v6, v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for CachedLocationMapping(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 40))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CachedLocationMapping(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for LocationMapping(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF448910(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for LocationMapping(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1AF448910(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1AF4488E4(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for LocationMapping(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1AF4488E4(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for LocationMapping(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 25))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for LocationMapping(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1AFAE3188()
{
  result = qword_1EB642900;
  if (!qword_1EB642900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642900);
  }

  return result;
}

uint64_t sub_1AFAE31E8(uint64_t *a1)
{
  result = *a1;
  if ((a1[1] ^ result) >> 14)
  {
    v3 = a1;
    sub_1AFDFDE18();

    sub_1AFDFDDC8();

    v4 = sub_1AFDFDE38();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    *v3 = v4;
    v3[1] = v6;
    v3[2] = v8;
    v3[3] = v10;
  }

  return result;
}

uint64_t sub_1AFAE32B8()
{
  if ((v0[1] ^ *v0) < 0x4000)
  {
    return 0;
  }

  v2 = sub_1AFDFDE18();

  sub_1AFDFDDC8();

  v3 = sub_1AFDFDE38();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  result = v2;
  *v0 = v3;
  v0[1] = v5;
  v0[2] = v7;
  v0[3] = v9;
  return result;
}

uint64_t sub_1AFAE339C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  if (v3 == v1[3] >> 1)
  {
    v4 = 0;
    v5 = 0;
    result = 0;
    v7 = 0uLL;
  }

  else
  {
    v8 = (v1[1] + 40 * v3);
    v4 = *v8;
    v9 = *(v8 + 8);
    v5 = *(v8 + 3);
    v1[2] = v3 + 1;

    v7 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AFAE3424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFD1F8();
  if ((v4 ^ v5) >= 0x4000)
  {
    v6 = v5;
    v17 = a1;
    v7 = 0;
    do
    {
      v8 = sub_1AFDFDE18();
      v10 = v9;
      v11 = sub_1AFDFDDC8();
      v12 = sub_1AF759524(v8, v10);

      v13 = (v12 - 8232) < 2 || v12 == 133;
      v14 = (v12 - 14) > 0xFFFFFFFB || v13;
      v7 += v14;
    }

    while ((v11 ^ v6) >> 14);
    a1 = v17;
  }

  sub_1AFDFE218();

  v15 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0x6F727265203A303ALL, 0xEB00000000203A72);
  MEMORY[0x1B2718AE0](a1, a2);
  return 0x3A7475706E69;
}

uint64_t sub_1AFAE35E8()
{
  sub_1AFAF56CC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAF5748(0, &qword_1ED722BC8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - v11;

  v13 = sub_1AFDFD1F8();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v29 = v13;
  v30 = v15;
  v31 = v17;
  v32 = v19;
  sub_1AFAF57F8(0, &qword_1EB630C50, sub_1AFAF5860, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6EA0]);
  sub_1AFAF58B4();
  sub_1AFDFD1D8();
  sub_1AFDFC408();
  sub_1AFDFC478();
  v21 = *(v5 + 8);
  v20 = v5 + 8;
  v22 = v8;
  v23 = v28;
  v21(v22, v4);
  v24 = v33;
  sub_1AFDFC438();
  v21(v12, v4);

  if (!v24)
  {
    sub_1AFAF5748(0, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
    v20 = (*(*(v25 - 8) + 48))(v23, 1, v25) != 1;
    sub_1AFAF5798(v23, sub_1AFAF56CC);
  }

  return v20 & 1;
}

void sub_1AFAE3914(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  sub_1AFDFDDE8();
  v101 = v9;
  v10 = sub_1AFDFDE18();
  v12 = v11;
  v13 = v10 == 36 && v11 == 0xE100000000000000;
  if (v13 || (v14 = v10, (sub_1AFDFEE28() & 1) != 0))
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v87 = sub_1AFDFDE38();
      v88 = v20;
      v90 = v21;
      v17 = v22;
      sub_1AFDFDE18();

      sub_1AFDFDDC8();

      v23 = sub_1AFDFDE38();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v15 = v87;

      *a1 = v23;
      a1[1] = v25;
      v19 = 5;
      a1[2] = v27;
      a1[3] = v29;
      v18 = v88;
      v16 = v90;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 5;
    }

    goto LABEL_9;
  }

  v30 = v14 == 46 && v12 == 0xE100000000000000;
  if (v30 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v31;
      v17 = v32;
      v33 = a1;
      v18 = v34;
      sub_1AFAE31E8(v33);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 2;
    goto LABEL_9;
  }

  if (v14 == 58 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v35;
      v17 = v36;
      v37 = a1;
      v18 = v38;
      sub_1AFAE31E8(v37);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 3;
    goto LABEL_9;
  }

  if (v14 == 59 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v39;
      v17 = v40;
      v41 = a1;
      v18 = v42;
      sub_1AFAE31E8(v41);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 4;
    goto LABEL_9;
  }

  if (v14 == 64 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v43;
      v17 = v44;
      v45 = a1;
      v18 = v46;
      sub_1AFAE31E8(v45);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 6;
    goto LABEL_9;
  }

  if (v14 == 61 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v47;
      v17 = v48;
      v49 = a1;
      v18 = v50;
      sub_1AFAE31E8(v49);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 7;
    goto LABEL_9;
  }

  v89 = a1;
  if (v14 == 40 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v51;
      v17 = v52;
      v18 = v53;
      sub_1AFAE31E8(v89);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 8;
    goto LABEL_9;
  }

  if (v14 == 41 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v54;
      v17 = v55;
      v18 = v56;
      sub_1AFAE31E8(v89);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 9;
    goto LABEL_9;
  }

  if (v14 == 91 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v57;
      v17 = v58;
      v18 = v59;
      sub_1AFAE31E8(v89);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 10;
    goto LABEL_9;
  }

  if (v14 == 93 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v60;
      v17 = v61;
      v18 = v62;
      sub_1AFAE31E8(v89);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 11;
    goto LABEL_9;
  }

  if (v14 == 60 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v63;
      v17 = v64;
      v18 = v65;
      sub_1AFAE31E8(v89);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 12;
    goto LABEL_9;
  }

  if (v14 == 62 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v66;
      v17 = v67;
      v18 = v68;
      sub_1AFAE31E8(v89);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 13;
    goto LABEL_9;
  }

  if (v14 == 44 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    if ((v8 ^ v7) >= 0x4000)
    {
      sub_1AFDFDDE8();
      v15 = sub_1AFDFDE38();
      v16 = v69;
      v17 = v70;
      v18 = v71;
      sub_1AFAE31E8(v89);
      v19 = 0;
      goto LABEL_9;
    }

LABEL_93:
    v19 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_9:
    *a3 = v19;
    a3[1] = v15;
    a3[2] = v16;
    a3[3] = v17;
    a3[4] = v18;
    return;
  }

  if (v14 == 35 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v72 = sub_1AFAE76B0(a1);
    if (v3)
    {
      return;
    }

    if ((v72 & 1) == 0)
    {
      if ((a1[1] ^ *a1) >= 0x4000)
      {
        v19 = 1;
        sub_1AFDFDDE8();
        v15 = sub_1AFDFDE38();
        v16 = v77;
        v17 = v78;
        v18 = v79;
        sub_1AFAE31E8(v89);
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 1;
      }

      goto LABEL_9;
    }

    if (a2)
    {
      goto LABEL_101;
    }

    v73 = sub_1AFAE3424(0xD000000000000027, 0x80000001AFF46C90);
    v75 = v74;
    sub_1AFAF5678();
    swift_allocError();
    *v76 = v73;
    v76[1] = v75;
    goto LABEL_266;
  }

  if (v14 == 65 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 66 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 67 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 68 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 69 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 70 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 71 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 72 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 73 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 74 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 75 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 76 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 77 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 78 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 79 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 80 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 81 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 82 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 83 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 84 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 85 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 86 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 87 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 88 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 89 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 90 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 97 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 98 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 99 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 100 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 101 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 102 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 103 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 104 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 105 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 106 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 107 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 108 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 109 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 110 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 111 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 112 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 113 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 114 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 115 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 116 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 117 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 118 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 119 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 120 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 121 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 122 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0
    || v14 == 95 && v12 == 0xE100000000000000
    || (sub_1AFDFEE28() & 1) != 0)
  {

    sub_1AFAE7CB4(a1, v91);
    if (!v3)
    {
      v19 = v91[0];
      v15 = v92;
      v16 = v93;
      v17 = v94;
      v18 = v95;
      goto LABEL_9;
    }

    return;
  }

  if (v14 == 48 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 49 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 50 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 51 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 52 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 53 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 54 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 55 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 56 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 57 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    sub_1AFAE80D4(a1, v96);
    if (!v3)
    {
      v19 = v96[0];
      v15 = v97;
      v16 = v98;
      v17 = v99;
      v18 = v100;
      goto LABEL_9;
    }

    return;
  }

  if ((v14 != 47 || v12 != 0xE100000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_317;
  }

  sub_1AFDFDDE8();
  if (sub_1AFDFDE18() == 47 && v80 == 0xE100000000000000)
  {

    goto LABEL_308;
  }

  v81 = sub_1AFDFEE28();

  if ((v81 & 1) == 0)
  {
LABEL_317:
    if (v14 == 32 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 9 && v12 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0 || v14 == 10 && v12 == 0xE100000000000000)
    {
    }

    else
    {
      v82 = sub_1AFDFEE28();

      if ((v82 & 1) == 0)
      {
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF46C70);
        sub_1AFDFDDE8();
        sub_1AFDFDE18();
        sub_1AFDFCD38();

        v83 = sub_1AFAE3424(0, 0xE000000000000000);
        v85 = v84;

        sub_1AFAF5678();
        swift_allocError();
        *v86 = v83;
        v86[1] = v85;
LABEL_266:
        swift_willThrow();
        return;
      }
    }

    sub_1AFAE32B8();

    goto LABEL_93;
  }

LABEL_308:

  sub_1AFAE8520(a1);
  if (!v3)
  {
LABEL_101:
    v19 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_9;
  }
}

char *sub_1AFAE53E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;

  v7 = MEMORY[0x1E69E7CC0];
  while ((v26 ^ v25) >= 0x4000)
  {
    sub_1AFAE3914(&v25, a5 & 1, v29);
    if (v5)
    {
      v7 = v5;

      return v7;
    }

    v8 = v30;
    if (v30)
    {
      v33 = 0;
      v31 = v29[0];
      v32 = v29[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4270F8(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v5 = v33;
      if (v10 >= v9 >> 1)
      {
        v13 = sub_1AF4270F8(v9 > 1, v10 + 1, 1, v7);
        v5 = v33;
        v7 = v13;
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[40 * v10];
      v12 = v32;
      *(v11 + 2) = v31;
      *(v11 + 3) = v12;
      *(v11 + 8) = v8;
    }
  }

  v14 = sub_1AFDFDE38();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF4270F8(0, *(v7 + 2) + 1, 1, v7);
  }

  v22 = *(v7 + 2);
  v21 = *(v7 + 3);
  if (v22 >= v21 >> 1)
  {
    v7 = sub_1AF4270F8(v21 > 1, v22 + 1, 1, v7);
  }

  *(v7 + 2) = v22 + 1;
  v23 = &v7[40 * v22];
  v23[32] = 16;
  *(v23 + 5) = v14;
  *(v23 + 6) = v16;
  *(v23 + 7) = v18;
  *(v23 + 8) = v20;
  return v7;
}

uint64_t sub_1AFAE55E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = a3 + 56; ; i += 32)
  {
    v7 = *(i - 16);
    if (v7)
    {
      v8 = *(i - 24);
      if (v8 == a1 && v7 == a2)
      {
        goto LABEL_11;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  a1 = v8;
LABEL_11:

  return a1;
}

uint64_t sub_1AFAE56B0(uint64_t a1)
{
  sub_1AFAE55E4(0x74756F6E69, 0xE500000000000000, a1);
  v3 = v2;
  if (!v2)
  {
    v10 = 0;
    return v10 | ((v3 == 0) << 8);
  }

  v4 = v1;
  v5 = sub_1AFDFCF98();
  v7 = v6;
  v8 = v5 == 1702195828 && v6 == 0xE400000000000000;
  if (v8 || (v9 = v5, (sub_1AFDFEE28() & 1) != 0) || v9 == 7562617 && v7 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0 || v9 == 49 && v7 == 0xE100000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v10 = 3;
LABEL_14:

    return v10 | ((v3 == 0) << 8);
  }

  if (v9 == 0x65736C6166 && v7 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0 || v9 == 28526 && v7 == 0xE200000000000000 || (sub_1AFDFEE28() & 1) != 0 || v9 == 48 && v7 == 0xE100000000000000)
  {

LABEL_26:
    v10 = 1;
    goto LABEL_14;
  }

  v12 = sub_1AFDFEE28();

  if (v12)
  {
    goto LABEL_26;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v4, v3);
  swift_bridgeObjectRelease_n();

  MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF46980);
  sub_1AFAF5454();
  swift_allocError();
  *v13 = 39;
  v13[1] = 0xE100000000000000;
  return swift_willThrow();
}

uint64_t sub_1AFAE5964()
{
  v0 = sub_1AF0D20CC(&unk_1F2500BE8);
  result = swift_arrayDestroy();
  qword_1ED73B388 = v0;
  return result;
}

uint64_t sub_1AFAE59B0(unsigned __int8 a1)
{
  v3 = *(v1 + 2);
  if (v3 == *(v1 + 3) >> 1 || *(*(v1 + 1) + 40 * v3) != a1)
  {
    v6 = v1[1];
    v27 = *v1;
    v28 = v6;
    v7 = v1[3];
    v29 = v1[2];
    v30 = v7;
    v31 = *(v1 + 8);
    v8 = 0xE000000000000000;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x6465746365707865, 0xE900000000000020);
    v32 = a1;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x3A65726F66656220, 0xE900000000000020);
    if (v28 == *(&v28 + 1) >> 1)
    {
      v9 = 0;
    }

    else
    {

      v10 = sub_1AFDFD1F8();
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = MEMORY[0x1B27189E0](v10, v12, v14, v16);
      v8 = v18;

      v9 = v17;
    }

    MEMORY[0x1B2718AE0](v9, v8);

    v19 = sub_1AFAE5C18(v23, v24);
    v4 = v20;

    sub_1AFAF5454();
    swift_allocError();
    *v21 = v19;
    v21[1] = v4;
    swift_willThrow();
  }

  else
  {
    sub_1AFAE339C(v25);
    v4 = *(&v25[0] + 1);
    sub_1AFAF55F0(v25, &v23);

    v5 = v25[1];
    v1[2] = v25[0];
    v1[3] = v5;
    *(v1 + 8) = v26;
  }

  return v4;
}

uint64_t sub_1AFAE5C18(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != *(v2 + 24) >> 1)
  {
  }

  v5 = sub_1AFDFD1F8();
  v7 = v6;

  if ((v5 ^ v7) >= 0x4000)
  {
    v18 = a1;
    v8 = 0;
    do
    {
      v9 = sub_1AFDFDE18();
      v11 = v10;
      v12 = sub_1AFDFDDC8();
      v13 = sub_1AF759524(v9, v11);

      v14 = (v13 - 8232) < 2 || v13 == 133;
      v15 = (v13 - 14) > 0xFFFFFFFB || v14;
      v8 += v15;
    }

    while ((v12 ^ v7) >> 14);
    a1 = v18;
  }

  sub_1AFDFE218();

  v16 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0x6F727265203A303ALL, 0xEB00000000203A72);
  MEMORY[0x1B2718AE0](a1, a2);
  return 0x3A7475706E69;
}

uint64_t sub_1AFAE5E1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 == *(v1 + 24) >> 1 || (v4 = *(v1 + 8) + 40 * v3, *v4 != 16))
  {
    sub_1AFAE339C(&v13);
    v5 = *(&v13 + 1);
    v8 = *(&v14 + 1);
    v6 = v14;
    v7 = v15;
    v10 = v13;
    sub_1AFAF55F0(&v13, &v12);

    v11 = v14;
    *(v1 + 32) = v13;
    *(v1 + 48) = v11;
    *(v1 + 64) = v15;
  }

  else
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v8 = *(v4 + 24);
    v7 = *(v4 + 32);

    v10 = 16;
  }

  *a1 = v10;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1AFAE5EE4()
{
  if (*(v0 + 16) == *(v0 + 24) >> 1)
  {
    return 0;
  }

  v2 = sub_1AFDFD1F8();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1B27189E0](v2, v4, v6, v8);

  return v9;
}

uint64_t sub_1AFAE5FC0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v61 = a9;
  if (a4 == 4 || !sub_1AF702B44(a4, a3))
  {
    v18 = *(a5 + 64);
    v59[2] = *(a5 + 48);
    v59[3] = v18;
    v60 = *(a5 + 80);
    v19 = *(a5 + 32);
    v59[0] = *(a5 + 16);
    v59[1] = v19;
    v53 = 0;
    v54 = 0xE000000000000000;
    v20 = v59;
    sub_1AFAF541C(v59, &v51);
    sub_1AFDFE218();

    v51 = 0x206E69746C697562;
    v52 = 0xE900000000000027;
    v21 = MEMORY[0x1B27189E0](a6, a7, a8, a10);
    MEMORY[0x1B2718AE0](v21);

    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
    sub_1AFAF54D4();
    v22 = sub_1AFDFD788();
    MEMORY[0x1B2718AE0](v22);

    v23 = v51;
    v24 = v52;
LABEL_6:
    v25 = sub_1AFAE5C18(v23, v24);
    v27 = v26;

    sub_1AFAF53E8(v20);
    sub_1AFAF5454();
    swift_allocError();
    *v28 = v25;
    v28[1] = v27;
    return swift_willThrow();
  }

  v46 = a6;
  v47 = a7;
  v48 = a8;
  v49 = *(a11 + 16);
  if (v49)
  {
    v16 = 0;
    v17 = a2 + 56;
    while (1)
    {
      v30 = (a11 + 32 + 32 * v16);
      v31 = v30[1];
      if (!v31)
      {
        break;
      }

      v32 = *v30;
      if (!*(a2 + 16))
      {

LABEL_18:
        v39 = *(a5 + 48);
        v55[3] = *(a5 + 64);
        v56 = *(a5 + 80);
        v40 = *(a5 + 16);
        v55[1] = *(a5 + 32);
        v55[2] = v39;
        v55[0] = v40;
        v53 = 0;
        v54 = 0xE000000000000000;
        v20 = v55;
        sub_1AFAF541C(v55, &v51);
        sub_1AFDFE218();

        v51 = 0x746E656D75677261;
        v52 = 0xEA00000000002720;
        MEMORY[0x1B2718AE0](v32, v31);

        MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
        v41 = MEMORY[0x1B27189E0](v46, v47, v48, a10);
        MEMORY[0x1B2718AE0](v41);

        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v23 = v51;
        v24 = v52;
        goto LABEL_6;
      }

      sub_1AFDFF288();

      sub_1AFDFD038();
      v33 = sub_1AFDFF2F8();
      v34 = -1 << *(a2 + 32);
      v35 = v33 & ~v34;
      if (((*(v17 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_18;
      }

      ++v16;
      v36 = ~v34;
      while (1)
      {
        v37 = (*(a2 + 48) + 16 * v35);
        v38 = *v37 == v32 && v31 == v37[1];
        if (v38 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v17 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v16 == v49)
      {
        goto LABEL_19;
      }
    }

    v43 = *(a5 + 64);
    v57[2] = *(a5 + 48);
    v57[3] = v43;
    v58 = *(a5 + 80);
    v44 = *(a5 + 32);
    v57[0] = *(a5 + 16);
    v57[1] = v44;
    v53 = 0;
    v54 = 0xE000000000000000;
    v20 = v57;
    sub_1AFAF541C(v57, &v51);
    sub_1AFDFE218();

    v51 = 0xD000000000000016;
    v52 = 0x80000001AFF468D0;
    v45 = MEMORY[0x1B27189E0](v46, v47, v48, a10);
    MEMORY[0x1B2718AE0](v45);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v23 = v51;
    v24 = v52;
    goto LABEL_6;
  }

LABEL_19:
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 5;
  v42 = v61;
  *v61 = result | 0x7000000000000000;
  *(v42 + 8) = 1;
  *(v42 + 1) = xmmword_1AFE4C460;
  *(v42 + 32) = 1;
  return result;
}

double sub_1AFAE6460@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = *(a3 + 16);
  if (v52)
  {
    v11 = 0;
    v12 = a3 + 32;
    v13 = a2 + 56;
    while (1)
    {
      v14 = (v12 + 32 * v11);
      v15 = v14[1];
      if (!v15)
      {
        break;
      }

      v16 = *v14;
      if (!*(a2 + 16))
      {

LABEL_14:
        v23 = *(a4 + 48);
        v48[3] = *(a4 + 64);
        v49 = *(a4 + 80);
        v24 = *(a4 + 16);
        v48[1] = *(a4 + 32);
        v48[2] = v23;
        v48[0] = v24;
        v46 = 0;
        v47 = 0xE000000000000000;
        v25 = v48;
        sub_1AFAF541C(v48, &v44);
        sub_1AFDFE218();

        v44 = 0x746E656D75677261;
        v45 = 0xEA00000000002720;
        MEMORY[0x1B2718AE0](v16, v15);

        MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
        v26 = MEMORY[0x1B27189E0](a5, a6, a7, a8);
        MEMORY[0x1B2718AE0](v26);

        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v27 = v44;
        v28 = v45;
        goto LABEL_15;
      }

      sub_1AFDFF288();

      sub_1AFDFD038();
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_14;
      }

      ++v11;
      v20 = ~v18;
      while (1)
      {
        v21 = (*(a2 + 48) + 16 * v19);
        v22 = *v21 == v16 && v15 == v21[1];
        if (v22 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v11 == v52)
      {
        goto LABEL_16;
      }
    }

    v35 = *(a4 + 64);
    v50[2] = *(a4 + 48);
    v50[3] = v35;
    v51 = *(a4 + 80);
    v36 = *(a4 + 32);
    v50[0] = *(a4 + 16);
    v50[1] = v36;
    v46 = 0;
    v47 = 0xE000000000000000;
    v25 = v50;
    sub_1AFAF541C(v50, &v44);
    sub_1AFDFE218();

    v44 = 0xD000000000000016;
    v45 = 0x80000001AFF468D0;
    v37 = MEMORY[0x1B27189E0](a5, a6, a7, a8);
    MEMORY[0x1B2718AE0](v37);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v27 = v44;
    v28 = v45;
LABEL_15:
    v29 = sub_1AFAE5C18(v27, v28);
    v31 = v30;

    sub_1AFAF53E8(v25);
    sub_1AFAF5454();
    swift_allocError();
    *v32 = v29;
    v32[1] = v31;
    swift_willThrow();
  }

  else
  {
LABEL_16:
    v34 = swift_allocObject();
    *(v34 + 16) = a1 & 1;
    *a9 = v34;
    *(a9 + 8) = 1;
    result = -3.10503618e231;
    *(a9 + 16) = xmmword_1AFE4C460;
    *(a9 + 32) = 1;
  }

  return result;
}

uint64_t sub_1AFAE67C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  if (a6 != result)
  {
    v27 = v7;
    v28 = v8;
    v13 = result;
    v14 = *(a7 + 64);
    v25[2] = *(a7 + 48);
    v25[3] = v14;
    v26 = *(a7 + 80);
    v15 = *(a7 + 32);
    v25[0] = *(a7 + 16);
    v25[1] = v15;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1AFAF541C(v25, &v21);
    sub_1AFDFE218();
    v21 = v23;
    v22 = v24;
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v16 = MEMORY[0x1B27189E0](a2, a3, a4, a5);
    MEMORY[0x1B2718AE0](v16);

    MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF46BD0);
    LOBYTE(v23) = v13;
    sub_1AFDFE458();
    v17 = sub_1AFAE5C18(v21, v22);
    v19 = v18;

    sub_1AFAF53E8(v25);
    sub_1AFAF5454();
    swift_allocError();
    *v20 = v17;
    v20[1] = v19;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AFAE697C(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_1AFDFE108();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_1AF718468(0, a2, a3, a4, a5);
      v7 = sub_1AFDFE1B8();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1AFDFE108();
      if (!v9)
      {
        return v7;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return v7;
  }

LABEL_9:
  v13 = v7 + 56;
  v39 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v37 = v5;
    do
    {
      v15 = MEMORY[0x1B2719C70](v14, v5);
      v16 = sub_1AFDFDC38();
      v17 = -1 << *(v7 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v13 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1AF0D4478(0, a3);
        while (1)
        {
          v23 = *(*(v7 + 48) + 8 * v18);
          v24 = sub_1AFDFDC48();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v13 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v5 = v37;
            v9 = v39;
            goto LABEL_11;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        v9 = v39;
      }

      else
      {
LABEL_11:
        *(v13 + 8 * v19) = v21 | v20;
        *(*(v7 + 48) + 8 * v18) = v15;
        ++*(v7 + 16);
      }

      ++v14;
    }

    while (v14 != v9);
  }

  else
  {
    v25 = 0;
    v38 = v5 + 32;
    do
    {
      v26 = *(v38 + 8 * v25);
      v27 = sub_1AFDFDC38();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      v31 = *(v13 + 8 * (v29 >> 6));
      v32 = 1 << v29;
      if (((1 << v29) & v31) != 0)
      {
        v33 = ~v28;
        sub_1AF0D4478(0, a3);
        while (1)
        {
          v34 = *(*(v7 + 48) + 8 * v29);
          v35 = sub_1AFDFDC48();

          if (v35)
          {
            break;
          }

          v29 = (v29 + 1) & v33;
          v30 = v29 >> 6;
          v31 = *(v13 + 8 * (v29 >> 6));
          v32 = 1 << v29;
          if (((1 << v29) & v31) == 0)
          {
            v9 = v39;
            goto LABEL_20;
          }
        }

        v9 = v39;
      }

      else
      {
LABEL_20:
        *(v13 + 8 * v30) = v32 | v31;
        *(*(v7 + 48) + 8 * v29) = v26;
        ++*(v7 + 16);
      }

      ++v25;
    }

    while (v25 != v9);
  }

  return v7;
}

uint64_t sub_1AFAE6C5C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1AFDFE9E8() & 1;
  }
}

uint64_t sub_1AFAE6CC8(uint64_t a1, uint64_t a2)
{
  sub_1AFAE6ED0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v20 - v16;
  sub_1AFAE6F04();
  sub_1AFDFC408();
  sub_1AFDFC478();
  v18 = *(v6 + 8);
  v18(v9, v5);
  sub_1AFDFC468();
  v18(v13, v5);
  v20[2] = a1;
  v20[3] = a2;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1AF95A690();
  sub_1AF95A6E4();
  sub_1AFAF59A8(&qword_1EB642928, sub_1AFAE6ED0);
  sub_1AFDFD978();
  v18(v17, v5);
  return v20[4];
}

void sub_1AFAE6F04()
{
  if (!qword_1EB642918)
  {
    sub_1AFAF5748(255, &qword_1EB642920, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB642918);
    }
  }
}

uint64_t sub_1AFAE6F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v61 = a3;
  v9 = sub_1AFDFC3A8();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95BB0C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95A804(0);
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95A7B4(0);
  v65 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v60 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v54 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v70 = &v54 - v33;
  v66 = a1;
  v67 = a2;
  v58 = v18;
  if (a5 < 3u)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1AFDFE218();

    v68 = 0x2B735C64696F76;
    v69 = 0xE700000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x5E5B28285C2A735CLL, 0xEE00295C292A5D7BLL);
    sub_1AFDFC4A8();
    if (!v5)
    {
      v59 = 0;
      goto LABEL_7;
    }

    swift_unexpectedError();
    __break(1u);
    goto LABEL_15;
  }

  if (a5 != 3)
  {
LABEL_15:
    sub_1AFDFE518();
    __break(1u);
    goto LABEL_16;
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1AFDFE218();

  v68 = 0x2B735C636E7566;
  v69 = 0xE700000000000000;
  MEMORY[0x1B2718AE0](v66, v67);
  MEMORY[0x1B2718AE0](0x5E5B28285C2A735CLL, 0xEE00295C292A5D7BLL);
  sub_1AFDFC4A8();
  if (!v5)
  {
    v59 = 0;
    v26 = v30;
LABEL_7:
    v34 = v26;
    v35 = v65;
    (*(v20 + 32))(v70, v34, v65);
    sub_1AFDFD1F8();
    sub_1AFAF59A8(&qword_1ED722BD8, sub_1AF95A7B4);
    v36 = v60;
    sub_1AFDFC3D8();
    v37 = v62;
    v38 = v59;
    sub_1AFDFC428();
    if (v38)
    {

      v39 = *(v20 + 8);
      v39(v36, v35);
      (*(v63 + 56))(v37, 1, 1, v64);
      v41 = v66;
      v40 = v67;
    }

    else
    {
      v39 = *(v20 + 8);
      v39(v36, v35);

      v42 = v63;
      v43 = v35;
      v44 = v64;
      v45 = (*(v63 + 48))(v37, 1, v64);
      v41 = v66;
      v40 = v67;
      if (v45 != 1)
      {
        v50 = (*(v42 + 32))(v58, v37, v44);
        MEMORY[0x1EEE9AC00](v50, v51);
        swift_getKeyPath();
        v52 = v55;
        v53 = v58;
        sub_1AFDFC488();

        v46 = sub_1AFDFC388();
        (*(v56 + 8))(v52, v57);
        (*(v42 + 8))(v53, v44);
        v39(v70, v65);
        return v46;
      }

      v35 = v43;
    }

    sub_1AFAF5798(v37, sub_1AF95BB0C);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1AFDFE218();

    v68 = 0xD00000000000001DLL;
    v69 = 0x80000001AFF46DB0;
    MEMORY[0x1B2718AE0](v41, v40);
    v46 = v68;
    v47 = v69;
    sub_1AFAF5454();
    swift_allocError();
    *v48 = v46;
    v48[1] = v47;
    swift_willThrow();
    v39(v70, v35);
    return v46;
  }

LABEL_16:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AFAE76B0(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E67B0];
  sub_1AFAF5748(0, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
  v4 = v3;
  v71 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v61 - v6;
  sub_1AFAF56CC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  sub_1AFAF5748(0, &qword_1ED722BC8, v2, MEMORY[0x1E69E9288]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v61 - v24;
  v26 = v72;
  v27 = sub_1AFAE35E8();
  if (!v26)
  {
    v72 = v15;
    v67 = v7;
    v68 = v11;
    v69 = v21;
    v70 = v4;
    if (v27)
    {
      v65 = v18;
      v30 = v25;
      sub_1AFDFC408();
      v31 = a1;
      v32 = *a1;
      v33 = a1[1];
      v34 = a1[2];
      v35 = v31[3];
      v36 = v72;
      sub_1AFDFC428();
      v66 = 0;
      v63 = v32;
      v64 = v30;
      v37 = *(v71 + 48);
      if (v37(v36, 1, v70) == 1)
      {
        (*(v65 + 8))(v64, v17);
        sub_1AFAF5798(v36, sub_1AFAF56CC);
        v28 = 0;
      }

      else
      {
        v62 = v37;
        sub_1AFAF5798(v36, sub_1AFAF56CC);
        v38 = v69;
        sub_1AFDFC408();
        v39 = v68;
        v40 = v66;
        sub_1AFDFC448();
        if (v40)
        {
          v41 = *(v65 + 8);
          v41(v38, v17);
          v41(v64, v17);
        }

        else
        {
          v66 = v34;
          v72 = v35;
          v42 = v70;
          v43 = v62(v39, 1, v70);
          v44 = v64;
          if (v43 == 1)
          {
            sub_1AFAF5798(v39, sub_1AFAF56CC);
            v45 = sub_1AFAE3424(0xD000000000000025, 0x80000001AFF46CE0);
            v47 = v46;
            sub_1AFAF5678();
            swift_allocError();
            *v48 = v45;
            v48[1] = v47;
            swift_willThrow();
            v49 = *(v65 + 8);
            v49(v69, v17);
            v49(v44, v17);
          }

          else
          {
            v50 = v71;
            v51 = v67;
            (*(v71 + 32))(v67, v39, v42);
            swift_getKeyPath();
            sub_1AFDFC488();

            if ((v33 ^ v63) >> 14)
            {
              v53 = sub_1AFDFDE38();
              v68 = v54;
              v56 = v55;
              v66 = v57;
              (*(v50 + 8))(v51, v42);
              v58 = *(v65 + 8);
              v58(v69, v17);
              v58(v64, v17);

              v59 = v68;
              *v31 = v53;
              v31[1] = v59;
              v60 = v66;
              v31[2] = v56;
              v31[3] = v60;
            }

            else
            {
              (*(v50 + 8))(v51, v42);
              v52 = *(v65 + 8);
              v52(v69, v17);
              v52(v64, v17);
            }

            v28 = 1;
          }
        }
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28 & 1;
}

__n128 sub_1AFAE7CB4@<Q0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  sub_1AFAF56CC();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E67B0];
  sub_1AFAF5748(0, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v51 = &v43 - v10;
  sub_1AFAF5748(0, &qword_1ED722BC8, v7, MEMORY[0x1E69E9288]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v43 - v15;
  sub_1AFDFC408();
  v18 = *a1;
  v17 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  v54 = v6;
  v21 = v58;
  sub_1AFDFC448();
  v58 = v21;
  if (v21)
  {
    goto LABEL_4;
  }

  v43 = v18;
  v44 = v17;
  v45 = v20;
  v46 = v19;
  v47 = v16;
  v48 = v13;
  v49 = v12;
  v23 = v52;
  v22 = v53;
  v24 = v54;
  if ((*(v52 + 48))(v54, 1, v53) == 1)
  {
    sub_1AFAF5798(v24, sub_1AFAF56CC);
    v55.n128_u64[0] = 0;
    v55.n128_u64[1] = 0xE000000000000000;
    sub_1AFDFE218();

    v55.n128_u64[0] = 0xD000000000000014;
    v55.n128_u64[1] = 0x80000001AFF46D30;
    v25 = MEMORY[0x1B27189E0](v43, v44, v45, v46);
    MEMORY[0x1B2718AE0](v25);

    v27 = v55.n128_u64[1];
    v26 = v55.n128_u64[0];
    sub_1AFAF5678();
    v28 = swift_allocError();
    *v29 = v26;
    v29[1] = v27;
    v58 = v28;
    swift_willThrow();
    v13 = v48;
    v12 = v49;
    v16 = v47;
LABEL_4:
    (*(v13 + 8))(v16, v12);
    return result;
  }

  v31 = v51;
  (*(v23 + 32))(v51, v24, v22);
  swift_getKeyPath();
  sub_1AFDFC488();

  if ((v44 ^ v43) >= 0x4000)
  {
    v32 = sub_1AFDFDE38();
    v34 = v33;
    v36 = v35;
    v37 = v23;
    v39 = v38;

    *a1 = v32;
    a1[1] = v34;
    a1[2] = v36;
    a1[3] = v39;
    v31 = v51;
    v23 = v37;
  }

  sub_1AFDFC498();
  (*(v23 + 8))(v31, v22);
  (*(v48 + 8))(v47, v49);
  v40 = v56;
  v41 = v57;
  result = v55;
  v42 = v50;
  *v50 = 14;
  *(v42 + 8) = result;
  *(v42 + 3) = v40;
  *(v42 + 4) = v41;
  return result;
}

__n128 sub_1AFAE80D4@<Q0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v49 = a2;
  sub_1AFAF56CC();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E67B0];
  sub_1AFAF5748(0, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v44 - v10;
  sub_1AFAF5748(0, &qword_1ED722BC8, v7, MEMORY[0x1E69E9288]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v44 - v15;
  sub_1AFDFC408();
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v53 = v6;
  v21 = v57;
  sub_1AFDFC448();
  v57 = v21;
  if (v21)
  {
    goto LABEL_4;
  }

  v44 = a1;
  v45 = v18;
  v46 = v16;
  v47 = v13;
  v48 = v12;
  v23 = v51;
  v22 = v52;
  v24 = v53;
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {
    sub_1AFAF5798(v24, sub_1AFAF56CC);
    v54.n128_u64[0] = 0;
    v54.n128_u64[1] = 0xE000000000000000;
    sub_1AFDFE218();

    v54.n128_u64[0] = 0xD000000000000010;
    v54.n128_u64[1] = 0x80000001AFF46D70;
    v25 = MEMORY[0x1B27189E0](v17, v45, v19, v20);
    MEMORY[0x1B2718AE0](v25);

    v26 = sub_1AFAE3424(v54.n128_i64[0], v54.n128_i64[1]);
    v28 = v27;

    sub_1AFAF5678();
    v29 = swift_allocError();
    *v30 = v26;
    v30[1] = v28;
    v57 = v29;
    swift_willThrow();
    v13 = v47;
    v12 = v48;
    v16 = v46;
LABEL_4:
    (*(v13 + 8))(v16, v12);
    return result;
  }

  v32 = v50;
  (*(v23 + 32))(v50, v24, v22);
  swift_getKeyPath();
  sub_1AFDFC488();

  if ((v45 ^ v17) >= 0x4000)
  {
    v33 = sub_1AFDFDE38();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = v44;
    *v44 = v33;
    v40[1] = v35;
    v32 = v50;
    v40[2] = v37;
    v40[3] = v39;
  }

  sub_1AFDFC498();
  (*(v23 + 8))(v32, v22);
  (*(v47 + 8))(v46, v48);
  v41 = v55;
  v42 = v56;
  result = v54;
  v43 = v49;
  *v49 = 15;
  *(v43 + 8) = result;
  *(v43 + 3) = v41;
  *(v43 + 4) = v42;
  return result;
}

uint64_t sub_1AFAE8520(uint64_t *a1)
{
  sub_1AFAF56CC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E67B0];
  sub_1AFAF5748(0, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v46 = &v39 - v9;
  sub_1AFAF5748(0, &qword_1ED722BC8, v6, MEMORY[0x1E69E9288]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v39 - v14;
  sub_1AFDFC408();
  v16 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v18 = a1[3];
  v47 = v5;
  v20 = v50;
  sub_1AFDFC448();
  if (v20)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v42 = v15;
  v43 = v16;
  v40 = a1;
  v41 = v18;
  v44 = v19;
  v45 = v12;
  v22 = v46;
  v21 = v47;
  v50 = v11;
  v24 = v48;
  v23 = v49;
  if ((*(v48 + 48))(v47, 1, v49) == 1)
  {
    sub_1AFAF5798(v21, sub_1AFAF56CC);
    v25 = sub_1AFAE3424(0xD000000000000016, 0x80000001AFF46D90);
    v27 = v26;
    sub_1AFAF5678();
    swift_allocError();
    *v28 = v25;
    v28[1] = v27;
    swift_willThrow();
    v11 = v50;
    v12 = v45;
    v15 = v42;
    return (*(v12 + 8))(v15, v11);
  }

  v39 = 0;
  (*(v24 + 32))(v22, v21, v23);
  swift_getKeyPath();
  sub_1AFDFC488();

  if ((v17 ^ v43) >> 14)
  {
    v30 = sub_1AFDFDE38();
    v32 = v31;
    v33 = v24;
    v35 = v34;
    v37 = v36;
    (*(v33 + 8))(v22, v23);
    (*(v45 + 8))(v42, v50);

    v38 = v40;
    *v40 = v30;
    v38[1] = v32;
    v38[2] = v35;
    v38[3] = v37;
  }

  else
  {
    (*(v24 + 8))(v22, v23);
    return (*(v45 + 8))(v42, v50);
  }

  return result;
}

uint64_t sub_1AFAE891C(unsigned __int8 a1)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 != v3)
  {
    v4 = (v1[1] + 40 * v2);
    if (*v4 == a1)
    {
      return *(v4 + 1);
    }
  }

  v6 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6465746365707865, 0xE900000000000020);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x3A65726F66656220, 0xE900000000000020);
  if (v2 == v3)
  {
    v7 = 0;
  }

  else
  {

    v8 = sub_1AFDFD1F8();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x1B27189E0](v8, v10, v12, v14);
    v6 = v16;

    v7 = v15;
  }

  MEMORY[0x1B2718AE0](v7, v6);

  v17 = sub_1AFAE5C18(0, 0xE000000000000000);
  v19 = v18;

  sub_1AFAF5454();
  swift_allocError();
  *v20 = v17;
  v20[1] = v19;
  return swift_willThrow();
}

uint64_t sub_1AFAE8B28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v71 = a1[2];
  v72 = v7;
  v73 = *(a1 + 8);
  v8 = a1[1];
  v70[0] = *a1;
  v70[1] = v8;
  v57 = v71;
  v58 = v7;
  v59 = v73;
  v55 = v70[0];
  v56 = v8;
  sub_1AFAF541C(v70, &v50);
  v9 = sub_1AFAE59B0(0xEu);
  if (v3)
  {
    goto LABEL_8;
  }

  v10 = MEMORY[0x1B27189E0](v9);
  v12 = v11;

  v13 = swift_conformsToProtocol2();
  if (!v13 || !a2)
  {

    v26 = a1[3];
    v67 = a1[2];
    v68 = v26;
    v69 = *(a1 + 8);
    v27 = a1[1];
    v65 = *a1;
    v66 = v27;
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v50 = 0xD000000000000013;
    *(&v50 + 1) = 0x80000001AFF469B0;
    v28 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v28);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v30 = *(&v50 + 1);
    v29 = v50;
LABEL_7:
    v31 = sub_1AFAE5C18(v29, v30);
    v33 = v32;

    sub_1AFAF5454();
    swift_allocError();
    *v34 = v31;
    v34[1] = v33;
    swift_willThrow();
LABEL_8:
    v52 = v57;
    v53 = v58;
    v54 = v59;
    v50 = v55;
    v51 = v56;
    return sub_1AFAF53E8(&v50);
  }

  *&v48 = v10;
  v14 = *(v13 + 8);
  v15 = (*(v14 + 16))(0, 1, a2, v14);
  if ((v15 & 1) == 0)
  {
    v47[0] = a3;
    v47[1] = v47;
    v35 = v12;
    v36 = *(a2 - 8);
    MEMORY[0x1EEE9AC00](v15, v16);
    v38 = v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1AF6461F4(a2, v14);
    v74 = v35;
    v39 = sub_1AF64622C(v48, v35, a2, v14);
    (*(v36 + 8))(v38, a2);
    if (v39)
    {

      v40 = sub_1AF6ACC04(0, 1);

      v41 = a1[3];
      v52 = a1[2];
      v53 = v41;
      v54 = *(a1 + 8);
      v42 = a1[1];
      v50 = *a1;
      v51 = v42;
      sub_1AFAF53E8(&v50);
      v21 = *(v40 + 24);
      v74 = *(v40 + 16);
      v48 = *(v40 + 32);
      v22 = *(v40 + 48);
      v23 = *(v40 + 56);
      v24 = *(v40 + 58);

      a3 = v47[0];
      goto LABEL_11;
    }

    v45 = a1[3];
    v62 = a1[2];
    v63 = v45;
    v64 = *(a1 + 8);
    v46 = a1[1];
    v60 = *a1;
    v61 = v46;
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v50 = 0xD000000000000012;
    *(&v50 + 1) = 0x80000001AFF469D0;
    MEMORY[0x1B2718AE0](v48, v74);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v30 = *(&v50 + 1);
    v29 = v50;
    goto LABEL_7;
  }

  v17 = a1[3];
  v52 = a1[2];
  v53 = v17;
  v54 = *(a1 + 8);
  v18 = a1[1];
  v50 = *a1;
  v51 = v18;
  sub_1AFAF53E8(&v50);
  memset(v49, 0, sizeof(v49));
  v19 = MEMORY[0x1E69E7CA0];
  v20 = (*(v14 + 64))(v48, v12, MEMORY[0x1E69E7CA0] + 8, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, v49, 0, a2, v14);

  sub_1AFAF5528(v49, &qword_1ED726850, v19 + 8);
  v21 = *(v20 + 24);
  v74 = *(v20 + 16);
  v48 = *(v20 + 32);
  v22 = *(v20 + 48);
  v23 = *(v20 + 56);
  v24 = *(v20 + 58);

LABEL_11:
  v43 = v58;
  a1[2] = v57;
  a1[3] = v43;
  *(a1 + 8) = v59;
  v44 = v56;
  *a1 = v55;
  a1[1] = v44;
  *a3 = v74;
  *(a3 + 8) = v21;
  *(a3 + 16) = v48;
  *(a3 + 32) = v22;
  *(a3 + 40) = v23;
  *(a3 + 42) = v24;
  return result;
}

uint64_t sub_1AFAE9034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1AFAF5598();
  v3 = sub_1AFDFE1B8();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  do
  {
    v8 = (v6 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    sub_1AFDFF288();

    sub_1AFDFD038();
    v11 = sub_1AFDFF2F8();
    v12 = ~(-1 << *(v3 + 32));
    for (i = v11 & v12; ; i = (i + 1) & v12)
    {
      v14 = *(v5 + 8 * (i >> 6));
      if (((1 << i) & v14) == 0)
      {
        *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
        v7 = (*(v3 + 48) + 16 * i);
        *v7 = v10;
        v7[1] = v9;
        ++*(v3 + 16);
        goto LABEL_4;
      }

      v15 = (*(v3 + 48) + 16 * i);
      v16 = *v15 == v10 && v15[1] == v9;
      if (v16 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }
    }

LABEL_4:
    ++v4;
  }

  while (v4 != v1);
  return v3;
}

uint64_t sub_1AFAE9188(uint64_t a1)
{
  v2 = *(a1 + 16);
  v80[0] = *a1;
  v80[1] = v2;
  v3 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v3;
  v83 = *(a1 + 64);
  v71 = v81;
  v72 = v3;
  v73 = v83;
  v69 = v80[0];
  v70 = v2;
  v67 = 0;
  v68 = 0xE000000000000000;
  if (v2 == *(&v2 + 1) >> 1 || *(*(&v80[0] + 1) + 40 * v2) != 1)
  {
    sub_1AFAF541C(v80, &v62);
  }

  else
  {
    sub_1AFAF541C(v80, &v62);
    sub_1AFAE5E1C(v74);
    sub_1AFAF54A8(v74);
    MEMORY[0x1B2718AE0](35, 0xE100000000000000);
  }

  v4 = v70;
  v5 = *(&v70 + 1) >> 1;
  if (v70 == *(&v70 + 1) >> 1)
  {
    goto LABEL_13;
  }

  v6 = v73;
  v7 = *(&v69 + 1) + 40 * v70;
  if (*v7 != 14)
  {
    v17 = *(&v71 + 1);
    v16 = v71;
    v5 = v70;
    v15 = *(&v72 + 1);
    v14 = v72;
    goto LABEL_12;
  }

  v49 = *(&v69 + 1);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  v84 = v70 + 1;
  v10 = *(v7 + 24);
  v11 = *(v7 + 32);
  swift_bridgeObjectRetain_n();

  v52 = v9;
  *&v62 = v9;
  *(&v62 + 1) = v8;
  v12 = v8;
  *&v63 = v10;
  *(&v63 + 1) = v11;
  sub_1AF725990();
  sub_1AFDFD0A8();

  if (v84 != v5)
  {
    v13 = v49 + 40 * v84;
    if (*v13 == 2)
    {
      v14 = *(v13 + 16);
      v47 = *(v13 + 8);
      v15 = *(v13 + 24);
      v84 = *(v13 + 32);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      if (v4 + 2 == v5)
      {
        v16 = 2;
      }

      else
      {
        v40 = v4 + 2;
        if (*(v49 + 40 * (v4 + 2)) == 14)
        {
          v41 = v49 + 40 * v4 + 88;
          v42 = v5 - v4 - 4;
          while (1)
          {
            v84 = v42;
            v53 = v40;
            v35 = *v41;
            v12 = *(v41 + 8);
            v43 = *(v41 + 16);
            v11 = *(v41 + 24);
            swift_bridgeObjectRetain_n();

            *&v62 = v35;
            *(&v62 + 1) = v12;
            v50 = v43;
            *&v63 = v43;
            *(&v63 + 1) = v11;
            v44 = v84;
            sub_1AFDFD0A8();

            if (v44 == -1)
            {
              goto LABEL_30;
            }

            if (*(v41 + 32) != 2)
            {
              v5 = v53 + 1;
LABEL_30:
              v10 = v50;
              goto LABEL_19;
            }

            v48 = *(v41 + 40);
            v51 = *(v41 + 48);
            v15 = *(v41 + 56);
            v45 = *(v41 + 64);

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            if (!v44)
            {
              break;
            }

            v46 = *(v41 + 72);
            v41 += 80;
            v42 = v44 - 2;
            v40 = v53 + 2;
            v6 = v45;
            if (v46 != 14)
            {
              goto LABEL_32;
            }
          }

          v40 = v5;
          v6 = v45;
LABEL_32:
          v16 = 2;
          v5 = v40;
          v17 = v48;
          v14 = v51;
          goto LABEL_12;
        }

        v16 = 2;
        v5 = v4 + 2;
      }

      v6 = v84;
      v17 = v47;
LABEL_12:
      *(&v72 + 1) = v15;
      v73 = v6;
      *&v71 = v16;
      *(&v71 + 1) = v17;
      *&v72 = v14;
LABEL_13:
      *&v70 = v5;

      v75 = v69;
      v76 = v70;
      v77 = v71;
      v78 = v72;
      v79 = v73;
      v18 = v70;
      v19 = 0xE000000000000000;
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v57 = v62;
      MEMORY[0x1B2718AE0](0x6465746365707865, 0xE900000000000020);
      LOBYTE(v62) = 14;
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0x3A65726F66656220, 0xE900000000000020);
      if (v18 == *(&v18 + 1) >> 1)
      {
        v20 = 0;
      }

      else
      {

        v21 = sub_1AFDFD1F8();
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
        v19 = v29;

        v20 = v28;
      }

      MEMORY[0x1B2718AE0](v20, v19);

      v30 = sub_1AFAE5C18(v57, *(&v57 + 1));
      v32 = v31;

      sub_1AFAF5454();
      swift_allocError();
      *v33 = v30;
      v33[1] = v32;
      swift_willThrow();
      v64 = v71;
      v65 = v72;
      v66 = v73;
      v62 = v69;
      v63 = v70;
      return sub_1AFAF53E8(&v62);
    }

    v5 = v84;
  }

  v35 = v52;
LABEL_19:
  *(&v71 + 1) = v35;
  *&v72 = v12;
  *(&v72 + 1) = v10;
  v73 = v11;
  *&v71 = 14;
  *&v70 = v5;
  v36 = *(a1 + 48);
  v55[2] = *(a1 + 32);
  v55[3] = v36;
  v56 = *(a1 + 64);
  v37 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v37;
  sub_1AFAF53E8(v55);
  v59 = v71;
  v60 = v72;
  v61 = v73;
  v57 = v69;
  v58 = v70;
  v64 = v71;
  v65 = v72;
  v66 = v73;
  v62 = v69;
  v63 = v70;
  sub_1AFAF541C(&v57, v54);
  sub_1AFAF53E8(&v62);
  v38 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v38;
  *(a1 + 64) = v61;
  v39 = v58;
  *a1 = v57;
  *(a1 + 16) = v39;
  return v67;
}

uint64_t sub_1AFAE9720(__int128 *a1)
{
  v4 = a1[1];
  v86[0] = *a1;
  v86[1] = v4;
  v5 = a1[3];
  v87 = a1[2];
  v88 = v5;
  v89 = *(a1 + 8);
  v76 = v87;
  v77 = v5;
  v78 = v89;
  v74 = v86[0];
  v75 = v4;
  if (v4 == *(&v4 + 1) >> 1)
  {
LABEL_2:
    v6 = a1[1];
    v81 = *a1;
    v82 = v6;
    v7 = a1[3];
    v83 = a1[2];
    v84 = v7;
    v85 = *(a1 + 8);
    v8 = v82;
    v9 = 0xE000000000000000;
    *&v67[0] = 0;
    *(&v67[0] + 1) = 0xE000000000000000;
    sub_1AFAF541C(v86, &v69);
    sub_1AFDFE218();

    *&v69 = 0xD000000000000012;
    *(&v69 + 1) = 0x80000001AFF46C50;
    if (v8 == *(&v8 + 1) >> 1)
    {
      v10 = 0;
    }

    else
    {

      v20 = sub_1AFDFD1F8();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = MEMORY[0x1B27189E0](v20, v22, v24, v26);
      v9 = v28;

      v10 = v27;
    }

    MEMORY[0x1B2718AE0](v10, v9);

    v1 = sub_1AFAE5C18(v69, *(&v69 + 1));
    v30 = v29;

    sub_1AFAF5454();
    swift_allocError();
    *v31 = v1;
    v31[1] = v30;
    swift_willThrow();
LABEL_10:

    v71 = v76;
    v72 = v77;
    v73 = v78;
    v69 = v74;
    v70 = v75;
    sub_1AFAF53E8(&v69);
    return v1;
  }

  v11 = v2;
  v12 = (*(&v86[0] + 1) + 40 * v4);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];

  if (v13 == 1)
  {
    sub_1AFAF541C(v86, &v69);
    sub_1AFAE9188(&v74);
    if (!v11)
    {
      v49 = a1[3];
      v71 = a1[2];
      v72 = v49;
      v73 = *(a1 + 8);
      v50 = a1[1];
      v69 = *a1;
      v70 = v50;
      sub_1AFAF53E8(&v69);
      v14 = sub_1AFDFD1F8();
      v15 = v51;
      v16 = v52;
      v17 = v53;

      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (v13 != 14)
  {
    if (v13 == 15)
    {
      v18 = a1[3];
      v71 = a1[2];
      v72 = v18;
      v73 = *(a1 + 8);
      v19 = a1[1];
      v69 = *a1;
      v70 = v19;
      sub_1AFAF541C(v86, v67);
      sub_1AFAF53E8(&v69);
      sub_1AFAE5E1C(v79);
      sub_1AFAF54A8(v79);
      goto LABEL_25;
    }

    goto LABEL_2;
  }

  v32 = a1[3];
  v71 = a1[2];
  v72 = v32;
  v73 = *(a1 + 8);
  v33 = a1[1];
  v69 = *a1;
  v70 = v33;
  sub_1AFAF541C(v86, v67);
  sub_1AFAF53E8(&v69);
  sub_1AFAE5E1C(v80);
  sub_1AFAF54A8(v80);
  v34 = *(&v75 + 1) >> 1;
  if (v75 == *(&v75 + 1) >> 1 || (v66 = *(&v74 + 1), v35 = *(&v74 + 1) + 40 * v75, *v35 != 12))
  {

    goto LABEL_24;
  }

  v65 = *(&v75 + 1);
  v36 = *(v35 + 8);
  v90 = *(v35 + 16);
  v37 = *(v35 + 24);
  v38 = *(v35 + 32);
  v39 = v75 + 1;
  v64 = v74;

  v40 = 12;
  v41 = v39;
  while (v39 == v34)
  {

    v40 = 0;
    v36 = 0;
    v90 = 0;
    v37 = 0;
    v42 = 0;
    v39 = v34;
LABEL_18:

    v38 = v42;
    if (v40 == 13)
    {
      *&v74 = v64;
      *(&v74 + 1) = v66;
      *&v75 = v41;
      *(&v75 + 1) = v65;
      *&v76 = v40;
      *(&v76 + 1) = v36;
      *&v77 = v90;
      *(&v77 + 1) = v37;
      v78 = v42;
      goto LABEL_24;
    }
  }

  v43 = v36;
  v44 = v40;
  v45 = (v66 + 40 * v39);
  v40 = *v45;
  if (v40 != 16)
  {
    v46 = v34;
    v47 = v45[1];
    v90 = v45[2];
    v37 = v45[3];
    v48 = v45[4];

    ++v39;
    v42 = v48;
    v36 = v47;
    v34 = v46;
    v41 = v39;
    goto LABEL_18;
  }

  v54 = v43;

  *&v74 = v64;
  *(&v74 + 1) = v66;
  *&v75 = v41;
  *(&v75 + 1) = v65;
  *&v76 = v44;
  *(&v76 + 1) = v54;
  *&v77 = v90;
  *(&v77 + 1) = v37;
  v78 = v38;
LABEL_24:

  v14 = sub_1AFDFD1F8();
  v15 = v55;
  v16 = v56;
  v58 = v57;

  swift_bridgeObjectRelease_n();
  v17 = v58;
LABEL_25:
  v59 = v77;
  v67[2] = v76;
  v67[3] = v77;
  v60 = v78;
  v68 = v78;
  v62 = v74;
  v61 = v75;
  v67[0] = v74;
  v67[1] = v75;
  a1[2] = v76;
  a1[3] = v59;
  *(a1 + 8) = v60;
  *a1 = v62;
  a1[1] = v61;
  sub_1AFAF541C(v67, &v69);
  v1 = MEMORY[0x1B27189E0](v14, v15, v16, v17);

  v71 = v76;
  v72 = v77;
  v73 = v78;
  v69 = v74;
  v70 = v75;
  sub_1AFAF53E8(&v69);
  return v1;
}