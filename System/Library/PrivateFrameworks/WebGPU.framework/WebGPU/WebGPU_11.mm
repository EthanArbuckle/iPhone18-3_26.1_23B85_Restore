void sub_2256DAC24(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v3 - 104), a2);
  _Unwind_Resume(a1);
}

__n128 WebGPU::makeBindingLayout<mpark::variant<WGSL::BufferBindingLayout,WGSL::SamplerBindingLayout,WGSL::TextureBindingLayout,WGSL::StorageTextureBindingLayout,WGSL::ExternalTextureBindingLayout> const>(int32x2_t *a1, int32x2_t *a2, unsigned __int8 *a3, int a4, uint64_t a5, int32x2_t a6)
{
  v6 = a3[16];
  if (v6 == 255)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3[16];
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_43;
      }

      v16 = a3[2];
      a2[10] = 0;
      a6.i8[0] = *a3;
      a6.i8[4] = a3[1];
      v17 = vand_s8(vadd_s32(a6, -1), 0xFF000000FFLL);
      v18 = vcgt_u32(0x500000004, v17);
      a2[11] = vsub_s32(vand_s8(vadd_s32(v17, 0x200000002), v18), vmvn_s8(v18));
      a2[12].i32[0] = v16;
    }

    else
    {
      if (v7 == 3)
      {
        if (v6 == 3)
        {
          v8 = *a3;
          if ((a3[1] - 1) > 0xFu)
          {
            v9 = 23;
          }

          else
          {
            v9 = dword_225881E90[(a3[1] - 1)];
          }

          if (a3[2] - 1 >= 5)
          {
            v22 = 1;
          }

          else
          {
            v22 = (a3[2] - 1) + 2;
          }

          if (v8 == 1)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

          if (v8 == 2)
          {
            v23 = 3;
          }

          a2[13] = 0;
          a2[14].i32[0] = v23;
          a2[14].i32[1] = v9;
          a2[15].i32[0] = v22;
          result = *a2[13].i8;
          *a1->i8 = result;
          a1[2] = a2[15];
          a1[4].i8[0] = 3;
          return result;
        }

LABEL_43:
        mpark::throw_bad_variant_access(a1);
      }

      if (v6 != 4)
      {
        goto LABEL_43;
      }

      a2[10] = 0;
      a2[11] = 0x27FFFFFFELL;
      a2[12].i32[0] = 0;
    }

    a1[2] = a2[12];
    result = *a2[10].i8;
    *a1->i8 = result;
    a1[4].i8[0] = 2;
    return result;
  }

  if (v7)
  {
    if (v6 != 1)
    {
      goto LABEL_43;
    }

    v19 = *a3;
    if (v19 == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    if (v19 == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = v20;
    }

    a2[8] = 0;
    a2[9].i32[0] = v21;
    result = *a2[8].i8;
    *a1->i8 = result;
    a1[4].i8[0] = 1;
  }

  else
  {
    if (a3[16])
    {
      goto LABEL_43;
    }

    if (!a4)
    {
      v10 = *a3;
      if (v10 == 1)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v10 == 2)
      {
        a4 = 3;
      }

      else
      {
        a4 = v11;
      }
    }

    v12 = a3[1];
    v13 = *(a3 + 8);
    a2[4] = 0;
    a2[5].i32[0] = a4;
    a2[5].i32[1] = v12;
    a2[6] = v13;
    a2[7] = a5;
    result = *a2[4].i8;
    v15 = *a2[6].i8;
    *a1->i8 = result;
    *a1[2].i8 = v15;
    a1[4].i8[0] = 0;
  }

  return result;
}

void WebGPU::Device::generatePipelineLayout(WebGPU::Device *a1@<X0>, void ***a2@<X1>, WebGPU::PipelineLayout *a3@<X8>)
{
  v46 = 0;
  v47 = 0;
  v4 = *(a2 + 3);
  if (!v4)
  {
    goto LABEL_40;
  }

  if (v4 >> 29)
  {
    __break(0xC471u);
    JUMPOUT(0x2256DB1E8);
  }

  LODWORD(v47) = *(a2 + 3);
  v46 = WTF::fastMalloc((8 * v4));
  v6 = *(a2 + 3);
  if (!v6)
  {
LABEL_40:
    v7 = 0;
LABEL_41:
    v42 = 0;
    v43 = "generated pipeline layout";
    v44 = 0;
    goto LABEL_42;
  }

  if (v6 >> 29)
  {
    __break(0xC471u);
LABEL_63:
    JUMPOUT(0x2256DB1D8);
  }

  v7 = WTF::fastMalloc((8 * v6));
  v8 = *(a2 + 3);
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = 0;
  v10 = *a2;
  v11 = 16 * v8;
  v12 = "getBindGroup() generated layout";
  v39 = a1;
  do
  {
    v42 = 0;
    v43 = v12;
    v44 = *(v10 + 3);
    if (v44)
    {
      v16 = *v10;
    }

    else
    {
      v16 = 0;
    }

    v45 = v16;
    WebGPU::Device::createBindGroupLayout(a1, &v42, 1u, &v41);
    v17 = v41;
    v18 = *(v41 + 72);
    if (v18)
    {
      LODWORD(v19) = HIDWORD(v47);
      if (HIDWORD(v47) == v47)
      {
        v20 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v46, HIDWORD(v47) + 1, &v41);
        v19 = HIDWORD(v47);
        v21 = v46;
        v22 = *v20;
        *v20 = 0;
        *(v21 + v19) = v22;
      }

      else
      {
        v21 = v46;
        v41 = 0;
        *(v46 + HIDWORD(v47)) = v17;
      }

      v26 = __CFADD__(v19, 1);
      v27 = v19 + 1;
      HIDWORD(v47) = v27;
      if (v26)
      {
        __break(0xC471u);
        goto LABEL_63;
      }

      v28 = v12;
      v29 = *(v21 + v27 - 1);
      v30 = v9;
      if (v9 == v6)
      {
        v31 = v9 + (v9 >> 1);
        if (v31 <= v9 + 1)
        {
          v31 = v9 + 1;
        }

        if (v31 >> 29)
        {
          __break(0xC471u);
          JUMPOUT(0x2256DB1E0);
        }

        if (v31 <= 0x10)
        {
          v6 = 16;
        }

        else
        {
          v6 = v31;
        }

        v32 = WTF::fastMalloc((8 * v6));
        memcpy(v32, v7, 8 * v9);
        if (v7)
        {
          if (v32 == v7)
          {
            LODWORD(v6) = 0;
            v32 = 0;
          }

          WTF::fastFree(v7, v15);
        }

        ++v9;
        *(v32 + v30) = v29;
        v7 = v32;
        v12 = v28;
        a1 = v39;
        v25 = v41;
        v41 = 0;
        if (!v25)
        {
          goto LABEL_8;
        }
      }

      else
      {
        ++v9;
        *(v7 + v30) = v29;
        v12 = v28;
        a1 = v39;
        v25 = v41;
        v41 = 0;
        if (!v25)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      if (WebGPU::PipelineLayout::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, v15);
      }

      else
      {
        NonCompact = WebGPU::PipelineLayout::operatorNewSlow(0x88);
      }

      v24 = NonCompact;
      WebGPU::PipelineLayout::PipelineLayout(NonCompact, a1);
      v25 = v41;
      *a3 = v24;
      v41 = 0;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    if (*(v25 + 2) == 1)
    {
      WebGPU::BindGroupLayout::~BindGroupLayout(v25, v15);
      bmalloc::api::tzoneFree(v13, v14);
LABEL_8:
      if ((v18 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_9;
    }

    --*(v25 + 2);
    if ((v18 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_9:
    v10 += 2;
    v11 -= 16;
  }

  while (v11);
  v42 = 0;
  v43 = "generated pipeline layout";
  v44 = v9;
  v33 = v7;
  if (!v9)
  {
LABEL_42:
    v33 = 0;
  }

  v45 = v33;
  WebGPU::Device::createPipelineLayout(a1, &v42, 1, a3);
LABEL_44:
  v34 = v46;
  if (HIDWORD(v47))
  {
    v35 = 8 * HIDWORD(v47);
    do
    {
      v38 = *v34;
      *v34 = 0;
      if (v38)
      {
        if (*(v38 + 2) == 1)
        {
          WebGPU::BindGroupLayout::~BindGroupLayout(v38, v15);
          bmalloc::api::tzoneFree(v36, v37);
        }

        else
        {
          --*(v38 + 2);
        }
      }

      v34 = (v34 + 8);
      v35 -= 8;
    }

    while (v35);
    v34 = v46;
  }

  if (v34)
  {
    v46 = 0;
    LODWORD(v47) = 0;
    WTF::fastFree(v34, v15);
  }

  if (v7)
  {
    WTF::fastFree(v7, v15);
  }
}

void sub_2256DB1F4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Vector<WTF::Ref<WebGPU::BindGroupLayout,WTF::RawPtrTraits<WebGPU::BindGroupLayout>,WTF::DefaultRefDerefTraits<WebGPU::BindGroupLayout>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (v10)
  {
    WTF::fastFree(v10, v12);
  }

  _Unwind_Resume(a1);
}

void WebGPU::Device::createRenderPipeline(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, WebGPU::RenderPipeline **a4@<X8>)
{
  v8 = *(a2 + 136);
  if (v8 && *(v8 + 40) > *(a1 + 192) || !*(a1 + 8))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
    if (v208[0] && atomic_fetch_add_explicit(v208[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v208[0], v10);
    }

    return;
  }

  v9 = objc_opt_new();
  [v9 setShaderValidation:WebGPU::Device::shaderValidationState(a1)];
  if (*(a2 + 8))
  {
    strlen(*(a2 + 8));
  }

  WTF::String::fromUTF8();
  if (v208[0])
  {
    atomic_fetch_add_explicit(v208[0], 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v219, v208[0]);
    if (atomic_fetch_add_explicit(v208[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v208[0], v11);
    }

    v12 = v208[0];
    v208[0] = 0;
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }
  }

  else
  {
    v219 = &stru_2838D6D18;
  }

  [v9 setSupportIndirectCommandBuffers:1];
  v217 = 0;
  v218 = 0;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = *(v15 + 8);
    *(v15 + 8) = v16 + 1;
    v220[0] = v15;
    if (*(v15 + 128) == 1 && (v17 = *(v15 + 88), v17 == a1) && *(v17 + 8))
    {
      if (*(v15 + 129))
      {
        v18 = 0;
        v19 = 1;
      }

      else
      {
        *(v15 + 8) = v16 + 2;
        v19 = 1;
        v18 = v15;
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v18 = v208[0];
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
      if (v208[0])
      {
        if (atomic_fetch_add_explicit(v208[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v208[0], v13);
        }

        v19 = 0;
        v18 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    if (*(v15 + 8) == 1)
    {
      WebGPU::PipelineLayout::~PipelineLayout(v15, v13);
      bmalloc::api::tzoneFree(v22, v23);
      if ((v19 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      --*(v15 + 8);
      if ((v19 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v216 = 0;
    v20 = a2 + 24;
    if (*(a2 + 24))
    {
LABEL_36:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
      if (v208[0] && atomic_fetch_add_explicit(v208[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v208[0], v13);
      }

      goto LABEL_39;
    }
  }

  else
  {
    v18 = 0;
    v216 = 0;
    v20 = a2 + 24;
    if (*(a2 + 24))
    {
      goto LABEL_36;
    }
  }

  v21 = *(a2 + 32);
  ++*v21;
  v215 = v21;
  if (*(v21 + 40) || !*(v21 + 3) || *(v21 + 9) != a1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
    if (v208[0] && atomic_fetch_add_explicit(v208[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v208[0], v13);
    }

    if (*v21 != 1)
    {
      --*v21;
      goto LABEL_39;
    }

    v198 = 0;
    v199 = 0;
    v201 = 0;
    LOBYTE(v33) = 0;
    goto LABEL_65;
  }

  v37 = *(a2 + 40);
  if (v37)
  {
    WTF::String::fromUTF8(&v214, v37, v13);
  }

  else
  {
    v44 = *(v21 + 15);
    if (v44)
    {
      atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
    }

    v214 = v44;
  }

  v199 = WebGPU::ShaderModule::stageInTypesForEntryPoint(v21, &v214, v14);
  v45 = WebGPU::errorValidatingVertexStageIn(v199, *(a1 + 176));
  if (!v45)
  {
    v46 = *(a1 + 8);
    v47 = v219;
    v207 = 0;
    v173 = &v207;
    WebGPU::createLibrary(v46, v21, v18, &v214, v47, v208);
    v45 = v207;

    if ((v213 & 1) == 0)
    {
      v63 = [v45 localizedDescription];
      v50 = v63;
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = @"Vertex library failed creation";
      }

      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, &v64->isa);
      v198 = 0;
      goto LABEL_129;
    }

    v48 = v211;
    v198 = v211;
    if (!v18)
    {
      v50 = WebGPU::Device::addPipelineLayouts(a1, &v217, v209 + 1);
      if (v50)
      {
        WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v50);
        goto LABEL_129;
      }

      if ((v213 & 1) == 0)
      {
        goto LABEL_156;
      }
    }

    v49 = v208[0];
    v48 = v219;
    v50 = WebGPU::createFunction(v49, &v208[1], v48);

    if (v50 && [(NSString *)v50 functionType]== 1)
    {
      v51 = v210;
      if (v210)
      {
        v51 = *(v210 - 12);
      }

      if ((v213 & 1) == 0)
      {
        goto LABEL_156;
      }

      v52 = v212;
      if (v212)
      {
        v52 = *(v212 - 12);
      }

      if (v51 == v52)
      {
        [v9 setVertexFunction:v50];
        v201 = WebGPU::ShaderModule::vertexReturnTypeForEntryPoint(v215, &v214, v53);
        LODWORD(v33) = 1;
LABEL_130:

        std::__optional_destruct_base<WebGPU::LibraryCreationResult,false>::~__optional_destruct_base[abi:sn200100](v208, v69);
        goto LABEL_131;
      }
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v33 = v220[0];
    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v220[0]);
    if (!v33)
    {
      v201 = 0;
      goto LABEL_130;
    }

    if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v65);
    }

LABEL_129:
    v201 = 0;
    LODWORD(v33) = 0;
    goto LABEL_130;
  }

  WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v45);
  v198 = 0;
  v201 = 0;
  LODWORD(v33) = 0;
LABEL_131:

  v70 = v214;
  v214 = 0;
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v13);
  }

  v21 = v215;
  if (v215)
  {
    if (*v215 == 1)
    {
LABEL_65:
      WebGPU::ShaderModule::~ShaderModule(v21, v13);
      bmalloc::api::tzoneFree(v34, v35);
      if ((v33 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    --*v215;
    if ((v33 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (!v33)
  {
    goto LABEL_39;
  }

LABEL_66:
  v215 = 0;
  v36 = *(a2 + 136);
  if (!v36)
  {
    v38 = 0;
    v183 = 0;
    v184 = 0;
    v188 = 0;
    v190 = 0;
LABEL_73:
    v192 = v36;
    v39 = *(a2 + 104);
    if (v39)
    {
      v40 = WebGPU::errorValidatingDepthStencilState(*(a2 + 104));
      if (v40)
      {
        WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v40);

        goto LABEL_192;
      }

      v181 = v38;
      v58 = WebGPU::Texture::pixelFormat(*(v39 + 8));
      v59 = v58;
      if (((v58 - 253) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        v60 = v58;
      }

      else
      {
        v60 = 0;
      }

      [v9 setDepthAttachmentPixelFormat:v60, v173];
      v61 = *(v39 + 8);
      if (v61 <= 0x2B && ((1 << v61) & 0xA4000000000) != 0)
      {
        [v9 setStencilAttachmentPixelFormat:v59];
      }

      v185 = objc_opt_new();
      [v185 setDepthCompareFunction:WebGPU::convertToMTLCompare(*(v39 + 20))];
      v62 = *(v39 + 16) == 1 && *(v39 + 12) != 0;
      [v185 setDepthWriteEnabled:v62];
      v66 = [v185 frontFaceStencil];
      WebGPU::populateStencilOperation(v66, (v39 + 24), *(v39 + 56), *(v39 + 60));

      v67 = [v185 backFaceStencil];
      WebGPU::populateStencilOperation(v67, (v39 + 40), *(v39 + 56), *(v39 + 60));

      v56 = *(v39 + 68);
      v57 = *(v39 + 64);
      v55 = *(v39 + 72);
      v54 = *(a2 + 104) != 0;
      v48 = v185;
    }

    else
    {
      v181 = v38;
      v54 = 0;
      v48 = 0;
      v55 = 0.0;
      v56 = 0.0;
      v57 = 0.0;
    }

    if (!((*(a2 + 136) == 0) | v192 & 1) && !v54)
    {
      goto LABEL_188;
    }

    if ((v190 & 1) != 0 && ![v9 depthAttachmentPixelFormat])
    {
      goto LABEL_188;
    }

    v68 = *(a2 + 120);
    if (v68 != 1 && v68 != 4)
    {
      goto LABEL_188;
    }

    [v9 setRasterSampleCount:v173];
    [v9 setAlphaToCoverageEnabled:*(a2 + 128) != 0];
    if (*(a2 + 128))
    {
      if (v188)
      {
        goto LABEL_188;
      }

      v74 = *(a2 + 136);
      if (!v74 || !*(v74 + 40) || !WebGPU::hasAlphaChannel(*(*(v74 + 48) + 8)) || !WebGPU::Texture::supportsBlending(*(*(*(a2 + 136) + 48) + 8), a1) || *(a2 + 120) == 1)
      {
        goto LABEL_188;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v75 = *(a2 + 124);
      if (!((v75 == 0xFFFFFFFFLL) | v188 & 1))
      {
        [v9 setSampleMask:*(a2 + 124)];
      }

      v76 = WebGPU::errorValidatingInterstageShaderInterfaces<WGPUFragmentState const>(*(a1 + 184), *(a1 + 188), *(a2 + 88), v201, v183, v184, v215, *(a2 + 136));
      if (v76)
      {
        WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v76);

        goto LABEL_192;
      }

      v220[0] = 0;
      v77 = *(a2 + 64);
      if (v77)
      {
        if (!v199)
        {
          v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"Vertex shader has no stageIn parameters but buffer count was %zu and attribute count was %zu", v77, *(*(a2 + 72) + 16)];
          WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v113);

          goto LABEL_324;
        }

        v78 = v75;
        v79 = *(v20 + 16);
        *v208 = *v20;
        v209[0] = v79;
        v209[1] = *(v20 + 32);
        v210 = *(v20 + 48);
        v205 = 0;
        v80 = WebGPU::createVertexDescriptor(v208, (a1 + 80), v199, v220, &v205);
        v81 = v205;
        if (v81)
        {
          v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"vertex descriptor creation failed %@", v81];
          WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v82);

LABEL_324:
          v116 = v48;
          goto LABEL_325;
        }

        [v9 setVertexDescriptor:v80];

        v112 = v199;
      }

      else
      {
        v78 = v75;
        v112 = v199;
        if (!v199)
        {
          goto LABEL_219;
        }
      }

      v114 = *v112;
      if (v114 && *(v114 - 12) && !*(a2 + 64))
      {
        v115 = a4;
        v116 = v48;
        WebGPU::returnInvalidRenderPipeline(v115, a1, a3, &cfstr_VertexDescript_0.isa);
LABEL_325:
        if (v220[0])
        {
          WTF::fastFree((v220[0] - 4), v83);
        }

        goto LABEL_192;
      }

LABEL_219:
      v117 = *(a2 + 80);
      if (v117)
      {
        v118 = *(a1 + 252);
        if (!v118)
        {
          goto LABEL_239;
        }

        v119 = *(a1 + 240);
        while (1)
        {
          v120 = *v119++;
          if (v120 == 1)
          {
            break;
          }

          if (!--v118)
          {
            goto LABEL_239;
          }
        }

        if (*(v117 + 8) != 7 || *v117)
        {
          goto LABEL_239;
        }

        v202 = *(v117 + 16) != 0;
      }

      else
      {
        v202 = 0;
      }

      v121 = *(a2 + 88);
      v122 = v121 - 1;
      v123 = v121 - 3;
      v124 = v121 == 0x7FFFFFFF;
      v125 = 3;
      if (!v124)
      {
        v125 = 1;
      }

      if (v123 < 2)
      {
        v125 = 3;
      }

      if (v122 >= 2)
      {
        v126 = v125;
      }

      else
      {
        v126 = 2;
      }

      [v9 setInputPrimitiveTopology:v126];
      v127 = *(a2 + 88);
      if (v127 == 2)
      {
        v127 = 2;
      }

      else if (v127 != 4)
      {
        if (*(a2 + 92))
        {
LABEL_239:
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v128 = v208[0];
          WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
          v116 = v48;
          if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v128, v83);
          }

          goto LABEL_325;
        }

        v200 = 0;
        if (v127 > 2)
        {
          if (v127 != 3 && v127 != 0x7FFFFFFF)
          {
            goto LABEL_292;
          }

          v127 = 3;
        }

        else
        {
          if (v127 != 1)
          {
LABEL_292:
            v148 = *(a2 + 92);
            if (!v148 || v148 == 0x7FFFFFFF)
            {
              v191 = 0;
              v197 = 0;
            }

            else
            {
              v197 = v148 == 2;
              v191 = 1;
            }

            v149 = *(a2 + 100);
            v189 = *(a2 + 96) == 0;
            v150 = v149 == 1;
            if (v149 == 2)
            {
              v150 = 2;
            }

            v187 = v150;
            v151 = *(a1 + 8);
            v204 = 0;
            v152 = [v151 newRenderPipelineStateWithDescriptor:v9 error:&v204];
            v153 = v204;
            v154 = v153;
            if (v153 || !v152)
            {
              v156 = [v153 localizedDescription];
              WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v156);
            }

            else
            {
              v155 = *(a1 + 520);
              if (v155 == 0x800000000000000)
              {
                WebGPU::Device::loseTheDevice(a1, 0);
                WebGPU::returnInvalidRenderPipeline(a4, a1, a3, &cfstr_TooManyRenderP.isa);
              }

              else
              {
                if (v18)
                {
                  ++*(v18 + 2);
                  v203 = v18;
                  v157 = v155 + 1;
                  *(a1 + 520) = v157;
                  WebGPU::RenderPipeline::create(&v214, v152, v200, v197, v191, v189, v187, v202, v57, v56, v55, v48, &v203, v78, v9, v181, a2, v220, &v216, v157, v198, a1);
                  v158 = v214;
                  v214 = 0;
                  v208[0] = 0;
                  v208[1] = 0;
                  *a4 = v158;
                  a4[1] = 0;
                  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(v208, v159);
                  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(&v214, v160);
                  v162 = &v203;
                }

                else
                {
                  WebGPU::Device::generatePipelineLayout(a1, &v217, &v214);
                  if (*(v214 + 128))
                  {
                    v165 = *(a1 + 520) + 1;
                    *(a1 + 520) = v165;
                    WebGPU::RenderPipeline::create(&v203, v152, v200, v197, v191, v189, v187, v202, v57, v56, v55, v48, &v214, v78, v9, v181, a2, v220, &v216, v165, v198, a1);
                    v166 = v203;
                    v203 = 0;
                    v208[0] = 0;
                    v208[1] = 0;
                    *a4 = v166;
                    a4[1] = 0;
                    WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(v208, v167);
                    WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(&v203, v168);
                  }

                  else
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v170 = v208[0];
                    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
                    if (v170 && atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v170, v161);
                    }
                  }

                  v162 = &v214;
                }

                WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(v162, v161);
              }
            }

            goto LABEL_324;
          }

          v127 = 1;
        }
      }

      v200 = v127;
      goto LABEL_292;
    }

    __break(0xC471u);
LABEL_339:
    JUMPOUT(0x2256DCBB4);
  }

  if (*v36 || (v41 = v36[1], ++*v41, v208[0] = v41, WTF::RefPtr<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::operator=(&v215, v41), WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref(v208, v42), *(v215 + 40)) || !WebGPU::ShaderModule::ast(v215) || v215[9] != a1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v43 = v208[0];
    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v13);
    }

    goto LABEL_192;
  }

  if (!WebGPU::ShaderModule::ast(v215))
  {
    __break(0xC471u);
    goto LABEL_339;
  }

  v73 = v36[2];
  if (v73)
  {
    WTF::String::fromUTF8(&v214, v73, v71);
  }

  else
  {
    v84 = v215[16];
    if (v84)
    {
      atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
    }

    v214 = v84;
  }

  v85 = WebGPU::ShaderModule::shaderModuleState(v215, &v214, v72);
  if (v85)
  {
    v190 = *(v85 + 4);
  }

  else
  {
    v190 = 0;
  }

  v87 = WebGPU::ShaderModule::shaderModuleState(v215, &v214, v86);
  if (v87)
  {
    v188 = *(v87 + 3);
  }

  else
  {
    v188 = 0;
  }

  v88 = *(a1 + 8);
  v193 = v215;
  v89 = v219;
  v206 = 0;
  v173 = &v206;
  WebGPU::createLibrary(v88, v193, v18, &v214, v89, v208);
  v90 = v206;

  if ((v213 & 1) == 0)
  {
    v99 = v90;
    v100 = [v90 localizedDescription];
    v186 = v100;
    if (v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = @"Fragment library could not be created";
    }

    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, &v101->isa);
    v38 = 0;
    v183 = 0;
    v184 = 0;
    LOBYTE(v36) = 0;
    v180 = 0;
    goto LABEL_204;
  }

  v179 = v90;
  v48 = v208;
  if (!v18)
  {
    v109 = WebGPU::Device::addPipelineLayouts(a1, &v217, v209 + 1);
    if (v109)
    {
      v186 = v109;
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v109);
LABEL_202:
      v38 = 0;
      v183 = 0;
      v184 = 0;
      LOBYTE(v36) = 0;
      v180 = 0;
LABEL_203:
      v99 = v179;
      goto LABEL_204;
    }

    if ((v213 & 1) == 0)
    {
LABEL_156:
      __break(1u);
LABEL_188:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v102 = v208[0];
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v208[0]);
      if (v102 && atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v102, v103);
      }

      goto LABEL_192;
    }
  }

  v194 = v208[0];
  v91 = v219;
  v48 = WebGPU::createFunction(v194, &v208[1], v91);

  v186 = v48;
  if (!v48 || [v48 functionType] != 2)
  {
    goto LABEL_196;
  }

  v92 = v210;
  if (v210)
  {
    v92 = *(v210 - 12);
  }

  if ((v213 & 1) == 0)
  {
    goto LABEL_156;
  }

  v93 = v212;
  if (v212)
  {
    v93 = *(v212 - 12);
  }

  if (v92 != v93)
  {
LABEL_196:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v107 = v220[0];
    WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v220[0]);
    if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v107, v108);
    }

    goto LABEL_202;
  }

  [v9 setFragmentFunction:v48];
  v183 = WebGPU::ShaderModule::fragmentInputsForEntryPoint(v215, &v214, v94);
  v184 = WebGPU::ShaderModule::fragmentReturnTypeForEntryPoint(v215, &v214, v95);
  v180 = 1;
  v182 = v36[5];
  if (!v182)
  {
    v38 = 0;
    LOBYTE(v36) = 0;
    goto LABEL_203;
  }

  v195 = 0;
  v177 = 0;
  v96 = 0;
  v97 = 32 * v182;
  v98 = (v36[6] + 16);
  do
  {
    if (!*(v98 - 2))
    {
      goto LABEL_246;
    }

    v174 = v97;
    v176 = v96;
    if (!v184)
    {
      goto LABEL_253;
    }

    v130 = WTF::HashMap<unsigned int,MTLDataType,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<MTLDataType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::find(*v184, v96);
    v131 = *v184;
    if (*v184)
    {
      v131 += 4 * *(v131 - 1);
    }

    if (v131 == v130)
    {
LABEL_253:
      v175 = 0;
    }

    else
    {
      v175 = *(v130 + 8);
    }

    v132 = [v9 colorAttachments];
    v178 = [v132 objectAtIndexedSubscript:v176];

    v133 = *(v98 - 2);
    if ((v133 - 38) < 6 || !WebGPU::Texture::isRenderableFormat(v133, a1))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v146 = v220[0];
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v220[0]);
      if (v146 && atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v146, v147);
      }

      goto LABEL_332;
    }

    v134 = *(v98 - 2);
    v135 = WebGPU::Texture::renderTargetPixelByteAlignment(v134);
    v196 = WebGPU::Texture::renderTargetPixelByteCost(v134);
    if (v177 % v135)
    {
      v136 = v135 - v177 % v135;
    }

    else
    {
      v136 = 0;
    }

    [v178 setPixelFormat:WebGPU::Texture::pixelFormat(v134)];
    v137 = v98[2];
    if (v137 > 0xF || !v175 && v137)
    {
LABEL_328:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v171 = v220[0];
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v220[0]);
      if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v171, v172);
      }

      goto LABEL_331;
    }

    [v178 setWriteMask:__rbit32(v137) >> 28];
    if (!*v98)
    {
      [v178 setBlendingEnabled:0];
LABEL_280:
      LOBYTE(v129) = 0;
      goto LABEL_244;
    }

    if (!WebGPU::Texture::supportsBlending(*(v98 - 2), a1))
    {
      goto LABEL_328;
    }

    [v178 setBlendingEnabled:1];
    v138 = *v98;
    v139 = *(*v98 + 12);
    if ((v139 - 3) <= 1 && (v138[4] != 1 || v138[5] != 1))
    {
      goto LABEL_328;
    }

    if ((*v138 - 3) <= 1 && (v138[1] != 1 || v138[2] != 1))
    {
      goto LABEL_328;
    }

    v140 = (v139 - 1);
    if (v140 < 4)
    {
      v141 = v140 + 1;
    }

    else
    {
      v141 = 0;
    }

    [v178 setAlphaBlendOperation:v141];
    [v178 setSourceAlphaBlendFactor:WebGPU::blendFactor(v138[4])];
    [v178 setDestinationAlphaBlendFactor:WebGPU::blendFactor(v138[5])];
    v142 = (*v138 - 1);
    if (v142 < 4)
    {
      v143 = v142 + 1;
    }

    else
    {
      v143 = 0;
    }

    [v178 setRgbBlendOperation:v143];
    [v178 setSourceRGBBlendFactor:WebGPU::blendFactor(v138[1])];
    [v178 setDestinationRGBBlendFactor:WebGPU::blendFactor(v138[2])];
    v144 = v138[1];
    if (v144 <= 0xA && ((1 << v144) & 0x430) != 0)
    {
      LOBYTE(v129) = 1;
    }

    else
    {
      v145 = v138[2];
      if (v145 >= 0xB)
      {
        goto LABEL_280;
      }

      v129 = 0x430u >> v145;
    }

LABEL_244:
    if (!WebGPU::textureFormatAllowedForRetunType(*(v98 - 2), v175, v129 & 1))
    {
      v169 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline creation - color target pixel format(%lu) for location(%zu) is incompatible with shader output data type of %zu", v176, objc_msgSend(v178, "pixelFormat"), v175];
      WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v169);

LABEL_331:
      v195 = 1;
LABEL_332:

      goto LABEL_333;
    }

    v177 += v196 + v136;

    v195 = 1;
    v96 = v176;
    v97 = v174;
LABEL_246:
    ++v96;
    v98 += 8;
    v97 -= 32;
  }

  while (v97);
  if (v177 <= *(a1 + 196))
  {
    v180 = 1;
    goto LABEL_334;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v163 = v220[0];
  WebGPU::returnInvalidRenderPipeline(a4, a1, a3, v220[0]);
  if (v163 && atomic_fetch_add_explicit(v163, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v163, v164);
  }

LABEL_333:
  v180 = 0;
LABEL_334:
  v38 = v182;
  v99 = v179;
  LOBYTE(v36) = v195;
LABEL_204:

  std::__optional_destruct_base<WebGPU::LibraryCreationResult,false>::~__optional_destruct_base[abi:sn200100](v208, v110);
  v111 = v214;
  v214 = 0;
  if (v111 && atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v111, v13);
  }

  if (v180)
  {
    goto LABEL_73;
  }

LABEL_192:
  v104 = v215;
  v215 = 0;
  if (v104)
  {
    if (*v104 == 1)
    {
      WebGPU::ShaderModule::~ShaderModule(v104, v13);
      bmalloc::api::tzoneFree(v105, v106);
    }

    else
    {
      --*v104;
    }
  }

LABEL_39:
  v24 = v216;
  if (v216)
  {
    v25 = *(v216 - 1);
    if (v25)
    {
      v26 = v216 + 2;
      do
      {
        if (*(v26 - 2) != -2 && *v26)
        {
          WTF::fastFree((*v26 - 16), v13);
        }

        v26 += 4;
        --v25;
      }

      while (v25);
    }

    WTF::fastFree((v24 - 4), v13);
  }

LABEL_47:
  v27 = v217;
  if (HIDWORD(v218))
  {
    v28 = 16 * HIDWORD(v218);
    do
    {
      v29 = *v27;
      if (*v27)
      {
        *v27 = 0;
        *(v27 + 2) = 0;
        WTF::fastFree(v29, v13);
      }

      v27 += 2;
      v28 -= 16;
    }

    while (v28);
    v27 = v217;
  }

  if (v27)
  {
    v217 = 0;
    LODWORD(v218) = 0;
    WTF::fastFree(v27, v13);
  }

  if (v18)
  {
    if (*(v18 + 2) == 1)
    {
      WebGPU::PipelineLayout::~PipelineLayout(v18, v13);
      bmalloc::api::tzoneFree(v30, v31);
    }

    else
    {
      --*(v18 + 2);
    }
  }

  v32 = v219;
  v219 = 0;
}

void sub_2256DCBD8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, WTF::StringImpl *a43)
{
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, a2);
  }

  std::__optional_destruct_base<WebGPU::LibraryCreationResult,false>::~__optional_destruct_base[abi:sn200100](&a43, v48);
  v50 = *(v46 - 176);
  *(v46 - 176) = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v49);
  }

  v51 = *(v46 - 168);
  *(v46 - 168) = 0;
  if (v51)
  {
    WTF::RefCounted<WebGPU::ShaderModule>::deref(v51, v49);
  }

  WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v46 - 160), v49);
  WTF::Vector<WTF::Vector<WGPUBindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v46 - 152, v52);
  if (v44)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::PipelineLayout>::deref(v44, v53);
  }

  WTF::RetainPtrArc<NSString>::~RetainPtrArc((v46 - 136));

  _Unwind_Resume(a1);
}

void WebGPU::returnInvalidRenderPipeline(WebGPU *a1, WebGPU::Device *a2, char a3, atomic_uint *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(a4, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v10, a4);
    if (atomic_fetch_add_explicit(a4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a4, v8);
    }
  }

  else
  {
    v10 = &stru_2838D6D18;
  }

  WebGPU::returnInvalidRenderPipeline(a1, a2, a3, v10);
  v9 = v10;
  v10 = 0;
}

void sub_2256DD1A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2256DD1C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::errorValidatingVertexStageIn(void *a1, void *a2)
{
  if (a1)
  {
    v21 = 0;
    v3 = *a1;
    if (*a1)
    {
      v4 = *(v3 - 1);
      v5 = &v3[2 * v4];
      if (*(v3 - 3))
      {
        if (!v4)
        {
          v8 = 0;
          v7 = *a1;
LABEL_16:
          v9 = &v3[2 * v8];
          if (v7 != v9)
          {
LABEL_19:
            while (1)
            {
              v10 = *v7;
              v20 = v10;
              if (v10 >= a2)
              {
                break;
              }

              if (v21)
              {
                if (v10 == -2)
                {
                  result = 372;
                  __break(0xC471u);
                  return result;
                }

                v11 = *(v21 - 8);
                v12 = 9 * ((v10 + ~(v10 << 15)) ^ ((v10 + ~(v10 << 15)) >> 10));
                v13 = v11 & (((v12 ^ (v12 >> 6)) + ~((v12 ^ (v12 >> 6)) << 11)) ^ (((v12 ^ (v12 >> 6)) + ~((v12 ^ (v12 >> 6)) << 11)) >> 16));
                v14 = *(v21 + 4 * v13);
                if (v14 == v10)
                {
LABEL_31:
                  a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shader location %u appears twice", v10];
                  goto LABEL_32;
                }

                v15 = 1;
                while (v14 != -1)
                {
                  v13 = (v13 + v15) & v11;
                  v14 = *(v21 + 4 * v13);
                  ++v15;
                  if (v14 == v10)
                  {
                    goto LABEL_31;
                  }
                }
              }

              WTF::HashTable<unsigned int,unsigned int,WTF::IdentityExtractor,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v21, &v20, v19);
              do
              {
                v7 += 2;
              }

              while (v7 != v5 && *v7 >= 0xFFFFFFFE);
              if (v7 == v9)
              {
                goto LABEL_37;
              }
            }

            a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shader location %u exceeds the maximum allowed value of %u", v10, a2];
LABEL_32:
            v16 = v21;
            if (!v21)
            {
              goto LABEL_34;
            }

LABEL_33:
            v17 = a1;
            WTF::fastFree((v16 - 16), a2);
            a1 = v17;
            goto LABEL_34;
          }

LABEL_37:
          a1 = 0;
          v16 = v21;
          if (!v21)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v6 = 8 * v4;
        v7 = *a1;
        while (*v7 >= 0xFFFFFFFE)
        {
          v7 += 2;
          v6 -= 8;
          if (!v6)
          {
            v7 = v5;
            break;
          }
        }

        if (v3)
        {
LABEL_10:
          v8 = *(v3 - 1);
          goto LABEL_16;
        }

LABEL_13:
        v9 = 0;
        if (v7)
        {
          goto LABEL_19;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v7 = v5;
    v5 = &v3[2 * v4];
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_34:

  return a1;
}

void sub_2256DD3F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    WTF::fastFree((a16 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

double WebGPU::returnInvalidRenderPipeline(WebGPU *this, WebGPU::Device *a2, char a3, NSString *a4)
{
  v8 = a4;
  if ((a3 & 1) == 0)
  {
    WebGPU::Device::generateAValidationError(a2, v8);
  }

  if (WebGPU::RenderPipeline::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPipeline::s_heapRef, v7);
  }

  else
  {
    NonCompact = WebGPU::RenderPipeline::operatorNewSlow(0);
  }

  v11 = NonCompact;
  *NonCompact = 0;
  *(NonCompact + 8) = 1;
  *(NonCompact + 16) = 0;
  while (1)
  {
    v12 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v13 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_13;
    }
  }

  v14 = 0;
  v15 = *a2;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x22AA683C0](v15);
  }

  ++*(v15 + 8);
  atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    WTF::Lock::unlockSlow(v15);
  }

LABEL_13:
  *(v11 + 24) = a2;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0xFFFFFFFF00000000;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 112) = 0;
  if (WebGPU::PipelineLayout::s_heapRef)
  {
    v17 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::PipelineLayout::s_heapRef, v10);
  }

  else
  {
    v17 = WebGPU::PipelineLayout::operatorNewSlow(0x88);
  }

  v18 = v17;
  WebGPU::PipelineLayout::PipelineLayout(v17, a2);
  *(v11 + 136) = v18;
  *(v11 + 144) = 0;
  *(v11 + 308) = 0;
  *(v11 + 312) = 0;
  *(v11 + 440) = 0;
  *(v11 + 448) = 0;
  *(v11 + 432) = 0;
  v19 = WTF::fastMalloc(0x90);
  *(v19 + 16) = -1;
  *(v19 + 24) = 0;
  *(v19 + 32) = -1;
  *(v19 + 40) = 0;
  *(v19 + 48) = -1;
  *(v19 + 56) = 0;
  *(v19 + 64) = -1;
  *(v19 + 72) = 0;
  *(v19 + 80) = -1;
  *(v19 + 88) = 0;
  *(v19 + 96) = -1;
  *(v19 + 104) = 0;
  *(v19 + 112) = -1;
  *(v19 + 120) = 0;
  *(v19 + 128) = -1;
  *(v19 + 136) = 0;
  result = 0.0;
  *v19 = xmmword_225881CF0;
  *(v11 + 448) = v19 + 16;
  *(v11 + 456) = 0;
  *(v11 + 464) = 0;
  *(v11 + 468) = 0;
  *this = v11;
  *(this + 1) = v8;
  return result;
}

void sub_2256DD5C0(_Unwind_Exception *a1)
{
  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v4);
  bmalloc::api::tzoneFree(WeakPtr, v6);

  _Unwind_Resume(a1);
}

WebGPU::ShaderModule **WTF::RefPtr<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::operator=(WebGPU::ShaderModule **result, WTF::StringImpl *a2)
{
  if (a2)
  {
    ++*a2;
  }

  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      WebGPU::ShaderModule::~ShaderModule(v2, a2);
      bmalloc::api::tzoneFree(v4, v5);
      return v3;
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

uint64_t WTF::HashMap<unsigned int,MTLDataType,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<MTLDataType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::find(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 == -2 || a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DD798);
    }

    v2 = *(result - 8);
    v3 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
    v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
    v5 = v2 & (v4 ^ HIWORD(v4));
    v6 = *(result + 16 * v5);
    if (v6 == a2)
    {
LABEL_8:
      result += 16 * v5;
    }

    else
    {
      v7 = 1;
      while (v6 != -1)
      {
        v5 = (v5 + v7) & v2;
        v6 = *(result + 16 * v5);
        ++v7;
        if (v6 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

uint64_t WebGPU::blendFactor(int a1)
{
  v1 = 11;
  if (a1 <= 5)
  {
    v7 = 3;
    v8 = 4;
    v9 = 5;
    if (a1 != 5)
    {
      v9 = 11;
    }

    if (a1 != 4)
    {
      v8 = v9;
    }

    if (a1 != 3)
    {
      v7 = v8;
    }

    if (a1 == 2)
    {
      v1 = 2;
    }

    if (a1 == 1)
    {
      v1 = 1;
    }

    if (!a1)
    {
      v1 = 0;
    }

    if (a1 <= 2)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 12;
    v3 = 1;
    if (a1 != 0x7FFFFFFF)
    {
      v3 = 11;
    }

    if (a1 != 12)
    {
      v2 = v3;
    }

    v4 = 9;
    v5 = 10;
    if (a1 != 10)
    {
      v5 = 11;
    }

    if (a1 != 9)
    {
      v4 = v5;
    }

    if (a1 <= 11)
    {
      v2 = v4;
    }

    if (a1 == 8)
    {
      v1 = 8;
    }

    if (a1 == 7)
    {
      v1 = 7;
    }

    if (a1 == 6)
    {
      v1 = 6;
    }

    if (a1 <= 8)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

BOOL WebGPU::textureFormatAllowedForRetunType(int a1, unint64_t a2, int a3)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (!a3 || (result = 0, a2 <= 0x24) && ((1 << a2) & 0x1100000040) != 0)
      {
        result = a2 == 6;
        switch(a1)
        {
          case 1:
          case 7:
          case 12:
            result = a2 - 3 < 4;
            break;
          case 3:
          case 5:
          case 13:
            result = a2 - 33 < 4;
            break;
          case 4:
          case 6:
          case 14:
            result = a2 - 29 < 4;
            break;
          case 8:
          case 17:
          case 29:
            result = a2 == 6 || (a2 & 0xFFFFFFFFFFFFFFFELL) == 4;
            break;
          case 10:
          case 15:
          case 30:
            result = a2 == 36 || (a2 & 0xFFFFFFFFFFFFFFFELL) == 34;
            break;
          case 11:
          case 16:
          case 31:
            result = a2 == 32 || (a2 & 0xFFFFFFFFFFFFFFFELL) == 30;
            break;
          case 18:
          case 19:
          case 23:
          case 24:
          case 26:
          case 34:
          case 35:
            return result;
          case 21:
          case 25:
          case 32:
          case 36:
            result = a2 == 36;
            break;
          case 22:
          case 33:
          case 37:
            result = a2 == 32;
            break;
          case 27:
            result = a2 - 5 < 2;
            break;
          default:
            result = 0;
            break;
        }
      }
    }
  }

  return result;
}

id WebGPU::errorValidatingDepthStencilState(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 38 >= 6)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = @"Color format passed to depth / stencil format";
    goto LABEL_34;
  }

  v2 = v1 - 39;
  v3 = *(a1 + 16);
  v4 = *(a1 + 12);
  v5 = v3 != 1 || v4 == 0;
  if ((!v5 || (*(a1 + 20) | 8) != 8) && v2 >= 5)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = @"depth-stencil state missing format";
LABEL_34:
    v8 = [v10 stringWithFormat:@"Invalid DepthStencilState: %@", v11];

    return v8;
  }

  v6 = *(a1 + 24);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v6, xmmword_225881E80)))) & 1) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(a1 + 40), xmmword_225881E80)))) & 1) == 0 || v1 <= 0x2B && ((1 << v1) & 0xA4000000000) != 0)
  {
    if (v2 > 4)
    {
LABEL_19:
      v8 = 0;

      return v8;
    }

    if (v3)
    {
      if (v4 | *(a1 + 48) | v6.i32[2])
      {
        v7 = *(a1 + 20) == 0;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_19;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = @"Depth compare must be provided";
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = @"depthWrite must be provided";
    }

    goto LABEL_34;
  }

  v12 = "undefined";
  if (v6.i32[0] > 4)
  {
    if (v6.i32[0] > 6)
    {
      switch(v6.i32[0])
      {
        case 7:
          v12 = "not-equal";
          break;
        case 8:
          v12 = "always";
          break;
        case 0x7FFFFFFF:
          goto LABEL_171;
      }
    }

    else if (v6.i32[0] == 5)
    {
      v12 = "greater-equal";
    }

    else
    {
      v12 = "equal";
    }
  }

  else if (v6.i32[0] > 2)
  {
    if (v6.i32[0] == 3)
    {
      v12 = "less-equal";
    }

    else
    {
      v12 = "greater";
    }
  }

  else if (v6.i32[0] == 1)
  {
    v12 = "never";
  }

  else if (v6.i32[0] == 2)
  {
    v12 = "less";
  }

  v13 = "keep";
  if (v6.i32[1] > 4)
  {
    if (v6.i32[1] > 6)
    {
      if (v6.i32[1] == 7)
      {
        v13 = "decrement-wrap";
      }

      else if (v6.i32[1] == 0x7FFFFFFF)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DE284);
      }
    }

    else if (v6.i32[1] == 5)
    {
      v13 = "decrement-clamp";
    }

    else
    {
      v13 = "increment-wrap";
    }
  }

  else if (v6.i32[1] > 2)
  {
    if (v6.i32[1] == 3)
    {
      v13 = "invert";
    }

    else
    {
      v13 = "increment-clamp";
    }
  }

  else if (v6.i32[1] == 1)
  {
    v13 = "zero";
  }

  else if (v6.i32[1] == 2)
  {
    v13 = "replace";
  }

  v14 = "keep";
  if (v6.i32[2] > 4)
  {
    if (v6.i32[2] > 6)
    {
      if (v6.i32[2] == 7)
      {
        v14 = "decrement-wrap";
      }

      else if (v6.i32[2] == 0x7FFFFFFF)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DE2A4);
      }
    }

    else if (v6.i32[2] == 5)
    {
      v14 = "decrement-clamp";
    }

    else
    {
      v14 = "increment-wrap";
    }
  }

  else if (v6.i32[2] > 2)
  {
    if (v6.i32[2] == 3)
    {
      v14 = "invert";
    }

    else
    {
      v14 = "increment-clamp";
    }
  }

  else if (v6.i32[2] == 1)
  {
    v14 = "zero";
  }

  else if (v6.i32[2] == 2)
  {
    v14 = "replace";
  }

  v15 = "keep";
  if (v6.i32[3] > 4)
  {
    if (v6.i32[3] > 6)
    {
      if (v6.i32[3] == 7)
      {
        v15 = "decrement-wrap";
      }

      else if (v6.i32[3] == 0x7FFFFFFF)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DE2C4);
      }
    }

    else if (v6.i32[3] == 5)
    {
      v15 = "decrement-clamp";
    }

    else
    {
      v15 = "increment-wrap";
    }
  }

  else if (v6.i32[3] > 2)
  {
    if (v6.i32[3] == 3)
    {
      v15 = "invert";
    }

    else
    {
      v15 = "increment-clamp";
    }
  }

  else if (v6.i32[3] == 1)
  {
    v15 = "zero";
  }

  else if (v6.i32[3] == 2)
  {
    v15 = "replace";
  }

  v16 = *(a1 + 40);
  v17 = "undefined";
  if (v16 > 4)
  {
    if (v16 > 6)
    {
      switch(v16)
      {
        case 7:
          v17 = "not-equal";
          break;
        case 8:
          v17 = "always";
          break;
        case 0x7FFFFFFF:
          __break(0xC471u);
          JUMPOUT(0x2256DE264);
      }
    }

    else if (v16 == 5)
    {
      v17 = "greater-equal";
    }

    else
    {
      v17 = "equal";
    }
  }

  else if (v16 > 2)
  {
    if (v16 == 3)
    {
      v17 = "less-equal";
    }

    else
    {
      v17 = "greater";
    }
  }

  else if (v16 == 1)
  {
    v17 = "never";
  }

  else if (v16 == 2)
  {
    v17 = "less";
  }

  v18 = *(a1 + 44);
  v19 = "keep";
  if (v18 > 4)
  {
    if (v18 > 6)
    {
      if (v18 == 7)
      {
        v19 = "decrement-wrap";
      }

      else if (v18 == 0x7FFFFFFF)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DE2E4);
      }
    }

    else if (v18 == 5)
    {
      v19 = "decrement-clamp";
    }

    else
    {
      v19 = "increment-wrap";
    }
  }

  else if (v18 > 2)
  {
    if (v18 == 3)
    {
      v19 = "invert";
    }

    else
    {
      v19 = "increment-clamp";
    }
  }

  else if (v18 == 1)
  {
    v19 = "zero";
  }

  else if (v18 == 2)
  {
    v19 = "replace";
  }

  v20 = *(a1 + 48);
  v21 = "keep";
  if (v20 > 4)
  {
    if (v20 > 6)
    {
      if (v20 == 7)
      {
        v21 = "decrement-wrap";
      }

      else if (v20 == 0x7FFFFFFF)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DE304);
      }
    }

    else if (v20 == 5)
    {
      v21 = "decrement-clamp";
    }

    else
    {
      v21 = "increment-wrap";
    }
  }

  else if (v20 > 2)
  {
    if (v20 == 3)
    {
      v21 = "invert";
    }

    else
    {
      v21 = "increment-clamp";
    }
  }

  else if (v20 == 1)
  {
    v21 = "zero";
  }

  else if (v20 == 2)
  {
    v21 = "replace";
  }

  v22 = *(a1 + 52);
  v23 = "keep";
  if (v22 <= 4)
  {
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = "invert";
      }

      else
      {
        v23 = "increment-clamp";
      }
    }

    else if (v22 == 1)
    {
      v23 = "zero";
    }

    else if (v22 == 2)
    {
      v23 = "replace";
    }

    goto LABEL_159;
  }

  if (v22 <= 6)
  {
    if (v22 == 5)
    {
      v23 = "decrement-clamp";
    }

    else
    {
      v23 = "increment-wrap";
    }

    goto LABEL_159;
  }

  if (v22 == 7)
  {
    v23 = "decrement-wrap";
    goto LABEL_159;
  }

  if (v22 == 0x7FFFFFFF)
  {
LABEL_171:
    __break(0xC471u);
    JUMPOUT(0x2256DE238);
  }

LABEL_159:
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing stencil format - stencilFront: compare = %s, failOp = %s, depthFailOp = %s, passOp = %s, stencilBack: compare = %s, failOp = %s, depthFailOp = %s, passOp = %s", v12, v13, v14, v15, v17, v19, v21, v23];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid DepthStencilState: %@", v24];

  v8 = v25;

  return v8;
}

uint64_t WebGPU::convertToMTLCompare(int a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        return a1 == 2;
      }

      return 7;
    }

    v2 = 4;
    if (a1 != 4)
    {
      v2 = 0;
    }

    if (a1 == 3)
    {
      return 3;
    }

    else
    {
      return v2;
    }
  }

  else if (a1 <= 6)
  {
    v3 = 2;
    if (a1 != 6)
    {
      v3 = 0;
    }

    if (a1 == 5)
    {
      return 6;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 8 && a1 != 0x7FFFFFFF)
      {
        return 0;
      }

      return 7;
    }

    return 5;
  }
}

void WebGPU::populateStencilOperation(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *a2;
  if (*a2 <= 4)
  {
    if (v8 <= 2)
    {
      if (v8)
      {
        v9 = v8 == 2;
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v10 = 4;
    if (v8 != 4)
    {
      v10 = 0;
    }

    if (v8 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v10;
    }
  }

  else if (v8 <= 6)
  {
    v11 = 2;
    if (v8 != 6)
    {
      v11 = 0;
    }

    if (v8 == 5)
    {
      v9 = 6;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    if (v8 != 7)
    {
      if (v8 != 8 && v8 != 0x7FFFFFFF)
      {
        v9 = 0;
        goto LABEL_22;
      }

LABEL_10:
      v9 = 7;
      goto LABEL_22;
    }

    v9 = 5;
  }

LABEL_22:
  v32 = v7;
  [v7 setStencilCompareFunction:v9];
  v12 = a2[1];
  v13 = 7;
  if (v12 != 7)
  {
    v13 = v12 == 0x7FFFFFFF;
  }

  v14 = 4;
  v15 = 6;
  if (v12 != 6)
  {
    v15 = 0;
  }

  if (v12 != 5)
  {
    v14 = v15;
  }

  if (v12 <= 6)
  {
    v13 = v14;
  }

  v16 = 5;
  v17 = 3;
  if (v12 != 4)
  {
    v17 = 0;
  }

  if (v12 != 3)
  {
    v16 = v17;
  }

  v18 = 1;
  v19 = 2;
  if (v12 != 2)
  {
    v19 = 0;
  }

  if (v12 != 1)
  {
    v18 = v19;
  }

  if (v12 <= 2)
  {
    v16 = v18;
  }

  if (v12 <= 4)
  {
    v20 = v16;
  }

  else
  {
    v20 = v13;
  }

  [v32 setStencilFailureOperation:v20];
  v21 = a2[2];
  v22 = 7;
  if (v21 != 7)
  {
    v22 = v21 == 0x7FFFFFFF;
  }

  v23 = 4;
  v24 = 6;
  if (v21 != 6)
  {
    v24 = 0;
  }

  if (v21 != 5)
  {
    v23 = v24;
  }

  if (v21 <= 6)
  {
    v22 = v23;
  }

  v25 = 5;
  v26 = 3;
  if (v21 != 4)
  {
    v26 = 0;
  }

  if (v21 != 3)
  {
    v25 = v26;
  }

  v27 = 1;
  v28 = 2;
  if (v21 != 2)
  {
    v28 = 0;
  }

  if (v21 != 1)
  {
    v27 = v28;
  }

  if (v21 <= 2)
  {
    v25 = v27;
  }

  if (v21 <= 4)
  {
    v29 = v25;
  }

  else
  {
    v29 = v22;
  }

  [v32 setDepthFailureOperation:v29];
  v30 = 0;
  v31 = a2[3];
  if (v31 > 4)
  {
    if (v31 <= 6)
    {
      if (v31 == 5)
      {
        v30 = 4;
      }

      else
      {
        v30 = 6;
      }

      goto LABEL_80;
    }

    if (v31 == 7)
    {
      v30 = 7;
      goto LABEL_80;
    }

    if (v31 != 0x7FFFFFFF)
    {
      goto LABEL_80;
    }

LABEL_76:
    v30 = 1;
    goto LABEL_80;
  }

  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v30 = 5;
    }

    else
    {
      v30 = 3;
    }

    goto LABEL_80;
  }

  if (v31 == 1)
  {
    goto LABEL_76;
  }

  if (v31 == 2)
  {
    v30 = 2;
  }

LABEL_80:
  [v32 setDepthStencilPassOperation:v30];
  [v32 setWriteMask:a4];
  [v32 setReadMask:a3];
}

uint64_t WebGPU::hasAlphaChannel(int a1)
{
  if (a1 > 43)
  {
    if (a1 <= 0x3F && (((1 << a1) & 0x3F00000000000) != 0 || ((1 << a1) & 0xF000000000000000) != 0 || ((1 << a1) & 0x300000000000000) != 0))
    {
      return 1;
    }

    else
    {
      v2 = a1 == 0x7FFFFFFF;
      result = 0;
      if (v2)
      {
        result = 1134;
        __break(0xC471u);
      }
    }
  }

  else
  {
    return (a1 - 18) < 9 || (a1 - 32) < 6;
  }

  return result;
}

__CFString *WebGPU::errorValidatingInterstageShaderInterfaces<WGPUFragmentState const>(uint64_t a1, MTLDataType a2, const WTF::StringImpl *a3, uint64_t *a4, int **a5, unsigned int **a6, WebGPU::ShaderModule *a7, uint64_t a8)
{
  if (!a4)
  {
    v20 = @"vertex shader has no outputs";
    goto LABEL_132;
  }

  v9 = a6;
  v10 = a4;
  v11 = a2;
  v12 = a1;
  v13 = a1;
  if (a3)
  {
    v14 = *a4;
    v68 = a5;
    if (*a4)
    {
      goto LABEL_4;
    }

LABEL_16:
    v16 = 0;
    LODWORD(v15) = 0;
    goto LABEL_17;
  }

  if (!a1)
  {
    v20 = @"maxVertexShaderOutputComponents is zero";
    goto LABEL_132;
  }

  v13 = a1 - 1;
  v14 = *a4;
  v68 = a5;
  if (!*a4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v15 = *(v14 - 4);
  v16 = v14 + 24 * v15;
  if (*(v14 - 12))
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    v17 = 24 * v15;
    v18 = v14;
    while (*v18 >= 0xFFFFFFFE)
    {
      v18 += 24;
      v17 -= 24;
      if (!v17)
      {
        v18 = v16;
        break;
      }
    }

    if (v14)
    {
      goto LABEL_11;
    }

LABEL_18:
    v19 = 0;
    if (!v18)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

LABEL_17:
  v18 = v16;
  v16 = v14 + 24 * v15;
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_11:
  v19 = v14 + 24 * *(v14 - 4);
  if (v18 == v19)
  {
    goto LABEL_33;
  }

LABEL_22:
  v67 = a8;
  v22 = v13;
  v25 = 0;
  do
  {
    if (*v18 >= v11)
    {
      v20 = @"location >= maxInterStageShaderVariables";
      goto LABEL_132;
    }

    v26 = WebGPU::componentsForDataType(*(v18 + 8), a2);
    do
    {
      v18 += 24;
    }

    while (v18 != v16 && *v18 >= 0xFFFFFFFE);
    v25 += v26;
  }

  while (v18 != v19);
  v27 = v25 > v22;
  v9 = a6;
  v12 = a1;
  v10 = a4;
  a8 = v67;
  if (v27)
  {
    v20 = @"vertexScalarComponents > maxVertexShaderOutputComponents";
    goto LABEL_132;
  }

LABEL_33:
  if (!a7)
  {
    goto LABEL_131;
  }

  if (a8 && *(a8 + 16))
  {
    strlen(*(a8 + 16));
    WTF::String::fromUTF8();
    v28 = v68;
  }

  else
  {
    v29 = *(a7 + 16);
    v28 = v68;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v71 = v29;
  }

  v30 = WebGPU::ShaderModule::shaderModuleState(a7, &v71, a3);
  if (!v30 || *v30 != 1)
  {
LABEL_44:
    v33 = WebGPU::ShaderModule::shaderModuleState(a7, &v71, v32);
    if (v33 && *(v33 + 1) == 1)
    {
      if (!v12)
      {
        v43 = 0;
        v20 = @"maxFragmentShaderInputComponents is less than zero due to sample index";
        goto LABEL_127;
      }

      v12 = (v12 - 1);
    }

    v35 = WebGPU::ShaderModule::shaderModuleState(a7, &v71, v34);
    if (v35 && *(v35 + 2) == 1)
    {
      if (!v12)
      {
        v43 = 0;
        v20 = @"maxFragmentShaderInputComponents is less than zero due to sample mask";
        goto LABEL_127;
      }

      v12 = (v12 - 1);
    }

    if (!v28)
    {
      goto LABEL_105;
    }

    v70 = 2;
    v36 = *v28;
    if (*v28)
    {
      v37 = *(v36 - 1);
      v38 = &v36[6 * v37];
      if (*(v36 - 3))
      {
        if (!v37)
        {
          v41 = 0;
          v40 = *v28;
          goto LABEL_69;
        }

        v39 = 24 * v37;
        v40 = *v28;
        while (*v40 >= 0xFFFFFFFE)
        {
          v40 += 6;
          v39 -= 24;
          if (!v39)
          {
            v40 = v38;
            break;
          }
        }

LABEL_62:
        if (!v36)
        {
          v42 = 0;
          goto LABEL_70;
        }

        v41 = *(v36 - 1);
LABEL_69:
        v42 = &v36[6 * v41];
LABEL_70:
        if (v40 != v42)
        {
          v69 = v12;
          v44 = *v10;
          if (!*v10)
          {
LABEL_101:
            v20 = @"data type between fragment inputs and vertex outputs do not match";
            v43 = 0;
            goto LABEL_127;
          }

          LODWORD(v45) = 0;
          v20 = @"interpolation attributes do not match";
          while (1)
          {
            v46 = *v40;
            if (*v40 == -2 || v46 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x2256DED2CLL);
            }

            v47 = *(v44 - 8);
            v48 = 9 * ((v46 + ~(v46 << 15)) ^ ((v46 + ~(v46 << 15)) >> 10));
            v49 = v47 & (((v48 ^ (v48 >> 6)) + ~((v48 ^ (v48 >> 6)) << 11)) ^ (((v48 ^ (v48 >> 6)) + ~((v48 ^ (v48 >> 6)) << 11)) >> 16));
            v50 = (v44 + 24 * v49);
            v51 = *v50;
            if (*v50 != v46)
            {
              v52 = 1;
              while (v51 != -1)
              {
                v49 = (v49 + v52) & v47;
                v50 = (v44 + 24 * v49);
                v51 = *v50;
                ++v52;
                if (*v50 == v46)
                {
                  goto LABEL_82;
                }
              }

              v50 = (v44 + 24 * *(v44 - 4));
            }

LABEL_82:
            if (v50 == (v44 + 24 * *(v44 - 4)))
            {
              goto LABEL_101;
            }

            v53 = *(v50 + 1);
            if (v53 != *(v40 + 1))
            {
              goto LABEL_101;
            }

            v54 = WebGPU::componentsForDataType(v53, v31);
            if (*(v40 + 18))
            {
              break;
            }

            if (*(v50 + 18) == 1)
            {
              v57 = *(v50 + 16);
              v56 = (v50 + 4);
              if (v57 != 2 || *(v56 + 1) != 0)
              {
                goto LABEL_104;
              }

              v55 = &v70;
              goto LABEL_97;
            }

            do
            {
LABEL_98:
              v40 += 6;
            }

            while (v40 != v38 && *v40 >= 0xFFFFFFFE);
            v45 = (v54 + v45);
            if (v40 == v42)
            {
              if (v45 <= v69)
              {
                goto LABEL_105;
              }

              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"fragmentScalarComponents(%u) > maxFragmentShaderInputComponents(%u)", v45, v69];
LABEL_104:
              v43 = 0;
              goto LABEL_127;
            }
          }

          v55 = (v40 + 4);
          if (*(v50 + 18))
          {
            v56 = (v50 + 4);
          }

          else
          {
            if (*(v40 + 16) != 2 || *(v40 + 17))
            {
              goto LABEL_104;
            }

            v56 = &v70;
          }

LABEL_97:
          if (*v55 != *v56)
          {
            goto LABEL_104;
          }

          goto LABEL_98;
        }

LABEL_105:
        if (!v9)
        {
LABEL_126:
          v20 = @"location >= maxInterStageShaderVariables";
          v43 = 1;
          goto LABEL_127;
        }

        v59 = *v9;
        if (*v9)
        {
          v60 = *(v59 - 1);
          v61 = &v59[4 * v60];
          if (*(v59 - 3))
          {
            if (!v60)
            {
              v64 = 0;
              v63 = *v9;
              goto LABEL_118;
            }

            v62 = 16 * v60;
            v63 = *v9;
            while (*v63 >= 0xFFFFFFFE)
            {
              v63 += 4;
              v62 -= 16;
              if (!v62)
              {
                v63 = v61;
                break;
              }
            }

LABEL_115:
            if (!v59)
            {
              goto LABEL_119;
            }

            v64 = *(v59 - 1);
LABEL_118:
            v59 += 4 * v64;
LABEL_119:
            if (v59 != v63)
            {
              v20 = @"location >= maxInterStageShaderVariables";
              do
              {
                v43 = *v63 < v11;
                if (*v63 >= v11)
                {
                  break;
                }

                do
                {
                  v63 += 4;
                }

                while (v63 != v61 && *v63 >= 0xFFFFFFFE);
              }

              while (v63 != v59);
              goto LABEL_127;
            }

            goto LABEL_126;
          }
        }

        else
        {
          v61 = 0;
          v60 = 0;
        }

        v63 = v61;
        v61 = &v59[4 * v60];
        goto LABEL_115;
      }
    }

    else
    {
      v38 = 0;
      LODWORD(v37) = 0;
    }

    v40 = v38;
    v38 = &v36[6 * v37];
    goto LABEL_62;
  }

  if (v12)
  {
    v12 = (v12 - 1);
    goto LABEL_44;
  }

  v43 = 0;
  v20 = @"maxFragmentShaderInputComponents is less than zero due to front facing";
LABEL_127:
  v65 = v71;
  v71 = 0;
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v31);
  }

  if (v43)
  {
LABEL_131:
    v20 = 0;
  }

LABEL_132:

  return v20;
}

void sub_2256DED50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

id WebGPU::createVertexDescriptor(uint64_t a1, unsigned int *a2, unsigned int **a3, uint64_t *a4, __CFString **a5)
{
  v10 = objc_opt_new();
  v11 = *(a1 + 40);
  v12 = a2[20];
  if (v11 > v12)
  {
    *a5 = [MEMORY[0x277CCACA8] stringWithFormat:@"vertexBuffer count(%zu) exceeds limit(%u)", *(a1 + 40), v12];
    v13 = v10;
    v10 = 0;
    goto LABEL_234;
  }

  v132 = a3;
  v133 = a5;
  v136 = 0;
  v14 = 0;
  if (!v11)
  {
LABEL_132:
    v92 = *v132;
    if (*v132)
    {
      v93 = *(v92 - 1);
      v94 = &v92[2 * v93];
      if (*(v92 - 3))
      {
        if (!v93)
        {
          goto LABEL_173;
        }

        v95 = 8 * v93;
        v96 = *v132;
        while (*v96 >= 0xFFFFFFFE)
        {
          v96 += 2;
          v95 -= 8;
          if (!v95)
          {
            v96 = v94;
            break;
          }
        }

LABEL_149:
        if (v92)
        {
          v105 = &v92[2 * *(v92 - 1)];
          if (v96 != v105)
          {
LABEL_159:
            while (1)
            {
              v107 = *v96;
              v108 = v96[1];
              if (!v136)
              {
                break;
              }

              if (v107 == -2)
              {
                __break(0xC471u);
                JUMPOUT(0x2256DFAB8);
              }

              if (v107 == -1)
              {
                __break(0xC471u);
                JUMPOUT(0x2256DFAD8);
              }

              v109 = *(v136 - 8);
              v110 = 9 * ((v107 + ~(v107 << 15)) ^ ((v107 + ~(v107 << 15)) >> 10));
              v111 = (v110 ^ (v110 >> 6)) + ~((v110 ^ (v110 >> 6)) << 11);
              v112 = v109 & (v111 ^ HIWORD(v111));
              v113 = *(v136 + 8 * v112);
              if (v113 != v107)
              {
                v114 = 1;
                while (v113 != -1)
                {
                  v112 = (v112 + v114) & v109;
                  v113 = *(v136 + 8 * v112);
                  ++v114;
                  if (v113 == v107)
                  {
                    goto LABEL_168;
                  }
                }

                v112 = *(v136 - 4);
              }

LABEL_168:
              if (v112 == *(v136 - 4))
              {
                break;
              }

              v115 = WebGPU::formatType(*(v136 + 8 * v112 + 4));
              if (v115 != WebGPU::formatType(v108))
              {
                v107 = *v96;
                break;
              }

              do
              {
                v96 += 2;
              }

              while (v96 != v94 && *v96 >= 0xFFFFFFFE);
              if (v96 == v105)
              {
                goto LABEL_173;
              }
            }

            v118 = WebGPU::vertexFormatSize(v108);
            v119 = *v132;
            if (!*v132)
            {
              goto LABEL_194;
            }

            if (v107 == -2)
            {
              __break(0xC471u);
              JUMPOUT(0x2256DFC20);
            }

            if (v107 == -1)
            {
LABEL_251:
              __break(0xC471u);
              JUMPOUT(0x2256DFA98);
            }

            v120 = *(v119 - 2);
            v121 = 9 * ((v107 + ~(v107 << 15)) ^ ((v107 + ~(v107 << 15)) >> 10));
            v122 = (v121 ^ (v121 >> 6)) + ~((v121 ^ (v121 >> 6)) << 11);
            v123 = v120 & (v122 ^ HIWORD(v122));
            v124 = v119[2 * v123];
            if (v124 != v107)
            {
              v125 = 1;
              while (v124 != -1)
              {
                v123 = (v123 + v125) & v120;
                v124 = v119[2 * v123];
                ++v125;
                if (v124 == v107)
                {
                  goto LABEL_193;
                }
              }

              v123 = *(v119 - 1);
            }

LABEL_193:
            if (v123 != *(v119 - 1))
            {
              v126 = v119[2 * v123 + 1];
            }

            else
            {
LABEL_194:
              v126 = 0;
            }

            v127 = v96[1];
            v128 = "UChar2";
            v98 = v133;
            switch(v127)
            {
              case 0u:
                goto LABEL_200;
              case 1u:
                break;
              case 2u:
                v128 = "UChar4";
                break;
              case 3u:
                v128 = "Char2";
                break;
              case 4u:
                v128 = "Char4";
                break;
              case 5u:
                v128 = "UChar2Normalized";
                break;
              case 6u:
                v128 = "UChar4Normalized";
                break;
              case 7u:
                v128 = "Char2Normalized";
                break;
              case 8u:
                v128 = "Char4Normalized";
                break;
              case 9u:
                v128 = "UShort2";
                break;
              case 0xAu:
                v128 = "UShort4";
                break;
              case 0xBu:
                v128 = "Short2";
                break;
              case 0xCu:
                v128 = "Short4";
                break;
              case 0xDu:
                v128 = "UShort2Normalized";
                break;
              case 0xEu:
                v128 = "UShort4Normalized";
                break;
              case 0xFu:
                v128 = "Short2Normalized";
                break;
              case 0x10u:
                v128 = "Short4Normalized";
                break;
              case 0x11u:
                v128 = "Half2";
                break;
              case 0x12u:
                v128 = "Half4";
                break;
              case 0x13u:
                v128 = "Float";
                break;
              case 0x14u:
                v128 = "Float2";
                break;
              case 0x15u:
                v128 = "Float3";
                break;
              case 0x16u:
                v128 = "Float4";
                break;
              case 0x17u:
                v128 = "UInt";
                break;
              case 0x18u:
                v128 = "UInt2";
                break;
              case 0x19u:
                v128 = "UInt3";
                break;
              case 0x1Au:
                v128 = "UInt4";
                break;
              case 0x1Bu:
                v128 = "Int";
                break;
              case 0x1Cu:
                v128 = "Int2";
                break;
              case 0x1Du:
                v128 = "Int3";
                break;
              case 0x1Eu:
                v128 = "Int4";
                break;
              case 0x1Fu:
                v128 = "UInt1010102Normalized";
                break;
              default:
                v98 = v133;
                if (v127 == 0x7FFFFFFF)
                {
LABEL_200:
                  v128 = "none";
                }

                break;
            }

            v106 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"!matchesFormat(attribute(%d), format(%s), size(%zu), otherFormat(%d)"), v107, v128, v118, v126;
LABEL_231:
            v116 = v106;
            goto LABEL_232;
          }
        }

        else
        {
          v105 = 0;
          if (v96)
          {
            goto LABEL_159;
          }
        }

LABEL_173:
        if (v14 > a2[24])
        {
          v116 = @"totalAttributeCount > limits.maxVertexAttributes";
          goto LABEL_187;
        }

        v13 = 0;
        v117 = v136;
        if (v136)
        {
          goto LABEL_233;
        }

        goto LABEL_234;
      }
    }

    else
    {
      v94 = 0;
      v93 = 0;
    }

    v96 = v94;
    v94 = &v92[2 * v93];
    goto LABEL_149;
  }

  v15 = 0;
  v16 = *(a1 + 48);
  v134 = v16 + 32 * v11;
  while (1)
  {
    v18 = *v16;
    if (*v16 != 0xFFFFFFFFLL)
    {
      if ((v18 & 3) != 0 || v18 > a2[25])
      {
        v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer.arrayStride(%llu) > limits.maxVertexBufferArrayStride(%u) || (buffer.arrayStride %llu)", v18, a2[25], v18];
        v98 = v133;
        goto LABEL_231;
      }

      v20 = *(v16 + 16);
      if (v20)
      {
        break;
      }
    }

LABEL_7:
    ++v15;
    v16 += 32;
    if (v16 == v134)
    {
      goto LABEL_132;
    }
  }

  if (HIDWORD(v20) || (v21 = __CFADD__(v14, v20), v14 += v20, v21))
  {
    __break(0xC471u);
    JUMPOUT(0x2256DFAE0);
  }

  if (v18 <= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = *v16;
  }

  v23 = *a4;
  if (*a4)
  {
    if (v15 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DFBA0);
    }

    if (v15 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DFBC0);
    }

    v24 = *(v23 - 8);
    v25 = 9 * ((~(v15 << 15) + v15) ^ ((~(v15 << 15) + v15) >> 10));
    v26 = (v25 ^ (v25 >> 6)) + ~((v25 ^ (v25 >> 6)) << 11);
    v27 = v24 & (v26 ^ HIWORD(v26));
    v28 = *(v23 + 32 * v27);
    if (v28 == v15)
    {
      goto LABEL_251;
    }

    v29 = 1;
    while (v28 != -1)
    {
      v27 = (v27 + v29) & v24;
      v28 = *(v23 + 32 * v27);
      ++v29;
      if (v28 == v15)
      {
        goto LABEL_251;
      }
    }
  }

  v30 = [v10 layouts];
  v31 = [v30 objectAtIndexedSubscript:v15];
  [v31 setStride:v22];

  v32 = *(v16 + 8);
  v33 = 1;
  if (v32 == 1)
  {
    v33 = 2;
  }

  if (*v16)
  {
    v34 = v32 == 2;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v36 = [v10 layouts];
  v37 = [v36 objectAtIndexedSubscript:v15];
  [v37 setStepFunction:v35];

  v38 = [v10 layouts];
  v39 = [v38 objectAtIndexedSubscript:v15];
  v40 = [v39 stepFunction];

  if (v40)
  {
    v130 = ~(v15 << 15);
    v41 = *(v16 + 16);
    if (v41)
    {
      goto LABEL_37;
    }

LABEL_111:
    v42 = 0;
LABEL_112:
    if (v15 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DFB00);
    }

    if (v15 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DFB20);
    }

    v77 = *v16;
    v78 = *(v16 + 8);
    v79 = *a4;
    if (!*a4)
    {
      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::RenderPipeline::BufferData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::RenderPipeline::BufferData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::RenderPipeline::BufferData,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::RenderPipeline::BufferData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a4, 8u);
      v79 = *a4;
    }

    v80 = *(v79 - 8);
    v81 = 9 * ((v130 + v15) ^ ((v130 + v15) >> 10));
    v82 = v80 & (((v81 ^ (v81 >> 6)) + ~((v81 ^ (v81 >> 6)) << 11)) ^ (((v81 ^ (v81 >> 6)) + ~((v81 ^ (v81 >> 6)) << 11)) >> 16));
    v83 = v79 + 32 * v82;
    v84 = *v83;
    if (*v83 != -1)
    {
      v85 = 0;
      v86 = 1;
      while (v84 != v15)
      {
        if (v84 == -2)
        {
          v85 = v83;
        }

        v82 = (v82 + v86) & v80;
        v83 = v79 + 32 * v82;
        v84 = *v83;
        ++v86;
        if (*v83 == -1)
        {
          if (v85)
          {
            *v85 = -1;
            *(v85 + 16) = 0;
            *(v85 + 24) = 0;
            *(v85 + 8) = 0;
            --*(*a4 - 16);
            v83 = v85;
          }

          goto LABEL_124;
        }
      }

      goto LABEL_7;
    }

LABEL_124:
    *v83 = v15;
    *(v83 + 8) = v77;
    *(v83 + 16) = v42;
    *(v83 + 24) = v78;
    v87 = *a4;
    if (*a4)
    {
      v88 = *(v87 - 16);
      v89 = *(v87 - 12) + 1;
      *(v87 - 12) = v89;
      v90 = (v88 + v89);
      v91 = *(v87 - 4);
      if (v91 <= 0x400)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v89 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v90 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v91 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
      {
LABEL_126:
        if (3 * v91 > 4 * v90)
        {
          goto LABEL_7;
        }

        if (!v91)
        {
          v17 = 8;
          goto LABEL_6;
        }

LABEL_5:
        v17 = v91 << (6 * v89 >= (2 * v91));
LABEL_6:
        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::RenderPipeline::BufferData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::RenderPipeline::BufferData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::RenderPipeline::BufferData,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::RenderPipeline::BufferData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a4, v17);
        goto LABEL_7;
      }
    }

    if (v91 > 2 * v90)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v75 = [v10 layouts];
  v76 = [v75 objectAtIndexedSubscript:v15];
  [v76 setStepRate:0];

  v130 = ~(v15 << 15);
  v41 = *(v16 + 16);
  if (!v41)
  {
    goto LABEL_111;
  }

LABEL_37:
  v42 = 0;
  v43 = *(v16 + 24);
  v131 = v43 + 24 * v41;
  while (1)
  {
    v44 = WebGPU::vertexFormatSize(*v43);
    v45 = *(v43 + 8);
    v46 = v45 + v44;
    if (__CFADD__(v45, v44))
    {
      v98 = v133;
      v116 = @"attribute.offset + formatSize > uint64::max()";
      goto LABEL_232;
    }

    if (v42 <= v46)
    {
      v42 = v45 + v44;
    }

    if (!*v16)
    {
      break;
    }

    if (v46 > *v16)
    {
      goto LABEL_186;
    }

LABEL_45:
    v47 = 4;
    if (v44 < 4)
    {
      v47 = v44;
    }

    if (v45 % v47)
    {
LABEL_186:
      v116 = @"attribute.offset + formatSize > buffer.arrayStride";
      goto LABEL_187;
    }

    v48 = *(v43 + 16);
    v49 = v136;
    if (v48 >= a2[24])
    {
      v97 = MEMORY[0x277CCACA8];
      if (!v136)
      {
        v98 = v133;
LABEL_155:
        v106 = [v97 stringWithFormat:@"shaderLocation(%u) >= limits.maxVertexAttributes(%u) || shaderLocations.contains(shaderLocation) %d", v48, a2[24], v49];
        goto LABEL_231;
      }

LABEL_140:
      v98 = v133;
      if (v48 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DFBE0);
      }

      if (v48 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DFC00);
      }

      v99 = *(v136 - 8);
      v100 = 9 * ((v48 + ~(v48 << 15)) ^ ((v48 + ~(v48 << 15)) >> 10));
      v101 = (v100 ^ (v100 >> 6)) + ~((v100 ^ (v100 >> 6)) << 11);
      v102 = v99 & (v101 ^ HIWORD(v101));
      v103 = *(v136 + 8 * v102);
      if (v103 == v48)
      {
LABEL_146:
        v49 = 1;
      }

      else
      {
        v104 = 1;
        while (v103 != -1)
        {
          v102 = (v102 + v104) & v99;
          v103 = *(v136 + 8 * v102);
          ++v104;
          if (v103 == v48)
          {
            goto LABEL_146;
          }
        }

        v49 = 0;
      }

      goto LABEL_155;
    }

    v50 = ~(v48 << 15);
    if (v136)
    {
      if (v48 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256DFB40);
      }

      v51 = *(v136 - 8);
      v52 = 9 * ((v48 + v50) ^ ((v48 + v50) >> 10));
      v53 = (v52 ^ (v52 >> 6)) + ~((v52 ^ (v52 >> 6)) << 11);
      v54 = v51 & (v53 ^ HIWORD(v53));
      v55 = *(v136 + 8 * v54);
      if (v55 == v48)
      {
LABEL_139:
        v97 = MEMORY[0x277CCACA8];
        goto LABEL_140;
      }

      v56 = 1;
      while (v55 != -1)
      {
        v54 = (v54 + v56) & v51;
        v55 = *(v136 + 8 * v54);
        ++v56;
        if (v55 == v48)
        {
          goto LABEL_139;
        }
      }
    }

    if (v48 == -2)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DFB60);
    }

    if (v48 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2256DFB80);
    }

    if (!v136)
    {
      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v136, 8u, 0);
      v49 = v136;
    }

    v57 = *(v49 - 8);
    v58 = 9 * ((v48 + v50) ^ ((v48 + v50) >> 10));
    v59 = (v58 ^ (v58 >> 6)) + ~((v58 ^ (v58 >> 6)) << 11);
    v60 = v57 & (v59 ^ HIWORD(v59));
    v61 = (v49 + 8 * v60);
    v62 = *v61;
    if (*v61 != -1)
    {
      v63 = 0;
      v64 = 1;
      while (v62 != v48)
      {
        if (v62 == -2)
        {
          v63 = v61;
        }

        v60 = (v60 + v64) & v57;
        v61 = (v49 + 8 * v60);
        v62 = *v61;
        ++v64;
        if (*v61 == -1)
        {
          if (v63)
          {
            *v63 = 0xFFFFFFFFLL;
            --*(v49 - 16);
            v61 = v63;
          }

          goto LABEL_68;
        }
      }

      goto LABEL_76;
    }

LABEL_68:
    v65 = *v43;
    *v61 = v48;
    v61[1] = v65;
    v66 = *(v49 - 16);
    v67 = *(v49 - 12) + 1;
    *(v49 - 12) = v67;
    v68 = (v66 + v67);
    v69 = *(v49 - 4);
    if (v69 > 0x400)
    {
      if (v69 <= 2 * v68)
      {
LABEL_72:
        v70 = v69 << (6 * v67 >= (2 * v69));
        if (v69)
        {
          v71 = v70;
        }

        else
        {
          v71 = 8;
        }

        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(&v136, v71, v61);
      }
    }

    else if (3 * v69 <= 4 * v68)
    {
      goto LABEL_72;
    }

LABEL_76:
    v72 = [v10 attributes];
    v73 = [v72 objectAtIndexedSubscript:v48];

    v74 = 1;
    switch(*v43)
    {
      case 0:
      case 0x13:
        goto LABEL_79;
      case 1:
        break;
      case 2:
        v74 = 3;
        break;
      case 3:
        v74 = 4;
        break;
      case 4:
        v74 = 6;
        break;
      case 5:
        v74 = 7;
        break;
      case 6:
        v74 = 9;
        break;
      case 7:
        v74 = 10;
        break;
      case 8:
        v74 = 12;
        break;
      case 9:
        v74 = 13;
        break;
      case 0xA:
        v74 = 15;
        break;
      case 0xB:
        v74 = 16;
        break;
      case 0xC:
        v74 = 18;
        break;
      case 0xD:
        v74 = 19;
        break;
      case 0xE:
        v74 = 21;
        break;
      case 0xF:
        v74 = 22;
        break;
      case 0x10:
        v74 = 24;
        break;
      case 0x11:
        v74 = 25;
        break;
      case 0x12:
        v74 = 27;
        break;
      case 0x14:
        v74 = 29;
        break;
      case 0x15:
        v74 = 30;
        break;
      case 0x16:
        v74 = 31;
        break;
      case 0x17:
        v74 = 36;
        break;
      case 0x18:
        v74 = 37;
        break;
      case 0x19:
        v74 = 38;
        break;
      case 0x1A:
        v74 = 39;
        break;
      case 0x1B:
        v74 = 32;
        break;
      case 0x1C:
        v74 = 33;
        break;
      case 0x1D:
        v74 = 34;
        break;
      case 0x1E:
        v74 = 35;
        break;
      case 0x1F:
        v74 = 41;
        break;
      default:
        if (*v43 == 0x7FFFFFFF)
        {
LABEL_79:
          v74 = 28;
        }

        break;
    }

    [v73 setFormat:v74];
    [v73 setBufferIndex:v15];
    [v73 setOffset:*(v43 + 8)];

    v43 += 24;
    if (v43 == v131)
    {
      goto LABEL_112;
    }
  }

  if (v46 <= a2[25])
  {
    goto LABEL_45;
  }

  v116 = @"attribute.offset + formatSize > limits.maxVertexBufferArrayStride";
LABEL_187:
  v98 = v133;
LABEL_232:
  *v98 = v116;
  v13 = v10;
  v10 = 0;
  v117 = v136;
  if (v136)
  {
LABEL_233:
    WTF::fastFree((v117 - 16), v9);
  }

LABEL_234:

  return v10;
}

void sub_2256DFC44(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    WTF::fastFree((a20 - 16), a2);
  }

  _Unwind_Resume(a1);
}

void WebGPU::RenderPipeline::create(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, void *a12, uint64_t *a13, int a14, void *a15, int a16, uint64_t a17, uint64_t *a18, int **a19, uint64_t a20, int a21, uint64_t a22)
{
  v26 = a2;
  v76 = a12;
  v75 = a15;
  v66 = v26;
  if (WebGPU::RenderPipeline::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderPipeline::s_heapRef, v27);
  }

  else
  {
    NonCompact = WebGPU::RenderPipeline::operatorNewSlow(0);
  }

  v29 = NonCompact;
  v30 = v26;
  v74 = v76;
  v73 = v75;
  *v29 = 0;
  *(v29 + 8) = 1;
  v77 = v30;
  *(v29 + 16) = v77;
  while (1)
  {
    v31 = *a22;
    if ((*a22 & 1) == 0)
    {
      break;
    }

    v32 = *a22;
    atomic_compare_exchange_strong_explicit(a22, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v32 == v31)
    {
      goto LABEL_11;
    }
  }

  v33 = 0;
  v34 = *a22;
  v35 = 1;
  atomic_compare_exchange_strong_explicit(*a22, &v33, 1u, memory_order_acquire, memory_order_acquire);
  if (v33)
  {
    MEMORY[0x22AA683C0](v34);
  }

  ++*(v34 + 8);
  atomic_compare_exchange_strong_explicit(v34, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != 1)
  {
    WTF::Lock::unlockSlow(v34);
  }

LABEL_11:
  *(v29 + 24) = a22;
  *(v29 + 32) = a3;
  *(v29 + 40) = a4;
  *(v29 + 48) = a5;
  *(v29 + 56) = a6;
  *(v29 + 64) = a7;
  *(v29 + 72) = a8;
  *(v29 + 80) = a9;
  *(v29 + 84) = a10;
  *(v29 + 88) = a11;
  *(v29 + 92) = a14;
  v36 = v73;
  *(v29 + 96) = v36;
  *(v29 + 104) = a16;
  v37 = v74;
  *(v29 + 112) = v37;
  if (v37)
  {
    v38 = *(a22 + 8);
    *(v29 + 120) = [v38 newDepthStencilStateWithDescriptor:{v37, v66}];
  }

  else
  {
    *(v29 + 120) = 0;
  }

  v39 = *a13;
  *a13 = 0;
  *(v29 + 136) = v39;
  *(v29 + 128) = 0;
  v40 = *a18;
  *a18 = 0;
  *(v29 + 128) = v40;
  *(v29 + 144) = 0;
  *(v29 + 152) = *a17;
  v41 = *(a17 + 16);
  v42 = *(a17 + 32);
  v43 = *(a17 + 64);
  *(v29 + 200) = *(a17 + 48);
  *(v29 + 216) = v43;
  *(v29 + 168) = v41;
  *(v29 + 184) = v42;
  v44 = *(a17 + 80);
  v45 = *(a17 + 96);
  v46 = *(a17 + 128);
  *(v29 + 264) = *(a17 + 112);
  *(v29 + 280) = v46;
  *(v29 + 232) = v44;
  *(v29 + 248) = v45;
  v47 = (v29 + 296);
  v48 = *(a17 + 104);
  if (v48)
  {
    *v47 = *v48;
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[4];
    *(v29 + 344) = v48[3];
    *(v29 + 360) = v51;
    *(v29 + 312) = v49;
    *(v29 + 328) = v50;
    v52 = v29 + 376;
    v53 = *(a17 + 136);
    if (v53)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v29 + 344) = 0u;
    *(v29 + 360) = 0u;
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
    *v47 = 0u;
    v52 = v29 + 376;
    v53 = *(a17 + 136);
    if (v53)
    {
LABEL_16:
      v54 = *v53;
      v55 = v53[1];
      v56 = v53[2];
      *(v52 + 48) = *(v53 + 6);
      *(v52 + 16) = v55;
      *(v52 + 32) = v56;
      *v52 = v54;
      v57 = *(a17 + 136);
      if (!v57)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  *(v52 + 48) = 0;
  *(v52 + 16) = 0u;
  *(v52 + 32) = 0u;
  *v52 = 0u;
  v57 = *(a17 + 136);
  if (!v57)
  {
LABEL_25:
    *(v29 + 432) = 0;
    *(v29 + 440) = 0;
    goto LABEL_26;
  }

LABEL_20:
  v58 = *(v57 + 40);
  if (!v58)
  {
    goto LABEL_25;
  }

  v59 = *(v57 + 48);
  *(v29 + 432) = 0;
  *(v29 + 440) = 0;
  *(v29 + 444) = v58;
  if (v58 >> 27)
  {
    __break(0xC471u);
    return;
  }

  v60 = 32 * v58;
  v61 = WTF::fastMalloc((32 * v58));
  *(v29 + 440) = v58;
  *(v29 + 432) = v61;
  do
  {
    v62 = *v59;
    v63 = v59[1];
    v59 += 2;
    *v61 = v62;
    v61[1] = v63;
    v61 += 2;
    v60 -= 32;
  }

  while (v60);
LABEL_26:
  WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(v29 + 448, a19);
  *(v29 + 456) = a20;
  *(v29 + 464) = a21;
  *(v29 + 468) = 0;
  if (*(a17 + 104))
  {
    *(v29 + 256) = v47;
  }

  if (*(v29 + 444))
  {
    *(v29 + 424) = *(v29 + 432);
  }

  if (*(a17 + 136))
  {
    *(v29 + 288) = v52;
  }

  v64 = *(a17 + 104);
  if (!v64 || !v64[15])
  {
    goto LABEL_43;
  }

  v65 = *(a17 + 100);
  if (v65 != 1)
  {
    if (v64[9] || v64[8] || v64[7])
    {
      goto LABEL_42;
    }

    if (v65 == 2)
    {
      goto LABEL_43;
    }
  }

  if (v64[13] || v64[12] || v64[11])
  {
LABEL_42:
    *(v29 + 468) = 1;
  }

LABEL_43:

  *a1 = v29;
}

void sub_2256E0204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, id a23)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v23, v25);

  bmalloc::api::tzoneFree(v23, v26);
  _Unwind_Resume(a1);
}

WebGPU::RenderPipeline *WebGPU::Device::createRenderPipelineAsync(atomic_ullong *a1, uint64_t a2, uint64_t *a3)
{
  WebGPU::Device::createRenderPipeline(a1, a2, 1, &v32);
  v5 = a1[55];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = 0;
  v7 = a1[54];
  atomic_compare_exchange_strong_explicit(v5, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v5);
  }

  if (*(v5 + 24))
  {
    ++*(v5 + 8);
    v8 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v11 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
LABEL_6:
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  WTF::Lock::unlockSlow(v5);
  if (!v7)
  {
LABEL_12:
    MEMORY[0x22AA68470](v29, v33);
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 1, &v32, v29);
    (*(*v12 + 8))(v12);
    v14 = v29[0];
    v29[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    goto LABEL_26;
  }

LABEL_7:
  while (1)
  {
    v9 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v10 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_19;
    }
  }

  v15 = 0;
  v16 = *a1;
  v17 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    MEMORY[0x22AA683C0](v16);
  }

  ++*(v16 + 8);
  atomic_compare_exchange_strong_explicit(v16, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    WTF::Lock::unlockSlow(v16);
  }

LABEL_19:
  v18 = v32;
  v19 = v33;
  v29[0] = a1;
  v29[1] = v32;
  v20 = *a3;
  *a3 = 0;
  v32 = 0;
  v33 = 0;
  v21 = WTF::fastMalloc(0x28);
  *v21 = &unk_2838D3530;
  v21[1] = a1;
  v21[2] = v18;
  v21[3] = v20;
  *v29 = 0u;
  v30 = 0u;
  v21[4] = v19;
  v31 = v21;
  WebGPU::Instance::scheduleWork(v7, &v31);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  do
  {
    v23 = v7[1];
    if ((v23 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v7[1], v22);
      goto LABEL_26;
    }

    v24 = v7[1];
    atomic_compare_exchange_strong_explicit(v7 + 1, &v24, v23 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v24 != v23);
  if (v23 == 3)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_26:

  result = v32;
  v32 = 0;
  if (result)
  {
    if (*(result + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(result, v25);
      return bmalloc::api::tzoneFree(v27, v28);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

void sub_2256E05B4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Instance,(WTF::DestructionThread)0>::deref((v8 + 8), a2);
  std::pair<WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>,NSString * {__strong}>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_2256E0628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  (*(*v15 + 8))(v15);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v17);
      std::pair<WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>,NSString * {__strong}>::~pair(&a15);
      _Unwind_Resume(a1);
    }
  }

  std::pair<WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>,NSString * {__strong}>::~pair(&a15);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::Device::createRenderPipelineAsync(WGPURenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0::~$_0(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v4)
  {
LABEL_6:
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      goto LABEL_7;
    }

    return a1;
  }

  if (*(v4 + 2) != 1)
  {
    --*(v4 + 2);
    goto LABEL_6;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v4, v2);
  bmalloc::api::tzoneFree(v11, v12);
  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    do
    {
LABEL_7:
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, v2);
        return a1;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    if (v6 == 3)
    {
      WebGPU::Device::~Device(v5, v2);
      bmalloc::api::tzoneFree(v8, v9);
    }
  }

  return a1;
}

void WebGPU::RenderPipeline::~RenderPipeline(WebGPU::RenderPipeline *this, void *a2)
{
  v3 = *(this + 56);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 2) != -2 && *v5)
        {
          WTF::fastFree((*v5 - 16), a2);
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 54) = 0;
    *(this + 110) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    if (*(v7 + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(v7);
      bmalloc::api::tzoneFree(v9, v10);
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    --*(v7 + 2);
  }

  v8 = *(this + 17);
  *(this + 17) = 0;
  if (!v8)
  {
LABEL_19:
    v11 = *(this + 16);
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*(v8 + 2) != 1)
  {
    --*(v8 + 2);
    goto LABEL_19;
  }

  WebGPU::PipelineLayout::~PipelineLayout(v8, a2);
  bmalloc::api::tzoneFree(v20, v21);
  v11 = *(this + 16);
  if (v11)
  {
LABEL_20:
    WTF::fastFree((v11 - 16), a2);
  }

LABEL_21:

  v13 = *(this + 3);
  *(this + 3) = 0;
  if (v13)
  {
    do
    {
      v14 = *v13;
      if ((*v13 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v13, v12);
        goto LABEL_27;
      }

      v15 = *v13;
      atomic_compare_exchange_strong_explicit(v13, &v15, v14 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v15 != v14);
    if (v14 == 3)
    {
      WebGPU::Device::~Device(v13, v12);
      bmalloc::api::tzoneFree(v16, v17);
    }
  }

LABEL_27:

  if (*(this + 2) == 1)
  {
    v19 = *this;
    if (*this)
    {
      *(v19 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v18);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

BOOL WebGPU::RenderPipeline::colorDepthStencilTargetsMatch(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 288))
  {
    v8 = *(a1 + 444);
    v9 = *(a3 + 12);
    if (v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = 0;
      v12 = 8;
      while (1)
      {
        if (v11 < *(a3 + 12))
        {
          v14 = *(*a3 + 8 * v11);
          if (v14)
          {
            break;
          }
        }

        if (v11 < *(a1 + 444) && *(*(a1 + 432) + v12))
        {
          return 0;
        }

LABEL_9:
        ++v11;
        v12 += 32;
        if (v10 == v11)
        {
          goto LABEL_24;
        }
      }

      v15 = *(v14 + 8);
      *(v14 + 8) = v15 + 1;
      if (v11 >= *(a1 + 444))
      {
        if (*(v14 + 40))
        {
          goto LABEL_19;
        }
      }

      else if (*(*(a1 + 432) + v12) != *(v14 + 40))
      {
LABEL_19:
        v13 = 0;
        if (v15)
        {
LABEL_8:
          *(v14 + 8) = v15;
          if (!v13)
          {
            return 0;
          }

          goto LABEL_9;
        }

        goto LABEL_20;
      }

      v13 = *(*(v14 + 96) + 40) == *(a1 + 272);
      if (v15)
      {
        goto LABEL_8;
      }

LABEL_20:
      WebGPU::TextureView::~TextureView(v14, a2);
      bmalloc::api::tzoneFree(v16, v17);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_9;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

LABEL_24:
  v19 = *(a1 + 256);
  v20 = a2[4];
  result = v20 == 0;
  if (v19)
  {
    if (v20)
    {
      v21 = *a4;
      if (*a4 && *(v21 + 40) == *(v19 + 8))
      {
        v22 = *(v21 + 96);
        if (!*(v22 + 104))
        {
          v22 = *a4;
        }

        v23 = *(v22 + 16);
        v24 = [v23 pixelFormat];

        v25 = *(*(a1 + 256) + 8);
        if ((v24 != 261 || v25 != 38) && (v24 != 260 || (v25 & 0xFFFFFFFD) != 0x28) && *(*(v21 + 96) + 40) == *(a1 + 272))
        {
          return 1;
        }
      }
    }

    else if (!*(v19 + 8))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL WebGPU::RenderPipeline::validateRenderBundle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  if (*(a2 + 40) && ([*(a1 + 112) isDepthWriteEnabled] & 1) != 0 || v4 && (*(a1 + 468) & 1) != 0 || *(a2 + 36) != *(a1 + 272))
  {
    return 0;
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    v6 = *(v5 + 40);
    v7 = *(a2 + 16);
    if (v6 <= v7)
    {
      v6 = *(a2 + 16);
    }

    if (v6)
    {
      v8 = 0;
      v9 = *(a1 + 444);
      v10 = 8;
      do
      {
        if (v8 >= v7)
        {
          v11 = 0;
          if (v8 >= v9)
          {
LABEL_11:
            if (v11)
            {
              return 0;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v11 = *(*(a2 + 24) + 4 * v8);
          if (v8 >= v9)
          {
            goto LABEL_11;
          }
        }

        if (*(*(a1 + 432) + v10) != v11)
        {
          return 0;
        }

LABEL_12:
        ++v8;
        v10 += 32;
      }

      while (v6 != v8);
    }

    v13 = *(a1 + 256);
    v14 = *(a2 + 32);
    if (v13)
    {
      return v14 == *(v13 + 8);
    }

    else
    {
      return v14 == 0;
    }
  }

  else
  {
    return !*(a2 + 16) && *(a2 + 32) == 0;
  }
}

uint64_t WebGPU::RenderPipeline::minimumBufferSizes(WebGPU::RenderPipeline *this, int a2)
{
  v2 = *(this + 56);
  if (!v2)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E0D88);
  }

  v3 = *(v2 - 8);
  v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
  v6 = v3 & (v5 ^ HIWORD(v5));
  v7 = *(v2 + 16 * v6);
  if (v7 != a2)
  {
    v8 = 1;
    while (v7 != -1)
    {
      v6 = (v6 + v8) & v3;
      v7 = *(v2 + 16 * v6);
      ++v8;
      if (v7 == a2)
      {
        goto LABEL_11;
      }
    }

    v6 = *(v2 - 4);
  }

LABEL_11:
  v10 = v2 + 16 * v6;
  if (v10 == v2 + 16 * *(v2 - 4))
  {
    return 0;
  }

  else
  {
    return v10 + 8;
  }
}

void WebGPU::RenderPipeline::recomputeLastStrideAsStride(WebGPU::RenderPipeline *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 18);
  if (v3)
  {
    ++*(v3 + 8);
    *a2 = v3;
    return;
  }

  v5 = [*(this + 12) copy];
  v71 = 0;
  v6 = *(this + 16);
  v66 = v5;
  if (!v6 || (v7 = *(v6 - 12), !v7))
  {
    v14 = 0;
    goto LABEL_45;
  }

  v8 = *(v6 - 12);
  v9 = *(v6 - 12);
  if (v7 == 1)
  {
    goto LABEL_8;
  }

  v10 = __clz(v7 - 1);
  if (!v10)
  {
    __break(1u);
    goto LABEL_94;
  }

  v8 = (1 << -v10);
  v9 = 1 << -v10;
  if (v7 <= 0x400)
  {
LABEL_8:
    if (3 * v8 > 4 * v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v8 <= 2 * v7)
  {
LABEL_9:
    v9 *= 2;
  }

LABEL_10:
  v11 = v7;
  v12 = v9;
  if (v9 > 0x400)
  {
    if (v12 * 0.416666667 > v11)
    {
      goto LABEL_12;
    }
  }

  else if (v12 * 0.604166667 > v11)
  {
LABEL_12:
    v13 = v5;
    goto LABEL_16;
  }

  v13 = v5;
  v9 *= 2;
LABEL_16:
  if (v9 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v9;
  }

  v16 = WTF::fastMalloc(((32 * v15) | 0x10));
  v14 = (v16 + 4);
  v17 = v16 + 6;
  v18 = v15;
  do
  {
    *(v17 - 2) = -1;
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0;
    v17 += 4;
    --v18;
  }

  while (v18);
  v71 = v16 + 4;
  v16[2] = v15 - 1;
  v16[3] = v15;
  *v16 = 0;
  v16[1] = v7;
  v19 = *(this + 16);
  if (!v19)
  {
    v21 = 0;
    v20 = 0;
    v5 = v13;
    goto LABEL_29;
  }

  v20 = *(v19 - 4);
  v21 = v19 + 32 * v20;
  v5 = v13;
  if (!*(v19 - 12))
  {
LABEL_29:
    v23 = v21;
    v21 = v19 + 32 * v20;
    goto LABEL_30;
  }

  if (!v20)
  {
    v24 = 0;
    v23 = *(this + 16);
    goto LABEL_35;
  }

  v22 = 32 * v20;
  v23 = *(this + 16);
  while (*v23 >= 0xFFFFFFFE)
  {
    v23 += 32;
    v22 -= 32;
    if (!v22)
    {
      v23 = v21;
      break;
    }
  }

LABEL_30:
  if (!v19)
  {
    goto LABEL_36;
  }

  v24 = *(v19 - 4);
LABEL_35:
  v19 += 32 * v24;
LABEL_36:
  while (v23 != v19)
  {
    v25 = 0;
    v26 = *v23 + ~(*v23 << 15);
    v27 = (9 * (v26 ^ (v26 >> 10))) ^ ((9 * (v26 ^ (v26 >> 10))) >> 6);
    v28 = (v27 + ~(v27 << 11)) ^ ((v27 + ~(v27 << 11)) >> 16);
    do
    {
      v29 = v28 & (v15 - 1);
      v28 = ++v25 + v29;
    }

    while (*(v14 + 32 * v29) != -1);
    v30 = (v14 + 32 * v29);
    v31 = *(v23 + 16);
    *v30 = *v23;
    v30[1] = v31;
    do
    {
      v23 += 32;
    }

    while (v23 != v21 && *v23 >= 0xFFFFFFFE);
  }

LABEL_45:
  v32 = [v5 vertexDescriptor];
  if (!v32)
  {
    goto LABEL_64;
  }

  if (!v14)
  {
    v34 = 0;
    v33 = 0;
    goto LABEL_54;
  }

  v33 = *(v14 - 4);
  v34 = (v14 + 32 * v33);
  if (!*(v14 - 12))
  {
LABEL_54:
    v36 = v34;
    v34 = (v14 + 32 * v33);
    goto LABEL_55;
  }

  if (!v33)
  {
    v37 = 0;
    v36 = v14;
    goto LABEL_59;
  }

  v35 = 32 * v33;
  v36 = v14;
  while (*v36 >= 0xFFFFFFFE)
  {
    v36 += 8;
    v35 -= 32;
    if (!v35)
    {
      v36 = v34;
      break;
    }
  }

LABEL_55:
  if (!v14)
  {
    v38 = 0;
    goto LABEL_63;
  }

  v37 = *(v14 - 4);
LABEL_59:
  v38 = (v14 + 32 * v37);
LABEL_63:
  while (v36 != v38)
  {
    v39 = *(v36 + 2);
    v40 = [v32 layouts];
    v41 = [v40 objectAtIndexedSubscript:*v36];
    [v41 setStride:v39];

    *(v36 + 1) = *(v36 + 2);
    do
    {
      v36 += 8;
    }

    while (v36 != v34 && *v36 >= 0xFFFFFFFE);
  }

LABEL_64:

  v42 = *(*(this + 3) + 8);
  if (v42)
  {
    v43 = v42;
    v70 = 0;
    v44 = [v43 newRenderPipelineStateWithDescriptor:v66 error:&v70];
    v45 = v70;

    if (!v44)
    {
      if (v45)
      {
        v65 = [v45 localizedDescription];
        WTFLogAlways();
      }

      *a2 = 0;

      if (!v14)
      {
        goto LABEL_90;
      }

LABEL_89:
      WTF::fastFree((v14 - 16), v56);
LABEL_90:

      return;
    }

    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(&v69, this + 56);
    v46 = *(this + 5);
    v47 = *(this + 6);
    v48 = *(this + 7);
    v49 = *(this + 8);
    v50 = *(this + 9);
    v51 = *(this + 14);
    v52 = *(this + 17);
    ++*(v52 + 2);
    v67 = v52;
    WebGPU::RenderPipeline::create(&v68, v44, *(this + 4), v46, v47, v48, v49, v50, *(this + 20), *(this + 21), *(this + 22), v51, &v67, *(this + 23), v66, *(this + 26), this + 152, &v71, &v69, *(this + 57), *(this + 116), *(this + 3));
    v54 = *(this + 18);
    *(this + 18) = v68;
    if (v54)
    {
      if (*(v54 + 2) == 1)
      {
        WebGPU::RenderPipeline::~RenderPipeline(v54, v53);
        bmalloc::api::tzoneFree(v57, v58);
        v55 = v67;
        if (!v67)
        {
          goto LABEL_78;
        }

LABEL_76:
        if (*(v55 + 2) == 1)
        {
          WebGPU::PipelineLayout::~PipelineLayout(v55, v53);
          bmalloc::api::tzoneFree(v63, v64);
          v59 = *(this + 18);
          if (!v59)
          {
LABEL_80:
            *a2 = v59;
            v60 = v69;
            if (v69)
            {
              v61 = *(v69 - 1);
              if (v61)
              {
                v62 = v69 + 2;
                do
                {
                  if (*(v62 - 2) != -2)
                  {
                    if (*v62)
                    {
                      WTF::fastFree((*v62 - 16), v53);
                    }
                  }

                  v62 += 4;
                  --v61;
                }

                while (v61);
              }

              WTF::fastFree((v60 - 4), v53);
            }

            v14 = v71;

            if (!v14)
            {
              goto LABEL_90;
            }

            goto LABEL_89;
          }

LABEL_79:
          ++*(v59 + 8);
          goto LABEL_80;
        }

        --*(v55 + 2);
LABEL_78:
        v59 = *(this + 18);
        if (!v59)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      --*(v54 + 2);
    }

    v55 = v67;
    if (!v67)
    {
      goto LABEL_78;
    }

    goto LABEL_76;
  }

LABEL_94:
  __break(0xC471u);
}

void sub_2256E1308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (v24)
  {
    WTF::fastFree((v24 - 16), v26);
  }

  _Unwind_Resume(a1);
}

WebGPU::RenderPipeline *wgpuRenderPipelineRelease(WebGPU::RenderPipeline *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::RenderPipeline::~RenderPipeline(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t wgpuRenderPipelineGetBindGroupLayout(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = a2;
  ++*(a1 + 8);
  v4 = *(a1 + 136);
  ++*(v4 + 2);
  v53 = v4;
  v5 = *(a1 + 24);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
  v9 = *v5;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*v5, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 == 1)
  {
LABEL_8:
    v52 = v5;
    if (!*(a1 + 16))
    {
      goto LABEL_42;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v9);
    v52 = v5;
    if (!*(a1 + 16))
    {
      goto LABEL_42;
    }
  }

  if (*(*(a1 + 136) + 128))
  {
    v11 = v53;
    if (*(v53 + 32) == 1 && *(v53 + 7) > v2)
    {
      v13 = WebGPU::PipelineLayout::bindGroupLayout(v53, v2);
      ++*(v13 + 8);
      goto LABEL_70;
    }

    if (*(v5 + 96) <= v2)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v14 = v54;
      v51 = v54;
      if ((*(v5 + 548) & 1) == 0)
      {
        v15 = *(v5 + 32) + 32 * *(v5 + 44);
        v16 = (v15 + 16);
        v17 = -32 * *(v5 + 44);
        while (v17)
        {
          v18 = *(v15 - 8);
          v15 -= 32;
          v16 -= 32;
          v17 += 32;
          if (!v18)
          {
            if ((*v16 & 1) == 0)
            {
              v51 = 0;
              *(v16 - 4) = 1;
              *(v16 - 1) = v14;
              *v16 = 1;
            }

            goto LABEL_23;
          }
        }

        v19 = *(v5 + 24);
        if (v19)
        {
          (*(*v19 + 16))(v19, 1, &v51);
          v20 = *(v5 + 24);
          *(v5 + 24) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

LABEL_23:
        v14 = v51;
      }

      v51 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }

      *(v11 + 128) = 0;
      if (*(v11 + 32) == 1 && *(v11 + 6))
      {
        v21 = *(v11 + 7);
        v22 = *(v11 + 2);
        if (v21)
        {
          v23 = 8 * v21;
          do
          {
            v24 = *v22;
            *v22 = 0;
            if (v24)
            {
              if (*(v24 + 2) == 1)
              {
                WebGPU::BindGroupLayout::~BindGroupLayout(v24, a2);
                bmalloc::api::tzoneFree(v25, v26);
              }

              else
              {
                --*(v24 + 2);
              }
            }

            v22 = (v22 + 8);
            v23 -= 8;
          }

          while (v23);
          *(v11 + 7) = 0;
          v22 = *(v11 + 2);
        }

        if (v22)
        {
          *(v11 + 2) = 0;
          *(v11 + 6) = 0;
          WTF::fastFree(v22, a2);
        }
      }
    }

    if (WebGPU::BindGroupLayout::s_heapRef)
    {
      goto LABEL_68;
    }

    goto LABEL_85;
  }

LABEL_42:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v54;
  v51 = v54;
  if ((*(v5 + 548) & 1) == 0)
  {
    v28 = *(v5 + 32) + 32 * *(v5 + 44);
    v29 = (v28 + 16);
    v30 = -32 * *(v5 + 44);
    while (v30)
    {
      v31 = *(v28 - 8);
      v28 -= 32;
      v29 -= 32;
      v30 += 32;
      if (!v31)
      {
        if ((*v29 & 1) == 0)
        {
          v51 = 0;
          *(v29 - 4) = 1;
          *(v29 - 1) = v27;
          *v29 = 1;
        }

        goto LABEL_51;
      }
    }

    v32 = *(v5 + 24);
    if (v32)
    {
      (*(*v32 + 16))(v32, 1, &v51);
      v33 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }
    }

LABEL_51:
    v27 = v51;
  }

  v51 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, a2);
  }

  v11 = v53;
  *(v53 + 128) = 0;
  if (*(v11 + 32) == 1 && *(v11 + 6))
  {
    v34 = *(v11 + 7);
    v35 = *(v11 + 2);
    if (v34)
    {
      v36 = 8 * v34;
      do
      {
        v37 = *v35;
        *v35 = 0;
        if (v37)
        {
          if (*(v37 + 2) == 1)
          {
            WebGPU::BindGroupLayout::~BindGroupLayout(v37, a2);
            bmalloc::api::tzoneFree(v38, v39);
          }

          else
          {
            --*(v37 + 2);
          }
        }

        v35 = (v35 + 8);
        v36 -= 8;
      }

      while (v36);
      *(v11 + 7) = 0;
      v35 = *(v11 + 2);
    }

    if (v35)
    {
      *(v11 + 2) = 0;
      *(v11 + 6) = 0;
      WTF::fastFree(v35, a2);
    }
  }

  if (WebGPU::BindGroupLayout::s_heapRef)
  {
LABEL_68:
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, a2);
    goto LABEL_69;
  }

LABEL_85:
  NonCompact = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
LABEL_69:
  v13 = NonCompact;
  WebGPU::BindGroupLayout::BindGroupLayout(NonCompact, v5);
LABEL_70:
  v52 = 0;
  do
  {
    v41 = *v5;
    if ((*v5 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, v12);
      if (!v11)
      {
        goto LABEL_76;
      }

      goto LABEL_79;
    }

    v42 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v42, v41 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v42 != v41);
  if (v41 == 3)
  {
    WebGPU::Device::~Device(v5, v12);
    bmalloc::api::tzoneFree(v43, v44);
  }

  if (!v11)
  {
LABEL_76:
    v45 = *(a1 + 8) - 1;
    if (*(a1 + 8) != 1)
    {
LABEL_77:
      *(a1 + 8) = v45;
      return v13;
    }

    goto LABEL_81;
  }

LABEL_79:
  if (*(v11 + 2) == 1)
  {
    WebGPU::PipelineLayout::~PipelineLayout(v11, v12);
    bmalloc::api::tzoneFree(v49, v50);
    v45 = *(a1 + 8) - 1;
    if (*(a1 + 8) != 1)
    {
      goto LABEL_77;
    }
  }

  else
  {
    --*(v11 + 2);
    v45 = *(a1 + 8) - 1;
    if (*(a1 + 8) != 1)
    {
      goto LABEL_77;
    }
  }

LABEL_81:
  WebGPU::RenderPipeline::~RenderPipeline(a1, v12);
  bmalloc::api::tzoneFree(v46, v47);
  return v13;
}

void sub_2256E18FC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, WebGPU::RenderPipeline *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(va1, a2);
  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

void sub_2256E1918(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebGPU::RenderPipeline *a10, WTF::StringImpl *a11, atomic_ullong *a12, WebGPU::PipelineLayout *a13)
{
  v14 = a11;
  a11 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a12, a2);
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(&a13, v15);
  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(&a10, v16);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuRenderPipelineSetLabel(WebGPU::RenderPipeline *a1, char *__s)
{
  ++*(a1 + 2);
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  result = v7;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v7, v3);
  }

  if (*(a1 + 2) == 1)
  {
    WebGPU::RenderPipeline::~RenderPipeline(a1, v3);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(a1 + 2);
  }

  return result;
}

void sub_2256E1A38(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl ***WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(WTF::StringImpl ***result, WTF::StringImpl *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 1);
    if (v4)
    {
      v5 = *result;
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 2), a2);
    return v3;
  }

  return result;
}

uint64_t std::__optional_destruct_base<WebGPU::LibraryCreationResult,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        v5 = 0;
        while (1)
        {
          v6 = v3 + 32 * v5;
          if (*v6 != -1)
          {
            break;
          }

LABEL_5:
          if (++v5 == v4)
          {
            goto LABEL_43;
          }
        }

        v7 = *(v6 + 24);
        if (v7 > 6)
        {
          if (*(v6 + 24) <= 8u)
          {
            if (v7 == 7)
            {
              v12 = *(v6 + 8);
              *(v6 + 8) = 0;
              if (v12)
              {
                v13 = *v12;
                if (v13)
                {
                  v14 = 24 * v13;
                  v15 = v12 + 24;
                  do
                  {
                    a2 = (v15 - 16);
                    if (*v15 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v26, a2);
                    }

                    *v15 = -1;
                    v15 += 24;
                    v14 -= 24;
                  }

                  while (v14);
                }

                goto LABEL_39;
              }
            }

            else
            {
              v12 = *(v6 + 8);
              *(v6 + 8) = 0;
              if (v12)
              {
                v19 = *v12;
                if (v19)
                {
                  v20 = 24 * v19;
                  v21 = v12 + 24;
                  do
                  {
                    a2 = (v21 - 16);
                    if (*v21 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v25, a2);
                    }

                    *v21 = -1;
                    v21 += 24;
                    v20 -= 24;
                  }

                  while (v20);
                }

                goto LABEL_39;
              }
            }
          }

          else if (v7 == 9)
          {
            v12 = *(v6 + 16);
            *(v6 + 16) = 0;
            if (v12)
            {
              v16 = *v12;
              if (v16)
              {
                v17 = 24 * v16;
                v18 = v12 + 24;
                do
                {
                  a2 = (v18 - 16);
                  if (*v18 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v24, a2);
                  }

                  *v18 = -1;
                  v18 += 24;
                  v17 -= 24;
                }

                while (v17);
              }

              goto LABEL_39;
            }
          }

          else if (v7 == 10)
          {
            v8 = *(v6 + 8);
            if (v8)
            {
              v9 = *(v8 - 4);
              if (v9)
              {
                v10 = v8 + 8;
                do
                {
                  if (*(v10 - 8) != -1)
                  {
                    mpark::detail::assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>>::~assignment(v10, a2);
                    v11 = *(v10 - 8);
                    *(v10 - 8) = 0;
                    if (v11)
                    {
                      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v11, a2);
                      }
                    }
                  }

                  v10 += 32;
                  --v9;
                }

                while (v9);
              }

              v12 = (v8 - 16);
LABEL_39:
              WTF::fastFree(v12, a2);
            }
          }
        }

        *(v6 + 24) = -1;
        v22 = *v6;
        *v6 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, a2);
        }

        goto LABEL_5;
      }

LABEL_43:
      WTF::fastFree((v3 - 16), a2);
    }

    WGSL::Reflection::EntryPointInformation::~EntryPointInformation((a1 + 8), a2);
  }

  return a1;
}

uint64_t mpark::detail::assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>>::~assignment(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  if (v3 > 6)
  {
    if (*(a1 + 16) <= 8u)
    {
      if (v3 == 7)
      {
        v8 = *a1;
        *a1 = 0;
        if (v8)
        {
          v9 = *v8;
          if (v9)
          {
            v10 = 24 * v9;
            v11 = v8 + 24;
            do
            {
              a2 = (v11 - 16);
              if (*v11 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, a2);
              }

              *v11 = -1;
              v11 += 24;
              v10 -= 24;
            }

            while (v10);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v8 = *a1;
        *a1 = 0;
        if (v8)
        {
          v15 = *v8;
          if (v15)
          {
            v16 = 24 * v15;
            v17 = v8 + 24;
            do
            {
              a2 = (v17 - 16);
              if (*v17 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, a2);
              }

              *v17 = -1;
              v17 += 24;
              v16 -= 24;
            }

            while (v16);
          }

          goto LABEL_33;
        }
      }
    }

    else if (v3 == 9)
    {
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v8)
      {
        v12 = *v8;
        if (v12)
        {
          v13 = 24 * v12;
          v14 = v8 + 24;
          do
          {
            a2 = (v14 - 16);
            if (*v14 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v21, a2);
            }

            *v14 = -1;
            v14 += 24;
            v13 -= 24;
          }

          while (v13);
        }

        goto LABEL_33;
      }
    }

    else if (v3 == 10)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = *(v4 - 1);
        if (v5)
        {
          v6 = v4 + 8;
          do
          {
            if (*(v6 - 1) != -1)
            {
              mpark::detail::assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>>::~assignment(v6);
              v7 = *(v6 - 1);
              *(v6 - 1) = 0;
              if (v7)
              {
                if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v7, a2);
                }
              }
            }

            v6 += 32;
            --v5;
          }

          while (v5);
        }

        v8 = (v4 - 16);
LABEL_33:
        WTF::fastFree(v8, a2);
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WebGPU::vertexFormatSize(int a1)
{
  result = 2;
  switch(a1)
  {
    case 0:
      goto LABEL_8;
    case 1:
    case 3:
    case 5:
    case 7:
      return result;
    case 2:
    case 4:
    case 6:
    case 8:
    case 9:
    case 11:
    case 13:
    case 15:
    case 17:
    case 19:
    case 23:
    case 27:
    case 31:
      result = 4;
      break;
    case 10:
    case 12:
    case 14:
    case 16:
    case 18:
    case 20:
    case 24:
    case 28:
      result = 8;
      break;
    case 21:
    case 25:
    case 29:
      result = 12;
      break;
    case 22:
    case 26:
    case 30:
      result = 16;
      break;
    default:
      if (a1 == 0x7FFFFFFF)
      {
LABEL_8:
        result = 0;
      }

      break;
  }

  return result;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebGPU::RenderPipeline::BufferData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebGPU::RenderPipeline::BufferData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebGPU::RenderPipeline::BufferData,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WebGPU::RenderPipeline::BufferData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    v7 = a2;
    result = WTF::fastMalloc(((32 * a2) | 0x10));
    v10 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    result = WTF::fastMalloc(((32 * a2) | 0x10));
    v10 = result + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v11 = result + 6;
  do
  {
    *(v11 - 2) = -1;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    v11 += 4;
    --v7;
  }

  while (v7);
LABEL_7:
  *a1 = v10;
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v13 = v4 + 32 * i;
      if (*v13 <= 0xFFFFFFFD)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = 9 * ((*v13 + ~(*v13 << 15)) ^ ((*v13 + ~(*v13 << 15)) >> 10));
        v18 = ((v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11)) ^ (((v17 ^ (v17 >> 6)) + ~((v17 ^ (v17 >> 6)) << 11)) >> 16);
        do
        {
          v19 = v18 & v15;
          v18 = ++v16 + v19;
        }

        while (*(v14 + 32 * v19) != -1);
        v20 = (v14 + 32 * v19);
        v21 = *(v13 + 16);
        *v20 = *v13;
        v20[1] = v21;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v9);
}

uint64_t WebGPU::formatType(uint64_t result)
{
  if (result > 0x1F)
  {
    goto LABEL_8;
  }

  if (((1 << result) & 0x807FE1E0) != 0)
  {
    return 3;
  }

  if (((1 << result) & 0x78001818) != 0)
  {
    return 1;
  }

  if (result)
  {
LABEL_8:
    if (result == 0x7FFFFFFF)
    {
      result = 541;
      __break(0xC471u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void *std::pair<WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>,NSString * {__strong}>::~pair(uint64_t a1)
{
  result = a1;
  v4 = *a1;
  *result = 0;
  if (v4)
  {
    if (*(v4 + 2) == 1)
    {
      v5 = result;
      WebGPU::RenderPipeline::~RenderPipeline(v4, v2);
      bmalloc::api::tzoneFree(v6, v7);
      return v5;
    }

    else
    {
      --*(v4 + 2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::HashTable(uint64_t result, int **a2)
{
  v2 = result;
  *result = 0;
  if (!*a2)
  {
    return v2;
  }

  v3 = *a2;
  v4 = *(*a2 - 3);
  if (!v4)
  {
    return v2;
  }

  v6 = *(v3 - 3);
  v7 = *(v3 - 3);
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  v8 = __clz(v4 - 1);
  if (v8)
  {
    v6 = (1 << -v8);
    v7 = 1 << -v8;
    if (v4 > 0x400)
    {
      if (v6 > 2 * v4)
      {
LABEL_8:
        v9 = v4;
        v10 = v7;
        if (v7 > 0x400)
        {
          if (v10 * 0.416666667 > v9)
          {
            goto LABEL_13;
          }
        }

        else if (v10 * 0.604166667 > v9)
        {
LABEL_13:
          if (v7 <= 8)
          {
            v11 = 8;
          }

          else
          {
            v11 = v7;
          }

          result = WTF::fastMalloc((16 * v11 + 16));
          v13 = (result + 40);
          v14 = v11 & 0xFFFFFFFE;
          do
          {
            *(v13 - 6) = -1;
            *(v13 - 2) = -1;
            *(v13 - 2) = 0;
            *v13 = 0;
            v13 += 4;
            v14 -= 2;
          }

          while (v14);
          v15 = v11 - (v11 & 0xFFFFFFFE);
          if (v15)
          {
            v16 = (((16 * v11) & 0xFFFFFFFE0) + result + 24);
            do
            {
              *(v16 - 2) = -1;
              *v16 = 0;
              v16 += 2;
              --v15;
            }

            while (v15);
          }

          *v2 = result + 16;
          *(result + 8) = v11 - 1;
          *(result + 12) = v11;
          *result = 0;
          *(result + 4) = v4;
          v17 = *a2;
          if (*a2)
          {
            v18 = *(v17 - 1);
            v19 = &v17[4 * v18];
            if (*(v17 - 3))
            {
              if (!v18)
              {
                v22 = 0;
                v21 = v17;
LABEL_37:
                v23 = &v17[4 * v22];
                if (v21 != v23)
                {
                  while (1)
                  {
LABEL_40:
                    v24 = *v2;
                    if (*v2)
                    {
                      v25 = *(v24 - 8);
                    }

                    else
                    {
                      v25 = 0;
                    }

                    v26 = 0;
                    v27 = *v21;
                    v28 = 9 * ((v27 + ~(v27 << 15)) ^ ((v27 + ~(v27 << 15)) >> 10));
                    v29 = ((v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11)) ^ (((v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11)) >> 16);
                    do
                    {
                      v30 = v29 & v25;
                      v29 = ++v26 + v30;
                    }

                    while (*(v24 + 16 * v30) != -1);
                    v31 = *(v21 + 1);
                    if (v31)
                    {
                      v32 = *(v31 - 12);
                      if (v32)
                      {
                        v33 = *(v31 - 12);
                        v34 = *(v31 - 12);
                        if (v32 == 1)
                        {
                          goto LABEL_50;
                        }

                        v35 = __clz(v32 - 1);
                        if (!v35)
                        {
                          goto LABEL_93;
                        }

                        v33 = (1 << -v35);
                        v34 = 1 << -v35;
                        if (v32 <= 0x400)
                        {
LABEL_50:
                          if (3 * v33 <= 4 * v32)
                          {
                            goto LABEL_51;
                          }
                        }

                        else if (v33 <= 2 * v32)
                        {
LABEL_51:
                          v34 *= 2;
                        }

                        v36 = v32;
                        v37 = v34;
                        if (v34 > 0x400)
                        {
                          if (v37 * 0.416666667 > v36)
                          {
                            goto LABEL_58;
                          }
                        }

                        else if (v37 * 0.604166667 > v36)
                        {
LABEL_58:
                          if (v34 <= 8)
                          {
                            v38 = 8;
                          }

                          else
                          {
                            v38 = v34;
                          }

                          result = WTF::fastMalloc((16 * v38 + 16));
                          v31 = result + 16;
                          v39 = (result + 40);
                          v40 = v38 & 0xFFFFFFFE;
                          do
                          {
                            *(v39 - 6) = -1;
                            *(v39 - 2) = -1;
                            *(v39 - 2) = 0;
                            *v39 = 0;
                            v39 += 4;
                            v40 -= 2;
                          }

                          while (v40);
                          v41 = v38 - (v38 & 0xFFFFFFFE);
                          if (v41)
                          {
                            v42 = (result + ((16 * v38) & 0xFFFFFFFE0) + 24);
                            do
                            {
                              *(v42 - 2) = -1;
                              *v42 = 0;
                              v42 += 2;
                              --v41;
                            }

                            while (v41);
                          }

                          v43 = v38 - 1;
                          *(result + 8) = v38 - 1;
                          *(result + 12) = v38;
                          *result = 0;
                          *(result + 4) = v32;
                          v44 = *(v21 + 1);
                          if (v44)
                          {
                            v45 = *(v44 - 1);
                            v46 = &v44[4 * v45];
                            if (*(v44 - 3))
                            {
                              if (v45)
                              {
                                v47 = 16 * v45;
                                v48 = *(v21 + 1);
                                while (*v48 >= 0xFFFFFFFE)
                                {
                                  v48 += 4;
                                  v47 -= 16;
                                  if (!v47)
                                  {
                                    v48 = v46;
                                    break;
                                  }
                                }

LABEL_76:
                                v49 = *(v44 - 1);
                              }

                              else
                              {
                                v49 = 0;
                                v48 = *(v21 + 1);
                              }

                              v44 += 4 * v49;
LABEL_86:
                              while (v48 != v44)
                              {
                                v50 = 0;
                                v51 = *v48 + ~(*v48 << 15);
                                v52 = (9 * (v51 ^ (v51 >> 10))) ^ ((9 * (v51 ^ (v51 >> 10))) >> 6);
                                v53 = (v52 + ~(v52 << 11)) ^ ((v52 + ~(v52 << 11)) >> 16);
                                do
                                {
                                  v54 = v53 & v43;
                                  v55 = *(v31 + 16 * (v53 & v43));
                                  v53 = ++v50 + (v53 & v43);
                                }

                                while (v55 != -1);
                                v56 = *v48;
                                v48 += 4;
                                for (*(v31 + 16 * v54) = v56; v48 != v46; v48 += 4)
                                {
                                  if (*v48 < 0xFFFFFFFE)
                                  {
                                    break;
                                  }
                                }
                              }

                              goto LABEL_87;
                            }
                          }

                          else
                          {
                            v46 = 0;
                            v45 = 0;
                          }

                          v48 = v46;
                          v46 = &v44[4 * v45];
                          if (v44)
                          {
                            goto LABEL_76;
                          }

                          goto LABEL_86;
                        }

                        v34 *= 2;
                        goto LABEL_58;
                      }

                      v31 = 0;
                    }

LABEL_87:
                    v57 = v24 + 16 * v30;
                    *v57 = v27;
                    v58 = *(v57 + 8);
                    *(v57 + 8) = v31;
                    if (v58)
                    {
                      result = WTF::fastFree((v58 - 16), v12);
                    }

                    do
                    {
                      v21 += 4;
                    }

                    while (v21 != v19 && *v21 >= 0xFFFFFFFE);
                    if (v21 == v23)
                    {
                      return v2;
                    }
                  }
                }

                return v2;
              }

              v20 = 16 * v18;
              v21 = v17;
              while (*v21 >= 0xFFFFFFFE)
              {
                v21 += 4;
                v20 -= 16;
                if (!v20)
                {
                  v21 = v19;
                  break;
                }
              }

              if (v17)
              {
LABEL_29:
                v22 = *(v17 - 1);
                goto LABEL_37;
              }

              goto LABEL_32;
            }
          }

          else
          {
            v19 = 0;
            v18 = 0;
          }

          v21 = v19;
          v19 = &v17[4 * v18];
          if (v17)
          {
            goto LABEL_29;
          }

LABEL_32:
          v23 = 0;
          if (v21)
          {
            goto LABEL_40;
          }

          return v2;
        }

        v7 *= 2;
        goto LABEL_13;
      }

LABEL_7:
      v7 *= 2;
      goto LABEL_8;
    }

LABEL_6:
    if (3 * v6 > 4 * v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_93:
  __break(1u);
  return result;
}

WebGPU::ShaderModule *WTF::RefCounted<WebGPU::ShaderModule>::deref(WebGPU::ShaderModule *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebGPU::ShaderModule::~ShaderModule(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,unsigned int &>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, unsigned int *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E2958);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v8 = *a2;
    if (!*a2)
    {
      v9 = 0;
      v10 = *a3;
      v11 = *(*a3 + 4);
      if (v11 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v12 = WTF::StringImpl::hashSlowCase(v10);
      goto LABEL_9;
    }
  }

  v9 = *(v8 - 8);
  v10 = *a3;
  v11 = *(*a3 + 4);
  if (v11 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = v11 >> 8;
LABEL_9:
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = (v8 + 16 * (v12 & v9));
    result = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 16 * v15);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v13)
      {
        result = 0;
        *v13 = 0;
        *(v13 + 1) = 0;
        --*(*a2 - 16);
        v16 = v13;
      }

      v20 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        result = *v16;
      }

      *v16 = v20;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      *(v16 + 1) = *a4;
      v21 = *a2;
      if (*a2)
      {
        v22 = *(v21 - 16);
        v23 = *(v21 - 12) + 1;
        *(v21 - 12) = v23;
        v24 = (v22 + v23);
        v25 = *(v21 - 4);
        if (v25 <= 0x400)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_26:
          if (3 * v25 > 4 * v24)
          {
LABEL_34:
            *a1 = v16;
            *(a1 + 8) = v21 + 16 * v25;
            *(a1 + 16) = 1;
            return result;
          }

          if (!v25)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v16 = result;
            v21 = *a2;
            if (!*a2)
            {
LABEL_29:
              v25 = 0;
              goto LABEL_34;
            }

LABEL_33:
            v25 = *(v21 - 4);
            goto LABEL_34;
          }

LABEL_32:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v25 << (6 * v23 >= (2 * v25)), v16);
          v16 = result;
          v21 = *a2;
          if (!*a2)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      if (v25 > 2 * v24)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    result = WTF::equal(result, *a3, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 4);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v16;
  *(a1 + 8) = v18 + 16 * v19;
  *(a1 + 16) = 0;
  *(v16 + 1) = *a4;
  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
            v17 = *(v14 + 4);
            if (v17 >= 0x100)
            {
              goto LABEL_14;
            }

LABEL_16:
            v18 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v16 = 0;
            v17 = *(v14 + 4);
            if (v17 < 0x100)
            {
              goto LABEL_16;
            }

LABEL_14:
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v18 & v16;
            v18 = ++v19 + v20;
          }

          while (*(v15 + 16 * v20));
          v21 = (v15 + 16 * v20);
          v22 = *v13;
          v23 = v13[1];
          *v13 = 0;
          *v21 = v22;
          v21[1] = v23;
          v24 = *v13;
          *v13 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v10);
          }

          if (v13 == a3)
          {
            v12 = v21;
          }

          goto LABEL_8;
        }

        *v13 = 0;
      }

LABEL_8:
      if (++v11 == v7)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_23:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

unint64_t WTF::Vector<WGPUBindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + (v6 << 7) <= a3)
  {
    v8 = *(a1 + 8);
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= a2)
    {
      v9 = a2;
    }

    if (!(v9 >> 25))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((v10 << 7));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = v6 << 7;
        v14 = v5;
        do
        {
          v15 = *v14;
          v16 = *(v14 + 1);
          v17 = *(v14 + 3);
          v11[2] = *(v14 + 2);
          v11[3] = v17;
          *v11 = v15;
          v11[1] = v16;
          v18 = *(v14 + 4);
          v19 = *(v14 + 5);
          v20 = *(v14 + 7);
          v11[6] = *(v14 + 6);
          v11[7] = v20;
          v11[4] = v18;
          v11[5] = v19;
          v11 += 8;
          v14 = (v14 + 128);
          v13 -= 128;
        }

        while (v13);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v12);
      }

      return a3;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x2256E2C90);
  }

  v22 = *(a1 + 8);
  if (v22 + (v22 >> 1) <= v22 + 1)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = v22 + (v22 >> 1);
  }

  if (v23 <= a2)
  {
    v23 = a2;
  }

  if (v23 >> 25)
  {
    goto LABEL_38;
  }

  v24 = a3 - v5;
  if (v23 <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = v23;
  }

  v26 = WTF::fastMalloc((v25 << 7));
  v28 = 0;
  *(a1 + 8) = v25;
  *a1 = v26;
  do
  {
    v29 = (v26 + v28);
    v30 = *(v5 + v28);
    v31 = *(v5 + v28 + 16);
    v32 = *(v5 + v28 + 48);
    v29[2] = *(v5 + v28 + 32);
    v29[3] = v32;
    *v29 = v30;
    v29[1] = v31;
    v33 = *(v5 + v28 + 64);
    v34 = *(v5 + v28 + 80);
    v35 = *(v5 + v28 + 112);
    v29[6] = *(v5 + v28 + 96);
    v29[7] = v35;
    v29[4] = v33;
    v29[5] = v34;
    v28 += 128;
  }

  while (v6 << 7 != v28);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v27);
  }

  return *a1 + v24;
}

uint64_t WebGPU::componentsForDataType(WebGPU *this, MTLDataType a2)
{
  v2 = this - 3;
  result = 1;
  switch(v2)
  {
    case 0uLL:
    case 0xDuLL:
    case 0x1AuLL:
    case 0x1EuLL:
    case 0x32uLL:
      return result;
    case 1uLL:
    case 0xEuLL:
    case 0x1BuLL:
    case 0x1FuLL:
    case 0x33uLL:
      result = 2;
      break;
    case 2uLL:
    case 0xFuLL:
    case 0x1CuLL:
    case 0x20uLL:
    case 0x34uLL:
      result = 3;
      break;
    case 3uLL:
    case 0x10uLL:
    case 0x1DuLL:
    case 0x21uLL:
    case 0x35uLL:
      result = 4;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebGPU::Device::createRenderPipelineAsync(WGPURenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_2838D3530;
  WebGPU::Device::createRenderPipelineAsync(WGPURenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0::~$_0((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Device::createRenderPipelineAsync(WGPURenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_2838D3530;
  WebGPU::Device::createRenderPipelineAsync(WGPURenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0::~$_0(a1 + 8);

  return WTF::fastFree(a1, v2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebGPU::Device::createRenderPipelineAsync(WGPURenderPipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>> &&,WTF::String &&)> &&)::$_0,void>::call(void *a1)
{
  if (*(a1[1] + 65))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1[2];
    if (*(v3 + 16))
    {
      v2 = *(*(v3 + 136) + 128) ^ 1u;
    }

    else
    {
      v2 = 1;
    }
  }

  MEMORY[0x22AA68470](&v7, a1[4]);
  v4 = a1[3];
  a1[3] = 0;
  (*(*v4 + 16))(v4, v2, a1 + 2, &v7);
  (*(*v4 + 8))(v4);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void sub_2256E2F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void WebGPU::Device::createSampler(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a2 || !*(a1 + 8))
  {
    if (WebGPU::Sampler::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Sampler::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::Sampler::operatorNewSlow(0);
    }

    v6 = NonCompact;
    WebGPU::Sampler::Sampler(NonCompact, a1);
LABEL_39:
    *a3 = v6;
    return;
  }

  v8 = *(a2 + 10);
  if (v8 < 0.0 || *(a2 + 11) < v8 || !*(a2 + 26) || *(a2 + 26) != 1 && (*(a2 + 7) != 1 || *(a2 + 8) != 1 || *(a2 + 9) != 1))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    if ((*(a1 + 548) & 1) == 0)
    {
      v34 = *(a1 + 32) + 32 * *(a1 + 44);
      v35 = (v34 + 16);
      v36 = -32 * *(a1 + 44);
      while (v36)
      {
        v37 = *(v34 - 8);
        v34 -= 32;
        v35 -= 32;
        v36 += 32;
        if (!v37)
        {
          if ((*v35 & 1) == 0)
          {
            v38 = v51;
            v51 = 0;
            *(v35 - 4) = 1;
            *(v35 - 1) = v38;
            *v35 = 1;
          }

          goto LABEL_33;
        }
      }

      v39 = *(a1 + 24);
      if (v39)
      {
        (*(*v39 + 16))(v39, 1, &v51);
        v40 = *(a1 + 24);
        *(a1 + 24) = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }
    }

LABEL_33:
    v32 = v51;
    v51 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    if (WebGPU::Sampler::s_heapRef)
    {
      v33 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Sampler::s_heapRef, v31);
    }

    else
    {
      v33 = WebGPU::Sampler::operatorNewSlow(0);
    }

    v6 = v33;
    WebGPU::Sampler::Sampler(v33, a1);
    goto LABEL_39;
  }

  WebGPU::createMetalDescriptorFromDescriptor(a2);
  v9 = v52 = 0;
  v49 = [v9 minFilter];
  v48 = [v9 magFilter];
  v47 = [v9 mipFilter];
  v46 = [v9 sAddressMode];
  v10 = [v9 tAddressMode];
  v11 = [v9 rAddressMode];
  v12 = [v9 normalizedCoordinates];
  v13 = [v9 borderColor];
  v14 = [v9 lodAverage];
  v15 = [v9 compareFunction];
  v16 = [v9 supportArgumentBuffers];
  if (v12)
  {
    v17 = 0x8000;
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 0x40000;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = 0x400000;
  }

  else
  {
    v19 = 0;
  }

  v20 = v49 & 3 | (4 * (v48 & 3)) & 0xF | (16 * (v47 & 3)) & 0x3F | ((v46 & 7) << 6) & 0x81FF | ((v10 & 7) << 9) & 0x8FFF | ((v11 & 7) << 12) | v17 | ((v13 & 3) << 16) | v18 | ((v15 & 7) << 19) | v19;

  LODWORD(v51) = v20;
  [v9 lodMinClamp];
  HIDWORD(v51) = v21;
  [v9 lodMaxClamp];
  LODWORD(v52) = v22;
  *(&v52 + 1) = [v9 maxAnisotropy];
  WTF::base64EncodeToString();

  if (WebGPU::Sampler::s_heapRef)
  {
    v24 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Sampler::s_heapRef, v23);
  }

  else
  {
    v24 = WebGPU::Sampler::operatorNewSlow(0);
  }

  v25 = v24;
  *v24 = 1;
  if (v50)
  {
    atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
  }

  *(v24 + 8) = v50;
  *(v24 + 16) = 1;
  *(v24 + 24) = *a2;
  v26 = a2[1];
  if (v26)
  {
    atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
  }

  *(v24 + 32) = v26;
  v27 = *(a2 + 1);
  v28 = *(a2 + 2);
  *(v24 + 70) = *(a2 + 46);
  *(v24 + 56) = v28;
  *(v24 + 40) = v27;
  while (1)
  {
    v29 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v30 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v30 == v29)
    {
      goto LABEL_52;
    }
  }

  v41 = 0;
  v42 = *a1;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    MEMORY[0x22AA683C0](v42);
  }

  ++*(v42 + 8);
  atomic_compare_exchange_strong_explicit(v42, &v43, 0, memory_order_release, memory_order_relaxed);
  if (v43 != 1)
  {
    WTF::Lock::unlockSlow(v42);
  }

LABEL_52:
  *(v25 + 80) = a1;
  *(v25 + 88) = 0;
  v44 = WebGPU::Sampler::samplerState(v25);
  objc_storeWeak((v25 + 88), v44);

  *a3 = v25;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v45);
  }
}

void sub_2256E3410(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15)
{
  v19 = *(v16 + 4);
  *(v16 + 4) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  std::optional<WTF::String>::~optional(v17, a2);
  if (*v16 == 1)
  {
    bmalloc::api::tzoneFree(v16, v20);
    if (a14)
    {
      if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a14, v21);
      }
    }

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x2256E3488);
}

id WebGPU::createMetalDescriptorFromDescriptor(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = 2;
  if (v4 == 1)
  {
    v5 = 3;
  }

  if (v4 == 2)
  {
    v5 = 0;
  }

  if (v4 == 0x7FFFFFFF)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  [v2 setSAddressMode:v6];
  v7 = *(a1 + 20);
  v8 = 2;
  if (v7 == 1)
  {
    v8 = 3;
  }

  if (v7 == 2)
  {
    v8 = 0;
  }

  if (v7 == 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [v3 setTAddressMode:v9];
  v10 = *(a1 + 24);
  v11 = 2;
  if (v10 == 1)
  {
    v11 = 3;
  }

  if (v10 == 2)
  {
    v11 = 0;
  }

  if (v10 == 0x7FFFFFFF)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [v3 setRAddressMode:v12];
  [v3 setMagFilter:*(a1 + 28) == 1];
  [v3 setMinFilter:*(a1 + 32) == 1];
  if (*(a1 + 36) == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v3 setMipFilter:v13];
  LODWORD(v14) = *(a1 + 40);
  [v3 setLodMinClamp:v14];
  LODWORD(v15) = *(a1 + 44);
  [v3 setLodMaxClamp:v15];
  v16 = 0;
  v17 = *(a1 + 48);
  if (v17 <= 4)
  {
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

      goto LABEL_42;
    }

    if (v17)
    {
      v16 = v17 == 2;
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  if (v17 <= 6)
  {
    if (v17 == 5)
    {
      v16 = 6;
    }

    else
    {
      v16 = 2;
    }

    goto LABEL_42;
  }

  if (v17 != 7)
  {
    if (v17 != 8 && v17 != 0x7FFFFFFF)
    {
      goto LABEL_42;
    }

LABEL_34:
    v16 = 7;
    goto LABEL_42;
  }

  v16 = 5;
LABEL_42:
  [v3 setCompareFunction:v16];
  [v3 setSupportArgumentBuffers:1];
  if (*(a1 + 52) >= 0x10u)
  {
    v18 = 16;
  }

  else
  {
    v18 = *(a1 + 52);
  }

  [v3 setMaxAnisotropy:v18];
  v19 = *(a1 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v23, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }
  }

  else
  {
    v23 = &stru_2838D6D18;
  }

  [v3 setLabel:v23];
  v21 = v23;
  v23 = 0;

  return v3;
}

void sub_2256E378C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v11;
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

id WebGPU::Sampler::samplerState(WebGPU::Sampler *this)
{
  if (*(this + 16) != 1)
  {
    v4 = 0;
    goto LABEL_237;
  }

  WeakRetained = objc_loadWeakRetained(this + 11);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(this + 11);
    goto LABEL_237;
  }

  v5 = 0;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_3, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    goto LABEL_243;
  }

  v6 = 0x28159C000uLL;
  if (!qword_28159C940)
  {
LABEL_7:
    v7 = WTF::fastMalloc(8);
    *v7 = 0;
    v9 = qword_28159C940;
    qword_28159C940 = v7;
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v10 - 4);
        if (v11)
        {
          v12 = (v10 + 8);
          do
          {
            if (*(v12 - 1) != -1)
            {
              objc_destroyWeak(v12);
              v13 = *(v12 - 1);
              *(v12 - 1) = 0;
              if (v13)
              {
                if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v13, v8);
                }
              }
            }

            v12 += 2;
            --v11;
          }

          while (v11);
        }

        WTF::fastFree((v10 - 16), v8);
      }

      WTF::fastFree(v9, v8);
    }

    v14 = WTF::fastMalloc(8);
    *v14 = 0;
    v16 = qword_28159C948;
    qword_28159C948 = v14;
    if (v16)
    {
      v17 = *v16;
      if (*v16)
      {
        v18 = *(v17 - 4);
        if (v18)
        {
          v19 = v17 + 8;
          do
          {
            if (*(v19 - 8) != -1)
            {
              v20 = *(v19 + 8);
              if (v20)
              {
                WTF::fastFree((v20 - 16), v15);
              }

              v21 = *v19;
              *v19 = 0;

              v22 = *(v19 - 8);
              *(v19 - 8) = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v15);
              }
            }

            v19 += 24;
            --v18;
          }

          while (v18);
        }

        WTF::fastFree((v17 - 16), v15);
      }

      WTF::fastFree(v16, v15);
    }

    v23 = WTF::fastMalloc(0x18);
    *v23 = 0;
    v23[1] = 0;
    v23[2] = 0;
    v25 = qword_28159C950;
    qword_28159C950 = v23;
    if (v25)
    {
      v26 = *(v25 + 1);
      while (v26)
      {
        v27 = v26;
        v26 = *(v26 + 2);
        v28 = *v27;
        *v27 = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v24);
        }

        WTF::fastFree(v27, v24);
      }

      if (*v25)
      {
        WTF::fastFree((*v25 - 16), v24);
      }

      WTF::fastFree(v25, v24);
    }

    goto LABEL_41;
  }

  while (1)
  {
LABEL_41:
    if ((*(this + 16) & 1) == 0)
    {
      goto LABEL_242;
    }

    v29 = *(this + 1);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v154 = v29;
    v30 = qword_28159C948;
    v31 = *qword_28159C948;
    if (!*qword_28159C948)
    {
LABEL_60:
      v37 = 0;
      v39 = *qword_28159C948;
      if (!*qword_28159C948)
      {
        goto LABEL_62;
      }

LABEL_61:
      v39 += 24 * *(v39 - 4);
      goto LABEL_62;
    }

    if (v29 == -1)
    {
      goto LABEL_251;
    }

    if (!v29)
    {
      __break(0xC471u);
      JUMPOUT(0x2256E4438);
    }

    v32 = *(v31 - 8);
    v33 = v29[4];
    v34 = v33 < 0x100 ? WTF::StringImpl::hashSlowCase(v29) : v33 >> 8;
    for (i = 0; ; v34 = i + v36)
    {
      v36 = v34 & v32;
      v37 = v31 + 24 * (v34 & v32);
      v38 = *v37;
      if (*v37 == -1)
      {
        goto LABEL_51;
      }

      if (!v38)
      {
        break;
      }

      if (WTF::equal(v38, v29, v3))
      {
        v6 = 0x28159C000uLL;
        v39 = *qword_28159C948;
        if (*qword_28159C948)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }

LABEL_51:
      ++i;
    }

    v6 = 0x28159C000uLL;
    if (!*v30)
    {
      goto LABEL_60;
    }

    v37 = *v30 + 24 * *(*v30 - 4);
    v39 = *qword_28159C948;
    if (*qword_28159C948)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v37 == v39)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v37 + 8);
      v153 = this;
      WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&location, (v37 + 16), &v153);
      WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::appendOrMoveToLast(&location, qword_28159C950, &v154);
      if (objc_storeWeak(this + 11, v4))
      {
        v41 = 0;
        goto LABEL_232;
      }
    }

    v42 = *(*(this + 10) + 8);
    v43 = v42;
    if (!v42)
    {
      goto LABEL_165;
    }

    v44 = [v42 maxArgumentBufferSamplerCount];
    if (v44 >= 0x800)
    {
      v45 = 2048;
    }

    else
    {
      v45 = v44;
    }

    v46 = qword_28159C940;
    v47 = *qword_28159C940;
    if (!*qword_28159C940)
    {
      goto LABEL_155;
    }

    v48 = *(v47 - 12);
    if (v48 < v45 >> 1)
    {
      goto LABEL_155;
    }

    v149 = v43;
    v49 = *(v47 - 4);
    if (v49)
    {
      break;
    }

LABEL_135:
    v86 = *(v47 - 4);
    if (6 * v48 >= v86 || v86 < 9)
    {
      goto LABEL_155;
    }

    if (v48 <= 1)
    {
      v88 = v48;
      v89 = 1;
      goto LABEL_144;
    }

    v90 = __clz(v48 - 1);
    if (v90)
    {
      v89 = (1 << -v90);
      v88 = v48;
      if (v48 > 0x400)
      {
        if (v89 > 2 * v48)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

LABEL_144:
      if (3 * v89 > 4 * v88)
      {
LABEL_146:
        v91 = v48;
        if (v89 > 0x400)
        {
          v92 = 0.416666667;
        }

        else
        {
          v92 = 0.604166667;
        }

        if (v89 * v92 <= v91)
        {
          LODWORD(v89) = 2 * v89;
        }

        if (v89 <= 8)
        {
          v93 = 8;
        }

        else
        {
          v93 = v89;
        }

        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::KeyValuePairKeyExtractor<WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,objc_object  {objcproto15MTLSamplerState}* {__strong},WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_object  {objcproto15MTLSamplerState}* {__strong}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(v46, v93);
        goto LABEL_155;
      }

LABEL_145:
      LODWORD(v89) = 2 * v89;
      goto LABEL_146;
    }

LABEL_242:
    __break(1u);
LABEL_243:
    MEMORY[0x22AA683C0](_MergedGlobals_3);
    v6 = 0x28159C000uLL;
    if (!qword_28159C940)
    {
      goto LABEL_7;
    }
  }

  v145 = qword_28159C940;
  v146 = v45;
  v50 = 0;
  do
  {
    --v49;
    v51 = (v47 + 16 * v49);
    if (*v51 + 1 >= 2)
    {
      v52 = objc_loadWeakRetained(v51 + 1);

      if (!v52)
      {
        v147 = qword_28159C950;
        v55 = *qword_28159C950;
        if (*qword_28159C950)
        {
          v56 = *(v55 - 8);
          v57 = *(*v51 + 4);
          if (v57 < 0x100)
          {
            v59 = WTF::StringImpl::hashSlowCase(*v51);
            v58 = v50;
          }

          else
          {
            v58 = v50;
            v59 = v57 >> 8;
          }

          for (j = 0; ; v59 = j + v61)
          {
            v61 = v59 & v56;
            v62 = *(v55 + 8 * v61);
            if (v62 != -1)
            {
              if (!v62)
              {
                v64 = *v147;
                v50 = v58;
                if (!*v147)
                {
                  goto LABEL_127;
                }

                v65 = *(v64 - 4);
                v63 = (v64 + 8 * v65);
                goto LABEL_91;
              }

              if (WTF::equal(*v62, *v51, v54))
              {
                break;
              }
            }

            ++j;
          }

          v63 = (v55 + 8 * v61);
          v64 = *v147;
          if (!*v147)
          {
            v66 = *v63;
            v50 = v58;
            if (!*v63)
            {
              goto LABEL_127;
            }

            goto LABEL_118;
          }

          v65 = *(v64 - 4);
          v50 = v58;
LABEL_91:
          if (v63 == (v64 + 8 * v65))
          {
            goto LABEL_127;
          }

          v66 = *v63;
          if (!*v63)
          {
            goto LABEL_127;
          }

          if (v66 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x2256E4458);
          }

          v67 = *(v64 - 8);
          v68 = *(*v66 + 16);
          v144 = v50;
          if (v68 < 0x100)
          {
            v69 = WTF::StringImpl::hashSlowCase(*v66);
          }

          else
          {
            v69 = v68 >> 8;
          }

          for (k = 0; ; v69 = k + v71)
          {
            v71 = v69 & v67;
            v72 = *(v64 + 8 * v71);
            if (v72 != -1)
            {
              if (!v72)
              {
                v74 = *v147;
                if (!*v147)
                {
                  v50 = v144;
                  goto LABEL_118;
                }

                v75 = *(v74 - 4);
                v73 = (v74 + 8 * v75);
                goto LABEL_108;
              }

              if (WTF::equal(*v72, *v66, v54))
              {
                break;
              }
            }

            ++k;
          }

          v73 = (v64 + 8 * v71);
          v74 = *v147;
          if (*v147)
          {
            v75 = *(v74 - 4);
LABEL_108:
            v50 = v144;
            v76 = (v74 + 8 * v75);
            goto LABEL_111;
          }

          v76 = 0;
          v50 = v144;
LABEL_111:
          if (v76 != v73)
          {
            *v73 = -1;
            v77 = vadd_s32(*(v74 - 16), 0xFFFFFFFF00000001);
            *(v74 - 16) = v77;
            v78 = *(v74 - 4);
            if (6 * v77.i32[1] < v78 && v78 >= 9)
            {
              WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(v147, v78 >> 1, 0);
            }
          }

LABEL_118:
          v80 = *(v66 + 8);
          v81 = *(v66 + 16);
          v82 = (v80 + 16);
          if (!v80)
          {
            v82 = v147 + 1;
          }

          *v82 = v81;
          if (v81)
          {
            v83 = (v81 + 8);
          }

          else
          {
            v83 = v147 + 2;
          }

          *v83 = v80;
          v84 = *v66;
          *v66 = 0;
          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v84, v53);
          }

          WTF::fastFree(v66, v53);
        }

LABEL_127:
        v85 = *v51;
        *v51 = -1;
        if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v85, v53);
        }

        objc_destroyWeak(v51 + 1);
        ++v50;
      }
    }
  }

  while (v49);
  v46 = v145;
  v47 = *v145;
  if (v50)
  {
    LODWORD(v48) = *(v47 - 12) - v50;
    *(v47 - 16) += v50;
    *(v47 - 12) = v48;
    v43 = v149;
    v6 = 0x28159C000;
    v45 = v146;
    goto LABEL_135;
  }

  v43 = v149;
  v6 = 0x28159C000uLL;
  v45 = v146;
  if (v47)
  {
    LODWORD(v48) = *(v47 - 12);
    goto LABEL_135;
  }

LABEL_155:
  v94 = **(v6 + 2368);
  if (v94)
  {
    v94 = *(v94 - 12);
  }

  if (v45 <= v94)
  {
LABEL_165:
    v41 = v4;
    v4 = 0;
    goto LABEL_231;
  }

  v150 = v43;
  v95 = WebGPU::createMetalDescriptorFromDescriptor(this + 24);
  v96 = [v43 newSamplerStateWithDescriptor:v95];

  if (!v96)
  {
    v41 = 0;
    v4 = 0;
    goto LABEL_231;
  }

  v99 = v154;
  if (v154 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E4478);
  }

  if (!v154)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E4498);
  }

  v100 = *(v6 + 2368);
  v101 = *v100;
  if (*v100 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::KeyValuePairKeyExtractor<WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,objc_object  {objcproto15MTLSamplerState}* {__strong},WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_object  {objcproto15MTLSamplerState}* {__strong}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(*(v6 + 2368), 8u), (v101 = *v100) != 0))
  {
    v102 = *(v101 - 8);
    v103 = *(v99 + 4);
    if (v103 >= 0x100)
    {
      goto LABEL_164;
    }

LABEL_168:
    v104 = WTF::StringImpl::hashSlowCase(v99);
  }

  else
  {
    v102 = 0;
    v103 = *(v99 + 4);
    if (v103 < 0x100)
    {
      goto LABEL_168;
    }

LABEL_164:
    v104 = v103 >> 8;
  }

  v105 = 0;
  v106 = 1;
  while (2)
  {
    v107 = v104 & v102;
    v108 = (v101 + 16 * (v104 & v102));
    v109 = *v108;
    if (*v108 == -1)
    {
      v105 = (v101 + 16 * v107);
LABEL_171:
      v104 = v106 + v107;
      ++v106;
      continue;
    }

    break;
  }

  if (v109)
  {
    if (WTF::equal(v109, v99, v98))
    {
      objc_storeWeak(v108 + 1, v96);
      goto LABEL_193;
    }

    goto LABEL_171;
  }

  if (v105)
  {
    *v105 = 0;
    v105[1] = 0;
    --*(*v100 - 16);
    v108 = v105;
  }

  if (v99)
  {
    atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
  }

  v110 = *v108;
  *v108 = v99;
  if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v110, v97);
  }

  v111 = objc_initWeak(&location, v96);
  objc_storeWeak(v108 + 1, v96);

  objc_destroyWeak(&location);
  v112 = *v100;
  if (*v100)
  {
    v113 = *(v112 - 12) + 1;
  }

  else
  {
    v113 = 1;
  }

  *(v112 - 12) = v113;
  v114 = (*(v112 - 16) + v113);
  v115 = *(v112 - 4);
  if (v115 > 0x400)
  {
    if (v115 <= 2 * v114)
    {
      goto LABEL_191;
    }
  }

  else if (3 * v115 <= 4 * v114)
  {
    if (!v115)
    {
      v116 = 8;
      goto LABEL_192;
    }

LABEL_191:
    v116 = v115 << (6 * v113 >= (2 * v115));
LABEL_192:
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::KeyValuePairKeyExtractor<WTF::WeakObjCPtrArc<objc_object  {objcproto15MTLSamplerState}* {__strong}>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,objc_object  {objcproto15MTLSamplerState}* {__strong},WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_object  {objcproto15MTLSamplerState}* {__strong}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(v100, v116);
  }

LABEL_193:
  v117 = qword_28159C948;
  v118 = v96;
  location = v118;
  v152 = 0;
  v121 = v154;
  if (v154 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E44B8);
  }

  if (!v154)
  {
LABEL_251:
    __break(0xC471u);
    JUMPOUT(0x2256E4418);
  }

  v4 = v118;
  v122 = *v117;
  if (*v117 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::Sampler::SamplerStateWithReferences,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::Sampler::SamplerStateWithReferences>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v117, 8u, 0), (v122 = *v117) != 0))
  {
    v123 = *(v122 - 8);
    v124 = *(v121 + 4);
    v148 = v117;
    if (v124 >= 0x100)
    {
      goto LABEL_198;
    }

LABEL_200:
    v125 = WTF::StringImpl::hashSlowCase(v121);
  }

  else
  {
    v123 = 0;
    v124 = *(v121 + 4);
    v148 = v117;
    if (v124 < 0x100)
    {
      goto LABEL_200;
    }

LABEL_198:
    v125 = v124 >> 8;
  }

  v126 = 0;
  v127 = 1;
  while (2)
  {
    v128 = v125 & v123;
    v129 = (v122 + 24 * (v125 & v123));
    v130 = *v129;
    if (*v129 == -1)
    {
      v126 = (v122 + 24 * v128);
LABEL_203:
      v125 = v127 + v128;
      ++v127;
      continue;
    }

    break;
  }

  if (v130)
  {
    if (WTF::equal(v130, v121, v120))
    {
      v131 = v4;
      goto LABEL_228;
    }

    goto LABEL_203;
  }

  if (v126)
  {
    v130 = 0;
    *v126 = 0;
    v126[1] = 0;
    v126[2] = 0;
    --*(*v148 - 16);
    v129 = v126;
  }

  if (v121)
  {
    atomic_fetch_add_explicit(v121, 2u, memory_order_relaxed);
    v130 = *v129;
  }

  *v129 = v121;
  if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v130, v119);
  }

  v132 = location;
  v133 = v152;
  location = 0;
  v152 = 0;
  v134 = v129[1];
  v129[1] = v132;

  v135 = v129[2];
  v129[2] = v133;
  if (v135)
  {
    WTF::fastFree((v135 - 16), v119);
  }

  v136 = *v148;
  if (*v148)
  {
    v137 = *(v136 - 12) + 1;
  }

  else
  {
    v137 = 1;
  }

  *(v136 - 12) = v137;
  v138 = (*(v136 - 16) + v137);
  v139 = *(v136 - 4);
  if (v139 > 0x400)
  {
    if (v139 <= 2 * v138)
    {
      goto LABEL_225;
    }
  }

  else if (3 * v139 <= 4 * v138)
  {
    if (!v139)
    {
      v140 = 8;
      goto LABEL_226;
    }

LABEL_225:
    v140 = v139 << (6 * v137 >= (2 * v139));
LABEL_226:
    v129 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::Sampler::SamplerStateWithReferences,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::Sampler::SamplerStateWithReferences>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v148, v140, v129);
  }

  v131 = 0;
LABEL_228:
  if (v152)
  {
    WTF::fastFree((v152 - 16), v119);
  }

  v153 = this;
  WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&location, v129 + 2, &v153);
  v43 = v150;
  WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::appendOrMoveToLast(&location, qword_28159C950, &v154);
  objc_storeWeak(this + 11, v4);
  v41 = 0;
LABEL_231:

LABEL_232:
  v141 = v154;
  if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v141, v40);
  }

  v142 = 1;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_3, &v142, 0, memory_order_release, memory_order_relaxed);
  if (v142 != 1)
  {
    WTF::Lock::unlockSlow(_MergedGlobals_3);
  }

LABEL_237:

  return v4;
}

void sub_2256E44DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20)
{
  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v22);
  }

  v23 = 1;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_3, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 == 1)
  {
    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(_MergedGlobals_3);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WTF::String>::~optional(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 8) == 1)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = result;
        WTF::StringImpl::destroy(v2, a2);
        return v3;
      }
    }
  }

  return result;
}

uint64_t WebGPU::Sampler::Sampler(uint64_t this, atomic_ullong *a2)
{
  *this = 1;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 70) = 0;
  while (1)
  {
    v3 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v4 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_4;
    }
  }

  v5 = this;
  v6 = 0;
  v7 = *a2;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
  }

  ++*(v7 + 8);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  this = v5;
  if (v8 == 1)
  {
LABEL_4:
    *(this + 80) = a2;
    *(this + 88) = 0;
    return this;
  }

  WTF::Lock::unlockSlow(v7);
  this = v5;
  *(v5 + 80) = a2;
  *(v5 + 88) = 0;
  return this;
}

void sub_2256E46F8(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v5 = *(v3 + 32);
  *(v3 + 32) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  std::optional<WTF::String>::~optional(v2, a2);
  if (*v3 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebGPU::Sampler::~Sampler(WebGPU::Sampler *this, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  if (*(this + 16) != 1)
  {
    goto LABEL_54;
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](_MergedGlobals_3);
  }

  if ((*(this + 16) & 1) == 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v5 = qword_28159C948;
  v6 = *qword_28159C948;
  if (!*qword_28159C948)
  {
LABEL_31:
    v13 = 0;
    v15 = *qword_28159C948;
    if (!*qword_28159C948)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v7 = *(this + 1);
  if (v7 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E4B80);
  }

  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E4BA0);
  }

  v8 = *(v6 - 8);
  v9 = *(v7 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(v7);
  }

  else
  {
    v10 = v9 >> 8;
  }

  for (i = 0; ; v10 = i + v12)
  {
    v12 = v10 & v8;
    v13 = v6 + 24 * (v10 & v8);
    v14 = *v13;
    if (*v13 == -1)
    {
      goto LABEL_12;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *(this + 1), a3))
    {
      v15 = *qword_28159C948;
      if (!*qword_28159C948)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_12:
    ++i;
  }

  if (!*v5)
  {
    goto LABEL_31;
  }

  v13 = *v5 + 24 * *(*v5 - 4);
  v15 = *qword_28159C948;
  if (*qword_28159C948)
  {
LABEL_17:
    v15 += 24 * *(v15 - 4);
  }

LABEL_18:
  if (v15 == v13)
  {
    goto LABEL_53;
  }

  v17 = (v13 + 16);
  v16 = *(v13 + 16);
  if (!v16)
  {
    goto LABEL_38;
  }

  if (this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256E4BC0);
  }

  if (!this)
  {
    goto LABEL_76;
  }

  v18 = *(v16 - 8);
  v19 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
  v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
  v22 = v18 & ((v21 >> 31) ^ v21);
  v23 = *(v16 + 8 * v22);
  if (v23 == this)
  {
LABEL_26:
    v25 = *(v16 - 4);
    if (v22 == v25)
    {
      goto LABEL_37;
    }

    *(v16 + 8 * v22) = -1;
    v26 = vadd_s32(*(v16 - 16), 0xFFFFFFFF00000001);
    *(v16 - 16) = v26;
    if (v25 < 9)
    {
      goto LABEL_37;
    }

    if (6 * v26.i32[1] >= v25)
    {
      goto LABEL_37;
    }

    WTF::HashTable<WebGPU::Sampler const*,WebGPU::Sampler const*,WTF::IdentityExtractor,WTF::DefaultHash<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::HashTraits<WebGPU::Sampler const*>,WTF::FastMalloc>::rehash((v13 + 16), v25 >> 1, 0);
    v16 = *v17;
    if (*v17)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v24 = 1;
  while (v23)
  {
    v22 = (v22 + v24) & v18;
    v23 = *(v16 + 8 * v22);
    ++v24;
    if (v23 == this)
    {
      goto LABEL_26;
    }
  }

LABEL_37:
  if (!*(v16 - 12))
  {
LABEL_38:
    v27 = qword_28159C948;
    if (*qword_28159C948)
    {
      if (*qword_28159C948 + 24 * *(*qword_28159C948 - 4) != v13)
      {
        goto LABEL_42;
      }
    }

    else if (v13)
    {
LABEL_42:
      v28 = *v13;
      *v13 = -1;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, a2);
      }

      if (*v17)
      {
        WTF::fastFree((*v17 - 16), a2);
      }

      v29 = *(v13 + 8);
      *(v13 + 8) = 0;

      v30 = *v27;
      v31 = vadd_s32(*(*v27 - 16), 0xFFFFFFFF00000001);
      *(v30 - 16) = v31;
      v32 = *(v30 - 4);
      if (6 * v31.i32[1] < v32 && v32 >= 9)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebGPU::Sampler::SamplerStateWithReferences>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebGPU::Sampler::SamplerStateWithReferences,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebGPU::Sampler::SamplerStateWithReferences>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v27, v32 >> 1, 0);
      }
    }
  }

LABEL_53:
  v34 = 1;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_3, &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 == 1)
  {
LABEL_54:
    objc_destroyWeak(this + 11);
    v36 = *(this + 10);
    *(this + 10) = 0;
    if (v36)
    {
      goto LABEL_55;
    }

    goto LABEL_60;
  }

LABEL_70:
  WTF::Lock::unlockSlow(_MergedGlobals_3);
  objc_destroyWeak(this + 11);
  v36 = *(this + 10);
  *(this + 10) = 0;
  if (v36)
  {
    do
    {
LABEL_55:
      v37 = *v36;
      if ((*v36 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v36, v35);
        goto LABEL_60;
      }

      v38 = *v36;
      atomic_compare_exchange_strong_explicit(v36, &v38, v37 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v38 != v37);
    if (v37 == 3)
    {
      WebGPU::Device::~Device(v36, v35);
      bmalloc::api::tzoneFree(v39, v40);
    }
  }

LABEL_60:
  v41 = *(this + 4);
  *(this + 4) = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v35);
  }

  if (*(this + 16) == 1)
  {
    v42 = *(this + 1);
    *(this + 1) = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v35);
      }
    }
  }

  if (*this != 1)
  {
LABEL_76:
    __break(0xC471u);
    JUMPOUT(0x2256E4B60);
  }
}

void sub_2256E4BE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v1 + 80), v3);
  v5 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  std::optional<WTF::String>::~optional(v1 + 8, v4);
  if (*v1 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

WTF::StringImpl **WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::appendOrMoveToLast(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3)
{
  v6 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v6 = *a2;
    if (!*a2)
    {
      v7 = 0;
      v8 = *a3;
      v9 = *(*a3 + 4);
      if (v9 >= 0x100)
      {
        goto LABEL_4;
      }

LABEL_6:
      v10 = WTF::StringImpl::hashSlowCase(v8);
      goto LABEL_7;
    }
  }

  v7 = *(v6 - 8);
  v8 = *a3;
  v9 = *(*a3 + 4);
  if (v9 < 0x100)
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = v9 >> 8;
LABEL_7:
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v7;
    v14 = (v6 + 8 * (v10 & v7));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v6 + 8 * v13);
      goto LABEL_9;
    }

    if (!v15)
    {
      if (v11)
      {
        *v11 = 0;
        --*(*a2 - 16);
        v14 = v11;
      }

      result = WTF::fastMalloc(0x18);
      v22 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      }

      result[1] = 0;
      result[2] = 0;
      *result = v22;
      *v14 = result;
      v23 = *a2;
      if (*a2)
      {
        v24 = *(v23 - 16);
        v25 = *(v23 - 12) + 1;
        *(v23 - 12) = v25;
        v26 = (v24 + v25);
        v27 = *(v23 - 4);
        if (v27 <= 0x400)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v25 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v26 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v27 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_25:
          if (3 * v27 <= 4 * v26)
          {
            if (!v27)
            {
              v28 = 8;
LABEL_31:
              v14 = WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(a2, v28, v14);
              result = *v14;
              goto LABEL_32;
            }

LABEL_30:
            v28 = v27 << (6 * v25 >= (2 * v27));
            goto LABEL_31;
          }

LABEL_32:
          v16 = 1;
          goto LABEL_33;
        }
      }

      if (v27 <= 2 * v26)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (WTF::equal(*v15, *a3, a3))
    {
      break;
    }

LABEL_9:
    v10 = i + v13;
  }

  v16 = 0;
  result = *v14;
  v18 = (*v14)[1];
  v19 = (*v14)[2];
  v20 = (v18 + 16);
  if (!v18)
  {
    v20 = (a2 + 1);
  }

  *v20 = v19;
  if (v19)
  {
    v21 = (v19 + 8);
  }

  else
  {
    v21 = (a2 + 2);
  }

  *v21 = v18;
LABEL_33:
  v29 = a2[2];
  result[1] = v29;
  result[2] = 0;
  if (v29)
  {
    v30 = v29 + 2;
  }

  else
  {
    v30 = (a2 + 1);
  }

  *v30 = result;
  a2[2] = result;
  v31 = *v14;
  *a1 = a2;
  *(a1 + 8) = v31;
  *(a1 + 16) = v16;
  return result;
}