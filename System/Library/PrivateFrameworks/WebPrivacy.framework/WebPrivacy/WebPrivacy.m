uint64_t WebPrivacy::Client::shared(WebPrivacy::Client *this)
{
  if (WebPrivacy::Client::shared(void)::onceToken != -1)
  {
    WebPrivacy::Client::shared();
  }

  return WebPrivacy::Client::shared(void)::sharedInstance;
}

WebPrivacy::Client *WebPrivacy::Client::Client(WebPrivacy::Client *this)
{
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  *this = dispatch_queue_create("com.apple.WebPrivacy.XPC", 0);
  *(this + 1) = v2;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 21) = 850045863;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 217) = 0u;
  *(this + 248) = 0u;
  *(this + 50) = 0;
  *(this + 49) = this + 400;
  *(this + 30) = 850045863;
  *(this + 37) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 39) = 0;
  *(this + 38) = this + 312;
  *(this + 40) = 0;
  *(this + 41) = 850045863;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 424, "");
  *(this + 448) = 0;
  *(this + 456) = 0;
  return this;
}

void sub_273D2115C(_Unwind_Exception *a1)
{
  std::__tree<Backend::RemoteList>::destroy(v6, *(v1 + 400));
  std::mutex::~mutex(v8);
  std::__tree<Backend::RemoteList>::destroy(v7, *(v1 + 312));
  std::mutex::~mutex(v5);
  std::mutex::~mutex(v4);
  std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::~__hash_table(v1 + 88);

  std::mutex::~mutex(v2);
  Platform::WorkDispatcher::~WorkDispatcher(v1);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t WebPrivacy::Client::getList(dispatch_queue_t *a1, char a2, char *a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(*a1);
  LOBYTE(v12) = a2;
  *(&v12 + 1) = a1;
  v13 = *a3;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v14, a4);
  v8 = *a1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = ___ZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0cvU13block_pointerFvvEEv_block_invoke;
  v15[3] = &__block_descriptor_88_ea8_32c153_ZTSKZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEE3__0_e5_v8__0l;
  v16 = v12;
  v17 = v13;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v18, v14);
  v9 = MEMORY[0x2743DC460](v15);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v18);
  dispatch_async(v8, v9);

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v14);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void WebPrivacy::Client::scheduleListUpdateWithNotification(uint64_t a1, unsigned __int8 a2)
{
  v9 = a2;
  dispatch_assert_queue_V2(*a1);
  std::mutex::lock((a1 + 328));
  std::__tree<Backend::RemoteList>::__emplace_unique_key_args<Backend::RemoteList,Backend::RemoteList const&>(a1 + 392, &v9);
  v4 = v3;
  std::mutex::unlock((a1 + 328));
  if (v4)
  {
    v5 = dispatch_time(0, 1000000000);
    v6 = *a1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListE_block_invoke;
    v7[3] = &__block_descriptor_41_e5_v8__0l;
    v7[4] = a1;
    v8 = v9;
    dispatch_after(v5, v6, v7);
  }
}

uint64_t std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ___ZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v21 = v2;
  v22 = v3;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v23, a1 + 56);
  if (*(a1 + 48) == 1)
  {
    v5 = WebPrivacy::Client::clientNameForUserAgent(v2);
    v17 = v21;
    v18 = v22;
    if (v24)
    {
      if (v24 == v23)
      {
        v20 = v19;
        (*(*v24 + 24))(v24, v19);
      }

      else
      {
        v20 = v24;
        v24 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    if (*(v2 + 52))
    {
      v35 = v2;
      _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client7getListES2_ONS9_18ListRequestOptionsEONS_8functionIFvNS9_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEC1B8nn200100IJKS2_KS8_SP_ELi0EEEDpOT_(v25, v4, v5, &v17);
      _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_7getListES8_ONS1_18ListRequestOptionsEONSB_8functionIFvNS1_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSW_DpOT0_E_NSB_5tupleIJS8_SH_SX_EEEEEDcSW_RKT0_(&v35, v25);
      _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client7getListES2_ONS9_18ListRequestOptionsEONS_8functionIFvNS9_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EED1Ev(v25);
    }

    else
    {
      v6 = WebPrivacy::Client::ensureConnection(v2);
      v7 = *v2;
      v8 = v6;
      v9 = v7;
      _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client7getListES2_ONS9_18ListRequestOptionsEONS_8functionIFvNS9_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEC1B8nn200100IJKS2_KS8_SP_ELi0EEEDpOT_(v25, v4, v5, &v17);
      v10 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(v25, &__p);
      v31 = v28;
      v32 = v29;
      std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v33, v30);
      v35 = v31;
      v36 = v32;
      if (v34)
      {
        if (v34 == v33)
        {
          v38 = v37;
          (*(*v34 + 24))(v34, v37);
        }

        else
        {
          v38 = v34;
          v34 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      v11 = malloc_type_malloc(0x50uLL, 0x10E0040B0FE2B58uLL);
      *v11 = MEMORY[0x277D85DC8];
      v11[1] = 50331650;
      v11[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client7getListESD_ONS7_18ListRequestOptionsEONSF_8functionIFvNS7_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlS10_DpOT0_E_clIRKS11_JRSE_RSM_EEEDaS10_S19_EUlS3_E_EES5_SZ_ENUlPvS3_E_8__invokeES1I_S3_;
      v11[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client7getListESD_ONS7_18ListRequestOptionsEONSF_8functionIFvNS7_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlS10_DpOT0_E_clIRKS11_JRSE_RSM_EEEDaS10_S19_EUlS3_E_EES5_SZ_E10descriptor;
      v11[4] = v35;
      *(v11 + 40) = v36;
      v12 = v38;
      if (v38)
      {
        if (v38 == v37)
        {
          v11[9] = v11 + 6;
          (*(*v12 + 24))(v12);
        }

        else
        {
          v11[9] = v38;
          v38 = 0;
        }
      }

      else
      {
        v11[9] = 0;
      }

      v13 = MEMORY[0x2743DC460](v11);

      std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v37);
      v14 = MEMORY[0x2743DC460](v13);
      xpc_connection_send_message_with_reply(v8, v10, v9, v14);

      std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v33);
      std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v30);
      if (v27 < 0)
      {
        operator delete(__p);
      }
    }

    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v19);
  }

  else
  {
    WebPrivacy::Client::getList(Backend::RemoteList,WebPrivacy::ListRequestOptions &&,std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)> &&)::$_0::operator() const(void)::{lambda(std::function)#1}::operator()(&v21, 0);
  }

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v23);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D219AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client7getListES2_ONS9_18ListRequestOptionsEONS_8functionIFvNS9_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EED1Ev(va);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v14);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v13);
  _Unwind_Resume(a1);
}

uint64_t WebPrivacy::Client::getList(Backend::RemoteList,WebPrivacy::ListRequestOptions &&,std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)> &&)::$_0::operator() const(void)::{lambda(std::function)#1}::operator()(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
LABEL_4:
        WebPrivacy::Client::getList(Backend::RemoteList,WebPrivacy::ListRequestOptions &&,std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)> &&)::$_0::operator() const(void)::{lambda(std::function)#1}::operator()();
      }

      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    LOBYTE(v33) = a2;
    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v34, a1 + 16);
    v4 = *(v3 + 8);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3321888768;
    v24 = ___ZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
    v25 = &__block_descriptor_72_ea8_32c183_ZTSKZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_EUlvE__e5_v8__0l;
    v26 = v33;
    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](&v27, v34);
    v5 = MEMORY[0x2743DC460](&v22);
    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&v27);
    dispatch_async(v4, v5);

    v6 = v34;
    goto LABEL_26;
  }

  v18 = *a1;
  v19 = *(a1 + 8);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v20, a1 + 16);
  if (*(v3 + 416))
  {
    v33 = v3;
    LOBYTE(v22) = *(a1 + 8);
    v23 = v18;
    LOBYTE(v24) = v19;
    if (v21)
    {
      if (v21 == v20)
      {
        v28 = &v25;
        (*(*v21 + 3))();
      }

      else
      {
        v28 = v21;
        v21 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC7GetListENS4_12GetListReplyEJRKN7Backend10RemoteListEZZZNS2_7getListES8_ONS1_18ListRequestOptionsEONSt3__18functionIFvNS1_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvENKUlSF_E_clESF_EUlOT_E_EEEvDpOT1_EUlSP_DpOT0_E_NSD_5tupleIJS8_SQ_EEEEEDcSP_RKT0_(&v33, &v22);
    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&v25);
  }

  else
  {
    v7 = WebPrivacy::Client::ensureConnection(v3);
    v8 = *v3;
    v9 = v7;
    v10 = v8;
    LOBYTE(v22) = *(a1 + 8);
    v23 = v18;
    LOBYTE(v24) = v19;
    if (v21)
    {
      if (v21 == v20)
      {
        v28 = &v25;
        (*(*v21 + 3))();
      }

      else
      {
        v28 = v21;
        v21 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v11 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(&v22);
    v29 = v23;
    v30 = v24;
    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v31, &v25);
    v33 = v29;
    v34[0] = v30;
    if (v32)
    {
      if (v32 == v31)
      {
        v36 = v35;
        (*(*v32 + 24))();
      }

      else
      {
        v36 = v32;
        v32 = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    v12 = malloc_type_malloc(0x50uLL, 0x10E0040B0FE2B58uLL);
    *v12 = MEMORY[0x277D85DC8];
    v12[1] = 50331650;
    v12[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_7GetListENS8_12GetListReplyEJKN7Backend10RemoteListEZZZNS7_6Client7getListESD_ONS7_18ListRequestOptionsEONSt3__18functionIFvNS7_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvENKUlSK_E_clESK_EUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSU_DpOT0_E_clIRKSV_JRSE_EEEDaSU_S13_EUlS3_E_EES5_ST_ENUlPvS3_E_8__invokeES1B_S3_;
    v12[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_7GetListENS8_12GetListReplyEJKN7Backend10RemoteListEZZZNS7_6Client7getListESD_ONS7_18ListRequestOptionsEONSt3__18functionIFvNS7_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvENKUlSK_E_clESK_EUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSU_DpOT0_E_clIRKSV_JRSE_EEEDaSU_S13_EUlS3_E_EES5_ST_E10descriptor;
    v12[4] = v33;
    *(v12 + 40) = v34[0];
    v13 = v36;
    if (v36)
    {
      if (v36 == v35)
      {
        v12[9] = v12 + 6;
        (*(*v13 + 24))(v13);
      }

      else
      {
        v12[9] = v36;
        v36 = 0;
      }
    }

    else
    {
      v12[9] = 0;
    }

    v14 = MEMORY[0x2743DC460](v12);

    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v35);
    v15 = MEMORY[0x2743DC460](v14);
    xpc_connection_send_message_with_reply(v9, v11, v10, v15);

    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v31);
    std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&v25);
  }

  v6 = v20;
LABEL_26:
  result = std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v6);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D21E88(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

id WebPrivacy::Client::ensureConnection(WebPrivacy::Client *this)
{
  v13 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (!v2)
  {
    v3 = WPOSLogXPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "com.apple.webprivacyd";
      _os_log_impl(&dword_273D20000, v3, OS_LOG_TYPE_INFO, "Connecting to system daemon: %s", buf, 0xCu);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.webprivacyd", *this, 0);
    v5 = *(this + 10);
    *(this + 10) = mach_service;

    v6 = *(this + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3321888768;
    handler[2] = ___ZN10WebPrivacy6Client16ensureConnectionEv_block_invoke;
    handler[3] = &__block_descriptor_40_ea8_32c51_ZTSKZN10WebPrivacy6Client16ensureConnectionEvE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
    handler[4] = this;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(*(this + 10));
    v2 = *(this + 10);
  }

  v7 = v2;
  std::mutex::unlock((this + 16));
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t WPOSLogXPC(void)
{
  if (WPOSLogXPC(void)::onceToken != -1)
  {
    WPOSLogXPC();
  }

  return WPOSLogXPC(void)::log;
}

uint64_t ___Z10WPOSLogXPCv_block_invoke()
{
  WPOSLogXPC(void)::log = os_log_create("com.apple.WebPrivacy", "XPC");

  return MEMORY[0x2821F96F8]();
}

id WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(unsigned __int8 *a1)
{
  values = xpc_uint64_create(6uLL);
  v2 = xpc_dictionary_create(WebPrivacy::messageNameKey, &values, 1uLL);
  empty = xpc_array_create_empty();
  v4 = *a1;
  v5 = empty;
  v6 = xpc_uint64_create(v4);
  xpc_array_append_value(v5, v6);

  xpc_dictionary_set_value(v2, "args", v5);

  return v2;
}

uint64_t __copy_helper_block_ea8_32c153_ZTSKZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v2;
  return std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](a1 + 56, a2 + 56);
}

uint64_t WebPrivacy::XPC::decode<WebPrivacy::MessageError>(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  if (!xpc_array_get_count(v3))
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v4 = xpc_array_get_value(v3, 0);
  v5 = MEMORY[0x2743DC6F0]();
  v6 = MEMORY[0x277D864C8];

  if (v5 != v6)
  {
    goto LABEL_6;
  }

  uint64 = xpc_array_get_uint64(v3, 0);
  if (uint64 >= 4u)
  {
    goto LABEL_6;
  }

  *a2 = uint64;
  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t WebPrivacy::Client::clientNameForUserAgent(WebPrivacy::Client *this)
{
  v2 = *(this + 447);
  if (v2 < 0)
  {
    v2 = *(this + 54);
  }

  v3 = (this + 424);
  if (!v2)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];

    if (![v5 length])
    {
      v6 = [MEMORY[0x277CCAC38] processInfo];
      v7 = [v6 processName];

      v5 = v7;
    }

    std::string::basic_string[abi:nn200100]<0>(&v9, [v5 UTF8String]);
    if (*(this + 447) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v9;
    *(this + 55) = v10;
  }

  return this + 424;
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_7GetListENS8_12GetListReplyEJKN7Backend10RemoteListEZZZNS7_6Client7getListESD_ONS7_18ListRequestOptionsEONSt3__18functionIFvNS7_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvENKUlSK_E_clESK_EUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSU_DpOT0_E_clIRKSV_JRSE_EEEDaSU_S13_EUlS3_E_EES5_ST_ENUlPvS3_E_8__invokeES1B_S3_(uint64_t a1, void *a2)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(a2, v3);
  _ZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_(a1 + 32, v3);
  if (v5 == 1)
  {
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_273D22488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (MEMORY[0x2743DC6F0]() == MEMORY[0x277D86468])
  {
    v8[0] = 0;
    v9 = 0uLL;
    v4 = xpc_dictionary_get_array(v3, "args");
    v5 = WebPrivacy::XPC::Message<(MessageName)7,WebPrivacy::MessageError,std::shared_ptr<Platform::SharedMemory>>::decode(v8, v4);

    if (v5)
    {
      v6 = v8[0];
      *(a2 + 8) = v9;
      *a2 = v6;
      *(a2 + 24) = 1;
    }

    else
    {
      v7 = *(&v9 + 1);
      *a2 = 0;
      *(a2 + 24) = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void sub_273D22570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t WebPrivacy::XPC::Message<(MessageName)7,WebPrivacy::MessageError,std::shared_ptr<Platform::SharedMemory>>::decode(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) == 2)
  {
    v4 = WebPrivacy::XPC::Message<(MessageName)7,WebPrivacy::MessageError,std::shared_ptr<Platform::SharedMemory>>::decodeOne<0u>(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WebPrivacy::XPC::Message<(MessageName)7,WebPrivacy::MessageError,std::shared_ptr<Platform::SharedMemory>>::decodeOne<0u>(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (WebPrivacy::XPC::decode<WebPrivacy::MessageError>(v3, a1))
  {
    v4 = WebPrivacy::XPC::Message<(MessageName)7,WebPrivacy::MessageError,std::shared_ptr<Platform::SharedMemory>>::decodeOne<1u>(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WebPrivacy::XPC::Message<(MessageName)7,WebPrivacy::MessageError,std::shared_ptr<Platform::SharedMemory>>::decodeOne<1u>(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) <= 1)
  {

LABEL_6:
    v8 = v3;
    if (xpc_array_get_count(v8) <= 1)
    {
    }

    else
    {
      v9 = xpc_array_get_value(v8, 1uLL);
      v10 = MEMORY[0x2743DC6F0]();
      v11 = MEMORY[0x277D864B8];

      if (v10 == v11)
      {
        v12 = xpc_array_get_value(v8, 1uLL);
        Platform::SharedMemory::map(v12, &v17);
        v13 = v17;
        v17 = 0uLL;
        v14 = *(a1 + 16);
        *(a1 + 8) = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          if (*(&v17 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v17 + 1));
          }
        }

        goto LABEL_12;
      }
    }

    v15 = 0;
    goto LABEL_15;
  }

  v4 = xpc_array_get_value(v3, 1uLL);
  v5 = MEMORY[0x2743DC6F0]();
  v6 = MEMORY[0x277D864B0];

  if (v5 != v6)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

LABEL_12:

  v15 = 1;
LABEL_15:

  return v15;
}

void Platform::SharedMemory::map(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (MEMORY[0x2743DC6F0](v3) == MEMORY[0x277D864B8])
    {
      region = 0;
      if (xpc_shmem_map(v4, &region))
      {
        operator new();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void _ZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_(uint64_t a1, char *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (a2[24] != 1 || *a2 != 0)
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = 0;
    v13 = 0;
    if (!a2[24])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  WebPrivacy::Client::scheduleListUpdateWithNotification(*a1, *(a1 + 8));
  v9 = v4;
  v10 = *(a1 + 8);
  v11 = 0;
  v13 = 0;
  if (a2[24])
  {
LABEL_6:
    v11 = *a2;
    v12 = *(a2 + 8);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v13 = 1;
  }

LABEL_7:
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v14, a1 + 16);
  v6 = *(v4 + 8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = ___ZZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
  v15[3] = &__block_descriptor_112_ea8_32c242_ZTSKZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_EUlvE__e5_v8__0l;
  v15[4] = v9;
  v16 = v10;
  v17 = 0;
  v19 = 0;
  if (v13 == 1)
  {
    v17 = v11;
    v18 = v12;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v19 = 1;
  }

  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v20, v14);
  v7 = MEMORY[0x2743DC460](v15);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v20);
  if (v19 == 1 && *(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v18 + 1));
  }

  dispatch_async(v6, v7);

  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v14);
  if (v13 == 1 && *(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v12 + 1));
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_273D22ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a29 == 1)
  {
    if (a28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a28);
    }
  }

  _ZZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_ENUlvE_D1Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c242_ZTSKZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_EUlvE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v2;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *(a1 + 48) = *(a2 + 48);
    v3 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 72) = 1;
  }

  return std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](a1 + 80, a2 + 80);
}

void sub_273D22B88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1)
  {
    v3 = *(v1 + 64);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t *std::__tree<Backend::RemoteList>::__emplace_unique_key_args<Backend::RemoteList,Backend::RemoteList const&>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 25);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<Backend::RemoteList>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client7getListES2_ONS9_18ListRequestOptionsEONS_8functionIFvNS9_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEC1B8nn200100IJKS2_KS8_SP_ELi0EEEDpOT_(uint64_t a1, _BYTE *a2, __int128 *a3, uint64_t *a4)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  v8 = *a4;
  *(a1 + 40) = *(a4 + 8);
  *(a1 + 32) = v8;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](a1 + 48, (a4 + 2));
  return a1;
}

id WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(unsigned __int8 *a1, uint64_t a2)
{
  values = xpc_uint64_create(4uLL);
  v4 = xpc_dictionary_create(WebPrivacy::messageNameKey, &values, 1uLL);
  empty = xpc_array_create_empty();
  v6 = *a1;
  v7 = empty;
  v8 = xpc_uint64_create(v6);
  xpc_array_append_value(v7, v8);

  v9 = v7;
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = xpc_string_create(v10);
  xpc_array_append_value(v9, v11);

  xpc_dictionary_set_value(v4, "args", v9);

  return v4;
}

uint64_t WPOSLogServer(void)
{
  if (WPOSLogServer(void)::onceToken != -1)
  {
    WPOSLogServer();
  }

  return WPOSLogServer(void)::log;
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client7getListESD_ONS7_18ListRequestOptionsEONSF_8functionIFvNS7_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlS10_DpOT0_E_clIRKS11_JRSE_RSM_EEEDaS10_S19_EUlS3_E_EES5_SZ_ENUlPvS3_E_8__invokeES1I_S3_(uint64_t a1, void *a2)
{
  v5 = a2;
  updated = WebPrivacy::XPC::decode<WebPrivacy::XPC::UpdateListReply>(v5);
  if ((updated & 0x100) != 0)
  {
    v4 = updated;
  }

  else
  {
    v4 = 1;
  }

  WebPrivacy::Client::getList(Backend::RemoteList,WebPrivacy::ListRequestOptions &&,std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)> &&)::$_0::operator() const(void)::{lambda(std::function)#1}::operator()(a1 + 32, v4);
}

uint64_t WebPrivacy::XPC::decode<WebPrivacy::XPC::UpdateListReply>(void *a1)
{
  v1 = a1;
  if (MEMORY[0x2743DC6F0]() == MEMORY[0x277D86468])
  {
    v6 = 0;
    v4 = xpc_dictionary_get_array(v1, "args");
    v2 = WebPrivacy::XPC::Message<(MessageName)5,WebPrivacy::MessageError>::decode(&v6, v4);

    if (v2)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v3 | (v2 << 8);
}

uint64_t WebPrivacy::XPC::Message<(MessageName)5,WebPrivacy::MessageError>::decode(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) == 1)
  {
    v4 = WebPrivacy::XPC::decode<WebPrivacy::MessageError>(v3, a1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 32);
    v4 = *(a1 + 64);
    v6 = *(a1 + 56);
    v3 = v6;
    v7 = v4;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v5 = *(a1 + 48);
    if (v3)
    {
      Platform::SharedMemory::view(v3);
      std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::operator()(a1 + 80, v5);
      WebPrivacy::Client::updateCachedListData(v2, *(a1 + 40), &v6);
      v4 = v7;
    }

    else
    {
      std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::operator()(a1 + 80, v5);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::operator()(a1 + 80, 1);
  }
}

void sub_273D23364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::operator()(uint64_t a1, char a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return WebPrivacy::createStorageAccessPromptQuirksData(v4);
}

void WebPrivacy::createStorageAccessPromptQuirksData(uint64_t *a1@<X0>, WPStorageAccessPromptQuirksData **a2@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = WebPrivacy::rawJSONToDictionaries(a1);
    if ([v3 count])
    {
      v4 = [[WPStorageAccessPromptQuirksData alloc] initWithQuirks:v3];
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = @"List data not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v5 = [v9 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v10];

      v4 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"List data not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v6 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v7];

    *a2 = 0;
    a2[1] = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

id WebPrivacy::rawJSONToDictionaries(uint64_t *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6[0] = &unk_2882BD418;
  v6[1] = &v5;
  v6[3] = v6;
  WebPrivacy::enumerateListRules(a1, v6, 0);
  std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v6);
  v2 = v5;
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_273D23634(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void WebPrivacy::enumerateListRules(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = a1[1];
  if (v3 >= 0x49)
  {
    v7 = 72;
    while (v7 < v3)
    {
      v8 = *a1;
      v9 = v7;
      while (*(v8 + v9))
      {
        if (*(v8 + v9) == 10)
        {
          v10 = 0;
          goto LABEL_11;
        }

        if (v3 == ++v9)
        {
          v10 = 0;
          v9 = v3;
          goto LABEL_11;
        }
      }

      v10 = 1;
LABEL_11:
      v11 = (v8 + v7);
      if (*v11 != 35 && v9 != v7 || a3 != 0)
      {
        v14 = a1[1];
        v15 = v9 - v7;
        v17 = v14 < v7 || v9 > v14;
        v18 = !v17;
        if (v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        if (!v18)
        {
          v11 = 0;
        }

        v23[0] = v11;
        v23[1] = v19;
        v20 = *(a2 + 24);
        if (!v20)
        {
          v21 = std::__throw_bad_function_call[abi:nn200100]();
          std::__function::__func<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(v21, v22);
          return;
        }

        (*(*v20 + 48))(v20, v23);
      }

      v7 = v9 + 1;
      if (v10)
      {
        return;
      }
    }
  }
}

void std::__function::__func<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCAAA0];
  v6 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v7 = [v6 dataUsingEncoding:4];
  v13 = 0;
  v8 = [v5 JSONObjectWithData:v7 options:0 error:&v13];
  v9 = v13;
  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || v9)
  {
    v12 = WPOSLogAPI();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(v9, v12);
    }
  }

  else
  {
    [**(a1 + 8) addObject:v11];
  }

  objc_autoreleasePoolPop(v4);
}

id Platform::ArrayView<unsigned char>::copyToNSString(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*a1 length:a1[1] encoding:4];

  return v1;
}

uint64_t std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void WebPrivacy::createStorageAccessUserAgentStringQuirksData(uint64_t *a1@<X0>, WPStorageAccessUserAgentStringQuirksData **a2@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = WebPrivacy::rawJSONToDictionaries(a1);
    if ([v3 count])
    {
      v4 = [[WPStorageAccessUserAgentStringQuirksData alloc] initWithQuirks:v3];
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      v13[0] = @"List data not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v5 = [v9 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v10];

      v4 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"List data not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v6 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v7];

    *a2 = 0;
    a2[1] = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

BOOL WebPrivacy::Client::updateCachedListData(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v26 = a2;
  if (!*a3)
  {
    v23 = 0;
    goto LABEL_28;
  }

  std::mutex::lock((a1 + 168));
  memset(v30, 0, 14);
  v27 = &v26;
  v5 = std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__emplace_unique_key_args<Backend::RemoteList,std::piecewise_construct_t const&,std::tuple<Backend::RemoteList const&>,std::tuple<>>((a1 + 88), &v26);
  v6 = v5[3];
  v7 = v5[4];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6 || (v27 = Platform::SharedMemory::view(v6), v28 = v8, (Header = WebPrivacy::getHeader(&v27)) == 0))
  {
    v11 = 0;
    v10 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = *(Header + 34);
  v11 = *(Header + 42) | (*(Header + 46) << 32);
  if (v7)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

LABEL_10:
  v30[0] = v10;
  LODWORD(v30[1]) = v11;
  WORD2(v30[1]) = WORD2(v11);
  v27 = &v26;
  v12 = std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__emplace_unique_key_args<Backend::RemoteList,std::piecewise_construct_t const&,std::tuple<Backend::RemoteList const&>,std::tuple<>>((a1 + 88), &v26);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = v12[4];
  *(v12 + 3) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v27 = &v26;
  v15 = std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__emplace_unique_key_args<Backend::RemoteList,std::piecewise_construct_t const&,std::tuple<Backend::RemoteList const&>,std::tuple<>>((a1 + 88), &v26);
  v16 = v15[3];
  v17 = v15[4];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v27 = Platform::SharedMemory::view(v16);
    v28 = v18;
    v19 = WebPrivacy::getHeader(&v27);
    if (v19)
    {
      v20 = *(v19 + 34);
      v21 = *(v19 + 42) | (*(v19 + 46) << 32);
      if (!v17)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  v21 = 0;
  v20 = 0;
  if (v17)
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

LABEL_20:
  *v29 = v20;
  *&v29[8] = v21;
  *&v29[12] = WORD2(v21);
  v23 = v20 != v30[0] || *&v29[6] != *(v30 + 6);
  std::mutex::unlock((a1 + 168));
LABEL_28:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t **std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__emplace_unique_key_args<Backend::RemoteList,std::piecewise_construct_t const&,std::tuple<Backend::RemoteList const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t WebPrivacy::getHeader(void *a1)
{
  if (a1[1] >= 0x49uLL)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

void __destroy_helper_block_ea8_32c242_ZTSKZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_EUlvE_(uint64_t a1)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](a1 + 80);
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }
}

void Platform::dataToBase64String(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*a1 length:a1[1] freeWhenDone:0];
  v3 = [v7 base64EncodedStringWithOptions:0];

  v8 = v3;
  v4 = [v3 cStringUsingEncoding:4];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

uint64_t WPOSLogAPI(void)
{
  if (WPOSLogAPI(void)::onceToken != -1)
  {
    WPOSLogAPI();
  }

  return WPOSLogAPI(void)::log;
}

uint64_t ___Z10WPOSLogAPIv_block_invoke()
{
  WPOSLogAPI(void)::log = os_log_create("com.apple.WebPrivacy", "API");

  return MEMORY[0x2821F96F8]();
}

void std::__function::__func<WebPrivacy::createFingerprintingScripts(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createFingerprintingScripts(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  context = objc_autoreleasePoolPush();
  v4 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v5 = [v4 componentsSeparatedByString:@" "];

  if ([v5 count])
  {
    v17 = [v5 objectAtIndexedSubscript:0];
    if ([v17 length])
    {
      v16 = a1;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      for (i = 1; i < [v5 count]; ++i)
      {
        v10 = [v5 objectAtIndexedSubscript:i];
        if ([v10 length])
        {
          if ([v10 isEqualToString:@"fp"])
          {
            v7 = 1;
          }

          else if ([v10 isEqualToString:@"td"])
          {
            v8 = 1;
          }

          else
          {
            if ([v10 characterAtIndex:0] != 45)
            {
              goto LABEL_16;
            }

            v11 = [v10 substringFromIndex:1];
            if ([v11 length] >= 2)
            {
              v12 = [v11 componentsSeparatedByString:{@", "}];
              v6 = scriptCategoriesFromNames(v12);
            }
          }
        }
      }

      v13 = **(v16 + 8);
      v14 = [WPFingerprintingScript alloc];
      v10 = [v5 objectAtIndexedSubscript:0];
      v15 = [(WPFingerprintingScript *)v14 initWithHost:v10 isFirstParty:v7 & 1 isTopDomain:v8 & 1 allowedCategories:v6];
      [v13 addObject:v15];

LABEL_16:
    }
  }

  objc_autoreleasePoolPop(context);
}

void WebPrivacy::createFingerprintingScripts(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v9[0] = &unk_2882BD610;
    v9[1] = v10;
    v9[3] = v9;
    v10[0] = objc_opt_new();
    WebPrivacy::enumerateListRules(a1, v9, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v9);
    v4 = v10[0];
    *a2 = v4;
    a2[1] = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v10[0] = *MEMORY[0x277CCA450];
    v9[0] = @"List data not found";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v10 count:1];
    v7 = [v5 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v6];

    *a2 = 0;
    a2[1] = v7;
  }

  v8 = *MEMORY[0x277D85DE8];
}

id Platform::dataToBase64String(NSData *a1)
{
  v1 = [(NSData *)a1 base64EncodedStringWithOptions:0];

  return v1;
}

void Platform::base64StringToData(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [v4 initWithCString:v5 encoding:4];
  v10 = Platform::base64StringToData(v6);

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<unsigned char>::reserve(a2, [v10 length]);
  v7 = [v10 bytes];
  v8 = a2[1];
  v9 = [v10 length];
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a2, v8, v7, &v7[v9], v9);
}

void sub_273D24B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

id Platform::base64StringToData(NSString *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v1 options:0];

  return v2;
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

void ___ZN10WebPrivacy6Client16ensureConnectionEv_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (MEMORY[0x2743DC6F0]() == MEMORY[0x277D86480])
  {
    v7 = WPOSLogXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      ___ZN10WebPrivacy6Client16ensureConnectionEv_block_invoke_cold_1(string, &v10, v7);
    }

    atomic_store(0, (v4 + 232));
  }

  else
  {
    v5 = MEMORY[0x2743DC6A0](v3);
    v6 = WPOSLogXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 136380675;
      v11 = v5;
      _os_log_impl(&dword_273D20000, v6, OS_LOG_TYPE_INFO, "Handled message from server: %{private}s", &v10, 0xCu);
    }

    free(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t WebPrivacy::Client::setServerEndpoint(dispatch_queue_t *a1, char a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(*a1);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v10, a3);
  v6 = *a1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = ___ZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0cvU13block_pointerS4_Ev_block_invoke;
  v11[3] = &__block_descriptor_80_ea8_32c95_ZTSKZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEE3__0_e5_v8__0l;
  v11[4] = a1;
  v12 = a2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v13, v10);
  v7 = MEMORY[0x2743DC460](v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
  dispatch_async(v6, v7);

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WebPrivacy::Client::getStatus(dispatch_queue_t *a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(*a1);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v8, a2);
  v4 = *a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = ___ZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0cvU13block_pointerFvvEEv_block_invoke;
  v9[3] = &__block_descriptor_72_ea8_32c155_ZTSKZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEE3__0_e5_v8__0l;
  v9[4] = a1;
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v10, v8);
  v5 = MEMORY[0x2743DC460](v9);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v10);
  dispatch_async(v4, v5);

  result = std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WebPrivacy::Client::updateList(dispatch_queue_t *a1, char a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(*a1);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v10, a3);
  v6 = *a1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = ___ZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0cvU13block_pointerFvvEEv_block_invoke;
  v11[3] = &__block_descriptor_80_ea8_32c107_ZTSKZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEE3__0_e5_v8__0l;
  v11[4] = a1;
  v12 = a2;
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v13, v10);
  v7 = MEMORY[0x2743DC460](v11);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v13);
  dispatch_async(v6, v7);

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void WebPrivacy::Client::getList(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  WebPrivacy::Client::cachedListData(a1, a2, a3);
  if (!*a3)
  {
    v6 = *(a3 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = atomic_load((a1 + 232));
    if (v7)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      std::mutex::lock((a1 + 240));
      v8 = *(a1 + 312);
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = a1 + 312;
      do
      {
        v10 = *(v8 + 25);
        v11 = v10 >= a2;
        v12 = v10 < a2;
        if (v11)
        {
          v9 = v8;
        }

        v8 = *(v8 + 8 * v12);
      }

      while (v8);
      if (v9 != a1 + 312 && *(v9 + 25) <= a2)
      {
        *a3 = 0;
        *(a3 + 8) = 0;

        std::mutex::unlock((a1 + 240));
      }

      else
      {
LABEL_14:
        std::mutex::unlock((a1 + 240));
        v13 = dispatch_semaphore_create(0);
        v14 = *a1;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3321888768;
        v20[2] = ___ZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0cvU13block_pointerFvvEEv_block_invoke;
        v20[3] = &__block_descriptor_56_ea8_32c62_ZTSKZN10WebPrivacy6Client7getListEN7Backend10RemoteListEE3__0_e5_v8__0l;
        v20[4] = a1;
        v21 = a2;
        v22 = v13;
        v15 = MEMORY[0x2743DC460](v20);

        dispatch_async(v14, v15);
        if (*(a1 + 456) == 1)
        {
          v16 = *(a1 + 448);
        }

        else
        {
          v16 = 10000000;
        }

        v17 = dispatch_time(0, v16);
        if (dispatch_semaphore_wait(v13, v17))
        {
          v18 = WPOSLogXPC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            WebPrivacy::Client::getList(v18, a2);
          }

          atomic_store(1u, (a1 + 232));
        }

        WebPrivacy::Client::cachedListData(a1, a2, a3);
        if (!*a3)
        {
          v19 = *(a3 + 8);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          }

          *a3 = 0;
          *(a3 + 8) = 0;
        }
      }
    }
  }
}

void WebPrivacy::Client::cachedListData(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t **a3@<X8>)
{
  v8 = a2;
  *a3 = 0;
  a3[1] = 0;
  std::mutex::lock((a1 + 168));
  v5 = std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::find<Backend::RemoteList>((a1 + 88), &v8);
  if (v5)
  {
    v7 = v5[3];
    v6 = v5[4];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    *a3 = v7;
    a3[1] = v6;
  }

  std::mutex::unlock((a1 + 168));
}

__CFString *Backend::nsStringFromEnum(int a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Invalid";
  }

  else
  {
    return off_279EAF210[(a1 - 1)];
  }
}

void ___ZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = WebPrivacy::Client::clientNameForUserAgent(v2);
  v4 = v3;
  v5 = *(a1 + 40);
  if (*(v2 + 52))
  {
    v18 = v2;
    v19[0] = v5;
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 8));
    }

    else
    {
      v17 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 16);
      *&__p.__r_.__value_.__l.__data_ = v17;
    }

    v21 = v2;
    v22 = v5;
    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_34scheduleListUpdateWithNotificationES8_EUb_E3__6EEEvDpOT1_EUlOT_DpOT0_E_NSB_5tupleIJS8_SH_SK_EEEEEDcSP_RKT0_(&v18, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = WebPrivacy::Client::ensureConnection(v2);
    v7 = *v2;
    v8 = v6;
    v9 = v7;
    v19[0] = *(a1 + 40);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 8));
    }

    else
    {
      v10 = *v4;
      __p.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    v21 = v2;
    v22 = v5;
    v11 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(v19, &__p);
    v12 = v21;
    v13 = v22;
    v14 = malloc_type_malloc(0x30uLL, 0x10E00409408061FuLL);
    *v14 = MEMORY[0x277D85DC8];
    v14[1] = 50331650;
    v14[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client34scheduleListUpdateWithNotificationESD_EUb_E3__6EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlOT_DpOT0_E_clIRKSO_JRSE_RSM_EEEDaSV_SY_EUlS3_E_EES5_SU_ENUlPvS3_E_8__invokeES17_S3_;
    v14[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client34scheduleListUpdateWithNotificationESD_EUb_E3__6EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlOT_DpOT0_E_clIRKSO_JRSE_RSM_EEEDaSV_SY_EUlS3_E_EES5_SU_E10descriptor;
    v14[4] = v12;
    v14[5] = v13;
    v15 = MEMORY[0x2743DC460]();

    v16 = MEMORY[0x2743DC460](v15);
    xpc_connection_send_message_with_reply(v8, v11, v9, v16);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_273D25830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPrivacy::Client::deleteList(dispatch_queue_t *a1, char a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(*a1);
  LOBYTE(v10) = a2;
  *(&v10 + 1) = a1;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v11, a3);
  v6 = *a1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = ___ZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0cvU13block_pointerFvvEEv_block_invoke;
  v12[3] = &__block_descriptor_80_ea8_32c108_ZTSKZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEE3__0_e5_v8__0l;
  v13 = v10;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v14, v11);
  v7 = MEMORY[0x2743DC460](v12);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v14);
  dispatch_async(v6, v7);

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WebPrivacy::Client::remoteProcessID(WebPrivacy::Client *this)
{
  std::mutex::lock((this + 16));
  pid = xpc_connection_get_pid(*(this + 10));
  std::mutex::unlock((this + 16));
  return pid;
}

void WebPrivacy::Client::resetStateForTesting(WebPrivacy::Client *this)
{
  dispatch_sync(*this, &__block_literal_global_9);
  if (*(this + 456) == 1)
  {
    *(this + 456) = 0;
  }

  atomic_store(0, this + 232);
  v2 = *(this + 52);
  *(this + 52) = 0;

  if (*(this + 447) < 0)
  {
    *(this + 54) = 0;
    v3 = *(this + 53);
  }

  else
  {
    v3 = this + 424;
    *(this + 447) = 0;
  }

  *v3 = 0;
  std::mutex::lock((this + 328));
  std::__tree<Backend::RemoteList>::__assign_unique<Backend::RemoteList const*>(this + 49, 0, 0);
  std::mutex::unlock((this + 328));
  std::mutex::lock((this + 168));
  std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__assign_unique<std::pair<Backend::RemoteList const,std::shared_ptr<Platform::SharedMemory>> const*>(this + 11, 0, 0);
  std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>>>::__assign_unique<std::pair<Backend::RemoteList const,std::array<unsigned char,14ul>> const*>(this + 16, 0, 0);

  std::mutex::unlock((this + 168));
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t ___ZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0cvU13block_pointerS4_Ev_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14 = v2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v15, a1 + 48);
  if (*(v2 + 416))
  {
    v24 = v2;
    v17[0] = *(a1 + 40);
    v18 = v2;
    if (v16)
    {
      if (v16 == v15)
      {
        v20 = v19;
        (*(*v16 + 24))();
      }

      else
      {
        v20 = v16;
        v16 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC17SetServerEndpointENS4_22SetServerEndpointReplyEJRKNS1_14ServerEndpointEZZNS2_17setServerEndpointES7_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSH_DpOT0_E_NSA_5tupleIJS7_SI_EEEEEDcSH_RKT0_(&v24, v17);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v19);
  }

  else
  {
    v3 = WebPrivacy::Client::ensureConnection(v2);
    v4 = *v2;
    v5 = v3;
    v6 = v4;
    v17[0] = *(a1 + 40);
    v18 = v14;
    if (v16)
    {
      if (v16 == v15)
      {
        v20 = v19;
        (*(*v16 + 24))();
      }

      else
      {
        v20 = v16;
        v16 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v7 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::SetServerEndpoint,WebPrivacy::ServerEndpoint const>(v17);
    v21 = v18;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v22, v19);
    v24 = v21;
    if (v23)
    {
      if (v23 == v22)
      {
        v26 = v25;
        (*(*v23 + 24))();
      }

      else
      {
        v26 = v23;
        v23 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v8 = malloc_type_malloc(0x48uLL, 0x10E0040545BBE67uLL);
    *v8 = MEMORY[0x277D85DC8];
    v8[1] = 50331650;
    v8[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_17SetServerEndpointENS8_22SetServerEndpointReplyEJKNS7_14ServerEndpointEZZNS7_6Client17setServerEndpointESC_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSM_DpOT0_E_clIRKSN_JRSD_EEEDaSM_SV_EUlS3_E_EES5_SL_ENUlPvS3_E_8__invokeES13_S3_;
    v8[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_17SetServerEndpointENS8_22SetServerEndpointReplyEJKNS7_14ServerEndpointEZZNS7_6Client17setServerEndpointESC_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSM_DpOT0_E_clIRKSN_JRSD_EEEDaSM_SV_EUlS3_E_EES5_SL_E10descriptor;
    v9 = v26;
    v8[4] = v24;
    if (v9)
    {
      if (v9 == v25)
      {
        v8[8] = v8 + 5;
        (*(*v9 + 24))(v9);
      }

      else
      {
        v8[8] = v9;
        v26 = 0;
      }
    }

    else
    {
      v8[8] = 0;
    }

    v10 = MEMORY[0x2743DC460](v8);

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v25);
    v11 = MEMORY[0x2743DC460](v10);
    xpc_connection_send_message_with_reply(v5, v7, v6, v11);

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v19);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v15);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D26100(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c95_ZTSKZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a1 + 48, a2 + 48);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC17SetServerEndpointENS4_22SetServerEndpointReplyEJRKNS1_14ServerEndpointEZZNS2_17setServerEndpointES7_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSH_DpOT0_E_NSA_5tupleIJS7_SI_EEEEEDcSH_RKT0_(NSObject ***a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::SetServerEndpoint,WebPrivacy::ServerEndpoint const>(a2);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    __assert_rtn("operator()", "Client.h", 98, "result");
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC17SetServerEndpointENS2_22SetServerEndpointReplyEJRKNS_14ServerEndpointEZZNS0_17setServerEndpointES5_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSF_DpOT0_E_clIRKSG_JS7_EEEDaSF_SM__block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c249_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC17SetServerEndpointENS2_22SetServerEndpointReplyEJRKNS_14ServerEndpointEZZNS0_17setServerEndpointES5_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSF_DpOT0_E_clIRKSG_JS7_EEEDaSF_SM_EUlvE__e5_v8__0l;
  v10 = *(a2 + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v11, a2 + 16);
  v8 = v6;
  v12 = v8;
  block[4] = v10;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v14, v11);
  v15 = v12;
  dispatch_async(v7, block);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_273D26324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v16 + 8);

  _Unwind_Resume(a1);
}

id WebPrivacy::XPC::serialize<WebPrivacy::XPC::SetServerEndpoint,WebPrivacy::ServerEndpoint const>(unsigned __int8 *a1)
{
  values = xpc_uint64_create(0);
  v2 = xpc_dictionary_create(WebPrivacy::messageNameKey, &values, 1uLL);
  empty = xpc_array_create_empty();
  v4 = *a1;
  v5 = empty;
  v6 = xpc_uint64_create(v4);
  xpc_array_append_value(v5, v6);

  xpc_dictionary_set_value(v2, "args", v5);

  return v2;
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_17SetServerEndpointENS8_22SetServerEndpointReplyEJKNS7_14ServerEndpointEZZNS7_6Client17setServerEndpointESC_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSM_DpOT0_E_clIRKSN_JRSD_EEEDaSM_SV_EUlS3_E_EES5_SL_ENUlPvS3_E_8__invokeES13_S3_(uint64_t a1, void *a2)
{
  v3 = a2;
  WebPrivacy::XPC::decode<WebPrivacy::XPC::SetServerEndpointReply>(v3);
  _ZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_((a1 + 32));
}

uint64_t _ZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_(uint64_t *a1)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v6, (a1 + 1));
  v2 = *(v1 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3321888768;
  v7[2] = ___ZZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_ENKUlvE_cvU13block_pointerS4_Ev_block_invoke;
  v7[3] = &__block_descriptor_64_ea8_32c177_ZTSKZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_EUlvE__e5_v8__0l;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v8, v6);
  v3 = MEMORY[0x2743DC460](v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v8);
  dispatch_async(v2, v3);

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D265E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t WebPrivacy::XPC::decode<WebPrivacy::XPC::SetServerEndpointReply>(void *a1)
{
  v1 = a1;
  if (MEMORY[0x2743DC6F0]() == MEMORY[0x277D86468])
  {
    v3 = xpc_dictionary_get_array(v1, "args");
    v2 = xpc_array_get_count(v3) == 0;
  }

  else
  {
    v2 = 0;
  }

  return (v2 << 8);
}

uint64_t ___ZZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_ENKUlvE_cvU13block_pointerS4_Ev_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return __copy_helper_block_ea8_32c177_ZTSKZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_EUlvE_(v5);
  }
}

uint64_t ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC17SetServerEndpointENS2_22SetServerEndpointReplyEJRKNS_14ServerEndpointEZZNS0_17setServerEndpointES5_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSF_DpOT0_E_clIRKSG_JS7_EEEDaSF_SM__block_invoke(uint64_t a1)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::SetServerEndpointReply>(*(a1 + 72));

  return _ZZZN10WebPrivacy6Client17setServerEndpointENS_14ServerEndpointEONSt3__18functionIFvvEEEENK3__0clEvENKUlOT_E_clINS2_8optionalINS_3XPC22SetServerEndpointReplyEEEEEDaS9_((a1 + 32));
}

id __copy_helper_block_ea8_32c249_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC17SetServerEndpointENS2_22SetServerEndpointReplyEJRKNS_14ServerEndpointEZZNS0_17setServerEndpointES5_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSF_DpOT0_E_clIRKSG_JS7_EEEDaSF_SM_EUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a1 + 40, a2 + 40);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c249_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC17SetServerEndpointENS2_22SetServerEndpointReplyEJRKNS_14ServerEndpointEZZNS0_17setServerEndpointES5_ONSt3__18functionIFvvEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSF_DpOT0_E_clIRKSG_JS7_EEEDaSF_SM_EUlvE_(uint64_t a1)
{

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 40);
}

uint64_t std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t ___ZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v13 = v1;
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v14, a1 + 40);
  if (*(v1 + 416))
  {
    v19 = v1;
    v22 = v1;
    if (v15)
    {
      if (v15 == v14)
      {
        v24 = v23;
        (*(*v15 + 24))();
      }

      else
      {
        v24 = v15;
        v15 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC9GetStatusENS4_14GetStatusReplyEJZZNS2_9getStatusEONSt3__18functionIFvRKNS7_6vectorIiNS7_9allocatorIiEEEERKNS9_INS1_10ListStatusENSA_ISF_EEEENS1_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSQ_DpOT0_E_NS7_5tupleIJSR_EEEEEDcSQ_RKT0_(&v19, &v22);
    std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v23);
  }

  else
  {
    v2 = WebPrivacy::Client::ensureConnection(v1);
    v3 = *v1;
    v4 = v2;
    v5 = v3;
    v16 = v13;
    if (v15)
    {
      if (v15 == v14)
      {
        v18 = v17;
        (*(*v15 + 24))();
      }

      else
      {
        v18 = v15;
        v15 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v6 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetStatus>();
    v19 = v16;
    std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v20, v17);
    v22 = v19;
    if (v21)
    {
      if (v21 == v20)
      {
        v24 = v23;
        (*(*v21 + 24))();
      }

      else
      {
        v24 = v21;
        v21 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v7 = malloc_type_malloc(0x48uLL, 0x10E0040545BBE67uLL);
    *v7 = MEMORY[0x277D85DC8];
    v7[1] = 50331650;
    v7[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_9GetStatusENS8_14GetStatusReplyEJZZNS7_6Client9getStatusEONSt3__18functionIFvRKNSD_6vectorIiNSD_9allocatorIiEEEERKNSF_INS7_10ListStatusENSG_ISL_EEEENS7_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSW_DpOT0_E_clIRKSX_JEEEDaSW_S15_EUlS3_E_EES5_SV_ENUlPvS3_E_8__invokeES1C_S3_;
    v7[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_9GetStatusENS8_14GetStatusReplyEJZZNS7_6Client9getStatusEONSt3__18functionIFvRKNSD_6vectorIiNSD_9allocatorIiEEEERKNSF_INS7_10ListStatusENSG_ISL_EEEENS7_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSW_DpOT0_E_clIRKSX_JEEEDaSW_S15_EUlS3_E_EES5_SV_E10descriptor;
    v8 = v24;
    v7[4] = v22;
    if (v8)
    {
      if (v8 == v23)
      {
        v7[8] = v7 + 5;
        (*(*v8 + 24))(v8);
      }

      else
      {
        v7[8] = v8;
        v24 = 0;
      }
    }

    else
    {
      v7[8] = 0;
    }

    v9 = MEMORY[0x2743DC460](v7);

    std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v23);
    v10 = MEMORY[0x2743DC460](v9);
    xpc_connection_send_message_with_reply(v4, v6, v5, v10);

    std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v20);
    std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v17);
  }

  result = std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v14);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D26C08(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC9GetStatusENS4_14GetStatusReplyEJZZNS2_9getStatusEONSt3__18functionIFvRKNS7_6vectorIiNS7_9allocatorIiEEEERKNS9_INS1_10ListStatusENSA_ISF_EEEENS1_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSQ_DpOT0_E_NS7_5tupleIJSR_EEEEEDcSQ_RKT0_(NSObject ***a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetStatus>();
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    __assert_rtn("operator()", "Client.h", 98, "result");
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC9GetStatusENS2_14GetStatusReplyEJZZNS0_9getStatusEONSt3__18functionIFvRKNS5_6vectorIiNS5_9allocatorIiEEEERKNS7_INS_10ListStatusENS8_ISD_EEEENS_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JEEEDaSO_SV__block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c284_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC9GetStatusENS2_14GetStatusReplyEJZZNS0_9getStatusEONSt3__18functionIFvRKNS5_6vectorIiNS5_9allocatorIiEEEERKNS7_INS_10ListStatusENS8_ISD_EEEENS_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JEEEDaSO_SV_EUlvE__e5_v8__0l;
  v10 = *a2;
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v11, (a2 + 1));
  v8 = v6;
  v12 = v8;
  block[4] = v10;
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v14, v11);
  v15 = v12;
  dispatch_async(v7, block);

  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v14);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_273D26E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v16 + 8);

  _Unwind_Resume(a1);
}

id WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetStatus>()
{
  values = xpc_uint64_create(2uLL);
  v0 = xpc_dictionary_create(WebPrivacy::messageNameKey, &values, 1uLL);

  return v0;
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_9GetStatusENS8_14GetStatusReplyEJZZNS7_6Client9getStatusEONSt3__18functionIFvRKNSD_6vectorIiNSD_9allocatorIiEEEERKNSF_INS7_10ListStatusENSG_ISL_EEEENS7_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSW_DpOT0_E_clIRKSX_JEEEDaSW_S15_EUlS3_E_EES5_SV_ENUlPvS3_E_8__invokeES1C_S3_(uint64_t a1, void *a2)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetStatusReply>(a2, __p);
  _ZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_((a1 + 32), __p);
  if (v4[32] == 1)
  {
    v5 = v4;
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_273D26F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebPrivacy::XPC::GetStatusReply>::~optional(va);
  _Unwind_Resume(a1);
}

void _ZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_(uint64_t *a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  LOBYTE(v7[0]) = 0;
  v12 = 0;
  if (*(a2 + 56) == 1)
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v11 = *(a2 + 48);
    v12 = 1;
  }

  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v13, (a1 + 1));
  v3 = *(v2 + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = ___ZZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
  v14[3] = &__block_descriptor_128_ea8_32c229_ZTSKZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_EUlvE__e5_v8__0l;
  std::__optional_copy_base<WebPrivacy::XPC::GetStatusReply,false>::__optional_copy_base[abi:nn200100](__p, v7);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](v17, v13);
  v4 = MEMORY[0x2743DC460](v14);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v17);
  if (v16[32] == 1)
  {
    v6 = v16;
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  dispatch_async(v3, v4);

  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](v13);
  if (v12 == 1)
  {
    v14[0] = &v9;
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](v14);
    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_273D27118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<WebPrivacy::XPC::GetStatusReply>::~optional(v3 + 32);
  _ZZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_ENUlvE_D1Ev(va);
  _Unwind_Resume(a1);
}

void WebPrivacy::XPC::decode<WebPrivacy::XPC::GetStatusReply>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (MEMORY[0x2743DC6F0]() == MEMORY[0x277D86468])
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    *__p = 0u;
    v4 = xpc_dictionary_get_array(v3, "args");
    v5 = WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decode(__p, v4);

    if (v5)
    {
      *a2 = *__p;
      *(a2 + 16) = *&v8[0];
      __p[0] = 0;
      __p[1] = 0;
      *(a2 + 24) = *(v8 + 8);
      *(a2 + 40) = *(&v8[1] + 1);
      v8[0] = 0uLL;
      *(a2 + 48) = v9;
      v6 = 1;
      v8[1] = 0uLL;
    }

    else
    {
      v6 = 0;
      *a2 = 0;
    }

    *(a2 + 56) = v6;
    v10 = v8 + 1;
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v10);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 56) = 0;
  }
}

void sub_273D2725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WebPrivacy::XPC::GetStatusReply::~GetStatusReply(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::optional<WebPrivacy::XPC::GetStatusReply>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v4 = (a1 + 24);
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v4);
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t _ZZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_ENUlvE_D1Ev(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](a1 + 64);
  if (*(a1 + 56) == 1)
  {
    v4 = (a1 + 24);
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v4);
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void ___ZZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 80);
    v3 = a1 + 96;

    std::function<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::operator()(v3, a1 + 32, a1 + 56, v2);
  }

  else
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    memset(v4, 0, sizeof(v4));
    std::function<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::operator()(a1 + 96, &__p, v4, 0);
    v8 = v4;
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v8);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_273D273E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  *(v14 - 24) = &a10;
  std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100]((v14 - 24));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c229_ZTSKZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_EUlvE_(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](a1 + 96);
  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 56);
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v3);
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
    }
  }
}

uint64_t std::function<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, a2, a3, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](v6);
}

void std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<WebPrivacy::ListStatus>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<WebPrivacy::ListStatus>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

_BYTE *std::__optional_copy_base<WebPrivacy::XPC::GetStatusReply,false>::__optional_copy_base[abi:nn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[56] = 0;
  if (*(a2 + 56) == 1)
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::__tuple_impl(a1, a2);
    a1[56] = 1;
  }

  return a1;
}

void sub_273D27600(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    WebPrivacy::XPC::GetStatusReply::~GetStatusReply(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  v4 = std::vector<int>::vector[abi:nn200100](a1, a2);
  v4[3] = 0;
  v4[4] = 0;
  v4 += 3;
  v4[2] = 0;
  std::vector<WebPrivacy::ListStatus>::__init_with_size[abi:nn200100]<WebPrivacy::ListStatus*,WebPrivacy::ListStatus*>(v4, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_273D27678(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void std::vector<int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<int>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::allocator<int>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<WebPrivacy::ListStatus>::__init_with_size[abi:nn200100]<WebPrivacy::ListStatus*,WebPrivacy::ListStatus*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<WebPrivacy::ListStatus>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<WebPrivacy::ListStatus>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<WebPrivacy::ListStatus>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::allocator<WebPrivacy::ListStatus>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::construct_at[abi:nn200100]<WebPrivacy::ListStatus,WebPrivacy::ListStatus&,WebPrivacy::ListStatus*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void WebPrivacy::XPC::GetStatusReply::~GetStatusReply(WebPrivacy::XPC::GetStatusReply *this)
{
  v3 = (this + 24);
  std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decode(std::vector<int> *a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) == 3)
  {
    v4 = WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decodeOne<0u>(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decodeOne<0u>(std::vector<int> *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!xpc_array_get_count(v3))
  {
    goto LABEL_28;
  }

  v5 = xpc_array_get_value(v3, 0);
  v6 = MEMORY[0x2743DC6F0]();
  v7 = MEMORY[0x277D86440];

  if (v6 != v7)
  {
LABEL_29:

    v13 = 0;
    goto LABEL_30;
  }

  v4 = xpc_array_get_array(v3, 0);
  if (!xpc_array_get_count(v4))
  {
    goto LABEL_26;
  }

  v8 = xpc_array_get_value(v4, 0);
  v9 = MEMORY[0x2743DC6F0]();
  v10 = MEMORY[0x277D864C8];

  if (v9 != v10)
  {
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  uint64 = xpc_array_get_uint64(v4, 0);

  if (uint64 > 0xFFFFFFFE)
  {
    goto LABEL_28;
  }

  count = xpc_array_get_count(v4);
  if (count != uint64 + 1)
  {
    goto LABEL_28;
  }

  std::vector<int>::reserve(a1, uint64);
  if (count >= 2)
  {
    v14 = 1;
    v15 = MEMORY[0x277D86498];
    while (1)
    {
      v16 = v4;
      if (xpc_array_get_count(v16) <= v14)
      {
        break;
      }

      v17 = xpc_array_get_value(v16, v14);
      v18 = MEMORY[0x2743DC6F0]();

      if (v18 != v15)
      {
        goto LABEL_27;
      }

      int64 = xpc_array_get_int64(v16, v14);
      v20 = int64;
      if (int64 != int64)
      {
        goto LABEL_27;
      }

      end = a1->__end_;
      value = a1->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a1->__begin_;
        v25 = end - a1->__begin_;
        v26 = v25 >> 2;
        v27 = (v25 >> 2) + 1;
        if (v27 >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v28 = value - begin;
        if (v28 >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
        v30 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v29)
        {
          v30 = v27;
        }

        if (v30)
        {
          std::allocator<int>::allocate_at_least[abi:nn200100](a1, v30);
        }

        *(4 * v26) = v20;
        v23 = 4 * v26 + 4;
        memcpy(0, begin, v25);
        v31 = a1->__begin_;
        a1->__begin_ = 0;
        a1->__end_ = v23;
        a1->__end_cap_.__value_ = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *end = v20;
        v23 = (end + 4);
      }

      a1->__end_ = v23;
      if (count == ++v14)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_8:

  v13 = WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decodeOne<1u>(a1, v3);
LABEL_30:

  return v13;
}

uint64_t WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decodeOne<1u>(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) <= 1)
  {

    goto LABEL_13;
  }

  v4 = xpc_array_get_value(v3, 1uLL);
  v5 = MEMORY[0x2743DC6F0]();
  v6 = MEMORY[0x277D86440];

  if (v5 != v6)
  {
LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v7 = xpc_array_get_array(v3, 1uLL);
  if (!xpc_array_get_count(v7))
  {

    goto LABEL_11;
  }

  v8 = xpc_array_get_value(v7, 0);
  v9 = MEMORY[0x2743DC6F0]();
  v10 = MEMORY[0x277D864C8];

  if (v9 != v10)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  uint64 = xpc_array_get_uint64(v7, 0);

  if (uint64 > 0xFFFFFFFE)
  {
    goto LABEL_12;
  }

  count = xpc_array_get_count(v7);
  if (count != uint64 + 1)
  {
    goto LABEL_12;
  }

  std::vector<WebPrivacy::ListStatus>::reserve((a1 + 24), uint64);
  if (count >= 2)
  {
    v14 = 1;
    while (1)
    {
      v36 = 0.0;
      memset(&v35[1], 0, 32);
      xarray = v7;
      if (xpc_array_get_count(xarray) <= v14)
      {
        v19 = xarray;
        goto LABEL_36;
      }

      v15 = xpc_array_get_value(xarray, v14);
      v16 = MEMORY[0x2743DC6F0]();

      v17 = xarray;
      if (v16 != v6)
      {
        goto LABEL_37;
      }

      v18 = xpc_array_get_array(xarray, v14);
      if (xpc_array_get_count(v18) != 4)
      {
        break;
      }

      v19 = v18;
      if (!xpc_array_get_count(v19))
      {
        goto LABEL_34;
      }

      v20 = xpc_array_get_value(v19, 0);
      v21 = MEMORY[0x2743DC6F0]();

      if (v21 != MEMORY[0x277D864C8])
      {
        goto LABEL_35;
      }

      v22 = xpc_array_get_uint64(v19, 0);
      if ((v22 - 1) >= 0xA)
      {
        goto LABEL_35;
      }

      LOBYTE(v35[0]) = v22;

      v23 = v19;
      if (xpc_array_get_count(v23) < 2)
      {
        goto LABEL_34;
      }

      v24 = xpc_array_get_value(v23, 1uLL);
      v25 = MEMORY[0x2743DC6F0]();

      if (v25 != MEMORY[0x277D864C8])
      {
        goto LABEL_35;
      }

      v35[1] = xpc_array_get_uint64(v23, 1uLL);

      v26 = v23;
      if (xpc_array_get_count(v26) < 3)
      {
        goto LABEL_34;
      }

      v27 = xpc_array_get_value(v26, 2uLL);
      v28 = MEMORY[0x2743DC6F0]();

      if (v28 != MEMORY[0x277D864C0])
      {
        goto LABEL_35;
      }

      string = xpc_array_get_string(v26, 2uLL);
      std::string::basic_string[abi:nn200100]<0>(&v37, string);
      if (SHIBYTE(v35[4]) < 0)
      {
        operator delete(v35[2]);
      }

      *&v35[2] = v37;
      v35[4] = v38;

      v30 = v26;
      if (xpc_array_get_count(v30) < 4)
      {
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v31 = xpc_array_get_value(v30, 3uLL);
      v32 = MEMORY[0x2743DC6F0]();

      if (v32 != MEMORY[0x277D86470])
      {
        goto LABEL_35;
      }

      v36 = xpc_array_get_double(v30, 3uLL);

      std::vector<WebPrivacy::ListStatus>::push_back[abi:nn200100]((a1 + 24), v35);
      if (SHIBYTE(v35[4]) < 0)
      {
        operator delete(v35[2]);
      }

      if (count == ++v14)
      {
        goto LABEL_8;
      }
    }

    v19 = v18;
LABEL_36:

    v17 = xarray;
LABEL_37:

    if (SHIBYTE(v35[4]) < 0)
    {
      operator delete(v35[2]);
    }

    goto LABEL_12;
  }

LABEL_8:

  v12 = WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decodeOne<2u>(a1, v3);
LABEL_14:

  return v12;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::allocator<int>::allocate_at_least[abi:nn200100](this, __n);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t WebPrivacy::XPC::Message<(MessageName)3,std::vector<int>,std::vector<WebPrivacy::ListStatus>,WebPrivacy::ServerEndpoint>::decodeOne<2u>(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) <= 2)
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v4 = xpc_array_get_value(v3, 2uLL);
  v5 = MEMORY[0x2743DC6F0]();
  v6 = MEMORY[0x277D864C8];

  if (v5 != v6)
  {
    goto LABEL_6;
  }

  uint64 = xpc_array_get_uint64(v3, 2uLL);
  if (uint64 >= 4u)
  {
    goto LABEL_6;
  }

  *(a1 + 48) = uint64;
  v8 = 1;
LABEL_7:

  return v8;
}

void *std::vector<WebPrivacy::ListStatus>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<WebPrivacy::ListStatus>::allocate_at_least[abi:nn200100](result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_273D28508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<WebPrivacy::ListStatus>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<WebPrivacy::ListStatus>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<WebPrivacy::ListStatus>::__emplace_back_slow_path<WebPrivacy::ListStatus>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(v3 + 40) = *(a2 + 40);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WebPrivacy::ListStatus>,WebPrivacy::ListStatus*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 48;
    }
  }
}

uint64_t std::__split_buffer<WebPrivacy::ListStatus>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<WebPrivacy::ListStatus>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<WebPrivacy::ListStatus>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<WebPrivacy::ListStatus>::__emplace_back_slow_path<WebPrivacy::ListStatus>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<WebPrivacy::ListStatus>::allocate_at_least[abi:nn200100](a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(v7 + 40) = *(a2 + 40);
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WebPrivacy::ListStatus>,WebPrivacy::ListStatus*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<WebPrivacy::ListStatus>::~__split_buffer(&v15);
  return v14;
}

void sub_273D287D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<WebPrivacy::ListStatus>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC9GetStatusENS2_14GetStatusReplyEJZZNS0_9getStatusEONSt3__18functionIFvRKNS5_6vectorIiNS5_9allocatorIiEEEERKNS7_INS_10ListStatusENS8_ISD_EEEENS_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JEEEDaSO_SV__block_invoke(uint64_t a1)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetStatusReply>(*(a1 + 72), __p);
  _ZZZN10WebPrivacy6Client9getStatusEONSt3__18functionIFvRKNS1_6vectorIiNS1_9allocatorIiEEEERKNS3_INS_10ListStatusENS4_IS9_EEEENS_14ServerEndpointEEEEENK3__0clEvENKUlOT_E_clINS1_8optionalINS_3XPC14GetStatusReplyEEEEEDaSK_((a1 + 32), __p);
  if (v3[32] == 1)
  {
    v4 = v3;
    std::vector<WebPrivacy::ListStatus>::__destroy_vector::operator()[abi:nn200100](&v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_273D2885C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebPrivacy::XPC::GetStatusReply>::~optional(va);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c284_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC9GetStatusENS2_14GetStatusReplyEJZZNS0_9getStatusEONSt3__18functionIFvRKNS5_6vectorIiNS5_9allocatorIiEEEERKNS7_INS_10ListStatusENS8_ISD_EEEENS_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JEEEDaSO_SV_EUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::__value_func[abi:nn200100](a1 + 40, a2 + 40);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c284_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC9GetStatusENS2_14GetStatusReplyEJZZNS0_9getStatusEONSt3__18functionIFvRKNS5_6vectorIiNS5_9allocatorIiEEEERKNS7_INS_10ListStatusENS8_ISD_EEEENS_14ServerEndpointEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JEEEDaSO_SV_EUlvE_(uint64_t a1)
{

  return std::__function::__value_func<void ()(std::vector<int> const&,std::vector<WebPrivacy::ListStatus> const&,WebPrivacy::ServerEndpoint)>::~__value_func[abi:nn200100](a1 + 40);
}

uint64_t std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t ___ZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = WebPrivacy::Client::clientNameForUserAgent(v2);
  v15 = v2;
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v16, a1 + 48);
  if (*(v2 + 52))
  {
    v25 = v2;
    _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client10updateListES2_ONS_8functionIFvNS9_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEC1B8nn200100IJKS2_KS8_SJ_ELi0EEEDpOT_(v17, (a1 + 40), v3, &v15);
    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_10updateListES8_ONSB_8functionIFvNS1_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSR_DpOT0_E_NSB_5tupleIJS8_SH_SS_EEEEEDcSR_RKT0_(&v25, v17);
    _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client10updateListES2_ONS_8functionIFvNS9_12MessageErrorEEEEENK3__0clEvEUlOT_E_EED1Ev(v17);
  }

  else
  {
    v4 = WebPrivacy::Client::ensureConnection(v2);
    v5 = *v2;
    v6 = v4;
    v7 = v5;
    _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client10updateListES2_ONS_8functionIFvNS9_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEC1B8nn200100IJKS2_KS8_SJ_ELi0EEEDpOT_(v17, (a1 + 40), v3, &v15);
    v8 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(v17, &__p);
    v22 = v20;
    std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v23, v21);
    v25 = v22;
    if (v24)
    {
      if (v24 == v23)
      {
        v27 = v26;
        (*(*v24 + 24))(v24, v26);
      }

      else
      {
        v27 = v24;
        v24 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v9 = malloc_type_malloc(0x48uLL, 0x10E0040545BBE67uLL);
    *v9 = MEMORY[0x277D85DC8];
    v9[1] = 50331650;
    v9[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client10updateListESD_ONSF_8functionIFvNS7_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSV_DpOT0_E_clIRKSW_JRSE_RSM_EEEDaSV_S14_EUlS3_E_EES5_SU_ENUlPvS3_E_8__invokeES1D_S3_;
    v9[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client10updateListESD_ONSF_8functionIFvNS7_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSV_DpOT0_E_clIRKSW_JRSE_RSM_EEEDaSV_S14_EUlS3_E_EES5_SU_E10descriptor;
    v10 = v27;
    v9[4] = v25;
    if (v10)
    {
      if (v10 == v26)
      {
        v9[8] = v9 + 5;
        (*(*v10 + 24))(v10);
      }

      else
      {
        v9[8] = v10;
        v27 = 0;
      }
    }

    else
    {
      v9[8] = 0;
    }

    v11 = MEMORY[0x2743DC460](v9);

    std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v26);
    v12 = MEMORY[0x2743DC460](v11);
    xpc_connection_send_message_with_reply(v6, v8, v7, v12);

    std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v23);
    std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v21);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v16);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D28CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client10updateListES2_ONS_8functionIFvNS9_12MessageErrorEEEEENK3__0clEvEUlOT_E_EED1Ev(va);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c107_ZTSKZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v2;
  return std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](a1 + 48, a2 + 48);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_10updateListES8_ONSB_8functionIFvNS1_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSR_DpOT0_E_NSB_5tupleIJS8_SH_SS_EEEEEDcSR_RKT0_(NSObject ***a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(a2, a2 + 8);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    __assert_rtn("operator()", "Client.h", 98, "result");
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_10updateListES6_ONS9_8functionIFvNS_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSP_DpOT0_E_clIRKSQ_JS8_SH_EEEDaSP_SW__block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c313_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_10updateListES6_ONS9_8functionIFvNS_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSP_DpOT0_E_clIRKSQ_JS8_SH_EEEDaSP_SW_EUlvE__e5_v8__0l;
  v10 = *(a2 + 32);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v11, a2 + 40);
  v8 = v6;
  v12 = v8;
  block[4] = v10;
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v14, v11);
  v15 = v12;
  dispatch_async(v7, block);

  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v14);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_273D28EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v16 + 8);

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client10updateListES2_ONS_8functionIFvNS9_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEC1B8nn200100IJKS2_KS8_SJ_ELi0EEEDpOT_(uint64_t a1, _BYTE *a2, __int128 *a3, void *a4)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  *(a1 + 32) = *a4;
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](a1 + 40, (a4 + 1));
  return a1;
}

uint64_t _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client10updateListES2_ONS_8functionIFvNS9_12MessageErrorEEEEENK3__0clEvEUlOT_E_EED1Ev(uint64_t a1)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](a1 + 40);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client10updateListESD_ONSF_8functionIFvNS7_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSV_DpOT0_E_clIRKSW_JRSE_RSM_EEEDaSV_S14_EUlS3_E_EES5_SU_ENUlPvS3_E_8__invokeES1D_S3_(uint64_t a1, void *a2)
{
  v3 = a2;
  updated = WebPrivacy::XPC::decode<WebPrivacy::XPC::UpdateListReply>(v3);
  _ZZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15UpdateListReplyEEEEEDaSB_((a1 + 32), &updated);
}

uint64_t _ZZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15UpdateListReplyEEEEEDaSB_(uint64_t *a1, __int16 *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7 = *a2;
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v8, (a1 + 1));
  v3 = *(v2 + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = ___ZZZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15UpdateListReplyEEEEEDaSB_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
  v9[3] = &__block_descriptor_72_ea8_32c182_ZTSKZZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15UpdateListReplyEEEEEDaSB_EUlvE__e5_v8__0l;
  v10 = v7;
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](v11, v8);
  v4 = MEMORY[0x2743DC460](v9);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v11);
  dispatch_async(v3, v4);

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZZZZN10WebPrivacy6Client10updateListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15UpdateListReplyEEEEEDaSB_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  if (*(a1 + 33) == 1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = 1;
  }

  return std::function<void ()(WebPrivacy::MessageError)>::operator()(a1 + 40, v1);
}

uint64_t std::function<void ()(WebPrivacy::MessageError)>::operator()(uint64_t a1, char a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_10updateListES6_ONS9_8functionIFvNS_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSP_DpOT0_E_clIRKSQ_JS8_SH_EEEDaSP_SW__block_invoke(v4);
}

id __copy_helper_block_ea8_32c313_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_10updateListES6_ONS9_8functionIFvNS_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSP_DpOT0_E_clIRKSQ_JS8_SH_EEEDaSP_SW_EUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  std::__function::__value_func<void ()(WebPrivacy::MessageError)>::__value_func[abi:nn200100](a1 + 40, a2 + 40);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c313_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_10updateListES6_ONS9_8functionIFvNS_12MessageErrorEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSP_DpOT0_E_clIRKSQ_JS8_SH_EEEDaSP_SW_EUlvE_(uint64_t a1)
{

  return std::__function::__value_func<void ()(WebPrivacy::MessageError)>::~__value_func[abi:nn200100](a1 + 40);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_7getListES8_ONS1_18ListRequestOptionsEONSB_8functionIFvNS1_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSW_DpOT0_E_NSB_5tupleIJS8_SH_SX_EEEEEDcSW_RKT0_(NSObject ***a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(a2, a2 + 8);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    __assert_rtn("operator()", "Client.h", 98, "result");
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_7getListES6_ONS_18ListRequestOptionsEONS9_8functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSV_DpOT0_E_clIRKSW_JS8_SH_EEEDaSV_S12__block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c360_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_7getListES6_ONS_18ListRequestOptionsEONS9_8functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSV_DpOT0_E_clIRKSW_JS8_SH_EEEDaSV_S12_EUlvE__e5_v8__0l;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v12, a2 + 48);
  v8 = v6;
  v13 = v8;
  block[4] = v10;
  v15 = v11;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v16, v12);
  v17 = v13;
  dispatch_async(v7, block);

  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v12);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v16);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_273D29514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v17 + 16);

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__15tupleIJN7Backend10RemoteListENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZZN10WebPrivacy6Client7getListES2_ONS9_18ListRequestOptionsEONS_8functionIFvNS9_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EED1Ev(uint64_t a1)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](a1 + 48);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_7getListES6_ONS_18ListRequestOptionsEONS9_8functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSV_DpOT0_E_clIRKSW_JS8_SH_EEEDaSV_S12__block_invoke(uint64_t a1)
{
  updated = WebPrivacy::XPC::decode<WebPrivacy::XPC::UpdateListReply>(*(a1 + 80));
  if ((updated & 0x100) != 0)
  {
    v3 = updated;
  }

  else
  {
    v3 = 1;
  }

  return WebPrivacy::Client::getList(Backend::RemoteList,WebPrivacy::ListRequestOptions &&,std::function<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)> &&)::$_0::operator() const(void)::{lambda(std::function)#1}::operator()(a1 + 32, v3);
}

id __copy_helper_block_ea8_32c360_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_7getListES6_ONS_18ListRequestOptionsEONS9_8functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSV_DpOT0_E_clIRKSW_JS8_SH_EEEDaSV_S12_EUlvE_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](a1 + 48, a2 + 48);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c360_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_7getListES6_ONS_18ListRequestOptionsEONS9_8functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSV_DpOT0_E_clIRKSW_JS8_SH_EEEDaSV_S12_EUlvE_(uint64_t a1)
{

  return std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](a1 + 48);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC7GetListENS4_12GetListReplyEJRKN7Backend10RemoteListEZZZNS2_7getListES8_ONS1_18ListRequestOptionsEONSt3__18functionIFvNS1_12MessageErrorEONS_9ArrayViewIhEEEEEENK3__0clEvENKUlSF_E_clESF_EUlOT_E_EEEvDpOT1_EUlSP_DpOT0_E_NSD_5tupleIJS8_SQ_EEEEEDcSP_RKT0_(NSObject ***a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(a2);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    __assert_rtn("operator()", "Client.h", 98, "result");
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_7getListES6_ONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlSD_E_clESD_EUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JS8_EEEDaSO_SV__block_invoke;
  block[3] = &__block_descriptor_88_ea8_32c303_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_7getListES6_ONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlSD_E_clESD_EUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JS8_EEEDaSO_SV_EUlvE__e5_v8__0l;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v12, a2 + 24);
  v8 = v6;
  v13 = v8;
  block[4] = v10;
  v15 = v11;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](v16, v12);
  v17 = v13;
  dispatch_async(v7, block);

  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v12);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v16);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_273D29840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v17 + 16);

  _Unwind_Resume(a1);
}

uint64_t _ZZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_ENUlvE_D1Ev(uint64_t a1)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](a1 + 48);
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  return a1;
}

void ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_7getListES6_ONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlSD_E_clESD_EUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JS8_EEEDaSO_SV__block_invoke(uint64_t a1)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(*(a1 + 80), v2);
  _ZZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlS7_E_clES7_ENKUlOT_E_clINS5_8optionalINS_3XPC12GetListReplyEEEEEDaSI_(a1 + 32, v2);
  if (v4 == 1)
  {
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void sub_273D2991C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

id __copy_helper_block_ea8_32c303_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_7getListES6_ONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlSD_E_clESD_EUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JS8_EEEDaSO_SV_EUlvE_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::__value_func[abi:nn200100](a1 + 48, a2 + 48);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c303_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_7getListES6_ONS_18ListRequestOptionsEONSt3__18functionIFvNS_12MessageErrorEON8Platform9ArrayViewIhEEEEEENK3__0clEvENKUlSD_E_clESD_EUlOT_E_EEEvDpOT1_ENKUlSO_DpOT0_E_clIRKSP_JS8_EEEDaSO_SV_EUlvE_(uint64_t a1)
{

  return std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](a1 + 48);
}

void ___ZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0cvU13block_pointerFvvEEv_block_invoke(std::__shared_weak_count *a1)
{
  v2 = a1;
  v30 = *MEMORY[0x277D85DE8];
  shared_owners = a1[1].__shared_owners_;
  v4 = mach_approximate_time();
  WebPrivacy::Client::sendSync<WebPrivacy::XPC::GetList,WebPrivacy::XPC::GetListReply,Backend::RemoteList const&>(shared_owners, &v2[1].__shared_weak_owners_, v17);
  v5 = WPOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (LOBYTE(v2[1].__shared_weak_owners_) - 1 > 9)
    {
      v6 = @"Invalid";
    }

    else
    {
      v6 = off_279EAF210[(LOBYTE(v2[1].__shared_weak_owners_) - 1)];
    }

    v7 = mach_approximate_time();
    if (WebPrivacy::millisecondsSince(unsigned long long)::onceToken != -1)
    {
      ___ZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0cvU13block_pointerFvvEEv_block_invoke_cold_1();
    }

    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = ((v7 - v4) * WebPrivacy::millisecondsSince(unsigned long long)::timebase / *algn_280AF7E34) / 1000000.0;
    _os_log_impl(&dword_273D20000, v5, OS_LOG_TYPE_INFO, "Received sync reply for %@ in %.3f ms", buf, 0x16u);
  }

  shared_weak_owners = v2[1].__shared_weak_owners_;
  v9 = v2[2].__vftable;
  v10 = v20;
  if (v20 == 1)
  {
    v11 = v17[0];
    v1 = v18;
    v2 = v19;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = *shared_owners;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0clEvENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
  v22 = &__block_descriptor_88_ea8_32c75_ZTSKZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0clEvEUlvE__e5_v8__0l;
  v23 = shared_owners;
  v24 = shared_weak_owners;
  v13 = v9;
  v25 = v13;
  v26 = 0;
  v29 = 0;
  if (v10)
  {
    v26 = v11;
    v27 = v1;
    v28 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = 1;
  }

  v14 = MEMORY[0x2743DC460](buf);
  if (v29 == 1 && v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  dispatch_async(v12, v14);
  if (v2)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v20 == 1 && v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_273D29C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a11);
    }
  }

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c62_ZTSKZN10WebPrivacy6Client7getListEN7Backend10RemoteListEE3__0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v3;
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void WebPrivacy::Client::sendSync<WebPrivacy::XPC::GetList,WebPrivacy::XPC::GetListReply,Backend::RemoteList const&>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  dispatch_assert_queue_V2(*a1);
  v6 = *(a1 + 416);
  if (v6)
  {
    v7 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(a2);
    v8 = (*(v6 + 16))(v6, v7);

    if (!v8)
    {
      __assert_rtn("sendSync", "Client.h", 116, "result");
    }

    WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(v8, a3);
  }

  else
  {
    v8 = WebPrivacy::Client::ensureConnection(a1);
    WebPrivacy::XPC::sendSync<WebPrivacy::XPC::GetList,WebPrivacy::XPC::GetListReply,Backend::RemoteList const>(v8, a2, a3);
  }
}

void WebPrivacy::XPC::sendSync<WebPrivacy::XPC::GetList,WebPrivacy::XPC::GetListReply,Backend::RemoteList const>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  connection = a1;
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(a2);
  v6 = xpc_connection_send_message_with_reply_sync(connection, v5);

  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(v6, a3);
}

void ___ZZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0clEvENKUlvE_cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 56);
    v4 = *(a1 + 56) == 0;
    v6 = *(a1 + 72);
    v8 = *(a1 + 64);
    v5 = v8;
    v9 = v6;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (v5)
    {
      WebPrivacy::Client::updateCachedListData(v2, *(a1 + 40), &v8);
      v6 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v3)
    {
      std::mutex::lock((v2 + 240));
      std::__tree<Backend::RemoteList>::__emplace_unique_key_args<Backend::RemoteList,Backend::RemoteList const&>(v2 + 304, (a1 + 40));
      std::mutex::unlock((v2 + 240));
      v4 = 1;
      if (!v6)
      {
LABEL_5:
        dispatch_semaphore_signal(*(a1 + 48));
        if (v4)
        {
          WebPrivacy::Client::scheduleListUpdateWithNotification(v2, *(a1 + 40));
          atomic_store(0, (v2 + 232));
        }

        return;
      }

LABEL_4:
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      goto LABEL_5;
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  v7 = *(a1 + 48);

  dispatch_semaphore_signal(v7);
}

void sub_273D29F7C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 240));
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c75_ZTSKZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0clEvEUlvE_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *(a1 + 56) = *(a2 + 56);
    v6 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 80) = 1;
  }

  return result;
}

void __destroy_helper_block_ea8_32c75_ZTSKZZN10WebPrivacy6Client7getListEN7Backend10RemoteListEENK3__0clEvEUlvE_(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  v3 = *(a1 + 48);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_34scheduleListUpdateWithNotificationES8_EUb_E3__6EEEvDpOT1_EUlOT_DpOT0_E_NSB_5tupleIJS8_SH_SK_EEEEEDcSP_RKT0_(NSObject ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::UpdateList,Backend::RemoteList const,std::string const>(a2, a2 + 8);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_34scheduleListUpdateWithNotificationES8_EUb_E3__6EEEvDpOT1_EUlOT_DpOT0_E_NSB_5tupleIJS8_SH_SK_EEEEEDcSP_RKT0__cold_1();
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_34scheduleListUpdateWithNotificationES6_EUb_E3__6EEEvDpOT1_ENKUlOT_DpOT0_E_clIRKSI_JS8_SH_EEEDaSN_SQ__block_invoke;
  block[3] = &__block_descriptor_56_ea8_32c289_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_34scheduleListUpdateWithNotificationES6_EUb_E3__6EEEvDpOT1_ENKUlOT_DpOT0_E_clIRKSI_JS8_SH_EEEDaSN_SQ_EUlvE__e5_v8__0l;
  block[4] = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10UpdateListENS8_15UpdateListReplyEJKN7Backend10RemoteListEKNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEEZZNS7_6Client34scheduleListUpdateWithNotificationESD_EUb_E3__6EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlOT_DpOT0_E_clIRKSO_JRSE_RSM_EEEDaSV_SY_EUlS3_E_EES5_SU_ENUlPvS3_E_8__invokeES17_S3_(uint64_t a1, void *a2)
{
  v3 = a2;
  updated = WebPrivacy::XPC::decode<WebPrivacy::XPC::UpdateListReply>(v3);
  _ZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_(a1 + 32, &updated);
}

uint64_t _ZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  LOBYTE(v21) = v3;
  *(&v21 + 1) = v2;
  v4 = a2 + 1;
  if (a2[1] == 1 && *a2 == 0)
  {
    *&v19 = v2;
    BYTE8(v19) = v3;
    v20 = v21;
    if (*(v2 + 52))
    {
      *&v26 = v2;
      v22[0] = v3;
      v23 = v19;
      v24[0] = v20;
      _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC7GetListENS4_12GetListReplyEJRKN7Backend10RemoteListEZZZNS2_34scheduleListUpdateWithNotificationES8_EUb_ENK3__6clINSt3__18optionalINS4_15UpdateListReplyEEEEEDaOT_EUlSJ_E_EEEvDpOT1_EUlSJ_DpOT0_E_NSD_5tupleIJS8_SK_EEEEEDcSJ_RKT0_(&v26, v22);
      _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(v24);
    }

    else
    {
      v9 = WebPrivacy::Client::ensureConnection(v2);
      v10 = *v2;
      v11 = v9;
      v12 = v10;
      v22[0] = *(a1 + 8);
      v23 = v19;
      v24[0] = v20;
      v13 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(v22);
      v24[1] = v23;
      v25 = v24[0];
      v26 = v23;
      v27 = v24[0];
      v14 = malloc_type_malloc(0x40uLL, 0x10E0040F2FD4264uLL);
      *v14 = MEMORY[0x277D85DC8];
      v14[1] = 50331650;
      v14[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_7GetListENS8_12GetListReplyEJKN7Backend10RemoteListEZZZNS7_6Client34scheduleListUpdateWithNotificationESD_EUb_ENK3__6clINSt3__18optionalINS8_15UpdateListReplyEEEEEDaOT_EUlSO_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSO_DpOT0_E_clIRKSP_JRSE_EEESM_SO_SX_EUlS3_E_EES5_SN_ENUlPvS3_E_8__invokeES14_S3_;
      v14[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_7GetListENS8_12GetListReplyEJKN7Backend10RemoteListEZZZNS7_6Client34scheduleListUpdateWithNotificationESD_EUb_ENK3__6clINSt3__18optionalINS8_15UpdateListReplyEEEEEDaOT_EUlSO_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSO_DpOT0_E_clIRKSP_JRSE_EEESM_SO_SX_EUlS3_E_EES5_SN_E10descriptor;
      v15 = v27;
      *(v14 + 2) = v26;
      *(v14 + 3) = v15;
      v16 = MEMORY[0x2743DC460]();

      _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(&v27);
      v17 = MEMORY[0x2743DC460](v16);
      xpc_connection_send_message_with_reply(v11, v13, v12, v17);

      _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(&v25);
      _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(v24);
    }

    _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(&v20);
  }

  else
  {
    v7 = WPOSLogXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _ZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT__cold_1(v4, a2, v7);
    }
  }

  return _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(&v21);
}

void sub_273D2A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(v6 + 24);
  _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(v7 + 16);
  _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(va);
  _Unwind_Resume(a1);
}

uint64_t _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::mutex::lock((v2 + 328));
  std::__tree<Backend::RemoteList>::__erase_unique<Backend::RemoteList>(v2 + 392, a1);
  std::mutex::unlock((v2 + 328));
  return a1;
}

uint64_t _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC7GetListENS4_12GetListReplyEJRKN7Backend10RemoteListEZZZNS2_34scheduleListUpdateWithNotificationES8_EUb_ENK3__6clINSt3__18optionalINS4_15UpdateListReplyEEEEEDaOT_EUlSJ_E_EEEvDpOT1_EUlSJ_DpOT0_E_NSD_5tupleIJS8_SK_EEEEEDcSJ_RKT0_(NSObject ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::GetList,Backend::RemoteList const>(a2);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10UpdateListENS4_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEZZNS2_34scheduleListUpdateWithNotificationES8_EUb_E3__6EEEvDpOT1_EUlOT_DpOT0_E_NSB_5tupleIJS8_SH_SK_EEEEEDcSP_RKT0__cold_1();
  }

  v7 = *v3;
  v12 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_34scheduleListUpdateWithNotificationES6_EUb_ENK3__6clINSt3__18optionalINS2_15UpdateListReplyEEEEEDaOT_EUlSH_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEESF_SH_SO__block_invoke;
  block[3] = &__block_descriptor_72_ea8_32c276_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_34scheduleListUpdateWithNotificationES6_EUb_ENK3__6clINSt3__18optionalINS2_15UpdateListReplyEEEEEDaOT_EUlSH_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEESF_SH_SO_EUlvE__e5_v8__0l;
  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  v14 = v10;
  v15 = v11;
  v16 = v6;
  v8 = v6;
  dispatch_async(v7, block);
  _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(&v11);

  return _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(&v15);
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_7GetListENS8_12GetListReplyEJKN7Backend10RemoteListEZZZNS7_6Client34scheduleListUpdateWithNotificationESD_EUb_ENK3__6clINSt3__18optionalINS8_15UpdateListReplyEEEEEDaOT_EUlSO_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSO_DpOT0_E_clIRKSP_JRSE_EEESM_SO_SX_EUlS3_E_EES5_SN_ENUlPvS3_E_8__invokeES14_S3_(uint64_t a1, void *a2)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(a2, v3);
  _ZZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_ENUlSC_E_clINS6_INS7_12GetListReplyEEEEESA_SC_(a1 + 32, v3);
  if (v5 == 1)
  {
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_273D2A698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void _ZZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_ENUlSC_E_clINS6_INS7_12GetListReplyEEEEESA_SC_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = *a1;
    v5 = *(a2 + 16);
    v9 = *(a2 + 8);
    v4 = v9;
    v10 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (v4)
    {
      std::mutex::lock((v3 + 240));
      std::__tree<Backend::RemoteList>::__erase_unique<Backend::RemoteList>(v3 + 304, (a1 + 8));
      std::mutex::unlock((v3 + 240));
      atomic_store(0, (v3 + 232));
      if (WebPrivacy::Client::updateCachedListData(v3, *(a1 + 8), &v9))
      {
        v6 = *(a1 + 8);
        v7 = *(v3 + 8);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3321888768;
        v11[2] = ___ZZZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_ENUlSC_E_clINS6_INS7_12GetListReplyEEEEESA_SC_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
        v11[3] = &__block_descriptor_33_ea8_32c205_ZTSKZZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_ENUlSC_E_clINS6_INS7_12GetListReplyEEEEESA_SC_EUlvE__e5_v8__0l;
        v12 = v6;
        v8 = MEMORY[0x2743DC460](v11);
        dispatch_async(v7, v8);
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void sub_273D2A7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<Backend::RemoteList>::__erase_unique<Backend::RemoteList>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 25);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 25))
  {
    return 0;
  }

  std::__tree<Backend::RemoteList>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<Backend::RemoteList>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void ___ZZZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_ENUlSC_E_clINS6_INS7_12GetListReplyEEEEESA_SC_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = WPOSLogAPI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 32) - 1 > 9)
    {
      v3 = @"Invalid";
    }

    else
    {
      v3 = off_279EAF210[(*(a1 + 32) - 1)];
    }

    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&dword_273D20000, v2, OS_LOG_TYPE_INFO, "Dispatching list data changed notification for (%{public}@)", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"ResourceType";
  if (*(a1 + 32) - 1 >= 0xA)
  {
    __assert_rtn("resourceType", "Client.mm", 260, "false");
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  *buf = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v8 count:1];
  [v4 postNotificationName:@"WPResourceDataChangedNotificationName" object:0 userInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void sub_273D2ADF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_34scheduleListUpdateWithNotificationES6_EUb_ENK3__6clINSt3__18optionalINS2_15UpdateListReplyEEEEEDaOT_EUlSH_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEESF_SH_SO__block_invoke(uint64_t a1)
{
  WebPrivacy::XPC::decode<WebPrivacy::XPC::GetListReply>(*(a1 + 64), v2);
  _ZZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS_3XPC15UpdateListReplyEEEEEDaOT_ENUlSC_E_clINS6_INS7_12GetListReplyEEEEESA_SC_(a1 + 32, v2);
  if (v4 == 1)
  {
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void sub_273D2AE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

id __copy_helper_block_ea8_32c276_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_34scheduleListUpdateWithNotificationES6_EUb_ENK3__6clINSt3__18optionalINS2_15UpdateListReplyEEEEEDaOT_EUlSH_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEESF_SH_SO_EUlvE_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c276_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC7GetListENS2_12GetListReplyEJRKN7Backend10RemoteListEZZZNS0_34scheduleListUpdateWithNotificationES6_EUb_ENK3__6clINSt3__18optionalINS2_15UpdateListReplyEEEEEDaOT_EUlSH_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEESF_SH_SO_EUlvE_(uint64_t a1)
{

  return _ZN8Platform9ScopeExitIZZZN10WebPrivacy6Client34scheduleListUpdateWithNotificationEN7Backend10RemoteListEEUb_ENK3__6clINSt3__18optionalINS1_3XPC15UpdateListReplyEEEEEDaOT_EUlvE_ED1Ev(a1 + 48);
}

id __copy_helper_block_ea8_32c289_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10UpdateListENS2_15UpdateListReplyEJRKN7Backend10RemoteListERKNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEZZNS0_34scheduleListUpdateWithNotificationES6_EUb_E3__6EEEvDpOT1_ENKUlOT_DpOT0_E_clIRKSI_JS8_SH_EEEDaSN_SQ_EUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::find<Backend::RemoteList>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t ___ZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v14 = v2;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v15, a1 + 48);
  if (*(v2 + 416))
  {
    v24 = v2;
    v17[0] = *(a1 + 32);
    v18 = v2;
    if (v16)
    {
      if (v16 == v15)
      {
        v20 = v19;
        (*(*v16 + 24))();
      }

      else
      {
        v20 = v16;
        v16 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10DeleteListENS4_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS2_10deleteListES8_ONSt3__18functionIFvNS1_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSJ_DpOT0_E_NSB_5tupleIJS8_SK_EEEEEDcSJ_RKT0_(&v24, v17);
    std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v19);
  }

  else
  {
    v3 = WebPrivacy::Client::ensureConnection(v2);
    v4 = *v2;
    v5 = v3;
    v6 = v4;
    v17[0] = *(a1 + 32);
    v18 = v14;
    if (v16)
    {
      if (v16 == v15)
      {
        v20 = v19;
        (*(*v16 + 24))();
      }

      else
      {
        v20 = v16;
        v16 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v7 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::DeleteList,Backend::RemoteList const>(v17);
    v21 = v18;
    std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v22, v19);
    v24 = v21;
    if (v23)
    {
      if (v23 == v22)
      {
        v26 = v25;
        (*(*v23 + 24))();
      }

      else
      {
        v26 = v23;
        v23 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v8 = malloc_type_malloc(0x48uLL, 0x10E0040545BBE67uLL);
    *v8 = MEMORY[0x277D85DC8];
    v8[1] = 50331650;
    v8[2] = _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10DeleteListENS8_15DeleteListReplyEJKN7Backend10RemoteListEZZNS7_6Client10deleteListESD_ONSt3__18functionIFvNS7_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSO_DpOT0_E_clIRKSP_JRSE_EEEDaSO_SX_EUlS3_E_EES5_SN_ENUlPvS3_E_8__invokeES15_S3_;
    v8[3] = &_ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10DeleteListENS8_15DeleteListReplyEJKN7Backend10RemoteListEZZNS7_6Client10deleteListESD_ONSt3__18functionIFvNS7_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSO_DpOT0_E_clIRKSP_JRSE_EEEDaSO_SX_EUlS3_E_EES5_SN_E10descriptor;
    v9 = v26;
    v8[4] = v24;
    if (v9)
    {
      if (v9 == v25)
      {
        v8[8] = v8 + 5;
        (*(*v9 + 24))(v9);
      }

      else
      {
        v8[8] = v9;
        v26 = 0;
      }
    }

    else
    {
      v8[8] = 0;
    }

    v10 = MEMORY[0x2743DC460](v8);

    std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v25);
    v11 = MEMORY[0x2743DC460](v10);
    xpc_connection_send_message_with_reply(v5, v7, v6, v11);

    std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v22);
    std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v19);
  }

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v15);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273D2B47C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void _ZN8Platform20separateLastArgumentIZN10WebPrivacy6Client13sendWithReplyINS1_3XPC10DeleteListENS4_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS2_10deleteListES8_ONSt3__18functionIFvNS1_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_EUlSJ_DpOT0_E_NSB_5tupleIJS8_SK_EEEEEDcSJ_RKT0_(NSObject ***a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[52];
  v5 = WebPrivacy::XPC::serialize<WebPrivacy::XPC::DeleteList,Backend::RemoteList const>(a2);
  v6 = (v4[2].isa)(v4, v5);

  if (!v6)
  {
    __assert_rtn("operator()", "Client.h", 98, "result");
  }

  v7 = *v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10DeleteListENS2_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS0_10deleteListES6_ONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEEDaSH_SO__block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c248_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10DeleteListENS2_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS0_10deleteListES6_ONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEEDaSH_SO_EUlvE__e5_v8__0l;
  v10 = *(a2 + 8);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v11, a2 + 16);
  v8 = v6;
  v12 = v8;
  block[4] = v10;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v14, v11);
  v15 = v12;
  dispatch_async(v7, block);

  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v14);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_273D2B698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v16 + 8);

  _Unwind_Resume(a1);
}

id WebPrivacy::XPC::serialize<WebPrivacy::XPC::DeleteList,Backend::RemoteList const>(unsigned __int8 *a1)
{
  values = xpc_uint64_create(8uLL);
  v2 = xpc_dictionary_create(WebPrivacy::messageNameKey, &values, 1uLL);
  empty = xpc_array_create_empty();
  v4 = *a1;
  v5 = empty;
  v6 = xpc_uint64_create(v4);
  xpc_array_append_value(v5, v6);

  xpc_dictionary_set_value(v2, "args", v5);

  return v2;
}

void _ZZN8Platform8BlockPtrIFvPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN10WebPrivacy3XPC13sendWithReplyINS8_10DeleteListENS8_15DeleteListReplyEJKN7Backend10RemoteListEZZNS7_6Client10deleteListESD_ONSt3__18functionIFvNS7_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvS3_PU28objcproto17OS_dispatch_queueS1_DpOT1_ENKUlSO_DpOT0_E_clIRKSP_JRSE_EEEDaSO_SX_EUlS3_E_EES5_SN_ENUlPvS3_E_8__invokeES15_S3_(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = WebPrivacy::XPC::decode<WebPrivacy::XPC::DeleteListReply>(v4);
  v5 = v3;
  v6 = BYTE2(v3);
  _ZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_((a1 + 32), &v5);
}

uint64_t _ZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_(uint64_t *a1, __int16 *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v9, (a1 + 1));
  v3 = *(v2 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = ___ZZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke;
  v10[3] = &__block_descriptor_72_ea8_32c183_ZTSKZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_EUlvE__e5_v8__0l;
  v11 = v7;
  v12 = v8;
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](v13, v9);
  v4 = MEMORY[0x2743DC460](v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v13);
  dispatch_async(v3, v4);

  result = std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](v9);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WebPrivacy::XPC::decode<WebPrivacy::XPC::DeleteListReply>(void *a1)
{
  v2 = a1;
  if (MEMORY[0x2743DC6F0]() == MEMORY[0x277D86468])
  {
    v7 = 0;
    v5 = xpc_dictionary_get_array(v2, "args");
    v3 = WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decode(&v7, v5);

    v1 = HIBYTE(v7);
    if (v3)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return (v3 << 16) | (v1 << 8) | v4;
}

uint64_t ___ZZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_ENKUlvE_cvU13block_pointerFvvEEv_block_invoke(char *a1)
{
  if (a1[34] == 1)
  {
    return std::function<void ()(WebPrivacy::MessageError,BOOL)>::operator()((a1 + 40), a1[32], a1[33]);
  }

  else
  {
    return std::function<void ()(WebPrivacy::MessageError,BOOL)>::operator()((a1 + 40), 1, 0);
  }
}

uint64_t __copy_helper_block_ea8_32c183_ZTSKZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_EUlvE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 32) = v2;
  return std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](a1 + 40, a2 + 40);
}

uint64_t std::function<void ()(WebPrivacy::MessageError,BOOL)>::operator()(uint64_t a1, char a2, char a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decode(v5);
}

uint64_t WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decode(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) == 2)
  {
    v4 = WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decodeOne<0u>(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decodeOne<0u>(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (WebPrivacy::XPC::decode<WebPrivacy::MessageError>(v3, a1))
  {
    v4 = WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decodeOne<1u>(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WebPrivacy::XPC::Message<(MessageName)9,WebPrivacy::MessageError,BOOL>::decodeOne<1u>(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_array_get_count(v3) <= 1)
  {

    goto LABEL_5;
  }

  v4 = xpc_array_get_value(v3, 1uLL);
  v5 = MEMORY[0x2743DC6F0]();
  v6 = MEMORY[0x277D86448];

  if (v5 != v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  *(a1 + 1) = xpc_array_get_BOOL(v3, 1uLL);
  v7 = 1;
LABEL_6:

  return v7;
}

uint64_t ___ZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10DeleteListENS2_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS0_10deleteListES6_ONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEEDaSH_SO__block_invoke(uint64_t a1)
{
  v2 = WebPrivacy::XPC::decode<WebPrivacy::XPC::DeleteListReply>(*(a1 + 72));
  v4 = v2;
  v5 = BYTE2(v2);
  return _ZZZN10WebPrivacy6Client10deleteListEN7Backend10RemoteListEONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvENKUlOT_E_clINS3_8optionalINS_3XPC15DeleteListReplyEEEEEDaSB_((a1 + 32), &v4);
}

id __copy_helper_block_ea8_32c248_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10DeleteListENS2_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS0_10deleteListES6_ONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEEDaSH_SO_EUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::__value_func[abi:nn200100](a1 + 40, a2 + 40);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

uint64_t __destroy_helper_block_ea8_32c248_ZTSKZZN10WebPrivacy6Client13sendWithReplyINS_3XPC10DeleteListENS2_15DeleteListReplyEJRKN7Backend10RemoteListEZZNS0_10deleteListES6_ONSt3__18functionIFvNS_12MessageErrorEbEEEENK3__0clEvEUlOT_E_EEEvDpOT1_ENKUlSH_DpOT0_E_clIRKSI_JS8_EEEDaSH_SO_EUlvE_(uint64_t a1)
{

  return std::__function::__value_func<void ()(WebPrivacy::MessageError,BOOL)>::~__value_func[abi:nn200100](a1 + 40);
}

uint64_t std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>>>::~__hash_table(uint64_t a1)
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

void std::__tree<Backend::RemoteList>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<Backend::RemoteList>::destroy(a1, *a2);
    std::__tree<Backend::RemoteList>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::__tree<Backend::RemoteList>::__assign_unique<Backend::RemoteList const*>(uint64_t **result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = result;
  if (result[2])
  {
    v12[0] = result;
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    if (!v8)
    {
      v9 = 0;
      goto LABEL_16;
    }

    v9 = std::__tree<Backend::RemoteList>::_DetachedTreeCache::__detach_next(v8);
    for (i = v9; a2 != a3; ++a2)
    {
      std::__tree<Backend::RemoteList>::__node_assign_unique(v5, a2, v8);
      if (v11)
      {
        if (!i)
        {
          v9 = 0;
          v8 = 0;
          ++a2;
          break;
        }

        v9 = std::__tree<Backend::RemoteList>::_DetachedTreeCache::__detach_next(i);
        v8 = i;
        i = v9;
      }

      else
      {
        v9 = i;
      }
    }

LABEL_16:
    v12[1] = v9;
    v12[2] = v8;
    result = std::__tree<Backend::RemoteList>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](v12);
  }

  while (a2 != a3)
  {
    result = std::__tree<Backend::RemoteList>::__emplace_unique_key_args<Backend::RemoteList,Backend::RemoteList const&>(v5, a2++);
  }

  return result;
}

uint64_t **std::__tree<Backend::RemoteList>::__node_assign_unique(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 25);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 25) = v6;
    std::__tree<Backend::RemoteList>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

void *std::__tree<Backend::RemoteList>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<Backend::RemoteList>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](uint64_t a1)
{
  std::__tree<Backend::RemoteList>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<Backend::RemoteList>::destroy(*a1, v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__assign_unique<std::pair<Backend::RemoteList const,std::shared_ptr<Platform::SharedMemory>> const*>(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 3;
        std::pair<Backend::RemoteList &,std::shared_ptr<Platform::SharedMemory> &>::operator=[abi:nn200100]<Backend::RemoteList const,std::shared_ptr<Platform::SharedMemory>,0>(v12, v4);
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique(a1, v8);
        v4 += 24;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__emplace_unique_key_args<Backend::RemoteList,std::pair<Backend::RemoteList const,std::shared_ptr<Platform::SharedMemory>> const&>(a1, v4);
    v4 += 24;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique_prepare[abi:nn200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique_perform[abi:nn200100](a1, v2);
  return v2;
}

uint64_t std::pair<Backend::RemoteList &,std::shared_ptr<Platform::SharedMemory> &>::operator=[abi:nn200100]<Backend::RemoteList const,std::shared_ptr<Platform::SharedMemory>,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[1];
  *v3 = v5;
  v3[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique_prepare[abi:nn200100](uint64_t a1, unint64_t a2, unsigned __int8 *a3)
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
          if (*(i + 16) == *a3)
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

    std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique_perform[abi:nn200100](uint64_t *result, void *a2)
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

uint64_t **std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__emplace_unique_key_args<Backend::RemoteList,std::pair<Backend::RemoteList const,std::shared_ptr<Platform::SharedMemory>> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>>>::__assign_unique<std::pair<Backend::RemoteList const,std::array<unsigned char,14ul>> const*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 16) = *a2;
        v11 = *(a2 + 1);
        *(v8 + 23) = *(a2 + 7);
        *(v8 + 17) = v11;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::shared_ptr<Platform::SharedMemory>>>>::__node_insert_unique(a1, v8);
        a2 += 15;
        if (v10)
        {
          v12 = a2 == a3;
        }

        else
        {
          v12 = 1;
        }

        v8 = v10;
      }

      while (!v12);
    }

    if (v10)
    {
      do
      {
        v13 = *v10;
        operator delete(v10);
        v10 = v13;
      }

      while (v13);
    }
  }

  while (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>>>::__emplace_unique_key_args<Backend::RemoteList,std::pair<Backend::RemoteList const,std::array<unsigned char,14ul>> const&>(a1, a2);
    a2 += 15;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::__unordered_map_hasher<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::hash<Backend::RemoteList>,std::equal_to<Backend::RemoteList>,true>,std::__unordered_map_equal<Backend::RemoteList,std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>,std::equal_to<Backend::RemoteList>,std::hash<Backend::RemoteList>,true>,std::allocator<std::__hash_value_type<Backend::RemoteList,std::array<unsigned char,14ul>>>>::__emplace_unique_key_args<Backend::RemoteList,std::pair<Backend::RemoteList const,std::array<unsigned char,14ul>> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t WPOSLogDatabase(void)
{
  if (WPOSLogDatabase(void)::onceToken != -1)
  {
    WPOSLogDatabase();
  }

  return WPOSLogDatabase(void)::log;
}

uint64_t ___Z15WPOSLogDatabasev_block_invoke()
{
  WPOSLogDatabase(void)::log = os_log_create("com.apple.WebPrivacy", "Database");

  return MEMORY[0x2821F96F8]();
}

uint64_t WPOSLogNetwork(void)
{
  if (WPOSLogNetwork(void)::onceToken != -1)
  {
    WPOSLogNetwork();
  }

  return WPOSLogNetwork(void)::log;
}

uint64_t ___Z14WPOSLogNetworkv_block_invoke()
{
  WPOSLogNetwork(void)::log = os_log_create("com.apple.WebPrivacy", "Network");

  return MEMORY[0x2821F96F8]();
}

uint64_t WPOSLogSandbox(void)
{
  if (WPOSLogSandbox(void)::onceToken != -1)
  {
    WPOSLogSandbox();
  }

  return WPOSLogSandbox(void)::log;
}

uint64_t ___Z14WPOSLogSandboxv_block_invoke()
{
  WPOSLogSandbox(void)::log = os_log_create("com.apple.WebPrivacy", "Sandbox");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___Z13WPOSLogServerv_block_invoke()
{
  WPOSLogServer(void)::log = os_log_create("com.apple.WebPrivacy", "Server");

  return MEMORY[0x2821F96F8]();
}

uint64_t WPOSLogSharedMemory(void)
{
  if (WPOSLogSharedMemory(void)::onceToken != -1)
  {
    WPOSLogSharedMemory();
  }

  return WPOSLogSharedMemory(void)::log;
}

uint64_t ___Z19WPOSLogSharedMemoryv_block_invoke()
{
  WPOSLogSharedMemory(void)::log = os_log_create("com.apple.WebPrivacy", "SharedMemory");

  return MEMORY[0x2821F96F8]();
}

void Platform::getUserCacheDirectory(void *a1@<X8>)
{
  v9 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v2 = [v9 lastObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fileSystemRepresentation];
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v5;
    if (v5)
    {
      memmove(a1, v4, v5);
    }

    v8 = 0;
    *(a1 + v6) = 0;
  }

  else
  {
    v7 = std::generic_category();
    *a1 = 2;
    a1[1] = v7;
    v8 = 1;
  }

  *(a1 + 6) = v8;
}

std::string *Platform::stringByAppendingPathComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = a3;
  LODWORD(a3) = *(a1 + 23);
  if ((a3 & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
    LODWORD(a3) = *(a1 + 23);
    if ((a3 & 0x80000000) != 0)
    {
      v6 = 1;
      if (!*(a1 + 8))
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a1;
    v5->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v6 = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_5:
  a3 = a3;
  v7 = v6 == 0;
  if (v6)
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1;
  }

  if (!v7)
  {
    a3 = *(a1 + 8);
  }

  if (a3->__r_.__value_.__s.__data_[v8 - 1] != 47)
  {
    std::string::append(v5, "/", 1uLL);
  }

LABEL_12:
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  return std::string::append(v5, v10, v11);
}

void sub_273D2CF44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Platform::createDirectoryWithIntermediateDirectories(const std::string *a1)
{
  v2 = a1;
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&a1->__r_.__value_.__s + 23))
    {
      v3 = a1->__r_.__value_.__s.__data_[0];
      goto LABEL_6;
    }

LABEL_32:
    v1 = 45;
LABEL_33:
    std::generic_category();
    return v1;
  }

  if (!a1->__r_.__value_.__l.__size_)
  {
    goto LABEL_32;
  }

  a1 = a1->__r_.__value_.__r.__words[0];
  v3 = *v2->__r_.__value_.__l.__data_;
LABEL_6:
  if (v3 != 47)
  {
    goto LABEL_32;
  }

  if (!access(a1, 7))
  {
    if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = v2->__r_.__value_.__r.__words[0];
    }

    if (stat(v9, &v12) == -1)
    {
      v1 = *__error();
    }

    else
    {
      if ((v12.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_39;
      }

      v1 = 20;
    }

    goto LABEL_33;
  }

  v4 = 1;
  do
  {
    while (1)
    {
      v5 = std::string::find(v2, 47, v4);
      std::string::basic_string(&v11, v2, 0, v5, &v12);
      v6 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v11 : v11.__r_.__value_.__r.__words[0];
      if (stat(v6, &v12))
      {
        if (*__error() != 2 || ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v11) : (v7 = v11.__r_.__value_.__r.__words[0]), mkdir(v7, 0x1C0u) == -1))
        {
          v1 = *__error();
          v8 = 1;
LABEL_25:
          std::generic_category();
          goto LABEL_26;
        }
      }

      else if ((v12.st_mode & 0xF000) != 0x4000)
      {
        v8 = 1;
        v1 = 20;
        goto LABEL_25;
      }

      if (v5 == -1)
      {
        v8 = 3;
      }

      else
      {
        v4 = v5 + 1;
        v8 = 0;
      }

LABEL_26:
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v8)
      {
        goto LABEL_30;
      }
    }

    operator delete(v11.__r_.__value_.__l.__data_);
  }

  while (!v8);
LABEL_30:
  if (v8 != 3)
  {
    return v1;
  }

LABEL_39:
  std::system_category();
  return 0;
}

void sub_273D2D138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WebPrivacy::createContentExtensionSource(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v15 = objc_opt_new();
    v16[0] = &unk_2882BD460;
    v16[1] = &v15;
    v16[3] = v16;
    WebPrivacy::enumerateListRules(a1, v16, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v16);
    if ([v15 count])
    {
      v4 = v15;
      v5 = objc_autoreleasePoolPush();
      v16[0] = 0;
      v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:1 error:v16];
      v7 = v16[0];
      *a2 = v6;
      a2[1] = v7;
      objc_autoreleasePoolPop(v5);
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v17[0] = *MEMORY[0x277CCA450];
      v16[0] = @"List data not found";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v17 count:1];
      v13 = [v11 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v12];

      *a2 = 0;
      a2[1] = v13;
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v17[0] = *MEMORY[0x277CCA450];
    v16[0] = @"List data not found";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v17 count:1];
    v10 = [v8 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v9];

    *a2 = 0;
    a2[1] = v10;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void WebPrivacy::createLinkFilteringData(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v13 = objc_opt_new();
    v14[0] = &unk_2882BD4A8;
    v14[1] = &v13;
    v14[3] = v14;
    WebPrivacy::enumerateListRules(a1, v14, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v14);
    if ([v13 count])
    {
      v4 = [WPLinkFilteringData alloc];
      v5 = [(WPLinkFilteringData *)v4 initWithRules:v13];
      v6 = 0;
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v15[0] = *MEMORY[0x277CCA450];
      v14[0] = @"List data not found";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v15 count:1];
      v6 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v11];

      v5 = 0;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v15[0] = *MEMORY[0x277CCA450];
    v14[0] = @"List data not found";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v15 count:1];
    v9 = [v7 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v8];

    *a2 = 0;
    a2[1] = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void WebPrivacy::createTrackerDomainNamesData(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v12 = objc_opt_new();
    v13[0] = &unk_2882BD4F0;
    v13[1] = &v12;
    v13[3] = v13;
    WebPrivacy::enumerateListRules(a1, v13, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v13);
    if ([v12 count])
    {
      v4 = v12;
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v14[0] = *MEMORY[0x277CCA450];
      v13[0] = @"List data not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v14 count:1];
      v5 = [v9 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v10];

      v4 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v14[0] = *MEMORY[0x277CCA450];
    v13[0] = @"List data not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v14 count:1];
    v8 = [v6 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v7];

    *a2 = 0;
    a2[1] = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void WebPrivacy::createTrackerDomainNamesJSONData(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v15 = objc_opt_new();
    v16[0] = &unk_2882BD538;
    v16[1] = &v15;
    v16[3] = v16;
    WebPrivacy::enumerateListRules(a1, v16, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v16);
    if ([v15 count])
    {
      v4 = v15;
      v5 = objc_autoreleasePoolPush();
      v16[0] = 0;
      v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:1 error:v16];
      v7 = v16[0];
      *a2 = v6;
      a2[1] = v7;
      objc_autoreleasePoolPop(v5);
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v17[0] = *MEMORY[0x277CCA450];
      v16[0] = @"List data not found";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v17 count:1];
      v13 = [v11 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v12];

      *a2 = 0;
      a2[1] = v13;
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v17[0] = *MEMORY[0x277CCA450];
    v16[0] = @"List data not found";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v17 count:1];
    v10 = [v8 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v9];

    *a2 = 0;
    a2[1] = v10;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void WebPrivacy::createTrackerNetworkAddressesList(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v13 = objc_opt_new();
    v14[0] = &unk_2882BD580;
    v14[1] = &v13;
    v14[3] = v14;
    WebPrivacy::enumerateListRules(a1, v14, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v14);
    if (v13)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3321888768;
      v12[2] = ___ZN10WebPrivacy33createTrackerNetworkAddressesListERKN8Platform9ArrayViewIhEE_block_invoke;
      v12[3] = &__block_descriptor_33_ea8_32c86_ZTSKZN10WebPrivacy33createTrackerNetworkAddressesListERKN8Platform9ArrayViewIhEEE3__1_e57_q24__0__WPNetworkAddressRange_8__WPNetworkAddressRange_16l;
      [v13 sortUsingComparator:v12];
      v4 = v13;
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v15[0] = *MEMORY[0x277CCA450];
      v14[0] = @"List data not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v15 count:1];
      v5 = [v9 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v10];

      v4 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v15[0] = *MEMORY[0x277CCA450];
    v14[0] = @"List data not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v15 count:1];
    v8 = [v6 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v7];

    *a2 = 0;
    a2[1] = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void WebPrivacy::createRestrictedOpenerDomains(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v12 = objc_opt_new();
    v13[0] = &unk_2882BD5C8;
    v13[1] = &v12;
    v13[3] = v13;
    WebPrivacy::enumerateListRules(a1, v13, 0);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v13);
    if ([v12 count])
    {
      v4 = v12;
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v14[0] = *MEMORY[0x277CCA450];
      v13[0] = @"List data not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v14 count:1];
      v5 = [v9 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v10];

      v4 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v14[0] = *MEMORY[0x277CCA450];
    v13[0] = @"List data not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v14 count:1];
    v8 = [v6 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v7];

    *a2 = 0;
    a2[1] = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void WebPrivacy::createSourceString(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v13 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^#\\s*\\d+:(.*)$" options:0 error:0];
    v14[0] = &unk_2882BD658;
    v14[1] = &v12;
    v14[2] = &v13;
    v14[3] = v14;
    WebPrivacy::enumerateListRules(a1, v14, 1);
    std::__function::__value_func<void ()(Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v14);
    if ([v13 count])
    {
      v4 = [v13 componentsJoinedByString:@"\n"];
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v15[0] = *MEMORY[0x277CCA450];
      v14[0] = @"List data not found";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v15 count:1];
      v5 = [v9 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v10];

      v4 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v15[0] = *MEMORY[0x277CCA450];
    v14[0] = @"List data not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v15 count:1];
    v8 = [v6 errorWithDomain:@"WebPrivacyErrorDomain" code:1001 userInfo:v7];

    *a2 = 0;
    a2[1] = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::rawJSONToDictionaries(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD418;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD460;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCAAA0];
  v6 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v7 = [v6 dataUsingEncoding:4];
  v11 = 0;
  v8 = [v5 JSONObjectWithData:v7 options:0 error:&v11];
  v9 = v11;

  if (v9)
  {
    v10 = WPOSLogAPI();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createContentExtensionSource(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(v9, v10);
    }
  }

  else
  {
    [**(a1 + 8) addObject:v8];
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t std::__function::__func<WebPrivacy::createLinkFilteringData(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createLinkFilteringData(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD4A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WebPrivacy::createLinkFilteringData(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createLinkFilteringData(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v3 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v11 = [v3 componentsSeparatedByString:@" "];

  if ([v11 count] && objc_msgSend(v11, "count") <= 3)
  {
    v4 = [v11 objectAtIndexedSubscript:0];
    if ([v4 length])
    {
      v5 = &stru_2882BDF38;
      if ([v11 count] == 2 || objc_msgSend(v11, "count") == 3)
      {
        v6 = [v11 objectAtIndexedSubscript:1];
        v7 = [v6 length];

        if (v7)
        {
          v5 = [v11 objectAtIndexedSubscript:1];
        }

        else
        {
          v5 = &stru_2882BDF38;
        }
      }

      v8 = &stru_2882BDF38;
      if ([v11 count] == 3)
      {
        v8 = [v11 objectAtIndexedSubscript:2];
      }

      v9 = **(a1 + 8);
      v10 = [[WPLinkFilteringRule alloc] initWithQueryParameter:v4 domain:v5 path:v8];
      [v9 addObject:v10];
    }
  }
}

uint64_t std::__function::__func<WebPrivacy::createTrackerDomainNamesData(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createTrackerDomainNamesData(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD4F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WebPrivacy::createTrackerDomainNamesData(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createTrackerDomainNamesData(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v7 = [v6 componentsSeparatedByString:@""];;

  if ([v7 count] == 4 || objc_msgSend(v7, "count") == 5)
  {
    v8 = [v7 firstObject];
    v9 = [v8 length];

    if (v9)
    {
      if ([v7 count] != 5 || (objc_msgSend(v7, "objectAtIndexedSubscript:", 4), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"1"), v10, (v11 & 1) != 0))
      {
        v12 = [v7 objectAtIndexedSubscript:3];
        v13 = [v12 isEqualToString:@"1"];

        if (v13)
        {
          v14 = **(a1 + 8);
          v15 = [WPTrackingDomain alloc];
          v16 = [v7 objectAtIndexedSubscript:0];
          v17 = [v7 objectAtIndexedSubscript:1];
          v18 = [v7 count];
          if (v18 == 5)
          {
            v2 = [v7 objectAtIndexedSubscript:2];
            v19 = v2 == 0;
          }

          else
          {
            v19 = 1;
          }

          v20 = [(WPTrackingDomain *)v15 initWithHost:v16 owner:v17 canBlock:v19];
          [v14 addObject:v20];

          if (v18 == 5)
          {
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_273D2E828(_Unwind_Exception *a1)
{
  if (v4 == 5)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<WebPrivacy::createTrackerDomainNamesJSONData(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createTrackerDomainNamesJSONData(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD538;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WebPrivacy::createTrackerDomainNamesJSONData(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createTrackerDomainNamesJSONData(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v6 = [v5 componentsSeparatedByString:@""];;

  if ([v6 count] == 4 || objc_msgSend(v6, "count") == 5)
  {
    v7 = [v6 firstObject];
    v8 = [v7 length];

    if (v8)
    {
      v23[0] = @"dn";
      v9 = [v6 objectAtIndexedSubscript:1];
      v24[0] = v9;
      v23[1] = @"n";
      v10 = [v6 objectAtIndexedSubscript:2];
      v24[1] = v10;
      v23[2] = @"s";
      v11 = [v6 objectAtIndexedSubscript:3];
      v24[2] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

      if ([v6 count] == 5)
      {
        v21[0] = @"dn";
        v13 = [v6 objectAtIndexedSubscript:1];
        v22[0] = v13;
        v21[1] = @"dnbr";
        v14 = [v6 objectAtIndexedSubscript:2];
        v22[1] = v14;
        v21[2] = @"n";
        v15 = [v6 objectAtIndexedSubscript:3];
        v22[2] = v15;
        v21[3] = @"s";
        v16 = [v6 objectAtIndexedSubscript:4];
        v22[3] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

        v12 = v17;
      }

      v18 = **(a1 + 8);
      v19 = [v6 firstObject];
      [v18 setObject:v12 forKey:v19];
    }
  }

  objc_autoreleasePoolPop(v4);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<WebPrivacy::createTrackerNetworkAddressesList(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createTrackerNetworkAddressesList(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD580;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WebPrivacy::createTrackerNetworkAddressesList(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createTrackerNetworkAddressesList(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v6 = [v5 componentsSeparatedByString:@""];;

  if ([v6 count] == 3)
  {
    v7 = [v6 firstObject];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v6 objectAtIndexedSubscript:0];
      v10 = [v9 componentsSeparatedByString:@"/"];

      if ([v10 count] == 2)
      {
        v11 = [v10 firstObject];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [v10 firstObject];
          v14 = [v13 rangeOfString:@"."];

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = 30;
          }

          else
          {
            v15 = 2;
          }

          v25[1] = v15;
          v16 = [v10 objectAtIndexedSubscript:0];
          v17 = inet_pton(v15, [v16 UTF8String], &v26);

          if (v17)
          {
            v18 = **(a1 + 8);
            v19 = [WPNetworkAddressRange alloc];
            v20 = [v10 objectAtIndexedSubscript:1];
            v21 = [v20 integerValue];
            v22 = [v6 objectAtIndexedSubscript:1];
            v23 = [v6 objectAtIndexedSubscript:2];
            v24 = [(WPNetworkAddressRange *)v19 initWithAddress:v25 netMaskLength:v21 owner:v22 host:v23];
            [v18 addObject:v24];
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t std::__function::__func<WebPrivacy::createRestrictedOpenerDomains(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createRestrictedOpenerDomains(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD5C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<WebPrivacy::createRestrictedOpenerDomains(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createRestrictedOpenerDomains(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v6 = [v5 componentsSeparatedByString:@" "];

  if ([v6 count] == 2)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v6 objectAtIndexedSubscript:1];
    v9 = [v8 integerValue];

    if ((v9 - 3) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = **(a1 + 8);
      v11 = [[WPRestrictedOpenerDomain alloc] initWithDomain:v7 openerType:v9];
      [v10 addObject:v11];
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t std::__function::__func<WebPrivacy::createFingerprintingScripts(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createFingerprintingScripts(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882BD610;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<WebPrivacy::createSourceString(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createSourceString(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882BD658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<WebPrivacy::createSourceString(Platform::ArrayView<unsigned char> const&)::$_0,std::allocator<WebPrivacy::createSourceString(Platform::ArrayView<unsigned char> const&)::$_0>,void ()(Platform::ArrayView<unsigned char>&&)>::operator()(uint64_t a1, void *a2)
{
  v10 = Platform::ArrayView<unsigned char>::copyToNSString(a2);
  v3 = [**(a1 + 8) firstMatchInString:v10 options:0 range:{0, objc_msgSend(v10, "length")}];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeAtIndex:1];
    v7 = [v10 substringWithRange:{v5, v6}];
    v8 = [@"#" stringByAppendingString:v7];

    v9 = v8;
  }

  else
  {
    v9 = v10;
  }

  v11 = v9;
  [**(a1 + 16) addObject:?];
}

unsigned __int8 *Platform::computeSHA256@<X0>(_DWORD *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(a1 + 23);
  v4 = a1[2];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  return CC_SHA256(a1, v5, a2);
}

void Platform::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, 0x40uLL);
  for (i = 0; i != 32; ++i)
  {
    v5 = *(a1 + i);
    std::string::push_back(a2, a0123456789abcd[v5 >> 4]);
    std::string::push_back(a2, a0123456789abcd[v5 & 0xF]);
  }
}

void Platform::SharedMemory::map(int *a1@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (v4 == -1)
  {
    Platform::SharedMemory::map();
  }

  if (fstat(v4, &v11))
  {
    v5 = WPOSLogSharedMemory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      v7 = __error();
      Platform::SharedMemory::map(v7, v12, v6);
    }
  }

  else
  {
    if (mmap(0, v11.st_size, 1, 1, *a1, 0) != -1)
    {
      operator new();
    }

    v5 = WPOSLogSharedMemory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      v10 = __error();
      Platform::SharedMemory::map(v10, v12, v9);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  v8 = *MEMORY[0x277D85DE8];
}

void *Platform::SharedMemory::SharedMemory(void *this, void *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  return this;
}

void *Platform::SharedMemory::SharedMemory(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  result[1] = v3;
  return result;
}

{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  result[1] = v3;
  return result;
}

void Platform::SharedMemory::~SharedMemory(Platform::SharedMemory *this)
{
  v2 = *this;
  if (v2)
  {
    munmap(v2, *(this + 1));
  }
}

{
  v2 = *this;
  if (v2)
  {
    munmap(v2, *(this + 1));
  }
}

void std::__shared_ptr_emplace<Platform::SharedMemory::adopt(void *,unsigned long)::EnableMakeShared,std::allocator<Platform::SharedMemory::adopt(void *,unsigned long)::EnableMakeShared>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2882BD6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743DBFE0);
}

void *std::__shared_ptr_emplace<Platform::SharedMemory::adopt(void *,unsigned long)::EnableMakeShared,std::allocator<Platform::SharedMemory::adopt(void *,unsigned long)::EnableMakeShared>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return munmap(result, *(a1 + 32));
  }

  return result;
}

void OUTLINED_FUNCTION_0(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 8) = 1024;
  *(a3 + 10) = v4;
}

uint64_t scriptCategoriesFromNames(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isEqualToString:{@"queryparameters", v9}])
        {
          v2 |= 0x40uLL;
        }

        else if ([v6 isEqualToString:@"formcontrols"])
        {
          v2 |= 0x400uLL;
        }

        else if ([v6 isEqualToString:@"cookies"])
        {
          v2 |= 4uLL;
        }

        else if ([v6 isEqualToString:@"localstorage"])
        {
          v2 |= 0x10uLL;
        }

        else if ([v6 isEqualToString:@"screenorviewport"])
        {
          v2 |= 0x100uLL;
        }

        else if ([v6 isEqualToString:@"payments"])
        {
          v2 |= 0x20uLL;
        }

        else if ([v6 isEqualToString:@"referrer"])
        {
          v2 |= 0x80uLL;
        }

        else if ([v6 isEqualToString:@"audio"])
        {
          v2 |= 1uLL;
        }

        else if ([v6 isEqualToString:@"canvas"])
        {
          v2 |= 2uLL;
        }

        else if ([v6 isEqualToString:@"hardwareconcurrency"])
        {
          v2 |= 8uLL;
        }

        else if ([v6 isEqualToString:@"speech"])
        {
          v2 |= 0x200uLL;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

id namesFromScriptCategories(__int16 a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"audio"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"canvas"];
  }

  if ((a1 & 4) != 0)
  {
    [v3 addObject:@"cookies"];
  }

  if ((a1 & 8) != 0)
  {
    [v3 addObject:@"hardwareconcurrency"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v3 addObject:@"localstorage"];
  }

  if ((a1 & 0x20) != 0)
  {
    [v3 addObject:@"payments"];
  }

  if ((a1 & 0x40) != 0)
  {
    [v3 addObject:@"queryparameters"];
  }

  if ((a1 & 0x80) != 0)
  {
    [v3 addObject:@"referrer"];
  }

  if ((a1 & 0x100) != 0)
  {
    [v3 addObject:@"screenorviewport"];
  }

  if ((a1 & 0x200) != 0)
  {
    [v3 addObject:@"speech"];
  }

  if ((a1 & 0x400) != 0)
  {
    [v3 addObject:@"formcontrols"];
  }

  return v3;
}

WebPrivacy *WebPrivacy::filterUsingCachedParameters(WebPrivacy *this, NSURL *a2)
{
  v2 = this;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = [(WebPrivacy *)v2 query];
  if (![v40[5] length])
  {
    v12 = 0;
    goto LABEL_21;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = [(WebPrivacy *)v2 _lp_highLevelDomain];
  if ([v34[5] length])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = objc_opt_new();
    v3 = +[WPResources sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN10WebPrivacyL27filterUsingCachedParametersEP5NSURL_block_invoke;
    v17[3] = &unk_279EAF3F8;
    v19 = &v39;
    v20 = &v33;
    v4 = v2;
    v18 = v4;
    v21 = &v29;
    v22 = &v23;
    [v3 _doWithCachedLinkFilteringData:v17];

    if ((v30[3] & 1) == 0)
    {
      v12 = 0;
LABEL_19:

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(&v29, 8);
      v2 = v4;
      goto LABEL_20;
    }

    v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:0];
    v6 = [v24[5] componentsJoinedByString:@"&"];
    if ([v6 length])
    {
      v7 = [v5 string];
      v8 = [v7 mutableCopy];

      v10 = [v5 rangeOfQuery];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = WPOSLogAPI();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          WebPrivacy::filterUsingCachedParameters();
        }

        v12 = 0;
        goto LABEL_18;
      }

      [v8 replaceCharactersInRange:v10 withString:{v9, v6}];
      v13 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v8 encodingInvalidCharacters:0];

      v5 = v13;
    }

    else
    {
      [v5 setQuery:0];
    }

    v14 = [v5 URL];
    v8 = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v4;
    }

    v12 = v4;
    v4 = v15;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:
  _Block_object_dispose(&v33, 8);

LABEL_21:
  _Block_object_dispose(&v39, 8);

  return v2;
}

void sub_273D3005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose((v38 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_273D30BE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c80_ZTSKZ67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__2(void *a1, uint64_t a2)
{
  a1[4] = *(a2 + 32);
  result = *(a2 + 40);
  v5 = *(a2 + 48);
  a1[5] = result;
  a1[6] = v5;
  return result;
}

void __destroy_helper_block_ea8_32c80_ZTSKZ67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__2(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_273D31348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void checkForURLUsingFastPath(NSString *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  v3 = [(NSString *)v9 rangeOfString:@"http"];
  if (v4)
  {
    if (!v3)
    {
      v5 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      v6 = [v5 absoluteString];
      v7 = [v6 isEqual:v9];

      if (v7)
      {
LABEL_6:
        v8 = 1;
        goto LABEL_8;
      }
    }

    v5 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  v5 = 0;
LABEL_8:
  *a2 = v8;
  *(a2 + 8) = v5;
}

id WebPrivacy::applyOrderedReplacements<NSString>(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (*a2 == a2[1])
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 mutableCopy];
    for (i = a2[1]; i != *a2; [v5 replaceCharactersInRange:v7 withString:{v8, *(i + 16)}])
    {
      v7 = *(i - 24);
      v8 = *(i - 16);
      i -= 24;
    }
  }

  return v5;
}

void WebPrivacy::findOrderedReplacementRanges(WebPrivacy *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = __Block_byref_object_copy__35;
  v13 = __Block_byref_object_dispose__36;
  v14 = "";
  memset(v15, 0, sizeof(v15));
  v5 = WebPrivacy::sharedLinkDetector(v4);
  v6 = [(WebPrivacy *)v4 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZN10WebPrivacyL28findOrderedReplacementRangesEP8NSString_block_invoke;
  v8[3] = &unk_279EAF420;
  v8[4] = &v9;
  [v5 enumerateMatchesInString:v4 options:0 range:0 usingBlock:{v6, v8}];

  v7 = v10;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(a2, v7[6], v7[7], 0xAAAAAAAAAAAAAAABLL * ((v7[7] - v7[6]) >> 3));
  _Block_object_dispose(&v9, 8);
  v16 = v15;
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v16);
}

void sub_273D31660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  *(v9 - 56) = v8;
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100]((v9 - 56));

  _Unwind_Resume(a1);
}

void WebPrivacy::findOrderedReplacementRanges(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_group_create();
  operator new();
}

void sub_273D31AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c81_ZTSKZ68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__3(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = MEMORY[0x2743DC460](*(a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c81_ZTSKZ68__NSString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__3(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_273D31D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

id WebPrivacy::applyOrderedReplacements<NSAttributedString>(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (*a2 == a2[1])
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 mutableCopy];
    for (i = a2[1]; i != *a2; [v5 replaceCharactersInRange:v7 withString:{v8, *(i + 16)}])
    {
      v7 = *(i - 24);
      v8 = *(i - 16);
      i -= 24;
    }
  }

  return v5;
}

void sub_273D3202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v18 = v15;

  _Unwind_Resume(a1);
}

void sub_273D32188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, id a15)
{
  a12 = &a9;
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c91_ZTSKZ78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = MEMORY[0x2743DC460](*(a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c91_ZTSKZ78__NSAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_273D323D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void WebPrivacy::applyOrderedReplacementsInPlace<NSMutableString>(void *a1, void *a2)
{
  v6 = a1;
  for (i = a2[1]; i != *a2; [v6 replaceCharactersInRange:v4 withString:{v5, *(i + 16)}])
  {
    v4 = *(i - 24);
    v5 = *(i - 16);
    i -= 24;
  }
}

void sub_273D32670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  objc_destroyWeak((v24 + 40));

  objc_destroyWeak((v25 + 8));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_273D327D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, id a15)
{
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c95_ZTSKZ82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__5(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = MEMORY[0x2743DC460](*(a2 + 32));

  objc_copyWeak((a1 + 40), (a2 + 40));
}

void __destroy_helper_block_ea8_32c95_ZTSKZ82__NSMutableString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__5(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));
  v2 = *(a1 + 32);
}

void sub_273D32A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void WebPrivacy::applyOrderedReplacementsInPlace<NSMutableAttributedString>(void *a1, void *a2)
{
  v6 = a1;
  for (i = a2[1]; i != *a2; [v6 replaceCharactersInRange:v4 withString:{v5, *(i + 16)}])
  {
    v4 = *(i - 24);
    v5 = *(i - 16);
    i -= 24;
  }
}

void sub_273D32D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  objc_destroyWeak(&a16);

  objc_destroyWeak((v25 + 8));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_273D32EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, id a15)
{
  std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c105_ZTSKZ92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = MEMORY[0x2743DC460](*(a2 + 32));

  objc_copyWeak((a1 + 40), (a2 + 40));
}

void __destroy_helper_block_ea8_32c105_ZTSKZ92__NSMutableAttributedString_WebPrivacyExtras___wp_removeTrackingInformationFromURLsInPlace__E3__6(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));
  v2 = *(a1 + 32);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN10WebPrivacyL27filterUsingCachedParametersEP5NSURL_block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v27 = a2;
  if ([v27 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v3 = [*(*(*(a1 + 40) + 8) + 40) componentsSeparatedByString:@"&"];
    v4 = [v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v4)
    {
      v26 = *v38;
      *&v5 = 138412290;
      v24 = v5;
      v25 = v3;
      do
      {
        v6 = 0;
        v28 = v4;
        do
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v37 + 1) + 8 * v6);
          v8 = [v7 rangeOfString:@"="];
          v9 = v7;
          if (v8 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = [v7 substringToIndex:v8];
          }

          v10 = [v27 objectForKey:{v9, v24}];
          v11 = v10;
          v30 = v6;
          v31 = v9;
          if (!v10)
          {
            goto LABEL_24;
          }

          v12 = [v10 domains];
          v32 = v11;
          if ([v12 count])
          {
            v13 = [v11 domains];
            v29 = [v13 containsObject:*(*(*(a1 + 48) + 8) + 40)];
          }

          else
          {
            v29 = 1;
          }

          v14 = [v11 paths];
          v15 = [v14 count] == 0;

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v16 = [v11 paths];
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v17)
          {
            v18 = *v34;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v33 + 1) + 8 * i);
                v21 = [*(a1 + 32) path];
                LODWORD(v20) = [v21 rangeOfString:v20] != 0x7FFFFFFFFFFFFFFFLL;

                v15 |= v20;
              }

              v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v17);
          }

          v11 = v32;
          if ((v29 & v15) == 1)
          {
            v22 = WPOSLogAPI();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v42 = v31;
              _os_log_impl(&dword_273D20000, v22, OS_LOG_TYPE_INFO, "Removed known tracking query parameter: %@", buf, 0xCu);
            }

            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          else
          {
LABEL_24:

            [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
          }

          v6 = v30 + 1;
          v3 = v25;
        }

        while (v30 + 1 != v28);
        v4 = [v25 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v4);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

__n128 __Block_byref_object_copy__35(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

id WebPrivacy::sharedLinkDetector(WebPrivacy *this)
{
  if (WebPrivacy::sharedLinkDetector(void)::onceToken != -1)
  {
    WebPrivacy::sharedLinkDetector();
  }

  v2 = WebPrivacy::sharedLinkDetector(void)::detector;

  return v2;
}

void ___ZN10WebPrivacyL28findOrderedReplacementRangesEP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfRanges] == 1)
  {
    v4 = [v3 URL];
    v5 = [v4 _wp_urlByRemovingTrackingInformation];

    if (v5)
    {
      v6 = [v3 URL];
      v7 = [v5 isEqual:v6];

      if ((v7 & 1) == 0)
      {
        v8 = [v5 absoluteString];
        if ([v8 length])
        {
          v9 = *(*(a1 + 32) + 8);
          v11[0] = [v3 range];
          v11[1] = v10;
          v12 = v8;
          std::vector<std::pair<_NSRange,NSString * {__strong}>>::push_back[abi:nn200100]((v9 + 48), v11);
        }
      }
    }
  }
}

uint64_t *std::vector<std::pair<_NSRange,NSString * {__strong}>>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      std::allocator<std::pair<_NSRange,NSString * {__strong}>>::allocate_at_least[abi:nn200100](result, v11);
    }

    v12 = 24 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    *v12 = *a2;
    v13 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(v12 + 16) = v13;
    v14[2] = 24 * v8 + 24;
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__swap_out_circular_buffer(result, v14);
    v7 = v3[1];
    result = std::__split_buffer<std::pair<_NSRange,NSString * {__strong}>>::~__split_buffer(v14);
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(v4 + 16) = v6;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

void sub_273D33714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<_NSRange,NSString * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN10WebPrivacyL18sharedLinkDetectorEv_block_invoke()
{
  v4 = 0;
  v0 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:&v4];
  v1 = v4;
  v2 = WebPrivacy::sharedLinkDetector(void)::detector;
  WebPrivacy::sharedLinkDetector(void)::detector = v0;

  if (v1)
  {
    v3 = WPOSLogAPI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN10WebPrivacyL18sharedLinkDetectorEv_block_invoke_cold_1();
    }
  }
}

void std::vector<std::pair<_NSRange,NSString * {__strong}>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = *v7;
      v9 = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v8 + 16) = v9;
      v7 += 24;
      v8 += 24;
    }

    while (v7 != v4);
    do
    {

      v5 += 24;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v10 = *a1;
  *a1 = v6;
  a1[1] = v10;
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void std::allocator<std::pair<_NSRange,NSString * {__strong}>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<_NSRange,NSString * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<_NSRange,NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}>*,std::pair<_NSRange,NSString * {__strong}>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<_NSRange,NSString * {__strong}>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<_NSRange,NSString * {__strong}>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::pair<_NSRange,NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::pair<_NSRange,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 3;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS2_4pairI8_NSRangeU8__strongS1_EENS2_9allocatorIS7_EEEEE_block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  if ([v14 numberOfRanges] == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v3 = [v14 URL];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 32);
    v7 = v14;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v6;
    v9 = malloc_type_malloc(0x40uLL, 0x10E0040BFAB304AuLL);
    *v9 = MEMORY[0x277D85DC8];
    v9[1] = 50331650;
    v9[2] = _ZZN8Platform8BlockPtrIFvP5NSURLEE12fromCallableIZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS9_4pairI8_NSRangeU8__strongS8_EENS9_9allocatorISE_EEEEEEUb_E3__0EES4_T_ENUlPvS2_E_8__invokeESN_S2_;
    v9[3] = &_ZZN8Platform8BlockPtrIFvP5NSURLEE12fromCallableIZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS9_4pairI8_NSRangeU8__strongS8_EENS9_9allocatorISE_EEEEEEUb_E3__0EES4_T_E10descriptor;
    v9[4] = v5;
    v9[5] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v8;
      v9[6] = v10;
      v9[7] = v7;
      v11 = MEMORY[0x2743DC460](v9);

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    else
    {
      v12 = v8;
      v9[6] = v12;
      v9[7] = v7;
      v11 = MEMORY[0x2743DC460](v9);
    }

    v13 = MEMORY[0x2743DC460](v11);
    [v3 _wp_removeTrackingInformation:v13];

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_273D33C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  _ZZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS2_4pairI8_NSRangeU8__strongS1_EENS2_9allocatorIS7_EEEEEEUb_EN3__0D1Ev(&a11);

  _Unwind_Resume(a1);
}

uint64_t _ZZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS2_4pairI8_NSRangeU8__strongS1_EENS2_9allocatorIS7_EEEEEEUb_EN3__0D1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t __copy_helper_block_ea8_40c98_ZTSNSt3__110shared_ptrINS_6vectorINS_4pairI8_NSRangeU8__strongP8NSStringEENS_9allocatorIS7_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c98_ZTSNSt3__110shared_ptrINS_6vectorINS_4pairI8_NSRangeU8__strongP8NSStringEENS_9allocatorIS7_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t ___ZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS2_4pairI8_NSRangeU8__strongS1_EENS2_9allocatorIS7_EEEEE_block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Lb0EEEvT1_SJ_T0_NS_15iterator_traitsISJ_E15difference_typeEb(v3, v4, v6, 1);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 16);

  return v8();
}

void std::__shared_ptr_emplace<std::vector<std::pair<_NSRange,NSString * {__strong}>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2882BD858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743DBFE0);
}

void _ZZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS2_4pairI8_NSRangeU8__strongS1_EENS2_9allocatorIS7_EEEEEEUb_EN3__0clEP5NSURL(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = [*(a1 + 24) URL];
    v6 = [v3 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [v3 absoluteString];
      if ([v7 length])
      {
        v8 = *a1;
        v10[0] = [*(a1 + 24) range];
        v10[1] = v9;
        v11 = v7;
        std::vector<std::pair<_NSRange,NSString * {__strong}>>::push_back[abi:nn200100](v8, v10);
      }
    }
  }

  dispatch_group_leave(v4);
}

void sub_273D33ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  dispatch_group_leave(v13);

  _Unwind_Resume(a1);
}

void _ZZN8Platform8BlockPtrIFvP5NSURLEE12fromCallableIZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONSt3__16vectorINS9_4pairI8_NSRangeU8__strongS8_EENS9_9allocatorISE_EEEEEEUb_E3__0EES4_T_ENUlPKvE_8__invokeESO_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Lb0EEEvT1_SJ_T0_NS_15iterator_traitsISJ_E15difference_typeEb(__int128 *a1, unint64_t *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v170 = a2;
  v171 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      v87 = *(v6 - 3);
      v170 = (v6 - 24);
      v88 = v87 == *v7;
      v89 = v87 < *v7;
      if (v88)
      {
        v89 = *(v6 - 2) < *(v7 + 8);
      }

      if (v89)
      {
        v85 = &v171;
        v86 = &v170;
LABEL_98:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(v85, v86);
      }

      return;
    }

LABEL_9:
    if (v8 <= 575)
    {
      v90 = (v7 + 24);
      v92 = v7 == v6 || v90 == v6;
      if (a4)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v7;
          do
          {
            v95 = v90;
            v96 = v94[3];
            v97 = v94[4];
            v98 = v96 < *v94;
            if (v96 == *v94)
            {
              v98 = v97 < v94[1];
            }

            if (v98)
            {
              v99 = v94[5];
              v94[5] = 0;
              v100 = v93;
              while (1)
              {
                v101 = v7 + v100;
                *(v101 + 24) = *(v7 + v100);
                v102 = *(v7 + v100 + 16);
                *(v101 + 16) = 0;
                v103 = *(v7 + v100 + 40);
                *(v101 + 40) = v102;

                if (!v100)
                {
                  break;
                }

                v104 = *(v101 - 24);
                v88 = v96 == v104;
                v105 = v96 < v104;
                if (v88)
                {
                  v105 = v97 < *(v101 - 16);
                }

                v100 -= 24;
                if (!v105)
                {
                  v106 = (v7 + v100 + 24);
                  goto LABEL_120;
                }
              }

              v106 = v7;
LABEL_120:
              *v106 = v96;
              v106[1] = v97;
              v107 = v106[2];
              v106[2] = v99;
            }

            v90 = (v95 + 24);
            v93 += 24;
            v94 = v95;
          }

          while ((v95 + 24) != v6);
        }
      }

      else if (!v92)
      {
        v156 = (v7 + 40);
        do
        {
          v157 = v90;
          v158 = *(v7 + 24);
          v159 = *(v7 + 32);
          v160 = v158 < *v7;
          if (v158 == *v7)
          {
            v160 = v159 < *(v7 + 8);
          }

          if (v160)
          {
            v161 = *(v7 + 40);
            *(v7 + 40) = 0;
            v162 = v156;
            v163 = v156;
            do
            {
              *(v162 - 1) = *(v162 - 5);
              v164 = *(v163 - 3);
              v163 -= 3;
              *v163 = 0;
              v165 = *v162;
              *v162 = v164;

              v166 = *(v162 - 8);
              v88 = v158 == v166;
              v167 = v158 < v166;
              if (v88)
              {
                v167 = v159 < *(v162 - 7);
              }

              v162 = v163;
            }

            while (v167);
            *(v163 - 2) = v158;
            *(v163 - 1) = v159;
            v168 = *v163;
            *v163 = v161;
          }

          v90 = (v157 + 24);
          v156 += 3;
          v7 = v157;
        }

        while ((v157 + 24) != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 == v6)
      {
        return;
      }

      v108 = v10 >> 1;
      v109 = v10 >> 1;
      do
      {
        v110 = v109;
        if (v108 >= v109)
        {
          v111 = (2 * v109) | 1;
          v112 = (v7 + 24 * v111);
          if (2 * v110 + 2 >= v9)
          {
            v113 = *v112;
          }

          else
          {
            v113 = v112[3];
            v114 = v112[1] < v112[4];
            if (*v112 != v113)
            {
              v114 = *v112 < v113;
            }

            if (v114)
            {
              v112 += 3;
            }

            else
            {
              v113 = *v112;
            }

            if (v114)
            {
              v111 = 2 * v110 + 2;
            }
          }

          v115 = (v7 + 24 * v110);
          v117 = *v115;
          v116 = v115[1];
          v88 = v113 == *v115;
          v118 = v113 < *v115;
          if (v88)
          {
            v118 = v112[1] < v116;
          }

          if (!v118)
          {
            v169 = v115[2];
            v115[2] = 0;
            do
            {
              v119 = v115;
              v115 = v112;
              *v119 = *v112;
              v120 = v112[2];
              v115[2] = 0;
              v121 = v119[2];
              v119[2] = v120;

              if (v108 < v111)
              {
                break;
              }

              v112 = (v7 + 24 * ((2 * v111) | 1));
              if (2 * v111 + 2 >= v9)
              {
                v122 = *v112;
                v111 = (2 * v111) | 1;
              }

              else
              {
                v122 = v112[3];
                v123 = v112[1] < v112[4];
                if (*v112 != v122)
                {
                  v123 = *v112 < v122;
                }

                if (v123)
                {
                  v112 += 3;
                }

                else
                {
                  v122 = *v112;
                }

                v111 = v123 ? 2 * v111 + 2 : (2 * v111) | 1;
              }

              v124 = v112[1] < v116;
              v88 = v122 == v117;
              v125 = v122 < v117;
              if (!v88)
              {
                v124 = v125;
              }
            }

            while (!v124);
            *v115 = v117;
            v115[1] = v116;
            v126 = v115[2];
            v115[2] = v169;
          }
        }

        v109 = v110 - 1;
      }

      while (v110);
      v127 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      while (2)
      {
        v128 = 0;
        v129 = v6;
        v174 = *v7;
        v130 = *(v7 + 16);
        *(v7 + 16) = 0;
        v131 = v7;
        do
        {
          v132 = v131 + 24 * v128;
          v133 = (v132 + 24);
          if (2 * v128 + 2 >= v127)
          {
            v128 = (2 * v128) | 1;
          }

          else
          {
            v135 = *(v132 + 48);
            v134 = (v132 + 48);
            v136 = *(v134 - 3);
            v137 = v136 < v135;
            if (v136 == v135)
            {
              v137 = *(v134 - 2) < v134[1];
            }

            if (v137)
            {
              v133 = v134;
              v128 = 2 * v128 + 2;
            }

            else
            {
              v128 = (2 * v128) | 1;
            }
          }

          *v131 = *v133;
          v138 = v133[2];
          v133[2] = 0;
          v139 = *(v131 + 16);
          *(v131 + 16) = v138;

          v131 = v133;
        }

        while (v128 <= ((v127 - 2) >> 1));
        v6 = (v6 - 24);
        if (v133 != (v129 - 24))
        {
          *v133 = *v6;
          v140 = *(v129 - 1);
          *(v129 - 1) = 0;
          v141 = v133[2];
          v133[2] = v140;

          *v6 = v174;
          v142 = *(v129 - 1);
          *(v129 - 1) = v130;

          v143 = v133 - v7 + 24;
          if (v143 >= 25)
          {
            v144 = (0xAAAAAAAAAAAAAAABLL * (v143 >> 3) - 2) >> 1;
            v145 = (v7 + 24 * v144);
            v146 = *v133;
            v147 = v133[1];
            v148 = *v145 < *v133;
            if (*v145 == *v133)
            {
              v148 = v145[1] < v147;
            }

            if (v148)
            {
              v149 = v133[2];
              v133[2] = 0;
              do
              {
                v150 = v133;
                v133 = v145;
                *v150 = *v145;
                v151 = v145[2];
                v133[2] = 0;
                v152 = v150[2];
                v150[2] = v151;

                if (!v144)
                {
                  break;
                }

                v144 = (v144 - 1) >> 1;
                v145 = (v7 + 24 * v144);
                v153 = *v145 < v146;
                if (*v145 == v146)
                {
                  v153 = v145[1] < v147;
                }
              }

              while (v153);
              *v133 = v146;
              v133[1] = v147;
              v154 = v133[2];
              v133[2] = v149;
LABEL_178:
            }
          }

          if (v127-- <= 2)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v133 = v174;
      v154 = v133[2];
      v133[2] = v130;
      goto LABEL_178;
    }

    v11 = v6 - 24;
    if (v8 < 0xC01)
    {
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(v7 + 24 * (v9 >> 1), v7, v11);
      v12 = v171;
    }

    else
    {
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(v7, (v7 + 24 * (v9 >> 1)), v11);
      v12 = v171;
      v13 = (v171 + 24 * (v9 >> 1));
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(v171 + 24, (v13 - 24), (v170 - 3));
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_((v171 + 3), (v13 + 24), v170 - 72);
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(v13 - 24, v13, v13 + 24);
      v14 = *v171;
      *v171 = *v13;
      *v13 = v14;
      v15 = *(v12 + 2);
      *(v12 + 2) = 0;
      v16 = *(v13 + 2);
      *(v13 + 2) = 0;
      v17 = *(v12 + 2);
      *(v12 + 2) = v16;

      v18 = *(v13 + 2);
      *(v13 + 2) = v15;
    }

    --a3;
    if (a4)
    {
      v19 = v170;
      v20 = *v12;
      v21 = *(v12 + 1);
    }

    else
    {
      v22 = *(v12 - 3);
      v20 = *v12;
      v21 = *(v12 + 1);
      v88 = v22 == *v12;
      v23 = v22 < *v12;
      if (v88)
      {
        v23 = *(v12 - 2) < v21;
      }

      v19 = v170;
      if (!v23)
      {
        v175[0] = v170;
        v51 = *(v12 + 2);
        *(v12 + 2) = 0;
        v52 = *(v19 - 3);
        v88 = v20 == v52;
        v53 = v20 < v52;
        if (v88)
        {
          v53 = v21 < *(v19 - 2);
        }

        if (v53)
        {
          v54 = v12;
          do
          {
            v55 = *(v54 + 3);
            v56 = *(v54 + 4);
            v54 = (v54 + 24);
            v57 = v21 < v56;
            v88 = v20 == v55;
            v58 = v20 < v55;
            if (v88)
            {
              v58 = v57;
            }
          }

          while (!v58);
        }

        else
        {
          v59 = (v12 + 24);
          do
          {
            v54 = v59;
            if (v59 >= v19)
            {
              break;
            }

            v60 = *v59;
            v61 = v21 < *(v54 + 1);
            v88 = v20 == v60;
            v62 = v20 < v60;
            if (!v88)
            {
              v61 = v62;
            }

            v59 = (v54 + 24);
          }

          while (!v61);
        }

        *&v174 = v54;
        if (v54 < v19)
        {
          do
          {
            v63 = *(v19 - 3);
            v64 = *(v19 - 2);
            v19 = (v19 - 24);
            v65 = v21 < v64;
            v88 = v20 == v63;
            v66 = v20 < v63;
            if (v88)
            {
              v66 = v65;
            }
          }

          while (v66);
          v175[0] = v19;
        }

        if (v54 < v19)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v174, v175);
            v54 = v174;
            do
            {
              v67 = *(v54 + 3);
              v68 = *(v54 + 4);
              v54 = (v54 + 24);
              v69 = v21 < v68;
              v88 = v20 == v67;
              v70 = v20 < v67;
              if (v88)
              {
                v70 = v69;
              }
            }

            while (!v70);
            *&v174 = v54;
            v71 = (v175[0] - 24);
            do
            {
              v175[0] = v71;
              v72 = *v71;
              v73 = *(v71 + 1);
              v71 = (v71 - 24);
              v74 = v21 < v73;
              v88 = v20 == v72;
              v75 = v20 < v72;
              if (v88)
              {
                v75 = v74;
              }
            }

            while (v75);
          }

          while (v54 < (v71 + 24));
        }

        if ((v54 - 24) != v12)
        {
          *v12 = *(v54 - 24);
          v76 = *(v54 - 1);
          *(v54 - 1) = 0;
          v77 = *(v12 + 2);
          *(v12 + 2) = v76;
        }

        *(v54 - 3) = v20;
        *(v54 - 2) = v21;
        v78 = *(v54 - 1);
        *(v54 - 1) = v51;

        a4 = 0;
        v7 = v174;
        v171 = v174;
        goto LABEL_83;
      }
    }

    v24 = 0;
    v175[0] = v19;
    v25 = *(v12 + 2);
    *(v12 + 2) = 0;
    do
    {
      v26 = *(v12 + v24 + 24);
      v27 = *(v12 + v24 + 32) < v21;
      v88 = v26 == v20;
      v28 = v26 < v20;
      if (!v88)
      {
        v27 = v28;
      }

      v24 += 24;
    }

    while (v27);
    v29 = (v12 + v24);
    *&v174 = v12 + v24;
    if (v24 == 24)
    {
      do
      {
        if (v29 >= v19)
        {
          break;
        }

        v34 = *(v19 - 3);
        v35 = *(v19 - 2);
        v19 = (v19 - 24);
        v36 = v35 < v21;
        v88 = v34 == v20;
        v37 = v34 < v20;
        if (v88)
        {
          v37 = v36;
        }
      }

      while (!v37);
    }

    else
    {
      do
      {
        v30 = *(v19 - 3);
        v31 = *(v19 - 2);
        v19 = (v19 - 24);
        v32 = v31 < v21;
        v88 = v30 == v20;
        v33 = v30 < v20;
        if (v88)
        {
          v33 = v32;
        }
      }

      while (!v33);
    }

    v175[0] = v19;
    v7 = v29;
    if (v29 < v19)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v174, v175);
        v7 = v174;
        do
        {
          v38 = *(v7 + 24);
          v39 = *(v7 + 32);
          v7 += 24;
          v40 = v39 < v21;
          v88 = v38 == v20;
          v41 = v38 < v20;
          if (v88)
          {
            v41 = v40;
          }
        }

        while (v41);
        *&v174 = v7;
        v42 = (v175[0] - 24);
        do
        {
          v175[0] = v42;
          v43 = *v42;
          v44 = *(v42 + 1);
          v42 = (v42 - 24);
          v45 = v44 < v21;
          v88 = v43 == v20;
          v46 = v43 < v20;
          if (v88)
          {
            v46 = v45;
          }
        }

        while (!v46);
      }

      while (v7 < v42 + 24);
    }

    if ((v7 - 24) != v12)
    {
      *v12 = *(v7 - 24);
      v47 = *(v7 - 8);
      *(v7 - 8) = 0;
      v48 = *(v12 + 2);
      *(v12 + 2) = v47;

      v12 = v171;
    }

    *(v7 - 24) = v20;
    *(v7 - 16) = v21;
    v49 = *(v7 - 8);
    *(v7 - 8) = v25;

    if (v29 < v19)
    {
      goto LABEL_45;
    }

    v50 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_EEbT1_SJ_T0_(v12, (v7 - 24));
    if (!_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_EEbT1_SJ_T0_(v7, v170))
    {
      if (!v50)
      {
        v12 = v171;
LABEL_45:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Lb0EEEvT1_SJ_T0_NS_15iterator_traitsISJ_E15difference_typeEb(v12, v7 - 24, a3, a4 & 1);
        a4 = 0;
      }

      v171 = v7;
      goto LABEL_83;
    }

    if (v50)
    {
      return;
    }

    v170 = (v7 - 24);
    v7 = v171;
LABEL_83:
    v6 = v170;
  }

  if (v9 == 3)
  {
    v170 = (v6 - 24);
    _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(v7, (v7 + 24), v6 - 24);
    return;
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {
      v170 = (v6 - 24);
      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEvT1_SJ_SJ_SJ_SJ_T0_(v7, v7 + 24, v7 + 48, v7 + 72, v6 - 24);
      return;
    }

    goto LABEL_9;
  }

  v170 = (v6 - 24);
  v173 = (v7 + 48);
  *&v174 = v7;
  v175[0] = (v7 + 24);
  v172 = (v6 - 24);
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZN10WebPrivacyL28findOrderedReplacementRangesEP8NSStringU13block_pointerFvONS_6vectorINS_4pairI8_NSRangeU8__strongS4_EENS_9allocatorIS9_EEEEEEUb0_E3__1PS9_Li0EEEbT1_SJ_SJ_T0_(v7, (v7 + 24), v7 + 48);
  v79 = *(v6 - 3);
  v80 = *(v7 + 48);
  v88 = v79 == v80;
  v81 = v79 < v80;
  if (v88)
  {
    v81 = *(v6 - 2) < *(v7 + 56);
  }

  if (v81)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(&v173, &v172);
    v82 = *(v7 + 24);
    v83 = *(v173 + 1) < *(v7 + 32);
    if (*v173 != v82)
    {
      v83 = *v173 < v82;
    }

    if (v83)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<_NSRange,NSString * {__strong}> *&,std::pair<_NSRange,NSString * {__strong}> *&>(v175, &v173);
      v84 = *(v175[0] + 1) < *(v7 + 8);
      if (*v175[0] != *v7)
      {
        v84 = *v175[0] < *v7;
      }

      if (v84)
      {
        v85 = &v174;
        v86 = v175;
        goto LABEL_98;
      }
    }
  }
}