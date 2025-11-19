void sub_2256C525C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256C5270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(va, v4);
  _Unwind_Resume(a1);
}

void WebGPU::RenderBundleEncoder::cleanup(WebGPU::RenderBundleEncoder *this, int a2)
{
  v4 = *(this + 40);
  *(this + 40) = 0;

  v5 = *(this + 14);
  *(this + 14) = 0;

  v7 = *(this + 33);
  if (v7)
  {
    *(this + 33) = 0;
    v8 = *(v7 - 4);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = (v7 + 88 * i);
        if (*v10 != -2)
        {
          v11 = v10[1];
          v10[1] = 0;
          if (v11)
          {
            do
            {
              v12 = *v11;
              if ((*v11 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v11, v6);
                goto LABEL_5;
              }

              v13 = *v11;
              atomic_compare_exchange_strong_explicit(v11, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v13 != v12);
            if (v12 == 3)
            {
              WebGPU::Buffer::~Buffer(v11);
              bmalloc::api::tzoneFree(v14, v15);
            }
          }
        }

LABEL_5:
        ;
      }
    }

    WTF::fastFree((v7 - 16), v6);
  }

  v16 = *(this + 15);
  *(this + 15) = 0;

  *(this + 40) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  v18 = *(this + 6);
  if (v18)
  {
    ++*(v18 + 2);
    if (a2 && WebGPU::RenderBundleEncoder::validToEncodeCommand(this))
    {
      WebGPU::RenderBundleEncoder::setPipeline(this, v18);
    }

    if (*(v18 + 2) == 1)
    {
      WebGPU::RenderPipeline::~RenderPipeline(v18, v17);

      bmalloc::api::tzoneFree(v19, v20);
    }

    else
    {
      --*(v18 + 2);
    }
  }
}

void WebGPU::RenderBundleEncoder::setPipeline(WebGPU::RenderBundleEncoder *this, const WebGPU::RenderPipeline *a2)
{
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::setPipeline(const RenderPipeline &)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(this, v44))
  {

    return;
  }

  v4 = *(this + 10);

  if (!v4)
  {
    return;
  }

  if (*(a2 + 2))
  {
    if (*(*(a2 + 17) + 128) == 1)
    {
      v5 = *(a2 + 3);
      if (*(v5 + 8))
      {
        if (v5 == *(this + 1))
        {
          v7 = (this + 112);
          v6 = *(this + 14);
          v8 = v6;
          objc_storeStrong(this + 14, *(a2 + 2));
          v9 = *(this + 39);
          v45 = v8;
          if (v9 && *(v9 + 8) || *(this + 40) || *(this + 9))
          {
            v10 = *(this + 6);
            if (v10)
            {
              ++*(v10 + 8);
              if (*(this + 12))
              {
                if (WebGPU::RenderBundleEncoder::icbNeedsToBeSplit(this, v10, a2))
                {
                  objc_storeStrong(this + 14, v6);
                  WebGPU::RenderBundleEncoder::splitICB(this, 0);
                  objc_storeStrong(this + 14, *(a2 + 2));
                }
              }
            }

            v11 = *(this + 15);
            v12 = *(this + 16);
            v13 = *(this + 17);
            v42 = *(this + 18);
            v43 = v11;
            v15 = *(this + 38);
            v14 = *(this + 39);
            v16 = *(this + 40);
            objc_storeStrong(this + 15, *(a2 + 15));
            *(this + 8) = vextq_s8(*(a2 + 56), *(a2 + 56), 8uLL);
            *(this + 18) = *(a2 + 9);
            *(this + 21) = *(a2 + 4);
            *(this + 19) = *(a2 + 10);
            *(this + 40) = *(a2 + 22);
            *(this + 101) = *(a2 + 23);
            v17 = *(this + 36);
            v18 = [v17 length];
            if (v18 <= 3)
            {
            }

            else
            {
              v19 = [v17 contents];

              if (v18 > 0xB)
              {
                *(v19 + 8) = *(this + 101);
                v20 = *(this + 39);
                if (v20)
                {
                  v21 = *(v20 + 8);
                  if (v21)
                  {
                    ++*(v21 + 2);
                    v22 = WebGPU::RenderPassEncoder::errorValidatingPipeline(v21, a2);
                    if (v22)
                    {
                      WebGPU::RenderBundleEncoder::makeInvalid(this, v22);

                      WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v21);
                      v8 = v45;
                      if (v10)
                      {
                        WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(v10, v23);
                      }

                      goto LABEL_64;
                    }

                    v24 = WebGPU::RenderPassEncoder::renderCommandEncoder(v21);
                    v25 = *v7;
                    if (v25 && v45 != *v7)
                    {
                      [v24 setRenderPipelineState:v25];
                    }

                    v26 = *(this + 15);
                    v27 = v26;
                    if (v26 && v43 != v26)
                    {
                      [v24 setDepthStencilState:v26];
                    }

                    if (v12 != *(this + 16))
                    {
                      [v24 setCullMode:?];
                    }

                    if (v13 != *(this + 17))
                    {
                      [v24 setFrontFacingWinding:?];
                    }

                    if (v42 != *(this + 18))
                    {
                      [v24 setDepthClipMode:?];
                    }

                    if (v15 != *(this + 38) || v14 != *(this + 39) || v16 != *(this + 40))
                    {
                      [v24 setDepthBias:? slopeScale:? clamp:?];
                    }

                    if (*(v21 + 2) == 1)
                    {
                      WebGPU::RenderPassEncoder::~RenderPassEncoder(v21);
                      bmalloc::api::tzoneFree(v34, v35);
                    }

                    else
                    {
                      --*(v21 + 2);
                    }
                  }
                }

                v8 = v45;
                if (v10)
                {
                  if (*(v10 + 8) == 1)
                  {
                    WebGPU::RenderPipeline::~RenderPipeline(v10, v29);
                    bmalloc::api::tzoneFree(v36, v37);
                  }

                  else
                  {
                    --*(v10 + 8);
                  }
                }

LABEL_60:
                ++*(a2 + 2);
                v38 = *(this + 6);
                *(this + 6) = a2;
                if (v38)
                {
                  if (*(v38 + 2) == 1)
                  {
                    WebGPU::RenderPipeline::~RenderPipeline(v38, v29);
                    bmalloc::api::tzoneFree(v39, v40);
                  }

                  else
                  {
                    --*(v38 + 2);
                  }
                }

                goto LABEL_64;
              }
            }

            __break(1u);
LABEL_74:
            __break(0xC471u);
            return;
          }

          if (*(a2 + 2))
          {
            if (WebGPU::RenderPipeline::validateRenderBundle(a2, this + 328))
            {
              if (*(a2 + 23) != -1)
              {
                *(this + 400) = 1;
              }

              ++*(a2 + 2);
              ++*this;
              v28 = WTF::fastMalloc(0x18);
              v30 = &unk_2838D3380;
              *v28 = &unk_2838D3380;
              v28[1] = a2;
              v28[2] = this;
              v46 = v28;
              if (*(this + 10))
              {
                if (*(this + 36))
                {
                  goto LABEL_74;
                }

                v31 = *(this + 47);
                if (v31 == *(this + 46))
                {
                  v32 = WTF::Vector<WTF::Function<BOOL ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 176, v31 + 1, &v46);
                  v31 = *(this + 47);
                  v33 = (*(this + 22) + 8 * v31);
                  v28 = *v32;
                }

                else
                {
                  v33 = (*(this + 22) + 8 * v31);
                  v32 = &v46;
                }

                *v32 = 0;
                *v33 = v28;
                *(this + 47) = v31 + 1;
                v41 = v46;
                v46 = 0;
                if (!v41)
                {
                  goto LABEL_60;
                }

                v30 = *v41;
              }

              else
              {
                v46 = 0;
              }

              v30[1]();
              goto LABEL_60;
            }

            WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_SetpipelineVal.isa);
          }

LABEL_64:

          return;
        }
      }
    }
  }

  WebGPU::RenderBundleEncoder::makeInvalid(this, &cfstr_SetpipelineInv.isa);
}

void sub_2256C59A4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, WebGPU::RenderPipeline *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    WebGPU::RenderBundleEncoder::setPipeline(WebGPU::RenderPipeline const&)::$_0::~$_0(&a13, v18);

    _Unwind_Resume(a1);
  }

  WebGPU::RenderBundleEncoder::setPipeline(WebGPU::RenderPipeline const&)::$_0::~$_0(&a13, a2);

  _Unwind_Resume(a1);
}

void sub_2256C5A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v13);

  if (v12)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(v12, v17);
  }

  _Unwind_Resume(a1);
}

void WebGPU::RenderBundleEncoder::endCurrentICB(WebGPU::RenderBundleEncoder *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;
  *(this + 13) = v2;
  if (v2)
  {
    if (!*(this + 10))
    {
LABEL_69:
      __break(0xC471u);
      return;
    }

    v3 = this + 400;
    v4 = *(this + 400);
    if (!v4)
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = this + 400;
    v4 = *(this + 400);
    if ((v4 & 1) == 0)
    {
      v4 = [*(this + 34) count] == 0;
    }
  }

  *(this + 400) = v4;
  if (![*(this + 10) commandTypes] && (*v3 & 1) == 0)
  {
    if (*(this + 46))
    {
      v48 = *(this + 47);
      v49 = *(this + 22);
      if (v48)
      {
        v50 = 8 * v48;
        do
        {
          v51 = *v49;
          *v49 = 0;
          if (v51)
          {
            (*(*v51 + 8))(v51);
          }

          v49 = (v49 + 8);
          v50 -= 8;
        }

        while (v50);
        *(this + 47) = 0;
        v49 = *(this + 22);
      }

      if (v49)
      {
        *(this + 22) = 0;
        *(this + 46) = 0;
        WTF::fastFree(v49, v5);
      }
    }

    WebGPU::RenderBundleEncoder::cleanup(this, 0);
    return;
  }

  v6 = *(this + 1);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_15;
    }
  }

  v9 = 0;
  v10 = *v6;
  v11 = 1;
  atomic_compare_exchange_strong_explicit(*v6, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x22AA683C0](v10);
    ++*(v10 + 8);
    atomic_compare_exchange_strong_explicit(v10, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 == 1)
    {
      goto LABEL_15;
    }

LABEL_64:
    WTF::Lock::unlockSlow(v10);
    goto LABEL_15;
  }

  ++*(v10 + 8);
  atomic_compare_exchange_strong_explicit(v10, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    goto LABEL_64;
  }

LABEL_15:
  [*(this + 10) setMaxVertexBufferBindCount:{(*(v6 + 100) + 1), v6}];
  [*(this + 10) setMaxFragmentBufferBindCount:(*(v6 + 96) + 1)];
  if (!*(this + 37) || *(this + 35))
  {
    goto LABEL_20;
  }

  v13 = [*(v6 + 8) newBufferWithLength:? options:?];
  WebGPU::Device::setOwnerWithIdentity(v6, v13);
  v14 = *(this + 35);
  *(this + 35) = v13;

  v15 = *(this + 24);
  v16 = *(this + 35);
  v52 = 0;
  v53 = 0;
  v17 = WebGPU::RenderBundleEncoder::addResource(this, v15, v16, 1, &v52);
  if (v53 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v54, &v52);
  }

  if (v17)
  {
LABEL_20:
    *(this + 37) = 0;
    if (*(this + 36))
    {
      goto LABEL_33;
    }

    if ((*(this + 38) + 12) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(this + 38) + 12;
    }

    v19 = [*(v6 + 8) newBufferWithLength:v18 options:0];
    WebGPU::Device::setOwnerWithIdentity(v6, v19);
    v20 = *(this + 36);
    *(this + 36) = v19;

    v21 = *(this + 36);
    v22 = [v21 length];
    if (v22 < 4)
    {
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v23 = [v21 contents];
      v24 = v22 >> 2;
    }

    v25 = *(this + 36);
    v26 = [v25 length];
    if (v26 < 4)
    {
      v27 = 0;
      v28 = 0;

      if (v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v27 = [v25 contents];
      v28 = v26 > 0xB;

      if (v24)
      {
LABEL_28:
        *v23 = 0;
        if (v24 != 1)
        {
          v23[1] = 1065353216;
          if (v28)
          {
            *(v27 + 8) = *(this + 101);
            v29 = *(this + 24);
            v30 = *(this + 36);
            v52 = 0;
            v53 = 0;
            v31 = WebGPU::RenderBundleEncoder::addResource(this, v29, v30, 2, &v52);
            if (v53 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v54, &v52);
            }

            if (!v31)
            {
              goto LABEL_45;
            }

LABEL_33:
            *(this + 38) = 0;
            v32 = *(this + 39);
            if ((!v32 || !*(v32 + 8)) && (*v3 & 1) == 0)
            {
              v33 = WebGPU::RenderBundleEncoder::makeICB(this, v2);
              v34 = *(this + 9);
              *(this + 9) = v33;
            }

            v35 = *(this + 47);
            if (v35)
            {
              v36 = *(this + 22);
              v37 = 8 * v35;
              do
              {
                (*(**v36 + 16))();
                v36 += 8;
                v37 -= 8;
              }

              while (v37);
            }

            v38 = *(this + 6);
            *(this + 6) = 0;
            if (v38)
            {
              if (*(v38 + 2) == 1)
              {
                WebGPU::RenderPipeline::~RenderPipeline(v38, v12);
                bmalloc::api::tzoneFree(v39, v40);
              }

              else
              {
                --*(v38 + 2);
              }
            }

            WebGPU::RenderBundleEncoder::splitICB(this, 1);
            *(this + 12) = 0;
            v41 = *(this + 9);
            *(this + 9) = 0;

            v42 = *(this + 36);
            *(this + 36) = 0;

            v43 = *(this + 35);
            *(this + 35) = 0;

            goto LABEL_45;
          }
        }

        goto LABEL_68;
      }
    }

    __break(0xC471u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  do
  {
LABEL_45:
    v44 = *v6;
    if ((*v6 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v6, v12);
      return;
    }

    v45 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v45, v44 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v45 != v44);
  if (v44 == 3)
  {
    WebGPU::Device::~Device(v6, v12);
    bmalloc::api::tzoneFree(v46, v47);
  }
}

void sub_2256C5F94(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9, unsigned __int8 a10, int a11, unsigned __int8 a12, int a13, int a14, __int16 a15, char a16, char a17)
{
  if (a12 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&a17, &a10);
    WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a9, v18);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref(&a9, a2);
  _Unwind_Resume(a1);
}

void ___ZN6WebGPU19RenderBundleEncoder6finishERK26WGPURenderBundleDescriptor_block_invoke(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (*(v4 + 400) == 1)
  {
    WebGPU::makeBindableResources(v36, *(v4 + 192));
    ++*v4;
    v35 = v4;
    WebGPU::RenderBundle::create(a2, 0, v36, &v35, v4 + 328, *(v4 + 96), *(v4 + 408), (v4 + 256), *(a1 + 40));
    v6 = *v4 - 1;
    if (*v4 != 1)
    {
LABEL_3:
      *v4 = v6;
LABEL_32:
      WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v5);
      return;
    }

LABEL_6:
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v4);
    bmalloc::api::tzoneFree(v9, v10);
    goto LABEL_32;
  }

  v7 = *(v4 + 96);
  WebGPU::RenderBundleEncoder::endCurrentICB(*(a1 + 32));
  if (*(v4 + 400) == 1)
  {
    WebGPU::makeBindableResources(v36, *(v4 + 192));
    ++*v4;
    v34 = v4;
    WebGPU::RenderBundle::create(a2, 0, v36, &v34, v4 + 328, *(v4 + 96), *(v4 + 408), (v4 + 256), *(a1 + 40));
    v6 = *v4 - 1;
    if (*v4 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (*(v4 + 208))
  {
    v11 = *(v4 + 212);
    if (v11)
    {
      v12 = *(v4 + 200);
      v13 = 40 * v11;
      do
      {
        v14 = *v12;
        v12 += 5;

        v13 -= 40;
      }

      while (v13);
      *(v4 + 212) = 0;
    }

    v15 = *(v4 + 200);
    if (v15)
    {
      *(v4 + 200) = 0;
      *(v4 + 208) = 0;
      WTF::fastFree(v15, v8);
    }
  }

  if (*(v4 + 224))
  {
    v16 = *(v4 + 228);
    if (v16)
    {
      v17 = *(v4 + 216);
      v18 = 40 * v16;
      do
      {
        v19 = *v17;
        v17 += 5;

        v18 -= 40;
      }

      while (v18);
      *(v4 + 228) = 0;
    }

    v20 = *(v4 + 216);
    if (v20)
    {
      *(v4 + 216) = 0;
      *(v4 + 224) = 0;
      WTF::fastFree(v20, v8);
    }
  }

  [*(v4 + 80) setMaxVertexBufferBindCount:0];
  [*(v4 + 80) setMaxFragmentBufferBindCount:0];
  if (*(v4 + 184))
  {
    v22 = *(v4 + 188);
    v23 = *(v4 + 176);
    if (v22)
    {
      v24 = 8 * v22;
      do
      {
        v25 = *v23;
        *v23 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }

        v23 = (v23 + 8);
        v24 -= 8;
      }

      while (v24);
      *(v4 + 188) = 0;
      v23 = *(v4 + 176);
    }

    if (v23)
    {
      *(v4 + 176) = 0;
      *(v4 + 184) = 0;
      WTF::fastFree(v23, v21);
    }
  }

  v26 = *(v4 + 272);
  if (v26)
  {
    WebGPU::makeBindableResources(v36, *(v4 + 192));
    v33 = 0;
    WebGPU::RenderBundle::create(a2, v26, v36, &v33, v4 + 328, v7, *(v4 + 408), (v4 + 256), *(a1 + 40));
    goto LABEL_32;
  }

  v27 = *(v4 + 392);
  if (v27)
  {
    WebGPU::Device::generateAValidationError(*(a1 + 40), v27);
    v28 = *(a1 + 40);
    v32 = *(v4 + 392);
    if (WebGPU::RenderBundle::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundle::s_heapRef, v29);
    }

    else
    {
      NonCompact = WebGPU::RenderBundle::operatorNewSlow(0x98);
    }

    v31 = NonCompact;
    WebGPU::RenderBundle::RenderBundle(NonCompact, v28, v32);
    *a2 = v31;
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_2256C6338(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  bmalloc::api::tzoneFree(v11, a2);

  _Unwind_Resume(a1);
}

void sub_2256C6368(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256C637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WTF::RefCounted<WebGPU::RenderBundleEncoder>::deref(v7);
  WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v9);
  _Unwind_Resume(a1);
}

void WebGPU::RenderBundle::create(uint64_t *a1, void *a2, uint64_t *a3, _DWORD **a4, uint64_t a5, uint64_t a6, char a7, WebGPU::BindGroup ***a8, atomic_ullong *a9)
{
  v22 = a2;
  if (WebGPU::RenderBundle::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundle::s_heapRef, v16);
  }

  else
  {
    NonCompact = WebGPU::RenderBundle::operatorNewSlow(0x98);
  }

  v18 = NonCompact;
  v19 = *a4;
  if (v19)
  {
    ++*v19;
  }

  v23 = v19;
  WebGPU::RenderBundle::RenderBundle(NonCompact, v22, a3, &v23, a5, a6, a7, a8, a9);
  *a1 = v18;
  if (v19)
  {
    if (*v19 == 1)
    {
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v19);
      bmalloc::api::tzoneFree(v20, v21);
    }

    else
    {
      --*v19;
    }
  }
}

void sub_2256C64A4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  if (v12)
  {
    WTF::RefCounted<WebGPU::RenderBundleEncoder>::deref(v12);
  }

  bmalloc::api::tzoneFree(v11, a2);

  _Unwind_Resume(a1);
}

void WebGPU::makeBindableResources(uint64_t a1, void *a2)
{
  v193 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *v190 = 0u;
  *v191 = 0u;
  *v188 = 0u;
  *v189 = 0u;
  *v186 = 0u;
  *v187 = 0u;
  *v184 = 0u;
  *v185 = 0u;
  *v182 = 0u;
  *v183 = 0u;
  *v180 = 0u;
  *v181 = 0u;
  memset(v179, 0, sizeof(v179));
  memset(v178, 0, sizeof(v178));
  memset(v177, 0, sizeof(v177));
  memset(v176, 0, sizeof(v176));
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v171 objects:v192 count:16];
  if (!v4)
  {
    goto LABEL_46;
  }

  v5 = *v172;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v172 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v171 + 1) + 8 * i);
      v175 = v7;
      if (v7)
      {
        v8 = [obj objectForKey:v7];
        if (![v8 renderStages] || !objc_msgSend(v8, "usage"))
        {
          goto LABEL_44;
        }

        v9 = [v8 renderStages] - 1;
        if (v9 >= 4 || (v10 = [v8 usage], (v10 - 1) >= 3) || ((v11 = &v180[6 * v9 - 2] + 2 * v10, v12 = *(v11 + 3), v12 != *(v11 + 2)) ? (v14 = (*v11 + 8 * v12), v15 = v175) : (v13 = WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v11, v12 + 1, &v175), v14 = (*v11 + 8 * *(v11 + 3)), v15 = *v13), (*v14 = v15, ++*(v11 + 3), v16 = objc_msgSend(v8, "renderStages") - 1, v16 >= 4) || (v17 = objc_msgSend(v8, "usage") - 1, v17 >= 3)))
        {
          __break(1u);
        }

        LODWORD(v167) = [v8 entryUsage];
        HIDWORD(v167) = [v8 binding];
        if (v8)
        {
          [v8 resource];
        }

        else
        {
          v168 = 0;
          v169 = 0;
        }

        v19 = &v176[3 * v16 + v17];
        *v170 = 0;
        *&v170[8] = 0;
        v20 = *(v19 + 3);
        if (v20 == *(v19 + 2))
        {
          v21 = WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v19, v20 + 1, &v167);
          v22 = *v19 + 40 * *(v19 + 3);
          *v22 = *v21;
          *(v22 + 8) = 0;
          *(v22 + 16) = -1;
          v23 = *(v21 + 16);
          if (v23 != 255)
          {
            v24 = *(v21 + 8);
            *(v21 + 8) = 0;
            *(v22 + 8) = v24;
            *(v22 + 16) = v23;
          }

          v25 = *(v21 + 24);
        }

        else
        {
          v22 = *v19 + 40 * v20;
          *v22 = v167;
          *(v22 + 8) = 0;
          *(v22 + 16) = -1;
          v26 = v169;
          if (v169 != 255)
          {
            v27 = v168;
            v168 = 0;
            *(v22 + 8) = v27;
            *(v22 + 16) = v26;
          }

          v25 = *v170;
        }

        *(v22 + 24) = v25;
        ++*(v19 + 3);
        if (v169 == 255)
        {
          goto LABEL_44;
        }

        v28 = v168;
        v168 = 0;
        if (v169 == 2)
        {
          if (!v28)
          {
            goto LABEL_44;
          }

          v29 = *(v28 + 2) - 1;
          if (*(v28 + 2) != 1)
          {
            goto LABEL_35;
          }

          WebGPU::ExternalTexture::~ExternalTexture(v28, v18);
        }

        else
        {
          if (v169 == 1)
          {
            if (v28)
            {
              v29 = *(v28 + 2) - 1;
              if (*(v28 + 2) == 1)
              {
                WebGPU::TextureView::~TextureView(v28, v18);
                goto LABEL_43;
              }

LABEL_35:
              *(v28 + 2) = v29;
            }

LABEL_44:

            continue;
          }

          if (!v28)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = *v28;
            if ((*v28 & 1) == 0)
            {
              WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v28, v18);
              goto LABEL_44;
            }

            v33 = *v28;
            atomic_compare_exchange_strong_explicit(v28, &v33, v32 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v33 != v32);
          if (v32 != 3)
          {
            goto LABEL_44;
          }

          WebGPU::Buffer::~Buffer(v28);
        }

LABEL_43:
        bmalloc::api::tzoneFree(v30, v31);
        goto LABEL_44;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v171 objects:v192 count:16];
  }

  while (v4);
LABEL_46:

  v35 = 0;
  *&v36 = 0;
  v163 = v36;
  do
  {
    v37 = 0;
    v166 = &v180[6 * v35];
    v38 = &v176[3 * v35++];
    v164 = v35;
    v165 = v38;
    do
    {
      while (1)
      {
        v39 = &v166[2 * v37];
        v40 = *(v39 + 3);
        if (v40)
        {
          break;
        }

        if (++v37 == 3)
        {
          goto LABEL_47;
        }
      }

      v41 = *v39;
      v42 = *(v39 + 2);
      v43 = &v165[v37];
      *v39 = v163;
      v167 = v41;
      v168 = __PAIR64__(v40, v42);
      v44 = *v43;
      v45 = *(v43 + 1);
      *v43 = 0u;
      v169 = v44;
      *v170 = v45;
      *&v170[8] = ++v37;
      *&v170[16] = v35;
      v46 = *(a1 + 12);
      if (v46 == *(a1 + 8))
      {
        v47 = WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v46 + 1, &v167);
        v48 = *a1 + 48 * *(a1 + 12);
        *v48 = 0;
        *(v48 + 8) = 0;
        v49 = *v47;
        *v47 = 0;
        *v48 = v49;
        LODWORD(v49) = *(v47 + 8);
        *(v47 + 8) = 0;
        *(v48 + 8) = v49;
        LODWORD(v49) = *(v47 + 12);
        *(v47 + 12) = 0;
        *(v48 + 12) = v49;
        *(v48 + 16) = 0;
        *(v48 + 24) = 0;
        v50 = *(v47 + 16);
        *(v47 + 16) = 0;
        *(v48 + 16) = v50;
        LODWORD(v50) = *(v47 + 24);
        *(v47 + 24) = 0;
        *(v48 + 24) = v50;
        LODWORD(v50) = *(v47 + 28);
        *(v47 + 28) = 0;
        *(v48 + 28) = v50;
        v51 = *(v47 + 32);
      }

      else
      {
        v48 = *a1 + 48 * v46;
        *v48 = 0;
        *(v48 + 8) = 0;
        v52 = v167;
        v167 = 0;
        *v48 = v52;
        LODWORD(v52) = v168;
        LODWORD(v168) = 0;
        *(v48 + 8) = v52;
        LODWORD(v52) = HIDWORD(v168);
        HIDWORD(v168) = 0;
        *(v48 + 12) = v52;
        *(v48 + 16) = 0;
        *(v48 + 24) = 0;
        v53 = v169;
        v169 = 0;
        *(v48 + 16) = v53;
        LODWORD(v53) = *v170;
        *v170 = 0;
        *(v48 + 24) = v53;
        LODWORD(v53) = *&v170[4];
        *&v170[4] = 0;
        *(v48 + 28) = v53;
        v51 = *&v170[8];
      }

      *(v48 + 32) = v51;
      ++*(a1 + 12);
      v54 = v169;
      if (*&v170[4])
      {
        v55 = (v169 + 40 * *&v170[4]);
        while (1)
        {
          v56 = *(v54 + 16);
          if (v56 == 255)
          {
            goto LABEL_57;
          }

          v57 = *(v54 + 1);
          *(v54 + 1) = 0;
          if (v56 == 2)
          {
            break;
          }

          if (v56 == 1)
          {
            if (!v57)
            {
              goto LABEL_57;
            }

            v58 = *(v57 + 8) - 1;
            if (*(v57 + 8) == 1)
            {
              v59 = *(v57 + 104);
              if (v59)
              {
                *(v57 + 104) = 0;
                *(v57 + 112) = 0;
                WTF::fastFree(v59, v34);
              }

              v60 = *(v57 + 96);
              *(v57 + 96) = 0;
              if (v60)
              {
                if (*(v60 + 8) != 1)
                {
                  --*(v60 + 8);
                  goto LABEL_68;
                }

                WebGPU::Texture::~Texture(v60);
                bmalloc::api::tzoneFree(v110, v111);
                v61 = *(v57 + 88);
                *(v57 + 88) = 0;
                if (!v61)
                {
                  goto LABEL_125;
                }

LABEL_69:
                while (1)
                {
                  v62 = *v61;
                  if ((*v61 & 1) == 0)
                  {
                    break;
                  }

                  v63 = *v61;
                  atomic_compare_exchange_strong_explicit(v61, &v63, v62 - 2, memory_order_relaxed, memory_order_relaxed);
                  if (v63 == v62)
                  {
                    if (v62 == 3)
                    {
                      WebGPU::Device::~Device(v61, v34);
                      bmalloc::api::tzoneFree(v64, v65);
                    }

                    goto LABEL_125;
                  }
                }

                v87 = 0;
                v88 = *v61;
                atomic_compare_exchange_strong_explicit(*v61, &v87, 1u, memory_order_acquire, memory_order_acquire);
                if (v87)
                {
                  MEMORY[0x22AA683C0](v88);
                  v115 = *(v88 + 8);
                  v90 = v115 - 1;
                  *(v88 + 8) = v115 - 1;
                  if (v115 == 1)
                  {
                    goto LABEL_138;
                  }

LABEL_100:
                  v91 = 0;
                  v92 = 1;
                  atomic_compare_exchange_strong_explicit(v88, &v92, 0, memory_order_release, memory_order_relaxed);
                  if (v92 == 1)
                  {
                    goto LABEL_101;
                  }

LABEL_139:
                  WTF::Lock::unlockSlow(v88);
                  if (v90)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  v89 = *(v88 + 8);
                  v90 = v89 - 1;
                  *(v88 + 8) = v89 - 1;
                  if (v89 != 1)
                  {
                    goto LABEL_100;
                  }

LABEL_138:
                  v91 = *(v88 + 24);
                  ++*(v88 + 16);
                  *(v88 + 24) = 0;
                  v116 = 1;
                  atomic_compare_exchange_strong_explicit(v88, &v116, 0, memory_order_release, memory_order_relaxed);
                  if (v116 != 1)
                  {
                    goto LABEL_139;
                  }

LABEL_101:
                  if (v90)
                  {
                    goto LABEL_125;
                  }
                }

                if (v91)
                {
                  WebGPU::Device::~Device(v91, v34);
                  bmalloc::api::tzoneFree(v93, v94);
                }

                v95 = 0;
                atomic_compare_exchange_strong_explicit(v88, &v95, 1u, memory_order_acquire, memory_order_acquire);
                if (v95)
                {
                  MEMORY[0x22AA683C0](v88);
                }

                v96 = *(v88 + 16) - 1;
                *(v88 + 16) = v96;
                v97 = 1;
                atomic_compare_exchange_strong_explicit(v88, &v97, 0, memory_order_release, memory_order_relaxed);
                if (v97 == 1)
                {
                  if (v96)
                  {
                    goto LABEL_125;
                  }
                }

                else
                {
                  WTF::Lock::unlockSlow(v88);
                  if (v96)
                  {
                    goto LABEL_125;
                  }
                }

                WTF::fastFree(v88, v34);
                goto LABEL_125;
              }

LABEL_68:
              v61 = *(v57 + 88);
              *(v57 + 88) = 0;
              if (v61)
              {
                goto LABEL_69;
              }

LABEL_125:

              if (*(v57 + 8) == 1)
              {
LABEL_126:
                v112 = *v57;
                if (*v57)
                {
                  *(v112 + 8) = 0;
                  *v57 = 0;
                  if (atomic_fetch_add(v112, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v112);
                    WTF::fastFree(v112, v67);
                  }
                }

                v75 = v57;
                goto LABEL_130;
              }

LABEL_221:
              __break(0xC471u);
              JUMPOUT(0x2256C7234);
            }

LABEL_56:
            *(v57 + 8) = v58;
            goto LABEL_57;
          }

          if (!v57)
          {
            goto LABEL_57;
          }

          do
          {
            v73 = *v57;
            if ((*v57 & 1) == 0)
            {
              v76 = 0;
              v77 = *v57;
              atomic_compare_exchange_strong_explicit(v77, &v76, 1u, memory_order_acquire, memory_order_acquire);
              if (v76)
              {
                MEMORY[0x22AA683C0](v77);
                v113 = *(v77 + 8);
                v79 = v113 - 1;
                *(v77 + 8) = v113 - 1;
                if (v113 == 1)
                {
                  goto LABEL_132;
                }

LABEL_89:
                v80 = 0;
                v81 = 1;
                atomic_compare_exchange_strong_explicit(v77, &v81, 0, memory_order_release, memory_order_relaxed);
                if (v81 == 1)
                {
                  goto LABEL_90;
                }

LABEL_133:
                WTF::Lock::unlockSlow(v77);
                if (v79)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v78 = *(v77 + 8);
                v79 = v78 - 1;
                *(v77 + 8) = v78 - 1;
                if (v78 != 1)
                {
                  goto LABEL_89;
                }

LABEL_132:
                v80 = *(v77 + 24);
                ++*(v77 + 16);
                *(v77 + 24) = 0;
                v114 = 1;
                atomic_compare_exchange_strong_explicit(v77, &v114, 0, memory_order_release, memory_order_relaxed);
                if (v114 != 1)
                {
                  goto LABEL_133;
                }

LABEL_90:
                if (v79)
                {
                  goto LABEL_57;
                }
              }

              if (v80)
              {
                WebGPU::Buffer::~Buffer(v80);
                bmalloc::api::tzoneFree(v82, v83);
              }

              v84 = 0;
              atomic_compare_exchange_strong_explicit(v77, &v84, 1u, memory_order_acquire, memory_order_acquire);
              if (v84)
              {
                MEMORY[0x22AA683C0](v77);
              }

              v85 = *(v77 + 16) - 1;
              *(v77 + 16) = v85;
              v86 = 1;
              atomic_compare_exchange_strong_explicit(v77, &v86, 0, memory_order_release, memory_order_relaxed);
              if (v86 == 1)
              {
                if (v85)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                WTF::Lock::unlockSlow(v77);
                if (v85)
                {
                  goto LABEL_57;
                }
              }

              WTF::fastFree(v77, v34);
              goto LABEL_57;
            }

            v74 = *v57;
            atomic_compare_exchange_strong_explicit(v57, &v74, v73 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v74 != v73);
          if (v73 != 3)
          {
            goto LABEL_57;
          }

          WebGPU::Buffer::~Buffer(v57);
LABEL_130:
          bmalloc::api::tzoneFree(v75, v67);
LABEL_57:
          *(v54 + 16) = -1;
          v54 = (v54 + 40);
          if (v54 == v55)
          {
            v54 = v169;
            goto LABEL_150;
          }
        }

        if (!v57)
        {
          goto LABEL_57;
        }

        v58 = *(v57 + 8) - 1;
        if (*(v57 + 8) != 1)
        {
          goto LABEL_56;
        }

        v66 = *(v57 + 64);
        if (v66)
        {
          *(v57 + 64) = 0;
          *(v57 + 72) = 0;
          WTF::fastFree(v66, v34);
        }

        v68 = *(v57 + 32);
        *(v57 + 32) = 0;
        if (!v68)
        {
LABEL_120:
          v109 = *(v57 + 16);
          *(v57 + 16) = 0;
          if (v109)
          {
            CFRelease(v109);
          }

          if (*(v57 + 8) == 1)
          {
            goto LABEL_126;
          }

          goto LABEL_221;
        }

        while (1)
        {
          v69 = *v68;
          if ((*v68 & 1) == 0)
          {
            break;
          }

          v70 = *v68;
          atomic_compare_exchange_strong_explicit(v68, &v70, v69 - 2, memory_order_relaxed, memory_order_relaxed);
          if (v70 == v69)
          {
            if (v69 == 3)
            {
              WebGPU::Device::~Device(v68, v67);
              bmalloc::api::tzoneFree(v71, v72);
            }

            goto LABEL_120;
          }
        }

        v98 = 0;
        v99 = *v68;
        atomic_compare_exchange_strong_explicit(*v68, &v98, 1u, memory_order_acquire, memory_order_acquire);
        if (v98)
        {
          MEMORY[0x22AA683C0](v99);
          v117 = *(v99 + 8);
          v101 = v117 - 1;
          *(v99 + 8) = v117 - 1;
          if (v117 == 1)
          {
            goto LABEL_142;
          }

LABEL_111:
          v102 = 0;
          v103 = 1;
          atomic_compare_exchange_strong_explicit(v99, &v103, 0, memory_order_release, memory_order_relaxed);
          if (v103 == 1)
          {
            goto LABEL_112;
          }

LABEL_143:
          WTF::Lock::unlockSlow(v99);
          if (v101)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v100 = *(v99 + 8);
          v101 = v100 - 1;
          *(v99 + 8) = v100 - 1;
          if (v100 != 1)
          {
            goto LABEL_111;
          }

LABEL_142:
          v102 = *(v99 + 24);
          ++*(v99 + 16);
          *(v99 + 24) = 0;
          v118 = 1;
          atomic_compare_exchange_strong_explicit(v99, &v118, 0, memory_order_release, memory_order_relaxed);
          if (v118 != 1)
          {
            goto LABEL_143;
          }

LABEL_112:
          if (v101)
          {
            goto LABEL_120;
          }
        }

        if (v102)
        {
          WebGPU::Device::~Device(v102, v67);
          bmalloc::api::tzoneFree(v104, v105);
        }

        v106 = 0;
        atomic_compare_exchange_strong_explicit(v99, &v106, 1u, memory_order_acquire, memory_order_acquire);
        if (v106)
        {
          MEMORY[0x22AA683C0](v99);
        }

        v107 = *(v99 + 16) - 1;
        *(v99 + 16) = v107;
        v108 = 1;
        atomic_compare_exchange_strong_explicit(v99, &v108, 0, memory_order_release, memory_order_relaxed);
        if (v108 == 1)
        {
          if (v107)
          {
            goto LABEL_120;
          }
        }

        else
        {
          WTF::Lock::unlockSlow(v99);
          if (v107)
          {
            goto LABEL_120;
          }
        }

        WTF::fastFree(v99, v67);
        goto LABEL_120;
      }

LABEL_150:
      if (v54)
      {
        v169 = 0;
        *v170 = 0;
        WTF::fastFree(v54, v34);
      }

      if (HIDWORD(v168))
      {
        v119 = v167;
        v120 = 8 * HIDWORD(v168);
        do
        {

          v120 -= 8;
        }

        while (v120);
      }

      v121 = v167;
      if (v167)
      {
        v167 = 0;
        LODWORD(v168) = 0;
        WTF::fastFree(v121, v34);
      }

      v35 = v164;
    }

    while (v37 != 3);
LABEL_47:
    ;
  }

  while (v35 != 4);
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(v179, v34);
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(v178, v122);
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(v177, v123);
  std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>::~array(v176, v124);
  if (HIDWORD(v191[1]))
  {
    v126 = v191[0];
    v127 = 8 * HIDWORD(v191[1]);
    do
    {

      v127 -= 8;
    }

    while (v127);
  }

  v128 = v191[0];
  if (v191[0])
  {
    v191[0] = 0;
    LODWORD(v191[1]) = 0;
    WTF::fastFree(v128, v125);
  }

  if (HIDWORD(v190[1]))
  {
    v129 = v190[0];
    v130 = 8 * HIDWORD(v190[1]);
    do
    {

      v130 -= 8;
    }

    while (v130);
  }

  v131 = v190[0];
  if (v190[0])
  {
    v190[0] = 0;
    LODWORD(v190[1]) = 0;
    WTF::fastFree(v131, v125);
  }

  if (HIDWORD(v189[1]))
  {
    v132 = v189[0];
    v133 = 8 * HIDWORD(v189[1]);
    do
    {

      v133 -= 8;
    }

    while (v133);
  }

  v134 = v189[0];
  if (v189[0])
  {
    v189[0] = 0;
    LODWORD(v189[1]) = 0;
    WTF::fastFree(v134, v125);
  }

  if (HIDWORD(v188[1]))
  {
    v135 = v188[0];
    v136 = 8 * HIDWORD(v188[1]);
    do
    {

      v136 -= 8;
    }

    while (v136);
  }

  v137 = v188[0];
  if (v188[0])
  {
    v188[0] = 0;
    LODWORD(v188[1]) = 0;
    WTF::fastFree(v137, v125);
  }

  if (HIDWORD(v187[1]))
  {
    v138 = v187[0];
    v139 = 8 * HIDWORD(v187[1]);
    do
    {

      v139 -= 8;
    }

    while (v139);
  }

  v140 = v187[0];
  if (v187[0])
  {
    v187[0] = 0;
    LODWORD(v187[1]) = 0;
    WTF::fastFree(v140, v125);
  }

  if (HIDWORD(v186[1]))
  {
    v141 = v186[0];
    v142 = 8 * HIDWORD(v186[1]);
    do
    {

      v142 -= 8;
    }

    while (v142);
  }

  v143 = v186[0];
  if (v186[0])
  {
    v186[0] = 0;
    LODWORD(v186[1]) = 0;
    WTF::fastFree(v143, v125);
  }

  if (HIDWORD(v185[1]))
  {
    v144 = v185[0];
    v145 = 8 * HIDWORD(v185[1]);
    do
    {

      v145 -= 8;
    }

    while (v145);
  }

  v146 = v185[0];
  if (v185[0])
  {
    v185[0] = 0;
    LODWORD(v185[1]) = 0;
    WTF::fastFree(v146, v125);
  }

  if (HIDWORD(v184[1]))
  {
    v147 = v184[0];
    v148 = 8 * HIDWORD(v184[1]);
    do
    {

      v148 -= 8;
    }

    while (v148);
  }

  v149 = v184[0];
  if (v184[0])
  {
    v184[0] = 0;
    LODWORD(v184[1]) = 0;
    WTF::fastFree(v149, v125);
  }

  if (HIDWORD(v183[1]))
  {
    v150 = v183[0];
    v151 = 8 * HIDWORD(v183[1]);
    do
    {

      v151 -= 8;
    }

    while (v151);
  }

  v152 = v183[0];
  if (v183[0])
  {
    v183[0] = 0;
    LODWORD(v183[1]) = 0;
    WTF::fastFree(v152, v125);
  }

  if (HIDWORD(v182[1]))
  {
    v153 = v182[0];
    v154 = 8 * HIDWORD(v182[1]);
    do
    {

      v154 -= 8;
    }

    while (v154);
  }

  v155 = v182[0];
  if (v182[0])
  {
    v182[0] = 0;
    LODWORD(v182[1]) = 0;
    WTF::fastFree(v155, v125);
  }

  if (HIDWORD(v181[1]))
  {
    v156 = v181[0];
    v157 = 8 * HIDWORD(v181[1]);
    do
    {

      v157 -= 8;
    }

    while (v157);
  }

  v158 = v181[0];
  if (v181[0])
  {
    v181[0] = 0;
    LODWORD(v181[1]) = 0;
    WTF::fastFree(v158, v125);
  }

  if (HIDWORD(v180[1]))
  {
    v159 = v180[0];
    v160 = 8 * HIDWORD(v180[1]);
    do
    {

      v160 -= 8;
    }

    while (v160);
  }

  v161 = v180[0];
  if (v180[0])
  {
    v180[0] = 0;
    LODWORD(v180[1]) = 0;
    WTF::fastFree(v161, v125);
  }
}

void sub_2256C7258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  std::array<std::array<WTF::Vector<WebGPU::BindGroupEntryUsageData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(&a35, v61);
  std::array<std::array<WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,3ul>,4ul>::~array(&a59, v62);
  WTF::Vector<WebGPU::BindableResources,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v63);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c87_ZTSN3WTF3RefIN6WebGPU6DeviceENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_4;
    }
  }

  v5 = 0;
  v6 = *v2;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(*v2, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v9 = result;
    MEMORY[0x22AA683C0](v6);
    result = v9;
    ++*(v6 + 8);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      goto LABEL_7;
    }

LABEL_4:
    *(result + 40) = v2;
    return result;
  }

  ++*(v6 + 8);
  atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    goto LABEL_4;
  }

LABEL_7:
  v8 = result;
  result = WTF::Lock::unlockSlow(v6);
  *(v8 + 40) = v2;
  return result;
}

atomic_ullong *__destroy_helper_block_ea8_40c87_ZTSN3WTF3RefIN6WebGPU6DeviceENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE(uint64_t a1, WTF::StringImpl *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    while (1)
    {
      v4 = *result;
      if ((*result & 1) == 0)
      {
        break;
      }

      v5 = *result;
      atomic_compare_exchange_strong_explicit(result, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        if (v4 == 3)
        {
          WebGPU::Device::~Device(result, a2);

          return bmalloc::api::tzoneFree(v6, v7);
        }

        return result;
      }
    }

    v8 = *result;

    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(v8, a2);
  }

  return result;
}

void WebGPU::RenderBundleEncoder::replayCommands(WebGPU::RenderBundleEncoder *this, WebGPU::RenderPassEncoder *a2)
{
  if (*(*(a2 + 23) + 172) == 1)
  {
    v2 = 0;
    goto LABEL_19;
  }

  v2 = *(a2 + 2);
  if (!v2 || !*(this + 10))
  {
LABEL_19:

    return;
  }

  v5 = *(*(this + 1) + 8);

  if (!v5)
  {
    return;
  }

  v7 = a2;
  if (!*a2 && (v8 = WTF::fastCompactMalloc(0x10), v7 = a2, v9 = v8, *v8 = 1, *(v8 + 8) = a2, v10 = *a2, *a2 = v9, v10) && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v6);
    v27 = *a2;
    atomic_fetch_add(*a2, 1u);
    v12 = *(this + 39);
    *(this + 39) = v27;
    if (v12)
    {
LABEL_10:
      if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WTF::fastFree(v12, v6);
      }
    }
  }

  else
  {
    v11 = *v7;
    atomic_fetch_add(*v7, 1u);
    v12 = *(this + 39);
    *(this + 39) = v11;
    if (v12)
    {
      goto LABEL_10;
    }
  }

  WebGPU::RenderBundleEncoder::endCurrentICB(this);
  v14 = *(this + 39);
  *(this + 39) = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v13);
  }

  v15 = *(this + 14);
  *(this + 14) = 0;

  v16 = *(this + 15);
  *(this + 15) = 0;

  if (*(this + 240) == 1)
  {
    v18 = *(this + 29);
    if (v18)
    {
      v19 = *(v18 - 4);
      if (v19)
      {
        v20 = v18 + 8;
        do
        {
          if (*(v20 - 8) != -2)
          {
            v21 = *v20;
            if (*v20)
            {
              *v20 = 0;
              *(v20 + 8) = 0;
              WTF::fastFree(v21, v17);
            }
          }

          v20 += 24;
          --v19;
        }

        while (v19);
      }

      WTF::fastFree((v18 - 16), v17);
    }

    *(this + 240) = 0;
  }

  v22 = *(this + 2);
  *(this + 2) = 0;
  if (v22)
  {
    do
    {
      v23 = *v22;
      if ((*v22 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v22, v17);
        goto LABEL_34;
      }

      v24 = *v22;
      atomic_compare_exchange_strong_explicit(v22, &v24, v23 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v24 != v23);
    if (v23 == 3)
    {
      WebGPU::Buffer::~Buffer(v22);
      bmalloc::api::tzoneFree(v25, v26);
    }
  }

LABEL_34:
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

void WebGPU::RenderBundleEncoder::setBindGroup(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v91 = a2;
  v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::setBindGroup(uint32_t, const BindGroup *, std::optional<Vector<uint32_t>> &&)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(a1, v80))
  {

    return;
  }

  v78 = a4;
  v79 = a3;
  v9 = *(a1 + 80);

  if (!v9)
  {
    return;
  }

  if (a3)
  {
    if (!*(a3 + 64) || (v10 = *(a3 + 40), !*(v10 + 8)) || v10 != *(a1 + 8))
    {
      v11 = @"setBindGroup: invalid bind group";
LABEL_11:

      WebGPU::RenderBundleEncoder::makeInvalid(a1, &v11->isa);
      return;
    }
  }

  v12 = *(a1 + 60);
  if (v7 > v12)
  {
    v12 = v7;
  }

  *(a1 + 60) = v12;
  v13 = *(a1 + 312);
  if ((!v13 || !*(v13 + 8)) && !*(a1 + 320) && !*(a1 + 72))
  {
    if (a3)
    {
      ++*(a3 + 8);
      v90 = a3;
      WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v84, (a1 + 256), &v90);
      if (v90)
      {
        if (*(v90 + 2) == 1)
        {
          WebGPU::BindGroup::~BindGroup(v90, v40, v41);
          bmalloc::api::tzoneFree(v60, v61);
        }

        else
        {
          --*(v90 + 2);
        }
      }

      if (v91 < *(*(a1 + 8) + 96))
      {
        if (*(v78 + 16) == 1)
        {
          v62 = *(a3 + 64);
          if (!v62)
          {
LABEL_104:
            v11 = @"GPURenderBundleEncoder.setBindGroup: bind group is nil";
            goto LABEL_11;
          }

          ++*(v62 + 2);
          v84 = 0;
          v4 = WebGPU::BindGroupLayout::errorValidatingDynamicOffsets(v62, *v78, *(v78 + 12), a3, &v84);
          if (v4)
          {
            v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPURenderBundleEncoder.setBindGroup: %@", v4];
            WebGPU::RenderBundleEncoder::makeInvalid(a1, v64);

            WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroupLayout>::deref(v62, v65);
            return;
          }

          WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroupLayout>::deref(v62, v63);
        }

        if (*(a3 + 24))
        {
          v66 = [*(a1 + 80) maxFragmentBufferBindCount];
          if (v66 <= v91 + 2)
          {
            v67 = v91 + 2;
          }

          else
          {
            v67 = v66;
          }

          [*(a1 + 80) setMaxFragmentBufferBindCount:v67];
        }

        v7 = v91;
        v84 = v91;
        ++*(a3 + 8);
        v85 = a3;
LABEL_87:
        ++*a1;
        v86 = a1;
        LOBYTE(v87) = 0;
        v89 = 0;
        v68 = *(v78 + 16);
        if (v68 == 1)
        {
          v87 = *v78;
          LODWORD(v9) = *(v78 + 8);
          LODWORD(v4) = *(v78 + 12);
          *v78 = 0;
          *(v78 + 8) = 0;
          v88 = __PAIR64__(v4, v9);
          v89 = 1;
        }

        v69 = WTF::fastMalloc(0x38);
        v71 = &unk_2838D3330;
        *v69 = &unk_2838D3330;
        *(v69 + 8) = v7;
        *(v69 + 16) = a3;
        *(v69 + 24) = a1;
        v85 = 0;
        v86 = 0;
        *(v69 + 32) = 0;
        *(v69 + 48) = 0;
        if (v68)
        {
          *(v69 + 32) = v87;
          v87 = 0;
          v88 = 0;
          *(v69 + 40) = v9;
          *(v69 + 44) = v4;
          *(v69 + 48) = 1;
        }

        v90 = v69;
        if (*(a1 + 80))
        {
          if (*(a1 + 288))
          {
            __break(0xC471u);
            goto LABEL_111;
          }

          v72 = *(a1 + 188);
          if (v72 == *(a1 + 184))
          {
            v73 = WTF::Vector<WTF::Function<BOOL ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 176, v72 + 1, &v90);
            v72 = *(a1 + 188);
            v74 = (*(a1 + 176) + 8 * v72);
            v69 = *v73;
          }

          else
          {
            v74 = (*(a1 + 176) + 8 * v72);
            v73 = &v90;
          }

          *v73 = 0;
          *v74 = v69;
          *(a1 + 188) = v72 + 1;
          v75 = v90;
          v90 = 0;
          if (!v75)
          {
LABEL_100:
            if (v68 && v87)
            {
              WTF::fastFree(v87, v70);
            }

            return;
          }

          v71 = *v75;
        }

        else
        {
          v90 = 0;
        }

        v71[1]();
        goto LABEL_100;
      }
    }

    else if (*(*(a1 + 8) + 96) > v7)
    {
      v84 = v7;
      v85 = 0;
      goto LABEL_87;
    }

    v11 = @"setBindGroup: groupIndex >= limits.maxBindGroups";
    goto LABEL_11;
  }

  if (!a3)
  {
    WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 248), &v91, v78);
    return;
  }

  if (*(v78 + 16) == 1)
  {
    if (!*(v78 + 12))
    {
      v76 = 0;
      v14 = *(a3 + 60);
      if (v14)
      {
        goto LABEL_29;
      }

LABEL_31:
      v16 = v79;
      v90 = v79;
      WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WebGPU::BindGroup const*>((a1 + 248), &v91, &v90, &v84);
      v17 = v91;
      v18 = *(*(a1 + 8) + 100);
      v19 = v79[2];
      if (v19)
      {
        if (v18 - 1 >= v17)
        {
          v17 = v18 - 1 - v17;
        }

        v20 = *(a1 + 212);

        if (v20 > v17)
        {
          if (!WebGPU::RenderBundleEncoder::addResource(a1, *(a1 + 192), v79[2], 1))
          {
            return;
          }

          v16 = v79;
          v21 = v79[2];
          if ((*(v78 + 16) & 1) == 0)
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          v22 = v21;
          v23 = *v78;
          v24 = v79[2];
          v25 = [v24 length];
          if (*(a1 + 212) <= v17)
          {
            __break(0xC471u);
            JUMPOUT(0x2256C7E04);
          }

          v26 = v25;
          v27 = *(a1 + 200) + 40 * v17;
          v28 = *v27;
          *v27 = v22;

          *(v27 + 8) = 0;
          *(v27 + 16) = v76;
          *(v27 + 24) = v23;
          *(v27 + 32) = v26;
        }
      }

      v29 = v16[3];
      if (!v29)
      {
        return;
      }

      v30 = *(a1 + 228);
      v31 = v91;

      if (v30 <= v31 || !WebGPU::RenderBundleEncoder::addResource(a1, *(a1 + 192), v79[3], 2))
      {
        return;
      }

      v32 = v79[3];
      if (*(v78 + 16))
      {
        v33 = v32;
        v34 = *v78;
        v35 = v79[3];
        v36 = [v35 length];
        if (*(a1 + 228) <= v91)
        {
          __break(0xC471u);
          JUMPOUT(0x2256C7E0CLL);
        }

        v37 = v36;
        v38 = *(a1 + 216) + 40 * v91;
        v39 = *v38;
        *v38 = v33;

        *(v38 + 8) = 0;
        *(v38 + 16) = v76;
        *(v38 + 24) = v34;
        *(v38 + 32) = v37;

        return;
      }

      goto LABEL_103;
    }

    v76 = *(v78 + 12);
    if (*(a1 + 240) == 1)
    {
      WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((a1 + 232), &v91, v78, &v84);
      v14 = *(a3 + 60);
      if (!v14)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v76 = 0;
  }

  v14 = *(a3 + 60);
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_29:
  v15 = *(a3 + 48);
  v77 = v15 + 48 * v14;
  while (1)
  {
    v81 = *(v15 + 28);
    if (v81)
    {
      v44 = 0;
      v45 = 0;
      while (v45 < *(v15 + 28))
      {
        v46 = (*(v15 + 16) + v44);
        v47 = [ResourceUsageAndRenderStage alloc];
        v48 = *(v15 + 32);
        v49 = *(v15 + 40);
        v51 = *v46;
        v50 = *(v46 + 1);
        mpark::variant<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>::variant(v82, v46 + 1);
        v52 = [(ResourceUsageAndRenderStage *)v47 initWithUsage:v48 renderStages:v49 entryUsage:v51 binding:v50 resource:v82];
        if (v83 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v84, v82);
        }

        v83 = -1;
        if (v45 >= *(v15 + 12))
        {
          __break(0xC471u);
          JUMPOUT(0x2256C7DF4);
        }

        v53 = WebGPU::RenderBundleEncoder::addResource(a1, *(a1 + 192), *(*v15 + 8 * v45), v52);

        if (!v53)
        {
          return;
        }

        ++v45;
        v44 += 40;
        if (v81 == v45)
        {
          goto LABEL_59;
        }
      }

      __break(0xC471u);
LABEL_111:
      JUMPOUT(0x2256C7DECLL);
    }

LABEL_59:
    v54 = *(a1 + 312);
    if (v54)
    {
      v55 = *(v54 + 8);
      if (v55)
      {
        break;
      }
    }

LABEL_50:
    v15 += 48;
    if (v15 == v77)
    {
      goto LABEL_31;
    }
  }

  v56 = *(v55 + 2);
  *(v55 + 2) = v56 + 1;
  v57 = *(v15 + 28);
  if (!v57)
  {
LABEL_67:
    if (v56)
    {
      *(v55 + 2) = v56;
    }

    else
    {
      WebGPU::RenderPassEncoder::~RenderPassEncoder(v55);
      bmalloc::api::tzoneFree(v42, v43);
    }

    goto LABEL_50;
  }

  v58 = 0;
  v59 = 8;
  while (1)
  {
    if (v58 >= *(v15 + 28))
    {
      __break(0xC471u);
      JUMPOUT(0x2256C7DFCLL);
    }

    if (!WebGPU::RenderPassEncoder::setCommandEncoder(v55, *(v15 + 16) + v59))
    {
      break;
    }

    ++v58;
    v59 += 40;
    if (v57 == v58)
    {
      v56 = *(v55 + 2) - 1;
      goto LABEL_67;
    }
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(v55);
}

void sub_2256C7E54(_Unwind_Exception *a1, void *a2, const WTF::StringImpl *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 - 96);
  *(v11 - 96) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    WebGPU::RenderBundleEncoder::setBindGroup(unsigned int,WebGPU::BindGroup const*,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0::~$_0(va, v14, v15);
    _Unwind_Resume(a1);
  }

  WebGPU::RenderBundleEncoder::setBindGroup(unsigned int,WebGPU::BindGroup const*,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0::~$_0(va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_2256C7EE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, const WTF::StringImpl *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 96);
  if (v25)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::deref(v25, a2, a3);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id **WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

uint64_t WebGPU::RenderBundleEncoder::setBindGroup(unsigned int,WebGPU::BindGroup const*,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0::~$_0(uint64_t a1, void *a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v5);
      bmalloc::api::tzoneFree(v10, v11);
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (!v6)
      {
        return a1;
      }

      goto LABEL_8;
    }

    --*v5;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v6)
  {
    return a1;
  }

LABEL_8:
  if (*(v6 + 2) != 1)
  {
    --*(v6 + 2);
    return a1;
  }

  WebGPU::BindGroup::~BindGroup(v6, a2, a3);
  bmalloc::api::tzoneFree(v8, v9);
  return a1;
}

void WebGPU::RenderBundleEncoder::setIndexBuffer(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::setIndexBuffer(Buffer &, WGPUIndexFormat, uint64_t, uint64_t)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(a1, v42))
  {

    return;
  }

  v10 = *(a1 + 80);

  if (!v10)
  {
    return;
  }

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
      goto LABEL_11;
    }
  }

  v14 = 0;
  v15 = *a2;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x22AA683C0](v15);
    ++*(v15 + 8);
    atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 == 1)
    {
LABEL_11:
      v17 = *(a1 + 16);
      *(a1 + 16) = a2;
      if (v17)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else
  {
    ++*(v15 + 8);
    atomic_compare_exchange_strong_explicit(v15, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 == 1)
    {
      goto LABEL_11;
    }
  }

  WTF::Lock::unlockSlow(v15);
  v17 = *(a1 + 16);
  *(a1 + 16) = a2;
  if (v17)
  {
    do
    {
LABEL_12:
      v18 = *v17;
      if ((*v17 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v17, v11);
        goto LABEL_17;
      }

      v19 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v19, v18 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
    if (v18 == 3)
    {
      WebGPU::Buffer::~Buffer(v17);
      bmalloc::api::tzoneFree(v20, v21);
    }

LABEL_17:
    if (!*(a1 + 16))
    {
      __break(0xC471u);
      return;
    }
  }

LABEL_18:
  *(a1 + 24) = a3 == 2;
  *(a1 + 32) = a4;
  v22 = *(a2 + 32);
  if (a5 != -1)
  {
    v22 = a5;
  }

  *(a1 + 40) = v22;
  v23 = *(a1 + 312);
  if (!v23 || !*(v23 + 8) || setCommandEncoder<WebGPU::Buffer,WTF::WeakPtr<WebGPU::RenderPassEncoder,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>(a2, (a1 + 312)))
  {
    if (*(a2 + 44) != 4 && !*(a2 + 8) || (v24 = *(a2 + 280), !*(v24 + 8)) || v24 != *(a1 + 8))
    {

      WebGPU::RenderBundleEncoder::makeInvalid(a1, &cfstr_Setindexbuffer.isa);
      return;
    }

    v25 = *(*(a1 + 16) + 8);
    v26 = *(a1 + 312);
    if (v26 && *(v26 + 8) || *(a1 + 320) || *(a1 + 72))
    {
      v27 = *(a1 + 192);
      while (1)
      {
        v28 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v29 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v29 == v28)
        {
          goto LABEL_42;
        }
      }

      v30 = 0;
      v31 = *a2;
      v32 = 1;
      atomic_compare_exchange_strong_explicit(*a2, &v30, 1u, memory_order_acquire, memory_order_acquire);
      if (v30)
      {
        MEMORY[0x22AA683C0](v31);
      }

      ++*(v31 + 8);
      atomic_compare_exchange_strong_explicit(v31, &v32, 0, memory_order_release, memory_order_relaxed);
      if (v32 != 1)
      {
        WTF::Lock::unlockSlow(v31);
      }

LABEL_42:
      v43 = a2;
      LOBYTE(v44) = 0;
      WebGPU::RenderBundleEncoder::addResource(a1, v27, v25, 1, &v43);
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v47, &v43);
      goto LABEL_43;
    }

    v33 = *(a2 + 32);
    if (a5 == -1)
    {
      if (v33 < a4)
      {
        goto LABEL_56;
      }

      a5 = v33 - a4;
    }

    if (!__CFADD__(a4, a5) && a4 + a5 <= v33)
    {
      if ((*(a2 + 40) & 0x10) == 0)
      {
        goto LABEL_54;
      }

      v34 = 3;
      if (a3 == 1)
      {
        v34 = 1;
      }

      if ((v34 & a4) == 0)
      {
        if (*(a2 + 44) == 4 || *(a2 + 8))
        {
          v36 = *(a2 + 280);
          if (*(v36 + 8))
          {
            if (v36 == *(a1 + 8))
            {
              WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::Ref(&v43, a2);
              LODWORD(v44) = a3;
              *(&v44 + 1) = a4;
              v45 = a5;
              ++*a1;
              v46 = a1;
              v37 = WTF::fastMalloc(0x30);
              *v37 = &unk_2838D3358;
              *(v37 + 8) = v43;
              v38 = v45;
              *(v37 + 16) = v44;
              *(v37 + 32) = v38;
              v39 = v46;
              v43 = 0;
              v46 = 0;
              v47 = v37;
              *(v37 + 40) = v39;
              WebGPU::RenderBundleEncoder::recordCommand(a1, &v47);
              v41 = v47;
              v47 = 0;
              if (v41)
              {
                (*(*v41 + 8))(v41);
              }

              WebGPU::RenderBundleEncoder::setIndexBuffer(WebGPU::Buffer &,WGPUIndexFormat,unsigned long long,unsigned long long)::$_0::~$_0(&v43, v40);
              goto LABEL_43;
            }
          }
        }

        v35 = @"setIndexBuffer: buffer is not valid";
      }

      else
      {
LABEL_54:
        v35 = @"setIndexBuffer: validation failed";
      }

      WebGPU::RenderBundleEncoder::makeInvalid(a1, &v35->isa);
LABEL_43:

      return;
    }

LABEL_56:
    WebGPU::RenderBundleEncoder::makeInvalid(a1, &cfstr_Setindexbuffer_0.isa);
    goto LABEL_43;
  }
}

void sub_2256C8500(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_ullong *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = a16;
  a16 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    WebGPU::RenderBundleEncoder::setIndexBuffer(WebGPU::Buffer &,WGPUIndexFormat,unsigned long long,unsigned long long)::$_0::~$_0(&a11, v19);

    _Unwind_Resume(a1);
  }

  WebGPU::RenderBundleEncoder::setIndexBuffer(WebGPU::Buffer &,WGPUIndexFormat,unsigned long long,unsigned long long)::$_0::~$_0(&a11, a2);

  _Unwind_Resume(a1);
}

void sub_2256C8590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(va1, va);

  _Unwind_Resume(a1);
}

BOOL setCommandEncoder<WebGPU::Buffer,WTF::WeakPtr<WebGPU::RenderPassEncoder,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>(WebGPU::Buffer *a1, uint64_t *a2)
{
  if (!*a2)
  {
    goto LABEL_12;
  }

  v2 = *(*a2 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *(v2 + 184);
  ++*(v4 + 4);
  WebGPU::Buffer::setCommandEncoder(a1, v4);
  if (*(v4 + 4) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
    v5 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x2256C8698);
  }

  --*(v4 + 4);
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_12;
  }

LABEL_7:
  v8 = *(v5 + 8);
  if (!v8)
  {
    goto LABEL_12;
  }

  if (*(*(v8 + 184) + 172))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 16);
  }

  v10 = v9;
  v11 = v10 != 0;

  return v11;
}

void sub_2256C86BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

atomic_ullong **WebGPU::RenderBundleEncoder::setIndexBuffer(WebGPU::Buffer &,WGPUIndexFormat,unsigned long long,unsigned long long)::$_0::~$_0(atomic_ullong **result, void *a2)
{
  v2 = result[4];
  result[4] = 0;
  if (!v2)
  {
LABEL_4:
    v3 = *result;
    *result = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    return result;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v11 = result;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v12, v13);
  result = v11;
  v3 = *v11;
  *v11 = 0;
  if (v3)
  {
    do
    {
LABEL_5:
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        v9 = *v3;
        v10 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v9, a2);
        return v10;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      v6 = result;
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v7, v8);
      return v6;
    }
  }

  return result;
}

BOOL WebGPU::RenderBundleEncoder::icbNeedsToBeSplit(WebGPU::RenderBundleEncoder *this, id *a2, id *a3)
{
  if (*(this + 400))
  {
    return 0;
  }

  v4 = *(this + 39);
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 8) != 0;
  }

  result = 0;
  if (a2 != a3 && (v4 & 1) == 0)
  {
    if (*(a2 + 23) == *(a3 + 23) && a2[8] == a3[8] && a2[7] == a3[7] && a2[9] == a3[9])
    {
      v7 = a2[14];
      v8 = a3;
      v9 = a3[14];
      v10 = v7 | v9 && ([v7 isEqual:v9] & 1) == 0 || *(a2 + 20) != v8[20] || *(a2 + 21) != v8[21] || *(a2 + 22) != v8[22];

      return v10;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

WebGPU::RenderPipeline **WebGPU::RenderBundleEncoder::setPipeline(WebGPU::RenderPipeline const&)::$_0::~$_0(WebGPU::RenderPipeline **result, void *a2)
{
  v2 = result[1];
  result[1] = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v4 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
      bmalloc::api::tzoneFree(v5, v6);
      result = v4;
      v3 = *v4;
      *v4 = 0;
      if (!v3)
      {
        return result;
      }

      goto LABEL_5;
    }

    --*v2;
  }

  v3 = *result;
  *result = 0;
  if (!v3)
  {
    return result;
  }

LABEL_5:
  if (*(v3 + 2) == 1)
  {
    v7 = result;
    WebGPU::RenderPipeline::~RenderPipeline(v3, a2);
    bmalloc::api::tzoneFree(v8, v9);
    return v7;
  }

  else
  {
    --*(v3 + 2);
  }

  return result;
}

int32x2_t WebGPU::RenderBundleEncoder::setVertexBuffer(WebGPU::RenderBundleEncoder *this, unsigned int a2, WebGPU::Buffer *a3, unint64_t a4, unint64_t a5)
{
  v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::setVertexBuffer(uint32_t, Buffer *, uint64_t, uint64_t)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(this, v69))
  {

    return result;
  }

  v11 = *(this + 10);

  if (!v11)
  {
    return result;
  }

  v12 = *(this + 14);
  if (v12 <= a2)
  {
    v12 = a2;
  }

  *(this + 14) = v12;
  if (a3)
  {
    if (*(a3 + 44) != 4 && !*(a3 + 1) || (v13 = *(a3 + 35), !*(v13 + 8)) || v13 != *(this + 1))
    {
      v14 = @"setVertexBuffer: invalid index buffer";
LABEL_14:

      WebGPU::RenderBundleEncoder::makeInvalid(this, &v14->isa);
      return result;
    }
  }

  v15 = *(this + 39);
  if (v15 && *(v15 + 8) || *(this + 40) || *(this + 9))
  {
    goto LABEL_21;
  }

  if (!a3)
  {
    LODWORD(v71) = a2;
    v72 = 0;
    goto LABEL_70;
  }

  if (*(a3 + 44) != 4 && !*(a3 + 1) || (v50 = *(a3 + 35), !*(v50 + 8)) || (v51 = *(this + 1), v50 != v51))
  {
    v14 = @"setVertexBuffer: buffer is not valid";
    goto LABEL_14;
  }

  if (a5 == -1)
  {
    v61 = *(a3 + 4);
    v62 = v61 >= a4;
    v63 = v61 - a4;
    if (!v62)
    {
LABEL_93:
      v14 = @"setVertexBuffer: size overflowed";
      goto LABEL_14;
    }

    a5 = v63;
  }

  if (__CFADD__(a4, a5) || a4 + a5 > *(a3 + 4))
  {
    goto LABEL_93;
  }

  if (*(v51 + 160) <= a2 || (a4 & 3) != 0 || (*(a3 + 10) & 0x20) == 0)
  {
    v14 = @"setVertexBuffer: validation failed";
    goto LABEL_14;
  }

  LODWORD(v71) = a2;
  while (1)
  {
    v64 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    v65 = *a3;
    atomic_compare_exchange_strong_explicit(a3, &v65, v64 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v65 == v64)
    {
      goto LABEL_104;
    }
  }

  v66 = 0;
  v67 = *a3;
  v68 = 1;
  atomic_compare_exchange_strong_explicit(*a3, &v66, 1u, memory_order_acquire, memory_order_acquire);
  if (v66)
  {
    MEMORY[0x22AA683C0](v67);
    ++*(v67 + 8);
    atomic_compare_exchange_strong_explicit(v67, &v68, 0, memory_order_release, memory_order_relaxed);
    if (v68 == 1)
    {
      goto LABEL_104;
    }

LABEL_106:
    WTF::Lock::unlockSlow(v67);
    goto LABEL_104;
  }

  ++*(v67 + 8);
  atomic_compare_exchange_strong_explicit(v67, &v68, 0, memory_order_release, memory_order_relaxed);
  if (v68 != 1)
  {
    goto LABEL_106;
  }

LABEL_104:
  v72 = a3;
LABEL_70:
  *&v73 = a4;
  *(&v73 + 1) = a5;
  ++*this;
  v52 = WTF::fastMalloc(0x30);
  v53 = &unk_2838D33A8;
  *v52 = &unk_2838D33A8;
  *(v52 + 8) = v71;
  *(v52 + 16) = a3;
  result = v73;
  *(v52 + 24) = v73;
  v72 = 0;
  v74 = 0;
  v75 = v52;
  *(v52 + 40) = this;
  if (!*(this + 10))
  {
    v75 = 0;
LABEL_86:
    v53[1]();
    goto LABEL_21;
  }

  if (*(this + 36))
  {
    __break(0xC471u);
    goto LABEL_112;
  }

  v54 = *(this + 47);
  if (v54 == *(this + 46))
  {
    v55 = WTF::Vector<WTF::Function<BOOL ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 176, v54 + 1, &v75);
    v54 = *(this + 47);
    v56 = (*(this + 22) + 8 * v54);
    v52 = *v55;
  }

  else
  {
    v56 = (*(this + 22) + 8 * v54);
    v55 = &v75;
  }

  *v55 = 0;
  *v56 = v52;
  *(this + 47) = v54 + 1;
  v60 = v75;
  v75 = 0;
  if (v60)
  {
    v53 = *v60;
    goto LABEL_86;
  }

LABEL_21:
  if (a3)
  {
    if (a2 != -2)
    {
      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256C907CLL);
      }

      v16 = *(this + 8);
      if (!v16)
      {
        WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(this + 8, 8u, 0);
        v16 = *(this + 8);
      }

      v17 = *(v16 - 8);
      v18 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
      v19 = (v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11);
      v20 = v17 & (v19 ^ HIWORD(v19));
      v21 = (v16 + 16 * v20);
      v22 = *v21;
      if (*v21 != -1)
      {
        v23 = 0;
        v24 = 1;
        while (v22 != a2)
        {
          if (v22 == -2)
          {
            v23 = v21;
          }

          v20 = (v20 + v24) & v17;
          v21 = (v16 + 16 * v20);
          v22 = *v21;
          ++v24;
          if (*v21 == -1)
          {
            if (v23)
            {
              *v23 = -1;
              *(v23 + 1) = 0;
              --*(v16 - 16);
              v21 = v23;
            }

            goto LABEL_34;
          }
        }

        goto LABEL_50;
      }

LABEL_34:
      *v21 = a2;
      *(v21 + 1) = a5;
      v25 = *(v16 - 16);
      v26 = *(v16 - 12) + 1;
      *(v16 - 12) = v26;
      v27 = (v25 + v26);
      v28 = *(v16 - 4);
      if (v28 > 0x400)
      {
        if (v28 > 2 * v27)
        {
          goto LABEL_50;
        }
      }

      else if (3 * v28 > 4 * v27)
      {
        goto LABEL_50;
      }

      v36 = v28 << (6 * v26 >= (2 * v28));
      if (v28)
      {
        v37 = v36;
      }

      else
      {
        v37 = 8;
      }

      WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(this + 8, v37, v21);
LABEL_50:
      v38 = *(this + 24);
      v39 = *(a3 + 1);
      while (1)
      {
        v40 = *a3;
        if ((*a3 & 1) == 0)
        {
          break;
        }

        v41 = *a3;
        atomic_compare_exchange_strong_explicit(a3, &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v41 == v40)
        {
          goto LABEL_58;
        }
      }

      v42 = 0;
      v43 = *a3;
      v44 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v42, 1u, memory_order_acquire, memory_order_acquire);
      if (v42)
      {
        v70 = v43;
        MEMORY[0x22AA683C0]();
        v43 = v70;
      }

      ++v43[1];
      atomic_compare_exchange_strong_explicit(v43, &v44, 0, memory_order_release, memory_order_relaxed);
      if (v44 != 1)
      {
        WTF::Lock::unlockSlow(v43);
      }

LABEL_58:
      v71 = a3;
      LOBYTE(v72) = 0;
      v45 = WebGPU::RenderBundleEncoder::addResource(this, v38, v39, 1, &v71);
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(&v75, &v71);

      if (v45)
      {
        v46 = *(a3 + 1);
        if (*(this + 53) <= a2)
        {
          __break(0xC471u);
          JUMPOUT(0x2256C9084);
        }

        v47 = *(this + 25) + 40 * a2;
        v48 = *v47;
        *v47 = v46;

        *(v47 + 8) = a4;
        *(v47 + 16) = 0;
        *(v47 + 24) = 0;
        *(v47 + 32) = a5;
        v49 = *(this + 39);
        if (v49 && *(v49 + 8))
        {
          setCommandEncoder<WebGPU::Buffer,WTF::WeakPtr<WebGPU::RenderPassEncoder,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>(a3, this + 39);
        }
      }

      return result;
    }

    __break(0xC471u);
LABEL_112:
    JUMPOUT(0x2256C905CLL);
  }

  if (*(*(this + 1) + 160) > a2)
  {
    v29 = *(this + 8);
    if (v29)
    {
      if (a2 == -2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256C90A4);
      }

      v30 = *(v29 - 8);
      v31 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
      v32 = (v31 ^ (v31 >> 6)) + ~((v31 ^ (v31 >> 6)) << 11);
      v33 = v30 & (v32 ^ HIWORD(v32));
      v34 = *(v29 + 16 * v33);
      if (v34 != a2)
      {
        v35 = 1;
        while (v34 != -1)
        {
          v33 = (v33 + v35) & v30;
          v34 = *(v29 + 16 * v33);
          ++v35;
          if (v34 == a2)
          {
            goto LABEL_75;
          }
        }

        v33 = *(v29 - 4);
      }

LABEL_75:
      v57 = *(v29 - 4);
      if (v33 != v57)
      {
        *(v29 + 16 * v33) = -2;
        result = vadd_s32(*(v29 - 16), 0xFFFFFFFF00000001);
        *(v29 - 16) = result;
        if (v57 >= 9 && 6 * result.i32[1] < v57)
        {
          WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(this + 8, v57 >> 1, 0);
        }
      }
    }
  }

  if (*(this + 53) > a2)
  {
    v58 = *(this + 25) + 40 * a2;
    v59 = *v58;
    *v58 = 0;

    result = 0;
    *(v58 + 24) = 0u;
    *(v58 + 8) = 0u;
  }

  return result;
}

void sub_2256C90D8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    WebGPU::RenderBundleEncoder::setVertexBuffer(unsigned int,WebGPU::Buffer *,unsigned long long,unsigned long long)::$_0::~$_0(&a11, v18);
    _Unwind_Resume(a1);
  }

  WebGPU::RenderBundleEncoder::setVertexBuffer(unsigned int,WebGPU::Buffer *,unsigned long long,unsigned long long)::$_0::~$_0(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_2256C9130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>,WTF::RefPtr<WebGPU::TextureView const,WTF::RawPtrTraits<WebGPU::TextureView const>,WTF::DefaultRefDerefTraits<WebGPU::TextureView const>>,WTF::RefPtr<WebGPU::ExternalTexture const,WTF::RawPtrTraits<WebGPU::ExternalTexture const>,WTF::DefaultRefDerefTraits<WebGPU::ExternalTexture const>>>,(mpark::detail::Trait)1> &>(va1, va);

  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderBundleEncoder::setVertexBuffer(unsigned int,WebGPU::Buffer *,unsigned long long,unsigned long long)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (!v3)
  {
LABEL_4:
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4)
    {
      goto LABEL_5;
    }

    return a1;
  }

  if (*v3 != 1)
  {
    --*v3;
    goto LABEL_4;
  }

  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v3);
  bmalloc::api::tzoneFree(v10, v11);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    do
    {
LABEL_5:
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
        return a1;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
    if (v5 == 3)
    {
      WebGPU::Buffer::~Buffer(v4);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  return a1;
}

id *wgpuRenderBundleEncoderRelease(id *result)
{
  if (*result == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void wgpuRenderBundleEncoderDraw(WebGPU::RenderBundleEncoder *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  ++*a1;
  WebGPU::RenderBundleEncoder::draw(a1, a2, a3, a4, a5);
  if (*a1 == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);

    bmalloc::api::tzoneFree(v6, v7);
  }

  else
  {
    --*a1;
  }
}

void sub_2256C92C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void wgpuRenderBundleEncoderDrawIndexed(WebGPU::RenderBundleEncoder *a1, WebGPU::RenderPassEncoder *a2, unsigned int a3, unsigned int a4, int a5, void *a6)
{
  ++*a1;
  WebGPU::RenderBundleEncoder::drawIndexed(a1, a2, a3, a4, a5, a6);
  if (*a1 == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);

    bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }
}

void sub_2256C9350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t wgpuRenderBundleEncoderDrawIndexedIndirect(WebGPU::RenderBundleEncoder *this, atomic_ullong *a2, unint64_t a3)
{
  if (!a2)
  {
    result = 1479;
    __break(0xC471u);
    return result;
  }

  ++*this;
  while (1)
  {
    v6 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v7 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
  v9 = *a2;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

LABEL_10:
  WebGPU::RenderBundleEncoder::drawIndexedIndirect(this, a2, a3);
  do
  {
    v12 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v11);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_18;
    }

    v13 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v13 != v12);
  if (v12 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  result = this;
  if (this)
  {
LABEL_18:
    if (*result == 1)
    {
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(result);

      return bmalloc::api::tzoneFree(v17, v18);
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_2256C94F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256C9508(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9, id *a10)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a9, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

uint64_t wgpuRenderBundleEncoderDrawIndirect(WebGPU::RenderBundleEncoder *this, atomic_ullong *a2, WebGPU::Buffer *a3)
{
  if (!a2)
  {
    result = 1485;
    __break(0xC471u);
    return result;
  }

  ++*this;
  while (1)
  {
    v6 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v7 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
  v9 = *a2;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x22AA683C0](v9);
  }

  ++*(v9 + 8);
  atomic_compare_exchange_strong_explicit(v9, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

LABEL_10:
  WebGPU::RenderBundleEncoder::drawIndirect(this, a2, a3);
  do
  {
    v12 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v11);
      result = this;
      if (!this)
      {
        return result;
      }

      goto LABEL_18;
    }

    v13 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v13 != v12);
  if (v12 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  result = this;
  if (this)
  {
LABEL_18:
    if (*result == 1)
    {
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(result);

      return bmalloc::api::tzoneFree(v17, v18);
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_2256C96B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256C96C8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9, id *a10)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a9, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

uint64_t wgpuRenderBundleEncoderFinish(uint64_t a1, void *a2)
{
  ++*a1;
  v4 = *(a1 + 8);
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
      goto LABEL_8;
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
  if (v9 == 1)
  {
LABEL_8:
    v51 = v4;
    if (!*(a1 + 80))
    {
      goto LABEL_10;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v8);
    v51 = v4;
    if (!*(a1 + 80))
    {
      goto LABEL_10;
    }
  }

  if (*(a1 + 88) || !v4[1] || *(a1 + 401) == 1)
  {
LABEL_10:
    WebGPU::Device::generateAValidationError(v4, *(a1 + 392));
    v11 = *(a1 + 392);
    if (WebGPU::RenderBundle::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebGPU::RenderBundle::s_heapRef, v10);
    }

    else
    {
      NonCompact = WebGPU::RenderBundle::operatorNewSlow(0x98);
    }

    v13 = NonCompact;
    WebGPU::RenderBundle::RenderBundle(NonCompact, v4, v11);
    v47 = v13;

    goto LABEL_13;
  }

  v25 = *(a1 + 400);
  if ((v25 & 1) == 0)
  {
    if (*(a1 + 96))
    {
      v25 = 0;
    }

    else
    {
      v25 = [*(a1 + 272) count] == 0;
    }
  }

  *(a1 + 400) = v25;
  v26 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v26)
  {
    do
    {
      v27 = *v26;
      if ((*v26 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v26, a2);
        goto LABEL_34;
      }

      v28 = *v26;
      atomic_compare_exchange_strong_explicit(v26, &v28, v27 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v28 != v27);
    if (v27 == 3)
    {
      WebGPU::Buffer::~Buffer(v26);
      bmalloc::api::tzoneFree(v29, v30);
    }
  }

LABEL_34:
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3321888768;
  v49[2] = ___ZN6WebGPU19RenderBundleEncoder6finishERK26WGPURenderBundleDescriptor_block_invoke;
  v49[3] = &__block_descriptor_48_ea8_40c87_ZTSN3WTF3RefIN6WebGPU6DeviceENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEE_e138__Ref_WebGPU::RenderBundle__WTF::RawPtrTraits_WebGPU::RenderBundle___WTF::DefaultRefDerefTraits_WebGPU::RenderBundle_____RenderBundle__8__0l;
  v49[4] = a1;
  while (1)
  {
    v31 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v32 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v32 == v31)
    {
      goto LABEL_42;
    }
  }

  v33 = 0;
  v34 = *v4;
  v35 = 1;
  atomic_compare_exchange_strong_explicit(*v4, &v33, 1u, memory_order_acquire, memory_order_acquire);
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

LABEL_42:
  v50 = v4;
  v36 = MEMORY[0x22AA68A80](v49);
  v36[2](&v47);
  v37 = v47;
  v38 = a2[1];
  if (v38)
  {
    strlen(v38);
  }

  WTF::String::fromUTF8();
  WebGPU::RenderBundle::setLabel(v37, &v48);
  v40 = v48;
  v48 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

  *(a1 + 401) = 1;

  v41 = v50;
  v50 = 0;
  if (v41)
  {
    do
    {
      v42 = *v41;
      if ((*v41 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v41, v14);
        goto LABEL_13;
      }

      v43 = *v41;
      atomic_compare_exchange_strong_explicit(v41, &v43, v42 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v43 != v42);
    if (v42 == 3)
    {
      WebGPU::Device::~Device(v41, v14);
      bmalloc::api::tzoneFree(v44, v45);
    }
  }

LABEL_13:
  v15 = v51;
  v51 = 0;
  if (v15)
  {
    while (1)
    {
      v16 = *v15;
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        if (v16 == 3)
        {
          WebGPU::Device::~Device(v15, v14);
          bmalloc::api::tzoneFree(v18, v19);
        }

        goto LABEL_18;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v15, v14);
    result = v47;
    v47 = 0;
    v21 = *a1 - 1;
    if (*a1 != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_18:
    result = v47;
    v47 = 0;
    v21 = *a1 - 1;
    if (*a1 != 1)
    {
LABEL_19:
      *a1 = v21;
      return result;
    }
  }

  v22 = result;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);
  bmalloc::api::tzoneFree(v23, v24);
  return v22;
}

void sub_2256C9AA8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, WTF::StringImpl *a11)
{
  WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v11 - 56), a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a9);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuRenderBundleEncoderInsertDebugMarker(atomic_ullong **a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::insertDebugMarker(String &&)"];
  WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(a1, v3);

  result = v8;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v8, v4);
  }

  if (*a1 == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256C9C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, id *a12)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v14);
      WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a12);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a12);
  _Unwind_Resume(a1);
}

void wgpuRenderBundleEncoderPopDebugGroup(uint64_t a1)
{
  ++*a1;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::popDebugGroup()", a1];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(a1, v2))
  {
  }

  else
  {
    v3 = *(a1 + 80);

    if (v3 && *(a1 + 4) - 3 <= 0xFFFFFFFD)
    {
      v4 = *(a1 + 88);
      if (v4)
      {
        *(a1 + 88) = v4 - 1;
      }

      else
      {
        WebGPU::RenderBundleEncoder::makeInvalid(a1, &cfstr_Validatepopdeb.isa);
      }
    }
  }

  if (*a1 == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);

    bmalloc::api::tzoneFree(v5, v6);
  }

  else
  {
    --*a1;
  }
}

void sub_2256C9D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256C9DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuRenderBundleEncoderPushDebugGroup(uint64_t a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: failed as encoding has finished", "void WebGPU::RenderBundleEncoder::pushDebugGroup(String &&)"];
  if (WebGPU::RenderBundleEncoder::returnIfEncodingIsFinished(a1, v3))
  {
  }

  else
  {
    v5 = *(a1 + 80);

    if (v5 && *(a1 + 4) - 3 <= 0xFFFFFFFD)
    {
      ++*(a1 + 88);
    }
  }

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v4);
  }

  if (*a1 == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256C9EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, id *a12)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v14);
      WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a12);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a12);
  _Unwind_Resume(a1);
}

void wgpuRenderBundleEncoderSetBindGroupWithDynamicOffsets(id *a1, unsigned int a2, WebGPU::BindGroup *a3, uint64_t a4)
{
  ++*a1;
  if (a3)
  {
    ++*(a3 + 2);
  }

  WebGPU::RenderBundleEncoder::setBindGroup(a1, a2, a3, a4);
  if (a3)
  {
    if (*(a3 + 2) == 1)
    {
      WebGPU::BindGroup::~BindGroup(a3, v6, v7);
      bmalloc::api::tzoneFree(v9, v10);
      v8 = *a1 - 1;
      if (*a1 != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    --*(a3 + 2);
  }

  v8 = *a1 - 1;
  if (*a1 != 1)
  {
LABEL_7:
    *a1 = v8;
    return;
  }

LABEL_9:
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);

  bmalloc::api::tzoneFree(v11, v12);
}

void sub_2256C9FF4(_Unwind_Exception *a1, WTF::StringImpl *a2, const WTF::StringImpl *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebGPU::BindGroup *a9, id *a10)
{
  if (v10)
  {
    WTF::Ref<WebGPU::BindGroup,WTF::RawPtrTraits<WebGPU::BindGroup>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup>>::~Ref(&a9, a2, a3);
  }

  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

id *wgpuRenderBundleEncoderSetIndexBuffer(id *a1, atomic_ullong *a2, int a3, unint64_t a4, unint64_t a5)
{
  ++*a1;
  while (1)
  {
    v10 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v11 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
  v13 = *a2;
  v14 = 1;
  atomic_compare_exchange_strong_explicit(*a2, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    MEMORY[0x22AA683C0](v13);
  }

  ++*(v13 + 8);
  atomic_compare_exchange_strong_explicit(v13, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    WTF::Lock::unlockSlow(v13);
  }

LABEL_9:
  WebGPU::RenderBundleEncoder::setIndexBuffer(a1, a2, a3, a4, a5);
  do
  {
    v16 = *a2;
    if ((*a2 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*a2, v15);
      result = a1;
      if (!a1)
      {
        return result;
      }

      goto LABEL_17;
    }

    v17 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v17, v16 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v17 != v16);
  if (v16 == 3)
  {
    WebGPU::Buffer::~Buffer(a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  result = a1;
  if (a1)
  {
LABEL_17:
    if (*result == 1)
    {
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(result);

      return bmalloc::api::tzoneFree(v21, v22);
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_2256CA188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_2256CA19C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong *a9, id *a10)
{
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(&a9, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

void wgpuRenderBundleEncoderSetPipeline(WebGPU::RenderBundleEncoder *a1, const WebGPU::RenderPipeline *a2)
{
  ++*a1;
  ++*(a2 + 2);
  WebGPU::RenderBundleEncoder::setPipeline(a1, a2);
  if (*(a2 + 2) == 1)
  {
    WebGPU::RenderPipeline::~RenderPipeline(a2, v4);
    bmalloc::api::tzoneFree(v6, v7);
    v5 = *a1 - 1;
    if (*a1 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    --*(a2 + 2);
    v5 = *a1 - 1;
    if (*a1 != 1)
    {
LABEL_3:
      *a1 = v5;
      return;
    }
  }

  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);

  bmalloc::api::tzoneFree(v8, v9);
}

void sub_2256CA264(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebGPU::RenderPipeline *a9, id *a10)
{
  WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(&a9, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

void wgpuRenderBundleEncoderSetVertexBuffer(WebGPU::RenderBundleEncoder *this, void *a2, atomic_ullong *a3, unint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (a3)
  {
    while (1)
    {
      v10 = *a3;
      if ((*a3 & 1) == 0)
      {
        break;
      }

      v11 = *a3;
      atomic_compare_exchange_strong_explicit(a3, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    v12 = 0;
    v13 = *a3;
    v14 = 1;
    atomic_compare_exchange_strong_explicit(*a3, &v12, 1u, memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      MEMORY[0x22AA683C0](v13);
    }

    ++*(v13 + 8);
    atomic_compare_exchange_strong_explicit(v13, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {
      WTF::Lock::unlockSlow(v13);
    }

LABEL_9:
    while (1)
    {
      v15 = *a3;
      if ((*a3 & 1) == 0)
      {
        break;
      }

      v16 = *a3;
      atomic_compare_exchange_strong_explicit(a3, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_15;
      }
    }

    v17 = 0;
    v18 = *a3;
    v19 = 1;
    atomic_compare_exchange_strong_explicit(*a3, &v17, 1u, memory_order_acquire, memory_order_acquire);
    if (v17)
    {
      MEMORY[0x22AA683C0](v18);
    }

    ++*(v18 + 8);
    atomic_compare_exchange_strong_explicit(v18, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 == 1)
    {
LABEL_15:
      v20 = a3;
      if (a3)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    WTF::Lock::unlockSlow(v18);
    v20 = a3;
    if (a3)
    {
      do
      {
LABEL_16:
        v21 = *v20;
        if ((*v20 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v20, a2);
          goto LABEL_21;
        }

        v22 = *v20;
        atomic_compare_exchange_strong_explicit(v20, &v22, v21 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v22 != v21);
      if (v21 == 3)
      {
        WebGPU::Buffer::~Buffer(v20);
        bmalloc::api::tzoneFree(v23, v24);
      }
    }
  }

LABEL_21:
  ++*this;
  WebGPU::RenderBundleEncoder::setVertexBuffer(this, v8, a3, a4, a5);
  if (*this == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(this);
    bmalloc::api::tzoneFree(v26, v27);
    if (a3)
    {
LABEL_25:
      while (1)
      {
        v28 = *a3;
        if ((*a3 & 1) == 0)
        {
          break;
        }

        v29 = *a3;
        atomic_compare_exchange_strong_explicit(a3, &v29, v28 - 2, memory_order_relaxed, memory_order_relaxed);
        if (v29 == v28)
        {
          if (v28 == 3)
          {
            WebGPU::Buffer::~Buffer(a3);

            bmalloc::api::tzoneFree(v30, v31);
          }

          return;
        }
      }

      v32 = *a3;

      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v32, v25);
    }
  }

  else
  {
    --*this;
    if (a3)
    {
      goto LABEL_25;
    }
  }
}

void sub_2256CA4D0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebGPU::Buffer,WTF::RawPtrTraits<WebGPU::Buffer>,WTF::DefaultRefDerefTraits<WebGPU::Buffer>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_2256CA4E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(va);
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v2, v4);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *wgpuRenderBundleEncoderSetLabel(id *a1, char *__s)
{
  ++*a1;
  if (__s)
  {
    strlen(__s);
  }

  WTF::String::fromUTF8();
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x22AA68130](&v10);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  else
  {
    v10 = &stru_2838D6D18;
  }

  [a1[9] setLabel:v10];
  v4 = v10;
  v10 = 0;

  result = v9;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v9, v5);
  }

  if (*a1 == 1)
  {
    WebGPU::RenderBundleEncoder::~RenderBundleEncoder(a1);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  else
  {
    --*a1;
  }

  return result;
}

void sub_2256CA610(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, id *a11, __int16 a12, char a13, char a14)
{
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a11);
      _Unwind_Resume(a1);
    }
  }

  WTF::Ref<WebGPU::RenderBundleEncoder,WTF::RawPtrTraits<WebGPU::RenderBundleEncoder>,WTF::DefaultRefDerefTraits<WebGPU::RenderBundleEncoder>>::~Ref(&a11);
  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<objc_object  {objcproto11MTLResource}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 8 * v6 <= a3)
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

    if (!(v9 >> 29))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((8 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = v11;
        v14 = 8 * v6;
        v15 = v5;
        do
        {
          v16 = *v15;
          *v15 = 0;
          *v13++ = v16;
          v17 = *v15++;

          v14 -= 8;
        }

        while (v14);
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

      return v3;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x2256CA804);
  }

  v18 = *(a1 + 8);
  if (v18 + (v18 >> 1) <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18 + (v18 >> 1);
  }

  if (v19 <= a2)
  {
    v19 = a2;
  }

  if (v19 >> 29)
  {
    goto LABEL_38;
  }

  v20 = a3 - v5;
  if (v19 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v19;
  }

  v22 = WTF::fastMalloc((8 * v21));
  v23 = 0;
  *(a1 + 8) = v21;
  *a1 = v22;
  v24 = 8 * v6;
  do
  {
    v25 = *(v5 + v23);
    *(v5 + v23) = 0;
    *(v22 + v23) = v25;

    v23 += 8;
  }

  while (v24 != v23);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v26);
  }

  return *a1 + v20;
}

WebGPU::RenderPipeline **WTF::Ref<WebGPU::RenderPipeline,WTF::RawPtrTraits<WebGPU::RenderPipeline>,WTF::DefaultRefDerefTraits<WebGPU::RenderPipeline>>::~Ref(WebGPU::RenderPipeline **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v3 = result;
      WebGPU::RenderPipeline::~RenderPipeline(v2, a2);
      bmalloc::api::tzoneFree(v4, v5);
      return v3;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

WebGPU::RenderPipeline *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(WebGPU::RenderPipeline *result, void *a2)
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

WebGPU::RenderPassEncoder *WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPassEncoder>::deref(WebGPU::RenderPassEncoder *result)
{
  if (*(result + 2) == 1)
  {
    WebGPU::RenderPassEncoder::~RenderPassEncoder(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(result + 2);
  }

  return result;
}

uint64_t *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::clear(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    *result = 0;
    v3 = *(v2 - 4);
    if (v3)
    {
      v4 = v2 + 8;
      do
      {
        if (*(v4 - 8) != -2)
        {
          v5 = *v4;
          if (*v4)
          {
            *v4 = 0;
            *(v4 + 8) = 0;
            WTF::fastFree(v5, a2);
          }
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    return WTF::fastFree((v2 - 16), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::draw(unsigned int,unsigned int,unsigned int,unsigned int)::$_0,BOOL>::~CallableWrapper(void *result)
{
  *result = &unk_2838D3290;
  v1 = result[3];
  result[3] = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::draw(unsigned int,unsigned int,unsigned int,unsigned int)::$_0,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D3290;
  v2 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v4 = a1;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::IndexBufferAndIndexData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::IndexBufferAndIndexData>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::IndexBufferAndIndexData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::IndexBufferAndIndexData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    result = WTF::fastMalloc((88 * a2 + 16));
    v9 = result + 16;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = WTF::fastMalloc((88 * a2 + 16));
    v9 = result + 16;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v10 = result + 56;
  v11 = a2;
  do
  {
    *(v10 - 40) = -1;
    *v10 = 0uLL;
    *(v10 + 16) = 0uLL;
    *(v10 + 32) = 0uLL;
    *(v10 - 32) = 0uLL;
    *(v10 - 16) = 0uLL;
    *v10 = -1;
    *(v10 + 8) = 0uLL;
    *(v10 + 24) = 0uLL;
    *(v10 + 40) = 3;
    v10 += 88;
    --v11;
  }

  while (v11);
LABEL_7:
  *a1 = v9;
  *(result + 8) = a2 - 1;
  *(result + 12) = a2;
  *result = 0;
  *(result + 4) = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v13 = (v4 + 88 * i);
      v14 = *v13;
      if (*v13 != -2)
      {
        if (v14 == -1)
        {
          result = v13[1];
          v13[1] = 0;
          if (!result)
          {
            continue;
          }

          do
          {
            v15 = *result;
            if ((*result & 1) == 0)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*result, v8);
              goto LABEL_10;
            }

            v16 = *result;
            atomic_compare_exchange_strong_explicit(result, &v16, v15 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v16 != v15);
          if (v15 != 3)
          {
            continue;
          }
        }

        else
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v19 + 88 * v24;
            v24 = (v24 + v25++) & v20;
          }

          while (*v26 != -1);
          v27 = *(v26 + 8);
          *(v26 + 8) = 0;
          if (v27)
          {
            do
            {
              v28 = *v27;
              if ((*v27 & 1) == 0)
              {
                WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v27, v8);
                goto LABEL_29;
              }

              v29 = *v27;
              atomic_compare_exchange_strong_explicit(v27, &v29, v28 - 2, memory_order_relaxed, memory_order_relaxed);
            }

            while (v29 != v28);
            if (v28 == 3)
            {
              WebGPU::Buffer::~Buffer(v27);
              bmalloc::api::tzoneFree(v30, v31);
            }
          }

LABEL_29:
          v32 = *v13;
          v33 = v13[1];
          v13[1] = 0;
          *v26 = v32;
          *(v26 + 8) = v33;
          *(v26 + 16) = *(v13 + 1);
          v34 = *(v13 + 2);
          v35 = *(v13 + 3);
          v36 = *(v13 + 4);
          *(v26 + 80) = *(v13 + 20);
          *(v26 + 48) = v35;
          *(v26 + 64) = v36;
          *(v26 + 32) = v34;
          result = v13[1];
          v13[1] = 0;
          if (!result)
          {
            continue;
          }

          do
          {
            v37 = *result;
            if ((*result & 1) == 0)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*result, v8);
              goto LABEL_10;
            }

            v38 = *result;
            atomic_compare_exchange_strong_explicit(result, &v38, v37 - 2, memory_order_relaxed, memory_order_relaxed);
          }

          while (v38 != v37);
          if (v37 != 3)
          {
            continue;
          }
        }

        WebGPU::Buffer::~Buffer(result);
        result = bmalloc::api::tzoneFree(v17, v18);
      }

LABEL_10:
      ;
    }
  }

  if (v4)
  {

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::drawIndexed(unsigned int,unsigned int,unsigned int,int,unsigned int)::$_0,BOOL>::~CallableWrapper(void *result)
{
  *result = &unk_2838D32B8;
  v1 = result[4];
  result[4] = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::drawIndexed(unsigned int,unsigned int,unsigned int,int,unsigned int)::$_0,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D32B8;
  v2 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (!v2)
  {
LABEL_4:

    return WTF::fastFree(a1, a2);
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v4 = a1;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v5, v6);
  a1 = v4;

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0,BOOL>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D32E0;
  v2 = result[3];
  result[3] = 0;
  if (!v2)
  {
LABEL_4:
    v3 = result[1];
    result[1] = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    return result;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v11 = result;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v12, v13);
  result = v11;
  v3 = v11[1];
  v11[1] = 0;
  if (v3)
  {
    do
    {
LABEL_5:
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        v9 = *v3;
        v10 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v9, a2);
        return v10;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      v6 = result;
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v7, v8);
      return v6;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::drawIndexedIndirect(WebGPU::Buffer &,unsigned long long)::$_0,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D32E0;
  v2 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (!v2)
  {
LABEL_4:
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v12 = a1;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v13, v14);
  a1 = v12;
  v3 = *(v12 + 1);
  *(v12 + 1) = 0;
  if (!v3)
  {
LABEL_9:

    return WTF::fastFree(a1, a2);
  }

LABEL_5:
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      if (v4 == 3)
      {
        v6 = a1;
        WebGPU::Buffer::~Buffer(v3);
        bmalloc::api::tzoneFree(v7, v8);
        a1 = v6;
      }

      goto LABEL_9;
    }
  }

  v10 = *v3;
  v11 = a1;
  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v10, a2);
  a1 = v11;

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::drawIndirect(WebGPU::Buffer &,unsigned long long)::$_0,BOOL>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D3308;
  v2 = result[3];
  result[3] = 0;
  if (!v2)
  {
LABEL_4:
    v3 = result[1];
    result[1] = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    return result;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v11 = result;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v12, v13);
  result = v11;
  v3 = v11[1];
  v11[1] = 0;
  if (v3)
  {
    do
    {
LABEL_5:
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        v9 = *v3;
        v10 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v9, a2);
        return v10;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      v6 = result;
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v7, v8);
      return v6;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::drawIndirect(WebGPU::Buffer &,unsigned long long)::$_0,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D3308;
  v2 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (!v2)
  {
LABEL_4:
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v12 = a1;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v13, v14);
  a1 = v12;
  v3 = *(v12 + 1);
  *(v12 + 1) = 0;
  if (!v3)
  {
LABEL_9:

    return WTF::fastFree(a1, a2);
  }

LABEL_5:
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      if (v4 == 3)
      {
        v6 = a1;
        WebGPU::Buffer::~Buffer(v3);
        bmalloc::api::tzoneFree(v7, v8);
        a1 = v6;
      }

      goto LABEL_9;
    }
  }

  v10 = *v3;
  v11 = a1;
  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v10, a2);
  a1 = v11;

  return WTF::fastFree(a1, a2);
}

WebGPU::BindGroup *WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebGPU::BindGroup *result, uint64_t *a2, const WTF::StringImpl *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x2256CB4ACLL);
  }

  v5 = result;
  v6 = *a2;
  if (!*a2)
  {
    v7 = a3;
    result = WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v7;
    v6 = *a2;
    v3 = *v7;
  }

  v8 = *(v6 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v6 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v17 = v6 + 8 * *(v6 - 4);
        *v5 = v13;
        *(v5 + 1) = v17;
        *(v5 + 16) = 0;
        return result;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v6 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      v6 = *a2;
      --*(*a2 - 16);
      v3 = *a3;
      v13 = v15;
    }
  }

  *a3 = 0;
  result = *v13;
  *v13 = v3;
  if (result)
  {
    if (*(result + 2) == 1)
    {
      WebGPU::BindGroup::~BindGroup(result, a2, a3);
      result = bmalloc::api::tzoneFree(v18, v19);
      v6 = *a2;
    }

    else
    {
      --*(result + 2);
    }
  }

  v20 = *(v6 - 16);
  v21 = *(v6 - 12) + 1;
  *(v6 - 12) = v21;
  v22 = (v20 + v21);
  v23 = *(v6 - 4);
  if (v23 > 0x400)
  {
    if (v23 > 2 * v22)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::rehash(a2, 8u, v13);
      v13 = result;
      v6 = *a2;
      if (!*a2)
      {
LABEL_22:
        v23 = 0;
        goto LABEL_26;
      }

LABEL_25:
      v23 = *(v6 - 4);
      goto LABEL_26;
    }

LABEL_24:
    result = WTF::HashTable<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v13);
    v13 = result;
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_26:
  *v5 = v13;
  *(v5 + 1) = v6 + 8 * v23;
  *(v5 + 16) = 1;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setBindGroup(unsigned int,WebGPU::BindGroup const*,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0,BOOL>::~CallableWrapper(uint64_t a1, void *a2, const WTF::StringImpl *a3)
{
  *a1 = &unk_2838D3330;
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v5);
      bmalloc::api::tzoneFree(v10, v11);
      v6 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (!v6)
      {
        return a1;
      }

      goto LABEL_8;
    }

    --*v5;
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (!v6)
  {
    return a1;
  }

LABEL_8:
  if (*(v6 + 2) != 1)
  {
    --*(v6 + 2);
    return a1;
  }

  WebGPU::BindGroup::~BindGroup(v6, a2, a3);
  bmalloc::api::tzoneFree(v8, v9);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setBindGroup(unsigned int,WebGPU::BindGroup const*,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0,BOOL>::~CallableWrapper(WTF *this, void *a2, const WTF::StringImpl *a3)
{
  *this = &unk_2838D3330;
  if (*(this + 48) == 1)
  {
    v4 = *(this + 4);
    if (v4)
    {
      *(this + 4) = 0;
      *(this + 10) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (!v5)
  {
LABEL_7:
    v6 = *(this + 2);
    *(this + 2) = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (*v5 != 1)
  {
    --*v5;
    goto LABEL_7;
  }

  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v5);
  bmalloc::api::tzoneFree(v11, v12);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (!v6)
  {
LABEL_10:
    v7 = this;

    return WTF::fastFree(v7, a2);
  }

LABEL_8:
  if (*(v6 + 2) != 1)
  {
    --*(v6 + 2);
    goto LABEL_10;
  }

  WebGPU::BindGroup::~BindGroup(v6, a2, a3);
  bmalloc::api::tzoneFree(v9, v10);
  v7 = this;

  return WTF::fastFree(v7, a2);
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setIndexBuffer(WebGPU::Buffer &,WGPUIndexFormat,unsigned long long,unsigned long long)::$_0,BOOL>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D3358;
  v2 = result[5];
  result[5] = 0;
  if (!v2)
  {
LABEL_4:
    v3 = result[1];
    result[1] = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    return result;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v11 = result;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v12, v13);
  result = v11;
  v3 = v11[1];
  v11[1] = 0;
  if (v3)
  {
    do
    {
LABEL_5:
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        v9 = *v3;
        v10 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v9, a2);
        return v10;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v5 != v4);
    if (v4 == 3)
    {
      v6 = result;
      WebGPU::Buffer::~Buffer(v3);
      bmalloc::api::tzoneFree(v7, v8);
      return v6;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setIndexBuffer(WebGPU::Buffer &,WGPUIndexFormat,unsigned long long,unsigned long long)::$_0,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D3358;
  v2 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (!v2)
  {
LABEL_4:
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v12 = a1;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v13, v14);
  a1 = v12;
  v3 = *(v12 + 1);
  *(v12 + 1) = 0;
  if (!v3)
  {
LABEL_9:

    return WTF::fastFree(a1, a2);
  }

LABEL_5:
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      if (v4 == 3)
      {
        v6 = a1;
        WebGPU::Buffer::~Buffer(v3);
        bmalloc::api::tzoneFree(v7, v8);
        a1 = v6;
      }

      goto LABEL_9;
    }
  }

  v10 = *v3;
  v11 = a1;
  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(v10, a2);
  a1 = v11;

  return WTF::fastFree(a1, a2);
}

char *WTF::Vector<WTF::Function<BOOL ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 8 * v6 <= a3)
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

    if (!(v9 >> 29))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((8 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = v11;
        v14 = 8 * v6;
        v15 = v5;
        do
        {
          v16 = *v15;
          *v15 = 0;
          *v13 = v16;
          v17 = *v15;
          *v15 = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          ++v13;
          v15 = (v15 + 8);
          v14 -= 8;
        }

        while (v14);
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

      return v3;
    }

LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x2256CBAA0);
  }

  v18 = *(a1 + 8);
  if (v18 + (v18 >> 1) <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18 + (v18 >> 1);
  }

  if (v19 <= a2)
  {
    v19 = a2;
  }

  if (v19 >> 29)
  {
    goto LABEL_42;
  }

  v20 = a3 - v5;
  if (v19 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = v19;
  }

  v23 = WTF::fastMalloc((8 * v21));
  v24 = 0;
  *(a1 + 8) = v21;
  *a1 = v23;
  v25 = 8 * v6;
  do
  {
    v26 = *(v5 + v24);
    *(v5 + v24) = 0;
    *(v23 + v24) = v26;
    v27 = *(v5 + v24);
    *(v5 + v24) = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v24 += 8;
  }

  while (v25 != v24);
  v28 = *a1;
  if (v5)
  {
    if (v28 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v22);
    v28 = *a1;
  }

  return v28 + v20;
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setPipeline(WebGPU::RenderPipeline const&)::$_0,BOOL>::~CallableWrapper(void *result, void *a2)
{
  *result = &unk_2838D3380;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v4 = result;
      WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
      bmalloc::api::tzoneFree(v5, v6);
      result = v4;
      v3 = v4[1];
      v4[1] = 0;
      if (!v3)
      {
        return result;
      }

      goto LABEL_5;
    }

    --*v2;
  }

  v3 = result[1];
  result[1] = 0;
  if (!v3)
  {
    return result;
  }

LABEL_5:
  if (*(v3 + 2) == 1)
  {
    v7 = result;
    WebGPU::RenderPipeline::~RenderPipeline(v3, a2);
    bmalloc::api::tzoneFree(v8, v9);
    return v7;
  }

  else
  {
    --*(v3 + 2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setPipeline(WebGPU::RenderPipeline const&)::$_0,BOOL>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_2838D3380;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (!v2)
  {
LABEL_4:
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*v2 != 1)
  {
    --*v2;
    goto LABEL_4;
  }

  v5 = a1;
  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v2);
  bmalloc::api::tzoneFree(v6, v7);
  a1 = v5;
  v3 = *(v5 + 1);
  *(v5 + 1) = 0;
  if (!v3)
  {
LABEL_7:

    return WTF::fastFree(a1, a2);
  }

LABEL_5:
  if (*(v3 + 2) != 1)
  {
    --*(v3 + 2);
    goto LABEL_7;
  }

  v8 = a1;
  WebGPU::RenderPipeline::~RenderPipeline(v3, a2);
  bmalloc::api::tzoneFree(v9, v10);
  a1 = v8;

  return WTF::fastFree(a1, a2);
}

void *WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setVertexBuffer(unsigned int,WebGPU::Buffer *,unsigned long long,unsigned long long)::$_0,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_2838D33A8;
  v3 = a1[5];
  a1[5] = 0;
  if (!v3)
  {
LABEL_4:
    v4 = a1[2];
    a1[2] = 0;
    if (v4)
    {
      goto LABEL_5;
    }

    return a1;
  }

  if (*v3 != 1)
  {
    --*v3;
    goto LABEL_4;
  }

  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v3);
  bmalloc::api::tzoneFree(v10, v11);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    do
    {
LABEL_5:
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
        return a1;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
    if (v5 == 3)
    {
      WebGPU::Buffer::~Buffer(v4);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebGPU::RenderBundleEncoder::setVertexBuffer(unsigned int,WebGPU::Buffer *,unsigned long long,unsigned long long)::$_0,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_2838D33A8;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (!v3)
  {
LABEL_4:
    v4 = *(this + 2);
    *(this + 2) = 0;
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (*v3 != 1)
  {
    --*v3;
    goto LABEL_4;
  }

  WebGPU::RenderBundleEncoder::~RenderBundleEncoder(v3);
  bmalloc::api::tzoneFree(v11, v12);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (!v4)
  {
LABEL_9:
    v9 = this;

    return WTF::fastFree(v9, a2);
  }

LABEL_5:
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      if (v5 == 3)
      {
        WebGPU::Buffer::~Buffer(v4);
        bmalloc::api::tzoneFree(v7, v8);
      }

      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v4, a2);
  v9 = this;

  return WTF::fastFree(v9, a2);
}

void WebGPU::RenderPassEncoder::setVertexBuffer(uint64_t a1, void *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v15 = a2;
  v9 = a3;
  v10 = v9;
  if (*(a1 + 2476) == 1)
  {
    [v15 setVertexBuffer:v9 offset:a4 atIndex:a5];
  }

  else
  {
    v11 = [v9 gpuAddress];
    if (a5 >= 0x1F)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = a1 + 16 * a5;
    if (!v11 || (*(v13 + 1152) == v11 ? (v14 = *(v13 + 1160) == a4) : (v14 = 0), !v14))
    {
      [v15 setVertexBuffer:v10 offset:a4 atIndex:?];
      *(v13 + 1152) = v12;
      *(v13 + 1160) = a4;
    }
  }
}

void WebGPU::RenderPassEncoder::setVertexBytes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a2;
  [v10 setVertexBytes:a3 length:a4 atIndex:a5];
  if (a5 >= 0x1F)
  {
    __break(1u);
  }

  else
  {
    v9 = a1 + 16 * a5;
    *(v9 + 1152) = 0;
    *(v9 + 1160) = 0;
  }
}

uint64_t WebGPU::RenderPassEncoder::RenderPassEncoder(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, char a5, char a6, uint64_t a7, void *a8, unint64_t a9, atomic_ullong *a10, void *a11)
{
  v17 = a2;
  v137 = a8;
  v136 = a11;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  v18 = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = 0;
  while (1)
  {
    v19 = *a10;
    if ((*a10 & 1) == 0)
    {
      break;
    }

    v20 = *a10;
    atomic_compare_exchange_strong_explicit(a10, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_9;
    }
  }

  v21 = 0;
  v22 = *a10;
  v23 = 1;
  atomic_compare_exchange_strong_explicit(*a10, &v21, 1u, memory_order_acquire, memory_order_acquire);
  if (v21)
  {
    MEMORY[0x22AA683C0](v22);
  }

  ++*(v22 + 8);
  atomic_compare_exchange_strong_explicit(v22, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {
    WTF::Lock::unlockSlow(v22);
  }

LABEL_9:
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = xmmword_225881E30;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 120) = 0u;
  ++*(a7 + 16);
  *(a1 + 192) = 0u;
  *(a1 + 32) = a10;
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 113) = a6;
  *(a1 + 184) = a7;
  v135 = a1 + 184;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  v24 = v137;
  *(a1 + 232) = v24;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 260) = 0;
  *(a1 + 252) = 0;
  *(a1 + 268) = 0;
  v26 = a3[1];
  v25 = a3[2];
  v27 = *a3;
  *(a1 + 320) = *(a3 + 6);
  *(a1 + 288) = v26;
  *(a1 + 304) = v25;
  *(a1 + 272) = v27;
  v28 = *(a3 + 2);
  if (v28)
  {
    v29 = *(a3 + 3);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 340) = v28;
    if (v28 >= 0x38E38E4)
    {
      __break(0xC471u);
      JUMPOUT(0x2256CCE54);
    }

    v30 = 72 * v28;
    v31 = WTF::fastMalloc((72 * v28));
    *(a1 + 336) = v30 / 0x48;
    *(a1 + 328) = v31;
    do
    {
      *v31 = *v29;
      v32 = *(v29 + 16);
      v33 = *(v29 + 32);
      v34 = *(v29 + 48);
      *(v31 + 64) = *(v29 + 64);
      *(v31 + 32) = v33;
      *(v31 + 48) = v34;
      *(v31 + 16) = v32;
      v31 += 72;
      v29 += 72;
      v30 -= 72;
    }

    while (v30);
    v35 = a1 + 344;
    v36 = *(a3 + 4);
    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    v35 = a1 + 344;
    v36 = *(a3 + 4);
    if (v36)
    {
LABEL_14:
      v37 = *v36;
      v38 = v36[1];
      *(v35 + 32) = *(v36 + 4);
      *(v35 + 16) = v38;
      goto LABEL_17;
    }
  }

  *(v35 + 32) = 0;
  v37 = 0uLL;
  *(v35 + 16) = 0u;
LABEL_17:
  *v35 = v37;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1760) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0;
  *(a1 + 1792) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0;
  *(a1 + 1880) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 1952) = 0;
  *(a1 + 1960) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 1984) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2016) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 2032) = 0;
  *(a1 + 2040) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2056) = 0;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2280) = 0;
  bzero((a1 + 384), 0x30CuLL);
  v39 = v136;
  v41 = v39;
  *(a1 + 2288) = v39;
  *(a1 + 2296) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2336) = 0;
  *(a1 + 2368) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2380) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2392) = 0;
  *(a1 + 2400) = a9;
  *(a1 + 2408) = 0;
  *(a1 + 2416) = 0;
  *(a1 + 2464) = 0;
  *(a1 + 2480) = 0u;
  *(a1 + 2472) = 0;
  *(a1 + 2476) = 0;
  if (*(*(a1 + 32) + 280) > a9)
  {
    *(a1 + 2288) = 0;
  }

  if (*(a1 + 340))
  {
    *(a1 + 296) = *(a1 + 328);
  }

  v132 = v41;
  v133 = v24;
  if (*(a3 + 4))
  {
    *(a1 + 304) = v35;
  }

  v131 = (a1 + 2480);
  v43 = *(a3 + 2);
  v42 = *(a3 + 3);
  v44 = 9 * v43;
  if (v43)
  {
    v45 = 72 * v43;
    v46 = (v42 + 8);
    do
    {
      v49 = *v46;
      if (*v46)
      {
        ++*(v49 + 2);
      }

      v141 = v49;
      v50 = *(a1 + 396);
      if (v50 == *(a1 + 392))
      {
        v51 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 384, v50 + 1, &v141);
        v50 = *(a1 + 396);
        v52 = *(a1 + 384);
        v53 = *v51;
        *v51 = 0;
        *(v52 + 8 * v50) = v53;
      }

      else
      {
        v54 = *(a1 + 384);
        v141 = 0;
        *(v54 + 8 * v50) = v49;
      }

      *(a1 + 396) = v50 + 1;
      v55 = v141;
      v141 = 0;
      if (v55)
      {
        if (*(v55 + 2) == 1)
        {
          WebGPU::TextureView::~TextureView(v55, v40);
          bmalloc::api::tzoneFree(v47, v48);
        }

        else
        {
          --*(v55 + 2);
        }
      }

      v46 += 9;
      v45 -= 72;
    }

    while (v45);
  }

  v56 = *(a3 + 4);
  if (v56)
  {
    v57 = *v56;
    if (v57)
    {
      ++*(v57 + 8);
    }

    v58 = *(a1 + 400);
    *(a1 + 400) = v57;
    if (v58)
    {
      if (*(v58 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v58, v40);
        bmalloc::api::tzoneFree(v59, v60);
      }

      else
      {
        --*(v58 + 2);
      }
    }
  }

  v134 = v18;
  v61 = *v135;
  *(v61 + 16) = *(*v135 + 16) + 1;
  v140 = v61;
  if (*v61 != 2)
  {
    *v61 = 1;
  }

  v62 = [MEMORY[0x277CBEB38] dictionary];
  v63 = *(a1 + 256);
  *(a1 + 256) = v62;

  if (v43)
  {
    v64 = 0;
    v65 = 8 * v44;
    v66 = v42 + 32;
    while (1)
    {
      v69 = *(v66 - 24);
      if (v69)
      {
        break;
      }

LABEL_47:
      ++v64;
      v66 += 72;
      v65 -= 72;
      if (!v65)
      {
        goto LABEL_86;
      }
    }

    ++*(v69 + 8);
    v70 = *(v69 + 96);
    if (*(v70 + 104) == 1)
    {
      WebGPU::CommandEncoder::makeSubmitInvalid(v61, 0);
      v70 = *(v69 + 96);
    }

    ++*(v70 + 8);
    v141 = v70;
    v71 = (v69 + 16);
    WebGPU::Texture::setPreviouslyCleared(v70, [*(v69 + 16) parentRelativeLevel], objc_msgSend(*(v69 + 16), "parentRelativeSlice"), 1);
    if (*(v70 + 8) == 1)
    {
      WebGPU::Texture::~Texture(v70);
      bmalloc::api::tzoneFree(v72, v73);
    }

    else
    {
      --*(v70 + 8);
    }

    WebGPU::RenderPassEncoder::addResourceToActiveResources(a1, v69, 16);
    *(a1 + 248) = *(*(v69 + 96) + 40);
    v74 = *(v66 - 8);
    v61 = v140;
    if (v74)
    {
      ++*(v74 + 8);
      v75 = *(v140 + 200);
      v141 = v75;
      v76 = *(v74 + 116);
      if (v76 == *(v74 + 112))
      {
        v77 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v74 + 104, v76 + 1, &v141);
        v76 = *(v74 + 116);
        *(*(v74 + 104) + 8 * v76) = *v77;
      }

      else
      {
        *(*(v74 + 104) + 8 * v76) = v75;
      }

      *(v74 + 116) = v76 + 1;
      WebGPU::CommandEncoder::addTexture(v140, *(v74 + 96));
      v78 = *(v74 + 96);
      if (*(v78 + 104) == 1 && (*(v78 + 105) & 1) == 0)
      {
        WebGPU::CommandEncoder::makeSubmitInvalid(v140, 0);
        v78 = *(v74 + 96);
      }

      ++*(v78 + 8);
      v141 = v78;
      WebGPU::Texture::setPreviouslyCleared(v78, [*(v74 + 16) parentRelativeLevel], objc_msgSend(*(v74 + 16), "parentRelativeSlice"), 1);
      if (*(v78 + 8) == 1)
      {
        WebGPU::Texture::~Texture(v78);
        bmalloc::api::tzoneFree(v79, v80);
      }

      else
      {
        --*(v78 + 8);
      }

      WebGPU::RenderPassEncoder::addResourceToActiveResources(a1, v74, 16);
      if (*(v74 + 8) == 1)
      {
        WebGPU::TextureView::~TextureView(v74, v81);
        bmalloc::api::tzoneFree(v85, v86);
        v82 = *(v140 + 200);
        v141 = v82;
        v83 = *(v69 + 116);
        if (v83 == *(v69 + 112))
        {
          goto LABEL_67;
        }

        goto LABEL_69;
      }

      --*(v74 + 8);
    }

    v82 = *(v140 + 200);
    v141 = v82;
    v83 = *(v69 + 116);
    if (v83 == *(v69 + 112))
    {
LABEL_67:
      v84 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v69 + 104, v83 + 1, &v141);
      v83 = *(v69 + 116);
      *(*(v69 + 104) + 8 * v83) = *v84;
      goto LABEL_70;
    }

LABEL_69:
    *(*(v69 + 104) + 8 * v83) = v82;
LABEL_70:
    *(v69 + 116) = v83 + 1;
    WebGPU::CommandEncoder::addTexture(v140, *(v69 + 96));
    v87 = *(v69 + 96);
    if (*(v87 + 104) == 1)
    {
      if (*(v87 + 105) & 1) != 0 || (WebGPU::CommandEncoder::makeSubmitInvalid(v140, 0), v87 = *(v69 + 96), (*(v87 + 104)))
      {
        v71 = (v87 + 16);
      }
    }

    v88 = *v71;
    *(a1 + 240) = [v88 width];
    *(a1 + 244) = [v88 height];
    if (v88)
    {
      v89 = [[TextureAndClearColor alloc] initWithTexture:v88];
      v90 = v89;
      if (*(v66 + 4) == 2)
      {
        if (*v66 == 2)
        {
          [(TextureAndClearColor *)v89 setClearColor:0.0, 0.0, 0.0, 0.0];
          v91 = *(a1 + 256);
          v92 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v64];
          [v91 setObject:v90 forKey:v92];
        }
      }

      else
      {
        [(TextureAndClearColor *)v89 setClearColor:*(v66 + 8), *(v66 + 16), *(v66 + 24), *(v66 + 32)];
      }

      if ((*(*(v69 + 96) + 104) & 1) != 0 || *(v66 - 12) != 1)
      {
        v93 = 0;
      }

      else
      {
        v93 = *(v66 - 16);
      }

      [(TextureAndClearColor *)v90 setDepthPlane:v93];
    }

    if (*(v69 + 8) == 1)
    {
      WebGPU::TextureView::~TextureView(v69, v94);
      bmalloc::api::tzoneFree(v67, v68);
    }

    else
    {
      --*(v69 + 8);
    }

    goto LABEL_47;
  }

LABEL_86:
  v95 = *(a3 + 4);
  if (!v95)
  {
    goto LABEL_129;
  }

  v96 = *v95;
  *(v96 + 8) = *(*v95 + 8) + 1;
  v139 = v96;
  v97 = *(v96 + 96);
  ++*(v97 + 2);
  v141 = v97;
  WebGPU::Texture::setPreviouslyCleared(v97, [*(v96 + 16) parentRelativeLevel], objc_msgSend(*(v96 + 16), "parentRelativeSlice"), 1);
  if (*(v97 + 2) == 1)
  {
    WebGPU::Texture::~Texture(v97);
    bmalloc::api::tzoneFree(v101, v102);
    v98 = *(v61 + 200);
    v141 = v98;
    v99 = *(v96 + 116);
    if (v99 == *(v96 + 112))
    {
      goto LABEL_89;
    }

LABEL_91:
    *(*(v96 + 104) + 8 * v99) = v98;
    goto LABEL_92;
  }

  --*(v97 + 2);
  v98 = *(v61 + 200);
  v141 = v98;
  v99 = *(v96 + 116);
  if (v99 != *(v96 + 112))
  {
    goto LABEL_91;
  }

LABEL_89:
  v100 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v96 + 104, v99 + 1, &v141);
  v99 = *(v96 + 116);
  *(*(v96 + 104) + 8 * v99) = *v100;
LABEL_92:
  *(v96 + 116) = v99 + 1;
  WebGPU::CommandEncoder::addTexture(v61, *(v96 + 96));
  v103 = *(v96 + 96);
  if (*(v103 + 104) == 1 && (*(v103 + 105) & 1) == 0)
  {
    WebGPU::CommandEncoder::makeSubmitInvalid(v61, 0);
  }

  if (*(*(v96 + 96) + 104))
  {
    v104 = 0;
  }

  else
  {
    v104 = *(v96 + 16);
  }

  if (WebGPU::TextureView::width(v139) && !*(a1 + 240))
  {
    *(a1 + 240) = [v104 width];
    *(a1 + 244) = [v104 height];
    *(a1 + 248) = *(*(v139 + 12) + 40);
    v105 = 0.0;
    if (*(v95 + 3) == 2)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v105 = 0.0;
    if (*(v95 + 3) == 2)
    {
      goto LABEL_106;
    }
  }

  v105 = *(v95 + 4);
  if (v105 >= 0.0 && v105 <= 1.0 && *(v139 + 10) == 39)
  {
    v106 = v105 + 0.00000762951095;
    v105 = nextafterf(v106, 1.0);
  }

LABEL_106:
  *(a1 + 2384) = v105;
  if ((([v104 pixelFormat] - 253) & 0xFFFFFFFFFFFFFFF7) != 0)
  {
    v107 = v104 && *(v95 + 3) == 2 && *(v95 + 2) == 2;
    *(a1 + 2472) = v107;
    objc_storeStrong((a1 + 264), v104);
    if (*(v95 + 5))
    {
      v108 = 32;
    }

    else
    {
      v108 = 16;
    }

    v109 = *(v139 + 12);
    v110 = *(v109 + 16);
    WebGPU::RenderPassEncoder::addTextureToActiveResources(a1, v109, v110, v108, *(v139 + 12), *(v139 + 14), 2u);
  }

  v111 = *(v95 + 7);
  if (v111 != 2)
  {
    *(a1 + 2408) = *(v95 + 8);
    v112 = *(v139 + 10);
    if (v112 > 0x2B)
    {
      goto LABEL_127;
    }

LABEL_119:
    if (((1 << v112) & 0xA4000000000) != 0)
    {
      v113 = 0;
      if (v104 && v111 == 2)
      {
        v113 = *(v95 + 6) == 2;
      }

      *(a1 + 2473) = v113;
      objc_storeStrong((a1 + 264), v104);
      if (*(v95 + 9))
      {
        v114 = 32;
      }

      else
      {
        v114 = 16;
      }

      v115 = *(v139 + 12);
      v116 = *(v115 + 16);
      WebGPU::RenderPassEncoder::addTextureToActiveResources(a1, v115, v116, v114, *(v139 + 12), *(v139 + 14), 1u);
    }

    goto LABEL_127;
  }

  *(a1 + 2408) = 0;
  v112 = *(v139 + 10);
  if (v112 <= 0x2B)
  {
    goto LABEL_119;
  }

LABEL_127:

  if (*(v139 + 2) == 1)
  {
    WebGPU::TextureView::~TextureView(v139, v117);
    bmalloc::api::tzoneFree(v126, v127);
    v118 = *(*(a1 + 32) + 96);
    v119 = *(a1 + 2492);
    if (v119 >= v118)
    {
      goto LABEL_145;
    }

    goto LABEL_130;
  }

  --*(v139 + 2);
LABEL_129:
  v118 = *(*(a1 + 32) + 96);
  v119 = *(a1 + 2492);
  if (v119 >= v118)
  {
    goto LABEL_145;
  }

LABEL_130:
  v120 = *(a1 + 2488);
  if (v120 < v118)
  {
    if (v120 + (v120 >> 1) <= v120 + 1)
    {
      v121 = v120 + 1;
    }

    else
    {
      v121 = v120 + (v120 >> 1);
    }

    if (HIDWORD(v121))
    {
LABEL_153:
      __break(0xC471u);
      JUMPOUT(0x2256CCE4CLL);
    }

    v122 = *v131;
    if (v121 <= v118)
    {
      v121 = v118;
    }

    if (v121 <= 0x10)
    {
      v123 = 16;
    }

    else
    {
      v123 = v121;
    }

    v124 = WTF::fastMalloc(v123);
    *(a1 + 2488) = v123;
    *(a1 + 2480) = v124;
    memcpy(v124, v122, v119);
    if (v122)
    {
      if (*v131 == v122)
      {
        *(a1 + 2480) = 0;
        *(a1 + 2488) = 0;
      }

      WTF::fastFree(v122, v125);
    }
  }

LABEL_145:
  *(a1 + 2492) = v118;
  if (*(*(a1 + 32) + 96) >= 0x21u)
  {
    goto LABEL_153;
  }

  if (v140)
  {
    if (*(v140 + 16) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v140);
      bmalloc::api::tzoneFree(v128, v129);
    }

    else
    {
      --*(v140 + 16);
    }
  }

  return a1;
}

void sub_2256CCE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v19, v22);

  _Unwind_Resume(a1);
}

void WebGPU::RenderPassEncoder::addResourceToActiveResources(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  v8 = *(v7 + 16);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v12 = v8;
  if (v6)
  {
    WebGPU::RenderPassEncoder::addTextureToActiveResources(a1, v7, v8, a3, v9, v10, v6);
  }

  else
  {
    WebGPU::RenderPassEncoder::addTextureToActiveResources(a1, v7, v8, a3, v9, v10, 2u);

    v11 = *(a2 + 96);
    v12 = *(v11 + 16);
    WebGPU::RenderPassEncoder::addTextureToActiveResources(a1, v11, v12, a3, *(a2 + 48), *(a2 + 56), 1u);
  }
}

{
  v19 = a2;
  if (a2)
  {
    v18 = a3;
    v6 = *(a1 + 208);
    v4 = (a1 + 208);
    v5 = v6;
    if (v6)
    {
      if (a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x2256CE5E8);
      }

      v7 = *(v5 - 8);
      v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
      v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
      v11 = v7 & ((v10 >> 31) ^ v10);
      v12 = *(v5 + 16 * v11);
      if (v12 == a2)
      {
LABEL_8:
        if (v11 != *(v5 - 4))
        {
          a3 |= *(v5 + 16 * v11 + 8);
          v18 = a3;
        }
      }

      else
      {
        v13 = 1;
        while (v12)
        {
          v11 = (v11 + v13) & v7;
          v12 = *(v5 + 16 * v11);
          ++v13;
          if (v12 == a2)
          {
            goto LABEL_8;
          }
        }
      }
    }

    if ((a3 & 4) != 0)
    {
      if (a3 != 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a3 != 128 && (a3 & 0x80) != 0)
      {
        goto LABEL_22;
      }

      if ((a3 & 0x200) == 0)
      {
        if (a3 == 16 || (a3 & 0x10) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:
        v14 = MEMORY[0x277CCACA8];
        v15 = WebGPU::BindGroup::usageName(&v18);
        v16 = [v14 stringWithFormat:@"Bind group has incompatible usage list: %@", v15];
        WebGPU::RenderPassEncoder::makeInvalid(a1, v16);

        return;
      }

      if (a3 != 512)
      {
        goto LABEL_22;
      }
    }

LABEL_18:
    WTF::HashMap<void const*,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<void const* const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>(v4, &v19, &v18, v17);
  }
}

double WebGPU::RenderPassEncoder::quantizedDepthValue(int a1, double result)
{
  if (result >= 0.0 && result <= 1.0 && a1 == 39)
  {
    v3 = result + 0.00000762951095;
    return nextafterf(v3, 1.0);
  }

  return result;
}

uint64_t WTF::Vector<WTF::RefPtr<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v8 = *v4;
      *v4 = 0;
      if (v8)
      {
        if (*(v8 + 2) == 1)
        {
          WebGPU::TextureView::~TextureView(v8, a2);
          bmalloc::api::tzoneFree(v6, v7);
        }

        else
        {
          --*(v8 + 2);
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
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

uint64_t WebGPU::RenderPassEncoder::RenderPassEncoder(WebGPU::RenderPassEncoder *this, WebGPU::CommandEncoder *a2, atomic_ullong *a3, NSString *a4)
{
  v8 = a4;
  *this = 0;
  *(this + 2) = 1;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  while (1)
  {
    v9 = *a3;
    if ((*a3 & 1) == 0)
    {
      break;
    }

    v10 = *a3;
    atomic_compare_exchange_strong_explicit(a3, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_9;
    }
  }

  v11 = 0;
  v12 = *a3;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(*a3, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    MEMORY[0x22AA683C0](v12);
  }

  ++*(v12 + 8);
  atomic_compare_exchange_strong_explicit(v12, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    WTF::Lock::unlockSlow(v12);
  }

LABEL_9:
  *(this + 4) = a3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 3;
  *(this + 6) = 0u;
  *(this + 56) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  ++*(a2 + 4);
  *(this + 23) = a2;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  *(this + 62) = 1;
  *(this + 328) = 0u;
  *(this + 146) = 0;
  *(this + 294) = 0;
  *(this + 148) = 0;
  *(this + 298) = 0;
  *(this + 150) = 0;
  *(this + 302) = 0;
  *(this + 152) = 0;
  *(this + 306) = 0;
  *(this + 154) = 0;
  *(this + 310) = 0;
  *(this + 156) = 0;
  *(this + 314) = 0;
  *(this + 158) = 0;
  *(this + 318) = 0;
  *(this + 160) = 0;
  *(this + 322) = 0;
  *(this + 162) = 0;
  *(this + 326) = 0;
  *(this + 164) = 0;
  *(this + 330) = 0;
  *(this + 166) = 0;
  *(this + 334) = 0;
  *(this + 168) = 0;
  *(this + 338) = 0;
  *(this + 170) = 0;
  *(this + 342) = 0;
  *(this + 172) = 0;
  *(this + 346) = 0;
  *(this + 174) = 0;
  *(this + 350) = 0;
  *(this + 176) = 0;
  *(this + 354) = 0;
  *(this + 178) = 0;
  *(this + 358) = 0;
  *(this + 180) = 0;
  *(this + 362) = 0;
  *(this + 182) = 0;
  *(this + 366) = 0;
  *(this + 184) = 0;
  *(this + 370) = 0;
  *(this + 186) = 0;
  *(this + 374) = 0;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 190) = 0;
  *(this + 382) = 0;
  *(this + 192) = 0;
  *(this + 386) = 0;
  *(this + 194) = 0;
  *(this + 390) = 0;
  *(this + 196) = 0;
  *(this + 394) = 0;
  *(this + 198) = 0;
  *(this + 398) = 0;
  *(this + 200) = 0;
  *(this + 402) = 0;
  *(this + 202) = 0;
  *(this + 406) = 0;
  *(this + 204) = 0;
  *(this + 410) = 0;
  *(this + 206) = 0;
  *(this + 414) = 0;
  *(this + 208) = 0;
  *(this + 418) = 0;
  *(this + 210) = 0;
  *(this + 422) = 0;
  *(this + 212) = 0;
  *(this + 426) = 0;
  *(this + 214) = 0;
  *(this + 430) = 0;
  *(this + 216) = 0;
  *(this + 434) = 0;
  *(this + 218) = 0;
  *(this + 438) = 0;
  *(this + 220) = 0;
  *(this + 442) = 0;
  *(this + 222) = 0;
  *(this + 446) = 0;
  *(this + 224) = 0;
  *(this + 450) = 0;
  *(this + 226) = 0;
  *(this + 454) = 0;
  *(this + 228) = 0;
  *(this + 458) = 0;
  *(this + 230) = 0;
  *(this + 462) = 0;
  *(this + 232) = 0;
  *(this + 466) = 0;
  *(this + 234) = 0;
  *(this + 470) = 0;
  *(this + 236) = 0;
  *(this + 474) = 0;
  *(this + 238) = 0;
  *(this + 478) = 0;
  *(this + 240) = 0;
  *(this + 482) = 0;
  *(this + 242) = 0;
  *(this + 486) = 0;
  *(this + 244) = 0;
  *(this + 490) = 0;
  *(this + 246) = 0;
  *(this + 494) = 0;
  *(this + 248) = 0;
  *(this + 498) = 0;
  *(this + 250) = 0;
  *(this + 502) = 0;
  *(this + 252) = 0;
  *(this + 506) = 0;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 256) = 0;
  *(this + 514) = 0;
  *(this + 258) = 0;
  *(this + 518) = 0;
  *(this + 260) = 0;
  *(this + 522) = 0;
  *(this + 262) = 0;
  *(this + 526) = 0;
  *(this + 264) = 0;
  *(this + 530) = 0;
  *(this + 266) = 0;
  *(this + 534) = 0;
  *(this + 268) = 0;
  *(this + 67) = 0;
  *(this + 252) = 0u;
  bzero(this + 384, 0x30CuLL);
  v14 = v8;
  *(this + 285) = v14;
  *(this + 286) = 0;
  *(this + 2296) = 0;
  *(this + 2328) = 0;
  *(this + 2336) = 0;
  *(this + 2368) = 0;
  *(this + 2376) = 0;
  *(this + 2380) = 0;
  *(this + 596) = 0;
  *(this + 2416) = 0;
  *(this + 2464) = 0;
  *(this + 155) = 0u;
  *(this + 2392) = 0u;
  *(this + 602) = 0;
  *(this + 618) = 0;
  *(this + 2476) = 0;
  v15 = *(this + 23);
  v16 = *(v15 + 16);
  *(v15 + 16) = v16 + 1;
  if (*v15 != 2)
  {
    *v15 = 1;
  }

  if (v16)
  {
    *(v15 + 16) = v16;
  }

  else
  {
    WebGPU::CommandEncoder::~CommandEncoder(v15);
    bmalloc::api::tzoneFree(v17, v18);
    v15 = *(this + 23);
  }

  objc_storeStrong((v15 + 48), a4);
  if (*(*(this + 4) + 96) >= 0x21u)
  {
    result = 226;
    __break(0xC471u);
  }

  else
  {

    return this;
  }

  return result;
}

void sub_2256CD6F0(_Unwind_Exception *a1)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v1, v4);

  _Unwind_Resume(a1);
}

void WebGPU::RenderPassEncoder::~RenderPassEncoder(WebGPU::RenderPassEncoder *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 23);
    ++*(v3 + 4);
    WebGPU::CommandEncoder::makeInvalid(v3, &cfstr_Gpurenderpasse.isa);
    if (*(v3 + 4) == 1)
    {
      WebGPU::CommandEncoder::~CommandEncoder(v3);
      bmalloc::api::tzoneFree(v4, v5);
    }

    else
    {
      --*(v3 + 4);
    }

    v2 = *(this + 2);
  }

  *(this + 2) = 0;

  v7 = *(this + 310);
  if (v7)
  {
    *(this + 310) = 0;
    *(this + 622) = 0;
    WTF::fastFree(v7, v6);
  }

  v10 = *(this + 268);
  if (v10)
  {
    v11 = *(v10 - 4);
    if (v11)
    {
      v12 = (v10 + 8);
      do
      {
        if (*(v12 - 2) != -2)
        {
          v15 = *v12;
          *v12 = 0;
          if (v15)
          {
            if (*(v15 + 2) == 1)
            {
              WebGPU::BindGroup::~BindGroup(v15, v8, v9);
              bmalloc::api::tzoneFree(v13, v14);
            }

            else
            {
              --*(v15 + 2);
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

  std::array<WebGPU::RenderPassEncoder::BufferAndOffset,31ul>::~array(this + 51);
  v17 = *(this + 50);
  *(this + 50) = 0;
  if (!v17)
  {
LABEL_21:
    v18 = *(this + 99);
    v19 = *(this + 48);
    if (!v18)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

  if (*(v17 + 2) != 1)
  {
    --*(v17 + 2);
    goto LABEL_21;
  }

  WebGPU::TextureView::~TextureView(v17, v16);
  bmalloc::api::tzoneFree(v39, v40);
  v18 = *(this + 99);
  v19 = *(this + 48);
  if (!v18)
  {
LABEL_22:
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_65:
  v41 = 8 * v18;
  do
  {
    v44 = *v19;
    *v19 = 0;
    if (v44)
    {
      if (*(v44 + 2) == 1)
      {
        WebGPU::TextureView::~TextureView(v44, v16);
        bmalloc::api::tzoneFree(v42, v43);
      }

      else
      {
        --*(v44 + 2);
      }
    }

    v19 = (v19 + 8);
    v41 -= 8;
  }

  while (v41);
  v19 = *(this + 48);
  if (v19)
  {
LABEL_23:
    *(this + 48) = 0;
    *(this + 98) = 0;
    WTF::fastFree(v19, v16);
  }

LABEL_24:
  v20 = *(this + 41);
  if (v20)
  {
    *(this + 41) = 0;
    *(this + 84) = 0;
    WTF::fastFree(v20, v16);
  }

  v22 = *(this + 28);
  if (v22)
  {
    WTF::fastFree((v22 - 16), v21);
  }

  v23 = *(this + 27);
  if (v23)
  {
    WTF::fastFree((v23 - 16), v21);
  }

  v24 = *(this + 26);
  if (v24)
  {
    WTF::fastFree((v24 - 16), v21);
  }

  v25 = *(this + 25);
  if (v25)
  {
    v26 = *(v25 - 4);
    if (v26)
    {
      v27 = (v25 + 8);
      do
      {
        if (*(v27 - 1) != -1 && *v27)
        {
          WTF::fastFree((*v27 - 16), v21);
        }

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    WTF::fastFree((v25 - 16), v21);
  }

  v28 = *(this + 24);
  if (v28)
  {
    v29 = *(v28 - 4);
    if (v29)
    {
      v30 = v28 + 8;
      do
      {
        if (*(v30 - 8) != -2)
        {
          v31 = *v30;
          if (*v30)
          {
            *v30 = 0;
            *(v30 + 8) = 0;
            WTF::fastFree(v31, v21);
          }
        }

        v30 += 24;
        --v29;
      }

      while (v29);
    }

    WTF::fastFree((v28 - 16), v21);
  }

  v32 = *(this + 23);
  *(this + 23) = 0;
  if (!v32)
  {
LABEL_51:
    v33 = *(this + 21);
    if (!v33)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (*(v32 + 4) != 1)
  {
    --*(v32 + 4);
    goto LABEL_51;
  }

  WebGPU::CommandEncoder::~CommandEncoder(v32);
  bmalloc::api::tzoneFree(v58, v59);
  v33 = *(this + 21);
  if (v33)
  {
LABEL_52:
    *(this + 21) = 0;
    *(this + 44) = 0;
    WTF::fastFree(v33, v21);
  }

LABEL_53:
  v34 = *(this + 19);
  if (v34)
  {
    *(this + 19) = 0;
    *(this + 40) = 0;
    WTF::fastFree(v34, v21);
  }

  v35 = *(this + 17);
  if (v35)
  {
    *(this + 17) = 0;
    *(this + 36) = 0;
    WTF::fastFree(v35, v21);
  }

  v36 = *(this + 15);
  if (v36)
  {
    *(this + 15) = 0;
    *(this + 32) = 0;
    WTF::fastFree(v36, v21);
  }

  v37 = *(this + 9);
  *(this + 9) = 0;
  if (!v37)
  {
LABEL_62:
    v38 = *(this + 5);
    *(this + 5) = 0;
    if (v38)
    {
      goto LABEL_74;
    }

    goto LABEL_79;
  }

  if (*(v37 + 2) != 1)
  {
    --*(v37 + 2);
    goto LABEL_62;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v37, v21);
  bmalloc::api::tzoneFree(v45, v46);
  v38 = *(this + 5);
  *(this + 5) = 0;
  if (v38)
  {
    do
    {
LABEL_74:
      v47 = *v38;
      if ((*v38 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Buffer,(WTF::DestructionThread)0>(*v38, v21);
        goto LABEL_79;
      }

      v48 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v48, v47 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v48 != v47);
    if (v47 == 3)
    {
      WebGPU::Buffer::~Buffer(v38);
      bmalloc::api::tzoneFree(v49, v50);
    }
  }

LABEL_79:
  v51 = *(this + 4);
  *(this + 4) = 0;
  if (v51)
  {
    do
    {
      v52 = *v51;
      if ((*v51 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebGPU::Device,(WTF::DestructionThread)0>(*v51, v21);
        goto LABEL_85;
      }

      v53 = *v51;
      atomic_compare_exchange_strong_explicit(v51, &v53, v52 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v53 != v52);
    if (v52 == 3)
    {
      WebGPU::Device::~Device(v51, v21);
      bmalloc::api::tzoneFree(v54, v55);
    }
  }

LABEL_85:

  if (*(this + 2) == 1)
  {
    v57 = *this;
    if (*this)
    {
      *(v57 + 8) = 0;
      *this = 0;
      if (atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v57);
        WTF::fastFree(v57, v56);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_2256CDB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  v6 = *(v2 + 2480);
  if (v6)
  {
    *(v2 + 2480) = 0;
    *(v2 + 2488) = 0;
    WTF::fastFree(v6, v5);
  }

  WTF::HashMap<unsigned int,WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::RefPtr<WebGPU::BindGroup const,WTF::RawPtrTraits<WebGPU::BindGroup const>,WTF::DefaultRefDerefTraits<WebGPU::BindGroup const>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 2144), v7, v8);
  std::array<WebGPU::RenderPassEncoder::BufferAndOffset,31ul>::~array((v2 + 408));
  v10 = *(v2 + 400);
  *(v2 + 400) = 0;
  if (v10)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::TextureView>::deref(v10, v9);
  }

  WTF::Vector<WTF::RefPtr<WebGPU::TextureView,WTF::RawPtrTraits<WebGPU::TextureView>,WTF::DefaultRefDerefTraits<WebGPU::TextureView>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 384, v9);
  v12 = *(v2 + 328);
  if (v12)
  {
    *(v2 + 328) = 0;
    *(v2 + 336) = 0;
    WTF::fastFree(v12, v11);
  }

  v14 = *(v2 + 224);
  if (v14)
  {
    WTF::fastFree((v14 - 16), v13);
    v15 = *(v2 + 216);
    if (!v15)
    {
LABEL_9:
      v16 = *(v2 + 208);
      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = *(v2 + 216);
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  WTF::fastFree((v15 - 16), v13);
  v16 = *(v2 + 208);
  if (!v16)
  {
LABEL_11:
    WTF::HashMap<void *,WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<void *>,WTF::HashTraits<void *>,WTF::HashTraits<WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 200), v13);
    WTF::HashMap<unsigned int,WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<WTF::Vector<WebGPU::BindableResources const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap((v2 + 192), v17);
    WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(v3);
    v19 = *(v2 + 168);
    if (v19)
    {
      *(v2 + 168) = 0;
      *(v2 + 176) = 0;
      WTF::fastFree(v19, v18);
      v20 = *(v2 + 152);
      if (!v20)
      {
LABEL_13:
        v21 = *(v2 + 136);
        if (!v21)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v20 = *(v2 + 152);
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
    WTF::fastFree(v20, v18);
    v21 = *(v2 + 136);
    if (!v21)
    {
LABEL_14:
      v22 = *(v2 + 120);
      if (!v22)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    WTF::fastFree(v21, v18);
    v22 = *(v2 + 120);
    if (!v22)
    {
LABEL_15:
      v23 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (!v23)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_26:
    *(v2 + 120) = 0;
    *(v2 + 128) = 0;
    WTF::fastFree(v22, v18);
    v23 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (!v23)
    {
LABEL_17:
      v24 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v24)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebGPU::Buffer,(WTF::DestructionThread)0>::deref(v24, v18);
      }

      WTF::Ref<WebGPU::Device,WTF::RawPtrTraits<WebGPU::Device>,WTF::DefaultRefDerefTraits<WebGPU::Device>>::~Ref((v2 + 32), v18);

      WTF::RefCountedAndCanMakeWeakPtr<WebGPU::BindGroup>::~RefCountedAndCanMakeWeakPtr(v2, v25);
      _Unwind_Resume(a1);
    }

LABEL_16:
    WTF::RefCountedAndCanMakeWeakPtr<WebGPU::RenderPipeline>::deref(v23, v18);
    goto LABEL_17;
  }

LABEL_10:
  WTF::fastFree((v16 - 16), v13);
  goto LABEL_11;
}

void WebGPU::RenderPassEncoder::makeInvalid(id *this, NSString *a2)
{
  v8 = a2;
  objc_storeStrong(this + 285, a2);
  v4 = this[23];
  ++*(v4 + 16);
  if (this[2])
  {
    objc_storeStrong((v4 + 48), a2);
    WebGPU::CommandEncoder::endEncoding(v4, this[2]);
    v5 = this[2];
    this[2] = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"RenderPassEncoder.makeInvalid, rason = %@", v8];
    WebGPU::CommandEncoder::makeInvalid(v4, v5);
  }

  if (*(v4 + 16) == 1)
  {
    WebGPU::CommandEncoder::~CommandEncoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  else
  {
    --*(v4 + 16);
  }
}

void sub_2256CDDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, WebGPU::CommandEncoder *a12)
{
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a12);

  _Unwind_Resume(a1);
}

void sub_2256CDE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, WebGPU::CommandEncoder *a12)
{
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(&a12);

  _Unwind_Resume(a1);
}

id WebGPU::RenderPassEncoder::renderCommandEncoder(id *this)
{
  if (*(this[23] + 172))
  {
    return 0;
  }

  else
  {
    return this[2];
  }
}

void WebGPU::RenderPassEncoder::addTextureToActiveResources(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v13 = a3;
  if (v13)
  {
    v14 = v13;
    if ((a4 & 0xFFFFFFF0) != 0)
    {
      v15 = v13;
      v16 = [v15 parentTexture];
      v17 = v16;
      v14 = v15;
      if (v16)
      {
        v14 = v16;

        a5 = [v15 parentRelativeLevel];
        a6 = [v15 parentRelativeSlice];
      }
    }

    EntryMapKey = WebGPU::BindGroup::makeEntryMapKey(a5, a6, a7);
    v65 = EntryMapKey;
    v64 = a4;
    v20 = (a1 + 200);
    v19 = *(a1 + 200);
    if (v19)
    {
      if (a2 == -1)
      {
        __break(0xC471u);
        goto LABEL_75;
      }

      if (!a2)
      {
        __break(0xC471u);
        JUMPOUT(0x2256CE320);
      }

      v21 = *(v19 - 8);
      v22 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
      v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
      v25 = v21 & ((v24 >> 31) ^ v24);
      v26 = *(v19 + 16 * v25);
      if (v26 == a2)
      {
LABEL_13:
        if (v25 != *(v19 - 4))
        {
          v29 = v19 + 16 * v25;
          v31 = *(v29 + 8);
          v28 = (v29 + 8);
          v30 = v31;
          if (v31)
          {
            if (EntryMapKey == -2)
            {
              __break(0xC471u);
              JUMPOUT(0x2256CE340);
            }

            if (EntryMapKey == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x2256CE360);
            }

            v32 = *(v30 - 8);
            v33 = (EntryMapKey + ~(EntryMapKey << 32)) ^ ((EntryMapKey + ~(EntryMapKey << 32)) >> 22);
            v34 = 9 * ((v33 + ~(v33 << 13)) ^ ((v33 + ~(v33 << 13)) >> 8));
            v35 = (v34 ^ (v34 >> 15)) + ~((v34 ^ (v34 >> 15)) << 27);
            v36 = v32 & ((v35 >> 31) ^ v35);
            v37 = *(v30 + 16 * v36);
            if (v37 != EntryMapKey)
            {
              v38 = 1;
              while (v37 != -1)
              {
                v36 = (v36 + v38) & v32;
                v37 = *(v30 + 16 * v36);
                ++v38;
                if (v37 == EntryMapKey)
                {
                  goto LABEL_59;
                }
              }

              v36 = *(v30 - 4);
            }

LABEL_59:
            if (v36 != *(v30 - 4))
            {
              a4 |= *(v30 + 16 * v36 + 8);
              v64 = a4;
            }
          }

LABEL_15:
          if ((a4 & 4) != 0)
          {
            if (a4 != 4)
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (a4 != 128 && (a4 & 0x80) != 0)
            {
              goto LABEL_55;
            }

            if ((a4 & 0x200) == 0)
            {
              if (a4 == 16 || (a4 & 0x10) == 0)
              {
                goto LABEL_23;
              }

LABEL_55:
              v58 = MEMORY[0x277CCACA8];
              v59 = WebGPU::BindGroup::usageName(&v64);
              v60 = [v58 stringWithFormat:@"Bind group has incompatible usage list: %@", v59];
              WebGPU::RenderPassEncoder::makeInvalid(a1, v60);

              goto LABEL_56;
            }

            if (a4 != 512)
            {
              goto LABEL_55;
            }
          }

LABEL_23:
          if (v28)
          {
            WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>(&v62, v28, &v65, &v64);
LABEL_56:

            return;
          }

          v63 = 0;
          WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned long long const&,WTF::OptionSet<WebGPU::BindGroupEntryUsage>&>(&v62, &v63, &v65, &v64);
          if (a2 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x2256CE380);
          }

          if (a2)
          {
            v39 = *v20;
            if (!*v20)
            {
              WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash((a1 + 200), 8u);
              v39 = *v20;
            }

            v40 = *(v39 - 8);
            v41 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
            v42 = 9 * ((v41 + ~(v41 << 13)) ^ ((v41 + ~(v41 << 13)) >> 8));
            v43 = (v42 ^ (v42 >> 15)) + ~((v42 ^ (v42 >> 15)) << 27);
            v44 = v40 & ((v43 >> 31) ^ v43);
            v45 = (v39 + 16 * v44);
            v46 = *v45;
            if (*v45)
            {
              v47 = 0;
              v48 = 1;
              while (v46 != a2)
              {
                if (v46 == -1)
                {
                  v47 = v45;
                }

                v44 = (v44 + v48) & v40;
                v45 = (v39 + 16 * v44);
                v46 = *v45;
                ++v48;
                if (!*v45)
                {
                  if (v47)
                  {
                    *v47 = 0;
                    v47[1] = 0;
                    --*(*v20 - 16);
                    v45 = v47;
                  }

                  goto LABEL_46;
                }
              }

              WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::HashTable(&v62, &v63);
              v61 = v45[1];
              v45[1] = v62;
              *&v62 = v61;
              if (v61)
              {
                WTF::fastFree((v61 - 16), v49);
              }

              goto LABEL_67;
            }

LABEL_46:
            *v45 = a2;
            WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::OptionSet<WebGPU::BindGroupEntryUsage>,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::OptionSet<WebGPU::BindGroupEntryUsage>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::HashTable(&v62, &v63);
            v50 = v62;
            *&v62 = 0;
            v51 = v45[1];
            v45[1] = v50;
            if (v51)
            {
              WTF::fastFree((v51 - 16), v49);
              if (v62)
              {
                WTF::fastFree((v62 - 16), v49);
              }
            }

            v52 = *v20;
            if (*v20)
            {
              v53 = *(v52 - 16);
              v54 = *(v52 - 12) + 1;
              *(v52 - 12) = v54;
              v55 = (v53 + v54);
              v56 = *(v52 - 4);
              if (v56 <= 0x400)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v54 = 1;
              MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
              v55 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
              v56 = MEMORY[0xFFFFFFFFFFFFFFFC];
              if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
              {
LABEL_51:
                if (3 * v56 > 4 * v55)
                {
                  goto LABEL_67;
                }

                if (!v56)
                {
                  v57 = 8;
LABEL_66:
                  WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::HashMap<unsigned long long,WebGPU::EntryUsageData,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::EntryUsageData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(v20, v57);
LABEL_67:
                  if (v63)
                  {
                    WTF::fastFree((v63 - 16), v49);
                  }

                  goto LABEL_56;
                }

LABEL_65:
                v57 = v56 << (6 * v54 >= (2 * v56));
                goto LABEL_66;
              }
            }

            if (v56 > 2 * v55)
            {
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          __break(0xC471u);
LABEL_75:
          JUMPOUT(0x2256CE300);
        }
      }

      else
      {
        v27 = 1;
        while (v26)
        {
          v25 = (v25 + v27) & v21;
          v26 = *(v19 + 16 * v25);
          ++v27;
          if (v26 == a2)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v28 = 0;
    goto LABEL_15;
  }
}

void sub_2256CE3A4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    WTF::fastFree((a14 - 16), a2);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void WebGPU::RenderPassEncoder::addResourceToActiveResources(mpark *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v4 == 2)
  {
    if (v3 == 2)
    {
      v6 = *a2;

      goto LABEL_14;
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  if (v4 != 1)
  {
    if (!*(a2 + 8))
    {
      v7 = *a2;
      if (!*a2)
      {
        return;
      }

      if ((a3 & 4) != 0)
      {
        v9 = a3;
        v10 = a1;
        v11 = *(a1 + 23);
        ++*(v11 + 4);
        WebGPU::Buffer::indirectBufferInvalidated(v7, v11);
        v12 = *(v11 + 4);
        v13 = v12 - 1;
        if (v12 == 1)
        {
          WebGPU::CommandEncoder::~CommandEncoder(v11);
          bmalloc::api::tzoneFree(v15, v16);
          v14 = a2;
        }

        else
        {
          v14 = a2;
          *(v11 + 4) = v13;
        }

        v7 = *v14;
        a1 = v10;
        a3 = v9;
      }

      v6 = v7;

LABEL_14:
      WebGPU::RenderPassEncoder::addResourceToActiveResources(a1, v6, a3);
      return;
    }

    goto LABEL_26;
  }

  if (v3 != 1)
  {
    goto LABEL_26;
  }

  v5 = *a2;
  if (v5)
  {

    WebGPU::RenderPassEncoder::addResourceToActiveResources(a1, v5, a3);
  }
}

void sub_2256CE784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebGPU::CommandEncoder,WTF::RawPtrTraits<WebGPU::CommandEncoder>,WTF::DefaultRefDerefTraits<WebGPU::CommandEncoder>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t WebGPU::RenderPassEncoder::runIndexBufferValidation(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 72);
  if (!v3 || !*(this + 40))
  {
    WebGPU::RenderPassEncoder::makeInvalid(this, &cfstr_MissingPipelin.isa);
    return 0;
  }

  v4 = a3 + a2;
  if (!v4)
  {
    return 1;
  }

  v5 = *(v3 + 128);
  if (!v5)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v6 = *(v5 - 1);
  v7 = &v5[8 * v6];
  if (!*(v5 - 3))
  {
LABEL_13:
    v9 = v7;
    v7 = &v5[8 * v6];
    goto LABEL_14;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = 32 * v6;
  v9 = v5;
  while (*v9 >= 0xFFFFFFFE)
  {
    v9 += 8;
    v8 -= 32;
    if (!v8)
    {
      v9 = v7;
      break;
    }
  }

LABEL_14:
  if (v5)
  {
    v10 = &v5[8 * *(v5 - 1)];
    if (v9 == v10)
    {
      return 1;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      return 1;
    }
  }

  v11 = v4 - 1;
  while (1)
  {
    v12 = *v9;
    if (v12 >= 0x1F)
    {
      break;
    }

    v13 = this + 408 + 24 * v12;
    if (*v13 && v9[6] == 1)
    {
      v14 = *(v9 + 1);
      if (!is_mul_ok(v11, v14))
      {
        return 0;
      }

      v15 = *(v9 + 2);
      if (__CFADD__(v11 * v14, v15))
      {
        return 0;
      }

      v16 = *(v13 + 16);
      if (v11 * v14 + v15 > v16)
      {
        v17 = this;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer[%d] fails: (strideCount(%lu) - 1) * stride(%llu) + lastStride(%llu) > bufferSize(%llu) / mtlBufferSize(%lu)", v12, v4, v14, v15, v16, objc_msgSend(*v13, "length")];
        WebGPU::RenderPassEncoder::makeInvalid(v17, v18);

        return 0;
      }
    }

    do
    {
      v9 += 8;
    }

    while (v9 != v7 && *v9 >= 0xFFFFFFFE);
    if (v9 == v10)
    {
      return 1;
    }
  }

  __break(1u);
  return this;
}

void WebGPU::RenderPassEncoder::runVertexBufferValidation(WebGPU::RenderPassEncoder *this, int a2, int a3, unint64_t a4, int a5)
{
  v5 = *(this + 9);
  if (!v5)
  {
    v7 = @"Missing pipeline before draw command";

    goto LABEL_6;
  }

  v6 = (a4 + a2);
  if (__CFADD__(a4, a2))
  {
    v7 = @"Overflow in vertex count + firstVertex";

LABEL_6:
    WebGPU::RenderPassEncoder::makeInvalid(this, &v7->isa);
    return;
  }

  v8 = *(v5 + 128);
  if (!v8)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_18;
  }

  v9 = *(v8 - 1);
  v10 = &v8[8 * v9];
  if (!*(v8 - 3))
  {
LABEL_18:
    v12 = v10;
    v10 = &v8[8 * v9];
    goto LABEL_19;
  }

  if (!v9)
  {
    v13 = 0;
    v12 = v8;
    goto LABEL_22;
  }

  v11 = 32 * v9;
  v12 = v8;
  while (*v12 >= 0xFFFFFFFE)
  {
    v12 += 8;
    v11 -= 32;
    if (!v11)
    {
      v12 = v10;
      break;
    }
  }

LABEL_19:
  if (!v8)
  {
    goto LABEL_23;
  }

  v13 = *(v8 - 1);
LABEL_22:
  v8 += 8 * v13;
LABEL_23:
  if (v12 != v8)
  {
    v14 = this + 408;
    v15 = (a5 + a3);
    if (__CFADD__(a5, a3))
    {
      if (v6)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v12[6];
          if (v17)
          {
            if (v17 == 1)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v18 = *v12;
            if (v18 > 0x1E)
            {
              goto LABEL_63;
            }

            v19 = *(v12 + 1);
            if (!is_mul_ok(v16, v19))
            {
              goto LABEL_64;
            }

            v20 = *&v14[24 * v18 + 16];
            v21 = *(v12 + 2);
            if (__CFADD__(v16 * v19, v21) || v16 * v19 + v21 > v20)
            {
              v23 = v6;
              goto LABEL_60;
            }
          }

          do
          {
            v12 += 8;
          }

          while (v12 != v10 && *v12 >= 0xFFFFFFFE);
          if (v12 == v8)
          {
            return;
          }
        }
      }

      while (v12[6] != 1)
      {
        do
        {
          v12 += 8;
        }

        while (v12 != v10 && *v12 >= 0xFFFFFFFE);
        if (v12 == v8)
        {
          return;
        }
      }

LABEL_56:
      v7 = @"StrideCount invalid";

      goto LABEL_6;
    }

    while (1)
    {
      v22 = v12[6];
      v23 = v6;
      if (!v22 || (v23 = v15, v22 == 1))
      {
        if (v23)
        {
          v18 = *v12;
          if (v18 >= 0x1F)
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(0xC471u);
            return;
          }

          v19 = *(v12 + 1);
          if (!is_mul_ok(v23 - 1, v19))
          {
            goto LABEL_64;
          }

          v24 = (v23 - 1) * v19;
          v20 = *&v14[24 * v18 + 16];
          v21 = *(v12 + 2);
          v25 = __CFADD__(v24, v21);
          a4 = v24 + v21;
          if (v25 || a4 > v20)
          {
            break;
          }
        }
      }

      do
      {
        v12 += 8;
      }

      while (v12 != v10 && *v12 >= 0xFFFFFFFE);
      if (v12 == v8)
      {
        return;
      }
    }

LABEL_60:
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer[%d] fails: (strideCount(%llu) - 1) * bufferData.stride(%llu) + bufferData.lastStride(%llu) > bufferSize(%llu)", a4, v18, v23, v19, v21, v20];
    WebGPU::RenderPassEncoder::makeInvalid(this, v27);
  }
}

__CFString *WebGPU::RenderPassEncoder::errorValidatingDrawIndexed(WebGPU::RenderPassEncoder *this)
{
  if (!*(this + 5))
  {
    return @"Index buffer is not set";
  }

  v1 = *(this + 9);
  if (!v1)
  {
    return @"Pipeline is not set";
  }

  v2 = *(v1 + 240);
  if (v2 != 4 && v2 != 2)
  {
    return 0;
  }

  if (*(this + 6) == (*(v1 + 244) != 1))
  {
    return 0;
  }

  return @"Primitive topology mismiatch with render pipeline";
}

void WebGPU::RenderPassEncoder::setCachedRenderPassState(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 2464) == 1)
  {
    v5 = *(a1 + 2432);
    v11 = *(a1 + 2416);
    v12 = v5;
    v13 = *(a1 + 2448);
    [v3 setViewport:&v11];
    if (*(a1 + 2464) == 1)
    {
      *(a1 + 2464) = 0;
    }
  }

  if (*(a1 + 2328) == 1)
  {
    v6 = *(a1 + 2296);
    *&v6 = v6;
    v7 = *(a1 + 2304);
    *&v7 = v7;
    v8 = *(a1 + 2312);
    *&v8 = v8;
    v9 = *(a1 + 2320);
    *&v9 = v9;
    [v4 setBlendColorRed:v6 green:v7 blue:v8 alpha:v9];
  }

  if (*(a1 + 2380) == 1)
  {
    [v4 setStencilReferenceValue:*(a1 + 2376)];
    if (*(a1 + 2380) == 1)
    {
      *(a1 + 2380) = 0;
    }
  }

  if (*(a1 + 2368) == 1)
  {
    v10 = *(a1 + 2352);
    v11 = *(a1 + 2336);
    v12 = v10;
    [v4 setScissorRect:&v11];
    if (*(a1 + 2368) == 1)
    {
      *(a1 + 2368) = 0;
    }
  }
}

uint64_t WebGPU::RenderPassEncoder::executePreDrawCommands(WebGPU::RenderPipeline **this, int a2, const WTF::StringImpl *a3, int a4, const WebGPU::Buffer *a5)
{
  v5 = this;
  v6 = this[9];
  if (!v6)
  {
    goto LABEL_29;
  }

  ++*(v6 + 2);
  if (!a4)
  {
    v10 = v6;
    goto LABEL_11;
  }

  WebGPU::RenderPipeline::recomputeLastStrideAsStride(v6, v176);
  v10 = v176[0];
  v176[0] = 0;
  if (*(v6 + 2) != 1)
  {
    --*(v6 + 2);
    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_11:
    v173 = a2;
    v15 = *(v10 + 17);
    ++*(v15 + 8);
    v174 = v15;
    v16 = v5 + 2144;
    v17 = WebGPU::PipelineLayout::errorValidatingBindGroupCompatibility(v15, (v5 + 2144), a3);
    if (v17)
    {
      goto LABEL_62;
    }

    if (a3)
    {
      WebGPU::RenderPassEncoder::addResourceToActiveResources(v5, a3, 1);
    }

    v18 = *(v5 + 9);
    if (!v18)
    {
      v17 = @"pipeline is not set";
      goto LABEL_62;
    }

    v19 = *(v18 + 128);
    v172 = v10;
    if (v19)
    {
      v20 = *(v19 - 1);
      v21 = &v19[8 * v20];
      if (*(v19 - 3))
      {
        if (!v20)
        {
          goto LABEL_51;
        }

        v22 = 32 * v20;
        v23 = v19;
        while (*v23 >= 0xFFFFFFFE)
        {
          v23 += 8;
          v22 -= 32;
          if (!v22)
          {
            v23 = v21;
            break;
          }
        }

LABEL_25:
        if (v19)
        {
          v10 = &v19[8 * *(v19 - 1)];
          if (v23 != v10)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v10 = 0;
          if (v23)
          {
            while (1)
            {
LABEL_35:
              if (*v23 >= 0x1F)
              {
                goto LABEL_250;
              }

              v27 = v5 + 24 * *v23 + 408;
              if (!*v27)
              {
                break;
              }

              v28 = *(v27 + 8);
              if (v28 >= [*v27 length])
              {
                if (*(v27 + 16))
                {
                  v17 = @"offset >= buffer.length && buffer.size";
                  v10 = v172;
                  WebGPU::RenderPassEncoder::makeInvalid(v5, &cfstr_OffsetBufferLe.isa);
                  goto LABEL_62;
                }

                if (*(*(v5 + 23) + 172))
                {
                  v30 = 0;
                }

                else
                {
                  v30 = *(v5 + 2);
                }

                v17 = v30;
                v31 = *(*(v5 + 4) + 288);
                WebGPU::RenderPassEncoder::setVertexBuffer(v5, v17, v31, 0, *v23);
              }

              else
              {
                if (*(*(v5 + 23) + 172))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = *(v5 + 2);
                }

                v17 = v29;
                WebGPU::RenderPassEncoder::setVertexBuffer(v5, v17, *v27, *(v27 + 8), *v23);
              }

              do
              {
                v23 += 8;
              }

              while (v23 != v21 && *v23 >= 0xFFFFFFFE);
              if (v23 == v10)
              {
                goto LABEL_51;
              }
            }

            v10 = v172;
            v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer1 index[%u] is missing", *v23];
            if (!v17)
            {
              goto LABEL_59;
            }

            goto LABEL_62;
          }
        }

LABEL_51:
        v32 = *(v5 + 20);
        v33 = __CFADD__(v32, 1);
        v34 = v32 + 1;
        if (!v33)
        {
          v33 = __CFADD__(v34, 1);
          v35 = v34 + 1;
          v10 = v172;
          if (v33 || (v36 = *(v5 + 21), v33 = __CFADD__(v36, v35), v37 = v36 + v35, v33) || v37 > *(*(v5 + 4) + 100))
          {
            v17 = @"Too many bind groups and vertex buffers used";
            goto LABEL_62;
          }

LABEL_59:
          if (*(*(v5 + 23) + 172))
          {
            v38 = 0;
          }

          else
          {
            v38 = *(v5 + 2);
          }

          v46 = v38;
          v169 = *(v10 + 57);
          v170 = v46;
          v47 = *v16;
          if (*v16)
          {
            v48 = *(v47 - 1);
            v49 = &v47[4 * v48];
            if (*(v47 - 3))
            {
              if (!v48)
              {
                v52 = 0;
                v51 = *v16;
                goto LABEL_86;
              }

              v50 = 16 * v48;
              v51 = *v16;
              while (*v51 >= 0xFFFFFFFE)
              {
                v51 += 4;
                v50 -= 16;
                if (!v50)
                {
                  v51 = v49;
                  break;
                }
              }

LABEL_82:
              if (!v47)
              {
                v53 = 0;
                goto LABEL_87;
              }

              v52 = *(v47 - 1);
LABEL_86:
              v53 = &v47[4 * v52];
LABEL_87:
              if (v51 != v53)
              {
                v171 = v5 + 2152;
                v167 = v53;
                v168 = v49;
                do
                {
                  v16 = *(v51 + 1);
                  if (!v16)
                  {
                    v17 = v170;
                    WebGPU::RenderPassEncoder::makeInvalid(v5, &cfstr_BindGroupIsMis.isa);
                    goto LABEL_63;
                  }

                  ++*(v16 + 8);
                  if (v173)
                  {
                    v54 = *(v16 + 60);
                    if (v54)
                    {
                      v10 = *(v16 + 48);
                      v55 = (v10 + 48 * v54);
                      while (1)
                      {
                        if ((*(v10 + 40) & 3) != 0 && *(v10 + 3))
                        {
                          if (*(*(v5 + 23) + 172))
                          {
                            v56 = 0;
                          }

                          else
                          {
                            v56 = *(v5 + 2);
                          }

                          v57 = v56;
                          v58 = *(v10 + 3);
                          if (!v58)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x2256CFCD4);
                          }

                          v59 = v57;
                          [v57 useResources:*v10 count:v58 usage:*(v10 + 4) stages:*(v10 + 5)];
                        }

                        v60 = *(v10 + 3);
                        if (v60)
                        {
                          break;
                        }

LABEL_94:
                        v10 = (v10 + 48);
                        if (v10 == v55)
                        {
                          goto LABEL_125;
                        }
                      }

                      v61 = 0;
                      v62 = 0;
                      v17 = 40 * v60;
                      while (v62 < *(v10 + 7))
                      {
                        v63 = v61 + *(v10 + 2);
                        v64 = (v63 + 8);
                        WebGPU::RenderPassEncoder::addResourceToActiveResources(v5, (v63 + 8), *v63);
                        v66 = v63[16];
                        if (v66 == 255)
                        {
                          v67 = -1;
                        }

                        else
                        {
                          v67 = v63[16];
                        }

                        if (v67 == 2)
                        {
                          if (v66 != 2)
                          {
                            goto LABEL_255;
                          }

                          if (*v64)
                          {
                            WebGPU::ExternalTexture::setCommandEncoder(*v64, *(v5 + 23));
                          }
                        }

                        else if (v67 == 1)
                        {
                          if (v66 != 1)
                          {
                            goto LABEL_255;
                          }

                          v68 = *v64;
                          if (*v64)
                          {
                            v69 = *(v5 + 23);
                            v70 = *(v69 + 200);
                            v176[0] = v70;
                            v71 = *(v68 + 29);
                            if (v71 == *(v68 + 28))
                            {
                              v72 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v68 + 104, v71 + 1, v176);
                              v71 = *(v68 + 29);
                              *(*(v68 + 13) + 8 * v71) = *v72;
                            }

                            else
                            {
                              *(*(v68 + 13) + 8 * v71) = v70;
                            }

                            *(v68 + 29) = v71 + 1;
                            WebGPU::CommandEncoder::addTexture(v69, *(v68 + 12));
                            v73 = *(v68 + 12);
                            if (*(v73 + 104) == 1 && (*(v73 + 105) & 1) == 0)
                            {
                              WebGPU::CommandEncoder::makeSubmitInvalid(v69, 0);
                            }
                          }
                        }

                        else
                        {
                          if (v63[16])
                          {
LABEL_255:
                            mpark::throw_bad_variant_access(v65);
                          }

                          if (*v64)
                          {
                            WebGPU::Buffer::setCommandEncoder(*v64, *(v5 + 23));
                          }
                        }

                        ++v62;
                        v61 = (v61 + 40);
                        if (v17 == v61)
                        {
                          goto LABEL_94;
                        }
                      }

LABEL_262:
                      __break(0xC471u);
                      JUMPOUT(0x2256CFCCCLL);
                    }
                  }

LABEL_125:
                  v74 = *(v16 + 104);
                  if (v74 && *(v74 - 12))
                  {
                    v75 = *(v5 + 23);
                    ++*(v75 + 4);
                    v176[0] = v75;
                    WebGPU::CommandEncoder::rebindSamplersPreCommit(v75, v16);
                    if (*(v75 + 4) == 1)
                    {
                      WebGPU::CommandEncoder::~CommandEncoder(v75);
                      bmalloc::api::tzoneFree(v76, v77);
                    }

                    else
                    {
                      --*(v75 + 4);
                    }
                  }

                  v78 = *v51;
                  if (v78 >= 0x20)
                  {
                    goto LABEL_250;
                  }

                  v10 = v172;
                  if (!WebGPU::BindGroup::previouslyValidatedBindGroup(v16, v78, v169, *&v171[4 * v78]))
                  {
                    v79 = *(v5 + 24);
                    if (v79)
                    {
                      v80 = *v51;
                      if (*v51 == -2)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2256CFD04);
                      }

                      if (v80 == -1)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2256CFD24);
                      }

                      v81 = *(v79 - 8);
                      v82 = 9 * ((v80 + ~(v80 << 15)) ^ ((v80 + ~(v80 << 15)) >> 10));
                      v83 = (v82 ^ (v82 >> 6)) + ~((v82 ^ (v82 >> 6)) << 11);
                      v84 = v81 & (v83 ^ HIWORD(v83));
                      v85 = (v79 + 24 * v84);
                      isa = v85->isa;
                      if (LODWORD(v85->isa) != v80)
                      {
                        v87 = 1;
                        while (isa != -1)
                        {
                          v84 = (v84 + v87) & v81;
                          v85 = (v79 + 24 * v84);
                          isa = v85->isa;
                          ++v87;
                          if (LODWORD(v85->isa) == v80)
                          {
                            goto LABEL_142;
                          }
                        }

                        v85 = (v79 + 24 * *(v79 - 4));
                      }

LABEL_142:
                      v17 = v79 + 24 * *(v79 - 4);
                    }

                    else
                    {
                      v85 = 0;
                      v17 = 0;
                      v80 = *v51;
                    }

                    v88 = WebGPU::RenderPipeline::minimumBufferSizes(v172, v80);
                    if (v85 == v17)
                    {
                      p_info = 0;
                    }

                    else
                    {
                      p_info = &v85->info;
                    }

                    v90 = WebGPU::errorValidatingBindGroup(v16, v88, p_info);
                    if (v90)
                    {
                      v139 = v90;
                      WebGPU::RenderPassEncoder::makeInvalid(v5, v90);

                      v17 = v170;
LABEL_252:
                      if (*(v16 + 8) == 1)
                      {
                        WebGPU::BindGroup::~BindGroup(v16, v140, v141);
                        bmalloc::api::tzoneFree(v165, v166);
                      }

                      else
                      {
                        --*(v16 + 8);
                      }

LABEL_63:
                      v26 = 0;
                      goto LABEL_64;
                    }

                    v91 = v174;
                    v92 = *v51;
                    if (*(v174 + 32) == 1)
                    {
                      if (*(v174 + 7) <= v92)
                      {
                        goto LABEL_271;
                      }

                      v93 = *(*(v174 + 2) + 8 * v92);
                      if (!v93)
                      {
                        goto LABEL_271;
                      }

                      if (!*(v16 + 64) || ((++*(v93 + 8), v176[0] = v93, v94 = [*(v16 + 16) length], v95 = objc_msgSend(*(v93 + 24), "encodedLength"), *(v93 + 8) == 1) ? (v97 = v95, WebGPU::BindGroupLayout::~BindGroupLayout(v93, v96), bmalloc::api::tzoneFree(v98, v99), v95 = v97) : --*(v93 + 8), v100 = v94 == v95, v10 = v172, !v100))
                      {
LABEL_248:
                        v5 = *(v5 + 23);
                        ++*(v5 + 4);
                        v176[0] = v5;
                        WebGPU::CommandEncoder::makeSubmitInvalid(v5, 0);
                        v17 = v170;
                        if (*(v5 + 4) != 1)
                        {
                          --*(v5 + 4);
                          goto LABEL_252;
                        }

LABEL_251:
                        WebGPU::CommandEncoder::~CommandEncoder(v5);
                        bmalloc::api::tzoneFree(v163, v164);
                        goto LABEL_252;
                      }

                      v91 = v174;
                      v92 = *v51;
                      if (*(v174 + 32))
                      {
LABEL_271:
                        if (*(v91 + 7) > v92)
                        {
                          v101 = *(*(v91 + 2) + 8 * v92);
                          if (v101)
                          {
                            if (!*(v16 + 64))
                            {
                              goto LABEL_248;
                            }

                            ++*(v101 + 8);
                            v176[0] = v101;
                            v102 = [*(v16 + 24) length];
                            v103 = [*(v101 + 32) encodedLength];
                            if (*(v101 + 8) == 1)
                            {
                              v105 = v103;
                              WebGPU::BindGroupLayout::~BindGroupLayout(v101, v104);
                              bmalloc::api::tzoneFree(v106, v107);
                              v103 = v105;
                            }

                            else
                            {
                              --*(v101 + 8);
                            }

                            v100 = v102 == v103;
                            v10 = v172;
                            if (!v100)
                            {
                              goto LABEL_248;
                            }

                            v92 = *v51;
                          }
                        }
                      }
                    }

                    if (v92 >= 0x20)
                    {
                      goto LABEL_250;
                    }

                    v177[0] = *&v171[4 * v92];
                    v175 = (v169 << 32) | v92;
                    WTF::HashMap<unsigned long long,unsigned int,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned int &>((v16 + 96), &v175, v177, v176);
                    v108 = *(v176[0] + 2);
                    if (v108 <= v177[0])
                    {
                      v108 = v177[0];
                    }

                    *(v176[0] + 2) = v108;
                  }

                  v109 = *(v16 + 16);
                  v110 = *(*(v5 + 4) + 100) - 1;
                  v33 = v110 >= *v51;
                  v111 = v110 - *v51;
                  if (v33)
                  {
                    v112 = v111;
                  }

                  else
                  {
                    v112 = *v51;
                  }

                  WebGPU::RenderPassEncoder::setVertexBuffer(v5, v170, v109, 0, v112);

                  v113 = *(v16 + 24);
                  v114 = *v51;
                  v115 = v170;
                  v116 = v113;
                  v10 = v116;
                  if (*(v5 + 2476) == 1)
                  {
                    [(__CFString *)v115 setFragmentBuffer:v116 offset:0 atIndex:v114];
                  }

                  else
                  {
                    v117 = [(WebGPU::RenderPipeline *)v116 gpuAddress];
                    if (v114 >= 0x1F)
                    {
                      goto LABEL_250;
                    }

                    v118 = v117;
                    v119 = v5 + 16 * v114 + 1648;
                    if (!v117 || *v119 != v117 || *(v119 + 8))
                    {
                      [(__CFString *)v115 setFragmentBuffer:v10 offset:0 atIndex:v114];
                      *v119 = v118;
                      *(v119 + 8) = 0;
                    }
                  }

                  if (*(v16 + 8) == 1)
                  {
                    WebGPU::BindGroup::~BindGroup(v16, v120, v121);
                    bmalloc::api::tzoneFree(v124, v125);
                    v10 = v172;
                    v51 += 4;
                    v122 = v167;
                    for (i = v168; v51 != i; v51 += 4)
                    {
LABEL_183:
                      if (*v51 < 0xFFFFFFFE)
                      {
                        break;
                      }
                    }
                  }

                  else
                  {
                    --*(v16 + 8);
                    v10 = v172;
                    v51 += 4;
                    v122 = v167;
                    i = v168;
                    if (v51 != v168)
                    {
                      goto LABEL_183;
                    }
                  }
                }

                while (v51 != v122);
              }

              v126 = *(v10 + 2);

              if (v126)
              {
                v127 = *(v10 + 2);
                [(__CFString *)v170 setRenderPipelineState:v127];
              }

              v128 = *(v10 + 15);

              if (v128)
              {
                v129 = *(v10 + 15);
                [(__CFString *)v170 setDepthStencilState:v129];
              }

              [(__CFString *)v170 setCullMode:*(v10 + 8)];
              [(__CFString *)v170 setFrontFacingWinding:*(v10 + 7)];
              [(__CFString *)v170 setDepthClipMode:*(v10 + 9)];
              LODWORD(v130) = *(v10 + 20);
              LODWORD(v131) = *(v10 + 21);
              LODWORD(v132) = *(v10 + 22);
              [(__CFString *)v170 setDepthBias:v130 slopeScale:v131 clamp:v132];
              WebGPU::RenderPassEncoder::setCachedRenderPassState(v5, v170);
              v176[0] = *(v5 + 12);
              WTF::HashSet<unsigned long long,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v5 + 27, v176);
              v133 = *(v5 + 24);
              if (v133)
              {
                v134 = *(v133 - 4);
                v135 = v133 + 24 * v134;
                if (*(v133 - 12))
                {
                  if (!v134)
                  {
                    v137 = 0;
                    v16 = *(v5 + 24);
                    goto LABEL_206;
                  }

                  v136 = 24 * v134;
                  v16 = *(v5 + 24);
                  while (*v16 >= 0xFFFFFFFE)
                  {
                    v16 += 24;
                    v136 -= 24;
                    if (!v136)
                    {
                      v16 = v135;
                      break;
                    }
                  }

LABEL_201:
                  if (!v133)
                  {
                    v138 = 0;
                    goto LABEL_207;
                  }

                  v137 = *(v133 - 4);
LABEL_206:
                  v138 = v133 + 24 * v137;
LABEL_207:
                  if (v16 != v138)
                  {
                    v142 = *(v5 + 623);
                    do
                    {
                      v143 = *v16;
                      if (v142 <= v143)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x2256CFCDCLL);
                      }

                      if (*(*(v5 + 310) + v143) == 1)
                      {
                        if (!WebGPU::PipelineLayout::updateVertexOffsets(v174, *v16, (v16 + 8), *(v5 + 15), *(v5 + 33)))
                        {
                          goto LABEL_224;
                        }

                        v144 = *(v5 + 41);
                        if (v144 <= 2)
                        {
                          goto LABEL_250;
                        }

                        if ((WebGPU::PipelineLayout::updateFragmentOffsets(v174, v143, (v16 + 8), *(v5 + 19) + 12, v144 - 3) & 1) == 0)
                        {
LABEL_224:
                          WebGPU::RenderPassEncoder::makeInvalid(v5, &cfstr_InvalidOffsetC.isa);
                          v26 = 0;
                          v17 = v170;
                          goto LABEL_64;
                        }

                        v142 = *(v5 + 623);
                        if (v142 <= v143)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x2256CFCE4);
                        }

                        *(*(v5 + 310) + v143) = 0;
                      }

                      do
                      {
                        v16 += 24;
                      }

                      while (v16 != v135 && *v16 >= 0xFFFFFFFE);
                    }

                    while (v16 != v138);
                  }

                  v145 = *(v5 + 33);
                  v17 = v170;
                  if (!v145)
                  {
                    goto LABEL_228;
                  }

                  v146 = *(v5 + 15);
                  if (*(v5 + 37) == v145)
                  {
                    v16 = 4 * v145;
                    if (!memcmp(*(v5 + 17), *(v5 + 15), 4 * v145))
                    {
                      goto LABEL_228;
                    }
                  }

                  else
                  {
                    v16 = 4 * v145;
                  }

                  v147 = *(*(v5 + 4) + 100);
                  v148 = v170;
                  [(__CFString *)v148 setVertexBytes:v146 length:v16 atIndex:v147];
                  if (v147 >= 0x1F)
                  {
                    goto LABEL_250;
                  }

                  v149 = v5 + 16 * v147;
                  *(v149 + 144) = 0;
                  *(v149 + 290) = 0;

                  v17 = v170;
                  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v5 + 136), (v5 + 120));
LABEL_228:
                  if (*(v5 + 2464) == 1)
                  {
                    v150 = *(v5 + 306);
                    v151 = *(v5 + 307);
                  }

                  else
                  {
                    v151 = 1.0;
                    v150 = 0.0;
                  }

                  v152 = *(v5 + 41);
                  if (v152 <= 2)
                  {
                    if (*(v5 + 40) <= 2u)
                    {
                      v153 = *(v5 + 19);
                      v154 = WTF::fastMalloc(0x40);
                      *(v5 + 40) = 16;
                      *(v5 + 19) = v154;
                      memcpy(v154, v153, 4 * v152);
                      if (v153)
                      {
                        if (*(v5 + 19) == v153)
                        {
                          *(v5 + 19) = 0;
                          *(v5 + 40) = 0;
                        }

                        WTF::fastFree(v153, v155);
                      }
                    }

                    *(v5 + 41) = 3;
                  }

                  v156 = *(v5 + 19);
                  *v156 = v150;
                  if (*(v5 + 41) <= 1u)
                  {
                    goto LABEL_262;
                  }

                  v156[1] = v151;
                  v157 = *(v5 + 45);
                  v158 = *(v5 + 41);
                  if (v157 == v158 && !memcmp(*(v5 + 21), v156, 4 * v157))
                  {
LABEL_243:
                    v161 = *(v5 + 299);
                    v33 = __CFADD__(v161, 1);
                    v162 = v161 + 1;
                    if (v33 || v162 > *(v5 + 300))
                    {
                      WebGPU::RenderPassEncoder::makeInvalid(v5, &cfstr_MDrawcountMMax.isa);
                    }

                    else
                    {
                      *(v5 + 299) = v162;
                    }

                    v26 = 1;
LABEL_64:

                    if (v174)
                    {
                      if (*(v174 + 2) == 1)
                      {
                        WebGPU::PipelineLayout::~PipelineLayout(v174, v39);
                        bmalloc::api::tzoneFree(v41, v42);
                        v40 = *(v10 + 2) - 1;
                        if (*(v10 + 2) != 1)
                        {
                          goto LABEL_68;
                        }

                        goto LABEL_70;
                      }

                      --*(v174 + 2);
                    }

                    v40 = *(v10 + 2) - 1;
                    if (*(v10 + 2) != 1)
                    {
LABEL_68:
                      *(v10 + 2) = v40;
                      return v26;
                    }

LABEL_70:
                    WebGPU::RenderPipeline::~RenderPipeline(v10, v39);
                    bmalloc::api::tzoneFree(v43, v44);
                    return v26;
                  }

                  v16 = *(*(v5 + 4) + 96);
                  v159 = v17;
                  [(__CFString *)v159 setFragmentBytes:v156 length:4 * v158 atIndex:v16];
                  if (v16 < 0x1F)
                  {
                    v160 = v5 + 16 * v16;
                    *(v160 + 206) = 0;
                    *(v160 + 414) = 0;

                    v17 = v170;
                    WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v5 + 168), (v5 + 152));
                    goto LABEL_243;
                  }

LABEL_250:
                  __break(1u);
                  goto LABEL_251;
                }
              }

              else
              {
                v135 = 0;
                LODWORD(v134) = 0;
              }

              v16 = v135;
              v135 = v133 + 24 * v134;
              goto LABEL_201;
            }
          }

          else
          {
            v49 = 0;
            v48 = 0;
          }

          v51 = v49;
          v49 = &v47[4 * v48];
          goto LABEL_82;
        }

        v17 = @"Too many bind groups and vertex buffers used";
        v10 = v172;
LABEL_62:
        WebGPU::RenderPassEncoder::makeInvalid(v5, v17);
        goto LABEL_63;
      }
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v23 = v21;
    v21 = &v19[8 * v20];
    goto LABEL_25;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v6, v9);
  bmalloc::api::tzoneFree(v11, v12);
  v14 = v176[0];
  v176[0] = 0;
  if (!v14)
  {
    goto LABEL_10;
  }

  if (*(v14 + 2) != 1)
  {
    --*(v14 + 2);
LABEL_10:
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  WebGPU::RenderPipeline::~RenderPipeline(v14, v13);
  bmalloc::api::tzoneFree(v24, v25);
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_29:
  WebGPU::RenderPassEncoder::makeInvalid(v5, &cfstr_MissingPipelin.isa);
  return 0;
}