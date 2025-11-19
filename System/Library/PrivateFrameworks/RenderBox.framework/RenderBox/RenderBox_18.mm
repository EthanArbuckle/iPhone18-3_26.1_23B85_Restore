void RB::Device::preload_render_encoders(RB::Device *this, unint64_t a2)
{
  if (!*(this + 8) || !*(this + 331))
  {
    return;
  }

  v4 = objc_autoreleasePoolPush();
  v5.n128_u64[0] = 0x100000001;
  RB::Texture::alloc(this, a2, 1u, 1, 0, &v51, v5);
  v6.n128_u64[0] = 0x100000001;
  RB::Device::alloc_shared_texture(this, 65, 1u, 0x11u, 4, 1, &v50, v6);
  v8 = RB::pixel_format_traits(a2, v7);
  if (HIDWORD(*(v8 + 4)))
  {
    v10 = HIDWORD(*(v8 + 4));
  }

  else
  {
    v10 = a2;
  }

  v9.n128_u64[0] = 0x100000001;
  RB::Device::alloc_shared_texture(this, v10, 1u, 0x11u, 2, 1, &v49, v9);
  if (*(this + 328))
  {
    v11 = 2;
  }

  else
  {
    v11 = *(this + 329);
  }

  if ((*(this + 328) & *(this + 329)) != 0)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  v13 = RB::depth_stencil_pixel_format(v12);
  v14.n128_u64[0] = 0x100000001;
  RB::Device::alloc_shared_texture(this, v13, 1u, 0x11u, 3, 1, &v48, v14);
  if (!v51 || (v15 = v50) == 0 || (v16 = v49) == 0)
  {
LABEL_41:
    v37 = v48;
    if (v48)
    {
      v38 = v48[1].i32[0] - 1;
      v48[1].i32[0] = v38;
      if (!v38)
      {
        (*(*v37 + 8))(v37);
      }
    }

    v16 = v49;
    if (!v49)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v48)
  {
    v45 = v48;
    v17 = [*(this + 8) commandBuffer];
    v18 = objc_opt_new();
    v44 = v4;
    v19 = [v18 colorAttachments];
    v46 = [v19 objectAtIndexedSubscript:0];
    v47[0] = v46;
    v20 = [v19 objectAtIndexedSubscript:1];
    v47[1] = v20;
    v21 = [v19 objectAtIndexedSubscript:2];
    v47[2] = v21;
    v22 = [v18 stencilAttachment];
    v47[3] = v22;
    v23 = [v18 depthAttachment];
    v47[4] = v23;
    [v46 setTexture:*(v51 + 16)];
    [v20 setTexture:*&v15[2]];
    [v21 setTexture:*&v16[2]];
    [v22 setTexture:*&v45[2]];
    if (*(this + 328))
    {
      [v23 setTexture:*&v45[2]];
    }

    for (i = 0; i != 5; ++i)
    {
      [v47[i] setStoreAction:i == 0];
    }

    v25 = 1;
    do
    {
      v26 = v25;
      if (v25)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      [v46 setLoadAction:v27];
      v28 = 1;
      do
      {
        v29 = v28;
        if (v28)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        [v20 setLoadAction:v30];
        v31 = 1;
        do
        {
          v32 = v31;
          if (v31)
          {
            v33 = 2;
          }

          else
          {
            v33 = 0;
          }

          [v21 setLoadAction:v33];
          v34 = 1;
          do
          {
            v35 = v34;
            if (v34)
            {
              v36 = 2;
            }

            else
            {
              v36 = 0;
            }

            [v22 setLoadAction:v36];
            [objc_msgSend(v17 renderCommandEncoderWithDescriptor:{v18), "endEncoding"}];
            v34 = 0;
          }

          while ((v35 & 1) != 0);
          v31 = 0;
        }

        while ((v32 & 1) != 0);
        v28 = 0;
      }

      while ((v29 & 1) != 0);
      v25 = 0;
    }

    while ((v26 & 1) != 0);

    v4 = v44;
    goto LABEL_41;
  }

LABEL_45:
  v39 = v16[1].i32[0] - 1;
  v16[1].i32[0] = v39;
  if (!v39)
  {
    (*(*v16 + 8))(v16);
  }

LABEL_47:
  v40 = v50;
  if (v50)
  {
    v41 = v50[1].i32[0] - 1;
    v50[1].i32[0] = v41;
    if (!v41)
    {
      (*(*v40 + 8))(v40);
    }
  }

  v42 = v51;
  if (v51)
  {
    v43 = *(v51 + 8) - 1;
    *(v51 + 8) = v43;
    if (!v43)
    {
      (*(*v42 + 8))(v42);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_195DEF90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20)
{
  v22 = a10[2] - 1;
  a10[2] = v22;
  if (!v22)
  {
    (*(*a10 + 8))(a10);
  }

  if (a18)
  {
    v23 = a18[2] - 1;
    a18[2] = v23;
    if (!v23)
    {
      (*(*a18 + 8))(a18);
    }
  }

  if (a19)
  {
    v24 = a19[2] - 1;
    a19[2] = v24;
    if (!v24)
    {
      (*(*a19 + 8))(a19);
    }
  }

  if (a20)
  {
    v25 = a20[2] - 1;
    a20[2] = v25;
    if (!v25)
    {
      (*(*a20 + 8))(a20);
    }
  }

  _Unwind_Resume(a1);
}

id RB::Device::RenderPipelineEntry::function_table(uint64_t *a1, int a2, int a3, void *a4, uint64_t a5)
{
  v77[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 9) & 0x80) == 0)
  {
    return 0;
  }

  if (a5 && (v10 = a4[1]) != 0)
  {
    v11 = (*a4 + 24);
    while (1)
    {
      v12 = *v11;
      os_unfair_lock_opaque = (*v11)[1]._os_unfair_lock_opaque;
      if (((*v11)[12]._os_unfair_lock_opaque | (8 * os_unfair_lock_opaque)) == a5)
      {
        break;
      }

      ++v11;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    if (!RB::Function::binary_function(*v11))
    {
      RB::precondition_failure("missing binary function: %u", v31, a5);
    }
  }

  else
  {
LABEL_8:
    os_unfair_lock_opaque = 0;
    v12 = 0;
  }

  v14 = a1[4];
  if (!v14)
  {
    operator new();
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *(v14 + 8);
    v18 = v17 + 8;
    while (1)
    {
      v19 = v17 + 80 * v16;
      v20 = *(v19 + 72);
      if (v20 == a2)
      {
        break;
      }

      if (v20 - a3 <= 0)
      {
        LODWORD(v21) = 0;
        *(v19 + 72) = a2;
        *(v19 + 8) = 0u;
        *(v19 + 24) = 0u;
        *(v19 + 40) = 0u;
        *(v19 + 56) = 0u;
LABEL_30:
        LODWORD(v15) = v16;
        goto LABEL_31;
      }

LABEL_23:
      ++v16;
      v18 += 80;
      if (v16 == v15)
      {
        goto LABEL_24;
      }
    }

    if (os_unfair_lock_opaque)
    {
      v21 = 0;
      while (1)
      {
        v22 = *(v18 + 4 * v21);
        if (v22 == os_unfair_lock_opaque || v22 == 0)
        {
          goto LABEL_30;
        }

        if (++v21 == 16)
        {
          goto LABEL_23;
        }
      }
    }

    v32 = (v17 + 80 * v16);
  }

  else
  {
LABEL_24:
    v24 = *(v14 + 16);
    if (*(v14 + 20) < (v15 + 1))
    {
      RB::vector<RB::Device::RenderPipelineEntry::Functions::Table,0ul,unsigned int>::reserve_slow(v14 + 8, v15 + 1);
      v24 = *(v14 + 16);
    }

    v25 = (*(v14 + 8) + 80 * v24);
    v25[3] = 0u;
    v25[4] = 0u;
    v25[1] = 0u;
    v25[2] = 0u;
    *v25 = 0u;
    v26 = *(v14 + 16);
    *(v14 + 16) = v26 + 1;
    v27 = *(v14 + 8);
    v28 = objc_opt_new();
    [v28 setFunctionCount:16];
    v29 = [a1[3] newVisibleFunctionTableWithDescriptor:v28 stage:2];
    v30 = v27 + 80 * v26;

    *v30 = v29;
    *(v30 + 72) = a2;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 40) = 0u;
    *(v30 + 56) = 0u;

    LODWORD(v21) = 0;
    v17 = *(v14 + 8);
LABEL_31:
    v32 = (v17 + 80 * v15);
    if (os_unfair_lock_opaque && *(v32 + v21 + 2) != os_unfair_lock_opaque)
    {
      v33 = *(v14 + 24);
      v34 = *(v14 + 32);
      v35 = &v33[4 * v34];
      if (v34)
      {
        do
        {
          v36 = v34 >> 1;
          v37 = &v33[4 * (v34 >> 1)];
          v39 = *v37;
          v38 = v37 + 4;
          v34 += ~(v34 >> 1);
          if (v39 < os_unfair_lock_opaque)
          {
            v33 = v38;
          }

          else
          {
            v34 = v36;
          }
        }

        while (v34);
      }

      if (v33 == v35 || *v33 != os_unfair_lock_opaque)
      {
        v41 = objc_opt_new();
        v77[0] = RB::Function::binary_function(v12);
        [v41 setFragmentAdditionalBinaryFunctions:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v77, 1)}];
        v65 = 0;
        v42 = [a1[3] newRenderPipelineStateWithAdditionalBinaryFunctions:v41 error:&v65];
        if (v42)
        {
          v61 = a1[3];
          v62 = v41;
          v63 = v42;
          a1[3] = v42;
          v43 = [v42 functionHandleWithFunction:RB::Function::binary_function(v12) stage:2];
          if (!v43)
          {
            RB::precondition_failure("unable to link function", v44);
          }

          v64 = v43;
          v60 = v43;
          v45 = *(v14 + 24);
          v46 = *(v14 + 32);
          if (*(v14 + 36) < v46 + 1)
          {
            RB::vector<RBColor,0ul,unsigned int>::reserve_slow(v14 + 24, v46 + 1);
            v47 = *(v14 + 24);
            v46 = *(v14 + 32);
          }

          else
          {
            v47 = *(v14 + 24);
          }

          v48 = v33 - v45;
          if (v46 > (v48 >> 4))
          {
            memmove((v47 + v48 + 16), (v47 + v48), 16 * (v46 - (v48 >> 4)));
            v46 = *(v14 + 32);
          }

          v49 = v47 + v48;
          *v49 = os_unfair_lock_opaque;
          *(v49 + 8) = v60;
          *(v14 + 32) = v46 + 1;

          v41 = v62;
          v50 = RB::verbose_mode(2);
          if (v50)
          {
            v54 = *&v12[2]._os_unfair_lock_opaque;
            if (!v54)
            {
              v50 = RB::Function::binary_function(v12);
              if (v50)
              {
                v50 = [v50 name];
                v54 = v50;
              }

              else
              {
                v54 = @"<unknown>";
              }
            }

            v55 = RB::misc_log(v50);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = v12[1]._os_unfair_lock_opaque;
              v57 = RB::RenderState::name(a1);
              v58 = *(a1 + 2);
              v66 = *a1;
              v67 = v58;
              RB::FormattedRenderState::ID::formatted(&v66, v59, v68);
              *buf = 138413058;
              v70 = v54;
              v71 = 1024;
              v72 = v56;
              v73 = 2080;
              v74 = v57;
              v75 = 2080;
              v76 = v68;
              _os_log_impl(&dword_195CE8000, v55, OS_LOG_TYPE_INFO, "added function %@ (@%d) to %s-%s", buf, 0x26u);
            }

            v41 = v62;
          }

          v51 = v61;
          v52 = v63;
        }

        else
        {
          v52 = 0;
          v53 = RB::error_log(0);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            RB::Device::RenderPipelineEntry::function_table([v65 localizedDescription], buf, v53);
          }

          v51 = 0;
          v64 = 0;
        }

        v40 = v64;
        if (!v52)
        {
          return 0;
        }
      }

      else
      {
        v40 = *(v33 + 1);
      }

      [*v32 setFunction:v40 atIndex:v21];
      *(v32 + v21 + 2) = os_unfair_lock_opaque;
    }
  }

  return *v32;
}

uint64_t *RB::Device::RenderPipelineEntry::clear_custom_functions(RB::Device::RenderPipelineEntry *this)
{
  v4 = *(this + 4);
  result = (this + 32);
  v3 = v4;
  if (v4)
  {
    if (*v3)
    {
      v5 = *(this + 3);
      *(this + 3) = *v3;
      *v3 = v5;
      return std::unique_ptr<RB::Device::RenderPipelineEntry::Functions>::reset[abi:nn200100](result, 0);
    }
  }

  return result;
}

uint64_t RB::Device::resolve_sampler_state(uint64_t a1, MTLPixelFormat a2, uint64_t a3)
{
  if (a2 == 4)
  {
    if (a3)
    {
      v4 = *(a3 + 56);
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 331) >= *(RB::pixel_format_traits(v4, a2) + 9))
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  else if (a2 == 3)
  {
    if (a3 && *(a3 + 76) > 1u)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return a2;
}

uint64_t RB::Device::sampler_state(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 + 584;
  v5 = *(a1 + 584 + 8 * a2);
  if (!v5)
  {
    v6 = objc_opt_new();
    v8 = *v7;
    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    [v6 setSAddressMode:0];
    [v6 setTAddressMode:0];
    [v6 setNormalizedCoordinates:v8 & 1];
    [v6 setMinFilter:v10];
    [v6 setMagFilter:v10];
    [v6 setMipFilter:v9];
    [v6 setLodAverage:1];
    v5 = [*(a1 + 24) newSamplerStateWithDescriptor:v6];

    *(v4 + 8 * a2) = v5;
    if (!v5)
    {
      RB::precondition_failure("unable to allocate sampler state: %d", v11, a2);
    }
  }

  return v5;
}

void RB::Device::command_buffer_error(atomic_uchar *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v89 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v6 = a2;
  memset(&v77, 0, sizeof(v77));
  v8 = [a2 userInfo];
  v9 = *MEMORY[0x1E6973F60];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6973F60]];
  v11 = v10;
  if (v10)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v73 objects:v88 count:16];
    if (v12)
    {
      v58 = v6;
      obj = v11;
      v51 = v9;
      v54 = a3;
      v56 = a1;
      v13 = 0;
      v14 = 0;
      v61 = *v74;
      do
      {
        v15 = 0;
        v60 = v12;
        do
        {
          if (*v74 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v73 + 1) + 8 * v15);
          std::string::push_back(&v77, 123);
          v17 = [v16 errorState];
          v18 = v17 == 4;
          v19 = v17 == 0;
          if (v17)
          {
            snprintf(__str, 0x40uLL, "State %d;", [v16 errorState]);
            v20 = strlen(__str);
            std::string::append(&v77, __str, v20);
          }

          v21 = [v16 debugSignposts];
          v22 = v21;
          if (v21)
          {
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v23 = [v21 countByEnumeratingWithState:&v69 objects:v87 count:16];
            if (v23)
            {
              v24 = *v70;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v70 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = *(*(&v69 + 1) + 8 * i);
                  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0 && v77.__r_.__value_.__l.__size_ >= 0x2000)
                  {
                    std::string::append(&v77, "...", 3uLL);
                    v12 = v60;
                    goto LABEL_24;
                  }

                  if (!v19)
                  {
                    std::string::push_back(&v77, 32);
                  }

                  v27 = [v26 UTF8String];
                  v28 = strlen(v27);
                  std::string::append(&v77, v27, v28);
                  std::string::push_back(&v77, 59);
                  v19 = 0;
                  v13 = 1;
                }

                v23 = [v22 countByEnumeratingWithState:&v69 objects:v87 count:16];
                v19 = 0;
                v12 = v60;
                if (v23)
                {
                  continue;
                }

                break;
              }
            }
          }

LABEL_24:
          std::string::push_back(&v77, 125);
          v14 |= v18;
          ++v15;
        }

        while (v15 != v12);
        v12 = [obj countByEnumeratingWithState:&v73 objects:v88 count:16];
      }

      while (v12);
      v29 = v14 & v13;
      a1 = v56;
      v6 = v58;
      a3 = v54;
      v9 = v51;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      v77.__r_.__value_.__l.__size_ = 13;
      v30 = v77.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v77.__r_.__value_.__s + 23) = 13;
      v30 = &v77;
    }

    v29 = 0;
    strcpy(v30, "no debug info");
  }

  v31 = RB::error_log(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v46 = [v6 code];
    v47 = &v77;
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v47 = v77.__r_.__value_.__r.__words[0];
    }

    *__str = 67109890;
    v79 = a4;
    v80 = 1024;
    v81 = a5;
    v82 = 1024;
    v83 = v46;
    v84 = 2082;
    v85 = v47;
    _os_log_error_impl(&dword_195CE8000, v31, OS_LOG_TYPE_ERROR, "command buffer error: %u, %u, %d, %{public}s", __str, 0x1Eu);
    if (!a3)
    {
      goto LABEL_53;
    }

    goto LABEL_34;
  }

  if (a3)
  {
LABEL_34:
    if ((a1[340] & 2) != 0)
    {
      v32 = [MEMORY[0x1E695DF90] dictionary];
      [v32 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v6, "code")), @"errorCode"}];
      v33 = [v6 localizedDescription];
      if (v33)
      {
        [v32 setObject:v33 forKeyedSubscript:@"errorString"];
      }

      [v32 setObject:RB::Device::device_info(a1) forKeyedSubscript:@"deviceInfo"];
      v34 = [objc_msgSend(v6 "userInfo")];
      if (v34)
      {
        v35 = [MEMORY[0x1E695DF70] array];
        v62 = v29;
        v55 = a3;
        v57 = a1;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v36 = [v34 countByEnumeratingWithState:&v65 objects:v86 count:16];
        if (v36)
        {
          v37 = *v66;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v66 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v65 + 1) + 8 * j);
              v40 = [MEMORY[0x1E695DF90] dictionary];
              [v40 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v39, "errorState")), @"errorState"}];
              v41 = [v39 label];
              if (v41)
              {
                [v40 setObject:v41 forKeyedSubscript:@"label"];
              }

              v42 = [v39 debugSignposts];
              if (v42)
              {
                [v40 setObject:v42 forKeyedSubscript:@"signposts"];
              }

              [v35 addObject:v40];
            }

            v36 = [v34 countByEnumeratingWithState:&v65 objects:v86 count:16];
          }

          while (v36);
        }

        [v32 setObject:v35 forKeyedSubscript:@"encoders"];
        a1 = v57;
        a3 = v55;
        v29 = v62;
      }

      v64 = time(0);
      localtime_r(&v64, &v63);
      if (!strftime(__str, 0x100uLL, "RBDeviceError-%F-%H%M%S.rbar", &v63))
      {
        snprintf_l(__str, 0x100uLL, 0, "RBDeviceError-%ld.rbar", v64);
      }

      RBArchiveToFileWithMetadata(a3, [MEMORY[0x1E696ACB0] dataWithJSONObject:v32 options:0 error:0], __str, 1);
      atomic_fetch_and_explicit(a1 + 340, 0xFDu, memory_order_relaxed);
    }
  }

LABEL_53:
  v43 = [v6 domain];
  if ([v43 isEqual:*MEMORY[0x1E6973F68]])
  {
    v44 = [v6 code];
    if (v44 <= 0xC && ((1 << v44) & 0x1208) != 0)
    {
      if ((a1[340] & 1) == 0)
      {
        v45 = RB::misc_log(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          _os_log_impl(&dword_195CE8000, v45, OS_LOG_TYPE_DEFAULT, "enabling extra error reporting", __str, 2u);
        }

        atomic_fetch_or_explicit(a1 + 340, 1u, memory_order_relaxed);
      }

      if ((v29 & 1) != 0 && os_variant_has_internal_diagnostics() && (dyld_shared_cache_some_image_overridden() & 1) == 0)
      {
        v48 = [v6 code];
        v50 = &v77;
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = v77.__r_.__value_.__r.__words[0];
        }

        RB::precondition_failure("command buffer error: %u, %u, %d, %s", v49, a4, a5, v48, v50);
      }
    }
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }
}

void sub_195DF093C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::Device::device_info(RB::Device *this)
{
  v7[9] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v6[0] = @"name";
  v7[0] = [v2 name];
  v6[1] = @"featureProfile";
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "featureProfile")}];
  v6[2] = @"bufferSize";
  v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(this + 40)];
  v6[3] = @"useBinaryArchive";
  v7[3] = [MEMORY[0x1E696AD98] numberWithBool:*(this + 330)];
  v6[4] = @"isAGX";
  v7[4] = [MEMORY[0x1E696AD98] numberWithBool:*(this + 331) != 0];
  v6[5] = @"hasXR10Formats";
  v7[5] = [MEMORY[0x1E696AD98] numberWithBool:*(this + 331) > 2u];
  v6[6] = @"hasYCbCrFormats";
  v7[6] = [MEMORY[0x1E696AD98] numberWithBool:*(this + 331) > 2u];
  v6[7] = @"hasFBRead";
  v7[7] = [MEMORY[0x1E696AD98] numberWithBool:1];
  v6[8] = @"limits";
  v4[0] = @"GPUFamilyApple";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(this + 331)];
  v4[1] = @"GPUFamilyMac";
  v5[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v4[2] = @"GPUFamilyCommon1";
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "supportsFamily:", 3001)}];
  v4[3] = @"GPUFamilyCommon2";
  v5[3] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "supportsFamily:", 3002)}];
  v4[4] = @"GPUFamilyCommon3";
  v5[4] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "supportsFamily:", 3003)}];
  v4[5] = @"readWriteTextureSupport";
  v5[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "readWriteTextureSupport")}];
  v7[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:9];
}

uint64_t RB::Refcount<RB::Device,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return [RBDevice .cxx_destruct];
  }

  return result;
}

uint64_t RB::Refcount<RB::Device,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_2::__invoke<RB::Device::RenderPipelineEntry *>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::unique_ptr<RB::Device::RenderPipelineEntry::Functions>::reset[abi:nn200100]((result + 32), 0);

    std::unique_ptr<RB::Device::RenderPipelineEntry::Loader,RB::Device::RenderPipelineEntry::DeleteLoader>::reset[abi:nn200100]((v1 + 16), 0);

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

uint64_t RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_6::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    RB::UntypedTable::~UntypedTable((result + 40));

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::Device::Device(RBDevice *,objc_object  {objcproto9MTLDevice}*)::$_7::__invoke(atomic_uint *a1, uint64_t a2)
{
  RB::Device::make_index_buffer(a1, a2);
  RB::Device::preload_resources(a1);
  if (a1)
  {
    if (atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDevice .cxx_destruct];
    }
  }
}

void sub_195DF0DC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    __copy_helper_block_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_cold_1(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::Device::function_library(RB::CustomShader::Library &)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZZN2RB6Device16function_libraryERNS_12CustomShader7LibraryEENK3__0clES3_Pv_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

uint64_t RB::Device::prune_caches(unsigned int)::$_2::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v8 = 0;
  v5 = &v8;
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  result = RB::UntypedTable::remove_if (v2 + 472, _ZZN2RB5TableIPKNS_20FormattedRenderStateEPNS_6Device19RenderPipelineEntryEE9remove_ifIZZNS4_12prune_cachesEjENK3__1clEvEUlT_PT0_E_EEvRKSA_ENUlPKvSH_SH_E_8__invokeESH_SH_SH_, &v5);
  v4 = a1[2];
  *a1[1] = (*a1[1] | v8) & 1;
  *v4 = *(v2 + 512) == 0;
  return result;
}

uint64_t _ZZN2RB5TableIPKNS_20FormattedRenderStateEPNS_6Device19RenderPipelineEntryEE9remove_ifIZZNS4_12prune_cachesEjENK3__1clEvEUlT_PT0_E_EEvRKSA_ENUlPKvSH_SH_E_8__invokeESH_SH_SH_(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  if (!v4)
  {
    if (*(a2 + 53) == 1 && (*(a3 + 8) != 1 || *(a2 + 52) != 1))
    {
      return 0;
    }

    if (*(a2 + 10) - *(a3 + 12) <= 0 && (!*(a2 + 52) ? (v8 = -1200) : (v8 = -60), (*(a3 + 8) & 1) != 0 || *(a2 + 11) <= (v8 + *(a3 + 16))))
    {
      v9 = RB::verbose_mode(2);
      if (v9)
      {
        v10 = RB::misc_log(v9);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        result = 1;
        if (!v11)
        {
          goto LABEL_14;
        }

        v12 = RB::RenderState::name(a2);
        v13 = *(a2 + 2);
        v15 = *a2;
        v16 = v13;
        RB::FormattedRenderState::ID::formatted(&v15, v14, v17);
        *buf = 136315394;
        v19 = v12;
        v20 = 2080;
        v21 = v17;
        _os_log_impl(&dword_195CE8000, v10, OS_LOG_TYPE_INFO, "deleted render pipeline %s-%s", buf, 0x16u);
      }

      result = 1;
    }

    else
    {
      result = 0;
    }

LABEL_14:
    **a3 |= result ^ 1;
    return result;
  }

  v5 = *(v4 + 112);
  if (v5 == 4)
  {
    return 1;
  }

  else
  {
    return (v5 == 0) & *(a3 + 8);
  }
}

void RB::Device::RenderPipelineEntry::Loader::~Loader(id *this)
{
  v2 = this[1];
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDevice .cxx_destruct];
    }
  }
}

void RB::SharedSurfaceGroup::~SharedSurfaceGroup(RB::SharedSurfaceGroup *this)
{
  v2 = *(this + 4);
  if (*(this + 10))
  {
    v3 = 0;
    v4 = v2 + 9;
    do
    {

      v5 = *(v4 - 1);
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      v6 = *(v4 - 9);
      if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v4 += 14;
    }

    while (v3 < *(this + 10));
    v2 = *(this + 4);
  }

  if (v2)
  {
    free(v2);
  }

  v7 = *(this + 2);
  if (*(this + 6))
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      if (v9 && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurfaceGroup::~SharedSurfaceGroup();
      }

      ++v8;
    }

    while (v8 < *(this + 6));
    v7 = *(this + 2);
  }

  if (v7)
  {
    free(v7);
  }
}

id *RB::vector<RB::objc_ptr<objc_object *>,2ul,unsigned long>::~vector(id *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (a1[3])
  {
    v4 = 0;
    do
    {
    }

    while (v4 < a1[3]);
    v2 = a1[2];
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void *RB::vector<RB::objc_ptr<objc_object *>,2ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 4) + (*(__dst + 4) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 4) + (*(__dst + 4) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 2), __dst, 2uLL, __dst + 4, v3);
  *(__dst + 2) = result;
  return result;
}

void RB::Table<RB::TextureCacheKey const*,RB::TextureCache *>::for_each<RB::Device::invalidate_texture_caches(RB::TextureCacheKey const&)::$_0>(RB::Device::invalidate_texture_caches(RB::TextureCacheKey const&)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(int a1, RB::TextureCache *this, uint64_t a3)
{
  if (*(this + 8) == *(*a3 + 8) && *this == **a3)
  {
    RB::TextureCache::invalidate_contents(this);
  }
}

void _ZZNK2RB5TableIPNS_12CustomShader7LibraryEPNS_15FunctionLibraryEE8for_eachIZZNS_6Device22function_library_errorERKS4_P7NSErrorEUb0_E4__16EEvRKT_ENUlPKvSI_SI_E_8__invokeESI_SI_SI_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 28) == *(a3 + 8))
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = ___ZZZN2RB6Device22function_library_errorERKNS_15FunctionLibraryEP7NSErrorEUb0_ENK4__16clIPNS_12CustomShader7LibraryEPS1_EEDaT_T0__block_invoke;
    v5[3] = &__block_descriptor_48_e8_40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_e5_v8__0l;
    v5[4] = a1;
    v6 = *a3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

id __copy_helper_block_e8_40c29_ZTSN2RB8objc_ptrIP7NSErrorEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t RB::Table<RB::CustomShader::Library *,RB::FunctionLibrary *>::remove_if<RB::Device::prune_caches(unsigned int)::$_3>(RB::Device::prune_caches(unsigned int)::$_3 const&)::{lambda(void const*,void const*,void const*)#1}::__invoke(int a1, RB::FunctionLibrary *this, uint64_t a3)
{
  if (!this)
  {
    return 0;
  }

  if (*(this + 104) == 1)
  {
    v3 = *(a3 + 4);
LABEL_4:
    RB::FunctionLibrary::prune_caches(this, v3);
    return 0;
  }

  if ((*a3 & 1) == 0)
  {
    v3 = *(a3 + 4);
    if (*(this + 8) > v3)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

void *RB::vector<RB::FormattedRenderState,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,12ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,12ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(12 * a3);
    v6 = v5 / 0xC;
    if (v5 / 0xC != *a2)
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

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,RB::Device::prune_caches(unsigned int)::$_4 &,RB::FormattedRenderState *>(uint64_t result, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    return result;
  }

  v6 = result;
  if (a3 == 2)
  {
    v7 = 0;
    v9 = a2 - 12;
    v8 = *(a2 - 12);
    v10 = *(a2 - 1);
    v11 = *result;
    v12 = *(result + 8);
    v67 = v8;
    v68 = v10;
    v65 = v11;
    v66 = v12;
    while (1)
    {
      v13 = *(&v67 + v7);
      v14 = *(&v65 + v7);
      if (v13 != v14)
      {
        break;
      }

      if (++v7 == 12)
      {
        goto LABEL_39;
      }
    }

    if (v13 < v14)
    {
LABEL_48:
      v43 = *(result + 8);
      v44 = *result;
      v45 = *(a2 - 1);
      *result = *v9;
      *(result + 8) = v45;
      *v9 = v44;
      *(a2 - 1) = v43;
      return result;
    }

LABEL_39:
    v35 = 0;
    v63 = v8;
    v64 = v10;
    v61 = v11;
    v62 = v12;
    while (1)
    {
      v36 = *(&v63 + v35);
      v37 = *(&v61 + v35);
      if (v36 != v37)
      {
        break;
      }

      if (++v35 == 12)
      {
        return result;
      }
    }

    if (v36 >= v37)
    {
      goto LABEL_48;
    }
  }

  else if (a3 > 128)
  {
    v39 = a4;
    v40 = a3 >> 1;
    v41 = result + 12 * (a3 >> 1);
    v42 = a3 >> 1;
    if (a3 <= a5)
    {
      std::__stable_sort_move<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(result, v41, v42, a4);
      v46 = v39 + 12 * v40;
      result = std::__stable_sort_move<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v6 + 12 * (a3 >> 1), a2, a3 - (a3 >> 1), v46);
      v47 = v39 + 12 * a3;
      v48 = v46;
      while (v48 != v47)
      {
        result = 0;
        v49 = *v48;
        v50 = *(v48 + 8);
        v51 = *v39;
        v52 = *(v39 + 8);
        v67 = *v48;
        v68 = v50;
        v65 = v51;
        v66 = v52;
        while (1)
        {
          v53 = *(&v67 + result);
          v54 = *(&v65 + result);
          if (v53 != v54)
          {
            break;
          }

          if (++result == 12)
          {
            goto LABEL_56;
          }
        }

        if (v53 < v54)
        {
LABEL_62:
          v58 = *v48;
          *(v6 + 8) = *(v48 + 8);
          *v6 = v58;
          v48 += 12;
          goto LABEL_63;
        }

LABEL_56:
        result = 0;
        v63 = v49;
        v64 = v50;
        v61 = v51;
        v62 = v52;
        while (1)
        {
          v55 = *(&v63 + result);
          v56 = *(&v61 + result);
          if (v55 != v56)
          {
            break;
          }

          if (++result == 12)
          {
            goto LABEL_61;
          }
        }

        if (v55 >= v56)
        {
          goto LABEL_62;
        }

LABEL_61:
        v57 = *v39;
        *(v6 + 8) = *(v39 + 8);
        *v6 = v57;
        v39 += 12;
LABEL_63:
        v6 += 12;
        if (v39 == v46)
        {
          while (v48 != v47)
          {
            v60 = *v48;
            *(v6 + 8) = *(v48 + 8);
            *v6 = v60;
            v6 += 12;
            v48 += 12;
          }

          return result;
        }
      }

      while (v39 != v46)
      {
        v59 = *v39;
        *(v6 + 8) = *(v39 + 8);
        *v6 = v59;
        v6 += 12;
        v39 += 12;
      }
    }

    else
    {
      std::__stable_sort<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(result, v41, v42, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v6 + 12 * (a3 >> 1), a2, a3 - (a3 >> 1), v39, a5);

      return std::__inplace_merge<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v6, (v6 + 12 * (a3 >> 1)), a2, a3 >> 1, a3 - (a3 >> 1), v39, a5);
    }
  }

  else if (result != a2)
  {
    v16 = result + 12;
    if ((result + 12) != a2)
    {
      v17 = result;
      while (1)
      {
        result = 0;
        v18 = v17;
        v17 = v16;
        v19 = *(v18 + 12);
        v20 = *(v18 + 20);
        v21 = *v18;
        v22 = *(v18 + 8);
        v67 = v19;
        v68 = v20;
        v65 = v21;
        v66 = v22;
        while (1)
        {
          v23 = *(&v67 + result);
          v24 = *(&v65 + result);
          if (v23 != v24)
          {
            break;
          }

          if (++result == 12)
          {
            goto LABEL_17;
          }
        }

        if (v23 < v24)
        {
          break;
        }

LABEL_17:
        result = 0;
        v63 = v19;
        v64 = v20;
        v61 = v21;
        v62 = v22;
        while (1)
        {
          v25 = *(&v63 + result);
          v26 = *(&v61 + result);
          if (v25 != v26)
          {
            break;
          }

          if (++result == 12)
          {
            goto LABEL_36;
          }
        }

        if (v25 >= v26)
        {
          break;
        }

LABEL_36:
        v16 = v17 + 12;
        if ((v17 + 12) == a2)
        {
          return result;
        }
      }

      *v17 = *v18;
      *(v17 + 8) = *(v18 + 8);
      v27 = v6;
      if (v18 != v6)
      {
        while (2)
        {
          v28 = 0;
          v27 = v18;
          v30 = *(v18 - 12);
          v18 -= 12;
          v29 = v30;
          result = *(v18 + 8);
          v67 = v19;
          v68 = v20;
          v65 = v30;
          v66 = result;
          while (1)
          {
            v31 = *(&v67 + v28);
            v32 = *(&v65 + v28);
            if (v31 != v32)
            {
              break;
            }

            if (++v28 == 12)
            {
              goto LABEL_28;
            }
          }

          if (v31 < v32)
          {
            goto LABEL_33;
          }

LABEL_28:
          v33 = 0;
          v63 = v19;
          v64 = v20;
          v61 = v29;
          v62 = result;
          while (1)
          {
            v34 = *(&v63 + v33);
            result = *(&v61 + v33);
            if (v34 != result)
            {
              break;
            }

            if (++v33 == 12)
            {
              goto LABEL_35;
            }
          }

          if (v34 < result)
          {
            goto LABEL_35;
          }

LABEL_33:
          *v27 = *v18;
          *(v27 + 8) = *(v18 + 8);
          if (v18 != v6)
          {
            continue;
          }

          break;
        }

        v27 = v6;
      }

LABEL_35:
      *v27 = v19;
      *(v27 + 8) = v20;
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,RB::Device::prune_caches(unsigned int)::$_4 &,RB::FormattedRenderState *>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v7 = result;
    if (a3 == 2)
    {
      v9 = 0;
      v11 = (a2 - 12);
      v10 = *(a2 - 12);
      v12 = *(a2 - 4);
      v13 = *result;
      v14 = *(result + 8);
      v72 = v10;
      v73 = v12;
      v70 = v13;
      v71 = v14;
      while (1)
      {
        v15 = *(&v72 + v9);
        v16 = *(&v70 + v9);
        if (v15 != v16)
        {
          break;
        }

        if (++v9 == 12)
        {
          goto LABEL_40;
        }
      }

      if (v15 < v16)
      {
LABEL_68:
        v65 = *v11;
        *(a4 + 8) = *(a2 - 4);
        *a4 = v65;
        v63 = *result;
        v64 = *(result + 8);
        goto LABEL_69;
      }

LABEL_40:
      v44 = 0;
      v68 = v10;
      v69 = v12;
      v66 = v13;
      v67 = v14;
      while (1)
      {
        v45 = *(&v68 + v44);
        v46 = *(&v66 + v44);
        if (v45 != v46)
        {
          break;
        }

        if (++v44 == 12)
        {
          goto LABEL_67;
        }
      }

      if (v45 >= v46)
      {
        goto LABEL_68;
      }

LABEL_67:
      v62 = *result;
      *(a4 + 8) = *(result + 8);
      *a4 = v62;
      v63 = *v11;
      v64 = *(a2 - 4);
LABEL_69:
      *(a4 + 20) = v64;
      *(a4 + 12) = v63;
    }

    else if (a3 == 1)
    {
      v8 = *result;
      *(a4 + 8) = *(result + 8);
      *a4 = v8;
    }

    else if (a3 > 8)
    {
      v47 = result + 12 * (a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(result, v47, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v7 + 12 * (a3 >> 1), a2, a3 - (a3 >> 1), v4 + 12 * (a3 >> 1), a3 - (a3 >> 1));
      v48 = v7 + 12 * (a3 >> 1);
      while (v48 != a2)
      {
        v49 = 0;
        v50 = *v48;
        v51 = *(v48 + 8);
        v52 = *v7;
        v53 = *(v7 + 8);
        v72 = *v48;
        v73 = v51;
        v70 = v52;
        v71 = v53;
        while (1)
        {
          result = *(&v72 + v49);
          v54 = *(&v70 + v49);
          if (result != v54)
          {
            break;
          }

          if (++v49 == 12)
          {
            goto LABEL_51;
          }
        }

        if (result < v54)
        {
LABEL_57:
          v59 = *v48;
          *(v4 + 8) = *(v48 + 8);
          *v4 = v59;
          v48 += 12;
          goto LABEL_58;
        }

LABEL_51:
        v55 = 0;
        v68 = v50;
        v69 = v51;
        v66 = v52;
        v67 = v53;
        while (1)
        {
          v56 = *(&v68 + v55);
          v57 = *(&v66 + v55);
          if (v56 != v57)
          {
            break;
          }

          if (++v55 == 12)
          {
            goto LABEL_56;
          }
        }

        if (v56 >= v57)
        {
          goto LABEL_57;
        }

LABEL_56:
        v58 = *v7;
        *(v4 + 8) = *(v7 + 8);
        *v4 = v58;
        v7 += 12;
LABEL_58:
        v4 += 12;
        if (v7 == v47)
        {
          while (v48 != a2)
          {
            v61 = *v48;
            *(v4 + 8) = *(v48 + 8);
            *v4 = v61;
            v4 += 12;
            v48 += 12;
          }

          return result;
        }
      }

      while (v7 != v47)
      {
        v60 = *v7;
        *(v4 + 8) = *(v7 + 8);
        *v4 = v60;
        v4 += 12;
        v7 += 12;
      }
    }

    else if (result != a2)
    {
      v17 = *result;
      *(a4 + 8) = *(result + 8);
      *a4 = v17;
      v18 = result + 12;
      if (result + 12 != a2)
      {
        v19 = a4;
        while (1)
        {
          v20 = 0;
          v21 = v7;
          v22 = v19;
          v7 = v18;
          v19 += 12;
          v23 = *(v21 + 12);
          v24 = *(v21 + 20);
          result = *v22;
          v25 = *(v22 + 8);
          v72 = v23;
          v73 = v24;
          v70 = result;
          v71 = v25;
          while (1)
          {
            v26 = *(&v72 + v20);
            v27 = *(&v70 + v20);
            if (v26 != v27)
            {
              break;
            }

            if (++v20 == 12)
            {
              goto LABEL_18;
            }
          }

          if (v26 < v27)
          {
            break;
          }

LABEL_18:
          v28 = 0;
          v68 = v23;
          v69 = v24;
          v66 = result;
          v67 = v25;
          while (1)
          {
            v29 = *(&v68 + v28);
            v30 = *(&v66 + v28);
            v31 = v29 >= v30;
            if (v29 != v30)
            {
              break;
            }

            if (++v28 == 12)
            {
              v32 = v19;
              goto LABEL_37;
            }
          }

          v32 = v19;
          if (v31)
          {
            break;
          }

LABEL_37:
          v43 = *v7;
          *(v32 + 8) = *(v7 + 8);
          *v32 = v43;
          v18 = v7 + 12;
          if (v7 + 12 == a2)
          {
            return result;
          }
        }

        *v19 = *v22;
        *(v19 + 8) = *(v22 + 8);
        v32 = v4;
        if (v22 != v4)
        {
          while (2)
          {
            v33 = 0;
            v32 = v22;
            v34 = *v7;
            v36 = *(v22 - 12);
            v22 -= 12;
            v35 = v36;
            result = *(v21 + 20);
            v37 = *(v22 + 8);
            v72 = *v7;
            v73 = result;
            v70 = v36;
            v71 = v37;
            while (1)
            {
              v38 = *(&v72 + v33);
              v39 = *(&v70 + v33);
              if (v38 != v39)
              {
                break;
              }

              if (++v33 == 12)
              {
                goto LABEL_30;
              }
            }

            if (v38 < v39)
            {
              goto LABEL_35;
            }

LABEL_30:
            v40 = 0;
            v68 = v34;
            v69 = result;
            v66 = v35;
            v67 = v37;
            while (1)
            {
              v41 = *(&v68 + v40);
              v42 = *(&v66 + v40);
              if (v41 != v42)
              {
                break;
              }

              if (++v40 == 12)
              {
                goto LABEL_37;
              }
            }

            if (v41 < v42)
            {
              goto LABEL_37;
            }

LABEL_35:
            *v32 = *v22;
            *(v32 + 8) = *(v22 + 8);
            if (v22 != v4)
            {
              continue;
            }

            break;
          }

          v32 = v4;
        }

        goto LABEL_37;
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,RB::Device::prune_caches(unsigned int)::$_4 &,RB::FormattedRenderState *>(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v110 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = a5;
    v11 = result;
    result = 12;
    while (2)
    {
      if (v8 <= a7 || a4 <= a7)
      {
        if (a4 <= v8)
        {
          if (v11 != a2)
          {
            v78 = -a6;
            v79 = a6;
            v80 = v11;
            do
            {
              v81 = *v80;
              v79[2] = *(v80 + 2);
              *v79 = v81;
              v79 += 3;
              v80 += 12;
              v78 -= 12;
            }

            while (v80 != a2);
            while (a2 != a3)
            {
              result = 0;
              v82 = *a2;
              v83 = *(a2 + 2);
              v84 = *a6;
              v85 = *(a6 + 8);
              v108 = *a2;
              v109 = v83;
              v106 = v84;
              v107 = v85;
              while (1)
              {
                v86 = *(&v108 + result);
                v87 = *(&v106 + result);
                if (v86 != v87)
                {
                  break;
                }

                if (++result == 12)
                {
                  goto LABEL_88;
                }
              }

              if (v86 < v87)
              {
LABEL_94:
                v91 = *a2;
                *(v11 + 2) = *(a2 + 2);
                *v11 = v91;
                a2 += 12;
                goto LABEL_95;
              }

LABEL_88:
              result = 0;
              v104 = v82;
              v105 = v83;
              v102 = v84;
              v103 = v85;
              while (1)
              {
                v88 = *(&v104 + result);
                v89 = *(&v102 + result);
                if (v88 != v89)
                {
                  break;
                }

                if (++result == 12)
                {
                  goto LABEL_93;
                }
              }

              if (v88 >= v89)
              {
                goto LABEL_94;
              }

LABEL_93:
              v90 = *a6;
              *(v11 + 2) = *(a6 + 8);
              *v11 = v90;
              a6 += 12;
LABEL_95:
              v11 += 12;
              if (v79 == a6)
              {
                return result;
              }
            }

            return memmove(v11, a6, -(a6 + v78));
          }
        }

        else if (a2 != a3)
        {
          v62 = 0;
          do
          {
            v63 = (a6 + v62);
            v64 = *&a2[v62];
            *(v63 + 2) = *&a2[v62 + 8];
            *v63 = v64;
            v62 += 12;
          }

          while (&a2[v62] != a3);
          v65 = (a6 + v62);
          while (a2 != v11)
          {
            v66 = 0;
            v67 = a2 - 12;
            v68 = *(a2 - 12);
            v69 = *(v65 - 3);
            v70 = *(v65 - 1);
            v71 = *(a2 - 1);
            v108 = v69;
            v109 = v70;
            v106 = v68;
            v107 = v71;
            while (1)
            {
              v72 = *(&v108 + v66);
              v73 = *(&v106 + v66);
              if (v72 != v73)
              {
                break;
              }

              if (++v66 == 12)
              {
                goto LABEL_71;
              }
            }

            if (v72 < v73)
            {
              result = (a2 - 12);
              goto LABEL_77;
            }

LABEL_71:
            v74 = 0;
            v104 = v69;
            v105 = v70;
            v102 = v68;
            v103 = v71;
            while (1)
            {
              v75 = *(&v104 + v74);
              v76 = *(&v102 + v74);
              if (v75 != v76)
              {
                break;
              }

              if (++v74 == 12)
              {
                goto LABEL_76;
              }
            }

            result = (a2 - 12);
            if (v75 >= v76)
            {
              goto LABEL_77;
            }

LABEL_76:
            v67 = (v65 - 3);
            result = a2;
            v65 -= 3;
LABEL_77:
            v77 = *(v67 + 2);
            *(a3 - 12) = *v67;
            a3 -= 12;
            *(a3 + 2) = v77;
            a2 = result;
            if (v65 == a6)
            {
              return result;
            }
          }

          if (v65 != a6)
          {
            v95 = -12;
            do
            {
              v96 = *(v65 - 3);
              v65 -= 3;
              v97 = &a3[v95];
              *(v97 + 2) = v65[2];
              *v97 = v96;
              v95 -= 12;
            }

            while (v65 != a6);
          }
        }
      }

      else if (a4)
      {
        while (2)
        {
          v12 = 0;
          v13 = *a2;
          v14 = *(a2 + 2);
          v15 = *v11;
          v16 = *(v11 + 2);
          v108 = *a2;
          v109 = v14;
          v106 = v15;
          v107 = v16;
          while (1)
          {
            v17 = *(&v108 + v12);
            v18 = *(&v106 + v12);
            if (v17 != v18)
            {
              break;
            }

            if (++v12 == 12)
            {
              goto LABEL_11;
            }
          }

          if (v17 >= v18)
          {
LABEL_11:
            v19 = 0;
            v104 = v13;
            v105 = v14;
            v102 = v15;
            v103 = v16;
            while (1)
            {
              v20 = *(&v104 + v19);
              v21 = *(&v102 + v19);
              if (v20 != v21)
              {
                break;
              }

              if (++v19 == 12)
              {
                goto LABEL_16;
              }
            }

            if (v20 >= v21)
            {
              break;
            }

LABEL_16:
            v11 += 12;
            if (--a4)
            {
              continue;
            }

            return result;
          }

          break;
        }

        v99 = a3;
        v100 = a6;
        v101 = a7;
        if (a4 >= v8)
        {
          if (a4 == 1)
          {
            v92 = *v11;
            v109 = *(v11 + 2);
            v108 = v92;
            v93 = *a2;
            *(v11 + 2) = *(a2 + 2);
            *v11 = v93;
            v94 = v108;
            *(a2 + 2) = v109;
            *a2 = v94;
            return result;
          }

          v38 = a4 / 2;
          v27 = &v11[12 * (a4 / 2)];
          if (a3 != a2)
          {
            v39 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2);
            v40 = *v27;
            v41 = *(v27 + 2);
            v23 = a2;
            while (1)
            {
              v42 = 0;
              v43 = v39 >> 1;
              v44 = v23 + 12 * (v39 >> 1);
              v45 = *v44;
              v46 = *(v44 + 8);
              v108 = *v44;
              v109 = v46;
              v106 = v40;
              v107 = v41;
              while (1)
              {
                v47 = *(&v108 + v42);
                v48 = *(&v106 + v42);
                if (v47 != v48)
                {
                  break;
                }

                if (++v42 == 12)
                {
                  goto LABEL_42;
                }
              }

              if (v47 < v48)
              {
                break;
              }

LABEL_42:
              v49 = 0;
              v104 = v45;
              v105 = v46;
              v102 = v40;
              v103 = v41;
              while (1)
              {
                v50 = *(&v104 + v49);
                v51 = *(&v102 + v49);
                if (v50 != v51)
                {
                  break;
                }

                if (++v49 == 12)
                {
                  goto LABEL_48;
                }
              }

              if (v50 >= v51)
              {
                break;
              }

LABEL_48:
              v39 = v43;
              if (!v43)
              {
                goto LABEL_53;
              }
            }

            v23 = v44 + 12;
            v43 = v39 + ~v43;
            goto LABEL_48;
          }

          v23 = a2;
LABEL_53:
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v23 - a2) >> 2);
        }

        else
        {
          v22 = v8 / 2;
          v23 = &a2[12 * (v8 / 2)];
          if (a2 == v11)
          {
            v27 = v11;
          }

          else
          {
            v24 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
            v25 = *v23;
            v26 = *(v23 + 8);
            v27 = v11;
            do
            {
              v28 = 0;
              v29 = v24 >> 1;
              v30 = &v27[12 * (v24 >> 1)];
              v31 = *v30;
              v32 = *(v30 + 2);
              v108 = v25;
              v109 = v26;
              v106 = v31;
              v107 = v32;
              while (1)
              {
                v33 = *(&v108 + v28);
                v34 = *(&v106 + v28);
                if (v33 != v34)
                {
                  break;
                }

                if (++v28 == 12)
                {
                  goto LABEL_26;
                }
              }

              if (v33 < v34)
              {
                goto LABEL_32;
              }

LABEL_26:
              v35 = 0;
              v104 = v25;
              v105 = v26;
              v102 = v31;
              v103 = v32;
              while (1)
              {
                v36 = *(&v104 + v35);
                v37 = *(&v102 + v35);
                if (v36 != v37)
                {
                  break;
                }

                if (++v35 == 12)
                {
                  goto LABEL_31;
                }
              }

              if (v36 >= v37)
              {
                goto LABEL_32;
              }

LABEL_31:
              v27 = v30 + 12;
              v29 = v24 + ~v29;
LABEL_32:
              v24 = v29;
            }

            while (v29);
          }

          v38 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v11) >> 2);
        }

        v98 = v23;
        a4 -= v38;
        v52 = v8 - v22;
        v53 = v38;
        v54 = v22;
        v55 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,RB::FormattedRenderState *,RB::FormattedRenderState *>(v27, a2, v23);
        v56 = v54;
        v8 = v52;
        v57 = v53;
        a3 = v55;
        if (v56 + v57 >= v52 + a4)
        {
          v59 = v57;
          v60 = a4;
          v61 = v56;
          std::__inplace_merge<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v55, v98, v99, v60, v8, v100, v101);
          a2 = v27;
          a6 = v100;
          v8 = v61;
          a4 = v59;
        }

        else
        {
          v58 = v27;
          a6 = v100;
          std::__inplace_merge<std::_ClassicAlgPolicy,RB::Device::prune_caches::$_4 &,RB::FormattedRenderState *>(v11, v58, v55, v57, v56, v100, v101);
          v11 = a3;
          a2 = v98;
          a3 = v99;
        }

        a7 = v101;
        result = 12;
        if (v8)
        {
          continue;
        }
      }

      break;
    }
  }

  return result;
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,RB::FormattedRenderState *,RB::FormattedRenderState *>(_DWORD *__src, _DWORD *a2, uint64_t a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 3 == a2)
    {
      v9 = *__src;
      v11 = __src[2];
      v6 = a3 - a2;
      memmove(__src, __src + 3, a3 - a2);
      v4 = __src + v6;
      *v4 = v9;
      *(v4 + 2) = v11;
    }

    else if (a2 + 3 == a3)
    {
      v4 = (__src + 3);
      v10 = *(a3 - 12);
      v12 = *(a3 - 4);
      v7 = a3 - 12 - __src;
      if ((a3 - 12) != __src)
      {
        memmove(__src + 3, __src, v7);
      }

      *__src = v10;
      __src[2] = v12;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,RB::FormattedRenderState *>(__src, a2, a3);
    }
  }

  return v4;
}

uint64_t std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,RB::FormattedRenderState *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2);
  if (v4 == v5)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 12;
      v7 = a1 + 12;
      do
      {
        v8 = *(v7 - 4);
        v9 = *(v7 - 12);
        v10 = *(v6 - 4);
        *(v7 - 12) = *(v6 - 12);
        *(v7 - 4) = v10;
        *(v6 - 12) = v9;
        *(v6 - 4) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 12;
        v11 = v6 == a3;
        v6 += 12;
      }

      while (!v11);
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
    do
    {
      v13 = v12;
      v12 = v5;
      v5 = v13 % v5;
    }

    while (v5);
    v14 = a1 + 12 * v12;
    do
    {
      v15 = *(v14 - 12);
      v14 -= 12;
      v25 = v15;
      v26 = *(v14 + 8);
      v16 = (v14 + v3);
      v17 = v14;
      do
      {
        v18 = v17;
        v17 = v16;
        v19 = *v16;
        *(v18 + 2) = *(v17 + 2);
        *v18 = v19;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v17) >> 2);
        v21 = __OFSUB__(v4, v20);
        v23 = v4 - v20;
        v22 = (v23 < 0) ^ v21;
        v16 = (a1 + 12 * v23);
        if (v22)
        {
          v16 = (v17 + v3);
        }
      }

      while (v16 != v14);
      *(v17 + 2) = v26;
      *v17 = v25;
    }

    while (v14 != a1);
    return a1 + a3 - a2;
  }

  return a2;
}

uint64_t RB::UntypedTable::for_each(uint64_t this, void (*a2)(const void *, const void *, const void *), const void *a3)
{
  if (*(this + 40))
  {
    v5 = this;
    v6 = 0;
    v7 = *(this + 56);
    do
    {
      for (i = *(*(v5 + 32) + 8 * v6); i; i = *i)
      {
        this = (a2)(i[1], i[2], a3);
      }

      ++v6;
    }

    while (!(v6 >> v7));
  }

  return this;
}

void *RB::Path::Subpath::DistanceMap::append(void *this, double a2, double a3, double a4)
{
  v7 = this;
  v8 = this[13];
  if (v8)
  {
    v9 = this[12];
    if (!v9)
    {
      v9 = this;
    }

    v10 = &v9[24 * v8];
    v11 = *(v10 - 3);
    v12 = *(v10 - 1);
    if (fabs(v11 - a2 + v12) < 1.0 && fabs(v12 - a3 + *(v10 - 2)) < 1.0)
    {
      *(v10 - 1) = a4 + a2 - v11;
      return this;
    }

    v13 = *(this + 120);
    if (v11 >= a2)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = *(this + 120);
  }

  *(this + 120) = v13 & 1;
  v14 = v8 + 1;
  if (this[14] < (v8 + 1))
  {
    this = RB::vector<RB::Path::Subpath::DistanceMap::Element,4ul,unsigned long>::reserve_slow(this, v14);
    v8 = v7[13];
    v14 = v8 + 1;
  }

  v15 = v7[12];
  if (!v15)
  {
    v15 = v7;
  }

  v16 = &v15[3 * v8];
  *v16 = a2;
  v16[1] = a3;
  v16[2] = a4;
  v7[13] = v14;
  return this;
}

void RB::Path::Subpath::DistanceMap::ensure_sorted(RB::Path::Subpath::DistanceMap *this, __n128 a2)
{
  if ((*(this + 120) & 1) == 0)
  {
    v2 = this;
    v3 = *(this + 13);
    if (*(this + 12))
    {
      this = *(this + 12);
    }

    v4 = 126 - 2 * __clz(v3);
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,false>(this, this + 24 * v3, v5, 1, a2);
    *(v2 + 120) = 1;
  }
}

void RB::Path::Subpath::DistanceMap::operator()(RB::Path::Subpath::DistanceMap *a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  RB::Path::Subpath::DistanceMap::ensure_sorted(a1, a2);
  v4 = *(a1 + 13);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 12);
  }

  else
  {
    v5 = a1;
  }

  v6 = (v5 + 24 * v4);
  while (v4)
  {
    v7 = v4 >> 1;
    v8 = (v5 + 24 * (v4 >> 1));
    v9 = *v8 + 1.0 + v8[2];
    v10 = v8 + 3;
    v4 += ~(v4 >> 1);
    if (v9 < v2)
    {
      v5 = v10;
    }

    else
    {
      v4 = v7;
    }
  }

  if (v5 != v6)
  {
    v11 = (v5 + 8);
    do
    {
      v12 = v2 - *(v11 - 1);
      if (v12 >= -0.0001)
      {
        break;
      }

      v13 = v11[1] + 1.0;
      v14 = (v11 + 2);
      v11 += 3;
    }

    while (v12 <= v13 && v14 != v6);
  }
}

double RB::Path::Subpath::DistanceMap::front(RB::Path::Subpath::DistanceMap **this, __n128 a2)
{
  RB::Path::Subpath::DistanceMap::ensure_sorted(this, a2);
  if (!this[13])
  {
    return INFINITY;
  }

  v3 = this[12];
  if (!v3)
  {
    v3 = this;
  }

  return *(v3 + 1);
}

float64_t RB::Path::Subpath::point_at(RB::Path::Subpath *this, float a2)
{
  v2 = *(this + 3);
  *&v28[0].v = *(this + 8);
  v3 = 0.0;
  if (*(this + 37) < 1)
  {
    return v3;
  }

  v5 = this + 32;
  v6 = v2 * a2;
  if (*(this + 36))
  {
    v7 = *(this + 36);
  }

  else
  {
    v7 = this + 32;
  }

  while (1)
  {
    v8 = *v7;
    if (v8 == 4)
    {
      break;
    }

    if (v8 == 3)
    {
      v12 = *(v7 + 1);
      *&v26[0].v = *(v7 + 2);
      *&v27[0].v = v12;
      CG::Quadratic::Quadratic(&v22, v28, v27, v26);
      v13 = *(v7 + 1);
      if (v6 <= v13)
      {
        CG::Quadratic::index(&v22, v6, *this);
        return CG::Quadratic::evaluate(&v22, v19);
      }

      v6 = v6 - v13;
      *&v28[0].v = *&v26[0].v;
      v7 += 48;
    }

    else if (v8 == 2)
    {
      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = *(v7 + 1);
      v22 = *&v28[0].v;
      v23 = v10;
      v24 = v9;
      if (v6 <= v11)
      {
        v18 = CG::LineSegment::index(&v22, v6);
        return v22.f64[0] + (v23 - v22.f64[0]) * v18;
      }

      v6 = v6 - v11;
      *&v28[0].v = v10;
      *&v28[2].v = v9;
      v7 += 32;
    }

LABEL_14:
    v16 = *(this + 36);
    if (!v16)
    {
      v16 = v5;
    }

    if (v7 >= &v16[8 * *(this + 37)])
    {
      return v3;
    }
  }

  v14 = *(v7 + 1);
  *&v26[0].v = *(v7 + 2);
  *&v27[0].v = v14;
  *&v25[0].v = *(v7 + 3);
  CG::Cubic::Cubic(&v22, v28, v27, v26, v25);
  v15 = *(v7 + 1);
  if (v6 > v15)
  {
    v6 = v6 - v15;
    *&v28[0].v = *&v25[0].v;
    v7 += 64;
    goto LABEL_14;
  }

  CG::Cubic::index(&v22, v6, *this);
  return CG::Cubic::evaluate(&v22, v21);
}

uint64_t RB::Path::Subpath::replay(uint64_t result, uint64_t *a2, int a3, float64x2_t *a4)
{
  if (*(result + 296))
  {
    v7 = result;
    v8 = *(result + 8);
    if (a4)
    {
      v8 = vmlaq_laneq_f64(vmlaq_n_f64(a4[2], *a4, *(result + 8)), a4[1], v8, 1);
    }

    v9 = *a2;
    if (a3)
    {
      result = (*(v9 + 16))(a2, v8);
    }

    else
    {
      result = (*(v9 + 24))(a2, v8);
    }

    if (*(v7 + 296) >= 1)
    {
      if (*(v7 + 288))
      {
        v10 = *(v7 + 288);
      }

      else
      {
        v10 = (v7 + 32);
      }

      do
      {
        v11 = *v10;
        switch(v11)
        {
          case 4:
            v16 = *(v10 + 2);
            if (a4)
            {
              v17 = a4[1];
              v18 = vmlaq_n_f64(vmlaq_n_f64(a4[2], *a4, v10[4]), v17, v10[5]);
              v19 = vmlaq_n_f64(vmlaq_n_f64(a4[2], *a4, v10[6]), v17, v10[7]);
              v16 = vmlaq_laneq_f64(vmlaq_n_f64(a4[2], *a4, v10[2]), v17, v16, 1);
            }

            else
            {
              v18 = *(v10 + 4);
              v19 = *(v10 + 6);
            }

            result = (*(*a2 + 40))(a2, v16, v18, v19);
            v10 += 8;
            break;
          case 3:
            v13 = *(v10 + 2);
            if (a4)
            {
              v14 = a4[1];
              v15 = vmlaq_n_f64(vmlaq_n_f64(a4[2], *a4, v10[4]), v14, v10[5]);
              v13 = vmlaq_laneq_f64(vmlaq_n_f64(a4[2], *a4, v10[2]), v14, v13, 1);
            }

            else
            {
              v15 = *(v10 + 4);
            }

            result = (*(*a2 + 32))(a2, v13, v15);
            v10 += 6;
            break;
          case 2:
            v12 = *(v10 + 2);
            if (a4)
            {
              v12 = vmlaq_laneq_f64(vmlaq_n_f64(a4[2], *a4, v10[2]), a4[1], v12, 1);
            }

            result = (*(*a2 + 24))(a2, v12);
            v10 += 4;
            break;
        }

        v20 = *(v7 + 288);
        if (!v20)
        {
          v20 = v7 + 32;
        }
      }

      while (v10 < v20 + 8 * *(v7 + 296));
    }

    if (a3)
    {
      v21 = *(*a2 + 8);

      return v21(a2);
    }
  }

  return result;
}

uint64_t RB::Path::Subpath::reset(uint64_t this, Point a2, double a3, double a4)
{
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 24) = 0;
  *(this + 296) = 0;
  *(this + 316) = 0;
  return this;
}

float64_t RB::Path::Subpath::close(RB::Path::Subpath *this, float64x2_t a2)
{
  v2 = *(this + 37);
  if (v2)
  {
    v3 = (this + 32);
    if (*(this + 36))
    {
      v3 = *(this + 36);
    }

    v4 = &v3->f64[v2];
    a2.f64[0] = *(this + 1);
    if (a2.f64[0] != *(v4 - 2))
    {
      v5 = *(this + 2);
LABEL_7:
      a2.f64[1] = v5;
      a2.f64[0] = RB::Path::Subpath::add_capto(this, a2, vsubq_f64(v3[1], a2));
      return a2.f64[0];
    }

    v5 = *(this + 2);
    if (v5 != *(v4 - 1))
    {
      goto LABEL_7;
    }
  }

  return a2.f64[0];
}

double RB::Path::Subpath::add_capto(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 312);
  if (v5 == 2)
  {
LABEL_19:

    return RB::Path::Subpath::add_lineto(a1, a2, INFINITY);
  }

  v7 = a1 + 32;
  v8 = *(a1 + 296);
  if (*(a1 + 288))
  {
    v7 = *(a1 + 288);
  }

  v9 = v7 + 8 * v8;
  v10 = *(v9 - 16);
  v11 = (a1 + 8);
  v12 = v8 >= 6;
  if (v8 >= 6)
  {
    v13 = (v9 - 40);
  }

  else
  {
    v13 = (a1 + 16);
  }

  if (v12)
  {
    v11 = (v9 - 48);
  }

  v14 = (v9 - 32);
  v15 = (v9 - 24);
  if (*(a1 + 316) == 2)
  {
    v15 = v13;
    v16 = v11;
  }

  else
  {
    v16 = v14;
  }

  v17.f64[0] = *v16;
  v17.f64[1] = *v15;
  v18 = vsubq_f64(v10, v17);
  v19 = vceqzq_f64(v18);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v19), 1), v19).u64[0] & 0x8000000000000000) != 0)
  {
    v18 = vmulq_n_f64(v18, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v18, v18))));
  }

  v20 = vceqzq_f64(a3);
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v20), 1), v20).u64[0] & 0x8000000000000000) != 0)
  {
    a3 = vmulq_n_f64(a3, 1.0 / sqrt(vaddvq_f64(vmulq_f64(a3, a3))));
  }

  v21 = vsubq_f64(v3, v10);
  v22 = sqrt(vaddvq_f64(vmulq_f64(v21, v21)));
  if (v5 == 1)
  {
    v28 = v22 * 0.5;
    v29 = v3;
    v27 = a3;
    RB::Path::Subpath::add_lineto(a1, vmlaq_n_f64(v10, v18, v22 * 0.5), INFINITY);
    RB::Path::Subpath::add_lineto(v4, vmlsq_lane_f64(v29, v27, v28, 0), INFINITY);
    a1 = v4;
    a2 = v29;
    goto LABEL_19;
  }

  v24 = v22 * 0.662500024;
  v25 = vmlaq_n_f64(v10, v18, v24);
  v26 = vmlsq_lane_f64(v3, a3, v24, 0);

  return RB::Path::Subpath::add_cubeto(a1, v25, v26, v3, INFINITY);
}

double RB::Path::Subpath::add_lineto(uint64_t a1, float64x2_t a2, double a3)
{
  v5 = a1 + 32;
  v6 = *(a1 + 296);
  v7 = v6 + 4;
  if (v6 <= 0xFFFFFFFFFFFFFFFBLL && *(a1 + 304) < v7)
  {
    v15 = a2;
    RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow((a1 + 32), v6 + 4);
    a2 = v15;
  }

  *(a1 + 296) = v7;
  v8 = *(a1 + 288);
  if (!v8)
  {
    v8 = v5;
  }

  v9 = (v8 + 8 * v6);
  if (a3 >= INFINITY && a3 <= INFINITY)
  {
    v10 = (a1 + 16);
    if (v6)
    {
      v10 = &v9[-1].n128_f64[1];
    }

    n128_f64 = (a1 + 8);
    if (v6)
    {
      n128_f64 = v9[-1].n128_f64;
    }

    v12.f64[0] = *n128_f64;
    v12.f64[1] = *v10;
    v13 = vsubq_f64(a2, v12);
    a3 = sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
  }

  v9->n128_u64[0] = 0x4000000000000000;
  v9->n128_f64[1] = a3;
  v9[1] = a2;
  result = *(a1 + 24) + a3;
  *(a1 + 24) = result;
  *(a1 + 316) = 2;
  return result;
}

double RB::Path::Subpath::add_cubeto(uint64_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5)
{
  v6 = a2;
  v8 = a1 + 32;
  v9 = *(a1 + 296);
  v10 = v9 + 8;
  if (v9 >= 0xFFFFFFFFFFFFFFF8)
  {
    *(a1 + 296) = v10;
    v14 = *(a1 + 288);
    if (!v14)
    {
      v14 = a1 + 32;
    }

    v12 = v14 + 8 * v9;
    goto LABEL_11;
  }

  if (*(a1 + 304) < v10)
  {
    v22 = a4;
    v18 = a3;
    RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow((a1 + 32), v9 + 8);
    a3 = v18;
    v6 = a2;
    a4 = v22;
  }

  *(a1 + 296) = v10;
  v11 = *(a1 + 288);
  if (!v11)
  {
    v11 = v8;
  }

  v12 = v11 + 8 * v9;
  if (v9)
  {
LABEL_11:
    v13 = *(v12 - 16);
    goto LABEL_12;
  }

  v13 = *(a1 + 8);
LABEL_12:
  *&v27[0].v = v13;
  if (a5 >= INFINITY && a5 <= INFINITY)
  {
    *&v24[0].v = a3;
    *&v25[0].v = v6;
    v21 = a4;
    *&v23[0].v = a4;
    v17 = a3;
    v19 = v6;
    CG::Cubic::Cubic(v26, v27, v25, v24, v23);
    v15 = CG::Cubic::length(v26, *a1);
    a3 = v17;
    v6 = v19;
    a4 = v21;
    a5 = v15;
  }

  *v12 = 0x4010000000000000;
  *(v12 + 8) = a5;
  *(v12 + 16) = v6.i64[0];
  *(v12 + 24) = vextq_s8(v6, a3, 8uLL);
  *(v12 + 56) = a4.i64[1];
  *(v12 + 40) = vextq_s8(a3, a4, 8uLL);
  result = *(a1 + 24) + a5;
  *(a1 + 24) = result;
  *(a1 + 316) = 4;
  return result;
}

void RB::Path::Subpath::append_range(RB::Path::Subpath *this, const RB::Path::Subpath *a2, double a3, double a4, RB::Path::Subpath::DistanceMap *a5)
{
  *&v32[0].v = *(a2 + 8);
  if (*(a2 + 37) >= 1)
  {
    v10 = a2 + 32;
    if (*(a2 + 36))
    {
      v11 = *(a2 + 36);
    }

    else
    {
      v11 = a2 + 32;
    }

    v12 = 0.0;
    do
    {
      v13 = *v11;
      switch(v13)
      {
        case 4:
          v22 = *(v11 + 1);
          *&v30[0].v = *(v11 + 2);
          *&v31[0].v = v22;
          *&v29[0].v = *(v11 + 3);
          CG::Cubic::Cubic(&v26, v32, v31, v30, v29);
          v23 = *(v11 + 1);
          v17 = v23 + v12;
          v24 = a4;
          if (a4 <= a3)
          {
            RB::Path::Subpath::add<CG::Cubic>(this, &v26, a5, v12, *(v11 + 1), v12, a4);
            v24 = v23 + v12;
          }

          RB::Path::Subpath::add<CG::Cubic>(this, &v26, a5, v12, v23, a3, v24);
          *&v32[0].v = *&v29[0].v;
          v11 += 64;
          break;
        case 3:
          v19 = *(v11 + 1);
          *&v30[0].v = *(v11 + 2);
          *&v31[0].v = v19;
          CG::Quadratic::Quadratic(&v26, v32, v31, v30);
          v20 = *(v11 + 1);
          v17 = v20 + v12;
          v21 = a4;
          if (a4 <= a3)
          {
            RB::Path::Subpath::add<CG::Quadratic>(this, &v26, a5, v12, *(v11 + 1), v12, a4);
            v21 = v20 + v12;
          }

          RB::Path::Subpath::add<CG::Quadratic>(this, &v26, a5, v12, v20, a3, v21);
          *&v32[0].v = *&v30[0].v;
          v11 += 48;
          break;
        case 2:
          v14 = *(v11 + 2);
          v15 = *(v11 + 3);
          v26 = *&v32[0].v;
          v27 = v14;
          v28 = v15;
          v16 = *(v11 + 1);
          v17 = v16 + v12;
          v18 = a4;
          if (a4 <= a3)
          {
            RB::Path::Subpath::add<CG::LineSegment>(this, &v26, a5, v12, *(v11 + 1), v12, a4);
            v18 = v16 + v12;
          }

          RB::Path::Subpath::add<CG::LineSegment>(this, &v26, a5, v12, v16, a3, v18);
          *&v32[0].v = v14;
          *&v32[2].v = v15;
          v11 += 32;
          break;
        default:
          v17 = v12;
          break;
      }

      v25 = *(a2 + 36);
      if (!v25)
      {
        v25 = v10;
      }

      v12 = v17;
    }

    while (v11 < &v25[8 * *(a2 + 37)]);
  }
}

void RB::Path::Subpath::append_logical_range(RB::Path::Subpath *this, const RB::Path::Subpath *a2, double a3, double a4, RB::Path::Subpath::DistanceMap *a5)
{
  if (a3 > a4)
  {
    RB::Path::Subpath::append_range(this, a2, a3, *(a2 + 3), a5);
    a3 = 0.0;
  }

  RB::Path::Subpath::append_range(this, a2, a3, a4, a5);
}

double RB::Path::Subpath::add_quadto(uint64_t a1, int8x16_t a2, int8x16_t a3, double a4)
{
  v5 = a2;
  v7 = a1 + 32;
  v8 = *(a1 + 296);
  v9 = v8 + 6;
  if (v8 >= 0xFFFFFFFFFFFFFFFALL)
  {
    *(a1 + 296) = v9;
    v13 = *(a1 + 288);
    if (!v13)
    {
      v13 = a1 + 32;
    }

    v11 = v13 + 8 * v8;
    goto LABEL_11;
  }

  if (*(a1 + 304) < v9)
  {
    v19 = a3;
    RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow((a1 + 32), v8 + 6);
    v5 = a2;
    a3 = v19;
  }

  *(a1 + 296) = v9;
  v10 = *(a1 + 288);
  if (!v10)
  {
    v10 = v7;
  }

  v11 = v10 + 8 * v8;
  if (v8)
  {
LABEL_11:
    v12 = *(v11 - 16);
    goto LABEL_12;
  }

  v12 = *(a1 + 8);
LABEL_12:
  *&v23[0].v = v12;
  if (a4 >= INFINITY && a4 <= INFINITY)
  {
    *&v20[0].v = a3;
    *&v21[0].v = v5;
    v16 = v5;
    v18 = a3;
    CG::Quadratic::Quadratic(&v22, v23, v21, v20);
    CG::Quadratic::length(&v22, *a1);
    v5 = v16;
    a3 = v18;
    a4 = v14;
  }

  *v11 = 0x4008000000000000;
  *(v11 + 8) = a4;
  *(v11 + 16) = v5.i64[0];
  *(v11 + 40) = a3.i64[1];
  *(v11 + 24) = vextq_s8(v5, a3, 8uLL);
  result = *(a1 + 24) + a4;
  *(a1 + 24) = result;
  *(a1 + 316) = 3;
  return result;
}

double RB::Path::Subpath::add(RB::Path::Subpath *this, float64x2_t *a2, double a3)
{
  v3 = *a2;
  v4 = vsubq_f64(a2[1], *a2);
  if (vaddvq_f64(vmulq_f64(v4, v4)) <= 0.00000001)
  {
    return INFINITY;
  }

  v7 = *(this + 37);
  if (v7)
  {
    v8 = this + 32;
    if (*(this + 36))
    {
      v8 = *(this + 36);
    }

    v9 = &v8[8 * v7];
    if (v3.f64[0] != *(v9 - 2) || v3.f64[1] != *(v9 - 1))
    {
      RB::Path::Subpath::add_capto(this, v3, v4);
    }
  }

  else
  {
    *(this + 8) = v3;
    *(this + 3) = 0;
    *(this + 79) = 0;
  }

  v11 = a2[1];
  v12 = vsubq_f64(v11, *a2);
  v10 = *(this + 3);
  RB::Path::Subpath::add_lineto(this, v11, sqrt(vaddvq_f64(vmulq_f64(v12, v12))));
  return v10;
}

{
  v6 = *a2;
  v7 = a2[1];
  v8 = vsubq_f64(v7, *a2);
  if (vaddvq_f64(vmulq_f64(v8, v8)) <= 0.00000001)
  {
    v9 = a2[2];
    v10 = vsubq_f64(v9, v7);
    if (vaddvq_f64(vmulq_f64(v10, v10)) <= 0.00000001)
    {
      v11 = vsubq_f64(a2[3], v9);
      if (vaddvq_f64(vmulq_f64(v11, v11)) <= 0.00000001)
      {
        return INFINITY;
      }
    }
  }

  v12 = *(this + 37);
  if (v12)
  {
    v13 = this + 32;
    if (*(this + 36))
    {
      v13 = *(this + 36);
    }

    v14 = &v13[8 * v12];
    if (v6.f64[0] != *(v14 - 2) || v6.f64[1] != *(v14 - 1))
    {
      RB::Path::Subpath::add_capto(this, v6, v8);
    }
  }

  else
  {
    *(this + 8) = v6;
    *(this + 3) = 0;
    *(this + 79) = 0;
  }

  if (a3 >= INFINITY && a3 <= INFINITY)
  {
    a3 = CG::Cubic::length(a2, *this);
  }

  v15 = *(this + 3);
  RB::Path::Subpath::add_cubeto(this, a2[1], a2[2], a2[3], a3);
  return v15;
}

double RB::Path::Subpath::add(RB::Path::Subpath *this, Point *a2, double a3)
{
  v6 = *&a2->v;
  v7 = *&a2[4].v;
  v8 = vsubq_f64(v7, *&a2->v);
  if (vaddvq_f64(vmulq_f64(v8, v8)) <= 0.00000001)
  {
    v9 = vsubq_f64(*&a2[8].v, v7);
    if (vaddvq_f64(vmulq_f64(v9, v9)) <= 0.00000001)
    {
      return INFINITY;
    }
  }

  v10 = *(this + 37);
  if (v10)
  {
    v11 = this + 32;
    if (*(this + 36))
    {
      v11 = *(this + 36);
    }

    v12 = &v11[8 * v10];
    if (v6.f64[0] != *(v12 - 2) || v6.f64[1] != *(v12 - 1))
    {
      RB::Path::Subpath::add_capto(this, v6, v8);
    }
  }

  else
  {
    *(this + 8) = v6;
    *(this + 3) = 0;
    *(this + 79) = 0;
  }

  if (a3 >= INFINITY && a3 <= INFINITY)
  {
    CG::Quadratic::length(a2, *this);
    a3 = v13;
  }

  v14 = *(this + 3);
  RB::Path::Subpath::add_quadto(this, *&a2[4].v, *&a2[8].v, a3);
  return v14;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = *(a2 - 24);
        v89 = (a2 - 24);
        result.n128_f64[0] = v90;
        if (v90 >= *v12)
        {
          return result;
        }

LABEL_106:
        v198 = *(v12 + 16);
        v169 = *v12;
        v94 = *v89;
        *(v12 + 16) = v89[1].n128_u64[0];
        *v12 = v94;
        result = v169;
        v89[1].n128_u64[0] = v198;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v138 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v138;
          if (*(v12 + 24) < *v12)
          {
            v201 = *(v12 + 16);
            v174 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v174.n128_u64[1];
            *v91 = v174;
            *(v12 + 40) = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = *(v12 + 16);
          v170 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v170.n128_u64[1];
          *v96 = v170;
          v98 = v199;
          goto LABEL_177;
        }

        v203 = *(v12 + 16);
        v177 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        *v91 = v177;
        *(v12 + 40) = v203;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_177:
          *(v12 + 64) = v98;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v96->n128_f64[0])
      {
        return result;
      }

      result = *v96;
      v144 = *(v12 + 64);
      v145 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v145;
      *(a2 - 8) = v144;
      *v9 = result;
      result.n128_u64[0] = v96->n128_u64[0];
      if (v96->n128_f64[0] >= v91->n128_f64[0])
      {
        return result;
      }

      v146 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v146;
LABEL_181:
      result.n128_u64[0] = *(v12 + 24);
      if (result.n128_f64[0] < *v12)
      {
        v204 = *(v12 + 16);
        v178 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v178;
        *v91 = v178;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            result.n128_u64[0] = v103[1].n128_u64[1];
            if (result.n128_f64[0] < v103->n128_f64[0])
            {
              v171 = v103[2];
              v105 = v102;
              while (1)
              {
                v106 = v12 + v105;
                *(v106 + 24) = *(v12 + v105);
                *(v106 + 40) = *(v12 + v105 + 16);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (result.n128_f64[0] >= *(v106 - 24))
                {
                  v107 = v12 + v105 + 24;
                  goto LABEL_126;
                }
              }

              v107 = v12;
LABEL_126:
              *v107 = result.n128_u64[0];
              result = v171;
              *(v107 + 8) = v171;
            }

            v99 = &v104[1].n128_u64[1];
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v139 = v99;
          result.n128_u64[0] = *(a1 + 24);
          if (result.n128_f64[0] < *a1)
          {
            v175 = *(a1 + 32);
            v140 = v99;
            do
            {
              *v140 = *(v140 - 24);
              *(v140 + 16) = *(v140 - 8);
              v141 = *(v140 - 48);
              v140 -= 24;
            }

            while (result.n128_f64[0] < v141);
            *v140 = result.n128_u64[0];
            result = v175;
            *(v140 + 8) = v175;
          }

          v99 += 24;
          a1 = v139;
        }

        while (v139 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v12 + 24 * v111;
            if (2 * v110 + 2 < v14 && *v112 < *(v112 + 24))
            {
              v112 += 24;
              v111 = 2 * v110 + 2;
            }

            v113 = v12 + 24 * v110;
            v114 = *v113;
            if (*v112 >= *v113)
            {
              v172 = *(v113 + 8);
              do
              {
                v115 = v113;
                v113 = v112;
                v116 = *v112;
                *(v115 + 16) = *(v112 + 16);
                *v115 = v116;
                if (v108 < v111)
                {
                  break;
                }

                v117 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = v12 + 24 * v111;
                v118 = v117 + 2;
                if (v118 < v14 && *v112 < *(v112 + 24))
                {
                  v112 += 24;
                  v111 = v118;
                }
              }

              while (*v112 >= v114);
              *v113 = v114;
              *(v113 + 8) = v172;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v119 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v120 = 0;
          v200 = *(v12 + 16);
          v173 = *v12;
          v121 = v12;
          do
          {
            v122 = v121;
            v123 = v121 + 24 * v120;
            v121 = v123 + 24;
            v124 = 2 * v120;
            v120 = (2 * v120) | 1;
            v125 = v124 + 2;
            if (v125 < v119)
            {
              v127 = *(v123 + 48);
              v126 = v123 + 48;
              if (*(v126 - 24) < v127)
              {
                v121 = v126;
                v120 = v125;
              }
            }

            v128 = *v121;
            v122[1].n128_u64[0] = *(v121 + 16);
            *v122 = v128;
          }

          while (v120 <= ((v119 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v173;
            *(v121 + 16) = v200;
            *v121 = v173;
          }

          else
          {
            v129 = *a2;
            *(v121 + 16) = *(a2 + 16);
            *v121 = v129;
            result = v173;
            *(a2 + 16) = v200;
            *a2 = v173;
            v130 = v121 - v12 + 24;
            if (v130 >= 25)
            {
              v131 = (-2 - 0x5555555555555555 * (v130 >> 3)) >> 1;
              v132 = v12 + 24 * v131;
              result.n128_u64[0] = *v121;
              if (*v132 < *v121)
              {
                v149 = *(v121 + 8);
                do
                {
                  v133 = v121;
                  v121 = v132;
                  v134 = *v132;
                  *(v133 + 16) = *(v132 + 16);
                  *v133 = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = v12 + 24 * v131;
                }

                while (*v132 < result.n128_f64[0]);
                *v121 = result.n128_u64[0];
                result = v149;
                *(v121 + 8) = v149;
              }
            }
          }
        }

        while (v119-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] >= *v12)
      {
        if (v17 < v18)
        {
          v181 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v181;
          *v9 = v152;
          if (v16->n128_f64[0] < *v12)
          {
            v182 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v182;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v179 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v185 = *(v12 + 16);
        v156 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v185;
        *v16 = v156;
        if (*v9 < v16->n128_f64[0])
        {
          v179 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v179;
          *v9 = v150;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v31 = *(v29 - 24);
      v30 = (v29 - 24);
      v32 = v31;
      v33 = *v10;
      if (v31 >= *(v12 + 24))
      {
        if (v33 < v32)
        {
          v186 = v30[1].n128_i64[0];
          v157 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v186;
          *v10 = v157;
          if (v30->n128_f64[0] < v28->n128_f64[0])
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = v30[1].n128_i64[0];
            *v28 = *v30;
            *(v12 + 40) = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = v30[1].n128_i64[0];
        *v28 = *v30;
        *(v12 + 40) = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (*v10 < v30->n128_f64[0])
        {
          v188 = v30[1].n128_i64[0];
          v159 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v46;
          v34 = v159;
          *(a2 - 32) = v188;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v50 = *(v48 + 24);
      v49 = (v48 + 24);
      v51 = v50;
      v52 = *v11;
      if (v50 >= *(v12 + 48))
      {
        if (v52 < v51)
        {
          v189 = v49[1].n128_i64[0];
          v160 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v189;
          *v11 = v160;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 64) = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 64) = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_f64[0])
        {
          v190 = v49[1].n128_i64[0];
          v161 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v63;
          v53 = v161;
          *(a2 - 56) = v190;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_f64[0];
      v65 = v49->n128_f64[0];
      if (v16->n128_f64[0] >= v30->n128_f64[0])
      {
        if (v65 < v64)
        {
          v192 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v192;
          *v49 = v163;
          if (v16->n128_f64[0] < v30->n128_f64[0])
          {
            v193 = v30[1].n128_u64[0];
            v164 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v193;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v191 = v30[1].n128_u64[0];
          v162 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v194 = v30[1].n128_u64[0];
        v165 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (v49->n128_f64[0] < v16->n128_f64[0])
        {
          v191 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v191;
          *v49 = v162;
        }
      }

      v195 = *(v12 + 16);
      v166 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v195;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= v16->n128_f64[0])
    {
      if (v17 < v20)
      {
        v183 = *(v12 + 16);
        v154 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v183;
        *v9 = v154;
        if (*v12 < v16->n128_f64[0])
        {
          v184 = v16[1].n128_u64[0];
          v155 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v184;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v187 = v16[1].n128_u64[0];
      v158 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v187;
      *v12 = v158;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v180 = *(v12 + 16);
      v151 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v180 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v180;
    *v9 = v151;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v147 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v196 = *(v12 + 16);
          v167 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v196;
          *v74 = v167;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v147;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      v79 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *>(a1, v12 - 24, v147);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *>(v12, a2, v80))
      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v148 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v197 = *(v12 + 16);
        v168 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v197;
        *v83 = v168;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v148;
      *(v12 - 16) = v148;
    }
  }

  v91 = (v12 + 24);
  result.n128_u64[0] = *(v12 + 24);
  v92 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v92;
  if (result.n128_f64[0] >= *v12)
  {
    if (v93 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v91;
    v136 = *(v12 + 40);
    v137 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v137;
    v89[1].n128_u64[0] = v136;
    *v89 = result;
    goto LABEL_181;
  }

  if (v93 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v202 = *(v12 + 16);
  v176 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v176.n128_u64[1];
  *v91 = v176;
  *(v12 + 40) = v202;
  result.n128_u64[0] = v89->n128_u64[0];
  if (v89->n128_f64[0] < *(v12 + 24))
  {
    result = *v91;
    v142 = *(v12 + 40);
    v143 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v143;
    v89[1].n128_u64[0] = v142;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void *RB::vector<RB::Path::Subpath::DistanceMap::Element,4ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 14) + (*(__dst + 14) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 14) + (*(__dst + 14) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,24ul>(*(__dst + 12), __dst, 4uLL, __dst + 14, v3);
  *(__dst + 12) = result;
  return result;
}

void RB::Path::Subpath::add<CG::LineSegment>(RB::Path::Subpath *this, float64x2_t *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = a5 + a4;
  if (a6 < a4)
  {
    a6 = a4;
  }

  if (a6 <= v8)
  {
    v9 = a6;
  }

  else
  {
    v9 = v8;
  }

  if (a7 >= a4)
  {
    v10 = a7;
  }

  else
  {
    v10 = a4;
  }

  if (v10 > v8)
  {
    v10 = v8;
  }

  v11 = v10 - v9;
  if (v10 - v9 >= 0.0001)
  {
    v15 = v10 - a4;
    v16 = 0.0;
    if (v9 - a4 >= 0.0001)
    {
      v16 = CG::LineSegment::index(a2, v9 - a4);
    }

    v17 = 1.0;
    if (v15 <= a5 + -0.0001)
    {
      v17 = CG::LineSegment::index(a2, v15);
    }

    if (v16 <= 0.0001 && v17 >= 0.9999)
    {
      v18 = RB::Path::Subpath::add(this, a2, 0.9999);
      v11 = a5;
      goto LABEL_25;
    }

    v19 = a2[1];
    v22 = *a2;
    v23 = v19;
    if (v16 <= 0.0001)
    {
      v20 = 0.9999;
      if (v17 < 0.9999)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CG::LineSegment::split(&v22, v16, v21);
      v22 = v21[2];
      v23 = v21[3];
      v20 = 0.9999;
      if (v17 < 0.9999)
      {
        v17 = (v17 - v16) / (1.0 - v16);
LABEL_23:
        CG::LineSegment::split(&v22, v17, v21);
        v20 = *v21;
        v22 = v21[0];
        v23 = v21[1];
      }
    }

    v18 = RB::Path::Subpath::add(this, &v22, v20);
LABEL_25:
    if (a3)
    {
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        RB::Path::Subpath::DistanceMap::append(a3, v9, v18, v11);
      }
    }
  }
}

void RB::Path::Subpath::add<CG::Quadratic>(RB::Path::Subpath *this, Point *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = a5 + a4;
  if (a6 < a4)
  {
    a6 = a4;
  }

  if (a6 <= v8)
  {
    v9 = a6;
  }

  else
  {
    v9 = v8;
  }

  if (a7 >= a4)
  {
    v10 = a7;
  }

  else
  {
    v10 = a4;
  }

  if (v10 <= v8)
  {
    v8 = v10;
  }

  v11 = v8 - v9;
  if (v8 - v9 >= 0.0001)
  {
    v15 = v8 - a4;
    v16 = 0.0;
    if (v9 - a4 >= 0.0001)
    {
      CG::Quadratic::index(a2, v9 - a4, *this);
      v16 = v17;
    }

    v18 = 1.0;
    if (v15 <= a5 + -0.0001)
    {
      CG::Quadratic::index(a2, v15, *this);
      v18 = v19;
    }

    if (v16 <= 0.0001 && v18 >= 0.9999)
    {
      v20 = RB::Path::Subpath::add(this, a2, a5);
      v11 = a5;
      goto LABEL_25;
    }

    v21 = *&a2[12].v;
    v26 = *&a2[8].v;
    v27 = v21;
    v28 = *&a2[16].v;
    v22 = *&a2[4].v;
    *&v24[0].v = *&a2->v;
    v25 = v22;
    if (v16 <= 0.0001)
    {
      if (v18 < 0.9999)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CG::Quadratic::split(v24, v16, v23);
      v26 = v23[7];
      v27 = v23[8];
      v28 = v23[9];
      *&v24[0].v = v23[5];
      v25 = v23[6];
      if (v18 < 0.9999)
      {
        v18 = (v18 - v16) / (1.0 - v16);
LABEL_23:
        CG::Quadratic::split(v24, v18, v23);
        v26 = v23[2];
        v27 = v23[3];
        v28 = v23[4];
        *&v24[0].v = v23[0];
        v25 = v23[1];
      }
    }

    v20 = RB::Path::Subpath::add(this, v24, INFINITY);
LABEL_25:
    if (a3)
    {
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        RB::Path::Subpath::DistanceMap::append(a3, v9, v20, v11);
      }
    }
  }
}

void RB::Path::Subpath::add<CG::Cubic>(RB::Path::Subpath *this, float64x2_t *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = a5 + a4;
  if (a6 < a4)
  {
    a6 = a4;
  }

  if (a6 <= v8)
  {
    v9 = a6;
  }

  else
  {
    v9 = v8;
  }

  if (a7 >= a4)
  {
    v10 = a7;
  }

  else
  {
    v10 = a4;
  }

  if (v10 <= v8)
  {
    v8 = v10;
  }

  v11 = v8 - v9;
  if (v8 - v9 >= 0.0001)
  {
    v15 = v8 - a4;
    v16 = 0.0;
    if (v9 - a4 >= 0.0001)
    {
      CG::Cubic::index(a2, v9 - a4, *this);
      v16 = v17;
    }

    v18 = 1.0;
    if (v15 <= a5 + -0.0001)
    {
      CG::Cubic::index(a2, v15, *this);
      v18 = v19;
    }

    if (v16 <= 0.0001 && v18 >= 0.9999)
    {
      v20 = RB::Path::Subpath::add(this, a2, a5);
      v11 = a5;
      goto LABEL_25;
    }

    v21 = a2[5];
    v29 = a2[4];
    v30 = v21;
    v31 = a2[6];
    v22 = a2[1];
    v25 = *a2;
    v26 = v22;
    v23 = a2[3];
    v27 = a2[2];
    v28 = v23;
    if (v16 <= 0.0001)
    {
      if (v18 < 0.9999)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CG::Cubic::split(&v25, v16, v24);
      v29 = v24[11];
      v30 = v24[12];
      v31 = v24[13];
      v25 = v24[7];
      v26 = v24[8];
      v27 = v24[9];
      v28 = v24[10];
      if (v18 < 0.9999)
      {
        v18 = (v18 - v16) / (1.0 - v16);
LABEL_23:
        CG::Cubic::split(&v25, v18, v24);
        v29 = v24[4];
        v30 = v24[5];
        v31 = v24[6];
        v25 = v24[0];
        v26 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
      }
    }

    v20 = RB::Path::Subpath::add(this, &v25, INFINITY);
LABEL_25:
    if (a3)
    {
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        RB::Path::Subpath::DistanceMap::append(a3, v9, v20, v11);
      }
    }
  }
}

uint64_t RB::RenderParams::RenderParams(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, double a8)
{
  v8 = *(*a2 + 331) != 0;
  *result = a3;
  *(result + 8) = a6;
  *(result + 9) = a4;
  *(result + 10) = a5;
  *(result + 11) = a7 | (2 * v8) | *(result + 11) & 0xC0;
  *(result + 16) = a2;
  *(result + 24) = a8;
  return result;
}

RB::RenderParams *RB::RenderParams::RenderParams(RB::RenderParams *this, RB::RenderFrame *a2, const RB::Surface *a3)
{
  v6 = *(a3 + 4);
  v7 = *(a3 + 3);
  v8 = *(a3 + 160);
  v9 = RB::pixel_format_required_component(v6, a2);
  v11 = *(RB::pixel_format_traits(*(a3 + 4), v10) + 4);
  v12 = *(*a2 + 331) != 0;
  *this = v6;
  *(this + 8) = v9;
  *(this + 9) = v8;
  *(this + 10) = v8 & 0xF0 | 1;
  v13 = (v11 >> 1) & 1 | (2 * v12) | *(this + 11) & 0xC0;
  *(this + 11) = v13;
  *(this + 2) = a2;
  *(this + 3) = v7;
  *(this + 11) = v13 & 0xF7 | (8 * ((*(a3 + 40) & 4) != 0));
  return this;
}

uint64_t RB::RenderFrame::RenderFrame(uint64_t a1, uint64_t a2, os_signpost_id_t a3, int a4, __CFString *a5, int a6)
{
  v43 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v12 = (a1 + 16);
  *(a1 + 24) = 0;
  v13 = RB::current_time_seconds(a1);
  *(a1 + 80) = v13;
  *(a1 + 88) = a4;
  *(a1 + 92) = a6;
  v14 = *(a2 + 252) + 1;
  *(a2 + 252) = v14;
  *(a1 + 96) = v14;
  *(a1 + 100) = (v13 * 60.0 + 0.5);
  v15 = malloc_good_size(0x58uLL);
  v16 = malloc_type_malloc(v15, 0xE192D423uLL);
  if (!v16)
  {
    RB::precondition_failure("memory allocation failed", v17);
  }

  *v16 = 0;
  v16[1] = 0;
  v16[2] = (v15 - 24) >> 3;
  *(a1 + 112) = v16;
  v18 = malloc_good_size(0x58uLL);
  v19 = malloc_type_malloc(v18, 0xE192D423uLL);
  if (!v19)
  {
    RB::precondition_failure("memory allocation failed", v20);
  }

  *v19 = 0;
  v19[1] = 0;
  v19[2] = (v18 - 24) >> 3;
  *(a1 + 120) = v19;
  v21 = malloc_good_size(0x58uLL);
  v22 = malloc_type_malloc(v21, 0xE192D423uLL);
  if (!v22)
  {
    RB::precondition_failure("memory allocation failed", v23);
  }

  *v22 = 0;
  v22[1] = 0;
  v22[2] = (v21 - 24) >> 3;
  *(a1 + 136) = 0;
  *(a1 + 128) = v22;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 240) = 0;
  *(a1 + 152) = 0;
  *(a1 + 248) = 0x800000000;
  v24 = RB::UntypedTable::UntypedTable(a1 + 256, RB::RenderFrame::RenderFrame(RB::Device *,RB::Drawable *,RB::RenderFrame::Kind,NSString *,unsigned int)::$_0::__invoke<RB::RenderFrame::RegionKey const*>, RB::RenderFrame::RenderFrame(RB::Device *,RB::Drawable *,RB::RenderFrame::Kind,NSString *,unsigned int)::$_1::__invoke<RB::RenderFrame::RegionKey const*,RB::RenderFrame::RegionKey const*>, 0, RB::RenderFrame::RenderFrame(RB::Device *,RB::Drawable *,RB::RenderFrame::Kind,NSString *,unsigned int)::$_2::__invoke<RB::RenderFrame::RegionEntry const*>);
  *(a1 + 320) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x400000000;
  *(a1 + 376) = 0;
  *(a1 + 385) = 0;
  v25 = RB::signposts_log(v24);
  v26 = v25;
  if (v25 && a3 + 1 >= 2 && os_signpost_enabled(v25))
  {
    v36 = *(a1 + 96);
    v37 = &stru_1F0A40C30;
    if (a5)
    {
      v37 = a5;
    }

    v38[0] = 67109634;
    v38[1] = v36;
    v39 = 1024;
    v40 = a4;
    v41 = 2112;
    v42 = v37;
    _os_signpost_emit_with_name_impl(&dword_195CE8000, v26, OS_SIGNPOST_INTERVAL_BEGIN, a3, "CommandBuffer", "frame=%u kind=%d label=%@", v38, 0x18u);
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  [RB::Device::capture_scope(a2) beginScope];
  if (*(a2 + 340))
  {
    v27 = objc_opt_new();
    [v27 setErrorOptions:1];
    v28 = [RB::Device::command_queue(a2 1)];
    if (*v12 != v28)
    {

      *v12 = v28;
    }

    v29 = *v12;
  }

  else
  {
    v30 = [RB::Device::command_queue(a2 1)];
    v29 = *v12;
    if (*v12 != v30)
    {

      v29 = v30;
      *v12 = v29;
    }
  }

  if (a5)
  {
    [v29 setLabel:a5];
    v29 = *v12;
  }

  [v29 enqueue];
  v31 = *(a1 + 112);
  v32 = v31[1];
  if (v32 >= v31[2])
  {
    v31 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::realloc_buffer((a1 + 112), v31);
  }

  v31[v32 + 3] = 0;
  atomic_store(v32 + 1, v31 + 1);
  v33 = *(a1 + 120);
  v34 = v33[1];
  if (v34 >= v33[2])
  {
    v33 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::realloc_buffer((a1 + 120), v33);
  }

  v33[v34 + 3] = 0;
  atomic_store(v34 + 1, v33 + 1);
  return a1;
}

void sub_195DF5B6C(_Unwind_Exception *a1)
{
  RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::~vector(v1 + 328);
  RB::UntypedTable::~UntypedTable((v3 + 15));
  RB::vector<RB::refcounted_ptr<RB::ResourceHeap>,8ul,unsigned int>::~vector((v3 + 5));
  std::unique_ptr<RB::vector<RB::cf_ptr<__IOSurface *>,8ul,unsigned long>>::reset[abi:nn200100](v2, 0);
  v5 = *v3;
  if (*v3)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  *v3 = 0;
  RB::shared_vector<RB::Function const*>::~shared_vector((v1 + 128));
  RB::shared_vector<RB::RenderFrame::TextureRef>::~shared_vector(v1 + 120);
  RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::~shared_vector(v1 + 112);

  _Unwind_Resume(a1);
}

uint64_t RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = v3[i];
      v3[i] = 0;
      if (v6)
      {
        RB::RenderFrame::QueueDeleter::operator()(v2, v6);
        v4 = *(a1 + 40);
      }
    }

    v2 = *(a1 + 32);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::vector<RB::refcounted_ptr<RB::ResourceHeap>,8ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 72))
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        v6 = v5[2] - 1;
        v5[2] = v6;
        if (!v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      ++v4;
    }

    while (v4 < *(a1 + 72));
    v2 = *(a1 + 64);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void **RB::shared_vector<RB::Function const*>::~shared_vector(void **a1)
{
  v2 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(*a1);
  free(v2);
  return a1;
}

uint64_t RB::shared_vector<RB::RenderFrame::TextureRef>::~shared_vector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v4 = v2 + 3;
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6)
      {
        v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
        v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8) - 1;
        v7[2] = v8;
        if (!v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      --v3;
    }

    while (v3);
  }

  v9 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(v2);
  free(v9);
  return a1;
}

uint64_t RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::~shared_vector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v4 = (v2 + 3);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = v5[2] - 1;
        v5[2] = v6;
        if (!v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  v7 = RB::shared_vector<RB::refcounted_ptr<RB::Buffer>>::buffer::~buffer(v2);
  free(v7);
  return a1;
}

uint64_t __copy_helper_block_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  *(result + 32) = v2;
  v3 = *(a2 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  *(result + 40) = v3;
  return result;
}

uint64_t __destroy_helper_block_e8_32c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE40c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice .cxx_destruct];
  }

  result = *(a1 + 32);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  return result;
}

uint64_t ___ZN2RB11RenderFrameD2Ev_block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  [a2 GPUEndTime];
  v5 = v4;
  v6 = [a2 GPUStartTime];
  v8 = v5 - v7;
  v9 = RB::signposts_log(v6);
  if (v9)
  {
    v10 = *(a1 + 32);
    if (v10 + 1 >= 2)
    {
      v25 = v9;
      if (os_signpost_enabled(v9))
      {
        v26 = *(a1 + 64);
        *buf = 67109376;
        v30 = v26;
        v31 = 2048;
        v32 = v8;
        _os_signpost_emit_with_name_impl(&dword_195CE8000, v25, OS_SIGNPOST_EVENT, v10, "CommandBuffer Completed", "frame=%u duration=%g", buf, 0x12u);
      }
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    RB::Drawable::end_frame(v11, v8);
  }

  if ([a2 status] == 5)
  {
    [a2 error];
    RB::Device::command_buffer_error(*(a1 + 40), [a2 error], *(a1 + 48), *(a1 + 64), *(a1 + 68));
  }

  RB::Device::dispatch_frame_continuation(*(a1 + 40), *(a1 + 64), a2, 1u);
  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = *(v12 + 72);
    v14 = *(v12 + 64) ? *(v12 + 64) : *(a1 + 56);
    if (!v13)
    {
      goto LABEL_15;
    }

    v15 = 8 * v13;
    do
    {
      v16 = *v14++;
      IOSurfaceDecrementUseCount(v16);
      v15 -= 8;
    }

    while (v15);
    v12 = *(a1 + 56);
    if (v12)
    {
LABEL_15:
      v17 = *(v12 + 64);
      v18 = *(v12 + 72);
      if (v17)
      {
        v19 = *(v12 + 64);
      }

      else
      {
        v19 = v12;
      }

      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          v21 = *(v19 + 8 * i);
          if (v21)
          {
            CFRelease(v21);
            v18 = *(v12 + 72);
          }
        }

        v17 = *(v12 + 64);
      }

      if (v17)
      {
        free(v17);
      }

      MEMORY[0x19A8C09E0](v12, 0x1020C40894D135BLL);
    }
  }

  v22 = *(a1 + 40);
  v23 = *(v22 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2RB11RenderFrameD2Ev_block_invoke_3;
  block[3] = &__block_descriptor_40_e8_32c38_ZTSN2RB14refcounted_ptrINS_6DeviceEEE_e5_v8__0l;
  atomic_fetch_add_explicit((v22 + 8), 1u, memory_order_relaxed);
  v28 = v22;
  dispatch_async(v23, block);
  result = v28;
  if (v28)
  {
    if (atomic_fetch_add_explicit((v28 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return [RBDevice initWithDevice:];
    }
  }

  return result;
}

uint64_t ___ZN2RB11RenderFrameD2Ev_block_invoke_3(uint64_t a1)
{
  result = RB::Device::prune_caches(*(a1 + 32), 0);
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 collectResources];
  }

  return result;
}

void RB::RenderFrame::copy_texture(uint64_t *a1@<X0>, MTLPixelFormat a2@<X1>, MTLPixelFormat a3@<X2>, char a4@<W3>, int32x2_t a5@<X4>, void *a6@<X8>)
{
  v8 = a3;
  v10 = a3 >> 8;
  v11 = *(a2 + 80);
  v12 = *(a2 + 56);
  v13 = a4 & 2;
  v14 = (v11 != a3) & (a3 >> 8) & HIBYTE(v11);
  if (v14 == 1)
  {
    if ((v11 & 0xF) == a3)
    {
      v15 = *(RB::pixel_format_traits(*(a2 + 56), a2) + 18);
    }

    else if ((v11 & 0xF | 0x10) == a3)
    {
      v15 = RB::pixel_format_traits(*(a2 + 56), a2)[6];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 != 0;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    if (v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
    v17 = *(a2 + 56);
    if ((a4 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  if (!v17)
  {
    v16 = 0;
  }

  if (v14)
  {
    v18 = !v16;
  }

  else
  {
    v18 = 0;
  }

  if (!v18 && ((a4 & 1) == 0 || *(a2 + 76) >= 2u))
  {
    if (v12 == v17)
    {
      ++*(a2 + 8);
      *a6 = a2;
      return;
    }

    if (RB::pixel_formats_support_view_copy(v12, v17, a3))
    {
      if ((*(a2 + 77) & 1) == 0 || (v19 = *(a2 + 24)) == 0 || *(v19 + 56) != v17)
      {
        [*(a2 + 16) newTextureViewWithPixelFormat:v17];
        operator new();
      }

      ++*(v19 + 8);
      *a6 = v19;
      return;
    }
  }

LABEL_28:
  v20 = *(a2 + 79);
  v21 = RB::pixel_format_traits(v17, a2);
  v23 = 8;
  if (!v20)
  {
    v23 = 6;
  }

  v24 = HIDWORD(*&v21[v23]);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v17;
  }

  if (*&a5 && *(*&a5 + 56) == v25 && (v26 = vceq_s32(*(*&a5 + 64), *(a2 + 64)), (vpmin_u32(v26, v26).u32[0] & 0x80000000) != 0) && *(*&a5 + 76) > 1u == (a4 & 1) && ((v10 & 1) == 0 ? (v28 = v11) : (v28 = v8 | (v10 << 8)), *(*&a5 + 78) == 1))
  {
    ++*(*&a5 + 8);
    *(*&a5 + 80) = v28;
  }

  else
  {
    if (a4)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = 1;
    }

    v22.n128_u64[0] = *(a2 + 64);
    RB::Texture::alloc(*a1, v25, v27, 1, 0, v52, v22);
    a5 = v52[0];
    if (!*v52)
    {
      *a6 = 0;
      return;
    }

    RB::Resource::set_label(*(*v52 + 16), "copied-texture", &RB::RenderFrame::copy_texture(RB::Texture *,std::optional<RB::ColorSpace>,unsigned int,RB::Texture *)::counter);
    v28 = *(*&a5 + 80);
  }

  v29 = *(a2 + 56);
  v30 = *(a2 + 64);
  v32 = RB::pixel_format_required_component(*(*&a5 + 56), v25);
  if ((v28 & 0x100) == 0)
  {
    LOBYTE(v28) = 17;
  }

  v33 = (RB::pixel_format_traits(*(*&a5 + 56), v31)[1] & 0xA) != 0;
  v34 = *(*a1 + 331) != 0;
  v61 = v29;
  v62 = v32;
  v63 = v28;
  v64 = v28;
  v65 = v33 | (2 * v34);
  v66 = a1;
  v67 = v30;
  *&v35 = RB::RenderPass::RenderPass(v52, &v61, *&a5, 0, 1, 6, 0);
  v37.f32[0] = RB::Coverage::set_plane(&v49, v52, v35);
  if (v53 == 2)
  {
    v38 = 131105;
  }

  else
  {
    v38 = 33;
  }

  v48 = v38;
  if (v11 & 0x100) != 0 && (v10)
  {
    RB::RenderState::set_color_conversion(&v48, v11, v8, &v50 + 12, v37);
  }

  if (v13 || (RB::pixel_format_traits(*(a2 + 56), v36)[1] & 1) == 0)
  {
    LODWORD(v48) = v48 & 0xF3FFFFFF | ((v13 & 3) << 26) | 0x4000000;
  }

  RB::RenderFrame::alloc_buffer_region(*(*v52 + 16), 0x3C, 4uLL, 0, &v68);
  v39 = v68;
  if (v68)
  {
    v40 = v69;
    v41 = (*(v68 + 7) + v69);
    v42 = *v51;
    v43 = v50;
    v44 = v49;
    *(v41 + 44) = *&v51[12];
    v41[1] = v43;
    v41[2] = v42;
    *v41 = v44;
    v45 = v70;
  }

  else
  {
    v45 = 0;
    v40 = 0;
  }

  v56 = RB::RenderFrame::buffer_id(*(*v52 + 16), v39);
  v57 = v40;
  v58 = v45;
  RB::RenderPass::set_texture(v52, 0, a2, MTLPixelFormatInvalid);
  RB::RenderPass::draw_indexed_primitives(v52, v48, 4, **(*v52 + 16) + 136, 4uLL, 1uLL, v54, v55);
  v59 = 0;
  v60 = 0;
  RB::RenderPass::~RenderPass(v52);
  if (a4)
  {
    RB::RenderFrame::invalidate_mipmaps(a1, *&a5);
  }

  *a6 = a5;
}

void sub_195DF66D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52)
{
  v54 = *(v52 + 8) - 1;
  *(v52 + 8) = v54;
  if (!v54)
  {
    RB::RenderFrame::copy_texture(v52);
  }

  _Unwind_Resume(exception_object);
}

RB::RenderFrame *RB::RenderFrame::invalidate_mipmaps(RB::RenderFrame *this, RB::Texture *a2)
{
  if (*(a2 + 3))
  {
    v2 = *(a2 + 3);
  }

  else
  {
    v2 = a2;
  }

  if (*(v2 + 76) >= 2u && (*(v2 + 77) & 0x20) == 0)
  {
    *(v2 + 77) |= 0x20u;
    RB::RenderFrame::texture_id(this, v2);
    operator new();
  }

  return this;
}

uint64_t RB::RenderFrame::will_render(void)::Encoder::dispatch(uint64_t a1)
{
  result = RB::RenderFrame::will_render(void)::Encoder::operator()(a1);
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    *(a1 + 8) = 0;

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

uint64_t RB::RenderFrame::will_render(void)::Encoder::operator()(uint64_t a1)
{
  blit_encoder = RB::RenderFrame::make_blit_encoder(*a1);
  for (i = *(a1 + 8); i; i = *i)
  {
    [blit_encoder generateMipmapsForTexture:*(i[1] + 16)];
  }

  return [blit_encoder endEncoding];
}

uint64_t RB::RenderFrame::present(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  if (a3 == 0.0)
  {
    return [v3 presentDrawable:a2];
  }

  else
  {
    return [v3 presentDrawable:a2 atTime:?];
  }
}

void RB::RenderFrame::generate_mipmaps(RB::RenderFrame *a1, void *a2)
{
  if ([a2 mipmapLevelCount] >= 2)
  {
    if ((*(a1 + 92) & 2) != 0)
    {
      v5 = a2;
      v6 = *(*a1 + 40);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3321888768;
      v7[2] = ___ZN2RB11RenderFrame16generate_mipmapsEPU21objcproto10MTLTexture11objc_object_block_invoke;
      v7[3] = &__block_descriptor_48_e8_40c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE_e5_v8__0l;
      v7[4] = a1;
      v8 = v5;
      dispatch_async(v6, v7);
    }

    else
    {
      blit_encoder = RB::RenderFrame::make_blit_encoder(a1);
      [blit_encoder generateMipmapsForTexture:a2];

      [blit_encoder endEncoding];
    }
  }
}

uint64_t ___ZN2RB11RenderFrame16generate_mipmapsEPU21objcproto10MTLTexture11objc_object_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  blit_encoder = RB::RenderFrame::make_blit_encoder(*(a1 + 32));
  [blit_encoder generateMipmapsForTexture:v1];

  return [blit_encoder endEncoding];
}

id __copy_helper_block_e8_40c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

id *RB::RenderFrame::signal_event(id *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    RB::RenderFrame::end_encoding(result);
    v6 = v5[2];

    return [v6 encodeSignalEvent:a2 value:a3];
  }

  return result;
}

void RB::RenderFrame::alloc_texture(void **a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, unsigned __int8 a4@<W3>, int a5@<W4>, int a6@<W5>, int32x2_t **a7@<X8>, __n128 a8@<Q0>)
{
  v52 = *MEMORY[0x1E69E9840];
  v15 = RB::Texture::usage_supports_heap(*a1, a5);
  v16 = a8;
  if (v15)
  {
    v46 = a7;
    RB::Texture::make_descriptor(*a1, a2, a3, a5, 0, &v48, a8);
    v18 = v48;
    if (!v48)
    {
LABEL_50:

      v16 = a8;
      a7 = v46;
      goto LABEL_51;
    }

    v19 = *(a1 + 62);
    if (!v19)
    {
      goto LABEL_39;
    }

    v20 = RB::pixel_format_traits(a2, v17);
    if (*(v20 + 5))
    {
      v21 = vmul_lane_s32(a8.n128_u64[0], a8.n128_u64[0], 1).u32[0] * *(v20 + 5);
      if (a3 >= 2)
      {
        v22 = v21 + v21 / 3uLL;
      }

      else
      {
        v22 = v21;
      }

      v43 = 0;
      v44 = a4;
      v45 = a6;
      v50 = 0;
      v51 = 0x2000000000;
    }

    else
    {
      v23 = [(*a1)[3] heapTextureSizeAndAlignWithDescriptor:v18];
      v24 = v23;
      v19 = *(a1 + 62);
      v50 = 0;
      v51 = 0x2000000000;
      if (!v19)
      {
LABEL_35:
        if (v50)
        {
          free(v50);
        }

        if (v24)
        {
          goto LABEL_40;
        }

        v18 = v48;
LABEL_39:
        v24 = [(*a1)[3] heapTextureSizeAndAlignWithDescriptor:v18];
LABEL_40:
        RB::Device::alloc_shared_heap(*a1, v24, __dst);
        if (__dst[0])
        {
          v37 = [*(__dst[0] + 16) newTextureWithDescriptor:v48];
          if (v37)
          {
            v38 = *(a1 + 62);
            v39 = v38 + 1;
            if (*(a1 + 63) < (v38 + 1))
            {
              RB::vector<RB::objc_ptr<void({block_pointer})(NSError *)>,8ul,unsigned int>::reserve_slow(a1 + 22, v39);
              v38 = *(a1 + 62);
              v39 = v38 + 1;
            }

            v40 = a1[30];
            if (!v40)
            {
              v40 = a1 + 22;
            }

            v40[v38] = __dst[0];
            __dst[0] = 0;
            *(a1 + 62) = v39;
            [v37 setLabel:@"rb:heap-texture"];
            operator new();
          }

          v41 = __dst[0];
          if (__dst[0])
          {
            v42 = *(__dst[0] + 8) - 1;
            *(__dst[0] + 8) = v42;
            if (!v42)
            {
              (*(*v41 + 8))(v41);
            }
          }
        }

        goto LABEL_50;
      }

      v43 = v23;
      v44 = a4;
      v45 = a6;
      v22 = v23;
    }

    for (i = 0; i != v19; ++i)
    {
      v26 = a1[30];
      if (!v26)
      {
        v26 = a1 + 22;
      }

      v27 = v26[i];
      v28 = v27[6];
      v29 = v28 - [v27[2] usedSize];
      if (v29 >= v22)
      {
        v30 = v51;
        if (HIDWORD(v51) < (v51 + 1))
        {
          RB::vector<RB::RenderTask *,32ul,unsigned int>::reserve_slow(__dst, v51 + 1);
          v30 = v51;
        }

        v31 = v50;
        if (!v50)
        {
          v31 = __dst;
        }

        v31[v30] = i + (v29 << 32);
        LODWORD(v51) = v51 + 1;
      }
    }

    if (v51)
    {
      v32 = __dst;
      if (v50)
      {
        v33 = v50;
      }

      else
      {
        v33 = __dst;
      }

      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELb0EEEvT1_SE_T0_NS_15iterator_traitsISE_E15difference_typeEb(v33, &v33[2 * v51], 126 - 2 * __clz(v51), 1);
      if (v50)
      {
        v32 = v50;
      }

      if (v51)
      {
        v34 = 8 * v51;
        do
        {
          if (a1[30])
          {
            v35 = a1[30];
          }

          else
          {
            v35 = a1 + 22;
          }

          v36 = [v35[*v32][2] newTextureWithDescriptor:v48];
          if (v36)
          {
            [v36 setLabel:@"rb:heap-texture"];
            operator new();
          }

          ++v32;
          v34 -= 8;
        }

        while (v34);
      }
    }

    a6 = v45;
    a4 = v44;
    v24 = v43;
    goto LABEL_35;
  }

LABEL_51:
  RB::Device::alloc_shared_texture(*a1, a2, a3, a4, a5, a6, a7, v16);
}

void sub_195DF6F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (a49)
  {
    free(a49);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::RenderFrame::make_blit_encoder(RB::RenderFrame *this)
{
  v2 = *(this + 47);
  if (v2)
  {
    [v2 endEncoding];

    *(this + 47) = 0;
  }

  v3 = *(this + 2);

  return [v3 blitCommandEncoder];
}

__CFString *RB::anonymous namespace::pass_kind_label(int a1)
{
  if ((a1 - 1) > 8)
  {
    return @"root-layer";
  }

  else
  {
    return *(&off_1E744D5D0 + (a1 - 1));
  }
}

uint64_t RB::RenderFrame::RenderFrame(RB::Device *,RB::Drawable *,RB::RenderFrame::Kind,NSString *,unsigned int)::$_2::__invoke<RB::RenderFrame::RegionEntry const*>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

int *_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELb0EEEvT1_SE_T0_NS_15iterator_traitsISE_E15difference_typeEb(int *result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = a2 - 3;
    v10 = a2 - 5;
    v11 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v11;
          v12 = (a2 - v11) >> 3;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v103 = v11 + 3;
                v104 = v11[3];
                v105 = v11 + 1;
                v106 = v11[1];
                v107 = *(a2 - 1);
                if (v104 >= v106)
                {
                  if (v107 >= v104)
                  {
                    return result;
                  }

                  v153 = v11[2];
                  v11[2] = *(a2 - 2);
                  *(a2 - 2) = v153;
                  v154 = v11[3];
                  v11[3] = *(a2 - 1);
                  *(a2 - 1) = v154;
                  if (v11[3] >= v11[1])
                  {
                    return result;
                  }

                  v155 = *v11;
                  *v11 = v11[2];
                  v11[2] = v155;
                }

                else
                {
                  v108 = *v11;
                  if (v107 >= v104)
                  {
                    *v11 = v11[2];
                    v11[1] = v104;
                    v11[2] = v108;
                    v11[3] = v106;
                    if (*(a2 - 1) >= v106)
                    {
                      return result;
                    }

                    v11[2] = *(a2 - 2);
                    *(a2 - 2) = v108;
                    v105 = v11 + 3;
                  }

                  else
                  {
                    *v11 = *(a2 - 2);
                    *(a2 - 2) = v108;
                  }

                  v103 = a2 - 1;
                }

                v165 = *v105;
                *v105 = *v103;
                *v103 = v165;
                return result;
              case 4:

                return _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELi0EEEvT1_SE_SE_SE_T0_(v11, v11 + 2, v11 + 4, a2 - 2);
              case 5:
                result = _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELi0EEEvT1_SE_SE_SE_T0_(v11, v11 + 2, v11 + 4, v11 + 6);
                if (*(a2 - 1) < v11[7])
                {
                  v91 = v11[6];
                  v11[6] = *(a2 - 2);
                  *(a2 - 2) = v91;
                  v92 = v11[7];
                  v11[7] = *(a2 - 1);
                  *(a2 - 1) = v92;
                  v93 = v11[7];
                  v94 = v11[5];
                  if (v93 < v94)
                  {
                    v95 = v11[6];
                    v96 = v11[3];
                    v97 = v11[4];
                    v11[4] = v95;
                    v11[5] = v93;
                    v11[6] = v97;
                    v11[7] = v94;
                    if (v93 < v96)
                    {
                      v98 = v11[1];
                      v99 = v11[2];
                      v11[2] = v95;
                      v11[3] = v93;
                      v11[4] = v99;
                      v11[5] = v96;
                      if (v93 < v98)
                      {
                        v100 = *v11;
                        *v11 = v95;
                        v11[1] = v93;
                        v11[2] = v100;
                        v11[3] = v98;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              if (*(a2 - 1) < v11[1])
              {
                v101 = *v11;
                *v11 = *(a2 - 2);
                *(a2 - 2) = v101;
                v102 = v11[1];
                v11[1] = *(a2 - 1);
                *(a2 - 1) = v102;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v109 = v11 + 2;
            v111 = v11 == a2 || v109 == a2;
            if (a4)
            {
              if (!v111)
              {
                v112 = 0;
                v113 = v11;
                do
                {
                  v114 = v113[3];
                  v115 = v113[1];
                  v113 = v109;
                  if (v114 < v115)
                  {
                    v116 = *v109;
                    v117 = v113[1];
                    v118 = v112;
                    while (1)
                    {
                      v119 = v11 + v118;
                      v120 = *(v11 + v118 + 4);
                      *(v119 + 2) = *(v11 + v118);
                      *(v119 + 3) = v120;
                      if (!v118)
                      {
                        break;
                      }

                      v118 -= 8;
                      if (*(v119 - 1) <= v117)
                      {
                        v121 = (v11 + v118 + 8);
                        goto LABEL_138;
                      }
                    }

                    v121 = v11;
LABEL_138:
                    *v121 = v116;
                    v121[1] = v117;
                  }

                  v109 = v113 + 2;
                  v112 += 8;
                }

                while (v113 + 2 != a2);
              }
            }

            else if (!v111)
            {
              v156 = v11 + 3;
              do
              {
                v157 = v7[3];
                v158 = v7[1];
                v7 = v109;
                if (v157 < v158)
                {
                  v159 = *v109;
                  v160 = HIDWORD(*v7);
                  v161 = v156;
                  do
                  {
                    v162 = v161;
                    v163 = *(v161 - 2);
                    v161 -= 2;
                    v164 = *(v162 - 4);
                    *(v162 - 1) = *(v162 - 3);
                    *v162 = v163;
                  }

                  while (v164 > v160);
                  *(v161 - 1) = v159;
                  *v161 = v160;
                }

                v109 = v7 + 2;
                v156 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v122 = (v12 - 2) >> 1;
              v123 = v122;
              do
              {
                v124 = v123;
                if (v122 >= v123)
                {
                  v125 = (2 * v123) | 1;
                  v126 = &v11[2 * v125];
                  if (2 * v124 + 2 < v12)
                  {
                    v127 = v126[1];
                    v128 = v126[3];
                    v126 += 2 * (v127 < v128);
                    if (v127 < v128)
                    {
                      v125 = 2 * v124 + 2;
                    }
                  }

                  v129 = &v11[2 * v124];
                  if (v126[1] >= v129[1])
                  {
                    v130 = *v129;
                    v131 = v129[1];
                    do
                    {
                      v132 = v129;
                      v129 = v126;
                      *v132 = *v126;
                      v132[1] = v126[1];
                      if (v122 < v125)
                      {
                        break;
                      }

                      v133 = (2 * v125) | 1;
                      v126 = &v11[2 * v133];
                      v134 = 2 * v125 + 2;
                      if (v134 < v12)
                      {
                        v135 = v126[1];
                        result = v126[3];
                        v126 += 2 * (v135 < result);
                        if (v135 < result)
                        {
                          v133 = v134;
                        }
                      }

                      v125 = v133;
                    }

                    while (v126[1] >= v131);
                    *v129 = v130;
                    v129[1] = v131;
                  }
                }

                v123 = v124 - 1;
              }

              while (v124);
              do
              {
                v136 = 0;
                v137 = *v11;
                v138 = v11;
                do
                {
                  v139 = &v138[2 * v136];
                  v140 = v139 + 2;
                  v141 = (2 * v136) | 1;
                  v136 = 2 * v136 + 2;
                  if (v136 >= v12)
                  {
                    v136 = v141;
                  }

                  else
                  {
                    v142 = v139[3];
                    v143 = v139[5];
                    v144 = v139 + 4;
                    if (v142 >= v143)
                    {
                      v136 = v141;
                    }

                    else
                    {
                      v140 = v144;
                    }
                  }

                  *v138 = *v140;
                  v138[1] = v140[1];
                  v138 = v140;
                }

                while (v136 <= ((v12 - 2) >> 1));
                if (v140 == a2 - 2)
                {
                  *v140 = v137;
                }

                else
                {
                  *v140 = *(a2 - 2);
                  v140[1] = *(a2 - 1);
                  *(a2 - 1) = v137;
                  v145 = (v140 - v11 + 8) >> 3;
                  v146 = v145 < 2;
                  v147 = v145 - 2;
                  if (!v146)
                  {
                    v148 = v147 >> 1;
                    v149 = &v11[2 * v148];
                    if (v149[1] < v140[1])
                    {
                      v150 = *v140;
                      v151 = v140[1];
                      do
                      {
                        v152 = v140;
                        v140 = v149;
                        *v152 = *v149;
                        v152[1] = v149[1];
                        if (!v148)
                        {
                          break;
                        }

                        v148 = (v148 - 1) >> 1;
                        v149 = &v11[2 * v148];
                      }

                      while (v149[1] < v151);
                      *v140 = v150;
                      v140[1] = v151;
                    }
                  }
                }

                a2 -= 2;
                v146 = v12-- <= 2;
              }

              while (!v146);
            }

            return result;
          }

          v13 = &v11[2 * (v12 >> 1)];
          v14 = *v8;
          if (v12 >= 0x81)
          {
            v15 = (v13 + 1);
            v16 = v13[1];
            v17 = v11 + 1;
            v18 = v11[1];
            if (v16 >= v18)
            {
              if (v14 >= v16 || (v25 = *v13, *v13 = *(a2 - 2), *(a2 - 2) = v25, v26 = v13[1], v13[1] = *(a2 - 1), *(a2 - 1) = v26, v13[1] >= *v17))
              {
LABEL_29:
                v33 = (v13 - 1);
                v34 = *(v13 - 1);
                v35 = v13 - 2;
                v36 = v11 + 3;
                v37 = v11[3];
                v38 = *v9;
                if (v34 >= v37)
                {
                  if (v38 >= v34 || (v40 = *v35, *v35 = *(a2 - 4), *(a2 - 4) = v40, v41 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v41, *(v13 - 1) >= *v36))
                  {
LABEL_43:
                    v46 = v13[3];
                    v47 = v13 + 2;
                    v48 = (v11 + 5);
                    v49 = v11[5];
                    result = *v10;
                    if (v46 >= v49)
                    {
                      if (result >= v46 || (v51 = *v47, *v47 = *(a2 - 6), *(a2 - 6) = v51, v52 = v13[3], v13[3] = *(a2 - 5), *(a2 - 5) = v52, v46 = v13[3], v46 >= *v48))
                      {
LABEL_53:
                        v56 = *v15;
                        v57 = *v33;
                        if (*v15 >= *v33)
                        {
                          v58 = *v13;
                          if (v46 >= v56)
                          {
LABEL_63:
                            v61 = *v11;
                            *v11 = v58;
                            v11[1] = v56;
                            *v13 = v61;
                            goto LABEL_64;
                          }

                          v59 = *v47;
                          *v13 = *v47;
                          v13[1] = v46;
                          *v47 = v58;
                          v13[3] = v56;
                          if (v46 >= v57)
                          {
                            v56 = v46;
                            v58 = v59;
                            goto LABEL_63;
                          }

                          v60 = *v35;
                          *v35 = v59;
                          *v13 = v60;
                        }

                        else
                        {
                          v58 = *v35;
                          if (v46 >= v56)
                          {
                            *v35 = *v13;
                            *(v13 - 1) = v56;
                            *v13 = v58;
                            v13[1] = v57;
                            if (v46 >= v57)
                            {
                              v56 = v57;
                              goto LABEL_63;
                            }

                            *v13 = *v47;
                            *v47 = v58;
                            v33 = (v13 + 1);
                          }

                          else
                          {
                            *v35 = *v47;
                            *v47 = v58;
                          }

                          v15 = (v13 + 3);
                        }

                        *v33 = v46;
                        *v15 = v57;
                        v58 = *v13;
                        v56 = v13[1];
                        goto LABEL_63;
                      }

                      v53 = v11[4];
                      v11[4] = *v47;
                      *v47 = v53;
                      v54 = v13 + 3;
                    }

                    else
                    {
                      v50 = v11[4];
                      if (result >= v46)
                      {
                        v11[4] = *v47;
                        v11[5] = v46;
                        *v47 = v50;
                        v13[3] = v49;
                        v46 = v49;
                        if (*v10 >= v49)
                        {
                          goto LABEL_53;
                        }

                        *v47 = *(a2 - 6);
                        *(a2 - 6) = v50;
                        v48 = (v13 + 3);
                      }

                      else
                      {
                        v11[4] = *(a2 - 6);
                        *(a2 - 6) = v50;
                      }

                      v54 = a2 - 5;
                    }

                    v55 = *v48;
                    *v48 = *v54;
                    *v54 = v55;
                    v46 = v13[3];
                    goto LABEL_53;
                  }

                  v42 = v11[2];
                  v11[2] = *v35;
                  *v35 = v42;
                  v43 = v13 - 1;
                }

                else
                {
                  v39 = v11[2];
                  if (v38 >= v34)
                  {
                    v11[2] = *v35;
                    v11[3] = v34;
                    *v35 = v39;
                    *(v13 - 1) = v37;
                    if (*v9 >= v37)
                    {
                      goto LABEL_43;
                    }

                    *v35 = *(a2 - 4);
                    *(a2 - 4) = v39;
                    v36 = v13 - 1;
                  }

                  else
                  {
                    v11[2] = *(a2 - 4);
                    *(a2 - 4) = v39;
                  }

                  v43 = a2 - 3;
                }

                v45 = *v36;
                *v36 = *v43;
                *v43 = v45;
                goto LABEL_43;
              }

              v27 = *v11;
              *v11 = *v13;
              *v13 = v27;
              v28 = v13 + 1;
            }

            else
            {
              v19 = *v11;
              if (v14 >= v16)
              {
                *v11 = *v13;
                v11[1] = v16;
                *v13 = v19;
                v13[1] = v18;
                if (*v8 >= v18)
                {
                  goto LABEL_29;
                }

                *v13 = *(a2 - 2);
                *(a2 - 2) = v19;
                v17 = v13 + 1;
              }

              else
              {
                *v11 = *(a2 - 2);
                *(a2 - 2) = v19;
              }

              v28 = a2 - 1;
            }

            v32 = *v17;
            *v17 = *v28;
            *v28 = v32;
            goto LABEL_29;
          }

          v20 = v11 + 1;
          v21 = v11[1];
          v22 = v13 + 1;
          v23 = v13[1];
          if (v21 >= v23)
          {
            if (v14 < v21)
            {
              v29 = *v11;
              *v11 = *(a2 - 2);
              *(a2 - 2) = v29;
              v30 = v11[1];
              v11[1] = *(a2 - 1);
              *(a2 - 1) = v30;
              if (v11[1] < *v22)
              {
                v31 = *v13;
                *v13 = *v11;
                *v11 = v31;
LABEL_38:
                v44 = *v22;
                *v22 = *v20;
                *v20 = v44;
              }
            }
          }

          else
          {
            v24 = *v13;
            if (v14 < v21)
            {
              *v13 = *(a2 - 2);
              *(a2 - 2) = v24;
LABEL_37:
              v20 = a2 - 1;
              goto LABEL_38;
            }

            *v13 = *v11;
            v13[1] = v21;
            *v11 = v24;
            v11[1] = v23;
            if (*v8 < v23)
            {
              *v11 = *(a2 - 2);
              *(a2 - 2) = v24;
              v22 = v11 + 1;
              goto LABEL_37;
            }
          }

LABEL_64:
          --a3;
          if ((a4 & 1) != 0 || *(v11 - 1) < v11[1])
          {
            break;
          }

          v78 = *v11;
          v79 = HIDWORD(*v11);
          if (*v8 <= v79)
          {
            v82 = v11 + 2;
            do
            {
              v11 = v82;
              if (v82 >= a2)
              {
                break;
              }

              v83 = v82[1];
              v82 += 2;
            }

            while (v83 <= v79);
          }

          else
          {
            v80 = v11;
            do
            {
              v11 = v80 + 2;
              v81 = v80[3];
              v80 += 2;
            }

            while (v81 <= v79);
          }

          v84 = a2;
          if (v11 < a2)
          {
            v85 = a2;
            do
            {
              v84 = v85 - 2;
              v86 = *(v85 - 1);
              v85 -= 2;
            }

            while (v86 > v79);
          }

          while (v11 < v84)
          {
            v87 = *v11;
            *v11 = *v84;
            *v84 = v87;
            v88 = v11[1];
            v11[1] = v84[1];
            v84[1] = v88;
            do
            {
              v89 = v11[3];
              v11 += 2;
            }

            while (v89 <= v79);
            do
            {
              v90 = *(v84 - 1);
              v84 -= 2;
            }

            while (v90 > v79);
          }

          if (v11 - 2 != v7)
          {
            *v7 = *(v11 - 2);
            v7[1] = *(v11 - 1);
          }

          a4 = 0;
          *(v11 - 2) = v78;
          *(v11 - 1) = v79;
        }

        v62 = 0;
        v63 = *v11;
        v64 = HIDWORD(*v11);
        do
        {
          v65 = v11[v62 + 3];
          v62 += 2;
        }

        while (v65 < v64);
        v66 = &v11[v62];
        v67 = a2;
        if (v62 == 2)
        {
          v70 = a2;
          while (v66 < v70)
          {
            v68 = v70 - 2;
            v71 = *(v70 - 1);
            v70 -= 2;
            if (v71 < v64)
            {
              goto LABEL_76;
            }
          }

          v68 = v70;
        }

        else
        {
          do
          {
            v68 = v67 - 2;
            v69 = *(v67 - 1);
            v67 -= 2;
          }

          while (v69 >= v64);
        }

LABEL_76:
        v11 = v66;
        if (v66 < v68)
        {
          v72 = v68;
          do
          {
            v73 = *v11;
            *v11 = *v72;
            *v72 = v73;
            v74 = v11[1];
            v11[1] = v72[1];
            v72[1] = v74;
            do
            {
              v75 = v11[3];
              v11 += 2;
            }

            while (v75 < v64);
            do
            {
              v76 = *(v72 - 1);
              v72 -= 2;
            }

            while (v76 >= v64);
          }

          while (v11 < v72);
        }

        if (v11 - 2 != v7)
        {
          *v7 = *(v11 - 2);
          v7[1] = *(v11 - 1);
        }

        *(v11 - 2) = v63;
        *(v11 - 1) = v64;
        if (v66 >= v68)
        {
          break;
        }

LABEL_87:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELb0EEEvT1_SE_T0_NS_15iterator_traitsISE_E15difference_typeEb(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v77 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEEEEbT1_SE_T0_(v7, v11 - 2);
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEEEEbT1_SE_T0_(v11, a2);
      if (result)
      {
        break;
      }

      if (!v77)
      {
        goto LABEL_87;
      }
    }

    a2 = v11 - 2;
    if (!v77)
    {
      continue;
    }

    return result;
  }
}

int *_ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELi0EEEvT1_SE_SE_SE_T0_(int *result, int *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a2[1];
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = a3[1];
  if (v4 >= result[1])
  {
    if (v7 < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] < *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (*v6 < v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] < v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] < a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] < *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEEEEbT1_SE_T0_(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = a1 + 3;
      v18 = a1[3];
      v19 = a1 + 1;
      v20 = a1[1];
      v21 = *(a2 - 1);
      if (v18 >= v20)
      {
        if (v21 >= v18)
        {
          return 1;
        }

        v29 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (a1[3] >= a1[1])
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 >= v18)
        {
          *a1 = a1[2];
          a1[1] = v18;
          a1[2] = v22;
          a1[3] = v20;
          if (*(a2 - 1) >= v20)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = a1 + 3;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = a2 - 1;
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELi0EEEvT1_SE_SE_SE_T0_(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) < a1[7])
        {
          v7 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = a1[7];
          v10 = a1[5];
          if (v9 < v10)
          {
            v11 = a1[6];
            v12 = a1[3];
            v13 = a1[4];
            a1[4] = v11;
            a1[5] = v9;
            a1[6] = v13;
            a1[7] = v10;
            if (v9 < v12)
            {
              v14 = a1[1];
              v15 = a1[2];
              a1[2] = v11;
              a1[3] = v9;
              a1[4] = v15;
              a1[5] = v12;
              if (v9 < v14)
              {
                v16 = *a1;
                *a1 = v11;
                a1[1] = v9;
                a1[2] = v16;
                a1[3] = v14;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2RB11RenderFrame13alloc_textureE14MTLPixelFormatDv2_ijNS2_10ColorSpaceENS2_7Texture5UsageEbE3__0PNS_4pairIjjEELi0EEEvT1_SE_SE_SE_T0_(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) < a1[1])
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = a1[3];
  v25 = (a1 + 1);
  v24 = a1[1];
  v27 = (a1 + 5);
  v26 = a1[5];
  if (v23 < v24)
  {
    v28 = *a1;
    if (v26 >= v23)
    {
      *a1 = a1[2];
      a1[1] = v23;
      a1[2] = v28;
      a1[3] = v24;
      if (v26 >= v24)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v28;
      v25 = (a1 + 3);
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v28;
    }

    goto LABEL_33;
  }

  if (v26 < v23)
  {
    v32 = a1[2];
    v33 = a1[4];
    a1[2] = v33;
    a1[3] = v26;
    a1[4] = v32;
    a1[5] = v23;
    if (v26 < v24)
    {
      v34 = *a1;
      *a1 = v33;
      a1[2] = v34;
      v27 = (a1 + 3);
LABEL_33:
      *v25 = v26;
      *v27 = v24;
    }
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = a1 + 4;
  while (1)
  {
    if (v36[1] < v39[1])
    {
      v40 = *v36;
      v41 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = *(a1 + v42 + 16);
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v42 -= 8;
        if (v43[3] <= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v40;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v39 = v36;
    v37 += 8;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void RB::RenderFrame::flush_pass(RB::RenderPass &,BOOL)::$_0::__invoke(uint64_t a1)
{
  v2 = *(a1 + 376);
  if (v2)
  {
    [v2 endEncoding];

    *(a1 + 376) = 0;
  }
}

void *RB::vector<std::unique_ptr<RB::RenderQueue,RB::RenderFrame::QueueDeleter>,4ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 11) + (*(__dst + 11) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 11) + (*(__dst + 11) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,8ul>(*(__dst + 4), __dst, 4u, __dst + 11, v3);
  *(__dst + 4) = result;
  return result;
}

void RB::RenderFrame::end_encoding(void)::$_0::__invoke(uint64_t a1)
{
  v2 = *(a1 + 376);
  if (v2)
  {
    [v2 endEncoding];

    *(a1 + 376) = 0;
  }
}

std::string *RB::BinAllocator::print(uint64_t a1, std::string *this)
{
  v32 = *MEMORY[0x1E69E9840];
  std::string::append(this, "  <state>\n", 0xAuLL);
  v4 = HIDWORD(*a1);
  v5 = *a1;
  snprintf_l(__s, 0x100uLL, 0, "    <draw rect=%d %d %d %d color=%s/>\n", 0, 0, v5, v4, "red");
  v6 = strlen(__s);
  std::string::append(this, __s, v6);
  snprintf_l(__s, 0x100uLL, 0, "    <draw stroked-rect=%g %g %d %d line-width=1 color=black/>\n", 0.5, 0.5, v5 - 1, v4 - 1);
  v7 = strlen(__s);
  std::string::append(this, __s, v7);
  v30 = a1;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 16);
    v29 = &v9[16 * v8];
    v10 = "    <draw stroked-rect=%g %g %d %d line-width=1 color=black/>\n";
    do
    {
      v11 = *v9;
      v12 = *v30;
      v13 = v9[2];
      snprintf_l(__s, 0x100uLL, 0, "    <draw rect=%d %d %d %d color=%s/>\n", 0, v11, v12, v13, "#0080ff");
      v14 = strlen(__s);
      std::string::append(this, __s, v14);
      snprintf_l(__s, 0x100uLL, 0, v10, 0x3FE0000000000000, (v11 + 0.5), (v12 - 1), (v13 - 1));
      v15 = strlen(__s);
      std::string::append(this, __s, v15);
      v16 = *(v9 + 6);
      if (v16)
      {
        v17 = *(v9 + 2);
        v18 = &v17[2 * v16];
        do
        {
          v19 = *v17;
          v20 = v10;
          v21 = *v9;
          v22 = v17[1];
          v23 = v9[2];
          snprintf_l(__s, 0x100uLL, 0, "    <draw rect=%d %d %d %d color=%s/>\n", v19, v21, v22, v23, "yellow");
          v24 = strlen(__s);
          std::string::append(this, __s, v24);
          v25 = v21;
          v10 = v20;
          snprintf_l(__s, 0x100uLL, 0, v20, (v19 + 0.5), (v25 + 0.5), (v22 - 1), (v23 - 1));
          v26 = strlen(__s);
          std::string::append(this, __s, v26);
          v17 += 2;
        }

        while (v17 != v18);
      }

      v9 += 16;
    }

    while (v9 != v29);
  }

  std::string::append(this, "  </state>\n", 0xBuLL);
  snprintf_l(__s, 0x100uLL, 0, "  <transform translation=0 %d/>\n", *(v30 + 4) + 20);
  v27 = strlen(__s);
  return std::string::append(this, __s, v27);
}

uint64_t RB::XML::DisplayList::draw_layer(RB::XML::Document *this, int a2, float a3)
{
  if (a3 != 1.0)
  {
    RB::XML::Element::set<RB::XML::Value::Float>();
  }

  if (a2)
  {
    RB::XML::Element::set<RB::XML::Value::BlendMode>();
  }

  return RB::XML::Document::pop(this);
}

double RB::XML::DisplayList::concat_ctm(RB::XML::DisplayList *this, RB::XML::Document *a2, float64x2_t *a3, const RB::AffineTransform *a4)
{
  v4 = vandq_s8(vandq_s8(vceqq_f64(a3[1], xmmword_195E42770), vceqq_f64(*a3, xmmword_195E42760)), vceqzq_f64(a3[2]));
  *&result = vandq_s8(vdupq_laneq_s64(v4, 1), v4).u64[0];
  if ((*&result & 0x8000000000000000) == 0)
  {
    RB::XML::Document::push(this, "transform");
  }

  return result;
}

RB::XML::Document *RB::XML::DisplayList::scale_ctm(RB::XML::Document *this, RB::XML::Document *a2, _RBDrawingState *a3, double a4, double a5)
{
  if (a4 != 1.0 || a5 != 1.0)
  {
    RB::XML::Document::push(this, "transform");
  }

  return this;
}

RB::XML::Document *RB::XML::DisplayList::translate_ctm(RB::XML::Document *this, RB::XML::Document *a2, _RBDrawingState *a3, double a4, double a5)
{
  if (a4 != 0.0 || a5 != 0.0)
  {
    RB::XML::Document::push(this, "transform");
  }

  return this;
}

RB::XML::Document *RB::XML::DisplayList::rotate_ctm(RB::XML::Document *this, RB::XML::Document *a2, _RBDrawingState *a3, double a4)
{
  if (a4 != 0.0)
  {
    RB::XML::Document::push(this, "transform");
  }

  return this;
}

RB::XML::Document *RB::XML::DisplayList::set_identity(RB::XML::Document *this, RB::XML::Document *a2, _RBDrawingState *a3, const RB::Identity *a4, const RB::Identity *a5)
{
  if (*a3 != *a4 || (*(a3 + 4) == *(a4 + 4) ? (v5 = *(a3 + 12) == *(a4 + 12)) : (v5 = 0), !v5))
  {
    RB::XML::Document::push(this, "identity");
  }

  return this;
}

RB::XML::Document *RB::XML::DisplayList::anonymous namespace::add_transition(RB::XML::Document *this, RB::XML::Document *a2, const RB::Transition *a3)
{
  if (*(a2 + 3))
  {
    RB::XML::Element::set<RB::XML::Value::TransitionMethod>();
  }

  if (*(a2 + 5) != -1)
  {
    RB::XML::Element::set<RB::XML::Value::Int>();
  }

  if (*(a2 + 16) == 1)
  {
    RB::XML::Element::set<RB::XML::Value::Bool>();
  }

  if (*(a2 + 17) != 32)
  {
    RB::XML::Element::set<RB::XML::Value::Float>();
  }

  if (*(a2 + 22))
  {
    RB::XML::Document::push(this, "animation");
  }

  if (*(a2 + 12))
  {
    RB::XML::Document::push(this, "effect");
  }

  return this;
}

void sub_195DF9C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    v13 = a12[2] - 1;
    a12[2] = v13;
    if (!v13)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_195DF9E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    v13 = a12[2] - 1;
    a12[2] = v13;
    if (!v13)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_195DFA170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  if (a10)
  {
    v12 = a10[2] - 1;
    a10[2] = v12;
    if (!v12)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_195DFA96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void RB::XML::DisplayList::add_variable_blur_layer(RB::XML::DisplayList *this, RB::XML::Document *a2, _RBDrawingState *a3, double a4, float a5, double a6, CGRect a7)
{
  v7 = *(this + 2);
  v8 = *(this + 3);
  *(*(v7 + 8 * v8 - 8) + 16) = "variable-blur-layer";
  if (a4 != 0.0)
  {
    RB::XML::Element::set<RB::XML::Value::Float>();
  }

  if (a5 != 1.0)
  {
    RB::XML::Element::set<RB::XML::Value::Float>();
  }
}

void RB::XML::DisplayList::anonymous namespace::set_component_range(double a1, float a2)
{
  if (a2 != INFINITY)
  {
    RB::XML::Element::set<RB::XML::Value::Vec2>();
  }

  RB::XML::Element::set<RB::XML::Value::Float>();
}

void RB::XML::DisplayList::add_gradient_map(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  RB::XML::Document::push(v2, "gradient-map");
}

void RB::XML::DisplayList::anonymous namespace::add_color_filter_flags(RB::XML::DisplayList::_anonymous_namespace_ *this, RB::XML::Document *a2)
{
  if ((a2 & 1) != 0 || (a2 & 2) != 0)
  {
    RB::XML::Element::set<RB::XML::Value::ConstantString>();
  }

  if ((a2 & 4) != 0)
  {
    RB::XML::Element::set<RB::XML::Value::Bool>();
  }
}

void RB::XML::DisplayList::add_shader_filter(RB::XML::DisplayList *this, RB::XML::Document *a2, _RBDrawingState *a3, RBShader *a4, CGSize a5, const CGSize *a6, const CGRect *a7)
{
  if (a4)
  {
    *(*(*(this + 2) + 8 * *(this + 3) - 8) + 16) = "custom-filter-layer";
    if ((a7 & 0xF) != 2 && (a7 & 0xF) != 1 && (a7 & 0xF) != 0)
    {
      a3;
      RB::XML::Element::set<RB::XML::Value::Shader>();
    }

    RB::XML::Element::set<RB::XML::Value::ConstantString>();
  }

  RB::XML::Document::push(this, "custom-filter");
}

void sub_195DFD6D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::TransitionMethod *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::TransitionMethod>,std::allocator<RB::XML::Value::TransitionMethod>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::TransitionMethod *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::TransitionMethod>,std::allocator<RB::XML::Value::TransitionMethod>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFD874(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::TransitionEffectType *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::TransitionEffectType>,std::allocator<RB::XML::Value::TransitionEffectType>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::TransitionEffectType *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::TransitionEffectType>,std::allocator<RB::XML::Value::TransitionEffectType>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFD964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::StateID *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::StateID>,std::allocator<RB::XML::Value::StateID>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::StateID *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::StateID>,std::allocator<RB::XML::Value::StateID>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDA54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::BlendMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::BlendMode>,std::allocator<RB::XML::Value::BlendMode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::BlendMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::BlendMode>,std::allocator<RB::XML::Value::BlendMode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDB44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::ClipMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ClipMode>,std::allocator<RB::XML::Value::ClipMode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::ClipMode *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ClipMode>,std::allocator<RB::XML::Value::ClipMode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDC34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Angle *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Angle>,std::allocator<RB::XML::Value::Angle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Angle *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Angle>,std::allocator<RB::XML::Value::Angle>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDD24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::UUID *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::UUID>,std::allocator<RB::XML::Value::UUID>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::UUID *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::UUID>,std::allocator<RB::XML::Value::UUID>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDE14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Vec3 *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Vec3>,std::allocator<RB::XML::Value::Vec3>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Vec3 *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Vec3>,std::allocator<RB::XML::Value::Vec3>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDF04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::ColorMatrix *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ColorMatrix>,std::allocator<RB::XML::Value::ColorMatrix>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::ColorMatrix *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::ColorMatrix>,std::allocator<RB::XML::Value::ColorMatrix>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_195DFDFF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<RB::XML::Value::Base>::shared_ptr[abi:nn200100]<RB::XML::Value::Font,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RB::XML::Value::Shader *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Shader>,std::allocator<RB::XML::Value::Shader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19A8C09E0);
}

uint64_t std::__shared_ptr_pointer<RB::XML::Value::Shader *,std::shared_ptr<RB::XML::Value::Base>::__shared_ptr_default_delete<RB::XML::Value::Base,RB::XML::Value::Shader>,std::allocator<RB::XML::Value::Shader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 RB::Heap::emplace<RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>,RB::ColorStyle::Matrix>(RB::Heap *this, uint64_t a2)
{
  v4 = *(this + 3);
  v5 = (*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v5 + 56 > v4)
  {
    v5 = RB::Heap::alloc_slow(this, 0x38uLL, 7);
  }

  else
  {
    *(this + 2) = v5 + 56;
  }

  *v5 = &unk_1F0A3D978;
  *(v5 + 8) = 0;
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 16) = result;
  *(v5 + 32) = v7;
  return result;
}

RB::DisplayList::Item *RB::DisplayList::anonymous namespace::apply_alpha_gradient(RB::DisplayList::Builder *a1, RB::DisplayList::Item *a2, uint64_t a3)
{
  result = (*(*a2 + 112))(a2, a1, a3 + 16);
  if (!result)
  {
    if (*(a3 + 88) == 3)
    {
      v7 = 416;
    }

    else
    {
      v7 = 384;
    }

    result = RB::DisplayList::Builder::ensure_layer(a1, a2, v7, 0.0);
    v8 = 72;
    if ((*(result + 23) & 0xC0) == 0x40)
    {
      v8 = 56;
    }

    *(result + v8) = a3 | 2;
  }

  return result;
}

void *RB::DisplayList::ShadowStyle::encode(RB::DisplayList::ShadowStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x22uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  v4 = *(this + 16);
  if (*&v4 != 0.0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0xDuLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v4);
  }

  RB::ProtobufEncoder::float2_field(a2, 2, *(this + 7));
  RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::Fill::Color::encode((this + 72), a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  v5 = rb_blend_mode(*(this + 22));
  if (v5)
  {
    v6 = v5;
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v7 = *(this + 23);
    if ((v7 & 2) == 0)
    {
LABEL_7:
      if ((v7 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_7;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x30uLL);
  RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v7 = *(this + 23);
  if ((v7 & 4) == 0)
  {
LABEL_8:
    if ((v7 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  RB::ProtobufEncoder::encode_varint(a2, 0x38uLL);
  RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  v7 = *(this + 23);
  if ((v7 & 8) == 0)
  {
LABEL_9:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  RB::ProtobufEncoder::encode_varint(a2, 0x40uLL);
  RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  if ((*(this + 23) & 0x10) != 0)
  {
LABEL_10:
    RB::ProtobufEncoder::encode_varint(a2, 0x48uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

LABEL_11:
  v8 = *(this + 17);
  if (*&v8 != 0.5)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x55uLL);
    RB::ProtobufEncoder::encode_fixed32(a2, v8);
  }

  if ((*(this + 92) & 0x20) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x58uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void *RB::DisplayList::Style::encode(void *this, RB::Encoder *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4)
  {
    v5 = vandq_s8(vandq_s8(vceqq_f64(v4[1], xmmword_195E42770), vceqq_f64(*v4, xmmword_195E42760)), vceqzq_f64(v4[2]));
    if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
    {
      RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
      RB::ProtobufEncoder::begin_length_delimited(a2);
      RB::AffineTransform::encode(v4->f64, a2);
      this = RB::ProtobufEncoder::end_length_delimited(a2);
    }
  }

  v6 = v3[3];
  if (v6)
  {
    this = RB::Encoder::shared_field_f(a2, 2, v6);
  }

  if (v3[5])
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::encode_metadata(a2, v3[5], *(v3 + 12), 1);

    return RB::ProtobufEncoder::end_length_delimited(a2);
  }

  return this;
}

unint64_t RB::DisplayList::ShadowStyle::decode(RB::DisplayList::ShadowStyle *this, RB::Decoder *a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      v7 = v6 >> 3;
      if ((v6 >> 3) <= 5)
      {
        if (v7 <= 2)
        {
          if (v7 == 1)
          {
            *(this + 16) = RB::ProtobufDecoder::float_field(a2, v6);
          }

          else
          {
            if (v7 != 2)
            {
LABEL_43:
              RB::ProtobufDecoder::skip_field(a2, v6);
              goto LABEL_41;
            }

            *(this + 7) = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((v6 & 7) == 2)
            {
              RB::ProtobufDecoder::begin_message(a2);
              RB::Fill::Color::decode((this + 72), a2);
              RB::ProtobufDecoder::end_message(a2);
            }

            else
            {
              *(a2 + 56) = 1;
              *a2 = *(a2 + 1);
            }

            goto LABEL_41;
          }

          if (v7 != 4)
          {
            if (v7 != 5)
            {
              goto LABEL_43;
            }

            *(this + 23) &= ~1u;
            v9 = *(this + 23) | RB::ProtobufDecoder::BOOL_field(a2, v6);
            goto LABEL_40;
          }

          v10 = RB::ProtobufDecoder::uint_field(a2, v6);
          *(this + 22) = rb_blend_mode(v10);
        }
      }

      else
      {
        if (v7 <= 8)
        {
          switch(v7)
          {
            case 6:
              *(this + 23) &= ~2u;
              if (RB::ProtobufDecoder::BOOL_field(a2, v6))
              {
                v8 = 2;
              }

              else
              {
                v8 = 0;
              }

              break;
            case 7:
              *(this + 23) &= ~4u;
              if (RB::ProtobufDecoder::BOOL_field(a2, v6))
              {
                v8 = 4;
              }

              else
              {
                v8 = 0;
              }

              break;
            case 8:
              *(this + 23) &= ~8u;
              if (RB::ProtobufDecoder::BOOL_field(a2, v6))
              {
                v8 = 8;
              }

              else
              {
                v8 = 0;
              }

              break;
            default:
              goto LABEL_43;
          }

          goto LABEL_39;
        }

        if (v7 == 9)
        {
          *(this + 23) &= ~0x10u;
          if (RB::ProtobufDecoder::BOOL_field(a2, v6))
          {
            v8 = 16;
          }

          else
          {
            v8 = 0;
          }

LABEL_39:
          v9 = *(this + 23) | v8;
LABEL_40:
          *(this + 23) = v9;
          goto LABEL_41;
        }

        if (v7 != 10)
        {
          if (v7 != 11)
          {
            goto LABEL_43;
          }

          *(this + 23) &= ~0x20u;
          if (RB::ProtobufDecoder::BOOL_field(a2, v6))
          {
            v8 = 32;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_39;
        }

        *(this + 17) = RB::ProtobufDecoder::float_field(a2, v6);
      }

LABEL_41:
      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

double RB::DisplayList::ShadowStyle::bounds(float32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11[0] = RB::DisplayList::Style::next_bounds(a1, a2, a3, a4);
  v11[1] = v5;
  v8[0] = xmmword_195E42760;
  v8[1] = xmmword_195E42770;
  v9 = 0;
  v10 = 0;
  RB::DisplayList::ShadowStyle::bounds(a1, v11, v8, 0);
  RB::Rect::move_identity(v11, v8);
  v6 = a1[3];
  if (v6)
  {
    RB::Rect::intersect(v11, *(*&v6 + 16), *(*&v6 + 24));
  }

  return *v11;
}

uint64_t RB::DisplayList::ShadowStyle::apply_predicate(uint64_t this, const InvertiblePredicate *a2, int a3)
{
  if (a3)
  {
    *(this + 92) |= 2u;
  }

  return this;
}

uint64_t RB::DisplayList::ShadowStyle::can_mix(float32x2_t *this, RB::DisplayList::Interpolator::Contents *a2, float32x2_t *a3)
{
  if (a3)
  {
    if (this[11].i32[0] == a3[11].i32[0] && this[11].i32[1] == a3[11].i32[1])
    {
      result = RB::Fill::Color::can_mix(&this[9], &a3[9]);
      v6 = vmvn_s8(vceq_f32(this[7], a3[7]));
      if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0 || this[8].f32[0] != a3[8].f32[0])
      {
        return result != 0;
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
      return 1;
    }
  }

  return result;
}

uint64_t RB::DisplayList::ShadowStyle::mix(RB::DisplayList::ShadowStyle *this, const RB::DisplayList::Interpolator::State *a2, float32x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  _ZN2RB4Heap7emplaceINS_11DisplayList11ShadowStyleEJRKfS5_RKDv2_fRKNS_4Fill5ColorERKNS_9BlendModeERKjEEEPT_DpOT0_((*(*a4 + 8) + 16), this + 16, this + 17, this + 7, this + 9, this + 22, this + 23);
  v8 = v6;
  if (a3)
  {
    v9 = *(v6 + 56);
    v10 = *(v6 + 64);
    *v7.f32 = vsub_f32(a3[7], v9);
    *(v6 + 56) = vmla_n_f32(v9, *v7.f32, COERCE_FLOAT(*(a2 + 2)));
    v7.i32[0] = *(a2 + 4);
    *(v6 + 64) = vmla_n_f32(v10, vsub_f32(a3[8], v10), v7.f32[0]);
    RB::Fill::Color::mix(v6 + 72, &a3[9], 0, v7);
  }

  else
  {
    _S1 = *(a2 + 4);
    __asm { FCVT            H1, S1 }

    *(v6 + 78) = *(v6 + 78) - (*(v6 + 78) * *&_S1);
  }

  return v8;
}

void RB::DisplayList::ShadowStyle::print(float32x2_t *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "shadow");
  RB::SexpString::printf(a2, 1, "(radius %g)", this[8].f32[0]);
  v6 = this[8].f32[1];
  if (v6 != 0.5)
  {
    RB::SexpString::printf(a2, 1, "(midpoint %g)", v6);
  }

  v7 = this[7];
  v8 = vmvn_s8(vceqz_f32(v7));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 1, "(offset %g %g)", v7.f32[0], v7.f32[1]);
  }

  RB::Fill::Color::print(&this[9], a2);
  v9 = this[11].u32[0];
  if (v9 != 2)
  {
    v10 = RB::blend_name(v9);
    RB::SexpString::printf(a2, 1, "(blend %s)", v10);
  }

  if (this[11].i32[1])
  {
    RB::SexpString::push(a2, "flags");
    v11 = this[11].i32[1];
    if (v11)
    {
      RB::SexpString::print(a2, 0, "above");
      v11 = this[11].i32[1];
      if ((v11 & 2) == 0)
      {
LABEL_10:
        if ((v11 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    RB::SexpString::print(a2, 0, "only");
    v11 = this[11].i32[1];
    if ((v11 & 4) == 0)
    {
LABEL_11:
      if ((v11 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_20:
    RB::SexpString::print(a2, 0, "inverse");
    v11 = this[11].i32[1];
    if ((v11 & 8) == 0)
    {
LABEL_12:
      if ((v11 & 0x10) == 0)
      {
LABEL_14:
        RB::SexpString::pop(a2);
        goto LABEL_15;
      }

LABEL_13:
      RB::SexpString::print(a2, 0, "dither");
      goto LABEL_14;
    }

LABEL_21:
    RB::SexpString::print(a2, 0, "no-layer");
    if ((this[11].i32[1] & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  RB::DisplayList::Style::print(this, a2, a3);

  RB::SexpString::pop(a2);
}

void RB::DisplayList::Style::print(const RB::AffineTransform **this, std::string *a2, uint64_t a3)
{
  RB::SexpString::print_ctm(a2, this[2]);
  for (i = this[3]; i; i = *i)
  {
    (*(*(*(i + 1) & 0xFFFFFFFFFFFFFFFELL) + 128))(*(i + 1) & 0xFFFFFFFFFFFFFFFELL, a2, a3);
  }

  if (*(this + 12))
  {
    RB::SexpString::printf(a2, 0, "(identifier %u)", *(this + 12));
  }

  if (*(this + 52))
  {

    RB::SexpString::print(a2, 0, "disable-mix");
  }
}

__n128 RB::DisplayList::ColorMatrixStyle::copy(RB::DisplayList::ColorMatrixStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v4 + 104 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x68uLL, 7);
  }

  else
  {
    v3[4] = v4 + 104;
  }

  v5 = *(this + 24);
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = &unk_1F0A3F248;
  result = *(this + 56);
  v7 = *(this + 72);
  *(v4 + 88) = *(this + 11);
  *(v4 + 72) = v7;
  *(v4 + 56) = result;
  *(v4 + 96) = v5;
  return result;
}

uint64_t RB::DisplayList::ColorMatrixStyle::draw(RB::DisplayList::ColorMatrixStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  result = RB::ColorMatrix::is_identity(this + 7);
  if ((result & 1) == 0)
  {
    v11 = *(a2 + 1);
    v12 = *(this + 72);
    v14[0] = *(this + 56);
    v14[1] = v12;
    v15 = *(this + 11);
    RB::Heap::emplace<RB::ColorStyle::MatrixFn<RB::ColorStyle::Matrix>,RB::ColorStyle::Matrix>((v11 + 16), v14);
    result = RB::DisplayList::Builder::apply_color_matrix_fn(a2, a4, v13, *(this + 24), *(this + 2), *(this + 3));
    a4 = result;
  }

  if (a4)
  {
    *(a4 + 2) = *(this + 4);
    return RB::DisplayList::Builder::draw(a2, a4, a3, a5);
  }

  return result;
}

uint64_t RB::DisplayList::ColorMatrixStyle::can_mix(float16x4_t *this, RB::DisplayList::Interpolator::Contents *a2, float16x4_t *a3)
{
  if (!a3)
  {
    return 2;
  }

  if (this[12].i32[0] != a3[12].i32[0])
  {
    return 0;
  }

  if (RB::ColorMatrix::operator==(this + 7, a3 + 7))
  {
    return 4;
  }

  return 2;
}

double RB::DisplayList::ColorMatrixStyle::mix(float16x4_t *this, const RB::DisplayList::Interpolator::State *a2, const RB::DisplayList::Style *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (a3)
  {
    v7 = *(a3 + 72);
    v20 = *(a3 + 56);
    v21 = v7;
    v22 = *(a3 + 88);
  }

  else
  {
    RB::ColorMatrix::set_identity(&v20);
  }

  _S0 = *(a2 + 4);
  __asm { FCVT            H0, S0 }

  v13 = vmla_n_f16(this[8], vsub_f16(*(&v20 + 8), this[8]), *&_S0);
  *&v20 = vmla_n_f16(this[7], vsub_f16(*&v20, this[7]), *&_S0);
  *(&v20 + 1) = v13;
  v14 = vmla_n_f16(this[10], vsub_f16(*(&v21 + 8), this[10]), *&_S0);
  *&v21 = vmla_n_f16(this[9], vsub_f16(*&v21, this[9]), *&_S0);
  *(&v21 + 1) = v14;
  v22 = vmla_n_f16(this[11], vsub_f16(v22, this[11]), *&_S0);
  v15 = *(*a4 + 8);
  v16 = (v15[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 + 104 > v15[5])
  {
    v16 = RB::Heap::alloc_slow(v15 + 2, 0x68uLL, 7);
  }

  else
  {
    v15[4] = v16 + 104;
  }

  v17 = this[12].i32[0];
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *v16 = &unk_1F0A3F248;
  result = *&v20;
  v19 = v21;
  *(v16 + 56) = v20;
  *(v16 + 72) = v19;
  *(v16 + 88) = v22;
  *(v16 + 96) = v17;
  return result;
}

void *RB::DisplayList::ColorMatrixStyle::encode(RB::DisplayList::ColorMatrixStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x32uLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ColorMatrix::encode(this + 7, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  v4 = *(this + 24);
  if (v4)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v4 = *(this + 24);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  RB::ProtobufEncoder::encode_varint(a2, 0x18uLL);
  RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  if ((*(this + 24) & 4) != 0)
  {
LABEL_4:
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

LABEL_5:
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

void RB::DisplayList::ColorMatrixStyle::print(float16x4_t *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "color-matrix");
  v4 = this[12].i32[0];
  if (v4)
  {
    v5 = "linear";
  }

  else
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v5 = "non-linear";
  }

  RB::SexpString::print(a2, 0, v5);
LABEL_6:
  if ((this[12].i8[0] & 4) != 0)
  {
    RB::SexpString::print(a2, 0, "premultiplied");
  }

  RB::ColorMatrix::print(this + 7, a2);

  RB::SexpString::pop(a2);
}

double RB::DisplayList::State::add_color_matrix_style(__n128 *this, RB::DisplayList::Builder *a2, const RB::ColorMatrix *a3, int a4)
{
  v8 = *(a2 + 1);
  v9 = (v8[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v9 + 104 > v8[5])
  {
    v9 = RB::Heap::alloc_slow(v8 + 2, 0x68uLL, 7);
  }

  else
  {
    v8[4] = v9 + 104;
  }

  *(v9 + 48) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = &unk_1F0A3F248;
  v10 = *a3;
  v11 = *(a3 + 1);
  *(v9 + 88) = *(a3 + 4);
  *(v9 + 72) = v11;
  *(v9 + 56) = v10;
  *(v9 + 96) = a4;

  *&result = RB::DisplayList::State::add_style(this, a2, v9).n128_u64[0];
  return result;
}

void *RB::DisplayList::ProjectionStyle::encode(RB::DisplayList::ProjectionStyle *this, RB::Encoder *a2)
{
  RB::DisplayList::Style::encode(this, a2);
  RB::ProtobufEncoder::encode_varint(a2, 0x3AuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::ProjectionMatrix::encode(this + 7, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);

  return RB::ProtobufEncoder::end_length_delimited(a2);
}

double RB::DisplayList::State::add_projection_matrix(__n128 *this, RB::DisplayList::Builder *a2, const RB::ProjectionMatrix *a3)
{
  v6 = *(a2 + 1);
  v7 = (v6[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + 96 > v6[5])
  {
    v7 = RB::Heap::alloc_slow(v6 + 2, 0x60uLL, 7);
  }

  else
  {
    v6[4] = v7 + 96;
  }

  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = &unk_1F0A37080;
  v8 = *a3;
  v9 = *(a3 + 1);
  *(v7 + 88) = *(a3 + 8);
  *(v7 + 72) = v9;
  *(v7 + 56) = v8;
  *v7 = &unk_1F0A39D20;

  *&result = RB::DisplayList::State::add_style(this, a2, v7).n128_u64[0];
  return result;
}

void RB::DisplayList::affine_style_roi(float32x2_t *this, float64x2_t *a2, float64x2_t *a3, int8x16_t *a4, const RB::AffineTransform *a5)
{
  v5 = vcge_f32(vabs_f32(this[1]), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v9 = a4[1];
    v28 = *a4;
    v29 = v9;
    v30 = a4[2];
    if (RB::AffineTransform::invert(&v28))
    {
      v10 = &v28;
    }

    else
    {
      v10 = a4;
    }

    v11 = v10[1];
    v12 = v10[2];
    v27[0] = *v10;
    v27[1] = v11;
    v27[2] = v12;
    *v13.i64 = RB::operator*(v27, a3);
    v28 = v13;
    v29 = v14;
    v30 = v15;
    *v16.i64 = RB::operator*(&v28, a4);
    v24 = v17;
    v25 = v16;
    v26 = v18;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    if (RB::AffineTransform::invert(&v28))
    {
      v19 = -1;
    }

    else
    {
      v19 = 0;
    }

    v20 = vdupq_n_s64(v19);
    v28 = vbslq_s8(v20, v28, v25);
    v29 = vbslq_s8(v20, v29, v24);
    v30 = vbslq_s8(v20, v30, v26);
    v21.f64[0] = RB::operator*(a2, &v28);
    *a2 = v21;
    a2[1] = v22;
    a2[2] = v23;
  }
}

double RB::DisplayList::affine_style_bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float64x2_t *a5)
{
  bounds = RB::DisplayList::Style::next_bounds(a1, a1, a3, a4);
  v9 = v8;
  v28 = bounds;
  v29 = v8;
  v10 = vcge_f32(vabs_f32(v8), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
  {
    v11 = *(a2 + 16);
    v12 = *v11;
    v13 = v11[2];
    v31 = v11[1];
    v32 = v13;
    v30 = v12;
    if (RB::AffineTransform::invert(&v30))
    {
      v14 = &v30;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14[1];
    v16 = v14[2];
    v26[0] = *v14;
    v26[1] = v15;
    v26[2] = v16;
    v17.f64[0] = RB::operator*(v26, a5);
    v27[0] = v17;
    v27[1] = v18;
    v27[2] = v19;
    v20.f64[0] = RB::operator*(v27, *(a2 + 16));
    v30 = v20;
    v31 = v21;
    v32 = v22;
    bounds = RB::operator*(&v30, bounds, v9);
    v28 = bounds;
    v29 = v23;
  }

  v24 = *(a2 + 24);
  if (v24)
  {
    RB::Rect::intersect(&v28, *(v24 + 16), *(v24 + 24));
    bounds = v28;
  }

  return *&bounds;
}

unsigned __int8 *RB::DisplayList::Builder::projection_style_draw(size_t **this, RB::DisplayList::Layer *a2, RB::DisplayList::Item *a3, char a4, const RB::ProjectionMatrix *a5, float64x2_t *a6, const RB::DisplayList::ClipNode *a7)
{
  if (RB::may_discard_alpha(*(a3 + 23) & 0x3F) && *(a5 + 2) == 0.0 && (*(a5 + 5) == 0.0 ? (v14 = *(a5 + 8) == 1.0) : (v14 = 0), v14))
  {
    v15 = vcvtq_f64_f32(*(a5 + 12));
    v16 = vcvtq_f64_f32(*(a5 + 24));
    v39 = vcvtq_f64_f32(*a5);
    v40 = v15;
    v41 = v16;
    return RB::DisplayList::Builder::affine_style_draw(this, a2, a3, a4, &v39, a6, a7);
  }

  else
  {
    v18 = a6[1];
    v39 = *a6;
    v40 = v18;
    v41 = a6[2];
    if (RB::AffineTransform::invert(&v39))
    {
      v19 = &v39;
    }

    else
    {
      v19 = a6;
    }

    v20 = v19[1];
    v21 = v19[2];
    v39 = *v19;
    v40 = v20;
    v41 = v21;
    RB::operator*(&v39, a5, v35);
    RB::operator*(v35, a6, &v36);
    v22 = RB::DisplayList::Builder::ensure_layer(this, a3, 266, 0.0);
    v28 = v22;
    v29 = 72;
    if ((*(v22 + 23) & 0xC0) == 0x40)
    {
      v29 = 56;
    }

    if ((*(v22 + v29) & 3) == 1)
    {
      RB::operator*(*(v22 + v29) & 0xFFFFFFFFFFFFFFFCLL, &v36, &v39, v23, v24, v25, v26, v27);
      v36 = v39;
      v37 = v40;
      v38 = LODWORD(v41.f64[0]);
    }

    v30 = this[1];
    v31 = (v30[4] + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v31 + 36 > v30[5])
    {
      v31 = RB::Heap::alloc_slow(v30 + 2, 0x24uLL, 3);
    }

    else
    {
      v30[4] = v31 + 36;
    }

    v32 = v36;
    v33 = v37;
    *(v31 + 32) = v38;
    *v31 = v32;
    *(v31 + 16) = v33;
    v34 = 72;
    if ((*(v28 + 23) & 0xC0) == 0x40)
    {
      v34 = 56;
    }

    *(v28 + v34) = v31 | 1;
    *(v28 + 3) = RB::DisplayList::Builder::join_clip_lists(this, *(v28 + 3), a7);
    return RB::DisplayList::Builder::draw(this, v28, a2, a4);
  }
}

uint32x2_t RB::DisplayList::projection_style_roi(float32x2_t *this, float64x2_t *a2, RB::AffineTransform *a3, float64x2_t *a4, const RB::AffineTransform *a5)
{
  v5 = vcge_f32(vabs_f32(this[1]), vneg_f32(0x80000000800000));
  result = vpmax_u32(v5, v5);
  if ((result.i32[0] & 0x80000000) == 0)
  {
    RB::Rect::move(this, a2, a4);
    if (!RB::unapply(this, a3, v9))
    {
      result = 0x100000001000000;
      *this = 0x100000001000000;
      this[1] = vneg_f32(0x80000000800000);
    }
  }

  return result;
}

double RB::DisplayList::projection_style_bounds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  bounds = RB::DisplayList::Style::next_bounds(a1, a1, a3, a4);
  v9 = v8;
  v24 = bounds;
  v25 = v8;
  v10 = vcge_f32(vabs_f32(v8), vneg_f32(0x80000000800000));
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
  {
    v11 = *(a2 + 16);
    v12 = *v11;
    v13 = v11[2];
    v27 = v11[1];
    v28 = v13;
    v26 = v12;
    if (RB::AffineTransform::invert(&v26))
    {
      v14 = &v26;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14[1];
    v16 = v14[2];
    v26 = *v14;
    v27 = v15;
    v28 = v16;
    *&v17 = RB::operator*(&v26, bounds, v9);
    v19 = RB::operator*(a5, v17, v18);
    bounds = RB::operator*(*(a2 + 16), v19, v20);
    v24 = bounds;
    v25 = v21;
  }

  v22 = *(a2 + 24);
  if (v22)
  {
    RB::Rect::intersect(&v24, *(v22 + 16), *(v22 + 24));
    bounds = v24;
  }

  return *&bounds;
}

double RB::DisplayList::State::add_path_projection(uint64_t a1, RB::DisplayList::Builder *a2, uint64_t a3, uint64_t a4, float64x2_t *a5, int a6, __n128 a7, __n128 a8)
{
  v20[0] = a3;
  v20[1] = a4;
  v19 = a7;
  v18 = a8;
  v17 = a6;
  v11 = _ZN2RB4Heap7emplaceINS_11DisplayList19PathProjectionStyleEJRDv2_dS5_R6RBPathRjEEEPT_DpOT0_((*(a2 + 1) + 16), &v19, &v18, v20, &v17);
  v12 = vandq_s8(vandq_s8(vceqq_f64(a5[1], xmmword_195E42770), vceqq_f64(*a5, xmmword_195E42760)), vceqzq_f64(a5[2]));
  if ((vandq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) != 0)
  {
    *&result = RB::DisplayList::State::add_style(a1, a2, v11).n128_u64[0];
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    RB::DisplayList::State::concat(a1, a5);
    RB::DisplayList::State::add_style(a1, a2, v11);
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    result = *&v16;
    *(a1 + 48) = v16;
    *(a1 + 112) = 0;
    *(a1 + 148) = -1;
  }

  return result;
}

unint64_t _ZN2RB4Heap7emplaceINS_11DisplayList19PathProjectionStyleEJRDv2_dS5_R6RBPathRjEEEPT_DpOT0_(size_t *a1, __int128 *a2, __int128 *a3, uint64_t *a4, int *a5)
{
  v9 = (a1[2] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v9 + 128 > a1[3])
  {
    v9 = RB::Heap::alloc_slow(a1, 0x80uLL, 15);
  }

  else
  {
    a1[2] = v9 + 128;
  }

  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *a5;
  *(v9 + 48) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = &unk_1F0A394A0;
  *(v9 + 64) = v10;
  *(v9 + 80) = v11;
  *(v9 + 96) = RBPathRetain(v12, v13);
  *(v9 + 104) = v15;
  *(v9 + 112) = v14;
  return v9;
}

uint64_t RB::DisplayList::PathProjectionStyle::PathProjectionStyle(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_1F0A394A0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = RBPathRetain(*(a2 + 96), *(a2 + 104));
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t RB::DisplayList::PathProjectionStyle::copy(RB::DisplayList::PathProjectionStyle *this, RB::DisplayList::Builder *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3[4] + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v4 + 128 > v3[5])
  {
    v4 = RB::Heap::alloc_slow(v3 + 2, 0x80uLL, 15);
  }

  else
  {
    v3[4] = v4 + 128;
  }

  return RB::DisplayList::PathProjectionStyle::PathProjectionStyle(v4, this);
}

void RB::DisplayList::PathProjectionStyle::draw(RB::DisplayList::PathProjectionStyle *this, RB::DisplayList::Builder *a2, RB::DisplayList::Layer *a3, RB::DisplayList::Item *a4, char a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *(this + 28);
  if (v10)
  {
    (*(*a4 + 120))(a4, *(this + 2));
    v10 = *(this + 28);
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  *&v16[0].f64[0] = &unk_1F0A38900;
  v16[1] = v11;
  v16[2] = vsubq_f64(v12, v11);
  v17 = v10;
  v18 = 0u;
  v19 = 16;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  RBPathMap(*(this + 12), *(this + 13), v16, 0);
  *(a4 + 1) = 0;
  v13 = (*(*a4 + 224))(a4, a2, v16, *(this + 2));
  v15[0] = *(this + 3);
  v15[1] = 0;
  v15[2] = v15[0];
  while (v13)
  {
    v14 = *(v13 + 1);
    *(v13 + 2) = *(this + 4);
    RB::DisplayList::Builder::MemoizedAddClip::operator()(v15, a2, v13);
    RB::DisplayList::Builder::draw(a2, v13, a3, a5);
    v13 = v14;
  }

  if (v18)
  {
    free(v18);
  }
}

void sub_195DFFC14(_Unwind_Exception *a1)
{
  if (STACK[0x2D8])
  {
    free(STACK[0x2D8]);
  }

  _Unwind_Resume(a1);
}

double RB::DisplayList::PathProjectionStyle::map_roi(RB::DisplayList::PathProjectionStyle *this, float32x2_t *a2, RB::AffineTransform *a3)
{
  result = 7.29112205e-304;
  *a2 = 0x100000001000000;
  a2[1] = vneg_f32(0x80000000800000);
  return result;
}

double RB::DisplayList::PathProjectionStyle::bounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 80);
    v12 = *(a1 + 112);
    *&v23[0].f64[0] = &unk_1F0A38900;
    v23[1] = v10;
    v23[2] = vsubq_f64(v11, v10);
    v24 = v12;
    v25 = 0u;
    v26 = 16;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    RBPathMap(*(a1 + 96), *(a1 + 104), v23, 0);
    RB::DisplayList::Builder::Builder(v21);
    if (!v22)
    {
      RB::DisplayList::Builder::reset_contents(v21);
    }

    v13 = (*(*a3 + 24))(a3, v21, 0);
    v14 = (*(*v13 + 224))(v13, v21, v23, *(a1 + 16));
    v15 = v14;
    v20[0] = 0;
    v20[1] = 0;
    if (v14)
    {
      do
      {
        *&v16 = RB::DisplayList::Style::next_bounds(v14, a2, v15, a4);
        RB::Rect::Union(v20, v16, v17);
        v15 = v15[1];
      }

      while (v15);
    }

    v18 = *(a1 + 24);
    if (v18)
    {
      RB::Rect::intersect(v20, *(v18 + 16), *(v18 + 24));
    }

    RB::DisplayList::Builder::~Builder(v21);
    if (v25)
    {
      free(v25);
    }

    v6 = v20;
  }

  else
  {
    v5 = *(a1 + 24);
    if (!v5)
    {
      return 7.29112205e-304;
    }

    v6 = v5 + 2;
  }

  return *v6;
}

void sub_195DFFE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  RB::DisplayList::Builder::~Builder(va);
  if (STACK[0x3F8])
  {
    free(STACK[0x3F8]);
  }

  _Unwind_Resume(a1);
}

uint64_t RB::DisplayList::PathProjectionStyle::can_mix(RB::DisplayList::PathProjectionStyle *this, RB::DisplayList::Interpolator::Contents *a2, const RB::DisplayList::Style *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*(this + 28) != *(a3 + 28))
  {
    return 0;
  }

  v7.var0 = *(this + 12);
  v7.var1 = *(this + 13);
  v8.var0 = *(a3 + 12);
  v8.var1 = *(a3 + 13);
  LODWORD(result) = RBPathCanMix(v7, v8);
  v6 = vornq_s8(vmvnq_s8(vceqq_f64(*(this + 5), *(a3 + 5))), vceqq_f64(*(this + 4), *(a3 + 4)));
  if (vorrq_s8(vdupq_laneq_s64(v6, 1), v6).i64[0] >= 0)
  {
    return result;
  }

  else
  {
    return result != 0;
  }
}

float64x2_t *RB::DisplayList::PathProjectionStyle::mix(float64x2_t *this, const RB::DisplayList::Interpolator::State *a2, float64x2_t *a3, const RB::DisplayList::CachedTransform *a4)
{
  if (!a3)
  {
    return 0;
  }

  RB::Heap::emplace<RB::DisplayList::PathProjectionStyle>((*(*a4 + 8) + 16));
  v8 = v7;
  v7[4] = vmlaq_n_f64(this[4], vsubq_f64(a3[4], this[4]), *(a2 + 4));
  v7[5] = vmlaq_n_f64(this[5], vsubq_f64(a3[5], this[5]), *(a2 + 4));
  v9 = this[6].f64[0];
  v10 = *&this[6].f64[1];
  v11 = a3[6].f64[0];
  v12 = *&a3[6].f64[1];
  v13 = *(a2 + 4);
  v14 = *&this[1].f64[0];
  v15 = *&a3[1].f64[0];
  RB::mix(v14, v15, v16, v13);
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  *&v25.var0 = v9;
  v25.var1 = v10;
  *&v26.var0 = v11;
  v26.var1 = v12;
  RBPathMix(v25, v26, v13, v14, v15, v23, &v24);
  v20 = *&v8[6].f64[0];
  v21 = *&v8[6].f64[1];
  v8[6] = v24;
  *&v24.f64[0] = v20;
  *&v24.f64[1] = v21;
  RBPathRelease(v20, v21);
  LODWORD(v8[7].f64[0]) = LODWORD(a3[7].f64[0]);
  return v8;
}