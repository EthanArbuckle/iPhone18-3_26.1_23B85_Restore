void sub_11040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestGLSLShader(ContextHarvester *this, uint64_t a2)
{
  v4 = a2;
  v46 = 0;
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16));
  v45 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v5, v6, 65028, kDYStateGroupGLSLShader, 65030, v4, 65030, v46);
  ContextHarvester::encode_r(this, 117, 0, v4, "Ce", **(this + 2), v46);
  v44 = 0;
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16), a2, 35713, &v44 + 4);
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16), a2, 35712, &v44);
  *v43 = 0;
  v41 = 0;
  v42 = 0;
  ContextHarvester::copyCurrentShaderTextAndLog(this, a2, &v41, v43, &v42, &v43[1]);
  v7 = *(this + 7);
  v8 = v7[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (*&v8 <= v4)
    {
      v10 = a2 % v8.i32[0];
    }
  }

  else
  {
    v10 = (v8.i32[0] - 1) & v4;
  }

  v11 = *(*v7 + 8 * v10);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      if (v9.u32[0] < 2uLL)
      {
        v13 = *&v8 - 1;
        while (1)
        {
          v15 = v12[1];
          if (v15 == v4)
          {
            if (*(v12 + 4) == a2)
            {
              goto LABEL_22;
            }
          }

          else if ((v15 & v13) != v10)
          {
            goto LABEL_21;
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v14 = v12[1];
        if (v14 == v4)
        {
          if (*(v12 + 4) == a2)
          {
            break;
          }
        }

        else
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }

          if (v14 != v10)
          {
            goto LABEL_21;
          }
        }

        v12 = *v12;
      }

      while (v12);
    }
  }

  else
  {
LABEL_21:
    v12 = 0;
  }

LABEL_22:
  ShaderInfo::ShaderInfo(&v37, *(this + 2), a2);
  if (!v12)
  {
    v16 = &v37;
    v17 = *v37;
    if (!*v37)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = v12[3];
  v17 = **v16;
  if (v17)
  {
LABEL_26:
    strlen(v17);
    v18 = *(this + 1);
    v19 = *(this + 2);
    v20 = *(this + 591);
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    v21 = *(this + 2);
    v47 = v21 + 4644;
    ContextHarvester::encode(this, 540, 128, "Culi@1U<cb>t", *v21, a2, 1, &v47, 0);
    ContextHarvester::encode(this, 93, 128, "Cul", **(this + 2), a2);
  }

LABEL_27:
  v22 = *(v16 + 52);
  v23 = *(this + 1);
  v24 = *(this + 2);
  v25 = *(this + 591);
  DYGetGLGuestAppClient();
  GPUTools::Interpose::DYSavePointer();
  v26 = *(this + 2);
  v47 = v26 + 4644;
  ContextHarvester::encode(this, 540, 0, "Culi@1U<cb>t", *v26, a2, 1, &v47, 0);
  if (((v17 == 0) & v22) != 0)
  {
    ContextHarvester::encode(this, 93, 128, "Cul", **(this + 2), a2);
  }

  v27 = v44;
  v28 = v43[1];
  v29 = HIDWORD(v44);
  if (v43[1] < 0x401u)
  {
    ContextHarvester::encode(this, 4294955024, 0, "CiuiiSii", **(this + 2), 13, a2, v43[1], v42, HIDWORD(v44) != 0, v44 != 0);
  }

  else
  {
    v30 = *(this + 1);
    v31 = *(this + 591);
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    ContextHarvester::encode(this, 4294955024, 0, "CiuiiU<cb>ii", **(this + 2), 13, a2, v28, *(this + 2) + 4644, v29 != 0, v27 != 0);
  }

  v34 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  ContextHarvester::encodeCommand(v45, 0xFFFFD008, 0, v32, v33);
}

void sub_11620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ShaderInfo::~ShaderInfo(va);
  AutoStateGroup::~AutoStateGroup((v9 - 104), v11, v12, v13, v14);
  _Unwind_Resume(a1);
}

void ContextHarvester::getVertexArrays(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v15 = 0;
  v6 = *(this + 2);
  if (*(v6 + 4852) == 1)
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34964, &v15 + 4);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34965, &v15);
    v6 = *(this + 2);
  }

  if (*(v6 + 4858) == 1)
  {
    LODWORD(v7) = 0;
    do
    {
      ContextHarvester::getFixedFunctionVertexArrays(this, v7, a3, a4, a5);
      v7 = (v7 + 1);
    }

    while (v7 < 7);
    v6 = *(this + 2);
  }

  if (*(v6 + 3456) != 1 && *(v6 + 3452))
  {
    v8 = 0;
    do
    {
      ContextHarvester::getGenericVertexArrays(this, v8, a3, a4, a5);
      v8 = (v8 + 1);
      v6 = *(this + 2);
    }

    while (v8 < *(v6 + 3452));
  }

  if (*(v6 + 4852) == 1)
  {
    if (HIDWORD(v15))
    {
      v9 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16));
      v10 = HIDWORD(v15);
      if (!v9)
      {
        v11 = 1282;
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
LABEL_17:
    ContextHarvester::encodeWithError(this, 12, 128, v11, "Ceui", **(this + 2), 34962, v10);
    if (v15)
    {
      v12 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16));
      v13 = v15;
      if (!v12)
      {
        v14 = 1282;
LABEL_22:
        ContextHarvester::encodeWithError(this, 12, 128, v14, "Ceui", **(this + 2), 34963, v13);
        return;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
    goto LABEL_22;
  }
}

void ContextHarvester::restoreVAOBindings(ContextHarvester *this, int a2)
{
  v4 = *(this + 2);
  if (*(v4 + 4852) == 1)
  {
    v5 = *(this + 34);
    (*(this + 16))(*(*(this + 3) + 16), v5);
    v4 = *(this + 2);
    if (a2)
    {
      ContextHarvester::encode(this, *(this + 30), 128, "Cui", *v4, v5);
      ContextHarvester::harvestObjectLabel(this, 0x9154u, v5);
      v4 = *(this + 2);
    }
  }

  if (*(v4 + 4858) == 1)
  {
    (*(*(this + 4) + 2728))(*(*(this + 3) + 16), *(v4 + 2076));
    if (a2)
    {
      ContextHarvester::encode(this, 44, 128, "Ce", **(this + 2), *(*(this + 2) + 2076));
    }
  }
}

void ContextHarvester::harvestFramebuffer(unsigned int **this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a2;
  v39 = a2;
  v38 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupFramebuffer, 65030, a2, 65030, 0);
  v7 = this[4];
  v8 = *(v7 + 672);
  v9 = this[3];
  LODWORD(v40[0]) = 0;
  (*(v7 + 104))(*(v9 + 2), 36006, v40);
  if (LODWORD(v40[0]) != v5)
  {
    v8(*(this[3] + 2), 36160, v5);
    LODWORD(v5) = v39;
  }

  if (v5)
  {
    ContextHarvester::encode(this, 203, 0, "Ci@1ui", *this[2], 1, &v39);
    v10 = v39;
  }

  else
  {
    v10 = 0;
  }

  ContextHarvester::encode(this, 17, 128, "Ceui", *this[2], 36160, v10);
  ContextHarvester::harvestObjectLabel(this, 0x8D40u, v39);
  v37 = 0;
  (*(this[4] + 1025))(*(this[3] + 2), 36160, 35449, &v37);
  ContextHarvester::encode(this, 825, 0, "Cee@1e", *this[2], 36160, 35449, &v37);
  v11 = (*(this + 26) + 2);
  __chkstk_darwin();
  v13 = (&v35 - v12);
  if (*(this + 26))
  {
    v14 = 0;
    v15 = 36064;
    v16 = &v35 - v12;
    do
    {
      v17 = this[2][864];
      GPUTools::GL::GetFramebufferAttachmentInfo();
      ++v14;
      v16 += 32;
      ++v15;
    }

    while (v14 < *(this + 26));
  }

  v18 = this[2][864];
  GPUTools::GL::GetFramebufferAttachmentInfo();
  v19 = this[2][864];
  v20 = (*(this + 26) + 1);
  GPUTools::GL::GetFramebufferAttachmentInfo();
  v35 = &v35;
  if (ContextHarvester::isFramebufferHarvestable(this, v39, v13, *(this + 26) + 2))
  {
    v23 = 0;
  }

  else
  {
    v23 = 1281;
  }

  if (v11)
  {
    for (i = 32 * v11; i; i -= 32)
    {
      v25 = v13[2];
      if (v25 > 33303)
      {
        if (v25 != 33304)
        {
          if (v25 != 36161)
          {
            goto LABEL_56;
          }

          GPUTools::NameTargetTupleArray::find(this + 47, v13[1], v40);
          if (v40[0] == &this[48][2 * *this[47]])
          {
            v27 = 1281;
          }

          else
          {
            v27 = v23;
          }

          ContextHarvester::encodeWithError(this, 192, 0, v27, "Ceeeui", *this[2], 36160, *v13, v13[3], v13[1]);
        }
      }

      else if (v25)
      {
        if (v25 != 5890)
        {
          goto LABEL_56;
        }

        GPUTools::NameTargetTupleArray::find(this + 39, v13[1], v40);
        if (v40[0] == &this[40][2 * *this[39]])
        {
          v26 = 1281;
        }

        else
        {
          v26 = v23;
        }

        if (v13[7])
        {
          ContextHarvester::encodeWithError(this, 196, 0, v26, "Ceeuii", *this[2], 36160, *v13, v13[1], v13[5]);
        }

        else
        {
          v28 = v13[3];
          if (v28 <= 34066)
          {
            if (v28 <= 32878)
            {
              if (v28 != 3552)
              {
                if (v28 != 3553)
                {
                  goto LABEL_56;
                }

                goto LABEL_48;
              }

              v30 = 193;
LABEL_49:
              ContextHarvester::encodeWithError(this, v30, 0, v26, "Ceeeuii", *this[2], 36160, *v13, v28, v13[1], v13[5]);
              goto LABEL_15;
            }

            if (v28 != 32879)
            {
              v29 = 34037;
              goto LABEL_41;
            }
          }

          else if (v28 <= 35865)
          {
            if (v28 == 34067)
            {
              v28 = v13[4];
              goto LABEL_48;
            }

            if (v28 != 35864)
            {
LABEL_56:
              dy_string_from_enum();
              dy_abort();
              __break(1u);
              return;
            }
          }

          else if (v28 != 35866 && v28 != 37122)
          {
            v29 = 37120;
LABEL_41:
            if (v28 != v29)
            {
              goto LABEL_56;
            }

LABEL_48:
            v30 = 194;
            goto LABEL_49;
          }

          ContextHarvester::encodeWithError(this, 198, 0, v26, "Ceeuiii", *this[2], 36160, *v13, v13[1], v13[5], v13[6]);
        }
      }

      else
      {
        ContextHarvester::encode(this, 192, 0, "Ceeeui", *this[2], 36160, *v13, 36161, 0);
      }

LABEL_15:
      v13 += 8;
    }
  }

  if (*(this[2] + 4870))
  {
    v36 = 0;
    (*(this[4] + 104))(*(this[3] + 2), 3074, &v36);
    ContextHarvester::encode(this, 497, 0, "Ce", *this[2], v36);
    LODWORD(v31) = *(this + 27);
    if (v31)
    {
      v32 = 0;
      v33 = v40;
      v34 = 34853;
      do
      {
        (*(this[4] + 104))(*(this[3] + 2), v34, v33);
        ++v32;
        v31 = *(this + 27);
        v33 = (v33 + 4);
        v34 = (v34 + 1);
      }

      while (v32 < v31);
    }

    snprintf(this[2] + 4709, 0x40uLL, "Ci@%de", v31);
    ContextHarvester::encode(this, 141, 0, this[2] + 4709, *this[2], *(this + 27), v40);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v21, v22);
}

void ContextHarvester::restoreFramebufferBindings(ContextHarvester *this, int a2)
{
  v4 = *(this + 35);
  v5 = *(this + 4);
  v6 = *(v5 + 5376);
  if (v4 == *(this + 36))
  {
    v19 = 0;
    (*(v5 + 832))(*(*(this + 3) + 16), 36006, &v19);
    if (v19 != v4)
    {
      v6(*(*(this + 3) + 16), 36160, v4);
    }

    if (a2)
    {
      v7 = *(this + 35);
      if (v7 && !(*(*(this + 4) + 5368))(*(*(this + 3) + 16), *(this + 35)))
      {
        v8 = 1282;
      }

      else
      {
        v8 = 0;
      }

      ContextHarvester::encodeWithError(this, 17, 128, v8, "Ceui", **(this + 2), 36160, v7);
    }
  }

  else
  {
    v17 = 0;
    (*(v5 + 832))(*(*(this + 3) + 16), 36006, &v17);
    if (v17 != v4)
    {
      v6(*(*(this + 3) + 16), 36009, v4);
    }

    v10 = *(this + 3);
    v9 = *(this + 4);
    v11 = *(v9 + 5376);
    v12 = *(this + 36);
    v18 = 0;
    (*(v9 + 832))(*(v10 + 16), 36010, &v18);
    if (v18 != v12)
    {
      v11(*(*(this + 3) + 16), 36008, v12);
    }

    if (a2)
    {
      v13 = *(this + 35);
      if (v13 && !(*(*(this + 4) + 5368))(*(*(this + 3) + 16), *(this + 35)))
      {
        v14 = 1282;
      }

      else
      {
        v14 = 0;
      }

      ContextHarvester::encodeWithError(this, 17, 128, v14, "Ceui", **(this + 2), 36009, v13);
      v15 = *(this + 36);
      if (v15 && !(*(*(this + 4) + 5368))(*(*(this + 3) + 16), *(this + 36)))
      {
        v16 = 1282;
      }

      else
      {
        v16 = 0;
      }

      ContextHarvester::encodeWithError(this, 17, 128, v16, "Ceui", **(this + 2), 36008, v15);
    }
  }
}

uint64_t ContextHarvester::HarvestRenderbufferObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1;
  *(a1 + 8) = a3;
  v5 = a1 + 24;
  (*(*(a1 + 32) + 832))(*(*(a1 + 24) + 16), 2978, a1 + 160);
  (*(*(a1 + 32) + 832))(*(*v5 + 16), 36007, a1 + 148);
  v6 = *(a1 + 16);
  v7 = *(v6 + 3456);
  v8 = *(v6 + 4861);
  GPUTools::GL::SavePixelStoreState();
  v22 = xmmword_2066C0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v9 = *(a1 + 16);
  v10 = *(v9 + 3456);
  v11 = *(v9 + 4861);
  GPUTools::GL::ApplyPixelStoreState();
  if (*(*(a1 + 16) + 3460) >= 2)
  {
    (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35052, 0);
    (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35051, 0);
  }

  ContextHarvester::harvestRenderbufferObject(a1, a2, 1);
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = *(v12 + 5328);
  v15 = *(a1 + 148);
  LODWORD(v22) = 0;
  (*(v12 + 832))(*(v13 + 16), 36007, &v22);
  if (v22 != v15)
  {
    v14(*(*v5 + 16), 36161, v15);
  }

  (*(*(a1 + 32) + 2680))(*(*(a1 + 24) + 16), *(a1 + 160), *(a1 + 164), *(a1 + 168), *(a1 + 172));
  v16 = *(a1 + 16);
  v17 = *(v16 + 3456);
  v18 = *(v16 + 4861);
  result = GPUTools::GL::ApplyPixelStoreState();
  v20 = *(a1 + 16);
  if (*(v20 + 3460) >= 2)
  {
    v21 = *(v20 + 2040);
    (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35052, *(v20 + 2044));
    return (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35051, v21);
  }

  return result;
}

void ContextHarvester::harvestRenderbufferObject(ContextHarvester *this, uint64_t a2, int a3)
{
  v37 = a2;
  if (!a2)
  {
    ContextHarvester::harvestRenderbufferObject();
  }

  v6 = *(this + 4);
  v7 = *(v6 + 5328);
  v9 = this + 24;
  v8 = *(this + 3);
  LODWORD(v30) = 0;
  (*(v6 + 832))(*(v8 + 16), 36007, &v30);
  if (v30 != a2)
  {
    v7(*(*v9 + 16), 36161, a2);
  }

  v30 = 0;
  v31 = 0;
  v33 = 0;
  v32 = 0;
  v34 = 0x100000001;
  v35[0] = 0;
  *(v35 + 5) = 0;
  memset(&v35[2], 0, 24);
  v36 = 0;
  v10 = *(*(this + 2) + 3456);
  GPUTools::GL::GetImageInfo();
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v11, v12, 65028, kDYStateGroupRenderbuffer, 65030, v37, 65030, 0);
  ContextHarvester::encode(this, 207, 0, "Ci@1ui", **(this + 2), 1, &v37);
  ContextHarvester::encode(this, 19, 128, "Ceui", **(this + 2), 36161, v37);
  ContextHarvester::harvestObjectLabel(this, 0x8D41u, v37);
  v15 = *(this + 2);
  v16 = v15[5];
  v17 = *(v16 + 352);
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v16 + 352;
  v19 = v16 + 352;
  do
  {
    v20 = *(v17 + 32);
    v21 = v20 >= v37;
    v22 = v20 < v37;
    if (v21)
    {
      v19 = v17;
    }

    v17 = *(v17 + 8 * v22);
  }

  while (v17);
  if (v19 != v18 && v37 >= *(v19 + 32))
  {
    ContextHarvester::encode(this, 4294959107, 0, "Cep", *v15, 36161, *(v19 + 40));
  }

  else
  {
LABEL_13:
    if (!v33 || !v34)
    {
      goto LABEL_21;
    }

    if (*(v15 + 4848) == 1 && SHIDWORD(v35[0]) >= 1)
    {
      ContextHarvester::encode(this, 509, 0, "Ceieii", *v15, 36161, HIDWORD(v35[0]), v30, v33, v34);
    }

    else
    {
      ContextHarvester::encode(this, 508, 0, "Ceeii", *v15, 36161, v30, v33, v34);
    }
  }

  ContextHarvester::encode(this, 4294955024, 0, "Cieieiii", **(this + 2), 1, 36161, HIDWORD(v35[0]), HIDWORD(v31), v33, v34, 0);
  if (a3)
  {
    ContextHarvester::harvestRenderbufferImage(this, v37, &v30);
    v23 = *(this + 67);
    v24 = *(this + 70);
    v25 = *(this + 1);
    v26 = *(this + 2);
    v27 = *(this + 591);
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    ContextHarvester::encodeCommand(this, 0xFFFFD003, 7u, v28, v29, 529413, v30, 5125, v33, 5125, v34, 529413, HIDWORD(v35[0]), 529413, HIDWORD(v30), 529413, v31, 65025, *(this + 2) + 4644);
  }

LABEL_21:
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v13, v14);
  if (*(&v35[2] + 4))
  {
    *(&v35[3] + 4) = *(&v35[2] + 4);
    operator delete(*(&v35[2] + 4));
  }
}

void sub_12754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ContextHarvester::HarvestRenderbufferInfo(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a4)
  {
    v7 = result;
    *result = 1;
    v8 = result + 24;
    (*(*(result + 32) + 832))(*(*(result + 24) + 16), 2978, result + 160);
    (*(*(v7 + 32) + 832))(*(*v8 + 16), 36007, v7 + 148);
    v9 = *(v7 + 16);
    v10 = *(v9 + 3456);
    v11 = *(v9 + 4861);
    GPUTools::GL::SavePixelStoreState();
    v32 = xmmword_2066C0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v12 = *(v7 + 16);
    v13 = *(v12 + 3456);
    v14 = *(v12 + 4861);
    GPUTools::GL::ApplyPixelStoreState();
    if (*(*(v7 + 16) + 3460) >= 2)
    {
      (*(*(v7 + 32) + 5136))(*(*(v7 + 24) + 16), 35052, 0);
      (*(*(v7 + 32) + 5136))(*(*(v7 + 24) + 16), 35051, 0);
    }

    v16 = *(v7 + 24);
    v15 = *(v7 + 32);
    v17 = *(v15 + 5328);
    LODWORD(v32) = 0;
    (*(v15 + 832))(*(v16 + 16), 36007, &v32);
    if (v32 != a2)
    {
      v17(*(*v8 + 16), 36161, a2);
    }

    v18 = *(*(v7 + 16) + 3456);
    GPUTools::GL::GetImageInfo();
    if (a3)
    {
      ContextHarvester::harvestRenderbufferImage(v7, a2, a4);
      v19 = *(a4 + 52);
      if (v19)
      {
        v20 = *(a4 + 56);
        v21 = (v19 + 3) >> 2;
        v22 = (*(a4 + 64) - v20) >> 2;
        if (v21 <= v22)
        {
          if (v21 < v22)
          {
            *(a4 + 64) = &v20[4 * v21];
          }
        }

        else
        {
          std::vector<unsigned int>::__append((a4 + 56), v21 - v22);
          v20 = *(a4 + 56);
          v19 = *(a4 + 52);
        }

        memcpy(v20, (*(v7 + 560) + *(v7 + 536)), v19);
      }
    }

    v24 = *(v7 + 24);
    v23 = *(v7 + 32);
    v25 = *(v23 + 5328);
    v26 = *(v7 + 148);
    LODWORD(v32) = 0;
    (*(v23 + 832))(*(v24 + 16), 36007, &v32);
    if (v32 != v26)
    {
      v25(*(*v8 + 16), 36161, v26);
    }

    (*(*(v7 + 32) + 2680))(*(*(v7 + 24) + 16), *(v7 + 160), *(v7 + 164), *(v7 + 168), *(v7 + 172));
    v27 = *(v7 + 16);
    v28 = *(v27 + 3456);
    v29 = *(v27 + 4861);
    result = GPUTools::GL::ApplyPixelStoreState();
    v30 = *(v7 + 16);
    if (*(v30 + 3460) >= 2)
    {
      v31 = *(v30 + 2040);
      (*(*(v7 + 32) + 5136))(*(*(v7 + 24) + 16), 35052, *(v30 + 2044));
      return (*(*(v7 + 32) + 5136))(*(*(v7 + 24) + 16), 35051, v31);
    }
  }

  return result;
}

uint64_t ContextHarvester::harvestRenderbufferImage(uint64_t a1, int a2, unsigned int *a3)
{
  if (!a2)
  {
    ContextHarvester::harvestRenderbufferImage();
  }

  v5 = GPUTools::GL::ComputePackedClientImageSize();
  a3[13] = v5;
  if (*(a1 + 544) >= v5 || (GPUTools::VMBuffer::alloc((a1 + 536), v5, 0) & 1) != 0)
  {
    v6 = ((*(a1 + 536) + *(a1 + 576) - 1) & -*(a1 + 576)) - *(a1 + 536);
    *(a1 + 560) = v6;
    *(a1 + 568) = v6;
    v7 = a3[1];
    v8 = a3[2];
    v9 = *(a1 + 590);

    return GPUTools::GL::GetImageData();
  }

  else
  {
    v11 = dy_abort();
    return ContextHarvester::harvestGLSLProgramPipeline(v11, v12);
  }
}

void ContextHarvester::harvestGLSLProgramPipeline(ContextHarvester *this, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  if (!a2)
  {
    ContextHarvester::harvestGLSLProgramPipeline();
  }

  v21 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgramPipeline, 65030, a2, 65030, 0);
  ContextHarvester::encode(this, 890, 0, "Ci@1ui", **(this + 2), 1, &v22);
  ContextHarvester::encode(this, 887, 128, "Cui", **(this + 2), v22);
  ContextHarvester::harvestObjectLabel(this, 0x8A4Fu, v22);
  query_pipeline_programs(*(this + 2), v22, &v16);
  ContextHarvester::encode(this, 920, 512, "Cuiuiui", **(this + 2), v22, 1, HIDWORD(v16));
  ContextHarvester::encode(this, 920, 512, "Cuiuiui", **(this + 2), v22, 2, v17);
  ContextHarvester::encode(this, 886, 0, "Cuiui", **(this + 2), v22, v16);
  v15 = 0;
  v6 = v22;
  v7 = *(this + 4);
  v8 = *(v7 + 6624);
  (*(v7 + 6608))(*(*(this + 3) + 16), v22, 35716, &v15);
  v9 = v15;
  if (!v15)
  {
    v11 = 0;
    goto LABEL_8;
  }

  if (*(this + 68) >= v15)
  {
LABEL_6:
    v10 = ((*(this + 67) + *(this + 72) - 1) & -*(this + 72)) - *(this + 67);
    *(this + 70) = v10;
    *(this + 71) = v10;
    v8(*(*(this + 3) + 16), v6, v9, 0);
    v11 = *(this + 70) + *(this + 67);
LABEL_8:
    v14 = 0;
    (*(*(this + 4) + 6616))(*(*(this + 3) + 16), v22);
    (*(*(this + 4) + 6608))(*(*(this + 3) + 16), v22, 35715, &v14);
    ContextHarvester::encode(this, 4294955024, 0, "CiuiiSi", **(this + 2), 14, v22, v15, v11, v14);
    ContextHarvester::encode(this, 4294955024, 0, "Ciuiuiuiuiuiui", **(this + 2), 15, v22, HIDWORD(v16), v17, v18, v19, v20);
    ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v12, v13);
    return;
  }

  if (GPUTools::VMBuffer::alloc((this + 536), v15, 0))
  {
    v9 = v15;
    goto LABEL_6;
  }

  dy_abort();
  __break(1u);
}

void ContextHarvester::harvestGLSLProgramLinkedState(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = a2;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgram, 65030, a2, 65030, 0);
  ContextHarvester::encode_r(this, 116, 0, v7, "C", **(this + 2));
  ContextHarvester::harvestObjectLabel(this, 0x8B40u, a2);
  v10 = *(this + 6);
  v11 = v10[1];
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v7;
      if (*&v11 <= v7)
      {
        v13 = a2 % v11.i32[0];
      }
    }

    else
    {
      v13 = (v11.i32[0] - 1) & v7;
    }

    v14 = *(*v10 + 8 * v13);
    if (v14)
    {
      v15 = *v14;
      if (v15)
      {
        if (v12.u32[0] < 2uLL)
        {
          v16 = *&v11 - 1;
          while (1)
          {
            v18 = v15[1];
            if (v18 == v7)
            {
              if (*(v15 + 4) == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v18 & v16) != v13)
            {
              goto LABEL_24;
            }

            v15 = *v15;
            if (!v15)
            {
              goto LABEL_24;
            }
          }
        }

        do
        {
          v17 = v15[1];
          if (v17 == v7)
          {
            if (*(v15 + 4) == a2)
            {
LABEL_22:
              if (ContextHarvester::encodeProgramLinkSequence(this, a2, v15[3], 1, v9))
              {
                ContextHarvester::harvestGLSLProgramUniforms(this, a2, v19, v8, v9);
              }

              break;
            }
          }

          else
          {
            if (v17 >= *&v11)
            {
              v17 %= *&v11;
            }

            if (v17 != v13)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

LABEL_24:
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v8, v9);
}

void ContextHarvester::harvestGLSLProgramCurrentState(ContextInfo **this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = a2;
  v45 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgram, 65030, a2, 65030, 0);
  ProgramInfo::ProgramInfo(v39, this[2], a2);
  v9 = this[6];
  v10 = *(v9 + 8);
  if (!*&v10)
  {
    goto LABEL_21;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v7;
    if (*&v10 <= v7)
    {
      v12 = a2 % v10.i32[0];
    }
  }

  else
  {
    v12 = (v10.i32[0] - 1) & v7;
  }

  v13 = *(*v9 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_21:
    v18 = v39;
    goto LABEL_22;
  }

  if (v11.u32[0] < 2uLL)
  {
    v15 = *&v10 - 1;
    while (1)
    {
      v17 = v14[1];
      if (v17 == v7)
      {
        if (*(v14 + 4) == a2)
        {
          goto LABEL_38;
        }
      }

      else if ((v17 & v15) != v12)
      {
        goto LABEL_21;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v16 = v14[1];
    if (v16 == v7)
    {
      break;
    }

    if (v16 >= *&v10)
    {
      v16 %= *&v10;
    }

    if (v16 != v12)
    {
      goto LABEL_21;
    }

LABEL_11:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (*(v14 + 4) != a2)
  {
    goto LABEL_11;
  }

LABEL_38:
  v18 = v14[3];
LABEL_22:
  ContextHarvester::encodeProgramLinkSequence(this, a2, v18, 0, v8);
  v38 = 0;
  (*(this[4] + 658))(*(this[3] + 2), a2, 35717, &v38);
  ObjectNameArray::ObjectNameArray(v35, v38);
  (*(this[4] + 759))(*(this[3] + 2), a2, v38, 0, v36);
  v21 = v37;
  if (v37)
  {
    v22 = 0;
    do
    {
      v34 = 0;
      (*(this[4] + 657))(*(this[3] + 2), *(v36 + 4 * v22), 35663, &v34);
      v23 = *(v36 + 4 * v22);
      v24 = v34;
      ContextHarvester::encode(this, 6, 128, "Culul", *this[2], v7, v23);
      ContextHarvester::encode(this, 4294955024, 0, "Ciuieuiui", *this[2], 4, v23, v24, a2, 0);
      ++v22;
    }

    while (v21 != v22);
  }

  ContextHarvester::encodeProgramParameters(this, a2, v19, v39, v20);
  ObjectNameArray::~ObjectNameArray(v35);
  v25 = v44;
  if (v44)
  {
    do
    {
      v26 = *v25;
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = v43;
  v43 = 0;
  if (v27)
  {
    operator delete(v27);
  }

  v28 = v41;
  if (v41)
  {
    v29 = v42;
    v30 = v41;
    if (v42 != v41)
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = v41;
    }

    v42 = v28;
    operator delete(v30);
  }

  ProgramPipelineInfo::~ProgramPipelineInfo(&v40);
  ProgramPipelineInfo::~ProgramPipelineInfo(v39);
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v32, v33);
}

void sub_13348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ProgramInfo::~ProgramInfo(va);
  AutoStateGroup::~AutoStateGroup((v15 - 96), v17, v18, v19, v20);
  _Unwind_Resume(a1);
}

void sub_13380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  ObjectNameArray::~ObjectNameArray(va);
  ProgramInfo::~ProgramInfo(va1);
  AutoStateGroup::~AutoStateGroup((v8 - 96), v10, v11, v12, v13);
  _Unwind_Resume(a1);
}

uint64_t ContextHarvester::HarvestTextureObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 1;
  *(a1 + 8) = a4;
  v7 = *(a1 + 16);
  v8 = *(v7 + 3456);
  v9 = *(v7 + 4861);
  GPUTools::GL::SavePixelStoreState();
  v10 = *(a1 + 16);
  v11 = *(v10 + 3456);
  v12 = *(v10 + 4861);
  GPUTools::GL::ApplyPixelStoreState();
  if (*(*(a1 + 16) + 3460) >= 2)
  {
    (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35052, 0);
    (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35051, 0);
  }

  (*(*(a1 + 32) + 2736))(*(*(a1 + 24) + 16), 33984);
  ContextHarvester::harvestTexture(a1, a2, a3, v13, v14);
  bound_texture = wrapper_cache_get_bound_texture(*(a1 + 16), 0, a2);
  GPUTools::GL::DYGetTextureTargetInfo();
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = *(v16 + 40);
  v25 = 0;
  (*(v16 + 832))(*(v17 + 16), 0, &v25);
  if (v25 != bound_texture)
  {
    v18(*(*(a1 + 24) + 16), a2, bound_texture);
  }

  (*(*(a1 + 32) + 2736))(*(*(a1 + 24) + 16), *(*(a1 + 16) + 2072));
  v19 = *(a1 + 16);
  v20 = *(v19 + 3456);
  v21 = *(v19 + 4861);
  result = GPUTools::GL::ApplyPixelStoreState();
  v23 = *(a1 + 16);
  if (*(v23 + 3460) >= 2)
  {
    v24 = *(v23 + 2040);
    (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35052, *(v23 + 2044));
    return (*(*(a1 + 32) + 5136))(*(*(a1 + 24) + 16), 35051, v24);
  }

  return result;
}

void ContextHarvester::harvestTexture(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v101 = a3;
  v100 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupTexture, 65030, a3, 65030, a2);
  *(v99 + 7) = 0;
  v99[0] = 0;
  GPUTools::GL::DYGetTextureTargetInfo();
  v8 = *(this + 4);
  v9 = *(v8 + 40);
  v10 = *(this + 3);
  LODWORD(v102) = 0;
  (*(v8 + 832))(*(v10 + 16), 0, &v102);
  if (v102 != a3)
  {
    v9(*(*(this + 3) + 16), a2, a3);
  }

  v11 = v101;
  if (v101)
  {
    ContextHarvester::encode(this, 208, 0, "Ci@1ui", **(this + 2), 1, &v101);
    v11 = v101;
  }

  ContextHarvester::encode(this, 20, 128, "Ceui", **(this + 2), a2, v11);
  v98 = 0;
  if (*(*(this + 2) + 4867) != 1)
  {
    goto LABEL_14;
  }

  (*(*(this + 4) + 1016))(*(*(this + 3) + 16), a2, 37167, &v98);
  if (v98 != 1)
  {
    goto LABEL_14;
  }

  *&v93[1] = xmmword_2066C0;
  LODWORD(v94) = 1;
  GPUTools::GL::GetTexStorageInfo();
  switch(LOBYTE(v99[1]))
  {
    case 1u:
      GPUTools::FB::Encode(*(this + 2) + 120, 1041, 4096, "Ceiei", v12, v13, v14, v15, **(this + 2));
      goto LABEL_13;
    case 2u:
      GPUTools::FB::Encode(*(this + 2) + 120, 1040, 4096, "Ceieii", v12, v13, v14, v15, **(this + 2));
      goto LABEL_13;
    case 3u:
      GPUTools::FB::Encode(*(this + 2) + 120, 1042, 4096, "Ceieiii", v12, v13, v14, v15, **(this + 2));
LABEL_13:
      v102 = 0;
      v103 = 0uLL;
      v104[0] = 0;
      *&v104[1] = 0x100000001;
      *&v104[3] = 0;
      *(&v104[4] + 1) = 0;
      v16 = *(*(this + 2) + 3456);
      GPUTools::GL::GetImageInfo();
      GPUTools::FB::Encode(*(this + 2) + 144, 4294955024, 0x2000, "Cietee", v17, v18, v19, v20, **(this + 2));
      v21 = *(this + 5);
      v22 = *(this + 2);
      GPUTools::FB::Stream::Writev_nopartial();
LABEL_14:
      ContextHarvester::harvestObjectLabel(this, 0x1702u, v101);
      if (BYTE6(v99[1]) == 1)
      {
        *&v93[1] = this;
        v93[3] = a2;
        ContextHarvester::harvestSamplingParameters<TextureParameterEncoder>(this, &v93[1]);
        v25 = *(this + 2);
        if (*(v25 + 4857) == 1)
        {
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 33084, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceei", **(*&v93[1] + 16), v93[3], 33084, v102);
          v25 = *(this + 2);
        }

        if (*(v25 + 4856) == 1)
        {
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 33085, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceei", **(*&v93[1] + 16), v93[3], 33085, v102);
          v25 = *(this + 2);
        }

        if (*(v25 + 4866) == 1)
        {
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 36418, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 36418, v102);
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 36419, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 36419, v102);
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 36420, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 36420, v102);
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 36421, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 36421, v102);
          v25 = *(this + 2);
        }

        if (*(v25 + 4851) == 1)
        {
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 33169, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 33169, v102);
          v25 = *(this + 2);
        }

        if (!*(v25 + 3456))
        {
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 34891, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 34891, v102);
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1008))(*(*(*&v93[1] + 24) + 16), v93[3], 32870, &v102);
          ContextHarvester::encode(*&v93[1], 598, 0, "Ceef", **(*&v93[1] + 16), v93[3], 32870, *&v102);
          v25 = *(this + 2);
        }

        if (is_extension_available(v25, "GL_APPLE_texture_range"))
        {
          LODWORD(v102) = 0;
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 34236, &v102);
          ContextHarvester::encode(*&v93[1], 600, 0, "Ceee", **(*&v93[1] + 16), v93[3], 34236, v102);
        }

        if (is_extension_available(*(this + 2), "GL_OES_draw_texture"))
        {
          (*(*(*&v93[1] + 32) + 1016))(*(*(*&v93[1] + 24) + 16), v93[3], 35741, &v102);
          ContextHarvester::encode(*&v93[1], 601, 0, "Cee@4i", **(*&v93[1] + 16), v93[3], 35741, &v102);
        }
      }

      v106 = 0x851A00008519;
      v105 = xmmword_206740;
      if (a2 == 34067)
      {
        v90 = 6;
        v26 = *(*(this + 2) + 40);
        v27 = *(v26 + 312);
        if (!v27)
        {
          goto LABEL_61;
        }
      }

      else
      {
        LODWORD(v105) = a2;
        v90 = 1;
        v26 = *(*(this + 2) + 40);
        v27 = *(v26 + 312);
        if (!v27)
        {
          goto LABEL_61;
        }
      }

      v28 = vcnt_s8(v27);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        v29 = v101;
        if (v27 <= v101)
        {
          v29 = v101 % v27;
        }
      }

      else
      {
        v29 = (v27 - 1) & v101;
      }

      v30 = *(*(v26 + 304) + 8 * v29);
      if (v30)
      {
        v31 = *v30;
        if (*v30)
        {
          if (v28.u32[0] < 2uLL)
          {
            v32 = v27 - 1;
            while (1)
            {
              v34 = v31[1];
              if (v34 == v101)
              {
                if (*(v31 + 4) == v101)
                {
                  goto LABEL_53;
                }
              }

              else if ((v34 & v32) != v29)
              {
                goto LABEL_61;
              }

              v31 = *v31;
              if (!v31)
              {
                goto LABEL_61;
              }
            }
          }

          do
          {
            v33 = v31[1];
            if (v33 == v101)
            {
              if (*(v31 + 4) == v101)
              {
LABEL_53:
                v35 = IOSurfaceLookup(*(v31 + 6));
                v36 = v35;
                if (v35)
                {
                  *(v31 + 7) = IOSurfaceGetSeed(v35);
                  ContextHarvester::encodeCommand(this, 0xFFFFE005, 3u, v37, v38, 529413, a2, 65024, v36, 35670, *(v31 + 32));
                  v102 = 0;
                  v103 = 0uLL;
                  v104[0] = 0;
                  *&v104[1] = 0x100000001;
                  *&v104[3] = 0;
                  *(&v104[4] + 1) = 0;
                  v39 = *(this + 591);
                  copyout_iosurface_texture(*(this + 2), a2, v36, v31[5], &v102);
                  v44 = *(this + 2);
                  v47 = *v44;
                  v45 = (v44 + 15);
                  v46 = v47;
                  if (v98 == 1)
                  {
                    v48 = 603;
                    v49 = "CeiiiiieeU";
                  }

                  else
                  {
                    v49 = "CeieiiieeU";
                    v48 = 594;
                  }

                  v89 = *(this + 2) + 4644;
                  GPUTools::FB::Encode(v45, v48, 4096, v49, v40, v41, v42, v43, v46);
                  v50 = *(this + 5);
                  v51 = *(this + 2);
                  while (atomic_exchange((v50 + 56), 1u) == 1)
                  {
                      ;
                    }
                  }

                  v52 = **(v51 + 120);
                  GPUTools::FB::Stream::Write_nolock();
                  atomic_store(0, (v50 + 56));
                  v53 = v31[5];
                  encode_iosurface_info(*(this + 2), v36);
                  GPUTools::FB::Encode(*(this + 2) + 144, 4294955024, 0x2000, "Cietee", v54, v55, v56, v57, **(this + 2));
                  v58 = *(this + 5);
                  v59 = *(this + 2);
                  GPUTools::FB::Stream::Writev_nopartial();
                  CFRelease(v36);
                  v90 = 0;
                }

                break;
              }
            }

            else
            {
              if (v33 >= v27)
              {
                v33 %= v27;
              }

              if (v33 != v29)
              {
                break;
              }
            }

            v31 = *v31;
          }

          while (v31);
        }
      }

LABEL_61:
      if (BYTE1(v99[1]) == 1)
      {
        LODWORD(v102) = 0;
        (*(*(this + 4) + 832))(*(*(this + 3) + 16), LODWORD(v99[0]), &v102);
        v60 = v102;
        if (v102 >> 16)
        {
          v60 = v102 >> 16;
        }

        v61 = 16 * (v102 >> 16 != 0);
        if (v60 > 0xFF)
        {
          v60 >>= 8;
          v61 = (16 * (v102 >> 16 != 0)) | 8;
        }

        if (v60 > 0xF)
        {
          v60 >>= 4;
          v61 |= 4u;
        }

        if (v60 > 3)
        {
          v60 >>= 2;
          v61 |= 2u;
        }

        v92 = (v61 | (v60 > 1)) + 1;
        if (!v90)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v92 = 1;
        if (!v90)
        {
LABEL_122:
          ContextHarvester::encodeCommand(v100, 0xFFFFD008, 0, v23, v24);
          return;
        }
      }

      v62 = 0;
LABEL_75:
      v63 = 0;
      v91 = v62;
      v64 = *(&v105 + v62);
      while (1)
      {
        v95 = 0;
        v94 = 0;
        *&v93[1] = 0u;
        *v96 = 0x100000001;
        v97[0] = 0;
        *(v97 + 5) = 0;
        v65 = *(*(this + 2) + 3456);
        GPUTools::GL::GetImageInfo();
        if (v95)
        {
          if (v96[0] && v96[1])
          {
            break;
          }
        }

LABEL_76:
        v63 = (v63 + 1);
        if (v92 == v63)
        {
          v62 = v91 + 1;
          if (v91 + 1 == v90)
          {
            goto LABEL_122;
          }

          goto LABEL_75;
        }
      }

      v93[0] = 0;
      if (LODWORD(v97[0]))
      {
        if (LOBYTE(v99[1]) != 3 && LOBYTE(v99[1]) != 2 && LOBYTE(v99[1]) != 1)
        {
          goto LABEL_124;
        }

        (*(*(this + 4) + 1000))(*(*(this + 3) + 16), v64, v63, 34464, v93);
        v66 = v93[0];
        if (*(this + 68) >= v93[0])
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (LOBYTE(v99[1]) != 3 && LOBYTE(v99[1]) != 2 && LOBYTE(v99[1]) != 1)
        {
LABEL_124:
          dy_string_from_enum();
          dy_abort();
          goto LABEL_127;
        }

        v93[0] = GPUTools::GL::ComputePackedClientImageSize();
        v66 = v93[0];
        if (*(this + 68) >= v93[0])
        {
LABEL_93:
          v67 = *(this + 67);
          v68 = (v67 + *(this + 72) - 1) & -*(this + 72);
          v69 = v68 - v67;
          *(this + 70) = v69;
          *(this + 71) = v69;
          if (LODWORD(v97[0]))
          {
            (*(*(this + 4) + 3080))(*(*(this + 3) + 16), v64, v63, v68);
          }

          else
          {
            if (!v93[0])
            {
              goto LABEL_99;
            }

            v70 = *(this + 590);
            GPUTools::GL::GetImageData();
          }

          if (v93[0])
          {
            v71 = *(this + 67);
            v72 = *(this + 70);
            v73 = *(this + 1);
            v74 = *(this + 2);
            v75 = *(this + 591);
            DYGetGLGuestAppClient();
            GPUTools::Interpose::DYSavePointer();
LABEL_100:
            v76 = (*(this + 2) + 4709);
            v76[2] = 0u;
            v76[3] = 0u;
            *v76 = 0u;
            v76[1] = 0u;
            v103 = 0u;
            memset(v104, 0, sizeof(v104));
            strlcpy((*(this + 2) + 4709), "Cei", 0x40uLL);
            GPUTools::FB::FIFOArgumentProvider::push(&v102, **(this + 2));
            GPUTools::FB::FIFOArgumentProvider::push(&v102, v64);
            GPUTools::FB::FIFOArgumentProvider::push(&v102, v63);
            if (v98 == 1)
            {
              switch(LOBYTE(v99[1]))
              {
                case 1u:
                  strlcat((*(this + 2) + 4709), "ii", 0x40uLL);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
                  v77 = &v95;
                  break;
                case 2u:
                  strlcat((*(this + 2) + 4709), "iiii", 0x40uLL);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, v95);
                  v77 = v96;
                  break;
                case 3u:
                  strlcat((*(this + 2) + 4709), "iiiiii", 0x40uLL);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, v95);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, v96[0]);
                  v77 = &v96[1];
                  break;
                default:
                  goto LABEL_124;
              }

              GPUTools::FB::FIFOArgumentProvider::push(&v102, *v77);
              if (LODWORD(v97[0]))
              {
                strlcat((*(this + 2) + 4709), "e", 0x40uLL);
                GPUTools::FB::FIFOArgumentProvider::push(&v102, v93[1]);
              }
            }

            else
            {
              strlcat((*(this + 2) + 4709), "e", 0x40uLL);
              GPUTools::FB::FIFOArgumentProvider::push(&v102, v93[1]);
              switch(LOBYTE(v99[1]))
              {
                case 3u:
                  strlcat((*(this + 2) + 4709), "iii", 0x40uLL);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, v95);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, v96[0]);
                  v78 = &v96[1];
                  break;
                case 2u:
                  strlcat((*(this + 2) + 4709), "ii", 0x40uLL);
                  GPUTools::FB::FIFOArgumentProvider::push(&v102, v95);
                  v78 = v96;
                  break;
                case 1u:
                  strlcat((*(this + 2) + 4709), "i", 0x40uLL);
                  v78 = &v95;
                  break;
                default:
                  goto LABEL_124;
              }

              GPUTools::FB::FIFOArgumentProvider::push(&v102, *v78);
              strlcat((*(this + 2) + 4709), "i", 0x40uLL);
              GPUTools::FB::FIFOArgumentProvider::push(&v102, 0);
            }

            if ((v93[1] & 0xFFFFFFFD) == 0x8C40)
            {
              v93[2] = v93[1];
            }

            v79 = *(this + 2);
            if (LODWORD(v97[0]))
            {
              strlcat((v79 + 4709), "i", 0x40uLL);
              v80 = v93[0];
            }

            else
            {
              strlcat((v79 + 4709), "ee", 0x40uLL);
              GPUTools::FB::FIFOArgumentProvider::push(&v102, v93[2]);
              v80 = v93[3];
            }

            GPUTools::FB::FIFOArgumentProvider::push(&v102, v80);
            strlcat((*(this + 2) + 4709), "U", 0x40uLL);
            GPUTools::FB::FIFOArgumentProvider::push(&v102, (*(this + 2) + 4644));
            v81 = *(this + 2);
            GPUTools::FB::Encode();
            v88 = *(this + 70) + *(this + 67);
            GPUTools::FB::Encode(*(this + 2) + 144, 4294955024, 0x2000, "Cietee", v82, v83, v84, v85, **(this + 2));
            v86 = *(this + 5);
            v87 = *(this + 2);
            GPUTools::FB::Stream::Writev_nopartial();
            GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v102);
            goto LABEL_76;
          }

LABEL_99:
          *(*(this + 2) + 4644) = 0;
          goto LABEL_100;
        }
      }

      if ((GPUTools::VMBuffer::alloc((this + 536), v66, 0) & 1) == 0)
      {
        dy_abort();
        goto LABEL_127;
      }

      goto LABEL_93;
  }

  dy_string_from_enum();
  dy_abort();
LABEL_127:
  __break(1u);
}

void sub_147AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ContextHarvester::HarvestAll(ContextHarvester *this, int a2, char a3)
{
  *this = 0;
  *(this + 591) = a3;
  v5 = **(this + 2);
  v6 = GLIContextFromEAGLContext();
  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || v6 < *(v8 + 32))
  {
LABEL_9:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  check_errors(*(v8 + 40));
  ContextHarvester::queryObjectLists(this);
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v12, v13, 65028, kDYStateGroupRoot, 65030, 0, 65030, 0);
  ContextHarvester::saveBufferBindings(this);
  v14 = *(*(this + 2) + 4847);
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36006, this + 140);
  if (v14)
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36010, this + 144);
  }

  else
  {
    *(this + 36) = *(this + 35);
  }

  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36007, this + 148);
  (*(*(this + 4) + 2736))(*(*(this + 3) + 16), 33984);
  ContextHarvester::encode(this, 2, 128, "Ce", **(this + 2), 33984);
  v15 = *(this + 2);
  if (*(v15 + 4852) == 1)
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34229, this + 136);
    v15 = *(this + 2);
  }

  if (is_extension_available(v15, "GL_ARB_vertex_program"))
  {
    (*(*(this + 4) + 4256))(*(*(this + 3) + 16), 34336, 34423, this + 152);
  }

  if (is_extension_available(*(this + 2), "GL_ARB_fragment_program"))
  {
    (*(*(this + 4) + 4256))(*(*(this + 3) + 16), 34820, 34423, this + 156);
  }

  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2978, this + 160);
  if (*(*(this + 2) + 4862) == 1)
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36389, this + 584);
    (*(*(this + 4) + 792))(*(*(this + 3) + 16), 36388, this + 588);
    (*(*(this + 4) + 792))(*(*(this + 3) + 16), 36387, this + 589);
    if (*(this + 588))
    {
      if (!*(this + 589))
      {
        (*(*(this + 4) + 7256))(*(*(this + 3) + 16));
        ContextHarvester::encode(this, 1004, 128, "C", **(this + 2));
      }
    }
  }

  v16 = *(this + 2);
  v17 = *(v16 + 3456);
  v18 = *(v16 + 4861);
  GPUTools::GL::SavePixelStoreState();
  v86 = xmmword_2066C0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v19 = *(this + 2);
  v20 = *(v19 + 3456);
  v21 = *(v19 + 4861);
  GPUTools::GL::ApplyPixelStoreState();
  ContextHarvester::encodePixelStore(this, &v86, &v86, 128);
  ContextHarvester::setPixelBuffers(this, 0, 0, 1);
  if (a2)
  {
    ContextHarvester::harvestBufferObjects(this, v22, v23, v24, v25);
    ContextHarvester::harvestSamplers(this, v26, v27, v28, v29);
    ContextHarvester::harvestRenderbuffers(this, v30, v31, v32, v33);
    if (*(*(this + 2) + 4859) == 1)
    {
      ContextHarvester::harvestSyncObjects(this, v34, v35, v36, v37);
    }

    ContextHarvester::harvestLegacyARBPrograms(this);
  }

  if (*(*(this + 2) + 3456) != 1)
  {
    ContextHarvester::harvestUniformBufferBindings(this, v22, v23, v24, v25);
    if (a2)
    {
      ContextHarvester::harvestGLSLShaders(this, v38, v23, v24, v25);
      ContextHarvester::harvestGLSLPrograms_LinkedStatePass(this, v39, v40, v41, v42);
      if (*(*(this + 2) + 4846) == 1)
      {
        ContextHarvester::harvestGLSLProgramPipelines(this, v43, v44, v45, v46);
      }

      ContextHarvester::harvestGLSLPrograms_CurrentStatePass(this, v43, v44, v45, v46);
      ContextHarvester::harvestGLSLShaderLabels(this, v47, v48, v49, v50);
      ContextHarvester::encodeGLSLShaderDeletes(this, v51, v52, v53, v54);
    }
  }

  ContextHarvester::harvestTextures(this, a2, v23, v24, v25);
  ContextHarvester::restoreBufferBindings(this);
  if ((a2 & 1) == 0)
  {
    v59 = *(this + 2);
    if (v59[4864])
    {
LABEL_36:
      if (v59[4863])
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  ContextHarvester::harvestVertexArrayObjects(this, v55, v56, v57, v58);
  if ((a2 & 1) == 0)
  {
    v59 = *(this + 2);
    goto LABEL_36;
  }

LABEL_37:
  ContextHarvester::harvestFramebuffers(this, v55, v56, v57, v58);
  v59 = *(this + 2);
LABEL_38:
  if (v59[4868] == 1)
  {
    ContextHarvester::harvestQueryObjects(this, v55, v56, v57, v58);
    v59 = *(this + 2);
  }

  if (v59[4862] == 1)
  {
    ContextHarvester::harvestXfbObjects(this, v55, v56, v57, v58);
    v59 = *(this + 2);
  }

  if (is_extension_available(v59, "GL_APPLE_fence"))
  {
    ContextHarvester::harvestFenceObjects(this, v60, v61, v62, v63);
  }

  ContextHarvester::encodeCurrentProgramAndBoundPipeline(this);
  ContextHarvester::restoreFramebufferBindings(this, 1);
  v65 = *(this + 3);
  v64 = *(this + 4);
  v66 = *(v64 + 5328);
  v67 = *(this + 37);
  LODWORD(v86) = 0;
  (*(v64 + 832))(*(v65 + 16), 36007, &v86);
  if (v86 != v67)
  {
    v66(*(*(this + 3) + 16), 36161, v67);
  }

  v68 = *(this + 37);
  if (v68 && !(*(*(this + 4) + 5320))(*(*(this + 3) + 16), *(this + 37)))
  {
    v69 = 1282;
  }

  else
  {
    v69 = 0;
  }

  ContextHarvester::encodeWithError(this, 19, 128, v69, "Ceui", **(this + 2), 36161, v68);
  ContextHarvester::restoreTextureUnitBindings(this, 1);
  ContextHarvester::restoreVAOBindings(this, 1);
  ContextHarvester::restoreLegacyARBProgramBindings(this, 1);
  ContextHarvester::encodeBufferBindings(this);
  (*(*(this + 4) + 2680))(*(*(this + 3) + 16), *(this + 40), *(this + 41), *(this + 42), *(this + 43));
  ContextHarvester::encodeCommandEx(this, 0x2DDu, 0x80u, 4u, v70, v71, v72, 5124, *(this + 40), 5124, *(this + 41), 5124, *(this + 42), 5124, *(this + 43));
  if (*(*(this + 2) + 4862) == 1)
  {
    (*(*(this + 4) + 7232))(*(*(this + 3) + 16), 36386, *(this + 146));
    ContextHarvester::encode(this, 980, 128, "Ceui", **(this + 2), 36386, *(this + 146));
    if (*(this + 588))
    {
      if (!*(this + 589))
      {
        (*(*(this + 4) + 7264))(*(*(this + 3) + 16));
        ContextHarvester::encode(this, 1005, 128, "C", **(this + 2));
      }
    }
  }

  v73 = *(this + 2);
  v74 = *(v73 + 3456);
  v75 = *(v73 + 4861);
  GPUTools::GL::ApplyPixelStoreState();
  ContextHarvester::encodePixelStore(this, this + 44, this + 53, 128);
  ContextHarvester::setPixelBuffers(this, *(*(this + 2) + 2044), *(*(this + 2) + 2040), 1);
  ContextHarvester::harvestGlobalState(this);
  (*(*(this + 4) + 2736))(*(*(this + 3) + 16), *(*(this + 2) + 2072));
  ContextHarvester::encode(this, 2, 128, "Ce", **(this + 2), *(*(this + 2) + 2072));
  ContextHarvester::encodeCommand(this, 0xB3u, 0, v76, v77);
  v78 = **(this + 2);
  v79 = GLIContextFromEAGLContext();
  v80 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v80)
  {
    goto LABEL_62;
  }

  v81 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v82 = *(v80 + 32);
    v10 = v82 >= v79;
    v83 = v82 < v79;
    if (v10)
    {
      v81 = v80;
    }

    v80 = *(v80 + 8 * v83);
  }

  while (v80);
  if (v81 == ContextInfo::activeCtxInfoMap + 8 || v79 < *(v81 + 32))
  {
LABEL_62:
    v81 = ContextInfo::activeCtxInfoMap + 8;
  }

  check_errors(*(v81 + 40));
  *(this + 591) = 1;
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v84, v85);
}

void sub_14FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::queryObjectLists(ContextHarvester *this)
{
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 39, &stru_600.flags);
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 41, (&stru_600.reserved1 + 1));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 43, &stru_600.reserved1);
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 45, &stru_600.reserved2);
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 47, (&stru_600.reserved2 + 1));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 55, (&stru_600.reserved1 + 3));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 57, (&stru_600.flags + 2));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 53, (&stru_600.reserved2 + 2));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 59, (&stru_600.reserved1 + 2));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 61, &stru_650);
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 63, (&stru_600.reserved2 + 3));
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), this + 65, &stru_650.sectname[1]);
  v2[0] = 0;
  v2[1] = 0;
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(this + 2), v2, (&stru_600.flags + 3));
  GPUTools::NameTargetTupleArray::split(v2, 35656, this + 49, this + 51);
  GPUTools::NameTargetTupleArray::reset(v2);
}

uint64_t *ContextHarvester::saveBufferBindings(ContextHarvester *this)
{
  if (*(*(this + 2) + 2032))
  {
    v2 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
  }

  else
  {
    v2 = 1;
  }

  v13 = 34962;
  v14 = &v13;
  *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13) + 20) = v2;
  if (*(*(this + 2) + 2036))
  {
    v3 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
  }

  else
  {
    v3 = 1;
  }

  v13 = 34963;
  v14 = &v13;
  result = std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13);
  *(result + 20) = v3;
  v5 = *(this + 2);
  if (*(v5 + 3460) >= 2)
  {
    v6 = !*(v5 + 2044) || (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
    v13 = 35052;
    v14 = &v13;
    *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13) + 20) = v6;
    v7 = !*(*(this + 2) + 2040) || (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
    v13 = 35051;
    v14 = &v13;
    result = std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13);
    *(result + 20) = v7;
    v8 = *(this + 2);
    if (*(v8 + 3460) >= 3)
    {
      if (*(v8 + 2048))
      {
        v9 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
      }

      else
      {
        v9 = 1;
      }

      v13 = 36662;
      v14 = &v13;
      *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13) + 20) = v9;
      if (*(*(this + 2) + 2052))
      {
        v10 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
      }

      else
      {
        v10 = 1;
      }

      v13 = 36663;
      v14 = &v13;
      *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13) + 20) = v10;
      if (*(*(this + 2) + 2060))
      {
        v11 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
      }

      else
      {
        v11 = 1;
      }

      v13 = 35982;
      v14 = &v13;
      *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13) + 20) = v11;
      if (*(*(this + 2) + 2064))
      {
        v12 = (*(*(this + 4) + 5160))(*(*(this + 3) + 16)) != 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = 35345;
      v14 = &v13;
      result = std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v13);
      *(result + 20) = v12;
    }
  }

  return result;
}

void ContextHarvester::harvestBufferObjects(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 41))
  {
    ContextHarvester::harvestBufferObjects();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupBuffers, 65030, 0, 65030, 0, this);
  v6 = *(this + 2);
  v7 = **(this + 41);
  if (v7)
  {
    v8 = v6[5];
    v9 = *(this + 42);
    v10 = &v9[2 * v7];
    while (1)
    {
      v11 = *v9;
      v12 = v8[3];
      if (!*&v12)
      {
        goto LABEL_24;
      }

      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = *v9;
        if (*&v12 <= v11)
        {
          v14 = v11 % v12.i32[0];
        }
      }

      else
      {
        v14 = (v12.i32[0] - 1) & v11;
      }

      v15 = *(*&v8[2] + 8 * v14);
      if (!v15 || (v16 = *v15) == 0)
      {
LABEL_24:
        v20 = (&loc_888C + 6);
        goto LABEL_25;
      }

      if (v13.u32[0] < 2uLL)
      {
        v17 = *&v12 - 1;
        while (1)
        {
          v18 = v16[1];
          if (v18 == v11)
          {
            if (*(v16 + 4) == v11)
            {
              goto LABEL_27;
            }
          }

          else if ((v18 & v17) != v14)
          {
            goto LABEL_24;
          }

          v16 = *v16;
          if (!v16)
          {
            goto LABEL_24;
          }
        }
      }

      while (1)
      {
        v19 = v16[1];
        if (v19 == v11)
        {
          break;
        }

        if (v19 >= *&v12)
        {
          v19 %= *&v12;
        }

        if (v19 != v14)
        {
          goto LABEL_24;
        }

LABEL_19:
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      if (*(v16 + 4) != v11)
      {
        goto LABEL_19;
      }

LABEL_27:
      v20 = *(v16 + 5);
LABEL_25:
      ContextHarvester::harvestBufferObject(this, v20, v11, 0, 0, 1);
      v9 += 2;
      if (v9 == v10)
      {
        v6 = *(this + 2);
        break;
      }
    }
  }

  v21 = v6[9];
  v22 = v6[10];
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  ContextHarvester::setPixelBuffers(this, 0, 0, 1);
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v23, v24);
}

void sub_155D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_155E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestSamplers(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 63))
  {
    ContextHarvester::harvestSamplers();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupSamplers, 65030, 0, 65030, 0);
  v9 = **(this + 63);
  if (v9)
  {
    v10 = *(this + 64);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestSampler(this, *v10, v6, v7, v8);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

void ContextHarvester::harvestRenderbuffers(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 47))
  {
    ContextHarvester::harvestRenderbuffers();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupRenderbuffers, 65030, 0, 65030, 0);
  v8 = **(this + 47);
  if (v8)
  {
    v9 = *(this + 48);
    v10 = 8 * v8;
    do
    {
      ContextHarvester::harvestRenderbufferObject(this, *v9, 0);
      v9 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void ContextHarvester::harvestSyncObjects(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 61))
  {
    ContextHarvester::harvestSyncObjects();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupSyncObjects, 65030, 0, 65030, 0);
  v9 = **(this + 61);
  if (v9)
  {
    v10 = *(this + 62);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestSyncObject(this, *v10, v6, v7, v8);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

void ContextHarvester::harvestLegacyARBPrograms(ContextHarvester *this)
{
  if (is_extension_available(*(this + 2), "GL_ARB_fragment_program") && is_extension_available(*(this + 2), "GL_ARB_vertex_program"))
  {
    ContextHarvester::getARBProgramObject(this, 34336, 0, v2, v3);
    ContextHarvester::getARBProgramObject(this, 34820, 0, v4, v5);
    v8 = *(this + 57);
    if (!v8)
    {
      ContextHarvester::harvestLegacyARBPrograms();
    }

    v9 = *v8;
    if (v9)
    {
      v10 = (*(this + 58) + 4);
      v11 = 8 * v9;
      do
      {
        v12 = *(v10 - 1);
        if (v12)
        {
          ContextHarvester::getARBProgramObject(this, *v10, v12, v6, v7);
        }

        v10 += 2;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

void ContextHarvester::harvestTextures(ContextHarvester *this, char a2, uint64_t a3, char a4, uint64_t a5)
{
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupTextures, 65030, 0, 65030, 0);
  v9 = *(this + 2);
  v10 = *(v9 + 3408);
  for (i = *(v9 + 3416); v10 != i; ++v10)
  {
    ContextHarvester::harvestTexture(this, *v10, 0, v7, v8);
  }

  if (a2)
  {
    v12 = *(this + 39);
    if (!v12)
    {
      __assert_rtn("void ContextHarvester::harvestTextures(BOOL)", &unk_204462, 0, "_textureObjects.valid()");
    }

    v13 = *v12;
    if (v13)
    {
      v14 = (*(this + 40) + 4);
      v15 = 8 * v13;
      do
      {
        ContextHarvester::harvestTexture(this, *v14, *(v14 - 1), v7, v8);
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
    }
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

uint64_t ContextHarvester::restoreBufferBindings(ContextHarvester *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  v4 = *(v2 + 5136);
  v5 = *(*(this + 2) + 2032);
  v28 = 0;
  (*(v2 + 832))(*(v3 + 16), 34964, &v28);
  if (v28 != v5)
  {
    v4(*(*(this + 3) + 16), 34962, v5);
  }

  v7 = *(this + 3);
  v6 = *(this + 4);
  v8 = *(v6 + 5136);
  v9 = *(*(this + 2) + 2036);
  v28 = 0;
  result = (*(v6 + 832))(*(v7 + 16), 34965, &v28);
  if (v28 != v9)
  {
    result = v8(*(*(this + 3) + 16), 34963, v9);
  }

  v11 = *(this + 2);
  if (*(v11 + 3460) >= 3)
  {
    v13 = *(this + 3);
    v12 = *(this + 4);
    v14 = *(v12 + 5136);
    v15 = *(v11 + 2048);
    v28 = 0;
    (*(v12 + 832))(*(v13 + 16), 36662, &v28);
    if (v28 != v15)
    {
      v14(*(*(this + 3) + 16), 36662, v15);
    }

    v17 = *(this + 3);
    v16 = *(this + 4);
    v18 = *(v16 + 5136);
    v19 = *(*(this + 2) + 2052);
    v28 = 0;
    (*(v16 + 832))(*(v17 + 16), 36663, &v28);
    if (v28 != v19)
    {
      v18(*(*(this + 3) + 16), 36663, v19);
    }

    v21 = *(this + 3);
    v20 = *(this + 4);
    v22 = *(v20 + 5136);
    v23 = *(*(this + 2) + 2060);
    v28 = 0;
    (*(v20 + 832))(*(v21 + 16), 35983, &v28);
    if (v28 != v23)
    {
      v22(*(*(this + 3) + 16), 35982, v23);
    }

    v25 = *(this + 3);
    v24 = *(this + 4);
    v26 = *(v24 + 5136);
    v27 = *(*(this + 2) + 2064);
    v28 = 0;
    result = (*(v24 + 832))(*(v25 + 16), 35368, &v28);
    if (v28 != v27)
    {
      return v26(*(*(this + 3) + 16), 35345, v27);
    }
  }

  return result;
}

void ContextHarvester::harvestVertexArrayObjects(unsigned int **this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (*(this[2] + 4852) == 1)
  {
    ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupVertexArrays, 65030, 0, 65030, 0);
    v8 = this[43];
    if (!v8)
    {
      __assert_rtn("void ContextHarvester::harvestVertexArrayObjects()", &unk_204462, 0, "_vertexArrayObjects.valid()");
    }

    v9 = *v8;
    if (v9)
    {
      v10 = this[44];
      v11 = &v10[2 * v9];
      do
      {
        ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v6, v7, 65028, kDYStateGroupVertexArray, 65030, *v10, 65030, 0);
        GPUTools::FB::Encode((this[2] + 30), *(this + 31), 0, "Ci@1ui", v12, v13, v14, v15, *this[2]);
        v16 = this[5];
        v17 = this[2];
        while (atomic_exchange(v16 + 14, 1u) == 1)
        {
            ;
          }
        }

        v18 = **(v17 + 15);
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v16 + 14);
        v19 = *v10;
        (this[16])(*(this[3] + 2), v19);
        ContextHarvester::encode(this, *(this + 30), 128, "Cui", *this[2], v19, v10);
        ContextHarvester::harvestObjectLabel(this, 0x9154u, v19);
        ContextHarvester::getVertexArrays(this, v20, v21, v22, v23);
        ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v24, v25);
        v10 += 2;
      }

      while (v10 != v11);
    }

    if (*(this[2] + 4853))
    {
      (this[16])(*(this[3] + 2), 0);
      ContextHarvester::encode(this, *(this + 30), 128, "Cui", *this[2], 0);
      ContextHarvester::getVertexArrays(this, v26, v27, v28, v29);
    }

    ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
  }

  else
  {

    ContextHarvester::getVertexArrays(this, a2, a3, a4, a5);
  }
}

void sub_15EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_15EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v17 = va_arg(va1, ContextHarvester *);
  atomic_store(0, (v11 + 56));
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  AutoStateGroup::~AutoStateGroup(va1, v13, v14, v15, v16);
  _Unwind_Resume(a1);
}

void sub_15EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestFramebuffers(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 45))
  {
    ContextHarvester::harvestFramebuffers();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupFramebuffers, 65030, 0, 65030, 0);
  v9 = **(this + 45);
  if (v9)
  {
    v10 = *(this + 46);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestFramebuffer(this, *v10, v6, v7, v8);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

void ContextHarvester::harvestQueryObjects(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 59))
  {
    ContextHarvester::harvestQueryObjects();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupQueries, 65030, 0, 65030, 0);
  v8 = **(this + 59);
  if (v8)
  {
    v9 = (*(this + 60) + 4);
    v10 = 8 * v8;
    do
    {
      if (*v9)
      {
        v11 = *v9;
      }

      else
      {
        v11 = 35092;
      }

      ContextHarvester::harvestQueryObject(this, v11, *(v9 - 1), v6, v7);
      v9 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void ContextHarvester::harvestXfbObjects(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 65))
  {
    ContextHarvester::harvestXfbObjects();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupXfbs, 65030, 0, 65030, 0);
  ContextHarvester::harvestXfbObject(this, 0);
  v8 = **(this + 65);
  if (v8)
  {
    v9 = *(this + 66);
    v10 = 8 * v8;
    do
    {
      ContextHarvester::harvestXfbObject(this, *v9);
      v9 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void ContextHarvester::harvestFenceObjects(unsigned int **this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupFences, 65030, 0, 65030, 0);
  v8 = this[55];
  if (!v8)
  {
    __assert_rtn("void ContextHarvester::harvestFenceObjects()", &unk_204462, 0, "_fenceObjects.valid()");
  }

  v9 = *v8;
  if (v9)
  {
    v10 = this[56];
    v11 = 8 * v9;
    do
    {
      ContextHarvester::encodeCommand(this, 0x21Au, 1u, v6, v7, 5125, *v10);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void ContextHarvester::encodeCurrentProgramAndBoundPipeline(ContextHarvester *this)
{
  if (*(*(this + 2) + 3456) != 1)
  {
    v8 = v1;
    v9 = v2;
    v7 = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35725, &v7);
    ContextHarvester::encode(this, 645, 128, "Cul", **(this + 2), v7);
    if (*(*(this + 2) + 4846) == 1)
    {
      v6 = 0;
      (*(*(this + 4) + 832))(*(*(this + 3) + 16), 33370, &v6);
      v4 = v6;
      if (v6 && !(*(*(this + 4) + 6600))(*(*(this + 3) + 16), v6))
      {
        v5 = 1282;
      }

      else
      {
        v5 = 0;
      }

      ContextHarvester::encodeWithError(this, 887, 128, v5, "Cui", **(this + 2), v4);
    }
  }
}

void ContextHarvester::restoreTextureUnitBindings(ContextHarvester *this, int a2)
{
  if (*(*(this + 2) + 3444))
  {
    v4 = 0;
    v5 = 128;
    do
    {
      (*(*(this + 4) + 2736))(*(*(this + 3) + 16), (v4 + 33984));
      if (a2)
      {
        if (v4)
        {
          ContextHarvester::encode(this, 4294955015, 0, "CSuwuw", **(this + 2), kDYStateGroupTextureBindings, v4, 0);
        }

        ContextHarvester::encode(this, 4294955013, 128, "Ceui", **(this + 2), *(*(this + 2) + 3448), v4);
        ContextHarvester::encode(this, 2, 128, "Ce", **(this + 2), (v4 + 33984));
      }

      v8 = *(this + 2);
      v9 = *(v8 + 3408);
      v10 = *(v8 + 3416);
      if (v9 != v10)
      {
        if (v4)
        {
          if (a2)
          {
            do
            {
              v21 = *v9;
              bound_texture = wrapper_cache_get_bound_texture(*(this + 2), v4, *v9);
              if (!bound_texture || (*(*(this + 4) + 1160))(*(*(this + 3) + 16), bound_texture))
              {
                v20 = 0;
              }

              else
              {
                v20 = 1282;
              }

              ContextHarvester::encodeWithError(this, 20, v5, v20, "Ceui", **(this + 2), v21, bound_texture);
              ++v9;
            }

            while (v9 != v10);
          }

          else
          {
            do
            {
              v11 = *v9++;
              wrapper_cache_get_bound_texture(*(this + 2), v4, v11);
            }

            while (v9 != v10);
          }
        }

        else
        {
          do
          {
            v13 = *v9;
            v14 = wrapper_cache_get_bound_texture(*(this + 2), 0, *v9);
            v15 = v14;
            if (a2)
            {
              if (v14 && !(*(*(this + 4) + 1160))(*(*(this + 3) + 16), v14))
              {
                v16 = 1282;
              }

              else
              {
                v16 = 0;
              }

              ContextHarvester::encodeWithError(this, 20, v5, v16, "Ceui", **(this + 2), v13, v15);
            }

            *(&v23[1] + 3) = 0;
            *v23 = 0;
            GPUTools::GL::DYGetTextureTargetInfo();
            v18 = *(this + 3);
            v17 = *(this + 4);
            v19 = *(v17 + 40);
            v24 = 0;
            (*(v17 + 832))(*(v18 + 16), v23[1], &v24);
            if (v24 != v15)
            {
              v19(*(*(this + 3) + 16), v13, v15);
            }

            ++v9;
          }

          while (v9 != v10);
        }
      }

      v7 = *(this + 2);
      if (a2)
      {
        if (*(v7 + 4865) == 1)
        {
          v23[0] = 0;
          (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35097, v23);
          v12 = v23[0];
          if (!v23[0] || (*(*(this + 4) + 6416))(*(*(this + 3) + 16), v23[0]))
          {
            v6 = 0;
          }

          else
          {
            v6 = 1282;
          }

          ContextHarvester::encodeWithError(this, 850, v5, v6, "Cuiui", **(this + 2), v4, v12);
          v7 = *(this + 2);
        }

        ContextHarvester::encode(this, 4294955014, 128, "C", *v7);
        v7 = *(this + 2);
        if (v4)
        {
          ContextHarvester::encode(this, 4294955016, 0, "C", *v7);
          v7 = *(this + 2);
        }

        else
        {
          v5 = 0;
        }
      }

      v4 = (v4 + 1);
    }

    while (v4 < *(v7 + 861));
  }
}

void ContextHarvester::restoreLegacyARBProgramBindings(ContextHarvester *this, int a2)
{
  if (is_extension_available(*(this + 2), "GL_ARB_vertex_program"))
  {
    (*(*(this + 4) + 3768))(*(*(this + 3) + 16), 34336, *(this + 38));
    if (a2)
    {
      ContextHarvester::encodeCommandEx(this, 0x12u, 0x80u, 2u, v4, v5, v6, 529413, 34336, 5125, *(this + 38));
    }
  }

  if (is_extension_available(*(this + 2), "GL_ARB_fragment_program"))
  {
    (*(*(this + 4) + 3768))(*(*(this + 3) + 16), 34820, *(this + 39));
    if (a2)
    {
      ContextHarvester::encodeCommandEx(this, 0x12u, 0x80u, 2u, v7, v8, v9, 529413, 34820, 5125, *(this + 39));
    }
  }
}

void ContextHarvester::encodeBufferBindings(ContextHarvester *this)
{
  v8 = 34962;
  v9 = &v8;
  if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v8) + 20))
  {
    v2 = 0;
  }

  else
  {
    v2 = 1282;
  }

  ContextHarvester::encodeWithError(this, 12, 128, v2, "Ceui", **(this + 2), 34962, *(*(this + 2) + 2032));
  v8 = 34963;
  v9 = &v8;
  if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v8) + 20))
  {
    v3 = 0;
  }

  else
  {
    v3 = 1282;
  }

  ContextHarvester::encodeWithError(this, 12, 128, v3, "Ceui", **(this + 2), 34963, *(*(this + 2) + 2036));
  if (*(*(this + 2) + 3460) >= 3)
  {
    v8 = 36662;
    v9 = &v8;
    if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v8) + 20))
    {
      v4 = 0;
    }

    else
    {
      v4 = 1282;
    }

    ContextHarvester::encodeWithError(this, 12, 128, v4, "Ceui", **(this + 2), 36662, *(*(this + 2) + 2048));
    v8 = 36663;
    v9 = &v8;
    if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v8) + 20))
    {
      v5 = 0;
    }

    else
    {
      v5 = 1282;
    }

    ContextHarvester::encodeWithError(this, 12, 128, v5, "Ceui", **(this + 2), 36663, *(*(this + 2) + 2052));
    v8 = 35982;
    v9 = &v8;
    if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v8) + 20))
    {
      v6 = 0;
    }

    else
    {
      v6 = 1282;
    }

    ContextHarvester::encodeWithError(this, 12, 128, v6, "Ceui", **(this + 2), 35982, *(*(this + 2) + 2060));
    v8 = 35345;
    v9 = &v8;
    if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v8) + 20))
    {
      v7 = 0;
    }

    else
    {
      v7 = 1282;
    }

    ContextHarvester::encodeWithError(this, 12, 128, v7, "Ceui", **(this + 2), 35345, *(*(this + 2) + 2064));
  }
}

void ContextHarvester::harvestGlobalState(ContextHarvester *this)
{
  if ((GPUTools::VMBuffer::alloc((this + 536), 3 * vm_page_size, 0) & 1) == 0)
  {
    dy_abort();
  }

  v4 = ((*(this + 67) + *(this + 72) - 1) & -*(this + 72)) - *(this + 67);
  *(this + 70) = v4;
  *(this + 71) = v4;
  v154 = 0;
  if (*(*(this + 2) + 4858) == 1)
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2976, &v154);
  }

  v153 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v2, v3, 65028, kDYStateGroupGlobalState, 65030, 0, 65030, 0);
  v5 = *(this + 2);
  if (*(v5 + 4844) != 1 || ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 34370) ? (v8 = 151) : (v8 = 134), ContextHarvester::encodeCommand(this, v8, 1u, v6, v7, 529413, 34370), v5 = *(this + 2), *(v5 + 3456)))
  {
    if (*(v5 + 3460) < 3)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 34371))
  {
    v21 = 151;
  }

  else
  {
    v21 = 134;
  }

  ContextHarvester::encodeCommand(this, v21, 1u, v19, v20, 529413, 34371);
  v5 = *(this + 2);
  if (*(v5 + 3460) >= 3)
  {
LABEL_10:
    v9 = *(v5 + 4844);
    v10 = *(*(this + 4) + 1144);
    v11 = *(*(this + 3) + 16);
    if (v9 == 1)
    {
      if (v10(v11, 36765))
      {
        v14 = 151;
      }

      else
      {
        v14 = 134;
      }

      ContextHarvester::encodeCommand(this, v14, 1u, v12, v13, 529413, 36765);
      ContextHarvester::getGlobalState(this, 36766, 5125, 1, v15, *(*(this + 4) + 832), 0x362u, 1, 0);
    }

    else
    {
      if (v10(v11, 36201))
      {
        v18 = 151;
      }

      else
      {
        v18 = 134;
      }

      ContextHarvester::encodeCommand(this, v18, 1u, v16, v17, 529413, 36201);
    }
  }

LABEL_23:
  v22 = *(this + 2);
  if (*(v22 + 3460) >= 1 && *(v22 + 3452))
  {
    v23 = 0;
    do
    {
      ContextHarvester::getGenericVertexAttrib(this, v23);
      v23 = (v23 + 1);
    }

    while (v23 < *(*(this + 2) + 3452));
  }

  (*(*(this + 4) + 824))(*(*(this + 3) + 16), 2928, v156);
  ContextHarvester::encodeCommand(this, 0x2FFu, 2u, v24, v25, 5126, v156[0], 5126, v156[1]);
  v27 = *(this + 2);
  if (*(v27 + 3456) == 3)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 34383))
    {
      v30 = 151;
    }

    else
    {
      v30 = 134;
    }

    ContextHarvester::encodeCommand(this, v30, 1u, v28, v29, 529413, 34383);
  }

  else if ((*(v27 + 4873) & 1) == 0)
  {
    goto LABEL_41;
  }

  v155 = 0.0;
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 3378, &v155);
  if (LODWORD(v155))
  {
    v31 = 0;
    do
    {
      if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), v31 + 12288))
      {
        v34 = 151;
      }

      else
      {
        v34 = 134;
      }

      ContextHarvester::encodeCommand(this, v34, 1u, v32, v33, 529413, v31 + 12288);
      ++v31;
    }

    while (v31 < LODWORD(v155));
  }

  v27 = *(this + 2);
  if (*(v27 + 3456) == 3)
  {
    ContextHarvester::getGlobalState(this, 35100, 529413, 1, v26, *(*(this + 4) + 832), 0x23u, 2, 0);
    ContextHarvester::getGlobalState(this, 36431, 529413, 1, v35, *(*(this + 4) + 832), 0x336u, 1, 0);
    v27 = *(this + 2);
  }

LABEL_41:
  if (*(v27 + 3460) >= 3)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 35977))
    {
      v38 = 151;
    }

    else
    {
      v38 = 134;
    }

    ContextHarvester::encodeCommand(this, v38, 1u, v36, v37, 529413, 35977);
    v27 = *(this + 2);
  }

  if ((*(v27 + 4844) & 1) != 0 || *(v27 + 3456) == 1)
  {
    ContextHarvester::getGlobalState(this, 2833, 5126, 1, v26, *(*(this + 4) + 824), 0x1C0u, 1, 0);
    ContextHarvester::getGlobalState(this, 33064, 5126, 1, v39, *(*(this + 4) + 824), 0x1BCu, 2, 0);
    v27 = *(this + 2);
    if (*(v27 + 4844))
    {
      ContextHarvester::getGlobalState(this, 36000, 529413, 1, v26, *(*(this + 4) + 832), 0x1BEu, 2, 0);
      v27 = *(this + 2);
    }
  }

  if (*(v27 + 3456) <= 1u)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2832))
    {
      v42 = 151;
    }

    else
    {
      v42 = 134;
    }

    ContextHarvester::encodeCommand(this, v42, 1u, v40, v41, 529413, 2832);
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 34913))
    {
      v45 = 151;
    }

    else
    {
      v45 = 134;
    }

    ContextHarvester::encodeCommand(this, v45, 1u, v43, v44, 529413, 34913);
    ContextHarvester::getGlobalState(this, 33062, 5126, 1, v46, *(*(this + 4) + 824), 0x1BCu, 2, 0);
    ContextHarvester::getGlobalState(this, 33063, 5126, 1, v47, *(*(this + 4) + 824), 0x1BCu, 2, 0);
    (*(*(this + 4) + 824))(*(*(this + 3) + 16), 33065, *(this + 70) + *(this + 67));
    ContextHarvester::encodeCommand(this, 0x1BDu, 2u, v48, v49, 529413, 33065, 136198, 3, *(this + 70) + *(this + 67));
  }

  ContextHarvester::getGlobalState(this, 2849, 5126, 1, v26, *(*(this + 4) + 824), 0x15Cu, 1, 0);
  v50 = *(this + 2);
  if ((*(v50 + 4844) & 1) != 0 || *(v50 + 3456) == 1)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2848))
    {
      v53 = 151;
    }

    else
    {
      v53 = 134;
    }

    ContextHarvester::encodeCommand(this, v53, 1u, v51, v52, 529413, 2848);
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2884))
  {
    v56 = 151;
  }

  else
  {
    v56 = 134;
  }

  ContextHarvester::encodeCommand(this, v56, 1u, v54, v55, 529413, 2884);
  ContextHarvester::getGlobalState(this, 2885, 529413, 1, v57, *(*(this + 4) + 832), 0x76u, 1, 0);
  ContextHarvester::getGlobalState(this, 2886, 529413, 1, v58, *(*(this + 4) + 832), 0xC7u, 1, 0);
  v155 = 0.0;
  HIDWORD(v152) = 0;
  (*(*(this + 4) + 824))(*(*(this + 3) + 16), 32824, &v155);
  (*(*(this + 4) + 824))(*(*(this + 3) + 16), 10752, &v152 + 4);
  ContextHarvester::encode(this, 450, 0, "Cff", **(this + 2), v155, *(&v152 + 1));
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 32823))
  {
    v61 = 151;
  }

  else
  {
    v61 = 134;
  }

  ContextHarvester::encodeCommand(this, v61, 1u, v59, v60, 529413, 32823);
  if (*(*(this + 2) + 4844) == 1)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 10753))
    {
      v64 = 151;
    }

    else
    {
      v64 = 134;
    }

    ContextHarvester::encodeCommand(this, v64, 1u, v62, v63, 529413, 10753);
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 10754))
    {
      v67 = 151;
    }

    else
    {
      v67 = 134;
    }

    ContextHarvester::encodeCommand(this, v67, 1u, v65, v66, 529413, 10754);
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2881))
    {
      v70 = 151;
    }

    else
    {
      v70 = 134;
    }

    ContextHarvester::encodeCommand(this, v70, 1u, v68, v69, 529413, 2881);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2880, &v155);
    ContextHarvester::encode(this, 449, 0, "Cee", **(this + 2), 1032, LODWORD(v155));
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 32926))
  {
    v73 = 151;
  }

  else
  {
    v73 = 134;
  }

  ContextHarvester::encodeCommand(this, v73, 1u, v71, v72, 529413, 32926);
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 32928))
  {
    v76 = 151;
  }

  else
  {
    v76 = 134;
  }

  ContextHarvester::encodeCommand(this, v76, 1u, v74, v75, 529413, 32928);
  v155 = 0.0;
  BYTE4(v152) = 0;
  (*(*(this + 4) + 824))(*(*(this + 3) + 16), 32938, &v155);
  (*(*(this + 4) + 792))(*(*(this + 3) + 16), 32939, &v152 + 4);
  ContextHarvester::encodeCommand(this, 0x202u, 2u, v77, v78, 5126, v155, 35670, BYTE4(v152));
  v79 = *(this + 2);
  if ((*(v79 + 4844) & 1) != 0 || (v80 = *(v79 + 3456), v80 == 1))
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 32925))
    {
      v83 = 151;
    }

    else
    {
      v83 = 134;
    }

    ContextHarvester::encodeCommand(this, v83, 1u, v81, v82, 529413, 32925);
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 32927))
    {
      v86 = 151;
    }

    else
    {
      v86 = 134;
    }

    ContextHarvester::encodeCommand(this, v86, 1u, v84, v85, 529413, 32927);
    v80 = *(*(this + 2) + 3456);
  }

  if (v80 == 3)
  {
    v89 = (*(*(this + 4) + 1144))(*(*(this + 3) + 16), 36433) ? 151 : 134;
    ContextHarvester::encodeCommand(this, v89, 1u, v87, v88, 529413, 36433);
    v155 = 0.0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36441, &v155);
    if (LODWORD(v155))
    {
      v90 = 0;
      do
      {
        HIDWORD(v152) = 0;
        (*(*(this + 4) + 5600))(*(*(this + 3) + 16), 36434, v90, &v152 + 4);
        ContextHarvester::encode(this, 847, 0, "Cuiui", **(this + 2), v90, HIDWORD(v152));
        v90 = (v90 + 1);
      }

      while (v90 < LODWORD(v155));
    }
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 3089))
  {
    v93 = 151;
  }

  else
  {
    v93 = 134;
  }

  ContextHarvester::encodeCommand(this, v93, 1u, v91, v92, 529413, 3089);
  ContextHarvester::getGlobalState(this, 3088, 5124, 4, v94, *(*(this + 4) + 832), 0x206u, 4, 0);
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2929))
  {
    v97 = 151;
  }

  else
  {
    v97 = 134;
  }

  ContextHarvester::encodeCommand(this, v97, 1u, v95, v96, 529413, 2929);
  ContextHarvester::getGlobalState(this, 2932, 529412, 1, v98, *(*(this + 4) + 832), 0x82u, 1, 0);
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2960))
  {
    v101 = 151;
  }

  else
  {
    v101 = 134;
  }

  ContextHarvester::encodeCommand(this, v101, 1u, v99, v100, 529413, 2960);
  v155 = 0.0;
  v152 = 0;
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2962, &v155);
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2967, &v152 + 4);
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2963, &v152);
  v151 = 0;
  v150 = 0;
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2964, &v151 + 4);
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2965, &v151);
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2966, &v150);
  v102 = *(this + 2);
  v103 = *(v102 + 864);
  v104 = *v102;
  if (v103 == 1)
  {
    ContextHarvester::encode(this, 541, 0, "Ceiui", v104, LODWORD(v155), HIDWORD(v152), v152);
    ContextHarvester::encode(this, 546, 0, "Ceee", **(this + 2), HIDWORD(v151), v151, v150);
  }

  else
  {
    ContextHarvester::encode(this, 542, 0, "Ceeiui", v104, 1028, LODWORD(v155), HIDWORD(v152), v152);
    ContextHarvester::encode(this, 547, 0, "Ceeee", **(this + 2), 1028, HIDWORD(v151), v151, v150);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34816, &v155);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36003, &v152 + 4);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36004, &v152);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34817, &v151 + 4);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34818, &v151);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34819, &v150);
    ContextHarvester::encode(this, 542, 0, "Ceeiui", **(this + 2), 1029, LODWORD(v155), HIDWORD(v152), v152);
    ContextHarvester::encode(this, 547, 0, "Ceeee", **(this + 2), 1029, HIDWORD(v151), v151, v150);
  }

  v106 = *(this + 2);
  if (*(v106 + 3456) <= 1u)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 3008))
    {
      v109 = 151;
    }

    else
    {
      v109 = 134;
    }

    ContextHarvester::encodeCommand(this, v109, 1u, v107, v108, 529413, 3008);
    v155 = 0.0;
    HIDWORD(v152) = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 3009, &v155);
    (*(*(this + 4) + 824))(*(*(this + 3) + 16), 3010, &v152 + 4);
    ContextHarvester::encode(this, 3, 0, "Cef", **(this + 2), LODWORD(v155), *(&v152 + 1));
    v106 = *(this + 2);
  }

  if (*(v106 + 4872) == 1)
  {
    if (*(this + 27))
    {
      v110 = 0;
      do
      {
        if ((*(*(this + 4) + 5984))(*(*(this + 3) + 16), 3042, v110))
        {
          v111 = 153;
        }

        else
        {
          v111 = 136;
        }

        ContextHarvester::encode(this, v111, 0, "Ceui", **(this + 2), 3042, v110);
        v110 = (v110 + 1);
      }

      while (v110 < *(this + 27));
    }
  }

  else
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 3042))
    {
      v114 = 151;
    }

    else
    {
      v114 = 134;
    }

    ContextHarvester::encodeCommand(this, v114, 1u, v112, v113, 529413, 3042);
  }

  v115 = *(this + 2);
  if (*(v115 + 4869) == 1)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 36281))
    {
      v118 = 151;
    }

    else
    {
      v118 = 134;
    }

    ContextHarvester::encodeCommand(this, v118, 1u, v116, v117, 529413, 36281);
    v115 = *(this + 2);
  }

  if ((*(v115 + 3456) == 1 || (ContextHarvester::getGlobalState(this, 32773, 5126, 4, v105, *(*(this + 4) + 824), 0x17u, 4, 0), v115 = *(this + 2), *(v115 + 3456) == 1)) && !is_extension_available(v115, "GL_OES_blend_equation_separate"))
  {
    if (is_extension_available(*(this + 2), "GL_OES_blend_subtract"))
    {
      v155 = 0.0;
      (*(*(this + 4) + 832))(*(*(this + 3) + 16), 32777, &v155);
      ContextHarvester::encode(this, 24, 0, "Ce", **(this + 2), LODWORD(v155));
    }
  }

  else
  {
    v155 = 0.0;
    HIDWORD(v152) = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 32777, &v155);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34877, &v152 + 4);
    if (LODWORD(v155) == HIDWORD(v152))
    {
      ContextHarvester::encode(this, 24, 0, "Ce", **(this + 2), LODWORD(v155));
    }

    else
    {
      ContextHarvester::encode(this, 25, 0, "Cee", **(this + 2), LODWORD(v155), HIDWORD(v152));
    }
  }

  v119 = *(this + 2);
  if (*(v119 + 3456) == 1 && !is_extension_available(v119, "GL_OES_blend_func_separate"))
  {
    v155 = 0.0;
    HIDWORD(v152) = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 3041, &v155);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 3040, &v152 + 4);
    ContextHarvester::encode(this, 26, 0, "Cee", **(this + 2), LODWORD(v155), HIDWORD(v152));
  }

  else
  {
    v155 = 0.0;
    v152 = 0;
    HIDWORD(v151) = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 32969, &v155);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 32971, &v152 + 4);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 32968, &v152);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 32970, &v151 + 4);
    v120 = **(this + 2);
    if (__PAIR64__(LODWORD(v155), HIDWORD(v151)) == v152)
    {
      ContextHarvester::encode(this, 26, 0, "Cee", v120, LODWORD(v155), v152);
    }

    else
    {
      ContextHarvester::encode(this, 27, 0, "Ceeee", v120, LODWORD(v155), v152, HIDWORD(v152), HIDWORD(v151));
    }
  }

  v121 = *(this + 2);
  if ((*(v121 + 4844) & 1) != 0 || *(v121 + 3456) == 1)
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 3058))
    {
      v124 = 151;
    }

    else
    {
      v124 = 134;
    }

    ContextHarvester::encodeCommand(this, v124, 1u, v122, v123, 529413, 3058);
    ContextHarvester::getGlobalState(this, 3056, 529412, 1, v125, *(*(this + 4) + 832), 0x166u, 1, 0);
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 3024))
  {
    v128 = 151;
  }

  else
  {
    v128 = 134;
  }

  ContextHarvester::encodeCommand(this, v128, 1u, v126, v127, 529413, 3024);
  ContextHarvester::getGlobalState(this, 3106, 5126, 4, v129, *(*(this + 4) + 824), 0x26u, 4, 0);
  ContextHarvester::getGlobalState(this, 2931, 5126, 1, v130, *(*(this + 4) + 824), 0x2F9u, 1, 0);
  ContextHarvester::getGlobalState(this, 2961, 5124, 1, v131, *(*(this + 4) + 832), 0x2Bu, 1, 0);
  if (*(*(this + 2) + 4871) == 1)
  {
    if (*(this + 27))
    {
      v133 = 0;
      do
      {
        (*(*(this + 4) + 5608))(*(*(this + 3) + 16), 3107, v133, &v155);
        ContextHarvester::encode(this, 79, 0, "Cuiubububub", **(this + 2), v133, LOBYTE(v155), BYTE1(v155), BYTE2(v155), HIBYTE(v155));
        v133 = (v133 + 1);
      }

      while (v133 < *(this + 27));
    }
  }

  else
  {
    ContextHarvester::getGlobalState(this, 3107, 1053700, 4, v132, *(*(this + 4) + 832), 0x4Eu, 4, 0);
  }

  ContextHarvester::getGlobalState(this, 2930, 1053700, 1, v132, *(*(this + 4) + 832), 0x83u, 1, 0);
  if (*(*(this + 2) + 3456) == 1)
  {
    ContextHarvester::getGlobalState(this, 2968, 1053700, 1, v134, *(*(this + 4) + 832), 0x220u, 1, 0);
  }

  else
  {
    v155 = 0.0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 2968, &v155);
    ContextHarvester::encode(this, 545, 0, "Ceui", **(this + 2), 1028, LODWORD(v155));
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36005, &v155);
    ContextHarvester::encode(this, 545, 0, "Ceui", **(this + 2), 1029, LODWORD(v155));
  }

  v136 = *(this + 2);
  if (*(v136 + 3460) >= 2)
  {
    ContextHarvester::getGlobalState(this, 35723, 529412, 1, v135, *(*(this + 4) + 832), 0x135u, 2, 0);
    v136 = *(this + 2);
  }

  if ((*(v136 + 4844) & 1) != 0 || *(v136 + 3456) == 1)
  {
    ContextHarvester::getGlobalState(this, 3154, 529412, 1, v135, *(*(this + 4) + 832), 0x135u, 2, 0);
    v136 = *(this + 2);
  }

  if (*(v136 + 4858) == 1)
  {
    ContextHarvester::getGlobalState(this, 3153, 529412, 1, v135, *(*(this + 4) + 832), 0x135u, 2, 0);
    ContextHarvester::getGlobalState(this, 3156, 529412, 1, v137, *(*(this + 4) + 832), 0x135u, 2, 0);
    ContextHarvester::getGlobalState(this, 3152, 529412, 1, v138, *(*(this + 4) + 832), 0x135u, 2, 0);
    v136 = *(this + 2);
  }

  v139 = *(*(this + 4) + 832);
  if (*(v136 + 4844) == 1)
  {
    ContextHarvester::getGlobalState(this, 3155, 529412, 1, v135, v139, 0x135u, 2, 0);
    v139 = *(*(this + 4) + 832);
    v140 = 34031;
  }

  else
  {
    v140 = 33170;
  }

  ContextHarvester::getGlobalState(this, v140, 529412, 1, v135, v139, 0x135u, 2, 0);
  if (*(*(this + 2) + 4858) == 1)
  {
    ContextHarvester::harvestFixedFunctionGlobalState(this, v141, v142, v143, v144);
  }

  ContextHarvester::harvestExtensionsGlobalState(this);
  if (*(*(this + 2) + 4858) == 1)
  {
    (*(*(this + 4) + 1392))(*(*(this + 3) + 16), v154);
    ContextHarvester::encodeCommandEx(this, 0x178u, 0x80u, 1u, v147, v148, v149, 529413, v154);
  }

  ContextHarvester::encodeCommand(v153, 0xFFFFD008, 0, v145, v146);
}

void sub_1831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1836C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_183B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_183C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_183D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_183EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1843C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_18478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1848C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_184A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_184B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_184C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::getARBProgramObject(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v33[1] = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupArbProgram, 65030, a2, 65030, a3);
  (*(*(this + 4) + 3768))(*(*(this + 3) + 16), a2, a3);
  ContextHarvester::encodeCommandEx(this, 0x12u, 0x80u, 2u, v8, v9, v10, 529413, a2, 5125, a3);
  v32 = 0;
  v33[0] = 0;
  (*(*(this + 4) + 4256))(*(*(this + 3) + 16), a2, 34934, v33 + 4);
  (*(*(this + 4) + 4256))(*(*(this + 3) + 16), a2, 34343, v33);
  (*(*(this + 4) + 4256))(*(*(this + 3) + 16), a2, 34996, &v32);
  if (LODWORD(v33[0]) && HIDWORD(v33[0]) == 34933)
  {
    if (*(this + 68) < LODWORD(v33[0]) && (GPUTools::VMBuffer::alloc((this + 536), LODWORD(v33[0]), 0) & 1) == 0)
    {
      goto LABEL_13;
    }

    v11 = ((*(this + 67) + *(this + 72) - 1) & -*(this + 72)) - *(this + 67);
    *(this + 70) = v11;
    *(this + 71) = v11;
    (*(*(this + 4) + 4248))(*(*(this + 3) + 16), a2, 34344);
    v12 = *(this + 67);
    v13 = *(this + 70);
    v14 = *(this + 1);
    v15 = *(this + 2);
    v16 = *(this + 591);
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    ContextHarvester::encodeCommand(this, 0x1D4u, 4u, v17, v18, 529413, a2, 529413, HIDWORD(v33[0]), 5125, LODWORD(v33[0]), 65025, *(this + 2) + 4644);
  }

  v19 = v32;
  if (*(this + 68) < 4 * (4 * v32))
  {
    if (GPUTools::VMBuffer::alloc((this + 536), 16 * v32, 0))
    {
      v19 = v32;
      goto LABEL_9;
    }

LABEL_13:
    dy_abort();
    __break(1u);
    return;
  }

LABEL_9:
  v20 = *(this + 67);
  v21 = (v20 + *(this + 72) - 1) & -*(this + 72);
  v22 = v21 - v20;
  *(this + 70) = v22;
  *(this + 71) = v22;
  if (v19)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      (*(*(this + 4) + 4232))(*(*(this + 3) + 16), a2, v24++, v21 + 4 * (v23 & 0xFFFFFFFC));
      v23 += 4;
    }

    while (v24 < v32);
  }

  v25 = *(this + 1);
  v26 = *(this + 2);
  v27 = *(this + 591);
  DYGetGLGuestAppClient();
  GPUTools::Interpose::DYSavePointer();
  ContextHarvester::encodeCommand(this, 0x1D2u, 4u, v28, v29, 529413, a2, 5125, 0, 5124, v32, 65025, *(this + 2) + 4644);
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v30, v31);
}

void ContextHarvester::harvestObjectLabel(ContextHarvester *this, unsigned int a2, int a3)
{
  if (a3)
  {
    if (*(*(this + 2) + 4855))
    {
      (*(*(this + 4) + 6520))(*(*(this + 3) + 16));
    }
  }
}

void ContextHarvester::harvestGLSLProgramPipelines(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 53))
  {
    ContextHarvester::harvestGLSLProgramPipelines();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgramPipelines, 65030, 0, 65030, 0);
  v9 = **(this + 53);
  if (v9)
  {
    v10 = *(this + 54);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestGLSLProgramPipeline(this, *v10, v6, v7, v8);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

void ContextHarvester::harvestGLSLProgramActiveFragDataLocations(ContextHarvester *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (*(v2 + 3456) == 3)
  {
    v15 = a2;
    if (![*v2 getParameter:1709 to:&v15])
    {
      v5 = v15;
      v6 = *v15;
      if (*v15 >= 1)
      {
        v7 = v15 + 4;
        do
        {
          v10 = *v7;
          v8 = v7 + 4;
          v9 = v10;
          if ((v10 & 0x80000000) != 0)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v9 >= 0x17)
          {
            operator new();
          }

          v14 = v9;
          if (v9)
          {
            memmove(&__dst, v8, v9);
          }

          *(&__dst + v9) = 0;
          if (v14 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v12 = (*(*(this + 4) + 5952))(*(*(this + 3) + 16), a2, p_dst);
          ContextHarvester::encode(this, 16, 132, "CuiuicS", **(this + 2), a2, v12, p_dst);
          if (v14 < 0)
          {
            operator delete(__dst);
          }

          v7 = &v8[v9];
          --v6;
        }

        while (v6);
        v5 = v15;
      }

      free(v5);
    }
  }
}

void sub_18D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ContextHarvester::harvestGLSLProgramFragDataLocations(ContextHarvester *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (*(v2 + 3456) == 3)
  {
    v13 = a2;
    if (![*v2 getParameter:1708 to:&v13])
    {
      v5 = v13;
      v6 = *v13;
      if (*v13 >= 1)
      {
        v7 = (v13 + 4);
        do
        {
          v8 = *v7;
          if ((v8 & 0x80000000) != 0)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v9 = *(v7 + v8 + 4);
          if (v8 >= 0x17)
          {
            operator new();
          }

          v12 = *v7;
          if (v8)
          {
            memmove(&__dst, v7 + 1, v8);
          }

          *(&__dst + v8) = 0;
          if (v12 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          ContextHarvester::encode(this, 16, 4, "CuiuicS", **(this + 2), a2, v9, p_dst);
          if (v12 < 0)
          {
            operator delete(__dst);
          }

          v7 = (v7 + v8 + 12);
          --v6;
        }

        while (v6);
        v5 = v13;
      }

      free(v5);
    }
  }
}

void sub_18E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ContextHarvester::encodeProgramXfbVaryings(ContextHarvester *this, unsigned int a2, const ProgramXfb *a3)
{
  v3 = *(a3 + 2) - *(a3 + 1);
  if (v3)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v3 >> 3)) >> 61))
    {
      operator new();
    }

    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_190F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ContextHarvester::encodeProgramParameters(ContextHarvester *this, uint64_t a2, const ProgramInfo *a3, const ProgramPipelineInfo *a4, uint64_t a5)
{
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgramParameters, 65030, a2, 65030, 0);
  v10 = *(this + 2);
  if (*(v10 + 4846) == 1)
  {
    ContextHarvester::encode(this, 467, 128, "Cuiei", *v10, a2, 33368, *(a4 + 34) & 1);
    v10 = *(this + 2);
  }

  if (*(v10 + 864) == 4)
  {
    ContextHarvester::encode(this, 467, 128, "Cuiei", *v10, a2, 33367, (*(a4 + 34) >> 1) & 1);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v8, v9);
}

void ContextHarvester::harvestGLSLProgramUniform(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = *(a3 + 4);
  v59 = *(*a3 + v56 - 1) == 93;
  if (*(*a3 + v56 - 1) == 93)
  {
    *strrchr(*a3, 91) = 0;
    v56 = strlen(*a3);
  }

  v5 = *(a3 + 6);
  GPUTools::GL::DYGetShaderVariableTypeInfo();
  v7 = GPUTools::GL::dy_type_size(v61, v6);
  v8 = *(a3 + 5);
  v57 = (v7 * v60);
  v55 = v8 * v57;
  if (*(a1 + 544) < (v8 * v57))
  {
    if (!GPUTools::VMBuffer::alloc((a1 + 536), v55, 0))
    {
      dy_abort();
LABEL_65:
      __break(1u);
      return;
    }

    LODWORD(v8) = *(a3 + 5);
  }

  v9 = *(a1 + 536);
  v10 = (v9 + *(a1 + 576) - 1) & -*(a1 + 576);
  v11 = v10 - v9;
  *(a1 + 560) = v11;
  *(a1 + 568) = v11;
  if (v8 >= 1)
  {
    v12 = 0;
    v13 = 128;
    do
    {
      if (v12 || v59)
      {
        *(*a3 + v56) = 0;
        snprintf(__str, 0x20uLL, "[%d]", v12);
        strlcat(*a3, __str, a3[1]);
      }

      v14 = (*(*(a1 + 32) + 5000))(*(*(a1 + 24) + 16), a2, *a3);
      v17 = v14;
      v18 = v14 != -1 || v12 != 0;
      if (v18 || v59)
      {
        if (v14 == -1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        *(*a3 + v56) = 0;
        snprintf(__str, 0x20uLL, "[%d]", 0);
        strlcat(*a3, __str, a3[1]);
        v17 = (*(*(a1 + 32) + 5000))(*(*(a1 + 24) + 16), a2, *a3);
        v59 = v17 != -1;
        if (v17 == -1)
        {
LABEL_37:
          if (*(a3 + 9) == -1)
          {
            goto LABEL_34;
          }
        }
      }

      if (v12)
      {
        snprintf(__source, 0x28uLL, "u_%016lx_%u_%u", **(*(a1 + 16) + 40), a2, v17);
      }

      else
      {
        ContextHarvester::encodeCommand(a1, 0xFFFFD007, 3u, v15, v16, 65028, kDYStateGroupUniform, 65030, *(a3 + 8), 65030, a2);
        ContextHarvester::encodeCommand(a1, 0xFFFFD010, 0xDu, v23, v24, 5124, 9, 5125, a2, 5124, v17, 5124, *(a3 + 5), 5125, *(a3 + 6), 65028, *a3, 5125, *(a3 + 9), 5124, *(a3 + 10), 5124, *(a3 + 12), 5124, *(a3 + 13), 35670, *(a3 + 56), 5124, *(a3 + 11), 5125, *(a3 + 15));
        if (*(a3 + 9) != -1)
        {
          ContextHarvester::encodeCommand(a1, 0xFFFFD008, 0, v25, v26);
          return;
        }

        snprintf(__source, 0x28uLL, "u_%016lx_%u_%u", **(*(a1 + 16) + 40), a2, v17);
        strlcpy(__dst, __source, 0x28uLL);
      }

      v54 = *a3;
      GPUTools::FB::Encode(*(a1 + 16) + 120, 299, v13, "CulcS", v19, v20, v21, v22, **(a1 + 16));
      GPUTools::FB::Encode(*(a1 + 16) + 120, 4294955008, 0, "V<i>", v27, v28, v29, v30, __source);
      v31 = *(a1 + 40);
      v32 = *(a1 + 16);
      while (atomic_exchange((v31 + 56), 1u) == 1)
      {
          ;
        }
      }

      v33 = **(v32 + 120);
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, (v31 + 56));
      if (v61 > 5125)
      {
        if (v61 == 5130)
        {
          (*(*(a1 + 32) + 7592))(*(*(a1 + 24) + 16), a2, v17, v10);
        }

        else
        {
          if (v61 != 5126)
          {
            goto LABEL_64;
          }

          (*(*(a1 + 32) + 5016))(*(*(a1 + 24) + 16), a2, v17, v10);
        }
      }

      else if (v61 == 5124)
      {
        (*(*(a1 + 32) + 5024))(*(*(a1 + 24) + 16), a2, v17, v10);
      }

      else
      {
        if (v61 != 5125)
        {
          goto LABEL_64;
        }

        (*(*(a1 + 32) + 5936))(*(*(a1 + 24) + 16), a2, v17, v10);
      }

      v13 = 0;
      v10 += v57;
LABEL_34:
      ++v12;
    }

    while (v12 < *(a3 + 5));
  }

  v34 = (*(a1 + 16) + 4709);
  v34[2] = 0u;
  v34[3] = 0u;
  *v34 = 0u;
  v34[1] = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  strlcpy((*(a1 + 16) + 4709), "CV<i>i", 0x40uLL);
  GPUTools::FB::FIFOArgumentProvider::push(__source, **(a1 + 16));
  GPUTools::FB::FIFOArgumentProvider::push(__source, __dst);
  GPUTools::FB::FIFOArgumentProvider::push(__source, *(a3 + 5));
  if (v62 == 1)
  {
    strlcat((*(a1 + 16) + 4709), "ub", 0x40uLL);
    GPUTools::FB::FIFOArgumentProvider::push(__source, 0);
  }

  v35 = (*(a1 + 16) + 4709);
  v36 = &v35[strlen(v35)];
  if (v55 >= 0x41)
  {
    if (v61 <= 5125)
    {
      if (v61 != 5124)
      {
        if (v61 == 5125)
        {
          v37 = 105;
          *v36 = 15445;
          v38 = 117;
          v39 = 5;
          v40 = 4;
          v41 = 3;
          v42 = 2;
LABEL_56:
          v36[v42] = v38;
          v36[v41] = v37;
          v36[v40] = 62;
          v36[v39] = 0;
          v44 = *(a1 + 536);
          v45 = *(a1 + 560);
          v46 = *(a1 + 16);
          v47 = *(a1 + 591);
          DYGetGLGuestAppClient();
          GPUTools::Interpose::DYSavePointer();
          GPUTools::FB::FIFOArgumentProvider::push(__source, (*(a1 + 16) + 4644));
          goto LABEL_57;
        }

        goto LABEL_64;
      }

      v37 = 105;
LABEL_55:
      *v36 = 85;
      v38 = 60;
      v39 = 4;
      v40 = 3;
      v41 = 2;
      v42 = 1;
      goto LABEL_56;
    }

    if (v61 == 5130)
    {
      v37 = 100;
      goto LABEL_55;
    }

    if (v61 == 5126)
    {
      v37 = 102;
      goto LABEL_55;
    }

LABEL_64:
    dy_string_from_enum();
    dy_abort();
    goto LABEL_65;
  }

  v43 = v61 - 5124;
  if ((v61 - 5124) >= 7 || ((0x47u >> v43) & 1) == 0)
  {
    goto LABEL_64;
  }

  snprintf(v36, v35 - v36 + 64, off_20D0C8[v43], (*(a3 + 5) * v60));
  GPUTools::FB::FIFOArgumentProvider::push(__source, (*(a1 + 560) + *(a1 + 536)));
LABEL_57:
  v48 = *(a1 + 16);
  GPUTools::FB::Encode();
  v49 = *(a1 + 40);
  v50 = *(a1 + 16);
  while (atomic_exchange((v49 + 56), 1u) == 1)
  {
      ;
    }
  }

  v51 = **(v50 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v49 + 56));
  ContextHarvester::encodeCommand(a1, 0xFFFFD008, 0, v52, v53);
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(__source);
}

void sub_19A80(_Unwind_Exception *a1)
{
  atomic_store(0, (v1 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider((v2 - 224));
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestGLSLProgramUniformBlock(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  ContextHarvester::encodeCommand(a1, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupUniformBlock, 65030, *(a3 + 5), 65030, a2);
  ContextHarvester::encode(a1, 4294955024, 0, "CiuiuiiSuiui", **(a1 + 16), 18, a2, *(a3 + 5), *(a3 + 4), *a3, *(a3 + 10), *(a3 + 11));
  snprintf(__str, 0x28uLL, "ub_%016lx_%u_%u", **(*(a1 + 16) + 40), a2, *(a3 + 5));
  v21 = *a3;
  GPUTools::FB::Encode(*(a1 + 16) + 120, 830, 128, "CuiS", v8, v9, v10, v11, **(a1 + 16));
  GPUTools::FB::Encode(*(a1 + 16) + 120, 4294955008, 0, "V<ui>", v12, v13, v14, v15, __str);
  v16 = *(a1 + 40);
  v17 = *(a1 + 16);
  while (atomic_exchange((v16 + 56), 1u) == 1)
  {
      ;
    }
  }

  v18 = **(v17 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v16 + 56));
  ContextHarvester::encode(a1, 832, 128, "CuiV<ui>ui", **(a1 + 16), a2, __str, *(a3 + 11));
  ContextHarvester::encodeCommand(a1, 0xFFFFD008, 0, v19, v20);
}

void sub_19CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ContextHarvester::harvestGLSLProgramUniforms(ContextHarvester *this, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = a2;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupProgramUniforms, 65030, a2, 65030, 0);
  ContextHarvester::encode(this, 645, 128, "Cul", **(this + 2), v6);
  v11 = *(this + 2);
  GPUTools::GL::EnumerateProgramActiveUniformBlocks();
  v7 = *(this + 2);
  v12 = *(v7 + 32);
  v8 = *(v7 + 3456);
  GPUTools::GL::EnumerateProgramActiveUniforms();
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v9, v10);
}

uint64_t ContextHarvester::copyCurrentShaderTextAndLog(ContextHarvester *this, uint64_t a2, char **a3, int *a4, char **a5, int *a6)
{
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16), a2, 35720);
  result = (*(*(this + 4) + 5256))(*(*(this + 3) + 16), a2, 35716, a6);
  v13 = *a4;
  if (*a4 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = *a4;
  }

  v15 = *a6;
  if (*a6 <= 1)
  {
    v15 = 1;
  }

  v16 = (v15 + v14);
  if (*(this + 68) < v16)
  {
    result = GPUTools::VMBuffer::alloc((this + 536), v16, 0);
    if (!result)
    {
      v27 = dy_abort();
      return ContextHarvester::encodeProgramShader(v27);
    }

    v13 = *a4;
  }

  v17 = *(this + 67);
  v18 = ((v17 + *(this + 72) - 1) & -*(this + 72));
  v19 = &v18[-v17];
  *(this + 70) = v19;
  *(this + 71) = v19;
  *a3 = v18;
  if (v13 < 1)
  {
    v20 = 0;
    *v18 = 0;
    *a4 = 1;
  }

  else
  {
    result = (*(*(this + 4) + 5032))(*(*(this + 3) + 16), a2);
    v20 = *a4 - 1;
  }

  v21 = *(this + 71);
  v22 = ((v20 + *(this + 72)) & -*(this + 72)) + v21;
  *(this + 70) = v21;
  *(this + 71) = v22;
  v23 = (v22 + *(this + 67));
  *a5 = v23;
  if (*a6 < 1)
  {
    v24 = 0;
    *v23 = 0;
    *a6 = 1;
  }

  else
  {
    result = (*(*(this + 4) + 5272))(*(*(this + 3) + 16), a2);
    v24 = *a6 - 1;
  }

  v25 = *(this + 71);
  v26 = ((v24 + *(this + 72)) & -*(this + 72)) + v25;
  *(this + 70) = v25;
  *(this + 71) = v26;
  return result;
}

void ContextHarvester::encodeProgramShader(uint64_t a1, uint64_t a2, unsigned int **a3, unsigned int *a4, uint64_t a5)
{
  if (*(a4 + 8) != 1)
  {
    return;
  }

  v10 = a2;
  v11 = *a4;
  v56 = a1;
  ContextHarvester::encodeCommand(a1, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgramShader, 65030, a2, 65030, v11);
  *(&v55.__r_.__value_.__s + 23) = 0;
  v55.__r_.__value_.__s.__data_[0] = 0;
  *(&v54.__r_.__value_.__s + 23) = 0;
  v54.__r_.__value_.__s.__data_[0] = 0;
  v14 = *a3;
  v15 = a3[1];
  if (*a3 == v15)
  {
    goto LABEL_57;
  }

  v16 = 0;
  do
  {
    v17 = *(v14 + 1);
    v18 = *v17;
    v19 = **(v14 + 3);
    v20 = *(a1 + 56);
    v21 = v20[1];
    if (!*&v21)
    {
      goto LABEL_27;
    }

    v22 = *v14;
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = *v14;
      if (*&v21 <= v22)
      {
        v24 = v22 % v21.i32[0];
      }
    }

    else
    {
      v24 = (v21.i32[0] - 1) & v22;
    }

    v25 = *(*v20 + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_27:
      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (v23.u32[0] < 2uLL)
    {
      v27 = *&v21 - 1;
      while (1)
      {
        v28 = v26[1];
        if (v28 == v22)
        {
          if (*(v26 + 4) == v22)
          {
            goto LABEL_25;
          }
        }

        else if ((v28 & v27) != v24)
        {
          goto LABEL_27;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_27;
        }
      }
    }

    while (1)
    {
      v29 = v26[1];
      if (v29 == v22)
      {
        break;
      }

      if (v29 >= *&v21)
      {
        v29 %= *&v21;
      }

      if (v29 != v24)
      {
        goto LABEL_27;
      }

LABEL_19:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_27;
      }
    }

    if (*(v26 + 4) != v22)
    {
      goto LABEL_19;
    }

LABEL_25:
    v30 = v26[3];
    if (!v30 || *v30 != v17)
    {
      goto LABEL_27;
    }

    v31 = *v17;
    if (IsInterposeGLObject(*(*(a1 + 16) + 40), 35656, v22))
    {
      v53 = 0;
      (*(*(a1 + 32) + 5256))(*(*(a1 + 24) + 16), *v14, 35713, &v53);
      v51 = 0;
      v52 = 0;
      v57 = 0;
      v50 = 0;
      ContextHarvester::copyCurrentShaderTextAndLog(a1, *v14, &v50, &v51, &v57, &v52);
      if (v31)
      {
        v18 = v31;
      }

      else
      {
        v18 = v50;
      }

      if (!v19)
      {
        v19 = v57;
      }

      if (!v18)
      {
LABEL_29:
        if (v19)
        {
          std::string::append(&v54, v19);
          std::string::push_back(&v54, 10);
        }

        v16 = *v14;
        goto LABEL_32;
      }

LABEL_28:
      std::string::append(&v55, v18);
      std::string::push_back(&v55, 10);
      goto LABEL_29;
    }

    if (*a1 == 1)
    {
      ContextHarvester::harvestGLSLShader(a1, *v14);
    }

    v32 = *v14;
    v33 = *a4;
    ContextHarvester::encode(a1, 6, 128, "Culul", **(a1 + 16), v10, v32);
    ContextHarvester::encode(a1, 4294955024, 0, "Ciuieuiui", **(a1 + 16), 4, v32, v33, a2, 0);
    std::vector<unsigned int>::push_back[abi:ne200100](a5, v14);
    v34 = **(v14 + 5);
    if (v34)
    {
      ContextHarvester::encode(a1, 897, 2, "CeuiicS", **(a1 + 16), 35656, *v14, 0, v34);
    }

LABEL_32:
    v14 += 14;
  }

  while (v14 != v15);
  size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v36 = a4 + 1;
    v37 = a4[1];
    v38 = *a4;
    ContextHarvester::encode(a1, 6, 128, "Culul", **(a1 + 16), v10, v37);
    ContextHarvester::encode(a1, 4294955024, 0, "Ciuieuiui", **(a1 + 16), 4, v37, v38, a2, v16);
    std::vector<unsigned int>::push_back[abi:ne200100](a5, v36);
    v39 = *v36;
    v40 = *(a1 + 8);
    v41 = *(a1 + 16);
    v42 = *(a1 + 591);
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    v43 = *(a1 + 16);
    v57 = (v43 + 4644);
    ContextHarvester::encode(a1, 540, 128, "Culi@1U<cb>t", *v43, v39, 1, &v57, 0);
    ContextHarvester::encode(a1, 93, 128, "Cul", **(a1 + 16), v39);
    v44 = *v36;
    v45 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v54;
    }

    else
    {
      v46 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = v54.__r_.__value_.__l.__size_;
    }

    v47 = v45 + 1;
    if (v45 + 1 < 0x401)
    {
      ContextHarvester::encode(a1, 4294955024, 0, "CiuiiSii", **(a1 + 16), 13, v44, v47, v46, 1, 0);
    }

    else
    {
      v48 = *(a1 + 8);
      v49 = *(a1 + 591);
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      ContextHarvester::encode(a1, 4294955024, 0, "CiuiiU<cb>ii", **(a1 + 16), 13, v44, v47, *(a1 + 16) + 4644, 1, 0);
    }
  }

LABEL_57:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_62:
    operator delete(v55.__r_.__value_.__l.__data_);
  }

LABEL_59:
  ContextHarvester::encodeCommand(a1, 0xFFFFD008, 0, v12, v13);
}

void sub_1A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      AutoStateGroup::~AutoStateGroup((v30 - 96), a2, a3, a4, a5);
      _Unwind_Resume(a1);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  AutoStateGroup::~AutoStateGroup((v30 - 96), v32, v33, v34, v35);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t ContextHarvester::encodeProgramLinkSequence(ContextHarvester *this, uint64_t a2, const ProgramInfo *a3, int a4, uint64_t a5)
{
  v8 = this;
  v9 = a2;
  v59 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLProgramLink, 65030, a2, 65030, 0);
  v58 = 0;
  (*(*(v8 + 4) + 5264))(*(*(v8 + 3) + 16), a2, 35714, &v58 + 4);
  (*(*(v8 + 4) + 5264))(*(*(v8 + 3) + 16), a2, 35712, &v58);
  v57 = 35980;
  if (*(*(v8 + 2) + 3460) >= 3)
  {
    (*(*(v8 + 4) + 5264))(*(*(v8 + 3) + 16), a2, 35967, &v57);
  }

  if ((a4 & 1) == 0)
  {
    v66 = v8;
    ContextHarvester::encodeCommand(v8, 0xFFFFD007, 3u, v10, v11, 65028, kDYStateGroupGLSLProgramLocationBindings, 65030, v9, 65030, 0);
    v60 = v9;
    if (![**(v8 + 2) getParameter:1707 to:&v60])
    {
      v17 = v60;
      v18 = *v60;
      if (*v60 >= 1)
      {
        v19 = v60 + 1;
        do
        {
          v20 = *v19;
          v21 = *(v19 + v20 + 4);
          *(v19 + v20 + 4) = 0;
          ContextHarvester::encode(v8, 11, 0, "CuluicS", **(v8 + 2), v9, v21, v19 + 1);
          v19 = (v19 + v20 + 8);
          --v18;
        }

        while (v18);
        v17 = v60;
      }

      free(v17);
    }

    ContextHarvester::harvestGLSLProgramFragDataLocations(v8, a2);
    ContextHarvester::encodeCommand(v8, 0xFFFFD008, 0, v22, v23);
    ProgramXfb::ProgramXfb(&v60);
    ProgramXfb::update(v24, *(v8 + 2), a2);
    ContextHarvester::encodeProgramXfbVaryings(v8, a2, &v60);
    v25 = v61;
    if (v61)
    {
      v26 = v62;
      v27 = v61;
      if (v62 != v61)
      {
        do
        {
          v28 = *(v26 - 1);
          v26 -= 3;
          if (v28 < 0)
          {
            operator delete(*v26);
          }
        }

        while (v26 != v25);
        v27 = v61;
      }

      v62 = v25;
      operator delete(v27);
    }

    if (*(a3 + 377))
    {
      if (!HIDWORD(v58))
      {
        goto LABEL_40;
      }
    }

    else
    {
      ContextHarvester::encode(v8, 4294955024, 0, "CiuiiSiieui", **(v8 + 2), 12, a2, 0, 0, HIDWORD(v58), v58, v57, 0);
    }

LABEL_30:
    v29 = 0;
LABEL_61:
    ContextHarvester::encodeCommand(v8, 0xFFFFD008, 0, v10, v11);
    return v29;
  }

  if (!*(a3 + 377))
  {
    goto LABEL_30;
  }

  v12 = (a3 + 144);
  if (*(a3 + 18) == *(a3 + 19) && *(a3 + 21) == *(a3 + 22) && *(a3 + 24) == *(a3 + 25) && *(a3 + 27) == *(a3 + 28) && *(a3 + 30) == *(a3 + 31))
  {
    goto LABEL_30;
  }

  ContextHarvester::encodeCommand(v8, 0xFFFFD007, 3u, v10, v11, 65028, kDYStateGroupGLSLProgramLocationBindings, 65030, v9, 65030, 0);
  v13 = *(*(v8 + 2) + 32);
  v66 = *(v8 + 2);
  v67 = v13;
  v60 = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = ___ZN16ContextHarvester42harvestGLSLProgramActiveAttributeLocationsEj_block_invoke;
  v63 = &__block_descriptor_48_e49_v24__0r__ProgramActiveObject__QiiIiIIiiiiCC_8_B16l;
  v64 = v8;
  v65 = v9;
  GPUTools::GL::EnumerateProgramActiveAttributes();
  ContextHarvester::harvestGLSLProgramActiveFragDataLocations(v8, a2);
  ContextHarvester::encodeCommand(v8, 0xFFFFD008, 0, v14, v15);
  if (*(a3 + 320) == 1)
  {
    ContextHarvester::encodeProgramXfbVaryings(v8, a2, (a3 + 288));
    a3 = (a3 + 144);
  }

  else
  {
    ProgramXfb::ProgramXfb(&v60);
    ProgramXfb::update(v30, *(v8 + 2), a2);
    ContextHarvester::encodeProgramXfbVaryings(v8, a2, &v60);
    v31 = v61;
    if (v61)
    {
      v32 = v62;
      v33 = v61;
      if (v62 != v61)
      {
        do
        {
          v34 = *(v32 - 1);
          v32 -= 3;
          if (v34 < 0)
          {
            operator delete(*v32);
          }
        }

        while (v32 != v31);
        v33 = v61;
      }

      v62 = v31;
      operator delete(v33);
    }

    a3 = v12;
  }

LABEL_40:
  ContextHarvester::encodeProgramParameters(v8, a2, v16, a3, v11);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  ContextHarvester::encodeProgramShader(v8, a2, a3, v8 + 62, &v60);
  ContextHarvester::encodeProgramShader(v8, a2, a3 + 3, v8 + 65, &v60);
  ContextHarvester::encodeProgramShader(v8, a2, a3 + 6, v8 + 68, &v60);
  ContextHarvester::encodeProgramShader(v8, a2, a3 + 9, v8 + 71, &v60);
  ContextHarvester::encodeProgramShader(v8, a2, a3 + 12, v8 + 74, &v60);
  v35 = **(a3 + 15);
  v56 = a4;
  if (v35)
  {
    v36 = strlen(v35) + 1;
    v37 = *(v8 + 2);
    v38 = HIDWORD(v58);
    if (HIDWORD(v58) == 1)
    {
LABEL_42:
      LODWORD(v66) = a2;
      [*v37 getParameter:611 to:&v66];
      v55 = v66;
      v38 = HIDWORD(v58);
      v37 = *(v8 + 2);
LABEL_49:
      v43 = v57;
      v44 = v58;
      ContextHarvester::encode(v8, 349, 128, "Cul", *v37, v9);
      v45 = *(v8 + 2);
      if (v36 < 0x401)
      {
        v47 = "CiuiiSiieui";
      }

      else
      {
        v54 = *(v8 + 1);
        v46 = *(v8 + 591);
        DYGetGLGuestAppClient();
        GPUTools::Interpose::DYSavePointer();
        v45 = *(v8 + 2);
        v35 = v45 + 4644;
        v47 = "CiuiiU<cb>iieui";
      }

      ContextHarvester::encode(v8, 4294955024, 0, v47, *v45, 12, a2, v36, v35, v38 != 0, v44 != 0, v43, v55);
      if (v56)
      {
        v48 = *(*(v8 + 2) + 32);
        v66 = *(v8 + 2);
        v67 = v48;
        GPUTools::GL::EnumerateProgramActiveAttributes();
        v49 = *(v8 + 2);
        if (*(v49 + 3460) >= 3)
        {
          v50 = *(v49 + 32);
          v66 = *(v8 + 2);
          v67 = v50;
          GPUTools::GL::EnumerateProgramTransformFeedbackVaryings();
        }
      }

      v51 = v60;
      v52 = v61;
      if (v60 != v61)
      {
        do
        {
          ContextHarvester::encode(v8, 133, 128, "Culul", **(v8 + 2), v9, *v51++);
        }

        while (v51 != v52);
        v51 = v60;
      }

      if (v51)
      {
        v61 = v51;
        operator delete(v51);
      }

      v29 = 1;
      v8 = v59;
      goto LABEL_61;
    }

LABEL_48:
    v55 = 0;
    goto LABEL_49;
  }

  LODWORD(v66) = 0;
  v39 = *(v8 + 4);
  v40 = *(v39 + 5280);
  (*(v39 + 5264))(*(*(v8 + 3) + 16), a2, 35716, &v66);
  v41 = v66;
  if (!v66)
  {
    v36 = 0;
    v35 = 0;
    v37 = *(v8 + 2);
    v38 = HIDWORD(v58);
    if (HIDWORD(v58) == 1)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  if (*(v8 + 68) >= v66)
  {
LABEL_47:
    v42 = ((*(v8 + 67) + *(v8 + 72) - 1) & -*(v8 + 72)) - *(v8 + 67);
    *(v8 + 70) = v42;
    *(v8 + 71) = v42;
    v40(*(*(v8 + 3) + 16), a2, v41, 0);
    v35 = (*(v8 + 70) + *(v8 + 67));
    v36 = v66;
    v37 = *(v8 + 2);
    v38 = HIDWORD(v58);
    if (HIDWORD(v58) == 1)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  if (GPUTools::VMBuffer::alloc((v8 + 536), v66, 0))
  {
    v41 = v66;
    goto LABEL_47;
  }

  result = dy_abort();
  __break(1u);
  return result;
}

void sub_1AFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = *(v5 - 168);
  if (v7)
  {
    *(v5 - 160) = v7;
    operator delete(v7);
  }

  AutoStateGroup::~AutoStateGroup((v5 - 176), a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ProgramXfb::~ProgramXfb(ProgramXfb *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

void ContextHarvester::encode_r(ContextHarvester *this, uint64_t a2, uint64_t a3, void *a4, const char *a5, ...)
{
  va_start(va, a5);
  v5 = a4;
  va_copy(v17, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v16, va);
  v7 = *(this + 2);
  GPUTools::FB::Encode();
  GPUTools::FB::Encode(*(this + 2) + 120, 4294955008, "ul", v8, v9, v10, v11, v12, v5);
  v13 = *(this + 5);
  v14 = *(this + 2);
  while (atomic_exchange((v13 + 56), 1u) == 1)
  {
      ;
    }
  }

  v15 = **(v14 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v13 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v16);
}

void sub_1B308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  atomic_store(0, (v2 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1B324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestGLSLPrograms_LinkedStatePass(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 51))
  {
    ContextHarvester::harvestGLSLPrograms_LinkedStatePass();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLPrograms_LinkedStatePass, 65030, 0, 65030, 0);
  v9 = **(this + 51);
  if (v9)
  {
    v10 = *(this + 52);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestGLSLProgramLinkedState(this, *v10, v6, v7, v8);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

void ContextHarvester::harvestGLSLPrograms_CurrentStatePass(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 51))
  {
    ContextHarvester::harvestGLSLPrograms_CurrentStatePass();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLPrograms_CurrentStatePass, 65030, 0, 65030, 0);
  v9 = **(this + 51);
  if (v9)
  {
    v10 = *(this + 52);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestGLSLProgramCurrentState(this, *v10, v6, v7, v8);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v7, v8);
}

void ContextHarvester::encodeCreateGLSLTempShader(uint64_t a1, unsigned int *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (*(a2 + 8))
  {
    v6 = *(a1 + 308);
    *(a1 + 308) = v6 + 1;
    a2[1] = v6;
    ContextHarvester::encodeCommand(a1, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLShader, 65030, v6, 65030, *a2);
    ContextHarvester::encode_r(a1, 117, 2048, v6, "Ce", **(a1 + 16), *a2);
    ContextHarvester::encodeCommand(a1, 0xFFFFD008, 0, v8, v9);
  }
}

void ContextHarvester::harvestGLSLShaders(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 49))
  {
    ContextHarvester::harvestGLSLShaders();
  }

  if (!*(this + 51))
  {
    ContextHarvester::harvestGLSLShaders();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLShaders, 65030, 0, 65030, 0);
  v9 = **(this + 49);
  if (v9)
  {
    v10 = *(this + 50);
    v11 = 8 * v9;
    do
    {
      ContextHarvester::harvestGLSLShader(this, *v10);
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
    LODWORD(v9) = **(this + 49);
    if (v9)
    {
      LODWORD(v9) = *(*(this + 50) + 8 * (v9 - 1));
    }
  }

  v12 = **(this + 51);
  if (v12)
  {
    v12 = *(*(this + 52) + 8 * (v12 - 1));
  }

  if (v9 <= v12)
  {
    LODWORD(v9) = v12;
  }

  if ((v9 + 1) > 0x3E8)
  {
    v13 = v9 + 1;
  }

  else
  {
    v13 = 1000;
  }

  *(this + 77) = v13;
  ContextHarvester::encodeCreateGLSLTempShader(this, this + 62, v6, v7, v8);
  ContextHarvester::encodeCreateGLSLTempShader(this, this + 71, v14, v15, v16);
  ContextHarvester::encodeCreateGLSLTempShader(this, this + 74, v17, v18, v19);
  ContextHarvester::encodeCreateGLSLTempShader(this, this + 68, v20, v21, v22);
  ContextHarvester::encodeCreateGLSLTempShader(this, this + 65, v23, v24, v25);
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v26, v27);
}

void ContextHarvester::harvestGLSLShaderLabels(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 49))
  {
    ContextHarvester::harvestGLSLShaderLabels();
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLShaderLabels, 65030, 0, 65030, 0);
  v8 = **(this + 49);
  if (v8)
  {
    v9 = *(this + 50);
    v10 = 8 * v8;
    do
    {
      ContextHarvester::harvestObjectLabel(this, 0x8B48u, *v9);
      v9 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void ContextHarvester::encodeGLSLShaderDeletes(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(this + 49))
  {
    ContextHarvester::encodeGLSLShaderDeletes();
  }

  v18 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGLSLShaderDeletes, 65030, 0, 65030, 0);
  v8 = **(this + 49);
  if (v8)
  {
    v9 = *(this + 50);
    v10 = 8 * v8;
    do
    {
      v11 = *v9;
      v17 = 0;
      (*(*(this + 4) + 5256))(*(*(this + 3) + 16), v11, 35712, &v17);
      if (v17 == 1)
      {
        ContextHarvester::encode(this, 123, 0, "Cul", **(this + 2), v11);
      }

      v9 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  v12 = *(this + 63);
  if (v12)
  {
    ContextHarvester::encode(this, 123, 2048, "Cul", **(this + 2), v12);
    *(this + 63) = 0;
  }

  v13 = *(this + 66);
  if (v13)
  {
    ContextHarvester::encode(this, 123, 2048, "Cul", **(this + 2), v13);
    *(this + 66) = 0;
  }

  v14 = *(this + 69);
  if (v14)
  {
    ContextHarvester::encode(this, 123, 2048, "Cul", **(this + 2), v14);
    *(this + 69) = 0;
  }

  v15 = *(this + 72);
  if (v15)
  {
    ContextHarvester::encode(this, 123, 2048, "Cul", **(this + 2), v15);
    *(this + 72) = 0;
  }

  v16 = *(this + 75);
  if (v16)
  {
    ContextHarvester::encode(this, 123, 2048, "Cul", **(this + 2), v16);
    *(this + 75) = 0;
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void sub_1B9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1B9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::encodeWithError(ContextHarvester *this, uint64_t a2, uint64_t a3, int a4, const char *a5, ...)
{
  va_start(va, a5);
  va_copy(v13, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v12, va);
  v7 = *(this + 2);
  GPUTools::FB::Encode();
  if (a4)
  {
    v8 = *(this + 2);
    GPUTools::FB::EncodeGLError();
  }

  v9 = *(this + 5);
  v10 = *(this + 2);
  while (atomic_exchange((v9 + 56), 1u) == 1)
  {
      ;
    }
  }

  v11 = **(v10 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v9 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v12);
}

void sub_1BAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  atomic_store(0, (v2 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1BB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestUniformBufferBindings(unsigned int **this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v17 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupUniformBufferBindings, 65030, 0, 65030, 0);
  if (*(this + 29))
  {
    v8 = 0;
    do
    {
      v16 = 0;
      v14 = 0;
      v15 = 0;
      (*(this[4] + 700))(*(this[3] + 2), 35368, v8, &v16);
      (*(this[4] + 798))(*(this[3] + 2), 35369, v8, &v15);
      (*(this[4] + 798))(*(this[3] + 2), 35370, v8, &v14);
      v9 = v16;
      v11 = v14;
      v10 = v15;
      if (v16)
      {
        GPUTools::NameTargetTupleArray::find(this + 41, v16, &v18);
        if (v18 == &this[42][2 * *this[41]])
        {
          v12 = 1281;
        }

        else
        {
          v12 = 0;
        }

        v13 = *this[2];
        if (v11 >= 1)
        {
LABEL_12:
          ContextHarvester::encodeWithError(this, 15, 0, v12, "Ceuiuill", v13, 35345, v8, v9, v10, v11);
          goto LABEL_4;
        }
      }

      else
      {
        v12 = 0;
        v13 = *this[2];
        if (v14 >= 1)
        {
          goto LABEL_12;
        }
      }

      ContextHarvester::encodeWithError(this, 13, 0, v12, "Ceuiui", v13, 35345, v8, v9);
LABEL_4:
      v8 = (v8 + 1);
    }

    while (v8 < *(this + 29));
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void sub_1BCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::getGenericVertexArrays(uint64_t **this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v20[1] = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGenericVertexArray, 65030, a2, 65030, 0);
  v20[0] = 0;
  v19 = 0;
  (this[4][516])(this[3][2], a2, 34338, v20 + 4);
  (this[4][516])(this[3][2], a2, 34975, v20);
  if (*(this[2] + 4854) == 1)
  {
    (this[4][516])(this[3][2], a2, 35070, &v19);
  }

  else
  {
    v19 = 0;
  }

  if (HIDWORD(v20[0]))
  {
    v7 = 155;
  }

  else
  {
    v7 = 138;
  }

  ContextHarvester::encode(this, v7, 0, "Cui", *this[2], a2);
  if (LODWORD(v20[0]))
  {
    v8 = 128;
  }

  else
  {
    v8 = 130;
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
  (this[4][516])(this[3][2], a2, 34339, &v18 + 4);
  (this[4][516])(this[3][2], a2, 34341, &v16);
  (this[4][516])(this[3][2], a2, 34340, &v18);
  (this[4][516])(this[3][2], a2, 34922, &v17 + 4);
  (this[4][516])(this[3][2], a2, 35069, &v17);
  v15 = 0;
  (this[4][517])(this[3][2], a2, 34373, &v15);
  v9 = this[2];
  if (*(v9 + 4854) == 1)
  {
    ContextHarvester::encode(this, 833, 128, "Cuiui", *v9, a2, v19);
  }

  v10 = LODWORD(v20[0]);
  if (LODWORD(v20[0]) && !(this[4][645])(this[3][2], LODWORD(v20[0])))
  {
    v11 = 1282;
  }

  else
  {
    v11 = 0;
  }

  ContextHarvester::encodeWithError(this, 12, v8, v11, "Ceui", *this[2], 34962, v10);
  v12 = *this[2];
  if (v17)
  {
    ContextHarvester::encode(this, 729, v8, "Cuiieit", v12, a2, HIDWORD(v18), v16, v18, v15);
  }

  else
  {
    ContextHarvester::encode(this, 730, v8, "Cuiieubit", v12, a2, HIDWORD(v18), v16, HIDWORD(v17), v18, v15);
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v13, v14);
}

void ContextHarvester::getFixedFunctionVertexArrays(ContextHarvester *this, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = &gVertexArrays + 120 * a2;
  if (!*v6)
  {
    goto LABEL_6;
  }

  v7 = *(v6 + 28);
  if (v7 != -1)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  v8 = is_extension_available(*(this + 2), *v6);
  *(v6 + 28) = v8;
  if (v8)
  {
LABEL_6:
    if (*(v6 + 21) == 32888)
    {
      v9 = *(*(this + 2) + 3432);
      if (!v9)
      {
        return;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
    v11 = v9;
    v12 = 33984;
    do
    {
      v13 = *(v6 + 21);
      v35 = this;
      ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupFixedVertexArray, 65030, v13, 65030, v10);
      v14 = *(v6 + 21);
      if (v14 == 32888)
      {
        ContextHarvester::encode(this, 4294955013, 128, "Ceui", **(this + 2), *(*(this + 2) + 3436), v10);
        (*(*(this + 4) + 2728))(*(*(this + 3) + 16), v12);
        ContextHarvester::encode(this, 44, 128, "Ce", **(this + 2), v12);
        v14 = *(v6 + 21);
      }

      v15 = (*(*(this + 4) + 1144))(*(*(this + 3) + 16), v14);
      v34 = 0;
      (*(*(this + 4) + 832))(*(*(this + 3) + 16), *(v6 + 23), &v34);
      v16 = **(this + 2);
      if (v15)
      {
        v17 = 152;
      }

      else
      {
        v17 = 135;
      }

      ContextHarvester::encode(this, v17, 0, "Ce", **(this + 2), *(v6 + 21));
      v18 = v34 == 0;
      v19 = *(v6 + 24);
      v33 = 0;
      if ((v19 & 0x80000000) != 0)
      {
        v32 = 0;
        v33 = v19 & 0x7FFFFFFF;
        v20 = *(v6 + 25);
        if ((v20 & 0x80000000) == 0)
        {
LABEL_18:
          (*(*(this + 4) + 832))(*(*(this + 3) + 16), v20, &v32);
          v21 = *(v6 + 26);
          v31 = 0;
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      else
      {
        (*(*(this + 4) + 832))(*(*(this + 3) + 16), v19, &v33);
        v20 = *(v6 + 25);
        v32 = 0;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      v31 = 0;
      v32 = v20 & 0x7FFFFFFF;
      v21 = *(v6 + 26);
      if ((v21 & 0x80000000) != 0)
      {
LABEL_22:
        v31 = v21 & 0x7FFFFFFF;
        goto LABEL_23;
      }

LABEL_19:
      (*(*(this + 4) + 832))(*(*(this + 3) + 16), v21, &v31);
LABEL_23:
      v30 = 0;
      (*(*(this + 4) + 920))(*(*(this + 3) + 16), *(v6 + 22), &v30);
      v22 = v34;
      if (v34 && !(*(*(this + 4) + 5160))(*(*(this + 3) + 16), v34))
      {
        v23 = 1282;
      }

      else
      {
        v23 = 0;
      }

      v24 = (2 * v18);
      ContextHarvester::encodeWithError(this, 12, v24 | 0x80, v23, "Ceui", **(this + 2), 34962, v22);
      if (((v20 | v19 | v21) & 0x80000000) != 0)
      {
        if (((v21 | v20) & 0x80000000) != 0)
        {
          if ((v21 & v20) < 0 != v25)
          {
            dy_abort();
            __break(1u);
            return;
          }

          if (v21 < 0)
          {
            v28 = "Cet";
          }

          else
          {
            v28 = "Cit";
          }

          v29 = &v32;
          if (v21 >= 0)
          {
            v29 = &v31;
          }

          ContextHarvester::encode(this, *(v6 + 20), v24, v28, **(this + 2), *v29, v30);
        }

        else
        {
          ContextHarvester::encode(this, *(v6 + 20), v24, "Ceit", **(this + 2), v32, v31, v30);
        }
      }

      else
      {
        ContextHarvester::encode(this, *(v6 + 20), v24, "Cieit", **(this + 2), v33, v32, v31, v30);
      }

      if (*(v6 + 21) == 32888)
      {
        ContextHarvester::encode(this, 4294955014, 128, "C", **(this + 2));
      }

      ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v26, v27);
      ++v10;
      v12 = (v12 + 1);
    }

    while (v11 != v10);
  }
}

void sub_1C454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1C4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::setPixelBuffers(ContextHarvester *this, uint64_t a2, uint64_t a3, int a4)
{
  if (*(*(this + 2) + 3460) >= 2)
  {
    (*(*(this + 4) + 5136))(*(*(this + 3) + 16), 35052, a2);
    (*(*(this + 4) + 5136))(*(*(this + 3) + 16), 35051, a3);
    if (a4)
    {
      if (*(*(this + 2) + 2044) == a2)
      {
        v10 = 35052;
        v11 = &v10;
        if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v10) + 20))
        {
          v8 = 0;
        }

        else
        {
          v8 = 1282;
        }
      }

      else if (a2 && !(*(*(this + 4) + 5160))(*(*(this + 3) + 16), a2))
      {
        v8 = 1282;
      }

      else
      {
        v8 = 0;
      }

      ContextHarvester::encodeWithError(this, 12, 128, v8, "Ceui", **(this + 2), 35052, a2);
      if (*(*(this + 2) + 2040) == a3)
      {
        v10 = 35051;
        v11 = &v10;
        if (*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 8, &v10) + 20))
        {
          v9 = 0;
        }

        else
        {
          v9 = 1282;
        }
      }

      else if (a3 && !(*(*(this + 4) + 5160))(*(*(this + 3) + 16), a3))
      {
        v9 = 1282;
      }

      else
      {
        v9 = 0;
      }

      ContextHarvester::encodeWithError(this, 12, 128, v9, "Ceui", **(this + 2), 35051, a3);
    }
  }
}

uint64_t ContextHarvester::isFramebufferHarvestable(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  LODWORD(v4) = a4;
  if ((*(*(a1 + 32) + 5400))(*(*(a1 + 24) + 16), 36160) != 36053)
  {
    return 1;
  }

  v21 = 0;
  (*(*(a1 + 32) + 5392))(*(*(a1 + 24) + 16), 1, &v21);
  (*(*(a1 + 32) + 5376))(*(*(a1 + 24) + 16), 36160, v21);
  if (!v4)
  {
LABEL_35:
    v13 = (*(*(a1 + 32) + 5400))(*(*(a1 + 24) + 16), 36160) == 36053;
    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    v16 = *(v14 + 5376);
    v22 = 0;
    (*(v14 + 832))(*(v15 + 16), 36006, &v22);
    if (v22 != a2)
    {
      v16(*(*(a1 + 24) + 16), 36160, a2);
    }

    (*(*(a1 + 32) + 5384))(*(*(a1 + 24) + 16), 1, &v21);
    return v13;
  }

  v4 = v4;
  while (1)
  {
    v8 = a3[2];
    if (v8 > 33303)
    {
      break;
    }

    if (v8)
    {
      if (v8 != 5890)
      {
        goto LABEL_40;
      }

      if (!(*(*(a1 + 32) + 1160))(*(*(a1 + 24) + 16), a3[1]))
      {
        return 0;
      }

      if (!a3[7])
      {
        v9 = a3[3];
        if (v9 <= 34066)
        {
          if (v9 <= 32878)
          {
            if (v9 != 3552)
            {
              if (v9 != 3553)
              {
                goto LABEL_41;
              }

              goto LABEL_26;
            }

            v11 = *(a1 + 24);
            v12 = *(*(a1 + 32) + 5408);
LABEL_32:
            v12(*(v11 + 16), 36160, *a3, v9, a3[1], a3[5]);
            goto LABEL_5;
          }

          if (v9 != 32879)
          {
            if (v9 != 34037)
            {
              goto LABEL_41;
            }

LABEL_26:
            v11 = *(a1 + 24);
            v12 = *(*(a1 + 32) + 5416);
            goto LABEL_32;
          }
        }

        else
        {
          if (v9 <= 35865)
          {
            if (v9 == 34067)
            {
              (*(*(a1 + 32) + 5416))(*(*(a1 + 24) + 16), 36160, *a3, a3[4], a3[1], a3[5]);
              goto LABEL_5;
            }

            v10 = 35864;
            goto LABEL_29;
          }

          if (v9 != 37122)
          {
            if (v9 == 37120)
            {
              goto LABEL_26;
            }

            v10 = 35866;
LABEL_29:
            if (v9 != v10)
            {
              goto LABEL_41;
            }
          }
        }

        (*(*(a1 + 32) + 5528))(*(*(a1 + 24) + 16), 36160, *a3, a3[1], a3[5], a3[6]);
        goto LABEL_5;
      }

      (*(*(a1 + 32) + 5520))(*(*(a1 + 24) + 16), 36160, *a3, a3[1], a3[5]);
    }

LABEL_5:
    a3 += 8;
    if (!--v4)
    {
      goto LABEL_35;
    }
  }

  if (v8 == 33304)
  {
    goto LABEL_5;
  }

  if (v8 == 36161)
  {
    if (!(*(*(a1 + 32) + 5320))(*(*(a1 + 24) + 16), a3[1]))
    {
      return 0;
    }

    (*(*(a1 + 32) + 5432))(*(*(a1 + 24) + 16), 36160, *a3, a3[3], a3[1]);
    goto LABEL_5;
  }

LABEL_40:
  dy_string_from_enum();
  dy_abort();
LABEL_41:
  dy_string_from_enum();
  v18 = dy_abort();
  return ContextHarvester::harvestQueryObject(v18, v19, v20);
}

void ContextHarvester::harvestQueryObject(ContextHarvester *this, uint64_t a2, unsigned int a3, char a4, uint64_t a5)
{
  v27 = a3;
  if (!a3)
  {
    ContextHarvester::harvestQueryObject();
  }

  v26 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupQuery, 65030, a3, 65030, a2);
  GPUTools::FB::Encode(*(this + 2) + 120, 206, 0, "Ci@1ui", v7, v8, v9, v10, **(this + 2));
  v11 = *(this + 5);
  v12 = *(this + 2);
  while (atomic_exchange((v11 + 56), 1u) == 1)
  {
      ;
    }
  }

  v13 = **(v12 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v11 + 56));
  ContextHarvester::encodeCommandEx(this, 9u, 0x100u, 2u, v14, v15, v16, 529413, a2, 5125, v27);
  ContextHarvester::harvestObjectLabel(this, 0x9153u, v27);
  v25 = 0;
  (*(*(this + 4) + 5128))(*(*(this + 3) + 16), v27, 34919, &v25);
  if (v25)
  {
    v24 = 0;
    (*(*(this + 4) + 5128))(*(*(this + 3) + 16), v27, 34918, &v24);
    ContextHarvester::encodeCommandEx(this, 0x9Fu, 0x100u, 1u, v19, v20, v21, 529413, a2);
    ContextHarvester::encodeCommand(this, 0xFFFFD010, 4u, v22, v23, 5124, 10, 529413, a2, 5125, v27, 5125, v24);
  }

  ContextHarvester::encodeCommand(v26, 0xFFFFD008, 0, v17, v18);
}

void sub_1CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  atomic_store(0, (v5 + 56));
  AutoStateGroup::~AutoStateGroup((v6 - 48), a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestSamplingParameters<TextureParameterEncoder>(uint64_t a1, unsigned int *a2)
{
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 10241, v5);
  ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 10241, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 10240, v5);
  ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 10240, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 10242, v5);
  ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 10242, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 10243, v5);
  ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 10243, LODWORD(v5[0]));
  v4 = *(a1 + 16);
  if (*(v4 + 3460) >= 2)
  {
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 32882, v5);
    ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 32882, LODWORD(v5[0]));
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 1008))(*(*(*a2 + 24) + 16), a2[2], 33082, v5);
    ContextHarvester::encode(*a2, 598, 0, "Ceef", **(*a2 + 16), a2[2], 33082, v5[0]);
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 1008))(*(*(*a2 + 24) + 16), a2[2], 33083, v5);
    ContextHarvester::encode(*a2, 598, 0, "Ceef", **(*a2 + 16), a2[2], 33083, v5[0]);
    v4 = *(a1 + 16);
    if (*(v4 + 4844) != 1)
    {
LABEL_3:
      if (*(v4 + 4860) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (*(v4 + 4844) != 1)
  {
    goto LABEL_3;
  }

  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1008))(*(*(*a2 + 24) + 16), a2[2], 34049, v5);
  ContextHarvester::encode(*a2, 598, 0, "Ceef", **(*a2 + 16), a2[2], 34049, v5[0]);
  (*(*(*a2 + 32) + 1008))(*(*(*a2 + 24) + 16), a2[2], 4100, v5);
  ContextHarvester::encode(*a2, 599, 0, "Cee@4f", **(*a2 + 16), a2[2], 4100, v5);
  v4 = *(a1 + 16);
  if (*(v4 + 4860) != 1)
  {
LABEL_4:
    if (!is_extension_available(v4, "GL_EXT_texture_filter_anisotropic"))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 34892, v5);
  ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 34892, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 34893, v5);
  ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 34893, LODWORD(v5[0]));
  if (!is_extension_available(*(a1 + 16), "GL_EXT_texture_filter_anisotropic"))
  {
LABEL_5:
    if (!is_extension_available(*(a1 + 16), "GL_EXT_texture_sRGB_decode"))
    {
      return;
    }

LABEL_11:
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 1016))(*(*(*a2 + 24) + 16), a2[2], 35400, v5);
    ContextHarvester::encode(*a2, 600, 0, "Ceee", **(*a2 + 16), a2[2], 35400, LODWORD(v5[0]));
    return;
  }

LABEL_10:
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 1008))(*(*(*a2 + 24) + 16), a2[2], 34046, v5);
  ContextHarvester::encode(*a2, 598, 0, "Ceef", **(*a2 + 16), a2[2], 34046, v5[0]);
  if (is_extension_available(*(a1 + 16), "GL_EXT_texture_sRGB_decode"))
  {
    goto LABEL_11;
  }
}

void ContextHarvester::harvestSampler(ContextHarvester *this, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = a2;
  if (!a2)
  {
    ContextHarvester::harvestSampler();
  }

  v10 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupSampler, 65030, a2, 65030, 0);
  ContextHarvester::encode(this, 858, 0, "Ci@1ui", **(this + 2), 1, &v11);
  ContextHarvester::encode(this, 850, 128, "Cuiui", **(this + 2), 0, v11);
  ContextHarvester::harvestObjectLabel(this, 0x82E6u, v11);
  v8 = this;
  v9 = v11;
  ContextHarvester::harvestSamplingParameters<SamplerParameterEncoder>(this, &v8);
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v6, v7);
}

void ContextHarvester::harvestSamplingParameters<SamplerParameterEncoder>(uint64_t a1, unsigned int *a2)
{
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 10241, v5);
  ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 10241, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 10240, v5);
  ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 10240, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 10242, v5);
  ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 10242, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 10243, v5);
  ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 10243, LODWORD(v5[0]));
  v4 = *(a1 + 16);
  if (*(v4 + 3460) >= 2)
  {
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 32882, v5);
    ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 32882, LODWORD(v5[0]));
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 6488))(*(*(*a2 + 24) + 16), a2[2], 33082, v5);
    ContextHarvester::encode(*a2, 870, 0, "Cuief", **(*a2 + 16), a2[2], 33082, v5[0]);
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 6488))(*(*(*a2 + 24) + 16), a2[2], 33083, v5);
    ContextHarvester::encode(*a2, 870, 0, "Cuief", **(*a2 + 16), a2[2], 33083, v5[0]);
    v4 = *(a1 + 16);
    if (*(v4 + 4844) != 1)
    {
LABEL_3:
      if (*(v4 + 4860) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (*(v4 + 4844) != 1)
  {
    goto LABEL_3;
  }

  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6488))(*(*(*a2 + 24) + 16), a2[2], 34049, v5);
  ContextHarvester::encode(*a2, 870, 0, "Cuief", **(*a2 + 16), a2[2], 34049, v5[0]);
  (*(*(*a2 + 32) + 6488))(*(*(*a2 + 24) + 16), a2[2], 4100, v5);
  ContextHarvester::encode(*a2, 871, 0, "Cee@4f", **(*a2 + 16), a2[2], 4100, v5);
  v4 = *(a1 + 16);
  if (*(v4 + 4860) != 1)
  {
LABEL_4:
    if (!is_extension_available(v4, "GL_EXT_texture_filter_anisotropic"))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 34892, v5);
  ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 34892, LODWORD(v5[0]));
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 34893, v5);
  ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 34893, LODWORD(v5[0]));
  if (!is_extension_available(*(a1 + 16), "GL_EXT_texture_filter_anisotropic"))
  {
LABEL_5:
    if (!is_extension_available(*(a1 + 16), "GL_EXT_texture_sRGB_decode"))
    {
      return;
    }

LABEL_11:
    v5[0] = 0.0;
    (*(*(*a2 + 32) + 6480))(*(*(*a2 + 24) + 16), a2[2], 35400, v5);
    ContextHarvester::encode(*a2, 872, 0, "Cuiee", **(*a2 + 16), a2[2], 35400, LODWORD(v5[0]));
    return;
  }

LABEL_10:
  v5[0] = 0.0;
  (*(*(*a2 + 32) + 6488))(*(*(*a2 + 24) + 16), a2[2], 34046, v5);
  ContextHarvester::encode(*a2, 870, 0, "Cuief", **(*a2 + 16), a2[2], 34046, v5[0]);
  if (is_extension_available(*(a1 + 16), "GL_EXT_texture_sRGB_decode"))
  {
    goto LABEL_11;
  }
}

void ContextHarvester::harvestSyncObject(ContextHarvester *this, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = a2;
  v25 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupSyncObject, 65030, a2, 65030, 0);
  v24 = 0;
  v23 = 0;
  v22 = 0;
  (*(*(this + 4) + 6280))(*(*(this + 3) + 16), v7, 37138, 1, 0, &v24 + 4);
  (*(*(this + 4) + 6280))(*(*(this + 3) + 16), v7, 37140, 1, 0, &v24);
  (*(*(this + 4) + 6280))(*(*(this + 3) + 16), v7, 37139, 1, 0, &v23);
  (*(*(this + 4) + 6280))(*(*(this + 3) + 16), v7, 37141, 1, 0, &v22);
  if (HIDWORD(v24) == 37142)
  {
    GPUTools::FB::Encode(*(this + 2) + 120, 881, 0, "Ceui", v8, v9, v10, v11, **(this + 2));
    GPUTools::FB::Encode(*(this + 2) + 120, 4294955008, "Y", v12, v13, v14, v15, v16, v7);
    v17 = *(this + 5);
    v18 = *(this + 2);
    while (atomic_exchange((v17 + 56), 1u) == 1)
    {
        ;
      }
    }

    v19 = **(v18 + 120);
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, (v17 + 56));
    ContextHarvester::harvestObjectLabel(this, 0x8A53u, a2);
    ContextHarvester::encodeCommand(v25, 0xFFFFD008, 0, v20, v21);
  }

  else
  {
    dy_string_from_enum();
    dy_abort();
    __break(1u);
  }
}

void sub_1DAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  atomic_store(0, (v5 + 56));
  AutoStateGroup::~AutoStateGroup((v6 - 40), a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1DB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestXfbObject(ContextHarvester *this, uint64_t a2)
{
  v2 = a2;
  v25 = a2;
  (*(*(this + 4) + 7232))(*(*(this + 3) + 16), 36386, a2);
  v24 = 0;
  (*(*(this + 4) + 792))(*(*(this + 3) + 16), 36388, &v24);
  v23 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v4, v5, 65028, kDYStateGroupXfb, 65030, v2, 65030, v24);
  if (v2)
  {
    ContextHarvester::encode(this, 987, 0, "Ci@1ui", **(this + 2), 1, &v25);
    v6 = v25;
  }

  else
  {
    v6 = 0;
  }

  ContextHarvester::encode(this, 980, 128, "Ceui", **(this + 2), 36386, v6);
  ContextHarvester::harvestObjectLabel(this, 0x8E22u, v25);
  if (*(this + 28))
  {
    v7 = 0;
    do
    {
      v22 = 0;
      v20 = 0;
      v21 = 0;
      (*(*(this + 4) + 5600))(*(*(this + 3) + 16), 35983, v7, &v22);
      (*(*(this + 4) + 6384))(*(*(this + 3) + 16), 35972, v7, &v21);
      (*(*(this + 4) + 6384))(*(*(this + 3) + 16), 35973, v7, &v20);
      v8 = v22;
      v10 = v20;
      v9 = v21;
      if (v22)
      {
        GPUTools::NameTargetTupleArray::find(this + 41, v22, &v26);
        if (v26 == (*(this + 42) + 8 * **(this + 41)))
        {
          v11 = 1281;
        }

        else
        {
          v11 = 0;
        }

        v12 = **(this + 2);
        if (v10 >= 1)
        {
LABEL_15:
          ContextHarvester::encodeWithError(this, 15, 0, v11, "Ceuiuill", v12, 35982, v7, v8, v9, v10);
          goto LABEL_7;
        }
      }

      else
      {
        v11 = 0;
        v12 = **(this + 2);
        if (v20 >= 1)
        {
          goto LABEL_15;
        }
      }

      ContextHarvester::encodeWithError(this, 13, 0, v11, "Ceuiui", v12, 35982, v7, v8);
LABEL_7:
      v7 = (v7 + 1);
    }

    while (v7 < *(this + 28));
  }

  v21 = 0;
  [**(this + 2) getParameter:1503 to:&v21];
  if (v24)
  {
    v15 = *(this + 2);
    v26 = &v25;
    v16 = std::__hash_table<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v15 + 3560), &v25);
    ContextHarvester::encode(this, 645, 128, "Cul", **(this + 2), *(v16 + 5));
    v17 = *(this + 2);
    if (*(v17 + 4846) == 1)
    {
      v18 = *(v16 + 6);
      if (v18 && !(*(*(this + 4) + 6600))(*(*(this + 3) + 16), v18))
      {
        v19 = 1282;
      }

      else
      {
        v19 = 0;
      }

      ContextHarvester::encodeWithError(this, 887, 128, v19, "Cui", **(this + 2), v18);
      v17 = *(this + 2);
    }

    ContextHarvester::encode(this, 4294955026, 128, "Ceuii", *v17, 36386, 1, HIDWORD(v21));
    ContextHarvester::encodeWithError(this, 10, 128, 1282, "Ce", **(this + 2), v21);
    ContextHarvester::encode(this, 1004, 128, "C", **(this + 2));
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v13, v14);
}

void sub_1DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1DF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1DF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1DF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1DF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestGroupMarkers(ContextHarvester *this)
{
  if (is_extension_available(*(this + 2), "GL_EXT_debug_marker"))
  {
    ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v2, v3, 65028, kDYStateGroupMarkers, 65030, 0, 65030, 0);
    v8 = *(this + 2);
    v9 = *(v8 + 96);
    for (i = *(v8 + 104); v9 != i; v9 += 3)
    {
      v11 = v9;
      if (*(v9 + 23) < 0)
      {
        v11 = *v9;
      }

      ContextHarvester::encodeCommandEx(this, 0x397u, 0x180u, 2u, v5, v6, v7, 5125, 0, 65028, v11);
    }

    ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v4, v5);
  }
}

void sub_1E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::getGlobalState(ContextHarvester *this, uint64_t a2, int a3, uint64_t a4, unint64_t a5, void (*a6)(__GLIContextRec *, unsigned int, void *), unsigned int a7, int a8, BOOL a9)
{
  v34 = a2;
  v15 = *(this + 70) + *(this + 67);
  v16 = (a6)(*(*(this + 3) + 16));
  if (a9)
  {
    ContextHarvester::encodeCommand(this, a7, 2u, v17, v18, 529413, a2, a3 | 0x20000u, a4, *(this + 70) + *(this + 67));
  }

  else
  {
    v19 = (*(this + 2) + 4709);
    v19[2] = 0u;
    v19[3] = 0u;
    *v19 = 0u;
    v19[1] = 0u;
    if (a4 == a8)
    {
      v33 = 0;
      v20 = ContextHarvester::formatForStateBufferType(v16, a3, &v33);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      strlcpy((*(this + 2) + 4709), "C", 0x40uLL);
      GPUTools::FB::FIFOPointerArgumentProvider::push(&v29, *(this + 2));
      if (a4)
      {
        v21 = 0;
        do
        {
          strlcat((*(this + 2) + 4709), v20, 0x40uLL);
          GPUTools::FB::FIFOPointerArgumentProvider::push(&v29, (*(this + 70) + *(this + 67) + v33 * v21++));
        }

        while (a4 != v21);
      }

      v22 = *(this + 2);
      GPUTools::FB::Encode();
      v23 = *(this + 5);
      v24 = *(this + 2);
      while (atomic_exchange((v23 + 56), 1u) == 1)
      {
          ;
        }
      }
    }

    else
    {
      v33 = 0;
      v25 = ContextHarvester::formatForStateBufferType(v16, a3, &v33);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      strlcpy((*(this + 2) + 4709), "Ce", 0x40uLL);
      GPUTools::FB::FIFOPointerArgumentProvider::push(&v29, *(this + 2));
      GPUTools::FB::FIFOPointerArgumentProvider::push(&v29, &v34);
      if (a4)
      {
        v26 = 0;
        do
        {
          strlcat((*(this + 2) + 4709), v25, 0x40uLL);
          GPUTools::FB::FIFOPointerArgumentProvider::push(&v29, (*(this + 70) + *(this + 67) + v33 * v26++));
        }

        while (a4 != v26);
      }

      v27 = *(this + 2);
      GPUTools::FB::Encode();
      v23 = *(this + 5);
      v24 = *(this + 2);
      while (atomic_exchange((v23 + 56), 1u) == 1)
      {
          ;
        }
      }
    }

    v28 = **(v24 + 120);
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, (v23 + 56));
    GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(&v29);
  }
}

void sub_1E3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  atomic_store(0, (v6 + 56));
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1E3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1E404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1E418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1E42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

const char *ContextHarvester::formatForStateBufferType(ContextHarvester *this, int a2, unint64_t *a3)
{
  v3 = a2 & 0xFFE1FFFF;
  if ((a2 & 0xFFE1FFFF) > 35669)
  {
    if (v3 > 65026)
    {
      if (v3 <= 65028)
      {
        if (v3 == 65027)
        {
          result = "V";
          v5 = 8;
          if (!a3)
          {
            return result;
          }
        }

        else
        {
          result = "S";
          v5 = 8;
          if (!a3)
          {
            return result;
          }
        }

        goto LABEL_59;
      }

      if (v3 == 65029)
      {
        result = "V<i>";
        v5 = 8;
        if (!a3)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (v3 == 65030)
      {
        result = "uw";
        v5 = 8;
        if (!a3)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (v3 > 65024)
      {
        if (v3 == 65025)
        {
          result = "U";
          v5 = 8;
          if (!a3)
          {
            return result;
          }
        }

        else
        {
          result = "t";
          v5 = 8;
          if (!a3)
          {
            return result;
          }
        }

        goto LABEL_59;
      }

      if (v3 == 35670)
      {
        goto LABEL_38;
      }

      if (v3 == 65024)
      {
        result = "p";
        v5 = 8;
        if (!a3)
        {
          return result;
        }

        goto LABEL_59;
      }
    }

    goto LABEL_61;
  }

  if (v3 <= 5123)
  {
    if (v3 > 5121)
    {
      if (v3 == 5122)
      {
        result = "s";
        v5 = 2;
        if (!a3)
        {
          return result;
        }
      }

      else
      {
        result = "us";
        v5 = 2;
        if (!a3)
        {
          return result;
        }
      }

      goto LABEL_59;
    }

    if (v3 == 5120)
    {
      result = "b";
LABEL_40:
      v5 = 1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_59;
    }

    if (v3 != 5121)
    {
      goto LABEL_61;
    }

LABEL_38:
    result = "ub";
    goto LABEL_40;
  }

  if (v3 > 5125)
  {
    if (v3 == 5126)
    {
      if ((a2 & 0x80000) != 0)
      {
        result = "n";
      }

      else
      {
        result = "f";
      }

      v5 = 4;
      if (a3)
      {
        goto LABEL_59;
      }

      return result;
    }

    if (v3 == 5130)
    {
      result = "d";
      v5 = 8;
      if (!a3)
      {
        return result;
      }

      goto LABEL_59;
    }

LABEL_61:
    v6 = dy_abort();
    return ContextHarvester::getGenericVertexAttrib(v6, v7);
  }

  if (v3 != 5124)
  {
    if ((a2 & 0x80000) != 0)
    {
      result = "e";
    }

    else
    {
      result = "ui";
    }

    v5 = 4;
    if (!a3)
    {
      return result;
    }

LABEL_59:
    *a3 = v5;
    return result;
  }

  if ((a2 & 0x80000) != 0)
  {
    result = "e";
  }

  else
  {
    result = "i";
  }

  v5 = 4;
  if (a3)
  {
    goto LABEL_59;
  }

  return result;
}

void ContextHarvester::getGenericVertexAttrib(ContextHarvester *this, uint64_t a2)
{
  v2 = *(this + 2);
  v3 = v2[451];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(v2[450] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    ContextHarvester::encode(this, 701, 0, "Cuiffff", *v2, a2, 0, 0, 0, 0x3FF0000000000000);
    return;
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = v3 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          goto LABEL_23;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= v3)
    {
      v10 %= v3;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_23:
  v11 = *(v7 + 6);
  switch(v11)
  {
    case 5124:
      ContextHarvester::encode(this, 722, 0, "Cuiiiii", *v2, a2, *(v7 + 4), *(v7 + 5), *(v7 + 6), *(v7 + 7));
      break;
    case 5125:
      ContextHarvester::encode(this, 726, 0, "Cuiuiuiuiui", *v2, a2, *(v7 + 4), *(v7 + 5), *(v7 + 6), *(v7 + 7));
      break;
    case 5126:
      v12 = *(v7 + 4);
      v13 = *(v7 + 5);
      v14 = *(v7 + 6);
      v15 = *(v7 + 7);
      ContextHarvester::encode(this, 701, 0, "Cuiffff", *v2, a2, v12, v13, v14, v15);
      break;
    default:
      v17 = *(v7 + 6);
      v16 = dy_abort();
      ContextHarvester::harvestFixedFunctionGlobalState(v16);
      break;
  }
}

void ContextHarvester::harvestFixedFunctionGlobalState(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v103 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupGlobalFixedFunctionState, 65030, 0, 65030, 0);
  ContextHarvester::harvestFixedFunctionTextureUnitState(this, v6, v7, v8, v9);
  ContextHarvester::harvestMatrix(this, 5889, 2983, 2980, 0);
  ContextHarvester::harvestMatrix(this, 5888, 2982, 2979, 0);
  if (is_extension_available(*(this + 2), "GL_ARB_vertex_blend"))
  {
    LODWORD(v101) = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34468, &v101);
    ContextHarvester::harvestMatrix(this, 34058, 34058, 2979, 0);
    if (v101 >= 3)
    {
      v11 = 0;
      do
      {
        ContextHarvester::harvestMatrix(this, (v11 + 34594), (v11 + 34594), 2979, 0);
        ++v11;
      }

      while (v11 < v101 - 2);
    }
  }

  ContextHarvester::getGlobalState(this, 2816, 5126, 4, v10, *(*(this + 4) + 824), 0x42u, 4, 0);
  ContextHarvester::getGlobalState(this, 2818, 5126, 3, v12, *(*(this + 4) + 824), 0x1A7u, 3, 0);
  v102 = 0;
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 3378, &v102);
  if (v102)
  {
    for (i = 0; i < v102; ++i)
    {
      v101 = this;
      ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v13, v14, 65028, kDYStateGroupClipPlane, 65030, i, 65030, 0);
      ContextHarvester::encodeCommandEx(this, 0xFFFFD005, 0x80u, 2u, v16, v17, v18, 529413, 3378, 5125, i);
      if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), i + 12288))
      {
        v21 = 151;
      }

      else
      {
        v21 = 134;
      }

      ContextHarvester::encodeCommand(this, v21, 1u, v19, v20, 529413, i + 12288);
      (*(*(this + 4) + 7832))(*(*(this + 3) + 16), i + 12288, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x2FBu, 2u, v22, v23, 529413, i + 12288, 136198, 4, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommandEx(this, 0xFFFFD006, 0x80u, 0, v24, v25, v26);
      ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v27, v28);
    }
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2912))
  {
    v31 = 151;
  }

  else
  {
    v31 = 134;
  }

  ContextHarvester::encodeCommand(this, v31, 1u, v29, v30, 529413, 2912);
  (*(*(this + 4) + 824))(*(*(this + 3) + 16), 2918, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0xBDu, 2u, v32, v33, 529413, 2918, 136198, 4, *(this + 70) + *(this + 67));
  ContextHarvester::getGlobalState(this, 2917, 529414, 1, v34, *(*(this + 4) + 824), 0xBCu, 2, 0);
  ContextHarvester::getGlobalState(this, 2914, 5126, 1, v35, *(*(this + 4) + 824), 0xBCu, 2, 0);
  ContextHarvester::getGlobalState(this, 2915, 5126, 1, v36, *(*(this + 4) + 824), 0xBCu, 2, 0);
  ContextHarvester::getGlobalState(this, 2916, 5126, 1, v37, *(*(this + 4) + 824), 0xBCu, 2, 0);
  ContextHarvester::getGlobalState(this, 2900, 529412, 1, v38, *(*(this + 4) + 832), 0x21Bu, 1, 0);
  v100 = 0;
  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 3377, &v100);
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2896))
  {
    v41 = 151;
  }

  else
  {
    v41 = 134;
  }

  ContextHarvester::encodeCommand(this, v41, 1u, v39, v40, 529413, 2896);
  if (v100)
  {
    for (j = 0; j < v100; ++j)
    {
      v101 = this;
      ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v42, v43, 65028, kDYStateGroupLight, 65030, j, 65030, 0);
      ContextHarvester::encodeCommandEx(this, 0xFFFFD005, 0x80u, 2u, v45, v46, v47, 529413, 3377, 5125, j);
      if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), j + 0x4000))
      {
        v50 = 151;
      }

      else
      {
        v50 = 134;
      }

      ContextHarvester::encodeCommand(this, v50, 1u, v48, v49, 529413, j + 0x4000);
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4608, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v51, v52, 529413, j + 0x4000, 529413, 4608, 136198, 4, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4609, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v53, v54, 529413, j + 0x4000, 529413, 4609, 136198, 4, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4610, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v55, v56, 529413, j + 0x4000, 529413, 4610, 136198, 4, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4611, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v57, v58, 529413, j + 0x4000, 529413, 4611, 136198, 4, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4612, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v59, v60, 529413, j + 0x4000, 529413, 4612, 136198, 3, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4614, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v61, v62, 529413, j + 0x4000, 529413, 4614, 136198, 1, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4613, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v63, v64, 529413, j + 0x4000, 529413, 4613, 136198, 1, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4615, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v65, v66, 529413, j + 0x4000, 529413, 4615, 136198, 1, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4616, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v67, v68, 529413, j + 0x4000, 529413, 4616, 136198, 1, *(this + 70) + *(this + 67));
      (*(*(this + 4) + 840))(*(*(this + 3) + 16), j + 0x4000, 4617, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommand(this, 0x158u, 3u, v69, v70, 529413, j + 0x4000, 529413, 4617, 136198, 1, *(this + 70) + *(this + 67));
      ContextHarvester::encodeCommandEx(this, 0xFFFFD006, 0x80u, 0, v71, v72, v73);
      ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v74, v75);
    }
  }

  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2903))
  {
    v78 = 151;
  }

  else
  {
    v78 = 134;
  }

  ContextHarvester::encodeCommand(this, v78, 1u, v76, v77, 529413, 2903);
  (*(*(this + 4) + 880))(*(*(this + 3) + 16), 1028, 4608, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0x175u, 3u, v79, v80, 529413, 1032, 529413, 4608, 136198, 4, *(this + 70) + *(this + 67));
  (*(*(this + 4) + 880))(*(*(this + 3) + 16), 1028, 4609, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0x175u, 3u, v81, v82, 529413, 1032, 529413, 4609, 136198, 4, *(this + 70) + *(this + 67));
  (*(*(this + 4) + 880))(*(*(this + 3) + 16), 1028, 4610, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0x175u, 3u, v83, v84, 529413, 1032, 529413, 4610, 136198, 4, *(this + 70) + *(this + 67));
  (*(*(this + 4) + 880))(*(*(this + 3) + 16), 1028, 5633, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0x175u, 3u, v85, v86, 529413, 1032, 529413, 5633, 136198, 1, *(this + 70) + *(this + 67));
  (*(*(this + 4) + 880))(*(*(this + 3) + 16), 1028, 5632, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0x175u, 3u, v87, v88, 529413, 1032, 529413, 5632, 136198, 4, *(this + 70) + *(this + 67));
  (*(*(this + 4) + 824))(*(*(this + 3) + 16), 2899, *(this + 70) + *(this + 67));
  ContextHarvester::encodeCommand(this, 0x154u, 2u, v89, v90, 529413, 2899, 136198, 4, *(this + 70) + *(this + 67));
  ContextHarvester::getGlobalState(this, 2898, 5126, 1, v91, *(*(this + 4) + 824), 0x153u, 2, 0);
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 2977))
  {
    v94 = 151;
  }

  else
  {
    v94 = 134;
  }

  ContextHarvester::encodeCommand(this, v94, 1u, v92, v93, 529413, 2977);
  if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 32826))
  {
    v97 = 151;
  }

  else
  {
    v97 = 134;
  }

  ContextHarvester::encodeCommand(this, v97, 1u, v95, v96, 529413, 32826);
  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v98, v99);
}

void sub_1F534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1F56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  AutoStateGroup::~AutoStateGroup(va);
  AutoStateGroup::~AutoStateGroup(va1);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestExtensionsGlobalState(ContextHarvester *this)
{
  if (is_extension_available(*(this + 2), "GL_ARB_vertex_blend"))
  {
    v21 = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34469, &v21);
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 34470))
    {
      v4 = 151;
    }

    else
    {
      v4 = 134;
    }

    ContextHarvester::encodeCommand(this, v4, 1u, v2, v3, 529413, 34470);
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 34471))
    {
      v7 = 151;
    }

    else
    {
      v7 = 134;
    }

    ContextHarvester::encodeCommand(this, v7, 1u, v5, v6, 529413, 34471);
    ContextHarvester::encodeCommand(this, 0x2DBu, 1u, v8, v9, 5124, v21);
    (*(*(this + 4) + 824))(*(*(this + 3) + 16), 34472, *(this + 70) + *(this + 67));
    ContextHarvester::encodeCommand(this, 0x2E1u, 2u, v10, v11, 5124, v21, 136198, v21, *(this + 70) + *(this + 67));
  }

  if (is_extension_available(*(this + 2), "GL_APPLE_vertex_array_range"))
  {
    v20 = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34079, &v20);
    if (v20 != 34228)
    {
      ContextHarvester::encodeCommand(this, 0x29Fu, 2u, v12, v13, 529413, 34079, 529413, v20);
    }
  }

  if (is_extension_available(*(this + 2), "GL_EXT_stencil_two_side"))
  {
    if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), 35088))
    {
      v16 = 151;
    }

    else
    {
      v16 = 134;
    }

    ContextHarvester::encodeCommand(this, v16, 1u, v14, v15, 529413, 35088);
    v19 = 0;
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35089, &v19);
    ContextHarvester::encodeCommand(this, 1u, 1u, v17, v18, 529413, v19);
  }

  ContextHarvester::harvestGroupMarkers(this);
}

void ContextHarvester::harvestMatrix(ContextHarvester *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupMatrix, 65030, a2, 65030, a5);
  ContextHarvester::encodeCommandEx(this, 0x178u, 0x80u, 1u, v9, v10, v11, 529413, a2);
  (*(*(this + 4) + 1392))(*(*(this + 3) + 16), a2);
  v27 = 0;
  v12 = (*(*(this + 4) + 832))(*(*(this + 3) + 16), a4, &v27);
  __chkstk_darwin(v12);
  v16 = &v26[-v15];
  if (v27 >= 1)
  {
    v17 = 0;
    v18 = &v26[-v15];
    do
    {
      (*(*(this + 4) + 824))(*(*(this + 3) + 16), a3, v18);
      v21 = v27;
      if (v17 != v27 - 1)
      {
        (*(*(this + 4) + 1640))(*(*(this + 3) + 16));
        v21 = v27;
      }

      ++v17;
      v18 += 64;
    }

    while (v17 < v21);
    if (v21 >= 1)
    {
      v22 = v21;
      for (i = &v16[64 * v21 - 64]; ; i -= 64)
      {
        ContextHarvester::encodeCommandEx(this, 0x161u, 0x80u, 1u, v14, v19, v20, 136198, 16, i);
        (*(*(this + 4) + 1272))(*(*(this + 3) + 16), i);
        if (!--v22)
        {
          break;
        }

        ContextHarvester::encodeCommandEx(this, 0x1D7u, 0x80u, 0, v14, v24, v25);
        (*(*(this + 4) + 1680))(*(*(this + 3) + 16));
      }
    }
  }

  ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v13, v14);
}

void sub_1F9F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ContextHarvester::getTextureEnvironment(ContextHarvester *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(__GLIContextRec *, unsigned int, unsigned int, void *), unsigned int a8)
{
  v28 = a3;
  v29 = a2;
  v14 = *(this + 70) + *(this + 67);
  (a7)(*(*(this + 3) + 16));
  if ((a4 & 0x20000) != 0)
  {
    ContextHarvester::encodeCommand(this, a8, 3u, v15, v16, 529413, a2, 529413, a3, a4, a5, *(this + 70) + *(this + 67));
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    strlcpy((*(this + 2) + 4709), "Cee", 0x40uLL);
    GPUTools::FB::FIFOPointerArgumentProvider::push(&v24, *(this + 2));
    GPUTools::FB::FIFOPointerArgumentProvider::push(&v24, &v29);
    v17 = GPUTools::FB::FIFOPointerArgumentProvider::push(&v24, &v28);
    v18 = *(this + 2);
    v19 = ContextHarvester::formatForStateBufferType(v17, a4, 0);
    strlcat((v18 + 4709), v19, 0x40uLL);
    GPUTools::FB::FIFOPointerArgumentProvider::push(&v24, (*(this + 70) + *(this + 67)));
    v20 = *(this + 2);
    GPUTools::FB::Encode();
    v21 = *(this + 5);
    v22 = *(this + 2);
    while (atomic_exchange((v21 + 56), 1u) == 1)
    {
        ;
      }
    }

    v23 = **(v22 + 120);
    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, (v21 + 56));
    GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(&v24);
  }
}

void sub_1FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  atomic_store(0, (v9 + 56));
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_1FC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestFixedFunctionTextureUnitState(ContextHarvester *this, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (*(*(this + 2) + 3444))
  {
    v6 = 0;
    v7 = &kDYStateGroupImageUnit;
    do
    {
      ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, *v7, 65030, v6, 65030, 0);
      ContextHarvester::encodeCommandEx(this, 0xFFFFD005, 0x80u, 2u, v8, v9, v10, 529413, *(*(this + 2) + 3448), 5125, v6);
      (*(*(this + 4) + 2736))(*(*(this + 3) + 16), (v6 + 33984));
      ContextHarvester::encodeCommandEx(this, 2u, 0x80u, 1u, v11, v12, v13, 529413, (v6 + 33984));
      v15 = *(this + 2);
      if (v6 < *(v15 + 3432))
      {
        ContextHarvester::harvestMatrix(this, 5890, 2984, 2981, v6);
        (*(*(this + 4) + 824))(*(*(this + 3) + 16), 2819, v50);
        ContextHarvester::encodeCommand(this, 0x19Cu, 5u, v16, v17, 529413, (v6 + 33984), 5126, v50[0], 5126, v50[1], 5126, v50[2], 5126, v50[3]);
        ContextHarvester::getTextureEnvironment(this, 34913, 34914, 1053700, 1, v18, *(*(this + 4) + 952), 0x249u);
        v15 = *(this + 2);
      }

      if (v6 < *(v15 + 3440))
      {
        v19 = v7;
        v20 = *(v15 + 3408);
        v21 = *(v15 + 3416);
        while (v20 != v21)
        {
          v22 = *v20;
          if ((v22 & 0xFFFFFFFD) != 0x8C18)
          {
            if ((*(*(this + 4) + 1144))(*(*(this + 3) + 16), *v20))
            {
              v25 = 151;
            }

            else
            {
              v25 = 134;
            }

            ContextHarvester::encodeCommand(this, v25, 1u, v23, v24, 529413, v22);
          }

          ++v20;
        }

        ContextHarvester::getTextureEnvironment(this, 8960, 8704, 529412, 1, v14, *(*(this + 4) + 952), 0x249u);
        v7 = v19;
        (*(*(this + 4) + 944))(*(*(this + 3) + 16), 8960, 8705, *(this + 70) + *(this + 67));
        ContextHarvester::encodeCommand(this, 0x248u, 3u, v26, v27, 529413, 8960, 529413, 8705, 136198, 4, *(this + 70) + *(this + 67));
        ContextHarvester::getTextureEnvironment(this, 8960, 34162, 529412, 1, v28, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34161, 529412, 1, v29, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34176, 529412, 1, v30, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34177, 529412, 1, v31, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34178, 529412, 1, v32, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34184, 529412, 1, v33, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34185, 529412, 1, v34, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34186, 529412, 1, v35, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34192, 529412, 1, v36, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34193, 529412, 1, v37, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34194, 529412, 1, v38, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34200, 529412, 1, v39, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34201, 529412, 1, v40, *(*(this + 4) + 952), 0x249u);
        ContextHarvester::getTextureEnvironment(this, 8960, 34202, 529412, 1, v41, *(*(this + 4) + 952), 0x249u);
        (*(*(this + 4) + 944))(*(*(this + 3) + 16), 8960, 34163, *(this + 70) + *(this + 67));
        ContextHarvester::encodeCommand(this, 0x248u, 3u, v42, v43, 529413, 8960, 529413, 34163, 136198, 3, *(this + 70) + *(this + 67));
        (*(*(this + 4) + 944))(*(*(this + 3) + 16), 8960, 3356, *(this + 70) + *(this + 67));
        ContextHarvester::encodeCommand(this, 0x248u, 3u, v44, v45, 529413, 8960, 529413, 3356, 136198, 3, *(this + 70) + *(this + 67));
        v15 = *(this + 2);
      }

      if (!*(v15 + 3456) || is_extension_available(v15, "GL_EXT_texture_lod_bias"))
      {
        ContextHarvester::getTextureEnvironment(this, 34048, 34049, 5126, 1, v14, *(*(this + 4) + 944), 0x247u);
      }

      ContextHarvester::encodeCommandEx(this, 0xFFFFD006, 0x80u, 0, v46, v14, v47);
      ContextHarvester::encodeCommand(this, 0xFFFFD008, 0, v48, v49);
      ++v6;
    }

    while (v6 < *(*(this + 2) + 3444));
  }
}

void sub_20290(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_202AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_202C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_202D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::encodePixelStore(ContextHarvester *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3317, a2[3]);
  ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3333, a3[3]);
  v8 = *(a1 + 2);
  if (*(v8 + 865) >= 2)
  {
    ContextHarvester::encode(a1, 438, a4, "Cei", *v8, 3314, *a2);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3315, a2[1]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3316, a2[2]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 32878, a2[4]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 32877, a2[5]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3330, *a3);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3331, a3[1]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3332, a3[2]);
    v8 = *(a1 + 2);
    if (*(v8 + 4844) == 1)
    {
      ContextHarvester::encode(a1, 438, a4, "Cei", *v8, 32876, a3[4]);
      ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 32875, a3[5]);
      v8 = *(a1 + 2);
    }
  }

  if (*(v8 + 864) != 3)
  {
    if (*(v8 + 4861) != 1)
    {
      return;
    }

LABEL_8:
    ContextHarvester::encode(a1, 438, a4, "Cei", *v8, 35350, a2[6]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 35352, a2[7]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 35349, a3[6]);
    ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 35351, a3[7]);
    return;
  }

  ContextHarvester::encode(a1, 438, a4, "Cei", *v8, 3312, *(a2 + 32));
  ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3313, *(a2 + 33));
  ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3328, *(a3 + 32));
  ContextHarvester::encode(a1, 438, a4, "Cei", **(a1 + 2), 3329, *(a3 + 33));
  v8 = *(a1 + 2);
  if (*(v8 + 4861) == 1)
  {
    goto LABEL_8;
  }
}

void ContextHarvester::encodeCommandv(ContextHarvester *this, unsigned int a2, unsigned int a3, unsigned int a4, char *a5)
{
  v40 = a5;
  v6 = (*(this + 2) + 4709);
  v6[2] = 0u;
  v6[3] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  memset(v39, 0, sizeof(v39));
  strlcpy((*(this + 2) + 4709), "C", 0x40uLL);
  v7 = GPUTools::FB::FIFOArgumentProvider::push(&v38, **(this + 2));
  if (a4)
  {
    v8 = 0;
    while (1)
    {
      v9 = v40;
      v40 += 8;
      v10 = *v9;
      if ((*v9 & 0x20000) != 0)
      {
        break;
      }

      v11 = 1;
      if ((v10 & 0x40000) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      v36 = 0;
      v15 = ContextHarvester::formatForStateBufferType(v7, v10, &v36);
      if ((v10 & 0x20000) != 0)
      {
        snprintf(__str, 0x40uLL, "@%u", v11);
        strlcat((*(this + 2) + 4709), __str, 0x40uLL);
LABEL_16:
        v17 = v40;
        v40 += 8;
        v18 = *v17;
        goto LABEL_17;
      }

      v16 = v10 & 0xFFE1FFFF;
      if ((v10 & 0xFFE1FFFF) <= 35669)
      {
        if (v16 <= 5123)
        {
          if (v16 > 5121)
          {
            v25 = v40;
            v40 += 8;
            v26 = BYTE1(*v25);
            goto LABEL_17;
          }

          if (v16 != 5120 && v16 != 5121)
          {
            goto LABEL_41;
          }

LABEL_28:
          v23 = v40;
          v40 += 8;
          v24 = *v23;
          goto LABEL_17;
        }

        if (v16 <= 5125)
        {
          v19 = v40;
          v40 += 8;
          v20 = *v19;
          goto LABEL_17;
        }

        if (v16 == 5126)
        {
          v29 = v40;
          v40 += 8;
          v30 = *v29;
          goto LABEL_17;
        }

        if (v16 != 5130)
        {
          goto LABEL_41;
        }

        goto LABEL_16;
      }

      if (v16 <= 65025)
      {
        if (v16 == 35670)
        {
          goto LABEL_28;
        }

        if (v16 != 65024)
        {
          if (v16 != 65025)
          {
            goto LABEL_41;
          }

LABEL_27:
          v21 = v40;
          v40 += 8;
          v22 = *v21;
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if ((v16 - 65027) < 3)
      {
        goto LABEL_27;
      }

      if (v16 != 65026 && v16 != 65030)
      {
LABEL_41:
        dy_abort();
        __break(1u);
        return;
      }

      v27 = v40;
      v40 += 8;
      v28 = *v27;
LABEL_17:
      strlcat((*(this + 2) + 4709), v15, 0x40uLL);
      v7 = GPUTools::FB::FIFOArgumentProvider::push();
      if (++v8 >= a4)
      {
        goto LABEL_37;
      }
    }

    v12 = v40;
    v40 += 8;
    v11 = *v12;
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v13 = *(this + 2);
    GPUTools::FB::Encode();
    memset(v37, 0, sizeof(v37));
    std::deque<dy_polymorphic_scalar_t>::__move_assign(v39, v37);
    GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v36);
    v14 = (*(this + 2) + 4709);
    v14[2] = 0u;
    v14[3] = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    goto LABEL_8;
  }

LABEL_37:
  v31 = *(this + 2);
  GPUTools::FB::Encode();
  v32 = *(this + 5);
  v33 = *(this + 2);
  while (atomic_exchange((v32 + 56), 1u) == 1)
  {
      ;
    }
  }

  v34 = **(v33 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v32 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v38);
}

void sub_20B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_20BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  atomic_store(0, (v11 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_20BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_20BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_20BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ProgramInfo::~ProgramInfo(ProgramInfo *this)
{
  v2 = *(this + 43);
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

  v4 = *(this + 41);
  *(this + 41) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    v6 = *(this + 38);
    v7 = *(this + 37);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 37);
    }

    *(this + 38) = v5;
    operator delete(v7);
  }

  ProgramPipelineInfo::~ProgramPipelineInfo((this + 144));

  ProgramPipelineInfo::~ProgramPipelineInfo(this);
}

double std::deque<dy_polymorphic_scalar_t>::__move_assign(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  a1[5] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[2];
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 512;
  }

  a1[4] = v8;
LABEL_8:
  std::deque<dy_polymorphic_scalar_t>::shrink_to_fit(a1);
  v10 = a1[1];
  v9 = a1[2];
  if (v9 != v10)
  {
    a1[2] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<dy_polymorphic_scalar_t *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<dy_polymorphic_scalar_t>::shrink_to_fit(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x200)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 512;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = ((v5 - v4) << 6) - 1;
    }

    if (v6 - (v2 + v3) >= 0x200)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  std::__split_buffer<dy_polymorphic_scalar_t *>::shrink_to_fit(v7);
}

void std::__split_buffer<dy_polymorphic_scalar_t *>::shrink_to_fit(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = &dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

uint64_t std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](uint64_t a1)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void alpha_func(__GLIContextRec *a1, uint64_t a2, float a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v11 + 24) + 8);
      v41.n128_f32[0] = a3;

      v40(a1, a2, v41);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v52;
    v16 = v52 - __ptr;
    v17 = v53;
    v18 = v53 - (v52 - __ptr);
    if (v18 <= 0x37)
    {
      v42 = (311 - v18) & 0x100;
      v53 += v42;
      v15 = malloc_type_malloc(v42 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_66;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v52 = v14 + 56;
    v20 = v14 + 56 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v53;
    v26 = v53 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v52;
LABEL_22:
      bzero(v19, v22);
      v52 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 3;
      v15[8] = 0;
      v50 = 0;
      pthread_threadid_np(0, &v50);
      *(v15 + 1) = v50;
      v15[9] = 6710595;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      *(v15 + 13) = a3;
      v28 = byte_21AE5B;
      if (byte_21AE5B)
      {
        breakpoint_break(&__ptr, (&dword_0 + 3), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 8))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v45 = *(&g_DYTimebaseInfo + 1);
          v46 = __udivti3();
          v47 = __ptr;
          *(__ptr + 3) = v46;
          v47[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v11);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v11 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v11);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          v35 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          v36 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v43 = 2;
        v44 = 3;
      }

      breakpoint_break(&__ptr, v44, v43, v32, v11);
      goto LABEL_37;
    }

    v48 = (v22 - v26 + 255) & 0xFFFFFF00;
    v49 = v48 + v53;
    v53 += v48;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v49);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v48 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v19 = v27;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 8))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v11 + 24) + 8);
      v41.n128_f32[0] = a3;

      v40(a1, a2, v41);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v52;
    v16 = v52 - __ptr;
    v17 = v53;
    v18 = v53 - (v52 - __ptr);
    if (v18 <= 0x37)
    {
      v42 = (311 - v18) & 0x100;
      v53 += v42;
      v15 = malloc_type_malloc(v42 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15 || (v15 & 3) != 0)
      {
        goto LABEL_66;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v52 = v14 + 56;
    v20 = v14 + 56 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v53;
    v26 = v53 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v52;
LABEL_22:
      bzero(v19, v22);
      v52 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 3;
      v15[8] = 0;
      v50 = 0;
      pthread_threadid_np(0, &v50);
      *(v15 + 1) = v50;
      v15[9] = 6710595;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      *(v15 + 13) = a3;
      v28 = byte_21AE5B;
      if (byte_21AE5B)
      {
        breakpoint_break(&__ptr, (&dword_0 + 3), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 8))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v45 = *(&g_DYTimebaseInfo + 1);
          v46 = __udivti3();
          v47 = __ptr;
          *(__ptr + 3) = v46;
          v47[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v11);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v11 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v11);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          v35 = *__ptr;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          v36 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v43 = 2;
        v44 = 3;
      }

      breakpoint_break(&__ptr, v44, v43, v32, v11);
      goto LABEL_37;
    }

    v48 = (v22 - v26 + 255) & 0xFFFFFF00;
    v49 = v48 + v53;
    v53 += v48;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v49);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v48 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }
    }

    if ((v23 & 3) == 0)
    {
      v27 = v23 + v24;
      v19 = v27;
      goto LABEL_22;
    }

LABEL_66:
    dy_abort();
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 8))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v15, 0, do_nothing);
LABEL_29:
      v17 = *(*(v11 + 24) + 8);
      v16.n128_f32[0] = a3;

      v17(a1, a2, v16);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v11 + 32) + 8))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v20 = *(*(v11 + 24) + 8);
      v19.n128_f32[0] = a3;

      v20(a1, a2, v19);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 8))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_21900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void bind_texture(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_73;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_73:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v11 + 24) + 40);

      v45(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v51, 20, 0, "Ceui", v14, v15, v16, v17, *v11);
    v18 = byte_21AE6C;
    if (byte_21AE6C)
    {
      breakpoint_break(v51, &dword_14, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 40))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v51[0];
        *(v51[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v48 = *(&g_DYTimebaseInfo + 1);
        v49 = __udivti3();
        v50 = v51[0];
        *(v51[0] + 3) = v49;
        v50[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v51);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v46 = 3;
      v47 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v51[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v11);
        }

        if (!*(v11 + 3404))
        {
          wrapper_cache_texture_binding(v11, a2, a3);
          v26 = *(v11 + 40);
          GPUTools::DYLockUtils::Lock((v26 + 368), v27);
          v29 = *(v11 + 40);
          v30 = *(v29 + 312);
          if (v30)
          {
            v31 = vcnt_s8(v30);
            v31.i16[0] = vaddlv_u8(v31);
            if (v31.u32[0] > 1uLL)
            {
              v32 = a3;
              if (v30 <= a3)
              {
                v32 = a3 % v30;
              }
            }

            else
            {
              v32 = (v30 - 1) & a3;
            }

            v33 = *(*(v29 + 304) + 8 * v32);
            if (v33)
            {
              v34 = *v33;
              if (*v33)
              {
                if (v31.u32[0] < 2uLL)
                {
                  v35 = v30 - 1;
                  while (1)
                  {
                    v37 = v34[1];
                    if (v37 == a3)
                    {
                      if (*(v34 + 4) == a3)
                      {
                        goto LABEL_59;
                      }
                    }

                    else if ((v37 & v35) != v32)
                    {
                      goto LABEL_63;
                    }

                    v34 = *v34;
                    if (!v34)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                do
                {
                  v36 = v34[1];
                  if (v36 == a3)
                  {
                    if (*(v34 + 4) == a3)
                    {
LABEL_59:
                      v38 = IOSurfaceLookup(*(v34 + 6));
                      v39 = v38;
                      if (v38)
                      {
                        Seed = IOSurfaceGetSeed(v38);
                        if (Seed != *(v34 + 7))
                        {
                          *(v34 + 7) = Seed;
                          copyout_iosurface_texture_encode_teximage(v11, a2, a3, v39, v34[5], 1);
                        }

                        CFRelease(v39);
                      }

                      break;
                    }
                  }

                  else
                  {
                    if (v36 >= v30)
                    {
                      v36 %= v30;
                    }

                    if (v36 != v32)
                    {
                      break;
                    }
                  }

                  v34 = *v34;
                }

                while (v34);
              }
            }
          }

LABEL_63:
          GPUTools::DYLockUtils::Unlock((v26 + 368), v28);
        }

        v41 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v41 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_69;
      }

      v46 = 2;
      v47 = 20;
    }

    breakpoint_break(v51, v47, v46, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 40))(a1, a2, a3);
LABEL_69:
  if (v51[0])
  {
    free(v51[0]);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_48:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v11 + 24) + 40);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v36, 20, 0, "Ceui", v14, v15, v16, v17, *v11);
    v18 = byte_21AE6C;
    if (byte_21AE6C)
    {
      breakpoint_break(v36, &dword_14, 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(*(v11 + 32) + 40))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v36[0];
        *(v36[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = *(&g_DYTimebaseInfo + 1);
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v36);
    v22 = *(v11 + 3404);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        v25 = *v36[0];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v11);
        }

        if (!*(v11 + 3404))
        {
          wrapper_cache_texture_binding(v11, a2, a3);
        }

        v26 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_44;
      }

      v31 = 2;
      v32 = 20;
    }

    breakpoint_break(v36, v32, v31, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 40))(a1, a2, a3);
LABEL_44:
  if (v36[0])
  {
    free(v36[0]);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_27:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_34:
      v17 = *(*(v11 + 24) + 40);

      v17(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v15 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v15 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  (*(*(v11 + 32) + 40))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    bind_texture(v11);
    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v11);
  }

LABEL_21:
  if (!*(v11 + 3404))
  {
    wrapper_cache_texture_binding(v11, a2, a3);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_27:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_34:
      v20 = *(*(v11 + 24) + 40);

      v20(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v18 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v18 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_34;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 40))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    bind_texture(v11);
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v11);
  }

LABEL_21:
  if (!*(v11 + 3404))
  {
    wrapper_cache_texture_binding(v11, a2, a3);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v14 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v14, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      bind_texture();
      return;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v15 = *(*(v11 + 24) + 40);

  v15(a1, a2, a3);
}