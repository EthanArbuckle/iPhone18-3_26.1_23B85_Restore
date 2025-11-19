void sub_195D7C930(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

const char *RB::pixel_format_name(RB *this, MTLPixelFormat a2)
{
  if ((this & 0x80000000) == 0)
  {
    return (MTLPixelFormatGetName() + 14);
  }

  if (this - 0x80000001 > 0x12)
  {
    return "<unknown>";
  }

  return off_1E744C5A8[this - 0x80000001];
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsEEEbT1_SG_S9_(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 40;
      v7 = *(a1 + 40);
      v9 = *(a2 - 40);
      v4 = a2 - 40;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 < v7)
        {
LABEL_12:
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a1 + 32);
          v13 = *(v4 + 32);
          v14 = *(v4 + 16);
          *a1 = *v4;
          *(a1 + 16) = v14;
          *(a1 + 32) = v13;
          *(v4 + 32) = v12;
LABEL_13:
          result = 1;
          *v4 = v10;
          *(v4 + 16) = v11;
          return result;
        }

        v55 = *(a1 + 32);
        v57 = *a1;
        v56 = *(a1 + 16);
        v58 = *(a1 + 56);
        *a1 = *v6;
        *(a1 + 16) = v58;
        *(a1 + 32) = *(a1 + 72);
        *v6 = v57;
        *(a1 + 56) = v56;
        *(a1 + 72) = v55;
        if (*v4 < *(a1 + 40))
        {
          v10 = *v6;
          v11 = *(a1 + 56);
          v59 = *(a1 + 72);
          v60 = *(v4 + 32);
          v61 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 56) = v61;
          *(a1 + 72) = v60;
          *(v4 + 32) = v59;
          goto LABEL_13;
        }

        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v34 = *v6;
      v35 = *(a1 + 56);
      v36 = *(a1 + 72);
      v37 = *(v4 + 32);
      v38 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 56) = v38;
      *(a1 + 72) = v37;
      *(v4 + 32) = v36;
      *v4 = v34;
      *(v4 + 16) = v35;
LABEL_49:
      if (*(a1 + 40) < *a1)
      {
        v92 = *(a1 + 32);
        v94 = *a1;
        v93 = *(a1 + 16);
        v95 = *(v6 + 16);
        *a1 = *v6;
        *(a1 + 16) = v95;
        *(a1 + 32) = *(v6 + 32);
        *v6 = v94;
        *(v6 + 16) = v93;
        result = 1;
        *(v6 + 32) = v92;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZN2RB19pixel_format_traitsE14MTLPixelFormatENK3__0clEPvEUlRKT_RKT0_E_PNS2_17PixelFormatTraitsELi0EEEvT1_SG_SG_SG_SG_S9_(a1, (a1 + 40), (a1 + 80), a1 + 120, a2 - 40, a3);
      return 1;
    }

    v6 = a1 + 40;
    v25 = *(a1 + 40);
    v26 = (a1 + 80);
    v27 = *(a1 + 80);
    v28 = (a2 - 40);
    v29 = *a1;
    if (v25 >= *a1)
    {
      if (v27 < v25)
      {
        v47 = *(a1 + 72);
        v49 = *v6;
        v48 = *(a1 + 56);
        v50 = *(a1 + 96);
        *v6 = *v26;
        *(a1 + 56) = v50;
        *(a1 + 72) = *(a1 + 112);
        *v26 = v49;
        *(a1 + 96) = v48;
        *(a1 + 112) = v47;
        if (*v6 < v29)
        {
          v51 = *(a1 + 32);
          v53 = *a1;
          v52 = *(a1 + 16);
          v54 = *(a1 + 56);
          *a1 = *v6;
          *(a1 + 16) = v54;
          *(a1 + 32) = *(a1 + 72);
          *v6 = v53;
          *(a1 + 56) = v52;
          *(a1 + 72) = v51;
        }
      }

      goto LABEL_46;
    }

    if (v27 >= v25)
    {
      v78 = *(a1 + 32);
      v80 = *a1;
      v79 = *(a1 + 16);
      v81 = *(a1 + 56);
      *a1 = *v6;
      *(a1 + 16) = v81;
      *(a1 + 32) = *(a1 + 72);
      *v6 = v80;
      *(a1 + 56) = v79;
      *(a1 + 72) = v78;
      if (v27 >= *(a1 + 40))
      {
        goto LABEL_46;
      }

      v30 = *(a1 + 72);
      v32 = *v6;
      v31 = *(a1 + 56);
      v82 = *(a1 + 96);
      *v6 = *v26;
      *(a1 + 56) = v82;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v30 = *(a1 + 32);
      v32 = *a1;
      v31 = *(a1 + 16);
      v33 = *(a1 + 96);
      *a1 = *v26;
      *(a1 + 16) = v33;
      *(a1 + 32) = *(a1 + 112);
    }

    *v26 = v32;
    *(a1 + 96) = v31;
    *(a1 + 112) = v30;
LABEL_46:
    if (*v28 >= *v26)
    {
      return 1;
    }

    v83 = *v26;
    v84 = *(a1 + 96);
    v85 = *(a1 + 112);
    v86 = *(a2 - 8);
    v87 = *(a2 - 24);
    *v26 = *v28;
    *(a1 + 96) = v87;
    *(a1 + 112) = v86;
    *(a2 - 8) = v85;
    *v28 = v83;
    *(a2 - 24) = v84;
    if (*v26 >= *v6)
    {
      return 1;
    }

    v88 = *(a1 + 72);
    v90 = *v6;
    v89 = *(a1 + 56);
    v91 = *(a1 + 96);
    *v6 = *v26;
    *(a1 + 56) = v91;
    *(a1 + 72) = *(a1 + 112);
    *v26 = v90;
    *(a1 + 96) = v89;
    *(a1 + 112) = v88;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 40);
    v4 = a2 - 40;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v16 = (a1 + 80);
  v17 = *(a1 + 80);
  v18 = (a1 + 40);
  v19 = *(a1 + 40);
  v20 = *a1;
  if (v19 >= *a1)
  {
    if (v17 < v19)
    {
      v39 = *(a1 + 72);
      v41 = *v18;
      v40 = *(a1 + 56);
      v42 = *(a1 + 96);
      *v18 = *v16;
      *(a1 + 56) = v42;
      *(a1 + 72) = *(a1 + 112);
      *v16 = v41;
      *(a1 + 96) = v40;
      *(a1 + 112) = v39;
      if (*v18 < v20)
      {
        v43 = *(a1 + 32);
        v45 = *a1;
        v44 = *(a1 + 16);
        v46 = *(a1 + 56);
        *a1 = *v18;
        *(a1 + 16) = v46;
        *(a1 + 32) = *(a1 + 72);
        *v18 = v45;
        *(a1 + 56) = v44;
        *(a1 + 72) = v43;
      }
    }
  }

  else if (v17 >= v19)
  {
    v62 = *(a1 + 32);
    v64 = *a1;
    v63 = *(a1 + 16);
    v65 = *(a1 + 56);
    *a1 = *v18;
    *(a1 + 16) = v65;
    *(a1 + 32) = *(a1 + 72);
    *v18 = v64;
    *(a1 + 56) = v63;
    *(a1 + 72) = v62;
    if (v17 < *(a1 + 40))
    {
      v66 = *(a1 + 72);
      v68 = *v18;
      v67 = *(a1 + 56);
      v69 = *(a1 + 96);
      *v18 = *v16;
      *(a1 + 56) = v69;
      *(a1 + 72) = *(a1 + 112);
      *v16 = v68;
      *(a1 + 96) = v67;
      *(a1 + 112) = v66;
    }
  }

  else
  {
    v21 = *(a1 + 32);
    v23 = *a1;
    v22 = *(a1 + 16);
    v24 = *(a1 + 96);
    *a1 = *v16;
    *(a1 + 16) = v24;
    *(a1 + 32) = *(a1 + 112);
    *v16 = v23;
    *(a1 + 96) = v22;
    *(a1 + 112) = v21;
  }

  v70 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v71 = 0;
  v72 = 0;
  while (1)
  {
    v73 = *v70;
    if (*v70 < *v16)
    {
      v96 = *(v70 + 4);
      v97 = *(v70 + 20);
      v98 = *(v70 + 36);
      v74 = v71;
      while (1)
      {
        v75 = a1 + v74;
        v76 = *(a1 + v74 + 96);
        *(v75 + 120) = *(a1 + v74 + 80);
        *(v75 + 136) = v76;
        *(v75 + 152) = *(a1 + v74 + 112);
        if (v74 == -80)
        {
          break;
        }

        v74 -= 40;
        if (v73 >= *(v75 + 40))
        {
          v77 = a1 + v74 + 120;
          goto LABEL_40;
        }
      }

      v77 = a1;
LABEL_40:
      *v77 = v73;
      *(v77 + 4) = v96;
      *(v77 + 20) = v97;
      *(v77 + 36) = v98;
      if (++v72 == 8)
      {
        return v70 + 40 == a2;
      }
    }

    v16 = v70;
    v71 += 40;
    v70 += 40;
    if (v70 == a2)
    {
      return 1;
    }
  }
}

void sub_195D7CFF0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x19A8C09E0](v1, v3);
  _Unwind_Resume(a1);
}

void sub_195D7D2B0(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v2, 0x10A1C4060D74FD1);

  _Unwind_Resume(a1);
}

void sub_195D7D3B0(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v2, 0x10A1C4060D74FD1);

  _Unwind_Resume(a1);
}

void sub_195D7D568(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C09E0](v2, 0x10A1C4060D74FD1);

  _Unwind_Resume(a1);
}

void *RB::CustomShader::Closure::operator=(void *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != *a2)
  {
    if (v4)
    {
      if (atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::CustomShader::Closure::operator=();
      }

      v5 = *a2;
    }

    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    *a1 = v5;
  }

  v6 = (a2 + 1);
  v7 = a1[18];
  if (a1[17])
  {
    v8 = a1[17];
  }

  else
  {
    v8 = (a1 + 1);
  }

  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      RB::CustomShader::Value::reset_data(v8);
      v8 += 4;
      v9 -= 32;
    }

    while (v9);
  }

  a1[18] = 0;
  v10 = a2[18];
  if (a2[17])
  {
    v6 = a2[17];
  }

  if (a1[19] < v10)
  {
    RB::vector<RB::Path::Buffer,4ul,unsigned long>::reserve_slow(a1 + 1, a2[18]);
    v11 = a1[18];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  v13 = a1[17];
  if (!v13)
  {
    v13 = a1 + 1;
  }

  v14 = &v13[4 * v11];
  v15 = v10;
  do
  {
    v16 = RB::CustomShader::Value::Value(v14, v6);
    v6 = (v6 + 32);
    v14 = (v16 + 32);
    --v15;
  }

  while (v15);
  v12 = a1[18];
LABEL_24:
  a1[18] = v12 + v10;
  v17 = a2[20];
  v18 = a1[20];
  if (v18 != v17)
  {

    a1[20] = v17;
  }

  return a1;
}

void sub_195D7E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    [RBEncoderSet addDisplayList:a27];
  }

  RB::ProtobufEncoder::~ProtobufEncoder(&a19);
  v29 = *(v27 - 56);
  if (v29)
  {
    if (atomic_fetch_add_explicit((v29 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBEncoderSet init];
    }
  }

  _Unwind_Resume(a1);
}

void sub_195D7E378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  RB::Heap::~Heap(va);

  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_40c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

id __copy_helper_block_e8_32c30_ZTSN2RB8objc_ptrIP8RBDeviceEE40c30_ZTSN2RB8objc_ptrIP8RBShaderEE48c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE56c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE(void *a1, id *a2)
{
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  result = a2[7];
  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_32c30_ZTSN2RB8objc_ptrIP8RBDeviceEE40c30_ZTSN2RB8objc_ptrIP8RBShaderEE48c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE56c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t ___ZN2RB19ObjcEncoderDelegate16encode_message_fIZ41__RBShader_encodedDataForDelegate_error__E3__3Z41__RBShader_encodedDataForDelegate_error__E3__4EEP6NSDataRKT_RKT0__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*v1)
    {
      free(*v1);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::Decoder::~Decoder(RB::Decoder *this)
{
  RB::ObjectTable::~ObjectTable((this + 168));
  v2 = *(this + 18);
  if (v2)
  {
    free(v2);
  }

  RB::UntypedTable::~UntypedTable((this + 80));
  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }
}

void RB::render_primitive(uint64_t a1, float64x2_t *a2, float32x4_t *a3, RB::Fill::MeshGradient *a4, int a5, unsigned int a6, float a7)
{
  if (RB::depth_stencil_format_has_stencil(*(a1 + 186)))
  {
    *(a1 + 184) = 1;
    *(a1 + 188) = 1;
    v14 = 0uLL;
    {
      *(a1 + 184) = 6;
      *(a1 + 188) = 0;
      RB::render_mesh_gradient(a1, a2, a4, 0, a5, a6, &v14, a7);
    }

    *(a1 + 184) = 0;
    *(a1 + 188) = 0;
  }

  else
  {
    v14 = 0uLL;
    {
      RB::render_mesh_gradient(a1, a2, a4, 0, a5, a6, &v14, a7);
    }
  }
}

double CG::LineSegment::index(float64x2_t *this, double a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v3 = vsubq_f64(this[1], *this);
    v4 = sqrt(vaddvq_f64(vmulq_f64(v3, v3)));
    if (v4 <= a2)
    {
      return 1.0;
    }

    else
    {
      return a2 / v4;
    }
  }

  return v2;
}

__n128 CG::LineSegment::split@<Q0>(float64x2_t *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v3 = vmlaq_n_f64(*this, vsubq_f64(this[1], *this), a2);
  result = this[1];
  *a3 = *this;
  *(a3 + 16) = v3;
  *(a3 + 32) = v3;
  *(a3 + 48) = result;
  return result;
}

RB::Filter::ColorMatrix *RB::Filter::ColorMatrix::ColorMatrix(RB::Filter::ColorMatrix *this, const RB::Filter::ColorMatrix *a2, RB::DisplayList::Builder *a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = (**v5)(v5, *(a3 + 1) + 16);
  }

  *this = *a2;
  *(this + 1) = v5;
  return this;
}

uint64_t RB::Filter::ColorMatrix::append(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return 0;
  }

  if (*a1 != *a3)
  {
    return 0;
  }

  v4 = *(a3 + 8);
  if (v4)
  {
    *(a1 + 8) = RB::ColorMatrixFn::append(v4, *(a1 + 8));
  }

  return 1;
}

uint64_t RB::Filter::ColorMatrix::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::Filter::ColorMatrix::set_globals(unsigned int *a1, uint64_t a2, uint64_t a3, int *a4, double a5)
{
  v5 = *&a5;
  RB::Coverage::set_plane(a3, a2, *&a5);
  v10 = *(a1 + 1);
  if (v10)
  {
    (*(*v10 + 8))(v10, &v22, *(a2 + 128) | 0x100, *a1, *(a2 + 124));
  }

  else
  {
    RB::ColorMatrix::set_identity(&v22);
  }

  if (v5 != 1.0)
  {
    RB::ColorMatrix::multiply_alpha(&v22, v5, (*a1 >> 2) & 1);
  }

  if (RB::ColorMatrix::is_diagonal(&v22))
  {
    v11.i16[0] = v22.i16[0];
    v11.i16[1] = WORD1(v23);
    v11.i16[2] = WORD2(v24);
    v11.i16[3] = v25.i16[3];
    v12 = *a4;
    if ((*a1 & 4) != 0)
    {
      *a4 = *a4 & 0xFFFFFFF3 | (4 * (*a4 & 1));
    }

    else if ((v12 & 8) == 0 && ((v12 & 4) != 0 || (v12 & 1) == 0))
    {
      v13 = vdup_lane_s16(v25, 3);
      v13.i16[3] = COERCE_UNSIGNED_INT(1.0);
      v11 = vmul_f16(v11, v13);
    }

    result = 0;
    *(a3 + 28) = v11;
  }

  else if (RB::ColorMatrix::is_alpha_multiply(&v22, (*a1 & 4) != 0))
  {
    v14.n64_u64[0] = RB::ColorMatrix::alpha_multiply_color(&v22, (*a1 & 4) != 0).n64_u64[0];
    v15 = *a4;
    if ((*a1 & 4) != 0)
    {
      *a4 = *a4 & 0xFFFFFFF3 | (4 * (*a4 & 1));
    }

    else if ((v15 & 8) == 0 && ((v15 & 4) != 0 || (v15 & 1) == 0))
    {
      v16 = vdup_lane_s16(v14.n64_u64[0], 3);
      v16.i16[3] = COERCE_UNSIGNED_INT(1.0);
      v14.n64_u64[0] = vmul_f16(v16, v14.n64_u64[0]);
    }

    *(a3 + 28) = v14;
    return 1;
  }

  else
  {
    for (i = 0; i != 40; i += 8)
    {
      *(a3 + 28 + i) = *(&v22 + i);
    }

    if (RB::ColorMatrix::has_alpha(&v22))
    {
      v19 = *a1;
    }

    else
    {
      if ((vmaxv_u16(vmvn_s8(vceqz_f16(v26))) & 0x8000) == 0)
      {
        return 2;
      }

      v19 = *a1;
      if ((*a1 & 4) == 0)
      {
        return 3;
      }
    }

    v20 = *a4 & 0xFFFFFFF3;
    if ((v19 & 4) != 0)
    {
      v21 = (4 * (*a4 & 1)) | v20;
    }

    else
    {
      v21 = ((8 * (*a4 & 1)) | v20) ^ 8;
    }

    *a4 = v21;
    return 4;
  }

  return result;
}

int32x2_t *RB::Filter::ColorMatrix::render(unsigned int *a1, int32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  LODWORD(v7) = 1.0;
  v8 = RB::Filter::ColorMatrix::set_globals(a1, a2, v16, &v18, v7);
  v9 = v18;
  RB::RenderFrame::alloc_buffer_region(*(*a2 + 16), 0x44, 4uLL, 0, &v19);
  v10 = v19;
  if (v19)
  {
    v11 = *(v19 + 7) + v20.i64[0];
    v13 = v16[2];
    v12 = v16[3];
    v14 = v16[1];
    *(v11 + 64) = v17;
    *(v11 + 32) = v13;
    *(v11 + 48) = v12;
    *(v11 + 16) = v14;
    *v11 = v16[0];
  }

  else
  {
    v19 = 0;
    v20 = 0uLL;
  }

  a2[24].i32[0] = RB::RenderFrame::buffer_id(*(*a2 + 16), v10);
  *(a2 + 196) = vmovn_s64(v20);
  return RB::RenderPass::draw_indexed_primitives(a2, (a4 & 0xFFFFFFFF00000000 | a4 & 0x3FFFF | ((v9 & 0xFF1F | (32 * (v8 & 7))) << 18)), 4, **(*a2 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
}

int32x2_t *RB::Filter::ColorMatrix::render(int32x2_t *result, int32x2_t *a2, uint64_t a3, int a4, int a5, float a6)
{
  if (a4 != 24 && a4 != 2 || (a6 == 1.0 ? (v6 = *&result[1] == 0) : (v6 = 0), !v6))
  {
    v7 = 28;
    if (a2[16].i32[1] == 2)
    {
      v7 = 131100;
    }

    v8 = 0x10000;
    if (!a5)
    {
      v8 = 0;
    }

    return RB::Filter::ColorMatrix::render(result, a2, a3, v8 | v7 | ((a4 & 0x3F) << 32));
  }

  return result;
}

void RB::Filter::ColorMatrix::render(unsigned int *a1, CGContext **this)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v5 = *(this + 8);
    RB::CGContext::target_headroom(this);
    (*(*v2 + 8))(v2, v6, v5 | 0x100, *a1);
    RB::CGContext::apply_color_matrix(this, v6, (*a1 >> 2) & 1);
  }
}

void *RB::Filter::ColorMatrix::encode(RB::Filter::ColorMatrix *this, RB::Encoder *a2)
{
  result = *(this + 1);
  if (result)
  {
    (*(*result + 8))(result, v6, 0, *this, 0.0);
    RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::ColorMatrix::encode(v6, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v5 = *this;
  if (*this)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v5 = *this;
    if ((*this & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_5;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  if ((*this & 4) == 0)
  {
    return result;
  }

LABEL_6:
  RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
  return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
}

unint64_t RB::Filter::ColorMatrix::decode(RB::Filter::ColorMatrix *this, size_t **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 2)
      {
        if (v6 == 3)
        {
          if (RB::ProtobufDecoder::BOOL_field(a2, v5))
          {
            v8 = 2;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_21;
        }

        if (v6 == 4)
        {
          if (RB::ProtobufDecoder::BOOL_field(a2, v5))
          {
            v8 = 4;
          }

          else
          {
            v8 = 0;
          }

LABEL_21:
          v7 = *this | v8;
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 == 1)
        {
          if ((v5 & 7) == 2)
          {
            RB::ProtobufDecoder::begin_message(a2);
            RB::ColorMatrix::decode(v14, a2);
            RB::ProtobufDecoder::end_message(a2);
          }

          else
          {
            *(a2 + 56) = 1;
            *a2 = a2[1];
          }

          v9 = a2[8];
          v11 = v14[0];
          v12 = v14[1];
          v13 = v15;
          v10 = (v9[2] + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v10 + 56 > v9[3])
          {
            v10 = RB::Heap::alloc_slow(v9, 0x38uLL, 7);
          }

          else
          {
            v9[2] = v10 + 56;
          }

          *v10 = &unk_1F0A3D978;
          *(v10 + 8) = 0;
          *(v10 + 16) = v11;
          *(v10 + 32) = v12;
          *(v10 + 48) = v13;
          *(this + 1) = v10;
          goto LABEL_23;
        }

        if (v6 == 2)
        {
          v7 = *this | RB::ProtobufDecoder::BOOL_field(a2, v5);
LABEL_22:
          *this = v7;
          goto LABEL_23;
        }
      }

      RB::ProtobufDecoder::skip_field(a2, v5);
LABEL_23:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::Filter::ColorMatrix::print(RB::Filter::ColorMatrix *this, RB::SexpString *a2)
{
  v4 = RB::SexpString::push(a2, "color-matrix");
  if (*this)
  {
    v5 = "linear";
  }

  else
  {
    if ((*this & 2) == 0)
    {
      goto LABEL_6;
    }

    v5 = "non-linear";
  }

  RB::SexpString::print(a2, 0, v5);
LABEL_6:
  if ((*this & 4) != 0)
  {
    RB::SexpString::print(a2, 0, "premultiplied");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, v4);
  }

  RB::SexpString::pop(a2);
}

uint64_t RB::Filter::LuminanceCurve::can_mix(float32x4_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x4_t *a3)
{
  if (a3)
  {
    if (this->i32[0] == a3->i32[0])
    {
      if ((vminvq_u32(vceqq_f32(this[1], a3[1])) & 0x80000000) == 0)
      {
        v3 = 2;
      }

      else
      {
        v3 = 4;
      }

      can_mix = RB::Fill::Color::can_mix(&this[2], &a3[2]);
      if (can_mix >= v3)
      {
        return v3;
      }

      else
      {
        return can_mix;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }
}

__int16 RB::Filter::LuminanceCurve::mix@<H0>(float32x4_t *this@<X0>, const RB::DisplayList::Interpolator::State *a2@<X1>, float32x4_t *a3@<X2>, const RB::DisplayList::CachedTransform *a4@<X3>)
{
  if (a3)
  {
    v4 = vmlaq_n_f32(this[1], vsubq_f32(a3[1], this[1]), COERCE_FLOAT(*(a2 + 1)));
    this[1] = v4;
    v4.i32[0] = *(a2 + 4);
    RB::Fill::Color::mix(&this[2], &a3[2], 0, v4);
  }

  else
  {
    _S1 = *(a2 + 4);
    __asm { FCVT            H1, S1 }

    *&result = *&this[2].i16[3] - (*&this[2].i16[3] * *&_S1);
    this[2].i16[3] = result;
  }

  return result;
}

int32x2_t *RB::Filter::LuminanceCurve::render(int32x2_t *result, uint64_t a2, int32x2_t *a3)
{
  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    v40 = v3;
    v41 = v4;
    v11 = result;
    v37 = 160;
    v15 = v12;
    if ((v11->i8[0] & 4) != 0)
    {
      v16 = (4 * (v37 & 1)) | v37 & 0xFFFFFFF3;
    }

    else
    {
      v16 = ((8 * (v37 & 1)) | v37 & 0xFFFFFFF3) ^ 8;
    }

    if (a3[16].i32[1] == 2)
    {
      v17 = 131100;
    }

    else
    {
      v17 = 28;
    }

    v18 = (v17 | (v16 << 18));
    v19 = *v11[2].i8;
    v13.i32[0] = HIDWORD(*&v11[2]);
    *v14.i32 = COERCE_FLOAT(*&v11[3]);
    *&v31 = (*(&v19 + 3) - *&v19) + ((*v13.i32 - *v14.i32) * 3.0);
    *&v32 = v19;
    *v14.i32 = ((*v14.i32 + *&v19) - (*v13.i32 + *v13.i32)) * 3.0;
    *v13.i32 = (*v13.i32 - *&v19) * 3.0;
    v29 = v14;
    v30 = v13.i32[0];
    RB::Coverage::set_plane(&v33, a3, v13);
    v20.i64[0] = __PAIR64__(v29.u32[0], v31);
    v20.i64[1] = __PAIR64__(LODWORD(v32), v30);
    *v20.f32 = vcvt_f16_f32(v20);
    *&v34[12] = v20.i64[0];
    v20.i32[0] = a3[15].i32[1];
    RB::Fill::Color::prepare(&v11[4], v15, v20, v32, v29);
    *&v34[20] = v21;
    *&v34[24] = v22;
    *&v34[26] = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - v23;
    RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), 0x44, 4uLL, 0, &v38);
    v24 = v38;
    if (v38)
    {
      v25 = *(v38 + 7) + v39.i64[0];
      v27 = *&v34[16];
      v26 = v35;
      v28 = *v34;
      *(v25 + 64) = v36;
      *(v25 + 32) = v27;
      *(v25 + 48) = v26;
      *(v25 + 16) = v28;
      *v25 = v33;
    }

    else
    {
      v38 = 0;
      v39 = 0uLL;
    }

    a3[24].i32[0] = RB::RenderFrame::buffer_id(*(*a3 + 16), v24);
    *(a3 + 196) = vmovn_s64(v39);
    return RB::RenderPass::draw_indexed_primitives(a3, v18, 4, **(*a3 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
  }

  return result;
}

void *RB::Filter::LuminanceCurve::encode(float32x4_t *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::float4_field(a2, 1, this[1]);
  RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Fill::Color::encode(&this[2], a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  v5 = this->i32[0];
  if ((this->i32[0] & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    if ((this->i32[0] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v5 = this->i32[0];
  if ((this->i32[0] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);

  return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
}

unint64_t RB::Filter::LuminanceCurve::decode(__n128 *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 2)
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            if ((v5 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(a2);
              RB::Fill::Color::decode(&this[2], a2);
              RB::ProtobufDecoder::end_message(a2);
            }

            else
            {
              *(a2 + 56) = 1;
              *a2 = *(a2 + 1);
            }

            goto LABEL_22;
          }

LABEL_21:
          RB::ProtobufDecoder::skip_field(a2, v5);
          goto LABEL_22;
        }

        this[1] = RB::ProtobufDecoder::float4_field(a2, v5);
      }

      else
      {
        if (v6 == 3)
        {
          v8 = this->n128_u32[0] | RB::ProtobufDecoder::BOOL_field(a2, v5);
        }

        else
        {
          if (v6 == 4)
          {
            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v7 = 2;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            if (v6 != 5)
            {
              goto LABEL_21;
            }

            if (RB::ProtobufDecoder::BOOL_field(a2, v5))
            {
              v7 = 4;
            }

            else
            {
              v7 = 0;
            }
          }

          v8 = this->n128_u32[0] | v7;
        }

        this->n128_u32[0] = v8;
      }

LABEL_22:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::Filter::LuminanceCurve::print(RB::Filter::LuminanceCurve *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "luminance-curve");
  if (*this)
  {
    v4 = "linear";
    goto LABEL_5;
  }

  if ((*this & 2) != 0)
  {
    v4 = "non-linear";
LABEL_5:
    RB::SexpString::print(a2, 0, v4);
  }

  RB::SexpString::printf(a2, 1, "(curve %g %g %g %g)", COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 1))));
  v5 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
  if (*(this + 16) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    goto LABEL_13;
  }

  if (*(this + 17) != v5)
  {
    goto LABEL_13;
  }

  if (*(this + 18) != v5)
  {
    goto LABEL_13;
  }

  if (*(this + 19) != v5)
  {
    goto LABEL_13;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    goto LABEL_13;
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
LABEL_13:
    RB::Fill::Color::print((this + 32), a2);
  }

  RB::SexpString::pop(a2);
}

uint64_t RB::Filter::RGBACurves::can_mix(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (!a3)
  {
    return 2;
  }

  if (a1->i32[0] != a3->i32[0])
  {
    return 0;
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[2], a3[2]), vceqq_f32(a1[1], a3[1])), vandq_s8(vceqq_f32(a1[3], a3[3]), vceqq_f32(a1[4], a3[4])))) & 0x80000000) == 0)
  {
    return 2;
  }

  return 4;
}

float32x4_t RB::Filter::RGBACurves::mix(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (a3)
  {
    v4 = a3[1];
    v3 = a3[2];
    v6 = a3[3];
    v5 = a3[4];
  }

  else
  {
    v4 = xmmword_195E44370;
    v3 = xmmword_195E44370;
    v6 = xmmword_195E44370;
    v5 = xmmword_195E44370;
  }

  v7 = a1[2];
  a1[1] = vmlaq_n_f32(a1[1], vsubq_f32(v4, a1[1]), COERCE_FLOAT(*(a2 + 16)));
  a1[2] = vmlaq_n_f32(v7, vsubq_f32(v3, v7), COERCE_FLOAT(*(a2 + 16)));
  v8 = a1[4];
  a1[3] = vmlaq_n_f32(a1[3], vsubq_f32(v6, a1[3]), COERCE_FLOAT(*(a2 + 16)));
  result = vsubq_f32(v5, v8);
  a1[4] = vmlaq_n_f32(v8, result, COERCE_FLOAT(*(a2 + 16)));
  return result;
}

int32x2_t *RB::Filter::RGBACurves::render(_DWORD *a1, uint64_t a2, int32x2_t *a3)
{
  v6 = *a1;
  v4 = (a1 + 4);
  v5 = v6;
  v30 = vld4q_f32(v4);
  v24 = v30.val[0];
  v7 = a3[16].i32[1];
  __asm { FMOV            V1.4S, #3.0 }

  v23 = vmlaq_f32(vsubq_f32(v30.val[3], v30.val[0]), _Q1, vsubq_f32(v30.val[1], v30.val[2]));
  v21 = vmulq_f32(vsubq_f32(v30.val[1], v30.val[0]), _Q1);
  v22 = vmulq_f32(vsubq_f32(vaddq_f32(v30.val[2], v30.val[0]), vaddq_f32(v30.val[1], v30.val[1])), _Q1);
  RB::Coverage::set_plane(&v25, a3, *v21.f32);
  *&v26[12] = vcvt_hight_f16_f32(vcvt_f16_f32(v23), v22);
  *&v26[28] = vcvt_hight_f16_f32(vcvt_f16_f32(v21), v24);
  RB::RenderFrame::alloc_buffer_region(*(*a3 + 16), 0x44, 4uLL, 0, &v28);
  v13 = v28;
  if (v28)
  {
    v14 = *(v28 + 7) + v29.i64[0];
    v15 = *&v26[32];
    v16 = *&v26[16];
    v17 = *v26;
    *(v14 + 64) = v27;
    *(v14 + 32) = v16;
    *(v14 + 48) = v15;
    *(v14 + 16) = v17;
    *v14 = v25;
  }

  else
  {
    v28 = 0;
    v29 = 0uLL;
  }

  if (v7 == 2)
  {
    v18 = 131100;
  }

  else
  {
    v18 = 28;
  }

  if ((v5 & 4) != 0)
  {
    v19 = 50331648;
  }

  else
  {
    v19 = 52428800;
  }

  a3[24].i32[0] = RB::RenderFrame::buffer_id(*(*a3 + 16), v13);
  *(a3 + 196) = vmovn_s64(v29);
  return RB::RenderPass::draw_indexed_primitives(a3, (v18 | v19), 4, **(*a3 + 16) + 136, 4uLL, 1uLL, 0xC0000001C0000001, 0x7FFFFFFF7FFFFFFFLL);
}

void *RB::Filter::RGBACurves::encode(float32x4_t *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::float4_field(a2, 1, this[1]);
  RB::ProtobufEncoder::float4_field(a2, 2, this[2]);
  RB::ProtobufEncoder::float4_field(a2, 3, this[3]);
  result = RB::ProtobufEncoder::float4_field(a2, 4, this[4]);
  v5 = this->i32[0];
  if ((this->i32[0] & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    if ((this->i32[0] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
  result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v5 = this->i32[0];
  if ((this->i32[0] & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  RB::ProtobufEncoder::encode_varint(a2, 0x38uLL);

  return RB::ProtobufEncoder::encode_varint(a2, 1uLL);
}

unint64_t RB::Filter::RGBACurves::decode(__n128 *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    while (1)
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) > 3)
      {
        break;
      }

      switch(v6)
      {
        case 1:
          this[1] = RB::ProtobufDecoder::float4_field(a2, v5);
          break;
        case 2:
          this[2] = RB::ProtobufDecoder::float4_field(a2, v5);
          break;
        case 3:
          this[3] = RB::ProtobufDecoder::float4_field(a2, v5);
          break;
        default:
          goto LABEL_18;
      }

LABEL_26:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    if (v6 > 5)
    {
      if (v6 == 6)
      {
        if (RB::ProtobufDecoder::BOOL_field(a2, v5))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

LABEL_23:
        v7 = this->n128_u32[0] | v8;
LABEL_24:
        this->n128_u32[0] = v7;
        goto LABEL_26;
      }

      if (v6 == 7)
      {
        if (RB::ProtobufDecoder::BOOL_field(a2, v5))
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v6 == 4)
      {
        this[4] = RB::ProtobufDecoder::float4_field(a2, v5);
        goto LABEL_26;
      }

      if (v6 == 5)
      {
        v7 = this->n128_u32[0] | RB::ProtobufDecoder::BOOL_field(a2, v5);
        goto LABEL_24;
      }
    }

LABEL_18:
    RB::ProtobufDecoder::skip_field(a2, v5);
    goto LABEL_26;
  }

  return result;
}

void RB::Filter::RGBACurves::print(RB::Filter::RGBACurves *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "rgba-curves");
  if (*this)
  {
    v4 = "linear";
  }

  else
  {
    if ((*this & 2) == 0)
    {
      goto LABEL_6;
    }

    v4 = "non-linear";
  }

  RB::SexpString::print(a2, 0, v4);
LABEL_6:
  RB::SexpString::printf(a2, 1, "(red-curve %g %g %g %g)", COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 1))));
  RB::SexpString::printf(a2, 1, "(green-curve %g %g %g %g)", COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 4))), COERCE_FLOAT(*(this + 5)), COERCE_FLOAT(HIDWORD(*(this + 2))));
  RB::SexpString::printf(a2, 1, "(blue-curve %g %g %g %g)", COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 6))), COERCE_FLOAT(*(this + 7)), COERCE_FLOAT(HIDWORD(*(this + 3))));
  RB::SexpString::printf(a2, 1, "(alpha-curve %g %g %g %g)", COERCE_FLOAT(*(this + 4)), COERCE_FLOAT(HIDWORD(*(this + 8))), COERCE_FLOAT(*(this + 9)), COERCE_FLOAT(HIDWORD(*(this + 4))));

  RB::SexpString::pop(a2);
}

void RB::Filter::Custom::mix(RB::Filter::Custom *this, float32_t *a2, const RB::Filter::Custom *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (a3)
  {
    RB::CustomShader::Closure::mix((this + 8), (a3 + 8), a2[4]);
    RB::mix((this + 176), a3 + 11, v7, a2[4]);
    *(this + 11) = v8;
    *(this + 12) = v9;
    *(this + 13) = v10;
    *(this + 28) = RB::mix(*(this + 224), *(this + 232), *(a3 + 224), *(a3 + 232), a2[4]);
    *(this + 29) = v11;
  }
}

void RB::Filter::Custom::render(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4 && *(v4 + 36) == 2 && *(a1 + 152) == 4)
  {
    if (*(a1 + 144))
    {
      v6 = *(a1 + 144);
    }

    else
    {
      v6 = (a1 + 16);
    }

    v7 = RB::CustomShader::Value::float2_value(v6);
    v8 = *(a1 + 144);
    if (!v8)
    {
      v8 = a1 + 16;
    }

    v9 = RB::CustomShader::Value::float_value((v8 + 32));
    v10 = *(a1 + 144);
    if (!v10)
    {
      v10 = a1 + 16;
    }

    v11 = RB::CustomShader::Value::float_value((v10 + 64));
    v12 = *(a1 + 144);
    if (!v12)
    {
      v12 = a1 + 16;
    }

    v13 = RB::CustomShader::Value::float2_value((v12 + 96));

    RB::CGContext::apply_ovalize_gradient(a2, (a1 + 176), v7, v9, v11, *&v13);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a2 + 80);
    if (v15)
    {
      *&v16 = RB::operator*(v15, (a2 + 32));
    }

    else
    {
      v16 = *(a2 + 32);
      v17 = *(a2 + 48);
      v18 = *(a2 + 64);
    }

    *v23 = v16;
    v24 = v17;
    v25 = v18;
    *&v19 = RB::operator*((a1 + 176), v23);
    *&v26.a = v19;
    *&v26.c = v20;
    *&v26.tx = v21;
    RB::CustomShader::Closure::make_cifilter(v5, (a1 + 224), &v26, 1u, v23);
    if (v23[0])
    {
      RB::CGContext::apply_cifilter(a2, v23[0], &v26, 1);
      v22 = v23[0];
    }

    else
    {
      v22 = 0;
    }

    objc_autoreleasePoolPop(v14);
  }
}

void *RB::Filter::Custom::encode(RB::Filter::Custom *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::CustomShader::Closure::encode(this + 1, a2);
  result = RB::ProtobufEncoder::end_length_delimited(a2);
  v5 = vandq_s8(vandq_s8(vceqq_f64(*(this + 12), xmmword_195E42770), vceqq_f64(*(this + 11), xmmword_195E42760)), vceqzq_f64(*(this + 13)));
  if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x12uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::AffineTransform::encode(this + 22, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v6 = *this;
  if (*this)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v6 = *this;
  }

  if ((v6 & 8) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v7 = vmvn_s8(vceqz_f32(*(this + 232)));
  if ((vpmin_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    v8 = *(this + 14);

    return RB::ProtobufEncoder::float4_field(a2, 5, v8);
  }

  return result;
}

unint64_t RB::Filter::Custom::decode(__n128 *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 2)
      {
        if (v6 == 1)
        {
          if ((v5 & 7) != 2)
          {
LABEL_24:
            *(a2 + 56) = 1;
            *a2 = *(a2 + 1);
            goto LABEL_22;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::CustomShader::Closure::decode(&this->n128_i8[8], a2);
        }

        else
        {
          if (v6 != 2)
          {
LABEL_21:
            RB::ProtobufDecoder::skip_field(a2, v5);
            goto LABEL_22;
          }

          if ((v5 & 7) != 2)
          {
            goto LABEL_24;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::AffineTransform::decode(&this[11], a2);
        }

        RB::ProtobufDecoder::end_message(a2);
      }

      else
      {
        if (v6 == 3)
        {
          v7 = this->n128_u32[0] | RB::ProtobufDecoder::BOOL_field(a2, v5);
LABEL_17:
          this->n128_u32[0] = v7;
          goto LABEL_22;
        }

        if (v6 == 4)
        {
          this->n128_u32[0] &= ~8u;
          if (RB::ProtobufDecoder::BOOL_field(a2, v5))
          {
            v8 = 8;
          }

          else
          {
            v8 = 0;
          }

          v7 = this->n128_u32[0] | v8;
          goto LABEL_17;
        }

        if (v6 != 5)
        {
          goto LABEL_21;
        }

        this[14] = RB::ProtobufDecoder::float4_field(a2, v5);
      }

LABEL_22:
      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::Filter::Custom::print(float32x2_t *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "custom-filter");
  RB::SexpString::print(a2, 0, "#:type color");
  v4 = this[1];
  if (v4)
  {
    RB::SexpString::printf(a2, 0, "#:shader %s", [*(*&v4 + 24) UTF8String]);
  }

  v5 = this[29];
  v6 = vmvn_s8(vceqz_f32(v5));
  if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 0, "#: bounds (%g %g; %g %g)", COERCE_FLOAT(*&this[28]), COERCE_FLOAT(HIDWORD(*&this[28])), v5.f32[0], v5.f32[1]);
  }

  v7 = this->i32[0];
  if (this->i32[0])
  {
    RB::SexpString::print(a2, 0, "linear");
    v7 = this->i32[0];
  }

  if ((v7 & 8) != 0)
  {
    RB::SexpString::print(a2, 0, "dither");
  }

  v8 = this[29];
  v9 = vmvn_s8(vceqz_f32(v8));
  if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 0, "(bounds %g %g %g %g)", COERCE_FLOAT(*&this[28]), COERCE_FLOAT(HIDWORD(*&this[28])), v8.f32[0], v8.f32[1]);
  }

  RB::SexpString::pop(a2);
}

__n128 RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>::copy(uint64_t a1, size_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (**v4)(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = (a2[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 + 56 > a2[3])
  {
    v6 = RB::Heap::alloc_slow(a2, 0x38uLL, 7);
  }

  else
  {
    a2[2] = v6 + 56;
  }

  *v6 = &unk_1F0A3D978;
  *(v6 + 8) = v5;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 16) = result;
  *(v6 + 32) = v8;
  return result;
}

double RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>::color_matrix(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 32) = *(a1 + 48);
  *a2 = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 8))(v5, v11, a3);
    RB::operator*(v11, a2, v9);
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    *(a2 + 32) = v10;
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>::color_info(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>::test@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, unsigned int a4@<W8>)
{
  v6 = RB::ColorStyle::Matrix::test(a1 + 16, a2, a3, a4);
  if (a2 < 4)
  {
    if (v6)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    v7 = 0;
    return v7 & 1;
  }

  v7 = a2 - 5;
  if (a2 - 5 >= 3)
  {
    if (a2 != 4)
    {
      return v7 & 1;
    }

    if (v6)
    {
      v7 = *(a1 + 8) == 0;
      return v7 & 1;
    }

    goto LABEL_15;
  }

  if (v6)
  {
LABEL_11:
    v7 = 1;
    return v7 & 1;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_8:
  v9 = *(*v8 + 24);

  return v9();
}

uint64_t RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>::print(float16x4_t *a1, RB::SexpString *a2)
{
  RB::ColorStyle::Matrix::print(a1 + 2, a2);
  result = a1[1];
  if (result)
  {
    v4 = *(*result + 32);

    return v4();
  }

  return result;
}

void sub_195D80A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_t lock, char a11)
{
  MEMORY[0x19A8C09E0](v11, 0x1080C40C06FA9ACLL);
  if (a11 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(a1);
}

void sub_195D80B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
    free(a19);
  }

  os_unfair_lock_unlock(&devices_lock);
  _Unwind_Resume(a1);
}

uint64_t RBDeviceSwapCurrent(RBDevice *a1)
{
  v1 = current_device();
  v2 = *v1;
  *v1 = v3;
  return v2;
}

void render_image_async(uint64_t a1, void *a2, uint64_t a3, NSObject *a4, uint64_t a5, float64_t a6, float64_t a7, float64_t a8, float64_t a9)
{
  make_image_provider(a1, a2, a3, &v16, a6, a7, a8, a9);
  v11 = v16;
  if (v16)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL18render_image_asyncP8RBDevice6CGRectP12NSDictionaryU13block_pointerFvP13RBDisplayListEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvP7CGImageE_block_invoke_2;
    v14[3] = &unk_1E744C6C0;
    v14[4] = a5;
    v12 = [v14 copy];

    *(v11 + 32) = v12;
    v13 = *(v11 + 40);
    if (v13 != a4)
    {

      *(v11 + 40) = a4;
    }

    RB::ImageProvider::start_rendering(v11, 1);
    if (atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      render_image();
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL18render_image_asyncP8RBDevice6CGRectP12NSDictionaryU13block_pointerFvP13RBDisplayListEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvP7CGImageE_block_invoke;
    block[3] = &unk_1E744C698;
    block[4] = a5;
    dispatch_async(a4, block);
  }
}

void sub_195D81018(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    render_image();
  }

  _Unwind_Resume(exception_object);
}

void sub_195D816C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(&a10);
  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void ___ZL18render_image_asyncP8RBDevice6CGRectP12NSDictionaryU13block_pointerFvP13RBDisplayListEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvP7CGImageE_block_invoke_2(uint64_t a1, RB::ImageProvider *this, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    RB::ImageProvider::make_cgimage(this, &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  (*(v4 + 16))(v4, v5);
  if (a3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_195D818E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (v10)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

void ___ZL29init_background_notificationsPU19objcproto9MTLDevice11objc_object_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:v2 selector:sel_didEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v3 addObserver:v2 selector:sel_willEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = [+[RBDevice sharedDefaultDevice](RBDevice device];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(MTLDevice *)v4 supportsBackgroundAppRole];
    v6 = v5 ^ 1;
LABEL_7:
    is_running_in_background = v6;
    goto LABEL_8;
  }

  v9[0] = 0;
  v5 = proc_pidoriginatorinfo();
  if (v5)
  {
    v6 = v9[0] != 0;
    goto LABEL_7;
  }

  v8 = RB::error_log(v5);
  v5 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    ___ZL29init_background_notificationsPU19objcproto9MTLDevice11objc_object_block_invoke_cold_1(v8);
  }

LABEL_8:
  v7 = RB::misc_log(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = is_running_in_background;
    _os_log_impl(&dword_195CE8000, v7, OS_LOG_TYPE_DEFAULT, "RBDevice: initialized bg state: %{BOOL}d", v9, 8u);
  }
}

uint64_t std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 16);
  v5 = (33 * *(a2 + 24)) ^ *(a2 + 16);
  *(v4 - 1) = v5;
  v6 = std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__node_insert_unique_prepare[abi:nn200100](a1, v5, v4);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__node_insert_unique_perform[abi:nn200100](a1, v2);
  return v2;
}

uint64_t *std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__node_insert_unique_prepare[abi:nn200100](uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3 && *(i + 5) == a3[1] && *(i + 6) == a3[2])
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__node_insert_unique_perform[abi:nn200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t std::unordered_set<RB::FormattedRenderState>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RB::Encoder::FontSet::Font>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__emplace_unique_key_args<RB::FormattedRenderState,RB::FormattedRenderState const&>(a1, i + 2);
  }

  return a1;
}

uint64_t *std::__hash_table<RB::FormattedRenderState,std::hash<RB::FormattedRenderState>,std::equal_to<RB::FormattedRenderState>,std::allocator<RB::FormattedRenderState>>::__emplace_unique_key_args<RB::FormattedRenderState,RB::FormattedRenderState const&>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = (33 * v3) ^ *a2;
  v5 = v4;
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= v6)
    {
      v8 = v4 % v6;
    }
  }

  else
  {
    v8 = v4 & (v6 + 0xFFFFFFFF);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 20) != __PAIR64__(v3, HIDWORD(v2)))
  {
    goto LABEL_18;
  }

  return v10;
}

void RBStrokeBoundingRect(void *a1, float *a2)
{
  v4 = [a1 strokeType];
  if (v4 == 1)
  {
    v9 = [a1 image];
    if (v9)
    {
      v10 = v9;
      Width = CGImageGetWidth(v9);
      v12 = Width / [a1 imageCount];
      Height = CGImageGetHeight(v10);
      if (v12 < Height)
      {
        v12 = Height;
      }

      [a1 imageScale];
      v15 = (v14 * 0.5) * v12;
    }

    else
    {
      v15 = 0.0;
    }

    v21 = &unk_1F0A3D9F0;
    v22 = 256;
    v23 = 0.0;
    v24 = vneg_f32(0x7F0000007FLL);
    v25 = 0x7F0000007FLL;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v29 = 1;
    v30 = 0.0;
    v31 = v15;
    __asm { FMOV            V0.2S, #1.0 }

    *&v32[1] = _D0;
    *&v32[3] = 1065353216;
    v33 = 0u;
    v34 = 1065353216;
    RB::Stroke::stroke_particles(a1, &v21, 0);
    if (!a2)
    {
      goto LABEL_16;
    }

    v8 = v30;
    goto LABEL_15;
  }

  if (!v4)
  {
    v5 = rb_line_cap([a1 lineCap]);
    v6 = rb_line_join([a1 lineJoin]);
    [a1 miterLimit];
    v21 = &unk_1F0A3D9B0;
    LOBYTE(v22) = v5;
    HIBYTE(v22) = v6;
    v23 = v7 * v7;
    v24 = vneg_f32(0x7F0000007FLL);
    v25 = 0x7F0000007FLL;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v29 = 1;
    v30 = 0.0;
    *v32 = 0x3F80000000000000;
    RB::Stroke::stroke_points(a1, &v21, 0);
    if (!a2)
    {
LABEL_16:
      RB::Rect::from_bounds(v24, v25);
      return;
    }

    v8 = v30;
    if (!v6)
    {
      v8 = v30 * 1.4142;
    }

LABEL_15:
    *a2 = v8;
    goto LABEL_16;
  }
}

void *RB::vector<float,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,4ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,4ul>(void *a1, size_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(4 * a3);
    v6 = v5 >> 2;
    if (v5 >> 2 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

float RB::Stroke::Bounds<RB::Stroke::Particle,RBStrokeBoundingRect::$_1>::moveto(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  *&v3 = vaddv_f32(*&v3) * 1.4142;
  v4 = *(a2 + 4);
  if (v4 < 1.0)
  {
    v4 = 1.0;
  }

  *&v3 = (*&v3 * v4) * (COERCE_FLOAT(HIDWORD(*(a2 + 24))) + (*(a1 + 80) + COERCE_FLOAT(*(a2 + 24))));
  RB::Stroke::LineBounds::moveto(a1 + 8, a3, v3);
  return result;
}

float RB::Stroke::Bounds<RB::Stroke::Particle,RBStrokeBoundingRect::$_1>::lineto(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = vaddv_f32(a2[1]) * 1.4142;
  LODWORD(a5) = a2->i32[1];
  if (*&a5 < 1.0)
  {
    *&a5 = 1.0;
  }

  v9 = v8 * *&a5;
  v10 = *&a2[3];
  LODWORD(a7) = HIDWORD(v10);
  *&a5 = *(&v10 + 1) + (a1[10].f32[0] + *&v10);
  RB::Stroke::LineBounds::lineto(a1 + 1, a3, v9 * *&a5, a5, v10, a7, a8);
  return result;
}

float RB::Stroke::Bounds<RB::Stroke::Particle,RBStrokeBoundingRect::$_1>::quadto(float32x2_t *a1, uint64_t a2, int8x16_t a3, double a4, int8x16_t a5, double a6, double a7, double a8, int32x4_t a9, int8x16_t a10)
{
  a5.i64[0] = *(a2 + 8);
  *a5.i32 = vaddv_f32(*a5.i8) * 1.4142;
  LODWORD(a6) = *(a2 + 4);
  if (*&a6 < 1.0)
  {
    *&a6 = 1.0;
  }

  *a5.i32 = *a5.i32 * *&a6;
  v10 = *(a2 + 24);
  LODWORD(a8) = HIDWORD(v10);
  *&a6 = *(&v10 + 1) + (a1[10].f32[0] + *&v10);
  *a5.i32 = *a5.i32 * *&a6;
  RB::Stroke::LineBounds::quadto(a1 + 1, a3, a4, a5, a6, v10, a8, a9, a10);
  return result;
}

float RB::Stroke::Bounds<RB::Stroke::Particle,RBStrokeBoundingRect::$_1>::cubeto(uint64_t a1, float32x2_t *a2, int8x16_t a3, float32x2_t a4, int8x16_t a5, double a6, double a7, double a8, int32x4_t a9, int8x16_t a10)
{
  v10 = vaddv_f32(a2[1]) * 1.4142;
  LODWORD(a7) = a2->i32[1];
  if (*&a7 < 1.0)
  {
    *&a7 = 1.0;
  }

  v11 = v10 * *&a7;
  v12 = *&a2[3];
  a9.i32[0] = HIDWORD(v12);
  *&a7 = *(&v12 + 1) + (*(a1 + 80) + *&v12);
  RB::Stroke::LineBounds::cubeto(a1 + 8, a3, a4, a5, v11 * *&a7, a7, v12, a9, a10);
  return result;
}

uint64_t RB::Symbol::GlyphCache::tag(os_unfair_lock_s *a1, int a2)
{
  os_unfair_lock_lock(a1);
  v8 = 0;
  v6 = &v8;
  v7 = a2;
  RB::UntypedTable::for_each(&a1[18], RB::Table<NSString *,unsigned int>::for_each<RB::Symbol::GlyphCache::tag(RB::Symbol::Tag)::$_0>(RB::Symbol::GlyphCache::tag(RB::Symbol::Tag)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v6);
  v4 = v8;
  os_unfair_lock_unlock(a1);
  return v4;
}

void RB::Symbol::Glyph::make_legacy_layers(RB::Symbol::Glyph *this, float a2)
{
  v4 = 0;
  v5 = *(this + 6);
  if (v5 > 3)
  {
    if ((v5 - 128) >= 2)
    {
      if (v5 != 4)
      {
        if (v5 != 130)
        {
          goto LABEL_18;
        }

        *(this + 6) = 4;
      }

      v6 = [*this numberOfPaletteLayers];
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    *(this + 6) = 3;
LABEL_14:
    v6 = [*this numberOfHierarchyLayers];
    if (!v6)
    {
LABEL_15:
      v4 = 1;
      *(this + 6) = 1;
      goto LABEL_18;
    }

LABEL_17:
    v4 = v6;
    goto LABEL_18;
  }

  if (v5 < 2)
  {
    v4 = 1;
    goto LABEL_18;
  }

  if (v5 == 2)
  {
    v6 = [*this numberOfMulticolorLayers];
    goto LABEL_17;
  }

  if (v5 == 3)
  {
    goto LABEL_14;
  }

LABEL_18:
  v7 = objc_opt_new();
  v8 = v7;
  v84 = v8;
  v85 = v7;
  v9 = *(this + 6);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          [v8 translateByX:0.0 Y:*(this + 17)];
          v64.i32[0] = *(this + 11);
          v65 = vrecpe_f32(v64);
          v66 = vmul_f32(vrecps_f32(v64, v65), v65);
          v66.f32[0] = vmul_f32(v66, vrecps_f32(v64, v66)).f32[0];
          [v8 scaleByX:v66.f32[0] Y:-v66.f32[0]];
          v88 = 0;
          v89 = &v88;
          v90 = 0x2020000000;
          LODWORD(v91) = -1;
          v67 = RB::Symbol::Glyph::copied_glyph(this);
          LODWORD(v68) = 1.0;
          v69 = [v7 beginCGContextWithAlpha:v68];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = ___ZN2RB6Symbol5Glyph18make_legacy_layersEf_block_invoke;
          v97[3] = &unk_1E744C710;
          v97[4] = &v88;
          [v67 drawHierarchyLayerAtIndex:i inContext:v69 withColorResolver:v97];
          [v7 endCGContext];
          v70 = *(v89 + 6);
          v71 = *(this + 114);
          if (*(this + 115) < (v71 + 1))
          {
            RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::reserve_slow(this + 112, v71 + 1);
            v71 = *(this + 114);
          }

          v72 = *(this + 56);
          if (!v72)
          {
            v72 = this + 112;
          }

          v73 = &v72[112 * v71];
          *(v73 + 5) = 0;
          *(v73 + 1) = 0;
          *(v73 + 2) = 0;
          *(v73 + 6) = 0x400000000;
          *(v73 + 14) = 0;
          *(v73 + 60) = 1065353216;
          *(v73 + 68) = 2139095040;
          *(v73 + 76) = 1065353216;
          *(v73 + 84) = -3175874560;
          *(v73 + 12) = 0;
          *(v73 + 26) = 73924608;
          v73[108] &= 0xFCu;
          v74 = *(this + 114);
          *(this + 114) = v74 + 1;
          v75 = *(this + 56);
          v76 = [v85 moveContents];
          if (v75)
          {
            v77 = v75;
          }

          else
          {
            v77 = this + 112;
          }

          v78 = &v77[112 * v74];
          *v78 = v76;
          v79 = *(v78 + 26);
          *(v78 + 16) = a2;
          v80 = v79 & 0xCFC003FF;
          v81 = (v70 << 10) & 0x3FC00;
          if (v70 < 0)
          {
            v81 = 2621440;
          }

          *(v78 + 26) = v80 | v81 | 0x30000000;
          _Block_object_dispose(&v88, 8);
        }
      }
    }

    else if (v9 == 4 && v4)
    {
      for (j = 0; j != v4; ++j)
      {
        [v8 translateByX:0.0 Y:*(this + 17)];
        v26.i32[0] = *(this + 11);
        v27 = vrecpe_f32(v26);
        v28 = vmul_f32(vrecps_f32(v26, v27), v27);
        v28.f32[0] = vmul_f32(v28, vrecps_f32(v26, v28)).f32[0];
        [v8 scaleByX:v28.f32[0] Y:-v28.f32[0]];
        v88 = 0;
        v89 = &v88;
        v90 = 0x2020000000;
        LODWORD(v91) = 10;
        v29 = RB::Symbol::Glyph::copied_glyph(this);
        LODWORD(v30) = 1.0;
        v31 = [v7 beginCGContextWithAlpha:v30];
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = ___ZN2RB6Symbol5Glyph18make_legacy_layersEf_block_invoke_2;
        v96[3] = &unk_1E744C710;
        v96[4] = &v88;
        [v29 drawPaletteLayerAtIndex:j inContext:v31 withColorResolver:v96];
        [v7 endCGContext];
        v32 = *(v89 + 6);
        v33 = *(this + 114);
        if (*(this + 115) < (v33 + 1))
        {
          RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::reserve_slow(this + 112, v33 + 1);
          v33 = *(this + 114);
        }

        v34 = *(this + 56);
        if (!v34)
        {
          v34 = this + 112;
        }

        v35 = &v34[112 * v33];
        *(v35 + 5) = 0;
        *(v35 + 1) = 0;
        *(v35 + 2) = 0;
        *(v35 + 6) = 0x400000000;
        *(v35 + 14) = 0;
        *(v35 + 60) = 1065353216;
        *(v35 + 68) = 2139095040;
        *(v35 + 76) = 1065353216;
        *(v35 + 84) = -3175874560;
        *(v35 + 12) = 0;
        *(v35 + 26) = 73924608;
        v35[108] &= 0xFCu;
        v36 = *(this + 114);
        *(this + 114) = v36 + 1;
        v37 = *(this + 56);
        v38 = [v85 moveContents];
        if (v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = this + 112;
        }

        v40 = &v39[112 * v36];
        *v40 = v38;
        v41 = *(v40 + 26);
        *(v40 + 16) = a2;
        *(v40 + 26) = v41 & 0xCFC003FF | ((v32 & 0xF) << 18) | 0x30000000;
        _Block_object_dispose(&v88, 8);
      }
    }
  }

  else if (v9 >= 2)
  {
    if (v9 == 2 && v4)
    {
      v42 = 0;
      v83 = v92;
      v82 = v87;
      do
      {
        [v8 translateByX:0.0 Y:{*(this + 17), v82, v83}];
        v43.i32[0] = *(this + 11);
        v44 = vrecpe_f32(v43);
        v45 = vmul_f32(vrecps_f32(v43, v44), v44);
        v45.f32[0] = vmul_f32(v45, vrecps_f32(v43, v45)).f32[0];
        [v8 scaleByX:v45.f32[0] Y:-v45.f32[0]];
        v88 = 0;
        v89 = &v88;
        v90 = 0x4812000000;
        v91 = __Block_byref_object_copy_;
        v92[0] = __Block_byref_object_dispose_;
        v92[1] = " 0";
        v93 = 10;
        v94 = 0;
        cf = 0;
        v46 = RB::Symbol::Glyph::copied_glyph(this);
        LODWORD(v47) = 1.0;
        v48 = [v7 beginCGContextWithAlpha:v47];
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v87[0] = ___ZN2RB6Symbol5Glyph18make_legacy_layersEf_block_invoke_23;
        v87[1] = &unk_1E744C738;
        v87[2] = &v88;
        [v46 drawMulticolorLayerAtIndex:v42 inContext:v48 withColorResolver:v86];
        [v7 endCGContext];
        v49 = *(v89 + 12);
        v50 = *(this + 114);
        if (*(this + 115) < (v50 + 1))
        {
          RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::reserve_slow(this + 112, v50 + 1);
          v50 = *(this + 114);
        }

        v51 = *(this + 56);
        if (!v51)
        {
          v51 = this + 112;
        }

        v52 = &v51[112 * v50];
        *(v52 + 5) = 0;
        *(v52 + 1) = 0;
        *(v52 + 2) = 0;
        *(v52 + 6) = 0x400000000;
        *(v52 + 14) = 0;
        *(v52 + 60) = 1065353216;
        *(v52 + 68) = 2139095040;
        *(v52 + 76) = 1065353216;
        *(v52 + 84) = -3175874560;
        *(v52 + 12) = 0;
        *(v52 + 26) = 73924608;
        v52[108] &= 0xFCu;
        v53 = *(this + 114);
        *(this + 114) = v53 + 1;
        v54 = *(this + 56);
        v55 = [v85 moveContents];
        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = this + 112;
        }

        v57 = &v56[112 * v53];
        *v57 = v55;
        v58 = *(v57 + 26);
        *(v57 + 16) = a2;
        *(v57 + 26) = v58 & 0xCFC003FF | ((v49 & 0xF) << 18) | 0x30000000;
        v59 = v89;
        v60 = *(v57 + 1);
        *(v57 + 1) = v89[7];
        v59[7] = v60;
        v61 = v89;
        v62 = *(v57 + 2);
        *(v57 + 2) = v89[8];
        v61[8] = v62;
        _Block_object_dispose(&v88, 8);
        if (cf)
        {
          CFRelease(cf);
        }

        ++v42;
        v8 = v84;
      }

      while (v4 != v42);
    }
  }

  else
  {
    [v8 translateByX:0.0 Y:*(this + 17)];
    v10.i32[0] = *(this + 11);
    v11 = vrecpe_f32(v10);
    v12 = vmul_f32(vrecps_f32(v10, v11), v11);
    v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
    [v8 scaleByX:v12.f32[0] Y:-v12.f32[0]];
    v13 = RB::Symbol::Glyph::copied_glyph(this);
    LODWORD(v14) = 1.0;
    [v13 drawInContext:{objc_msgSend(v7, "beginCGContextWithAlpha:", v14)}];
    [v7 endCGContext];
    v15 = this + 112;
    v16 = *(this + 114);
    if (*(this + 115) < (v16 + 1))
    {
      RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::reserve_slow(this + 112, v16 + 1);
      v16 = *(this + 114);
    }

    v17 = *(this + 56);
    if (!v17)
    {
      v17 = this + 112;
    }

    v18 = &v17[112 * v16];
    *(v18 + 5) = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = 0;
    *(v18 + 6) = 0x400000000;
    *(v18 + 14) = 0;
    *(v18 + 60) = 1065353216;
    *(v18 + 68) = 2139095040;
    *(v18 + 76) = 1065353216;
    *(v18 + 84) = -3175874560;
    *(v18 + 12) = 0;
    *(v18 + 26) = 73924608;
    v18[108] &= 0xFCu;
    v19 = *(this + 114);
    *(this + 114) = v19 + 1;
    v20 = *(this + 56);
    v21 = [v85 moveContents];
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v15;
    }

    v23 = &v22[112 * v19];
    *v23 = v21;
    v24 = *(v23 + 26);
    *(v23 + 16) = a2;
    *(v23 + 26) = v24 & 0xCFC003FF | 0x30000000;
  }
}

RB::Symbol::Glyph::Layer *RB::vector<RB::Symbol::Glyph::Layer,3ul,unsigned int>::~vector(RB::Symbol::Glyph::Layer *a1)
{
  v1 = a1;
  v2 = *(a1 + 42);
  if (v2)
  {
    a1 = *(a1 + 42);
  }

  if (*(v1 + 86))
  {
    v3 = 0;
    do
    {
      RB::Symbol::Glyph::Layer::~Layer(a1);
      ++v3;
      a1 = (v4 + 112);
    }

    while (v3 < *(v1 + 86));
    v2 = *(v1 + 42);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

CGColorRef ___ZN2RB6Symbol5Glyph18make_legacy_layersEf_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(a1 + 32) + 8);
  if ((*(v3 + 24) & 0x80000000) != 0)
  {
    *(v3 + 24) = a3;
  }

  return CGColorGetConstantColor(*MEMORY[0x1E695F1E0]);
}

CGColorRef ___ZN2RB6Symbol5Glyph18make_legacy_layersEf_block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 10)
  {
    v4 = 4;
    if (a3 < 4)
    {
      v4 = a3;
    }

    v5 = v4 + 4;
    if (!a3)
    {
      v5 = 0;
    }

    *(v3 + 24) = v5;
  }

  return CGColorGetConstantColor(*MEMORY[0x1E695F1E0]);
}

uint64_t RB::Symbol::Glyph::make_legacy_layers(float)::Info::~Info(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CGColorRef ___ZN2RB6Symbol5Glyph18make_legacy_layersEf_block_invoke_23(uint64_t a1, void *a2, CFTypeRef cf)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 48) = 9;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 56);
    if (v8 != a2)
    {

      *(v7 + 56) = a2;
      v7 = *(*(a1 + 32) + 8);
    }

    v9 = *(v7 + 64);
    if (v9 != cf)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      if (cf)
      {
        v10 = CFRetain(cf);
      }

      else
      {
        v10 = 0;
      }

      *(v7 + 64) = v10;
    }

    v3 = vars8;
  }

  v11 = *MEMORY[0x1E695F1E0];

  return CGColorGetConstantColor(v11);
}

const void **RB::cf_ptr<void const*>::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return a1;
}

BOOL RB::Symbol::Glyph::Layer::can_animate_stroke_length(RB::Symbol::Glyph::Layer *this)
{
  if (*(this + 20) > 0.0)
  {
    return 1;
  }

  if ((*(this + 26) & 0x30000000) == 0x10000000)
  {
    return *(*this + 56) != 0;
  }

  return 0;
}

void *RB::Symbol::Glyph::Layer::remove(void *result, unsigned int a2)
{
  v2 = (result + 3);
  if (result[5])
  {
    v2 = result[5];
  }

  v3 = *(result + 12);
  if (v3)
  {
    v4 = v2;
    v5 = *(result + 12);
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 4;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v4 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  if (v4 != &v2[4 * v3] && *v4 == a2)
  {
    v10 = v4 - v2;
    v11 = (v3 - 1);
    *(result + 12) = v11;
    if (v11 != v10 >> 2)
    {
      return memmove(&v2[v10], &v2[v10 + 4], 4 * (v11 - (v10 >> 2)));
    }
  }

  return result;
}

uint64_t *RB::path_ptr::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4 != *a2)
  {
    v5 = a1[1];
LABEL_4:
    RBPathRelease(v4, v5);
    *a1 = RBPathRetain(*a2, a2[1]);
    a1[1] = v6;
    return a1;
  }

  v5 = a1[1];
  if (v5 != a2[1])
  {
    goto LABEL_4;
  }

  return a1;
}

float RB::Symbol::Glyph::layer_draw_duration(RB::Symbol::Glyph *this, const RB::Symbol::Glyph::Layer *a2, float32x2_t a3)
{
  a3.i32[0] = *(this + 8);
  v3 = vrecpe_f32(a3);
  v4 = vmul_f32(vrecps_f32(a3, v3), v3);
  v5 = (RB::Symbol::Glyph::Layer::stroke_length(a2) * 0.17182) * vmul_f32(v4, vrecps_f32(a3, v4)).f32[0];
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  return ((v5 * -0.86667) * (v5 + -2.0)) + 0.13333;
}

float RB::Symbol::Glyph::Layer::stroke_length(RB::Symbol::Glyph::Layer *this)
{
  result = 0.0;
  if ((*(this + 26) & 0x30000000) == 0x10000000)
  {
    return *(this + 15) * RB::Symbol::Glyph::Shape::stroke_length(*this, *(this + 15));
  }

  return result;
}

float RB::Symbol::Glyph::Shape::stroke_length(RB::Symbol::Glyph::Shape *this, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Length = *(this + 20);
  if (Length < 0.0)
  {
    if (*(this + 5) == 0x195E47920 || (v4 = *(this + 14), !v4))
    {
      Length = RBPathGetLength(*(this + 2), *(this + 3), 0, 0.5);
      *(this + 20) = Length;
    }

    else
    {
      RB::Path::ClipStroke::LengthEstimator::LengthEstimator(v7, *(this + 6), v4, 0.5 / a2);
      RBPathMap(*(this + 4), *(this + 5), v7, 0);
      v5 = v9;
      *(this + 20) = v5;
      if (v10)
      {
        free(v10);
      }

      *&v7[0].f64[0] = &unk_1F0A3F928;
      if (v8)
      {
        free(v8);
      }

      return *(this + 20);
    }
  }

  return Length;
}

void sub_195D83C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::Path::ClipStroke::LengthEstimator::~LengthEstimator(va);
  _Unwind_Resume(a1);
}

float RB::Symbol::Glyph::Layer::mix_layers(uint64_t a1, RBPath **a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float64x2_t *a6, float64x2_t *a7, RB::Symbol::Presentation *a8, double a9, char a10, id *a11, _BYTE *a12)
{
  v17 = a3;
  v20 = vmvn_s8(vceq_f32(*a4, 0x3F80000000000000));
  if ((vpmax_u32(v20, v20).u32[0] & 0x80000000) == 0)
  {
    v21 = vmvn_s8(vceq_f32(*a5, 0x3F80000000000000));
    v22 = vpmax_u32(v21, v21).u32[0];
    if (!a10 || (v22 & 0x80000000) != 0)
    {
      if ((v22 & 0x80000000) == 0 && (a2[13] & 0x30000000) == 0x10000000 && (a3[13].i32[0] & 0x30000000) == 0x10000000 && *(a2 + 15) == a3[7].f32[1] && *(a2 + 16) == a3[8].f32[0] && *(a2 + 20) > 0.0 == a3[10].f32[0] > 0.0)
      {
        v34 = vandq_s8(vandq_s8(vceqq_f64(a6[1], a7[1]), vceqq_f64(*a6, *a7)), vceqq_f64(a6[2], a7[2]));
        if ((vandq_s8(vdupq_laneq_s64(v34, 1), v34).u64[0] & 0x8000000000000000) != 0)
        {
          if (RBPathEqualToPath((*a2)[1].var0, (*a2)[1].var1, *(*a3 + 16), *(*a3 + 24)))
          {
            v35 = *a2;
            atomic_fetch_add_explicit(&(*a2)->var1, 1u, memory_order_relaxed);
            *a1 = v35;
            *(a1 + 104) = *(a1 + 104) & 0xCFFFFFFF | 0x10000000;
            *(a1 + 60) = *(a2 + 60);
            *(a1 + 80) = vmla_n_f32(a2[10], vsub_f32(v17[10], a2[10]), *&a9);
            *a12 = 0;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      if ((a2[13] & 0x30000000) != 0x10000000 || (a3[13].i32[0] & 0x30000000) != 0x10000000 || *(a2 + 20) > 0.0 != a3[10].f32[0] > 0.0)
      {
        v23 = *a11;
        if (!*a11)
        {
          v23 = objc_opt_new();

          *a11 = v23;
        }

        State = RBDisplayListGetState(v23);
        v66 = 0x3F80000000000000uLL;
        __asm { FMOV            V9.2S, #1.0 }

        v67 = _D9;
        RB::Symbol::Glyph::Layer::draw(a2, State, 0, &v66, a6, a8, 1.0, 1.0, 1.0, 1.0);
        v30 = [*a11 moveContents];
        v31 = RBDisplayListGetState(*a11);
        v66 = 0x3F80000000000000uLL;
        v67 = _D9;
        RB::Symbol::Glyph::Layer::draw(v17, v31, 0, &v66, a7, a8, 1.0, 1.0, 1.0, 1.0);
        v32 = [*a11 moveContents];
        v33 = [[RBDisplayListInterpolator alloc] initWithFrom:v30 to:v32 options:0];
        [(RBDisplayListInterpolator *)v33 drawInState:RBDisplayListGetState(*a11) by:a9];
        *a1 = [*a11 moveContents];
        *(a1 + 104) |= 0x30000000u;
        *a12 = 1;

        goto LABEL_28;
      }

      if (*(a2 + 16) == a3[8].f32[0])
      {
        v69.var0 = *(*a3 + 16);
        v69.var1 = *(*v17 + 24);
        if (RBPathCanMix((*a2)[1], v69))
        {
          *&v59 = 0;
          *(&v59 + 1) = *(a2 + 15);
          v66 = *(&v59 + 1);
          v67 = v59;
          v68 = 0u;
          *&v60 = 0;
          *(&v60 + 1) = v17[7].f32[1];
          v63 = *(&v60 + 1);
          v64 = v60;
          v65 = 0u;
          operator new();
        }
      }
    }
  }

  v36 = v17;
  v37 = a6;
  v61 = a7;
  v38 = *a11;
  if (!*a11)
  {
    v38 = objc_opt_new();

    *a11 = v38;
  }

  v39 = RBDisplayListGetState(v38);
  v40 = RBDrawingStateBeginLayer(v39, 0);
  v41 = *a4[2].f32;
  v66 = *a4->f32;
  v67 = v41;
  v42 = 0.0;
  if (*&a9 >= 0.0)
  {
    v42 = *&a9;
  }

  if (v42 <= 1.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 1.0;
  }

  *(&v67 + 1) = 1.0 - v43;
  RB::Symbol::Glyph::Layer::draw(a2, v40, 0, &v66, v37, a8, 1.0, 1.0, 1.0, 1.0);
  v44 = *a5[2].f32;
  v63 = *a5->f32;
  v64 = v44;
  *(&v64 + 1) = v43;
  v17 = v36;
  RB::Symbol::Glyph::Layer::draw(v36, v40, 0x3EFu, &v63, v61, a8, 1.0, 1.0, 1.0, 1.0);
  RBDrawingStateDrawLayer(v39, v40, 0, 1.0);
  *a1 = [*a11 moveContents];
  *(a1 + 104) |= 0x30000000u;
  *a12 = 1;
LABEL_28:
  v45 = a2[1];
  v46 = *(a1 + 8);
  if (v46 != v45)
  {

    *(a1 + 8) = v45;
  }

  v47 = a2[2];
  v48 = *(a1 + 16);
  if (v48 != v47)
  {
    if (v48)
    {
      CFRelease(v48);
    }

    if (v47)
    {
      v49 = CFRetain(v47);
    }

    else
    {
      v49 = 0;
    }

    *(a1 + 16) = v49;
  }

  if (a2[5])
  {
    v50 = a2[5];
  }

  else
  {
    v50 = (a2 + 3);
  }

  if (v17[5])
  {
    v51 = v17[5];
  }

  else
  {
    v51 = &v17[3];
  }

  RB::Symbol::tags_intersect((a1 + 24), v50, *(a2 + 12), v51, v17[6].u32[0]);
  result = *(a2 + 19) + ((v17[9].f32[1] - *(a2 + 19)) * *&a9);
  *(a1 + 76) = result;
  v53 = *(a1 + 104) & 0xFFFFFC00 | *(a2 + 26) & v17[13].i32[0] & 0x3FF;
  *(a1 + 104) = v53;
  v54 = v53 & 0xFFFC03FF | ((*(a2 + 26) >> 10) << 10);
  *(a1 + 104) = v54;
  v55 = v54 & 0xFFC3FFFF | (((*(a2 + 26) >> 18) & 0xF) << 18);
  *(a1 + 104) = v55;
  v56 = v55 & 0xFC3FFFFF | (((*(a2 + 26) >> 22) & 0xF) << 22);
  *(a1 + 104) = v56;
  v57 = v56 & 0xF3FFFFFF | (((*(a2 + 26) >> 26) & 3) << 26);
  *(a1 + 104) = v57;
  v58 = v57 & 0xBFFFFFFF | (((*(a2 + 26) >> 30) & 1) << 30);
  *(a1 + 104) = v58;
  *(a1 + 104) = a2[13] & 0x80000000 | v58 & 0x7FFFFFFF;
  *(a1 + 108) = *(a1 + 108) & 0xFE | *(a2 + 108) & 1;
  return result;
}

void RB::Symbol::anonymous namespace::mix_shape_stroke(RB::Symbol::_anonymous_namespace_ *this, RB::Symbol::Glyph::Shape *a2, RBPath a3, double a4, float64x2_t *a5, float64x2_t *a6, const RB::AffineTransform *a7, double a8)
{
  v16 = *(a2 + 5);
  if (v16 == &empty_path_callbacks)
  {
    return;
  }

  v61 = v15;
  v62 = v14;
  v63 = v13;
  v64 = v12;
  v65 = v11;
  v66 = v10;
  v67 = v8;
  v68 = v9;
  var1 = a3.var1;
  var0 = a3.var0;
  a3.var1 = *(a3.var0 + 5);
  if (a3.var1 == &empty_path_callbacks)
  {
    return;
  }

  v20 = *(a2 + 14);
  if (v20 != *(a3.var0 + 14))
  {
    return;
  }

  if (!v20)
  {
LABEL_8:
    v32 = *(a2 + 3);
    v31.var0 = *(a2 + 4);
    v33 = *(a2 + 2);
    a3.var0 = *(a3.var0 + 4);
    v36 = v31.var0 == v33 && v16 == v32 && a3.var0 == v33 && a3.var1 == v32;
    v59 = a4;
    if (!v36)
    {
      v31.var1 = v16;
      CanMix = RBPathCanMix(v31, a3);
      a4 = v59;
      if (!CanMix)
      {
        return;
      }

      LODWORD(v20) = *(a2 + 14);
    }

    if (*(this + 15) < v20)
    {
      RB::vector<RBColor,0ul,unsigned int>::reserve_slow(this + 48, v20);
      a4 = v59;
      LODWORD(v20) = *(a2 + 14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else if (!v20)
    {
      goto LABEL_30;
    }

    v38 = 0;
    v39 = 0;
    v40 = vdup_lane_s32(*&a4, 0);
    do
    {
      v41 = *(a2 + 6);
      v42 = *(var0 + 6);
      v43 = *(v42 + v38);
      if (*(v41 + v38) != v43)
      {
        v44 = v41 + v38;
        v45 = v42 + v38;
        v46 = *(v44 + 4);
        v47 = *(v45 + 4);
        v48 = *(v44 + 12);
        v49 = *(v45 + 12);
        v50 = *(this + 14);
        if (*(this + 15) < v50 + 1)
        {
          RB::vector<RBColor,0ul,unsigned int>::reserve_slow(this + 48, v50 + 1);
          LODWORD(a4) = LODWORD(v59);
          v50 = *(this + 14);
        }

        v51 = *(this + 6) + 16 * v50;
        *v51 = v43;
        *(v51 + 4) = vmla_f32(v46, v40, vsub_f32(v47, v46));
        *(v51 + 12) = v48 + ((v49 - v48) * *&a4);
        ++*(this + 14);
        LODWORD(v20) = *(a2 + 14);
      }

      ++v39;
      v38 += 16;
    }

    while (v39 < v20);
LABEL_30:
    v52.var0 = *(a2 + 4);
    if (v52.var0 == *(a2 + 2))
    {
      v52.var1 = *(a2 + 5);
      v53.var0 = *(var0 + 4);
      if (v52.var1 == *(a2 + 3) && v53.var0 == v52.var0 && *(var0 + 5) == v52.var1)
      {
        RB::path_ptr::operator=(this + 4, this + 2);
        goto LABEL_40;
      }
    }

    else
    {
      v52.var1 = *(a2 + 5);
      v53.var0 = *(var0 + 4);
    }

    v53.var1 = *(var0 + 5);
    RBPathMix(v52, v53, *&a4, var1, a5, a6, &v60);
    v56 = *(this + 4);
    v57 = *(this + 5);
    *(this + 2) = v60;
    *&v60 = v56;
    *(&v60 + 1) = v57;
    RBPathRelease(v56, v57);
LABEL_40:
    v58 = RB::Symbol::Glyph::Shape::stroke_length(a2, a8);
    *(this + 20) = v58 + ((RB::Symbol::Glyph::Shape::stroke_length(var0, a8) - v58) * *&v59);
    return;
  }

  v25 = *(a2 + 6);
  v26 = *(a3.var0 + 6);
  v27 = v20;
  while (1)
  {
    v29 = *v25;
    v25 += 4;
    v28 = v29;
    v30 = *v26;
    v26 += 4;
    if (v28 != v30)
    {
      break;
    }

    if (!--v27)
    {
      goto LABEL_8;
    }
  }
}

void *RB::Symbol::tags_intersect(void *__dst, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 && a5)
  {
    v9 = __dst;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 4 * v10);
      v14 = *(a4 + 4 * v12);
      if (v13 == v14)
      {
        v15 = *(v9 + 24);
        if (*(v9 + 28) < v15 + 1)
        {
          __dst = RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(v9, v15 + 1);
          v15 = *(v9 + 24);
        }

        v16 = *(v9 + 16);
        if (!v16)
        {
          v16 = v9;
        }

        *(v16 + 4 * v15) = v13;
        ++*(v9 + 24);
        ++v11;
        ++v12;
      }

      else if (v13 < v14)
      {
        ++v11;
      }

      else
      {
        ++v12;
      }

      if (a3 <= v11)
      {
        break;
      }

      v10 = v11;
    }

    while (v12 < a5);
  }

  return __dst;
}

unsigned int *RB::Symbol::tags_intersect(unsigned int *result, uint64_t a2, unint64_t a3)
{
  v3 = result[6];
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 2);
      if (!v10)
      {
        v10 = v7;
      }

      result = &v10[v8];
      v11 = *(a2 + 4 * v9);
      if (*result == v11)
      {
        ++v8;
      }

      else if (*result < v11)
      {
        v12 = v3 - 1;
        v7[6] = v12;
        if (v8 == v12)
        {
          return result;
        }

        result = memmove(result, result + 1, 4 * (v12 - v8));
        v3 = v7[6];
        continue;
      }

      ++v9;
    }

    while (v8 < v3 && v9 < a3);
  }

  return result;
}

unsigned int *RB::Symbol::tags_subtract(unsigned int *result, uint64_t a2, unint64_t a3)
{
  v3 = result[6];
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 2);
      if (!v10)
      {
        v10 = v7;
      }

      result = &v10[v8];
      v11 = *(a2 + 4 * v9);
      if (*result == v11)
      {
        v12 = v3 - 1;
        v7[6] = v12;
        v3 = v8;
        if (v8 != v12)
        {
          result = memmove(result, result + 1, 4 * (v12 - v8));
          v3 = v7[6];
        }
      }

      else if (*result < v11)
      {
        ++v8;
        continue;
      }

      ++v9;
    }

    while (v8 < v3 && v9 < a3);
  }

  return result;
}

uint64_t RB::Symbol::Glyph::layer_flags(RB::Symbol::Glyph *this, int a2, int a3)
{
  v3 = this + 112;
  if (*(this + 56))
  {
    v3 = *(this + 56);
  }

  v4 = *(this + 114);
  if (!v4)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v6 = (v3 + 104);
  v7 = 112 * v4;
  do
  {
    v8 = *v6;
    v6 += 28;
    v9 = v8 & 0x3FF;
    if ((v9 & a2) != a3)
    {
      v9 = 0;
    }

    result = v9 | result;
    v7 -= 112;
  }

  while (v7);
  return result;
}

uint64_t RB::Symbol::Glyph::intersect_layer_flags(RB::Symbol::Glyph *this, int a2, int a3)
{
  v3 = *(this + 56);
  if (!v3)
  {
    v3 = this + 112;
  }

  v4 = *(this + 114);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = (v3 + 104);
  v7 = 112 * v4;
  v8 = -1;
  do
  {
    v9 = *v6;
    v6 += 28;
    v10 = v9 & 0x3FF;
    v5 |= (v10 & a2) == a3;
    if ((v10 & a2) != a3)
    {
      v10 = -1;
    }

    v8 &= v10;
    v7 -= 112;
  }

  while (v7);
  if (v5)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void RB::Symbol::Glyph::Sublayers::draw_layers(RB::Symbol::Glyph::Sublayers *this, _RBDrawingState *a2, const RB::AffineTransform *a3, const RB::Symbol::Presentation *a4)
{
  v5 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v8 = [RBDrawingStateGetDisplayList(a2) profile];
  v11 = rb_profile_supports_porter_duff_blending(v8);
  v40 = 0;
  v41 = 0;
  v42 = 8;
  if (v11)
  {
    v12 = RBDrawingStateBeginLayer(a2, 0);
  }

  else
  {
    v13 = *(this + 86);
    v12 = a2;
    if (v13)
    {
      v9 = 0;
      v14 = 112 * v13 - 8;
      __asm { FMOV            V9.2S, #1.0 }

      do
      {
        v20 = *(this + 42);
        if (!v20)
        {
          v20 = this;
        }

        v21 = v20 + v14 - 104;
        if (*(v20 + v14))
        {
          v22 = a2;
          if (v9)
          {
            v23 = v40;
            if (!v40)
            {
              v23 = __dst;
            }

            v22 = *&v23[8 * v9 - 8];
          }

          v24 = RBDrawingStateInit(v22);
          v38 = 0;
          v35 = 0x3F80000000000000;
          v36 = 0;
          v37 = _D9;
          RB::Symbol::Glyph::Layer::clip(v21, v24, 1, &v35, v5, a4);
          v25 = v41;
          v9 = v41 + 1;
          if (v42 < v41 + 1)
          {
            RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v9);
            v25 = v41;
            v9 = v41 + 1;
          }

          v26 = v40;
          if (!v40)
          {
            v26 = __dst;
          }

          *&v26[8 * v25] = v24;
          v41 = v9;
        }

        v14 -= 112;
      }

      while (v14 != -8);
      v12 = a2;
    }
  }

  if (*(this + 42))
  {
    v27 = *(this + 42);
  }

  else
  {
    v27 = this;
  }

  v28 = *(this + 86);
  if (v28)
  {
    v29 = 112 * v28;
    __asm { FMOV            V9.2S, #1.0 }

    do
    {
      if (*(v27 + 104))
      {
        if (v11)
        {
          v38 = 0;
          v35 = 0x3F80000000000000;
          v36 = 0;
          v37 = _D9;
          RB::Symbol::Glyph::Layer::draw(v27, v12, 23, &v35, v5, a4);
        }

        else
        {
          v31 = v40;
          if (!v40)
          {
            v31 = __dst;
          }

          RBDrawingStateDestroy(*&v31[8 * v41-- - 8], v9, v10);
        }
      }

      v32 = *(v27 + 19);
      if (v32 > 0.0)
      {
        LODWORD(v33) = v12;
        if (v41)
        {
          v34 = v40;
          if (!v40)
          {
            v34 = __dst;
          }

          v33 = *&v34[8 * v41 - 8];
        }

        v35 = 0x3F80000000000000;
        v36 = 0;
        LODWORD(v37) = 1065353216;
        *(&v37 + 1) = v32;
        LODWORD(v38) = 0;
        RB::Symbol::Glyph::Layer::draw(v27, v33, 0, &v35, v5, a4);
      }

      v27 = (v27 + 112);
      v29 -= 112;
    }

    while (v29);
  }

  if (v11)
  {
    RBDrawingStateDrawLayer(a2, v12, 0, 1.0);
  }

  if (v40)
  {
    free(v40);
  }
}

void sub_195D84C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK2RB6Symbol5Glyph5Layer4drawEP15_RBDrawingState7RBColor11RBBlendModeRKNS2_10DrawParamsERKNS_15AffineTransformERKNS0_12PresentationE_block_invoke(_DWORD *a1, void *a2, double a3, double a4, double a5, double a6)
{
  LODWORD(a3) = a1[8];
  LODWORD(a4) = a1[9];
  LODWORD(a5) = a1[10];
  LODWORD(a6) = a1[11];
  return [a2 setColor:1 colorSpace:{a3, a4, a5, a6}];
}

uint64_t RB::Symbol::Glyph::Layer::append_path(RBPath **a1, RB::Path::Storage *this, float32x2_t *a3, double a4, double a5, float32x2_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 26);
  v9 = (v8 >> 28) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v15 = *a1;
      var1 = (*a1)[21].var1;

      return RB::Symbol::Glyph::Sublayers::append_path(v15, this, var1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      v11 = 0.0078125;
      v12 = vmvn_s8(vceq_f32(*a3, 0x3F80000000000000));
      v13 = vpmax_u32(v12, v12).u32[0];
      v14 = *(a1 + 20);
      if (v14 <= 0.0)
      {
        v18 = *a1;
        if (v13 < 0 && LODWORD(v18[3].var1) || LODWORD(v18[4].var1) && (*&a3[1] || (LODWORD(v11) = 1.0, a3[2].f32[0] != 1.0)))
        {
          v32 = 0;
          v33 = 0x400000000;
          RB::Symbol::Glyph::Layer::resolve_draw_transforms(a1, a3, &__src, COERCE_DOUBLE(0x400000000), v11, a6);
          *&v29.f64[0] = &unk_1F0A3F068;
          *&v29.f64[1] = this;
          v19 = *a1;
          v20.i32[0] = *(a1 + 15);
          v21 = vrecpe_f32(v20);
          v22 = vmul_f32(vrecps_f32(v20, v21), v21);
          LODWORD(v23) = vmul_f32(v22, vrecps_f32(v20, v22)).u32[0];
          if (v32)
          {
            p_src = v32;
          }

          else
          {
            p_src = &__src;
          }

          RB::Path::ClipStroke::Transform::Transform(&v26, &v29, 0, 0, (*a1)[3].var0, LODWORD((*a1)[3].var1), p_src, v33, COERCE_FLOAT32_T(*a3), COERCE_FLOAT32_T(HIDWORD(*a3)), v23 * 0.5, 0);
          v25 = 2;
          if (!LODWORD(v19[3].var1))
          {
            v25 = 1;
          }

          RBPathMap(v19[v25].var0, v19[v25].var1, &v26, 0);
          *&v26.f64[0] = &unk_1F0A3F928;
          if (v28)
          {
            free(v28);
          }

          if (v32)
          {
            free(v32);
          }
        }

        else
        {
          RB::Path::Storage::append_path(this, v18[1]);
        }
      }

      else
      {
        v26 = vshl_s32(vshl_u32(vdup_n_s32(v8), 0x400000006), 0xFFFFFFE2FFFFFFE4);
        v27 = 0;
        __src = (v14 / *(a1 + 15));
        v31 = xmmword_195E443D0;
        RB::Path::Storage::append_element(this, 0x13, &__src, &v26);
        if (v13 < 0)
        {
          v29 = vcvtq_f64_f32(*a3);
          RB::Path::Storage::append_element(this, 0x12, v29.f64, 0);
          RB::Path::Storage::append_path(this, (*a1)[1]);
          RB::Path::Storage::append_element(this, 0x10, 0, 0);
        }

        else
        {
          RB::Path::Storage::append_path(this, (*a1)[1]);
        }

        RB::Path::Storage::append_element(this, 0x10, 0, 0);
      }
    }

    return 1;
  }
}

void sub_195D84F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (a52)
  {
    free(a52);
  }

  if (STACK[0x2C8])
  {
    free(STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

void RB::Symbol::Glyph::Layer::resolve_draw_transforms(_DWORD *a1, float32x2_t *a2, uint64_t a3, double a4, double a5, float32x2_t a6)
{
  v88 = *MEMORY[0x1E69E9840];
  v78 = *a1;
  v6 = *(*a1 + 72);
  if (v6)
  {
    v7 = a2;
    if (a2[1])
    {
      v9 = vceq_f32(*a2, 0x3F80000000000000);
      if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) == 0 || a2[2].f32[0] != 1.0)
      {
        v10 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        do
        {
          v11 = *(v78 + 64);
          v12 = v10;
          v13 = (v11 + (v10 << 6));
          v14 = *v13;
          if (++v10 >= v6)
          {
            v15 = 1;
          }

          else
          {
            v15 = 1;
            while (*(v11 + ((v12 + v15) << 6)) == v14)
            {
              ++v15;
              if (!(v12 - v6 + v15))
              {
                v15 = v6 - v12;
                v10 = v6;
                goto LABEL_13;
              }
            }

            v10 = v12 + v15;
          }

LABEL_13:
          v16 = v7[1];
          v17 = *(*&v16 + 96);
          if (!*&v17)
          {
            v17 = v7[1];
          }

          v18 = *(*&v16 + 104);
          if (v18)
          {
            v19 = 24 * v18;
            v20 = v17;
            do
            {
              if (**&v20 == v14)
              {
                break;
              }

              *&v20 += 24;
              v19 -= 24;
            }

            while (v19);
          }

          else
          {
            v20 = v17;
          }

          if (*&v20 != *&v17 + 24 * v18)
          {
            v21 = *(v13 + 1);
            if (!v21)
            {
              v21 = *a1;
            }

            v22 = *(*&v20 + 8);
            v23 = *(&v22 + 1);
            v24 = vabds_f32(*(&v22 + 1), *&v22);
            v25 = *(&v22 + 1) + 0.0001;
            if (v24 >= 0.0001)
            {
              LODWORD(v25) = HIDWORD(*(*&v20 + 8));
            }

            v77 = *(*&v20 + 8);
            if (v24 >= 0.0001)
            {
              v26 = *&v22;
            }

            else
            {
              v26 = *&v22 + -0.0001;
            }

            v82 = &unk_1F0A3DA60;
            a6.i32[0] = a1[15];
            v27 = vrecpe_f32(a6);
            v28 = vmul_f32(vrecps_f32(a6, v27), v27);
            RB::Path::ClipStroke::Transform::Transform(v86, &v82, 12, 0, *(v21 + 48), *(v21 + 56), 0, 0, v26, v25, vmul_f32(v28, vrecps_f32(a6, v28)).f32[0] * 0.5, &v83);
            v76 = v10;
            v29 = 32;
            if (*(v21 + 40) == 0x195E47920)
            {
              v29 = 16;
            }

            v30 = 40;
            if (*(v21 + 40) == 0x195E47920)
            {
              v30 = 24;
            }

            RBPathMap(*(v21 + v29), *(v21 + v30), v86, 0);
            if (v15)
            {
              v32 = 0;
              v33 = v15;
              v34 = (v23 - *&v77) < 0.0001 || (v23 - *&v77) >= 0.9999;
              while (1)
              {
                v35 = (*(v78 + 64) + ((v12 + v32) << 6));
                v36 = v35[2].u32[1];
                v37 = *(MEMORY[0x1E695EFD0] + 16);
                *&v81.a = *MEMORY[0x1E695EFD0];
                *&v81.c = v37;
                *&v81.tx = *(MEMORY[0x1E695EFD0] + 32);
                v38 = (v23 - *&v77) < 0.9999;
                if (!v34)
                {
                  if (*&v77 == 0.0)
                  {
                    v38 = v23 < v35[6].f32[0];
                  }

                  else
                  {
                    v38 = *&v77 > v35[6].f32[1];
                  }
                }

                v39 = *(a3 + 264);
                if (*(a3 + 268) < v39 + 1)
                {
                  RB::vector<RB::Path::ClipStroke::SubpathTransform,4ul,unsigned int>::reserve_slow(a3, v39 + 1);
                  v39 = *(a3 + 264);
                }

                v40 = *(a3 + 256);
                if (!v40)
                {
                  v40 = a3;
                }

                v41 = v40 + (v39 << 6);
                *v41 = v36;
                *(v41 + 8) = *&v81.a;
                *(v41 + 24) = *&v81.c;
                v42.i32[1] = HIDWORD(v81.tx);
                *(v41 + 40) = *&v81.tx;
                *(v41 + 56) = v38;
                v43 = *(a3 + 264);
                *(a3 + 264) = v43 + 1;
                if (!v35->i32[0])
                {
                  goto LABEL_74;
                }

                v44 = *(a3 + 256);
                if (!v44)
                {
                  v44 = a3;
                }

                v45 = v44 + (v43 << 6);
                if (*(v45 + 56) & 1) != 0 || v35[7].i8[0] == 1 && (v35[7].i8[1])
                {
                  goto LABEL_74;
                }

                v42.i32[0] = 1.0;
                if (*(*(v78 + 64) + (v12 << 6) + 58) == 1)
                {
                  v42.i32[1] = HIDWORD(v77);
                  if (*&v77 == 0.0)
                  {
                    v46 = (v23 - v35[6].f32[0]) / (fminf((0.2 / *(*&v20 + 16)) + v35[6].f32[0], 1.0) - v35[6].f32[0]);
                    if (v46 < 0.0)
                    {
                      v46 = 0.0;
                    }

                    if (v46 > 1.0)
                    {
                      v46 = 1.0;
                    }

                    v42.f32[0] = (v46 * 0.5) + 0.5;
                  }

                  else
                  {
                    v42.i32[0] = a2[2].i32[0];
                  }
                }

                if (v84)
                {
                  break;
                }

LABEL_63:
                if (v42.f32[0] != 1.0)
                {
                  v49 = v35[3];
                  v50 = v35[4];
                  t1.b = 0.0;
                  t1.c = 0.0;
                  t1.a = v42.f32[0];
                  t1.d = v42.f32[0];
                  v51 = vmla_f32(v49, 0x3F0000003F000000, vsub_f32(v50, v49));
                  *&t1.tx = vcvtq_f64_f32(vmls_lane_f32(v51, v51, v42, 0));
                  v52 = *(v45 + 8);
                  v53 = *(v45 + 40);
                  *&t2.c = *(v45 + 24);
                  *&t2.tx = v53;
                  *&t2.a = v52;
                  CGAffineTransformConcat(&v81, &t1, &t2);
LABEL_73:
                  v72 = *&v81.a;
                  v73 = *&v81.c;
                  a6.i32[1] = HIDWORD(v81.tx);
                  *(v45 + 40) = *&v81.tx;
                  *(v45 + 24) = v73;
                  *(v45 + 8) = v72;
                }

LABEL_74:
                if (++v32 == v33)
                {
                  goto LABEL_75;
                }
              }

              v47 = (v83 + 32);
              v48 = 48 * v84;
              while (LODWORD(v47[-2].f64[0]) != v35[2].i32[0])
              {
                v47 += 3;
                v48 -= 48;
                if (!v48)
                {
                  goto LABEL_63;
                }
              }

              v54 = vsub_f32(v35[4], v35[3]);
              v55 = vmvn_s8(vceqz_f32(v54));
              if ((vpmax_u32(v55, v55).u32[0] & 0x80000000) != 0)
              {
                v56 = vmul_f32(v54, v54);
                v56.i32[0] = vadd_f32(v56, vdup_lane_s32(v56, 1)).u32[0];
                v57 = vrsqrte_f32(v56.u32[0]);
                v58 = vmul_f32(vrsqrts_f32(v56.u32[0], vmul_f32(v57, v57)), v57);
                v54 = vmul_n_f32(v54, vmul_f32(v58, vrsqrts_f32(v56.u32[0], vmul_f32(v58, v58))).f32[0]);
              }

              v59 = v47[-1];
              v60 = vcvt_f32_f64(vsubq_f64(*v47, v59));
              v61 = vmvn_s8(vceqz_f32(v60));
              if ((vpmax_u32(v61, v61).u32[0] & 0x80000000) != 0)
              {
                v62 = vmul_f32(v60, v60);
                v62.i32[0] = vadd_f32(v62, vdup_lane_s32(v62, 1)).u32[0];
                v63 = vrsqrte_f32(v62.u32[0]);
                v31 = vmul_f32(vrsqrts_f32(v62.u32[0], vmul_f32(v63, v63)), v63);
                v60 = vmul_n_f32(v60, vmul_f32(v31, vrsqrts_f32(v62.u32[0], vmul_f32(v31, v31))).f32[0]);
              }

              if (v35[7].i8[1])
              {
                v64 = 1065353216;
              }

              else
              {
                v65 = vmul_f32(v60, v54);
                v31.f32[0] = -v54.f32[1];
                v66 = vmul_f32(v60, vzip1_s32(v31, v54));
                v64 = vadd_f32(vzip1_s32(v65, v66), vzip2_s32(v65, v66));
              }

              v67 = vmul_n_f32(v64, v42.f32[0]);
              v68 = vmuls_lane_f32(-v42.f32[0], v64, 1);
              v69 = vcvtq_f64_f32(v67);
              *(v45 + 8) = v69;
              *(v45 + 24) = v68;
              *(v45 + 32) = v69.f64[0];
              *(v45 + 40) = v59;
              v70 = *(v45 + 8);
              v71 = *(v45 + 40);
              *&t1.c = *(v45 + 24);
              *&t1.tx = v71;
              *&t1.a = v70;
              CGAffineTransformTranslate(&v81, &t1, -COERCE_FLOAT(*&v35[3]), -COERCE_FLOAT(HIDWORD(*&v35[3])));
              goto LABEL_73;
            }

LABEL_75:
            *&v86[0].f64[0] = &unk_1F0A3F928;
            if (v87)
            {
              free(v87);
            }

            v6 = *(v78 + 72);
            v7 = a2;
            v10 = v76;
          }

          v84 = 0;
        }

        while (v10 < v6);
        if (v83)
        {
          free(v83);
        }
      }
    }
  }
}

void sub_195D85664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (STACK[0x248])
  {
    free(STACK[0x248]);
  }

  if (a38)
  {
    free(a38);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::Symbol::Glyph::Sublayers::append_path(RB::Symbol::Glyph::Sublayers **this, RB::Path::Storage *a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = this;
  if (a3 != 1)
  {
    HIWORD(v52) = 2;
    RB::Path::Storage::append_element(a2, 0x14, 0, (&v52 + 2));
    v15 = 0;
    do
    {
      v16 = a3 + v15 - 1;
      if (v16 < 0)
      {
        v22 = 0;
        goto LABEL_30;
      }

      v17 = *(v5 + 42);
      if (!v17)
      {
        v17 = v5;
      }

      v18 = (v17 + 112 * (v16 & 0x7FFFFFFF));
      v19 = v18[19];
      if (v19 > 0.0 && v19 != 1.0)
      {
        return 0;
      }

      --v15;
    }

    while ((v18[26] & 1) == 0);
    v21 = a3 + v15;
    v22 = v21 + 1;
    v23 = (v17 + 112 * v21 - 8);
    while (v21 >= 1)
    {
      v24 = v21;
      if (*(v23 - 7) <= 0.0)
      {
        v25 = *v23;
        v23 -= 28;
        --v21;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_49;
    }

    v24 = 0;
LABEL_49:
    LOWORD(v52) = 3;
    RB::Path::Storage::append_element(a2, 0x14, 0, &v52);
    appended = RB::Symbol::Glyph::Sublayers::append_path(v5, a2, v24);
    if ((appended & 1) == 0)
    {
      return 0;
    }

    if (v24 >= v22)
    {
      RB::Path::Storage::append_element(a2, 0x10, 0, 0);
    }

    else
    {
      v51 = appended;
      v39 = 112 * v24;
      do
      {
        RB::Path::Storage::append_element(a2, 0x15, 0, 0);
        v40 = *(v5 + 42);
        if (!v40)
        {
          v40 = v5;
        }

        v41 = v40 + v39;
        v43 = *(v40 + v39 + 60);
        v42 = *(v40 + v39 + 64);
        v44 = v42 != 0.0 || v43 != 1.0;
        if (v44)
        {
          *&v45 = v43;
          if (v42 == 0.0)
          {
            v46 = vdupq_lane_s64(v45, 0);
            v47 = 0uLL;
            v48 = v46;
            v49 = xmmword_195E42760;
          }

          else
          {
            v49 = xmmword_195E42760;
            v47 = vmulq_n_f64(xmmword_195E42760, v42);
            v46 = vdupq_lane_s64(COERCE__INT64(-v43), 0);
            v48 = vdupq_lane_s64(v45, 0);
          }

          v53 = vmulq_f64(v46, v49);
          v54 = vmulq_f64(v48, xmmword_195E42770);
          v55 = v47;
          RB::Path::Storage::append_element(a2, 0x11, 0, &v53);
        }

        v53 = 0x3F80000000000000uLL;
        *&v54.f64[0] = 1065353216;
        if ((v44 & RB::Symbol::Glyph::Layer::append_path(v41, a2)) == 1)
        {
          RB::Path::Storage::append_element(a2, 0x10, 0, 0);
        }

        v39 += 112;
        ++v24;
      }

      while (v24 < v22);
      RB::Path::Storage::append_element(a2, 0x10, 0, 0);
      if (!v51)
      {
        return 0;
      }
    }

LABEL_30:
    if (v22 >= a3)
    {
      goto LABEL_71;
    }

    v26 = 112 * v22;
    v27 = a3 - v22;
    while (1)
    {
      v28 = *(v5 + 42);
      if (!v28)
      {
        v28 = v5;
      }

      v29 = (v28 + v26);
      if (*(v28 + v26 + 76) > 0.0)
      {
        v31 = v29[15];
        v30 = v29[16];
        v32 = v30 != 0.0 || v31 != 1.0;
        if (v32)
        {
          if (v30 == 0.0)
          {
            v33 = vdupq_lane_s64(COERCE__INT64(v31), 0);
            v34 = 0uLL;
            v35 = v33;
          }

          else
          {
            v34 = vmulq_n_f64(xmmword_195E42760, v30);
            *&v36 = v31;
            v33 = vdupq_lane_s64(COERCE__INT64(-v31), 0);
            v35 = vdupq_lane_s64(v36, 0);
          }

          v53 = vmulq_f64(v33, xmmword_195E42760);
          v54 = vmulq_f64(v35, xmmword_195E42770);
          v55 = v34;
          RB::Path::Storage::append_element(a2, 0x11, 0, &v53);
        }

        v53 = 0x3F80000000000000uLL;
        *&v54.f64[0] = 1065353216;
        v37 = RB::Symbol::Glyph::Layer::append_path(v29, a2);
        if ((v32 & v37) == 1)
        {
          RB::Path::Storage::append_element(a2, 0x10, 0, 0);
        }

        if (!v37)
        {
          return 0;
        }
      }

      v26 += 112;
      if (!--v27)
      {
        goto LABEL_71;
      }
    }
  }

  if (this[42])
  {
    v5 = this[42];
  }

  v6 = *(v5 + 19);
  if (v6 <= 0.0)
  {
    return 1;
  }

  if (v6 != 1.0)
  {
    return 0;
  }

  v8 = *(v5 + 15);
  v7 = *(v5 + 16);
  v9 = v7 != 0.0 || v8 != 1.0;
  if (v9)
  {
    if (v7 == 0.0)
    {
      v10 = vdupq_lane_s64(COERCE__INT64(v8), 0);
      v11 = 0uLL;
      v12 = v10;
    }

    else
    {
      v11 = vmulq_n_f64(xmmword_195E42760, v7);
      *&v50 = v8;
      v10 = vdupq_lane_s64(COERCE__INT64(-v8), 0);
      v12 = vdupq_lane_s64(v50, 0);
    }

    v53 = vmulq_f64(v10, xmmword_195E42760);
    v54 = vmulq_f64(v12, xmmword_195E42770);
    v55 = v11;
    RB::Path::Storage::append_element(a2, 0x11, 0, &v53);
  }

  v53 = 0x3F80000000000000uLL;
  *&v54.f64[0] = 1065353216;
  result = RB::Symbol::Glyph::Layer::append_path(v5, a2);
  if ((v9 & result) == 1)
  {
LABEL_71:
    RB::Path::Storage::append_element(a2, 0x10, 0, 0);
    return 1;
  }

  return result;
}

double RB::Symbol::Glyph::Layer::gradient_axis(RB::Symbol::Glyph::Layer *this)
{
  v1 = *(this + 21);
  if (v1 == 0.0)
  {
    return 0.0;
  }

  if (v1 == 90.0 || v1 == -270.0)
  {
    v3.f64[0] = 0.0;
    sinval = 1.0;
  }

  else if (v1 == 180.0 || v1 == -180.0)
  {
    v3.f64[0] = -1.0;
    sinval = 0.0;
  }

  else if (v1 == 270.0 || v1 == -90.0)
  {
    v3.f64[0] = 0.0;
    sinval = -1.0;
  }

  else
  {
    v8 = __sincos_stret(v1 * 0.0174532925);
    v3.f64[0] = v8.__cosval;
    sinval = v8.__sinval;
  }

  v9.f64[0] = -sinval;
  v9.f64[1] = v3.f64[0];
  v3.f64[1] = sinval;
  __asm
  {
    FMOV            V0.2D, #0.5
    FMOV            V4.2D, #-0.5
  }

  *&result = *&vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlsq_f64(_Q0, _Q0, v3), _Q4, v9), _Q0, v9), 0, v3);
  return result;
}

void RB::Symbol::Glyph::Sublayers::print(RB::Symbol::Glyph::Sublayers *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "sublayers");
  if (*(this + 42))
  {
    v4 = *(this + 42);
  }

  else
  {
    v4 = this;
  }

  v5 = *(this + 86);
  if (v5)
  {
    v6 = (v4 + 104);
    v7 = 112 * v5;
    do
    {
      if (*v6)
      {
        v8 = "eraser-layer";
      }

      else
      {
        v8 = "layer";
      }

      RB::SexpString::push(a2, v8);
      v9 = *(v6 - 7);
      if (v9 != 1.0)
      {
        RB::SexpString::printf(a2, 0, "(alpha %.2g)", v9);
      }

      if ((*v6 & 0x30000000) == 0x20000000)
      {
        RB::Symbol::Glyph::Sublayers::print(*(v6 - 13), a2);
      }

      RB::SexpString::pop(a2);
      v6 += 28;
      v7 -= 112;
    }

    while (v7);
  }

  RB::SexpString::pop(a2);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,0>(uint64_t result, uint64_t a2, float *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(a2 + 4);
  v7 = *(result + 4);
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = v10 < v6;
  if (*a3 != v4)
  {
    v11 = *a3 < v4;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      *(result + 4) = v10;
LABEL_18:
      v6 = v7;
      v4 = v5;
      *(a3 + 1) = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    *(result + 4) = v6;
    *(a2 + 4) = v7;
    v4 = *a3;
    v6 = *(a3 + 1);
    v16 = v6 < v7;
    if (*a3 != v5)
    {
      v16 = *a3 < v5;
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      *(a2 + 4) = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    *(a2 + 4) = v10;
    *(a3 + 1) = v6;
    v12 = *result;
    v13 = *(a2 + 4);
    v14 = *(result + 4);
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      *(result + 4) = v13;
      *(a2 + 4) = v14;
      v4 = *a3;
      v6 = *(a3 + 1);
    }
  }

  else
  {
    v6 = *(a3 + 1);
    v4 = *a3;
  }

LABEL_20:
  v17 = *(a4 + 4);
  v18 = v17 < v6;
  if (*a4 != v4)
  {
    v18 = *a4 < v4;
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    *(a3 + 1) = v17;
    *(a4 + 4) = v6;
    v19 = *a2;
    v20 = *(a3 + 1);
    v21 = *(a2 + 4);
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      *(a2 + 4) = v20;
      *(a3 + 1) = v21;
      v23 = *result;
      v24 = *(a2 + 4);
      v25 = *(result + 4);
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        *(result + 4) = v24;
        *(a2 + 4) = v25;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 8);
        v6 = *v4;
        v7 = *(v4 + 12);
        v8 = *(v4 + 4);
        v4 = v2;
        v9 = v7 < v8;
        if (v5 != v6)
        {
          v9 = v5 < v6;
        }

        if (v9)
        {
          v10 = v3;
          while (1)
          {
            v11 = result + v10;
            *(v11 + 8) = v6;
            *(v11 + 12) = *(result + v10 + 4);
            if (!v10)
            {
              break;
            }

            v6 = *(v11 - 8);
            v12 = v7 < *(v11 - 4);
            if (v5 != v6)
            {
              v12 = v5 < v6;
            }

            v10 -= 8;
            if (!v12)
            {
              v13 = result + v10 + 8;
              goto LABEL_14;
            }
          }

          v13 = result;
LABEL_14:
          *v13 = v5;
          *(v13 + 4) = v7;
        }

        v2 = v4 + 8;
        v3 += 8;
      }

      while (v4 + 8 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = (result + 12);
      do
      {
        v4 = *(result + 8);
        v5 = *result;
        v6 = *(result + 12);
        v7 = *(result + 4);
        result = v2;
        v8 = v6 < v7;
        if (v4 != v5)
        {
          v8 = v4 < v5;
        }

        if (v8)
        {
          v9 = v3;
          do
          {
            v10 = v9;
            *(v9 - 1) = v5;
            v11 = *(v9 - 2);
            v9 -= 2;
            *v10 = v11;
            v5 = *(v10 - 5);
            v12 = v6 < *(v10 - 4);
            if (v4 != v5)
            {
              v12 = v4 < v5;
            }
          }

          while (v12);
          *(v9 - 1) = v4;
          *v9 = v6;
        }

        v2 = result + 8;
        v3 += 2;
      }

      while (result + 8 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned int> *,std::__less<void,void> &>(unint64_t a1, float *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a2 - 2);
  v5 = v3 < *(a2 - 1);
  if (*a1 != v4)
  {
    v5 = *a1 < v4;
  }

  if (v5)
  {
    v6 = a1;
    do
    {
      v7 = *(v6 + 8);
      v6 += 8;
      v8 = v3 < *(v6 + 4);
      v9 = v2 < v7;
      if (v2 != v7)
      {
        v8 = v9;
      }
    }

    while (!v8);
  }

  else
  {
    v10 = a1 + 8;
    do
    {
      v6 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *v10;
      v12 = v3 < *(v10 + 4);
      v13 = v2 < v11;
      if (v2 == v11)
      {
        v13 = v12;
      }

      v10 = v6 + 8;
    }

    while (!v13);
  }

  if (v6 < a2)
  {
    do
    {
      v14 = *(a2 - 2);
      a2 -= 2;
      v15 = v3 < *(a2 + 1);
      v16 = v2 < v14;
      if (v2 != v14)
      {
        v15 = v16;
      }
    }

    while (v15);
  }

  if (v6 < a2)
  {
    v17 = *v6;
    v18 = *a2;
    do
    {
      *v6 = v18;
      *a2 = v17;
      v19 = *(v6 + 4);
      *(v6 + 4) = a2[1];
      *(a2 + 1) = v19;
      do
      {
        v20 = *(v6 + 8);
        v6 += 8;
        v17 = v20;
        v21 = v3 < *(v6 + 4);
        v22 = v2 < v20;
        if (v2 != v20)
        {
          v21 = v22;
        }
      }

      while (!v21);
      do
      {
        v23 = *(a2 - 2);
        a2 -= 2;
        v18 = v23;
        v24 = v3 < *(a2 + 1);
        v25 = v2 < v23;
        if (v2 != v23)
        {
          v24 = v25;
        }
      }

      while (v24);
    }

    while (v6 < a2);
  }

  if (v6 - 8 != a1)
  {
    *a1 = *(v6 - 8);
    *(a1 + 4) = *(v6 - 4);
  }

  *(v6 - 8) = v2;
  *(v6 - 4) = v3;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned int> *,std::__less<void,void> &>(uint64_t a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 4);
  do
  {
    v5 = *(a1 + v2 + 8);
    v6 = *(a1 + v2 + 12) < v4;
    if (v5 != v3)
    {
      v6 = v5 < v3;
    }

    v2 += 8;
  }

  while (v6);
  v7 = a1 + v2;
  if (v2 == 8)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v11 = *(a2 - 2);
      a2 -= 2;
      v12 = *(a2 + 1) < v4;
      v13 = v11 < v3;
      if (v11 != v3)
      {
        v12 = v13;
      }
    }

    while (!v12);
  }

  else
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v9 = *(a2 + 1) < v4;
      v10 = v8 < v3;
      if (v8 != v3)
      {
        v9 = v10;
      }
    }

    while (!v9);
  }

  if (v7 >= a2)
  {
    v15 = v7;
  }

  else
  {
    v14 = *a2;
    v15 = v7;
    v16 = a2;
    do
    {
      *v15 = v14;
      *v16 = v5;
      v17 = *(v15 + 4);
      *(v15 + 4) = v16[1];
      *(v16 + 1) = v17;
      do
      {
        v18 = *(v15 + 8);
        v15 += 8;
        v5 = v18;
        v19 = *(v15 + 4) < v4;
        v20 = v18 < v3;
        if (v18 != v3)
        {
          v19 = v20;
        }
      }

      while (v19);
      do
      {
        v21 = *(v16 - 2);
        v16 -= 2;
        v14 = v21;
        v22 = *(v16 + 1) < v4;
        v23 = v21 < v3;
        if (v21 != v3)
        {
          v22 = v23;
        }
      }

      while (!v22);
    }

    while (v15 < v16);
  }

  if (v15 - 8 != a1)
  {
    *a1 = *(v15 - 8);
    *(a1 + 4) = *(v15 - 4);
  }

  *(v15 - 8) = v3;
  *(v15 - 4) = v4;
  return v15 - 8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 8);
        v6 = *a1;
        v7 = *(a2 - 4);
        v8 = *(a1 + 4);
        v9 = v7 < v8;
        if (v5 != *a1)
        {
          v9 = v5 < *a1;
        }

        if (v9)
        {
          *a1 = v5;
          *(a2 - 8) = v6;
          *(a1 + 4) = v7;
LABEL_69:
          result = 1;
          *(a2 - 4) = v8;
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v27 = *(a1 + 8);
      v28 = *a1;
      v29 = *(a1 + 12);
      v8 = *(a1 + 4);
      if (v27 == *a1)
      {
        v30 = v29 < v8;
      }

      else
      {
        v30 = v27 < *a1;
      }

      v31 = *(a2 - 8);
      v32 = *(a2 - 4);
      v33 = v32 < v29;
      if (v31 != v27)
      {
        v33 = v31 < v27;
      }

      if (v30)
      {
        if (v33)
        {
          *a1 = v31;
          *(a2 - 8) = v28;
          *(a1 + 4) = v32;
          goto LABEL_69;
        }

        *a1 = v27;
        *(a1 + 8) = v28;
        *(a1 + 4) = v29;
        *(a1 + 12) = v8;
        v64 = *(a2 - 8);
        v65 = *(a2 - 4);
        v66 = v65 < v8;
        if (v64 != v28)
        {
          v66 = v64 < v28;
        }

        if (v66)
        {
          *(a1 + 8) = v64;
          *(a2 - 8) = v28;
          *(a1 + 12) = v65;
          goto LABEL_69;
        }
      }

      else if (v33)
      {
        *(a1 + 8) = v31;
        *(a2 - 8) = v27;
        *(a1 + 12) = v32;
        *(a2 - 4) = v29;
        v47 = *(a1 + 8);
        v48 = *a1;
        v49 = *(a1 + 12);
        v50 = *(a1 + 4);
        v51 = v49 < v50;
        if (v47 != *a1)
        {
          v51 = v47 < *a1;
        }

        if (v51)
        {
          *a1 = v47;
          *(a1 + 8) = v48;
          *(a1 + 4) = v49;
          result = 1;
          *(a1 + 12) = v50;
          return result;
        }
      }

      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,0>(a1, a1 + 8, (a1 + 16), a2 - 8);
      return 1;
    case 5:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,0>(a1, a1 + 8, (a1 + 16), a1 + 24);
      v10 = *(a2 - 8);
      v11 = *(a1 + 24);
      v12 = *(a2 - 4);
      v13 = *(a1 + 28);
      v14 = v12 < v13;
      if (v10 != v11)
      {
        v14 = v10 < v11;
      }

      if (v14)
      {
        *(a1 + 24) = v10;
        *(a2 - 8) = v11;
        *(a1 + 28) = v12;
        *(a2 - 4) = v13;
        v15 = *(a1 + 24);
        v16 = *(a1 + 16);
        v17 = *(a1 + 28);
        v18 = *(a1 + 20);
        v19 = v17 < v18;
        if (v15 != v16)
        {
          v19 = v15 < v16;
        }

        if (v19)
        {
          *(a1 + 16) = v15;
          *(a1 + 24) = v16;
          *(a1 + 20) = v17;
          *(a1 + 28) = v18;
          v20 = *(a1 + 8);
          v21 = *(a1 + 12);
          v22 = v17 < v21;
          if (v15 != v20)
          {
            v22 = v15 < v20;
          }

          if (v22)
          {
            *(a1 + 8) = v15;
            *(a1 + 16) = v20;
            *(a1 + 12) = v17;
            *(a1 + 20) = v21;
            v23 = *a1;
            v24 = *(a1 + 4);
            v25 = v17 < v24;
            if (v15 != *a1)
            {
              v25 = v15 < *a1;
            }

            if (v25)
            {
              *a1 = v15;
              *(a1 + 8) = v23;
              *(a1 + 4) = v17;
              result = 1;
              *(a1 + 12) = v24;
              return result;
            }
          }
        }
      }

      return 1;
  }

LABEL_32:
  v34 = a1 + 16;
  v35 = *(a1 + 16);
  v36 = (a1 + 8);
  v37 = *(a1 + 8);
  v38 = *a1;
  v39 = (a1 + 12);
  v40 = *(a1 + 12);
  v42 = (a1 + 4);
  v41 = *(a1 + 4);
  v43 = v37 < *a1;
  v44 = *(a1 + 20);
  if (v37 == *a1)
  {
    v43 = v40 < v41;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = (a1 + 16);
      v39 = (a1 + 20);
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v42 = v44;
      *v39 = v41;
      goto LABEL_50;
    }

    *a1 = v37;
    *(a1 + 8) = v38;
    if (v35 == v38)
    {
      v67 = v44 < v41;
    }

    else
    {
      v67 = v35 < v38;
    }

    v46 = (a1 + 8);
    *(a1 + 4) = v40;
    *(a1 + 12) = v41;
    v36 = (a1 + 16);
    v42 = (a1 + 12);
    v39 = (a1 + 20);
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    *(a1 + 20) = v40;
    v52 = v44 < v41;
    if (v35 != v38)
    {
      v52 = v35 < v38;
    }

    v46 = a1;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v53 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v34;
    v58 = *(v53 + 4);
    v59 = v58 < *(v34 + 4);
    if (*v53 != v57)
    {
      v59 = *v53 < v57;
    }

    if (v59)
    {
      v60 = v54;
      while (1)
      {
        v61 = a1 + v60;
        *(v61 + 24) = v57;
        *(v61 + 28) = *(a1 + v60 + 20);
        if (v60 == -16)
        {
          break;
        }

        v57 = *(v61 + 8);
        v62 = v58 < *(v61 + 12);
        if (v56 != v57)
        {
          v62 = v56 < v57;
        }

        v60 -= 8;
        if (!v62)
        {
          v63 = a1 + v60 + 24;
          goto LABEL_62;
        }
      }

      v63 = a1;
LABEL_62:
      *v63 = v56;
      *(v63 + 4) = v58;
      if (++v55 == 8)
      {
        return v53 + 8 == a2;
      }
    }

    v34 = v53;
    v54 += 8;
    v53 += 8;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *,std::pair<float,unsigned int> *>(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 8 * v9;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *(v12 + 1);
        v15 = *(a1 + 4);
        v16 = v14 < v15;
        if (*v12 != *a1)
        {
          v16 = *v12 < *a1;
        }

        if (v16)
        {
          *v12 = *a1;
          *a1 = v13;
          *(v12 + 1) = v15;
          *(a1 + 4) = v14;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 2;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 4);
        v20 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v18;
          *(v20 + 1) = v19;
        }

        else
        {
          *v20 = *v17;
          v20[1] = v17[1];
          *v17 = v18;
          *(v17 + 1) = v19;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(a1, (v20 + 2), a4, (v20 - a1 + 8) >> 3);
        }

        v17 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = result + 8 * v7;
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v11 = *v8;
      }

      else
      {
        v10 = *(v8 + 8);
        v11 = *v8;
        v12 = *(v8 + 4) < *(v8 + 12);
        if (*v8 != v10)
        {
          v12 = *v8 < v10;
        }

        if (v12)
        {
          v11 = *(v8 + 8);
          v8 += 8;
          v7 = v9;
        }
      }

      v13 = *a4;
      v14 = *(v8 + 4);
      v15 = *(a4 + 4);
      v16 = v14 < v15;
      if (v11 != *a4)
      {
        v16 = v11 < *a4;
      }

      if (!v16)
      {
        do
        {
          *a4 = v11;
          *(a4 + 4) = v14;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v17 = (2 * v7) | 1;
          v8 = result + 8 * v17;
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v11 = *v8;
            v7 = v17;
          }

          else
          {
            v11 = *(v8 + 8);
            v18 = *(v8 + 4) < *(v8 + 12);
            if (*v8 != v11)
            {
              v18 = *v8 < v11;
            }

            if (v18)
            {
              v8 += 8;
            }

            else
            {
              v11 = *v8;
            }

            if (!v18)
            {
              v7 = v17;
            }
          }

          v14 = *(v8 + 4);
          v19 = v14 < v15;
          if (v11 != v13)
          {
            v19 = v11 < v13;
          }
        }

        while (!v19);
        *a4 = v13;
        *(a4 + 4) = v15;
      }
    }
  }

  return result;
}

float *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v9 = *v5;
      v3 = v6;
    }

    else
    {
      v8 = v4[4];
      v7 = v4 + 4;
      v9 = v8;
      v10 = *(v7 - 2);
      v11 = *(v7 - 1) < *(v7 + 1);
      v12 = v10 < v8;
      if (v10 != v8)
      {
        v11 = v12;
      }

      if (v11)
      {
        v5 = v7;
      }

      else
      {
        v9 = *(v7 - 2);
      }

      if (!v11)
      {
        v3 = v6;
      }
    }

    *a1 = v9;
    a1[1] = v5[1];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v7 = *(a2 - 8);
    v6 = (a2 - 8);
    v8 = v7;
    v9 = *v5;
    v10 = *(v5 + 1);
    v11 = *(v6 + 1);
    v12 = v10 < v11;
    v13 = *v5 < v7;
    if (*v5 != v7)
    {
      v12 = v13;
    }

    if (v12)
    {
      do
      {
        *v6 = v9;
        *(v6 + 1) = v10;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v9 = *v5;
        v10 = *(v5 + 1);
        v14 = v10 < v11;
        if (*v5 != v8)
        {
          v14 = *v5 < v8;
        }
      }

      while (v14);
      *v6 = v8;
      *(v6 + 1) = v11;
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Tag *,std::__less<void,void> &>(unsigned int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Tag *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *>(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *,RB::Symbol::Tag *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RB::Symbol::Tag *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t RB::Refcount<RB::Symbol::Glyph::Shape,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::Symbol::Glyph::Layer::~Layer();
  }

  return result;
}

void RB::Path::JoinStroke::~JoinStroke(RB::Path::JoinStroke *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    free(v5);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,false>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = result;
  v175 = a2;
  v176 = result;
  while (1)
  {
    v8 = (v6 - v7) >> 6;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v83 = *(v6 - 16);
        v175 = v6 - 16;
        if (v83 >= *v7)
        {
          return result;
        }

        v84 = &v176;
        v85 = &v175;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v84, v85);
      }

      goto LABEL_9;
    }

    if (v8 == 3)
    {
      *&v182 = v7;
      v86 = *(v7 + 64);
      *&v179 = v7 + 64;
      v87 = *(v6 - 16);
      v181 = (v6 - 16);
      if (v86 >= *v7)
      {
        if (v87 >= v86)
        {
          return result;
        }

        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181);
        v81 = *v179;
        v82 = *v182;
LABEL_193:
        if (v81 >= v82)
        {
          return result;
        }

        v84 = &v182;
        v85 = &v179;
      }

      else
      {
        v84 = &v182;
        if (v87 >= v86)
        {
          result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v182, &v179);
          if (*v181 >= *v179)
          {
            return result;
          }

          v84 = &v179;
        }

        v85 = &v181;
      }

      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v84, v85);
    }

    if (v8 == 4)
    {
      v175 = v6 - 16;
      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,0>(v7, (v7 + 64), (v7 + 128), v6 - 16);
    }

    if (v8 == 5)
    {
      break;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v88 = (v7 + 64);
      v90 = v7 == v6 || v88 == v6;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v7;
          do
          {
            v93 = v88;
            v94 = *(v92 + 64);
            if (v94 < *v92)
            {
              v95 = *(v92 + 72);
              *(v92 + 72) = 0;
              v96 = *(v92 + 96);
              v182 = *(v92 + 80);
              v183[0] = v96;
              *(v183 + 11) = *(v92 + 107);
              v97 = *v92;
              v98 = v91;
              while (1)
              {
                v99 = v7 + v98;
                *(v99 + 64) = v97;
                v100 = *(v7 + v98 + 72);
                *(v99 + 72) = *(v7 + v98 + 8);
                *(v99 + 8) = v100;
                v101 = *(v7 + v98 + 32);
                *(v99 + 80) = *(v7 + v98 + 16);
                *(v99 + 96) = v101;
                *(v99 + 107) = *(v7 + v98 + 43);
                if (!v98)
                {
                  break;
                }

                v97 = *(v99 - 64);
                v98 -= 64;
                if (v94 >= v97)
                {
                  v102 = v7 + v98 + 64;
                  goto LABEL_136;
                }
              }

              v102 = v7;
LABEL_136:
              *v102 = v94;
              result = *(v102 + 8);
              *(v102 + 8) = v95;
              v103 = v182;
              v104 = v183[0];
              *(v99 + 43) = *(v183 + 11);
              *(v99 + 16) = v103;
              *(v99 + 32) = v104;
              if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = RB::Symbol::Glyph::resolve_draw_attachments();
              }
            }

            v88 = v93 + 16;
            v91 += 64;
            v92 = v93;
          }

          while (v93 + 16 != v6);
        }
      }

      else if (!v90)
      {
        v164 = (v7 + 80);
        do
        {
          v165 = v88;
          v166 = *(v7 + 64);
          if (v166 < *v7)
          {
            v167 = *(v7 + 72);
            *(v7 + 72) = 0;
            v168 = *(v7 + 96);
            v182 = *(v7 + 80);
            v183[0] = v168;
            *(v183 + 11) = *(v7 + 107);
            v169 = *v7;
            v170 = v164;
            do
            {
              *(v170 - 4) = v169;
              v171 = *(v170 - 1);
              *(v170 - 1) = *(v170 - 9);
              *(v170 - 9) = v171;
              v172 = *(v170 - 3);
              *v170 = *(v170 - 4);
              v170[1] = v172;
              *(v170 + 27) = *(v170 - 37);
              v169 = *(v170 - 36);
              v170 -= 4;
            }

            while (v166 < v169);
            *(v170 - 4) = v166;
            result = *(v170 - 1);
            *(v170 - 1) = v167;
            v173 = v182;
            v174 = v183[0];
            *(v170 + 27) = *(v183 + 11);
            *v170 = v173;
            v170[1] = v174;
            if (result)
            {
              if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = RB::Symbol::Glyph::resolve_draw_attachments();
              }
            }
          }

          v88 = v165 + 16;
          v164 += 4;
          v7 = v165;
        }

        while (v165 + 16 != v6);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v105 = v9 >> 1;
        v106 = v9 >> 1;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = (v7 + (v108 << 6));
            if (2 * v107 + 2 >= v8)
            {
              v110 = *v109;
            }

            else
            {
              v110 = v109[16];
              v111 = *v109 >= v110;
              if (*v109 > v110)
              {
                v110 = *v109;
              }

              if (!v111)
              {
                v109 += 16;
                v108 = 2 * v107 + 2;
              }
            }

            v112 = (v7 + (v107 << 6));
            v113 = *v112;
            if (v110 >= *v112)
            {
              v114 = *(v112 + 1);
              *(v112 + 1) = 0;
              v115 = *(v112 + 1);
              v116 = *(v112 + 2);
              *(v183 + 11) = *(v112 + 43);
              v182 = v115;
              v183[0] = v116;
              do
              {
                v117 = v112;
                v112 = v109;
                *v117 = v110;
                v118 = *(v117 + 1);
                *(v117 + 1) = *(v112 + 1);
                *(v112 + 1) = v118;
                v119 = *(v112 + 1);
                v120 = *(v112 + 2);
                *(v117 + 43) = *(v112 + 43);
                *(v117 + 1) = v119;
                *(v117 + 2) = v120;
                if (v105 < v108)
                {
                  break;
                }

                v121 = (2 * v108) | 1;
                v109 = (v7 + (v121 << 6));
                v108 = 2 * v108 + 2;
                if (v108 >= v8)
                {
                  v110 = *v109;
                  v108 = v121;
                }

                else
                {
                  v110 = *v109;
                  v122 = v109[16];
                  if (*v109 <= v122)
                  {
                    v110 = v109[16];
                  }

                  if (*v109 >= v122)
                  {
                    v108 = v121;
                  }

                  else
                  {
                    v109 += 16;
                  }
                }
              }

              while (v110 >= v113);
              *v112 = v113;
              result = *(v112 + 1);
              *(v112 + 1) = v114;
              v123 = *(v183 + 11);
              v124 = v183[0];
              *(v112 + 1) = v182;
              *(v112 + 2) = v124;
              *(v112 + 43) = v123;
              if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = RB::Symbol::Glyph::resolve_draw_attachments();
              }
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v125 = 0;
          v126 = *v7;
          v127 = *(v7 + 8);
          *(v7 + 8) = 0;
          v128 = *(v7 + 32);
          v129 = *(v7 + 43);
          v179 = *(v7 + 16);
          v180[0] = v128;
          *(v180 + 11) = v129;
          v130 = v7;
          do
          {
            v131 = &v130[16 * v125];
            v132 = v131 + 16;
            v133 = (2 * v125) | 1;
            v125 = 2 * v125 + 2;
            if (v125 >= v8)
            {
              v134 = *v132;
              v125 = v133;
            }

            else
            {
              v136 = v131[32];
              v135 = v131 + 32;
              v134 = v136;
              v137 = *(v135 - 16);
              v138 = v137 >= v136;
              if (v137 > v136)
              {
                v134 = *(v135 - 16);
              }

              if (v138)
              {
                v125 = v133;
              }

              else
              {
                v132 = v135;
              }
            }

            *v130 = v134;
            v139 = *(v130 + 1);
            *(v130 + 1) = *(v132 + 1);
            *(v132 + 1) = v139;
            v140 = *(v132 + 1);
            v141 = *(v132 + 2);
            *(v130 + 43) = *(v132 + 43);
            *(v130 + 1) = v140;
            *(v130 + 2) = v141;
            v130 = v132;
          }

          while (v125 <= ((v8 - 2) >> 1));
          if (v132 == v6 - 16)
          {
            *v132 = v126;
            v145 = *(v132 + 1);
            *(v132 + 1) = v127;
            v162 = *(v180 + 11);
            v163 = v180[0];
            *(v132 + 1) = v179;
            *(v132 + 2) = v163;
            *(v132 + 43) = v162;
          }

          else
          {
            *v132 = *(v6 - 16);
            v142 = *(v132 + 1);
            *(v132 + 1) = *(v6 - 7);
            *(v6 - 7) = v142;
            v143 = *(v6 - 3);
            v144 = *(v6 - 2);
            *(v132 + 43) = *(v6 - 21);
            *(v132 + 1) = v143;
            *(v132 + 2) = v144;
            *(v6 - 16) = v126;
            v145 = *(v6 - 7);
            *(v6 - 7) = v127;
            *(v6 - 3) = v179;
            *(v6 - 2) = v180[0];
            *(v6 - 21) = *(v180 + 11);
            v146 = (v132 - v7 + 64) >> 6;
            v147 = v146 < 2;
            v148 = v146 - 2;
            if (!v147)
            {
              v149 = v148 >> 1;
              v150 = (v7 + (v149 << 6));
              v151 = *v150;
              v152 = *v132;
              if (*v150 < *v132)
              {
                v153 = *(v132 + 1);
                *(v132 + 1) = 0;
                v155 = *(v132 + 1);
                v154 = *(v132 + 2);
                *(v183 + 11) = *(v132 + 43);
                v182 = v155;
                v183[0] = v154;
                do
                {
                  v156 = v132;
                  v132 = v150;
                  *v156 = v151;
                  v157 = *(v156 + 1);
                  *(v156 + 1) = *(v132 + 1);
                  *(v132 + 1) = v157;
                  v158 = *(v132 + 1);
                  v159 = *(v132 + 2);
                  *(v156 + 43) = *(v132 + 43);
                  *(v156 + 1) = v158;
                  *(v156 + 2) = v159;
                  if (!v149)
                  {
                    break;
                  }

                  v149 = (v149 - 1) >> 1;
                  v150 = (v7 + (v149 << 6));
                  v151 = *v150;
                }

                while (*v150 < v152);
                *v132 = v152;
                result = *(v132 + 1);
                *(v132 + 1) = v153;
                v160 = *(v183 + 11);
                v161 = v183[0];
                *(v132 + 1) = v182;
                *(v132 + 2) = v161;
                *(v132 + 43) = v160;
                if (result)
                {
                  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
                  {
                    result = RB::Symbol::Glyph::resolve_draw_attachments();
                  }
                }
              }
            }
          }

          if (v145 && atomic_fetch_add_explicit((v145 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            result = RB::Symbol::Glyph::resolve_draw_attachments();
          }

          v6 -= 16;
          v147 = v8-- <= 2;
        }

        while (!v147);
      }

      return result;
    }

    v10 = (v7 + (v8 >> 1 << 6));
    v11 = v10;
    v12 = v6 - 16;
    if (v8 >= 0x81)
    {
      v181 = (v6 - 16);
      *&v182 = v7;
      *&v179 = v7 + (v8 >> 1 << 6);
      v13 = *v10;
      v14 = *v12;
      if (*v10 >= *v7)
      {
        if (v14 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181), *v179 >= *v182))
        {
LABEL_26:
          v22 = v10 - 16;
          v21 = *(v10 - 16);
          v23 = *(v7 + 64);
          *&v182 = v7 + 64;
          *&v179 = v10 - 16;
          v24 = *(v6 - 32);
          v181 = (v6 - 32);
          if (v21 >= v23)
          {
            if (v24 >= v21 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181), *v179 >= *v182))
            {
LABEL_39:
              v29 = v10[16];
              v28 = v10 + 16;
              v27 = v29;
              v30 = *(v7 + 128);
              *&v182 = v7 + 128;
              *&v179 = v28;
              v31 = *(v6 - 48);
              v181 = (v6 - 48);
              if (v29 >= v30)
              {
                if (v31 >= v27 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181), *v179 >= *v182))
                {
LABEL_48:
                  v181 = v28;
                  *&v182 = v22;
                  *&v179 = v11;
                  v34 = *v11;
                  v35 = *v28;
                  if (*v11 >= *v22)
                  {
                    if (v35 >= v34)
                    {
                      goto LABEL_57;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181);
                    if (*v179 >= *v182)
                    {
                      goto LABEL_57;
                    }

                    v36 = &v182;
                    v37 = &v179;
                  }

                  else
                  {
                    v36 = &v182;
                    if (v35 >= v34)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v182, &v179);
                      if (*v181 >= *v179)
                      {
LABEL_57:
                        v38 = *v7;
                        v39 = *(v7 + 8);
                        *(v7 + 8) = 0;
                        v40 = *(v7 + 32);
                        v41 = *(v7 + 43);
                        v182 = *(v7 + 16);
                        v183[0] = v40;
                        *(v183 + 11) = v41;
                        *v7 = *v11;
                        *(v7 + 8) = *(v11 + 1);
                        v42 = *(v11 + 43);
                        v43 = *(v11 + 2);
                        *(v7 + 16) = *(v11 + 1);
                        *(v7 + 32) = v43;
                        *(v7 + 43) = v42;
                        *v11 = v38;
                        *(v11 + 1) = v39;
                        v44 = v182;
                        v45 = v183[0];
                        *(v11 + 43) = *(v183 + 11);
                        *(v11 + 1) = v44;
                        *(v11 + 2) = v45;
                        goto LABEL_58;
                      }

                      v36 = &v179;
                    }

                    v37 = &v181;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v36, v37);
                  goto LABEL_57;
                }

                v32 = &v182;
                v33 = &v179;
              }

              else
              {
                v32 = &v182;
                if (v31 >= v27)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v182, &v179);
                  if (*v181 >= *v179)
                  {
                    goto LABEL_48;
                  }

                  v32 = &v179;
                }

                v33 = &v181;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v32, v33);
              goto LABEL_48;
            }

            v25 = &v182;
            v26 = &v179;
          }

          else
          {
            v25 = &v182;
            if (v24 >= v21)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v182, &v179);
              if (*v181 >= *v179)
              {
                goto LABEL_39;
              }

              v25 = &v179;
            }

            v26 = &v181;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v25, v26);
          goto LABEL_39;
        }

        v15 = &v182;
        v16 = &v179;
      }

      else
      {
        v15 = &v182;
        if (v14 >= v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v182, &v179);
          if (*v181 >= *v179)
          {
            goto LABEL_26;
          }

          v15 = &v179;
        }

        v16 = &v181;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v15, v16);
      goto LABEL_26;
    }

    v181 = (v6 - 16);
    *&v182 = v7 + (v8 >> 1 << 6);
    *&v179 = v7;
    v17 = *v7;
    v18 = *v12;
    if (*v7 >= *v10)
    {
      if (v18 < v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181);
        if (*v179 < *v182)
        {
          v19 = &v182;
          v20 = &v179;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v19 = &v182;
      if (v18 < v17)
      {
        goto LABEL_21;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v182, &v179);
      if (*v181 < *v179)
      {
        v19 = &v179;
LABEL_21:
        v20 = &v181;
LABEL_34:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v19, v20);
      }
    }

LABEL_58:
    --a3;
    v46 = *v7;
    if ((a4 & 1) == 0 && *(v7 - 64) >= v46)
    {
      v181 = v6;
      v66 = *(v7 + 8);
      *(v7 + 8) = 0;
      v68 = *(v7 + 16);
      v67 = *(v7 + 32);
      *(v183 + 11) = *(v7 + 43);
      v182 = v68;
      v183[0] = v67;
      if (v46 >= *(v6 - 16))
      {
        v71 = (v7 + 64);
        do
        {
          v69 = v71;
          if (v71 >= v6)
          {
            break;
          }

          v71 += 16;
        }

        while (v46 >= *v69);
      }

      else
      {
        v69 = v7;
        do
        {
          v70 = v69[16];
          v69 += 16;
        }

        while (v46 >= v70);
      }

      *&v179 = v69;
      if (v69 < v6)
      {
        do
        {
          v72 = *(v6 - 16);
          v6 -= 16;
        }

        while (v46 < v72);
        v181 = v6;
      }

      if (v69 < v6)
      {
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181);
          v69 = v179;
          do
          {
            v73 = v69[16];
            v69 += 16;
          }

          while (v46 >= v73);
          *&v179 = v69;
          v74 = v181;
          do
          {
            v75 = *(v74 - 16);
            v74 -= 16;
          }

          while (v46 < v75);
          v181 = v74;
        }

        while (v69 < v74);
      }

      if (v69 - 16 != v7)
      {
        *v7 = *(v69 - 16);
        v76 = *(v7 + 8);
        *(v7 + 8) = *(v69 - 7);
        *(v69 - 7) = v76;
        v77 = *(v69 - 3);
        v78 = *(v69 - 2);
        *(v7 + 43) = *(v69 - 21);
        *(v7 + 16) = v77;
        *(v7 + 32) = v78;
      }

      *(v69 - 16) = v46;
      result = *(v69 - 7);
      *(v69 - 7) = v66;
      v79 = v182;
      v80 = v183[0];
      *(v69 - 21) = *(v183 + 11);
      *(v69 - 3) = v79;
      *(v69 - 2) = v80;
      v55 = v179;
      if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        result = RB::Symbol::Glyph::resolve_draw_attachments();
      }

      goto LABEL_106;
    }

    v47 = 0;
    v48 = *(v7 + 8);
    *(v7 + 8) = 0;
    v50 = *(v7 + 16);
    v49 = *(v7 + 32);
    *(v183 + 11) = *(v7 + 43);
    v182 = v50;
    v183[0] = v49;
    do
    {
      v51 = *(v7 + v47 + 64);
      v47 += 64;
    }

    while (v51 < v46);
    v52 = v7 + v47;
    *&v179 = v7 + v47;
    if (v47 == 64)
    {
      do
      {
        if (v52 >= v6)
        {
          break;
        }

        v54 = *(v6 - 16);
        v6 -= 16;
      }

      while (v54 >= v46);
    }

    else
    {
      do
      {
        v53 = *(v6 - 16);
        v6 -= 16;
      }

      while (v53 >= v46);
    }

    v181 = v6;
    v55 = (v7 + v47);
    if (v52 < v6)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181);
        v55 = v179;
        do
        {
          v56 = v55[16];
          v55 += 16;
        }

        while (v56 < v46);
        *&v179 = v55;
        v57 = v181;
        do
        {
          v58 = *(v57 - 16);
          v57 -= 16;
        }

        while (v58 >= v46);
        v181 = v57;
      }

      while (v55 < v57);
    }

    if (v55 - 16 != v7)
    {
      *v7 = *(v55 - 16);
      v59 = *(v7 + 8);
      *(v7 + 8) = *(v55 - 7);
      *(v55 - 7) = v59;
      v60 = *(v55 - 3);
      v61 = *(v55 - 2);
      *(v7 + 43) = *(v55 - 21);
      *(v7 + 16) = v60;
      *(v7 + 32) = v61;
    }

    *(v55 - 16) = v46;
    v62 = *(v55 - 7);
    *(v55 - 7) = v48;
    v63 = v182;
    v64 = v183[0];
    *(v55 - 21) = *(v183 + 11);
    *(v55 - 3) = v63;
    *(v55 - 2) = v64;
    if (v62)
    {
      if (atomic_fetch_add_explicit((v62 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::Symbol::Glyph::resolve_draw_attachments();
      }
    }

    if (v52 < v6)
    {
      goto LABEL_79;
    }

    v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *>(v176, v55 - 16);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *>(v55, v175);
    if (!result)
    {
      if (v65)
      {
        goto LABEL_107;
      }

LABEL_79:
      result = std::__introsort<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,false>(v176, v55 - 16, a3, a4 & 1);
LABEL_106:
      a4 = 0;
LABEL_107:
      v176 = v55;
      goto LABEL_108;
    }

    if (v65)
    {
      return result;
    }

    v175 = v55 - 16;
    v55 = v176;
LABEL_108:
    v6 = v175;
    v7 = v55;
  }

  v175 = v6 - 16;
  v181 = (v7 + 128);
  *&v182 = v7;
  v178 = (v7 + 192);
  *&v179 = v7 + 64;
  v177 = v6 - 16;
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,0>(v7, (v7 + 64), (v7 + 128), (v7 + 192));
  if (*(v6 - 16) < *(v7 + 192))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v178, &v177);
    if (*v178 < *(v7 + 128))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v181, &v178);
      if (*v181 < *(v7 + 64))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v179, &v181);
        v81 = *v179;
        v82 = *v7;
        goto LABEL_193;
      }
    }
  }

  return result;
}

void sub_195D88188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__introsort<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,false>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(int **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = *(*a1 + 1);
  *(v2 + 1) = 0;
  v9 = *(v2 + 1);
  *v10 = *(v2 + 2);
  *&v10[11] = *(v2 + 43);
  *v2 = *v3;
  *(v2 + 1) = *(v3 + 8);
  *(v3 + 8) = 0;
  v7 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(v2 + 43) = *(v3 + 43);
  *(v2 + 1) = v7;
  *(v2 + 2) = v6;
  *v3 = v4;
  result = *(v3 + 8);
  *(v3 + 8) = v5;
  *(v3 + 43) = *&v10[11];
  *(v3 + 16) = v9;
  *(v3 + 32) = *v10;
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return RB::Symbol::Glyph::Layer::~Layer();
    }
  }

  return result;
}

int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,0>(int *result, int *a2, int *a3, _DWORD *a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v17, &v16);
      if (*v17 < *v18)
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v10, v11);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v18, &v17);
    if (*v16 < *v17)
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v13, &v12);
    if (*v13 < *a2)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v14, &v13);
      if (*v14 < *v7)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v15, &v14);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *>(int *a1, int *a2)
{
  v2 = a2;
  v33 = a2;
  v34 = a1;
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        *&v31 = a1;
        v10 = a1[16];
        v38 = (a1 + 16);
        v11 = *(a2 - 16);
        v37 = (a2 - 16);
        if (v10 < *a1)
        {
          v6 = &v31;
          if (v11 >= v10)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v31, &v38);
            if (*v37 >= *v38)
            {
              return 1;
            }

            v6 = &v38;
          }

          v7 = &v37;
          goto LABEL_28;
        }

        if (v11 >= v10)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v38, &v37);
        v8 = *v38;
        v9 = *v31;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
        return 1;
      case 5:
        *&v31 = a1;
        v37 = (a1 + 32);
        v38 = (a1 + 16);
        v35 = a2 - 16;
        v36 = (a1 + 48);
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Glyph::resolve_draw_attachments(NSArray *)::$_0 &,RB::Symbol::Glyph::Shape::Attachment *,0>(a1, a1 + 16, a1 + 32, a1 + 48);
        if (*(v2 - 16) >= a1[48])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v36, &v35);
        if (*v36 >= a1[32])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v37, &v36);
        if (*v37 >= a1[16])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v38, &v37);
        v8 = *v38;
        v9 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (v8 < v9)
    {
      v6 = &v31;
      v7 = &v38;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 16);
    v33 = a2 - 16;
    if (v5 < *a1)
    {
      v6 = &v34;
      v7 = &v33;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v13 = a1 + 32;
  v12 = a1[32];
  *&v31 = a1;
  v14 = a1[16];
  v37 = (a1 + 32);
  v38 = (a1 + 16);
  if (v14 >= *a1)
  {
    if (v12 >= v14)
    {
      goto LABEL_33;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v38, &v37);
    if (*v38 >= *v31)
    {
      goto LABEL_33;
    }

    v15 = &v31;
    v16 = &v38;
    goto LABEL_32;
  }

  v15 = &v31;
  if (v12 < v14)
  {
LABEL_22:
    v16 = &v37;
LABEL_32:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(v15, v16);
    goto LABEL_33;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<RB::Symbol::Glyph::Shape::Attachment *&,RB::Symbol::Glyph::Shape::Attachment *&>(&v31, &v38);
  if (*v37 < *v38)
  {
    v15 = &v38;
    goto LABEL_22;
  }

LABEL_33:
  v17 = a1 + 48;
  if (v17 == v2)
  {
    return 1;
  }

  v18 = 0;
  while (1)
  {
    v19 = *v17;
    if (*v17 < *v13)
    {
      break;
    }

LABEL_44:
    v13 = v17;
    v17 += 16;
    if (v17 == v2)
    {
      return 1;
    }
  }

  v20 = *(v17 + 1);
  *(v17 + 1) = 0;
  v21 = *(v17 + 2);
  v31 = *(v17 + 1);
  v32[0] = v21;
  *(v32 + 11) = *(v17 + 43);
  v22 = v34;
  v23 = *v13;
  do
  {
    v24 = v13;
    v13[16] = v23;
    v25 = *(v13 + 9);
    *(v13 + 9) = *(v13 + 1);
    *(v13 + 1) = v25;
    v26 = *(v13 + 2);
    *(v13 + 5) = *(v13 + 1);
    *(v13 + 6) = v26;
    *(v13 + 107) = *(v13 + 43);
    if (v13 == v22)
    {
      break;
    }

    v13 -= 16;
    v23 = *(v24 - 16);
  }

  while (v19 < v23);
  *v24 = v19;
  v27 = *(v24 + 1);
  *(v24 + 1) = v20;
  v28 = v31;
  v29 = v32[0];
  *(v24 + 43) = *(v32 + 11);
  *(v24 + 1) = v28;
  *(v24 + 2) = v29;
  if (v27)
  {
    if (atomic_fetch_add_explicit((v27 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::Symbol::Glyph::resolve_draw_attachments();
    }
  }

  if (++v18 != 8)
  {
    v2 = v33;
    goto LABEL_44;
  }

  return v17 + 16 == v2;
}

void RB::Path::ClipStroke::LengthEstimator::~LengthEstimator(RB::Path::ClipStroke::LengthEstimator *this)
{
  v2 = *(this + 47);
  if (v2)
  {
    free(v2);
  }

  *this = &unk_1F0A3F928;
  v3 = *(this + 41);
  if (v3)
  {
    free(v3);
  }
}

uint64_t RB::Table<NSString *,unsigned int>::for_each<RB::Symbol::GlyphCache::tag(RB::Symbol::Tag)::$_0>(RB::Symbol::GlyphCache::tag(RB::Symbol::Tag)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 8) == a2)
  {
    **a3 = result;
  }

  return result;
}

void std::default_delete<RB::Symbol::Glyph::Sublayers>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 336);
    if (v3)
    {
      v4 = *(a2 + 336);
    }

    else
    {
      v4 = a2;
    }

    if (*(a2 + 344))
    {
      v5 = 0;
      do
      {
        RB::Symbol::Glyph::Layer::~Layer(v4);
        ++v5;
        v4 = (v6 + 112);
      }

      while (v5 < *(a2 + 344));
      v3 = *(a2 + 336);
    }

    if (v3)
    {
      free(v3);
    }

    JUMPOUT(0x19A8C09E0);
  }
}

void *RB::vector<RB::Path::ClipStroke::SubpathTransform,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 67) + (*(__dst + 67) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 67) + (*(__dst + 67) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,64ul>(*(__dst + 32), __dst, 4u, __dst + 67, v3);
  *(__dst + 32) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,64ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, a5 << 6);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(a5 << 6);
    v9 = v8 >> 6;
    if (*a4 != (v8 >> 6))
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, *a4 << 6);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t RB::DisplayList::ClipNode::contains(void *a1, double a2, double a3)
{
  if (!a1)
  {
    return 1;
  }

  v5 = a1;
  do
  {
    result = (*(*(v5[1] & 0xFFFFFFFFFFFFFFFELL) + 32))(v5[1] & 0xFFFFFFFFFFFFFFFELL, a2, a3);
    if (!result)
    {
      break;
    }

    v5 = *v5;
  }

  while (v5);
  return result;
}

void RB::DisplayList::Clip::print(RB::DisplayList::Clip *this, std::string *a2)
{
  if (*(this + 10))
  {
    RB::SexpString::printf(a2, 0, "(identifier %u)", *(this + 10));
  }

  if (*(this + 44) == 1)
  {

    RB::SexpString::print(a2, 0, "inverse");
  }
}

double RB::DisplayList::LayerClip::min_scale(RB::DisplayList::LayerClip *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0.0;
  }

  RB::DisplayList::Layer::min_scale(v1);
  return result;
}

void RB::DisplayList::LayerClip::print(RB::DisplayList::LayerClip *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "clip-layer");
  RB::DisplayList::Clip::print(this, a2);
  v6 = *(this + 16);
  if (v6 != 1.0)
  {
    RB::SexpString::printf(a2, 1, "(alpha %g)", v6);
  }

  RB::DisplayList::Layer::Effect::print((this + 56), a2);
  if ((a3 & 1) == 0)
  {
    v7 = *(this + 6);
    if (v7)
    {
      RB::DisplayList::Layer::print(v7, a2, a3);
    }
  }

  RB::SexpString::pop(a2);
}

void *RB::DisplayList::ItemClip::copy(uint64_t a1, size_t *a2, uint64_t a3, int a4)
{
  v8 = (*(**(a1 + 48) + 24))(*(a1 + 48), *a2, 0);
  (*(*v8 + 32))(v8, a2, 0);
  v9 = *(*a2 + 8);
  if (a4)
  {
    v10 = *(a1 + 44) == 0;
  }

  else
  {
    v10 = *(a1 + 44);
  }

  v11 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 + 56 > v9[5])
  {
    v11 = RB::Heap::alloc_slow(v9 + 2, 0x38uLL, 7);
  }

  else
  {
    v9[4] = v11 + 56;
  }

  RB::DisplayList::ItemClip::ItemClip(v11, v8, v10, 1.0);
  *(v11 + 32) = RB::DisplayList::CachedTransform::transform_metadata(a2, *(a1 + 32), *(a1 + 40));
  *(v11 + 40) = v12;
  result = ((a2[3] + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((result + 2) > a2[4])
  {
    result = RB::Heap::alloc_slow(a2 + 1, 0x10uLL, 7);
  }

  else
  {
    a2[3] = (result + 2);
  }

  *result = a3;
  result[1] = v11;
  return result;
}

void RB::DisplayList::ItemClip::print(RB::DisplayList::ItemClip *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "clip-item");
  RB::DisplayList::Clip::print(this, a2);
  (*(**(this + 6) + 248))(*(this + 6), a2, a3);

  RB::SexpString::pop(a2);
}

__CFString *contents_debug_description(void *a1)
{
  v1 = [a1 _rb_contents];
  if (!v1)
  {
    return @"(display-list)";
  }

  *__p = 0u;
  memset(v6, 0, sizeof(v6));
  RB::DisplayList::Contents::print(v1, __p);
  if (v6[7] >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  if ((v6[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_195D88F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float RBDrawingStateGetTargetHeadroom(uint64_t a1)
{
  _H0 = *(a1 + 176);
  __asm { FCVT            S0, H0 }

  return result;
}

__n128 RB::AffineTransform::inverse(RB::AffineTransform *this)
{
  v2 = *(this + 1);
  v5[0] = *this;
  v5[1] = v2;
  v5[2] = *(this + 2);
  if (RB::AffineTransform::invert(v5))
  {
    v3 = v5;
  }

  else
  {
    v3 = this;
  }

  return *v3;
}

void RBDrawingStateGetClipBoundingBox(uint64_t a1)
{
  v3 = COERCE_FLOAT32X2_T(RB::DisplayList::State::clip_bounds(a1));
  v20 = v3;
  v21 = v2;
  v4 = vceqz_f32(v2);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    v5 = v2;
    v6 = vneg_f32(0x80000000800000);
    v7 = vcge_f32(vabs_f32(v2), v6);
    if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) == 0)
    {
      v8 = *(a1 + 32);
      v22 = *(a1 + 16);
      v23 = v8;
      v24 = *(a1 + 48);
      v9 = RB::AffineTransform::invert(&v22);
      if (v9)
      {
        v10 = &v22;
      }

      else
      {
        v10 = (a1 + 16);
      }

      v11 = *v10;
      v12 = (a1 + 32);
      if (v9)
      {
        v12 = &v23;
      }

      v13 = *v12;
      v14 = (a1 + 48);
      if (v9)
      {
        v14 = &v24;
      }

      v15 = *v14;
      v22 = v11;
      v23 = v13;
      v24 = v15;
      v20 = RB::operator*(&v22, v3, v5);
      v21 = v16;
    }

    v17 = RB::DisplayList::Builder::crop_bounds((*(a1 + 8) + 16), a1);
    v18 = *(v17 + 8);
    v19 = vcge_f32(vabs_f32(v18), v6);
    if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
    {
      RB::Rect::intersect(&v20, *v17, v18);
    }
  }
}

void RBDrawingStateGetDeviceClipBoundingBox(uint64_t a1)
{
  v9[0] = COERCE_FLOAT32X2_T(RB::DisplayList::State::clip_bounds(a1));
  v9[1] = v2;
  v3 = vceqz_f32(v2);
  if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v4 = RB::DisplayList::Builder::crop_bounds((*(a1 + 8) + 16), a1);
    v5 = v4[1];
    v6 = vcge_f32(vabs_f32(v5), vneg_f32(0x80000000800000));
    if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) == 0)
    {
      *&v7 = RB::operator*((a1 + 16), *v4, v5);
      RB::Rect::intersect(v9, v7, v8);
    }
  }
}

RB::XML::Document *RBDrawingStateRotateCTM(uint64_t a1, double a2)
{
  v4 = *(a1 + 8);
  v6 = __sincos_stret(a2);
  v5.f64[0] = v6.__cosval;
  v7.f64[0] = -v6.__sinval;
  v7.f64[1] = v6.__cosval;
  v5.f64[1] = v6.__sinval;
  v10[0] = v5;
  v10[1] = v7;
  v11 = 0;
  v12 = 0;
  RB::DisplayList::State::concat(a1, v10);
  result = *(v4 + 320);
  if (result)
  {
    return RB::XML::DisplayList::rotate_ctm(result, a1, v8, a2);
  }

  return result;
}

id RBDrawingStateGetIdentifierNamespace(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 68);
  return [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v2];
}

uint64_t RBDrawingStateGetIdentifierNamespace2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *v2 = *(a1 + 68);
  uuid_copy(dst, v2);
  return *dst;
}

RBTransition *RBDrawingStateGetTransition(uint64_t a1)
{
  v1 = RBDrawingStateCopyTransition(a1);

  return v1;
}

RBTransition *RBDrawingStateCopyTransition(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 12))
  {
    v2 = objc_opt_new();
    [(RBTransition *)v2 setTransition:v1];
    return v2;
  }

  else
  {
    v4 = +[RBTransition defaultTransition];

    return v4;
  }
}

uint64_t RBDrawingStateGetAttribute(uint64_t result, int a2, double a3)
{
  if (a2 == 1)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:*(result + 160) != 0];
  }

  if (!a2)
  {
    LODWORD(a3) = *(result + 152);
    return [MEMORY[0x1E696AD98] numberWithFloat:a3];
  }

  return result;
}

unint64_t RBDrawingStateDrawMetal(uint64_t *a1, unsigned int a2, int a3, void *a4, float64_t a5, float64_t a6, float64_t a7, float64_t a8, float a9)
{
  v14 = a1[1];
  if (!*(v14 + 24))
  {
    make_contents(a1[1]);
  }

  v15 = rb_blend_mode(a2);
  v16 = v15;
  if (a9 != 0.0 || (*(v14 + 304) & 1) == 0 || (result = RB::may_discard_alpha(v15), (result & 1) == 0))
  {
    v18 = RB::DisplayList::Builder::culling_bounds((v14 + 16), a1);
    v19.f64[0] = a5;
    v19.f64[1] = a6;
    v20 = vcvt_f32_f64(v19);
    v21.f64[0] = a7;
    v21.f64[1] = a8;
    v22 = vcvt_f32_f64(v21);
    *&v27 = v20;
    *(&v27 + 1) = v22;
    if (!v18)
    {
      return RB::DisplayList::Builder::draw_custom(v14 + 16, a4, a3, &v27, a1, v16, a9);
    }

    result = RB::Rect::intersects(v18, v20, v22);
    if (result)
    {
      return RB::DisplayList::Builder::draw_custom(v14 + 16, a4, a3, &v27, a1, v16, a9);
    }
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddPredicateStyle(__n128 *this, uint64_t a2)
{
  v4 = this->n128_u64[1];
  if (!v4[3])
  {
    make_contents(this->n128_i64[1]);
  }

  RB::DisplayList::State::add_predicate(this, (v4 + 2), (a2 + 8), *(a2 + 48));
  result = v4[40];
  if (result)
  {

    RB::XML::DisplayList::add_predicate_style(result, this, (a2 + 8), v5);
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddTransformStyle(__n128 *this, uint64_t a2)
{
  v4 = this->n128_u64[1];
  if (!v4[3])
  {
    make_contents(this->n128_i64[1]);
  }

  RB::DisplayList::State::add_transform(this, (v4 + 2), (a2 + 8));
  result = v4[40];
  if (result)
  {

    RB::XML::DisplayList::add_transform_style(result, this, (a2 + 8), v5);
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddAnimationStyle2(__n128 *a1, const RB::Animation *a2, uint64_t a3, uint64_t a4, const UUID *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  *src = a3;
  v12 = a4;
  v8 = a1->n128_u64[1];
  if (!v8[3])
  {
    make_contents(a1->n128_i64[1]);
  }

  uuid_copy(dst, src);
  if (a2)
  {
    a2 = [(RBAnimation *)a2 rb_animation];
  }

  RB::DisplayList::State::add_animation(a1, (v8 + 2), a2, dst, a5);
  result = v8[40];
  if (result)
  {
    RB::XML::DisplayList::add_animation_style(result, a1, a2, dst, a5);
  }

  return result;
}

uint64_t *add_style(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = result[1];
    if (!v4[3])
    {
      make_contents(result[1]);
    }

    v5 = rb_color_space(*(a2 + 40));
    if ((v5 >> 8))
    {
      LOBYTE(v6) = BYTE1(v5);
    }

    else
    {
      v5 = v3[9].n128_u16[6];
      v6 = v5 >> 8;
    }

    v17 = vcvt_f16_f32(*(a2 + 24));
    v20 = v5 | (v6 << 8);
    _S0 = *(a2 + 44);
    v8 = *(a2 + 48);
    __asm { FCVT            H0, S0 }

    v18 = _S0;
    v19 = v3[11].n128_u16[0];
    v13 = *a2;
    v14 = COERCE_DOUBLE(vcvt_f32_f64(*(a2 + 8)));
    v15 = *(a2 + 56);
    v16 = rb_blend_mode(*(a2 + 52));
    RB::DisplayList::State::add_shadow(v3, (v4 + 2), &v17, v16, v15 & 0x3F, v13, v8, v14);
    result = v4[40];
    if (result)
    {
      RB::XML::DisplayList::add_shadow_style(result);
    }
  }

  return result;
}

{
  if (a2)
  {
    v3 = result;
    v4 = result[1];
    if (!v4[3])
    {
      make_contents(result[1]);
    }

    v5 = rb_color_space(*(a2 + 28));
    if ((v5 >> 8))
    {
      v9 = BYTE1(v5);
    }

    else
    {
      v5 = v3[9].n128_u16[6];
      v9 = v5 >> 8;
    }

    _S0 = *(a2 + 12);
    _Q1.i32[0] = *(a2 + 16);
    __asm
    {
      FCVT            H2, S0
      FCVT            H1, S1
    }

    _S0 = *(a2 + 32);
    __asm { FCVT            H3, S0 }

    v16 = _S2;
    v17 = _Q1.u32[0];
    _Q1.i64[0] = *(a2 + 20);
    v18 = vmovl_u16(vcvt_f16_f32(_Q1)).u64[0];
    v19.i64[0] = v18;
    v19.i64[1] = HIDWORD(v18);
    v20.i64[0] = 0xFFFFLL;
    v20.i64[1] = 0xFFFFLL;
    v21 = vshlq_u64(vandq_s8(v19, v20), xmmword_195E44460);
    RB::DisplayList::State::add_color_threshold(v3, (v4 + 2), *a2, vorrq_s8(vdupq_laneq_s64(v21, 1), v21).u64[0] | (v17 << 16) | v16, ((v5 | (v9 << 8)) << 32) | (v3[11].n128_u16[0] << 16) | _S3, *(a2 + 4));
    result = v4[40];
    if (result)
    {

      RB::XML::DisplayList::add_color_threshold(result);
    }
  }

  return result;
}

uint64_t *RBDrawingStateAddShadowStyle2(uint64_t *a1, int a2, int a3, unsigned int a4, double a5, double a6, double a7, float a8, float a9, float a10, float a11)
{
  *v12 = a5;
  *&v12[1] = a6;
  *&v12[2] = a7;
  v13 = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  v17 = a2;
  v18 = 0x3F00000000000000;
  v19 = a3;
  v20 = a4;
  return add_style(a1, v12);
}

uint64_t *RBDrawingStateAddShadowStyle(uint64_t *a1, int a2, unsigned int a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  *v11 = a4;
  *&v11[1] = a5;
  *&v11[2] = a6;
  v12 = a7;
  v13 = a8;
  v14 = a9;
  v15 = a10;
  v16 = 0;
  v17 = 0x3F00000000000000;
  v18 = a2;
  v19 = a3;
  return add_style(a1, v11);
}

RB::XML::DisplayList *RBDrawingStateAddProjectionStyle(__n128 *this, RB::ProjectionMatrix *a2)
{
  v4 = this->n128_u64[1];
  if (!v4[3])
  {
    make_contents(this->n128_i64[1]);
  }

  RB::DisplayList::State::add_projection_matrix(this, (v4 + 2), a2);
  result = v4[40];
  if (result)
  {

    RB::XML::DisplayList::add_projection_style(result, this, a2, v5);
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddRotationStyle(__n128 *this, double a2, float64_t a3, float64_t a4)
{
  v6 = this->n128_u64[1];
  v10 = a3;
  v11 = a4;
  if (!v6[3])
  {
    make_contents(v6);
    a3 = v10;
    a4 = v11;
  }

  v7.f64[0] = a3;
  v7.f64[1] = a4;
  *&v12 = a2;
  *(&v12 + 1) = vcvt_f32_f64(v7);
  RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Rotation>(this, (v6 + 2), &v12);
  result = v6[40];
  if (result)
  {
    v13.x = v10;
    v13.y = v11;
    RB::XML::DisplayList::add_rotation_style(result, this, v8, a2, v13);
  }

  return result;
}

double RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Rotation>(__n128 *this, RB::DisplayList::Builder *a2, _OWORD *a3)
{
  if (*(a2 + 288) != 1 || (result = *a3, *a3 != 0.0))
  {
    v7 = *(a2 + 1);
    v8 = (v7[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v8 + 72 > v7[5])
    {
      v8 = RB::Heap::alloc_slow(v7 + 2, 0x48uLL, 7);
    }

    else
    {
      v7[4] = v8 + 72;
    }

    *(v8 + 48) = 0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = &unk_1F0A39528;
    *(v8 + 56) = *a3;

    *&result = RB::DisplayList::State::add_style(this, a2, v8).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddScaleStyle(__n128 *this, float64x2_t a2, float64_t a3, float64_t a4, float64_t a5)
{
  v6 = this->n128_u64[1];
  v12 = a4;
  v13 = a5;
  v10 = *&a2.f64[0];
  v11 = a3;
  if (!v6[3])
  {
    make_contents(v6);
    *&a2.f64[0] = v10;
    a3 = v11;
    a4 = v12;
    a5 = v13;
  }

  a2.f64[1] = a3;
  v7.f64[0] = a4;
  v7.f64[1] = a5;
  v14[0] = vcvt_f32_f64(a2);
  v14[1] = vcvt_f32_f64(v7);
  RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Scale>(this, (v6 + 2), v14);
  result = v6[40];
  if (result)
  {
    *&v15.width = v10;
    v15.height = v11;
    v16.x = v12;
    v16.y = v13;
    RB::XML::DisplayList::add_scale_style(result, this, v8, v15, v16);
  }

  return result;
}

uint32x2_t RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Scale>(__n128 *this, RB::DisplayList::Builder *a2, float32x2_t *a3)
{
  if (*(a2 + 288) != 1)
  {
    goto LABEL_3;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v11 = vceq_f32(*a3, _D1);
  result = vpmin_u32(v11, v11);
  if ((result.i32[0] & 0x80000000) == 0)
  {
LABEL_3:
    v13 = *(a2 + 1);
    v14 = (v13[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v14 + 72 > v13[5])
    {
      v14 = RB::Heap::alloc_slow(v13 + 2, 0x48uLL, 7);
    }

    else
    {
      v13[4] = v14 + 72;
    }

    *(v14 + 48) = 0;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = &unk_1F0A395B0;
    *(v14 + 56) = *a3->f32;

    return RB::DisplayList::State::add_style(this, a2, v14).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddTranslationStyle(__n128 *this, float64x2_t a2, float64_t a3)
{
  v4 = this->n128_u64[1];
  v7 = *&a2.f64[0];
  v8 = a3;
  if (!v4[3])
  {
    make_contents(v4);
    *&a2.f64[0] = v7;
    a3 = v8;
  }

  a2.f64[1] = a3;
  v9 = vcvt_f32_f64(a2);
  RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Translation>(this, (v4 + 2), &v9);
  result = v4[40];
  if (result)
  {
    *&v10.width = v7;
    v10.height = v8;
    RB::XML::DisplayList::add_translation_style(result, this, v5, v10);
  }

  return result;
}

uint32x2_t RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Translation>(__n128 *this, RB::DisplayList::Builder *a2, float32x2_t *a3)
{
  if (*(a2 + 288) != 1 || (v6 = vceqz_f32(*a3), result = vpmin_u32(v6, v6), (result.i32[0] & 0x80000000) == 0))
  {
    v8 = *(a2 + 1);
    v9 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + 64 > v8[5])
    {
      v9 = RB::Heap::alloc_slow(v8 + 2, 0x40uLL, 7);
    }

    else
    {
      v8[4] = v9 + 64;
    }

    *(v9 + 48) = 0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = &unk_1F0A36FF8;
    *(v9 + 56) = *a3;

    return RB::DisplayList::State::add_style(this, a2, v9).n128_u64[0];
  }

  return result;
}

RB::XML::Document *RBDrawingStateAddRotation3DStyle(__n128 *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, __n128 a10, float a11, float a12, __n128 a13, float a14, float a15, double a16, uint64_t a17)
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = this->n128_u64[1];
  v30 = a14;
  v31 = a15;
  v28 = a12;
  v29 = a13;
  v26 = a10;
  v27 = a11;
  if (!v20[3])
  {
    make_contents(v20);
    a10 = v26;
    a11 = v27;
    a12 = v28;
    a13 = v29;
    a14 = v30;
    a15 = v31;
  }

  v21 = a10;
  v21.n128_f32[1] = a11;
  v21.n128_f32[2] = a12;
  v22 = a13;
  v22.n128_f32[1] = a14;
  v22.n128_f32[2] = a15;
  v23 = a16;
  v24 = *&a17;
  v32[0] = a9;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Rotation3D>(this, (v20 + 2), v32);
  result = v20[40];
  if (result)
  {
    RB::XML::DisplayList::add_rotation3d_style(result);
  }

  return result;
}

double RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Rotation3D>(__n128 *this, RB::DisplayList::Builder *a2, double *a3)
{
  if (*(a2 + 288) != 1 || (result = *a3, *a3 != 0.0))
  {
    v7 = *(a2 + 1);
    v8 = (v7[4] + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v8 + 128 > v7[5])
    {
      v8 = RB::Heap::alloc_slow(v7 + 2, 0x80uLL, 15);
    }

    else
    {
      v7[4] = v8 + 128;
    }

    *(v8 + 48) = 0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = &unk_1F0A39638;
    v9 = *a3;
    v10 = *(a3 + 1);
    v11 = *(a3 + 3);
    *(v8 + 96) = *(a3 + 2);
    *(v8 + 112) = v11;
    *(v8 + 64) = v9;
    *(v8 + 80) = v10;

    *&result = RB::DisplayList::State::add_style(this, a2, v8).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddAffineTransformStyle(__n128 *this, float64x2_t *a2)
{
  v4 = this->n128_u64[1];
  if (!v4[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v5 = a2[1];
  v6 = a2[2];
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v6;
  v9[0] = v10[0];
  v9[1] = v5;
  v9[2] = v6;
  RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Affine>(this, (v4 + 2), v9);
  result = v4[40];
  if (result)
  {
    RB::XML::DisplayList::add_affine_transform_style(result, this, v10, v7);
  }

  return result;
}

double RB::DisplayList::State::add_geometry_style<RB::GeometryStyle::Affine>(__n128 *this, RB::DisplayList::Builder *a2, float64x2_t *a3)
{
  if (*(a2 + 288) != 1 || (v6 = vandq_s8(vandq_s8(vceqq_f64(a3[1], xmmword_195E42770), vceqq_f64(*a3, xmmword_195E42760)), vceqzq_f64(a3[2])), *&result = vandq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0], (*&result & 0x8000000000000000) == 0))
  {
    v8 = *(a2 + 1);
    v9 = (v8[4] + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v9 + 112 > v8[5])
    {
      v9 = RB::Heap::alloc_slow(v8 + 2, 0x70uLL, 15);
    }

    else
    {
      v8[4] = v9 + 112;
    }

    *(v9 + 48) = 0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = &unk_1F0A36F70;
    v10 = *a3;
    v11 = a3[2];
    *(v9 + 80) = a3[1];
    *(v9 + 96) = v11;
    *(v9 + 64) = v10;

    *&result = RB::DisplayList::State::add_style(this, a2, v9).n128_u64[0];
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddPathProjectionStyle(RB::XML::Document *a1, char *a2, void *a3, uint64_t a4, const RB::AffineTransform *a5, __n128 a6, double a7, double a8, double a9)
{
  if (a6.n128_f64[0] == a8 && a7 == a9)
  {
    RB::precondition_failure("invalid zero-length vector: (%f, %f), (%f, %f)", a2, a6.n128_u64[0], *&a7, *&a8, *&a9);
  }

  v15 = *(a1 + 1);
  v26 = a8;
  v27 = a9;
  v24 = a6.n128_u64[0];
  v25 = a7;
  if (!v15[3])
  {
    make_contents(v15);
    a6.n128_u64[0] = v24;
    a7 = v25;
    a8 = v26;
    a9 = v27;
  }

  a6.n128_f64[1] = a7;
  v16.n128_f64[0] = a8;
  v16.n128_f64[1] = a9;
  v17 = *(a4 + 16);
  v18 = *(a4 + 32);
  v28 = *a4;
  v29 = v17;
  v30 = v18;
  RB::DisplayList::State::add_path_projection(a1, (v15 + 2), a2, a3, &v28, a5, a6, v16);
  result = v15[40];
  if (result)
  {
    v20 = *(a4 + 16);
    v21 = *(a4 + 32);
    v28 = *a4;
    v29 = v20;
    v30 = v21;
    v31.var1 = &v28;
    v22 = v24;
    *&v20 = v25;
    v21.x = v26;
    v23 = v27;
    v31.var0 = a3;
    RB::XML::DisplayList::add_path_projection_style(result, a1, a2, *(&v20 - 8), v21, v31, a5);
  }

  return result;
}

RB::XML::DisplayList *RBDrawingStateAddVariableBlurFilter(uint64_t a1, _RBDrawingState *a2, RBFill *a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = *(a1 + 8);
  v37 = a7;
  v38 = a8;
  v35 = a5;
  v36 = a6;
  if (!v12[3])
  {
    make_contents(v12);
    a5 = v35;
    a6 = v36;
    a7 = v37;
    a8 = v38;
  }

  v51 = 0;
  v52 = 0;
  v53.origin.x = a5;
  v53.origin.y = a6;
  v53.size.width = a7;
  v53.size.height = a8;
  IsInfinite = CGRectIsInfinite(v53);
  if (IsInfinite || (v54.origin.x = v35, v54.origin.y = v36, v54.size.width = v37, v54.size.height = v38, IsInfinite = CGRectIsNull(v54)))
  {
    v14 = 0;
  }

  else
  {
    v15.f64[0] = v35;
    v15.f64[1] = v36;
    v16.f64[0] = v37;
    v16.f64[1] = v38;
    v51 = vcvt_f32_f64(v15);
    v52 = vcvt_f32_f64(v16);
    v14 = &v51;
  }

  v17 = v12[3] + 16;
  v18 = RB::AffineTransform::identity(IsInfinite);
  v19 = *(a1 + 156);
  _H0 = *(a1 + 176);
  __asm { FCVT            S9, H0 }

  v44[0] = v17;
  v44[1] = v18;
  v44[2] = 0x23F800000;
  v45 = v19;
  v46 = _S9;
  v47 = [(RBShape *)a2 shapeData];
  v48 = RB::DisplayList::Builder::culling_bounds((v12 + 2), a1);
  v49 = 0;
  v50 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 1065353216;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  RB::DisplayList::ItemFactory::operator()<RB::Coverage::Primitive>(v44, v39, COERCE_DOUBLE(1065353216), v26, v27, v28, v29, v30);
  *v31.i32 = a4;
  RB::Filter::GaussianBlur::GaussianBlur(v39, v31, v50, v14, a3);
  *&v32 = RB::DisplayList::State::add_filter_style<RB::Filter::GaussianBlur>(a1, (v12 + 2), v39);
  v33 = v40;
  v40 = 0;
  if (v33)
  {
    (**v33)(v33, v32);
  }

  result = v12[40];
  if (result)
  {
    v55.origin.x = v35;
    v55.origin.y = v36;
    v55.size.width = v37;
    v55.size.height = v38;
    RB::XML::DisplayList::add_variable_blur_filter(result, a1, a2, a4, a3, v55);
  }

  return result;
}

void sub_195D8AEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (***a21)(void))
{
  if (a21)
  {
    RBDrawingStateAddBlurFilter_cold_1(a21);
  }

  _Unwind_Resume(exception_object);
}

RB::XML::DisplayList *RBDrawingStateAddVariableBlurLayer(__n128 *a1, RB::DisplayList::State *a2, _RBDrawingState *a3, float a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = a1->n128_u64[1];
  if (!*(v20 + 24))
  {
    make_contents(a1->n128_i64[1]);
  }

  v21 = RB::DisplayList::Builder::end_layer((v20 + 16), a2);
  RB::DisplayList::Builder::delete_state((v20 + 16), a2);
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;

  return add_variable_blur_layer(a1, v21, a5, a4, a6, *&v22, a3);
}

RB::XML::DisplayList *add_variable_blur_layer(__n128 *a1, RB::DisplayList::Layer *a2, double a3, float a4, double a5, CGRect a6, _RBDrawingState *a7)
{
  v13 = a1->n128_u64[1];
  width = a6.size.width;
  height = a6.size.height;
  x = a6.origin.x;
  y = a6.origin.y;
  if (!v13[3])
  {
    make_contents(v13);
    a6.origin.x = x;
    a6.origin.y = y;
    a6.size.width = width;
    a6.size.height = height;
  }

  v30 = 0;
  v31 = 0;
  if (CGRectIsInfinite(a6) || (v32.origin.x = x, v32.origin.y = y, v32.size.width = width, v32.size.height = height, CGRectIsNull(v32)))
  {
    v14 = 0;
  }

  else
  {
    v15.f64[0] = x;
    v15.f64[1] = y;
    v16.f64[0] = width;
    v16.f64[1] = height;
    v30 = vcvt_f32_f64(v15);
    v31 = vcvt_f32_f64(v16);
    v14 = &v30;
  }

  v17 = a1[2];
  v29[0] = a1[1];
  v29[1] = v17;
  v29[2] = a1[3];
  RB::AffineTransform::invert(v29);
  layer_item = RB::DisplayList::Builder::make_layer_item((v13 + 2), a2, 2, v29, a4);
  *v19.i32 = a5;
  RB::Filter::GaussianBlur::GaussianBlur(v27, v19, layer_item, v14, a7);
  *&v20 = RB::DisplayList::State::add_filter_style<RB::Filter::GaussianBlur>(a1, (v13 + 2), v27);
  v21 = v28;
  v28 = 0;
  if (v21)
  {
    (**v21)(v21, v20);
  }

  result = v13[40];
  if (result)
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    RB::XML::DisplayList::add_variable_blur_layer(result, a1, a7, a3, a4, a5, v33);
  }

  return result;
}

void sub_195D8B140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (***a22)(void))
{
  if (a22)
  {
    RBDrawingStateAddBlurFilter_cold_1(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RBDrawingStateAddAlphaThresholdFilter(uint64_t *a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  if (a3 >= 1.0)
  {
    a3 = INFINITY;
  }

  v8[0] = 3;
  *&v8[1] = a2;
  *&v8[2] = a3;
  *&v8[3] = a4;
  *&v8[4] = a5;
  *&v8[5] = a6;
  *&v8[6] = a7;
  v9 = 0;
  return add_style(a1, v8);
}

uint64_t RBDrawingStateAddAlphaGradientFilter2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v7 = 0u;
  LOBYTE(v7) = 3;
  DWORD2(v7) = 1065353216;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return add_style(a1, &v7);
}

uint64_t add_style(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 8);
    if (!v4[3])
    {
      make_contents(*(result + 8));
    }

    v5 = *a2;
    v6 = *(a2 + 4);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v9 = rb_color_space(*(a2 + 32));
    RB::DisplayList::State::add_gradient_map(v3, (v4 + 2), v5, v7, v8, v9, *(a2 + 40), *(a2 + 48), v6, *(a2 + 36));
    result = v4[40];
    if (result)
    {

      RB::XML::DisplayList::add_gradient_map(result, v3);
    }
  }

  return result;
}

uint64_t RBDrawingStateAddAlphaGradientFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = 0u;
  v9 = 0;
  LOBYTE(v6) = 3;
  DWORD2(v6) = 1065353216;
  v7 = a2;
  v8 = a3;
  v10 = a4;
  v11 = a5;
  return add_style(a1, &v6);
}

uint64_t *add_color_multiply_style(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = result[1];
    if (!v4[3])
    {
      make_contents(result[1]);
    }

    v5 = color_filter_color(*(a2 + 16), *(a2 + 24), v3, *a2, *(a2 + 4), *(a2 + 8), *(a2 + 12));
    _S0 = *(a2 + 20);
    __asm { FCVT            H0, S0 }

    v11 = v3[11].n128_u16[0];
    v13 = v5;
    v14 = _S0;
    v15 = v11;
    v16 = v12;
    RB::DisplayList::State::add_color_style<RB::ColorStyle::ColorMultiply>(v3, (v4 + 2), &v13, *(a2 + 24));
    result = v4[40];
    if (result)
    {
      RB::XML::DisplayList::add_color_multiply_filter(result);
    }
  }

  return result;
}

RB::XML::Document *add_alpha_multiply_style(__n128 *a1, uint64_t a2)
{
  v4 = a1->n128_u64[1];
  if (!v4[3])
  {
    make_contents(a1->n128_i64[1]);
  }

  v5 = color_filter_color(*(a2 + 16), *(a2 + 24), a1, *a2, *(a2 + 4), *(a2 + 8), *(a2 + 12));
  _S0 = *(a2 + 20);
  __asm { FCVT            H0, S0 }

  v11 = a1[11].n128_u16[0];
  v14 = v5;
  v15 = _S0;
  v16 = v11;
  v17 = v12;
  RB::DisplayList::State::add_color_style<RB::ColorStyle::AlphaMultiply>(a1, (v4 + 2), &v14, *(a2 + 24));
  result = v4[40];
  if (result)
  {
    RB::XML::DisplayList::add_alpha_multiply_filter(result);
  }

  return result;
}

RB::XML::Document *RBDrawingStateAddAlphaMultiplyFilter(__n128 *a1, int a2, float a3, float a4, float a5, float a6)
{
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  v8 = 0;
  v9 = a2;
  return add_alpha_multiply_style(a1, v7);
}

RB::XML::DisplayList *RBDrawingStateAddHueRotationFilter(__n128 *this, _RBDrawingState *a2, double a3)
{
  v6 = this->n128_u64[1];
  if (!v6[3])
  {
    make_contents(this->n128_i64[1]);
  }

  v7 = a3;
  v9 = v7;
  RB::DisplayList::State::add_color_style<RB::ColorStyle::HueRotation>(this, (v6 + 2), &v9, a2);
  result = v6[40];
  if (result)
  {
    RB::XML::DisplayList::add_hue_rotation_filter(result, this, a2, a3);
  }

  return result;
}

double RB::DisplayList::State::add_color_style<RB::ColorStyle::HueRotation>(__n128 *this, RB::DisplayList::Builder *a2, float *a3, int a4)
{
  if (*(a2 + 288) != 1 || !RB::ColorStyle::HueRotation::test(a3, 0))
  {
    v9 = *(a2 + 1);
    v10 = (v9[4] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v10 + 64 > v9[5])
    {
      v10 = RB::Heap::alloc_slow(v9 + 2, 0x40uLL, 7);
    }

    else
    {
      v9[4] = v10 + 64;
    }

    *(v10 + 48) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = &unk_1F0A39B00;
    *(v10 + 56) = *a3;
    *(v10 + 60) = a4;

    *&result = RB::DisplayList::State::add_style(this, a2, v10).n128_u64[0];
  }

  return result;
}