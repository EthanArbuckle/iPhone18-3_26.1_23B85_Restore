double vp::vx::io::Graph::copy_input(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioBufferList *a5, const AudioTimeStamp *a6, uint64_t a7)
{
  if (a4 >= ((a3 - a2) >> 4))
  {
    v15 = 0x10009500000007;
LABEL_9:
    v16[0] = v15;
    v16[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
    *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
    goto LABEL_10;
  }

  v11 = (*(**(a2 + 16 * a4) + 64))(*(a2 + 16 * a4));
  if (!v11)
  {
    v15 = 0x1400930000000DLL;
    goto LABEL_9;
  }

  v12 = v11;
  vp::vx::io::validate_nonnull(v16, a5, a6, a7);
  if (v21)
  {
    v13 = *(*v12 + 96);

    v13(v12, a5, a6, a7);
    return result;
  }

  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
  if (v21)
  {
    return result;
  }

LABEL_10:
  if (SHIBYTE(v19) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

double vp::vx::io::Graph::copy_output(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioBufferList *a5, const AudioTimeStamp *a6, uint64_t a7)
{
  if (a4 >= ((a3 - a2) >> 4))
  {
    v15 = 0x1000CD00000007;
LABEL_9:
    v16[0] = v15;
    v16[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
    *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
    goto LABEL_10;
  }

  v11 = (*(**(a2 + 16 * a4) + 72))(*(a2 + 16 * a4));
  if (!v11)
  {
    v15 = 0x1400CB0000000DLL;
    goto LABEL_9;
  }

  v12 = v11;
  vp::vx::io::validate_nonnull(v16, a5, a6, a7);
  if (v21)
  {
    v13 = *(*v12 + 96);

    v13(v12, a5, a6, a7);
    return result;
  }

  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
  if (v21)
  {
    return result;
  }

LABEL_10:
  if (SHIBYTE(v19) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t vp::vx::io::Graph::notify(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v4 = result;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = v7[5];
      v9 = v7[6];
      while (v8 != v9)
      {
        v10 = *v8;
        v8 += 2;
        result = (*(*v10 + 16))(v10, a4, *v7);
      }

      v7 += 38;
    }

    while (v7 != a3);
  }

  *v4 = 0;
  v4[48] = 1;
  return result;
}

void vp::vx::io::Graph::process(_BYTE *a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = a2[8];
  if (0x86BCA1AF286BCA1BLL * ((a2[9] - v5) >> 4) > a3)
  {
    if (!a4)
    {
LABEL_61:
      *a1 = 0;
      a1[48] = 1;
      return;
    }

    v8 = (v5 + 304 * a3);
    v9 = a2[5];
    if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
    {
      v41 = v10;
      v11 = a2[4];
      if (v11)
      {
        v12 = (***v8)();
        if (!v12 || (v13 = v8[26], v14 = v8[27], v13 == v14))
        {
LABEL_18:
          LOBYTE(v42[0]) = 0;
          v46 = 1;
        }

        else
        {
          v15 = v12;
          while (1)
          {
            v16 = *v13;
            if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v11, *v13))
            {
              v17 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v11, v16);
              if (v17)
              {
                (*(*v15 + 32))(v47, v15, v16, *(v17 + 5));
              }

              else
              {
                v58 = 0x1300410000000ALL;
                v59 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Parameter_Exchange.cpp";
                v61 = 0;
                v62 = 0;
                v60 = 0;
                vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v63);
                vp::vx::io::operator<<<char const(&)[47]>(v52, &v58, "parameter exchange does not support parameter ");
                MEMORY[0x2743CBB40](&v54, v16);
                vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v52);
                _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, &v58);
                if (SHIBYTE(v62) < 0)
                {
                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v63[0], v60, v62 & 0x7FFFFFFFFFFFFFFFLL);
                }
              }

              if ((v51 & 1) == 0)
              {
                break;
              }
            }

            if (++v13 == v14)
            {
              goto LABEL_18;
            }
          }

          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v42, v47);
          if ((v51 & 1) == 0 && SHIBYTE(v49) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v50, v48, v49 & 0x7FFFFFFFFFFFFFFFLL);
          }

          if ((v46 & 1) == 0)
          {
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v42);
            if ((v46 & 1) == 0 && SHIBYTE(v44) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v45, v43, v44 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v28 = 1;
            v39 = v41;
LABEL_59:
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
LABEL_60:
            if (v28)
            {
              return;
            }

            goto LABEL_61;
          }
        }

        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v41 = 0;
      v11 = 0;
    }

    v19 = a2[7];
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v40 = a1;
        v21 = a2[6];
        if (v21)
        {
          v22 = (*(**v8 + 16))();
          if (!v22 || (v23 = v8[32], v24 = v8[33], v23 == v24))
          {
LABEL_34:
            LOBYTE(v42[0]) = 0;
            v46 = 1;
            a1 = v40;
          }

          else
          {
            v25 = v22;
            while (1)
            {
              v26 = *v23;
              if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v21, *v23))
              {
                v27 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v21, v26);
                if (v27)
                {
                  vp::Blob::Blob(v52, v27[3], v27[7]);
                  (*(*v25 + 40))(v47, v25, v26, v52);
                }

                else
                {
                  v58 = 0x1300480000000ALL;
                  v59 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
                  v61 = 0;
                  v62 = 0;
                  v60 = 0;
                  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v63);
                  vp::vx::io::operator<<<char const(&)[45]>(v52, &v58, "property exchange does not support property ");
                  MEMORY[0x2743CBB40](&v54, v26);
                  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v52);
                  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, &v58);
                  if (SHIBYTE(v62) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v63[0], v60, v62 & 0x7FFFFFFFFFFFFFFFLL);
                  }
                }

                if ((v51 & 1) == 0)
                {
                  break;
                }
              }

              if (++v23 == v24)
              {
                goto LABEL_34;
              }
            }

            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v42, v47);
            if ((v51 & 1) == 0 && SHIBYTE(v49) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v50, v48, v49 & 0x7FFFFFFFFFFFFFFFLL);
            }

            a1 = v40;
            if ((v46 & 1) == 0)
            {
              _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v40, v42);
              if ((v46 & 1) == 0 && SHIBYTE(v44) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v45, v43, v44 & 0x7FFFFFFFFFFFFFFFLL);
              }

              v28 = 1;
              a1 = v40;
              v39 = v41;
              goto LABEL_57;
            }
          }

          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

LABEL_39:
        vp::vx::io::Node_Socket::process(v52, v8, a4);
        if ((v57 & 1) == 0)
        {
          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v52);
          if ((v57 & 1) == 0 && SHIBYTE(v55) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v28 = 1;
LABEL_98:
          v39 = v41;
          if (!v20)
          {
LABEL_58:
            if (!v39)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

LABEL_57:
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          goto LABEL_58;
        }

        if (v18)
        {
          v29 = (***v8)();
          if (!v29 || (v30 = v8[29], v31 = v8[30], v30 == v31))
          {
LABEL_47:
            LOBYTE(v47[0]) = 0;
            v51 = 1;
          }

          else
          {
            v32 = v29;
            while (1)
            {
              v33 = *v30;
              if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v11, *v30))
              {
                vp::vx::io::Parameter_Exchange::get_parameter(v52, v11, v33, v32);
                if ((v57 & 1) == 0)
                {
                  break;
                }
              }

              if (++v30 == v31)
              {
                goto LABEL_47;
              }
            }

            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, v52);
            if ((v57 & 1) == 0 && SHIBYTE(v55) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
            }

            if ((v51 & 1) == 0)
            {
              goto LABEL_72;
            }
          }
        }

        if (!v28)
        {
          goto LABEL_98;
        }

        v34 = (*(**v8 + 16))();
        if (!v34 || (v35 = v8[35], v36 = v8[36], v35 == v36))
        {
LABEL_55:
          LOBYTE(v47[0]) = 0;
          v51 = 1;
          v39 = v41;
        }

        else
        {
          v37 = v34;
          while (1)
          {
            v38 = *v35;
            if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v21, *v35))
            {
              vp::vx::io::Property_Exchange::get_property(v52, v21, v38, v37);
              if ((v57 & 1) == 0)
              {
                break;
              }
            }

            if (++v35 == v36)
            {
              goto LABEL_55;
            }
          }

          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, v52);
          if ((v57 & 1) == 0 && SHIBYTE(v55) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v39 = v41;
          if ((v51 & 1) == 0)
          {
LABEL_72:
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v47);
            if ((v51 & 1) == 0 && SHIBYTE(v49) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v50, v48, v49 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v28 = 1;
            goto LABEL_98;
          }
        }

        v28 = 0;
        if (!v20)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v28 = 0;
    }

    else
    {
      v28 = 0;
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_39;
  }

  v52[0] = 0x10010300000006;
  v52[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
  v54 = 0;
  v55 = 0;
  v53 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v56);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v52);
  if (SHIBYTE(v55) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::Graph::reset(vp::vx::io::Graph *this, void *a2)
{
  v4 = a2[8];
  v5 = a2[9];
  while (v4 != v5)
  {
    vp::vx::io::Node_Socket::reset(v8, v4);
    if ((v11 & 1) == 0)
    {
LABEL_11:
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v8);
      if ((v11 & 1) == 0 && SHIBYTE(v9) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL);
      }

      return;
    }

    v4 += 304;
  }

  v7 = a2[12];
  v6 = a2[13];
  while (v7 != v6)
  {
    (*(**v7 + 88))(v8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 += 16;
  }

  *this = 0;
  *(this + 48) = 1;
}

void vp::vx::io::Graph::reset(vp::vx::io::Node_Socket *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 4) <= a4)
  {
    v6[0] = 0x10011B00000006;
    v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v8 = 0;
    v9 = 0;
    v7 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v6);
    if (SHIBYTE(v9) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v5 = a2 + 304 * a4;

    vp::vx::io::Node_Socket::reset(this, v5);
  }
}

void vp::vx::io::Graph::connect(_BYTE *a1, uint64_t a2, id *a3)
{
  v257 = a3;
  v251 = a1;
  v302[5] = *MEMORY[0x277D85DE8];
  caulk::autorelease_pool::autorelease_pool(&v290);
  vp::rpb::Server::get_shared_instance(&v289);
  if (!v289)
  {
    v292.__r_.__value_.__r.__words[0] = 0;
    memset(v302, 0, 32);
    v300 = 0u;
    v301 = 0u;
    v299 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v295) = 134217984;
    *(&v295 + 4) = 0;
    v243 = 12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_340:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = *(a2 + 96);
  if (*(a2 + 104) == v4)
  {
    v253 = 0;
    v250 = &v244;
    v258 = v291;
    v259 = v291;
    v260 = 0;
    v248 = 1;
    v249 = 1;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v260 = 0;
    v7 = 1;
    do
    {
      v8 = (v4 + 16 * v5);
      v9 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = (*(*v9 + 40))(v9);
      if (v11)
      {
        v12 = v260;
      }

      else
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = (v12 + 1);
      }

      else
      {
        v13 = v260;
      }

      v260 = v13;
      if (v11)
      {
        v6 = v6;
      }

      else
      {
        v6 = (v12 + 1);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v5 = v7;
      v4 = *(a2 + 96);
      ++v7;
    }

    while (v5 < (*(a2 + 104) - v4) >> 4);
    MEMORY[0x28223BE20](v11);
    v15 = &v244 - v14;
    v249 = v6 == 0;
    v259 = (&v244 - v14);
    if (v6)
    {
      bzero(v15, 8 * v6);
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x28223BE20](v15);
    v253 = v6;
    v250 = &v244;
    v258 = (&v244 - v16);
    if (v17)
    {
      bzero(&v244 - v16, 8 * v17);
      v248 = 0;
    }

    else
    {
      v260 = 0;
      v248 = 1;
    }
  }

  v18 = *(a2 + 96);
  if (*(a2 + 104) != v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = (v18 + 16 * v19);
      v24 = *v23;
      v25 = v23[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v24 + 48))(&v299, v24);
      vp::rpb::Terminal::Terminal(&v295, &v299);
      v26 = (*(*v24 + 40))(v24);
      if (v26)
      {
        v27 = v21;
      }

      else
      {
        v27 = v20;
      }

      v28 = v259;
      if (v26)
      {
        v28 = v258;
        v21 = v27 + 1;
      }

      else
      {
        v20 = v27 + 1;
      }

      vp::objc::ID::operator=(&v28[v27], &v295);
      vp::objc::ID::~ID(&v295);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v19 = v22;
      v18 = *(a2 + 96);
      ++v22;
    }

    while (v19 < (*(a2 + 104) - v18) >> 4);
  }

  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *(v29 + 23);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = *v29;
  }

  if (v32)
  {
    v33 = *(v29 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v34 = v31;
    }

    else
    {
      v34 = v33;
    }

    v35 = CFStringCreateWithBytes(0, v32, v34, 0x8000100u, 0);
    v287 = v35;
    if (!v35)
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v36, "Could not construct");
    }
  }

  else
  {
    v35 = 0;
    v287 = 0;
  }

  v37 = objc_alloc(MEMORY[0x277D46110]);
  v38 = v35;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v299, v259, v253);
  v39 = v299;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v295, v258, v260);
  v40 = v295;
  v288 = [v37 initWithName:v38 inputs:v39 outputs:v40];

  vp::objc::ID::~ID(&v295);
  vp::objc::ID::~ID(&v299);

  if (v38)
  {
    CFRelease(v38);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v246 = 0x86BCA1AF286BCA1BLL * ((*(a2 + 72) - *(a2 + 64)) >> 4);
  MEMORY[0x28223BE20](v41);
  v247 = v43;
  v252 = v44;
  v262 = (&v244 - v45);
  v267 = a2;
  if (v43 == v44)
  {
LABEL_136:
    if (*(a2 + 200) != *(a2 + 192))
    {
      v102 = 0;
      v103 = 0;
      do
      {
        v104 = boost::container::flat_map<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<std::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_subscript(a2 + 224, v103);
        vp::rpb::Wire::Wire(&v299, &v262[*v104], v104[2], &v262[v104[3]], v104[5]);
        v105 = *(*(a2 + 192) + 16 * v102);
        v106 = v105 + *(*v105 - 24);
        v107 = *(v106 + 1);
        v108 = *(v106 + 2);
        if (v108)
        {
          atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v109 = *(v107 + 23);
        if ((v109 & 0x80u) == 0)
        {
          v110 = v107;
        }

        else
        {
          v110 = *v107;
        }

        if (v110)
        {
          v111 = *(v107 + 8);
          if ((v109 & 0x80u) == 0)
          {
            v112 = v109;
          }

          else
          {
            v112 = v111;
          }

          v113 = CFStringCreateWithBytes(0, v110, v112, 0x8000100u, 0);
          v284 = v113;
          if (!v113)
          {
            v240 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v240, "Could not construct");
          }
        }

        else
        {
          v113 = 0;
          v284 = 0;
        }

        v114 = v299;
        v115 = v113;
        [v114 setName:v115];

        if (v115)
        {
          CFRelease(v115);
        }

        if (v108)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v108);
        }

        vp::rpb::Host::add_wire(v288, &v299);
        vp::objc::ID::~ID(&v299);
        v102 = ++v103;
      }

      while (v103 < ((*(a2 + 200) - *(a2 + 192)) >> 4));
    }

    vp::rpb::Host::new_delegate(&v286);
    v116 = objc_alloc_init(RPBItem_Delegate);
    v283 = v116;

    v117 = *(a2 + 40);
    if (v117)
    {
      v118 = std::__shared_weak_count::lock(v117);
      if (v118)
      {
        v245 = v118;
        v119 = *(a2 + 32);
        if (v119)
        {
          v255 = &v300 + 8;
          v299 = 0uLL;
          *&v300 = 0;
          default_resource = std::pmr::get_default_resource(v118);
          v244 = &v301;
          v254 = &v302[1];
          *(&v300 + 1) = default_resource;
          v301 = 0uLL;
          v302[0] = 0;
          v121 = std::pmr::get_default_resource(default_resource);
          v122 = 0;
          v302[1] = v121;
          v298 = 0x100000000;
          v123 = *(a2 + 64);
          v124 = *(a2 + 72);
          v266 = v119;
          while (1)
          {
            if (v124 == v123)
            {
              v124 = v123;
            }

            else
            {
              v125 = 0;
              v126 = 0;
              v256 = v122;
              v127 = *(&v298 + v122);
              v270 = 32 * (v127 != 0);
              v128 = 40;
              if (!v127)
              {
                v128 = 8;
              }

              v271 = v128;
              v129 = 24;
              if (v127)
              {
                v130 = 24;
              }

              else
              {
                v130 = 0;
              }

              v261 = v130;
              if (v127)
              {
                v129 = 56;
              }

              v264 = v129;
              v131 = v255;
              if (v127)
              {
                v131 = v254;
              }

              v265 = v131;
              do
              {
                LODWORD(v263) = v126;
                v132 = (v123 + 304 * v125 + v261);
                v133 = *(v132 + 26);
                *&v269 = *(v132 + 27);
                if (v269 != v133)
                {
                  v268 = &v262[v125];
                  do
                  {
                    v134 = *v133;
                    if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v119, *v133))
                    {
                      v135 = *(&v299 + v270);
                      v136 = *(&v299 + v271);
                      if (v135 == v136)
                      {
                        goto LABEL_177;
                      }

                      v137 = 1;
                      do
                      {
                        v138 = *v135;
                        v135 += 8;
                        v137 &= v138 != v134;
                      }

                      while (v135 != v136);
                      if (v137)
                      {
LABEL_177:
                        *(&v295 + 1) = 0;
                        *&v296 = 0;
                        WORD4(v296) = 0;
                        LODWORD(v295) = v134;
                        caulk::string_from_4cc(&v292, v134);
                        if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v139 = &v292;
                        }

                        else
                        {
                          v139 = v292.__r_.__value_.__r.__words[0];
                        }

                        if (v139)
                        {
                          if ((v292.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            size = HIBYTE(v292.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            size = v292.__r_.__value_.__l.__size_;
                          }

                          v141 = CFStringCreateWithBytes(0, v139, size, 0x8000100u, 0);
                          v282 = v141;
                          if (!v141)
                          {
                            goto LABEL_340;
                          }
                        }

                        else
                        {
                          v141 = 0;
                        }

                        *(&v295 + 1) = v141;
                        v282 = 0;
                        if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v292.__r_.__value_.__l.__data_);
                        }

                        BYTE8(v296) = 1;
                        v142 = v271;
                        v143 = *(&v299 + v271);
                        v144 = &v300;
                        if (v127)
                        {
                          v144 = v302;
                        }

                        v145 = *v144;
                        if (v143 >= v145)
                        {
                          v146 = *(&v299 + v270);
                          v147 = (v143 - v146) >> 5;
                          if ((v147 + 1) >> 59)
                          {
                            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                          }

                          v148 = v145 - v146;
                          v149 = v148 >> 4;
                          if (v148 >> 4 <= (v147 + 1))
                          {
                            v149 = v147 + 1;
                          }

                          if (v148 >= 0x7FFFFFFFFFFFFFE0)
                          {
                            v150 = 0x7FFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v150 = v149;
                          }

                          if (v150)
                          {
                            v151 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](v265, v150);
                          }

                          else
                          {
                            v151 = 0;
                          }

                          v152 = (v151 + 32 * v147);
                          std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::construct[abi:ne200100]<vp::rpb::Parameter_Info,vp::rpb::Parameter_Info const&,0>(v152, &v295);
                          v153 = *(&v299 + v271);
                          v154 = *(&v299 + v270);
                          v155 = v152 + v154 - v153;
                          if (v153 != v154)
                          {
                            v156 = *(&v299 + v270);
                            v157 = v152 + v154 - v153;
                            do
                            {
                              *v157 = *v156;
                              *(v157 + 1) = *(v156 + 8);
                              *(v156 + 8) = 0;
                              *(v157 + 2) = *(v156 + 16);
                              *(v156 + 16) = 0;
                              *(v157 + 12) = *(v156 + 24);
                              v156 += 32;
                              v157 += 32;
                            }

                            while (v156 != v153);
                            do
                            {
                              std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(v154);
                              v154 += 32;
                            }

                            while (v154 != v153);
                          }

                          v158 = v151 + 32 * v150;
                          v159 = v152 + 8;
                          *&v160 = v152 + 8;
                          *(&v160 + 1) = v158;
                          v161 = *(&v299 + v270);
                          *(&v299 + v270) = v155;
                          v162 = &v300;
                          if (v127)
                          {
                            v162 = v302;
                          }

                          *&v163 = v161;
                          *(&v163 + 1) = *v162;
                          *(&v299 + v271) = v160;
                          v119 = v266;
                          a2 = v267;
                          while (v163 != v161)
                          {
                            *&v163 = v163 - 32;
                            v272 = v163;
                            std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(v163);
                            v163 = v272;
                          }

                          if (v161)
                          {
                            std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::deallocate[abi:ne200100](*(&v299 + v264), v161, (*(&v163 + 1) - v161) >> 5);
                          }

                          v164 = v296;
                          *(&v299 + v271) = v159;
                          if (v164)
                          {
                            CFRelease(v164);
                          }
                        }

                        else
                        {
                          std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::construct[abi:ne200100]<vp::rpb::Parameter_Info,vp::rpb::Parameter_Info const&,0>(*(&v299 + v271), &v295);
                          *(&v299 + v142) = v143 + 32;
                        }

                        if (*(&v295 + 1))
                        {
                          CFRelease(*(&v295 + 1));
                        }
                      }
                    }

                    if (v127 == 1)
                    {
                      LODWORD(v295) = v134;
                      *(&v295 + 4) = 2;
                      LODWORD(v292.__r_.__value_.__l.__data_) = v134;
                      *(v292.__r_.__value_.__r.__words + 4) = 2;
                      vp::rpb::Host::add_parameter_wire(v288, v268, &v295, &v292);
                    }

                    else if (!v127)
                    {
                      LODWORD(v295) = v134;
                      *(&v295 + 4) = 1;
                      LODWORD(v292.__r_.__value_.__l.__data_) = v134;
                      *(v292.__r_.__value_.__r.__words + 4) = 1;
                      vp::rpb::Host::add_parameter_wire(v288, &v295, v268, &v292);
                    }

                    ++v133;
                  }

                  while (v133 != v269);
                }

                v125 = (v263 + 1);
                v123 = *(a2 + 64);
                v124 = *(a2 + 72);
                v126 = v263 + 1;
              }

              while (0x86BCA1AF286BCA1BLL * ((v124 - v123) >> 4) > v125);
              v122 = v256;
            }

            v122 += 4;
            if (v122 == 8)
            {
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>>::Direction_Pair(&v295, &v299);
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>>::Direction_Pair(v281, &v295);
              v294 = 0;
              operator new();
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v245);
      }
    }

    v165 = *(a2 + 56);
    if (v165)
    {
      v166 = std::__shared_weak_count::lock(v165);
      if (v166)
      {
        v261 = v166;
        *&v272 = *(a2 + 48);
        if (v272)
        {
          v264 = &v300 + 8;
          v299 = 0uLL;
          *&v300 = 0;
          v167 = std::pmr::get_default_resource(v166);
          v256 = &v301;
          v263 = &v302[1];
          *(&v300 + 1) = v167;
          v301 = 0uLL;
          v302[0] = 0;
          v168 = std::pmr::get_default_resource(v167);
          v169 = 0;
          v302[1] = v168;
          v298 = 0x100000000;
          v170 = *(a2 + 64);
          v171 = *(a2 + 72);
          while (1)
          {
            if (v171 == v170)
            {
              v171 = v170;
            }

            else
            {
              v172 = 0;
              v173 = 0;
              v265 = v169;
              v174 = *(&v298 + v169);
              if (v174)
              {
                v175 = 40;
              }

              else
              {
                v175 = 8;
              }

              v176 = 24;
              if (!v174)
              {
                v176 = 0;
              }

              v266 = v176;
              v177 = v264;
              if (v174)
              {
                v177 = v263;
              }

              v270 = v177;
              do
              {
                LODWORD(v268) = v173;
                v178 = &v266[38 * v172] + v170;
                v180 = *(v178 + 32);
                v179 = *(v178 + 33);
                if (v179 != v180)
                {
                  v271 = &v262[v172];
                  do
                  {
                    v181 = *v180;
                    if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v272, *v180))
                    {
                      v182 = *(&v299 + 4 * (v174 != 0));
                      v183 = *(&v299 + v175);
                      if (v182 == v183)
                      {
                        goto LABEL_248;
                      }

                      v184 = 1;
                      do
                      {
                        v185 = *v182;
                        v182 += 8;
                        v184 &= v185 != v181;
                      }

                      while (v182 != v183);
                      if (v184)
                      {
LABEL_248:
                        *&v292.__r_.__value_.__r.__words[1] = 0uLL;
                        v293 = 0;
                        LODWORD(v292.__r_.__value_.__l.__data_) = v181;
                        caulk::string_from_4cc(&v295, v181);
                        if ((SBYTE7(v296) & 0x80u) == 0)
                        {
                          v186 = &v295;
                        }

                        else
                        {
                          v186 = v295;
                        }

                        if (v186)
                        {
                          if ((SBYTE7(v296) & 0x80u) == 0)
                          {
                            v187 = BYTE7(v296);
                          }

                          else
                          {
                            v187 = *(&v295 + 1);
                          }

                          v188 = CFStringCreateWithBytes(0, v186, v187, 0x8000100u, 0);
                          v282 = v188;
                          if (!v188)
                          {
                            v239 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v239, "Could not construct");
                          }
                        }

                        else
                        {
                          v188 = 0;
                        }

                        v292.__r_.__value_.__l.__size_ = v188;
                        v282 = 0;
                        if (SBYTE7(v296) < 0)
                        {
                          operator delete(v295);
                        }

                        LOBYTE(v293) = 1;
                        v189 = *(&v299 + v175);
                        v190 = &v300;
                        if (v174)
                        {
                          v190 = v302;
                        }

                        v191 = *v190;
                        if (v189 >= v191)
                        {
                          v192 = *(&v299 + 4 * (v174 != 0));
                          v193 = (v189 - v192) >> 5;
                          if ((v193 + 1) >> 59)
                          {
                            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                          }

                          v194 = v191 - v192;
                          v195 = v194 >> 4;
                          if (v194 >> 4 <= (v193 + 1))
                          {
                            v195 = v193 + 1;
                          }

                          if (v194 >= 0x7FFFFFFFFFFFFFE0)
                          {
                            v196 = 0x7FFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v196 = v195;
                          }

                          v297 = v270;
                          if (v196)
                          {
                            v197 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](v270, v196);
                          }

                          else
                          {
                            v197 = 0;
                          }

                          *&v295 = v197;
                          *(&v295 + 1) = v197 + 32 * v193;
                          *&v296 = *(&v295 + 1);
                          *(&v296 + 1) = v197 + 32 * v196;
                          std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::construct[abi:ne200100]<vp::rpb::Property_Info,vp::rpb::Property_Info const&,0>(*(&v295 + 1), &v292);
                          *&v296 = v296 + 32;
                          v198 = *(&v299 + v175);
                          v199 = *(&v299 + 4 * (v174 != 0));
                          v200 = *(&v295 + 1) + v199 - v198;
                          std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::rpb::Property_Info>,vp::rpb::Property_Info*>(v270, v199, v198, v200);
                          v201 = *(&v299 + 4 * (v174 != 0));
                          *(&v299 + 4 * (v174 != 0)) = v200;
                          *(&v295 + 1) = v201;
                          v202 = &v300;
                          if (v174)
                          {
                            v202 = v302;
                          }

                          v203 = *v202;
                          v269 = v296;
                          *(&v299 + v175) = v296;
                          *(&v296 + 1) = v203;
                          *&v296 = v201;
                          *&v295 = v201;
                          std::__split_buffer<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info> &>::~__split_buffer(&v295);
                          v204 = v292.__r_.__value_.__r.__words[2];
                          *(&v299 + v175) = v269;
                          if (v204)
                          {
                            CFRelease(v204);
                          }
                        }

                        else
                        {
                          std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::construct[abi:ne200100]<vp::rpb::Property_Info,vp::rpb::Property_Info const&,0>(*(&v299 + v175), &v292);
                          *(&v299 + v175) = v189 + 32;
                        }

                        if (v292.__r_.__value_.__l.__size_)
                        {
                          CFRelease(v292.__r_.__value_.__l.__size_);
                        }
                      }
                    }

                    if (v174 == 1)
                    {
                      LODWORD(v295) = v181;
                      *(&v295 + 4) = 2;
                      LODWORD(v292.__r_.__value_.__l.__data_) = v181;
                      *(v292.__r_.__value_.__r.__words + 4) = 2;
                      vp::rpb::Host::add_property_wire(v288, v271, &v295, &v292);
                    }

                    else if (!v174)
                    {
                      LODWORD(v295) = v181;
                      *(&v295 + 4) = 1;
                      LODWORD(v292.__r_.__value_.__l.__data_) = v181;
                      *(v292.__r_.__value_.__r.__words + 4) = 1;
                      vp::rpb::Host::add_property_wire(v288, &v295, v271, &v292);
                    }

                    ++v180;
                  }

                  while (v180 != v179);
                }

                v172 = (v268 + 1);
                v170 = *(v267 + 64);
                v171 = *(v267 + 72);
                v173 = v268 + 1;
              }

              while (0x86BCA1AF286BCA1BLL * ((v171 - v170) >> 4) > v172);
              v169 = v265;
            }

            v169 = (v169 + 4);
            if (v169 == 8)
            {
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>>::Direction_Pair(&v295, &v299);
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>>::Direction_Pair(v280, &v295);
              v291[16] = 0;
              operator new();
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v261);
      }
    }

    v279[0] = v286;
    vp::rpb::Host::set_delegate(v288, v279);
    vp::objc::ID::~ID(v279);
    v278 = v116;
    v205 = *v257;
    v206 = v278;
    [v205 setDelegate:v206];

    vp::objc::ID::~ID(&v278);
    v207 = v289;
    vp::rpb::Server::add_host(v289, &v288, v257);
    v208 = *(a2 + 64);
    if (*(a2 + 72) != v208)
    {
      v209 = 0;
      v210 = 1;
      do
      {
        v211 = 304 * v209;
        v277 = v262[v209];
        v212 = *(v208 + v211);
        *&v295 = v277;
        (*(*v212 + 96))(&v299, v212, &v295);
        vp::objc::ID::~ID(&v295);
        if ((v302[0] & 1) == 0 && SBYTE7(v301) < 0)
        {
          (*(**(&v301 + 1) + 24))(*(&v301 + 1), v300, v301 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        vp::objc::ID::~ID(&v277);
        v209 = v210;
        v208 = *(a2 + 64);
      }

      while (0x86BCA1AF286BCA1BLL * ((*(a2 + 72) - v208) >> 4) > v210++);
    }

    v214 = *(a2 + 192);
    if (*(a2 + 200) == v214)
    {
LABEL_325:
      v274 = v207;
      v273 = v288;
      vp::rpb::Connection::Connection(&v299, &v274, &v273);
      vp::objc::ID::operator=((a2 + 256), &v299);
      vp::objc::ID::operator=((a2 + 264), &v299 + 1);
      vp::rpb::Connection::~Connection(&v299);
      vp::objc::ID::~ID(&v273);
      vp::objc::ID::~ID(&v274);
      vp::objc::ID::operator=((a2 + 272), &v286);
      vp::objc::ID::operator=((a2 + 280), &v283);
      v227 = v251;
      *v251 = 0;
      v227[48] = 1;
      vp::objc::ID::~ID(&v283);
      vp::objc::ID::~ID(&v286);
      goto LABEL_326;
    }

    v215 = 0;
    v216 = 1;
    while (1)
    {
      v217 = 16 * v215;
      v218 = *(v214 + 16 * v215) + *(**(v214 + 16 * v215) - 24);
      v219 = *(v218 + 8);
      v220 = *(v218 + 16);
      if (v220)
      {
        atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v221 = *(v219 + 23);
      if ((v221 & 0x80u) == 0)
      {
        v222 = v219;
      }

      else
      {
        v222 = *v219;
      }

      if (v222)
      {
        v223 = *(v219 + 8);
        if ((v221 & 0x80u) == 0)
        {
          v224 = v221;
        }

        else
        {
          v224 = v223;
        }

        v225 = CFStringCreateWithBytes(0, v222, v224, 0x8000100u, 0);
        *&v295 = v225;
        if (!v225)
        {
          v241 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v241, "Could not construct");
        }

        if (!v220)
        {
          goto LABEL_310;
        }
      }

      else
      {
        v225 = 0;
        *&v295 = 0;
        if (!v220)
        {
          goto LABEL_310;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v220);
LABEL_310:
      vp::rpb::Item::get_sub_host(&v299, *v257);
      if (v225)
      {
        CFRetain(v225);
      }

      v276 = v225;
      vp::rpb::Host::find_wire_by_name(&v292, v299, &v276);
      if (v225)
      {
        CFRelease(v225);
      }

      vp::objc::ID::~ID(&v299);
      if (v292.__r_.__value_.__r.__words[0])
      {
        v226 = *(*(a2 + 192) + v217);
        v275 = v292.__r_.__value_.__l.__data_;
        (*(*v226 + 32))(&v299, v226, &v275);
        if ((v302[0] & 1) == 0 && SBYTE7(v301) < 0)
        {
          (*(**(&v301 + 1) + 24))(*(&v301 + 1), v300, v301 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        vp::objc::ID::~ID(&v275);
      }

      vp::objc::ID::~ID(&v292.__r_.__value_.__l.__data_);
      if (v225)
      {
        CFRelease(v225);
      }

      v215 = v216;
      v214 = *(a2 + 192);
      ++v216;
      if (v215 >= (*(a2 + 200) - v214) >> 4)
      {
        goto LABEL_325;
      }
    }
  }

  bzero(v262, v42);
  v46 = 0;
  LODWORD(v270) = 0;
  v47 = v252;
  while (2)
  {
    v48 = (v47 + 304 * v46);
    v49 = v48[1];
    *&v272 = *v48;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v265 = v49;
    v50 = (*(*v272 + 48))(v272, 0);
    v264 = &v244;
    v51 = v50;
    v53.n128_f64[0] = MEMORY[0x28223BE20](v50);
    v54 = (&v244 - v52);
    if (v55)
    {
      bzero(&v244 - v52, 8 * v51);
    }

    v254 = v46;
    v263 = v51;
    v56 = (*(*v272 + 48))(v272, 1, v53);
    v57 = v56;
    v59.n128_f64[0] = MEMORY[0x28223BE20](v56);
    v60 = (&v244 - v58);
    if (v61)
    {
      bzero(&v244 - v58, 8 * v57);
    }

    v266 = v60;
    v261 = v57;
    v62 = v272;
    v256 = (*(*v272 + 48))(v272, 0, v59);
    v63 = (*(*v62 + 48))(v62, 1);
    v64 = 0;
    v255 = v63;
    v292.__r_.__value_.__r.__words[0] = 0x100000000;
    while (1)
    {
      v268 = v64;
      v65 = *(&v292.__r_.__value_.__l.__data_ + v64);
      if ((*(*v272 + 48))(v272, v65))
      {
        break;
      }

LABEL_103:
      v64 = (v268 + 4);
      if (v268 == 4)
      {
        v81 = v272 + *(*v272 - 24);
        v82 = *(v81 + 8);
        v83 = *(v81 + 16);
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v84 = *(v82 + 23);
        if ((v84 & 0x80u) == 0)
        {
          v85 = v82;
        }

        else
        {
          v85 = *v82;
        }

        if (v85)
        {
          v86 = *(v82 + 8);
          if ((v84 & 0x80u) == 0)
          {
            v87 = v84;
          }

          else
          {
            v87 = v86;
          }

          v88 = CFStringCreateWithBytes(0, v85, v87, 0x8000100u, 0);
          v285 = v88;
          if (!v88)
          {
            v242 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v242, "Could not construct");
          }
        }

        else
        {
          v88 = 0;
          v285 = 0;
        }

        v89 = objc_alloc(MEMORY[0x277D46118]);
        v90 = v88;
        vp::rpb::Array<vp::rpb::Terminal>::Array(&v299, v54, v256);
        v91 = v299;
        vp::rpb::Array<vp::rpb::Terminal>::Array(&v295, v266, v255);
        v92 = v295;
        v292.__r_.__value_.__r.__words[0] = [v89 initWithName:v90 inputs:v91 outputs:v92];

        vp::objc::ID::~ID(&v295);
        vp::objc::ID::~ID(&v299);

        if (v90)
        {
          CFRelease(v90);
        }

        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        vp::objc::ID::operator=(&v262[v254], &v292.__r_.__value_.__l.__data_);
        vp::rpb::Host::add_item(v288, &v292.__r_.__value_.__l.__data_);
        vp::objc::ID::~ID(&v292.__r_.__value_.__l.__data_);
        v93 = 1;
        goto LABEL_121;
      }
    }

    v66 = 0;
    v67 = v259;
    if (v65)
    {
      v67 = v258;
    }

    *&v269 = v67;
    v68 = v266;
    if (!v65)
    {
      v68 = v54;
    }

    v271 = v68;
    while (1)
    {
      v69 = v54;
      *&v295 = __PAIR64__(v65, v270);
      DWORD2(v295) = v66;
      v71 = *(a2 + 168);
      v70 = *(a2 + 176);
      if (v71)
      {
        v72 = 1;
      }

      else
      {
        v72 = v70 == 0;
      }

      if (!v72)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v73 = *(a2 + 168);
      if (v70)
      {
        v74 = *(a2 + 176);
        do
        {
          if (v74 != 1 && !v73)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (!v73)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (vp::vx::io::operator<(&v73[4 * (v74 >> 1)], &v295))
          {
            v73 += 4 * (v74 >> 1) + 4;
            v74 += ~(v74 >> 1);
          }

          else
          {
            v74 >>= 1;
          }
        }

        while (v74);
      }

      v75 = (v71 + 16 * v70);
      a2 = v267;
      v54 = v69;
      if (v73 == v75)
      {
        break;
      }

      if (!v73)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v76 = vp::vx::io::operator<(&v295, v73) ? v75 : v73;
      if (v76 == v75)
      {
        break;
      }

      v77 = v76[3];
      if (v77)
      {
        v78 = 0;
        LODWORD(v79) = 0;
        v80 = 16 * v77;
        do
        {
          if ((*(**(*(a2 + 96) + v78) + 40))(*(*(a2 + 96) + v78)) == v65)
          {
            v79 = (v79 + 1);
          }

          else
          {
            v79 = v79;
          }

          v78 += 16;
        }

        while (v80 != v78);
      }

      else
      {
        v79 = 0;
      }

      vp::objc::ID::operator=(&v271[v66], (v269 + 8 * v79));
LABEL_102:
      if (++v66 >= (*(*v272 + 48))(v272, v65))
      {
        goto LABEL_103;
      }
    }

    (*(*v272 + 56))(&v299);
    if (v302[0])
    {
      vp::rpb::Terminal::Terminal(&v286, &v299);
      vp::objc::ID::operator=(&v271[v66], &v286);
      vp::objc::ID::~ID(&v286);
      if ((v302[0] & 1) == 0 && SBYTE7(v301) < 0)
      {
        (*(**(&v301 + 1) + 24))(*(&v301 + 1), v300, v301 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      goto LABEL_102;
    }

    v101 = _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(v251, &v299);
    if ((v302[0] & 1) == 0 && SBYTE7(v301) < 0)
    {
      (*(**(&v301 + 1) + 24))(*(&v301 + 1), v300, v301 & 0x7FFFFFFFFFFFFFFFLL, 1, v101);
    }

    v93 = 0;
LABEL_121:
    if (v261)
    {
      v94 = -8 * v261;
      v95 = &v266[v261 - 1];
      do
      {
        vp::objc::ID::~ID(v95);
        v95 = (v96 - 8);
        v94 += 8;
      }

      while (v94);
    }

    if (v263)
    {
      v97 = -8 * v263;
      v98 = &v54[v263 - 1];
      do
      {
        vp::objc::ID::~ID(v98);
        v98 = (v99 - 8);
        v97 += 8;
      }

      while (v97);
    }

    if (v265)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v265);
    }

    if (v93)
    {
      v47 = *(a2 + 64);
      v100 = 0x86BCA1AF286BCA1BLL * ((*(a2 + 72) - v47) >> 4);
      LODWORD(v270) = v270 + 1;
      v46 = v270;
      if (v100 <= v270)
      {
        goto LABEL_136;
      }

      continue;
    }

    break;
  }

LABEL_326:
  if (v247 != v252)
  {
    v228 = -8 * v246;
    v229 = &v262[v246 - 1];
    do
    {
      vp::objc::ID::~ID(v229);
      v229 = (v230 - 8);
      v228 += 8;
    }

    while (v228);
  }

  vp::objc::ID::~ID(&v288);
  if ((v248 & 1) == 0)
  {
    v231 = -8 * v260;
    v232 = &v258[v260 - 1];
    do
    {
      vp::objc::ID::~ID(v232);
      v232 = (v233 - 8);
      v231 += 8;
    }

    while (v231);
  }

  if (!v249)
  {
    v234 = -8 * v253;
    v235 = &v259[v253 - 1];
    do
    {
      vp::objc::ID::~ID(v235);
      v235 = (v236 - 8);
      v234 += 8;
    }

    while (v234);
  }

  vp::objc::ID::~ID(&v289);
  caulk::autorelease_pool::~autorelease_pool(&v290);
  v237 = *MEMORY[0x277D85DE8];
}

void sub_272642A70(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unsigned int *boost::container::flat_map<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<std::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_subscript(uint64_t a1, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = *(a1 + 16);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[7 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 7;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  v12 = &v3[7 * v4];
  if (v6 == v12)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
LABEL_18:
    v22[0] = a2;
    v22[1] = -1;
    v23 = 0;
    v24 = -1;
    v13 = v3 > v6 || v6 > v12;
    v25 = 0;
    if (v13)
    {
      __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
    }

    __src = 0;
    if (v6 == v12)
    {
      v14 = v12;
    }

    else
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = v6;
      if (*v6 <= a2)
      {
        v21 = v12;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(v6, &v21, a2, &__src))
        {
          goto LABEL_37;
        }

LABEL_31:
        boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_commit<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>(&v21, a1, __src, v22);
        v6 = v21;
LABEL_32:
        if (!v6)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        goto LABEL_33;
      }
    }

    __src = v6;
    if (v14 == v3)
    {
      goto LABEL_31;
    }

    if (!v14)
    {
      __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
    }

    v16 = *(v14 - 7);
    v15 = v14 - 7;
    v17 = v16 > a2;
    if (v16 < a2)
    {
      goto LABEL_31;
    }

    if (v17)
    {
      v21 = v15;
      if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(v3, &v21, a2, &__src))
      {
        goto LABEL_31;
      }
    }

    else
    {
      __src = v15;
    }

LABEL_37:
    v6 = __src;
    if (!*(a1 + 8) && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

    goto LABEL_32;
  }

LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return v6 + 1;
}

void sub_272642F40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *vp::vx::io::Direction_Pair<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>>::Direction_Pair(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2[3];
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2[7];
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>((a1 + 4), a2[4], a2[5], (a2[5] - a2[4]) >> 5);
  return a1;
}

void sub_272642FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_DWORD *std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::construct[abi:ne200100]<vp::rpb::Parameter_Info,vp::rpb::Parameter_Info const&,0>(_DWORD *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = CFRetain(*(a2 + 8));
  }

  *(v3 + 1) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    result = CFRetain(*(a2 + 16));
  }

  *(v3 + 2) = v5;
  *(v3 + 12) = *(a2 + 24);
  return result;
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t **std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = result;
    for (i = v1[1]; i != v2; std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(i))
    {
      i -= 32;
    }

    v1[1] = v2;
    v5 = **v3;
    v6 = (*v3)[3];
    v7 = ((*v3)[2] - v5) >> 5;

    return std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::deallocate[abi:ne200100](v6, v5, v7);
  }

  return result;
}

uint64_t std::__function::__value_func<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *vp::vx::io::Direction_Pair<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>>::Direction_Pair(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2[3];
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2[7];
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>((a1 + 4), a2[4], a2[5], (a2[5] - a2[4]) >> 5);
  return a1;
}

void sub_27264327C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_DWORD *std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::construct[abi:ne200100]<vp::rpb::Property_Info,vp::rpb::Property_Info const&,0>(_DWORD *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = CFRetain(*(a2 + 8));
  }

  *(v3 + 1) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    result = CFRetain(*(a2 + 16));
  }

  *(v3 + 2) = v5;
  *(v3 + 12) = *(a2 + 24);
  return result;
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t **std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = result;
    for (i = v1[1]; i != v2; std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(i))
    {
      i -= 32;
    }

    v1[1] = v2;
    v5 = **v3;
    v6 = (*v3)[3];
    v7 = ((*v3)[2] - v5) >> 5;

    return std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::deallocate[abi:ne200100](v6, v5, v7);
  }

  return result;
}

uint64_t std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v46 = 0;
  v47 = 1;
  v6 = *(a1 + 16);
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
    v17 = 0;
    *(a3 + 8) = 1;
    *a3 = 0;
LABEL_47:
    v46 = 0;
LABEL_48:
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v17);
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v9, v5);
    if (!v10)
    {
      v54[0] = 0x1300270000000ALL;
      v54[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
      v56 = 0;
      v57 = 0;
      v55 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v58);
      vp::vx::io::operator<<<char const(&)[45]>(&v48, v54, "property exchange does not support property ");
      MEMORY[0x2743CBB40](&v51, v5);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v48);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&cf, v54);
      if (SHIBYTE(v57) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v58, v55, v57 & 0x7FFFFFFFFFFFFFFFLL);
      }

LABEL_16:
      if (v38 == 1)
      {
        v22 = cf;
        cf = 0;
        if (v22)
        {
          CFRetain(v22);
          v43 = 1;
          v39 = v22;
          caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
          CFRelease(v22);
        }

        else
        {
          v43 = 1;
          v39 = 0;
          caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
        }

        if ((v43 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x38uLL);
          vp::vx::io::Error::Error(&v48, &v39);
          v33 = caulk::bad_expected_access<vp::vx::io::Error>::bad_expected_access(exception, &v48);
        }

        v44 = v39;
        v39 = 0;
        v45 = 1;
        LOBYTE(v48) = 0;
        LOBYTE(v49) = 1;
      }

      else
      {
        v23 = v36;
        v24 = v35;
        v36 = 0uLL;
        *(&v35 + 1) = 0;
        v43 = 0;
        v39 = cf;
        v40 = v24;
        v41 = v23;
        v42 = v37;
        vp::vx::io::convert_error(v54, &v39);
        vp::objc::ID::ID(&v48, v54);
        vp::objc::ID::ID(&v44, &v48);
        v45 = 0;
        vp::objc::ID::~ID(&v48);
        vp::objc::ID::~ID(v54);
        LOBYTE(v48) = 0;
        LOBYTE(v49) = v45;
        if ((v45 & 1) == 0)
        {
          vp::objc::ID::ID(&v48, &v44);
          if ((v49 & 1) == 0)
          {
            if (v47)
            {
              v28 = v46;
              v46 = 0;
              caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
              vp::objc::ID::ID(&v46, &v48);
              vp::objc::ID::~ID(&v48);
              v48 = v28;
              v29 = v49;
              LOBYTE(v49) = v47;
              v47 = v29;
              goto LABEL_31;
            }

            vp::objc::ID::ID(v54, &v48);
            vp::objc::ID::operator=(&v48, &v46);
            vp::objc::ID::operator=(&v46, v54);
            goto LABEL_23;
          }

          if (v47)
          {
LABEL_30:
            v26 = v48;
            v48 = v46;
            v46 = v26;
            goto LABEL_31;
          }

LABEL_22:
          vp::objc::ID::ID(v54, &v46);
          vp::objc::ID::~ID(&v46);
          v46 = v48;
          v48 = 0;
          caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
          vp::objc::ID::ID(&v48, v54);
          v25 = v49;
          LOBYTE(v49) = v47;
          v47 = v25;
LABEL_23:
          vp::objc::ID::~ID(v54);
LABEL_31:
          if (v49 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v48);
          }

          else
          {
            vp::objc::ID::~ID(&v48);
          }

          if (v45 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v44);
          }

          else
          {
            vp::objc::ID::~ID(&v44);
          }

          if (v43 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v39);
          }

          else if (SHIBYTE(v41) < 0)
          {
            (*(*v42 + 24))(v42, *(&v40 + 1), *(&v41 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          if (v38 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(cf);
          }

          else if (SHIBYTE(v36) < 0)
          {
            (*(*v37 + 24))(v37, *(&v35 + 1), *(&v36 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          goto LABEL_45;
        }
      }

      v48 = v44;
      v44 = 0;
      if (v47)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v11 = v10;
    v48 = 0x2E002B00000000;
    v49 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
    v51 = 0;
    v52 = 0;
    v50 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v53);
    v12 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&cf, &v48);
    if (SHIBYTE(v52) < 0)
    {
      (*(*v53[0] + 24))(v53[0], v50, v52 & 0x7FFFFFFFFFFFFFFFLL, 1, v12);
    }

    v13 = CFDataCreate(0, v11[3], v11[4] - v11[3]);
    v14 = v13;
    if (!v13)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v59 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 != CFDataGetTypeID())
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
    }

    v59 = 0;
    if (v38 == 1)
    {
      v16 = cf;
      cf = v14;
    }

    else
    {
      v19 = *(&v36 + 1);
      v18 = v37;
      v36 = 0uLL;
      v20 = *(&v35 + 1);
      v16 = cf;
      *(&v35 + 1) = 0;
      cf = v14;
      caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(0);
      v21 = v38;
      v38 = 1;
      if (v21 != 1)
      {
        if (v19 < 0)
        {
          (*(*v18 + 24))(v18, v20, v19 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_14;
      }
    }

    caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(v16);
LABEL_14:
    caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(0);
    if (v59)
    {
      CFRelease(v59);
    }

    goto LABEL_16;
  }

LABEL_45:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v27 = v47;
  *a3 = 0;
  *(a3 + 8) = v27;
  if (v27)
  {
    v17 = 0;
    *a3 = v46;
    goto LABEL_47;
  }

  vp::objc::ID::ID(a3, &v46);
  if (v47)
  {
    v17 = v46;
    goto LABEL_48;
  }

  vp::objc::ID::~ID(&v46);
}

void sub_272643AD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  __cxa_free_exception(v35);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef((v36 - 72));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27264360CLL);
}

void caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void vp::vx::io::convert_error(vp::vx::io *this, const vp::vx::io::Error *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = CFStringCreateWithBytes(0, "com.apple.coreaudio.VoiceProcessor", 34, 0x8000100u, 0);
  v19 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v8 = *(a2 + 2);
  v7 = (a2 + 16);
  v6 = v8;
  if (SHIBYTE(v7->data) < 0)
  {
    v7 = v6;
  }

  v9 = strlen(v7);
  if (v7)
  {
    v7 = CFStringCreateWithBytes(0, v7, v9, 0x8000100u, 0);
    cf = v7;
    if (!v7)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not construct");
    }

    v5 = v19;
  }

  else
  {
    cf = 0;
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = v5;
  v20 = *MEMORY[0x277CCA450];
  v12 = v7;
  v21[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v14 = [v10 errorWithDomain:v11 code:543764335 userInfo:v13];
  *this = v14;

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_272643D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void **vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error>::~Expected(const void **this)
{
  if (*(this + 8) == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(*this);
  }

  else
  {
    vp::objc::ID::~ID(this);
  }

  return this;
}

uint64_t vp::Expected<applesauce::CF::TypeRef,vp::vx::io::Error>::~Expected(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(*a1);
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 40), *(a1 + 16), *(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

uint64_t vp::Expected<applesauce::CF::DataRef,vp::vx::io::Error>::~Expected(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(*a1);
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 40), *(a1 + 16), *(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

vp::vx::io::Error *vp::vx::io::Error::Error(vp::vx::io::Error *this, const vp::vx::io::Error *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 5) = *(a2 + 5);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(this + 2, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v3 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v3;
  }

  return this;
}

{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 5) = *(a2 + 5);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(this + 2, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v3 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v3;
  }

  return this;
}

uint64_t caulk::bad_expected_access<vp::vx::io::Error>::bad_expected_access(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881C6338;
  *(a1 + 8) = *a2;
  *(a1 + 12) = *(a2 + 4);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 40);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external((a1 + 24), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v3;
  }

  return a1;
}

void caulk::bad_expected_access<vp::vx::io::Error>::~bad_expected_access(std::exception *this)
{
  this->__vftable = &unk_2881C6338;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](this[6].__vftable, this[3].__vftable, this[5].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C6338;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](this[6].__vftable, this[3].__vftable, this[5].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7CE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7CE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7CE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()@<X0>(std::pmr *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 2)
  {
    v10 = 0uLL;
    v7 = *(a1 + 8);
    v11 = 0;
    default_resource = v7;
    v5 = *(a1 + 5);
    v6 = *(a1 + 6);
  }

  else
  {
    if (*a2 != 1)
    {
      v10 = 0uLL;
      v11 = 0;
      default_resource = std::pmr::get_default_resource(a1);
      goto LABEL_7;
    }

    v10 = 0uLL;
    v4 = *(a1 + 4);
    v11 = 0;
    default_resource = v4;
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
  }

  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(&v10, v5, v6, (v6 - v5) >> 5);
LABEL_7:
  *a3 = v10;
  v8 = default_resource;
  *(a3 + 16) = v11;
  *(a3 + 24) = v8;
  v10 = 0uLL;
  v11 = 0;
  *(a3 + 32) = 1;
  v13 = &v10;
  return std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

uint64_t std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    result = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](result + 24, a4);
    v8 = result;
    *v7 = result;
    v7[1] = result;
    v7[2] = result + 32 * a4;
    while (a2 != a3)
    {
      *v8 = *a2;
      v9 = *(a2 + 8);
      if (v9)
      {
        result = CFRetain(*(a2 + 8));
      }

      *(v8 + 8) = v9;
      v10 = *(a2 + 16);
      if (v10)
      {
        result = CFRetain(*(a2 + 16));
      }

      *(v8 + 16) = v10;
      *(v8 + 24) = *(a2 + 24);
      a2 += 32;
      v8 += 32;
    }

    v7[1] = v8;
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy_deallocate(uint64_t *a1)
{
  v2 = a1 + 1;
  v3 = a1 + 5;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);

  operator delete(a1);
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy(uint64_t a1)
{
  v1 = (a1 + 8);
  v3 = (a1 + 40);
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v1;
  return std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C98;
  v1 = a1 + 1;
  v2 = a1 + 5;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C98;
  v2 = a1 + 1;
  v4 = a1 + 5;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::rpb::Property_Info>,vp::rpb::Property_Info*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(v5);
      v5 += 32;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 32;
    std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(v3 - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  LODWORD(v23) = 2143289344;
  v24 = 1;
  v6 = *(a1 + 16);
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
    *(a3 + 8) = 1;
    *a3 = 2143289344;
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v9, v5);
    if (v10)
    {
      v16[0] = *(v10 + 5);
      v20 = 1;
    }

    else
    {
      v28[0] = 0x1300240000000ALL;
      v28[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Parameter_Exchange.cpp";
      v30 = 0;
      v31 = 0;
      v29 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v32);
      vp::vx::io::operator<<<char const(&)[47]>(&v25, v28, "parameter exchange does not support parameter ");
      MEMORY[0x2743CBB40](&v27, v5);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v25);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v16, v28);
      if (SHIBYTE(v31) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v32, v29, v31 & 0x7FFFFFFFFFFFFFFFLL);
      }

      if ((v20 & 1) == 0)
      {
        vp::vx::io::convert_error(v28, v16);
        vp::objc::ID::ID(&v25, v28);
        vp::objc::ID::ID(&v21, &v25);
        v22 = 0;
        vp::objc::ID::~ID(&v25);
        vp::objc::ID::~ID(v28);
        LOBYTE(v25) = 0;
        v26 = v22;
        if ((v22 & 1) == 0)
        {
          vp::objc::ID::ID(&v25, &v21);
          if ((v26 & 1) == 0)
          {
            if (v24)
            {
              v14 = v23;
              vp::objc::ID::ID(&v23, &v25);
              vp::objc::ID::~ID(&v25);
              LODWORD(v25) = v14;
              v15 = v26;
              v26 = v24;
              v24 = v15;
              goto LABEL_18;
            }

            vp::objc::ID::ID(v28, &v25);
            vp::objc::ID::operator=(&v25, &v23);
            vp::objc::ID::operator=(&v23, v28);
            goto LABEL_17;
          }

          if (v24)
          {
            goto LABEL_8;
          }

LABEL_16:
          vp::objc::ID::ID(v28, &v23);
          vp::objc::ID::~ID(&v23);
          LODWORD(v23) = v25;
          vp::objc::ID::ID(&v25, v28);
          v12 = v26;
          v26 = v24;
          v24 = v12;
LABEL_17:
          vp::objc::ID::~ID(v28);
          goto LABEL_18;
        }

LABEL_7:
        LODWORD(v25) = v21;
        if (v24)
        {
LABEL_8:
          v11 = v25;
          LODWORD(v25) = v23;
          LODWORD(v23) = v11;
LABEL_18:
          if ((v26 & 1) == 0)
          {
            vp::objc::ID::~ID(&v25);
          }

          if ((v22 & 1) == 0)
          {
            vp::objc::ID::~ID(&v21);
          }

          if ((v20 & 1) == 0 && SHIBYTE(v18) < 0)
          {
            (*(*v19 + 24))(v19, v17, v18 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          goto LABEL_25;
        }

        goto LABEL_16;
      }
    }

    caulk::expected<float,vp::vx::io::Error>::value(v16);
    LODWORD(v21) = v16[0];
    v22 = 1;
    LOBYTE(v25) = 0;
    v26 = 1;
    goto LABEL_7;
  }

LABEL_25:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v13 = v24;
  *a3 = 0;
  *(a3 + 8) = v13;
  if (v13)
  {
    *a3 = v23;
  }

  else
  {
    vp::objc::ID::ID(a3, &v23);
    if ((v24 & 1) == 0)
    {
      vp::objc::ID::~ID(&v23);
    }
  }
}

void sub_272644B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, id a18, char a19)
{
  if ((a15 & 1) == 0 && SHIBYTE(a13) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a14, a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if ((a19 & 1) == 0)
  {
    vp::objc::ID::~ID(&a18);
  }

  _Unwind_Resume(a1);
}

const vp::vx::io::Error *caulk::expected<float,vp::vx::io::Error>::value(const vp::vx::io::Error *result)
{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    vp::vx::io::Error::Error(v4, v1);
    v3 = caulk::bad_expected_access<vp::vx::io::Error>::bad_expected_access(exception, v4);
  }

  return result;
}

{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    vp::vx::io::Error::Error(v3, v1);
    *exception = &unk_2881C6338;
    vp::vx::io::Error::Error((exception + 1), v3);
  }

  return result;
}

void sub_272644BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (SHIBYTE(a13) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a14, a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7C50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()@<X0>(std::pmr *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 2)
  {
    v10 = 0uLL;
    v7 = *(a1 + 8);
    v11 = 0;
    default_resource = v7;
    v5 = *(a1 + 5);
    v6 = *(a1 + 6);
  }

  else
  {
    if (*a2 != 1)
    {
      v10 = 0uLL;
      v11 = 0;
      default_resource = std::pmr::get_default_resource(a1);
      goto LABEL_7;
    }

    v10 = 0uLL;
    v4 = *(a1 + 4);
    v11 = 0;
    default_resource = v4;
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
  }

  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(&v10, v5, v6, (v6 - v5) >> 5);
LABEL_7:
  *a3 = v10;
  v8 = default_resource;
  *(a3 + 16) = v11;
  *(a3 + 24) = v8;
  v10 = 0uLL;
  v11 = 0;
  *(a3 + 32) = 1;
  v13 = &v10;
  return std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

uint64_t std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    result = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](result + 24, a4);
    v8 = result;
    *v7 = result;
    v7[1] = result;
    v7[2] = result + 32 * a4;
    while (a2 != a3)
    {
      *v8 = *a2;
      v9 = *(a2 + 8);
      if (v9)
      {
        result = CFRetain(*(a2 + 8));
      }

      *(v8 + 8) = v9;
      v10 = *(a2 + 16);
      if (v10)
      {
        result = CFRetain(*(a2 + 16));
      }

      *(v8 + 16) = v10;
      *(v8 + 24) = *(a2 + 24);
      a2 += 32;
      v8 += 32;
    }

    v7[1] = v8;
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy_deallocate(uint64_t *a1)
{
  v2 = a1 + 1;
  v3 = a1 + 5;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);

  operator delete(a1);
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy(uint64_t a1)
{
  v1 = (a1 + 8);
  v3 = (a1 + 40);
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v1;
  return std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C08;
  v1 = a1 + 1;
  v2 = a1 + 5;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C08;
  v2 = a1 + 1;
  v4 = a1 + 5;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_commit<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>(void *result, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (v4 > __src)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 16);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = (v4 + 28 * v5);
  if (v8 < __src)
  {
LABEL_16:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 24);
  if (v9 < v5)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  v11 = result;
  if (v9 == v5)
  {

    return boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>(result, a2, __src, a4);
  }

  else
  {
    if (v8 == __src)
    {
      *v8 = *a4;
      v14 = *(a4 + 4);
      *(v8 + 20) = *(a4 + 20);
      *(v8 + 4) = v14;
      ++*(a2 + 16);
    }

    else
    {
      *v8 = *(v8 - 7);
      *(v8 + 4) = *(v8 - 24);
      *(v8 + 20) = *(v8 - 1);
      ++*(a2 + 16);
      v12 = v8 - 28 - __src;
      if (v8 - 28 != __src)
      {
        result = memmove(__src + 28, __src, v12);
      }

      *__src = *a4;
      v13 = *(a4 + 4);
      *(__src + 20) = *(a4 + 20);
      *(__src + 4) = v13;
    }

    *v11 = __src;
  }

  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x924924924924924)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x924924924924924)
  {
    v6 = 0x924924924924924;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x924924924924924)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 28 * v8, 4);
  v15 = v14;
  v23[1] = a2;
  v23[2] = v8;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    if (v16 != a3)
    {
      memmove(v14, *(a2 + 1), a3 - v16);
      v18 = &v15[a3 - v16];
    }
  }

  *v18 = *a4;
  v19 = *(a4 + 4);
  *(v18 + 20) = *(a4 + 20);
  *(v18 + 4) = v19;
  if (a3)
  {
    v20 = &v16[28 * v17];
    if (v20 != a3)
    {
      memmove(v18 + 28, a3, v20 - a3);
    }
  }

  v23[0] = 0;
  if (v16)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 28 * *(a2 + 3), 4);
  }

  v21 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v21;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::~scoped_array_deallocator(v23);
  *a1 = &a3[*(a2 + 1) - v13];
  return result;
}

void sub_272645578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 28 * *(a1 + 16), 4);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * (*a2 - a1);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[7 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 7;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

BOOL vp::vx::io::operator<(int *a1, _DWORD *a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6;
    if (v5 == v6)
    {
      return a1[2] < a2[2];
    }
  }

  return result;
}

uint64_t vp::vx::io::Graph_Builder::Graph_Builder(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  *a1 = a2;
  v5 = *a3;
  *(a1 + 24) = *(a3 + 2);
  *(a1 + 8) = v5;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  default_resource = std::pmr::get_default_resource(a1);
  *(a1 + 80) = default_resource;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v7 = std::pmr::get_default_resource(default_resource);
  *(a1 + 136) = v7;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v8 = std::pmr::get_default_resource(v7);
  *(a1 + 168) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v9 = std::pmr::get_default_resource(v8);
  *(a1 + 200) = v9;
  *(a1 + 208) = 0;
  v10 = std::pmr::get_default_resource(v9);
  *(a1 + 216) = v10;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v11 = std::pmr::get_default_resource(v10);
  *(a1 + 248) = v11;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v12 = std::pmr::get_default_resource(v11);
  *(a1 + 280) = v12;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v13 = std::pmr::get_default_resource(v12);
  *(a1 + 336) = v13;
  *(a1 + 344) = 0;
  v14 = std::pmr::get_default_resource(v13);
  *(a1 + 352) = v14;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v15 = std::pmr::get_default_resource(v14);
  *(a1 + 384) = v15;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = std::pmr::get_default_resource(v15);
  return a1;
}

uint64_t vp::vx::io::Graph_Builder::add_node(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(a1 + 72);
  v16 = v3;
  v4 = *a2;
  v17 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v14 = 0;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  if (!v5 && v6)
  {
LABEL_15:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = *(&v4 + 1);
  v15 = &v5[6 * v6];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(v5, &v15, v3, &v14))
  {
    v15 = v14;
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>(&v13, a1 + 80, &v15, &v16);
    v7 = *(&v17 + 1);
  }

  else
  {
    v7 = v12;
    if (!*(a1 + 88) && v14)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 72);
  *(a1 + 72) = v8 + 1;
  v9 = v8 | 0x100000000;
  if ((v9 & 0x100000000) != 0)
  {
    result = v9;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272645990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a2)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272645904);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[6 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a2 + 8);
  if (v5 > *a3)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 16);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v5 + 24 * v6;
  if (v4 > v8)
  {
LABEL_20:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 24);
  if (v9 < v6)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v9 == v6)
  {
    v20 = *a3;

    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>(a1, a2, v20, a4);
  }

  else
  {
    if (v8 == v4)
    {
      *v8 = *a4;
      *(v8 + 8) = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      ++*(a2 + 16);
    }

    else
    {
      v13 = v8 - 24;
      *v8 = *(v8 - 24);
      *(v8 + 8) = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      ++*(a2 + 16);
      if (v8 - 24 != v4)
      {
        v14 = v8 - 24;
        do
        {
          v15 = *(v14 - 24);
          v14 -= 24;
          *v13 = v15;
          v16 = *(v13 - 16);
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v17 = *(v13 + 16);
          *(v13 + 8) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v13 = v14;
        }

        while (v14 != v4);
      }

      *v4 = *a4;
      v18 = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v19 = *(v4 + 16);
      *(v4 + 8) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *a1 = *a3;
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 32);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_272645ECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::add_node_decorator(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[15];
  v5 = a1[16];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[14];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[17] + 16))(a1[17], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[14];
  v16 = a1[15];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[14];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[14];
  a1[14] = v18;
  v23 = a1[16];
  *(a1 + 15) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Decorator_Factory>>>::deallocate[abi:ne200100](a1[17], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[15] = v7;
}

void sub_2726460E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726460A8);
}

void vp::vx::io::Graph_Builder::add_node_delegate(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[19];
  v5 = a1[20];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[18];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[21] + 16))(a1[21], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[18];
  v16 = a1[19];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[18];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[18];
  a1[18] = v18;
  v23 = a1[20];
  *(a1 + 19) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Delegate_Factory>>>::deallocate[abi:ne200100](a1[21], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[19] = v7;
}

void sub_2726462D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272646298);
}

void vp::vx::io::Graph_Builder::add_node_command(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[23];
  v5 = a1[24];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[22];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[25] + 16))(a1[25], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[22];
  v16 = a1[23];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[22];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[22];
  a1[22] = v18;
  v23 = a1[24];
  *(a1 + 23) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Command_Factory>>>::deallocate[abi:ne200100](a1[25], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[23] = v7;
}

void sub_2726464C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272646488);
}

uint64_t vp::vx::io::Graph_Builder::add_port(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*a4)
  {
    _os_crash();
    __break(1u);
    goto LABEL_56;
  }

  v8 = *(a1 + 208);
  *v44 = v8;
  *&v44[4] = a2;
  *&v44[12] = a3;
  v9 = *(a1 + 224);
  v10 = *(a1 + 232);
  v43 = v9;
  if (!v9 && v10)
  {
LABEL_56:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_upper_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(&__src, &v43, &v9[4 * v10], v8);
  v11 = __src;
  v12 = *(a1 + 224);
  if (v12 > __src)
  {
    goto LABEL_57;
  }

  v13 = *(a1 + 232);
  if (!v12 && v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v14 = (v12 + 16 * v13);
  if (__src > v14)
  {
LABEL_57:
    v24 = "this->priv_in_range_or_end(position)";
    v25 = 1862;
    v26 = "emplace";
    goto LABEL_58;
  }

  v15 = *(a1 + 240);
  if (v15 < v13)
  {
LABEL_54:
    v24 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v25 = 2821;
    v26 = "priv_insert_forward_range";
    goto LABEL_58;
  }

  if (v15 == v13)
  {
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>(&v43, (a1 + 216), __src, v44);
  }

  else if (v14 == __src)
  {
    *v14 = *v44;
    v17 = *&v44[4];
    *(v14 + 3) = *&v44[12];
    *(v14 + 4) = v17;
    ++*(a1 + 232);
  }

  else
  {
    *v14 = *(v14 - 4);
    *(v14 + 4) = *(v14 - 12);
    *(v14 + 3) = *(v14 - 1);
    ++*(a1 + 232);
    if (v14 - 16 != v11)
    {
      memmove(v11 + 16, v11, v14 - 16 - v11);
    }

    *v11 = *v44;
    v16 = *&v44[4];
    *(v11 + 3) = *&v44[12];
    *(v11 + 4) = v16;
  }

  *v44 = a2;
  v18 = *(a1 + 208);
  *&v44[8] = a3;
  *&v44[12] = v18;
  v20 = *(a1 + 256);
  v19 = *(a1 + 264);
  if (!v20 && v19)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v21 = *(a1 + 256);
  if (v19)
  {
    v21 = *(a1 + 256);
    v22 = *(a1 + 264);
    do
    {
      if (v22 != 1 && !v21)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v21)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (vp::vx::io::operator<((v21 + 16 * (v22 >> 1)), v44))
      {
        v21 += 16 * (v22 >> 1) + 16;
        v22 += ~(v22 >> 1);
      }

      else
      {
        v22 >>= 1;
      }
    }

    while (v22);
  }

  v23 = v20 + 16 * v19;
  if (v21 == v23)
  {
    goto LABEL_29;
  }

  if (!v21)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (vp::vx::io::operator<(v44, v21))
  {
LABEL_29:
    v24 = "this->priv_in_range_or_end(position)";
    v25 = 1862;
    v26 = "emplace";
    if (v20 <= v21 && v21 <= v23)
    {
      v27 = *(a1 + 272);
      if (v27 >= v19)
      {
        if (v27 == v19)
        {
          boost::container::vector<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>*,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>(&v43, (a1 + 248), v21, v44);
        }

        else if (v21 == v23)
        {
          v30 = *&v44[8];
          *v23 = *v44;
          *(v23 + 8) = v30;
          *(v23 + 12) = v18;
          ++*(a1 + 264);
        }

        else
        {
          *v23 = *(v23 - 16);
          v28 = *(v23 - 4);
          *(v23 + 8) = *(v23 - 8);
          *(v23 + 12) = v28;
          ++*(a1 + 264);
          if (v23 - 16 != v21)
          {
            memmove((v21 + 16), v21, v23 - 16 - v21);
          }

          v29 = *v44;
          *(v21 + 8) = *&v44[8];
          *v21 = v29;
          *(v21 + 12) = *&v44[12];
        }

        goto LABEL_40;
      }

      goto LABEL_54;
    }

LABEL_58:
    __assert_rtn(v26, "vector.hpp", v25, v24);
  }

  if (!v20)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_40:
  v31 = *(a1 + 208);
  *v44 = v31;
  v32 = *a4;
  *&v44[8] = *a4;
  *a4 = 0;
  a4[1] = 0;
  __src = 0;
  v33 = *(a1 + 288);
  v34 = *(a1 + 296);
  if (!v33 && v34)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v40 = *(&v32 + 1);
  v43 = &v33[6 * v34];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::priv_insert_unique_prepare(v33, &v43, v31, &__src))
  {
    v43 = __src;
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>(&v41, a1 + 280, &v43, v44);
    v35 = *&v44[16];
  }

  else
  {
    v35 = v40;
    if (!*(a1 + 288) && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(a1 + 208);
  *(a1 + 208) = v36 + 1;
  v37 = v36 | 0x100000000;
  if ((v37 & 0x100000000) != 0)
  {
    result = v37;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272646A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a2)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272646844);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[6 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a2 + 8);
  if (v5 > *a3)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 16);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v5 + 24 * v6;
  if (v4 > v8)
  {
LABEL_20:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 24);
  if (v9 < v6)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v9 == v6)
  {
    v20 = *a3;

    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>(a1, a2, v20, a4);
  }

  else
  {
    if (v8 == v4)
    {
      *v8 = *a4;
      *(v8 + 8) = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      ++*(a2 + 16);
    }

    else
    {
      v13 = v8 - 24;
      *v8 = *(v8 - 24);
      *(v8 + 8) = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      ++*(a2 + 16);
      if (v8 - 24 != v4)
      {
        v14 = v8 - 24;
        do
        {
          v15 = *(v14 - 24);
          v14 -= 24;
          *v13 = v15;
          v16 = *(v13 - 16);
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v17 = *(v13 + 16);
          *(v13 + 8) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v13 = v14;
        }

        while (v14 != v4);
      }

      *v4 = *a4;
      v18 = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v19 = *(v4 + 16);
      *(v4 + 8) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *a1 = *a3;
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 32);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_272646F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>*,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>(void *a1, const char *a2, char *a3, uint64_t *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4 == 0xFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0xFFFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 60)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 16 * v9, 4);
  v16 = v15;
  v24[1] = a2;
  v24[2] = v9;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v15;
  if (v17)
  {
    v19 = v15;
    if (v17 != a3)
    {
      memmove(v15, *(a2 + 1), a3 - v17);
      v19 = &v16[a3 - v17];
    }
  }

  v20 = *a4;
  *(v19 + 2) = *(a4 + 2);
  *v19 = v20;
  *(v19 + 3) = *(a4 + 3);
  if (a3)
  {
    v21 = &v17[16 * v18];
    if (v21 != a3)
    {
      memmove(v19 + 16, a3, v21 - a3);
    }
  }

  v24[0] = 0;
  if (v17)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 16 * *(a2 + 3), 4);
  }

  v22 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v22;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>::~scoped_array_deallocator(v24);
  *a1 = &a3[*(a2 + 1) - v14];
  return result;
}

void sub_2726471E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 16 * *(a1 + 16), 4);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_upper_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 4;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      if (*v7 <= a4)
      {
        v4 = v7 + 4;
        *a2 = v7 + 4;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4 == 0xFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0xFFFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 60)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 16 * v9, 4);
  v16 = v15;
  v24[1] = a2;
  v24[2] = v9;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v15;
  if (v17)
  {
    v19 = v15;
    if (v17 != a3)
    {
      memmove(v15, *(a2 + 1), a3 - v17);
      v19 = &v16[a3 - v17];
    }
  }

  *v19 = *a4;
  v20 = *(a4 + 4);
  *(v19 + 3) = *(a4 + 12);
  *(v19 + 4) = v20;
  if (a3)
  {
    v21 = &v17[16 * v18];
    if (v21 != a3)
    {
      memmove(v19 + 16, a3, v21 - a3);
    }
  }

  v24[0] = 0;
  if (v17)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 16 * *(a2 + 3), 4);
  }

  v22 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v22;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::~scoped_array_deallocator(v24);
  *a1 = &a3[*(a2 + 1) - v14];
  return result;
}

void sub_2726474EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 16 * *(a1 + 16), 4);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::add_port_decorator(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[40];
  v5 = a1[41];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[39];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[42] + 16))(a1[42], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[39];
  v16 = a1[40];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[39];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[39];
  a1[39] = v18;
  v23 = a1[41];
  *(a1 + 20) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Port_Decorator_Factory>>>::deallocate[abi:ne200100](a1[42], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[40] = v7;
}

void sub_2726476FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726476C4);
}

uint64_t vp::vx::io::Graph_Builder::add_wire(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!*a6)
  {
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v9 = *(a1 + 344);
  v25 = v9;
  *v26 = a2;
  *&v26[8] = a3;
  *&v26[12] = a4;
  v27 = a5;
  __src = 0;
  v10 = *(a1 + 360);
  v11 = *(a1 + 368);
  if (!v10 && v11)
  {
LABEL_21:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v24 = &v10[7 * v11];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(v10, &v24, v9, &__src))
  {
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_commit<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>(&v24, a1 + 352, __src, &v25);
  }

  else if (!*(a1 + 360) && __src)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

  v12 = *(a1 + 344);
  v25 = v12;
  v13 = *a6;
  *&v26[4] = *a6;
  *a6 = 0;
  a6[1] = 0;
  __src = 0;
  v14 = *(a1 + 392);
  v15 = *(a1 + 400);
  if (!v14 && v15)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v21 = *(&v13 + 1);
  v24 = &v14[6 * v15];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::priv_insert_unique_prepare(v14, &v24, v12, &__src))
  {
    v24 = __src;
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>(&v22, a1 + 384, &v24, &v25);
    v16 = *&v26[12];
  }

  else
  {
    v16 = v21;
    if (!*(a1 + 392) && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 344);
  *(a1 + 344) = v17 + 1;
  v18 = v17 | 0x100000000;
  if ((v18 & 0x100000000) != 0)
  {
    result = v18;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272647968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a2)
  {
    if (a16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a16);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272647894);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[6 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a2 + 8);
  if (v5 > *a3)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 16);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v5 + 24 * v6;
  if (v4 > v8)
  {
LABEL_20:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 24);
  if (v9 < v6)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v9 == v6)
  {
    v20 = *a3;

    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>(a1, a2, v20, a4);
  }

  else
  {
    if (v8 == v4)
    {
      *v8 = *a4;
      *(v8 + 8) = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      ++*(a2 + 16);
    }

    else
    {
      v13 = v8 - 24;
      *v8 = *(v8 - 24);
      *(v8 + 8) = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      ++*(a2 + 16);
      if (v8 - 24 != v4)
      {
        v14 = v8 - 24;
        do
        {
          v15 = *(v14 - 24);
          v14 -= 24;
          *v13 = v15;
          v16 = *(v13 - 16);
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v17 = *(v13 + 16);
          *(v13 + 8) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v13 = v14;
        }

        while (v14 != v4);
      }

      *v4 = *a4;
      v18 = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v19 = *(v4 + 16);
      *(v4 + 8) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *a1 = *a3;
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 32);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_272647EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::add_wire_decorator(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1 + 53;
  v5 = a1[53];
  v6 = a1[54];
  if (v5 < v6)
  {
    v7 = a2[1];
    *v5 = *a2;
    v5[1] = v7;
    *a2 = 0;
    a2[1] = 0;
    v8 = v5 + 2;
    goto LABEL_22;
  }

  v9 = a1[52];
  v10 = (v5 - v9) >> 4;
  v11 = v10 + 1;
  if ((v10 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v12 = v6 - v9;
  if (v12 >> 3 > v11)
  {
    v11 = v12 >> 3;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v13 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (*(*a1[55] + 16))(a1[55], 16 * v13, 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = (v14 + 16 * v10);
  *v15 = *a2;
  v8 = v15 + 1;
  *&v16 = v15 + 1;
  *(&v16 + 1) = v14 + 16 * v13;
  v25 = v16;
  *a2 = 0;
  a2[1] = 0;
  v18 = a1[52];
  v17 = a1[53];
  v19 = v15 + v18 - v17;
  if (v17 != v18)
  {
    v20 = (v15 + v18 - v17);
    v21 = a1[52];
    do
    {
      *v20++ = *v21;
      *v21 = 0;
      *(v21 + 8) = 0;
      v21 += 16;
    }

    while (v21 != v17);
    do
    {
      v22 = *(v18 + 8);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v18 += 16;
    }

    while (v18 != v17);
  }

  v23 = a1[52];
  a1[52] = v19;
  v24 = a1[54];
  *v4 = v25;
  if (v23)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Wire_Decorator_Factory>>>::deallocate[abi:ne200100](a1[55], v23, (v24 - v23) >> 4);
  }

LABEL_22:
  *v4 = v8;
}

void sub_2726480D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272648098);
}

void vp::vx::io::Graph_Builder::build(vp *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v13 = a2;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, a2, "vp::vx::io::Graph_Builder]", 25);
    v5 = v15;
    v6 = v15;
    v7 = __p[1];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      v10 = __p[0];
      if (v6 >= 0)
      {
        v10 = __p;
      }

      v11 = " ";
      if (!v9)
      {
        v11 = "";
      }

      v12 = (v13 + 8);
      if (*(v13 + 31) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315650;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      v17 = 2080;
      v18 = v12;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sbuilding new %s graph", buf, 0x20u);
      LOBYTE(v6) = v15;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_27264E250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x3B7]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x3B8], STACK[0x3A0], STACK[0x3B0] & 0x7FFFFFFFFFFFFFFFLL);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27264E350(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_27264E374(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (STACK[0x410])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x410]);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27264E3B8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x27264E3C0);
  }

  __clang_call_terminate(a1);
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *___ZN2vp2vx2io13Graph_Builder5buildEN10applesauce8dispatch2v15queueE_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = v3[11];
  v5 = v3[12];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v3[11];
  if (v5)
  {
    v8 = v3[11];
    v9 = v3[12];
    do
    {
      if (v9 != 1 && !v8)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v9 >> 1;
      v11 = (v8 + 24 * (v9 >> 1));
      v13 = *v11;
      v12 = v11 + 6;
      v9 += ~(v9 >> 1);
      if (v13 >= a2)
      {
        v9 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v9);
  }

  v14 = &v4[6 * v5];
  if (v8 == v14)
  {
    LODWORD(v29) = a2;
    v30 = 0;
    *&v31 = 0;
    if (v4 <= v8)
    {
      v27 = 0;
      v16 = v14;
      goto LABEL_27;
    }

LABEL_44:
    __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
  }

  if (!v8)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v8 > a2)
  {
    LODWORD(v29) = a2;
    v30 = 0;
    *&v31 = 0;
    if (v4 <= v8 && v8 <= v14)
    {
      v27 = 0;
      v16 = v8;
      if (*v8 <= a2)
      {
        v28 = v14;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(v8, &v28, a2, &v27))
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

LABEL_27:
      v27 = v8;
      if (v16 != v4)
      {
        if (!v16)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        v18 = *(v16 - 6);
        v17 = v16 - 6;
        v19 = v18 > a2;
        if (v18 >= a2)
        {
          if (!v19)
          {
            v27 = v17;
            goto LABEL_34;
          }

          v28 = v17;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(v4, &v28, a2, &v27))
          {
LABEL_34:
            if (!v3[11] && v27)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v26 = v27;
            goto LABEL_37;
          }
        }
      }

LABEL_30:
      v28 = v27;
      boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>(&v26, (v3 + 10), &v28, &v29);
LABEL_37:
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      v8 = v26;
      if (!v26)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_40:
  v20 = *v3;
  v21 = v3[4];
  (***(v8 + 8))(&v29);
  v22 = *(*(*(a1 + 32) + 8) + 40) + 32 * a2;
  v23 = v29;
  v29 = 0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v22, v23);
  *(v22 + 8) = v30;
  *(v22 + 16) = v31;
  result = std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](&v29, 0);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27264E774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

unsigned int **boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(unsigned int **result, unsigned int **a2, uint64_t *a3, unsigned int *a4)
{
  v4 = result;
  v5 = *a2;
  if (*a3 == *a2)
  {
LABEL_10:
    *result = v5;
    result[1] = v5;
    return result;
  }

  v6 = (*a3 - *a2) >> 4;
  v7 = *a4;
  while (1)
  {
    if (v6 != 1 && !v5)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (!v5)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v8 = v6 >> 1;
    v9 = &v5[4 * (v6 >> 1)];
    if (*v9 >= v7)
    {
      break;
    }

    v5 = v9 + 4;
    *a2 = v9 + 4;
    v8 = v6 + ~v8;
LABEL_9:
    v6 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v7 < *v9)
  {
    goto LABEL_9;
  }

  v10 = &v5[4 * v6];
  *a3 = v10;
  v11 = *a2;
  v12 = *a4;
  if (v9 != *a2)
  {
    v13 = (v9 - *a2) >> 4;
    do
    {
      if (v13 != 1 && !v11)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v11)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = v13 >> 1;
      v15 = &v11[4 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 4;
      v13 += ~(v13 >> 1);
      if (v17 >= v12)
      {
        v13 = v14;
      }

      else
      {
        v11 = v16;
      }
    }

    while (v13);
  }

  v18 = v9 + 4;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_upper_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(result + 1, &v18, v10, v12);
  *v4 = v11;
  return result;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

void *std::unique_ptr<vp::vx::io::Port,vp::Allocator_Delete<vp::vx::io::Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 24))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

double _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(uint64_t a1, uint64_t a2)
{
  caulk::unexpected<vp::vx::io::Error>::unexpected(v6, a2);
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 4) = v3;
  *(a1 + 8) = v7;
  result = *&v8;
  *(a1 + 16) = v8;
  v5 = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  return result;
}

void *std::unique_ptr<vp::vx::io::Wire,vp::Allocator_Delete<vp::vx::io::Wire>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 48))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::io::Wire::get_terminal(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return (**result)(result);
  }

  if (!a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void vp::vx::io::operator<<<char const*>(void *a1, uint64_t a2, const char **a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v8 = a2;
  v6 = *a3;
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v6, v7);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v9);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v8);
}

void sub_27264EC98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void vp::vx::io::operator<<<char const(&)[11]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "parameter ", 10);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27264F130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::__expected_detail::base<std::shared_ptr<vp::vx::io::Parameter_Controller const>,vp::vx::io::Error>::~base(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 40), *(a1 + 16), *(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

void vp::vx::io::operator<<<char const(&)[10]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "property ", 9);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27264F214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Wire *,vp::Allocator_Delete<vp::vx::io::Wire>,std::allocator<vp::vx::io::Wire>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 48))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Wire *,vp::Allocator_Delete<vp::vx::io::Wire>,std::allocator<vp::vx::io::Wire>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t caulk::unexpected<vp::vx::io::Error>::unexpected(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Port *,vp::Allocator_Delete<vp::vx::io::Port>,std::allocator<vp::vx::io::Port>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 24))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Port *,vp::Allocator_Delete<vp::vx::io::Port>,std::allocator<vp::vx::io::Port>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Node *,vp::Allocator_Delete<vp::vx::io::Node>,std::allocator<vp::vx::io::Node>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 112))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Node *,vp::Allocator_Delete<vp::vx::io::Node>,std::allocator<vp::vx::io::Node>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>)>::functor_invoker<vp::vx::io::Graph_Builder::build(applesauce::dispatch::v1::queue)::$_1>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v25 = v3;
  v26 = *(a2 + 8);
  v27 = *(a2 + 24);
  if (v3)
  {
    v4 = v3 + *(*v3 - 24);
    v5 = *(v4 + 1);
    v6 = *(v4 + 2);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = **v2;
    v8 = *(*v7 - 24);
    v9 = *(v7 + v8 + 8);
    v10 = *(v7 + v8 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(v5 + 32);
    *(v5 + 24) = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v12 = *(v2 + 8);
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
    if (v14 >= v13)
    {
      v16 = (v14 - *v12) >> 4;
      if ((v16 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v17 = v13 - *v12;
      v18 = v17 >> 3;
      if (v17 >> 3 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      v32 = v12;
      if (v19)
      {
        if (!(v19 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 0;
      v29 = 16 * v16;
      v30 = 16 * v16;
      v31 = 0;
      std::shared_ptr<vp::vx::io::Node_Command>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>,0>((16 * v16), &v25);
      v15 = v30 + 16;
      v20 = *(v12 + 8) - *v12;
      v21 = v29 - v20;
      memcpy((v29 - v20), *v12, v20);
      v22 = *v12;
      *v12 = v21;
      v28 = v22;
      v29 = v22;
      *(v12 + 8) = v15;
      v30 = v22;
      v23 = *(v12 + 16);
      *(v12 + 16) = v31;
      v31 = v23;
      std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(&v28);
    }

    else
    {
      std::shared_ptr<vp::vx::io::Node_Command>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>,0>(*(v12 + 8), &v25);
      v15 = v14 + 16;
      *(v12 + 8) = v14 + 16;
    }

    *(v12 + 8) = v15;
  }

  return std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](&v25);
}

void sub_27264F79C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(va1);
  std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<vp::vx::io::Node_Command>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void *std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(v1);
    return (*(*v2[1] + 24))(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Node_Command *,vp::Allocator_Delete<vp::vx::io::Node_Command>,std::allocator<vp::vx::io::Node_Command>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 24))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Node_Command *,vp::Allocator_Delete<vp::vx::io::Node_Command>,std::allocator<vp::vx::io::Node_Command>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>)>::functor_invoker<vp::vx::io::Graph_Builder::build(applesauce::dispatch::v1::queue)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v17 = v3;
  v18 = *(a2 + 8);
  v19 = *(a2 + 24);
  v4 = *v2;
  v6 = *(*v2 + 8);
  v5 = *(*v2 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v24 = v4;
    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = 0;
    v21 = 16 * v8;
    v22 = 16 * v8;
    v23 = 0;
    std::shared_ptr<vp::vx::io::Node_Delegate>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,0>((16 * v8), &v17);
    v7 = (v22 + 16);
    v12 = *(v4 + 8) - *v4;
    v13 = v21 - v12;
    memcpy((v21 - v12), *v4, v12);
    v14 = *v4;
    *v4 = v13;
    v20 = v14;
    v21 = v14;
    *(v4 + 8) = v7;
    v22 = v14;
    v15 = *(v4 + 16);
    *(v4 + 16) = v23;
    v23 = v15;
    std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(&v20);
  }

  else
  {
    std::shared_ptr<vp::vx::io::Node_Delegate>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,0>(v6, &v17);
    v7 = v6 + 2;
    *(v4 + 8) = v6 + 2;
  }

  *(v4 + 8) = v7;
  return std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&v17);
}

void sub_27264FB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(va1);
  std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<vp::vx::io::Node_Delegate>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void *std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 32))(v1);
    return (*(*v2[1] + 24))(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

uint64_t std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Node_Delegate *,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,std::allocator<vp::vx::io::Node_Delegate>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 32))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Node_Delegate *,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,std::allocator<vp::vx::io::Node_Delegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

std::string *std::optional<std::__fs::filesystem::path>::operator=[abi:ne200100]<std::__fs::filesystem::path const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

const void **vp::vx::dsp::v2::Graph_Builder::build@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v309[4] = *MEMORY[0x277D85DE8];
  v304 = 0;
  v8 = *MEMORY[0x277CBECE8];
  *buf = 0;
  v305 = CADSPLanguageV1InterpreterCreate();
  v9 = CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(buf);
  std::unordered_map<std::string,std::string>::unordered_map(v9, a2);
  memset(v306, 0, 24);
  std::vector<applesauce::CF::TypeRefPair>::reserve(v306, v308);
  v10 = *&buf[16];
  if (*&buf[16])
  {
    v11 = *&v306[8];
    do
    {
      if (v11 >= *&v306[16])
      {
        v11 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(v306, v10 + 16, (v10 + 40));
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v11, v10 + 16, (v10 + 40));
        v11 += 2;
      }

      *&v306[8] = v11;
      v10 = *v10;
    }

    while (v10);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v306);
  v301 = v306;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v301);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*&buf[16]);
  v13 = *buf;
  *buf = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v276 = a3;
  v14 = CADSPLanguageV1InterpreterSetPreprocessorMacroDefinitions();
  if (*(a1 + 112) == 1)
  {
    v15 = (a1 + 88);
    v16 = vp::get_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v18 = v306[23];
      v19 = *&v306[8];
      v20 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if ((v18 & 0x80u) == 0)
        {
          v21 = v18;
        }

        else
        {
          v21 = v19;
        }

        if ((v306[23] & 0x80u) == 0)
        {
          v22 = v306;
        }

        else
        {
          v22 = *v306;
        }

        if (v21)
        {
          v23 = " ";
        }

        else
        {
          v23 = "";
        }

        v24 = a1 + 88;
        if (*(a1 + 111) < 0)
        {
          v24 = *v15;
        }

        *buf = 136315650;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = v23;
        *&buf[22] = 2080;
        *&v308 = v24;
        _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%s%sinterpreting file %s", buf, 0x20u);
      }

      if (v306[23] < 0)
      {
        operator delete(*v306);
      }
    }

    CA::DSP::MutableGraphModel::Create(buf, v8);
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v304);
    v25 = *buf;
    *buf = 0;
    v304 = v25;
    v26 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
    if (*(a1 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *buf = *v15;
      *&buf[16] = *(a1 + 104);
    }

    if (buf[23] >= 0)
    {
      v51 = buf;
    }

    else
    {
      v51 = *buf;
    }

    if (v51)
    {
      if (buf[23] >= 0)
      {
        v52 = buf[23];
      }

      else
      {
        v52 = *&buf[8];
      }

      v53 = CFStringCreateWithBytes(0, v51, v52, 0x8000100u, 0);
      v303 = v53;
      if (!v53)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if ((buf[23] & 0x80) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v53 = 0;
      v303 = 0;
      if ((buf[23] & 0x80) == 0)
      {
        goto LABEL_70;
      }
    }

    operator delete(*buf);
LABEL_70:
    v300 = v304;
    if (v304)
    {
      CFRetain(v304);
    }

    *v306 = 0;
    v54 = CADSPLanguageV1InterpreterInterpretContentsOfFile();
    v55 = *v306;
    if (!v54 && !*v306)
    {
      v254 = *MEMORY[0x277CBED08];
      v55 = CADSPErrorCreate();
      *v306 = v55;
    }

    v301 = v55;
    if (v55)
    {
      v56 = 0;
      v301 = 0;
      *buf = v55;
    }

    else
    {
      v56 = 1;
    }

    buf[8] = v56;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v301);
    v57 = buf[8];
    if (buf[8])
    {
      v302 = buf[8];
    }

    else
    {
      v58 = *buf;
      *buf = 0;
      *v306 = 0;
      v301 = v58;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v306);
      v302 = v57;
      if ((buf[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      }
    }

    v59 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v300);
    if ((v302 & 1) == 0)
    {
      v60 = vp::get_log(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v62 = v306[23];
        v63 = *&v306[8];
        v64 = vp::get_log(v61);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          if ((v62 & 0x80u) == 0)
          {
            v65 = v62;
          }

          else
          {
            v65 = v63;
          }

          if ((v306[23] & 0x80u) == 0)
          {
            v66 = v306;
          }

          else
          {
            v66 = *v306;
          }

          *buf = 136315650;
          *&buf[4] = v66;
          if (v65)
          {
            v67 = " ";
          }

          else
          {
            v67 = "";
          }

          *&buf[12] = 2080;
          *&buf[14] = v67;
          *&buf[22] = 2112;
          *&v308 = v301;
          _os_log_impl(&dword_2724B4000, v64, OS_LOG_TYPE_ERROR, "%s%sfailed to interpret DSP graph file - %@", buf, 0x20u);
        }

        if (v306[23] < 0)
        {
          operator delete(*v306);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v304);
      v304 = 0;
      if ((v302 & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v301);
      }
    }

    if (v53)
    {
      CFRelease(v53);
    }

    goto LABEL_160;
  }

  v27 = *(a1 + 144);
  v28 = vp::get_log(v14);
  if (v27 != 1)
  {
    v41 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      v42 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v43 = buf[23];
      v44 = buf[23];
      v45 = *&buf[8];
      v46 = vp::get_log(v42);
      v41 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v44 >= 0)
        {
          v47 = v43;
        }

        else
        {
          v47 = v45;
        }

        v48 = *buf;
        if (v44 >= 0)
        {
          v48 = buf;
        }

        if (v47)
        {
          v49 = " ";
        }

        else
        {
          v49 = "";
        }

        *v306 = 136315394;
        *&v306[4] = v48;
        *&v306[12] = 2080;
        *&v306[14] = v49;
        _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%s%sfailed to build DSP graph - graph file path and graph text are missing", v306, 0x16u);
        LOBYTE(v44) = buf[23];
      }

      if ((v44 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    *a4 = 0;
    default_resource = std::pmr::get_default_resource(v41);
    a4[2] = 0;
    a4[3] = 0;
    a4[1] = default_resource;
    CFRelease(CFDictionaryRef);
    CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v305);
    goto LABEL_252;
  }

  v275 = v8;
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    v30 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v31 = buf[23];
    v32 = *&buf[8];
    v33 = vp::get_log(v30);
    v29 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      if ((v31 & 0x80u) == 0)
      {
        v34 = v31;
      }

      else
      {
        v34 = v32;
      }

      v35 = *buf;
      if (buf[23] >= 0)
      {
        v35 = buf;
      }

      if (v34)
      {
        v36 = " ";
      }

      else
      {
        v36 = "";
      }

      *v306 = 136315394;
      *&v306[4] = v35;
      *&v306[12] = 2080;
      *&v306[14] = v36;
      _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%s%sinterpreting text", v306, 0x16u);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v37 = a4;
  v38 = vp::get_log(v29);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 143);
    if ((v39 & 0x8000000000000000) != 0)
    {
      v40 = *(a1 + 120);
      v39 = *(a1 + 128);
    }

    else
    {
      v40 = a1 + 120;
    }

    v274 = 0;
    v68 = 0;
    v69 = (v40 + v39);
LABEL_104:
    if ((v39 - v68) >= 1)
    {
      v70 = &v68[v40];
      v71 = v39 - v68;
      v72 = &v68[v40];
      do
      {
        v73 = memchr(v72, 10, v71);
        if (!v73)
        {
          break;
        }

        if (*v73 == 10)
        {
          if (v73 != v69)
          {
            v74 = v73 - v40;
            if ((v73 - v40) != -1)
            {
              if (v39 - v68 >= v74 - v68)
              {
                v75 = (v74 - v68);
              }

              else
              {
                v75 = (v39 - v68);
              }

              v76 = vp::get_log(v73);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
              {
                v77 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
                v78 = v306[23];
                v272 = *&v306[8];
                log = vp::get_log(v77);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  v79 = v272;
                  if ((v78 & 0x80u) == 0)
                  {
                    v79 = v78;
                  }

                  v80 = v306;
                  if ((v306[23] & 0x80u) != 0)
                  {
                    v80 = *v306;
                  }

                  *buf = 136316162;
                  v81 = v79 == 0;
                  v82 = " ";
                  if (v81)
                  {
                    v82 = "";
                  }

                  *&buf[4] = v80;
                  *&buf[12] = 2080;
                  *&buf[14] = v82;
                  if (v75 >> 31)
                  {
                    v83 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v83 = v75 & 0x7FFFFFFF;
                  }

                  *&buf[22] = 2048;
                  *&v308 = v274;
                  WORD4(v308) = 1040;
                  *(&v308 + 10) = v83;
                  HIWORD(v308) = 2080;
                  v309[0] = v70;
                  _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_DEBUG, "%s%sinterpreting line %2lu - %.*s", buf, 0x30u);
                  ++v274;
                }

                if (v306[23] < 0)
                {
                  operator delete(*v306);
                }
              }

              v68 = v74 + 1;
              if (v74 < v39)
              {
                goto LABEL_104;
              }
            }
          }

          break;
        }

        v72 = v73 + 1;
        v71 = v69 - v72;
      }

      while (v69 - v72 >= 1);
    }
  }

  CA::DSP::MutableGraphModel::Create(buf, v275);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v304);
  v84 = *buf;
  *buf = 0;
  v304 = v84;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    v85 = *(a1 + 120);
    v86 = *(a1 + 128);
  }

  v299 = v304;
  a4 = v37;
  if (v304)
  {
    CFRetain(v304);
  }

  *v306 = 0;
  v87 = CADSPLanguageV1InterpreterInterpretUTF8String();
  v88 = *v306;
  if (!v87 && !*v306)
  {
    v255 = *MEMORY[0x277CBED08];
    v88 = CADSPErrorCreate();
    *v306 = v88;
  }

  v301 = v88;
  if (v88)
  {
    v89 = 0;
    v301 = 0;
    *buf = v88;
  }

  else
  {
    v89 = 1;
  }

  buf[8] = v89;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v301);
  v90 = buf[8];
  if (buf[8])
  {
    v302 = buf[8];
  }

  else
  {
    v91 = *buf;
    *buf = 0;
    *v306 = 0;
    v301 = v91;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v306);
    v302 = v90;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    }
  }

  v92 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v299);
  if ((v302 & 1) == 0)
  {
    v93 = vp::get_log(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v95 = v306[23];
      v96 = *&v306[8];
      v97 = vp::get_log(v94);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        if ((v95 & 0x80u) == 0)
        {
          v98 = v95;
        }

        else
        {
          v98 = v96;
        }

        if ((v306[23] & 0x80u) == 0)
        {
          v99 = v306;
        }

        else
        {
          v99 = *v306;
        }

        *buf = 136315650;
        *&buf[4] = v99;
        if (v98)
        {
          v100 = " ";
        }

        else
        {
          v100 = "";
        }

        *&buf[12] = 2080;
        *&buf[14] = v100;
        *&buf[22] = 2112;
        *&v308 = v301;
        _os_log_impl(&dword_2724B4000, v97, OS_LOG_TYPE_ERROR, "%s%sfailed to interpret DSP graph text - %@", buf, 0x20u);
      }

      if (v306[23] < 0)
      {
        operator delete(*v306);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v304);
    v304 = 0;
    if ((v302 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v301);
    }
  }

LABEL_160:
  CFRelease(CFDictionaryRef);
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v305);
  if (v304)
  {
    cf = v304;
    CFRetain(v304);
    *v306 = cf;
    CFRetain(cf);
    memset(v309, 0, 28);
    v308 = 0u;
    if (CADSPGraphGetAudioStreamConfigurationForPort())
    {
      v101 = *&v308;
    }

    else
    {
      v101 = 0.0;
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v306);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&cf);
    for (i = 1; ; ++i)
    {
      v297 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      v115 = CADSPGraphModelCopyPorts();
      *buf = 0;
      *v306 = v115;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
      Count = CFArrayGetCount(*v306);
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v306);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v297);
      if (Count <= i)
      {
        break;
      }

      v296 = v304;
      if (v304)
      {
        CFRetain(v304);
        *v306 = v296;
        if (v296)
        {
          CFRetain(v296);
        }
      }

      else
      {
        *v306 = 0;
      }

      memset(v309, 0, 28);
      v308 = 0u;
      AudioStreamConfigurationForPort = CADSPGraphGetAudioStreamConfigurationForPort();
      if (AudioStreamConfigurationForPort)
      {
        v118 = *&v308;
      }

      else
      {
        v118 = 0.0;
      }

      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v306);
      v119 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v296);
      if (AudioStreamConfigurationForPort && v118 != v101)
      {
        v120 = vp::get_log(v119);
        v103 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
        if (v103)
        {
          v121 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v122 = v306[23];
          v123 = v306[23];
          v124 = *&v306[8];
          v125 = vp::get_log(v121);
          v103 = os_log_type_enabled(v125, OS_LOG_TYPE_ERROR);
          if (v103)
          {
            if (v123 >= 0)
            {
              v126 = v122;
            }

            else
            {
              v126 = v124;
            }

            v127 = *v306;
            if (v123 >= 0)
            {
              v127 = v306;
            }

            *buf = 136316162;
            *&buf[4] = v127;
            *&buf[12] = 2080;
            if (v126)
            {
              v128 = " ";
            }

            else
            {
              v128 = "";
            }

            *&buf[14] = v128;
            *&buf[22] = 1024;
            LODWORD(v308) = i;
            WORD2(v308) = 2048;
            *(&v308 + 6) = v118;
            HIWORD(v308) = 2048;
            *v309 = v101;
            v129 = "%s%sfailed to build DSP graph - all input bus sample rates must be equal, but port %u has a sample rate of %lf, not matching %lf";
            goto LABEL_247;
          }

          goto LABEL_248;
        }

        goto LABEL_251;
      }
    }

    v295 = v304;
    if (v304)
    {
      CFRetain(v304);
      *v306 = v295;
      CFRetain(v295);
    }

    else
    {
      *v306 = 0;
    }

    memset(v309, 0, 28);
    v308 = 0u;
    if (CADSPGraphGetAudioStreamConfigurationForPort())
    {
      v130 = *&v308;
    }

    else
    {
      v130 = 0.0;
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v306);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v295);
    for (j = 1; ; ++j)
    {
      v294 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      v132 = CADSPGraphModelCopyPorts();
      *buf = 0;
      *v306 = v132;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
      v133 = CFArrayGetCount(*v306);
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v306);
      v134 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v294);
      if (v133 <= j)
      {
        break;
      }

      v293 = v304;
      if (v304)
      {
        CFRetain(v304);
        *v306 = v293;
        if (v293)
        {
          CFRetain(v293);
        }
      }

      else
      {
        *v306 = 0;
      }

      memset(v309, 0, 28);
      v308 = 0u;
      v135 = CADSPGraphGetAudioStreamConfigurationForPort();
      if (v135)
      {
        v136 = *&v308;
      }

      else
      {
        v136 = 0.0;
      }

      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v306);
      v137 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v293);
      if (v135 && v136 != v130)
      {
        v145 = vp::get_log(v137);
        v103 = os_log_type_enabled(v145, OS_LOG_TYPE_ERROR);
        if (!v103)
        {
          goto LABEL_251;
        }

        v146 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v147 = v306[23];
        v123 = v306[23];
        v148 = *&v306[8];
        v125 = vp::get_log(v146);
        v103 = os_log_type_enabled(v125, OS_LOG_TYPE_ERROR);
        if (v103)
        {
          if (v123 >= 0)
          {
            v149 = v147;
          }

          else
          {
            v149 = v148;
          }

          v150 = *v306;
          if (v123 >= 0)
          {
            v150 = v306;
          }

          *buf = 136316162;
          *&buf[4] = v150;
          *&buf[12] = 2080;
          if (v149)
          {
            v151 = " ";
          }

          else
          {
            v151 = "";
          }

          *&buf[14] = v151;
          *&buf[22] = 1024;
          LODWORD(v308) = j;
          WORD2(v308) = 2048;
          *(&v308 + 6) = v136;
          HIWORD(v308) = 2048;
          *v309 = v130;
          v129 = "%s%sfailed to build DSP graph - all output bus sample rates must be equal, but port %u has a sample rate of %lf, not matching %lf";
LABEL_247:
          _os_log_impl(&dword_2724B4000, v125, OS_LOG_TYPE_ERROR, v129, buf, 0x30u);
          LOBYTE(v123) = v306[23];
        }

LABEL_248:
        if ((v123 & 0x80) != 0)
        {
          v113 = *v306;
LABEL_250:
          operator delete(v113);
        }

        goto LABEL_251;
      }
    }

    v292 = 1;
    if (*(a1 + 228) == 1)
    {
      v138 = vp::get_log(v134);
      if (v101 != v130)
      {
        v103 = os_log_type_enabled(v138, OS_LOG_TYPE_ERROR);
        if (!v103)
        {
          goto LABEL_251;
        }

        v139 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v140 = buf[23];
        v106 = buf[23];
        v141 = *&buf[8];
        v108 = vp::get_log(v139);
        v103 = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);
        if (!v103)
        {
          goto LABEL_175;
        }

        if (v106 >= 0)
        {
          v142 = v140;
        }

        else
        {
          v142 = v141;
        }

        v143 = *buf;
        if (v106 >= 0)
        {
          v143 = buf;
        }

        if (v142)
        {
          v144 = " ";
        }

        else
        {
          v144 = "";
        }

        *v306 = 136315394;
        *&v306[4] = v143;
        *&v306[12] = 2080;
        *&v306[14] = v144;
        v112 = "%s%sfailed to build DSP graph - I/O bus sample rates of fixed block size graphs must be equal";
        goto LABEL_174;
      }

      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v178 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v179 = v306[23];
        v180 = *&v306[8];
        v181 = vp::get_log(v178);
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
        {
          if ((v179 & 0x80u) == 0)
          {
            v182 = v179;
          }

          else
          {
            v182 = v180;
          }

          if ((v306[23] & 0x80u) == 0)
          {
            v183 = v306;
          }

          else
          {
            v183 = *v306;
          }

          v184 = *(a1 + 224);
          v81 = v182 == 0;
          v185 = "";
          *buf = 136315906;
          *&buf[4] = v183;
          if (!v81)
          {
            v185 = " ";
          }

          *&buf[12] = 2080;
          *&buf[14] = v185;
          *&buf[22] = 1024;
          LODWORD(v308) = v184;
          WORD2(v308) = 2048;
          *(&v308 + 6) = v101;
          _os_log_impl(&dword_2724B4000, v181, OS_LOG_TYPE_DEFAULT, "%s%ssetting fixed slice duration using block size %u and sample rate %f", buf, 0x26u);
        }

        if (v306[23] < 0)
        {
          operator delete(*v306);
        }
      }

      v186 = *(a1 + 224);
      v291 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v291);
      v290 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      v165 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v290);
      v292 = 0;
LABEL_310:
      if (*(a1 + 364) == 1)
      {
        v187 = vp::get_log(v165);
        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
        {
          v188 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v189 = v306[23];
          v190 = *&v306[8];
          v191 = vp::get_log(v188);
          if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
          {
            if ((v189 & 0x80u) == 0)
            {
              v192 = v189;
            }

            else
            {
              v192 = v190;
            }

            if ((v306[23] & 0x80u) == 0)
            {
              v193 = v306;
            }

            else
            {
              v193 = *v306;
            }

            v81 = v192 == 0;
            v194 = *(a1 + 360);
            *buf = 136315650;
            *&buf[4] = v193;
            if (v81)
            {
              v195 = "";
            }

            else
            {
              v195 = " ";
            }

            *&buf[12] = 2080;
            *&buf[14] = v195;
            *&buf[22] = 1024;
            LODWORD(v308) = v194;
            _os_log_impl(&dword_2724B4000, v191, OS_LOG_TYPE_DEFAULT, "%s%ssetting sample rate conversion algorithm to %u", buf, 0x1Cu);
          }

          if (v306[23] < 0)
          {
            operator delete(*v306);
          }
        }

        v285 = v304;
        if (v304)
        {
          CFRetain(v304);
        }

        v196 = *(a1 + 360);
        CADSPGraphModelSetSampleRateConversionAlgorithm();
        v165 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v285);
      }

      if (*(a1 + 372) == 1)
      {
        v197 = vp::get_log(v165);
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
        {
          v198 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v199 = v306[23];
          v200 = *&v306[8];
          v201 = vp::get_log(v198);
          if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
          {
            if ((v199 & 0x80u) == 0)
            {
              v202 = v199;
            }

            else
            {
              v202 = v200;
            }

            if ((v306[23] & 0x80u) == 0)
            {
              v203 = v306;
            }

            else
            {
              v203 = *v306;
            }

            v81 = v202 == 0;
            v204 = *(a1 + 368);
            *buf = 136315650;
            *&buf[4] = v203;
            if (v81)
            {
              v205 = "";
            }

            else
            {
              v205 = " ";
            }

            *&buf[12] = 2080;
            *&buf[14] = v205;
            *&buf[22] = 1024;
            LODWORD(v308) = v204;
            _os_log_impl(&dword_2724B4000, v201, OS_LOG_TYPE_DEFAULT, "%s%ssetting sample rate conversion quality to %u", buf, 0x1Cu);
          }

          if (v306[23] < 0)
          {
            operator delete(*v306);
          }
        }

        v284 = v304;
        if (v304)
        {
          CFRetain(v304);
        }

        v206 = *(a1 + 368);
        CADSPGraphModelSetSampleRateConversionQuality();
        v165 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v284);
      }

      if (*(a1 + 377) == 1)
      {
        v207 = vp::get_log(v165);
        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          v208 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v209 = buf[23];
          v210 = *&buf[8];
          v211 = vp::get_log(v208);
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            if ((v209 & 0x80u) == 0)
            {
              v212 = v209;
            }

            else
            {
              v212 = v210;
            }

            v213 = *buf;
            if (buf[23] >= 0)
            {
              v213 = buf;
            }

            if (v212)
            {
              v214 = " ";
            }

            else
            {
              v214 = "";
            }

            *v306 = 136315394;
            *&v306[4] = v213;
            *&v306[12] = 2080;
            *&v306[14] = v214;
            _os_log_impl(&dword_2724B4000, v211, OS_LOG_TYPE_DEFAULT, "%s%senabling latency compensation", v306, 0x16u);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        *buf = v304;
        if (v304)
        {
          CFRetain(v304);
        }

        CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(buf);
        v283 = v304;
        if (v304)
        {
          CFRetain(v304);
        }

        CADSPGraphModelSetOptions();
        CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v283);
      }

      *buf = a1;
      *&buf[8] = &v304;
      *&buf[16] = v276;
      vp::vx::dsp::v2::Graph_Builder::exception_guard(a1, "enable DSP graph audio recorders", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::build(vp::vx::dsp::Graph_Macro_Generator const&,vp::vx::dsp::Graph_Feature_Filter const&)::$_0>, buf);
      v303 = 0;
      v282 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      *v306 = 0;
      v221 = CADSPGraphCreateWithModel();
      if (v221)
      {
        v305 = 0;
        *buf = 0;
        v301 = v221;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
        v302 = 1;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v305);
      }

      else
      {
        v256 = *v306;
        if (!*v306)
        {
          v271 = *MEMORY[0x277CBED08];
          v256 = CADSPErrorCreate();
          *v306 = v256;
        }

        v305 = 0;
        *buf = 0;
        v301 = v256;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
        v302 = 0;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v305);
      }

      v222 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v282);
      v223 = v302;
      if (v302)
      {
        v224 = v301;
        v301 = 0;
        *buf = v224;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v303);
        v225 = *buf;
        *buf = 0;
        v303 = v225;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
      }

      else
      {
        v226 = vp::get_log(v222);
        v227 = os_log_type_enabled(v226, OS_LOG_TYPE_ERROR);
        if (v227)
        {
          v228 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v229 = v306[23];
          v230 = *&v306[8];
          v231 = vp::get_log(v228);
          v227 = os_log_type_enabled(v231, OS_LOG_TYPE_ERROR);
          if (v227)
          {
            if ((v229 & 0x80u) == 0)
            {
              v232 = v229;
            }

            else
            {
              v232 = v230;
            }

            if ((v306[23] & 0x80u) == 0)
            {
              v233 = v306;
            }

            else
            {
              v233 = *v306;
            }

            *buf = 136315650;
            *&buf[4] = v233;
            if (v232)
            {
              v234 = " ";
            }

            else
            {
              v234 = "";
            }

            *&buf[12] = 2080;
            *&buf[14] = v234;
            *&buf[22] = 2112;
            *&v308 = v301;
            _os_log_impl(&dword_2724B4000, v231, OS_LOG_TYPE_ERROR, "%s%sfailed to build DSP graph - %@", buf, 0x20u);
          }

          if (v306[23] < 0)
          {
            operator delete(*v306);
          }
        }

        *a4 = 0;
        v235 = std::pmr::get_default_resource(v227);
        a4[2] = 0;
        a4[3] = 0;
        a4[1] = v235;
      }

      if (v302 == 1)
      {
        v236 = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v301);
        if (!v223)
        {
          goto LABEL_439;
        }
      }

      else
      {
        v236 = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v301);
        if (!v223)
        {
LABEL_439:
          CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v303);
          goto LABEL_252;
        }
      }

      if (*(a1 + 40) == 1)
      {
        v237 = vp::get_log(v236);
        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          v238 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v239 = v306[23];
          v240 = *&v306[8];
          v241 = vp::get_log(v238);
          if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
          {
            v242 = (a1 + 16);
            if ((v239 & 0x80u) == 0)
            {
              v243 = v239;
            }

            else
            {
              v243 = v240;
            }

            if ((v306[23] & 0x80u) == 0)
            {
              v244 = v306;
            }

            else
            {
              v244 = *v306;
            }

            if (v243)
            {
              v245 = " ";
            }

            else
            {
              v245 = "";
            }

            if (*(a1 + 39) < 0)
            {
              v242 = *v242;
            }

            *buf = 136315650;
            *&buf[4] = v244;
            *&buf[12] = 2080;
            *&buf[14] = v245;
            *&buf[22] = 2080;
            *&v308 = v242;
            _os_log_impl(&dword_2724B4000, v241, OS_LOG_TYPE_DEFAULT, "%s%ssetting %s resources path", buf, 0x20u);
          }

          if (v306[23] < 0)
          {
            operator delete(*v306);
          }
        }
      }

      v247 = *(a1 + 176);
      for (k = *(a1 + 184); v247 != k; v247 += 3)
      {
        v281 = v303;
        if (v303)
        {
          CFRetain(v303);
        }

        vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(a1, &v281, "property strip", 1, v247);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v281);
      }

      v249 = *(a1 + 152);
      for (m = *(a1 + 160); v249 != m; v249 += 3)
      {
        v280 = v303;
        if (v303)
        {
          CFRetain(v303);
        }

        vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(a1, &v280, "parameter strip", 0, v249);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v280);
      }

      v251 = *(a1 + 200);
      for (n = *(a1 + 208); v251 != n; v251 += 3)
      {
        v279 = v303;
        if (v303)
        {
          CFRetain(v303);
        }

        vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(a1, &v279, "property strip override", 1, v251);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v279);
      }

      v278 = v303;
      if (v303)
      {
        CFRetain(v303);
      }

      *v306 = &v278;
      *&v306[8] = a1;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK2vp2vx3dsp2v213Graph_Builder20set_parameter_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
      *&v308 = &__block_descriptor_tmp_8031;
      *(&v308 + 1) = v306;
      CADSPGraphEnumerateParameters();
      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v278);
      v277 = v303;
      if (v303)
      {
        CFRetain(v303);
      }

      *v306 = &v277;
      *&v306[8] = a1;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK2vp2vx3dsp2v213Graph_Builder19set_property_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
      *&v308 = &__block_descriptor_tmp_178;
      *(&v308 + 1) = v306;
      CADSPGraphEnumerateProperties();
      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v277);
      *v306 = 0;
      v252 = CADSPGraphInitialize();
      v253 = *v306;
      if (!v252 && !*v306)
      {
        v269 = *MEMORY[0x277CBED08];
        v253 = CADSPErrorCreate();
        *v306 = v253;
      }

      v305 = v253;
      if (!v253)
      {
        buf[8] = 1;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v305);
        vp::allocate_unique_noexcept<vp::vx::dsp::v2::Graph,vp::vx::io::Node::Block_Size_Policy &,CA::DSP::Reference<CA::DSP::Graph> &>(buf, *(a1 + 8), &v292, &v303);
      }

      v305 = 0;
      buf[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v305);
      *buf = 0;
      *v306 = 0;
      v301 = v253;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v306);
      v302 = 0;
      v257 = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      v258 = vp::get_log(v257);
      v259 = os_log_type_enabled(v258, OS_LOG_TYPE_ERROR);
      if (v259)
      {
        v260 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v261 = v306[23];
        v262 = v306[23];
        v263 = *&v306[8];
        v264 = vp::get_log(v260);
        v259 = os_log_type_enabled(v264, OS_LOG_TYPE_ERROR);
        if (v259)
        {
          if (v262 >= 0)
          {
            v265 = v261;
          }

          else
          {
            v265 = v263;
          }

          v266 = *v306;
          if (v262 >= 0)
          {
            v266 = v306;
          }

          *buf = 136315650;
          *&buf[4] = v266;
          if (v265)
          {
            v267 = " ";
          }

          else
          {
            v267 = "";
          }

          *&buf[12] = 2080;
          *&buf[14] = v267;
          *&buf[22] = 2112;
          *&v308 = v253;
          _os_log_impl(&dword_2724B4000, v264, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize DSP graph - %@", buf, 0x20u);
          LOBYTE(v262) = v306[23];
        }

        if ((v262 & 0x80) != 0)
        {
          operator delete(*v306);
        }
      }

      *a4 = 0;
      v268 = std::pmr::get_default_resource(v259);
      a4[2] = 0;
      a4[3] = 0;
      a4[1] = v268;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v301);
      goto LABEL_439;
    }

    if (*(a1 + 236) == 1)
    {
      v155 = vp::get_log(v134);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        v156 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v157 = v306[23];
        v158 = *&v306[8];
        v159 = vp::get_log(v156);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          if ((v157 & 0x80u) == 0)
          {
            v160 = v157;
          }

          else
          {
            v160 = v158;
          }

          if ((v306[23] & 0x80u) == 0)
          {
            v161 = v306;
          }

          else
          {
            v161 = *v306;
          }

          v162 = *(a1 + 232);
          v81 = v160 == 0;
          v163 = "";
          *buf = 136315906;
          *&buf[4] = v161;
          if (!v81)
          {
            v163 = " ";
          }

          *&buf[12] = 2080;
          *&buf[14] = v163;
          *&buf[22] = 1024;
          LODWORD(v308) = v162;
          WORD2(v308) = 2048;
          *(&v308 + 6) = v130;
          _os_log_impl(&dword_2724B4000, v159, OS_LOG_TYPE_DEFAULT, "%s%ssetting variable slice duration using block size %u and ouptut sample rate %f", buf, 0x26u);
        }

        if (v306[23] < 0)
        {
          operator delete(*v306);
        }
      }

      v164 = *(a1 + 232);
      v289 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v289);
      v288 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      v165 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v288);
      v166 = 2;
LABEL_291:
      v292 = v166;
      goto LABEL_310;
    }

    v167 = *(a1 + 244);
    v168 = vp::get_log(v134);
    if (v167 == 1)
    {
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        v169 = vp::get_log_context_info(v306, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v170 = v306[23];
        v171 = *&v306[8];
        v172 = vp::get_log(v169);
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
        {
          if ((v170 & 0x80u) == 0)
          {
            v173 = v170;
          }

          else
          {
            v173 = v171;
          }

          if ((v306[23] & 0x80u) == 0)
          {
            v174 = v306;
          }

          else
          {
            v174 = *v306;
          }

          v175 = *(a1 + 240);
          v81 = v173 == 0;
          v176 = "";
          *buf = 136315906;
          *&buf[4] = v174;
          if (!v81)
          {
            v176 = " ";
          }

          *&buf[12] = 2080;
          *&buf[14] = v176;
          *&buf[22] = 1024;
          LODWORD(v308) = v175;
          WORD2(v308) = 2048;
          *(&v308 + 6) = v101;
          _os_log_impl(&dword_2724B4000, v172, OS_LOG_TYPE_DEFAULT, "%s%ssetting variable slice duration using block size %u and input sample rate %f", buf, 0x26u);
        }

        if (v306[23] < 0)
        {
          operator delete(*v306);
        }
      }

      v177 = *(a1 + 240);
      v287 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v287);
      v286 = v304;
      if (v304)
      {
        CFRetain(v304);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      v165 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v286);
      v166 = 3;
      goto LABEL_291;
    }

    v103 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);
    if (!v103)
    {
      goto LABEL_251;
    }

    v215 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v216 = buf[23];
    v106 = buf[23];
    v217 = *&buf[8];
    v108 = vp::get_log(v215);
    v103 = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);
    if (!v103)
    {
      goto LABEL_175;
    }

    if (v106 >= 0)
    {
      v218 = v216;
    }

    else
    {
      v218 = v217;
    }

    v219 = *buf;
    if (v106 >= 0)
    {
      v219 = buf;
    }

    if (v218)
    {
      v220 = " ";
    }

    else
    {
      v220 = "";
    }

    *v306 = 136315394;
    *&v306[4] = v219;
    *&v306[12] = 2080;
    *&v306[14] = v220;
    v112 = "%s%sfailed to build DSP graph - block size information is missing";
LABEL_174:
    _os_log_impl(&dword_2724B4000, v108, OS_LOG_TYPE_ERROR, v112, v306, 0x16u);
    LOBYTE(v106) = buf[23];
    goto LABEL_175;
  }

  v102 = vp::get_log(0);
  v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
  if (!v103)
  {
    goto LABEL_251;
  }

  v104 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
  v105 = buf[23];
  v106 = buf[23];
  v107 = *&buf[8];
  v108 = vp::get_log(v104);
  v103 = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);
  if (v103)
  {
    if (v106 >= 0)
    {
      v109 = v105;
    }

    else
    {
      v109 = v107;
    }

    v110 = *buf;
    if (v106 >= 0)
    {
      v110 = buf;
    }

    if (v109)
    {
      v111 = " ";
    }

    else
    {
      v111 = "";
    }

    *v306 = 136315394;
    *&v306[4] = v110;
    *&v306[12] = 2080;
    *&v306[14] = v111;
    v112 = "%s%sfailed to build DSP graph - interpreter error";
    goto LABEL_174;
  }

LABEL_175:
  if ((v106 & 0x80) != 0)
  {
    v113 = *buf;
    goto LABEL_250;
  }

LABEL_251:
  *a4 = 0;
  v152 = std::pmr::get_default_resource(v103);
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v152;
LABEL_252:
  result = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v304);
  v154 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272651D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **CA::DSP::MutableGraphModel::Create(CA::DSP::MutableGraphModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = CADSPGraphModelCreateMutable();
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void vp::vx::dsp::v2::Graph_Builder::exception_guard(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[0] = 0;
  v9 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  vp::vx::dsp::v2::Graph_Builder::exception_guard(a1, a2, a3, a4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v9, 0);
}

void vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string::value_type **a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *a5, a5[1]);
  }

  else
  {
    v56 = *a5;
  }

  applesauce::CF::make_DataRef(&cf, &v56);
  applesauce::CF::make_DictionaryRef(&v55, cf);
  v9 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v10 = v55;
  log = vp::get_log(v9);
  if (v10)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(&cf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v13 = v54;
      v14 = v54;
      v15 = v53;
      v16 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (v14 >= 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        p_cf = cf;
        if (v14 >= 0)
        {
          p_cf = &cf;
        }

        if (v17)
        {
          v19 = " ";
        }

        else
        {
          v19 = "";
        }

        v20 = *(a5 + 23);
        v21 = *a5;
        LODWORD(v56.__r_.__value_.__l.__data_) = 136315650;
        *(v56.__r_.__value_.__r.__words + 4) = p_cf;
        if (v20 >= 0)
        {
          v22 = a5;
        }

        else
        {
          v22 = v21;
        }

        WORD2(v56.__r_.__value_.__r.__words[1]) = 2080;
        *(&v56.__r_.__value_.__r.__words[1] + 6) = v19;
        HIWORD(v56.__r_.__value_.__r.__words[2]) = 2080;
        v57 = v22;
        _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%ssetting %s", &v56, 0x20u);
        LOBYTE(v14) = v54;
      }

      if ((v14 & 0x80) != 0)
      {
        operator delete(cf);
      }
    }

    v23 = *(a1 + 48);
    v24 = *a2;
    cf = 0;
    StripWithResourcePath = CADSPGraphLoadStripWithResourcePath();
    v26 = cf;
    if (!StripWithResourcePath && !cf)
    {
      v49 = *MEMORY[0x277CBED08];
      v26 = CADSPErrorCreate();
      cf = v26;
    }

    v50 = v26;
    if (v26)
    {
      v50 = 0;
      v56.__r_.__value_.__s.__data_[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v50);
      v56.__r_.__value_.__r.__words[0] = 0;
      cf = 0;
      v50 = v26;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
      v51 = 0;
      v39 = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v56.__r_.__value_.__l.__data_);
      v40 = vp::get_log(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = vp::get_log_context_info(&cf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v42 = v54;
        v43 = v54;
        v44 = v53;
        v45 = vp::get_log(v41);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          if (v43 >= 0)
          {
            v46 = v42;
          }

          else
          {
            v46 = v44;
          }

          v47 = cf;
          if (v43 >= 0)
          {
            v47 = &cf;
          }

          LODWORD(v56.__r_.__value_.__l.__data_) = 136315906;
          *(v56.__r_.__value_.__r.__words + 4) = v47;
          WORD2(v56.__r_.__value_.__r.__words[1]) = 2080;
          if (v46)
          {
            v48 = " ";
          }

          else
          {
            v48 = "";
          }

          *(&v56.__r_.__value_.__r.__words[1] + 6) = v48;
          HIWORD(v56.__r_.__value_.__r.__words[2]) = 2080;
          v57 = a3;
          v58 = 2112;
          v59 = v26;
          _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_ERROR, "%s%sfailed to set %s on DSP graph - %@", &v56, 0x2Au);
          LOBYTE(v43) = v54;
        }

        if ((v43 & 0x80) != 0)
        {
          operator delete(cf);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v50);
    }

    else
    {
      v56.__r_.__value_.__s.__data_[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v50);
      v51 = 1;
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v27 = vp::get_log_context_info(&cf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v28 = v54;
    v29 = v54;
    v30 = v53;
    v31 = vp::get_log(v27);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      if (v29 >= 0)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = cf;
      if (v29 >= 0)
      {
        v33 = &cf;
      }

      if (v32)
      {
        v34 = " ";
      }

      else
      {
        v34 = "";
      }

      v35 = *(a5 + 23);
      v36 = *a5;
      LODWORD(v56.__r_.__value_.__l.__data_) = 136315650;
      *(v56.__r_.__value_.__r.__words + 4) = v33;
      if (v35 >= 0)
      {
        v37 = a5;
      }

      else
      {
        v37 = v36;
      }

      WORD2(v56.__r_.__value_.__r.__words[1]) = 2080;
      *(&v56.__r_.__value_.__r.__words[1] + 6) = v34;
      HIWORD(v56.__r_.__value_.__r.__words[2]) = 2080;
      v57 = v37;
      _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_ERROR, "%s%sfailed to load %s", &v56, 0x20u);
      LOBYTE(v29) = v54;
    }

    if ((v29 & 0x80) != 0)
    {
      operator delete(cf);
    }
  }

  if (v55)
  {
    CFRelease(v55);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_27265240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_27265243C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    applesauce::CF::DataRef::~DataRef(&a11);
    if (a20 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    a14 = 0;
    __cxa_end_catch();
    JUMPOUT(0x272652084);
  }

  JUMPOUT(0x27265242CLL);
}

void vp::allocate_unique_noexcept<vp::vx::dsp::v2::Graph,vp::vx::io::Node::Block_Size_Policy &,CA::DSP::Reference<CA::DSP::Graph> &>(uint64_t a1, uint64_t a2, unsigned int *a3, CFTypeRef *a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = xmmword_2727566C0;
  (*(*a2 + 16))(a2, 64, 8);
  v6 = *a3;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&cf, *a4);
  operator new();
}

void sub_2726527D4(void *a1)
{
  std::unique_ptr<vp::vx::dsp::v2::Graph,vp::Allocator_Delete<vp::vx::dsp::v2::Graph>>::reset[abi:ne200100](v1, 0);
  v4 = __cxa_begin_catch(a1);
  *v1 = 0;
  v1[1] = std::pmr::get_default_resource(v4);
  *v2 = 0;
  v2[1] = 0;

  __cxa_end_catch();
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::build(vp::vx::dsp::Graph_Macro_Generator const&,vp::vx::dsp::Graph_Feature_Filter const&)::$_1>(vp *a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = **(*a1 + 8);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(&__s, v1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v5 = BYTE7(v67);
    v6 = SBYTE7(v67);
    v7 = *(&__s + 1);
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_s = __s;
      if (v6 >= 0)
      {
        p_s = &__s;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = p_s;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sconnecting to RPB", buf, 0x16u);
      LOBYTE(v6) = BYTE7(v67);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__s);
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = &v60;
  v60 = Mutable;
  if (*(v1 + 40) == 1)
  {
    v13 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v13 = *v13;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v59, "Tuning Resources Path", v13);
  }

  if (*(v1 + 80) == 1)
  {
    v14 = (v1 + 56);
    if (*(v1 + 79) < 0)
    {
      v14 = *v14;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v59, "Temporary Directory Path", v14);
  }

  if (*(v1 + 112) == 1)
  {
    v15 = (v1 + 88);
    if (*(v1 + 111) < 0)
    {
      v15 = *v15;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v59, "Absolute '.dspg' File Path", v15);
  }

  if (*(v1 + 144) == 1)
  {
    v16 = (v1 + 120);
    if (*(v1 + 143) < 0)
    {
      v16 = *v16;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v59, "Literal '.dspg' Text", v16);
  }

  applesauce::CF::make_ArrayRef(&cf, (v1 + 152));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(&v59, "Absolute '.austrip' File Paths", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  applesauce::CF::make_ArrayRef(&v57, (v1 + 176));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(&v59, "Absolute '.propstrip' File Paths", &v57);
  if (v57)
  {
    CFRelease(v57);
  }

  applesauce::CF::make_ArrayRef(&v56, (v1 + 200));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(&v59, "Absolute '.propstrip' Override File Paths", &v56);
  if (v56)
  {
    CFRelease(v56);
  }

  v17 = (*(*v2 + 32))(v2);
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(&v59, "Block Size", v17);
  v18 = (*(*v2 + 40))(v2);
  if (v18 < 4)
  {
    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v59, "Block Size Policy", off_279E4A2E8[v18]);
  }

  memset(buf, 0, 24);
  std::vector<applesauce::CF::TypeRefPair>::reserve(buf, (*(v1 + 256) - *(v1 + 248)) >> 3);
  v19 = *(v1 + 248);
  for (i = *(v1 + 256); v19 != i; ++v19)
  {
    v21 = *v19;
    *__val = v21;
    v22 = bswap32(v21);
    *(&__s + 1) = v22;
    if ((v22 - 32) > 0x5E || ((v22 >> 8) - 32) > 0x5E || ((v22 << 8 >> 24) - 32) > 0x5E || ((v22 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v65, v21);
    }

    else
    {
      strcpy(&__s + 5, "'");
      LOBYTE(__s) = 39;
      std::string::basic_string[abi:ne200100]<0>(&v65, &__s);
    }

    v23 = *(&buf[0] + 1);
    if (*(&buf[0] + 1) >= *&buf[1])
    {
      v25 = (*(&buf[0] + 1) - *&buf[0]) >> 4;
      if ((v25 + 1) >> 60)
      {
        goto LABEL_100;
      }

      v26 = (*&buf[1] - *&buf[0]) >> 3;
      if (v26 <= v25 + 1)
      {
        v26 = v25 + 1;
      }

      if (*&buf[1] - *&buf[0] >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      *&v68 = buf;
      if (v27)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v27);
      }

      *&__s = 0;
      *(&__s + 1) = 16 * v25;
      v67 = (16 * v25);
      applesauce::CF::TypeRefPair::TypeRefPair<std::string,float &>((16 * v25), &v65, &__val[1]);
      *&v67 = v67 + 16;
      v28 = (*(&__s + 1) + *&buf[0] - *(&buf[0] + 1));
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(buf, *&buf[0], *(&buf[0] + 1), v28);
      v29 = *&buf[0];
      v30 = *&buf[1];
      *&buf[0] = v28;
      v52 = v67;
      *(buf + 8) = v67;
      *&v67 = v29;
      *(&v67 + 1) = v30;
      *&__s = v29;
      *(&__s + 1) = v29;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&__s);
      v24 = v52;
    }

    else
    {
      applesauce::CF::TypeRefPair::TypeRefPair<std::string,float &>(*(&buf[0] + 1), &v65, &__val[1]);
      v24 = v23 + 16;
    }

    *(&buf[0] + 1) = v24;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(buf);
  v55 = CFDictionaryRef;
  *&__s = buf;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&__s);
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::DictionaryRef>(&v59, "Parameters", &v55);
  CFRelease(CFDictionaryRef);
  memset(buf, 0, 24);
  std::vector<applesauce::CF::TypeRefPair>::reserve(buf, (*(v1 + 312) - *(v1 + 304)) >> 4);
  v32 = *(v1 + 304);
  for (j = *(v1 + 312); v32 != j; v32 += 16)
  {
    __val[0] = *v32;
    std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100](v62, *(v32 + 8));
    v34 = bswap32(__val[0]);
    *(&__s + 1) = v34;
    if ((v34 - 32) > 0x5E || ((v34 >> 8) - 32) > 0x5E || ((v34 << 8 >> 24) - 32) > 0x5E || ((v34 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v65, __val[0]);
    }

    else
    {
      strcpy(&__s + 5, "'");
      LOBYTE(__s) = 39;
      std::string::basic_string[abi:ne200100]<0>(&v65, &__s);
    }

    v35 = *(&buf[0] + 1);
    if (*(&buf[0] + 1) >= *&buf[1])
    {
      v37 = (*(&buf[0] + 1) - *&buf[0]) >> 4;
      if ((v37 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v38 = (*&buf[1] - *&buf[0]) >> 3;
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      if (*&buf[1] - *&buf[0] >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v39 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      *&v68 = buf;
      if (v39)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v39);
      }

      *&__s = 0;
      *(&__s + 1) = 16 * v37;
      v67 = (16 * v37);
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string,applesauce::CF::DictionaryRef &,void,0>((16 * v37), &v65, v62);
      *&v67 = v67 + 16;
      v40 = (*(&__s + 1) + *&buf[0] - *(&buf[0] + 1));
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(buf, *&buf[0], *(&buf[0] + 1), v40);
      v41 = *&buf[0];
      v42 = *&buf[1];
      *&buf[0] = v40;
      v53 = v67;
      *(buf + 8) = v67;
      *&v67 = v41;
      *(&v67 + 1) = v42;
      *&__s = v41;
      *(&__s + 1) = v41;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&__s);
      v36 = v53;
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string,applesauce::CF::DictionaryRef &,void,0>(*(&buf[0] + 1), &v65, v62);
      v36 = v35 + 16;
    }

    *(&buf[0] + 1) = v36;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v62[0])
    {
      CFRelease(v62[0]);
    }
  }

  v43 = applesauce::CF::details::make_CFDictionaryRef(buf);
  v54 = v43;
  *&__s = buf;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&__s);
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::DictionaryRef>(&v59, "Properties", &v54);
  CFRelease(v43);
  if (*(v1 + 364) == 1)
  {
    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(&v59, "SRC Algorithm", *(v1 + 360));
  }

  if (*(v1 + 372) == 1)
  {
    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(&v59, "SRC Quality", *(v1 + 368));
  }

  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(&v59, "Enable Audio Recorders", *(v1 + 376));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(&v59, "Enable Latency Compensation", *(v1 + 377));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(&v59, "Connect RPB", *(v1 + 378));
  memset(buf, 0, sizeof(buf));
  v44 = localtime((v1 + 384));
  strftime(buf, 0x40uLL, "%Y-%m-%d %H:%M:%S", v44);
  *__val = CFStringCreateWithBytes(0, "Time Stamp", 10, 0x8000100u, 0);
  if (!*__val)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRef::TypeRef(&value, buf);
  if (!value)
  {
    v62[1] = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    __s = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    LODWORD(v65.__r_.__value_.__l.__data_) = 134217984;
    *(v65.__r_.__value_.__r.__words + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_100:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  CFDictionarySetValue(*v59, *__val, value);
  if (value)
  {
    CFRelease(value);
  }

  if (*__val)
  {
    CFRelease(*__val);
  }

  v45 = v60;
  if (v60)
  {
    CFRetain(v60);
    *&__s = v45;
    v46 = CFGetTypeID(v45);
    if (v46 != CFDictionaryGetTypeID())
    {
      v51 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v51, "Could not construct");
    }
  }

  v47 = v2[3];
  v48 = *(v47 + 80);
  *(v47 + 80) = v45;
  *&__s = v48;
  *(v2[3] + 88) = 1;
  if (v48)
  {
    CFRelease(v48);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  v49 = *MEMORY[0x277D85DE8];
}