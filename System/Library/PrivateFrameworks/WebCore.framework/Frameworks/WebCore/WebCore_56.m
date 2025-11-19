void std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(void *a1)
{
  v1 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x2E8BA2E8BA2E8BALL)
  {
    if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v2 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::ScalabilityStructureKeySvc::StreamConfig@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(a2 + 12) = v2;
  *(a2 + 28) = v2;
  v3 = *(this + 8);
  *a2 = v3;
  v4 = 4 * v3 - 4;
  *(a2 + 12 + v4) = 1;
  *(a2 + 28 + v4) = 1;
  if (v3 >= 2)
  {
    v5 = v3 + 1;
    v6 = (a2 + 4 * v3 + 24);
    do
    {
      *(v6 - 1) = 2 * *v6;
      *(--v6 - 4) = 1;
      --v5;
    }

    while (v5 > 2);
  }

  *(a2 + 8) = 1;
  return this;
}

void *webrtc::ScalabilityStructureKeySvc::NextFrameConfig@<X0>(void *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = this;
  v5 = this[5];
  if (!v5)
  {
    *(this + 4) = 0;
    goto LABEL_7;
  }

  if (a2)
  {
    *(this + 4) = 0;
    goto LABEL_4;
  }

  v10 = *(this + 4);
  if (v10 > 2)
  {
    switch(v10)
    {
      case 5:
        goto LABEL_41;
      case 4:
        v20 = *(this + 3);
        if (v20 >= 3)
        {
          v21 = *(this + 2);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *(this + 2);
            while (1)
            {
              if (v22 >= 0x1E)
              {
                goto LABEL_179;
              }

              if (((v5 >> v22) & 4) != 0)
              {
                break;
              }

              v22 += v20;
              if (!--v23)
              {
                goto LABEL_41;
              }
            }

            v41 = 5;
            goto LABEL_106;
          }
        }

        goto LABEL_41;
      case 3:
        v17 = *(this + 3);
        if (v17 > 1)
        {
          v14 = *(this + 2);
          if (v14 >= 1)
          {
            v18 = 0;
            v19 = *(this + 2);
            while (1)
            {
              if (v18 >= 0x1F)
              {
                goto LABEL_179;
              }

              if (((v5 >> v18) & 2) != 0)
              {
                break;
              }

              v18 += v17;
              if (!--v19)
              {
                goto LABEL_41;
              }
            }

LABEL_103:
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
            this = std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(a3, v14);
            v54 = *(v3 + 2);
            if (v54 < 1)
            {
              return this;
            }

            v55 = 0;
            while (1)
            {
              v79 = *(v3 + 3) * v55 + 1;
              if (v79 >= 0x20)
              {
                goto LABEL_179;
              }

              if ((v3[5] >> v79))
              {
                v80 = a3[1];
                if (v80 >= a3[2])
                {
                  std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
                }

                if (!v80)
                {
                  goto LABEL_179;
                }

                *(v80 + 80) = 0;
                *(v80 + 48) = 0u;
                *(v80 + 64) = 0u;
                *(v80 + 16) = 0u;
                *(v80 + 32) = 0u;
                v81 = v80 + 88;
                *v80 = 0u;
                a3[1] = v81;
                if (*a3 == v81)
                {
                  goto LABEL_179;
                }

                *v80 = 4;
                *(v80 + 8) = v55;
                *(v80 + 12) = 1;
                this = (v80 + 16);
                v82 = *(v80 + 16);
                v83 = v81 - 64;
                if (v82)
                {
                  v84 = *(v81 - 64);
                  v85 = *(v81 - 56);
                }

                else
                {
                  v84 = v81 - 64;
                  v85 = 8;
                }

                if (v82 >> 1 == v85)
                {
                  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
                }

                if (!v84)
                {
                  goto LABEL_179;
                }

                v86 = v84 + 8 * (v82 >> 1);
                *v86 = v55;
                *(v86 + 4) = 1;
                *this = v82 + 2;
                v54 = *(v3 + 2);
                if (*(v3 + 3) >= 3)
                {
                  v87 = *this;
                  if (*this)
                  {
                    v83 = *(v81 - 64);
                    v88 = *(v81 - 56);
                  }

                  else
                  {
                    v88 = 8;
                  }

                  if (v87 >> 1 == v88)
                  {
                    absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
                  }

                  if (!v83)
                  {
                    goto LABEL_179;
                  }

                  v89 = v83 + 8 * (v87 >> 1);
                  *v89 = v55 + v54;
                  *(v89 + 4) = 256;
                  *this = v87 + 2;
                }
              }

              if (++v55 >= v54)
              {
                return this;
              }
            }
          }
        }

        goto LABEL_41;
    }

LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return this;
  }

  if ((v10 - 1) < 2)
  {
    v11 = *(this + 3);
    if (v11 <= 2)
    {
LABEL_16:
      if (v11 > 1)
      {
        v14 = *(this + 2);
        if (v14 >= 1)
        {
          v15 = 0;
          v16 = *(this + 2);
          while (v15 < 0x1F)
          {
            if (((v5 >> v15) & 2) != 0)
            {
              goto LABEL_103;
            }

            v15 += v11;
            if (!--v16)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_179;
        }
      }
    }

    else if (*(this + 2) >= 1)
    {
      v12 = 0;
      v13 = *(this + 2);
      while (1)
      {
        if (v12 >= 0x1E)
        {
          goto LABEL_179;
        }

        if (((v5 >> v12) & 4) != 0)
        {
          break;
        }

        v12 += v11;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      v41 = 3;
      v21 = *(this + 2);
LABEL_106:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      this = std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(a3, v21);
      if (*(v3 + 2) < 1)
      {
        return this;
      }

      v56 = 0;
      while (1)
      {
        v68 = *(v3 + 3) * v56 + 2;
        if (v68 >= 0x20)
        {
          goto LABEL_179;
        }

        if ((v3[5] >> v68))
        {
          v69 = a3[1];
          if (v69 >= a3[2])
          {
            std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
          }

          if (!v69)
          {
            goto LABEL_179;
          }

          *(v69 + 80) = 0;
          *(v69 + 48) = 0u;
          *(v69 + 64) = 0u;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0u;
          this = (v69 + 88);
          *v69 = 0u;
          a3[1] = this;
          if (*a3 == this)
          {
            goto LABEL_179;
          }

          *v69 = v41;
          *(v69 + 8) = v56;
          *(v69 + 12) = 2;
          if (v56 >= 3)
          {
            goto LABEL_179;
          }

          if ((v3[4] >> v56))
          {
            v70 = (v69 + 16);
            v71 = *(this - 9);
            if (v71)
            {
              v72 = *(this - 8);
              v73 = *(this - 7);
            }

            else
            {
              v72 = this - 8;
              v73 = 8;
            }

            if (v71 >> 1 == v73)
            {
              goto LABEL_134;
            }

            if (!v72)
            {
              goto LABEL_179;
            }

            v77 = &v72[v71 >> 1];
            *v77 = v56 + *(v3 + 2);
            *(v77 + 2) = 1;
            *v70 = v71 + 2;
          }

          else
          {
            v70 = (v69 + 16);
            v74 = *(this - 9);
            if (v74)
            {
              v75 = *(this - 8);
              v76 = *(this - 7);
            }

            else
            {
              v75 = this - 8;
              v76 = 8;
            }

            if (v74 >> 1 == v76)
            {
LABEL_134:
              absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v70);
            }

            if (!v75)
            {
              goto LABEL_179;
            }

            v78 = &v75[v74 >> 1];
            *v78 = v56;
            *(v78 + 2) = 1;
            *v70 = v74 + 2;
          }
        }

        if (++v56 >= *(v3 + 2))
        {
          return this;
        }
      }
    }

LABEL_41:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    this = std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(a3, *(this + 2));
    v3[4] &= 0xFFFFFFFFFFFFFFF8;
    v24 = *(v3 + 2);
    if (v24 < 1)
    {
      return this;
    }

    if (v3[5])
    {
      v25 = a3[1];
      if (v25 >= a3[2])
      {
        std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
      }

      if (!v25)
      {
        goto LABEL_179;
      }

      *(v25 + 80) = 0;
      *(v25 + 48) = 0u;
      *(v25 + 64) = 0u;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0u;
      *v25 = 0u;
      v26 = v25 + 88;
      a3[1] = v26;
      if (*a3 == v26)
      {
        goto LABEL_179;
      }

      *(v26 - 88) = 2;
      *(v26 - 80) = 0;
      this = (v26 - 72);
      v27 = *(v26 - 72);
      if (v27)
      {
        v28 = *(v26 - 64);
        v29 = *(v26 - 56);
      }

      else
      {
        v28 = v26 - 64;
        v29 = 8;
      }

      if (v27 >> 1 == v29)
      {
LABEL_180:
        absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
      }

      if (!v28)
      {
        goto LABEL_179;
      }

      v30 = v28 + 8 * (v27 >> 1);
      *v30 = 0;
      *(v30 + 4) = 257;
      *this = v27 + 2;
      v24 = *(v3 + 2);
      if (v24 < 2)
      {
        return this;
      }
    }

    else
    {
      v3[3] &= ~1uLL;
      if (v24 < 2)
      {
        return this;
      }
    }

    v31 = *(v3 + 3);
    if (v31 <= 0x1F)
    {
      if ((v3[5] >> v31))
      {
        v32 = a3[1];
        if (v32 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v32)
        {
          goto LABEL_179;
        }

        *(v32 + 80) = 0;
        *(v32 + 48) = 0u;
        *(v32 + 64) = 0u;
        *(v32 + 16) = 0u;
        *(v32 + 32) = 0u;
        *v32 = 0u;
        v33 = v32 + 88;
        a3[1] = v33;
        if (*a3 == v33)
        {
          goto LABEL_179;
        }

        *(v33 - 88) = 2;
        *(v33 - 80) = 1;
        this = (v33 - 72);
        v34 = *(v33 - 72);
        if (v34)
        {
          v35 = *(v33 - 64);
          v36 = *(v33 - 56);
        }

        else
        {
          v35 = v33 - 64;
          v36 = 8;
        }

        if (v34 >> 1 == v36)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
        }

        if (!v35)
        {
          goto LABEL_179;
        }

        v37 = v35 + 8 * (v34 >> 1);
        *v37 = 1;
        *(v37 + 4) = 257;
        *this = v34 + 2;
        v24 = *(v3 + 2);
        if (v24 < 3)
        {
          return this;
        }
      }

      else
      {
        v3[3] &= ~2uLL;
        if (v24 < 3)
        {
          return this;
        }
      }

      v38 = 2 * *(v3 + 3);
      if (v38 <= 0x1F)
      {
        if (((v3[5] >> v38) & 1) == 0)
        {
          v3[3] &= ~4uLL;
          if (v24 < 4)
          {
            return this;
          }

LABEL_87:
          v46 = 3;
          while (1)
          {
            v47 = *(v3 + 3) * v46;
            if (v47 >= 0x20)
            {
              break;
            }

            if (((v3[5] >> v47) & 1) == 0)
            {
LABEL_183:
              abort();
            }

            v48 = a3[1];
            if (v48 >= a3[2])
            {
              std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
            }

            if (!v48)
            {
              break;
            }

            *(v48 + 80) = 0;
            *(v48 + 48) = 0u;
            *(v48 + 64) = 0u;
            *(v48 + 16) = 0u;
            *(v48 + 32) = 0u;
            v49 = v48 + 88;
            *v48 = 0u;
            a3[1] = v49;
            if (*a3 == v49)
            {
              break;
            }

            *v48 = 2;
            *(v48 + 8) = v46;
            *(v48 + 12) = 0;
            this = (v48 + 16);
            v50 = *(v48 + 16);
            if (v50)
            {
              v51 = *(v49 - 64);
              v52 = *(v49 - 56);
            }

            else
            {
              v51 = v49 - 64;
              v52 = 8;
            }

            if (v50 >> 1 == v52)
            {
              absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
            }

            if (!v51)
            {
              break;
            }

            v53 = v51 + 8 * (v50 >> 1);
            *v53 = v46;
            *(v53 + 4) = 257;
            *this = v50 + 2;
            if (++v46 >= *(v3 + 2))
            {
              return this;
            }
          }

          goto LABEL_179;
        }

        v39 = a3[1];
        if (v39 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (v39)
        {
          *(v39 + 80) = 0;
          *(v39 + 48) = 0u;
          *(v39 + 64) = 0u;
          *(v39 + 16) = 0u;
          *(v39 + 32) = 0u;
          *v39 = 0u;
          v40 = v39 + 88;
          a3[1] = v40;
          if (*a3 != v40)
          {
            *(v40 - 88) = 2;
            *(v40 - 80) = 2;
            this = (v40 - 72);
            v42 = *(v40 - 72);
            if (v42)
            {
              v43 = *(v40 - 64);
              v44 = *(v40 - 56);
            }

            else
            {
              v43 = v40 - 64;
              v44 = 8;
            }

            if (v42 >> 1 == v44)
            {
              absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
            }

            if (v43)
            {
              v45 = v43 + 8 * (v42 >> 1);
              *v45 = 2;
              *(v45 + 4) = 257;
              *this = v42 + 2;
              if (*(v3 + 2) < 4)
              {
                return this;
              }

              goto LABEL_87;
            }
          }
        }
      }
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  this = std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(a3, *(this + 2));
  *(v3 + 3) = vandq_s8(*(v3 + 3), vdupq_n_s64(0xFFFFFFFFFFFFFFF8));
  v6 = *(v3 + 2);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v57 = *(v3 + 3) * v7;
      if (v57 >= 0x20)
      {
        goto LABEL_179;
      }

      if ((v3[5] >> v57))
      {
        break;
      }

LABEL_132:
      if (++v7 >= v6)
      {
        return this;
      }
    }

    v58 = a3[1];
    if (v58 >= a3[2])
    {
      std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
    }

    if (!v58)
    {
      goto LABEL_179;
    }

    *(v58 + 80) = 0;
    *(v58 + 48) = 0u;
    *(v58 + 64) = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0u;
    this = (v58 + 88);
    *v58 = 0u;
    a3[1] = this;
    if (*a3 == this)
    {
      goto LABEL_179;
    }

    *v58 = 1;
    *(v58 + 8) = v7;
    *(v58 + 12) = 0;
    if (v8)
    {
      v59 = *(v58 + 16);
      if (v59)
      {
        v60 = *(v58 + 24);
        v61 = *(v58 + 32);
      }

      else
      {
        v60 = v58 + 24;
        v61 = 8;
      }

      if (v59 >> 1 == v61)
      {
        absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>((v58 + 16));
      }

      if (!v60)
      {
        goto LABEL_179;
      }

      v64 = v60 + 8 * (v59 >> 1);
      *v64 = v9;
      *(v64 + 4) = 1;
      *(v58 + 16) = v59 + 2;
      v62 = (v58 + 16);
      v63 = *(this - 9);
      if ((v63 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      *(v58 + 4) = 1;
      v62 = (v58 + 16);
      v63 = *(this - 9);
      if ((v63 & 1) == 0)
      {
LABEL_125:
        v65 = v62 + 1;
        v66 = 8;
LABEL_128:
        if (v63 >> 1 == v66)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v62);
        }

        if (!v65)
        {
          goto LABEL_179;
        }

        v67 = &v65[v63 >> 1];
        *v67 = v7;
        *(v67 + 2) = 256;
        *v62 = v63 + 2;
        if (v7 >= 3)
        {
          goto LABEL_183;
        }

        v8 = 1;
        v3[3] |= 1 << v7;
        v6 = *(v3 + 2);
        v9 = v7;
        goto LABEL_132;
      }
    }

    v65 = *(this - 8);
    v66 = *(this - 7);
    goto LABEL_128;
  }

  return this;
}

void webrtc::ScalabilityStructureKeySvc::OnEncodeDone(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 16) = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (v6 == 1)
  {
    if (v7 >= 3)
    {
      abort();
    }

    *(a1 + 32) |= 1 << v7;
  }

  *(a3 + 56) = 0;
  *(a3 + 8) = 0;
  v8 = (a3 + 8);
  *(a3 + 104) = 0;
  *(a3 + 80) = 0;
  *(a3 + 176) = 0;
  v37 = (a3 + 176);
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0xFFFFFFFFLL;
  *a3 = v7;
  *(a3 + 4) = v6;
  if (a3 + 104 == a2 + 16)
  {
    goto LABEL_71;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = (a2 + 24);
  }

  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>((a3 + 104), v10, v9 >> 1);
  for (i = *v8; ; LOBYTE(i) = 0)
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 12) * v12;
    v14 = 10;
    if (i)
    {
      v14 = *(a3 + 24);
    }

    if (v14 < v13)
    {
      if (2 * v14 <= v13)
      {
        v15 = *(a1 + 12) * v12;
      }

      else
      {
        v15 = 2 * v14;
      }

      if (!(v15 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v12 >= 1)
    {
      v16 = *(a1 + 12);
      if (v16 >= 1)
      {
        v17 = 0;
        do
        {
          v18 = *(a2 + 8);
          if ((*(a2 + 4) & 1) != 0 || *a2 == 1)
          {
            v19 = v18 <= v17;
          }

          else
          {
            v19 = v18 == v17 && *(a2 + 12) <= 0;
          }

          if (!v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = 2;
          }

          v39 = v21;
          v22 = *(a3 + 8);
          v23 = *(a3 + 16);
          if (v22)
          {
            v24 = *(a3 + 24);
          }

          else
          {
            v23 = a3 + 16;
            v24 = 10;
          }

          if (v22 >> 1 == v24)
          {
            absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>((a3 + 8));
          }

          if (!v23)
          {
            goto LABEL_70;
          }

          *(v23 + 4 * (v22 >> 1)) = v21;
          *v8 = v22 + 2;
          if (v16 >= 2)
          {
            v25 = 1;
            do
            {
              v26 = *(a2 + 8);
              if ((*(a2 + 4) & 1) != 0 || *a2 == 1)
              {
                v29 = 2 * (v26 <= v17);
              }

              else if (v26 == v17)
              {
                v27 = *(a2 + 12);
                v28 = v25 == v27 ? 1 : 2;
                v29 = v27 <= v25 ? v28 : 0;
              }

              else
              {
                v29 = 0;
              }

              v39 = v29;
              v30 = *(a3 + 8);
              v31 = *(a3 + 16);
              if (v30)
              {
                v32 = *(a3 + 24);
              }

              else
              {
                v31 = a3 + 16;
                v32 = 10;
              }

              if (v30 >> 1 == v32)
              {
                absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>((a3 + 8));
              }

              if (!v31)
              {
                goto LABEL_70;
              }

              *(v31 + 4 * (v30 >> 1)) = v29;
              *v8 = v30 + 2;
            }

            while (++v25 < v16);
          }

          v12 = *(a1 + 8);
        }

        while (++v17 < v12);
      }
    }

    v38 = 0;
    std::vector<BOOL>::assign(v37, v12, &v38);
    if ((*(a2 + 4) & 1) == 0 && *a2 != 1)
    {
      break;
    }

    v34 = *(a2 + 8);
    v35 = *(a1 + 8);
    if (v34 >= v35)
    {
      goto LABEL_69;
    }

    v36 = *(a3 + 176);
    while (*(a3 + 184) > v34)
    {
      *(v36 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      if (v35 == ++v34)
      {
        goto LABEL_69;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  if (*(a2 + 12))
  {
    goto LABEL_69;
  }

  v33 = *(a2 + 8);
  if (*(a3 + 184) <= v33)
  {
    goto LABEL_70;
  }

  *(*v37 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
LABEL_69:
  *(a3 + 200) = *(a1 + 40);
}

uint64_t webrtc::ScalabilityStructureKeySvc::OnRatesUpdated(uint64_t this, const webrtc::VideoBitrateAllocation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 8);
  if (v8 > 0)
  {
    if (*(a2 + 8))
    {
      v9 = *(this + 40);
      if (*(a2 + 1))
      {
        v10 = v9 | 1;
        *(this + 40) = v9 | 1;
        if ((*(this + 24) & 1) == 0)
        {
          *(this + 16) = 0;
        }

        v11 = *(this + 12);
        if (v11 > 1)
        {
          if (*(a2 + 16) == 1 && *(a2 + 3))
          {
            v10 = v9 | 3;
            if (v11 != 2)
            {
              if (*(a2 + 24) == 1 && *(a2 + 5))
              {
                v10 = v9 | 7;
                if (v11 != 3)
                {
                  if (*(a2 + 32) == 1 && *(a2 + 7))
                  {
                    v10 = v9 | 0xF;
                    v12 = 1;
                    goto LABEL_25;
                  }

LABEL_24:
                  v12 = 0;
                  v10 &= ~8uLL;
LABEL_25:
                  v13 = v11;
                  if (v11 == 4)
                  {
                    v13 = 4;
                  }

                  else
                  {
                    if (v12)
                    {
                      *(this + 40) = v10;
                      goto LABEL_164;
                    }

                    switch(v11)
                    {
                      case 5:
                        v10 &= ~0x10uLL;
                        break;
                      case 6:
                        v10 &= 0xFFFFFFFFFFFFFFCFLL;
                        break;
                      case 7:
                        v10 &= 0xFFFFFFFFFFFFFF8FLL;
                        break;
                      case 8:
                        v10 &= 0xFFFFFFFFFFFFFF0FLL;
                        break;
                      case 9:
                        v10 &= 0xFFFFFFFFFFFFFE0FLL;
                        break;
                      case 10:
                        v10 &= 0xFFFFFFFFFFFFFC0FLL;
                        break;
                      case 11:
                        v10 &= 0xFFFFFFFFFFFFF80FLL;
                        break;
                      case 12:
                        v10 &= 0xFFFFFFFFFFFFF00FLL;
                        break;
                      case 13:
                        v10 &= 0xFFFFFFFFFFFFE00FLL;
                        break;
                      case 14:
                        v10 &= 0xFFFFFFFFFFFFC00FLL;
                        break;
                      case 15:
                        v10 &= 0xFFFFFFFFFFFF800FLL;
                        break;
                      case 16:
                        v10 &= 0xFFFFFFFFFFFF000FLL;
                        break;
                      case 17:
                        v10 &= 0xFFFFFFFFFFFE000FLL;
                        break;
                      case 18:
                        v10 &= 0xFFFFFFFFFFFC000FLL;
                        break;
                      case 19:
                        v10 &= 0xFFFFFFFFFFF8000FLL;
                        break;
                      case 20:
                        v10 &= 0xFFFFFFFFFFF0000FLL;
                        break;
                      case 21:
                        v10 &= 0xFFFFFFFFFFE0000FLL;
                        break;
                      case 22:
                        v10 &= 0xFFFFFFFFFFC0000FLL;
                        break;
                      case 23:
                        v10 &= 0xFFFFFFFFFF80000FLL;
                        break;
                      case 24:
                        v10 &= 0xFFFFFFFFFF00000FLL;
                        break;
                      case 25:
                        v10 &= 0xFFFFFFFFFE00000FLL;
                        break;
                      case 26:
                        v10 &= 0xFFFFFFFFFC00000FLL;
                        break;
                      case 27:
                        v10 &= 0xFFFFFFFFF800000FLL;
                        break;
                      case 28:
                        v10 &= 0xFFFFFFFFF000000FLL;
                        break;
                      case 29:
                        v10 &= 0xFFFFFFFFE000000FLL;
                        break;
                      case 30:
                        v10 &= 0xFFFFFFFFC000000FLL;
                        break;
                      case 31:
                        v10 &= 0xFFFFFFFF8000000FLL;
                        break;
                      default:
                        v10 &= 0xFFFFFFFF0000000FLL;
                        if (v11 != 32)
                        {
                          goto LABEL_167;
                        }

                        break;
                    }
                  }

                  goto LABEL_84;
                }

                goto LABEL_23;
              }

LABEL_22:
              v10 &= ~4uLL;
              if (v11 != 3)
              {
                goto LABEL_24;
              }

LABEL_23:
              v13 = 3;
LABEL_84:
              *(this + 40) = v10;
              v14 = 1;
              if (v8 == 1)
              {
                return this;
              }

LABEL_85:
              if (v13 > 0x1F)
              {
                goto LABEL_163;
              }

              v15 = 1 << v13;
              if (*(a2 + 40) == 1 && *(a2 + 9))
              {
                v16 = v10 | v15;
                *(this + 40) = v16;
                if ((*(this + 24) & 2) == 0)
                {
                  *(this + 16) = 0;
                }

                if (v13 <= 1)
                {
                  goto LABEL_120;
                }

                if (*(a2 + 48))
                {
                  if (v13 == 31)
                  {
                    goto LABEL_163;
                  }

                  v17 = 1 << (v13 + 1);
                  if (*(a2 + 11))
                  {
                    v16 |= v17;
                    *(this + 40) = v16;
                    if (v13 == 2)
                    {
                      goto LABEL_120;
                    }

                    if (*(a2 + 56))
                    {
                      if (v13 > 0x1D)
                      {
                        goto LABEL_163;
                      }

                      v18 = 1 << (v13 + 2);
                      if (*(a2 + 13))
                      {
                        v16 |= v18;
                        *(this + 40) = v16;
                        if (v13 == 3)
                        {
                          goto LABEL_120;
                        }

                        if (*(a2 + 64))
                        {
                          if (v13 == 29)
                          {
                            goto LABEL_163;
                          }

                          v19 = 1 << (v13 + 3);
                          if (*(a2 + 15))
                          {
                            v16 |= v19;
                            v20 = 1;
                            goto LABEL_113;
                          }

LABEL_112:
                          v20 = 0;
                          v16 &= ~v19;
LABEL_113:
                          *(this + 40) = v16;
                          if (v13 != 4)
                          {
                            if (v20)
                            {
                              goto LABEL_164;
                            }

                            if (v13 > 0x1B)
                            {
                              goto LABEL_163;
                            }

                            v16 &= ~(1 << (v13 + 4));
                            *(this + 40) = v16;
                            if (v13 != 5)
                            {
                              v21 = v13 - 5;
                              v22 = v13 + 5;
                              while (v22 <= 0x1F)
                              {
                                v16 &= ~(1 << v22);
                                *(this + 40) = v16;
                                ++v22;
                                if (!--v21)
                                {
                                  goto LABEL_120;
                                }
                              }

LABEL_163:
                              abort();
                            }
                          }

LABEL_120:
                          if (v8 < 3)
                          {
                            return this;
                          }

                          if (v13 > 0xF)
                          {
                            goto LABEL_163;
                          }

                          v23 = 2 * v13;
                          v24 = 1 << (2 * v13);
                          if (*(a2 + 72) == 1 && *(a2 + 17))
                          {
                            v10 = v16 | v24;
                            *(this + 40) = v10;
                            if ((*(this + 24) & 4) == 0)
                            {
                              *(this + 16) = 0;
                            }

                            if ((v14 & 1) == 0)
                            {
                              goto LABEL_154;
                            }

                            v25 = v23 | 1;
                            if (*(a2 + 80))
                            {
                              v26 = 1 << v25;
                              if (*(a2 + 19))
                              {
                                v10 |= v26;
                                *(this + 40) = v10;
                                if (v13 == 2)
                                {
                                  goto LABEL_154;
                                }

                                if (*(a2 + 88))
                                {
                                  if (v13 == 15)
                                  {
                                    goto LABEL_163;
                                  }

                                  v27 = 1 << (v23 + 2);
                                  if (*(a2 + 21))
                                  {
                                    v10 |= v27;
                                    *(this + 40) = v10;
                                    if (v13 == 3)
                                    {
                                      goto LABEL_154;
                                    }

                                    v28 = v23 + 3;
                                    if (*(a2 + 96))
                                    {
                                      v29 = 1 << v28;
                                      if (*(a2 + 23))
                                      {
                                        v10 |= v29;
                                        v30 = 1;
                                        goto LABEL_147;
                                      }

LABEL_146:
                                      v30 = 0;
                                      v10 &= ~v29;
LABEL_147:
                                      *(this + 40) = v10;
                                      if (v13 != 4)
                                      {
                                        if ((v30 & 1) == 0)
                                        {
                                          if (v13 > 0xD)
                                          {
                                            goto LABEL_163;
                                          }

                                          v10 &= ~(1 << (v23 + 4));
                                          *(this + 40) = v10;
                                          if (v13 != 5)
                                          {
                                            v31 = v13 - 5;
                                            v32 = v23 + 5;
                                            while (v32 <= 0x1F)
                                            {
                                              v10 &= ~(1 << v32);
                                              *(this + 40) = v10;
                                              ++v32;
                                              if (!--v31)
                                              {
                                                goto LABEL_154;
                                              }
                                            }

                                            goto LABEL_163;
                                          }

                                          goto LABEL_154;
                                        }

LABEL_164:
                                        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 60, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 4);
                                        goto LABEL_165;
                                      }

LABEL_154:
                                      if (v8 == 3)
                                      {
                                        return this;
                                      }

                                      if (*(a2 + 104) == 1)
                                      {
                                        if (v13 > 0xA)
                                        {
                                          goto LABEL_163;
                                        }

                                        v33 = 3 * v13;
                                        v13 = *(a2 + 25);
                                        v34 = 1 << v33;
                                        if (!v13)
                                        {
                                          goto LABEL_166;
                                        }

                                        *(this + 40) = v10 | v34;
                                        __break(1u);
                                      }

                                      if (v13 > 0xA)
                                      {
                                        goto LABEL_163;
                                      }

LABEL_165:
                                      v34 = 1 << (3 * v13);
LABEL_166:
                                      *(this + 40) = v10 & ~v34;
                                      __break(1u);
LABEL_167:
                                      *(this + 40) = v10;
                                      abort();
                                    }

LABEL_145:
                                    v29 = 1 << v28;
                                    goto LABEL_146;
                                  }

LABEL_143:
                                  v10 &= ~v27;
                                  *(this + 40) = v10;
                                  if (v13 == 3)
                                  {
                                    goto LABEL_154;
                                  }

                                  v28 = v23 + 3;
                                  goto LABEL_145;
                                }

LABEL_141:
                                if (v13 == 15)
                                {
                                  goto LABEL_163;
                                }

                                v27 = 1 << (v23 + 2);
                                goto LABEL_143;
                              }

LABEL_140:
                              v10 &= ~v26;
                              *(this + 40) = v10;
                              if (v13 == 2)
                              {
                                goto LABEL_154;
                              }

                              goto LABEL_141;
                            }
                          }

                          else
                          {
                            v10 = v16 & ~v24;
                            *(this + 40) = v10;
                            if (!v14)
                            {
                              goto LABEL_154;
                            }

                            v25 = v23 | 1;
                          }

                          v26 = 1 << v25;
                          goto LABEL_140;
                        }

                        if (v13 == 29)
                        {
                          goto LABEL_163;
                        }

LABEL_111:
                        v19 = 1 << (v13 + 3);
                        goto LABEL_112;
                      }

LABEL_109:
                      v16 &= ~v18;
                      *(this + 40) = v16;
                      if (v13 == 3)
                      {
                        goto LABEL_120;
                      }

                      if (v13 > 0x1C)
                      {
                        goto LABEL_163;
                      }

                      goto LABEL_111;
                    }

LABEL_107:
                    if (v13 > 0x1D)
                    {
                      goto LABEL_163;
                    }

                    v18 = 1 << (v13 + 2);
                    goto LABEL_109;
                  }

LABEL_106:
                  v16 &= ~v17;
                  *(this + 40) = v16;
                  if (v13 == 2)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_107;
                }
              }

              else
              {
                v16 = v10 & ~v15;
                *(this + 40) = v16;
                if (v13 < 2)
                {
                  goto LABEL_120;
                }
              }

              if (v13 == 31)
              {
                goto LABEL_163;
              }

              v17 = 1 << (v13 + 1);
              goto LABEL_106;
            }

LABEL_19:
            v13 = 2;
            goto LABEL_84;
          }

LABEL_18:
          v10 &= ~2uLL;
          if (v11 != 2)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_20:
        v14 = 0;
        v13 = v11;
        if (v8 == 1)
        {
          return this;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v9 = *(this + 40);
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    *(this + 40) = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(this + 12);
    if (v11 >= 2)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  return this;
}

void webrtc::ScalabilityStructureL2T1Key::DependencyStructure(uint64_t a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x200000002;
  *&v13 = 0x100000000;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v13, 2uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 4uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_14;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  *(v4 + 24) = v13;
  *(v4 + 40) = v14;
  *&v13 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v13, 2uLL);
  v12 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 56), &v12, 1uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 1)
  {
    goto LABEL_14;
  }

  *(v5 + 104) = 0;
  if (*(v5 + 112))
  {
    operator delete(*(v5 + 120));
  }

  *(v5 + 112) = 4;
  *(v5 + 120) = 0x200000002;
  v6 = v14;
  *(v5 + 128) = v13;
  *(v5 + 144) = v6;
  *&v13 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 184), &v13, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 2)
  {
    goto LABEL_14;
  }

  *(v7 + 208) = 1;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 4;
  *(v7 + 224) = 0x200000000;
  v8 = v14;
  *(v7 + 232) = v13;
  *(v7 + 248) = v8;
  *&v13 = 0x200000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v13, 2uLL);
  v12 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v12, 1uLL);
  v10 = a1 + 104;
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v10 + 8) - v9) >> 3)) <= 3)
  {
LABEL_14:
    __break(1u);
  }

  *(v9 + 312) = 1;
  if (*(v9 + 320))
  {
    operator delete(*(v9 + 328));
  }

  *(v9 + 320) = 4;
  *(v9 + 328) = 0x200000000;
  v11 = v14;
  *(v9 + 336) = v13;
  *(v9 + 352) = v11;
  *&v13 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 392), &v13, 2uLL);
  v12 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 368), &v12, 1uLL);
}

void webrtc::ScalabilityStructureL2T2Key::DependencyStructure(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x200000004;
  v16 = xmmword_273BA3AF0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v16, 4uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 6uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_20;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 8;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  v6 = v16;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 48) = v17;
  *&v16 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v16, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 1)
  {
    goto LABEL_20;
  }

  *(v7 + 104) = 0;
  if (*(v7 + 112))
  {
    operator delete(*(v7 + 120));
  }

  *(v7 + 112) = 8;
  *(v7 + 120) = xmmword_273BA3CA0;
  *(v7 + 136) = v16;
  *(v7 + 152) = v17;
  *&v16 = 0x300000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 184), &v16, 2uLL);
  v15 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 160), &v15, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_20;
  }

  *(v8 + 208) = 0x100000000;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 8;
  v9 = v16;
  *(v8 + 224) = xmmword_273BA3B70;
  *(v8 + 240) = v9;
  *(v8 + 256) = v17;
  *&v16 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), &v16, 2uLL);
  v15 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v15, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 3)
  {
    goto LABEL_20;
  }

  *(v10 + 312) = 1;
  if (*(v10 + 320))
  {
    operator delete(*(v10 + 328));
  }

  *(v10 + 320) = 8;
  *(v10 + 328) = xmmword_273BA3B20;
  *(v10 + 360) = v17;
  *(v10 + 344) = v16;
  *&v16 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 392), &v16, 2uLL);
  v15 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 368), &v15, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 4)
  {
    goto LABEL_20;
  }

  *(v11 + 416) = 1;
  if (*(v11 + 424))
  {
    operator delete(*(v11 + 432));
  }

  *(v11 + 424) = 8;
  v12 = v16;
  *(v11 + 432) = xmmword_273BA3B20;
  *(v11 + 448) = v12;
  *(v11 + 464) = v17;
  *&v16 = 0x400000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 496), &v16, 2uLL);
  v15 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 472), &v15, 1uLL);
  v14 = a1 + 104;
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v14 + 8) - v13) >> 3)) <= 5)
  {
LABEL_20:
    __break(1u);
  }

  *(v13 + 520) = 0x100000001;
  if (*(v13 + 528))
  {
    operator delete(*(v13 + 536));
  }

  *(v13 + 528) = 8;
  *(v13 + 536) = xmmword_273B8E9C0;
  *(v13 + 568) = v17;
  *(v13 + 552) = v16;
  *&v16 = 0x200000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 600), &v16, 2uLL);
  v15 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 576), &v15, 1uLL);
}

void webrtc::ScalabilityStructureL2T3Key::DependencyStructure(uint64_t a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x200000006;
  v17 = xmmword_273BA3CB0;
  v18 = 0x100000001;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v17, 6uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 0xAuLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_32;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 12;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  *(v4 + 16) = v5;
  *(v4 + 32) = 0x200000002;
  *(v4 + 40) = v17;
  *&v17 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v17, 2uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 1)
  {
    goto LABEL_32;
  }

  *(v6 + 104) = 0;
  if (*(v6 + 112))
  {
    operator delete(*(v6 + 120));
  }

  *(v6 + 112) = 12;
  *(v6 + 120) = xmmword_273B92040;
  *(v6 + 136) = 0;
  *(v6 + 144) = v17;
  *&v17 = 0x700000008;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 184), &v17, 2uLL);
  v16 = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 160), &v16, 1uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 2)
  {
    goto LABEL_32;
  }

  *(v7 + 208) = 0x100000000;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 12;
  *(v7 + 224) = xmmword_273BA3B40;
  *(v7 + 240) = 0;
  *(v7 + 248) = v17;
  *&v17 = 0x300000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v17, 2uLL);
  v16 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v16, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 3)
  {
    goto LABEL_32;
  }

  *(v8 + 312) = 0x200000000;
  if (*(v8 + 320))
  {
    operator delete(*(v8 + 328));
  }

  *(v8 + 320) = 12;
  *(v8 + 328) = xmmword_273B92130;
  *(v8 + 344) = 0;
  *(v8 + 352) = v17;
  *&v17 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 392), &v17, 2uLL);
  v16 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 368), &v16, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 4)
  {
    goto LABEL_32;
  }

  *(v9 + 416) = 0x200000000;
  if (*(v9 + 424))
  {
    operator delete(*(v9 + 432));
  }

  *(v9 + 424) = 12;
  *(v9 + 432) = xmmword_273B92130;
  *(v9 + 448) = 0;
  *(v9 + 456) = v17;
  *&v17 = 0x500000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 496), &v17, 2uLL);
  v16 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 472), &v16, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 5)
  {
    goto LABEL_32;
  }

  *(v10 + 520) = 1;
  if (*(v10 + 528))
  {
    operator delete(*(v10 + 536));
  }

  *(v10 + 528) = 12;
  *(v10 + 536) = xmmword_273BA3B30;
  *(v10 + 552) = 0x200000002;
  *(v10 + 560) = v17;
  *&v17 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 600), &v17, 2uLL);
  v16 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 576), &v16, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 6)
  {
    goto LABEL_32;
  }

  *(v11 + 624) = 1;
  if (*(v11 + 632))
  {
    operator delete(*(v11 + 640));
  }

  *(v11 + 632) = 12;
  *(v11 + 640) = xmmword_273BA3B30;
  *(v11 + 656) = 0x200000002;
  *(v11 + 664) = v17;
  *&v17 = 0x800000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 704), &v17, 2uLL);
  v16 = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 680), &v16, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 7)
  {
    goto LABEL_32;
  }

  *(v12 + 728) = 0x100000001;
  if (*(v12 + 736))
  {
    operator delete(*(v12 + 744));
  }

  *(v12 + 736) = 12;
  *(v12 + 744) = 0u;
  *(v12 + 760) = 0x200000001;
  *(v12 + 768) = v17;
  *&v17 = 0x400000005;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 808), &v17, 2uLL);
  v16 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 784), &v16, 1uLL);
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v13) >> 3)) <= 8)
  {
    goto LABEL_32;
  }

  *(v13 + 832) = 0x200000001;
  if (*(v13 + 840))
  {
    operator delete(*(v13 + 848));
  }

  *(v13 + 840) = 12;
  *(v13 + 848) = 0u;
  *(v13 + 864) = 0x100000000;
  *(v13 + 872) = v17;
  *&v17 = 0x200000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 912), &v17, 2uLL);
  v16 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 888), &v16, 1uLL);
  v15 = a1 + 104;
  v14 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v15 + 8) - v14) >> 3)) <= 9)
  {
LABEL_32:
    __break(1u);
  }

  *(v14 + 936) = 0x200000001;
  if (*(v14 + 944))
  {
    operator delete(*(v14 + 952));
  }

  *(v14 + 944) = 12;
  *(v14 + 952) = 0u;
  *(v14 + 968) = 0x100000000;
  *(v14 + 976) = v17;
  *&v17 = 0x600000007;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 1016), &v17, 2uLL);
  v16 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 992), &v16, 1uLL);
}

void webrtc::ScalabilityStructureL3T1Key::DependencyStructure(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x300000003;
  *v12 = 0x100000000;
  *&v12[8] = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v12, 3uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 6uLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_20;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 6;
  *(v4 + 120) = 0x200000002;
  *(v4 + 128) = 2;
  *(v4 + 132) = *v12;
  *(v4 + 144) = *&v12[12];
  *v12 = 0;
  *&v12[8] = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), v12, 3uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 3)
  {
    goto LABEL_20;
  }

  *(v5 + 312) = 1;
  if (*(v5 + 320))
  {
    operator delete(*(v5 + 328));
  }

  *(v5 + 320) = 6;
  *(v5 + 328) = 0x200000000;
  *(v5 + 336) = 2;
  *(v5 + 352) = *&v12[12];
  *(v5 + 340) = *v12;
  *v12 = 0x100000001;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 392), v12, 3uLL);
  v11 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 368), &v11, 1uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 5)
  {
    goto LABEL_20;
  }

  *(v6 + 520) = 2;
  if (*(v6 + 528))
  {
    operator delete(*(v6 + 536));
  }

  *(v6 + 528) = 6;
  *(v6 + 536) = 0;
  *(v6 + 544) = 2;
  *(v6 + 560) = *&v12[12];
  *(v6 + 548) = *v12;
  *v12 = 0x100000002;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 600), v12, 3uLL);
  v11 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 576), &v11, 1uLL);
  v7 = *(a1 + 104);
  if (*(a1 + 112) == v7)
  {
    goto LABEL_20;
  }

  *v7 = 0;
  if (*(v7 + 8))
  {
    operator delete(*(v7 + 16));
  }

  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  *(v7 + 24) = 0;
  *(v7 + 28) = *v12;
  *(v7 + 40) = *&v12[12];
  *v12 = 0x200000003;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 80), v12, 3uLL);
  v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 56), &v11, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_20;
  }

  *(v8 + 208) = 1;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 6;
  *(v8 + 224) = 0x200000000;
  *(v8 + 232) = 0;
  *(v8 + 236) = *v12;
  *(v8 + 248) = *&v12[12];
  *v12 = 0x300000001;
  *&v12[8] = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), v12, 3uLL);
  v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v11, 1uLL);
  v10 = a1 + 104;
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v10 + 8) - v9) >> 3)) <= 4)
  {
LABEL_20:
    __break(1u);
  }

  *(v9 + 416) = 2;
  if (*(v9 + 424))
  {
    operator delete(*(v9 + 432));
  }

  *(v9 + 424) = 6;
  *(v9 + 432) = 0;
  *(v9 + 440) = 2;
  *(v9 + 444) = *v12;
  *(v9 + 456) = *&v12[12];
  *v12 = 0x100000002;
  *&v12[8] = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 496), v12, 3uLL);
  v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 472), &v11, 1uLL);
}

void webrtc::ScalabilityStructureL3T2Key::DependencyStructure(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x300000006;
  v16 = xmmword_273BA3CC8;
  v17 = 0x200000002;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v16, 6uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 9uLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_29;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 12;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  *(v4 + 120) = v5;
  *(v4 + 136) = 0x200000002;
  *(v4 + 144) = v16;
  *&v16 = 0;
  DWORD2(v16) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), &v16, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 4)
  {
    goto LABEL_29;
  }

  *(v6 + 416) = 1;
  if (*(v6 + 424))
  {
    operator delete(*(v6 + 432));
  }

  *(v6 + 424) = 12;
  *(v6 + 432) = xmmword_273BA3B20;
  *(v6 + 448) = 0x200000002;
  *(v6 + 456) = v16;
  *&v16 = 0x100000001;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 496), &v16, 3uLL);
  v15 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 472), &v15, 1uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 7)
  {
    goto LABEL_29;
  }

  *(v7 + 728) = 2;
  if (*(v7 + 736))
  {
    operator delete(*(v7 + 744));
  }

  *(v7 + 736) = 12;
  *(v7 + 744) = 0u;
  *(v7 + 760) = 0x200000002;
  *(v7 + 768) = v16;
  *&v16 = 0x100000002;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 808), &v16, 3uLL);
  v15 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 784), &v15, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_29;
  }

  *(v8 + 208) = 0x100000000;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 12;
  *(v8 + 224) = xmmword_273BA3B70;
  *(v8 + 240) = 0;
  *(v8 + 248) = v16;
  *&v16 = 0x200000003;
  DWORD2(v16) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), &v16, 3uLL);
  v15 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v15, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 5)
  {
    goto LABEL_29;
  }

  *(v9 + 520) = 0x100000001;
  if (*(v9 + 528))
  {
    operator delete(*(v9 + 536));
  }

  *(v9 + 528) = 12;
  *(v9 + 536) = xmmword_273B8E9C0;
  *(v9 + 552) = 0;
  *(v9 + 560) = v16;
  *&v16 = 0x300000004;
  DWORD2(v16) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 600), &v16, 3uLL);
  v15 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 576), &v15, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 8)
  {
    goto LABEL_29;
  }

  *(v10 + 832) = 0x100000002;
  if (*(v10 + 840))
  {
    operator delete(*(v10 + 848));
  }

  *(v10 + 840) = 12;
  *(v10 + 848) = 0u;
  *(v10 + 864) = 0x100000000;
  *(v10 + 872) = v16;
  *&v16 = 0x400000005;
  DWORD2(v16) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 912), &v16, 3uLL);
  v15 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 888), &v15, 1uLL);
  v11 = *(a1 + 104);
  if (*(a1 + 112) == v11)
  {
    goto LABEL_29;
  }

  *v11 = 0;
  if (*(v11 + 8))
  {
    operator delete(*(v11 + 16));
  }

  *(v11 + 8) = 12;
  *(v11 + 16) = xmmword_273BA3CA0;
  *(v11 + 32) = 0;
  *(v11 + 40) = v16;
  *&v16 = 0x500000006;
  DWORD2(v16) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 80), &v16, 3uLL);
  v15 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 56), &v15, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 3)
  {
    goto LABEL_29;
  }

  *(v12 + 312) = 1;
  if (*(v12 + 320))
  {
    operator delete(*(v12 + 328));
  }

  *(v12 + 320) = 12;
  *(v12 + 328) = xmmword_273BA3B20;
  *(v12 + 344) = 0;
  *(v12 + 352) = v16;
  *&v16 = 0x600000001;
  DWORD2(v16) = 5;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 392), &v16, 3uLL);
  v15 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 368), &v15, 1uLL);
  v14 = a1 + 104;
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v14 + 8) - v13) >> 3)) <= 6)
  {
LABEL_29:
    __break(1u);
  }

  *(v13 + 624) = 2;
  if (*(v13 + 632))
  {
    operator delete(*(v13 + 640));
  }

  *(v13 + 632) = 12;
  *(v13 + 640) = 0u;
  *(v13 + 656) = 0x200000002;
  *(v13 + 664) = v16;
  *&v16 = 0x100000002;
  DWORD2(v16) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 704), &v16, 3uLL);
  v15 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 680), &v15, 1uLL);
}

void webrtc::ScalabilityStructureL3T3Key::DependencyStructure(uint64_t a1@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x300000009;
  v23[0] = xmmword_273BA3CE0;
  v23[1] = unk_273BA3CF0;
  v24 = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v23, 9uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 0xFuLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_47;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 18;
  *&v5 = 0x200000002;
  *(&v5 + 1) = 0x200000002;
  *(v4 + 16) = v5;
  *(v4 + 32) = v5;
  *(v4 + 48) = 2;
  *&v23[0] = 0;
  DWORD2(v23[0]) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), v23, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 5)
  {
    goto LABEL_47;
  }

  *(v6 + 520) = 1;
  if (*(v6 + 528))
  {
    operator delete(*(v6 + 536));
  }

  *(v6 + 528) = 18;
  *&v7 = 0x200000002;
  *(&v7 + 1) = 0x200000002;
  *(v6 + 536) = xmmword_273BA3B30;
  *(v6 + 552) = v7;
  *(v6 + 568) = 2;
  *&v23[0] = 0x100000001;
  DWORD2(v23[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 600), v23, 3uLL);
  v22 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 576), &v22, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 0xA)
  {
    goto LABEL_47;
  }

  *(v8 + 1040) = 2;
  if (*(v8 + 1048))
  {
    operator delete(*(v8 + 1056));
  }

  *(v8 + 1048) = 18;
  *(v8 + 1056) = 0u;
  *(v8 + 1072) = xmmword_273BA3B20;
  *(v8 + 1088) = 2;
  *&v23[0] = 0x100000002;
  DWORD2(v23[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 1120), v23, 3uLL);
  v22 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 1096), &v22, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 3)
  {
    goto LABEL_47;
  }

  *(v9 + 312) = 0x200000000;
  if (*(v9 + 320))
  {
    operator delete(*(v9 + 328));
  }

  *(v9 + 320) = 18;
  *(v9 + 328) = xmmword_273B92130;
  *(v9 + 344) = 0;
  *(v9 + 352) = 0;
  *(v9 + 360) = 0;
  *&v23[0] = 0x200000003;
  DWORD2(v23[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 392), v23, 3uLL);
  v22 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 368), &v22, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 8)
  {
    goto LABEL_47;
  }

  *(v10 + 832) = 0x200000001;
  if (*(v10 + 840))
  {
    operator delete(*(v10 + 848));
  }

  *(v10 + 840) = 18;
  *(v10 + 848) = 0u;
  *(v10 + 864) = xmmword_273BA3B70;
  *(v10 + 880) = 0;
  *&v23[0] = 0x300000004;
  DWORD2(v23[0]) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 912), v23, 3uLL);
  v22 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 888), &v22, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 0xD)
  {
    goto LABEL_47;
  }

  *(v11 + 1352) = 0x200000002;
  if (*(v11 + 1360))
  {
    operator delete(*(v11 + 1368));
  }

  *(v11 + 1360) = 18;
  *(v11 + 1368) = 0u;
  *(v11 + 1384) = 0u;
  *(v11 + 1400) = 1;
  *&v23[0] = 0x400000005;
  DWORD2(v23[0]) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 1432), v23, 3uLL);
  v22 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 1408), &v22, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 2)
  {
    goto LABEL_47;
  }

  *(v12 + 208) = 0x100000000;
  if (*(v12 + 216))
  {
    operator delete(*(v12 + 224));
  }

  *(v12 + 216) = 18;
  *(v12 + 224) = xmmword_273BA3B40;
  *(v12 + 240) = 0;
  *(v12 + 248) = 0;
  *(v12 + 256) = 0;
  *&v23[0] = 0x500000006;
  DWORD2(v23[0]) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 288), v23, 3uLL);
  v22 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 264), &v22, 1uLL);
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v13) >> 3)) <= 7)
  {
    goto LABEL_47;
  }

  *(v13 + 728) = 0x100000001;
  if (*(v13 + 736))
  {
    operator delete(*(v13 + 744));
  }

  *(v13 + 736) = 18;
  *(v13 + 744) = 0;
  *(v13 + 752) = 0;
  *(v13 + 760) = xmmword_273B91FE0;
  *(v13 + 776) = 0;
  *&v23[0] = 0x600000007;
  DWORD2(v23[0]) = 5;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 808), v23, 3uLL);
  v22 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 784), &v22, 1uLL);
  v14 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v14) >> 3)) <= 0xC)
  {
    goto LABEL_47;
  }

  *(v14 + 1248) = 0x100000002;
  if (*(v14 + 1256))
  {
    operator delete(*(v14 + 1264));
  }

  *(v14 + 1256) = 18;
  *(v14 + 1264) = 0u;
  *(v14 + 1280) = xmmword_273B8E9C0;
  *(v14 + 1296) = 2;
  *&v23[0] = 0x700000008;
  DWORD2(v23[0]) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 1328), v23, 3uLL);
  v22 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 1304), &v22, 1uLL);
  v15 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v15) >> 3)) <= 4)
  {
    goto LABEL_47;
  }

  *(v15 + 416) = 0x200000000;
  if (*(v15 + 424))
  {
    operator delete(*(v15 + 432));
  }

  *(v15 + 424) = 18;
  *(v15 + 432) = xmmword_273B92130;
  *(v15 + 448) = 0;
  *(v15 + 456) = 0;
  *(v15 + 464) = 0;
  *&v23[0] = 0x800000009;
  DWORD2(v23[0]) = 7;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 496), v23, 3uLL);
  v22 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 472), &v22, 1uLL);
  v16 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v16) >> 3)) <= 9)
  {
    goto LABEL_47;
  }

  *(v16 + 936) = 0x200000001;
  if (*(v16 + 944))
  {
    operator delete(*(v16 + 952));
  }

  *(v16 + 944) = 18;
  *(v16 + 952) = 0;
  *(v16 + 960) = 0;
  *(v16 + 968) = xmmword_273BA3B70;
  *(v16 + 984) = 0;
  *&v23[0] = 0x90000000ALL;
  DWORD2(v23[0]) = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v16 + 1016), v23, 3uLL);
  v22 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v16 + 992), &v22, 1uLL);
  v17 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v17) >> 3)) <= 0xE)
  {
    goto LABEL_47;
  }

  *(v17 + 1456) = 0x200000002;
  if (*(v17 + 1464))
  {
    operator delete(*(v17 + 1472));
  }

  *(v17 + 1464) = 18;
  *(v17 + 1472) = 0u;
  *(v17 + 1488) = 0u;
  *(v17 + 1504) = 1;
  *&v23[0] = 0xA0000000BLL;
  DWORD2(v23[0]) = 9;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 1536), v23, 3uLL);
  v22 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 1512), &v22, 1uLL);
  v18 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v18) >> 3)) <= 1)
  {
    goto LABEL_47;
  }

  *(v18 + 104) = 0;
  if (*(v18 + 112))
  {
    operator delete(*(v18 + 120));
  }

  *(v18 + 112) = 18;
  *(v18 + 120) = xmmword_273B92040;
  *(v18 + 136) = 0;
  *(v18 + 144) = 0;
  *(v18 + 152) = 0;
  *&v23[0] = 0xB0000000CLL;
  DWORD2(v23[0]) = 10;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 184), v23, 3uLL);
  v22 = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 160), &v22, 1uLL);
  v19 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v19) >> 3)) <= 6)
  {
    goto LABEL_47;
  }

  *(v19 + 624) = 1;
  if (*(v19 + 632))
  {
    operator delete(*(v19 + 640));
  }

  *(v19 + 632) = 18;
  *(v19 + 640) = xmmword_273BA3B30;
  *(v19 + 656) = xmmword_273BA3CA0;
  *(v19 + 672) = 0;
  *&v23[0] = 0xC00000001;
  DWORD2(v23[0]) = 11;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v19 + 704), v23, 3uLL);
  v22 = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v19 + 680), &v22, 1uLL);
  v21 = a1 + 104;
  v20 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v21 + 8) - v20) >> 3)) <= 0xB)
  {
LABEL_47:
    __break(1u);
  }

  *(v20 + 1144) = 2;
  if (*(v20 + 1152))
  {
    operator delete(*(v20 + 1160));
  }

  *(v20 + 1152) = 18;
  *(v20 + 1160) = 0;
  *(v20 + 1168) = 0;
  *(v20 + 1176) = xmmword_273BA3B20;
  *(v20 + 1192) = 2;
  *&v23[0] = 0x100000002;
  DWORD2(v23[0]) = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v20 + 1224), v23, 3uLL);
  v22 = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v20 + 1200), &v22, 1uLL);
}

double webrtc::ScalabilityStructureL2T2KeyShift::StreamConfig@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x200000002;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(a1 + 12) = v2;
  *&result = 0x100000002;
  *(a1 + 28) = xmmword_273BA3D10;
  *(a1 + 8) = 1;
  return result;
}

void webrtc::ScalabilityStructureL2T2KeyShift::DependencyStructure(uint64_t a1@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x200000004;
  v22 = xmmword_273BA3AF0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v22, 4uLL);
  v4 = *(a1 + 112);
  v5 = v4 - *v3;
  v6 = 0x4EC4EC4EC4EC4EC5 * (v5 >> 3);
  if (v6 > 6)
  {
    if (v5 == 728)
    {
      v7 = *(a1 + 112);
      goto LABEL_16;
    }

    v7 = *v3 + 728;
    while (1)
    {
      if (v4 == v7)
      {
        *(a1 + 112) = v7;
        goto LABEL_16;
      }

      if (*(v4 - 24))
      {
        operator delete(*(v4 - 16));
        if (*(v4 - 48))
        {
LABEL_13:
          operator delete(*(v4 - 40));
          if ((*(v4 - 96) & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      else if (*(v4 - 48))
      {
        goto LABEL_13;
      }

      if ((*(v4 - 96) & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_14:
      operator delete(*(v4 - 88));
LABEL_6:
      v4 -= 104;
    }
  }

  std::vector<webrtc::FrameDependencyTemplate>::__append(v3, 7 - v6);
  v7 = *(a1 + 112);
LABEL_16:
  v8 = *v3;
  if (v7 == v8)
  {
    goto LABEL_38;
  }

  *v8 = 0;
  if (*(v8 + 8))
  {
    operator delete(*(v8 + 16));
  }

  *(v8 + 8) = 8;
  *&v9 = 0x200000002;
  *(&v9 + 1) = 0x200000002;
  v10 = v22;
  *(v8 + 16) = v9;
  *(v8 + 32) = v10;
  *(v8 + 48) = v23;
  *&v22 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 80), &v22, 2uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 1)
  {
    goto LABEL_38;
  }

  *(v11 + 104) = 0;
  if (*(v11 + 112))
  {
    operator delete(*(v11 + 120));
  }

  *(v11 + 112) = 8;
  *(v11 + 120) = xmmword_273BA3CA0;
  *(v11 + 136) = v22;
  *(v11 + 152) = v23;
  *&v22 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 184), &v22, 2uLL);
  v21 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 160), &v21, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 2)
  {
    goto LABEL_38;
  }

  *(v12 + 208) = 0;
  if (*(v12 + 216))
  {
    operator delete(*(v12 + 224));
  }

  *(v12 + 216) = 8;
  v13 = v22;
  *(v12 + 224) = xmmword_273BA3CA0;
  *(v12 + 240) = v13;
  *(v12 + 256) = v23;
  *&v22 = 0x100000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 288), &v22, 2uLL);
  v21 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 264), &v21, 1uLL);
  v14 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v14) >> 3)) <= 3)
  {
    goto LABEL_38;
  }

  *(v14 + 312) = 0x100000000;
  if (*(v14 + 320))
  {
    operator delete(*(v14 + 328));
  }

  *(v14 + 320) = 8;
  *(v14 + 328) = xmmword_273BA3B70;
  *(v14 + 360) = v23;
  *(v14 + 344) = v22;
  *&v22 = 0x300000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 392), &v22, 2uLL);
  v21 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 368), &v21, 1uLL);
  v15 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v15) >> 3)) <= 4)
  {
    goto LABEL_38;
  }

  *(v15 + 416) = 1;
  if (*(v15 + 424))
  {
    operator delete(*(v15 + 432));
  }

  *(v15 + 424) = 8;
  v16 = v22;
  *(v15 + 432) = xmmword_273BA3B20;
  *(v15 + 448) = v16;
  *(v15 + 464) = v23;
  *&v22 = 0x100000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 496), &v22, 2uLL);
  v21 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 472), &v21, 1uLL);
  v17 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v17) >> 3)) <= 5)
  {
    goto LABEL_38;
  }

  *(v17 + 520) = 1;
  if (*(v17 + 528))
  {
    operator delete(*(v17 + 536));
  }

  *(v17 + 528) = 8;
  *(v17 + 536) = xmmword_273BA3B20;
  *(v17 + 568) = v23;
  *(v17 + 552) = v22;
  *&v22 = 0x400000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 600), &v22, 2uLL);
  v21 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 576), &v21, 1uLL);
  v19 = a1 + 104;
  v18 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v19 + 8) - v18) >> 3)) <= 6)
  {
LABEL_38:
    __break(1u);
  }

  *(v18 + 624) = 0x100000001;
  if (*(v18 + 632))
  {
    operator delete(*(v18 + 640));
  }

  *(v18 + 632) = 8;
  v20 = v22;
  *(v18 + 640) = xmmword_273B8E9C0;
  *(v18 + 656) = v20;
  *(v18 + 672) = v23;
  *&v22 = 0x200000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 704), &v22, 2uLL);
  v21 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 680), &v21, 1uLL);
}

void *webrtc::ScalabilityStructureL2T2KeyShift::NextFrameConfig@<X0>(webrtc::ScalabilityStructureL2T2KeyShift *this@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(a3, 2uLL);
  if (a2)
  {
    *(this + 2) = 0;
    goto LABEL_3;
  }

  v9 = *(this + 2);
  switch(v9)
  {
    case 2:
      v20 = *(this + 2);
      if ((v20 & 2) != 0)
      {
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v8)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        v8 += 88;
        a3[1] = v8;
        if (*a3 == v8)
        {
          goto LABEL_118;
        }

        *(v8 - 80) = 0x100000000;
        result = (v8 - 72);
        v23 = *(v8 - 72);
        if (v23)
        {
          v24 = *(v8 - 64);
          v8 = *(v8 - 56);
        }

        else
        {
          v24 = v8 - 64;
          v8 = 8;
        }

        if (v23 >> 1 == v8)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result);
        }

        if (!v24)
        {
          goto LABEL_118;
        }

        v28 = v24 + 8 * (v23 >> 1);
        *v28 = 0;
        *(v28 + 4) = 1;
        *result = v23 + 2;
        v20 = *(this + 2);
      }

      if ((v20 & 4) != 0)
      {
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v8)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        v8 += 88;
        a3[1] = v8;
        if (*a3 == v8)
        {
          goto LABEL_118;
        }

        *(v8 - 80) = 1;
        result = (v8 - 72);
        v29 = *(v8 - 72);
        if (v29)
        {
          v30 = *(v8 - 64);
          v8 = *(v8 - 56);
        }

        else
        {
          v30 = v8 - 64;
          v8 = 8;
        }

        if (v29 >> 1 == v8)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result);
        }

        if (!v30)
        {
          goto LABEL_118;
        }

        v33 = v30 + 8 * (v29 >> 1);
        *v33 = 1;
        *(v33 + 4) = 257;
        *result = v29 + 2;
      }

      v34 = *a3;
      v8 = a3[1];
      if (*a3 == v8 && (*(this + 16) & 1) != 0)
      {
        if (v34 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v34)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        v8 += 88;
        a3[1] = v8;
        if (v34 == v8)
        {
          goto LABEL_118;
        }

        *(v8 - 80) = 0;
        result = (v8 - 72);
        v37 = *(v8 - 72);
        if (v37)
        {
          v38 = *(v8 - 64);
          v8 = *(v8 - 56);
        }

        else
        {
          v38 = v8 - 64;
          v8 = 8;
        }

        if (v37 >> 1 == v8)
        {
LABEL_120:
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result);
        }

        if (!v38)
        {
          goto LABEL_118;
        }

        v40 = v38 + 8 * (v37 >> 1);
        *v40 = 0;
        *(v40 + 4) = 257;
        *result = v37 + 2;
      }

      goto LABEL_117;
    case 1:
      v19 = *(this + 2);
      if (v19)
      {
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v8)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        v8 += 88;
        a3[1] = v8;
        if (*a3 == v8)
        {
          goto LABEL_118;
        }

        *(v8 - 80) = 0;
        result = (v8 - 72);
        v21 = *(v8 - 72);
        if (v21)
        {
          v22 = *(v8 - 64);
          v8 = *(v8 - 56);
        }

        else
        {
          v22 = v8 - 64;
          v8 = 8;
        }

        if (v21 >> 1 == v8)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result);
        }

        if (!v22)
        {
          goto LABEL_118;
        }

        v25 = v22 + 8 * (v21 >> 1);
        *v25 = 0;
        *(v25 + 4) = 257;
        *result = v21 + 2;
        v19 = *(this + 2);
      }

      if ((v19 & 8) != 0)
      {
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v8)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        v8 += 88;
        a3[1] = v8;
        if (*a3 == v8)
        {
          goto LABEL_118;
        }

        *(v8 - 80) = 0x100000001;
        result = (v8 - 72);
        v26 = *(v8 - 72);
        if (v26)
        {
          v27 = *(v8 - 64);
          v8 = *(v8 - 56);
        }

        else
        {
          v27 = v8 - 64;
          v8 = 8;
        }

        if (v26 >> 1 == v8)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result);
        }

        if (!v27)
        {
          goto LABEL_118;
        }

        v31 = v27 + 8 * (v26 >> 1);
        *v31 = 1;
        *(v31 + 4) = 1;
        *result = v26 + 2;
      }

      v32 = *a3;
      v8 = a3[1];
      if (*a3 == v8 && (*(this + 16) & 4) != 0)
      {
        if (v32 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v32)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        v8 += 88;
        a3[1] = v8;
        if (v32 == v8)
        {
          goto LABEL_118;
        }

        *(v8 - 80) = 1;
        result = (v8 - 72);
        v35 = *(v8 - 72);
        if (v35)
        {
          v36 = *(v8 - 64);
          v8 = *(v8 - 56);
        }

        else
        {
          v36 = v8 - 64;
          v8 = 8;
        }

        if (v35 >> 1 == v8)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result);
        }

        if (!v36)
        {
          goto LABEL_118;
        }

        v39 = v36 + 8 * (v35 >> 1);
        *v39 = 1;
        *(v39 + 4) = 257;
        *result = v35 + 2;
      }

      *(this + 2) = 2;
      return result;
    case 0:
LABEL_3:
      v7 = *(this + 2);
      if (v7)
      {
        v8 = a3[1];
        if (v8 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v8)
        {
          goto LABEL_118;
        }

        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        result = (v8 + 88);
        a3[1] = result;
        v8 = *a3;
        if (*a3 == result)
        {
          goto LABEL_118;
        }

        *(result - 10) = 0;
        v8 = (result - 9);
        v10 = *(result - 9);
        if (v10)
        {
          v11 = *(result - 8);
          v12 = *(result - 7);
        }

        else
        {
          v11 = result - 8;
          v12 = 8;
        }

        if (v10 >> 1 == v12)
        {
          absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result - 9);
        }

        if (!v11)
        {
          goto LABEL_118;
        }

        v13 = &v11[v10 >> 1];
        *v13 = 0;
        *(v13 + 2) = 256;
        *v8 = v10 + 2;
        *(result - 84) = 1;
        v7 = *(this + 2);
      }

      if ((v7 & 4) == 0)
      {
LABEL_117:
        *(this + 2) = 1;
        return result;
      }

      v8 = a3[1];
      if (v8 >= a3[2])
      {
        std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
      }

      if (v8)
      {
        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *v8 = 0u;
        result = (v8 + 88);
        a3[1] = result;
        v14 = *a3;
        if (*a3 != result)
        {
          *(v8 + 8) = 1;
          v8 += 16;
          v15 = *(result - 9);
          if (v15)
          {
            v16 = *(result - 8);
            v17 = *(result - 7);
          }

          else
          {
            v16 = result - 8;
            v17 = 8;
          }

          if (v15 >> 1 == v17)
          {
            absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(result - 9);
          }

          if (v16)
          {
            v18 = &v16[v15 >> 1];
            *v18 = 1;
            *(v18 + 2) = 256;
            *v8 = v15 + 2;
            v8 = *(this + 16);
            if ((v8 & 1) == 0)
            {
              if (v14 != result)
              {
                *(result - 84) = 1;
                *(this + 2) = 1;
                return result;
              }

              goto LABEL_118;
            }

            if (v14 != result)
            {
              v8 = (result - 9);
              v41 = *(result - 9);
              if (v41)
              {
                v42 = *(result - 8);
                v43 = *(result - 7);
              }

              else
              {
                v42 = result - 8;
                v43 = 8;
              }

              if (v41 >> 1 == v43)
              {
                goto LABEL_119;
              }

              if (v42)
              {
                v44 = &v42[v41 >> 1];
                *v44 = 0;
                *(v44 + 2) = 1;
                *v8 = v41 + 2;
                goto LABEL_117;
              }
            }
          }
        }
      }

LABEL_118:
      __break(1u);
LABEL_119:
      result = v8;
      goto LABEL_120;
  }

  return result;
}

uint64_t *webrtc::ScalabilityStructureL2T2KeyShift::OnEncodeDone@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[7] = 0;
  a2[1] = 0;
  v4 = a2 + 1;
  a2[13] = 0;
  a2[10] = 0;
  a2[22] = 0;
  v5 = a2 + 22;
  a2[23] = 0;
  a2[24] = 0;
  a2[25] = 0xFFFFFFFFLL;
  v6 = *(a1 + 8);
  *a2 = v6;
  if (a2 + 13 == (a1 + 16))
  {
    v9 = v6;
    v10 = a2 + 2;
    v11 = *(a1 + 4);
    if (v11 == 1)
    {
LABEL_6:
      v12 = v9 <= 0;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 24);
    }

    absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>(a2 + 13, v8, v7 >> 1);
    v9 = *(a1 + 8);
    v10 = a2 + 2;
    v11 = *(a1 + 4);
    if (v11 == 1)
    {
      goto LABEL_6;
    }
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 12) <= 0;
  }

LABEL_11:
  if (!v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = a2[1];
  v16 = a2[2];
  if ((v15 & 1) == 0)
  {
    v16 = v10;
  }

  v17 = 10;
  if (v15)
  {
    v17 = a2[3];
  }

  if (v15 >> 1 == v17)
  {
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>(v4);
  }

  if (!v16)
  {
    goto LABEL_72;
  }

  *(v16 + (v15 >> 1)) = v14;
  *v4 = v15 + 2;
  if (v11)
  {
    v18 = 2 * (v9 < 1);
    v19 = 1;
  }

  else if (v9)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v20 = *(a1 + 12);
    if (v20 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v12 = v20 <= 1;
    v19 = 0;
    v9 = 0;
    if (!v12)
    {
      v18 = 0;
    }
  }

  v21 = a2[1];
  v22 = a2[2];
  if ((v21 & 1) == 0)
  {
    v22 = v10;
  }

  v23 = 10;
  if (v21)
  {
    v23 = a2[3];
  }

  if (v21 >> 1 == v23)
  {
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>(v4);
  }

  if (!v22)
  {
    goto LABEL_72;
  }

  *(v22 + (v21 >> 1)) = v18;
  *v4 = v21 + 2;
  if (v19)
  {
    v24 = 2 * (v9 < 2);
    v25 = 1;
  }

  else
  {
    v25 = 0;
    if (v9 == 1)
    {
      v24 = 2 * (*(a1 + 12) < 1);
      v9 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  v26 = a2[1];
  v27 = a2[2];
  if ((v26 & 1) == 0)
  {
    v27 = v10;
  }

  v28 = 10;
  if (v26)
  {
    v28 = a2[3];
  }

  if (v26 >> 1 == v28)
  {
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>(v4);
  }

  if (!v27)
  {
    goto LABEL_72;
  }

  *(v27 + (v26 >> 1)) = v24;
  *v4 = v26 + 2;
  if (v25)
  {
    v29 = 2 * (v9 < 2);
    v30 = 1;
  }

  else if (v9 == 1 && (v31 = *(a1 + 12), v32 = v31 == 1, v31 <= 1))
  {
    v30 = 0;
    if (v32)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v33 = a2[1];
  v34 = a2[2];
  if ((v33 & 1) == 0)
  {
    v34 = v10;
  }

  v35 = 10;
  if (v33)
  {
    v35 = a2[3];
  }

  if (v33 >> 1 == v35)
  {
LABEL_73:
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>(v4);
  }

  if (!v34)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  *(v34 + (v33 >> 1)) = v29;
  *v4 = v33 + 2;
  if (v30)
  {
    a2[23] = 0;
    result = a2[22];
    if ((a2[24] & 0x3FFFFFFFFFFFFFFLL) == 0)
    {
      if (result)
      {
        operator delete(result);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      operator new();
    }

    a2[23] = 2;
    v37 = 3;
LABEL_86:
    *result = v37;
    return result;
  }

  if (!*(a1 + 12))
  {
    v38 = *(a1 + 8);
    a2[23] = 0;
    result = a2[22];
    if ((a2[24] & 0x3FFFFFFFFFFFFFFLL) == 0)
    {
      if (result)
      {
        operator delete(result);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      operator new();
    }

    a2[23] = 2;
    v37 = 2 * (v38 == 1);
    if (!v38)
    {
      v37 = 1;
    }

    goto LABEL_86;
  }

  a2[23] = 0;
  result = a2[22];
  if ((a2[24] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    if (result)
    {
      operator delete(result);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    operator new();
  }

  a2[23] = 2;
  *result = 0;
  return result;
}

uint64_t webrtc::ScalabilityStructureL2T2KeyShift::OnRatesUpdated(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    v3 = *(result + 16);
    goto LABEL_6;
  }

  v2 = *(a2 + 4);
  v3 = *(result + 16);
  if ((v3 & 1) == 0 && v2)
  {
    *(result + 8) = 0;
    goto LABEL_9;
  }

  if (!v2)
  {
LABEL_6:
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(a2 + 40) != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_9:
  *(result + 16) = v3 | 1;
  if (*(a2 + 16) != 1 || *(a2 + 12) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
    if (*(a2 + 40) != 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = v3 | 3;
    if (*(a2 + 40) != 1)
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  v6 = *(a2 + 36);
  if ((v4 & 4) != 0 || !v6)
  {
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_24:
    v7 = v4 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_25;
  }

  *(result + 8) = 0;
LABEL_21:
  v7 = v4 | 4;
  *(result + 16) = v4 | 4;
  if (*(a2 + 48) == 1 && *(a2 + 44))
  {
    *(result + 16) = v4 | 0xC;
    return result;
  }

LABEL_25:
  *(result + 16) = v7 & 0xFFFFFFFFFFFFFFF7;
  return result;
}

uint64_t webrtc::ScalabilityStructureSimulcast::StreamConfig@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(a2 + 12) = v2;
  *(a2 + 28) = v2;
  v3 = *(this + 8);
  *a2 = v3;
  v4 = 4 * v3 - 4;
  *(a2 + 12 + v4) = 1;
  *(a2 + 28 + v4) = 1;
  if (v3 >= 2)
  {
    v5 = *(this + 16);
    v6 = *(this + 20);
    v7 = a2 + 4 * v3;
    v8 = *(v7 + 8);
    v9 = v3 + 1;
    v10 = (v7 + 24);
    do
    {
      v8 *= v5;
      *(v10 - 1) = *v10 * v6;
      *(--v10 - 4) = v8;
      --v9;
    }

    while (v9 > 2);
  }

  *(a2 + 8) = 0;
  return this;
}

void *webrtc::ScalabilityStructureSimulcast::NextFrameConfig@<X0>(void *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = this;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (!*(this + 12))
  {
    *(this + 6) = 0;
    return this;
  }

  this = std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::reserve(a3, *(this + 2));
  v6 = *(v3 + 6);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v3[4] &= 0xFFFFFFFFFFFFFFF8;
    *(v3 + 6) = 0;
    goto LABEL_7;
  }

  switch(v6)
  {
    case 4:
      v27 = *(v3 + 3);
      if (v27 <= 2)
      {
LABEL_61:
        if (v27 <= 1)
        {
          break;
        }

        v21 = *(v3 + 2);
        if (v21 < 1)
        {
          goto LABEL_68;
        }

        v30 = 0;
        v31 = *(v3 + 2);
        while (1)
        {
          if (v30 >= 0x1F)
          {
            goto LABEL_121;
          }

          if (((v3[6] >> v30) & 2) != 0)
          {
            break;
          }

          v30 += v27;
          if (!--v31)
          {
            goto LABEL_7;
          }
        }

LABEL_72:
        v34 = 0;
        while (1)
        {
          v46 = *(v3 + 3) * v34 + 1;
          if (v46 >= 0x20)
          {
            break;
          }

          if ((v3[6] >> v46))
          {
            if (v34 >= 3)
            {
              break;
            }

            if ((v3[4] >> v34))
            {
              v47 = a3[1];
              if (v47 >= a3[2])
              {
                std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
              }

              if (!v47)
              {
                break;
              }

              *(v47 + 80) = 0;
              *(v47 + 48) = 0u;
              *(v47 + 64) = 0u;
              *(v47 + 16) = 0u;
              *(v47 + 32) = 0u;
              v48 = v47 + 88;
              *v47 = 0u;
              a3[1] = v48;
              if (*a3 == v48)
              {
                break;
              }

              *v47 = 2;
              *(v47 + 8) = v34;
              *(v47 + 12) = 1;
              this = (v47 + 16);
              v49 = *(v47 + 16);
              v50 = v48 - 64;
              if (v49)
              {
                v51 = *(v48 - 64);
                v52 = *(v48 - 56);
              }

              else
              {
                v51 = v48 - 64;
                v52 = 8;
              }

              if (v49 >> 1 == v52)
              {
                absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
              }

              if (!v51)
              {
                break;
              }

              v53 = v51 + 8 * (v49 >> 1);
              *v53 = v34;
              *(v53 + 4) = 1;
              *this = v49 + 2;
              v21 = *(v3 + 2);
              if (*(v3 + 3) >= 3)
              {
                v54 = *this;
                if (*this)
                {
                  v50 = *(v48 - 64);
                  v55 = *(v48 - 56);
                }

                else
                {
                  v55 = 8;
                }

                if (v54 >> 1 == v55)
                {
                  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(this);
                }

                if (!v50)
                {
                  break;
                }

                v56 = v50 + 8 * (v54 >> 1);
                *v56 = v34 + v21;
                *(v56 + 4) = 256;
                *this = v54 + 2;
              }
            }
          }

          if (++v34 >= v21)
          {
            return this;
          }
        }

LABEL_121:
        __break(1u);
LABEL_122:
        abort();
      }

      v28 = *(v3 + 2);
      if (v28 < 1)
      {
        goto LABEL_68;
      }

      v29 = 0;
      while (1)
      {
        if (v29 >= 0x1E)
        {
          goto LABEL_121;
        }

        if (((v3[6] >> v29) & 4) != 0)
        {
          break;
        }

        v29 += v27;
        if (!--v28)
        {
          goto LABEL_61;
        }
      }

      v32 = 1;
LABEL_71:
      v33 = 0;
      while (1)
      {
        v35 = *(v3 + 3) * v33 + 2;
        if (v35 >= 0x20)
        {
          goto LABEL_121;
        }

        if ((v3[6] >> v35))
        {
          if (v33 >= 3)
          {
            goto LABEL_121;
          }

          if ((v3[4] & (1 << v33)) != 0)
          {
            v36 = a3[1];
            if (v36 >= a3[2])
            {
              std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
            }

            if (!v36)
            {
              goto LABEL_121;
            }

            *(v36 + 80) = 0;
            *(v36 + 48) = 0u;
            *(v36 + 64) = 0u;
            *(v36 + 16) = 0u;
            *(v36 + 32) = 0u;
            this = (v36 + 88);
            *v36 = 0u;
            a3[1] = this;
            if (*a3 == this)
            {
              goto LABEL_121;
            }

            *v36 = v32;
            *(v36 + 8) = v33;
            *(v36 + 12) = 2;
            if ((v3[5] & (1 << v33)) != 0)
            {
              v37 = (v36 + 16);
              v38 = *(this - 9);
              if (v38)
              {
                v39 = *(this - 8);
                v40 = *(this - 7);
              }

              else
              {
                v39 = this - 8;
                v40 = 8;
              }

              if (v38 >> 1 == v40)
              {
                goto LABEL_73;
              }

              if (!v39)
              {
                goto LABEL_121;
              }

              v44 = &v39[v38 >> 1];
              *v44 = v33 + *(v3 + 2);
              *(v44 + 2) = 1;
              *v37 = v38 + 2;
            }

            else
            {
              v37 = (v36 + 16);
              v41 = *(this - 9);
              if (v41)
              {
                v42 = *(this - 8);
                v43 = *(this - 7);
              }

              else
              {
                v42 = this - 8;
                v43 = 8;
              }

              if (v41 >> 1 == v43)
              {
LABEL_73:
                absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v37);
              }

              if (!v42)
              {
                goto LABEL_121;
              }

              v45 = &v42[v41 >> 1];
              *v45 = v33;
              *(v45 + 2) = 1;
              *v37 = v41 + 2;
            }
          }
        }

        if (++v33 >= *(v3 + 2))
        {
          return this;
        }
      }

    case 2:
      v24 = *(v3 + 3);
      if (v24 < 3)
      {
        break;
      }

      v25 = *(v3 + 2);
      if (v25 < 1)
      {
        goto LABEL_68;
      }

      v26 = 0;
      while (1)
      {
        if (v26 >= 0x1E)
        {
          goto LABEL_121;
        }

        if (((v3[6] >> v26) & 4) != 0)
        {
          break;
        }

        v26 += v24;
        if (!--v25)
        {
          goto LABEL_7;
        }
      }

      v32 = 3;
      goto LABEL_71;
    case 1:
      v20 = *(v3 + 3);
      if (v20 > 1)
      {
        v21 = *(v3 + 2);
        if (v21 >= 1)
        {
          v22 = 0;
          v23 = *(v3 + 2);
          while (v22 < 0x1F)
          {
            if (((v3[6] >> v22) & 2) != 0)
            {
              goto LABEL_72;
            }

            v22 += v20;
            if (!--v23)
            {
              goto LABEL_7;
            }
          }

          goto LABEL_121;
        }

LABEL_68:
        v3[5] &= 0xFFFFFFFFFFFFFFF8;
        return this;
      }

      break;
  }

LABEL_7:
  v8 = *(v3 + 2);
  v3[5] &= 0xFFFFFFFFFFFFFFF8;
  if (v8 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v11 = *(v3 + 3) * v9;
      if (v11 >= 0x20)
      {
        goto LABEL_121;
      }

      if ((v3[6] >> v11))
      {
        v12 = a3[1];
        if (v12 >= a3[2])
        {
          std::vector<webrtc::ScalableVideoController::LayerFrameConfig>::__emplace_back_slow_path<>(a3);
        }

        if (!v12)
        {
          goto LABEL_121;
        }

        *(v12 + 80) = 0;
        *(v12 + 48) = 0u;
        *(v12 + 64) = 0u;
        *(v12 + 16) = 0u;
        *(v12 + 32) = 0u;
        this = (v12 + 88);
        *v12 = 0u;
        a3[1] = this;
        if (*a3 == this)
        {
          goto LABEL_121;
        }

        *v12 = 4;
        *(v12 + 8) = v9;
        *(v12 + 12) = 0;
        if (v9 >= 3)
        {
          goto LABEL_121;
        }

        if ((v3[4] & (1 << v9)) != 0)
        {
          v13 = (v12 + 16);
          v14 = *(this - 9);
          if (v14)
          {
            v15 = *(this - 8);
            v16 = *(this - 7);
          }

          else
          {
            v15 = this - 8;
            v16 = 8;
          }

          if (v14 >> 1 == v16)
          {
            goto LABEL_35;
          }

          if (!v15)
          {
            goto LABEL_121;
          }

          v19 = &v15[v14 >> 1];
          *v19 = v9;
          *(v19 + 2) = 257;
        }

        else
        {
          *(v12 + 4) = 1;
          v13 = (v12 + 16);
          v14 = *(this - 9);
          if (v14)
          {
            v17 = *(this - 8);
            v18 = *(this - 7);
          }

          else
          {
            v17 = this - 8;
            v18 = 8;
          }

          if (v14 >> 1 == v18)
          {
LABEL_35:
            absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(v13);
          }

          if (!v17)
          {
            goto LABEL_121;
          }

          v10 = &v17[v14 >> 1];
          *v10 = v9;
          *(v10 + 2) = 256;
        }

        *v13 = v14 + 2;
        v3[4] |= 1 << v9;
        v8 = *(v3 + 2);
        if (++v9 >= v8)
        {
          return this;
        }
      }

      else
      {
        if (v9 >= 3)
        {
          goto LABEL_122;
        }

        v3[4] &= ~(1 << v9++);
        if (v9 >= v8)
        {
          return this;
        }
      }
    }
  }

  return this;
}

void webrtc::ScalabilityStructureSimulcast::OnEncodeDone(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 24) = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (v6 == 1)
  {
    if (v7 >= 3)
    {
      abort();
    }

    *(a1 + 40) |= 1 << v7;
  }

  *(a3 + 56) = 0;
  *(a3 + 8) = 0;
  v8 = (a3 + 8);
  *(a3 + 104) = 0;
  *(a3 + 80) = 0;
  *(a3 + 176) = 0;
  v32 = (a3 + 176);
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0xFFFFFFFFLL;
  *a3 = v7;
  *(a3 + 4) = v6;
  if (a3 + 104 == a2 + 16)
  {
    goto LABEL_57;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = (a2 + 24);
  }

  absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>((a3 + 104), v10, v9 >> 1);
  for (i = *v8; ; LOBYTE(i) = 0)
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 12) * v12;
    v14 = 10;
    if (i)
    {
      v14 = *(a3 + 24);
    }

    if (v14 < v13)
    {
      if (2 * v14 <= v13)
      {
        v15 = *(a1 + 12) * v12;
      }

      else
      {
        v15 = 2 * v14;
      }

      if (!(v15 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v12 >= 1)
    {
      v16 = *(a1 + 12);
      if (v16 >= 1)
      {
        v17 = 0;
        do
        {
          if (*(a2 + 12) <= 0 && *(a2 + 8) == v17)
          {
            v19 = 2;
          }

          else
          {
            v19 = 0;
          }

          v34 = v19;
          v20 = *(a3 + 8);
          v21 = *(a3 + 16);
          if (v20)
          {
            v22 = *(a3 + 24);
          }

          else
          {
            v21 = a3 + 16;
            v22 = 10;
          }

          if (v20 >> 1 == v22)
          {
            absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>((a3 + 8));
          }

          if (!v21)
          {
            goto LABEL_56;
          }

          *(v21 + 4 * (v20 >> 1)) = v19;
          *v8 = v20 + 2;
          if (v16 >= 2)
          {
            v23 = 1;
            do
            {
              v24 = *(a2 + 12);
              if (v23 == v24)
              {
                v25 = 1;
              }

              else
              {
                v25 = 2;
              }

              if (v24 <= v23 && *(a2 + 8) == v17)
              {
                v27 = v25;
              }

              else
              {
                v27 = 0;
              }

              v34 = v27;
              v28 = *(a3 + 8);
              v29 = *(a3 + 16);
              if (v28)
              {
                v30 = *(a3 + 24);
              }

              else
              {
                v29 = a3 + 16;
                v30 = 10;
              }

              if (v28 >> 1 == v30)
              {
                absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::EmplaceBackSlow<webrtc::DecodeTargetIndication const&>((a3 + 8));
              }

              if (!v29)
              {
                goto LABEL_56;
              }

              *(v29 + 4 * (v28 >> 1)) = v27;
              *v8 = v28 + 2;
            }

            while (++v23 < v16);
          }

          v12 = *(a1 + 8);
        }

        while (++v17 < v12);
      }
    }

    v33 = 0;
    std::vector<BOOL>::assign(v32, v12, &v33);
    if (*(a2 + 12))
    {
      goto LABEL_55;
    }

    v31 = *(a2 + 8);
    if (*(a3 + 184) > v31)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  *(*v32 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
LABEL_55:
  *(a3 + 200) = *(a1 + 48);
}

uint64_t webrtc::ScalabilityStructureSimulcast::OnRatesUpdated(uint64_t this, const webrtc::VideoBitrateAllocation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 8);
  if (v8 < 1)
  {
    return this;
  }

  v9 = *(this + 12);
  if (v9 < 1)
  {
    return this;
  }

  v10 = 0;
  v11 = a2 + 4;
  v12 = 5;
  while (v10 <= 4)
  {
    v13 = v9 * v10;
    v14 = &v11[32 * v10];
    if ((v14[4] & 1) == 0)
    {
      if (v13 > 0x1F)
      {
        goto LABEL_45;
      }

      v15 = 1 << v13;
      v16 = *(this + 48);
LABEL_24:
      v17 = v16 & ~v15;
      *(this + 48) = v17;
      if (v9 == 1)
      {
        goto LABEL_4;
      }

      if (v13 > 0x1E)
      {
        goto LABEL_45;
      }

      goto LABEL_26;
    }

    if (v13 > 0x1F)
    {
      goto LABEL_45;
    }

    v15 = 1 << v13;
    v16 = *(this + 48);
    if (!*v14)
    {
      goto LABEL_24;
    }

    v17 = v16 | v15;
    *(this + 48) = v17;
    if (v9 == 1)
    {
      goto LABEL_4;
    }

    if ((v14[12] & 1) == 0)
    {
      if (v13 == 31)
      {
        goto LABEL_45;
      }

LABEL_26:
      v18 = 1 << (v13 + 1);
LABEL_27:
      v19 = v17 & ~v18;
      *(this + 48) = v19;
      if (v9 == 2)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (v13 > 0x1D)
      {
        goto LABEL_45;
      }

      v20 = 1 << (v13 + 2);
LABEL_30:
      v21 = v19 & ~v20;
      *(this + 48) = v21;
      if (v9 == 3)
      {
        goto LABEL_4;
      }

      if (v13 > 0x1C)
      {
        goto LABEL_45;
      }

LABEL_32:
      v23 = 1 << (v13 + 3);
LABEL_33:
      v25 = 0;
      v24 = v21 & ~v23;
      goto LABEL_34;
    }

    if (v13 == 31)
    {
      goto LABEL_45;
    }

    v18 = 1 << (v13 + 1);
    if (!*(v14 + 2))
    {
      goto LABEL_27;
    }

    v19 = v17 | v18;
    *(this + 48) = v19;
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    if ((v14[20] & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v13 > 0x1D)
    {
      goto LABEL_45;
    }

    v20 = 1 << (v13 + 2);
    if (!*(v14 + 4))
    {
      goto LABEL_30;
    }

    v21 = v19 | v20;
    *(this + 48) = v21;
    if (v9 == 3)
    {
      goto LABEL_4;
    }

    if ((v14[28] & 1) == 0)
    {
      if (v13 == 29)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if (v13 == 29)
    {
      goto LABEL_45;
    }

    v22 = *(v14 + 6);
    v23 = 1 << (v13 + 3);
    if (!v22)
    {
      goto LABEL_33;
    }

    v24 = v21 | v23;
    v25 = 1;
LABEL_34:
    *(this + 48) = v24;
    if (v9 != 4)
    {
      if (v25)
      {
        goto LABEL_48;
      }

      if (v13 > 0x1B)
      {
        goto LABEL_45;
      }

      v26 = v24 & ~(1 << (v13 + 4));
      *(this + 48) = v26;
      if (v9 != 5)
      {
        v27 = v12;
        v28 = v9 - 5;
        while (v27 <= 0x1F)
        {
          v26 &= ~(1 << v27);
          *(this + 48) = v26;
          ++v27;
          if (!--v28)
          {
            goto LABEL_4;
          }
        }

LABEL_45:
        abort();
      }
    }

LABEL_4:
    ++v10;
    v12 += v9;
    if (v10 == v8)
    {
      return this;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 59, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v10);
LABEL_48:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 60, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 4);
  return webrtc::ScalabilityStructureS2T1::DependencyStructure(v29);
}

void webrtc::ScalabilityStructureS2T1::DependencyStructure(uint64_t a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x200000002;
  *&v13 = 0x100000000;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v13, 2uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 4uLL);
  v4 = *v3;
  if (*(a1 + 112) == v4)
  {
    goto LABEL_14;
  }

  *v4 = 0;
  if (*(v4 + 8))
  {
    operator delete(*(v4 + 16));
  }

  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  *(v4 + 24) = v13;
  *(v4 + 40) = v14;
  *&v13 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 80), &v13, 2uLL);
  v12 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 56), &v12, 1uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 1)
  {
    goto LABEL_14;
  }

  *(v5 + 104) = 0;
  if (*(v5 + 112))
  {
    operator delete(*(v5 + 120));
  }

  *(v5 + 112) = 4;
  *(v5 + 120) = 2;
  v6 = v14;
  *(v5 + 128) = v13;
  *(v5 + 144) = v6;
  *&v13 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 184), &v13, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 2)
  {
    goto LABEL_14;
  }

  *(v7 + 208) = 1;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 4;
  *(v7 + 224) = 0x200000000;
  v8 = v14;
  *(v7 + 232) = v13;
  *(v7 + 248) = v8;
  *&v13 = 0x200000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v13, 2uLL);
  v12 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v12, 1uLL);
  v10 = a1 + 104;
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v10 + 8) - v9) >> 3)) <= 3)
  {
LABEL_14:
    __break(1u);
  }

  *(v9 + 312) = 1;
  if (*(v9 + 320))
  {
    operator delete(*(v9 + 328));
  }

  *(v9 + 320) = 4;
  *(v9 + 328) = 0x200000000;
  v11 = v14;
  *(v9 + 336) = v13;
  *(v9 + 352) = v11;
  *&v13 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 392), &v13, 2uLL);
}

void webrtc::ScalabilityStructureS2T2::DependencyStructure(uint64_t a1@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x200000004;
  v15 = xmmword_273BA3AF0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v15, 4uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 6uLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_20;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 8;
  *(v4 + 120) = xmmword_273BA3CA0;
  *(v4 + 136) = v15;
  *(v4 + 152) = v16;
  *&v15 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), &v15, 2uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 4)
  {
    goto LABEL_20;
  }

  *(v5 + 416) = 1;
  if (*(v5 + 424))
  {
    operator delete(*(v5 + 432));
  }

  *(v5 + 424) = 8;
  v6 = v15;
  *(v5 + 432) = xmmword_273BA3B20;
  *(v5 + 448) = v6;
  *(v5 + 464) = v16;
  *&v15 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 496), &v15, 2uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 2)
  {
    goto LABEL_20;
  }

  *(v7 + 208) = 0x100000000;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 8;
  v8 = v15;
  *(v7 + 224) = xmmword_273BA3B70;
  *(v7 + 240) = v8;
  *(v7 + 256) = v16;
  *&v15 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v15, 2uLL);
  v14 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v14, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 5)
  {
    goto LABEL_20;
  }

  *(v9 + 520) = 0x100000001;
  if (*(v9 + 528))
  {
    operator delete(*(v9 + 536));
  }

  *(v9 + 528) = 8;
  *(v9 + 536) = xmmword_273B8E9C0;
  *(v9 + 568) = v16;
  *(v9 + 552) = v15;
  *&v15 = 0x200000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 600), &v15, 2uLL);
  v14 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 576), &v14, 1uLL);
  v10 = *(a1 + 104);
  if (*(a1 + 112) == v10)
  {
    goto LABEL_20;
  }

  *v10 = 0;
  if (*(v10 + 8))
  {
    operator delete(*(v10 + 16));
  }

  *(v10 + 8) = 8;
  v11 = v15;
  *(v10 + 16) = xmmword_273BA3CA0;
  *(v10 + 32) = v11;
  *(v10 + 48) = v16;
  *&v15 = 0x300000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 80), &v15, 2uLL);
  v14 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 56), &v14, 1uLL);
  v13 = a1 + 104;
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v13 + 8) - v12) >> 3)) <= 3)
  {
LABEL_20:
    __break(1u);
  }

  *(v12 + 312) = 1;
  if (*(v12 + 320))
  {
    operator delete(*(v12 + 328));
  }

  *(v12 + 320) = 8;
  *(v12 + 328) = xmmword_273BA3B20;
  *(v12 + 360) = v16;
  *(v12 + 344) = v15;
  *&v15 = 0x400000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 392), &v15, 2uLL);
  v14 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 368), &v14, 1uLL);
}

void webrtc::ScalabilityStructureS2T3::DependencyStructure(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x200000006;
  v16 = xmmword_273BA3D20;
  v17 = 0x100000001;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v16, 6uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 0xAuLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_32;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 12;
  *(v4 + 120) = xmmword_273B92040;
  *(v4 + 136) = 0;
  *(v4 + 144) = v16;
  *&v16 = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), &v16, 2uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 6)
  {
    goto LABEL_32;
  }

  *(v5 + 624) = 1;
  if (*(v5 + 632))
  {
    operator delete(*(v5 + 640));
  }

  *(v5 + 632) = 12;
  *(v5 + 640) = xmmword_273BA3B30;
  *(v5 + 656) = 0x200000002;
  *(v5 + 664) = v16;
  *&v16 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 704), &v16, 2uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 3)
  {
    goto LABEL_32;
  }

  *(v6 + 312) = 0x200000000;
  if (*(v6 + 320))
  {
    operator delete(*(v6 + 328));
  }

  *(v6 + 320) = 12;
  *(v6 + 328) = xmmword_273B92130;
  *(v6 + 344) = 0;
  *(v6 + 352) = v16;
  *&v16 = 0x100000002;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 392), &v16, 2uLL);
  v15 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 368), &v15, 1uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 8)
  {
    goto LABEL_32;
  }

  *(v7 + 832) = 0x200000001;
  if (*(v7 + 840))
  {
    operator delete(*(v7 + 848));
  }

  *(v7 + 840) = 12;
  *(v7 + 848) = 0u;
  *(v7 + 864) = 0x100000000;
  *(v7 + 872) = v16;
  *&v16 = 0x200000003;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 912), &v16, 2uLL);
  v15 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 888), &v15, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_32;
  }

  *(v8 + 208) = 0x100000000;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 12;
  *(v8 + 224) = xmmword_273BA3B40;
  *(v8 + 240) = 0;
  *(v8 + 248) = v16;
  *&v16 = 0x300000004;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), &v16, 2uLL);
  v15 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v15, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 7)
  {
    goto LABEL_32;
  }

  *(v9 + 728) = 0x100000001;
  if (*(v9 + 736))
  {
    operator delete(*(v9 + 744));
  }

  *(v9 + 736) = 12;
  *(v9 + 744) = 0u;
  *(v9 + 760) = 0x200000001;
  *(v9 + 768) = v16;
  *&v16 = 0x400000005;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 808), &v16, 2uLL);
  v15 = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 784), &v15, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 4)
  {
    goto LABEL_32;
  }

  *(v10 + 416) = 0x200000000;
  if (*(v10 + 424))
  {
    operator delete(*(v10 + 432));
  }

  *(v10 + 424) = 12;
  *(v10 + 432) = xmmword_273B92130;
  *(v10 + 448) = 0;
  *(v10 + 456) = v16;
  *&v16 = 0x500000006;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 496), &v16, 2uLL);
  v15 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 472), &v15, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 9)
  {
    goto LABEL_32;
  }

  *(v11 + 936) = 0x200000001;
  if (*(v11 + 944))
  {
    operator delete(*(v11 + 952));
  }

  *(v11 + 944) = 12;
  *(v11 + 952) = 0u;
  *(v11 + 968) = 0x100000000;
  *(v11 + 976) = v16;
  *&v16 = 0x600000007;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 1016), &v16, 2uLL);
  v15 = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 992), &v15, 1uLL);
  v12 = *(a1 + 104);
  if (*(a1 + 112) == v12)
  {
    goto LABEL_32;
  }

  *v12 = 0;
  if (*(v12 + 8))
  {
    operator delete(*(v12 + 16));
  }

  *(v12 + 8) = 12;
  *(v12 + 16) = xmmword_273B92040;
  *(v12 + 32) = 0;
  *(v12 + 40) = v16;
  *&v16 = 0x700000008;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 80), &v16, 2uLL);
  v15 = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 56), &v15, 1uLL);
  v14 = a1 + 104;
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v14 + 8) - v13) >> 3)) <= 5)
  {
LABEL_32:
    __break(1u);
  }

  *(v13 + 520) = 1;
  if (*(v13 + 528))
  {
    operator delete(*(v13 + 536));
  }

  *(v13 + 528) = 12;
  *(v13 + 536) = xmmword_273BA3B30;
  *(v13 + 552) = 0x200000002;
  *(v13 + 560) = v16;
  *&v16 = 0x800000001;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 600), &v16, 2uLL);
  v15 = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 576), &v15, 1uLL);
}

void webrtc::ScalabilityStructureS3T1::DependencyStructure(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x300000003;
  *v12 = 0x100000000;
  *&v12[8] = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v12, 3uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 6uLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_20;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 6;
  *(v4 + 120) = 2;
  *(v4 + 128) = 0;
  *(v4 + 132) = *v12;
  *(v4 + 144) = *&v12[12];
  *v12 = 0;
  *&v12[8] = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), v12, 3uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 3)
  {
    goto LABEL_20;
  }

  *(v5 + 312) = 1;
  if (*(v5 + 320))
  {
    operator delete(*(v5 + 328));
  }

  *(v5 + 320) = 6;
  *(v5 + 328) = 0x200000000;
  *(v5 + 336) = 0;
  *(v5 + 352) = *&v12[12];
  *(v5 + 340) = *v12;
  *v12 = 1;
  *&v12[8] = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 392), v12, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 5)
  {
    goto LABEL_20;
  }

  *(v6 + 520) = 2;
  if (*(v6 + 528))
  {
    operator delete(*(v6 + 536));
  }

  *(v6 + 528) = 6;
  *(v6 + 536) = 0;
  *(v6 + 544) = 2;
  *(v6 + 560) = *&v12[12];
  *(v6 + 548) = *v12;
  *v12 = 0x100000002;
  *&v12[8] = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 600), v12, 3uLL);
  v7 = *(a1 + 104);
  if (*(a1 + 112) == v7)
  {
    goto LABEL_20;
  }

  *v7 = 0;
  if (*(v7 + 8))
  {
    operator delete(*(v7 + 16));
  }

  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  *(v7 + 24) = 0;
  *(v7 + 28) = *v12;
  *(v7 + 40) = *&v12[12];
  *v12 = 0x200000003;
  *&v12[8] = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 80), v12, 3uLL);
  v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 56), &v11, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 2)
  {
    goto LABEL_20;
  }

  *(v8 + 208) = 1;
  if (*(v8 + 216))
  {
    operator delete(*(v8 + 224));
  }

  *(v8 + 216) = 6;
  *(v8 + 224) = 0x200000000;
  *(v8 + 232) = 0;
  *(v8 + 236) = *v12;
  *(v8 + 248) = *&v12[12];
  *v12 = 0x300000001;
  *&v12[8] = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 288), v12, 3uLL);
  v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 264), &v11, 1uLL);
  v10 = a1 + 104;
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v10 + 8) - v9) >> 3)) <= 4)
  {
LABEL_20:
    __break(1u);
  }

  *(v9 + 416) = 2;
  if (*(v9 + 424))
  {
    operator delete(*(v9 + 432));
  }

  *(v9 + 424) = 6;
  *(v9 + 432) = 0;
  *(v9 + 440) = 2;
  *(v9 + 444) = *v12;
  *(v9 + 456) = *&v12[12];
  *v12 = 0x100000002;
  *&v12[8] = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 496), v12, 3uLL);
  v11 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 472), &v11, 1uLL);
}

void webrtc::ScalabilityStructureS3T2::DependencyStructure(uint64_t a1@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 4) = 0x300000006;
  v15 = xmmword_273BA3D38;
  v16 = 0x200000002;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v15, 6uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 9uLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_29;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 12;
  *(v4 + 120) = xmmword_273BA3CA0;
  *(v4 + 136) = 0;
  *(v4 + 144) = v15;
  *&v15 = 0;
  DWORD2(v15) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), &v15, 3uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 4)
  {
    goto LABEL_29;
  }

  *(v5 + 416) = 1;
  if (*(v5 + 424))
  {
    operator delete(*(v5 + 432));
  }

  *(v5 + 424) = 12;
  *(v5 + 432) = xmmword_273BA3B20;
  *(v5 + 448) = 0;
  *(v5 + 456) = v15;
  *&v15 = 1;
  DWORD2(v15) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 496), &v15, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 7)
  {
    goto LABEL_29;
  }

  *(v6 + 728) = 2;
  if (*(v6 + 736))
  {
    operator delete(*(v6 + 744));
  }

  *(v6 + 736) = 12;
  *(v6 + 744) = 0u;
  *(v6 + 760) = 0x200000002;
  *(v6 + 768) = v15;
  *&v15 = 0x100000002;
  DWORD2(v15) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 808), &v15, 3uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 2)
  {
    goto LABEL_29;
  }

  *(v7 + 208) = 0x100000000;
  if (*(v7 + 216))
  {
    operator delete(*(v7 + 224));
  }

  *(v7 + 216) = 12;
  *(v7 + 224) = xmmword_273BA3B70;
  *(v7 + 240) = 0;
  *(v7 + 248) = v15;
  *&v15 = 0x200000003;
  DWORD2(v15) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 288), &v15, 3uLL);
  v14 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 264), &v14, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 5)
  {
    goto LABEL_29;
  }

  *(v8 + 520) = 0x100000001;
  if (*(v8 + 528))
  {
    operator delete(*(v8 + 536));
  }

  *(v8 + 528) = 12;
  *(v8 + 536) = xmmword_273B8E9C0;
  *(v8 + 552) = 0;
  *(v8 + 560) = v15;
  *&v15 = 0x300000004;
  DWORD2(v15) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 600), &v15, 3uLL);
  v14 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 576), &v14, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 8)
  {
    goto LABEL_29;
  }

  *(v9 + 832) = 0x100000002;
  if (*(v9 + 840))
  {
    operator delete(*(v9 + 848));
  }

  *(v9 + 840) = 12;
  *(v9 + 848) = 0u;
  *(v9 + 864) = 0x100000000;
  *(v9 + 872) = v15;
  *&v15 = 0x400000005;
  DWORD2(v15) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 912), &v15, 3uLL);
  v14 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 888), &v14, 1uLL);
  v10 = *(a1 + 104);
  if (*(a1 + 112) == v10)
  {
    goto LABEL_29;
  }

  *v10 = 0;
  if (*(v10 + 8))
  {
    operator delete(*(v10 + 16));
  }

  *(v10 + 8) = 12;
  *(v10 + 16) = xmmword_273BA3CA0;
  *(v10 + 32) = 0;
  *(v10 + 40) = v15;
  *&v15 = 0x500000006;
  DWORD2(v15) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 80), &v15, 3uLL);
  v14 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 56), &v14, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 3)
  {
    goto LABEL_29;
  }

  *(v11 + 312) = 1;
  if (*(v11 + 320))
  {
    operator delete(*(v11 + 328));
  }

  *(v11 + 320) = 12;
  *(v11 + 328) = xmmword_273BA3B20;
  *(v11 + 344) = 0;
  *(v11 + 352) = v15;
  *&v15 = 0x600000001;
  DWORD2(v15) = 5;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 392), &v15, 3uLL);
  v14 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 368), &v14, 1uLL);
  v13 = a1 + 104;
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v13 + 8) - v12) >> 3)) <= 6)
  {
LABEL_29:
    __break(1u);
  }

  *(v12 + 624) = 2;
  if (*(v12 + 632))
  {
    operator delete(*(v12 + 640));
  }

  *(v12 + 632) = 12;
  *(v12 + 640) = 0u;
  *(v12 + 656) = 0x200000002;
  *(v12 + 664) = v15;
  *&v15 = 0x100000002;
  DWORD2(v15) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 704), &v15, 3uLL);
  v14 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 680), &v14, 1uLL);
}

void webrtc::ScalabilityStructureS3T3::DependencyStructure(uint64_t a1@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  v3 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x300000009;
  v21[0] = xmmword_273BA3D50;
  v21[1] = unk_273BA3D60;
  v22 = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), v21, 9uLL);
  std::vector<webrtc::FrameDependencyTemplate>::resize(v3, 0xFuLL);
  v4 = *v3;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - *v3) >> 3)) <= 1)
  {
    goto LABEL_47;
  }

  *(v4 + 104) = 0;
  if (*(v4 + 112))
  {
    operator delete(*(v4 + 120));
  }

  *(v4 + 112) = 18;
  *(v4 + 120) = xmmword_273B92040;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *&v21[0] = 0;
  DWORD2(v21[0]) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v4 + 184), v21, 3uLL);
  v5 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 3)) <= 6)
  {
    goto LABEL_47;
  }

  *(v5 + 624) = 1;
  if (*(v5 + 632))
  {
    operator delete(*(v5 + 640));
  }

  *(v5 + 632) = 18;
  *(v5 + 640) = xmmword_273BA3B30;
  *(v5 + 656) = xmmword_273BA3CA0;
  *(v5 + 672) = 0;
  *&v21[0] = 1;
  DWORD2(v21[0]) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v5 + 704), v21, 3uLL);
  v6 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v6) >> 3)) <= 0xB)
  {
    goto LABEL_47;
  }

  *(v6 + 1144) = 2;
  if (*(v6 + 1152))
  {
    operator delete(*(v6 + 1160));
  }

  *(v6 + 1152) = 18;
  *(v6 + 1160) = 0;
  *(v6 + 1168) = 0;
  *(v6 + 1176) = xmmword_273BA3B20;
  *(v6 + 1192) = 2;
  *&v21[0] = 0x100000002;
  DWORD2(v21[0]) = 0;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v6 + 1224), v21, 3uLL);
  v7 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v7) >> 3)) <= 3)
  {
    goto LABEL_47;
  }

  *(v7 + 312) = 0x200000000;
  if (*(v7 + 320))
  {
    operator delete(*(v7 + 328));
  }

  *(v7 + 320) = 18;
  *(v7 + 328) = xmmword_273B92130;
  *(v7 + 344) = 0;
  *(v7 + 352) = 0;
  *(v7 + 360) = 0;
  *&v21[0] = 0x200000003;
  DWORD2(v21[0]) = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 392), v21, 3uLL);
  v20 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v7 + 368), &v20, 1uLL);
  v8 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v8) >> 3)) <= 8)
  {
    goto LABEL_47;
  }

  *(v8 + 832) = 0x200000001;
  if (*(v8 + 840))
  {
    operator delete(*(v8 + 848));
  }

  *(v8 + 840) = 18;
  *(v8 + 848) = 0u;
  *(v8 + 864) = xmmword_273BA3B70;
  *(v8 + 880) = 0;
  *&v21[0] = 0x300000004;
  DWORD2(v21[0]) = 2;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 912), v21, 3uLL);
  v20 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v8 + 888), &v20, 1uLL);
  v9 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v9) >> 3)) <= 0xD)
  {
    goto LABEL_47;
  }

  *(v9 + 1352) = 0x200000002;
  if (*(v9 + 1360))
  {
    operator delete(*(v9 + 1368));
  }

  *(v9 + 1360) = 18;
  *(v9 + 1368) = 0u;
  *(v9 + 1384) = 0u;
  *(v9 + 1400) = 1;
  *&v21[0] = 0x400000005;
  DWORD2(v21[0]) = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 1432), v21, 3uLL);
  v20 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v9 + 1408), &v20, 1uLL);
  v10 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v10) >> 3)) <= 2)
  {
    goto LABEL_47;
  }

  *(v10 + 208) = 0x100000000;
  if (*(v10 + 216))
  {
    operator delete(*(v10 + 224));
  }

  *(v10 + 216) = 18;
  *(v10 + 224) = xmmword_273BA3B40;
  *(v10 + 240) = 0;
  *(v10 + 248) = 0;
  *(v10 + 256) = 0;
  *&v21[0] = 0x500000006;
  DWORD2(v21[0]) = 4;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 288), v21, 3uLL);
  v20 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v10 + 264), &v20, 1uLL);
  v11 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v11) >> 3)) <= 7)
  {
    goto LABEL_47;
  }

  *(v11 + 728) = 0x100000001;
  if (*(v11 + 736))
  {
    operator delete(*(v11 + 744));
  }

  *(v11 + 736) = 18;
  *(v11 + 744) = 0;
  *(v11 + 752) = 0;
  *(v11 + 760) = xmmword_273B91FE0;
  *(v11 + 776) = 0;
  *&v21[0] = 0x600000007;
  DWORD2(v21[0]) = 5;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 808), v21, 3uLL);
  v20 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v11 + 784), &v20, 1uLL);
  v12 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v12) >> 3)) <= 0xC)
  {
    goto LABEL_47;
  }

  *(v12 + 1248) = 0x100000002;
  if (*(v12 + 1256))
  {
    operator delete(*(v12 + 1264));
  }

  *(v12 + 1256) = 18;
  *(v12 + 1264) = 0u;
  *(v12 + 1280) = xmmword_273B8E9C0;
  *(v12 + 1296) = 2;
  *&v21[0] = 0x700000008;
  DWORD2(v21[0]) = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 1328), v21, 3uLL);
  v20 = 6;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v12 + 1304), &v20, 1uLL);
  v13 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v13) >> 3)) <= 4)
  {
    goto LABEL_47;
  }

  *(v13 + 416) = 0x200000000;
  if (*(v13 + 424))
  {
    operator delete(*(v13 + 432));
  }

  *(v13 + 424) = 18;
  *(v13 + 432) = xmmword_273B92130;
  *(v13 + 448) = 0;
  *(v13 + 456) = 0;
  *(v13 + 464) = 0;
  *&v21[0] = 0x800000009;
  DWORD2(v21[0]) = 7;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 496), v21, 3uLL);
  v20 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v13 + 472), &v20, 1uLL);
  v14 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v14) >> 3)) <= 9)
  {
    goto LABEL_47;
  }

  *(v14 + 936) = 0x200000001;
  if (*(v14 + 944))
  {
    operator delete(*(v14 + 952));
  }

  *(v14 + 944) = 18;
  *(v14 + 952) = 0;
  *(v14 + 960) = 0;
  *(v14 + 968) = xmmword_273BA3B70;
  *(v14 + 984) = 0;
  *&v21[0] = 0x90000000ALL;
  DWORD2(v21[0]) = 8;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 1016), v21, 3uLL);
  v20 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v14 + 992), &v20, 1uLL);
  v15 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v15) >> 3)) <= 0xE)
  {
    goto LABEL_47;
  }

  *(v15 + 1456) = 0x200000002;
  if (*(v15 + 1464))
  {
    operator delete(*(v15 + 1472));
  }

  *(v15 + 1464) = 18;
  *(v15 + 1472) = 0u;
  *(v15 + 1488) = 0u;
  *(v15 + 1504) = 1;
  *&v21[0] = 0xA0000000BLL;
  DWORD2(v21[0]) = 9;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 1536), v21, 3uLL);
  v20 = 3;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v15 + 1512), &v20, 1uLL);
  v16 = *(a1 + 104);
  if (*(a1 + 112) == v16)
  {
    goto LABEL_47;
  }

  *v16 = 0;
  if (*(v16 + 8))
  {
    operator delete(*(v16 + 16));
  }

  *(v16 + 8) = 18;
  *(v16 + 16) = xmmword_273B92040;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *&v21[0] = 0xB0000000CLL;
  DWORD2(v21[0]) = 10;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v16 + 80), v21, 3uLL);
  v20 = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v16 + 56), &v20, 1uLL);
  v17 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v17) >> 3)) <= 5)
  {
    goto LABEL_47;
  }

  *(v17 + 520) = 1;
  if (*(v17 + 528))
  {
    operator delete(*(v17 + 536));
  }

  *(v17 + 528) = 18;
  *(v17 + 536) = xmmword_273BA3B30;
  *(v17 + 552) = xmmword_273BA3CA0;
  *(v17 + 568) = 0;
  *&v21[0] = 0xC00000001;
  DWORD2(v21[0]) = 11;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 600), v21, 3uLL);
  v20 = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v17 + 576), &v20, 1uLL);
  v19 = a1 + 104;
  v18 = *(a1 + 104);
  if ((0x4EC4EC4EC4EC4EC5 * ((*(v19 + 8) - v18) >> 3)) <= 0xA)
  {
LABEL_47:
    __break(1u);
  }

  *(v18 + 1040) = 2;
  if (*(v18 + 1048))
  {
    operator delete(*(v18 + 1056));
  }

  *(v18 + 1048) = 18;
  *(v18 + 1056) = 0u;
  *(v18 + 1072) = xmmword_273BA3B20;
  *(v18 + 1088) = 2;
  *&v21[0] = 0x100000002;
  DWORD2(v21[0]) = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 1120), v21, 3uLL);
  v20 = 12;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((v18 + 1096), &v20, 1uLL);
}

__n128 webrtc::ScalableVideoControllerNoLayering::StreamConfig@<Q0>(uint64_t a1@<X8>)
{
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  *(a1 + 12) = result;
  *(a1 + 28) = result;
  *a1 = 0x100000001;
  *(a1 + 8) = 0;
  return result;
}

void webrtc::ScalableVideoControllerNoLayering::DependencyStructure(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 4) = 0x100000001;
  LODWORD(v14) = 0;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a1 + 16), &v14, 1uLL);
  LODWORD(v16) = 2;
  v14 = 0;
  v15 = 2;
  LODWORD(v20) = 0;
  v17 = 0;
  v19 = 2;
  v3 = *(a1 + 112);
  v4 = (a1 + 104);
  if (v3 >= *(a1 + 120))
  {
    std::vector<webrtc::FrameDependencyTemplate>::__emplace_back_slow_path<webrtc::FrameDependencyTemplate const&>(v4);
  }

  std::vector<webrtc::FrameDependencyTemplate>::__construct_one_at_end[abi:sn200100]<webrtc::FrameDependencyTemplate const&>(v4, &v14);
  v5 = v3 + 104;
  *(a1 + 112) = v5;
  LODWORD(v9) = 2;
  v7 = 0;
  v8 = 2;
  LODWORD(__p) = 1;
  v12 = 2;
  LODWORD(v11) = 1;
  v10 = 2;
  v6 = (a1 + 104);
  if (v5 >= *(a1 + 120))
  {
    std::vector<webrtc::FrameDependencyTemplate>::__emplace_back_slow_path<webrtc::FrameDependencyTemplate const&>(v6);
  }

  std::vector<webrtc::FrameDependencyTemplate>::__construct_one_at_end[abi:sn200100]<webrtc::FrameDependencyTemplate const&>(v6, &v7);
  *(a1 + 112) = v5 + 104;
  if (v12)
  {
    operator delete(__p);
  }

  if (v10)
  {
    operator delete(v11);
    if ((v8 & 1) == 0)
    {
LABEL_11:
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v9);
  if ((v19 & 1) == 0)
  {
LABEL_12:
    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v20);
  if ((v17 & 1) == 0)
  {
LABEL_13:
    if ((v15 & 1) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v16);
    return;
  }

LABEL_18:
  operator delete(v18);
  if (v15)
  {
    goto LABEL_19;
  }
}

uint64_t webrtc::ScalableVideoControllerNoLayering::NextFrameConfig@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 9))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return this;
}

void *webrtc::ScalableVideoControllerNoLayering::OnEncodeDone@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  a2[7] = 0;
  a2[10] = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[13] = 0;
  a2[22] = 0;
  v4 = a2 + 22;
  a2[24] = 0;
  a2[25] = 0xFFFFFFFFLL;
  a2[23] = 0;
  if (a2 + 13 != (a1 + 16))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a1 + 24);
    }

    else
    {
      v6 = (a1 + 24);
    }

    absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>(a2 + 13, v6, v5 >> 1);
  }

  if (*(a1 + 4) == 1)
  {
    v7 = a2 + 14;
    v8 = a2[13];
    if (v8)
    {
      v7 = a2[14];
    }

    if (v8 >= 2)
    {
      v9 = v8 >> 1;
      v10 = ((v8 >> 1) - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v10)
      {
        v11 = v10 + 1;
        v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v13 = &v7[v12];
        v14 = v7 + 12;
        v15 = v12;
        do
        {
          *(v14 - 8) = 0;
          *v14 = 0;
          v14 += 16;
          v15 -= 2;
        }

        while (v15);
        if (v11 == v12)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = v7;
      }

      v16 = &v7[v9];
      do
      {
        *(v13++ + 4) = 0;
      }

      while (v13 != v16);
    }
  }

LABEL_18:
  v18 = 2;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a2 + 1, &v18, 1uLL);
  a2[23] = 0;
  result = a2[22];
  if ((a2[24] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    if (result)
    {
      operator delete(result);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    operator new();
  }

  a2[23] = 1;
  *result = 1;
  return result;
}

uint64_t webrtc::ScalableVideoControllerNoLayering::OnRatesUpdated(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(a2 + 4))
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

unint64_t *std::vector<webrtc::FrameDependencyTemplate>::__construct_one_at_end[abi:sn200100]<webrtc::FrameDependencyTemplate const&>(unint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  *v2 = *a2;
  *(v2 + 8) = 0;
  v7 = *(a2 + 8);
  v5 = (a2 + 8);
  v6 = v7;
  if (v7 >= 2)
  {
    if (v6)
    {
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom((v2 + 8), v5);
      *(v2 + 56) = 0;
      v8 = (v2 + 56);
      v9 = (a2 + 56);
      v10 = *(a2 + 56);
      if (v10 >= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v2 + 8) = v6;
      v13 = *(a2 + 16);
      v14 = *(a2 + 32);
      *(v2 + 48) = *(a2 + 48);
      *(v2 + 16) = v13;
      *(v2 + 32) = v14;
      *(v2 + 56) = 0;
      v8 = (v2 + 56);
      v9 = (a2 + 56);
      v10 = *(a2 + 56);
      if (v10 >= 2)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    *(v2 + 80) = 0;
    result = (v2 + 80);
    v11 = (a2 + 80);
    v12 = *(a2 + 80);
    if (v12 < 2)
    {
LABEL_5:
      v4[1] = v2 + 104;
      return result;
    }

    goto LABEL_14;
  }

  *(v2 + 56) = 0;
  v8 = (v2 + 56);
  v9 = (a2 + 56);
  v10 = *(a2 + 56);
  if (v10 < 2)
  {
    goto LABEL_4;
  }

LABEL_10:
  if (v10)
  {
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v8, v9);
    *(v2 + 80) = 0;
    result = (v2 + 80);
    v11 = (a2 + 80);
    v12 = *(a2 + 80);
    if (v12 < 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *(v2 + 56) = v10;
    *(v2 + 64) = *(a2 + 64);
    *(v2 + 80) = 0;
    result = (v2 + 80);
    v11 = (a2 + 80);
    v12 = *(a2 + 80);
    if (v12 < 2)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  if (v12)
  {
    result = absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(result, v11);
  }

  else
  {
    *(v2 + 80) = v12;
    *(v2 + 88) = *(a2 + 88);
  }

  v4[1] = v2 + 104;
  return result;
}

const char *ScaleRowDown2_NEON(const char *result, uint64_t a2, int8x16_t *a3, int a4)
{
  do
  {
    v9 = vld2q_s8(result);
    result += 32;
    a4 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a3++ = v9.val[1];
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x16_t ScaleRowDown2Linear_NEON(const char *_X0, uint64_t a2, uint8x16_t *a3, int a4)
{
  do
  {
    v10 = vld2q_s8(_X0);
    _X0 += 32;
    a4 -= 16;
    result = vrhaddq_u8(v10.val[0], v10.val[1]);
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a3++ = result;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x16_t ScaleRowDown2Box_NEON(uint8x16_t *_X0, uint64_t a2, int8x16_t *a3, int a4)
{
  _X1 = (_X0 + a2);
  do
  {
    v5 = *_X0;
    v6 = _X0[1];
    _X0 += 2;
    v7 = *_X1;
    v8 = _X1[1];
    _X1 += 2;
    a4 -= 16;
    __asm
    {
      PRFM            #0, [X0,#0x1C0]
      PRFM            #0, [X1,#0x1C0]
    }

    result = vrshrn_high_n_s16(vrshrn_n_s16(vpadalq_u8(vpaddlq_u8(v5), v7), 2uLL), vpadalq_u8(vpaddlq_u8(v6), v8), 2uLL);
    *a3++ = result;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

const char *ScaleRowDown4_NEON(const char *result, uint64_t a2, int8x16_t *a3, int a4)
{
  do
  {
    v9 = vld4q_s8(result);
    result += 64;
    a4 -= 16;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a3++ = v9.val[2];
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ScaleRowDown4Box_NEON(uint8x16_t *_X0, uint64_t a2, int8x8_t *a3, int a4)
{
  _X8 = (_X0 + a2);
  _X10 = (_X0 + 2 * a2);
  _X9 = (_X0 + 2 * a2 + a2);
  do
  {
    v7 = *_X0;
    v8 = _X0[1];
    _X0 += 2;
    v9 = *_X8;
    v10 = _X8[1];
    _X8 += 2;
    v11 = *_X10;
    v12 = _X10[1];
    _X10 += 2;
    v13 = *_X9;
    v14 = _X9[1];
    _X9 += 2;
    a4 -= 8;
    __asm
    {
      PRFM            #0, [X0,#0x1C0]
      PRFM            #0, [X8,#0x1C0]
      PRFM            #0, [X10,#0x1C0]
      PRFM            #0, [X9,#0x1C0]
    }

    result = vrshrn_n_s16(vpaddq_s16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v7), v9), v11), v13), vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v8), v10), v12), v14)), 4uLL);
    *a3++ = result;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x16_t ScaleRowDown34_NEON(uint64_t _X0, uint64_t a2, int8x16_t *a3, int a4)
{
  do
  {
    v10 = *_X0;
    v11 = *(_X0 + 32);
    _X0 += 64;
    a4 -= 48;
    result = vqtbl2q_s8(v10, libyuv::kShuf34_0);
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a3 = result;
    a3[1] = vqtbl2q_s8(*(&v10 + 16), libyuv::kShuf34_1);
    a3[2] = vqtbl2q_s8(v11, libyuv::kShuf34_2);
    a3 += 3;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

const char *ScaleRowDown34_0_Box_NEON(const char *result, uint64_t a2, char *a3, int a4)
{
  v4.i64[0] = 0x303030303030303;
  v4.i64[1] = 0x303030303030303;
  _X1 = &result[a2];
  do
  {
    v12 = vld4q_s8(result);
    result += 64;
    v13 = vld4q_s8(_X1);
    _X1 += 64;
    a4 -= 48;
    __asm { PRFM            #0, [X0,#0x1C0] }

    v12.val[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v13.val[0].i8), *v12.val[0].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v13.val[0]), v12.val[0], v4), 2uLL);
    v12.val[1] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v13.val[1].i8), *v12.val[1].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v13.val[1]), v12.val[1], v4), 2uLL);
    v12.val[2] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v13.val[2].i8), *v12.val[2].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v13.val[2]), v12.val[2], v4), 2uLL);
    v12.val[3] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v13.val[3].i8), *v12.val[3].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v13.val[3]), v12.val[3], v4), 2uLL);
    __asm { PRFM            #0, [X1,#0x1C0] }

    v12.val[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v12.val[1].i8), *v12.val[0].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v12.val[1]), v12.val[0], v4), 2uLL);
    v12.val[1] = vrhaddq_u8(v12.val[1], v12.val[2]);
    v12.val[2] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v12.val[2].i8), *v12.val[3].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v12.val[2]), v12.val[3], v4), 2uLL);
    vst3q_s8(a3, *v12.val[0].i8);
    a3 += 48;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

const char *ScaleRowDown34_1_Box_NEON(const char *result, uint64_t a2, char *a3, int a4)
{
  v4.i64[0] = 0x303030303030303;
  v4.i64[1] = 0x303030303030303;
  _X1 = &result[a2];
  do
  {
    v12 = vld4q_s8(result);
    result += 64;
    v13 = vld4q_s8(_X1);
    _X1 += 64;
    a4 -= 48;
    v12.val[0] = vrhaddq_u8(v12.val[0], v13.val[0]);
    v12.val[1] = vrhaddq_u8(v12.val[1], v13.val[1]);
    v12.val[2] = vrhaddq_u8(v12.val[2], v13.val[2]);
    v12.val[3] = vrhaddq_u8(v12.val[3], v13.val[3]);
    __asm { PRFM            #0, [X0,#0x1C0] }

    v12.val[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v12.val[1].i8), *v12.val[0].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v12.val[1]), v12.val[0], v4), 2uLL);
    __asm { PRFM            #0, [X1,#0x1C0] }

    v12.val[1] = vrhaddq_u8(v12.val[1], v12.val[2]);
    v12.val[2] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v12.val[2].i8), *v12.val[3].i8, *v4.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v12.val[2]), v12.val[3], v4), 2uLL);
    vst3q_s8(a3, *v12.val[0].i8);
    a3 += 48;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

__n128 ScaleRowDown38_NEON(uint64_t _X0, uint64_t a2, int8x16_t *a3, int a4)
{
  v4 = a4 - 12;
  if (v4)
  {
    do
    {
      v13 = *_X0;
      _X0 += 32;
      v4 -= 12;
      __asm { PRFM            #0, [X0,#0x1C0] }

      *a3 = vqtbl2q_s8(v13, libyuv::kShuf38);
      a3 = (a3 + 12);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  result = *_X0;
  v11 = *(_X0 + 16);
  v12 = vqtbl2q_s8(*result.n128_u64, libyuv::kShuf38);
  a3->i64[0] = v12.i64[0];
  a3->i32[2] = v12.i32[2];
  return result;
}

int16x8_t ScaleRowDown38_3_Box_NEON(uint8x16_t *a1, uint64_t a2, void *a3, int a4)
{
  v4 = (a1 + a2);
  v5 = (a1 + 2 * a2);
  do
  {
    v7 = *a1;
    v6 = a1[1];
    a1 += 2;
    v9 = *v4;
    v8 = v4[1];
    v4 += 2;
    v11 = *v5;
    v10 = v5[1];
    v5 += 2;
    v12 = __OFSUB__(a4, 12);
    a4 -= 12;
    v18.val[0] = vaddw_u8(vaddl_u8(*v7.i8, *v9.i8), *v11.i8);
    v17.val[0] = vaddw_u8(vaddl_u8(*v6.i8, *v8.i8), *v10.i8);
    v18.val[1] = vaddw_high_u8(vaddl_high_u8(v7, v9), v11);
    v17.val[1] = vaddw_high_u8(vaddl_high_u8(v6, v8), v10);
    result = vqtbl2q_s8(v17, libyuv::kScaleRowDown38_3_BoxIndices1);
    v18.val[1] = vqrdmulhq_s16(vaddq_s16(vaddq_s16(vqtbl2q_s8(v18, libyuv::kScaleRowDown38_3_BoxIndices1), vqtbl2q_s8(v18, libyuv::kScaleRowDown38_3_BoxIndices2)), vqtbl2q_s8(v18, libyuv::kScaleRowDown38_3_BoxIndices3)), libyuv::kMult38_Div996);
    v14 = vqrdmulhq_s16(vaddq_s16(vaddq_s16(result, vqtbl2q_s8(v17, libyuv::kScaleRowDown38_3_BoxIndices2)), vqtbl2q_s8(v17, libyuv::kScaleRowDown38_3_BoxIndices3)), libyuv::kMult38_Div996);
    v15 = vqtbl2q_s8(*(&v18 + 16), libyuv::kScaleRowDown38_NarrowIndices);
    *a3 = v15.i64[0];
    v16 = a3 + 1;
    *v16 = v15.i32[2];
    a3 = v16 + 1;
  }

  while (!((a4 < 0) ^ v12 | (a4 == 0)));
  return result;
}

int16x8_t ScaleRowDown38_2_Box_NEON(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v4 = a1 + a2;
  do
  {
    v11.val[0] = *a1;
    v10.val[0] = *(a1 + 16);
    a1 += 32;
    v11.val[1] = *v4;
    v10.val[1] = *(v4 + 16);
    v4 += 32;
    v5 = __OFSUB__(a4, 12);
    a4 -= 12;
    v6 = vpaddlq_u8(vqtbl2q_s8(v10, libyuv::kScaleRowDown38_2_BoxIndices2));
    result = vaddq_s16(vpaddlq_u8(vqtbl1q_s8(v10.val[0], libyuv::kScaleRowDown38_2_BoxIndices1)), vpaddlq_u8(vqtbl1q_s8(v10.val[1], libyuv::kScaleRowDown38_2_BoxIndices1)));
    v11.val[1] = vqrdmulhq_s16(vaddq_s16(vaddq_s16(vpaddlq_u8(vqtbl1q_s8(v11.val[0], libyuv::kScaleRowDown38_2_BoxIndices1)), vpaddlq_u8(vqtbl1q_s8(v11.val[1], libyuv::kScaleRowDown38_2_BoxIndices1))), vpaddlq_u8(vqtbl2q_s8(v11, libyuv::kScaleRowDown38_2_BoxIndices2))), libyuv::kMult38_Div664);
    v8 = vqrdmulhq_s16(vaddq_s16(result, v6), libyuv::kMult38_Div664);
    v11.val[1] = vqtbl2q_s8(*(&v11 + 16), libyuv::kScaleRowDown38_NarrowIndices);
    *a3 = v11.val[1].i64[0];
    v9 = a3 + 1;
    *v9 = v11.val[1].i32[2];
    a3 = v9 + 1;
  }

  while (!((a4 < 0) ^ v5 | (a4 == 0)));
  return result;
}

uint8x16_t *ScaleAddRow_NEON(uint8x16_t *result, uint16x8_t *a2, int a3)
{
  do
  {
    v3 = *result++;
    v4 = vaddw_high_u8(a2[1], v3);
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a2 = vaddw_u8(*a2, *v3.i8);
    a2[1] = v4;
    a2 += 2;
    _VF = __OFSUB__(a3, 16);
    a3 -= 16;
  }

  while (!((a3 < 0) ^ _VF | (a3 == 0)));
  return result;
}

void *ScaleFilterCols_NEON(void *result, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v5 = vdupq_n_s32(a5);
  v6 = vshlq_n_s32(v5, 2uLL);
  v7 = vshlq_n_s32(v5, 3uLL);
  v8 = vaddq_s32(vmulq_s32(v5, __const_ScaleFilterCols_NEON_dx_offset), vdupq_n_s32(a4));
  v9 = vtrn1q_s16(v7, 0);
  v10 = vtrn1q_s16(v8, 0);
  v11 = vtrn1q_s16(vaddq_s32(v8, v6), 0);
  do
  {
    v12 = (a2 + (a4 >> 16));
    v13 = a4 + a5;
    v14.i16[0] = *v12;
    v15 = (a2 + (v13 >> 16));
    v16 = v13 + a5;
    v14.i16[1] = *v15;
    v17 = (a2 + (v16 >> 16));
    v18 = v16 + a5;
    v14.i16[2] = *v17;
    v19 = (a2 + (v18 >> 16));
    v20 = v18 + a5;
    v14.i16[3] = *v19;
    v21 = (a2 + (v20 >> 16));
    v22 = v20 + a5;
    v14.i16[4] = *v21;
    v23 = (a2 + (v22 >> 16));
    v24 = v22 + a5;
    v14.i16[5] = *v23;
    v25 = (a2 + (v24 >> 16));
    v26 = v24 + a5;
    v14.i16[6] = *v25;
    v27 = (a2 + (v26 >> 16));
    a4 = v26 + a5;
    v14.i16[7] = *v27;
    v28 = __OFSUB__(a3, 8);
    a3 -= 8;
    v29 = vtrn1q_s8(v14, 0);
    v30 = vtrn2q_s8(v14, 0);
    *v29.i8 = vmovn_s16(vaddq_s16(v29, vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v30.i8, *v29.i8), v10), 0x10uLL), vmulq_s32(vsubl_high_s16(v30, v29), v11), 0x10uLL)));
    v10 = vaddq_s16(v10, v9);
    v11 = vaddq_s16(v11, v9);
    *result++ = v29.i64[0];
  }

  while (!((a3 < 0) ^ v28 | (a3 == 0)));
  return result;
}

int32x4_t ScaleARGBRowDown2_NEON(int32x4_t *_X0, uint64_t a2, int32x4_t *a3, int a4)
{
  do
  {
    v4 = *_X0;
    v5 = _X0[1];
    v6 = _X0[2];
    v7 = _X0[3];
    _X0 += 4;
    a4 -= 8;
    __asm { PRFM            #0, [X0,#0x1C0] }

    result = vuzp2q_s32(v4, v5);
    *a3 = result;
    a3[1] = vuzp2q_s32(v6, v7);
    a3 += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

uint8x16_t ScaleARGBRowDown2Linear_NEON(const float *a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 8;
  do
  {
    v7 = vld2q_f32(a1);
    a1 += 16;
    v8 = vld2q_f32(v4);
    v4 += 16;
    result = vrhaddq_u8(v7.val[0], v7.val[1]);
    v6 = __OFSUB__(a4, 8);
    a4 -= 8;
    *a3 = result;
    a3[1] = vrhaddq_u8(v8.val[0], v8.val[1]);
    a3 += 2;
  }

  while (!((a4 < 0) ^ v6 | (a4 == 0)));
  return result;
}

int8x8_t ScaleARGBRowDown2Box_NEON(const float *a1, uint64_t a2, int8x8_t *a3, int a4)
{
  v4 = (a1 + a2);
  do
  {
    v8 = vld2q_f32(a1);
    a1 += 8;
    v9 = vld2q_f32(v4);
    v4 += 8;
    v5 = vaddl_high_u8(v8.val[0], v8.val[1]);
    result = vrshrn_n_s16(vaddq_s16(vaddl_u8(*v8.val[0].f32, *v8.val[1].f32), vaddl_u8(*v9.val[0].f32, *v9.val[1].f32)), 2uLL);
    v7 = __OFSUB__(a4, 4);
    a4 -= 4;
    *a3 = result;
    a3[1] = vrshrn_n_s16(vaddq_s16(v5, vaddl_high_u8(v9.val[0], v9.val[1])), 2uLL);
    a3 += 2;
  }

  while (!((a4 < 0) ^ v7 | (a4 == 0)));
  return result;
}

uint64_t ScaleARGBRowDownEven_NEON(uint64_t result, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  v5 = 0;
  do
  {
    v6 = *(result + v5);
    v7 = *(result + 4 * a3 + v5);
    v8 = *(result + 8 * a3 + v5);
    v9 = *(result + 12 * a3 + v5);
    v5 += 16 * a3;
    a5 -= 4;
    __asm { PRFM            #0, [X0,#0x1C0] }

    *a4 = v6;
    a4[1] = v7;
    v15 = a4 + 2;
    *v15 = v8;
    v15[1] = v9;
    a4 = v15 + 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

int8x8_t ScaleARGBRowDownEvenBox_NEON(uint8x8_t *_X0, uint64_t a2, int a3, int8x8_t *a4, int a5)
{
  v5 = 4 * a3;
  _X1 = (_X0 + a2);
  do
  {
    v8 = *_X0;
    v7 = (_X0 + v5);
    v10 = *_X1;
    v9 = (_X1 + v5);
    v12 = *v7;
    v11 = (v7 + v5);
    v14 = *v9;
    v13 = (v9 + v5);
    v16 = *v11;
    v15 = (v11 + v5);
    v18 = *v13;
    v17 = (v13 + v5);
    v19 = *v15;
    _X0 = (v15 + v5);
    v20 = *v17;
    _X1 = (v17 + v5);
    v21 = vaddl_u8(v8, v10);
    v22 = vaddl_u8(v12, v14);
    v23 = vaddl_u8(v16, v18);
    v24 = vaddl_u8(v19, v20);
    __asm
    {
      PRFM            #0, [X0,#0x1C0]
      PRFM            #0, [X1,#0x1C0]
    }

    result = vrshrn_n_s16(vaddq_s16(vzip1q_s64(v21, v22), vzip2q_s64(v21, v22)), 2uLL);
    _VF = __OFSUB__(a5, 4);
    a5 -= 4;
    *a4 = result;
    a4[1] = vrshrn_n_s16(vaddq_s16(vzip1q_s64(v23, v24), vzip2q_s64(v23, v24)), 2uLL);
    a4 += 2;
  }

  while (!((a5 < 0) ^ _VF | (a5 == 0)));
  return result;
}

_OWORD *ScaleARGBCols_NEON(_OWORD *result, uint64_t _X1, int a3, int a4, int a5)
{
  v5 = a4;
  do
  {
    v6 = (_X1 + 4 * (v5 >> 16));
    v7 = v5 + a5;
    LODWORD(v8) = *v6;
    v9 = (_X1 + 4 * (v7 >> 16));
    v10 = v7 + a5;
    DWORD1(v8) = *v9;
    v11 = (_X1 + 4 * (v10 >> 16));
    v12 = v10 + a5;
    DWORD2(v8) = *v11;
    v13 = (_X1 + 4 * (v12 >> 16));
    v14 = v12 + a5;
    HIDWORD(v8) = *v13;
    v15 = (_X1 + 4 * (v14 >> 16));
    v16 = v14 + a5;
    LODWORD(v17) = *v15;
    v18 = (_X1 + 4 * (v16 >> 16));
    v19 = v16 + a5;
    DWORD1(v17) = *v18;
    v20 = (_X1 + 4 * (v19 >> 16));
    v21 = v19 + a5;
    DWORD2(v17) = *v20;
    v22 = (_X1 + 4 * (v21 >> 16));
    v5 = v21 + a5;
    HIDWORD(v17) = *v22;
    __asm { PRFM            #0, [X1,#0x1C0] }

    *result = v8;
    result[1] = v17;
    result += 2;
    _VF = __OFSUB__(a3, 8);
    a3 -= 8;
  }

  while (!((a3 < 0) ^ _VF | (a3 == 0)));
  return result;
}

int8x8_t *ScaleARGBFilterCols_NEON(int8x8_t *result, uint64_t _X1, int a3, signed int a4, signed int a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v10 = a4;
  v11 = vdupq_n_s32(a5);
  v12 = vshlq_n_s32(v11, 2uLL);
  v13.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
  v13.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
  v14 = vaddq_s32(vmulq_s32(v11, __const_ScaleARGBFilterCols_NEON_dx_offset), vdupq_n_s32(a4));
  do
  {
    v15 = (_X1 + 4 * (v10 >> 16));
    v16 = v10 + a5;
    v17.i64[0] = *v15;
    v18 = (_X1 + 4 * (v16 >> 16));
    v19 = v16 + a5;
    v20.i64[0] = *v18;
    v21 = (_X1 + 4 * (v19 >> 16));
    v22 = v19 + a5;
    v17.i64[1] = *v21;
    v23 = (_X1 + 4 * (v22 >> 16));
    v10 = v22 + a5;
    v20.i64[1] = *v23;
    a3 -= 4;
    *a10.i8 = vand_s8(vshrn_n_s32(v14, 9uLL), *v13.i8);
    v24 = vtrn1q_s32(v17, v20);
    a10 = vqtbl1q_s8(a10, libyuv::kScaleARGBFilterColsShuffleIndices);
    v25 = vtrn2q_s32(v17, v20);
    v26 = veorq_s8(a10, v13);
    __asm { PRFM            #0, [X1,#0x1C0] }

    v14 = vaddq_s32(v14, v12);
    *result = vshrn_n_s16(vmlal_u8(vmull_u8(*v25.i8, *a10.i8), *v24.i8, *v26.i8), 7uLL);
    result[1] = vshrn_n_s16(vmlal_high_u8(vmull_high_u8(v25, a10), v24, v26), 7uLL);
    result += 2;
  }

  while (!(_NF ^ _VF | _ZF));
  return result;
}

void webrtc::ScreenshareLayers::ScreenshareLayers(webrtc::ScreenshareLayers *this, int a2)
{
  *this = &unk_28829EB08;
  if (a2 >= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = a2;
  }

  *(this + 2) = v2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(this + 28) = v3;
  *(this + 44) = v3;
  *(this + 15) = -1;
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 20) = 0;
  *(this + 13) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 112) = 0;
  *(this + 116) = 0;
  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0;
  *(this + 23) = -1;
  *(this + 192) = 0;
  *(this + 196) = 0x447A000000000000;
  *(this + 13) = vdupq_n_s64(0x3E8uLL);
  *(this + 224) = 0;
  *(this + 228) = xmmword_273BA03C0;
  *(this + 244) = xmmword_273B92200;
  *(this + 260) = 0;
  *(this + 34) = -1;
  *(this + 456) = 0;
  *(this + 460) = 0;
  *(this + 464) = 0;
  *(this + 468) = 0;
  *(this + 472) = 0;
  *(this + 476) = 0;
  *(this + 480) = 0;
  *(this + 484) = 0;
  *(this + 344) = 0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  operator new();
}

uint64_t webrtc::ScreenshareLayers::UpdateHistograms(uint64_t this)
{
  if (*(this + 272) != -1)
  {
    v1 = this;
    if (webrtc::g_clock)
    {
      this = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      this = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v2 = this / 1000000 - v1[34];
    if (v2 >= 9500)
    {
      v3 = ((v2 + 500) * 0x20C49BA5E353F7CFLL) >> 64;
      v4 = (v3 >> 7) + (v3 >> 63);
      explicit = atomic_load_explicit(&_MergedGlobals_20, memory_order_acquire);
      if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v6 = 0, atomic_compare_exchange_strong(&_MergedGlobals_20, &v6, explicit), explicit))
      {
        webrtc::metrics::HistogramAdd(explicit, (v1[35] + (v4 >> 1)) / v4);
      }

      CountsLinear = atomic_load_explicit(&qword_28100BB68, memory_order_acquire);
      if (CountsLinear || (CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear(), v8 = 0, atomic_compare_exchange_strong(&qword_28100BB68, &v8, CountsLinear), CountsLinear))
      {
        webrtc::metrics::HistogramAdd(CountsLinear, (v1[36] + (v4 >> 1)) / v4);
      }

      v9 = v1[36] + v1[35];
      v10 = atomic_load_explicit(&qword_28100BB70, memory_order_acquire);
      v11 = v9;
      if (v10 || (v10 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v12 = 0, atomic_compare_exchange_strong(&qword_28100BB70, &v12, v10), v10))
      {
        v13 = v1[37];
        if (v13)
        {
          v14 = v11 / v13;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        webrtc::metrics::HistogramAdd(v10, v14);
      }

      this = atomic_load_explicit(&qword_28100BB78, memory_order_acquire);
      if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v15 = 0, atomic_compare_exchange_strong(&qword_28100BB78, &v15, this), this))
      {
        v16 = v1[38];
        if (v16)
        {
          v17 = v11 / v16;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        this = webrtc::metrics::HistogramAdd(this, v17);
      }

      if (v1[35] >= 1)
      {
        v18 = atomic_load_explicit(&qword_28100BB80, memory_order_acquire);
        if (v18 || (v18 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v19 = 0, atomic_compare_exchange_strong(&qword_28100BB80, &v19, v18), v18))
        {
          webrtc::metrics::HistogramAdd(v18, v1[39] / v1[35]);
        }

        this = atomic_load_explicit(&qword_28100BB88, memory_order_acquire);
        if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v20 = 0, atomic_compare_exchange_strong(&qword_28100BB88, &v20, this), this))
        {
          this = webrtc::metrics::HistogramAdd(this, v1[41] / v1[35]);
        }
      }

      if (v1[36] >= 1)
      {
        v21 = atomic_load_explicit(&qword_28100BB90, memory_order_acquire);
        if (v21 || (v21 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v22 = 0, atomic_compare_exchange_strong(&qword_28100BB90, &v22, v21), v21))
        {
          webrtc::metrics::HistogramAdd(v21, v1[40] / v1[36]);
        }

        this = atomic_load_explicit(&qword_28100BB98, memory_order_acquire);
        if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v23 = 0, atomic_compare_exchange_strong(&qword_28100BB98, &v23, this), this))
        {
          v24 = v1[42] / v1[36];

          return webrtc::metrics::HistogramAdd(this, v24);
        }
      }
    }
  }

  return this;
}

void webrtc::ScreenshareLayers::~ScreenshareLayers(webrtc::ScreenshareLayers *this)
{
  webrtc::ScreenshareLayers::UpdateHistograms(this);
  v2 = *(this + 61);
  *(this + 61) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 16);
  std::__tree<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>>>::destroy(*(this + 12));
}

{
  webrtc::ScreenshareLayers::UpdateHistograms(this);
  v2 = *(this + 61);
  *(this + 61) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 16);
  std::__tree<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>>>::destroy(*(this + 12));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::ScreenshareLayers::SetQpLimits(uint64_t this, unint64_t a2, int a3, int a4)
{
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 12) = a3;
    *(this + 16) = 1;
    *(this + 20) = a4;
    *(this + 24) = 1;
  }

  return this;
}

void webrtc::ScreenshareLayers::NextFrameConfig(webrtc::ScreenshareLayers *this@<X0>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = this + 96;
  v6 = *(this + 12);
  if (v6)
  {
    v8 = this + 96;
    v9 = *(this + 12);
    do
    {
      v10 = *(v9 + 8);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v8 = v9;
      }

      v9 = *&v9[8 * v12];
    }

    while (v9);
    if (v8 != v7 && *(v8 + 8) <= a2)
    {
      v19 = *(v8 + 104);
      *a3 = *(v8 + 88);
      *(a3 + 16) = v19;
      return;
    }
  }

  if (*(this + 2) <= 1)
  {
    LODWORD(__p) = 2;
    v56 = 2;
    v60[0] = 0;
    *&v60[4] = xmmword_273BA3E70;
    *&v60[20] = 255;
    v60[28] = 1;
    if (!v6)
    {
LABEL_16:
      operator new();
    }

    v13 = 2;
    while (1)
    {
      while (1)
      {
        v14 = v6;
        v15 = *(v6 + 8);
        if (v15 <= a2)
        {
          break;
        }

        v6 = *v14;
        if (!*v14)
        {
          goto LABEL_16;
        }
      }

      if (v15 >= a2)
      {
        break;
      }

      v6 = v14[1];
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    if (v14 + 5 != &v56)
    {
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v14 + 5, &__p, 1uLL);
      v13 = v56;
    }

    v16 = *v60;
    *(v14 + 11) = *v60;
    *(v14 + 101) = *&v60[13];
    v17 = *&v60[16];
    *a3 = v16;
    *(a3 + 16) = v17;
    if ((v13 & 1) == 0)
    {
      return;
    }

LABEL_93:
    operator delete(__p);
    return;
  }

  if (webrtc::g_clock)
  {
    v18 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v18 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v20 = v18 / 1000000;
  if (*(this + 76))
  {
    v21 = *(this + 18);
    v11 = a2 >= v21;
    v22 = a2 - v21;
    v23 = v22 != 0 && v11;
    if (v22 != 0x80000000)
    {
      v23 = v22 >= 0;
    }

    if (!v23)
    {
      v22 |= 0xFFFFFFFF00000000;
    }

    v24 = v22 + *(this + 8);
  }

  else
  {
    v24 = a2;
  }

  *(this + 8) = v24;
  *(this + 18) = a2;
  *(this + 76) = 1;
  v25 = *(this + 4);
  if (v25 == -1)
  {
    if ((*(this + 116) & 1) == 0)
    {
      goto LABEL_101;
    }

    v27 = 112;
    if (*(this + 124))
    {
      v27 = 120;
    }

    v26 = 0x15F90u / *(this + v27);
  }

  else
  {
    v26 = v24 - v25;
    if ((*(this + 116) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v28 = webrtc::RateStatistics::Rate((this + 128), v20);
  if ((*(this + 116) & 1) == 0)
  {
LABEL_101:
    __break(1u);
  }

  v30 = *(this + 28);
  if ((v29 & 1) != 0 && v28 > v30)
  {
    goto LABEL_47;
  }

  if (*(this + 4) != -1 && v26 >= 1)
  {
    if (v26 >= (42949673 * (85 * (0x15F90 / v30))) >> 32)
    {
      goto LABEL_54;
    }

LABEL_47:
    *a3 = 1;
    *(a3 + 12) = 0;
    *(a3 + 4) = 0;
    *(a3 + 20) = 255;
    *(a3 + 28) = 1;
    return;
  }

  v31 = *(this + 7);
  if (v31 != -1 && v20 - v31 < ((42949673 * (85 * (0x3E8 / v30))) >> 32))
  {
    goto LABEL_47;
  }

LABEL_54:
  if (*(this + 34) == -1)
  {
    *(this + 34) = v20;
  }

  v32 = *(this + 60);
  v33 = v26 / 90 * *(this + 61);
  v34 = (v33 + (v33 < 0 ? 7uLL : 0)) >> 3;
  v11 = v32 >= v34;
  v35 = v32 - v34;
  if (!v11)
  {
    v35 = 0;
  }

  *(this + 60) = v35;
  v36 = v26 / 90 * *(this + 66);
  v37 = (v36 + (v36 < 0 ? 7uLL : 0)) >> 3;
  v38 = *(this + 65);
  v11 = v38 >= v37;
  v39 = v38 - v37;
  if (!v11)
  {
    v39 = 0;
  }

  *(this + 65) = v39;
  *(this + 4) = a2;
  *(this + 7) = v20;
  v40 = *(this + 7);
  if (v40 != -1 && *(this + 5 * v40 + 57) == 1)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        v41 = *(this + 62);
        if (v41 == 1)
        {
          goto LABEL_65;
        }

LABEL_80:
        v46 = *(this + 64);
        if (v46 == -1)
        {
          goto LABEL_82;
        }

        v47 = v24 - *(this + 5);
        if (v47 > 360000)
        {
          goto LABEL_82;
        }

        if (v47 >= 180000)
        {
          if (v41 == 4 || *(this + 59) - v46 < 8)
          {
            goto LABEL_82;
          }
        }

        else if (v41 == 4)
        {
LABEL_82:
          *(this + 5) = v24;
          goto LABEL_83;
        }

LABEL_66:
        v42 = 4;
        v56 = 4;
        __p = 0x300000000;
        v58 = v54;
        v59 = v55;
        v60[0] = 0;
        *&v60[1] = v52;
        v60[3] = v53;
        *&v60[4] = xmmword_273B92010;
        v60[28] = 1;
        *&v60[20] = 1;
        v43 = *v7;
        if (*v7)
        {
          goto LABEL_86;
        }

        goto LABEL_89;
      }

      goto LABEL_74;
    }

LABEL_77:
    *(this + 6) = v24;
    v42 = 4;
    v56 = 4;
    __p = 0x200000002;
    v58 = v54;
    v59 = v55;
    v60[0] = 0;
    *&v60[1] = v52;
    v60[3] = v53;
    *&v60[4] = xmmword_273B91FA0;
    v60[28] = 1;
    *&v60[20] = 0;
    v43 = *v7;
    if (*v7)
    {
      goto LABEL_86;
    }

LABEL_89:
    operator new();
  }

  v44 = *(this + 6);
  v45 = *(this + 20);
  if (v44 != -1 && v24 - v44 >= 247590)
  {
    v35 = v45 - 1;
    *(this + 60) = v45 - 1;
  }

  if (v35 <= v45)
  {
    *(this + 7) = 0;
    goto LABEL_77;
  }

  if (v39 > v45)
  {
    *(this + 7) = -1;
    ++*(this + 37);
LABEL_74:
    v42 = 0;
    v56 = 0;
    v60[0] = 1;
    *&v60[4] = 0uLL;
    *&v60[20] = 255;
    v60[28] = 1;
    v43 = *v7;
    if (*v7)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  *(this + 7) = 1;
  v41 = *(this + 62);
  if (v41 != 1)
  {
    goto LABEL_80;
  }

LABEL_65:
  if (*(this + 5) != v24)
  {
    goto LABEL_66;
  }

LABEL_83:
  v42 = 4;
  v56 = 4;
  __p = 0x200000000;
  v58 = v54;
  v59 = v55;
  v60[0] = 0;
  *&v60[1] = v52;
  v60[3] = v53;
  *&v60[4] = xmmword_273B91FE0;
  v60[28] = 1;
  *&v60[20] = 0x100000001;
  v43 = *v7;
  if (!*v7)
  {
    goto LABEL_89;
  }

  while (1)
  {
LABEL_86:
    while (1)
    {
      v48 = v43;
      v49 = *(v43 + 8);
      if (v49 <= a2)
      {
        break;
      }

      v43 = *v48;
      if (!*v48)
      {
        goto LABEL_89;
      }
    }

    if (v49 >= a2)
    {
      break;
    }

    v43 = v48[1];
    if (!v43)
    {
      goto LABEL_89;
    }
  }

  if (v48 + 5 != &v56)
  {
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v48 + 5, &__p, v42 >> 1);
    LOBYTE(v42) = v56;
  }

  v50 = *v60;
  *(v48 + 11) = *v60;
  *(v48 + 101) = *&v60[13];
  v51 = *&v60[16];
  *a3 = v50;
  *(a3 + 16) = v51;
  if (v42)
  {
    goto LABEL_93;
  }
}

uint64_t webrtc::ScreenshareLayers::OnRatesUpdated(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = v4 - *a3;
  if (v4 == *a3)
  {
    __break(1u);
  }

  else
  {
    v7 = *v5 / 0x3E8u;
    v8 = v7;
    if (v6 >= 5)
    {
      v8 = v5[1] / 0x3E8u + v7;
    }

    if (*(result + 116))
    {
      v9 = *(result + 124);
      if (v9 == 1 && *(result + 120) != a4 || v7 != *(result + 244) || v8 != *(result + 264))
      {
        *(result + 224) = 1;
      }

      if ((a4 & 0x80000000) == 0)
      {
        if ((v9 & 1) == 0)
        {
          *(result + 124) = 1;
        }

        *(result + 120) = a4;
        goto LABEL_14;
      }

      if (!v9)
      {
LABEL_14:
        *(result + 244) = v7;
        *(result + 264) = v8;
        return result;
      }

      *(result + 124) = 0;
      *(result + 244) = v7;
      *(result + 264) = v8;
    }

    else
    {
      *(result + 116) = 1;
      *(result + 112) = a4;
      *(result + 120) = a4;
      *(result + 124) = 1;
      *(result + 224) = 1;
      *(result + 244) = v7;
      *(result + 264) = v8;
    }
  }

  return result;
}

void webrtc::ScreenshareLayers::OnEncodeDone(webrtc::ScreenshareLayers *this, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, webrtc::CodecSpecificInfo *a7, uint64_t a8)
{
  v101 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/screenshare_layers.cc");
    }

    *(this + 5 * *(this + 7) + 57) = 1;
    ++*(this + 38);
    return;
  }

  v10 = a6;
  v11 = a5;
  v12 = a4;
  LOBYTE(v95) = 0;
  v100 = 0;
  v14 = *(this + 12);
  if (v14)
  {
    v15 = this + 96;
    do
    {
      v16 = *(v14 + 8);
      v17 = v16 >= a3;
      v18 = v16 < a3;
      if (v17)
      {
        v15 = v14;
      }

      v14 = *&v14[8 * v18];
    }

    while (v14);
    if (v15 != this + 96 && *(v15 + 8) <= a3)
    {
      v19 = *(v15 + 5);
      v95 = 0;
      if (v19 >= 2)
      {
        if (v19)
        {
          absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(&v95, v15 + 5);
        }

        else
        {
          v95 = v19;
          v20 = *(v15 + 4);
          v96[0] = *(v15 + 3);
          v96[1] = v20;
          v97 = *(v15 + 10);
        }
      }

      v28 = *(v15 + 104);
      v98 = *(v15 + 88);
      v99 = v28;
      v100 = 1;
      v29 = *(v15 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        v31 = v15;
        do
        {
          v30 = *(v31 + 2);
          v32 = *v30 == v31;
          v31 = v30;
        }

        while (!v32);
      }

      if (*(this + 11) == v15)
      {
        *(this + 11) = v30;
      }

      v33 = *(this + 12);
      --*(this + 13);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v33, v15);
      if (v15[40])
      {
        operator delete(*(v15 + 6));
      }

      operator delete(v15);
    }
  }

  v34 = (a7 + 1640);
  if (*(a7 + 1848) == 1)
  {
    webrtc::GenericFrameInfo::~GenericFrameInfo(v34);
  }

  *(a7 + 212) = 0;
  *(a7 + 215) = 0;
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = (a7 + 1744);
  *(a7 + 218) = 0;
  *(a7 + 227) = 0;
  *(a7 + 229) = 0;
  *(a7 + 228) = 0;
  *(a7 + 230) = 0xFFFFFFFFLL;
  *(a7 + 1848) = 1;
  if (*(this + 2) == 1)
  {
    *(a7 + 9) = 255;
    *(a7 + 411) = 0;
    LODWORD(v84) = 2;
    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a7 + 206, &v84, 1uLL);
    LODWORD(v84) = 0;
    LOBYTE(v83) = v11 ^ 1;
    v36 = *(a7 + 218);
    if (v36)
    {
      v37 = *(a7 + 219);
      v38 = *(a7 + 220);
    }

    else
    {
      v37 = a7 + 1752;
      v38 = 8;
    }

    if (v36 >> 1 == v38)
    {
LABEL_138:
      absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int,BOOL,BOOL>(a7 + 218);
    }

    if (v37)
    {
      v43 = &v37[8 * (v36 >> 1)];
      *v43 = 0;
      v43[4] = v11 ^ 1;
      v43[5] = 1;
      *v35 = v36 + 2;
      v44 = webrtc::g_clock;
      if (!webrtc::g_clock)
      {
        goto LABEL_120;
      }

      goto LABEL_46;
    }

LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (*(this + 76))
  {
    v39 = *(this + 18);
    v17 = a3 >= v39;
    v40 = a3 - v39;
    v41 = v40 != 0 && v17;
    if (v40 != 0x80000000)
    {
      v41 = v40 >= 0;
    }

    if (!v41)
    {
      v40 |= 0xFFFFFFFF00000000;
    }

    v42 = v40 + *(this + 8);
  }

  else
  {
    v42 = a3;
  }

  *(this + 8) = v42;
  *(this + 18) = a3;
  *(this + 76) = 1;
  if (v100 == 1)
  {
    v46 = BYTE4(v99);
    *(a7 + 9) = BYTE4(v99);
    *(a7 + 10) = BYTE8(v99);
    *(a7 + 411) = v46;
    if ((a7 + 1648) != &v95)
    {
      if (v95)
      {
        v47 = *&v96[0];
      }

      else
      {
        v47 = v96;
      }

      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a7 + 206, v47, v95 >> 1);
    }
  }

  if (!v11)
  {
    v55 = *(this + 7);
    if ((v55 & 0x80000000) == 0)
    {
      v56 = this + 20 * v55;
      v58 = *(v56 + 57);
      v57 = v56 + 228;
      if (v58 == 4)
      {
        *v57 = 0;
      }
    }

    goto LABEL_95;
  }

  *(a7 + 9) = 256;
  *(this + 5) = v42;
  *(this + 57) = 4;
  *(this + 62) = 4;
  *(this + 7) = 1;
  v48 = *(this + 2);
  if (v48 >= 3)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/screenshare_layers.cc", 439, "num_layers < 3", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, *(this + 2));
    goto LABEL_140;
  }

  if (v48 <= 0)
  {
LABEL_140:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/vp8/screenshare_layers.cc", 440, "num_layers > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v48);
    webrtc::ScreenshareLayers::OnFrameDropped(v82);
    return;
  }

  HIDWORD(v84) = *(this + 2);
  v85 = 0;
  v86 = 0;
  v90 = 0;
  v93[1] = 0;
  v94 = 0;
  v93[0] = 0;
  LODWORD(v84) = 0;
  if (v48 != 1)
  {
    std::vector<webrtc::FrameDependencyTemplate>::resize(v93, 3uLL);
    v59 = v93[0];
    if (v93[1] == v93[0])
    {
      goto LABEL_137;
    }

    *(v93[0] + 1) = 0;
    if (v59[1])
    {
      operator delete(v59[2]);
    }

    v59[1] = 4;
    v59[2] = 0x200000002;
    v60 = v93[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((v93[1] - v93[0]) >> 3)) <= 1)
    {
      goto LABEL_137;
    }

    *(v93[0] + 27) = 0;
    if (*(v60 + 112))
    {
      operator delete(*(v60 + 15));
    }

    *(v60 + 14) = 4;
    *(v60 + 15) = 0x200000002;
    v83 = 1;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v60 + 20, &v83, 1uLL);
    v61 = v93[0];
    if ((0x4EC4EC4EC4EC4EC5 * ((v93[1] - v93[0]) >> 3)) <= 2)
    {
      goto LABEL_137;
    }

    *(v93[0] + 53) = 1;
    if (*(v61 + 216))
    {
      operator delete(*(v61 + 28));
    }

    *(v61 + 27) = 4;
    *(v61 + 28) = 0x200000000;
    v83 = 1;
    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v61 + 33, &v83, 1uLL);
    v51 = a7 + 1856;
    if (*(a7 + 1984))
    {
      goto LABEL_65;
    }

LABEL_89:
    *v51 = v84;
    *(v51 + 2) = v85;
    *(a7 + 234) = v86;
    v62 = v90;
    *(a7 + 239) = v89;
    v63 = v88;
    *(a7 + 1880) = *v87;
    *(a7 + 1896) = v63;
    *(a7 + 240) = v62;
    v64 = v92;
    *(a7 + 1928) = *__p;
    *(a7 + 1944) = v64;
    v86 = 0;
    v90 = 0;
    *(a7 + 1960) = *v93;
    *(a7 + 247) = v94;
    v93[1] = 0;
    v94 = 0;
    v93[0] = 0;
    *(a7 + 1984) = 1;
    goto LABEL_90;
  }

  std::vector<webrtc::FrameDependencyTemplate>::resize(v93, 2uLL);
  v49 = v93[0];
  if (v93[1] == v93[0])
  {
    goto LABEL_137;
  }

  *(v93[0] + 1) = 0;
  if (v49[1])
  {
    operator delete(v49[2]);
  }

  v49[1] = 2;
  *(v49 + 4) = 2;
  v50 = v93[0];
  if ((0x4EC4EC4EC4EC4EC5 * ((v93[1] - v93[0]) >> 3)) <= 1)
  {
    goto LABEL_137;
  }

  *(v93[0] + 27) = 0;
  if (*(v50 + 112))
  {
    operator delete(*(v50 + 15));
  }

  *(v50 + 14) = 2;
  *(v50 + 30) = 2;
  v83 = 1;
  absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v50 + 20, &v83, 1uLL);
  v51 = a7 + 1856;
  if ((*(a7 + 1984) & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_65:
  webrtc::FrameDependencyStructure::operator=(v51, &v84);
  v52 = v93[0];
  if (v93[0])
  {
    v53 = v93[1];
    v54 = v93[0];
    if (v93[1] == v93[0])
    {
LABEL_97:
      v93[1] = v52;
      operator delete(v54);
      if ((v90 & 1) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    while (1)
    {
      if (*(v53 - 3))
      {
        operator delete(*(v53 - 2));
        if ((*(v53 - 6) & 1) == 0)
        {
LABEL_71:
          if (*(v53 - 12))
          {
            goto LABEL_75;
          }

          goto LABEL_68;
        }
      }

      else if ((*(v53 - 6) & 1) == 0)
      {
        goto LABEL_71;
      }

      operator delete(*(v53 - 5));
      if (*(v53 - 12))
      {
LABEL_75:
        operator delete(*(v53 - 11));
      }

LABEL_68:
      v53 -= 13;
      if (v53 == v52)
      {
        v54 = v93[0];
        goto LABEL_97;
      }
    }
  }

LABEL_90:
  if (v90)
  {
LABEL_91:
    operator delete(__p[0]);
  }

LABEL_92:
  if (v86)
  {
    operator delete(v87[0]);
  }

  *(a7 + 411) = *(a7 + 9);
  v84 = 0x200000002;
  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a7 + 206, &v84, 2uLL);
LABEL_95:
  v65 = 0;
  *(a7 + 12) = 1;
  LODWORD(v84) = 0;
  do
  {
    v67 = 0;
    LOBYTE(v83) = 0;
    if (v11)
    {
LABEL_102:
      v68 = 1;
      v69 = *(a7 + 9);
      *(a7 + 9) = v69 + 1;
      *(a7 + v69 + 6) = v65;
      if ((v67 & 1) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_113;
    }

    if ((v100 & 1) == 0)
    {
      goto LABEL_137;
    }

    if (v65 <= 2 && (*(&v98 + v65 + 1) & 1) != 0)
    {
      v67 = 1;
      LOBYTE(v83) = 1;
      v70 = *(a7 + 5);
      *(a7 + 5) = v70 + 1;
      *(a7 + v70 + 2) = v65;
    }

    else
    {
      v67 = 0;
      if (v65 > 2)
      {
        goto LABEL_111;
      }
    }

    if ((*(&v98 + v65 + 1) & 2) != 0)
    {
      goto LABEL_102;
    }

LABEL_111:
    v68 = 0;
    if ((v67 & 1) == 0)
    {
LABEL_112:
      if (!v68)
      {
        goto LABEL_100;
      }
    }

LABEL_113:
    v71 = *v35;
    if (*v35)
    {
      v72 = *(a7 + 219);
      v73 = *(a7 + 220);
    }

    else
    {
      v72 = a7 + 1752;
      v73 = 8;
    }

    if (v71 >> 1 == v73)
    {
      absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int &,BOOL &,BOOL &>(a7 + 218);
    }

    if (!v72)
    {
      goto LABEL_137;
    }

    v74 = &v72[8 * (v71 >> 1)];
    *v74 = v65;
    v74[4] = v67;
    v74[5] = v68;
    *v35 = v71 + 2;
LABEL_100:
    v66 = v84;
    v65 = v84 + 1;
    LODWORD(v84) = v84 + 1;
  }

  while (v66 < 2);
  v44 = webrtc::g_clock;
  if (webrtc::g_clock)
  {
LABEL_46:
    v45 = (*(*v44 + 16))(v44);
    goto LABEL_123;
  }

LABEL_120:
  if (!dword_28100D8E4)
  {
    mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
  }

  v45 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
LABEL_123:
  webrtc::RateStatistics::Update((this + 128), 1, v45 / 1000000);
  if (*(this + 2) != 1)
  {
    v75 = *(this + 7);
    v76 = (this + 20 * v75 + 228);
    if (*v76 == 1)
    {
      *v76 = 3;
    }

    if (v10 != -1)
    {
      *(this + 5 * v75 + 59) = v10;
    }

    if (v75 == 1)
    {
      *(this + 65) += v12;
      v78 = 320;
      v79 = 336;
      v80 = 264;
      v81 = 288;
LABEL_132:
      ++*(this + v81);
      *(this + v79) += *(this + v80);
      *(this + v78) += v10;
    }

    else if (!v75)
    {
      v77 = *(this + 65) + v12;
      *(this + 60) += v12;
      *(this + 65) = v77;
      v78 = 312;
      v79 = 328;
      v80 = 244;
      v81 = 280;
      goto LABEL_132;
    }
  }

  if (v100 == 1 && (v95 & 1) != 0)
  {
    operator delete(*&v96[0]);
  }
}

uint64_t webrtc::ScreenshareLayers::OnFrameDropped(uint64_t this)
{
  *(this + 20 * *(this + 28) + 228) = 1;
  ++*(this + 304);
  return this;
}

void webrtc::ScreenshareLayers::UpdateConfiguration(webrtc::ScreenshareLayers *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 61);
  v3 = *(this + 2);
  v4 = v2;
  if (v3 >= 2)
  {
    v5 = v2 * 2.5;
    v6 = vcvtd_n_f64_u32(*(this + 66), 1uLL);
    if (v6 < v5)
    {
      v5 = v6;
    }

    v4 = v5;
  }

  if (v2 <= v4)
  {
    v2 = v4;
  }

  v7 = v2;
  if (*(this + 116) == 1 && *(this + 124) == 1)
  {
    v8 = *(this + 28);
    v9 = *(this + 30);
    if (v8 < v9)
    {
      v7 = (v9 / v8) * v7;
    }
  }

  if (*(this + 224) == 1)
  {
    if (*(this + 464))
    {
LABEL_19:
      *(this + 115) = v7;
      v10 = *(this + 7);
      if (v10 == -1 || *(this + 5 * v10 + 57) != 3)
      {
        if ((*(this + 16) & 1) == 0 || (*(this + 24) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(this + 66) < 0x1F4u)
        {
          v13 = -1;
          v14 = -1;
        }

        else
        {
          v11 = *(this + 3);
          v12 = *(this + 5) - v11;
          v13 = 80 * v12 / 100 + v11;
          v14 = 85 * v12 / 100 + v11;
        }

        *(this + 58) = v13;
        *(this + 63) = v14;
      }

      if (*(this + 124) == 1)
      {
        *(this + 20) = 1000 * v2 / (8 * *(this + 30));
      }

      *(this + 224) = 0;
      if (v3 < 2)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

LABEL_18:
    *(this + 464) = 1;
    goto LABEL_19;
  }

  if ((*(this + 464) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v7 != *(this + 115))
  {
    goto LABEL_19;
  }

  v10 = *(this + 7);
  if (v3 < 2)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v10 == -1)
  {
LABEL_37:
    v19 = *(this + 456);
    a2[6] = *(this + 440);
    a2[7] = v19;
    a2[8] = *(this + 472);
    v20 = *(this + 392);
    a2[2] = *(this + 376);
    a2[3] = v20;
    v21 = *(this + 424);
    a2[4] = *(this + 408);
    a2[5] = v21;
    v22 = *(this + 360);
    *a2 = *(this + 344);
    a2[1] = v22;
    return;
  }

  if (*(this + 24))
  {
    v15 = *(this + 5);
    v16 = this + 20 * v10;
    v18 = *(v16 + 57);
    v17 = v16 + 228;
    if (v18 == 3)
    {
      if (v17[1] != -1)
      {
        v15 = v17[1];
      }

      *v17 = 0;
    }

    *(this + 117) = v15;
    *(this + 472) = 1;
    goto LABEL_37;
  }

LABEL_38:
  v23 = std::__throw_bad_optional_access[abi:sn200100]();
  std::__tree<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>>>::destroy(v23);
}

void std::__tree<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::ScreenshareLayers::DependencyInfo>>>::destroy(a1[1]);
    if (a1[5])
    {
      operator delete(a1[6]);
    }

    operator delete(a1);
  }
}

void absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::EmplaceBackSlow<int,BOOL,BOOL>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

uint64_t webrtc::InternalDataChannelInit::InternalDataChannelInit(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 6);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v6;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 60) = 2;
    if (*(a1 + 16) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a1 + 52) = -1;
    if (*(a1 + 16) != 1)
    {
      goto LABEL_15;
    }
  }

  v7 = *(a1 + 12);
  if ((v7 & 0x80000000) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else if (v7 >= 0x10000)
  {
    *(a1 + 12) = 0xFFFF;
  }

LABEL_15:
  if (*(a1 + 8) != 1)
  {
    return a1;
  }

  v15 = *(a1 + 4);
  if ((v15 & 0x80000000) == 0)
  {
    if (v15 >= 0x10000)
    {
      *(a1 + 4) = 0xFFFF;
    }

    return a1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
  }

  if (*(a1 + 8) != 1)
  {
    return a1;
  }

  *(a1 + 8) = 0;
  return a1;
}

void webrtc::SctpDataChannel::SctpDataChannel(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_28829EB80;
  *(a1 + 8) = a6;
  *(a1 + 16) = a7;
  v10 = *(a2 + 52);
  if (v10 == -1)
  {
    v11 = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 24) = v10;
    v11 = 1;
  }

  *(a1 + 26) = v11;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v12;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_6:
      v13 = *(a2 + 24);
      *(a1 + 72) = *(a2 + 40);
      *(a1 + 56) = v13;
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 24), *(a2 + 32));
LABEL_9:
  *(a1 + 80) = *(a2 + 4);
  *(a1 + 88) = *(a2 + 12);
  *(a1 + 96) = *(a2 + 56);
  v14 = *(a2 + 48);
  v15 = *(a2 + 1);
  *(a1 + 165) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v16 = *a3;
  *a3 = 0;
  *(a1 + 232) = 0u;
  *(a1 + 100) = v14;
  *(a1 + 101) = v15;
  *(a1 + 136) = 0;
  *(a1 + 174) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = v16;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  operator new();
}

void webrtc::SctpDataChannel::~SctpDataChannel(webrtc::SctpDataChannel *this)
{
  *this = &unk_28829EB80;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 15) = 0;
    v3 = v2[3];
    v4 = &unk_280905000;
    {
      v4 = &unk_280905000;
      if (v12)
      {
        operator new();
      }
    }

    if (pthread_getspecific(*(v4[403] + 88)) == v3)
    {
      (*(*v2 + 40))(v2);
      v5 = *(this + 36);
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    v15[0] = v2;
    v16 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::SctpDataChannel::ObserverAdapter::DeleteOnSignalingThread(std::unique_ptr<webrtc::SctpDataChannel::ObserverAdapter>)::{lambda(void)#1}>;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::SctpDataChannel::ObserverAdapter::DeleteOnSignalingThread(std::unique_ptr<webrtc::SctpDataChannel::ObserverAdapter>)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, v15, &v14, &v13);
    v16(1, v15, v15);
  }

  v5 = *(this + 36);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

LABEL_9:
  std::deque<std::unique_ptr<webrtc::DataBuffer>>::clear(this + 29);
  v6 = *(this + 30);
  v7 = *(this + 31);
  if (v6 != v7)
  {
    do
    {
      v8 = *v6++;
      operator delete(v8);
    }

    while (v6 != v7);
    v6 = *(this + 30);
    v7 = *(this + 31);
  }

  if (v7 != v6)
  {
    *(this + 31) = v7 + ((v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 26);
  if (v10 && atomic_fetch_add((v10 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  v11 = *(this + 15);
  *(this + 15) = 0;
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  if ((*(this + 79) & 0x80000000) == 0)
  {
    if ((*(this + 55) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(*(this + 4));
    return;
  }

  operator delete(*(this + 7));
  if (*(this + 55) < 0)
  {
    goto LABEL_27;
  }
}

uint64_t webrtc::SctpDataChannel::RegisterObserver(void *a1, void *a2)
{
  v2 = a2;
  v17 = a2;
  {
    operator new();
  }

  v4 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  if ((*(*v2 + 24))(v2))
  {
    if (!a1)
    {
      v18 = 0;
      v19 = v2;
      v5 = MEMORY[0x10];
      if (MEMORY[0x10] != v4)
      {
        goto LABEL_5;
      }

LABEL_13:
      a1[14] = v2;
      webrtc::SctpDataChannel::DeliverQueuedReceivedData(a1);
      return (*(*a1 + 8))(a1);
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
    }

    v16[0] = a1;
    v16[1] = &v17;
    v14 = a1[1];
    if (v14 == v4)
    {
      *(a1[15] + 8) = v2;
      operator new();
    }

    v20 = 0;
    v18 = &v20;
    v19 = v16;
    (*(*v14 + 96))(v14, &v18, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::ObserverAdapter * webrtc::Thread::BlockingCall<webrtc::SctpDataChannel::RegisterObserver(webrtc::DataChannelObserver *)::$_0,webrtc::SctpDataChannel::ObserverAdapter *,void>(webrtc::SctpDataChannel::RegisterObserver(webrtc::DataChannelObserver *)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v15);
    v17 = v20;
  }

  (**a1)(a1);
  v2 = v17;
  v18 = a1;
  v19 = v17;
  v5 = a1[2];
  if (v5 == v4)
  {
    goto LABEL_13;
  }

LABEL_5:
  result = (*(*v5 + 96))(v5, &v18, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::RegisterObserver(webrtc::DataChannelObserver *)::$_1>, v16);
  a1 = v18;
  if (v18)
  {
    return (*(*a1 + 8))(a1);
  }

  return result;
}

void *webrtc::SctpDataChannel::UnregisterObserver(webrtc::SctpDataChannel *this)
{
  {
    operator new();
  }

  v2 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v8 = this;
  v3 = *(this + 2);
  if (v2 == v3)
  {
    *(this + 14) = 0;
    v7 = this;
    result = *(this + 1);
    if (v2 != result)
    {
      return (*(*result + 96))(result, &v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::UnregisterObserver(void)::$_1>, &v6);
    }
  }

  else
  {
    (*(*v3 + 96))(v3, &v8, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::UnregisterObserver(void)::$_0>, &v7);
    v7 = this;
    result = *(this + 1);
    if (v2 != result)
    {
      return (*(*result + 96))(result, &v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SctpDataChannel::UnregisterObserver(void)::$_1>, &v6);
    }
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(v5 + 8) = 0;
    operator new();
  }

  return result;
}

void webrtc::SctpDataChannel::label(webrtc::SctpDataChannel *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

uint64_t webrtc::SctpDataChannel::reliable(webrtc::SctpDataChannel *this)
{
  if (*(this + 92))
  {
    return 0;
  }

  else
  {
    return (*(this + 84) ^ 1) & 1;
  }
}

void webrtc::SctpDataChannel::protocol(webrtc::SctpDataChannel *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 56);
    a2->__r_.__value_.__r.__words[2] = *(this + 9);
  }
}

uint64_t webrtc::SctpDataChannel::id(webrtc::SctpDataChannel *this)
{
  if (*(this + 26) == 1)
  {
    return *(this + 12);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t webrtc::SctpDataChannel::priority(webrtc::SctpDataChannel *this)
{
  if (*(this + 98) == 1)
  {
    return *(this + 48);
  }

  else
  {
    return 256;
  }
}

uint64_t webrtc::SctpDataChannel::buffered_amount(webrtc::SctpDataChannel *this)
{
  v1 = *(this + 26);
  if (v1 && ((v3 = *(this + 27), *v1 == 1) ? (v4 = v3 == 0) : (v4 = 1), !v4 && *(this + 26) == 1))
  {
    return (*(*v3 + 32))(v3, *(this + 12));
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::SctpDataChannel::Close(uint64_t this)
{
  if ((*(this + 128) & 0xFFFFFFFE) != 2)
  {
    *(this + 128) = 2;
    v2 = *(this + 112);
    if (v2)
    {
      v3 = this;
      (**v2)(*(this + 112));
      this = v3;
    }

    v4 = *(this + 208);
    if (v4)
    {
      if (*v4 == 1)
      {
        v5 = *(this + 216);
        if (v5)
        {
          v6 = this;
          (*(*v5 + 24))(*(this + 216), this, *(this + 128));
          this = v6;
        }
      }
    }

    return webrtc::SctpDataChannel::UpdateState(this);
  }

  return this;
}

uint64_t webrtc::SctpDataChannel::UpdateState(uint64_t this)
{
  v1 = *(this + 128);
  if (v1 == 2)
  {
    if (*(*(this + 288) + 4) == 1 && (v4 = *(this + 208)) != 0 && *v4 == 1 && (v5 = *(this + 216)) != 0 && *(this + 26) == 1)
    {
      v6 = this;
      this = (*(*v5 + 32))(*(this + 216), *(this + 24));
      if (!this && (*(v6 + 228) & 1) == 0 && *(v6 + 26) == 1)
      {
        *(v6 + 228) = 1;
        v7 = *(v6 + 208);
        if (v7 && *v7 == 1)
        {
          v8 = *(v6 + 216);
        }

        else
        {
          v8 = 0;
        }

        v23 = *(*v8 + 16);

        return v23();
      }
    }

    else
    {
      *(this + 128) = 3;
      v9 = *(this + 112);
      if (v9)
      {
        v10 = this;
        (**v9)(*(this + 112));
        this = v10;
      }

      v11 = *(this + 208);
      if (v11)
      {
        if (*v11 == 1)
        {
          v12 = *(this + 216);
          if (v12)
          {
            v13 = *(this + 128);
            v14 = *(*v12 + 24);
            v15 = this;
            v16 = *(this + 216);

            return v14(v16, v15, v13);
          }
        }
      }
    }
  }

  else if (!v1 && *(*(this + 288) + 4) == 1)
  {
    v2 = *(this + 208);
    if (v2)
    {
      if (*v2 == 1 && *(this + 216))
      {
        v3 = *(this + 224);
        if (v3 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          __src = 2;
          v17 = this;
          webrtc::CopyOnWriteBuffer::SetData<unsigned char,(void *)0>(&v24, &__src, 1uLL);
          webrtc::SctpDataChannel::SendControlMessage(v17, &v24);
          webrtc::CopyOnWriteBuffer::~CopyOnWriteBuffer(&v24);
          this = v17;
        }

        else if (v3 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          webrtc::WriteDataChannelOpenMessage(this + 32, this + 56);
        }

        if ((*(this + 224) - 3) <= 1)
        {
          if (*(this + 128) != 1)
          {
            *(this + 128) = 1;
            v18 = *(this + 112);
            if (v18)
            {
              v19 = this;
              (**v18)(*(this + 112));
              this = v19;
            }

            v20 = *(this + 208);
            if (v20 && *v20 == 1)
            {
              v21 = *(this + 216);
              if (v21)
              {
                v22 = this;
                (*(*v21 + 24))(*(this + 216), this, *(this + 128));
                this = v22;
              }
            }
          }

          return webrtc::SctpDataChannel::DeliverQueuedReceivedData(this);
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::SctpDataChannel::state(webrtc::SctpDataChannel *this)
{
  v2 = &unk_280905000;
  {
    v2 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  v3 = pthread_getspecific(*(v2[403] + 88));
  if (v3 == *(this + 1))
  {
    v6 = *(this + 15);
    if (v6)
    {
      v7 = *(v6 + 48);
      if (v7)
      {
        return *(v7 + 12);
      }
    }
  }

  v10 = this;
  v4 = *(this + 2);
  if (v3 == v4)
  {
    return *(this + 32);
  }

  v12 = 0;
  v11[0] = &v12;
  v11[1] = &v10;
  (*(*v4 + 96))(v4, v11, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::DataChannelInterface::DataState webrtc::Thread::BlockingCall<webrtc::SctpDataChannel::state(void)::$_0,webrtc::DataChannelInterface::DataState,void>(webrtc::SctpDataChannel::state(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v9);
  return v12;
}

void webrtc::SctpDataChannel::error(webrtc::SctpDataChannel *this@<X0>, uint64_t a2@<X8>)
{
  {
    operator new();
  }

  v4 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  if (v4 == *(this + 1) && (v6 = *(this + 15)) != 0 && (v7 = *(v6 + 48)) != 0)
  {
    *a2 = *(v7 + 16);
    v8 = (a2 + 8);
    if (*(v7 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v8, *(v7 + 24), *(v7 + 32));
    }

    else
    {
      v9 = *(v7 + 24);
      *(a2 + 24) = *(v7 + 40);
      *&v8->__r_.__value_.__l.__data_ = v9;
    }

    v11 = *(v7 + 48);
    *(a2 + 35) = *(v7 + 51);
    *(a2 + 32) = v11;
  }

  else
  {
    v13 = this;
    v5 = *(this + 2);
    if (v4 == v5)
    {
      *a2 = *(this + 34);
      v10 = (a2 + 8);
      if (*(this + 167) < 0)
      {
        std::string::__init_copy_ctor_external(v10, *(this + 18), *(this + 19));
      }

      else
      {
        *&v10->__r_.__value_.__l.__data_ = *(this + 9);
        *(a2 + 24) = *(this + 20);
      }

      *(a2 + 32) = *(this + 42);
      *(a2 + 35) = *(this + 171);
    }

    else
    {
      *a2 = 0;
      *(a2 + 38) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a2 + 29) = 0;
      v14[0] = a2;
      v14[1] = &v13;
      (*(*v5 + 96))(v5, v14, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::SctpDataChannel::error(void)::$_0,webrtc::RTCError,void>(webrtc::SctpDataChannel::error(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v12);
    }
  }
}

BOOL webrtc::SctpDataChannel::Send(unint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v10[0] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 24), 1u, memory_order_relaxed);
  }

  v4 = a2[2];
  v10[1] = a2[1];
  v10[2] = v4;
  v11 = *(a2 + 24);
  *(a1 + 104) += v4;
  if (*(a1 + 128) == 1)
  {
    webrtc::SctpDataChannel::SendDataMessage(&v12, a1, v10);
    v3 = v10[0];
    if (!v10[0])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = 6;
  *(a1 + 136) = 6;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    v5 = *(a1 + 136);
  }

  *(a1 + 174) = 0;
  *(a1 + 165) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  v12 = v5;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v16[0] = *(a1 + 168);
  *(v16 + 3) = *(a1 + 171);
  if (v3)
  {
LABEL_9:
    if (atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
    {
      v6 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v6)
      {
        MEMORY[0x2743DA520](v6, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
    }
  }

LABEL_13:
  v7 = v12;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  return v7 != 6 && v7 != 9;
}

void webrtc::SctpDataChannel::SendDataMessage(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 208);
  if (!v5 || *v5 != 1 || (v6 = *(a2 + 216)) == 0 || (*(a2 + 26) & 1) == 0)
  {
    v18 = 6;
    *(a2 + 136) = 6;
    if (*(a2 + 167) < 0)
    {
      operator delete(*(a2 + 144));
      v18 = *(a2 + 136);
    }

    *(a2 + 174) = 0;
    *(a2 + 165) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *a1 = v18;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 32) = *(a2 + 168);
    v19 = *(a2 + 171);
    goto LABEL_22;
  }

  v7 = *(a2 + 101);
  v29 = v7;
  if (*(a2 + 224) != 4 && (v7 & 1) == 0)
  {
    v29 = 1;
  }

  v30 = *(a2 + 88);
  v31 = *(a2 + 92);
  v32 = *(a2 + 80);
  v33 = *(a2 + 84);
  v28[2] = *(a3 + 24);
  (**v6)(v26);
  *(a2 + 136) = *v26;
  v9 = (a2 + 144);
  if (*(a2 + 167) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *&v26[8];
  *(a2 + 160) = v27;
  *(a2 + 168) = v28[0];
  *(a2 + 171) = *(v28 + 3);
  webrtc::SctpDataChannel::MaybeSendOnBufferedAmountChanged(a2);
  if (!*(a2 + 136))
  {
    ++*(a2 + 176);
    *(a2 + 184) += *(a3 + 16);
    *a1 = 0;
    v17 = (a1 + 8);
    if ((*(a2 + 167) & 0x80000000) == 0)
    {
LABEL_18:
      *&v17->__r_.__value_.__l.__data_ = *v9;
      v17->__r_.__value_.__r.__words[2] = *(a2 + 160);
LABEL_25:
      *(a1 + 32) = *(a2 + 168);
      v19 = *(a2 + 171);
LABEL_22:
      *(a1 + 35) = v19;
      return;
    }

LABEL_24:
    std::string::__init_copy_ctor_external(v17, *(a2 + 144), *(a2 + 152));
    goto LABEL_25;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\v\t\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
  }

  v20 = 8;
  v22 = 20;
  if (__p > "Failure to send data" || &__p[20] <= "Failure to send data")
  {
    strcpy(__p, "Failure to send data");
    v23 = 0;
    v24 = 0;
    v25 = 0;
    webrtc::SctpDataChannel::CloseAbruptlyWithError(a2, &v20);
    if (v22 < 0)
    {
      operator delete(*__p);
    }

    *a1 = *(a2 + 136);
    v17 = (a1 + 8);
    if ((*(a2 + 167) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  __break(1u);
}

void webrtc::SctpDataChannel::SendAsync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 288);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  v5 = *a2;
  v6 = a1;
  v7 = v5;
  v8 = *(a2 + 1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v9 = *(a2 + 24);
  (*(a3 + 16))(0, a3, v10);
  v10[1] = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  operator new();
}

void webrtc::SctpDataChannel::CloseAbruptlyWithError(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2 != 3)
  {
    *(*(a1 + 288) + 4) = 0;
    if (v2 != 2)
    {
      *(a1 + 128) = 2;
      v5 = *(a1 + 112);
      if (v5)
      {
        (**v5)(v5);
      }

      v6 = *(a1 + 208);
      if (v6)
      {
        if (*v6 == 1)
        {
          v7 = *(a1 + 216);
          if (v7)
          {
            (*(*v7 + 24))(v7, a1, *(a1 + 128));
          }
        }
      }
    }

    *(a1 + 136) = *a2;
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    v8 = *(a2 + 8);
    *(a1 + 160) = *(a2 + 24);
    *(a1 + 144) = v8;
    *(a2 + 31) = 0;
    *(a2 + 8) = 0;
    v9 = *(a2 + 35);
    *(a1 + 168) = *(a2 + 32);
    *(a1 + 171) = v9;
    if (*(a1 + 128) != 3)
    {
      *(a1 + 128) = 3;
      v10 = *(a1 + 112);
      if (v10)
      {
        (**v10)(v10);
      }

      v11 = *(a1 + 208);
      if (v11)
      {
        if (*v11 == 1)
        {
          v12 = *(a1 + 216);
          if (v12)
          {
            v13 = *(*v12 + 24);

            v13();
          }
        }
      }
    }
  }
}

unint64_t webrtc::SctpDataChannel::MaybeSendOnBufferedAmountChanged(unint64_t this)
{
  v1 = *(this + 208);
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = *(this + 216);
      if (v2)
      {
        if (*(this + 26) == 1)
        {
          if (*(this + 112))
          {
            v3 = this;
            this = (*(*v2 + 32))(*(this + 216), *(this + 24));
            v4 = *(v3 + 104);
            v5 = v4 - this;
            if (v4 >= this)
            {
              v6 = v3;
              if (v4)
              {
                v7 = this == 0;
              }

              else
              {
                v7 = 0;
              }

              if (v7 || v5 > 0x19000)
              {
                *(v3 + 104) = this;
                v8 = this;
                (*(**(v3 + 112) + 16))(*(v3 + 112), v5);
                this = v8;
                v6 = v3;
              }

              v9 = *(v6 + 208);
              if (v9)
              {
                if (*v9 == 1)
                {
                  v9 = *(v6 + 216);
                }

                else
                {
                  v9 = 0;
                }
              }

              if (*(v6 + 26))
              {
                v10 = *(v6 + 24);
                if (this >= 0x19000)
                {
                  v11 = this - 102400;
                }

                else
                {
                  v11 = 0;
                }

                v12 = *(*v9 + 48);

                return v12(v9, v10, v11);
              }

              else
              {
                __break(1u);
              }
            }
          }
        }
      }
    }
  }

  return this;
}

void webrtc::SctpDataChannel::OnDataReceived(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 224);
  if (a2 != 2)
  {
    if (v4 == 3)
    {
      *(a1 + 224) = 4;
    }

    operator new();
  }

  if (v4 != 3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      if (*(a1 + 26))
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    return;
  }

  if (a3[2])
  {
    if (*(*(*a3 + 16) + a3[1]) == 2)
    {
      *(a1 + 224) = 4;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        if (*(a1 + 26))
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      return;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_utils.cc");
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_utils.cc");
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    if (*(a1 + 26))
    {
LABEL_21:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
      return;
    }

LABEL_22:
    __break(1u);
    JUMPOUT(0x2743DA540);
  }
}

void webrtc::SctpDataChannel::CloseAbruptlyWithDataChannelFailure(uint64_t a1, void **a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *a2;
    v3 = a2[1];
    v11 = 11;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_19;
    }

    a2 = v4;
    if (v3 <= 0x16)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new();
  }

  v11 = 11;
  if (v3 > 0x16)
  {
    goto LABEL_6;
  }

LABEL_3:
  HIBYTE(v13) = v3;
  v5 = (v12 + v3);
  if (v12 <= a2 && v5 > a2)
  {
    __break(1u);
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v3)
  {
    memmove(v12, a2, v3);
  }

  *v5 = 0;
  v14[4] = 0;
  v14[6] = 0;
  *v14 = 1;
  v7 = v11;
  *__p = *v12;
  v9 = v13;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v10[0] = 1;
  *(v10 + 3) = *&v14[3];
  webrtc::SctpDataChannel::CloseAbruptlyWithError(a1, &v7);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v12[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_17;
  }
}