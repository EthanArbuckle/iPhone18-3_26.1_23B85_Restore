void WebGPU::Device::createComputePipeline(WebGPU::Device *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, WebGPU::ComputePipeline **a4@<X8>)
{
  if (!(*a2 | *(a2 + 24)))
  {
    v8 = *(a2 + 32);
    ++*v8;
    v90[1] = v8;
    if (!*(v8 + 40) && *(v8 + 72) == a1 && (v12 = *(a2 + 16)) != 0)
    {
      ++*(v12 + 8);
      v90[0] = v12;
      if (*(v12 + 128) != 1 || ((v13 = *(v12 + 88), v13 == a1) ? (v14 = *(v13 + 1) == 0) : (v14 = 1), v14))
      {
        WebGPU::returnInvalidComputePipeline(a4, a1, a3, &cfstr_GpudeviceCreat_0.isa);
      }

      else
      {
        WTF::String::fromUTF8(&v76, *(a2 + 8), a2);
        WTF::String::createNSString(&v76, &v89);
        v18 = v76;
        v76 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v17);
        }

        v19 = *(a2 + 40);
        if (v19)
        {
          WTF::String::fromUTF8(&v88, v19, v17);
        }

        else
        {
          v20 = *(v8 + 136);
          if (v20)
          {
            atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          }

          v88 = v20;
        }

        v87 = 0;
        v21 = *(a1 + 1);
        WTF::String::createNSString(&v88, &v73);
        v22 = v73;
        MEMORY[0x22AA68470](&v69, v22);
        v23 = v89;
        v75 = 0;
        WebGPU::createLibrary(v21, v8, v12, &v69, v23, &v76);
        v24 = v75;

        v26 = v69;
        v69 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v25);
        }

        WTF::RetainPtrArc<NSString>::~RetainPtrArc(&v73);
        if (v86 == 1 && *(v12 + 88) == a1)
        {
          v34 = v76;
          v28 = v34;
          if (v83 == 2)
          {
            v73 = v81;
            v74 = v82;
            v35 = WebGPU::createFunction(v34, &v77, v89);
            v36 = v35;
            if (!v35 || [v35 functionType] != 3)
            {
              goto LABEL_63;
            }

            v37 = v80;
            if (v80)
            {
              v37 = *(v80 - 12);
            }

            v38 = v85;
            if (v85)
            {
              v38 = *(v85 - 12);
            }

            if (v37 == v38)
            {
              v67 = v73;
              v68 = v74;
              WebGPU::metalSize<WGSL::Reflection::WorkgroupSize>(&v69, &v67, &v85);
              if (v72)
              {
                if (v84 <= *(a1 + 50) && v69 && v69 <= *(a1 + 52) && (v39 = v70) != 0 && v70 <= *(a1 + 53) && (v40 = v71) != 0 && v71 <= *(a1 + 54) && v70 * v69 * v71 <= *(a1 + 51))
                {
                  v61 = v69;
                  if (*(a1 + 66) == 0x800000000000000)
                  {
                    WebGPU::Device::loseTheDevice(a1, 0);
                    WebGPU::returnInvalidComputePipeline(a4, a1, a3, &cfstr_TooManyCompute.isa);
                  }

                  else if (*(v12 + 129) == 1 && v79 == 1)
                  {
                    v65 = 0;
                    v66 = 0;
                    v41 = WebGPU::Device::addPipelineLayouts(a1, &v65, &v78);
                    if (v41)
                    {
                      WebGPU::returnInvalidComputePipeline(a4, a1, a3, v41);
                    }

                    else
                    {
                      WebGPU::Device::generatePipelineLayout(a1, &v65, &v64);
                      v50 = v64;
                      if (*(v64 + 128))
                      {
                        v60 = *(a1 + 1);
                        v51 = v89;
                        v52 = WebGPU::Device::shaderValidationState(a1);
                        v53 = WebGPU::createComputePipelineState(v60, v36, v50, v51, v52);

                        *&v67 = v61;
                        *(&v67 + 1) = v39;
                        v68 = v40;
                        v54 = *(a1 + 66) + 1;
                        *(a1 + 66) = v54;
                        WebGPU::ComputePipeline::create(&v62, v53, &v64, &v67, &v87, v54, a1);
                        v55 = v62;
                        v62 = 0;
                        v63[0] = 0;
                        v63[1] = 0;
                        *a4 = v55;
                        a4[1] = 0;
                        WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(v63, v56);
                        WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(&v62, v57);
                      }

                      else
                      {
                        WebGPU::returnInvalidComputePipeline(a4, a1, a3, 0);
                      }

                      WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(&v64, v58);
                    }

                    WTF::Vector<WTF::Vector<WGPUBindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v42);
                  }

                  else
                  {
                    v59 = *(a1 + 1);
                    v43 = v89;
                    v44 = WebGPU::Device::shaderValidationState(a1);
                    v45 = WebGPU::createComputePipelineState(v59, v36, v12, v43, v44);

                    *&v67 = v61;
                    *(&v67 + 1) = v39;
                    v68 = v40;
                    v46 = *(a1 + 66) + 1;
                    *(a1 + 66) = v46;
                    WebGPU::ComputePipeline::create(v63, v45, v90, &v67, &v87, v46, a1);
                    v47 = v63[0];
                    v63[0] = 0;
                    v65 = 0;
                    v66 = 0;
                    *a4 = v47;
                    a4[1] = 0;
                    WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(&v65, v48);
                    WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(v63, v49);
                  }
                }

                else
                {
                  WebGPU::returnInvalidComputePipeline(a4, a1, a3, 0);
                }
              }

              else
              {
                WebGPU::returnInvalidComputePipeline(a4, a1, a3, &cfstr_FailedToEvalua.isa);
              }
            }

            else
            {
LABEL_63:
              WebGPU::returnInvalidComputePipeline(a4, a1, a3, 0);
            }
          }

          else
          {
            WebGPU::returnInvalidComputePipeline(a4, a1, a3, 0);
          }
        }

        else
        {
          v27 = [v24 localizedDescription];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = @"Compute library failed creation";
          }

          WebGPU::returnInvalidComputePipeline(a4, a1, a3, &v29->isa);
        }

        std::optional<WebGPU::LibraryCreationResult>::~optional(&v76, v30);
        WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&v87, v31);

        v33 = v88;
        v88 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v32);
        }

        WTF::RetainPtrArc<NSString>::~RetainPtrArc(&v89);
        v12 = v90[0];
        if (!v90[0])
        {
          goto LABEL_5;
        }
      }

      if (*(v12 + 8) == 1)
      {
        WebGPU::PipelineLayout::~PipelineLayout(v12, v9);
        bmalloc::api::tzoneFree(v15, v16);
      }

      else
      {
        --*(v12 + 8);
      }
    }

    else
    {
      WebGPU::returnInvalidComputePipeline(a4, a1, a3, 0);
    }

LABEL_5:
    if (*v8 == 1)
    {
      WebGPU::ShaderModule::~ShaderModule(v8, v9);
      bmalloc::api::tzoneFree(v10, v11);
    }

    else
    {
      --*v8;
    }

    return;
  }

  WebGPU::returnInvalidComputePipeline(a4, a1, a3, 0);
}

void sub_225697128(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WebGPU::PipelineLayout *a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF::StringImpl *a34)
{
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(&a16, a2);
  WTF::Vector<WTF::Vector<WGPUBindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v39);

  std::optional<WebGPU::LibraryCreationResult>::~optional(&a34, v40);
  WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v37 - 128), v41);
  v43 = *(v37 - 120);
  *(v37 - 120) = 0;
  if (v43)
  {
    if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v42);
    }
  }

  WTF::RetainPtrArc<NSString>::~RetainPtrArc((v37 - 112));
  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref((v37 - 104), v44);
  WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref((v37 - 96), v45);
  _Unwind_Resume(a1);
}

double WebGPU::returnInvalidComputePipeline(WebGPU *this, WebGPU::Device *a2, char a3, NSString *a4)
{
  v7 = a4;
  v9 = v7;
  if ((a3 & 1) == 0)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = @"createComputePipeline failed";
    }

    WebGPU::Device::generateAValidationError(a2, &v10->isa);
  }

  if (WebGPU::ComputePipeline::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePipeline::s_heapRef, v8);
  }

  else
  {
    NonCompact = WebGPU::ComputePipeline::operatorNewSlow(0);
  }

  v13 = NonCompact;
  *NonCompact = 0;
  *(NonCompact + 8) = 1;
  *(NonCompact + 16) = 0;
  while (1)
  {
    v14 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v15 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_15;
    }
  }

  v16 = 0;
  v17 = *a2;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    MEMORY[0x22AA683C0](v17);
  }

  ++*(v17 + 8);
  atomic_compare_exchange_strong_explicit(v17, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 == 1)
  {
LABEL_15:
    v13[3] = a2;
    v13[4] = 0;
    v13[5] = 0;
    v13[6] = 0;
    v19 = WebGPU::PipelineLayout::s_heapRef;
    if (WebGPU::PipelineLayout::s_heapRef)
    {
LABEL_16:
      v20 = bmalloc::api::tzoneAllocateNonCompact(v19, v12);
      goto LABEL_17;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v17);
    v13[3] = a2;
    v13[4] = 0;
    v13[5] = 0;
    v13[6] = 0;
    v19 = WebGPU::PipelineLayout::s_heapRef;
    if (WebGPU::PipelineLayout::s_heapRef)
    {
      goto LABEL_16;
    }
  }

  v20 = WebGPU::PipelineLayout::operatorNewSlow(0x88);
LABEL_17:
  v21 = v20;
  WebGPU::PipelineLayout::PipelineLayout(v20, a2);
  v13[8] = 0;
  v13[7] = v21;
  v22 = WTF::fastMalloc(0x90);
  *(v22 + 16) = -1;
  *(v22 + 24) = 0;
  *(v22 + 32) = -1;
  *(v22 + 40) = 0;
  *(v22 + 48) = -1;
  *(v22 + 56) = 0;
  *(v22 + 64) = -1;
  *(v22 + 72) = 0;
  *(v22 + 80) = -1;
  *(v22 + 88) = 0;
  *(v22 + 96) = -1;
  *(v22 + 104) = 0;
  *(v22 + 112) = -1;
  *(v22 + 120) = 0;
  *(v22 + 128) = -1;
  *(v22 + 136) = 0;
  result = 0.0;
  *v22 = xmmword_225881CF0;
  v13[8] = v22 + 16;
  v13[9] = 0;
  *this = v13;
  *(this + 1) = v9;
  return result;
}

void sub_225697454(_Unwind_Exception *a1)
{
  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v4);
  bmalloc::api::tzoneFree(WeakPtr, v6);

  _Unwind_Resume(a1);
}

void WebGPU::metalSize<WGSL::Reflection::WorkgroupSize>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WGSL::evaluate(*a2, a3, v19);
  v6 = a2[1];
  if (v6)
  {
    WGSL::evaluate(v6, a3, v16);
    v7 = a2[2];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13[0] = 1;
    v14 = 3;
    v15 = 1;
    if (v21 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v16[0] = 1;
  v17 = 3;
  v18 = 1;
  v7 = a2[2];
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  WGSL::evaluate(v7, a3, v13);
  if (v21 != 1)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v18 == 1 && (v15 & 1) != 0)
  {
    switch(v20)
    {
      case 5u:
        v8 = *v19;
        v9 = v17;
        if (v17 == 5)
        {
          goto LABEL_22;
        }

        break;
      case 4u:
        v8 = v19[0];
        v9 = v17;
        if (v17 == 5)
        {
          goto LABEL_22;
        }

        break;
      case 3u:
        v8 = v19[0];
        v9 = v17;
        if (v17 == 5)
        {
LABEL_22:
          v10 = *v16;
          v11 = v14;
          if (v14 != 5)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }

        break;
      default:
        goto LABEL_41;
    }

    if (v9 == 4)
    {
      v10 = v16[0];
      v11 = v14;
      if (v14 != 5)
      {
LABEL_23:
        if (v11 == 4)
        {
          v12 = v13[0];
LABEL_30:
          *a1 = v8;
          *(a1 + 8) = v10;
          *(a1 + 16) = v12;
          *(a1 + 24) = 1;
LABEL_31:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v22, v13);
          goto LABEL_32;
        }

        if (v11 == 3)
        {
          v12 = v13[0];
          goto LABEL_30;
        }

LABEL_41:
        __break(0xC471u);
        JUMPOUT(0x2256976F8);
      }
    }

    else
    {
      if (v9 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x225697718);
      }

      v10 = v16[0];
      v11 = v14;
      if (v14 != 5)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = *v13;
    goto LABEL_30;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 24) = 0;
  if ((v15 & 1) != 0 && v14 != 255)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v18 == 1 && v17 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v13, v16);
  }

  if (v21 == 1 && v20 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v16, v19);
  }
}

void sub_22569773C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned __int8 a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, unsigned __int8 a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 == 1 && a16 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&a10, &a14);
  }

  if (a28 == 1 && a26 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&a14, &a22);
  }

  _Unwind_Resume(exception_object);
}

id WebGPU::createComputePipelineState(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = objc_opt_new();
  [v12 setShaderValidation:a5];
  [v12 setComputeFunction:v10];
  if (*(a3 + 32) == 1 && *(a3 + 28))
  {
    v13 = 1;
    do
    {
      v14 = [v12 buffers];
      v15 = [v14 objectAtIndexedSubscript:v13 - 1];
      [v15 setMutability:2];

      if (*(a3 + 32) != 1)
      {
        break;
      }
    }

    while (v13++ < *(a3 + 28));
  }

  [v12 setLabel:v11];
  v20 = 0;
  v17 = [v9 newComputePipelineStateWithDescriptor:v12 options:0 reflection:0 error:&v20];
  v18 = v20;
  if (v18)
  {
    WTFLogAlways();
  }

  return v17;
}

void sub_2256978FC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void WebGPU::ComputePipeline::create(uint64_t *a1, void *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t a6, atomic_ullong *a7)
{
  v14 = a2;
  if (WebGPU::ComputePipeline::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ComputePipeline::s_heapRef, v13);
  }

  else
  {
    NonCompact = WebGPU::ComputePipeline::operatorNewSlow(0);
  }

  v16 = NonCompact;
  v26 = *a4;
  v27 = *(a4 + 2);
  v17 = v14;
  *v16 = 0;
  *(v16 + 8) = 1;
  v25 = v17;
  *(v16 + 16) = v25;
  while (1)
  {
    v18 = *a7;
    if ((*a7 & 1) == 0)
    {
      break;
    }

    v19 = *a7;
    atomic_compare_exchange_strong_explicit(a7, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_11;
    }
  }

  v20 = 0;
  v21 = *a7;
  v22 = 1;
  atomic_compare_exchange_strong_explicit(*a7, &v20, 1u, memory_order_acquire, memory_order_acquire);
  if (v20)
  {
    MEMORY[0x22AA683C0](v21);
  }

  ++*(v21 + 8);
  atomic_compare_exchange_strong_explicit(v21, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow(v21);
  }

LABEL_11:
  *(v16 + 24) = a7;
  *(v16 + 48) = v27;
  *(v16 + 32) = v26;
  v23 = *a3;
  *a3 = 0;
  *(v16 + 56) = v23;
  *(v16 + 64) = 0;
  v24 = *a5;
  *a5 = 0;
  *(v16 + 64) = v24;
  *(v16 + 72) = a6;

  *a1 = v16;
}

void sub_225697AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v10, v13);

  bmalloc::api::tzoneFree(v10, v14);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::Vector<WGPUBindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 16 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        WTF::fastFree(v6, a2);
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t std::optional<WebGPU::LibraryCreationResult>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        v5 = *(a1 + 104);
        do
        {
          v6 = *v5;
          if (*v5 != -1)
          {
            if (*(v5 + 24) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, (v5 + 8));
              v6 = *v5;
            }

            *(v5 + 24) = -1;
            *v5 = 0;
            if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }

          v5 += 32;
          --v4;
        }

        while (v4);
      }

      WTF::fastFree((v3 - 16), a2);
    }

    WGSL::Reflection::EntryPointInformation::~EntryPointInformation((a1 + 8), a2);
  }

  return a1;
}

void *WTF::HashMap<unsigned int,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = (v2 + 8);
      do
      {
        if (*(v5 - 2) != -2)
        {
          if (*v5)
          {
            WTF::fastFree((*v5 - 16), a2);
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

WebGPU::ComputePipeline *WebGPU::Device::createComputePipelineAsync(WebGPU::Device *a1, uint64_t a2, WTF::StringImpl **a3)
{
  WebGPU::Device::createComputePipeline(a1, a2, 1, &v43);
  v5 = *(a1 + 55);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = 0;
  v7 = *(a1 + 54);
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
    v13 = 1;
    atomic_compare_exchange_strong_explicit(v5, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 == 1)
    {
LABEL_6:
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_13:
      MEMORY[0x22AA68470](v40, v44);
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14, 1, &v43, v40);
      (*(*v14 + 8))(v14);
      v16 = v40[0];
      v40[0] = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
      }

      goto LABEL_39;
    }
  }

  WTF::Lock::unlockSlow(v5);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = v43;
  v43 = 0;
  v10 = *a3;
  *a3 = 0;
  v40[0] = v9;
  v40[1] = v10;
  while (1)
  {
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v12 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v12, (v11 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_20;
    }
  }

  v17 = 0;
  v18 = *a1;
  v19 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v17, 1u, memory_order_acquire, memory_order_acquire);
  if (v17)
  {
    MEMORY[0x22AA683C0](v18);
  }

  ++*(v18 + 1);
  atomic_compare_exchange_strong_explicit(v18, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(v18);
  }

LABEL_20:
  v20 = v44;
  v44 = 0;
  v41[0] = a1;
  v41[1] = v20;
  v21 = WTF::fastMalloc(0x28);
  *v21 = &unk_2838D2C98;
  v22 = *v40;
  *v40 = 0u;
  *(v21 + 8) = v22;
  v23 = *v41;
  *v41 = 0u;
  *(v21 + 24) = v23;
  v42 = v21;
  WebGPU::Instance::scheduleWork(v7, &v42);
  v24 = v42;
  v42 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v26 = v41[0];
  v41[0] = 0;
  if (v26)
  {
    do
    {
      v27 = *v26;
      if ((*v26 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v26, v25);
        goto LABEL_28;
      }

      v28 = *v26;
      atomic_compare_exchange_strong_explicit(v26, &v28, v27 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v28 != v27);
    if (v27 == 3)
    {
      WebGPU::Device::~Device(v26, v25);
      bmalloc::api::tzoneFree(v29, v30);
    }
  }

LABEL_28:
  v31 = v40[1];
  v40[1] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (v40[0])
  {
    if (*(v40[0] + 2) == 1)
    {
      WebGPU::ComputePipeline::~ComputePipeline(v40[0], v25);
      bmalloc::api::tzoneFree(v32, v33);
    }

    else
    {
      --*(v40[0] + 2);
    }
  }

  do
  {
    v34 = v7[1];
    if ((v34 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v7[1], v25);
      goto LABEL_39;
    }

    v35 = v7[1];
    atomic_compare_exchange_strong_explicit(v7 + 1, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v35 != v34);
  if (v34 == 3)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_39:

  result = v43;
  v43 = 0;
  if (result)
  {
    if (*(result + 2) == 1)
    {
      WebGPU::ComputePipeline::~ComputePipeline(result, v36);
      return bmalloc::api::tzoneFree(v38, v39);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

void sub_22569808C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebGPU::ComputePipeline *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(&a9, a2);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Instance,(WTF::DestructionThread)0>::deref((v15 + 8), v18);
  std::pair<WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>,NSString * {__strong}>::~pair(&a15);
  _Unwind_Resume(a1);
}

void sub_225698128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  (*(*v15 + 8))(v15);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v17);
      std::pair<WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>,NSString * {__strong}>::~pair(&a15);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0x225698188);
}

uint64_t WebGPU::Device::createComputePipelineAsync(WGPUComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0::~$_0(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v3, v2);
        goto LABEL_7;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      WebGPU::Device::~Device(v3, v2);
      bmalloc::api::tzoneFree(v6, v7);
    }
  }

LABEL_7:
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (!v9)
  {
    return a1;
  }

  if (*(v9 + 2) != 1)
  {
    --*(v9 + 2);
    return a1;
  }

  WebGPU::ComputePipeline::~ComputePipeline(v9, v2);
  bmalloc::api::tzoneFree(v11, v12);
  return a1;
}

void WebGPU::ComputePipeline::~ComputePipeline(WebGPU::ComputePipeline *this, void *a2)
{
  v3 = *(this + 8);
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

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (!v6)
  {
LABEL_12:
    v7 = *(this + 3);
    *(this + 3) = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (*(v6 + 2) != 1)
  {
    --*(v6 + 2);
    goto LABEL_12;
  }

  WebGPU::PipelineLayout::~PipelineLayout(v6, a2);
  bmalloc::api::tzoneFree(v12, v13);
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    do
    {
LABEL_13:
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v7, a2);
        goto LABEL_19;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v9 != v8);
    if (v8 == 3)
    {
      WebGPU::Device::~Device(v7, a2);
      bmalloc::api::tzoneFree(v10, v11);
    }
  }

LABEL_19:

  if (*(this + 2) == 1)
  {
    v15 = *this;
    if (*this)
    {
      *(v15 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebGPU::ComputePipeline::minimumBufferSizes(WebGPU::ComputePipeline *this, int a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2256984ACLL);
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

WebGPU::ComputePipeline *wgpuComputePipelineRelease(WebGPU::ComputePipeline *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::ComputePipeline::~ComputePipeline(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t wgpuComputePipelineGetBindGroupLayout(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = a2;
  ++*(a1 + 8);
  v4 = *(a1 + 24);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  v8 = *v4;
  v9 = 1;
  atomic_compare_exchange_strong_explicit(*v4, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x22AA683C0](v8);
  }

  ++*(v8 + 8);
  atomic_compare_exchange_strong_explicit(v8, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    WTF::Lock::unlockSlow(v8);
  }

LABEL_9:
  v10 = *(a1 + 56);
  ++*(v10 + 8);
  v50[1] = v10;
  v51 = v4;
  if (!*(a1 + 16) || (*(v10 + 128) & 1) == 0)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v13 = v52;
    v50[0] = v52;
    if ((*(v4 + 548) & 1) == 0)
    {
      v14 = *(v4 + 32) + 32 * *(v4 + 44);
      v15 = (v14 + 16);
      v16 = -32 * *(v4 + 44);
      while (v16)
      {
        v17 = *(v14 - 8);
        v14 -= 32;
        v15 -= 32;
        v16 += 32;
        if (!v17)
        {
          if ((*v15 & 1) == 0)
          {
            v50[0] = 0;
            *(v15 - 4) = 1;
            *(v15 - 1) = v13;
            *v15 = 1;
          }

          goto LABEL_30;
        }
      }

      v23 = *(v4 + 24);
      if (v23)
      {
        (*(*v23 + 16))(v23, 1, v50);
        v24 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

LABEL_30:
      v13 = v50[0];
    }

    v50[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }

    *(v10 + 128) = 0;
    if (*(v10 + 32) == 1 && *(v10 + 24))
    {
      v25 = *(v10 + 28);
      v26 = *(v10 + 16);
      if (v25)
      {
        v27 = 8 * v25;
        do
        {
          v28 = *v26;
          *v26 = 0;
          if (v28)
          {
            if (v28[2] == 1)
            {
              WebGPU::BindGroupLayout::~BindGroupLayout(v28, a2);
              bmalloc::api::tzoneFree(v29, v30);
            }

            else
            {
              --v28[2];
            }
          }

          v26 = (v26 + 8);
          v27 -= 8;
        }

        while (v27);
        *(v10 + 28) = 0;
        v26 = *(v10 + 16);
      }

      if (v26)
      {
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        WTF::fastFree(v26, a2);
      }
    }

    if (WebGPU::BindGroupLayout::s_heapRef)
    {
      goto LABEL_68;
    }

    goto LABEL_83;
  }

  if (*(v10 + 32) != 1 || *(v10 + 28) <= v2)
  {
    if (*(v4 + 96) <= v2)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v18 = v52;
      v50[0] = v52;
      if ((*(v4 + 548) & 1) == 0)
      {
        v19 = *(v4 + 32) + 32 * *(v4 + 44);
        v20 = (v19 + 16);
        v21 = -32 * *(v4 + 44);
        while (v21)
        {
          v22 = *(v19 - 8);
          v19 -= 32;
          v20 -= 32;
          v21 += 32;
          if (!v22)
          {
            if ((*v20 & 1) == 0)
            {
              v50[0] = 0;
              *(v20 - 4) = 1;
              *(v20 - 1) = v18;
              *v20 = 1;
            }

            goto LABEL_51;
          }
        }

        v31 = *(v4 + 24);
        if (v31)
        {
          (*(*v31 + 16))(v31, 1, v50);
          v32 = *(v4 + 24);
          *(v4 + 24) = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

LABEL_51:
        v18 = v50[0];
      }

      v50[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }

      *(v10 + 128) = 0;
      if (*(v10 + 32) == 1 && *(v10 + 24))
      {
        v33 = *(v10 + 28);
        v34 = *(v10 + 16);
        if (v33)
        {
          v35 = 8 * v33;
          do
          {
            v36 = *v34;
            *v34 = 0;
            if (v36)
            {
              if (v36[2] == 1)
              {
                WebGPU::BindGroupLayout::~BindGroupLayout(v36, a2);
                bmalloc::api::tzoneFree(v37, v38);
              }

              else
              {
                --v36[2];
              }
            }

            v34 = (v34 + 8);
            v35 -= 8;
          }

          while (v35);
          *(v10 + 28) = 0;
          v34 = *(v10 + 16);
        }

        if (v34)
        {
          *(v10 + 16) = 0;
          *(v10 + 24) = 0;
          WTF::fastFree(v34, a2);
        }
      }
    }

    if (WebGPU::BindGroupLayout::s_heapRef)
    {
LABEL_68:
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::BindGroupLayout::s_heapRef, a2);
LABEL_69:
      v12 = NonCompact;
      WebGPU::BindGroupLayout::BindGroupLayout(NonCompact, v4);
      goto LABEL_70;
    }

LABEL_83:
    NonCompact = WebGPU::BindGroupLayout::operatorNewSlow(0xE0);
    goto LABEL_69;
  }

  v12 = WebGPU::PipelineLayout::bindGroupLayout(v10, v2);
  ++*(v12 + 8);
LABEL_70:
  if (*(v10 + 8) == 1)
  {
    WebGPU::PipelineLayout::~PipelineLayout(v10, v11);
    bmalloc::api::tzoneFree(v40, v41);
  }

  else
  {
    --*(v10 + 8);
  }

  v51 = 0;
  while (1)
  {
    v42 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v43 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v43, v42 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v43 == v42)
    {
      if (v42 == 3)
      {
        WebGPU::Device::~Device(v4, v11);
        bmalloc::api::tzoneFree(v44, v45);
      }

      v46 = *(a1 + 8) - 1;
      if (*(a1 + 8) != 1)
      {
        goto LABEL_79;
      }

      goto LABEL_81;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v4, v11);
  v46 = *(a1 + 8) - 1;
  if (*(a1 + 8) != 1)
  {
LABEL_79:
    *(a1 + 8) = v46;
    return v12;
  }

LABEL_81:
  WebGPU::ComputePipeline::~ComputePipeline(a1, v11);
  bmalloc::api::tzoneFree(v47, v48);
  return v12;
}

void sub_225698A04(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_225698A18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebGPU::ComputePipeline *a10, WTF::StringImpl *a11, WebGPU::PipelineLayout *a12, atomic_ullong *a13)
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

  WTF::Ref<WebGPU::PipelineLayout,WTF::RawPtrTraits<WebGPU::PipelineLayout>,WTF::DefaultRefDerefTraits<WebGPU::PipelineLayout>>::~Ref(&a12, a2);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a13, v15);
  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(&a10, v16);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuComputePipelineSetLabel(WebGPU::ComputePipeline *a1, char *__s)
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
    WebGPU::ComputePipeline::~ComputePipeline(a1, v3);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*(a1 + 2);
  }

  return result;
}

void sub_225698B38(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(uint64_t a1, _BYTE *a2)
{
  v4 = a2[16];
  if (v4 == 255)
  {
    v4 = -1;
  }

  if (v4 > 6)
  {
    v23 = v2;
    v24 = v3;
    if (v4 > 8)
    {
      if (v4 == 9)
      {
        v5 = *(a2 + 1);
        *(a2 + 1) = 0;
        if (!v5)
        {
          return;
        }

        v9 = *v5;
        if (v9)
        {
          v10 = 24 * v9;
          v11 = v5 + 24;
          do
          {
            a2 = v11 - 16;
            if (*v11 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v21, a2);
            }

            *v11 = -1;
            v11 += 24;
            v10 -= 24;
          }

          while (v10);
        }
      }

      else
      {
        v15 = *a2;
        if (!*a2)
        {
          return;
        }

        v16 = *(v15 - 4);
        if (v16)
        {
          v17 = *a2;
          do
          {
            v18 = *v17;
            if (*v17 != -1)
            {
              if (*(v17 + 24) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v22, v17 + 8);
                v18 = *v17;
              }

              *(v17 + 24) = -1;
              *v17 = 0;
              if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v18, a2);
              }
            }

            v17 += 32;
            --v16;
          }

          while (v16);
        }

        v5 = (v15 - 16);
      }
    }

    else if (v4 == 7)
    {
      v5 = *a2;
      *a2 = 0;
      if (!v5)
      {
        return;
      }

      v6 = *v5;
      if (v6)
      {
        v7 = 24 * v6;
        v8 = v5 + 24;
        do
        {
          a2 = v8 - 16;
          if (*v8 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, a2);
          }

          *v8 = -1;
          v8 += 24;
          v7 -= 24;
        }

        while (v7);
      }
    }

    else
    {
      v5 = *a2;
      *a2 = 0;
      if (!v5)
      {
        return;
      }

      v12 = *v5;
      if (v12)
      {
        v13 = 24 * v12;
        v14 = v5 + 24;
        do
        {
          a2 = v14 - 16;
          if (*v14 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, a2);
          }

          *v14 = -1;
          v14 += 24;
          v13 -= 24;
        }

        while (v13);
      }
    }

    WTF::fastFree(v5, a2);
  }
}

void WGSL::Reflection::EntryPointInformation::~EntryPointInformation(WGSL::Reflection::EntryPointInformation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 5);
      do
      {
        if (*v5 != -1)
        {
          v6 = v5[1];
          v5[1] = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }

        v5 += 4;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  if (*(this + 32) == 1)
  {
    v8 = *(this + 7);
    v9 = *(this + 2);
    if (v8)
    {
      v10 = v9 + 24 * v8;
      do
      {
        v11 = *(v9 + 20);
        v12 = *(v9 + 8);
        if (v11)
        {
          v13 = 120 * v11;
          v14 = (v12 + 40);
          do
          {
            v15 = *v14;
            *v14 = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, a2);
            }

            v14 += 15;
            v13 -= 120;
          }

          while (v13);
          v12 = *(v9 + 8);
        }

        if (v12)
        {
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
          WTF::fastFree(v12, a2);
        }

        v9 += 24;
      }

      while (v9 != v10);
      v9 = *(this + 2);
    }

    if (v9)
    {
      *(this + 2) = 0;
      *(this + 6) = 0;
      WTF::fastFree(v9, a2);
    }
  }

  v16 = *(this + 1);
  *(this + 1) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = *this;
  *this = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }
  }
}

void *std::pair<WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>>,NSString * {__strong}>::~pair(uint64_t a1)
{
  result = a1;
  v4 = *a1;
  *result = 0;
  if (v4)
  {
    if (*(v4 + 2) == 1)
    {
      v5 = result;
      WebGPU::ComputePipeline::~ComputePipeline(v4, v2);
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

WebGPU::ShaderModule **WTF::Ref<WebGPU::ShaderModule,WTF::RawPtrTraits<WebGPU::ShaderModule>,WTF::DefaultRefDerefTraits<WebGPU::ShaderModule>>::~Ref(WebGPU::ShaderModule **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
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

uint64_t *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Instance,(WTF::DestructionThread)0>::deref(uint64_t *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(uint64_t result, void *a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(result, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    v11 = result;
    MEMORY[0x22AA683C0]();
    result = v11;
    v12 = *(v11 + 8);
    v4 = v12 - 1;
    *(v11 + 8) = v12 - 1;
    if (v12 != 1)
    {
LABEL_3:
      v5 = 0;
      v6 = 1;
      atomic_compare_exchange_strong_explicit(result, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(result + 8);
    v4 = v3 - 1;
    *(result + 8) = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v5 = *(result + 24);
  ++*(result + 16);
  *(result + 24) = 0;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(result, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 == 1)
  {
LABEL_4:
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_13:
  v14 = result;
  WTF::Lock::unlockSlow(result);
  result = v14;
  if (v4)
  {
    return result;
  }

LABEL_5:
  if (v5)
  {
    v7 = result;
    (*(*v5 + 8))(v5);
    result = v7;
  }

  v8 = 0;
  v9 = 1;
  atomic_compare_exchange_strong_explicit(result, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (!v8)
  {
    v10 = *(result + 16) - 1;
    *(result + 16) = v10;
    atomic_compare_exchange_strong_explicit(result, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v16 = result;
    WTF::Lock::unlockSlow(result);
    result = v16;
    if (v10)
    {
      return result;
    }

    goto LABEL_17;
  }

  v15 = result;
  MEMORY[0x22AA683C0]();
  result = v15;
  v10 = *(v15 + 16) - 1;
  *(v15 + 16) = v10;
  atomic_compare_exchange_strong_explicit(v15, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v10)
  {
    return result;
  }

LABEL_17:

  return WTF::fastFree(result, a2);
}

void *WTF::Detail::CallableWrapper<WebGPU::Device::createComputePipelineAsync(WGPUComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_2838D2C98;
  WebGPU::Device::createComputePipelineAsync(WGPUComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0::~$_0((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Device::createComputePipelineAsync(WGPUComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_2838D2C98;
  WebGPU::Device::createComputePipelineAsync(WGPUComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0::~$_0(a1 + 8);

  return WTF::fastFree(a1, v2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebGPU::Device::createComputePipelineAsync(WGPUComputePipelineDescriptor const&,WTF::CompletionHandler<void ()(WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU::ComputePipeline>,WTF::DefaultRefDerefTraits<WebGPU::ComputePipeline>> &&,WTF::String &&)> &&)::$_0,void>::call(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (*(v2 + 16) && (*(*(v2 + 56) + 128) & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1[3] + 65) ^ 1u;
  }

  MEMORY[0x22AA68470](&v8, a1[4]);
  v5 = a1[2];
  a1[2] = 0;
  (*(*v5 + 16))(v5, v4, v3, &v8);
  (*(*v5 + 8))(v5);
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_2256992BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebGPU::Device::shaderValidationState(WebGPU::Device *this)
{
  if (atomic_load_explicit(&qword_28159C8B8, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_28159C8B8, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::shaderValidationState(void)::$_0 &&>>);
  }

  return qword_28159C8B0;
}

uint64_t WebGPU::Device::enableEncoderTimestamps(WebGPU::Device *this)
{
  if (atomic_load_explicit(&qword_28159C8C0, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_28159C8C0, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::enableEncoderTimestamps(void)::$_0 &&>>);
  }

  return byte_28159C8A9;
}

id WebGPU::Device::timestampsBuffer(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setSampleCount:a3];
  [v6 setStorageMode:0];
  [v6 setCounterSet:*(a1 + 264)];
  v7 = *(a1 + 8);
  v13 = 0;
  v8 = [v7 newCounterSampleBufferWithDescriptor:v6 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v9)
  {
    v12 = [v9 localizedDescription];
    WTFLogAlways();

    v8 = 0;
  }

  else
  {
    WebGPU::Device::trackTimestampsBuffer(a1, v5, v8);
  }

  return v8;
}

void sub_2256994F0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void WebGPU::Device::trackTimestampsBuffer(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 456) objectForKey:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 456) setObject:? forKey:?];
  }

  [v6 addObject:v5];
}

void WebGPU::Device::resolveTimestampsForBuffer(id *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (atomic_load_explicit(&qword_28159C8C0, memory_order_acquire) != -1)
  {
    v26 = &v24;
    v25 = &v26;
    std::__call_once(&qword_28159C8C0, &v25, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::enableEncoderTimestamps(void)::$_0 &&>>);
  }

  if (byte_28159C8A9)
  {
    v15 = [a1[57] objectForKey:v3];
    if (v15)
    {
      [a1[57] removeObjectForKey:v3];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = v15;
      v4 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v4)
      {
        v5 = *v21;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v21 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v20 + 1) + 8 * i);
            v8 = [v3 blitCommandEncoder];
            v9 = [v7 sampleCount];
            if ((8 * v9) <= 1)
            {
              v10 = 1;
            }

            else
            {
              v10 = 8 * v9;
            }

            v11 = [a1[1] newBufferWithLength:v10 options:0];
            WebGPU::Device::setOwnerWithIdentity(a1, v11);
            [v8 resolveCounters:v7 inRange:0 destinationBuffer:v9 destinationOffset:{v11, 0}];
            [v8 endEncoding];
            v12 = [a1[58] objectForKey:v3];
            v13 = v12;
            if (v12)
            {
              [v12 addObject:v11];
            }

            else
            {
              v13 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
              [a1[58] setObject:? forKey:?];
            }

            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = ___ZN6WebGPU6Device26resolveTimestampsForBufferEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
            v17[3] = &unk_2785662A8;
            v19 = a1;
            v14 = v13;
            v18 = v14;
            [v3 addCompletedHandler:v17];
          }

          v4 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
        }

        while (v4);
      }
    }
  }
}

void ___ZN6WebGPU6Device26resolveTimestampsForBufferEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(a1 + 40);
  v17 = v3;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = v7;
        v9 = [v7 contents];
        v10 = [v7 length];
        v15 = [v7 label];
        WTFLogAlways();

        v11 = [v7 length];
        if (v11 >= 0x10)
        {
          v12 = v11 >> 3;
          v13 = v9 + 8;
          v14 = 1;
          do
          {
            if (v10 <= v14)
            {
              __break(1u);
            }

            WTFLogAlways();
            v14 += 2;
            v13 += 16;
          }

          while (v14 < v12);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  [*(v16 + 464) removeObjectForKey:v17];
}

void WebGPU::Device::create(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, WebGPU::Adapter *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1;
  v10 = [v9 newCommandQueueWithMaxCommandBufferCount:4096];
  v12 = v10;
  if (!v10)
  {
    if (WebGPU::Device::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Device::s_heapRef, v11);
    }

    else
    {
      NonCompact = WebGPU::Device::operatorNewSlow(0x230);
    }

    v20 = NonCompact;
    WebGPU::Device::Device(NonCompact, a4);
    goto LABEL_60;
  }

  [v10 setLabel:@"Default queue"];
  if (*a2 && *(*a2 + 4))
  {
    v14 = MEMORY[0x277CCACA8];
    WTF::String::utf8();
    v15 = v64 ? v64 + 16 : 0;
    v16 = [v14 stringWithFormat:@"Default queue for device %s", v15];
    [v12 setLabel:v16];

    v17 = v64;
    v64 = 0;
    if (v17)
    {
      if (*v17 == 1)
      {
        WTF::fastFree(v17, v13);
        v18 = WebGPU::Device::s_heapRef;
        if (WebGPU::Device::s_heapRef)
        {
          goto LABEL_11;
        }

LABEL_29:
        v19 = WebGPU::Device::operatorNewSlow(0x230);
        goto LABEL_12;
      }

      --*v17;
    }
  }

  v18 = WebGPU::Device::s_heapRef;
  if (!WebGPU::Device::s_heapRef)
  {
    goto LABEL_29;
  }

LABEL_11:
  v19 = bmalloc::api::tzoneAllocateNonCompact(v18, v13);
LABEL_12:
  v20 = v19;
  v21 = v9;
  v22 = v12;
  *v20 = 3;
  v60 = v21;
  *(v20 + 8) = v60;
  v24 = v22;
  if (WebGPU::Queue::s_heapRef)
  {
    v25 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Queue::s_heapRef, v23);
  }

  else
  {
    v25 = WebGPU::Queue::operatorNewSlow(0xA0);
  }

  v26 = v25;
  WebGPU::Queue::Queue(v25, v24, a4, v20);
  *(v20 + 16) = v26;

  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  v27 = WTF::fastMalloc(0x38);
  WebGPU::XRSubImage::XRSubImage(v27, 0, v20);
  *(v20 + 48) = v27;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  v28 = *(a3 + 16);
  *(v20 + 80) = *a3;
  *(v20 + 96) = v28;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  v31 = *(a3 + 80);
  *(v20 + 144) = *(a3 + 64);
  *(v20 + 160) = v31;
  *(v20 + 112) = v29;
  *(v20 + 128) = v30;
  v32 = *(a3 + 96);
  v33 = *(a3 + 112);
  v34 = *(a3 + 144);
  *(v20 + 208) = *(a3 + 128);
  *(v20 + 224) = v34;
  *(v20 + 176) = v32;
  *(v20 + 192) = v33;
  *(v20 + 240) = 0;
  *(v20 + 248) = 0;
  v35 = *(a3 + 160);
  *(a3 + 160) = 0;
  *(v20 + 240) = v35;
  LODWORD(v35) = *(a3 + 168);
  *(a3 + 168) = 0;
  *(v20 + 248) = v35;
  LODWORD(v35) = *(a3 + 172);
  *(a3 + 172) = 0;
  *(v20 + 252) = v35;
  *(v20 + 256) = *(a3 + 176);
  v36 = *(a3 + 184);
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(v20 + 264) = v36;
  v37 = *(a3 + 200);
  *(v20 + 283) = *(a3 + 203);
  *(v20 + 280) = v37;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0u;
  *(v20 + 320) = 0u;
  *(v20 + 336) = 0u;
  *(v20 + 352) = 0u;
  *(v20 + 368) = 0u;
  *(v20 + 384) = 0u;
  *(v20 + 400) = 0u;
  *(v20 + 416) = 0;
  ++*a4;
  *(v20 + 424) = a4;
  *(v20 + 432) = *(a4 + 2);
  v38 = *(a4 + 3);
  if (v38)
  {
    v39 = 0;
    v40 = 1;
    atomic_compare_exchange_strong_explicit(v38, &v39, 1u, memory_order_acquire, memory_order_acquire);
    if (v39)
    {
      MEMORY[0x22AA683C0](v38);
    }

    ++*(v38 + 16);
    atomic_compare_exchange_strong_explicit(v38, &v40, 0, memory_order_release, memory_order_relaxed);
    if (v40 != 1)
    {
      WTF::Lock::unlockSlow(v38);
    }
  }

  *(v20 + 440) = v38;
  *(v20 + 448) = 0u;
  *(v20 + 464) = 0u;
  *(v20 + 480) = 0u;
  *(v20 + 496) = 0u;
  *(v20 + 512) = 0u;
  *(v20 + 528) = 0u;
  v41 = v60;
  if ([v41 supportsFamily:1009])
  {
    v42 = 9;
  }

  else if ([v41 supportsFamily:1008])
  {
    v42 = 8;
  }

  else if ([v41 supportsFamily:1007])
  {
    v42 = 7;
  }

  else if ([v41 supportsFamily:1006])
  {
    v42 = 6;
  }

  else if ([v41 supportsFamily:1005])
  {
    v42 = 5;
  }

  else if ([v41 supportsFamily:1004])
  {
    v42 = 4;
  }

  else
  {
    v42 = 255;
  }

  *(v20 + 544) = v42;
  *(v20 + 548) = 0;
  v44 = v41;
  if ([v44 supportsFamily:1009])
  {
    v45 = 314572800;
  }

  else if ([v44 supportsFamily:1008])
  {
    v45 = 288358400;
  }

  else if ([v44 supportsFamily:1007])
  {
    v45 = 262144000;
  }

  else if ([v44 supportsFamily:1006])
  {
    v45 = 235929600;
  }

  else if ([v44 supportsFamily:1005] & 1) != 0 || (objc_msgSend(v44, "supportsFamily:", 1004))
  {
    v45 = 209715200;
  }

  else if ([v44 supportsFamily:2002])
  {
    v45 = 314572800;
  }

  else
  {
    v45 = 209715200;
  }

  *(v20 + 552) = v45;
  *(v20 + 556) = 1;
  cacheOut = 0;
  CVMetalTextureCacheCreate(0, 0, v44, 0, &cacheOut);
  v46 = cacheOut;
  if (cacheOut)
  {
    CFRetain(cacheOut);
  }

  v47 = *(v20 + 448);
  *(v20 + 448) = v46;
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(v20 + 8);
  if (atomic_load_explicit(&qword_28159C918, memory_order_acquire) != -1)
  {
    v64 = &v62;
    v63 = &v64;
    std::__call_once(&qword_28159C918, &v63, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::GPUFrameCapture::registerForFrameCapture(objc_object  {objcproto9MTLDevice}*)::{lambda(void)#1} &&>>);
  }

  if (_MergedGlobals_1 == 1)
  {
    WebGPU::GPUFrameCapture::captureFrame(v48);
  }

  v49 = [*(v20 + 8) newBufferWithLength:1 options:0];
  WebGPU::Device::setOwnerWithIdentity(v20, v49);
  v50 = *(v20 + 288);
  *(v20 + 288) = v49;

  v51 = objc_opt_new();
  [v51 setWidth:1];
  [v51 setHeight:1];
  [v51 setMipmapLevelCount:1];
  [v51 setPixelFormat:80];
  [v51 setTextureType:2];
  [v51 setStorageMode:0];
  [v51 setUsage:5];
  v52 = [*(v20 + 8) newTextureWithDescriptor:v51];
  v53 = *(v20 + 296);
  *(v20 + 296) = v52;

  [v51 setPixelFormat:260];
  [v51 setStorageMode:2];
  v54 = [*(v20 + 8) newTextureWithDescriptor:v51];
  v55 = *(v20 + 304);
  *(v20 + 304) = v54;

  v56 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v57 = *(v20 + 456);
  *(v20 + 456) = v56;

  v58 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v59 = *(v20 + 464);
  *(v20 + 464) = v58;

  *(v20 + 556) = WebGPU::isShaderValidationEnabled(*(v20 + 8));
LABEL_60:
  *a5 = v20;
}

void sub_22569A1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14)
{
  WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref((v16 + 424));

  WebGPU::HardwareCapabilities::~HardwareCapabilities((v16 + 80));
  v22 = *(v16 + 56);
  *(v16 + 56) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(v16 + 48);
  *(v16 + 48) = 0;
  if (v23)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::deref(v23, v21);
  }

  WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v21);
  v24 = *v19;
  *v19 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v16 + 16));

  bmalloc::api::tzoneFree(v16, v25);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 32 * v3;
    v6 = v4 + 8;
    do
    {
      if (v6[8] == 1)
      {
        v7 = *v6;
        *v6 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }
      }

      v6 += 32;
      v5 -= 32;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WebGPU::Device *WebGPU::Device::Device(WebGPU::Device *this, WebGPU::Adapter *a2)
{
  *this = 3;
  *(this + 1) = 0;
  if (WebGPU::Queue::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::Queue::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebGPU::Queue::operatorNewSlow(0xA0);
  }

  v5 = NonCompact;
  WebGPU::Queue::Queue(NonCompact, a2, this);
  *(this + 24) = 0u;
  *(this + 2) = v5;
  *(this + 40) = 0u;
  *(this + 50) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 148) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 279) = 0;
  *(this + 25) = 0u;
  *(this + 24) = 0u;
  *(this + 23) = 0u;
  *(this + 22) = 0u;
  *(this + 21) = 0u;
  *(this + 20) = 0u;
  *(this + 19) = 0u;
  *(this + 18) = 0u;
  *(this + 52) = 0;
  ++*a2;
  *(this + 53) = a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(this + 54) = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 1;
    atomic_compare_exchange_strong_explicit(v7, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      MEMORY[0x22AA683C0](v7);
    }

    ++*(v7 + 16);
    atomic_compare_exchange_strong_explicit(v7, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != 1)
    {
      WTF::Lock::unlockSlow(v7);
    }
  }

  *(this + 55) = v7;
  *(this + 138) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 541) = 0;
  *(this + 556) = 1;
  if (*(*(this + 53) + 8))
  {
    return this;
  }

  v11 = *(this + 1);
  *(this + 1) = 0;

  v12 = *(this + 2);
  atomic_fetch_add(v12, 1u);
  WebGPU::Queue::makeInvalid(v12);
  if (!v12 || atomic_fetch_add(v12, 0xFFFFFFFF) != 1)
  {
    return this;
  }

  atomic_store(1u, v12);
  WebGPU::Queue::~Queue(v12);
  bmalloc::api::tzoneFree(v13, v14);
  return this;
}

void sub_22569A724(_Unwind_Exception *a1)
{
  WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref(v2 + 50);

  WebGPU::HardwareCapabilities::~HardwareCapabilities(v2 + 7);
  v5 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v6)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::deref(v6, v4);
  }

  WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 1), v4);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 1))(v7);
  }

  WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v1 + 16));

  _Unwind_Resume(a1);
}

void sub_22569A8DC(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v3, a2);

  _Unwind_Resume(a1);
}

void WebGPU::Device::~Device(WebGPU::Device *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  v4 = MEMORY[0x277CD4668];
  if (v3)
  {
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    v43 = v4;
    (*(*v3 + 16))(v3, 1, &v43);
    v5 = v43;
    v43 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 7);
    *(this + 7) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = *(this + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    v43 = v4;
    (*(*v7 + 16))(v7, 0, &v43);
    v8 = v43;
    v43 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *(this + 3);
    *(this + 3) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *(this + 62);
  if (v10)
  {
    WTF::fastFree((v10 - 16), a2);
  }

  v11 = *(this + 61);
  if (v11)
  {
    WTF::fastFree((v11 - 16), a2);
  }

  v12 = *(this + 60);
  if (v12)
  {
    WTF::fastFree((v12 - 16), a2);
  }

  v14 = *(this + 56);
  *(this + 56) = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 55);
  *(this + 55) = 0;
  if (v15)
  {
    v16 = 0;
    atomic_compare_exchange_strong_explicit(v15, &v16, 1u, memory_order_acquire, memory_order_acquire);
    if (v16)
    {
      v19 = v15;
      MEMORY[0x22AA683C0]();
      v15 = v19;
      v20 = *(v19 + 16) - 1;
      *(v19 + 16) = v20;
      if (v20)
      {
LABEL_24:
        v18 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v18, 0, memory_order_release, memory_order_relaxed);
        if (v18 != 1)
        {
          WTF::Lock::unlockSlow(v15);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v17 = *(v15 + 16) - 1;
      *(v15 + 16) = v17;
      if (v17)
      {
        goto LABEL_24;
      }
    }

    v21 = *(v15 + 8);
    v22 = 1;
    atomic_compare_exchange_strong_explicit(v15, &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 == 1)
    {
      if (v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v42 = v15;
      WTF::Lock::unlockSlow(v15);
      v15 = v42;
      if (v21)
      {
        goto LABEL_30;
      }
    }

    WTF::fastFree(v15, v13);
  }

LABEL_30:
  v23 = *(this + 53);
  *(this + 53) = 0;
  if (v23)
  {
    if (*v23 == 1)
    {
      WebGPU::Adapter::~Adapter(v23);
      bmalloc::api::tzoneFree(v24, v25);
    }

    else
    {
      --*v23;
    }
  }

  v27 = *(this + 30);
  if (v27)
  {
    *(this + 30) = 0;
    *(this + 62) = 0;
    WTF::fastFree(v27, v26);
  }

  v29 = *(this + 7);
  *(this + 7) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 6);
  *(this + 6) = 0;
  if (!v30)
  {
LABEL_41:
    v31 = *(this + 11);
    v32 = *(this + 4);
    if (!v31)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (*(v30 + 2) != 1)
  {
    --*(v30 + 2);
    goto LABEL_41;
  }

  WebGPU::XRSubImage::~XRSubImage(v30, v28);
  WTF::fastFree(v35, v36);
  v31 = *(this + 11);
  v32 = *(this + 4);
  if (!v31)
  {
LABEL_42:
    if (!v32)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_51:
  v37 = 32 * v31;
  v38 = v32 + 8;
  do
  {
    if (v38[8] == 1)
    {
      v39 = *v38;
      *v38 = 0;
      if (v39)
      {
        if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v28);
        }
      }
    }

    v38 += 32;
    v37 -= 32;
  }

  while (v37);
  v32 = *(this + 4);
  if (v32)
  {
LABEL_43:
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v32, v28);
  }

LABEL_44:
  v33 = *(this + 3);
  *(this + 3) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 2);
  *(this + 2) = 0;
  if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v34);
    WebGPU::Queue::~Queue(v34);
    bmalloc::api::tzoneFree(v40, v41);
  }
}

void sub_22569AD64(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  v12 = *(v10 + 496);
  if (v12)
  {
    WTF::fastFree((v12 - 16), a2);
    v13 = *(v10 + 488);
    if (!v13)
    {
LABEL_6:
      v14 = *(v10 + 480);
      if (!v14)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v13 = *(v10 + 488);
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  WTF::fastFree((v13 - 16), a2);
  v14 = *(v10 + 480);
  if (!v14)
  {
LABEL_8:

    v16 = *(v10 + 448);
    *(v10 + 448) = 0;
    if (v16)
    {
      CFRelease(v16);
    }

    WTF::ThreadSafeWeakPtr<WebGPU::Buffer,WTF::NoTaggingTraits<WebGPU::Buffer>>::~ThreadSafeWeakPtr(v10 + 432, v15);
    WTF::Ref<WebGPU::Adapter,WTF::RawPtrTraits<WebGPU::Adapter>,WTF::DefaultRefDerefTraits<WebGPU::Adapter>>::~Ref((v10 + 424));

    WebGPU::HardwareCapabilities::~HardwareCapabilities((v10 + 80));
    v18 = *(v10 + 56);
    *(v10 + 56) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(v10 + 48);
    *(v10 + 48) = 0;
    if (v19)
    {
      WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::deref(v19, v17);
    }

    WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10 + 32, v17);
    v20 = *(v10 + 24);
    *(v10 + 24) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    WTF::Ref<WebGPU::Queue,WTF::RawPtrTraits<WebGPU::Queue>,WTF::DefaultRefDerefTraits<WebGPU::Queue>>::~Ref((v10 + 16));

    _Unwind_Resume(a1);
  }

LABEL_7:
  WTF::fastFree((v14 - 16), a2);
  goto LABEL_8;
}

void WebGPU::Device::getXRViewSubImage(WebGPU::Device *this@<X0>, WebGPU::XRProjectionLayer *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 6);
  if (v6)
  {
    ++*(v6 + 8);
  }

  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  WebGPU::XRSubImage::update(v6, v7, v8, *(a2 + 8), a2 + 48);

  if (v6)
  {
    if (*(v6 + 8) == 1)
    {
      WebGPU::XRSubImage::~XRSubImage(v6, v9);
      WTF::fastFree(v11, v12);
      v10 = *(this + 6);
      if (!v10)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    --*(v6 + 8);
  }

  v10 = *(this + 6);
  if (v10)
  {
LABEL_7:
    ++*(v10 + 8);
  }

LABEL_8:
  *a3 = v10;
}

void sub_22569AFF8(_Unwind_Exception *a1)
{
  if (v1)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::deref(v1, v5);
  }

  _Unwind_Resume(a1);
}

void WebGPU::Device::loseTheDevice(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;

  v5 = *(a1 + 424);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;

  if (*(a1 + 56))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    (*(**(a1 + 56) + 16))(*(a1 + 56), a2, &v13);
    v8 = v13;
    v13 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *(a1 + 16);
  atomic_fetch_add(v10, 1u);
  v13 = v10;
  WebGPU::Queue::makeInvalid(v10);
  v13 = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WebGPU::Queue::~Queue(v10);
    bmalloc::api::tzoneFree(v11, v12);
    *(a1 + 64) = 1;
  }

  else
  {
    *(a1 + 64) = 1;
  }
}

void sub_22569B15C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebGPU::Device::setOwnerWithIdentity(uint64_t a1, void *a2)
{
  v3 = a2;
  WebGPU::Device::webProcessID(a1, v4, &v7);
  if (v8 == 1)
  {
    v5 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    v6 = v3;
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 setOwnerWithIdentity:v5];
    }

    if (v8)
    {
LABEL_7:
      WTF::MachSendRight::~MachSendRight(&v7);
    }
  }
}

void sub_22569B238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12)
{
  if (a12)
  {
    WTF::MachSendRight::~MachSendRight(&a10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Device::webProcessID@<X0>(uint64_t this@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 440);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = *(this + 432);
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v12 = a3;
    this = MEMORY[0x22AA683C0](v3);
    a3 = v12;
    if (*(v3 + 24))
    {
LABEL_4:
      ++*(v3 + 8);
      v6 = 1;
      atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 == 1)
      {
        goto LABEL_5;
      }

LABEL_19:
      v14 = v3;
      v15 = a3;
      this = WTF::Lock::unlockSlow(v14);
      a3 = v15;
      if (v5)
      {
        goto LABEL_6;
      }

LABEL_20:
      *a3 = 0;
      a3[4] = 0;
      return this;
    }
  }

  else if (*(v3 + 24))
  {
    goto LABEL_4;
  }

  v5 = 0;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_6:
  *a3 = 0;
  a3[4] = 0;
  if (*(v5 + 60) == 1)
  {
    v7 = a3;
    this = WTF::MachSendRight::MachSendRight();
    v7[4] = 1;
  }

  while (1)
  {
    v8 = *(v5 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v5 + 8);
    atomic_compare_exchange_strong_explicit((v5 + 8), &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      if (v8 == 3)
      {
        v10 = *(*v5 + 8);

        return v10(v5);
      }

      return this;
    }
  }

  v11 = *(v5 + 8);

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v11, a2);
}

void sub_22569B3DC(_Unwind_Exception *a1, void *a2)
{
  if (*(v3 + 4) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v3);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Instance,(WTF::DestructionThread)0>::deref((v2 + 8), a2);
  _Unwind_Resume(a1);
}

void WebGPU::Device::generateAValidationError(WebGPU::Device *this, NSString *a2)
{
  v3 = a2;
  MEMORY[0x22AA68470](&v13, v3);
  if ((*(this + 548) & 1) == 0)
  {
    v6 = *(this + 4) + 32 * *(this + 11);
    v7 = (v6 + 16);
    v8 = -32 * *(this + 11);
    while (v8)
    {
      v9 = *(v6 - 8);
      v6 -= 32;
      v7 -= 32;
      v8 += 32;
      if (!v9)
      {
        if ((*v7 & 1) == 0)
        {
          v10 = v13;
          v13 = 0;
          *(v7 - 4) = 1;
          *(v7 - 1) = v10;
          *v7 = 1;
        }

        goto LABEL_2;
      }
    }

    v11 = *(this + 3);
    if (v11)
    {
      (*(*v11 + 16))(v11, 1, &v13);
      v12 = *(this + 3);
      *(this + 3) = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

LABEL_2:
  v5 = v13;
  v13 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }
}

void sub_22569B528(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);

      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebGPU::Device::generateAValidationError(uint64_t result, uint64_t *a2)
{
  if ((*(result + 548) & 1) == 0)
  {
    v2 = *(result + 32) + 32 * *(result + 44);
    v3 = (v2 + 16);
    for (i = -32 * *(result + 44); i; i += 32)
    {
      v5 = *(v2 - 8);
      v2 -= 32;
      v3 -= 32;
      if (!v5)
      {
        if ((*v3 & 1) == 0)
        {
          v6 = *a2;
          *a2 = 0;
          *(v3 - 4) = 1;
          *(v3 - 1) = v6;
          *v3 = 1;
        }

        return result;
      }
    }

    v7 = *(result + 24);
    if (v7)
    {
      v8 = result;
      (*(*v7 + 16))(*(result + 24), 1, a2);
      result = *(v8 + 24);
      *(v8 + 24) = 0;
      if (result)
      {
        v9 = *(*result + 8);

        return v9();
      }
    }
  }

  return result;
}

uint64_t WebGPU::Device::generateAnOutOfMemoryError(uint64_t result, uint64_t *a2)
{
  if ((*(result + 548) & 1) == 0)
  {
    v2 = *(result + 32) + 32 * *(result + 44);
    v3 = (v2 + 16);
    for (i = -32 * *(result + 44); i; i += 32)
    {
      v5 = *(v2 - 8);
      v2 -= 32;
      v3 -= 32;
      if (v5 == 1)
      {
        if ((*v3 & 1) == 0)
        {
          v6 = *a2;
          *a2 = 0;
          *(v3 - 4) = 2;
          *(v3 - 1) = v6;
          *v3 = 1;
        }

        return result;
      }
    }

    v7 = *(result + 24);
    if (v7)
    {
      v8 = result;
      (*(*v7 + 16))(*(result + 24), 2, a2);
      result = *(v8 + 24);
      *(v8 + 24) = 0;
      if (result)
      {
        v9 = *(*result + 8);

        return v9();
      }
    }
  }

  return result;
}

id WebGPU::Device::newTextureWithDescriptor(WebGPU::Device *this, MTLTextureDescriptor *a2, __IOSurface *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(this + 1);
  if (a3)
  {
    v9 = [v8 newTextureWithDescriptor:v7 iosurface:a3 plane:a4];
  }

  else
  {
    v9 = [v8 newTextureWithDescriptor:v7];
  }

  v10 = v9;
  WebGPU::Device::setOwnerWithIdentity(this, v9);

  return v10;
}

uint64_t WebGPU::Device::popErrorScope(WTF::CompletionHandler<void ()(WGPUErrorType,WTF::String &&)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  return a1;
}

void WebGPU::Device::setDeviceLostCallback(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    v10 = v5;
    (*(*v4 + 16))(v4, 1, &v10);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (*(a1 + 64))
  {
    WebGPU::Device::loseTheDevice(a1, 1);
  }

  else if (!*(*(a1 + 424) + 8))
  {
    WebGPU::Device::loseTheDevice(a1, 0);
  }
}

void sub_22569B9C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

id WebGPU::Device::dispatchCallPipelineState(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 320);
    if (!v5)
    {
      v11 = 0;
      v6 = [v4 newComputePipelineStateWithFunction:v3 error:&v11];
      v7 = v11;
      v8 = *(a1 + 320);
      *(a1 + 320) = v6;

      if (v7)
      {
        WTFLogAlways();
      }

      v5 = *(a1 + 320);
    }

    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t WebGPU::Device::indexBufferClampPipeline(WebGPU::Device *this, MTLIndexType a2, unint64_t a3)
{
  if (*(this + 1))
  {
    v6 = 336;
    if (a3 > 1)
    {
      v6 = 352;
    }

    v7 = 328;
    if (a3 > 1)
    {
      v7 = 344;
    }

    if (a2)
    {
      v6 = v7;
    }

    v8 = *(this + v6);
    if (!v8)
    {
      v27[0] = this;
      v27[1] = &v28;
      v28 = 0;
      if (atomic_load_explicit(&qword_28159C8D8, memory_order_acquire) != -1)
      {
        v30 = v27;
        v29 = &v30;
        std::__call_once(&qword_28159C8D8, &v29, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::indexBufferClampPipeline(MTLIndexType,unsigned long)::$_0 &&>>);
      }

      if (!qword_28159C8C8 || !qword_28159C8D0)
      {
        result = 763;
        __break(0xC471u);
        return result;
      }

      v9 = objc_opt_new();
      v10 = v9;
      v11 = &qword_28159C8D0;
      if (a2)
      {
        v11 = &qword_28159C8C8;
      }

      [v9 setVertexFunction:*v11];
      [v10 setRasterizationEnabled:0];
      [v10 setRasterSampleCount:a3];
      [v10 setFragmentFunction:0];
      [v10 setInputPrimitiveTopology:1];
      v12 = *(this + 1);
      if (a2)
      {
        if (a3 >= 2)
        {
          v24 = v28;
          v15 = [v12 newRenderPipelineStateWithDescriptor:v10 error:&v24];
          v13 = v24;
          v17 = v28;
          v28 = v13;
          v18 = 344;
        }

        else
        {
          v23 = v28;
          v15 = [v12 newRenderPipelineStateWithDescriptor:v10 error:&v23];
          v16 = v23;
          v17 = v28;
          v28 = v16;
          v18 = 328;
        }
      }

      else if (a3 >= 2)
      {
        v26 = v28;
        v15 = [v12 newRenderPipelineStateWithDescriptor:v10 error:&v26];
        v14 = v26;
        v17 = v28;
        v28 = v14;
        v18 = 352;
      }

      else
      {
        v25 = v28;
        v15 = [v12 newRenderPipelineStateWithDescriptor:v10 error:&v25];
        v19 = v25;
        v17 = v28;
        v28 = v19;
        v18 = 336;
      }

      v20 = *(this + v18);
      *(this + v18) = v15;

      v8 = *(this + v18);
      if (v28)
      {
        WTFLogAlways();
        v21 = v8;
        v8 = 0;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t WebGPU::Device::indexedIndirectBufferClampPipeline(WebGPU::Device *this, unint64_t a2)
{
  if (*(this + 1))
  {
    v4 = 360;
    if (a2 > 1)
    {
      v4 = 368;
    }

    v5 = *(this + v4);
    if (!v5)
    {
      v16[0] = this;
      v16[1] = &location;
      location = 0;
      if (atomic_load_explicit(&qword_28159C8E8, memory_order_acquire) != -1)
      {
        v19 = v16;
        v18 = &v19;
        std::__call_once(&qword_28159C8E8, &v18, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::indexedIndirectBufferClampPipeline(unsigned long)::$_0 &&>>);
      }

      if (!qword_28159C8E0)
      {
        result = 841;
        __break(0xC471u);
        return result;
      }

      v6 = objc_opt_new();
      [v6 setVertexFunction:qword_28159C8E0];
      [v6 setRasterizationEnabled:0];
      [v6 setRasterSampleCount:a2];
      [v6 setFragmentFunction:0];
      [v6 setInputPrimitiveTopology:1];
      v7 = *(this + 1);
      if (a2 < 2)
      {
        obj = location;
        v8 = [v7 newRenderPipelineStateWithDescriptor:v6 error:&obj];
        v9 = (this + 360);
        v10 = obj;
      }

      else
      {
        v15 = location;
        v8 = [v7 newRenderPipelineStateWithDescriptor:v6 error:&v15];
        v9 = (this + 368);
        v10 = v15;
      }

      objc_storeStrong(&location, v10);
      v11 = *v9;
      *v9 = v8;

      v5 = *v9;
      if (location)
      {
        WTFLogAlways();
        v12 = v5;
        v5 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t WebGPU::Device::indirectBufferClampPipeline(WebGPU::Device *this, unint64_t a2)
{
  if (*(this + 1))
  {
    v4 = 376;
    if (a2 > 1)
    {
      v4 = 384;
    }

    v5 = *(this + v4);
    if (!v5)
    {
      v16[0] = this;
      v16[1] = &location;
      location = 0;
      if (atomic_load_explicit(&qword_28159C8F8, memory_order_acquire) != -1)
      {
        v19 = v16;
        v18 = &v19;
        std::__call_once(&qword_28159C8F8, &v18, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::indirectBufferClampPipeline(unsigned long)::$_0 &&>>);
      }

      if (!qword_28159C8F0)
      {
        result = 904;
        __break(0xC471u);
        return result;
      }

      v6 = objc_opt_new();
      [v6 setVertexFunction:qword_28159C8F0];
      [v6 setRasterizationEnabled:0];
      [v6 setRasterSampleCount:a2];
      [v6 setFragmentFunction:0];
      [v6 setInputPrimitiveTopology:1];
      v7 = *(this + 1);
      if (a2 < 2)
      {
        obj = location;
        v8 = [v7 newRenderPipelineStateWithDescriptor:v6 error:&obj];
        v9 = (this + 376);
        v10 = obj;
      }

      else
      {
        v15 = location;
        v8 = [v7 newRenderPipelineStateWithDescriptor:v6 error:&v15];
        v9 = (this + 384);
        v10 = v15;
      }

      objc_storeStrong(&location, v10);
      v11 = *v9;
      *v9 = v8;

      v5 = *v9;
      if (location)
      {
        WTFLogAlways();
        v12 = v5;
        v5 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id WebGPU::Device::icbCommandClampPipeline(WebGPU::Device *this, MTLIndexType a2, unint64_t a3)
{
  if (*(this + 1))
  {
    v6 = 400;
    if (a3 > 1)
    {
      v6 = 416;
    }

    v7 = 392;
    if (a3 > 1)
    {
      v7 = 408;
    }

    if (a2)
    {
      v6 = v7;
    }

    v8 = *(this + v6);
    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = WebGPU::Device::icbCommandClampFunction(this, a2);
      [v9 setVertexFunction:v10];

      [v9 setRasterizationEnabled:0];
      [v9 setRasterSampleCount:a3];
      [v9 setFragmentFunction:0];
      [v9 setInputPrimitiveTopology:1];
      v11 = *(this + 1);
      if (a2)
      {
        if (a3 >= 2)
        {
          v20 = 0;
          v12 = &v20;
          v13 = [v11 newRenderPipelineStateWithDescriptor:v9 error:&v20];
          v14 = 408;
        }

        else
        {
          v19 = 0;
          v12 = &v19;
          v13 = [v11 newRenderPipelineStateWithDescriptor:v9 error:&v19];
          v14 = 392;
        }
      }

      else if (a3 >= 2)
      {
        v22 = 0;
        v12 = &v22;
        v13 = [v11 newRenderPipelineStateWithDescriptor:v9 error:&v22];
        v14 = 416;
      }

      else
      {
        v21 = 0;
        v12 = &v21;
        v13 = [v11 newRenderPipelineStateWithDescriptor:v9 error:&v21];
        v14 = 400;
      }

      v15 = *v12;
      v16 = *(this + v14);
      *(this + v14) = v13;

      v8 = *(this + v14);
      if (v15)
      {
        WTFLogAlways();
        v17 = v8;
        v8 = 0;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t WebGPU::Device::icbCommandClampFunction(WebGPU::Device *this, MTLIndexType a2)
{
  v7[0] = this;
  v7[1] = &v8;
  v8 = 0;
  if (atomic_load_explicit(&qword_28159C910, memory_order_acquire) != -1)
  {
    v10 = v7;
    v9 = &v10;
    std::__call_once(&qword_28159C910, &v9, std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::icbCommandClampFunction(MTLIndexType)::$_0 &&>>);
  }

  v3 = qword_28159C900;
  if (qword_28159C900)
  {
    v4 = qword_28159C908 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    if (a2 == MTLIndexTypeUInt16)
    {
      v3 = qword_28159C908;
    }

    v5 = v3;

    return v5;
  }

  return result;
}

id WebGPU::Device::resolveTimestampsSharedEvent(WebGPU::Device *this)
{
  v3 = *(this + 59);
  if (v3)
  {
  }

  else
  {
    v5 = this;
    v6 = [*(this + 1) newSharedEvent];
    v7 = *(v5 + 59);
    *(v5 + 59) = v6;

    v3 = *(v5 + 59);
  }

  return v3;
}

atomic_ullong *wgpuDeviceReference(atomic_ullong *result)
{
  while (1)
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v2 = *result;
    atomic_compare_exchange_strong_explicit(result, &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return result;
    }
  }

  v3 = 0;
  v4 = *result;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(*result, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x22AA683C0](v4);
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  else
  {
    ++*(v4 + 8);
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      return result;
    }
  }

  return WTF::Lock::unlockSlow(v4);
}

atomic_ullong *wgpuDeviceRelease(atomic_ullong *result, WTF::StringImpl *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        WebGPU::Device::~Device(result, a2);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v6, a2);
}

uint64_t wgpuDeviceCreateBindGroup(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createBindGroup(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569C820(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateBindGroupLayout(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createBindGroupLayout(a1, a2, 0, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569C960(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateXRBinding(atomic_ullong *this)
{
  while (1)
  {
    v2 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v3 = *this;
    atomic_compare_exchange_strong_explicit(this, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *this;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v5);
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    WTF::Lock::unlockSlow(v5);
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createXRBinding(this, &v14);
  v8 = v14;
  v14 = 0;
  do
  {
    v9 = *this;
    if ((*this & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*this, v7);
      return v8;
    }

    v10 = *this;
    atomic_compare_exchange_strong_explicit(this, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v9);
  if (v9 == 3)
  {
    WebGPU::Device::~Device(this, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t wgpuDeviceCreateBuffer(atomic_ullong *a1, unsigned int *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createBuffer(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569CBC8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateCommandEncoder(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createCommandEncoder(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569CD04(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WebGPU::ComputePipeline *wgpuDeviceCreateComputePipeline(atomic_ullong *a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v20 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v20;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  v18 = v6;
  v19 = a2;
  WTF::Lock::unlockSlow(v18);
  a2 = v19;
LABEL_6:
  WebGPU::Device::createComputePipeline(a1, a2, 0, v21);
  v8 = v21[0];
  v21[0] = 0;

  v10 = v21[0];
  v21[0] = 0;
  if (v10)
  {
    if (*(v10 + 2) == 1)
    {
      WebGPU::ComputePipeline::~ComputePipeline(v10, v9);
      bmalloc::api::tzoneFree(v11, v12);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  do
  {
    v13 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v9);
      return v8;
    }

    v14 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v14 != v13);
  if (v13 == 3)
  {
    WebGPU::Device::~Device(a1, v9);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v8;
}

void sub_22569CE74(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDevicePauseErrorReporting(uint64_t result, WTF::StringImpl *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *result;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*result, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v16 = result;
    v15 = a2;
    MEMORY[0x22AA683C0](v5);
    a2 = v15;
    result = v16;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_18:
    v12 = result;
    v13 = v5;
    v14 = a2;
    WTF::Lock::unlockSlow(v13);
    a2 = v14;
    result = v12;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_18;
  }

LABEL_6:
  *(result + 548) = a2 != 0;
  while (1)
  {
    v7 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v8 = *result;
    atomic_compare_exchange_strong_explicit(result, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      if (v7 == 3)
      {
        WebGPU::Device::~Device(result, a2);

        return bmalloc::api::tzoneFree(v9, v10);
      }

      return result;
    }
  }

  v11 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v11, a2);
}

WTF::StringImpl *wgpuDeviceCreateComputePipelineAsync(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
  v11 = *a1;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v11);
    ++*(v11 + 8);
    atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_6;
    }

LABEL_16:
    WTF::Lock::unlockSlow(v11);
    goto LABEL_6;
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v21 = a1;
  v13 = WTF::fastMalloc(0x18);
  *v13 = &unk_2838D2D68;
  *(v13 + 1) = a3;
  *(v13 + 2) = a4;
  v20 = v13;
  WebGPU::Device::createComputePipelineAsync(a1, a2, &v20);
  result = v20;
  v20 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v21 = 0;
  do
  {
    v16 = *a1;
    if ((*a1 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v14);
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v16);
  if (v16 == 3)
  {
    WebGPU::Device::~Device(a1, v14);
    return bmalloc::api::tzoneFree(v18, v19);
  }

  return result;
}

void sub_22569D144(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 8))(a3);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v4);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreatePipelineLayout(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createPipelineLayout(a1, a2, (a2[3] == 0), &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569D2D0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateQuerySet(atomic_ullong *a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createQuerySet(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569D40C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateRenderBundleEncoder(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createRenderBundleEncoder(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569D548(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

WebGPU::RenderPipeline *wgpuDeviceCreateRenderPipeline(atomic_ullong *a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v20 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v20;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  v18 = v6;
  v19 = a2;
  WTF::Lock::unlockSlow(v18);
  a2 = v19;
LABEL_6:
  WebGPU::Device::createRenderPipeline(a1, a2, 0, v21);
  v8 = v21[0];
  v21[0] = 0;

  v10 = v21[0];
  v21[0] = 0;
  if (v10)
  {
    if (*(v10 + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(v10, v9);
      bmalloc::api::tzoneFree(v11, v12);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  do
  {
    v13 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v9);
      return v8;
    }

    v14 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v14 != v13);
  if (v13 == 3)
  {
    WebGPU::Device::~Device(a1, v9);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v8;
}

void sub_22569D6B8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateRenderPipelineAsync(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
  v11 = *a1;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v11);
    ++*(v11 + 8);
    atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 == 1)
    {
      goto LABEL_6;
    }

LABEL_16:
    WTF::Lock::unlockSlow(v11);
    goto LABEL_6;
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v21 = a1;
  v13 = WTF::fastMalloc(0x18);
  *v13 = &unk_2838D2D90;
  v13[1] = a3;
  v13[2] = a4;
  v20 = v13;
  WebGPU::Device::createRenderPipelineAsync(a1, a2, &v20);
  result = v20;
  v20 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v21 = 0;
  do
  {
    v16 = *a1;
    if ((*a1 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v14);
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v16);
  if (v16 == 3)
  {
    WebGPU::Device::~Device(a1, v14);
    return bmalloc::api::tzoneFree(v18, v19);
  }

  return result;
}

void sub_22569D850(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 8))(a3);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v4);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateSampler(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createSampler(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569D9D0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceImportExternalTexture(atomic_ullong *a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createExternalTexture(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569DB0C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateShaderModule(atomic_ullong *a1, const char **a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createShaderModule(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569DC48(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

_DWORD *wgpuDeviceCreateSwapChain(atomic_ullong *a1, _DWORD *a2)
{
  while (1)
  {
    v4 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v5 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = *a1;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v7);
LABEL_6:
  ++a2[2];
  (*(*a2 + 16))(a2, a1);
  v10 = a2[2];
  a2[2] = v10 + 1;
  if (v10)
  {
    a2[2] = v10;
  }

  else
  {
    (*(*a2 + 8))(a2);
  }

  do
  {
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v9);
      return a2;
    }

    v12 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Device::~Device(a1, v9);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return a2;
}

void sub_22569DDF0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3[2] == 1)
  {
    (*(*v3 + 8))(v3);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v5);
    _Unwind_Resume(a1);
  }

  --v3[2];
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceCreateTexture(atomic_ullong *a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = a2;
    MEMORY[0x22AA683C0](v6);
    a2 = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = v6;
    v16 = a2;
    WTF::Lock::unlockSlow(v15);
    a2 = v16;
    goto LABEL_6;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  WebGPU::Device::createTexture(a1, a2, &v18);
  v9 = v18;
  v18 = 0;
  do
  {
    v10 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v8);
      return v9;
    }

    v11 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(a1, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

void sub_22569DF74(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void wgpuDeviceDestroy(uint64_t a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v5);
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_18:
    WTF::Lock::unlockSlow(v5);
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_18;
  }

LABEL_6:
  *(a1 + 65) = 1;
  WebGPU::Device::loseTheDevice(a1, 1);
  while (1)
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      if (v8 == 3)
      {
        WebGPU::Device::~Device(a1, v7);

        bmalloc::api::tzoneFree(v10, v11);
      }

      return;
    }
  }

  v12 = *a1;

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v12, v7);
}

void sub_22569E0C8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceEnumerateFeatures(WebGPU::Device *this, void *__dst)
{
  while (1)
  {
    v3 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v4 = *this;
    atomic_compare_exchange_strong_explicit(this, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *this;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v17 = __dst;
    MEMORY[0x22AA683C0](v6);
    __dst = v17;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_6:
      if (!__dst)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  v15 = v6;
  v16 = __dst;
  WTF::Lock::unlockSlow(v15);
  __dst = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = *(this + 63);
  if (v8)
  {
    memmove(__dst, *(this + 30), 4 * v8);
  }

LABEL_9:
  v9 = *(this + 63);
  do
  {
    v10 = *this;
    if ((*this & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*this, __dst);
      return v9;
    }

    v11 = *this;
    atomic_compare_exchange_strong_explicit(this, &v11, v10 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v10);
  if (v10 == 3)
  {
    WebGPU::Device::~Device(this, __dst);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

BOOL wgpuDeviceGetLimits(uint64_t a1, void *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v23 = a2;
    v24 = a1;
    MEMORY[0x22AA683C0](v5);
    a2 = v23;
    a1 = v24;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
LABEL_6:
      v7 = *a2;
      if (*a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }
  }

  v20 = a1;
  v21 = v5;
  v22 = a2;
  WTF::Lock::unlockSlow(v21);
  a2 = v22;
  a1 = v20;
  v7 = *v22;
  if (!v7)
  {
LABEL_7:
    v8 = *(a1 + 80);
    *(a2 + 3) = *(a1 + 96);
    *(a2 + 1) = v8;
    v9 = *(a1 + 112);
    v10 = *(a1 + 128);
    v11 = *(a1 + 144);
    *(a2 + 11) = *(a1 + 160);
    *(a2 + 9) = v11;
    *(a2 + 7) = v10;
    *(a2 + 5) = v9;
    v12 = *(a1 + 176);
    v13 = *(a1 + 192);
    v14 = *(a1 + 208);
    *(a2 + 19) = *(a1 + 224);
    *(a2 + 17) = v14;
    *(a2 + 15) = v13;
    *(a2 + 13) = v12;
    goto LABEL_8;
  }

  do
  {
LABEL_8:
    v15 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, a2);
      return v7 == 0;
    }

    v16 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v16, v15 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v16 != v15);
  if (v15 == 3)
  {
    WebGPU::Device::~Device(a1, a2);
    bmalloc::api::tzoneFree(v17, v18);
  }

  return v7 == 0;
}

atomic_ullong wgpuDeviceGetQueue(atomic_ullong *a1, WTF::StringImpl *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v14 = a1;
    MEMORY[0x22AA683C0](v5);
    a1 = v14;
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = a1;
    WTF::Lock::unlockSlow(v5);
    a1 = v13;
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v7 = a1[2];
  do
  {
    v8 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, a2);
      return v7;
    }

    v9 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v9, v8 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v8);
  if (v8 == 3)
  {
    WebGPU::Device::~Device(a1, a2);
    bmalloc::api::tzoneFree(v10, v11);
  }

  return v7;
}

uint64_t wgpuDeviceHasFeature(uint64_t a1, WTF::StringImpl *a2)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (!v4)
  {
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_19:
    v16 = a1;
    v17 = v5;
    v18 = a2;
    WTF::Lock::unlockSlow(v17);
    a2 = v18;
    a1 = v16;
    v7 = *(v16 + 252);
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_12;
  }

  v20 = a1;
  v19 = a2;
  MEMORY[0x22AA683C0](v5);
  a2 = v19;
  a1 = v20;
  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v7 = *(a1 + 252);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = *(a1 + 240);
  while (1)
  {
    v9 = *v8++;
    if (v9 == a2)
    {
      break;
    }

    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
  do
  {
LABEL_12:
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, a2);
      return v10;
    }

    v12 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Device::~Device(a1, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v10;
}

atomic_uint *wgpuDevicePopErrorScope(uint64_t a1, uint64_t a2, WTF::StringImpl *a3)
{
  while (1)
  {
    v6 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v7 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = *a1;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v9);
LABEL_6:
  v11 = WTF::fastMalloc(0x18);
  v12 = &unk_2838D2DB8;
  *v11 = &unk_2838D2DB8;
  v11[1] = a2;
  v11[2] = a3;
  if (*(a1 + 64))
  {
    v13 = 0;
LABEL_13:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    (*(*v11 + 16))(v11, v13, &v38);
    (*(*v11 + 8))(v11);
    result = v38;
    v38 = 0;
    if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_16;
    }

LABEL_15:
    result = WTF::StringImpl::destroy(result, v22);
    goto LABEL_16;
  }

  v14 = *(a1 + 44);
  if (!v14)
  {
    v13 = 4;
    goto LABEL_13;
  }

  v15 = *(a1 + 32);
  v16 = v15 + 32 * v14;
  v17 = *(v16 - 16);
  if (v17)
  {
    v18 = *(v16 - 32);
    a3 = *(v16 - 24);
    v19 = *(v16 - 8);
    v20 = v14 - 1;
    *(v15 + 32 * v20 + 8) = 0;
    *(a1 + 44) = v20;
    v21 = *(a1 + 440);
    if (!v21)
    {
LABEL_50:
      v38 = 0;
      (*(v12 + 2))(v11, 0, &v38);
      (*(*v11 + 8))(v11);
      result = v38;
      v38 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v22);
      }

LABEL_53:
      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v18 = 0;
    v19 = *(v16 - 8);
    *(a1 + 44) = v14 - 1;
    v21 = *(a1 + 440);
    if (!v21)
    {
      goto LABEL_50;
    }
  }

  v29 = 0;
  v30 = *(a1 + 432);
  atomic_compare_exchange_strong_explicit(v21, &v29, 1u, memory_order_acquire, memory_order_acquire);
  if (v29)
  {
    v37 = v21;
    MEMORY[0x22AA683C0]();
    v21 = v37;
  }

  if (*(v21 + 24))
  {
    ++*(v21 + 8);
    v31 = 1;
    atomic_compare_exchange_strong_explicit(v21, &v31, 0, memory_order_release, memory_order_relaxed);
    if (v31 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v30 = 0;
    v36 = 1;
    atomic_compare_exchange_strong_explicit(v21, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 == 1)
    {
LABEL_31:
      if (v30)
      {
        goto LABEL_32;
      }

LABEL_49:
      v12 = *v11;
      goto LABEL_50;
    }
  }

  WTF::Lock::unlockSlow(v21);
  if (!v30)
  {
    goto LABEL_49;
  }

LABEL_32:
  LOBYTE(v38) = 0;
  v40 = 0;
  if (v17)
  {
    LODWORD(v38) = v18;
    v39 = a3;
    v40 = 1;
    a3 = 0;
  }

  v41 = v19;
  v42 = v11;
  v32 = WTF::fastMalloc(0x30);
  *v32 = &unk_2838D2D40;
  *(v32 + 8) = 0;
  *(v32 + 24) = 0;
  if (v17)
  {
    *(v32 + 8) = v38;
    v33 = v39;
    v39 = 0;
    *(v32 + 16) = v33;
    *(v32 + 24) = 1;
  }

  *(v32 + 32) = v19;
  v42 = 0;
  v43 = v32;
  *(v32 + 40) = v11;
  WebGPU::Instance::scheduleWork(v30, &v43);
  result = v43;
  if (v43)
  {
    result = (*(*v43 + 8))(v43);
  }

  if (v17)
  {
    result = v39;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v39, v22);
      }
    }
  }

  do
  {
    v34 = v30[1];
    if ((v34 & 1) == 0)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Instance,(WTF::DestructionThread)0>(v30[1], v22);
      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_54;
    }

    v35 = v30[1];
    atomic_compare_exchange_strong_explicit(v30 + 1, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v35 != v34);
  if (v34 != 3)
  {
    goto LABEL_53;
  }

  result = (*(*v30 + 8))(v30);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_54:
  if (a3 && atomic_fetch_add_explicit(a3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = a3;
    goto LABEL_15;
  }

LABEL_16:
  while (1)
  {
    v24 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v25 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v25, v24 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      if (v24 == 3)
      {
        WebGPU::Device::~Device(a1, v22);

        return bmalloc::api::tzoneFree(v26, v27);
      }

      return result;
    }
  }

  v28 = *a1;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v28, v22);
}

void sub_22569EA74(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v18 && v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if (v17)
  {
    (*(*v17 + 8))(v17);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a10, v20);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDevicePushErrorScope(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  while (1)
  {
    v3 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v4 = *result;
    atomic_compare_exchange_strong_explicit(result, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
  v6 = *result;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*result, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v20 = a2;
    result = MEMORY[0x22AA683C0](v6);
    a2 = v20;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_7;
    }
  }

  v18 = v6;
  v19 = a2;
  result = WTF::Lock::unlockSlow(v18);
  a2 = v19;
LABEL_7:
  v21[0] = 0;
  v23 = 0;
  v24 = a2;
  v8 = *(v2 + 44);
  if (v8 == *(v2 + 40))
  {
    result = WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v2 + 32), v8 + 1, v21);
    v9 = *(v2 + 32) + 32 * *(v2 + 44);
    *v9 = 0;
    *(v9 + 16) = 0;
    if (*(result + 16) == 1)
    {
      *v9 = *result;
      v10 = *(result + 8);
      *(result + 8) = 0;
      *(v9 + 8) = v10;
      *(v9 + 16) = 1;
    }

    *(v9 + 24) = *(result + 24);
    v11 = v23;
    ++*(v2 + 44);
    if (v11)
    {
      result = v22;
      v22 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }
  }

  else
  {
    v12 = *(v2 + 32) + 32 * v8;
    *v12 = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = a2;
    ++*(v2 + 44);
  }

  while (1)
  {
    v13 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v14 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v14, v13 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      if (v13 == 3)
      {
        WebGPU::Device::~Device(v2, a2);

        return bmalloc::api::tzoneFree(v15, v16);
      }

      return result;
    }
  }

  v17 = *v2;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v17, a2);
}

void sub_22569EDEC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong *a10, uint64_t a11, WTF::StringImpl *a12, char a13)
{
  if (a13 == 1)
  {
    v14 = a12;
    a12 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }
    }
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceClearDeviceLostCallback(atomic_ullong *a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v3 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  v5 = *a1;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x22AA683C0](v5);
    ++*(v5 + 8);
    atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      goto LABEL_6;
    }

LABEL_20:
    WTF::Lock::unlockSlow(v5);
    goto LABEL_6;
  }

  ++*(v5 + 8);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    goto LABEL_20;
  }

LABEL_6:
  v14 = 0;
  v15 = a1;
  WebGPU::Device::setDeviceLostCallback(a1, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  v15 = 0;
  while (1)
  {
    v9 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v10 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v10, v9 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      if (v9 == 3)
      {
        WebGPU::Device::~Device(a1, v7);

        return bmalloc::api::tzoneFree(v11, v12);
      }

      return result;
    }
  }

  v13 = *a1;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v13, v7);
}

void sub_22569EF90(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceClearUncapturedErrorCallback(atomic_ullong *this, WTF::StringImpl *a2)
{
  while (1)
  {
    v3 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v4 = *this;
    atomic_compare_exchange_strong_explicit(this, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  v6 = *this;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v6);
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_6:
      result = this[3];
      if (!result)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v6);
  result = this[3];
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  v9 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
  v15 = v9;
  (*(*result + 16))(result, 0, &v15);
  v10 = v15;
  v15 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  result = this[3];
  this[3] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  do
  {
LABEL_12:
    v11 = *this;
    if ((*this & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*this, a2);
    }

    v12 = *this;
    atomic_compare_exchange_strong_explicit(this, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Device::~Device(this, a2);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void sub_22569F174(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a9, a2);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceSetDeviceLostCallback(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v7 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = *a1;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_6;
    }

LABEL_20:
    WTF::Lock::unlockSlow(v9);
    goto LABEL_6;
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    goto LABEL_20;
  }

LABEL_6:
  v20 = a1;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_2838D2DE0;
  v11[1] = a2;
  v11[2] = a3;
  v19 = v11;
  WebGPU::Device::setDeviceLostCallback(a1, &v19);
  result = v19;
  if (v19)
  {
    result = (*(*v19 + 8))(v19);
  }

  v20 = 0;
  while (1)
  {
    v14 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v15 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v15, v14 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      if (v14 == 3)
      {
        WebGPU::Device::~Device(a1, v12);

        return bmalloc::api::tzoneFree(v16, v17);
      }

      return result;
    }
  }

  v18 = *a1;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v18, v12);
}

void sub_22569F350(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 8))(a3);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v4);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void wgpuDeviceSetDeviceLostCallbackWithBlock(atomic_ullong *a1, void *a2)
{
  v15 = a2;
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_9;
    }
  }

  v5 = 0;
  v6 = *a1;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x22AA683C0](v6);
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    WTF::Lock::unlockSlow(v6);
  }

LABEL_9:
  v17 = a1;
  v8 = MEMORY[0x22AA68A80](v15);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_2838D2E08;
  v9[1] = v8;
  v16 = v9;
  WebGPU::Device::setDeviceLostCallback(a1, &v16);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = 0;
  do
  {
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v10);
      goto LABEL_17;
    }

    v12 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Device::~Device(a1, v10);
    bmalloc::api::tzoneFree(v13, v14);
  }

LABEL_17:
}

void sub_22569F51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, atomic_ullong *a12)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a12, v13);
  _Unwind_Resume(a1);
}

uint64_t wgpuDeviceSetUncapturedErrorCallback(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v7 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = *a1;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v9);
LABEL_6:
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_2838D2E30;
  v12[1] = a2;
  v12[2] = a3;
  result = a1[3];
  if (result)
  {
    v14 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    v20 = v14;
    (*(*result + 16))(result, 0, &v20);
    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    result = a1[3];
    a1[3] = v12;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  else
  {
    a1[3] = v12;
  }

  do
  {
    v16 = *a1;
    if ((*a1 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v11);
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v16);
  if (v16 == 3)
  {
    WebGPU::Device::~Device(a1, v11);
    return bmalloc::api::tzoneFree(v18, v19);
  }

  return result;
}

void sub_22569F754(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  (*(*v10 + 8))(v10);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a9, v13);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuDeviceSetLabel(atomic_ullong *a1, char *__s)
{
  while (1)
  {
    v4 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v5 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = *a1;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(*a1, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x22AA683C0](v7);
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
LABEL_6:
      if (!__s)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ++*(v7 + 8);
    atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  WTF::Lock::unlockSlow(v7);
  if (__s)
  {
LABEL_7:
    strlen(__s);
  }

LABEL_10:
  WTF::String::fromUTF8();
  result = v15;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v15, v9);
  }

  do
  {
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*a1, v9);
    }

    v12 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Device::~Device(a1, v9);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void sub_22569F910(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void WebGPU::GPUFrameCapture::captureFrame(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CD6CD8] sharedCaptureManager];
  if (([v2 isCapturing] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD6CD0]);
    [v3 setCaptureObject:v1];
    [v3 setDestination:2];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 temporaryDirectory];
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    v9 = [v6 stringWithFormat:@"%@.gputrace", v8];
    v10 = [v5 URLByAppendingPathComponent:v9];
    [v3 setOutputURL:v10];

    v14 = 0;
    [v2 startCaptureWithDescriptor:v3 error:&v14];
    v11 = v14;
    v12 = [v3 outputURL];
    v13 = [v12 absoluteString];
    WTFLogAlways();
  }
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::GPUFrameCapture::registerForFrameCapture(objc_object  {objcproto9MTLDevice}*)::{lambda(void)#1} &&>>()
{
  out_token = 0;
  v0 = MEMORY[0x277D85CD0];
  notify_register_dispatch("com.apple.WebKit.WebGPU.CaptureFrame", &out_token, MEMORY[0x277D85CD0], &__block_literal_global);
  v1 = 0;
  notify_register_dispatch("com.apple.WebKit.WebGPU.ToggleCaptureFirstFrame", &v1, v0, &__block_literal_global_51);
}

uint64_t ___ZZN6WebGPU15GPUFrameCapture23registerForFrameCaptureEPU19objcproto9MTLDevice11objc_objectENKUlvE_clEv_block_invoke(int a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  v3 = state64;
  if (state64 <= 1)
  {
    v3 = 1;
  }

  WebGPU::GPUFrameCapture::maxSubmitCallsToCapture = v3;
  WebGPU::GPUFrameCapture::enabled = 1;
  return result;
}

WebGPU::XRSubImage *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::XRSubImage>::deref(WebGPU::XRSubImage *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::XRSubImage::~XRSubImage(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Device::popErrorScope(WTF::CompletionHandler<void ()(WGPUErrorType,WTF::String &&)> &&)::$_0,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D2D40;
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::Device::popErrorScope(WTF::CompletionHandler<void ()(WGPUErrorType,WTF::String &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_2838D2D40;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 24) == 1)
  {
    v4 = *(this + 2);
    *(this + 2) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebGPU::Device::popErrorScope(WTF::CompletionHandler<void ()(WGPUErrorType,WTF::String &&)> &&)::$_0,void>::call(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v1 = *(a1 + 8);
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;
    (*(*v2 + 16))(v2, v1, a1 + 16);
    v3 = *(*v2 + 8);

    return v3(v2);
  }

  else
  {
    v7 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = 0;
    (*(*v5 + 16))(v5, 0, &v7);
    (*(*v5 + 8))(v5);
    result = v7;
    v7 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_2256A0070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v11 = v10;
  (*(*v11 + 8))(v11);
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_2256A00C8(_Unwind_Exception *a1)
{
  v2 = v1;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 32 * a1[3] <= a3)
  {
    v11 = a1[2];
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = a1[2];
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WebGPU::Device::ErrorScope,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = a2;
      result = WTF::fastMalloc((32 * a2));
      v2[2] = v5;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 0;
        v9 = 32 * v4;
        do
        {
          v10 = &v7[v8 / 4];
          *v10 = 0;
          *(v10 + 16) = 0;
          v11 = v3 + v8;
          if (*(v3 + v8 + 16) == 1)
          {
            *v10 = *v11;
            v12 = *(v11 + 1);
            *(v11 + 1) = 0;
            *(v10 + 1) = v12;
            *(v10 + 16) = 1;
            LOBYTE(v12) = v11[16];
            v10[6] = *(v11 + 6);
            if (v12)
            {
              result = *(v11 + 1);
              *(v11 + 1) = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v6);
                }
              }
            }
          }

          else
          {
            v10[6] = *(v11 + 6);
          }

          v8 += 32;
        }

        while (v9 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::indexBufferClampPipeline(MTLIndexType,unsigned long)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = objc_opt_new();
  [v3 setFastMathEnabled:1];
  v4 = *(v2 + 8);
  v5 = v1[1];
  if (v5)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  if (v5)
  {
    obj = *v5;
  }

  v7 = [v4 newLibraryWithSource:@"\n#define vertexCount 0\n#define primitiveRestart 1\n#define indexCountMinusOne 2\n    using namespace metal;\n    struct WebKitMTLDrawIndexedPrimitivesIndirectArguments { MTLDrawIndexedPrimitivesIndirectArguments args; unsigned lostOrOOBRead; };\n    [[vertex]] void vsUshortIndexClamp(device const ushort* indexBuffer [[buffer(0)]] options:device WebKitMTLDrawIndexedPrimitivesIndirectArguments& wkindexedOutput [[buffer(1)]] error:{const constant uint* data [[buffer(2)]], uint indexId [[vertex_id]])\n    {\n        device MTLDrawIndexedPrimitivesIndirectArguments& indexedOutput = wkindexedOutput.args;\n        ushort indexBufferValue = indexBuffer[min(indexId, data[indexCountMinusOne])];\n        ushort vertexIndex = data[primitiveRestart] + indexBufferValue;\n        BOOL negativeCondition = indexedOutput.baseVertex + data[primitiveRestart] < indexedOutput.baseVertex;\n        if (negativeCondition || (vertexIndex + indexedOutput.baseVertex >= data[vertexCount] + data[primitiveRestart])) {\n            indexedOutput.indexCount = 0u;\n            indexedOutput.instanceCount = 0u;\n            indexedOutput.indexStart = 0u;\n            indexedOutput.baseVertex = 0u;\n            indexedOutput.baseInstance = 0u;\n            wkindexedOutput.lostOrOOBRead = 1;\n        }\n    }\n    [[vertex]] void vsUintIndexClamp(device const uint* indexBuffer [[buffer(0)]], device WebKitMTLDrawIndexedPrimitivesIndirectArguments& wkindexedOutput [[buffer(1)]], const constant uint* data [[buffer(2)]], uint indexId [[vertex_id]])\n    {\n        device MTLDrawIndexedPrimitivesIndirectArguments& indexedOutput = wkindexedOutput.args;\n        uint indexBufferValue = indexBuffer[min(indexId, data[indexCountMinusOne])];\n        uint vertexIndex = data[primitiveRestart] + indexBufferValue;\n        BOOL negativeCondition = indexedOutput.baseVertex + data[primitiveRestart] < indexedOutput.baseVertex;\n        if (negativeCondition || (vertexIndex + indexedOutput.baseVertex >= data[vertexCount] + data[primitiveRestart])) {\n            indexedOutput.indexCount = 0u;\n            indexedOutput.instanceCount = 0u;\n            indexedOutput.indexStart = 0u;\n            indexedOutput.baseVertex = 0u;\n            indexedOutput.baseInstance = 0u;\n            wkindexedOutput.lostOrOOBRead = 1;\n        }\n    }", v3, p_obj}];
  if (v5)
  {
    objc_storeStrong(v5, obj);
  }

  if (*v1[1])
  {
    v12 = *v1[1];
    WTFLogAlways();
  }

  v8 = [v7 newFunctionWithName:{@"vsUintIndexClamp", v12}];
  v9 = qword_28159C8C8;
  qword_28159C8C8 = v8;

  v10 = [v7 newFunctionWithName:@"vsUshortIndexClamp"];
  v11 = qword_28159C8D0;
  qword_28159C8D0 = v10;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::indexedIndirectBufferClampPipeline(unsigned long)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = objc_opt_new();
  [v3 setFastMathEnabled:1];
  v4 = *(v2 + 8);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n    using namespace metal\n    struct WebKitMTLDrawPrimitivesIndirectArguments { MTLDrawPrimitivesIndirectArguments args; unsigned lostOrOOBRead; };\n    struct WebKitMTLDrawIndexedPrimitivesIndirectArguments { MTLDrawIndexedPrimitivesIndirectArguments args; unsigned lostOrOOBRead; };\n    [[vertex]] void vsIndexedIndirect(device const MTLDrawIndexedPrimitivesIndirectArguments& input [[buffer(0)]], device WebKitMTLDrawIndexedPrimitivesIndirectArguments& wkindexedOutput [[buffer(1)]], device WebKitMTLDrawPrimitivesIndirectArguments& wkoutput [[buffer(2)]], const constant uint* indexBufferCount [[buffer(3)]])\n    {\n        device MTLDrawPrimitivesIndirectArguments& output = wkoutput.args;\n        device MTLDrawIndexedPrimitivesIndirectArguments& indexedOutput = wkindexedOutput.args;\n        BOOL lostCondition = input.indexCount > %u || input.instanceCount > %u || input.indexCount * input.instanceCount > %u;\n        BOOL condition = lostCondition\n            || input.indexCount + input.indexStart > indexBufferCount[0]\n            || input.indexStart >= indexBufferCount[0]\n            || input.instanceCount + input.baseInstance > indexBufferCount[1]\n            || input.baseInstance >= indexBufferCount[1];\n\n        indexedOutput.indexCount = metal::select(input.indexCount, 0u, condition);\n        indexedOutput.instanceCount = input.instanceCount;\n        indexedOutput.indexStart = metal::select(input.indexStart, 0u, condition);\n        indexedOutput.baseVertex = input.baseVertex;\n        indexedOutput.baseInstance = input.baseInstance;\n\n        output.vertexCount = metal::select(input.indexCount, 0u, condition);\n        output.instanceCount = 1;\n        output.vertexStart = input.indexStart;\n        output.baseInstance = 0;\n        if (lostCondition)\n            wkoutput.lostOrOOBRead = 1;\n    }", *(v2 + 552), *(v2 + 552), *(v2 + 552)];;
  v6 = v1[1];
  if (v6)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  if (v6)
  {
    obj = *v6;
  }

  v8 = [v4 newLibraryWithSource:v5 options:v3 error:p_obj];
  if (v6)
  {
    objc_storeStrong(v6, obj);
  }

  if (*v1[1])
  {
    v11 = *v1[1];
    WTFLogAlways();
  }

  v9 = [v8 newFunctionWithName:{@"vsIndexedIndirect", v11}];
  v10 = qword_28159C8E0;
  qword_28159C8E0 = v9;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::indirectBufferClampPipeline(unsigned long)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = objc_opt_new();
  [v3 setFastMathEnabled:1];
  v4 = *(v2 + 8);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n    using namespace metal\n    struct WebKitMTLDrawPrimitivesIndirectArguments { MTLDrawPrimitivesIndirectArguments args; unsigned lostOrOOBRead; };\n    [[vertex]] void vsIndirect(device const MTLDrawPrimitivesIndirectArguments& input [[buffer(0)]], device WebKitMTLDrawPrimitivesIndirectArguments& wkoutput [[buffer(1)]], const constant uint* minCounts [[buffer(2)]])\n    {\n        device MTLDrawPrimitivesIndirectArguments& output = wkoutput.args;\n        BOOL lostCondition = input.vertexCount > %u || input.instanceCount > %u || input.vertexCount * input.instanceCount > %u;\n        BOOL vertexCondition = lostCondition\n            || input.vertexCount + input.vertexStart > minCounts[0]\n            || input.vertexStart >= minCounts[0];\n        BOOL instanceCondition = input.baseInstance + input.instanceCount > minCounts[1] || input.baseInstance >= minCounts[1];\n        auto minVertexCountMinusVertexStart = minCounts[0] > input.vertexStart ? (minCounts[0] - input.vertexStart) : 0u;\n        output.vertexCount = metal::select(input.vertexCount, minVertexCountMinusVertexStart, vertexCondition);\n        auto minInstanceCountMinusInstanceStart = minCounts[1] > input.baseInstance ? (minCounts[1] - input.baseInstance) : 0u;\n        output.instanceCount = metal::select(input.instanceCount, minInstanceCountMinusInstanceStart, instanceCondition);\n        output.vertexStart = input.vertexStart;\n        output.baseInstance = input.baseInstance;\n        if (lostCondition)\n            wkoutput.lostOrOOBRead = 1;\n    }", *(v2 + 552), *(v2 + 552), *(v2 + 552)];;
  v6 = v1[1];
  if (v6)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  if (v6)
  {
    obj = *v6;
  }

  v8 = [v4 newLibraryWithSource:v5 options:v3 error:p_obj];
  if (v6)
  {
    objc_storeStrong(v6, obj);
  }

  if (*v1[1])
  {
    v11 = *v1[1];
    WTFLogAlways();
  }

  v9 = [v8 newFunctionWithName:{@"vsIndirect", v11}];
  v10 = qword_28159C8F0;
  qword_28159C8F0 = v9;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebGPU::Device::icbCommandClampFunction(MTLIndexType)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = objc_opt_new();
  [v3 setFastMathEnabled:1];
  v4 = *(v2 + 8);
  objc_msgSend( MEMORY[0x277CCACA8],  "stringWithFormat:",  @"\n    using namespace metal;\n    struct ICBContainer {\n        device uint* outOfBoundsRead [[ id(0) ]];\n        command_buffer commandBuffer [[ id(1) ]];\n    };\n    struct IndexDataUshort {\n        uint64_t renderCommand { 0 };\n        uint32_t minVertexCount { UINT_MAX };\n        uint32_t minInstanceCount { UINT_MAX };\n        device ushort* indexBuffer;\n        uint32_t indexBufferElementCountMinusOne;\n        uint32_t indexCount { 0 };\n        uint32_t instanceCount { 0 };\n        uint32_t firstIndex { 0 };\n        uint32_t baseVertex { 0 };\n        uint32_t baseInstance { 0 };\n        primitive_type primitiveType { primitive_type::triangle };\n    };\n    struct IndexDataUint {\n        uint64_t renderCommand { 0 };\n        uint32_t minVertexCount { UINT_MAX };\n        uint32_t minInstanceCount { UINT_MAX };\n        device uint* indexBuffer;\n        uint32_t indexBufferElementCountMinusOne;\n        uint32_t indexCount { 0 };\n        uint32_t instanceCount { 0 };\n        uint32_t firstIndex { 0 };\n        uint32_t baseVertex { 0 };\n        uint32_t baseInstance { 0 };\n        primitive_type primitiveType { primitive_type::triangle };\n    };\n\n    static_assert(sizeof(primitive_type) == sizeof(uint32_t), API assumes primitive type is sizeof uint32_t);\n    static_assert(sizeof(IndexDataUshort) == %lu, sizeof(IndexDataUshort) in shader mismatches the API size);\n    static_assert(sizeof(IndexDataUint) == %lu, sizeof(IndexDataUint) in shader mismatches the API size);\n\n    [[vertex]] void vsICB(device const IndexDataUint* indexData [[buffer(0)]],\n        device ICBContainer *icb_container [[buffer(1)]],\n        uint indexId [[vertex_id]])\n    {\n        device const IndexDataUint& data = *indexData;\n        uint32_t k = (data.primitiveType == primitive_type::triangle_strip || data.primitiveType == primitive_type::line_strip) ? 1 : 0;\n        uint32_t indexBufferValue = data.indexBuffer[min(data.indexBufferElementCountMinusOne, indexId + data.firstIndex)];\n        uint32_t vertexIndex = indexBufferValue + k;\n        BOOL negativeCondition = data.baseVertex + k < data.baseVertex;\n        if (negativeCondition || (data.baseVertex + vertexIndex >= data.minVertexCount + k)) {\n            *icb_container->outOfBoundsRead = 1;\n            render_command cmd(icb_container->commandBuffer, data.renderCommand);\n            cmd.draw_indexed_primitives(data.primitiveType,\n                0u,\n                data.indexBuffer,\n                data.instanceCount,\n                data.baseVertex,\n                data.baseInstance);\n        }\n    }\n\n    [[vertex]] void vsUshortICB(device const IndexDataUshort* indexData [[buffer(0)]],\n        device ICBContainer *icb_container [[buffer(1)]],\n        uint indexId [[vertex_id]])\n    {\n        device const IndexDataUshort& data = *indexData;\n        uint32_t k = (data.primitiveType == primitive_type::triangle_strip || data.primitiveType == primitive_type::line_strip) ? 1 : 0;\n        ushort indexBufferValue = data.indexBuffer[min(data.indexBufferElementCountMinusOne, indexId + data.firstIndex)];\n        ushort vertexIndex = indexBufferValue + k;\n        BOOL negativeCondition = data.baseVertex + k < data.baseVertex;\n        if (negativeCondition || (data.baseVertex + vertexIndex >= data.minVertexCount + k)) {\n            *icb_container->outOfBoundsRead = 1;\n            render_command cmd(icb_container->commandBuffer, data.renderCommand);\n            cmd.draw_indexed_primitives(data.primitiveType,\n                0u,\n                data.indexBuffer,\n                data.instanceCount,\n                data.baseVertex,\n                data.baseInstance);\n        }\n\n    }",
    56,
  v5 = 56);
  v6 = v1[1];
  if (v6)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  if (v6)
  {
    obj = *v6;
  }

  v8 = [v4 newLibraryWithSource:v5 options:v3 error:p_obj];
  if (v6)
  {
    objc_storeStrong(v6, obj);
  }

  if (*v1[1])
  {
    v13 = *v1[1];
    WTFLogAlways();
  }

  v9 = [v8 newFunctionWithName:{@"vsICB", v13}];
  v10 = qword_28159C900;
  qword_28159C900 = v9;

  v11 = [v8 newFunctionWithName:@"vsUshortICB"];
  v12 = qword_28159C908;
  qword_28159C908 = v11;
}

uint64_t WTF::Detail::CallableWrapper<wgpuDeviceCreateComputePipelineAsync(WGPUDeviceImpl *,WGPUComputePipelineDescriptor const*,void (*)(WGPUCreatePipelineAsyncStatus,WGPUComputePipelineImpl *,WTF::String &&,void *),WTF::String &&)::$_0,void,WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::ComputePipeline,WTF::RawPtrTraits<WebGPU>,WTF::DefaultRefDerefTraits<WebGPU>> &&,WTF::String &>::call(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a3;
  *a3 = 0;
  return v7(a2, v8, a4, v6);
}

uint64_t WTF::Detail::CallableWrapper<wgpuDeviceCreateRenderPipelineAsync(WGPUDeviceImpl *,WGPURenderPipelineDescriptor const*,void (*)(WGPUCreatePipelineAsyncStatus,WGPURenderPipelineImpl *,WTF::String &&,void *),WTF::String &&)::$_0,void,WGPUCreatePipelineAsyncStatus,WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU>,WTF::DefaultRefDerefTraits<WebGPU>> &&,WTF::String &>::call(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a3;
  *a3 = 0;
  return v7(a2, v8, a4, v6);
}

uint64_t WTF::Detail::CallableWrapper<wgpuDevicePopErrorScope(WGPUDeviceImpl *,void (*)(WGPUErrorType,char const*,void *),void *)::$_0,void,WGPUErrorType,WTF::String &&>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  WTF::String::utf8();
  if (v8)
  {
    v5 = v8 + 16;
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5, *(a1 + 16));
  result = v8;
  if (v8)
  {
    if (*v8 == 1)
    {
      return WTF::fastFree(v8, v6);
    }

    else
    {
      --*v8;
    }
  }

  return result;
}

void sub_2256A0904(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<wgpuDeviceSetDeviceLostCallback(WGPUDeviceImpl *,void (*)(WGPUDeviceLostReason,char const*,void *),void *)::$_0,void,WGPUDeviceLostReason,WTF::String &&>::call(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    WTF::String::utf8();
    if (v7)
    {
      v5 = v7 + 16;
    }

    else
    {
      v5 = 0;
    }

    v2(a2, v5, *(v4 + 16));
    result = v7;
    if (v7)
    {
      if (*v7 == 1)
      {
        return WTF::fastFree(v7, v6);
      }

      else
      {
        --*v7;
      }
    }
  }

  return result;
}

void sub_2256A09DC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<wgpuDeviceSetDeviceLostCallbackWithBlock(WGPUDeviceImpl *,void({block_pointer})(WGPUDeviceLostReason,char const*))::$_0,void,WGPUDeviceLostReason,WTF::String &&>::~CallableWrapper(id *a1)
{

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<wgpuDeviceSetDeviceLostCallbackWithBlock(WGPUDeviceImpl *,void({block_pointer})(WGPUDeviceLostReason,char const*))::$_0,void,WGPUDeviceLostReason,WTF::String &&>::call(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    WTF::String::utf8();
    (*(*(v1 + 8) + 16))();
    result = v3;
    if (v3)
    {
      if (*v3 == 1)
      {
        return WTF::fastFree(v3, v2);
      }

      else
      {
        --*v3;
      }
    }
  }

  return result;
}

void sub_2256A0B10(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<wgpuDeviceSetUncapturedErrorCallback(WGPUDeviceImpl *,void (*)(WGPUErrorType,char const*,void *),void *)::$_0,void,WGPUErrorType,WTF::String &&>::call(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    WTF::String::utf8();
    if (v7)
    {
      v5 = v7 + 16;
    }

    else
    {
      v5 = 0;
    }

    v2(a2, v5, *(v4 + 16));
    result = v7;
    if (v7)
    {
      if (*v7 == 1)
      {
        return WTF::fastFree(v7, v6);
      }

      else
      {
        --*v7;
      }
    }
  }

  return result;
}

void sub_2256A0BE8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

double WebGPU::Device::createExternalTexture@<D0>(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1[1])
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    if (WebGPU::ExternalTexture::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ExternalTexture::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebGPU::ExternalTexture::operatorNewSlow(0x50);
    }

    v8 = NonCompact;
    WebGPU::ExternalTexture::ExternalTexture(NonCompact, v5, v6, a1);
    *a3 = v8;
  }

  else
  {
    if (WebGPU::ExternalTexture::s_heapRef)
    {
      v10 = bmalloc::api::tzoneAllocateNonCompact(WebGPU::ExternalTexture::s_heapRef, a2);
    }

    else
    {
      v10 = WebGPU::ExternalTexture::operatorNewSlow(0x50);
    }

    v11 = v10;
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 16) = 0;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_15;
      }
    }

    v14 = 0;
    v15 = *a1;
    v16 = 1;
    atomic_compare_exchange_strong_explicit(*a1, &v14, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_15:
    *(v11 + 32) = a1;
    *(v11 + 40) = 0;
    result = 0.0;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *a3 = v11;
  }

  return result;
}

void sub_2256A0D54(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WeakPtr = WTF::RefCountedAndCanMakeWeakPtr<WebGPU::ExternalTexture>::~RefCountedAndCanMakeWeakPtr(v2, a2);
  bmalloc::api::tzoneFree(WeakPtr, v6);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::ExternalTexture::ExternalTexture(uint64_t a1, void *cf, int a3, atomic_ullong *a4)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 24) = a3;
  while (1)
  {
    v8 = *a4;
    if ((*a4 & 1) == 0)
    {
      break;
    }

    v9 = *a4;
    atomic_compare_exchange_strong_explicit(a4, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
  v11 = *a4;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(*a4, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x22AA683C0](v11);
  }

  ++*(v11 + 8);
  atomic_compare_exchange_strong_explicit(v11, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    WTF::Lock::unlockSlow(v11);
  }

LABEL_11:
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  WebGPU::ExternalTexture::update(a1, cf);
  return a1;
}

void sub_2256A0E80(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::ExternalTexture>::~RefCountedAndCanMakeWeakPtr(v2, a2);
  _Unwind_Resume(a1);
}

void WebGPU::ExternalTexture::update(WebGPU::ExternalTexture *this, CVPixelBufferRef pixelBuffer)
{
  if (!CVPixelBufferGetIOSurface(pixelBuffer))
  {
    goto LABEL_19;
  }

  v5 = *(this + 4);
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
    ++*(v9 + 8);
    atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 == 1)
    {
      goto LABEL_8;
    }

LABEL_30:
    WTF::Lock::unlockSlow(v9);
    goto LABEL_8;
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    goto LABEL_30;
  }

LABEL_8:
  WebGPU::Device::webProcessID(v5, v4, &v17);
  do
  {
    v11 = *v5;
    if ((*v5 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, v4);
      if (v18 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v12 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v12, v11 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v12 != v11);
  if (v11 == 3)
  {
    WebGPU::Device::~Device(v5, v4);
    bmalloc::api::tzoneFree(v13, v14);
  }

  if (v18 == 1)
  {
LABEL_16:
    if (!v17 || (IOSurfaceSetOwnershipIdentity(), (v18 & 1) != 0))
    {
      WTF::MachSendRight::~MachSendRight(&v17);
    }
  }

LABEL_19:
  if (pixelBuffer)
  {
    CFRetain(pixelBuffer);
  }

  v15 = *(this + 2);
  *(this + 2) = pixelBuffer;
  if (v15)
  {
    CFRelease(v15);
  }

  if (*(this + 18))
  {
    if (*(this + 19))
    {
      *(this + 19) = 0;
    }

    v16 = *(this + 8);
    if (v16)
    {
      *(this + 8) = 0;
      *(this + 18) = 0;
      WTF::fastFree(v16, v4);
    }
  }

  *(this + 40) = 0;
}

void sub_2256A1090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, __int16 a11, char a12, char a13)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebGPU::ExternalTexture>::~RefCountedAndCanMakeWeakPtr(uint64_t result, void *a2)
{
  if (*(result + 8) == 1)
  {
    v2 = *result;
    if (*result)
    {
      *(v2 + 8) = 0;
      *result = 0;
      add = atomic_fetch_add(v2, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(add, v2);
        v4 = result;
        WTF::fastFree(v2, a2);
        return v4;
      }
    }
  }

  else
  {
    result = 191;
    __break(0xC471u);
  }

  return result;
}

void WebGPU::ExternalTexture::~ExternalTexture(WebGPU::ExternalTexture *this, void *a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v3, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    do
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v5, v4);
        goto LABEL_9;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    if (v6 == 3)
    {
      WebGPU::Device::~Device(v5, v4);
      bmalloc::api::tzoneFree(v8, v9);
    }
  }

LABEL_9:
  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  if (*(this + 2) == 1)
  {
    v11 = *this;
    if (*this)
    {
      *(v11 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11);
        WTF::fastFree(v11, v4);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebGPU::ExternalTexture::setCommandEncoder(WebGPU::ExternalTexture *this, WebGPU::CommandEncoder *a2)
{
  v4 = *(a2 + 25);
  v10 = v4;
  v5 = *(this + 19);
  if (v5 != *(this + 18))
  {
    *(*(this + 8) + 8 * v5) = v4;
    *(this + 19) = v5 + 1;
    v8 = *(this + 6);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 64, v5 + 1, &v10);
  v7 = *(this + 19);
  *(*(this + 8) + 8 * v7) = *v6;
  *(this + 19) = v7 + 1;
  v8 = *(this + 6);
  if (v8)
  {
LABEL_5:
    [*(a2 + 12) addObject:v8];
  }

LABEL_6:

  v9 = *(this + 7);
  if (v9)
  {
    [*(a2 + 12) addObject:v9];
  }

  if (*(this + 40) == 1)
  {

    WebGPU::CommandEncoder::makeSubmitInvalid(a2, 0);
  }
}

void WebGPU::ExternalTexture::updateExternalTextures(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  *(a1 + 48) = v5;
  v9 = v5;

  v8 = *(a1 + 56);
  *(a1 + 56) = v6;
}

WebGPU::ExternalTexture *wgpuExternalTextureRelease(WebGPU::ExternalTexture *result, void *a2)
{
  if (*(result + 2) == 1)
  {
    WebGPU::ExternalTexture::~ExternalTexture(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

void wgpuExternalTextureDestroy(WebGPU::ExternalTexture *this, void *a2)
{
  ++*(this + 2);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 40) = 1;
  v4 = *(this + 19);
  if (v4)
  {
    v5 = *(this + 8);
    v6 = &v5[v4];
    do
    {
      v9 = *v5;
      if (*v5 == -2 || v9 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256A1618);
      }

      v10 = *(*(this + 4) + 480);
      if (v10)
      {
        v11 = *(v10 - 8);
        v12 = (v9 + ~(v9 << 32)) ^ ((v9 + ~(v9 << 32)) >> 22);
        v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
        v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
        v15 = v11 & ((v14 >> 31) ^ v14);
        v16 = *(v10 + 16 * v15);
        if (v16 == v9)
        {
LABEL_14:
          v18 = *(v10 + 16 * v15 + 8);
          if (v18)
          {
            ++*(v18 + 4);
            WebGPU::CommandEncoder::makeSubmitInvalid(v18, 0);
            if (*(v18 + 4) == 1)
            {
              WebGPU::CommandEncoder::~CommandEncoder(v18);
              bmalloc::api::tzoneFree(v7, v8);
            }

            else
            {
              --*(v18 + 4);
            }
          }
        }

        else
        {
          v17 = 1;
          while (v16 != -1)
          {
            v15 = (v15 + v17) & v11;
            v16 = *(v10 + 16 * v15);
            ++v17;
            if (v16 == v9)
            {
              goto LABEL_14;
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  if (*(this + 18))
  {
    if (*(this + 19))
    {
      *(this + 19) = 0;
    }

    v19 = *(this + 8);
    if (v19)
    {
      *(this + 8) = 0;
      *(this + 18) = 0;
      WTF::fastFree(v19, a2);
    }
  }

  if (*(this + 2) == 1)
  {
    WebGPU::ExternalTexture::~ExternalTexture(this, a2);

    bmalloc::api::tzoneFree(v20, v21);
  }

  else
  {
    --*(this + 2);
  }
}

void sub_2256A163C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256A1650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::RefCounted<WebGPU::CommandEncoder>::deref(v2);
  WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

uint64_t wgpuExternalTextureUndestroy(uint64_t this, void *a2)
{
  v2 = this;
  v3 = *(this + 8);
  *(this + 8) = v3 + 1;
  if (*(this + 72))
  {
    if (*(this + 76))
    {
      *(this + 76) = 0;
    }

    this = *(this + 64);
    if (this)
    {
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      this = WTF::fastFree(this, a2);
      v3 = *(v2 + 8) - 1;
    }
  }

  *(v2 + 40) = 0;
  if (v3)
  {
    *(v2 + 8) = v3;
  }

  else
  {
    WebGPU::ExternalTexture::~ExternalTexture(v2, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return this;
}

void sub_2256A1708(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void wgpuExternalTextureUpdate(WebGPU::ExternalTexture *a1, __CVBuffer *a2)
{
  ++*(a1 + 2);
  WebGPU::ExternalTexture::update(a1, a2);
  if (*(a1 + 2) == 1)
  {
    WebGPU::ExternalTexture::~ExternalTexture(a1, v3);

    bmalloc::api::tzoneFree(v4, v5);
  }

  else
  {
    --*(a1 + 2);
  }
}

void sub_2256A1790(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::ExternalTexture,WTF::RawPtrTraits<WebGPU::ExternalTexture>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

_DWORD *WTF::RefCounted<WebGPU::CommandEncoder>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder((result - 4));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WebGPU::isShaderValidationEnabled(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6WebGPU25isShaderValidationEnabledEPU19objcproto9MTLDevice11objc_object_block_invoke;
  block[3] = &unk_278566308;
  v7 = v1;
  v2 = qword_28159C928;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&qword_28159C928, block);
  }

  v4 = _MergedGlobals_2;

  return v4;
}

void ___ZN6WebGPU25isShaderValidationEnabledEPU19objcproto9MTLDevice11objc_object_block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  if ([v1 containsString:@"Debug"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"LegacySV"))
  {
    _MergedGlobals_2 = 1;
LABEL_4:
    WTFLogAlways();
    goto LABEL_5;
  }

  _MergedGlobals_2 = [v1 containsString:@"CaptureMTLDevice"];
  if (_MergedGlobals_2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

BOOL WebGPU::anyLimitIsBetterThan(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*(a1 + 4) > *(a2 + 4))
  {
    return 1;
  }

  if (*(a1 + 8) > *(a2 + 8))
  {
    return 1;
  }

  if (*(a1 + 12) > *(a2 + 12))
  {
    return 1;
  }

  if (*(a1 + 16) > *(a2 + 16))
  {
    return 1;
  }

  if (*(a1 + 24) > *(a2 + 24))
  {
    return 1;
  }

  if (*(a1 + 28) > *(a2 + 28))
  {
    return 1;
  }

  if (*(a1 + 32) > *(a2 + 32))
  {
    return 1;
  }

  if (*(a1 + 36) > *(a2 + 36))
  {
    return 1;
  }

  if (*(a1 + 40) > *(a2 + 40))
  {
    return 1;
  }

  if (*(a1 + 44) > *(a2 + 44))
  {
    return 1;
  }

  if (*(a1 + 48) > *(a2 + 48))
  {
    return 1;
  }

  if (*(a1 + 52) > *(a2 + 52))
  {
    return 1;
  }

  if (*(a1 + 56) > *(a2 + 56))
  {
    return 1;
  }

  if (*(a1 + 64) > *(a2 + 64))
  {
    return 1;
  }

  if (*(a1 + 72) < *(a2 + 72))
  {
    return 1;
  }

  if (*(a1 + 76) < *(a2 + 76))
  {
    return 1;
  }

  if (*(a1 + 80) > *(a2 + 80))
  {
    return 1;
  }

  if (*(a1 + 88) > *(a2 + 88))
  {
    return 1;
  }

  if (*(a1 + 96) > *(a2 + 96))
  {
    return 1;
  }

  if (*(a1 + 100) > *(a2 + 100))
  {
    return 1;
  }

  if (*(a1 + 104) > *(a2 + 104))
  {
    return 1;
  }

  if (*(a1 + 108) > *(a2 + 108))
  {
    return 1;
  }

  if (*(a1 + 112) > *(a2 + 112))
  {
    return 1;
  }

  if (*(a1 + 116) > *(a2 + 116))
  {
    return 1;
  }

  if (*(a1 + 120) > *(a2 + 120))
  {
    return 1;
  }

  if (*(a1 + 124) > *(a2 + 124))
  {
    return 1;
  }

  if (*(a1 + 128) > *(a2 + 128))
  {
    return 1;
  }

  if (*(a1 + 132) > *(a2 + 132))
  {
    return 1;
  }

  if (*(a1 + 136) > *(a2 + 136))
  {
    return 1;
  }

  if (*(a1 + 140) > *(a2 + 140))
  {
    return 1;
  }

  if (*(a1 + 144) > *(a2 + 144))
  {
    return 1;
  }

  if (*(a1 + 148) > *(a2 + 148))
  {
    return 1;
  }

  if (*(a1 + 152) <= *(a2 + 152))
  {
    return *(a1 + 156) > *(a2 + 156);
  }

  return 1;
}

void WebGPU::hardwareCapabilities(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (qword_28159C930 != -1)
  {
    dispatch_once(&qword_28159C930, &__block_literal_global_0);
  }

  LOBYTE(v101[0]) = 0;
  v114 = 0;
  if (WebGPU::isPhysicalHardware(void)::result != 1)
  {
LABEL_88:

    if (v114 == 1)
    {
      v115 = xmmword_225881A80;
      v116 = xmmword_225881A70;
      v117 = xmmword_225881A60;
      v119 = xmmword_225881A90;
      v118 = 0xC00000004;
      v120 = 0x10000000100;
      v121 = 8;
      v122 = 0x10000000;
      v123 = xmmword_225881AE0;
      v124 = xmmword_225881AD0;
      v125 = xmmword_225881AC0;
      v126 = xmmword_225881AB0;
      if (WebGPU::anyLimitIsBetterThan(&v115, v101))
      {
        *a2 = 0;
        v91 = *(&v112 + 1);
        *(a2 + 208) = 0;

        v93 = v109;
        if (!v109)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      *(a2 + 160) = v109;
      *(a2 + 176) = v111;
      *(a2 + 200) = v113[0];
      v94 = v106;
      *(a2 + 96) = v105;
      *(a2 + 112) = v94;
      v95 = v108;
      *(a2 + 128) = v107;
      *(a2 + 144) = v95;
      v96 = v102;
      *(a2 + 32) = v101[2];
      *(a2 + 48) = v96;
      v97 = v104;
      *(a2 + 64) = v103;
      *(a2 + 80) = v97;
      v98 = v101[1];
      *a2 = v101[0];
      *(a2 + 16) = v98;
      v99 = v110;
      v109 = 0;
      v110 = 0;
      *(a2 + 168) = v99;
      v100 = v112;
      v112 = 0uLL;
      *(a2 + 203) = *(v113 + 3);
      *(a2 + 184) = v100;
      *(a2 + 208) = 1;

      v93 = v109;
      if (v109)
      {
LABEL_94:
        v109 = 0;
        LODWORD(v110) = 0;
        WTF::fastFree(v93, v92);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 208) = 0;
    }

LABEL_95:

    return;
  }

  v133 = v101;
  if ([v3 supportsFamily:1004])
  {
    v4 = v3;
    WebGPU::baseCapabilities(&v134, v4);
    *&v137[4] = 1;
    v5 = v4;
    block = MEMORY[0x277D85DD0];
    v139 = 3221225472;
    v140 = ___ZN6WebGPU25isShaderValidationEnabledEPU19objcproto9MTLDevice11objc_object_block_invoke;
    v141 = &unk_278566308;
    v142 = v5;
    if (qword_28159C928 != -1)
    {
      dispatch_once(&qword_28159C928, &block);
    }

    v6 = _MergedGlobals_2;

    *v137 = -(v6 ^ 1);
    WebGPU::baseFeatures(&block, v5, &v134);
    v143[0] = 6;
    v7 = v139;
    v8 = HIDWORD(v139);
    if (HIDWORD(v139) == v139)
    {
      v9 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&block, HIDWORD(v139) + 1, v143);
      v8 = HIDWORD(v139);
      v10 = block;
      *(block + HIDWORD(v139)) = *v9;
      v7 = v139;
      v11 = (v8 + 1);
      HIDWORD(v139) = v11;
      v143[0] = 7;
      if (v11 != v139)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = block;
      *(block + HIDWORD(v139)) = 6;
      v11 = (v8 + 1);
      HIDWORD(v139) = v11;
      v143[0] = 7;
      if (v11 != v7)
      {
LABEL_9:
        v12 = v8 + 2;
        *(v10 + 4 * v11) = 7;
        HIDWORD(v139) = v12;
        v143[0] = 8;
        v13 = v12;
        if (v12 == v7)
        {
LABEL_10:
          v14 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&block, v13 + 1, v143);
          v12 = HIDWORD(v139);
          v10 = block;
          *(block + HIDWORD(v139)) = *v14;
          goto LABEL_14;
        }

LABEL_13:
        *(v10 + 4 * v13) = 8;
LABEL_14:
        v16 = 126 - 2 * __clz(v12 + 1);
        HIDWORD(v139) = v12 + 1;
        if (v12 == -1)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(v10, (v10 + 4 * (v12 + 1)), v17, 1);
        v115 = xmmword_225881A80;
        v116 = xmmword_225881A70;
        v117 = xmmword_225881A60;
        v119 = xmmword_225881A90;
        v118 = 0xC00000004;
        v120 = 0x10000000100;
        v121 = 8;
        v123 = xmmword_225881AE0;
        v124 = xmmword_225881AD0;
        v125 = xmmword_225881AC0;
        v126 = xmmword_225881AB0;
        v129 = v134;
        v18 = block;
        v122 = 0x10000000;
        v127 = block;
        v128 = v139;
        v19 = v135;
        v130 = v19;
        v20 = v136;
        v131 = v20;
        v132[0] = *v137;
        *(v132 + 3) = *&v137[3];

        WebGPU::rawHardwareCapabilities(objc_object  {objcproto9MTLDevice}*)::$_0::operator()(&v133, &v115);
        if (v18)
        {
          WTF::fastFree(v18, v21);
        }

        goto LABEL_19;
      }
    }

    v15 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&block, v11 + 1, v143);
    v12 = HIDWORD(v139) + 1;
    v10 = block;
    *(block + HIDWORD(v139)) = *v15;
    HIDWORD(v139) = v12;
    v143[0] = 8;
    v13 = v12;
    if (v12 == v139)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_19:
  if (![v3 supportsFamily:1005])
  {
    goto LABEL_32;
  }

  v22 = v3;
  WebGPU::baseCapabilities(&block, v22);
  WORD2(v141) = 1;
  WebGPU::baseFeatures(&v134, v22, &block);
  v143[0] = 6;
  v23 = v135;
  v24 = HIDWORD(v135);
  if (HIDWORD(v135) == v135)
  {
    v25 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, HIDWORD(v135) + 1, v143);
    v24 = HIDWORD(v135);
    v26 = v134;
    *(v134 + HIDWORD(v135)) = *v25;
    v23 = v135;
    v27 = (v24 + 1);
    HIDWORD(v135) = v27;
    v143[0] = 7;
    if (v27 != v135)
    {
      goto LABEL_22;
    }

LABEL_25:
    v31 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, v27 + 1, v143);
    v28 = HIDWORD(v135) + 1;
    v26 = v134;
    *(v134 + HIDWORD(v135)) = *v31;
    HIDWORD(v135) = v28;
    v143[0] = 8;
    v29 = v28;
    if (v28 == v135)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v26 = v134;
  *(v134 + HIDWORD(v135)) = 6;
  v27 = (v24 + 1);
  HIDWORD(v135) = v27;
  v143[0] = 7;
  if (v27 == v23)
  {
    goto LABEL_25;
  }

LABEL_22:
  v28 = v24 + 2;
  *(v26 + 4 * v27) = 7;
  HIDWORD(v135) = v28;
  v143[0] = 8;
  v29 = v28;
  if (v28 == v23)
  {
LABEL_23:
    v30 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, v29 + 1, v143);
    v28 = HIDWORD(v135);
    v26 = v134;
    *(v134 + HIDWORD(v135)) = *v30;
    goto LABEL_27;
  }

LABEL_26:
  *(v26 + 4 * v29) = 8;
LABEL_27:
  v32 = 126 - 2 * __clz(v28 + 1);
  HIDWORD(v135) = v28 + 1;
  if (v28 == -1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(v26, (v26 + 4 * (v28 + 1)), v33, 1);
  v115 = xmmword_225881A80;
  v116 = xmmword_225881A70;
  v117 = xmmword_225881A60;
  v119 = xmmword_225881A90;
  v118 = 0xC00000004;
  v120 = 0x10000000100;
  v121 = 8;
  v123 = xmmword_225881AE0;
  v124 = xmmword_225881AD0;
  v125 = xmmword_225881AC0;
  v126 = xmmword_225881AB0;
  v129 = block;
  v34 = v134;
  v122 = 0x10000000;
  v127 = v134;
  v128 = v135;
  v35 = v139;
  v130 = v35;
  v36 = v140;
  v131 = v36;
  v132[0] = v141;
  *(v132 + 3) = *(&v141 + 3);

  WebGPU::rawHardwareCapabilities(objc_object  {objcproto9MTLDevice}*)::$_0::operator()(&v133, &v115);
  if (v34)
  {
    WTF::fastFree(v34, v37);
  }

LABEL_32:
  if (![v3 supportsFamily:1006])
  {
    goto LABEL_49;
  }

  v38 = v3;
  WebGPU::baseCapabilities(&block, v38);
  WORD2(v141) = 1;
  BYTE6(v141) = 0;
  WebGPU::baseFeatures(&v134, v38, &block);
  v143[0] = 6;
  v39 = v135;
  v40 = HIDWORD(v135);
  if (HIDWORD(v135) == v135)
  {
    v41 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, HIDWORD(v135) + 1, v143);
    v40 = HIDWORD(v135);
    v42 = v134;
    *(v134 + HIDWORD(v135)) = *v41;
    v39 = v135;
    v43 = (v40 + 1);
    HIDWORD(v135) = v43;
    v143[0] = 7;
    if (v43 != v135)
    {
      goto LABEL_35;
    }

LABEL_38:
    v47 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, v43 + 1, v143);
    v44 = HIDWORD(v135) + 1;
    v42 = v134;
    *(v134 + HIDWORD(v135)) = *v47;
    HIDWORD(v135) = v44;
    v143[0] = 8;
    v45 = v44;
    if (v44 == v135)
    {
      goto LABEL_36;
    }

LABEL_39:
    *(v42 + 4 * v45) = 8;
    goto LABEL_40;
  }

  v42 = v134;
  *(v134 + HIDWORD(v135)) = 6;
  v43 = (v40 + 1);
  HIDWORD(v135) = v43;
  v143[0] = 7;
  if (v43 == v39)
  {
    goto LABEL_38;
  }

LABEL_35:
  v44 = v40 + 2;
  *(v42 + 4 * v43) = 7;
  HIDWORD(v135) = v44;
  v143[0] = 8;
  v45 = v44;
  if (v44 != v39)
  {
    goto LABEL_39;
  }

LABEL_36:
  v46 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, v45 + 1, v143);
  v44 = HIDWORD(v135);
  v42 = v134;
  *(v134 + HIDWORD(v135)) = *v46;
LABEL_40:
  v48 = 126 - 2 * __clz(v44 + 1);
  HIDWORD(v135) = v44 + 1;
  if (v44 == -1)
  {
    v49 = 0;
  }

  else
  {
    v49 = v48;
  }

  std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(v42, (v42 + 4 * (v44 + 1)), v49, 1);
  v115 = xmmword_225881D80;
  v116 = xmmword_225881D90;
  v117 = xmmword_225881DA0;
  v118 = 0x2C0000002CLL;
  v119 = 0uLL;
  v120 = 0x2000000020;
  v121 = 12;
  v50 = [v38 maxBufferLength];
  v51 = v50 / 0xA;
  v123 = xmmword_225881DB0;
  v124 = xmmword_225881DC0;
  if (v50 / 0xA <= 0x10000000)
  {
    v51 = 0x10000000;
  }

  v52 = v51 & 0x1FFFFFFFFFFFFFFCLL;
  v125 = xmmword_225881DD0;
  if (v50 >= 0x4FFFFFFF6)
  {
    v52 = 2147483644;
  }

  v122 = v52;
  *&v126 = -1;
  *(&v126 + 1) = -1;
  v53 = v134;
  v127 = v134;
  v128 = v135;
  v129 = block;
  v54 = v139;
  v130 = v54;
  v55 = v140;
  v131 = v55;
  v132[0] = v141;
  *(v132 + 3) = *(&v141 + 3);

  WebGPU::rawHardwareCapabilities(objc_object  {objcproto9MTLDevice}*)::$_0::operator()(&v133, &v115);
  if (v53)
  {
    WTF::fastFree(v53, v56);
  }

LABEL_49:
  if (![v3 supportsFamily:1007])
  {
    goto LABEL_66;
  }

  v57 = v3;
  WebGPU::baseCapabilities(&block, v57);
  WORD2(v141) = 1;
  BYTE6(v141) = 0;
  WebGPU::baseFeatures(&v134, v57, &block);
  v143[0] = 6;
  v58 = v135;
  v59 = HIDWORD(v135);
  if (HIDWORD(v135) == v135)
  {
    v60 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, HIDWORD(v135) + 1, v143);
    v59 = HIDWORD(v135);
    v61 = v134;
    *(v134 + HIDWORD(v135)) = *v60;
    v58 = v135;
    v62 = (v59 + 1);
    HIDWORD(v135) = v62;
    v143[0] = 7;
    if (v62 != v135)
    {
      goto LABEL_52;
    }

LABEL_55:
    v66 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, v62 + 1, v143);
    v63 = HIDWORD(v135) + 1;
    v61 = v134;
    *(v134 + HIDWORD(v135)) = *v66;
    HIDWORD(v135) = v63;
    v143[0] = 8;
    v64 = v63;
    if (v63 == v135)
    {
      goto LABEL_53;
    }

LABEL_56:
    *(v61 + 4 * v64) = 8;
    goto LABEL_57;
  }

  v61 = v134;
  *(v134 + HIDWORD(v135)) = 6;
  v62 = (v59 + 1);
  HIDWORD(v135) = v62;
  v143[0] = 7;
  if (v62 == v58)
  {
    goto LABEL_55;
  }

LABEL_52:
  v63 = v59 + 2;
  *(v61 + 4 * v62) = 7;
  HIDWORD(v135) = v63;
  v143[0] = 8;
  v64 = v63;
  if (v63 != v58)
  {
    goto LABEL_56;
  }

LABEL_53:
  v65 = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v134, v64 + 1, v143);
  v63 = HIDWORD(v135);
  v61 = v134;
  *(v134 + HIDWORD(v135)) = *v65;
LABEL_57:
  v67 = 126 - 2 * __clz(v63 + 1);
  HIDWORD(v135) = v63 + 1;
  if (v63 == -1)
  {
    v68 = 0;
  }

  else
  {
    v68 = v67;
  }

  std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(v61, (v61 + 4 * (v63 + 1)), v68, 1);
  v115 = xmmword_225881D80;
  v116 = xmmword_225881D90;
  v117 = xmmword_225881DA0;
  v118 = 0x2C0000002CLL;
  v119 = 0uLL;
  v120 = 0x2000000020;
  v121 = 12;
  v69 = [v57 maxBufferLength];
  v70 = v69 / 0xA;
  v123 = xmmword_225881DB0;
  v124 = xmmword_225881DC0;
  if (v69 / 0xA <= 0x10000000)
  {
    v70 = 0x10000000;
  }

  v71 = v70 & 0x1FFFFFFFFFFFFFFCLL;
  v125 = xmmword_225881DD0;
  if (v69 >= 0x4FFFFFFF6)
  {
    v71 = 2147483644;
  }

  v122 = v71;
  *&v126 = -1;
  *(&v126 + 1) = -1;
  v72 = v134;
  v127 = v134;
  v128 = v135;
  v129 = block;
  v73 = v139;
  v130 = v73;
  v74 = v140;
  v131 = v74;
  v132[0] = v141;
  *(v132 + 3) = *(&v141 + 3);

  WebGPU::rawHardwareCapabilities(objc_object  {objcproto9MTLDevice}*)::$_0::operator()(&v133, &v115);
  if (v72)
  {
    WTF::fastFree(v72, v75);
  }

LABEL_66:
  if (![v3 supportsFamily:2002])
  {
    goto LABEL_81;
  }

  v76 = v3;
  WebGPU::baseCapabilities(&block, v76);
  WORD2(v141) = 256;
  if (([v76 supportsFamily:1004] & 1) == 0)
  {
    v77 = 0;
    goto LABEL_71;
  }

  if (([v76 supportsFamily:1008] & 1) == 0)
  {
    v77 = 512;
LABEL_71:
    LODWORD(v141) = v77;
  }

  WebGPU::baseFeatures(&v134, v76, &block);
  v78 = v134;
  v79 = HIDWORD(v135);
  v80 = 126 - 2 * __clz(HIDWORD(v135));
  if (HIDWORD(v135))
  {
    v81 = v80;
  }

  else
  {
    v81 = 0;
  }

  std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,WGPUFeatureName *,false>(v134, v134 + HIDWORD(v135), v81, 1);
  v115 = xmmword_225881D80;
  v116 = xmmword_225881DE0;
  v117 = xmmword_225881DA0;
  v118 = 0x2C0000002CLL;
  v119 = 0uLL;
  v120 = 0x10000000100;
  v121 = 12;
  v82 = [v76 maxBufferLength];
  v83 = v82 / 0xA;
  v123 = xmmword_225881DF0;
  v124 = xmmword_225881DC0;
  if (v82 / 0xA <= 0x10000000)
  {
    v83 = 0x10000000;
  }

  v84 = v83 & 0x1FFFFFFFFFFFFFFCLL;
  v125 = xmmword_225881DD0;
  if (v82 >= 0x4FFFFFFF6)
  {
    v84 = 2147483644;
  }

  v122 = v84;
  *&v126 = -1;
  *(&v126 + 1) = -1;
  v127 = v78;
  v128 = __PAIR64__(v79, v135);
  v129 = block;
  v85 = v139;
  v130 = v85;
  v86 = v140;
  v131 = v86;
  v132[0] = v141;
  *(v132 + 3) = *(&v141 + 3);

  WebGPU::rawHardwareCapabilities(objc_object  {objcproto9MTLDevice}*)::$_0::operator()(&v133, &v115);
  if (v78)
  {
    WTF::fastFree(v78, v87);
  }

LABEL_81:
  if (v114 != 1)
  {
    goto LABEL_88;
  }

  v88 = [v3 maxBufferLength];
  if (v114)
  {
    v89 = v88 / 0xA;
    if (v88 / 0xA <= 0x10000000)
    {
      v89 = 0x10000000;
    }

    v90 = v89 & 0x1FFFFFFFFFFFFFFCLL;
    if (v88 >= 0x4FFFFFFF6)
    {
      v90 = 2147483644;
    }

    *(&v102 + 1) = v90;
    *&v103 = v90;
    goto LABEL_88;
  }

  __break(1u);
}

void sub_2256A2AD8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = *(v5 - 176);
  if (v7)
  {
    WTF::fastFree(v7, a2);
  }

  std::optional<WebGPU::HardwareCapabilities>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WebGPU::HardwareCapabilities>::~optional(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {

    v3 = *(a1 + 160);
    if (v3)
    {
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      WTF::fastFree(v3, v2);
    }
  }

  return a1;
}