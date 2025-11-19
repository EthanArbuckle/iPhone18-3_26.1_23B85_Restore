void sub_29AEA1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AEA1380(pxrInternal__aapl__pxrReserved__::TfToken *EmptyString@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*EmptyString & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = ((*EmptyString & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v5 = EmptyString;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v5, v6, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_29AEA1414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::ComputeBufferSources(uint64_t *a1, void **a2, BOOL a3)
{
  v57 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v47 = 0;
  }

  else
  {
    v47 = pxrInternal__aapl__pxrReserved__::HdStTextureHandle::UseBindlessHandles(*(v4 + 16));
    v4 = *a1;
    v5 = a1[1];
  }

  while (v4 != v5)
  {
    v7 = *(v4 + 8);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v38 = *(v4 + 16);
        if (v38)
        {
          {
            v40 = v39;
            v41 = *(v38 + 16);
            if (v41)
            {
              if (v42)
              {
                if (v47)
                {
                  v56 = *(v40 + 120);
                  SamplerBindlessHandle = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetSamplerBindlessHandle(v42 + 2, &v56);
                  sub_29AEA2D00(v4, &SamplerBindlessHandle, &v55);
                  v50 = v55;
                  sub_29A01729C(a2, &v50);
                  if (*(&v50 + 1))
                  {
                    sub_29A014BEC(*(&v50 + 1));
                  }

                  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                  if (!v43)
                  {
                    v43 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                  }

                  sub_29AEA1380(v4, v43 + 2, &SamplerBindlessHandle);
                  v56 = *(v40 + 136);
                  TextureBindlessHandle = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureBindlessHandle(&v56);
                  sub_29AEA2D00(&SamplerBindlessHandle, &TextureBindlessHandle, &v55);
                  v50 = v55;
                  v55 = 0uLL;
                  sub_29A01729C(a2, &v50);
                  if (*(&v50 + 1))
                  {
                    sub_29A014BEC(*(&v50 + 1));
                  }

                  if ((SamplerBindlessHandle & 7) != 0)
                  {
                    atomic_fetch_add_explicit((SamplerBindlessHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                if (!v44)
                {
                  v44 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                }

                sub_29AEA1380(v4, v44 + 4, &SamplerBindlessHandle);
                IsValid = pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::IsValid(v40);
                *(&v56 + 1) = &unk_2A20443C3;
                LOBYTE(v56) = IsValid;
                sub_29AEA2FEC(&SamplerBindlessHandle, &v56, &v55);
                v50 = v55;
                v55 = 0uLL;
                sub_29A01729C(a2, &v50);
                goto LABEL_74;
              }
            }

            *&v50 = "hdSt/textureBinder.cpp";
            *(&v50 + 1) = "_CastAndCompute";
            v51 = 428;
            v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
            v53 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad sampler object");
          }

          else
          {
            *&v50 = "hdSt/textureBinder.cpp";
            *(&v50 + 1) = "_CastAndCompute";
            v51 = 420;
            v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
            v53 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad texture object");
          }
        }

        else
        {
          *&v50 = "hdSt/textureBinder.cpp";
          *(&v50 + 1) = "_CastAndCompute";
          v51 = 412;
          v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
          v53 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Invalid texture handle in texture binder.");
        }
      }

      else if (v7 == 3)
      {
        v23 = *(v4 + 16);
        if (v23)
        {
          {
            v25 = v24;
            v26 = *(v23 + 16);
            if (v26)
            {
              if (v27)
              {
                if (v47)
                {
                  *&v56 = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetSamplerBindlessHandle(v27 + 2, v25 + 18);
                  sub_29AEA2D00(v4, &v56, &v55);
                  v50 = v55;
                  sub_29A01729C(a2, &v50);
                  if (*(&v50 + 1))
                  {
                    sub_29A014BEC(*(&v50 + 1));
                  }

                  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                  if (!v28)
                  {
                    v28 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                  }

                  sub_29AEA1380(v4, v28 + 2, &v56);
                  SamplerBindlessHandle = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureBindlessHandle(v25 + 20);
                  sub_29AEA2D00(&v56, &SamplerBindlessHandle, &v55);
                  v50 = v55;
                  v55 = 0uLL;
                  sub_29A01729C(a2, &v50);
                  if (*(&v50 + 1))
                  {
                    sub_29A014BEC(*(&v50 + 1));
                  }

                  if ((v56 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                if (!v29)
                {
                  v29 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                }

                sub_29AEA1380(v4, v29 + 4, &SamplerBindlessHandle);
                v30 = pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::IsValid(v25);
                *(&v56 + 1) = &unk_2A20443C3;
                LOBYTE(v56) = v30;
                sub_29AEA2FEC(&SamplerBindlessHandle, &v56, &v55);
                v50 = v55;
                v55 = 0uLL;
                sub_29A01729C(a2, &v50);
                goto LABEL_74;
              }
            }

            *&v50 = "hdSt/textureBinder.cpp";
            *(&v50 + 1) = "_CastAndCompute";
            v51 = 428;
            v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
            v53 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad sampler object");
          }

          else
          {
            *&v50 = "hdSt/textureBinder.cpp";
            *(&v50 + 1) = "_CastAndCompute";
            v51 = 420;
            v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
            v53 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad texture object");
          }
        }

        else
        {
          *&v50 = "hdSt/textureBinder.cpp";
          *(&v50 + 1) = "_CastAndCompute";
          v51 = 412;
          v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
          v53 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Invalid texture handle in texture binder.");
        }
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v8 = *(v4 + 16);
        if (v8)
        {
          {
            v10 = v9;
            v11 = *(v8 + 16);
            if (v11)
            {
              if (v12)
              {
                v48 = a3;
                if (v47)
                {
                  *&v56 = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetSamplerBindlessHandle(v12 + 2, v10 + 63);
                  sub_29AEA2D00(v4, &v56, &v55);
                  v50 = v55;
                  sub_29A01729C(a2, &v50);
                  if (*(&v50 + 1))
                  {
                    sub_29A014BEC(*(&v50 + 1));
                  }
                }

                v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                if (!v13)
                {
                  v13 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                }

                sub_29AEA1380(v4, v13 + 4, &SamplerBindlessHandle);
                v14 = pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::IsValid(v10);
                *(&v56 + 1) = &unk_2A20443C3;
                LOBYTE(v56) = v14;
                sub_29AEA2FEC(&SamplerBindlessHandle, &v56, &v55);
                v50 = v55;
                v55 = 0uLL;
                sub_29A01729C(a2, &v50);
                if (*(&v50 + 1))
                {
                  sub_29A014BEC(*(&v50 + 1));
                }

                if (*(&v55 + 1))
                {
                  sub_29A014BEC(*(&v55 + 1));
                }

                sub_29A186B14(&v56);
                if ((SamplerBindlessHandle & 7) != 0)
                {
                  atomic_fetch_add_explicit((SamplerBindlessHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                if (!v15)
                {
                  v15 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
                }

                sub_29AEA1380(v4, v15 + 1, &SamplerBindlessHandle);
                *(&v56 + 1) = &off_2A2042BD8 + 2;
                v16 = operator new(0x88uLL);
                v17 = *(v10 + 376);
                v18 = *(v10 + 392);
                v19 = *(v10 + 424);
                *(v16 + 2) = *(v10 + 408);
                *(v16 + 3) = v19;
                *v16 = v17;
                *(v16 + 1) = v18;
                v20 = *(v10 + 440);
                v21 = *(v10 + 456);
                v22 = *(v10 + 488);
                *(v16 + 6) = *(v10 + 472);
                *(v16 + 7) = v22;
                *(v16 + 4) = v20;
                *(v16 + 5) = v21;
                atomic_store(0, v16 + 32);
                *&v56 = v16;
                atomic_fetch_add_explicit(v16 + 32, 1u, memory_order_relaxed);
                LODWORD(TextureBindlessHandle) = 1;
                sub_29AEA30B4(&SamplerBindlessHandle, &v56, &TextureBindlessHandle, &v48, &v55);
                v50 = v55;
                v55 = 0uLL;
                sub_29A01729C(a2, &v50);
LABEL_74:
                if (*(&v50 + 1))
                {
                  sub_29A014BEC(*(&v50 + 1));
                }

                if (*(&v55 + 1))
                {
                  sub_29A014BEC(*(&v55 + 1));
                }

                sub_29A186B14(&v56);
                if ((SamplerBindlessHandle & 7) != 0)
                {
                  atomic_fetch_add_explicit((SamplerBindlessHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                goto LABEL_92;
              }
            }

            *&v50 = "hdSt/textureBinder.cpp";
            *(&v50 + 1) = "_CastAndCompute";
            v51 = 428;
            v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
            v53 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad sampler object");
          }

          else
          {
            *&v50 = "hdSt/textureBinder.cpp";
            *(&v50 + 1) = "_CastAndCompute";
            v51 = 420;
            v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
            v53 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad texture object");
          }
        }

        else
        {
          *&v50 = "hdSt/textureBinder.cpp";
          *(&v50 + 1) = "_CastAndCompute";
          v51 = 412;
          v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
          v53 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Invalid texture handle in texture binder.");
        }
      }
    }

    else
    {
      v31 = *(v4 + 16);
      if (v31)
      {
        {
          v33 = v32;
          v34 = *(v31 + 16);
          if (v34)
          {
            if (v35)
            {
              if (v47)
              {
                *&v56 = pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetSamplerBindlessHandle(v35 + 2, v33 + 9);
                sub_29AEA2D00(v4, &v56, &v55);
                v50 = v55;
                sub_29A01729C(a2, &v50);
                if (*(&v50 + 1))
                {
                  sub_29A014BEC(*(&v50 + 1));
                }
              }

              v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
              if (!v36)
              {
                v36 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
              }

              sub_29AEA1380(v4, v36 + 4, &SamplerBindlessHandle);
              v37 = (**v33)(v33);
              *(&v56 + 1) = &unk_2A20443C3;
              LOBYTE(v56) = v37;
              sub_29AEA2FEC(&SamplerBindlessHandle, &v56, &v55);
              v50 = v55;
              v55 = 0uLL;
              sub_29A01729C(a2, &v50);
              goto LABEL_74;
            }
          }

          *&v50 = "hdSt/textureBinder.cpp";
          *(&v50 + 1) = "_CastAndCompute";
          v51 = 428;
          v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
          v53 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad sampler object");
        }

        else
        {
          *&v50 = "hdSt/textureBinder.cpp";
          *(&v50 + 1) = "_CastAndCompute";
          v51 = 420;
          v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
          v53 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Bad texture object");
        }
      }

      else
      {
        *&v50 = "hdSt/textureBinder.cpp";
        *(&v50 + 1) = "_CastAndCompute";
        v51 = 412;
        v52 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeBufferSourcesFunctor, Args = <std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>> *const &, const BOOL &, BOOL &>]";
        v53 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v50, 1, "Invalid texture handle in texture binder.");
      }
    }

LABEL_92:
    v4 += 40;
  }
}

void sub_29AEA1F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEA2084(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v38 = a2;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *(v3 + 8);
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v29 = *(v3 + 16);
          if (!v29)
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 412;
            v36 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_42;
          }

          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 420;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_37;
          }

          v31 = v30;
          v32 = *(v29 + 16);
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 428;
            v37 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_47;
          }

          v19 = *a3;
          v34 = *(v31 + 120);
          v40 = *(v31 + 136);
          v41 = v34;
          v20 = v33 + 16;
          v21 = &v41;
          v22 = v33 + 32;
          v23 = &v40;
LABEL_32:
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindTextureWithLayout(v38, v3, v20, v21, v22, v23, v19);
          goto LABEL_48;
        }

        if (v5 == 3)
        {
          v14 = *(v3 + 16);
          if (!v14)
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 412;
            v36 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_42;
          }

          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 420;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_37;
          }

          v16 = v15;
          v17 = *(v14 + 16);
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 428;
            v37 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_47;
          }

          v19 = *a3;
          v20 = v18 + 16;
          v21 = (v16 + 144);
          v22 = v18 + 32;
          v23 = (v16 + 160);
          goto LABEL_32;
        }
      }

      else
      {
        if (!v5)
        {
          v24 = *(v3 + 16);
          if (!v24)
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 412;
            v36 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_42;
          }

          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 420;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_37;
          }

          v26 = v25;
          v27 = *(v24 + 16);
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 428;
            v37 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
            goto LABEL_47;
          }

          v11 = *a3;
          v12 = v28 + 16;
          v13 = v26 + 72;
LABEL_25:
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindTexture(v38, v3, v12, v13, v11);
          goto LABEL_48;
        }

        if (v5 == 1)
        {
          v6 = *(v3 + 16);
          if (!v6)
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 412;
            v36 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
LABEL_42:
            v43 = v36;
            v44 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 1, "Invalid texture handle in texture binder.", v38);
            goto LABEL_48;
          }

          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 420;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
LABEL_37:
            v43 = v35;
            v44 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 1, "Bad texture object", v38);
            goto LABEL_48;
          }

          v8 = v7;
          v9 = *(v6 + 16);
          {
            *&v41 = "hdSt/textureBinder.cpp";
            *(&v41 + 1) = "_CastAndCompute";
            v42 = 428;
            v37 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, BOOL>]";
LABEL_47:
            v43 = v37;
            v44 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v41, 1, "Bad sampler object", v38);
            goto LABEL_48;
          }

          v11 = *a3;
          v12 = v10 + 16;
          v13 = v8 + 504;
          goto LABEL_25;
        }
      }

LABEL_48:
      v3 += 40;
    }

    while (v3 != v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureBinder::GetBindingDescs(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v36 = a1;
  v37 = a2;
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      v5 = *(v3 + 8);
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v27 = *(v3 + 16);
          if (!v27)
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 412;
            v34 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_42;
          }

          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 420;
            v33 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_37;
          }

          v29 = v28;
          v30 = *(v27 + 16);
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 428;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Ptex, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_47;
          }

          v32 = *(v29 + 120);
          v38 = *(v29 + 136);
          v39 = v32;
          v18 = v31 + 16;
          v19 = &v39;
          v20 = v31 + 32;
          v21 = &v38;
LABEL_32:
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureWithLayoutBindingDesc(v36, v37, v3, v18, v19, v20, v21);
          goto LABEL_48;
        }

        if (v5 == 3)
        {
          v13 = *(v3 + 16);
          if (!v13)
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 412;
            v34 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_42;
          }

          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 420;
            v33 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_37;
          }

          v15 = v14;
          v16 = *(v13 + 16);
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 428;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Udim, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_47;
          }

          v18 = v17 + 16;
          v19 = (v15 + 144);
          v20 = v17 + 32;
          v21 = (v15 + 160);
          goto LABEL_32;
        }
      }

      else
      {
        if (!v5)
        {
          v22 = *(v3 + 16);
          if (!v22)
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 412;
            v34 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_42;
          }

          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 420;
            v33 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_37;
          }

          v24 = v23;
          v25 = *(v22 + 16);
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 428;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Uv, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
            goto LABEL_47;
          }

          v11 = v26 + 16;
          v12 = v24 + 72;
LABEL_25:
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureBindingDesc(v36, v37, v3, v11, v12);
          goto LABEL_48;
        }

        if (v5 == 1)
        {
          v6 = *(v3 + 16);
          if (!v6)
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 412;
            v34 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
LABEL_42:
            LOBYTE(v41) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "Invalid texture handle in texture binder.", v36, v37, v38, v39, v40, v34, v41);
            goto LABEL_48;
          }

          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 420;
            v33 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
LABEL_37:
            LOBYTE(v41) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "Bad texture object", v36, v37, v38, v39, v40, v33, v41);
            goto LABEL_48;
          }

          v8 = v7;
          v9 = *(v6 + 16);
          {
            *&v39 = "hdSt/textureBinder.cpp";
            *(&v39 + 1) = "_CastAndCompute";
            v40 = 428;
            v35 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CastAndCompute(const HdStShaderCode::NamedTextureHandle &, Args &&...) [textureType = pxrInternal__aapl__pxrReserved__::HdStTextureType::Field, Functor = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_BindingDescsFunctor, Args = <const pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder &, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *&>]";
LABEL_47:
            LOBYTE(v41) = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "Bad sampler object", v36, v37, v38, v39, v40, v35, v41);
            goto LABEL_48;
          }

          v11 = v10 + 16;
          v12 = v8 + 504;
          goto LABEL_25;
        }
      }

LABEL_48:
      v3 += 40;
    }

    while (v3 != v4);
  }
}

uint64_t sub_29AEA2AA8(void *a1, uint64_t *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v15[4] = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v15[0] = v9;
  v15[1] = v10;
  v15[3] = &v9[24 * v8];
  v11 = *a3;
  v12 = *a2;
  *v10 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = v11;
  v15[2] = v10 + 24;
  sub_29ABC711C(a1, v15);
  v13 = a1[1];
  sub_29ABC71C0(v15);
  return v13;
}

void sub_29AEA2BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEA2BD4(void *a1, uint64_t *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v15[4] = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[24 * v3];
  v15[0] = v9;
  v15[1] = v10;
  v15[3] = &v9[24 * v8];
  v11 = *a3;
  v12 = *a2;
  *v10 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v10 + 8) = v11;
  v15[2] = v10 + 24;
  sub_29ABC711C(a1, v15);
  v13 = a1[1];
  sub_29ABC71C0(v15);
  return v13;
}

void sub_29AEA2CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABC71C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AEA2D00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x38uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20996B0;
  v7 = *a2;
  *(result + 8) = 0;
  result[3] = &unk_2A2099700;
  v8 = *a1;
  result[5] = *a1;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[5] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[6] = v7;
  *a3 = result + 3;
  a3[1] = result;
  return result;
}

void sub_29AEA2DD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20996B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEA2E40(pxrInternal__aapl__pxrReserved__::HdBufferSource *a1)
{
  *a1 = &unk_2A2099700;
  v1 = *(a1 + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);
}

void sub_29AEA2E78(pxrInternal__aapl__pxrReserved__::HdBufferSource *a1)
{
  *a1 = &unk_2A2099700;
  v2 = *(a1 + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(a1);

  operator delete(v3);
}

uint64_t sub_29AEA2EDC(uint64_t *a1, void *a2)
{
  v3 = a1 + 2;
  v4 = (*(*a1 + 56))(a1);
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v6 = a2[1];
  if (v6 >= a2[2])
  {
    result = sub_29AE03FE4(a2, v3, &v9);
  }

  else
  {
    v7 = *v3;
    *v6 = *v3;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6[1] = v4;
    v6[2] = v5;
    result = (v6 + 3);
  }

  a2[1] = result;
  return result;
}

BOOL sub_29AEA2F88(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  v2 = v1 == 0;
  if (!v1)
  {
    sub_29AD1019C(a1);
  }

  return v2;
}

void *sub_29AEA2FEC@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  result = sub_29AEA3050(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEA3050(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, 1, 1);
  return a1;
}

void *sub_29AEA30B4@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, int *a3@<X3>, BOOL *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x58uLL);
  result = sub_29AEA3130(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29AEA3130(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int *a4, BOOL *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureHandle::HdStTextureHandle(uint64_t result, void *a2, __int128 *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a2[1];
  *result = *a2;
  *(result + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  v7 = *a3;
  v8 = a3[1];
  *(result + 64) = *(a3 + 8);
  *(result + 32) = v7;
  *(result + 48) = v8;
  v10 = *a5;
  v9 = a5[1];
  *(result + 72) = a4;
  *(result + 80) = v10;
  *(result + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 96) = a6;
  return result;
}

{
  v6 = a2[1];
  *result = *a2;
  *(result + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
  v7 = *a3;
  v8 = a3[1];
  *(result + 64) = *(a3 + 8);
  *(result + 32) = v7;
  *(result + 48) = v8;
  v10 = *a5;
  v9 = a5[1];
  *(result + 72) = a4;
  *(result + 80) = v10;
  *(result + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 96) = a6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStTextureHandle::~HdStTextureHandle(pxrInternal__aapl__pxrReserved__::HdStTextureHandle *this, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 12);
  if (!v5)
  {
    v12 = "hdSt/textureHandle.cpp";
    v13 = "~HdStTextureHandle";
    v14 = 39;
    v15 = "pxrInternal__aapl__pxrReserved__::HdStTextureHandle::~HdStTextureHandle()";
    v16 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "_textureHandleRegistry", 0))
    {
      goto LABEL_7;
    }

    v5 = *(this + 12);
  }

  v6 = *(this + 1);
  v12 = *this;
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::MarkDirty(v5, &v12, a3, a4);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::MarkDirty(*(this + 12), this + 10, v7, v8);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::MarkSamplerGarbageCollectionNeeded(*(this + 12));
LABEL_7:
  v9 = *(this + 11);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = *(this + 1);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStTextureHandle::ReallocateSamplerIfNecessary(pxrInternal__aapl__pxrReserved__::HdStTextureHandle *this)
{
  if (*(this + 2))
  {
    if (!pxrInternal__aapl__pxrReserved__::HdStTextureHandle::UseBindlessHandles(this))
    {
      return;
    }

    v2 = *(this + 12);
    if (!v2)
    {
      *&v6 = "hdSt/textureHandle.cpp";
      *(&v6 + 1) = "ReallocateSamplerIfNecessary";
      v7 = 64;
      v8 = "void pxrInternal__aapl__pxrReserved__::HdStTextureHandle::ReallocateSamplerIfNecessary()";
      v9 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v6, "_textureHandleRegistry", 0))
      {
LABEL_5:
        v3 = *(this + 3);
        *(this + 2) = 0;
        *(this + 3) = 0;
        if (v3)
        {
          sub_29A014BEC(v3);
        }

        goto LABEL_7;
      }

      v2 = *(this + 12);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::MarkSamplerGarbageCollectionNeeded(v2);
    goto LABEL_5;
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::AllocateSampler(*(*(this + 12) + 224), this, (this + 32), &v6);
  v4 = v6;
  v6 = 0uLL;
  v5 = *(this + 3);
  *(this + 1) = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
    if (*(&v6 + 1))
    {
      sub_29A014BEC(*(&v6 + 1));
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureHandle::UseBindlessHandles(pxrInternal__aapl__pxrReserved__::HdStTextureHandle *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    goto LABEL_2;
  }

  v6[0] = "hdSt/textureHandle.cpp";
  v6[1] = "UseBindlessHandles";
  v6[2] = 83;
  v6[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdStTextureHandle::UseBindlessHandles() const";
  v7 = 0;
  v5 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_textureHandleRegistry", 0);
  result = 0;
  if (v5)
  {
    v1 = *(this + 12);
LABEL_2:
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(*(v1 + 232) + 800));
    return *((*(*Hgi + 200))(Hgi) + 48) >> 7;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::HdSt_TextureHandleRegistry(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 24) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 8) = this + 72;
  *(this + 5) = sub_29AEA4CC0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 15) = 0;
  *(this + 14) = 0;
  *(this + 16) = this + 136;
  *(this + 13) = sub_29AEA4CD0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 23) = 0;
  *(this + 22) = 0;
  *(this + 24) = this + 200;
  *(this + 21) = sub_29AEA4CE0;
  v4 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::HdSt_SamplerObjectRegistry(v4, a2);
  *(this + 28) = v4;
  v5 = operator new(0x328uLL);
  pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::HdSt_TextureObjectRegistry(v5, a2);
  *(this + 29) = v5;
  v6 = operator new(0x70uLL);
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(v6 + 1) = 850045863;
  *(v6 + 12) = 0;
  *(v6 + 26) = 1065353216;
  *(this + 30) = v6;
  return this;
}

void sub_29AEA35EC(_Unwind_Exception *a1)
{
  sub_29AEA4BAC((v1 + 232), 0);
  sub_29AEA4B70((v1 + 224), 0);
  sub_29AEA4DF8((v1 + 160));
  sub_29AEA4D50((v1 + 96));
  sub_29AEA4CF0((v1 + 32));
  sub_29A082B84(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::~HdSt_TextureHandleRegistry(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *this)
{
  sub_29AEA4BE8(this + 30, 0);
  sub_29AEA4BAC(this + 29, 0);
  sub_29AEA4B70(this + 28, 0);
  sub_29AEA4DF8(this + 20);
  sub_29AEA4D50(this + 12);
  sub_29AEA4CF0(this + 4);
  sub_29A082B84(this, *(this + 1));
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::AllocateTextureHandle(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__ *a2@<X1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v23 = a5;
  pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::AllocateTextureObject(a2, *(a1 + 232), a3, &v21);
  v24 = a1;
  sub_29AEA4EA0(&v21, a4, &v23, a6, &v24, a7);
  v11 = *(a1 + 240);
  v12 = a7[1];
  v24 = *a7;
  v25[0] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AEA383C(v11, &v21, &v24);
  if (v25[0])
  {
    std::__shared_weak_count::__release_weak(v25[0]);
  }

  v15 = *a7;
  v14 = a7[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v24 = a1 + 32;
  v16 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 40), 16, v25, v13);
  *v16 = v15;
  v16[1] = v14;
  v19 = v21;
  v18 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = a1 + 96;
  v20 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 104), 16, v25, v17);
  *v20 = v19;
  v20[1] = v18;
  if (v22)
  {
    sub_29A014BEC(v22);
  }
}

void sub_29AEA37F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v18 = *(v15 + 8);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEA383C(atomic_ullong *a1, void *a2, void *a3)
{
  atomic_fetch_add(a1, 1uLL);
  sub_29AEA444C(a1, a2, &v6);
  sub_29AEA38D8(v6, a3, v4, v5);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29AEA3890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::MarkDirty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  return sub_29AEA38D8(a1 + 96, a2, a4, v5);
}

{
  return sub_29AEA38D8(a1 + 160, a2, a4, v5);
}

void *sub_29AEA38D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  result = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 16, &v10, a3);
  v11 = result;
  v7 = a2[1];
  *result = *a2;
  result[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    result = v11;
  }

  v8 = v10;
  *a4 = a1;
  a4[1] = v8;
  a4[2] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeMemoryRequest(uint64_t a1, void *a2)
{
  sub_29AEA3B3C(*(a1 + 240), a2, &v23);
  v4 = v23;
  if (!v23)
  {
    goto LABEL_33;
  }

  v5 = *(v23 + 24);
  __dmb(0xBu);
  v6 = tbb::internal::concurrent_vector_base_v3::internal_capacity((v4 + 8));
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    if (!v12)
    {
      v13 = sub_29A0EC0EC(v11);
      v14 = *(v4 + 32);
      __dmb(0xBu);
      v12 = (*(v14 + 8 * v13) - 32 * ((1 << v13) >> 1) + v8);
    }

    v15 = v12[1];
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        if (*v12)
        {
          if (v10 <= *(*v12 + 72))
          {
            v10 = *(*v12 + 72);
          }

          v9 = 1;
        }

        sub_29A014BEC(v16);
      }
    }

    v17 = v11 + 1;
    if (((v11 - 1) & (v11 + 1)) != 0)
    {
      v12 += 2;
    }

    else
    {
      v12 = 0;
    }

    v8 += 16;
    ++v11;
  }

  while (v7 != v17);
  if (!v10)
  {
LABEL_24:
    v18 = (*(**a2 + 8))();
    v21 = *(a1 + 8);
    v20 = a1 + 8;
    v19 = v21;
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v20;
    do
    {
      if (*(v19 + 32) >= v18)
      {
        v22 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 32) < v18));
    }

    while (v19);
    if (v22 != v20 && v18 >= *(v22 + 32))
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_33;
      }

      v10 = *(v22 + 40);
    }

    else
    {
LABEL_31:
      v10 = 0;
      if ((v9 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    pxrInternal__aapl__pxrReserved__::HdStTextureObject::SetTargetMemory(*a2, v10);
    goto LABEL_33;
  }

  if (v9)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (v24)
  {
    sub_29A014BEC(v24);
  }
}

void sub_29AEA3B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEA3B3C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 8));
  v6 = sub_29AC246C0((a1 + 72), a2);
  if (v6)
  {
    v7 = v6[5];
    *a3 = v6[4];
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  std::mutex::unlock((a1 + 8));
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeMemoryRequests(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeMemoryRequest(a1, v3 + 4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeAllMemoryRequests(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *this)
{
  for (i = *(*(this + 30) + 88); i; i = *i)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeMemoryRequest(this, i + 2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_GarbageCollectHandlesAndComputeTargetMemory(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *this)
{
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v2 = *(this + 15);
  __dmb(0xBu);
  v3 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 104));
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if (!v7)
      {
        v8 = sub_29A0EC0EC(v6);
        v9 = *(this + 16);
        __dmb(0xBu);
        v7 = (*(v9 + 8 * v8) - 32 * ((1 << v8) >> 1) + v5);
      }

      v18 = 0;
      v10 = v7[1];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = std::__shared_weak_count::lock(v10);
      v19 = v11;
      if (!v11)
      {
        break;
      }

      v18 = *v7;
      if (v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v11)
      {
        sub_29A014BEC(v11);
      }

LABEL_16:
      v12 = v6 + 1;
      if (((v6 - 1) & (v6 + 1)) != 0)
      {
        v7 += 2;
      }

      else
      {
        v7 = 0;
      }

      v5 += 16;
      ++v6;
      if (v4 == v12)
      {
        goto LABEL_20;
      }
    }

    if (!v18)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_29A42F734(&v16, &v18, &v18);
    v11 = v19;
    goto LABEL_14;
  }

LABEL_20:
  v13 = sub_29AEA3E44(*(this + 30), &v16);
  if (*(this + 24) == 1)
  {
    for (i = *(*(this + 30) + 88); i; i = *i)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeMemoryRequest(this, i + 2);
    }

    *(this + 24) = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_ComputeMemoryRequests(this, &v16);
  }

  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 104), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>>>::destroy_array);
  sub_29A42FCE0(&v16, v17[0]);
  return v13;
}

uint64_t sub_29AEA3E44(atomic_ullong *a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_29AC246C0(a1 + 9, v3 + 4);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = v6;
      if (sub_29AEA4900(a1, v6[4]))
      {
        break;
      }

LABEL_7:
      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
      if (v9 == v2)
      {
        return v5 & 1;
      }
    }

    sub_29AEA4B14(a1 + 9, v7);
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  v5 = 0;
  return v5 & 1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *this)
{
  if (pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_GarbageCollectHandlesAndComputeTargetMemory(this))
  {
    v2 = *(this + 29);

    pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::GarbageCollect(v2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_Commit(pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::Commit(*(this + 29), &v29);
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  sub_29AEA4258(this + 4, &v27);
  v4 = v29;
  if (v29 != v30)
  {
    do
    {
      sub_29AEA3B3C(*(this + 30), v4 + 4, &v25);
      if (v25)
      {
        sub_29AEA4258(v25, &v27);
      }

      if (v26)
      {
        sub_29A014BEC(v26);
      }

      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v30);
  }

  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  v8 = v27;
  if (v27 != v28)
  {
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::HdStTextureHandle::ReallocateSamplerIfNecessary(v8[4]);
      v9 = v8[4];
      v25 = 0;
      v10 = *(v9 + 88);
      if (v10)
      {
        break;
      }

LABEL_21:
      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v7 = *v13 == v8;
          v8 = v13;
        }

        while (!v7);
      }

      v8 = v13;
      if (v13 == v28)
      {
        goto LABEL_27;
      }
    }

    v11 = std::__shared_weak_count::lock(v10);
    v26 = v11;
    if (v11)
    {
      v25 = *(v9 + 80);
      if (!v25)
      {
LABEL_19:
        if (v11)
        {
          sub_29A014BEC(v11);
        }

        goto LABEL_21;
      }
    }

    else if (!v25)
    {
      goto LABEL_19;
    }

    sub_29A42F734(a2, &v25, &v25);
    v11 = v26;
    goto LABEL_19;
  }

LABEL_27:
  v14 = *(this + 23);
  __dmb(0xBu);
  v15 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 168));
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (!v19)
      {
        v20 = sub_29A0EC0EC(v18);
        v21 = *(this + 24);
        __dmb(0xBu);
        v19 = *(v21 + 8 * v20) - 32 * ((1 << v20) >> 1) + v17;
      }

      v25 = 0;
      v22 = *(v19 + 8);
      if (!v22)
      {
        goto LABEL_42;
      }

      v23 = std::__shared_weak_count::lock(v22);
      v26 = v23;
      if (!v23)
      {
        break;
      }

      v25 = *v19;
      if (v25)
      {
        goto LABEL_39;
      }

LABEL_40:
      if (v23)
      {
        sub_29A014BEC(v23);
      }

LABEL_42:
      v24 = v18 + 1;
      if (((v18 - 1) & (v18 + 1)) != 0)
      {
        v19 += 16;
      }

      else
      {
        v19 = 0;
      }

      v17 += 16;
      ++v18;
      if (v16 == v24)
      {
        goto LABEL_46;
      }
    }

    if (!v25)
    {
      goto LABEL_40;
    }

LABEL_39:
    sub_29A42F734(a2, &v25, &v25);
    v23 = v26;
    goto LABEL_40;
  }

LABEL_46:
  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 40), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>>>::destroy_array);
  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 168), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::destroy_array);
  sub_29A42FCE0(&v27, v28[0]);
  sub_29A42FCE0(&v29, v30[0]);
}

void sub_29AEA41E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15)
{
  sub_29A42FCE0(v15, *(v15 + 8));
  sub_29A42FCE0(&a11, a12);
  sub_29A42FCE0(&a14, a15);
  _Unwind_Resume(a1);
}

void sub_29AEA4258(void *a1, uint64_t **a2)
{
  v4 = a1[3];
  __dmb(0xBu);
  v5 = tbb::internal::concurrent_vector_base_v3::internal_capacity((a1 + 1));
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (!v9)
      {
        v10 = sub_29A0EC0EC(v8);
        v11 = a1[4];
        __dmb(0xBu);
        v9 = (*(v11 + 8 * v10) - 32 * ((1 << v10) >> 1) + v7);
      }

      v15 = 0;
      v12 = v9[1];
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = std::__shared_weak_count::lock(v12);
      v16 = v13;
      if (!v13)
      {
        break;
      }

      v15 = *v9;
      if (v15)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v13)
      {
        sub_29A014BEC(v13);
      }

LABEL_16:
      v14 = v8 + 1;
      if (((v8 - 1) & (v8 + 1)) != 0)
      {
        v9 += 2;
      }

      else
      {
        v9 = 0;
      }

      v7 += 16;
      ++v8;
      if (v6 == v14)
      {
        return;
      }
    }

    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_29A42F734(a2, &v15, &v15);
    v13 = v16;
    goto LABEL_14;
  }
}

void sub_29AEA4360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::Commit(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **this@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_GarbageCollectHandlesAndComputeTargetMemory(this))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::GarbageCollect(this[29]);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::_Commit(this, a2);
  pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::GarbageCollect(this[28]);
}

uint64_t **pxrInternal__aapl__pxrReserved__::HdSt_TextureHandleRegistry::SetMemoryRequestForTextureType(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = a2;
  v7 = &v6;
  result = sub_29A36BB6C(a1, &v6, &unk_29B4D6118, &v7);
  if (result[5] != a3)
  {
    result[5] = a3;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_29AEA444C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 8));
  v11 = a2;
  v6 = sub_29AEA4560(a1 + 72, a2, &unk_29B4D6118, &v11);
  v7 = v6[4];
  if (!v7)
  {
    v8 = operator new(0x58uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = &unk_2A20997E0;
    v8[8] = 0;
    v8[9] = 0;
    v8[10] = 0;
    v8[6] = 0;
    v8[5] = 0;
    v8[7] = v8 + 8;
    v8[4] = sub_29AEA4CC0;
    v7 = v8 + 3;
    v9 = v6[5];
    v6[4] = v8 + 3;
    v6[5] = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      v7 = v6[4];
    }
  }

  v10 = v6[5];
  *a3 = v7;
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 8));
}

void *sub_29AEA4560(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v15 = operator new(0x30uLL);
  i = v15;
  *v15 = 0;
  v15[1] = v9;
  v16 = (*a4)[1];
  v15[2] = **a4;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v15[4] = 0;
  v15[5] = 0;
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v10 || (v18 * v10) < v17)
  {
    v19 = 1;
    if (v10 >= 3)
    {
      v19 = (v10 & (v10 - 1)) != 0;
    }

    v20 = v19 | (2 * v10);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    *i = *v24;
LABEL_40:
    *v24 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v23 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v25 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v25 >= v10)
      {
        v25 %= v10;
      }
    }

    else
    {
      v25 &= v10 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return i;
}

void sub_29AEA47CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AEA47E4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AEA47E4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AEA4840(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29AEA4840(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

void sub_29AEA48B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20997E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

BOOL sub_29AEA4900(atomic_ullong *a1, void *a2)
{
  v4 = a2[3];
  __dmb(0xBu);
  v5 = tbb::internal::concurrent_vector_base_v3::internal_capacity((a2 + 1));
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v7 = sub_29A0EC0EC(i);
      v8 = a2[4];
      __dmb(0xBu);
      v9 = *(*(v8 + 8 * v7) + 16 * (i - ((1 << v7) & 0xFFFFFFFFFFFFFFELL)) + 8);
      if (!v9 || *(v9 + 8) == -1)
      {
        atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL);
        if (i == v4 - 1)
        {
LABEL_19:
          v4 = i;
          break;
        }

        v10 = 16 * v4-- - 8;
        while (1)
        {
          v11 = sub_29A0EC0EC(v4);
          v12 = a2[4];
          __dmb(0xBu);
          v13 = *(*(v12 + 8 * v11) - 32 * ((1 << v11) >> 1) + v10);
          if (v13)
          {
            if (*(v13 + 8) != -1)
            {
              break;
            }
          }

          --v4;
          v10 -= 16;
          if (i == v4)
          {
            goto LABEL_19;
          }
        }

        v14 = sub_29A0EC0EC(v4);
        v15 = a2[4];
        __dmb(0xBu);
        v16 = *(v15 + 8 * v14) - 32 * ((1 << v14) >> 1);
        v17 = sub_29A0EC0EC(i);
        v18 = a2[4];
        __dmb(0xBu);
        v19 = *(v18 + 8 * v17);
        v20 = *(v16 + 16 * v4);
        v21 = *(v16 + 16 * v4 + 8);
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
        }

        v22 = v19 + 16 * (i - ((1 << v17) & 0xFFFFFFFFFFFFFFELL));
        v23 = *(v22 + 8);
        *v22 = v20;
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }
      }
    }
  }

  tbb::internal::concurrent_vector_base_v3::internal_resize((a2 + 1), v4, 16, 0xFFFFFFFFFFFFFFFLL, 0, tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>>>::destroy_array, tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>>>::initialize_array);
  return v4 == 0;
}

void tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + 16 * a2 - 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_weak(*v3);
      }

      v3 -= 2;
      --v2;
    }

    while (v2);
  }
}

void tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, 16 * a3);
  }
}

uint64_t sub_29AEA4B14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AEA4840(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AEA4B70(void ***a1, void **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_SamplerObjectRegistry::~HdSt_SamplerObjectRegistry(v3);

    operator delete(v4);
  }
}

void sub_29AEA4BAC(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a1, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::~HdSt_TextureObjectRegistry(v3);

    operator delete(v4);
  }
}

void sub_29AEA4BE8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29AEA4C40(v2 + 72);
    std::mutex::~mutex((v2 + 8));

    operator delete(v2);
  }
}

uint64_t sub_29AEA4C40(uint64_t a1)
{
  sub_29AEA4C7C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AEA4C7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AEA4840((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t *sub_29AEA4CF0(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureHandle>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

unint64_t *sub_29AEA4D50(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + 16 * a2 - 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_weak(*v3);
      }

      v3 -= 2;
      --v2;
    }

    while (v2);
  }
}

unint64_t *sub_29AEA4DF8(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + 16 * a2 - 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_weak(*v3);
      }

      v3 -= 2;
      --v2;
    }

    while (v2);
  }
}

void *sub_29AEA4EA0@<X0>(void *a1@<X1>, __int128 *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x80uLL);
  result = sub_29AEA4F2C(v12, a1, a2, a3, a4, a5);
  *a6 = v12 + 3;
  a6[1] = v12;
  return result;
}

void *sub_29AEA4F2C(void *a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099830;
  pxrInternal__aapl__pxrReserved__::HdStTextureHandle::HdStTextureHandle((a1 + 3), a2, a3, *a4, a5, *a6);
  return a1;
}

void sub_29AEA4FB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  result[1] = 0;
  return result;
}

{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  result[1] = 0;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *a3;
  *a3 = 0;
  result[1] = v4;
  return result;
}

{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *a3;
  *a3 = 0;
  result[1] = v4;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *this, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2)
{
  v3 = *a2;
  *this = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *this &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    (**v4)(&v7);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(this + 1) = v5;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator=(void *a1, void *a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  v3 = a2[1];
  a2[1] = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  return a1;
}

{
  sub_29A166F2C(a1, a2);
  v4 = a2[1];
  if (v4)
  {
    (**v4)(&v8);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[1];
  a1[1] = v5;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::operator==(void *a1, const pxrInternal__aapl__pxrReserved__::HdStSubtextureIdentifier *a2)
{
  if ((*a2 ^ *a1) > 7)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::hash_value(v3, a2));
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::hash_value(v7, a2));
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v5 == v9 && v4 == v8;
}

unint64_t pxrInternal__aapl__pxrReserved__::hash_value(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    sub_29AEA5470(&v5, this, v2);
    v3 = v5;
  }

  else
  {
    v3 = *this & 0xFFFFFFFFFFFFFFF8;
  }

  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t sub_29AEA5470(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdStSubtextureIdentifier *a2, pxrInternal__aapl__pxrReserved__ *this)
{
  v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  result = pxrInternal__aapl__pxrReserved__::hash_value(this, a2);
  if (*(a1 + 8))
  {
    result += (*a1 + result + (*a1 + result) * (*a1 + result)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099880;
  a1[3] = a3;
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier((a1 + 4), a2);
  a1[6] = 0;
  return a1;
}

void sub_29AEA5544(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStTextureObject::SetTargetMemory(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this, uint64_t a2)
{
  if (*(this + 6) != a2)
  {
    *(this + 6) = a2;
    v2 = *(this + 3);
    sub_29A014C58(&v5, this + 1);
    v7 = v5;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::MarkTextureObjectDirty(v2, &v7, v3, v4);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29AEA55E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetResourceRegistry(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    v5[0] = "hdSt/textureObject.cpp";
    v5[1] = "_GetResourceRegistry";
    v5[2] = 56;
    v5[3] = "HdStResourceRegistry *pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetResourceRegistry() const";
    v6 = 0;
    v2 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_textureObjectRegistry", 0))
    {
      return v2;
    }

    v1 = *(this + 3);
  }

  v2 = *(v1 + 800);
  if (!v2)
  {
    sub_29B2CB24C(v5);
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this)
{
  ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetResourceRegistry(this);
  if (!ResourceRegistry && (sub_29B2CB294(v5) & 1) == 0)
  {
    return 0;
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(ResourceRegistry);
  if (!Hgi)
  {
    sub_29B2CB2DC(v4);
  }

  return Hgi;
}

atomic_ullong *pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AdjustTotalTextureMemory(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this, unint64_t a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::AdjustTotalTextureMemory(v4, a2);
  }

  v6[0] = "hdSt/textureObject.cpp";
  v6[1] = "_AdjustTotalTextureMemory";
  v6[2] = 85;
  v6[3] = "void pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AdjustTotalTextureMemory(const int64_t)";
  v7 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_textureObjectRegistry", 0);
  if (result)
  {
    v4 = *(this + 3);
    return pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::AdjustTotalTextureMemory(v4, a2);
  }

  return result;
}

atomic_ullong *pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AddToTotalTextureMemory(pxrInternal__aapl__pxrReserved__::HdStTextureObject *a1, atomic_ullong **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = (*(*result + 16))(result);

    return pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AdjustTotalTextureMemory(a1, v4);
  }

  return result;
}

atomic_ullong *pxrInternal__aapl__pxrReserved__::HdStTextureObject::_SubtractFromTotalTextureMemory(pxrInternal__aapl__pxrReserved__::HdStTextureObject *a1, atomic_ullong **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = -(*(*result + 16))(result);

    return pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AdjustTotalTextureMemory(a1, v4);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStTextureObject::~HdStTextureObject(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this)
{
  *this = &unk_2A2099880;
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier((this + 32));
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetDebugName(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2@<X1>, void *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  v6 = *(a2 + 1);
  if (v6)
  {
    if (v7)
    {
      v8 = v7;
      if (*(EmptyString + 23) >= 0)
      {
        v9 = *(EmptyString + 23);
      }

      else
      {
        v9 = EmptyString[1];
      }

      v10 = &v111;
      v11 = sub_29A022DE0(&v111, v9 + 3);
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v111.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v12 = EmptyString;
        }

        else
        {
          v12 = *EmptyString;
        }

        v11 = memmove(v10, v12, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 2108704;
      if ((v8[1] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v13 = ((v8[1] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
      }

      v22 = *(v13 + 23);
      if (v22 >= 0)
      {
        v23 = v13;
      }

      else
      {
        v23 = *v13;
      }

      if (v22 >= 0)
      {
        v24 = *(v13 + 23);
      }

      else
      {
        v24 = v13[1];
      }

      v25 = std::string::append(&v111, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      a3[2] = *(&v25->__r_.__value_.__l + 2);
      *a3 = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
LABEL_41:
      if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v27 = v111.__r_.__value_.__r.__words[0];
      goto LABEL_149;
    }

    if (v15)
    {
      v16 = v15;
      if (*(EmptyString + 23) >= 0)
      {
        v17 = *(EmptyString + 23);
      }

      else
      {
        v17 = EmptyString[1];
      }

      v18 = &v107;
      v19 = sub_29A022DE0(&v107, v17 + 3);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v107.__r_.__value_.__r.__words[0];
      }

      if (v17)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v20 = EmptyString;
        }

        else
        {
          v20 = *EmptyString;
        }

        v19 = memmove(v18, v20, v17);
      }

      *(&v18->__r_.__value_.__l.__data_ + v17) = 2108704;
      if ((*(v16 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v21 = ((*(v16 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
      }

      v50 = *(v21 + 23);
      if (v50 >= 0)
      {
        v51 = v21;
      }

      else
      {
        v51 = *v21;
      }

      if (v50 >= 0)
      {
        v52 = *(v21 + 23);
      }

      else
      {
        v52 = v21[1];
      }

      v53 = std::string::append(&v107, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      v108.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&v108.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      v55 = std::string::append(&v108, " ");
      v56 = *&v55->__r_.__value_.__l.__data_;
      v109.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
      *&v109.__r_.__value_.__l.__data_ = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v106, *(v16 + 4));
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v106;
      }

      else
      {
        v57 = v106.__r_.__value_.__r.__words[0];
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v106.__r_.__value_.__l.__size_;
      }

      v59 = std::string::append(&v109, v57, size);
      v60 = *&v59->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      v61 = std::string::append(&v110, " ");
      v62 = *&v61->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      if ((*(v16 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v63 = ((*(v16 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v63 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v61);
      }

      v64 = *(v63 + 23);
      if (v64 >= 0)
      {
        v65 = v63;
      }

      else
      {
        v65 = *v63;
      }

      if (v64 >= 0)
      {
        v66 = *(v63 + 23);
      }

      else
      {
        v66 = v63[1];
      }

      v67 = std::string::append(&v111, v65, v66);
      v68 = *&v67->__r_.__value_.__l.__data_;
      a3[2] = *(&v67->__r_.__value_.__l + 2);
      *a3 = v68;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

      v69 = v108.__r_.__value_.__r.__words[0];
LABEL_146:
      operator delete(v69);
LABEL_147:
      if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v27 = v107.__r_.__value_.__r.__words[0];
      goto LABEL_149;
    }

    if (v30)
    {
      v31 = v30;
      if (*(EmptyString + 23) >= 0)
      {
        v32 = *(EmptyString + 23);
      }

      else
      {
        v32 = EmptyString[1];
      }

      v33 = &v107;
      sub_29A022DE0(&v107, v32 + 18);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v107.__r_.__value_.__r.__words[0];
      }

      if (v32)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v34 = EmptyString;
        }

        else
        {
          v34 = *EmptyString;
        }

        memmove(v33, v34, v32);
      }

      strcpy(v33 + v32, " - flipVertically=");
      std::to_string(&v106, *(v31 + 8));
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v106;
      }

      else
      {
        v35 = v106.__r_.__value_.__r.__words[0];
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v106.__r_.__value_.__l.__size_;
      }

      v37 = std::string::append(&v107, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v108.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v108.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v108, " - premultiplyAlpha=");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v109.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v109.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v105, *(v31 + 9));
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v105;
      }

      else
      {
        v41 = v105.__r_.__value_.__r.__words[0];
      }

      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v105.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v109, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v110, " - sourceColorSpace=");
      v46 = *&v45->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = v31[2];
      if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v47 &= 0xFFFFFFFFFFFFFFF8;
      }

      v48 = (v47 & 0xFFFFFFFFFFFFFFF8);
      if ((v47 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v49 = (v48 + 4);
      }

      else
      {
        v49 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
      }

      v79 = *(v49 + 23);
      if (v79 >= 0)
      {
        v80 = v49;
      }

      else
      {
        v80 = *v49;
      }

      if (v79 >= 0)
      {
        v81 = *(v49 + 23);
      }

      else
      {
        v81 = v49[1];
      }

      v82 = std::string::append(&v111, v80, v81);
      v83 = *&v82->__r_.__value_.__l.__data_;
      a3[2] = *(&v82->__r_.__value_.__l + 2);
      *a3 = v83;
      v82->__r_.__value_.__l.__size_ = 0;
      v82->__r_.__value_.__r.__words[2] = 0;
      v82->__r_.__value_.__r.__words[0] = 0;
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

      v69 = v106.__r_.__value_.__r.__words[0];
      goto LABEL_146;
    }

    if (v70)
    {
      v71 = v70;
      if (*(EmptyString + 23) >= 0)
      {
        v72 = *(EmptyString + 23);
      }

      else
      {
        v72 = EmptyString[1];
      }

      v73 = &v111;
      sub_29A022DE0(&v111, v72 + 20);
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v111.__r_.__value_.__r.__words[0];
      }

      if (v72)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v74 = EmptyString;
        }

        else
        {
          v74 = *EmptyString;
        }

        memmove(v73, v74, v72);
      }

      strcpy(v73 + v72, " - premultiplyAlpha=");
      std::to_string(&v110, v71[8]);
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &v110;
      }

      else
      {
        v75 = v110.__r_.__value_.__r.__words[0];
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v110.__r_.__value_.__l.__size_;
      }

      v77 = std::string::append(&v111, v75, v76);
      v78 = *&v77->__r_.__value_.__l.__data_;
      a3[2] = *(&v77->__r_.__value_.__l + 2);
      *a3 = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      goto LABEL_41;
    }

    if (v84)
    {
      v85 = v84;
      if (*(EmptyString + 23) >= 0)
      {
        v86 = *(EmptyString + 23);
      }

      else
      {
        v86 = EmptyString[1];
      }

      v87 = &v109;
      sub_29A022DE0(&v109, v86 + 20);
      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v87 = v109.__r_.__value_.__r.__words[0];
      }

      if (v86)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v88 = EmptyString;
        }

        else
        {
          v88 = *EmptyString;
        }

        memmove(v87, v88, v86);
      }

      strcpy(v87 + v86, " - premultiplyAlpha=");
      std::to_string(&v108, *(v85 + 8));
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v108;
      }

      else
      {
        v89 = v108.__r_.__value_.__r.__words[0];
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v108.__r_.__value_.__l.__size_;
      }

      v91 = std::string::append(&v109, v89, v90);
      v92 = *&v91->__r_.__value_.__l.__data_;
      v110.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
      *&v110.__r_.__value_.__l.__data_ = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      v93 = std::string::append(&v110, " - sourceColorSpace=");
      v94 = *&v93->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      v95 = v85[2];
      if ((v95 & 7) != 0 && (atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v95 &= 0xFFFFFFFFFFFFFFF8;
      }

      v96 = (v95 & 0xFFFFFFFFFFFFFFF8);
      if ((v95 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v97 = (v96 + 4);
      }

      else
      {
        v97 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v93);
      }

      v100 = *(v97 + 23);
      if (v100 >= 0)
      {
        v101 = v97;
      }

      else
      {
        v101 = *v97;
      }

      if (v100 >= 0)
      {
        v102 = *(v97 + 23);
      }

      else
      {
        v102 = v97[1];
      }

      v103 = std::string::append(&v111, v101, v102);
      v104 = *&v103->__r_.__value_.__l.__data_;
      a3[2] = *(&v103->__r_.__value_.__l + 2);
      *a3 = v104;
      v103->__r_.__value_.__l.__size_ = 0;
      v103->__r_.__value_.__r.__words[2] = 0;
      v103->__r_.__value_.__r.__words[0] = 0;
      if ((v95 & 7) != 0)
      {
        atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = v109.__r_.__value_.__r.__words[0];
LABEL_149:
        operator delete(v27);
      }
    }

    else
    {
      if (*(EmptyString + 23) >= 0)
      {
        v98 = *(EmptyString + 23);
      }

      else
      {
        v98 = EmptyString[1];
      }

      sub_29A022DE0(a3, v98 + 32);
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      if (v98)
      {
        if (*(EmptyString + 23) >= 0)
        {
          v99 = EmptyString;
        }

        else
        {
          v99 = *EmptyString;
        }

        memmove(a3, v99, v98);
      }

      strcpy(a3 + v98, " - unknown subtexture identifier");
    }
  }

  else if (*(EmptyString + 23) < 0)
  {
    v28 = *EmptyString;
    v29 = EmptyString[1];

    sub_29A008D14(a3, v28, v29);
  }

  else
  {
    v14 = *EmptyString;
    a3[2] = EmptyString[2];
    *a3 = v14;
  }
}

void sub_29AEA6248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetPremultiplyAlpha(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this, const pxrInternal__aapl__pxrReserved__::HdStSubtextureIdentifier *a2)
{
  v3 = (*(*this + 8))(this);
  if (v3 == 3)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3 == 2)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v7)
    {
      v5 = v7[8];
      return v5 & 1;
    }

LABEL_13:
    v5 = 0;
    return v5 & 1;
  }

  if (v3)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4[9];
  return v5 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetSourceColorSpace(pxrInternal__aapl__pxrReserved__::HdStTextureObject *this, const pxrInternal__aapl__pxrReserved__::HdStSubtextureIdentifier *a2)
{
  v3 = (*(*this + 8))(this);
  if (v3)
  {
    if (v3 != 3 || !a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2)
    {
LABEL_12:
      v6 = 0;
      goto LABEL_13;
    }
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5[2];
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v6 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_13:
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  if (!v7)
  {
    v7 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
  }

  if ((*(v7 + 9) ^ v6) >= 8)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v9)
    {
      v9 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    result = 2 * ((*(v9 + 10) ^ v6) > 7);
  }

  else
  {
    result = 1;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::HdStUvTextureObject(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, uint64_t a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(a1, a2, a3);
  *v3 = &unk_2A20998C0;
  *&result = 0x400000004;
  v3[7] = 0x400000004;
  v3[9] = 0;
  v3[10] = 0;
  v3[8] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::~HdStUvTextureObject(atomic_ullong **this)
{
  *this = &unk_2A20998C0;
  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_DestroyTexture(this);
  v2 = this[8];
  this[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureObject::~HdStTextureObject(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_DestroyTexture(atomic_ullong **this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (result)
  {
    v3 = result;
    pxrInternal__aapl__pxrReserved__::HdStTextureObject::_SubtractFromTotalTextureMemory(this, this + 9);
    v4 = *(*v3 + 56);

    return v4(v3, this + 9);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_SetWrapParameters(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 56) = *a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_SetCpuData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 64);
  *(a1 + 64) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_CreateTexture(uint64_t a1, uint64_t a2)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(a1);
  if (Hgi || (result = sub_29B2CB324(v7), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_DestroyTexture(a1);
    *(a1 + 72) = (*(*Hgi + 48))(Hgi, a2);
    *(a1 + 80) = v5;
    return pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AddToTotalTextureMemory(a1, (a1 + 72));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_GenerateMipmaps(pxrInternal__aapl__pxrReserved__::HdStUvTextureObject *this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetResourceRegistry(this);
  v3 = result;
  if (result || (result = sub_29B2CB36C(v7), (result & 1) != 0))
  {
    v5 = *(this + 9);
    v4 = this + 72;
    if (v5)
    {
      GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(v3);
      return (*(*GlobalBlitCmds + 96))(GlobalBlitCmds, v4);
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureObject::HdStAssetUvTextureObject(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, uint64_t a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(a1, a2, a3);
  *&result = 0x400000004;
  v3[7] = 0x400000004;
  v3[9] = 0;
  v3[10] = 0;
  v3[8] = 0;
  *v3 = &unk_2A2099900;
  *(v3 + 88) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(a1, a2, a3);
  *&result = 0x400000004;
  v3[7] = 0x400000004;
  v3[9] = 0;
  v3[10] = 0;
  v3[8] = 0;
  *v3 = &unk_2A2099900;
  *(v3 + 88) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureObject::~HdStAssetUvTextureObject(atomic_ullong **this)
{
  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::~HdStUvTextureObject(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureObject::_Load(pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureObject *this)
{
  v2 = *(this + 6);
  PremultiplyAlpha = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetPremultiplyAlpha(this, *(this + 5));
  v4 = *(this + 5);
  v6 = 1;
  if (v4)
  {
    if (v5)
    {
      if (v5[8])
      {
        v6 = 0;
      }
    }
  }

  SourceColorSpace = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetSourceColorSpace(this, v4);
  v8 = operator new(0x78uLL);
  v9 = v8;
  if ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureCpuData::HdStAssetUvTextureCpuData(v9, EmptyString, v2, PremultiplyAlpha, v6, SourceColorSpace);
  *(this + 7) = *(v9 + 108);
  result = *(this + 8);
  *(this + 8) = v9;
  if (result)
  {
    v12 = *(*result + 8);

    return v12();
  }

  return result;
}

atomic_ullong *pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureObject::_Commit(atomic_ullong **this)
{
  pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_DestroyTexture(this);
  *(this + 88) = 0;
  v2 = this[8];
  if (v2)
  {
    if ((*(*v2 + 32))(this[8]))
    {
      v3 = (*(*v2 + 16))(v2);
      pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_CreateTexture(this, v3);
      *(this + 88) = 1;
      if ((*(*v2 + 24))(v2))
      {
        pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_GenerateMipmaps(this);
      }
    }
  }

  if ((this[11] & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v9 = 0;
    v8 = 0;
    *&v9[4] = xmmword_29B70A5A0;
    *v10 = xmmword_29B70A5B0;
    *&v10[16] = 0x1000100000000;
    v11 = 1;
    v12 = 0;
    v13 = 0;
    MEMORY[0x29C2C1A60](__p, "AssetUvTextureFallback");
    *&v4 = 0x100000001;
    *(&v4 + 1) = 0x100000001;
    *&v10[4] = v4;
    *v9 = 0x200000008;
    *&v10[20] = 65537;
    v6 = -16777216;
    v12 = 4;
    v13 = &v6;
    pxrInternal__aapl__pxrReserved__::HdStUvTextureObject::_CreateTexture(this, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = this[8];
  this[8] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AEA6D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject *pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::HdStFieldTextureObject(pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject *this, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(this, a2, a3);
  *v4 = &unk_2A2099940;
  v4[7] = 0;
  sub_29A12D048((v4 + 8));
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 520) = 0;
  return this;
}

void sub_29AEA6DFC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v3)
  {
    sub_29B2CB3B4(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureObject::~HdStTextureObject(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::~HdStFieldTextureObject(atomic_ullong **this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (Hgi)
  {
    pxrInternal__aapl__pxrReserved__::HdStTextureObject::_SubtractFromTotalTextureMemory(this, this + 63);
    (*(*Hgi + 56))(Hgi, this + 504);
  }

  *(this + 520) = 0;
  v3 = this[7];
  this[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureObject::~HdStTextureObject(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::~HdStFieldTextureObject(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::_Load(pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject *this)
{
  v2 = (this + 32);
  if ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  v4 = *(this + 5);
  if (!v4)
  {
    goto LABEL_15;
  }

  if (!v5)
  {
    if (v12)
    {
      v13 = v12;
      if ((*(v12 + 1) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      if ((*(v13 + 3) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      pxrInternal__aapl__pxrReserved__::HioFieldTextureData::New(EmptyString, &v56);
      goto LABEL_26;
    }

LABEL_15:
    __p[0] = "hdSt/textureObject.cpp";
    __p[1] = "_ComputeFieldTexData";
    __p[2] = 488;
    __p[3] = "HioFieldTextureDataSharedPtr pxrInternal__aapl__pxrReserved__::_ComputeFieldTexData(const HdStTextureIdentifier &, const size_t)";
    LOBYTE(__p[4]) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Unsupported field subtexture identifier");
    v56 = 0;
    v57 = 0;
    goto LABEL_37;
  }

  v7 = v5;
  v8 = *(v5 + 4);
  if (v8)
  {
    __p[0] = "hdSt/textureObject.cpp";
    __p[1] = "_ComputeFieldTexData";
    __p[2] = 468;
    __p[3] = "HioFieldTextureDataSharedPtr pxrInternal__aapl__pxrReserved__::_ComputeFieldTexData(const HdStTextureIdentifier &, const size_t)";
    LOBYTE(__p[4]) = 0;
    v9 = EmptyString;
    if (EmptyString[23] < 0)
    {
      v9 = *EmptyString;
    }

    v10 = v5[1] & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Support of field index when reading OpenVDB file not yet implemented (file: %s, field name: %s, field index: %d", v6, v9, v11, v8);
  }

  if ((v7[1] & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  memset(__p, 0, 24);
  pxrInternal__aapl__pxrReserved__::HioFieldTextureData::New(EmptyString, &v56);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_26:
  if (v56)
  {
    v14 = (*(*v56 + 56))(v56);
    pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetDebugName(v14, v2, __p);
    v15 = operator new(0x80uLL);
    pxrInternal__aapl__pxrReserved__::HdSt_FieldTextureCpuData::HdSt_FieldTextureCpuData(v15, &v56, __p, 1);
    v16 = *(this + 7);
    *(this + 7) = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if ((*(**(this + 7) + 32))(*(this + 7)))
    {
      if (*((*(**(this + 7) + 16))(*(this + 7)) + 48) != 2)
      {
        __p[0] = "hdSt/textureObject.cpp";
        __p[1] = "_Load";
        __p[2] = 532;
        __p[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::_Load()";
        LOBYTE(__p[4]) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Wrong texture type for field");
      }

      v17 = (*(*v56 + 16))(v56);
      memcpy(this + 64, v17, 0x132uLL);
      v18 = 1.0 / (*(this + 13) - *(this + 10));
      __asm { FMOV            V2.2D, #1.0 }

      v62 = vdivq_f64(_Q2, vsubq_f64(*(this + 88), *(this + 4)));
      v63 = v18;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(__p, 1.0);
      v24 = -*(this + 10);
      v60 = vnegq_f64(*(this + 4));
      v61 = v24;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslateOnly(__p, &v60);
      v26 = v25;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v59, 1.0);
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(v59, &v62);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[3];
      v58[2] = v26[2];
      v58[3] = v29;
      v58[0] = v27;
      v58[1] = v28;
      v30 = v26[4];
      v31 = v26[5];
      v32 = v26[7];
      v58[6] = v26[6];
      v58[7] = v32;
      v58[4] = v30;
      v58[5] = v31;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v58, v33);
      v34 = *(this + 20);
      v52 = *(this + 19);
      v53 = v34;
      v35 = *(this + 22);
      v54 = *(this + 21);
      v55 = v35;
      v36 = *(this + 16);
      v48 = *(this + 15);
      v49 = v36;
      v37 = *(this + 18);
      v50 = *(this + 17);
      v51 = v37;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v48, v58);
      v38 = this + 376;
      v39 = v53;
      *(this + 440) = v52;
      *(this + 456) = v39;
      v40 = v55;
      *(this + 472) = v54;
      *(this + 488) = v40;
      v41 = v49;
      *(this + 376) = v48;
      *(this + 392) = v41;
      v42 = v50;
      v43 = v51;
    }

    else
    {
      sub_29A12D048(__p);
      memcpy(this + 64, __p, 0x132uLL);
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(__p, 1.0);
      v38 = this + 376;
      v44 = *&__p[10];
      *(this + 440) = *&__p[8];
      *(this + 456) = v44;
      v45 = *&__p[14];
      *(this + 472) = *&__p[12];
      *(this + 488) = v45;
      v46 = *&__p[2];
      *(this + 376) = *__p;
      *(this + 392) = v46;
      v42 = *&__p[4];
      v43 = *&__p[6];
    }

    *(v38 + 2) = v42;
    *(v38 + 3) = v43;
  }

LABEL_37:
  if (v57)
  {
    sub_29A014BEC(v57);
  }
}

void sub_29AEA7414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68)
  {
    sub_29A014BEC(a68);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::_Commit(atomic_ullong **this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (result)
  {
    v3 = result;
    pxrInternal__aapl__pxrReserved__::HdStTextureObject::_SubtractFromTotalTextureMemory(this, this + 63);
    (*(*v3 + 56))(v3, this + 504);
    *(this + 520) = 0;
    v4 = this[7];
    if (v4 && (*(*v4 + 32))(v4))
    {
      v5 = (*(*this[7] + 16))(this[7]);
      this[63] = (*(*v3 + 48))(v3, v5);
      this[64] = v6;
      *(this + 520) = 1;
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      *v11 = 0;
      v10 = 0;
      *&v11[4] = xmmword_29B70A5A0;
      *v12 = xmmword_29B70A5B0;
      *&v12[16] = 0x1000100000000;
      v13 = 1;
      v14 = 0;
      v15 = 0;
      MEMORY[0x29C2C1A60](__p, "FieldTextureFallback");
      *v11 = 0x200000008;
      *&v12[4] = xmmword_29B711DB0;
      *&v12[20] = 65537;
      v8 = -16777216;
      v14 = 4;
      v15 = &v8;
      this[63] = (*(*v3 + 48))(v3, __p);
      this[64] = v7;
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdStTextureObject::_AddToTotalTextureMemory(this, this + 63);
    result = this[7];
    this[7] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29AEA7680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::HdSt_TextureObjectRegistry(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *this, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a2)
{
  *this = 0;
  sub_29AEA855C(this + 8, 8uLL, &v5);
  *(this + 71) = 850045863;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 82) = 0;
  *(this + 166) = 1065353216;
  *(this + 89) = 0;
  *(this + 90) = 0;
  *(this + 91) = 0;
  *(this + 87) = 0;
  *(this + 86) = 0;
  *(this + 88) = this + 712;
  *(this + 85) = sub_29AEA87DC;
  *(this + 97) = 0;
  *(this + 98) = 0;
  *(this + 99) = 0;
  *(this + 95) = 0;
  *(this + 94) = 0;
  *(this + 96) = this + 776;
  *(this + 93) = sub_29AEA4CD0;
  *(this + 100) = a2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::~HdSt_TextureObjectRegistry(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *this)
{
  sub_29AEA4D50(this + 92);
  sub_29AEA889C(this + 84);
  sub_29AEA87EC(this + 632);
  std::mutex::~mutex((this + 568));
  sub_29AEA86F0(this + 8, v2);
}

double pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::_MakeTextureObject@<D0>(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v13 = a1;
      sub_29AEA8D0C(a2, &v13, &v9);
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v13 = a1;
      sub_29AEA8E58(a2, &v13, &v9);
      goto LABEL_14;
    }

LABEL_8:
    *&v9 = "hdSt/textureObjectRegistry.cpp";
    *(&v9 + 1) = "_MakeTextureObject";
    v10 = 65;
    v11 = "HdStTextureObjectSharedPtr pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::_MakeTextureObject(const HdStTextureIdentifier &, const HdStTextureType)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Texture type not supported by texture object registry.");
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  if (!a3)
  {
    v8 = *(a2 + 1);
    {
      v13 = a1;
      sub_29AEA8928(a2, &v13, &v9);
    }

    else
    {
      v13 = a1;
      sub_29AEA8A74(a2, &v13, &v9);
    }

    goto LABEL_14;
  }

  if (a3 != 1)
  {
    goto LABEL_8;
  }

  v13 = a1;
  sub_29AEA8BC0(a2, &v13, &v9);
LABEL_14:
  result = *&v9;
  *a4 = v9;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::AllocateTextureObject(pxrInternal__aapl__pxrReserved__ *this@<X1>, uint64_t *a2@<X0>, int a3@<W2>, void *a4@<X8>)
{
  v21 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::hash_value(this, this));
  sub_29AEA7B00((a2 + 1), &v21, v16);
  if (v20 == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::_MakeTextureObject(a2, this, a3, &v14);
    sub_29AEA7C54(v16, &v14);
    v10 = v14;
    v9 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = a2 + 92;
    v11 = tbb::internal::concurrent_vector_base_v3::internal_push_back(a2 + 93, 16, &v22, v8);
    *v11 = v10;
    v11[1] = v9;
    v21 = this;
    v12 = sub_29AEA904C((a2 + 79), this, &unk_29B4D6118, &v21);
    v21 = v14;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AEA7D24(v12 + 3, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  v13 = v17;
  *a4 = v16[1];
  a4[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v19 == 1)
  {
    std::mutex::unlock(v18);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }
}

void sub_29AEA7AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29ADCA62C(&a12);
  _Unwind_Resume(a1);
}

void sub_29AEA7B00(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v15, "hdSt", "HdInstance<VALUE> pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>>::GetInstance(const typename HdInstance<VALUE>::KeyType &) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>]");
  std::mutex::lock((a1 + 560));
  sub_29ADCC11C(a1, a2, &v14);
  v6 = v14;
  if (v14 == __PAIR128__(a1 + 16, 0))
  {
    v7 = *a2;
    v10[1] = 0;
    v11 = 0;
    v10[0] = v7;
    v12 = 0;
    sub_29ADCC48C(a1, v10, 0, &v13);
    v14 = v13;
    if (v11)
    {
      sub_29A014BEC(v11);
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  *(v6 + 32) = 0;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *a3 = *a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = a1 + 560;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = v9 == 0;
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AEA7C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  std::mutex::unlock(v11);
  sub_29A0E9CEC(v12 - 48);
  _Unwind_Resume(a1);
}

void sub_29AEA7C54(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AEA8FA4(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AEA7D0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AEA7D24(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v18[4] = result;
    if (v10)
    {
      v11 = sub_29A017BD4(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[16 * v10];
    v12 = &v11[16 * v7];
    *v12 = *a2;
    v6 = v12 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v14 = v3[1] - *v3;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v6;
    v17 = v3[2];
    v3[2] = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_29A03D2B0(v18);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

double sub_29AEA7E40@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  *&v10 = a1;
  v6 = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 8, &v10 + 1, a3);
  v11 = v6;
  v7 = *a2;
  *v6 = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v11;
  result = *&v10;
  *a4 = v10;
  *(a4 + 16) = v8;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::Commit@<X0>(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *this@<X0>, uint64_t a2@<X8>)
{
  v61 = *MEMORY[0x29EDCA608];
  *(a2 + 8) = 0;
  v4 = (a2 + 8);
  *(a2 + 16) = 0;
  *a2 = a2 + 8;
  v5 = *(this + 87);
  __dmb(0xBu);
  v6 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 680));
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (!v9)
      {
        v10 = sub_29A0EC0EC(v8);
        v11 = *(this + 88);
        __dmb(0xBu);
        v9 = (*(v11 + 8 * v10) + 8 * (v8 - ((1 << v10) & 0x1FFFFFFFFFFFFFFELL)));
      }

      v12 = sub_29A160470(this + 79, v9);
      if (v12)
      {
        break;
      }

LABEL_20:
      v17 = v8 + 1;
      if (((v8 - 1) & (v8 + 1)) != 0)
      {
        ++v9;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      if (v17 == v7)
      {
        goto LABEL_24;
      }
    }

    v13 = v12[3];
    v14 = v12[4];
    while (1)
    {
      if (v13 == v14)
      {
        goto LABEL_20;
      }

      v54 = 0;
      v15 = *(v13 + 8);
      if (v15)
      {
        break;
      }

LABEL_19:
      v13 += 16;
    }

    v16 = std::__shared_weak_count::lock(v15);
    v55 = v16;
    if (v16)
    {
      v54 = *v13;
      if (!v54)
      {
LABEL_17:
        if (v16)
        {
          sub_29A014BEC(v16);
        }

        goto LABEL_19;
      }
    }

    else if (!v54)
    {
      goto LABEL_17;
    }

    sub_29A42F734(a2, &v54, &v54);
    v16 = v55;
    goto LABEL_17;
  }

LABEL_24:
  v18 = *(this + 95);
  __dmb(0xBu);
  v19 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 744));
  if (v19 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v19;
  }

  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      if (!v25)
      {
        v26 = sub_29A0EC0EC(v24);
        v27 = *(this + 96);
        __dmb(0xBu);
        v25 = *(v27 + 8 * v26) - 32 * ((1 << v26) >> 1) + v23;
      }

      v54 = 0;
      v28 = *(v25 + 8);
      if (!v28)
      {
        goto LABEL_39;
      }

      v29 = std::__shared_weak_count::lock(v28);
      v55 = v29;
      if (!v29)
      {
        break;
      }

      v54 = *v25;
      if (v54)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v29)
      {
        sub_29A014BEC(v29);
      }

LABEL_39:
      v30 = v24 + 1;
      if (((v24 - 1) & (v24 + 1)) != 0)
      {
        v25 += 16;
      }

      else
      {
        v25 = 0;
      }

      v23 += 16;
      ++v24;
      if (v22 == v30)
      {
        goto LABEL_43;
      }
    }

    if (!v54)
    {
      goto LABEL_37;
    }

LABEL_36:
    sub_29A42F734(a2, &v54, &v54);
    v29 = v55;
    goto LABEL_37;
  }

LABEL_43:
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Loading %zu textures", v20, v21, *(a2 + 16));
  v54 = "hdSt/textureObjectRegistry.cpp";
  v55 = "Commit";
  v56 = 166;
  v57 = "std::set<HdStTextureObjectSharedPtr> pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::Commit()";
  v58 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v48, __p, &v54);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = *a2;
  LODWORD(v54) = 0;
  v59 = 65539;
  v60 = 55;
  tbb::task_group_context::init(&v54, v31, v32, v33);
  v50 = &v47;
  if (v34 != v4)
  {
    __p[0] = &unk_2A2099B90;
    v53 = &v54;
    v35 = tbb::internal::allocate_root_with_context_proxy::allocate(&v53, 8uLL);
    *(v35 - 11) = 1;
    *v35 = &unk_2A203ACB0;
    __p[1] = &v50;
    v52 = v35;
    v36 = tbb::internal::allocate_child_proxy::allocate(v35, 0x20uLL);
    *(v36 - 11) = 1;
    *v36 = &unk_2A2099C48;
    v36[1] = v34;
    v36[2] = v4;
    v36[3] = __p;
    v37 = v52;
    *(v52 - 3) = 2;
    (*(**(v37 - 5) + 8))(*(v37 - 5), v37, v36);
    sub_29AEA9298(__p, v38);
  }

  tbb::task_group_context::~task_group_context(&v54);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v48);
  v41 = *a2;
  if (*a2 != v4)
  {
    v42 = 1;
    do
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Comitting texture %zu / %zu", v39, v40, v42, *(a2 + 16));
      v48[0] = "hdSt/textureObjectRegistry.cpp";
      v48[1] = "Commit";
      v48[2] = 192;
      v48[3] = "std::set<HdStTextureObjectSharedPtr> pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::Commit()";
      v49 = 0;
      pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(&v54, __p, v48);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v41[4] + 40))(v41[4]);
      pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&v54);
      v43 = v41[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v41[2];
          v45 = *v44 == v41;
          v41 = v44;
        }

        while (!v45);
      }

      ++v42;
      v41 = v44;
    }

    while (v44 != v4);
  }

  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 680), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfToken,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::destroy_array);
  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 744), tbb::concurrent_vector<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>,tbb::cache_aligned_allocator<std::weak_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>>>::destroy_array);
  return pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitBlitWork(*(this + 100), 0);
}

void sub_29AEA839C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  tbb::task_group_context::~task_group_context(&a32);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a12);
  sub_29A42FCE0(v32, *(v32 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *this)
{
  sub_29AEA97FC(this + 8, &v13, 0);
  v2 = *(this + 81);
  if (!v2)
  {
    return;
  }

  do
  {
    while (2)
    {
      v3 = v2 + 3;
      v4 = v2[4] - v2[3];
      v5 = v4 >> 4;
      if (!v4)
      {
        goto LABEL_17;
      }

      v6 = 0;
      while (1)
      {
        v7 = (*v3 + 16 * v6);
        v8 = v7[1];
        if (!v8 || *(v8 + 8) == -1)
        {
          break;
        }

LABEL_14:
        if (++v6 >= v5)
        {
          goto LABEL_17;
        }
      }

      if (v6 != v5 - 1)
      {
        v9 = (*v3 + 16 * v5-- - 8);
        while (1)
        {
          v10 = *v9;
          if (*v9)
          {
            if (*(v10 + 8) != -1)
            {
              break;
            }
          }

          --v5;
          v9 -= 2;
          if (v6 == v5)
          {
            goto LABEL_16;
          }
        }

        v11 = *(v9 - 1);
        atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
        v12 = v7[1];
        *v7 = v11;
        v7[1] = v10;
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        goto LABEL_14;
      }

LABEL_16:
      v5 = v6;
LABEL_17:
      sub_29A03CC20((v2 + 3), v5);
      if (!v5)
      {
        v2 = sub_29AEA8724(this + 79, v2);
        if (!v2)
        {
          return;
        }

        continue;
      }

      break;
    }

    v2 = *v2;
  }

  while (v2);
}

uint64_t sub_29AEA855C(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x30);
  v5[5] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AEA86B4(uint64_t a1)
{
  sub_29AE92CDC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29ADCC444(a1, v2);
  return a1;
}

uint64_t sub_29AEA86F0(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AEA86B4(a1 + 16);
  return a1;
}

uint64_t sub_29AEA8724(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_29AEA8770(&v6, v3);
  }

  return v2;
}

void sub_29AEA8770(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 24);
    sub_29A03CE88(&v4);
    v3 = *(a2 + 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_29AEA87EC(uint64_t a1)
{
  sub_29AEA8828(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AEA8828(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 24);
      sub_29A03CE88(&v5);
      v4 = *(v2 + 2);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t *sub_29AEA889C(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfToken,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

uint64_t tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfToken,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::destroy_array(uint64_t result, uint64_t a2)
{
  for (; a2; --a2)
  {
    v2 = *(result - 8 + 8 * a2);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AEA8928(const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  sub_29AEA89A4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AEA89A4(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099A00;
  pxrInternal__aapl__pxrReserved__::HdStDynamicUvTextureObject::HdStDynamicUvTextureObject((a1 + 3), a2, *a3);
  return a1;
}

void sub_29AEA8A24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEA8A74(const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x78uLL);
  sub_29AEA8AF0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AEA8AF0(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099A50;
  pxrInternal__aapl__pxrReserved__::HdStAssetUvTextureObject::HdStAssetUvTextureObject(a1 + 3, a2, *a3);
  return a1;
}

void sub_29AEA8B70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEA8BC0(const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x228uLL);
  sub_29AEA8C3C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AEA8C3C(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099AA0;
  pxrInternal__aapl__pxrReserved__::HdStFieldTextureObject::HdStFieldTextureObject((a1 + 3), a2, *a3);
  return a1;
}

void sub_29AEA8CBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEA8D0C(const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  sub_29AEA8D88(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AEA8D88(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099AF0;
  pxrInternal__aapl__pxrReserved__::HdStPtexTextureObject::HdStPtexTextureObject((a1 + 3), a2, *a3);
  return a1;
}

void sub_29AEA8E08(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEA8E58(const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1@<X1>, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xC8uLL);
  sub_29AEA8ED4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AEA8ED4(void *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2099B40;
  pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::HdStUdimTextureObject((a1 + 3), a2, *a3);
  return a1;
}

void sub_29AEA8F54(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2099B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AEA8FA4(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AEA9034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AEA904C(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A159274(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AEA9274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_29AEA8770(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEA9298(uint64_t a1, tbb::task *a2)
{
  *a1 = &unk_2A2099B90;
  tbb::interface5::internal::task_base::destroy(*(a1 + 16), a2);
  return a1;
}

void sub_29AEA92E4(uint64_t a1, tbb::task *a2)
{
  v2 = sub_29AEA9298(a1, a2);

  operator delete(v2);
}

uint64_t sub_29AEA930C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v9[0] = 0;
  v9[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v9, 0x20uLL);
  *(v5 - 11) = 1;
  v7 = *a2;
  v6 = a2[1];
  *v5 = &unk_2A2099C00;
  v5[1] = v7;
  v5[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v5[3] = a1;
  return (***(v5 - 5))(*(v5 - 5), v5, (v5 - 1));
}

uint64_t sub_29AEA93BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x20uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A2099C00;
  *(v5 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v5 + 24) = a1;
  return (***(v5 - 40))();
}

void *sub_29AEA9474(void *a1)
{
  *a1 = &unk_2A2099C00;
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void sub_29AEA94C0(void *__p)
{
  *__p = &unk_2A2099C00;
  v2 = __p[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  operator delete(__p);
}

void *sub_29AEA9564(void *a1)
{
  v2 = 0;
  v4 = a1[1];
  v3 = a1[2];
  v5 = v4;
  while (v5 != v3)
  {
    v6 = v5[1];
    v7 = v5;
    if (v6)
    {
      do
      {
        v5 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v5 = v7[2];
        v8 = *v5 == v7;
        v7 = v5;
      }

      while (!v8);
    }

    a1[1] = v5;
    if (++v2 == 4)
    {
      if (v5 != v3)
      {
        *(a1 - 12) = 1;
      }

      v2 = 4;
      goto LABEL_13;
    }
  }

  if (v2)
  {
LABEL_13:
    v9 = *(a1[3] + 16);
    v12[0] = 0;
    v12[1] = v9;
    result = tbb::internal::allocate_additional_child_of_proxy::allocate(v12, 0x20uLL);
    v11 = a1[3];
    *(result - 11) = 1;
    *result = &unk_2A2099C90;
    result[1] = v11;
    result[2] = v4;
    result[3] = v2;
    return result;
  }

  return 0;
}

uint64_t sub_29AEA9658(tbb::internal::allocate_child_proxy *this)
{
  v2 = 0;
  v13 = 0;
  v3 = &v13;
  while (1)
  {
    v14 = v3;
    v4 = tbb::internal::allocate_child_proxy::allocate(this, 0x18uLL);
    v5 = v4;
    v6 = *(this + 1);
    *(v4 - 11) = 1;
    v7 = *(this + 2);
    *v4 = &unk_2A2099CD8;
    v4[1] = v7;
    v4[2] = v6;
    v8 = *(this + 2);
    v9 = v8[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (!v11);
    }

    *(this + 2) = v10;
    if (v2 + 1 == *(this + 3))
    {
      break;
    }

    *(v4 - 1) = 0;
    v3 = v4 - 1;
    *v14 = v4;
    ++v2;
  }

  *(this - 3) = v2 + 2;
  if (v13)
  {
    (***(v13 - 40))(*(v13 - 40), v13, v14);
    v13 = 0;
    v14 = &v13;
  }

  (*(**(this - 5) + 8))(*(this - 5), this, v5);
  return 0;
}

uint64_t sub_29AEA97FC(uint64_t a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v13, "hdSt", "size_t pxrInternal__aapl__pxrReserved__::HdInstanceRegistry<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>>::GarbageCollect(Callback &&, int) [VALUE = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStTextureObject>, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/imaging/hd/instanceRegistry.h:243:27)]");
  if (a3 < 0)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      while ((*(v5 + 40) & 1) == 0)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      v8 = a1 + 16;
      do
      {
        v9 = *(v5 + 24);
        if (v9 && !*(v9 + 8) && (v10 = *(v5 + 32), *(v5 + 32) = v10 + 1, v10 >= a3))
        {
          sub_29AE974E8(a1, v5, v8, v12);
          v5 = v12[0];
          v8 = v12[1];
        }

        else
        {
          do
          {
            v5 = *v5;
          }

          while (v5 && (*(v5 + 40) & 1) == 0);
          ++v6;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == a1 + 16;
        }
      }

      while (!v11);
    }

    else
    {
LABEL_5:
      v6 = 0;
    }
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return v6;
}

void sub_29AEA98F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEA991C(uint64_t result, uint64_t a2, char *a3)
{
  result = result;
  switch(result)
  {
    case -1:
      return 0xFFFFFFFFLL;
    case 0:
      return result;
    case 1:
    case 2:
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
    case 6:
    case 7:
      return 5;
    case 8:
      return 6;
    case 9:
      return 7;
    case 10:
    case 11:
      return 9;
    case 12:
      return 10;
    case 13:
      return 11;
    case 14:
    case 15:
      return 13;
    case 16:
    case 17:
    case 18:
    case 19:
      v4 = "hdSt/textureUtils.cpp";
      v5 = "_GetHgiFormatAndConversion";
      v6 = 274;
      v7 = "std::pair<HgiFormat, HdStTextureUtils::ConversionFunction> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetHgiFormatAndConversion(const HioFormat, const BOOL)";
      v8 = 0;
      v3 = "Double texture formats not supported by Storm";
      goto LABEL_5;
    case 20:
      return 18;
    case 21:
    case 22:
    case 23:
      return 21;
    case 24:
    case 25:
    case 26:
    case 27:
      v4 = "hdSt/textureUtils.cpp";
      v5 = "_GetHgiFormatAndConversion";
      v6 = 307;
      v7 = "std::pair<HgiFormat, HdStTextureUtils::ConversionFunction> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetHgiFormatAndConversion(const HioFormat, const BOOL)";
      v8 = 0;
      v3 = "Signed 16-bit integer texture formats not supported by Storm";
      goto LABEL_5;
    case 28:
    case 29:
    case 30:
    case 31:
      v4 = "hdSt/textureUtils.cpp";
      v5 = "_GetHgiFormatAndConversion";
      v6 = 316;
      v7 = "std::pair<HgiFormat, HdStTextureUtils::ConversionFunction> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetHgiFormatAndConversion(const HioFormat, const BOOL)";
      v8 = 0;
      v3 = "Unsigned 32-bit integer texture formats not supported by Storm";
LABEL_5:
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v4, v3, a3);
      return 0xFFFFFFFFLL;
    case 32:
      return 22;
    case 33:
      return 23;
    case 34:
    case 35:
      return 25;
    case 36:
    case 37:
    case 38:
    case 39:
      return 26;
    case 40:
      return 27;
    case 41:
      return 28;
    case 42:
      return 29;
    case 43:
      return 30;
    case 44:
      return 31;
    case 45:
      return 32;
    case 46:
      v4 = "hdSt/textureUtils.cpp";
      v5 = "_GetHgiFormatAndConversion";
      v6 = 383;
      v7 = "std::pair<HgiFormat, HdStTextureUtils::ConversionFunction> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetHgiFormatAndConversion(const HioFormat, const BOOL)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "HioFormatCount passed to function");
      return 0xFFFFFFFFLL;
    default:
      v4 = "hdSt/textureUtils.cpp";
      v5 = "_GetHgiFormatAndConversion";
      v6 = 387;
      v7 = "std::pair<HgiFormat, HdStTextureUtils::ConversionFunction> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_GetHgiFormatAndConversion(const HioFormat, const BOOL)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Invalid HioFormat enum value");
      return 0xFFFFFFFFLL;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetAllMipImages(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = -1;
  v8 = -1;
  do
  {
    pxrInternal__aapl__pxrReserved__::HioImage::OpenForReading(a1, 0, v6, a2, 0, &v15);
    if (!v15 || ((v9 = (*(*v15 + 48))(v15), v10 = (*(*v15 + 56))(v15), v10 >= v7) ? (v11 = v9 >= v8) : (v11 = 0), v11))
    {
      v12 = 1;
    }

    else
    {
      sub_29A017F80(a3, &v15);
      v12 = 0;
      v8 = v9;
      v7 = v10;
    }

    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }

    v13 = v6 == 31;
    v6 = (v6 + 1);
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }
  }

  while ((v14 & 1) == 0);
}

void sub_29AEA9ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStTextureUtils::ComputeDimensionsFromTargetMemory(char **a1, int a2, unint64_t a3, unint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    v7 = a3;
    v9 = a1[1];
    v10 = 4 * a3;
    if (v9 == *a1)
    {
      v14 = a1[1];
      if (a5)
      {
LABEL_12:
        *a5 = ((v14 - v9) >> 4) - 1;
      }
    }

    else
    {
      v23 = a5;
      v11 = 0;
      v12 = 0;
      v9 = *a1;
      do
      {
        v29 = 0;
        v28 = 0;
        v13 = (*(**&v9[v11] + 48))(*&v9[v11]);
        v28 = v13 | ((*(**&v9[v11] + 56))(*&v9[v11]) << 32);
        v29 = 1;
        if (a4 >= v10 * pxrInternal__aapl__pxrReserved__::HgiGetDataSize(a2, &v28) / 3)
        {
          if (v23)
          {
            *v23 = v12;
          }

          return v28;
        }

        ++v12;
        v9 = *a1;
        v14 = a1[1];
        v11 += 16;
      }

      while (v12 < (v14 - *a1) >> 4);
      v7 = a3;
      a5 = v23;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    v17 = (*(**(v14 - 2) + 48))(*(v14 - 2));
    v26 = v17 | ((*(**(v14 - 2) + 56))(*(v14 - 2)) << 32);
    v27 = 1;
    pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(a2, &v26, v7, 0xFFFFFFFFFFFFFFFFLL, &v24);
    if (v24 == v25)
    {
LABEL_17:
      v19 = v25 - 24;
    }

    else
    {
      v18 = v24;
      while (a4 < v10 * *(v18 + 3) / 3uLL)
      {
        v18 += 32;
        if (v18 == v25)
        {
          goto LABEL_17;
        }
      }

      v19 = v18 + 8;
    }

    v20 = *v19;
    v29 = *(v19 + 2);
    v28 = v20;
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v15 = *a1;
    v16 = (*(***a1 + 48))(**a1);
    v28 = v16 | ((*(**v15 + 56))() << 32);
    v29 = 1;
  }

  return v28;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureUtils::ReadAndConvertImage(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**a1 + 64))(*a1);
  sub_29AEA991C(v12, a3, v13);
  v15 = v14;
  v16 = a6 + *a4 + *(a4 + 24) * a5;
  v24 = 0;
  v23 = *(a4 + 8);
  v25 = (*(**a1 + 64))();
  v26 = a2;
  v17 = v16;
  if (v15)
  {
    v18 = (*(**a1 + 64))();
    v17 = v16 + *(a4 + 24) - pxrInternal__aapl__pxrReserved__::HioGetDataSize(v18, (a4 + 8));
  }

  v27 = v17;
  v19 = (*(**a1 + 16))(*a1, &v23);
  v20 = v19;
  if (v15)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v15(v27, SHIDWORD(v23) * v23, v16);
  }

  return v20;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStTextureUtils::HgiTextureReadback@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, size_t *a3@<X2>, void *a4@<X8>)
{
  if (a3 && (v7 = result, *a3 = 0, (result = *a2) != 0) && (Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(result), result = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(Descriptor[7], 0, 0), (v9 = result * Descriptor[13] * Descriptor[14]) != 0))
  {
    v10 = *((*(*v7 + 200))(v7) + 40);
    v11 = (v10 + v9 - 1) & -v10;
    *a3 = v11;
    v12 = pxrInternal__aapl__pxrReserved__::ArchAlignedAlloc(v10, v11);
    *a4 = v12;
    a4[1] = pxrInternal__aapl__pxrReserved__::ArchAlignedFree;
    (*(*v7 + 32))(&v19, v7);
    v13 = *a2;
    v14 = 0;
    v15 = 0;
    v16 = v12;
    v17 = 0;
    v18 = *a3;
    (*(*v19 + 40))(v19, &v13);
    pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(v7, v19, 1);
    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = pxrInternal__aapl__pxrReserved__::ArchAlignedFree;
  }

  return result;
}

void sub_29AEAA4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *v16 = 0;
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::ArchAlignedFree(v17);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AEAA4F8(char *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 3);
    do
    {
      v4 = *result;
      *(v3 - 3) = *result;
      *(v3 - 2) = v4;
      *(v3 - 1) = *result;
      *v3 = result[1];
      v3 += 4;
      result += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA52C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 3);
    v4 = (result + 2);
    do
    {
      *(v3 - 3) = *(v4 - 2);
      *(v3 - 2) = *(v4 - 1);
      v5 = *v4;
      v4 += 3;
      *(v3 - 1) = v5;
      *v3 = -1;
      v3 += 4;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA564(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, float a6, float a7)
{
  if (a2)
  {
    v7 = 0;
    v8 = a3;
    v9 = result;
    do
    {
      v10 = 0;
      v11 = (4 * v7) | 3;
      LOBYTE(a6) = *(result + v11);
      a6 = LODWORD(a6) / 255.0;
      do
      {
        LOBYTE(a7) = *(v9 + v10);
        a7 = (a6 * LODWORD(a7)) + 0.5;
        *(v8 + v10++) = a7;
      }

      while (v10 != 3);
      *(a3 + v11) = *(result + v11);
      ++v7;
      v9 += 4;
      v8 += 4;
    }

    while (v7 != a2);
  }

  return result;
}

char *sub_29AEAA5DC(char *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 3);
    do
    {
      v4 = *result;
      *(v3 - 3) = *result;
      *(v3 - 2) = v4;
      *(v3 - 1) = *result;
      *v3 = result[1];
      v3 += 4;
      result += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA610(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 3);
    v4 = (result + 2);
    do
    {
      *(v3 - 3) = *(v4 - 2);
      *(v3 - 2) = *(v4 - 1);
      v5 = *v4;
      v4 += 3;
      *(v3 - 1) = v5;
      *v3 = 127;
      v3 += 4;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA648(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = a3;
    v5 = result;
    do
    {
      v6 = 0;
      v7 = (4 * v3) | 3;
      v8 = *(result + v7);
      do
      {
        *(v4 + v6) = (((v8 / 127.0) * *(v5 + v6)) + 0.5);
        ++v6;
      }

      while (v6 != 3);
      *(a3 + v7) = *(result + v7);
      ++v3;
      v5 += 4;
      v4 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t sub_29AEAA6C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (result + 4);
    v5 = (a3 + 4);
    do
    {
      *(v5 - 2) = *(v4 - 2);
      *(v5 - 1) = *(v4 - 1);
      *v5 = *v4;
      result = 15360;
      v4 += 3;
      v5[1] = 15360;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29AEAA740(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    v7 = result;
    do
    {
      v8 = 0;
      v9 = (4 * v5) | 3;
      v10 = *(v4 + 2 * v9);
      do
      {
        v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(v7 + v8)] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10];
        if (v11 == 0.0)
        {
          result = HIWORD(LODWORD(v11));
        }

        else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
        {
          result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
        }

        *(v6 + v8) = result;
        v8 += 2;
      }

      while (v8 != 6);
      *(a3 + 2 * v9) = *(v4 + 2 * v9);
      ++v5;
      v7 += 8;
      v6 += 8;
    }

    while (v5 != a2);
  }

  return result;
}

float sub_29AEAA83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a1 + 8);
    v4 = (a3 + 8);
    do
    {
      *(v4 - 2) = *(v3 - 2);
      *(v4 - 1) = *(v3 - 1);
      v5 = *v3;
      v3 += 3;
      result = v5;
      *v4 = v5;
      v4[1] = 1.0;
      v4 += 4;
      --a2;
    }

    while (a2);
  }

  return result;
}

float sub_29AEAA878(uint64_t a1, uint64_t a2, uint64_t a3, float result)
{
  if (a2)
  {
    v4 = 0;
    v5 = a3;
    v6 = a1;
    do
    {
      v7 = 0;
      v8 = (4 * v4) | 3;
      v9 = *(a1 + 4 * v8);
      do
      {
        *(v5 + v7) = v9 * *(v6 + v7);
        v7 += 4;
      }

      while (v7 != 12);
      result = *(a1 + 4 * v8);
      *(a3 + 4 * v8) = result;
      ++v4;
      v6 += 16;
      v5 += 16;
    }

    while (v4 != a2);
  }

  return result;
}

__int16 *sub_29AEAA8D0(__int16 *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 4);
    do
    {
      v4 = *result;
      *(v3 - 2) = *result;
      *(v3 - 1) = v4;
      *v3 = *result;
      v3[1] = result[1];
      v3 += 4;
      result += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA908(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (result + 4);
    v4 = (a3 + 4);
    do
    {
      *(v4 - 2) = *(v3 - 2);
      *(v4 - 1) = *(v3 - 1);
      v5 = *v3;
      v3 += 3;
      *v4 = v5;
      v4[1] = -1;
      v4 += 4;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA944(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, float a6, float a7)
{
  if (a2)
  {
    v7 = 0;
    v8 = a3;
    v9 = result;
    do
    {
      v10 = 0;
      v11 = (4 * v7) | 3;
      LOWORD(a6) = *(result + 2 * v11);
      a6 = LODWORD(a6) / 65535.0;
      do
      {
        LOWORD(a7) = *(v9 + v10);
        a7 = (a6 * LODWORD(a7)) + 0.5;
        *(v8 + v10) = a7;
        v10 += 2;
      }

      while (v10 != 6);
      *(a3 + 2 * v11) = *(result + 2 * v11);
      ++v7;
      v9 += 8;
      v8 += 8;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t sub_29AEAA9BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (result + 8);
    v4 = (a3 + 8);
    do
    {
      *(v4 - 2) = *(v3 - 2);
      *(v4 - 1) = *(v3 - 1);
      v5 = *v3;
      v3 += 3;
      *v4 = v5;
      v4[1] = 0x7FFFFFFF;
      v4 += 4;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29AEAA9F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = a3;
    v5 = result;
    do
    {
      v6 = 0;
      v7 = (4 * v3) | 3;
      v8 = *(result + 4 * v7) * 4.6566e-10;
      do
      {
        *(v4 + v6) = ((v8 * *(v5 + v6)) + 0.5);
        v6 += 4;
      }

      while (v6 != 12);
      *(a3 + 4 * v7) = *(result + 4 * v7);
      ++v3;
      v5 += 16;
      v4 += 16;
    }

    while (v3 != a2);
  }

  return result;
}

char *sub_29AEAAA64(char *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 3);
    do
    {
      v4 = *result;
      *(v3 - 3) = *result;
      *(v3 - 2) = v4;
      v5 = *result++;
      *(v3 - 1) = v5;
      *v3 = -1;
      v3 += 4;
      --a2;
    }

    while (a2);
  }

  return result;
}

void sub_29AEAAA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = -71.68;
    v8 = a3;
    v9 = a1;
    do
    {
      v10 = 0;
      v11 = (4 * v6) | 3;
      LOBYTE(v7) = *(a1 + v11);
      v7 = LODWORD(v7);
      v12 = v7 / 255.0;
      do
      {
        LOBYTE(v7) = *(v9 + v10);
        v13 = (LODWORD(v7) / 255.0);
        if (v13 <= 0.04045)
        {
          v14 = v13 / 12.92;
        }

        else
        {
          v14 = pow((v13 + 0.055) / 1.055, 2.4);
        }

        v15 = v14;
        if (v15 <= 1.0)
        {
          v16 = v15;
        }

        else
        {
          v16 = 1.0;
        }

        v17 = v16 * 255.0;
        v18 = v15 < 0.0;
        v19 = 0.0;
        if (!v18)
        {
          v19 = v17;
        }

        v20 = ((v12 * v19) / 255.0);
        if (v20 <= 0.0031308)
        {
          v21 = v20 * 12.92;
        }

        else
        {
          v21 = pow(v20, 0.416666667) * 1.055 + -0.055;
        }

        v22 = v21;
        if (v22 <= 1.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 1.0;
        }

        v24 = (v23 * 255.0) + 0.5;
        if (v22 >= 0.0)
        {
          v7 = v24;
        }

        else
        {
          v7 = 0.5;
        }

        *(v8 + v10++) = v7;
      }

      while (v10 != 3);
      *(a3 + v11) = *(a1 + v11);
      ++v6;
      v9 += 4;
      v8 += 4;
    }

    while (v6 != a2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType::~HdStGLSLProgramTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType *this)
{
  v19 = (this + 144);
  sub_29A124AB0(&v19);
  v2 = *(this + 17);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 15);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 14);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 13);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 12);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 11);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 10);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 9);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 8);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 7);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 6);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 5);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 4);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 3);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 2);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 1);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType::HdStGLSLProgramTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStGLSLProgramTokens_StaticTokenType *this)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "smoothNormalsFloatToFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "smoothNormalsFloatToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "smoothNormalsDoubleToDouble", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "smoothNormalsDoubleToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "flatNormalsTriFloatToFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "flatNormalsTriFloatToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "flatNormalsTriDoubleToDouble", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "flatNormalsTriDoubleToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "flatNormalsQuadFloatToFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "flatNormalsQuadFloatToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "flatNormalsQuadDoubleToDouble", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "flatNormalsQuadDoubleToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "flatNormalsTriQuadFloatToFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "flatNormalsTriQuadFloatToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "flatNormalsTriQuadDoubleToDouble", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "flatNormalsTriQuadDoubleToPacked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "quadrangulateFloat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "quadrangulateDouble", 0);
  v3 = (this + 144);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v26 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v27 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v28 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v29 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v30 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v31 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v32 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v33 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v34 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v35 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v36 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v37 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v38 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v39 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v40 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v41 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v42 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  sub_29A12EF7C(v3, &v25, &v43, 0x12uLL);
  for (i = 136; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AEAB364(_Unwind_Exception *a1)
{
  v3 = 136;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[17];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[16];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[15];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[14];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[13];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[12];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[11];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[10];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[9];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[8];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[7];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[6];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[5];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[4];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[3];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[2];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[1];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType::~HdStTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType *this)
{
  v27 = (this + 208);
  sub_29A124AB0(&v27);
  v2 = *(this + 25);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 22);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 21);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 20);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 19);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 18);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 17);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 16);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 15);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 14);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 13);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 12);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 11);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 10);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 9);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 8);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 7);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 6);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 5);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 4);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 3);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 2);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 1);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType::HdStTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStTokens_StaticTokenType *this)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "constantLighting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "packedSmoothNormals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "smoothNormals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "packedFlatNormals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "flatNormals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "scale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "bias", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "rotation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "translation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "sRGB", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "raw", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "double", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "float", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "int", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "auto", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "fvarIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "fvarPatchParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "coarseFaceIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "processedFaceCounts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "processedFaceIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "geomSubsetFaceIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "pointSizeScale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "screenSpaceWidths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "minScreenSpaceWidths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "shadowCompareTextures", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "storm", 0);
  v3 = (this + 208);
  v4 = *this;
  v33 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v34 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v35 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v36 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v37 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v38 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v39 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v40 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v41 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v42 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v43 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v44 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v45 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v46 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v47 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v48 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v49 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v50 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v51 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v52 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v53 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 21);
  v54 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 22);
  v55 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 23);
  v56 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 24);
  v57 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 25);
  v58 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  sub_29A12EF7C(v3, &v33, &v59, 0x1AuLL);
  for (i = 200; i != -8; i -= 8)
  {
    v31 = *(&v33 + i);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AEABF5C(_Unwind_Exception *a1)
{
  v3 = 200;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[25];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[24];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[23];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[22];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[21];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[20];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[19];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[18];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[17];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[16];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[15];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[14];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[13];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[12];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[11];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[10];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[9];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[8];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[7];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[6];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[5];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[4];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[3];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[2];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[1];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType::~HdStTextureTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *this)
{
  v17 = (this + 128);
  sub_29A124AB0(&v17);
  v2 = *(this + 15);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 14);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 13);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 12);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 11);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 10);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 7);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 6);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 5);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 4);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 3);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 2);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 1);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType::HdStTextureTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *this)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "wrapS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "wrapT", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "wrapR", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "black", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "clamp", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "mirror", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "repeat", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "useMetadata", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "minFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "magFilter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "linear", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "nearest", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "linearMipmapLinear", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "linearMipmapNearest", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "nearestMipmapLinear", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "nearestMipmapNearest", 0);
  v3 = (this + 128);
  v4 = *this;
  v23 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v24 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v25 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v26 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v27 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v28 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v29 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v30 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v31 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v32 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v33 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v34 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v35 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v36 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v37 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v38 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  sub_29A12EF7C(v3, &v23, &v39, 0x10uLL);
  for (i = 120; i != -8; i -= 8)
  {
    v21 = *(&v23 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AEAC8BC(_Unwind_Exception *a1)
{
  v3 = 120;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[15];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[14];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[13];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[12];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[11];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[10];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[9];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[8];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[7];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[6];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[5];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[4];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[3];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[2];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[1];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType::~HdStRenderBufferTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType::HdStRenderBufferTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStRenderBufferTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "storm:msaaSampleCount", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens_StaticTokenType::~HdStRenderSettingsTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens_StaticTokenType::HdStRenderSettingsTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "enableTinyPrimCulling", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "volumeRaymarchingStepSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "volumeRaymarchingStepSizeLighting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "volumeMaxTextureMemoryPerField", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "maxLights", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AEACEB4(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType::~HdStMaterialTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType::HdStMaterialTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "defaultMaterialTag", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "masked", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "translucentToSelection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "additive", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "translucent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "volume", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AEAD228(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType::~HdStSdrMetadataTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType::HdStSdrMetadataTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStSdrMetadataTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "swizzle", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType::~HdStPerfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType::HdStPerfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdStPerfTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "copyBufferGpuToGpu", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "copyBufferCpuToGpu", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "drawItemsCacheHit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "drawItemsCacheMiss", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "drawItemsCacheStale", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "drawItemsFetched", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AEAD758(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

double pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::HdStUdimTextureObject(pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *this, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2, pxrInternal__aapl__pxrReserved__::HdSt_TextureObjectRegistry *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(this, a2, a3);
  *v3 = &unk_2A2099D20;
  v3[16] = 0;
  result = 0.0;
  *(v3 + 7) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 100) = 0u;
  *(v3 + 34) = -1;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdStTextureObject::HdStTextureObject(this, a2, a3);
  *v3 = &unk_2A2099D20;
  v3[16] = 0;
  result = 0.0;
  *(v3 + 7) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 100) = 0u;
  *(v3 + 34) = -1;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::~HdStUdimTextureObject(pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *this)
{
  pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::_DestroyTextures(this);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdStTextureObject::~HdStTextureObject(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::~HdStUdimTextureObject(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::_DestroyTextures(pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (result)
  {
    v3 = result;
    if (*(this + 18))
    {
      result = (*(*result + 56))(result, this + 144);
    }

    v5 = *(this + 20);
    v4 = this + 160;
    if (v5)
    {
      v6 = *(*v3 + 56);

      return v6(v3, v4);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::_Load(pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject *this, uint64_t a2, char *a3)
{
  v72 = *MEMORY[0x29EDCA608];
  if ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  if ((atomic_load_explicit(&qword_2A174F7D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F7D8))
  {
    sub_29A008E78(&qword_2A174F7C0, "<UDIM>");
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A174F7C0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174F7D8);
  }

  v5 = *(EmptyString + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = EmptyString;
  }

  else
  {
    v6 = *EmptyString;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = EmptyString[1];
  }

  if (byte_2A174F7D7 >= 0)
  {
    v7 = &qword_2A174F7C0;
  }

  else
  {
    v7 = qword_2A174F7C0;
  }

  if (byte_2A174F7D7 >= 0)
  {
    v8 = byte_2A174F7D7;
  }

  else
  {
    v8 = qword_2A174F7C8;
  }

  if (v8)
  {
    if (v5 >= v8)
    {
      v31 = &v6[v5];
      v32 = *v7;
      v33 = v6;
      do
      {
        v34 = v5 - v8;
        a3 = (v34 + 1);
        if (v34 == -1)
        {
          break;
        }

        v35 = memchr(v33, v32, a3);
        if (!v35)
        {
          break;
        }

        v36 = v35;
        if (!memcmp(v35, v7, v8))
        {
          if (v36 != v31)
          {
            v10 = v36 - v6;
            if (v36 - v6 != -1)
            {
              goto LABEL_24;
            }
          }

          break;
        }

        v33 = v36 + 1;
        v5 = v31 - (v36 + 1);
      }

      while (v5 >= v8);
    }

    memset(v69, 0, 48);
    goto LABEL_19;
  }

  v10 = 0;
LABEL_24:
  std::string::basic_string(&__dst, EmptyString, 0, v10, &v68);
  v11 = qword_2A174F7C8;
  if (byte_2A174F7D7 >= 0)
  {
    v11 = byte_2A174F7D7;
  }

  v12 = std::string::basic_string(&v68, EmptyString, v11 + v10, 0xFFFFFFFFFFFFFFFFLL, __p);
  v69[0] = __dst;
  v69[1] = v68;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v69[0].__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v14 = HIBYTE(v69[1].__r_.__value_.__r.__words[2]);
    if ((v69[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v69[1].__r_.__value_.__l.__size_;
    }

    if (!v14)
    {
LABEL_19:
      __dst.__r_.__value_.__r.__words[0] = "hdSt/udimTextureObject.cpp";
      __dst.__r_.__value_.__l.__size_ = "_FindUdimTiles";
      __dst.__r_.__value_.__r.__words[2] = 87;
      v66 = "std::vector<std::tuple<int, TfToken>> pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_FindUdimTiles(const std::string &)";
      LOBYTE(v67) = 0;
      if (*(EmptyString + 23) >= 0)
      {
        v9 = EmptyString;
      }

      else
      {
        v9 = *EmptyString;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__dst, "Expected udim pattern but got '%s'.", a3, v9);
      goto LABEL_62;
    }
  }

  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v12);
  for (i = 0; i != 100; ++i)
  {
    std::to_string(&v61, i + 1001);
    if ((v69[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = v69;
    }

    else
    {
      v17 = v69[0].__r_.__value_.__r.__words[0];
    }

    if ((v69[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v69[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v69[0].__r_.__value_.__l.__size_;
    }

    v19 = std::string::insert(&v61, 0, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if ((v69[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      data = &v69[1];
    }

    else
    {
      data = v69[1].__r_.__value_.__l.__data_;
    }

    if ((v69[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v69[1].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v69[1].__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v62, data, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v64 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::ArResolver::Resolve(Resolver);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__dst, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __dst = v68;
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v25 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v26 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = __dst.__r_.__value_.__l.__size_;
    }

    if (v25)
    {
      LODWORD(v68.__r_.__value_.__l.__data_) = i;
      sub_29AEAE634(&v58, &v68);
      v26 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    if (v26 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

LABEL_62:
  if (SHIBYTE(v69[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69[0].__r_.__value_.__l.__data_);
  }

  if (v58 != v59)
  {
    v27 = *(this + 5);
    SourceColorSpace = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetSourceColorSpace(this, v27);
    v29 = SourceColorSpace;
    LODWORD(v61.__r_.__value_.__l.__data_) = SourceColorSpace;
    if ((*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v30 = ((*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(SourceColorSpace);
    }

    pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetAllMipImages(v30, v29, &v68);
    if (v68.__r_.__value_.__r.__words[0] != v68.__r_.__value_.__l.__size_)
    {
      v37 = (*(**v68.__r_.__value_.__l.__data_ + 64))();
      PremultiplyAlpha = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetPremultiplyAlpha(this, v27);
      v57 = PremultiplyAlpha;
      HgiFormat = pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetHgiFormat(v37, PremultiplyAlpha, v39);
      *(this + 34) = HgiFormat;
      if (HgiFormat == -1 || pxrInternal__aapl__pxrReserved__::HgiIsCompressed(HgiFormat))
      {
        v69[0].__r_.__value_.__r.__words[0] = "hdSt/udimTextureObject.cpp";
        v69[0].__r_.__value_.__l.__size_ = "_Load";
        v69[0].__r_.__value_.__r.__words[2] = 181;
        v69[1].__r_.__value_.__r.__words[0] = "virtual void pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::_Load()";
        v69[1].__r_.__value_.__s.__data_[8] = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v69, "Unsupported texture format for UDIM", v41);
      }

      else
      {
        v42 = ((v59 - v58) >> 4);
        *(this + 15) = v42;
        *(this + 13) = pxrInternal__aapl__pxrReserved__::HdStTextureUtils::ComputeDimensionsFromTargetMemory(&v68.__r_.__value_.__l.__data_, *(this + 34), v42, *(this + 6), 0);
        *(this + 28) = v43;
        v44 = (*(v59 - 16) + 1);
        LODWORD(v69[0].__r_.__value_.__l.__data_) = 0;
        sub_29A0AB144(this + 10, v44, v69, v45);
        pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(*(this + 34), this + 26, *(this + 15), 0xFFFFFFFFFFFFFFFFLL, __p);
        v46 = __p[1];
        v47 = (this + 56);
        v48 = *(this + 7);
        *(this + 16) = (__p[1] - __p[0]) >> 5;
        v49 = *(v46 - 4) + *(v46 - 1) * *(this + 15);
        v50 = *(this + 8) - v48;
        if (v49 <= v50)
        {
          if (v49 < v50)
          {
            *(this + 8) = v48 + v49;
          }
        }

        else
        {
          sub_29A1B2C78(v47, v49 - v50);
        }

        __dst.__r_.__value_.__r.__words[0] = &v58;
        __dst.__r_.__value_.__l.__size_ = this;
        __dst.__r_.__value_.__r.__words[2] = &v61;
        v66 = __p;
        v67 = &v57;
        if (v59 != v58)
        {
          v54 = (v59 - v58) >> 4;
          if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v47))
          {
            LODWORD(v69[0].__r_.__value_.__l.__data_) = 0;
            v70 = 65539;
            v71 = 55;
            tbb::task_group_context::init(v69, v51, v52, v53);
            v62.__r_.__value_.__r.__words[0] = v69;
            v55 = tbb::internal::allocate_root_with_context_proxy::allocate(&v62, 0x38uLL);
            *(v55 - 11) = 1;
            *v55 = &unk_2A2099D78;
            *(v55 + 8) = v54;
            *(v55 + 16) = xmmword_29B430070;
            *(v55 + 32) = &__dst;
            initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v55);
            *(v55 + 48) = 0;
            *(v55 + 52) = 5;
            *(v55 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
            (*(**(v55 - 40) + 16))(*(v55 - 40), v55, v55 - 8);
            tbb::task_group_context::~task_group_context(v69);
          }

          else
          {
            sub_29AEAECF0(&__dst, 0, v54);
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    v69[0].__r_.__value_.__r.__words[0] = &v68;
    sub_29A0176E4(v69);
  }

  v69[0].__r_.__value_.__r.__words[0] = &v58;
  sub_29AEAE870(v69);
}

void sub_29AEAE120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void **a48)
{
  __cxa_guard_abort(&qword_2A174F7D8);
  *(v48 + 64) = &a11;
  sub_29AEAE870(&a48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::_Commit(int **this)
{
  Hgi = pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetHgi(this);
  if (Hgi || (sub_29B2CB3D8(v32) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStUdimTextureObject::_DestroyTextures(this);
    if (*(this + 34) == -1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      *&v29[4] = xmmword_29B70A5A0;
      *&v29[20] = xmmword_29B70A5B0;
      *&v29[36] = 0x1000100000000;
      *v29 = 0;
      *&v29[44] = 1;
      v30 = 0;
      v31 = 0;
      MEMORY[0x29C2C1A60](__p, "UdimTextureFallback");
      *v29 = 0x200000008;
      *&v29[24] = xmmword_29B710980;
      *&v29[40] = 65537;
      v26 = -16777216;
      v30 = 4;
      v31 = &v26;
      this[18] = (*(*Hgi + 48))(Hgi, __p);
      this[19] = v16;
      v19[0] = 0;
      v19[1] = 0;
      *v21 = 0;
      v20 = 0;
      *&v21[4] = xmmword_29B70A5A0;
      *v22 = xmmword_29B70A5B0;
      *&v22[16] = 0x1000100000000;
      v23 = 1;
      v24 = 0;
      v25 = 0;
      MEMORY[0x29C2C1A60](v19, "UdimLayoutTextureFallback");
      *&v22[4] = xmmword_29B712770;
      *v21 = 0xA00000008;
      *&v22[20] = 65537;
      v18 = 1065353216;
      v24 = 4;
      v25 = &v18;
      this[20] = (*(*Hgi + 48))(Hgi, v19);
      this[21] = v17;
      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *&v29[8] = xmmword_29B6C6720;
      *&v29[44] = 1;
      pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetDebugName(this, (this + 4), v19);
      v3 = *Hgi;
      v5 = this[7];
      v4 = this[8];
      v6 = *(this + 34);
      v8 = this[15];
      v7 = this[16];
      *__p = *v19;
      v28 = v20;
      *&v29[28] = this[13];
      v9 = *(this + 28);
      *&v29[24] = 4;
      *&v29[36] = v9;
      *&v29[40] = v8;
      *v29 = 8;
      *&v29[4] = v6;
      *&v29[42] = v7;
      v30 = v4 - v5;
      v31 = v5;
      this[18] = (*(v3 + 48))(Hgi, __p);
      this[19] = v10;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      *&v29[8] = xmmword_29B6C6720;
      *&v29[40] = 0x100010001;
      pxrInternal__aapl__pxrReserved__::HdStTextureObject::_GetDebugName(this, (this + 4), v19);
      v11 = *Hgi;
      v12 = this[10];
      v13 = this[11];
      *__p = *v19;
      v28 = v20;
      v14 = v13 - v12;
      *&v29[24] = 0;
      *&v29[28] = v14 >> 2;
      *&v29[32] = 0x100000001;
      *v29 = 0xA00000008;
      v30 = v14;
      v31 = v12;
      this[20] = (*(v11 + 48))(Hgi, __p);
      this[21] = v15;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      this[8] = this[7];
      this[11] = this[10];
    }
  }
}

void sub_29AEAE5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AEAE634(uint64_t *a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v17 = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v14[0] = v11;
    v14[1] = v12;
    v15 = v12;
    v16 = &v11[16 * v10];
    *v12 = *a2;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v12 + 8);
    v15 += 16;
    sub_29AEAE75C(a1, v14);
    v6 = a1[1];
    sub_29AEAE800(v14);
  }

  else
  {
    *v5 = *a2;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v5 + 2);
    v6 = v5 + 4;
    a1[1] = (v5 + 4);
  }

  a1[1] = v6;
  return v6 - 4;
}