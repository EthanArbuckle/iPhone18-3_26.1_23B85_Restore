void sub_261843E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

rf::ColorPaletteClassificationARKit *rf::ColorPaletteClassificationARKit::ColorPaletteClassificationARKit(rf::ColorPaletteClassificationARKit *this)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2) = _Q0;
  *(this + 6) = 0;
  v7 = this + 48;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10[0] = xmmword_261865CB0;
  v10[1] = xmmword_26185E190;
  v10[2] = xmmword_261865AF0;
  v10[3] = xmmword_261865CC0;
  v10[4] = xmmword_261865CD0;
  v10[5] = xmmword_261865CE0;
  v10[6] = xmmword_261865CF0;
  v10[7] = xmmword_261865D00;
  v10[8] = xmmword_261865D10;
  v10[9] = xmmword_261865D20;
  v10[10] = xmmword_261865D30;
  v10[11] = xmmword_261865D40;
  v10[12] = xmmword_261865D50;
  v10[13] = xmmword_261865D60;
  v10[14] = xmmword_261865D70;
  v10[15] = xmmword_261865D80;
  v10[16] = xmmword_261865D90;
  v10[17] = xmmword_261865DA0;
  v10[18] = xmmword_261865DB0;
  v10[19] = xmmword_261865DC0;
  v10[20] = xmmword_261865DD0;
  v10[21] = xmmword_261865DE0;
  v10[22] = xmmword_261865DF0;
  v10[23] = xmmword_261865E00;
  v10[24] = xmmword_261865E10;
  v10[25] = xmmword_261865E20;
  v10[26] = xmmword_261865E30;
  v10[27] = xmmword_261865E40;
  v10[28] = xmmword_261865E50;
  v10[29] = xmmword_261865E60;
  v10[30] = xmmword_261865E70;
  v10[31] = xmmword_261865E80;
  v10[32] = xmmword_261865E90;
  v10[33] = xmmword_261865EA0;
  v10[34] = xmmword_261865EB0;
  v10[35] = xmmword_261865EC0;
  v10[36] = xmmword_261865ED0;
  v10[37] = xmmword_261865EE0;
  v10[38] = xmmword_261865EF0;
  v10[39] = xmmword_261865F00;
  v10[40] = xmmword_261865F10;
  v10[41] = xmmword_261865F20;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPKS1_S7_EEvT_T0_l(this, v10, v11, 0x2AuLL);
  std::vector<BOOL>::resize(v7, (*(this + 1) - *this) >> 4);
  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPKS1_S7_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 16;
        *v16 = v17;
        v16 += 16;
        v15 += 16;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

void RFSyntheticEnvironmentServiceCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4E08 != -1)
  {
    dispatch_once(&qword_2810C4E08, &__block_literal_global_16);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

uint64_t RFSyntheticEnvironmentServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = ECSManagerNullable;
  v11 = v7;
  v12 = a2;
  v13 = 1;
  v14 = 0;
  return (*(*(v5 + 8) + 16))(v5 + 8, &v9);
}

uint64_t RFSyntheticEnvironmentServiceSetFinishedLoadingCallback(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v9 = 0;
  if (a2)
  {
    v8[0] = &unk_28740ACD8;
    v8[1] = MEMORY[0x26670D530](a2);
    v9 = v8;
    v11 = v10;
    unk_28740ACF0(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  v3 = v2 + 184;
  if (v10 != (v2 + 184))
  {
    v4 = v11;
    v5 = *(v2 + 208);
    if (v11 == v10)
    {
      if (v5 == v3)
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = 0;
        (*(**(v2 + 208) + 24))(*(v2 + 208), v10);
        (*(**(v2 + 208) + 32))(*(v2 + 208));
        *(v2 + 208) = 0;
        v11 = v10;
        (*(v12[0] + 24))(v12, v2 + 184);
        (*(v12[0] + 32))(v12);
      }

      else
      {
        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = *(v2 + 208);
      }

      *(v2 + 208) = v3;
    }

    else if (v5 == v3)
    {
      (*(*v5 + 24))(*(v2 + 208), v10);
      (*(**(v2 + 208) + 32))(*(v2 + 208));
      *(v2 + 208) = v11;
      v11 = v10;
    }

    else
    {
      v11 = *(v2 + 208);
      *(v2 + 208) = v4;
    }
  }

  std::__function::__value_func<void ()(NSURL *,NSError *)>::~__value_func[abi:ne200100](v10);
  result = std::__function::__value_func<void ()(NSURL *,NSError *)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261844670(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer28SyntheticEnvironmentConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_27[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::SyntheticEnvironmentConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4E10 = 0u;
  xmmword_2810C4E20 = 0u;
  xmmword_2810C4E30 = 0u;
  unk_2810C4E40 = 0u;
  xmmword_2810C4E50 = 0u;
  unk_2810C4E60 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4E10 + 1) = p_dst;
  *&xmmword_2810C4E20 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>>::initCallback;
  *&xmmword_2810C4E30 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>>::finalizeCallback;
  qword_2810C4E48 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4E50 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_18 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26184482C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::SyntheticEnvironmentConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::SyntheticEnvironmentConsumer::~SyntheticEnvironmentConsumer((v2 + 8));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(NSURL *,NSError *),std::allocator<void({block_pointer} {__strong})(NSURL *,NSError *)>,void ()(NSURL *,NSError *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(NSURL *,NSError *),std::allocator<void({block_pointer} {__strong})(NSURL *,NSError *)>,void ()(NSURL *,NSError *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740ACD8;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(NSURL *,NSError *),std::allocator<void({block_pointer} {__strong})(NSURL *,NSError *)>,void ()(NSURL *,NSError *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(NSURL *,NSError *),std::allocator<void({block_pointer} {__strong})(NSURL *,NSError *)>,void ()(NSURL *,NSError *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(NSURL *,NSError *),std::allocator<void({block_pointer} {__strong})(NSURL *,NSError *)>,void ()(NSURL *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(NSURL *,NSError *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void RFVFXCollisionServiceCreate()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_2810C4E78 != -1)
  {
    dispatch_once(&qword_2810C4E78, &__block_literal_global_17);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

uint64_t RFVFXCollisionServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = ECSManagerNullable;
  v11 = v7;
  v12 = a2;
  v13 = 1;
  v14 = 0;
  return (*(*(v5 + 8) + 16))(v5 + 8, &v9);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer20VFXCollisionConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_28[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::VFXCollisionConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4E80 = 0u;
  xmmword_2810C4E90 = 0u;
  xmmword_2810C4EA0 = 0u;
  unk_2810C4EB0 = 0u;
  xmmword_2810C4EC0 = 0u;
  unk_2810C4ED0 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4E80 + 1) = p_dst;
  *&xmmword_2810C4E90 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>>::initCallback;
  *&xmmword_2810C4EA0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>>::finalizeCallback;
  qword_2810C4EB8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4EC0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_19 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261844DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::VFXCollisionConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 8) = &unk_287408E60;
    std::__hash_table<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_map<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>>>>::~__hash_table(v2 + 40);

    JUMPOUT(0x26670D060);
  }

  return result;
}

void sub_261845584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void **a43)
{
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a35);

  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](&STACK[0x960]);
  a43 = &a32;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a43);
  rf::data_flow::provider::InputData::~InputData(&STACK[0xA00]);
  _Unwind_Resume(a1);
}

void std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = *(a2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
}

uint64_t anonymous namespace::isInputProbe(_anonymous_namespace_ *this, ARAnchor *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void anonymous namespace::createInputProbeFromARAnchor(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = [(_anonymous_namespace_ *)v4 identifier];
  rf::data_flow::RFUUID::copy(v5, v31);
  [(_anonymous_namespace_ *)v4 transform];
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  [(_anonymous_namespace_ *)v4 extent];
  v36 = v10;
  LOBYTE(v37) = 0;
  v38 = 0;
  v39 = 1065353216;

  v11 = [(_anonymous_namespace_ *)v4 environmentTexture];
  LOBYTE(v5) = v11 == 0;

  if ((v5 & 1) == 0)
  {
    v12 = [(_anonymous_namespace_ *)v4 environmentTexture];
    if (v38 == 1)
    {
      v13 = v37;
      v37 = v12;
    }

    else
    {
      v37 = v12;
      v38 = 1;
    }
  }

  v14 = rf::realityFusionLogObject(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(v31, __p);
    v15 = v26;
    v16 = __p[0];
    v17 = [(_anonymous_namespace_ *)v4 environmentTexture];
    v18 = v17;
    v19 = __p;
    if (v15 < 0)
    {
      v19 = v16;
    }

    *buf = 136446466;
    v28 = v19;
    v29 = 2048;
    v30 = v17;
    _os_log_impl(&dword_2617CB000, v14, OS_LOG_TYPE_DEFAULT, "RFARSessionObserver: Updating probe %{public}s with texture %p", buf, 0x16u);

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v20 = v35;
  v21 = v36;
  *(a2 + 64) = v34;
  *(a2 + 80) = v20;
  *(a2 + 96) = v21;
  v22 = v31[1];
  *a2 = v31[0];
  *(a2 + 16) = v22;
  v23 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v23;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  if (v38 == 1)
  {
    *(a2 + 112) = v37;
    *(a2 + 120) = 1;
  }

  *(a2 + 128) = v39;

  v24 = *MEMORY[0x277D85DE8];
}

void sub_261845978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a35 == 1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::isInputAnchor(_anonymous_namespace_ *this, ARAnchor *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    isInputProbe = 1;
  }

  else
  {
  }

  return isInputProbe ^ 1u;
}

void sub_26184602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, void **a33)
{
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a31);

  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](&STACK[0x910]);
  a33 = &a28;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a33);
  rf::data_flow::provider::InputData::~InputData(&STACK[0x9B0]);
  _Unwind_Resume(a1);
}

void sub_261846914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void **a35)
{
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a35);

  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](&STACK[0x950]);
  a14 = &a32;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a14);
  rf::data_flow::provider::InputData::~InputData(&STACK[0x9F0]);
  _Unwind_Resume(a1);
}

void sub_261846FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&a35);

  STACK[0x9E0] = &a32;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&STACK[0x9E0]);
  rf::data_flow::provider::InputData::~InputData(&a59);
  _Unwind_Resume(a1);
}

void sub_2618473CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::vector<rf::data_flow::EnvironmentProbe>::vector[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>,rf::data_flow::EnvironmentProbe (*)(ARAnchor *)>>(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](a2 + 8);
  v6 = *(*(a2 + 8) + 8);
  if (v6 == v4)
  {
    v9 = 0;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = 0;
    do
    {
      v10 = v7 + 1;
      v7 = *(*v8 + 1);
      while (v10 != v7)
      {
        if (v8[1](*v10))
        {
          v7 = v10;
          break;
        }

        ++v10;
      }

      ++v9;
    }

    while (v7 != v6);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](a2 + 8);
  v11 = *(*(a2 + 8) + 8);
  if (v9)
  {
    if (v9 < 0x1C71C71C71C71C8)
    {
      std::allocator<rf::data_flow::EnvironmentProbe>::allocate_at_least[abi:ne200100](a1, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void std::vector<rf::data_flow::EnvironmentProbe>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void anonymous namespace::createInputAnchorFromARAnchor(_anonymous_namespace_ *this, ARAnchor *a2)
{
  v154 = *MEMORY[0x277D85DE8];
  v128 = a2;
  rf::helpers::getBaseAnchorPropertiesFromARAnchor(v128, &v147);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v128;
    v5 = [(ARAnchor *)v4 planeExtent];
    [v5 rotationOnYAxis];
    v7 = __sincosf_stret(v6);

    [(ARAnchor *)v4 center];
    *v126 = v8;
    v9 = [(ARAnchor *)v4 geometry];
    v10 = [v9 boundaryVertexCount];

    __p[0] = 0;
    __p[1] = 0;
    v130 = 0;
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = [(ARAnchor *)v4 geometry];
        v13 = [v12 boundaryVertices];
        v14 = __p[1];
        if (__p[1] >= v130)
        {
          v16 = (__p[1] - __p[0]) >> 4;
          if ((v16 + 1) >> 60)
          {
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v17 = (v130 - __p[0]) >> 3;
          if (v17 <= v16 + 1)
          {
            v17 = v16 + 1;
          }

          if (v130 - __p[0] >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(__p, v18);
          }

          v19 = (16 * v16);
          *v19 = *(v13 + 16 * i);
          v15 = (16 * v16 + 16);
          v20 = v19 - (__p[1] - __p[0]);
          memcpy(v20, __p[0], __p[1] - __p[0]);
          v21 = __p[0];
          __p[0] = v20;
          __p[1] = v15;
          v130 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *__p[1] = *(v13 + 16 * i);
          v15 = v14 + 16;
        }

        __p[1] = v15;
      }
    }

    v131 = v147;
    v132 = v148;
    v121 = v150;
    v133 = v149;
    v145 = v151;
    v22 = *&v152[4];
    v146 = *v152;
    v143 = *&v152[8];
    v144 = v152[24];
    v23 = v153;
    v153 = 0;
    v24 = [(ARAnchor *)v4 planeExtent];
    [v24 width];
    v119 = v25;
    v26 = [(ARAnchor *)v4 planeExtent];
    [v26 height];
    v116 = v27;
    v28 = [(ARAnchor *)v4 alignment];
    v29 = [(ARAnchor *)v4 classification];
    v115 = *__p;
    v30 = v130;
    __p[1] = 0;
    v130 = 0;
    __p[0] = 0;

    v31 = vrsqrte_f32(1065353216);
    v32 = vmul_f32(v31, vrsqrts_f32(1065353216, vmul_f32(v31, v31)));
    v43 = vmulq_n_f32(xmmword_26185DD10, vmul_f32(v32, vrsqrts_f32(1065353216, vmul_f32(v32, v32))).f32[0]);
    v33 = vmulq_f32(v43, v43).f32[0];
    v34 = vmuls_lane_f32(v43.f32[1], *v43.f32, 1);
    v35 = vmuls_lane_f32(v43.f32[2], v43, 2);
    v36 = vmuls_lane_f32(v43.f32[0], *v43.f32, 1);
    v37 = vmuls_lane_f32(v43.f32[0], v43, 2);
    v32.f32[0] = vmuls_lane_f32(v43.f32[1], v43, 2);
    v38 = v7.__sinval * v43.f32[0];
    v39 = vmuls_lane_f32(v7.__sinval, *v43.f32, 1);
    v43.f32[0] = vmuls_lane_f32(v7.__sinval, v43, 2);
    v40 = -(v43.f32[0] - (v36 * (1.0 - v7.__cosval)));
    v41 = v43.f32[0] + (v36 * (1.0 - v7.__cosval));
    v42 = -(v38 - (v32.f32[0] * (1.0 - v7.__cosval)));
    v43.i32[3] = 0;
    v43.f32[0] = v33 + (v7.__cosval * (1.0 - v33));
    v43.f32[1] = v41;
    HIDWORD(v45) = 0;
    HIDWORD(v44) = 0;
    *&v44 = v40;
    *(&v44 + 1) = v34 + (v7.__cosval * (1.0 - v34));
    *(&v44 + 2) = v38 + (v32.f32[0] * (1.0 - v7.__cosval));
    *&v45 = v39 + (v37 * (1.0 - v7.__cosval));
    *(&v45 + 1) = v42;
    *(&v45 + 2) = v35 + (v7.__cosval * (1.0 - v35));
    v46 = *v126;
    HIDWORD(v46) = 1.0;
    *&v47 = LODWORD(v33);
    *&v47 = v119;
    *(&v47 + 1) = LODWORD(v116);
    if (v29)
    {
      goto LABEL_18;
    }

    v57 = vmulq_f32(v121, xmmword_26185DD10);
    if (fabsf(v57.f32[2] + vaddv_f32(*v57.f32)) <= 0.70711)
    {
      if (v119 > 1.0 && v116 > 1.0)
      {
        v29 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      if (v121.f32[1] < 0.0)
      {
        v29 = 3;
LABEL_18:
        v48 = v132;
        *this = v131;
        *(this + 1) = v48;
        *(this + 2) = v133;
        *(this + 3) = v121;
        *(this + 4) = v145;
        *(this + 20) = v146;
        *(this + 21) = v22;
        *(this + 88) = v143;
        *(this + 104) = v144;
        *(this + 14) = v23;
        v43.f32[2] = -(v39 - (v37 * (1.0 - v7.__cosval)));
        *(this + 8) = v43;
        *(this + 9) = v44;
        *(this + 10) = v45;
        *(this + 11) = v46;
        *(this + 12) = v47;
        *(this + 52) = v28;
        *(this + 53) = v29;
        *(this + 216) = v115;
        *(this + 29) = v30;
        *(this + 64) = 1;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_58;
      }

      if (v22 < -0.5)
      {
        v29 = 2;
        goto LABEL_18;
      }

      if (v119 > 0.4 && v116 > 0.4)
      {
        v29 = 4;
        goto LABEL_18;
      }
    }

    v29 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v128;
    v135 = v151;
    v136[0] = *v152;
    *(v136 + 9) = *&v152[9];
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v134 = v150;
    v50 = v153;
    v153 = 0;
    v137 = v50;
    v138[0] = [(ARAnchor *)v49 isDetectionOnly];
    v51 = [(ARAnchor *)v49 name];
    if (v51)
    {
      v125 = [(ARAnchor *)v49 name];
      v52 = v125;
      std::string::basic_string[abi:ne200100]<0>(&v138[8], [v125 UTF8String]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v138[8], "");
    }

    v123 = [(ARAnchor *)v49 referenceImage];
    v71 = [v123 resourceGroupName];
    if (v71)
    {
      v118 = [(ARAnchor *)v49 referenceImage];
      v2 = [v118 resourceGroupName];
      v72 = v2;
      std::string::basic_string[abi:ne200100]<0>(&v138[32], [v2 UTF8String]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v138[32], "");
    }

    [(ARAnchor *)v49 estimatedScaleFactor];
    v74 = v73;
    v75 = [(ARAnchor *)v49 referenceImage];
    [v75 physicalSize];
    v77 = v76;
    v78 = [(ARAnchor *)v49 referenceImage];
    [v78 physicalSize];
    *&v79 = v77;
    v80.i64[0] = v79;
    *&v82 = v81;
    v80.i64[1] = v82;
    v83 = v74;
    v140 = vmulq_n_f32(v80, v83);

    if (v71)
    {
    }

    if (v51)
    {
    }

    v84 = v136[0];
    *(this + 4) = v135;
    *(this + 5) = v84;
    *(this + 89) = *(v136 + 9);
    v85 = v132;
    *this = v131;
    *(this + 1) = v85;
    v86 = v134;
    *(this + 2) = v133;
    *(this + 3) = v86;
    v87 = v137;
    v137 = 0;
    *(this + 14) = v87;
    *(this + 128) = v138[0];
    *(this + 136) = *&v138[8];
    *(this + 19) = *&v138[24];
    memset(&v138[8], 0, 24);
    *(this + 10) = *&v138[32];
    *(this + 22) = v139;
    *&v138[32] = 0;
    *&v138[40] = 0;
    *&v139 = 0;
    *(this + 12) = v140;
    *(this + 64) = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v128;
      v135 = v151;
      v136[0] = *v152;
      *(v136 + 9) = *&v152[9];
      v131 = v147;
      v132 = v148;
      v133 = v149;
      v134 = v150;
      v54 = v153;
      v153 = 0;
      v137 = v54;
      v55 = [(ARAnchor *)v53 name];
      if (v55)
      {
        v125 = [(ARAnchor *)v53 name];
        v56 = v125;
        std::string::basic_string[abi:ne200100]<0>(v138, [v125 UTF8String]);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v138, "");
      }

      v124 = [(ARAnchor *)v53 referenceObject];
      v94 = [v124 resourceGroupName];
      if (v94)
      {
        v118 = [(ARAnchor *)v53 referenceObject];
        v2 = [v118 resourceGroupName];
        v95 = v2;
        std::string::basic_string[abi:ne200100]<0>(&v138[24], [v2 UTF8String]);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v138[24], "");
      }

      v140.i8[0] = 0;
      v140.i64[1] = 0;
      uuid_clear(&v139);
      v96 = [(ARAnchor *)v53 referenceObject];
      [v96 center];
      v141 = v97;
      v98 = [(ARAnchor *)v53 referenceObject];
      [v98 extent];
      v142 = v99;

      if (v94)
      {
      }

      if (v55)
      {
      }

      v100 = v136[0];
      *(this + 4) = v135;
      *(this + 5) = v100;
      *(this + 89) = *(v136 + 9);
      v101 = v132;
      *this = v131;
      *(this + 1) = v101;
      v102 = v134;
      *(this + 2) = v133;
      *(this + 3) = v102;
      v103 = v137;
      v137 = 0;
      *(this + 14) = v103;
      v104 = *v138;
      *(this + 18) = *&v138[16];
      *(this + 8) = v104;
      memset(v138, 0, 24);
      *(this + 21) = *&v138[40];
      *(this + 152) = *&v138[24];
      memset(&v138[24], 0, 24);
      v105 = v140;
      *(this + 11) = v139;
      *(this + 12) = v105;
      v106 = v142;
      *(this + 13) = v141;
      *(this + 14) = v106;
      *(this + 64) = 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v128;
        v135 = v151;
        v136[0] = *v152;
        *(v136 + 9) = *&v152[9];
        v131 = v147;
        v132 = v148;
        v133 = v149;
        v134 = v150;
        v59 = v153;
        v153 = 0;
        [(ARAnchor *)v58 leftEyeTransform];
        v122 = v61;
        *v127 = v60;
        v117 = v63;
        v120 = v62;
        [(ARAnchor *)v58 rightEyeTransform];
        v64 = v136[0];
        *(this + 4) = v135;
        *(this + 5) = v64;
        *(this + 89) = *(v136 + 9);
        v65 = v132;
        *this = v131;
        *(this + 1) = v65;
        v66 = v134;
        *(this + 2) = v133;
        *(this + 3) = v66;
        *(this + 14) = v59;
        *(this + 8) = *v127;
        *(this + 9) = v122;
        *(this + 10) = v120;
        *(this + 11) = v117;
        *(this + 12) = v67;
        *(this + 13) = v68;
        *(this + 14) = v69;
        *(this + 15) = v70;
        *(this + 64) = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v88 = v128;
          v135 = v151;
          v136[0] = *v152;
          *(v136 + 9) = *&v152[9];
          v131 = v147;
          v132 = v148;
          v133 = v149;
          v134 = v150;
          v89 = v153;
          v153 = 0;
          [(ARAnchor *)v88 estimatedScaleFactor];
          *&v90 = v90;
          v91 = v136[0];
          *(this + 4) = v135;
          *(this + 5) = v91;
          *(this + 89) = *(v136 + 9);
          v92 = v132;
          *this = v131;
          *(this + 1) = v92;
          v93 = v134;
          *(this + 2) = v133;
          *(this + 3) = v93;
          *(this + 14) = v89;
          *(this + 32) = LODWORD(v90);
          *(this + 64) = 5;
        }

        else
        {
          v135 = v151;
          v136[0] = *v152;
          *(v136 + 9) = *&v152[9];
          v131 = v147;
          v132 = v148;
          v133 = v149;
          v134 = v150;
          v107 = v153;
          v153 = 0;
          v137 = v107;
          v138[0] = 0;
          v138[24] = 0;
          *&v138[32] = 0;
          uuid_clear(&v138[8]);
          v138[40] = 0;
          v140.i8[8] = 0;
          v108 = v136[0];
          *(this + 4) = v135;
          *(this + 5) = v108;
          *(this + 89) = *(v136 + 9);
          v109 = v132;
          *this = v131;
          *(this + 1) = v109;
          v110 = v134;
          *(this + 2) = v133;
          *(this + 3) = v110;
          v111 = v137;
          v137 = 0;
          *(this + 14) = v111;
          v112 = v139;
          *(this + 10) = *&v138[32];
          *(this + 11) = v112;
          *(this + 12) = v140;
          v113 = *&v138[16];
          *(this + 8) = *v138;
          *(this + 9) = v113;
          *(this + 64) = 0;
        }
      }
    }
  }

LABEL_58:

  v114 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *rf::AnchorDefinitionComponent::instance(rf::AnchorDefinitionComponent *this)
{
  {
    rf::AnchorDefinitionComponent::AnchorDefinitionComponent(&rf::AnchorDefinitionComponent::instance(void)::instance);
  }

  return &rf::AnchorDefinitionComponent::instance(void)::instance;
}

rf::AnchorDefinitionComponent *rf::AnchorDefinitionComponent::AnchorDefinitionComponent(rf::AnchorDefinitionComponent *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 38) = 0;
  rf::AnchorDefinitionComponent::buildIntrospectionInfo(this);
  rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(this);
  return this;
}

void sub_261848928(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 104);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t rf::AnchorDefinitionComponent::deinit(rf::AnchorDefinitionComponent *this)
{
  *(this + 38) = 0;
  if (*this)
  {
    RECustomComponentTypeDestroy();
    *this = 0;
  }

  if (*(this + 17))
  {
    RECIntrospectionStructUnregister();
    *(this + 17) = 0;
  }

  if (*(this + 18))
  {
    RECIntrospectionEnumUnregister();
    *(this + 18) = 0;
  }

  std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 8);
  std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 40);
  std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 72);

  return std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 104);
}

uint64_t rf::AnchorDefinitionComponent::buildIntrospectionInfo(uint64_t this)
{
  v1 = this;
  if (!*(this + 144))
  {
    this = REEnumBuilderCreate();
    if (this)
    {
      if (REEnumBuilderInit())
      {
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        *(v1 + 144) = RECIntrospectionEnumRegister();
      }

      this = REEnumBuilderDestroy();
    }
  }

  if (!*(v1 + 136))
  {
    this = REStructBuilderCreate();
    if (this)
    {
      v2 = this;
      if (REStructBuilderInit())
      {
        REStructBuilderAddMemberCStyleArrayDataTypeWithTag();
        v3 = *(v1 + 144);
        REStructBuilderAddMemberEnumWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        *(v1 + 136) = RECIntrospectionStructRegister();
      }

      return MEMORY[0x282154E00](v2);
    }
  }

  return this;
}

void *rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void *this)
{
  if (!*this)
  {
    v1 = this;
    v2 = this[17];
    this = RECustomComponentTypeCreate();
    *v1 = this;
  }

  return this;
}

void *rf::AnchorDefinitionComponent::retain(void *this)
{
  v1 = this;
  v2 = *(this + 38);
  if (v2 <= 0)
  {
    rf::AnchorDefinitionComponent::buildIntrospectionInfo(this);
    this = rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(v1);
    v2 = *(v1 + 38);
  }

  *(v1 + 38) = v2 + 1;
  return this;
}

void rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x26670D060);
  }
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_2::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 32))
  {
    v3 = result + 8;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_3::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 64))
  {
    v3 = result + 40;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_4::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 96))
  {
    v3 = result + 72;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_5::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 128))
  {
    v3 = result + 104;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

void RFPlacementComponentSetUp(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = rf::PlacementComponentTypeInfo::instance(v12);
  v18[0] = &unk_28740ADA0;
  v18[1] = MEMORY[0x26670D530](v9);
  v18[3] = v18;
  v17[0] = &unk_28740AE30;
  v17[1] = MEMORY[0x26670D530](v10);
  v17[3] = v17;
  v16[0] = &unk_28740AEC0;
  v16[1] = MEMORY[0x26670D530](v11);
  v16[3] = v16;
  v15[0] = &unk_28740AF40;
  v15[1] = MEMORY[0x26670D530](v12);
  v15[3] = v15;
  rf::PlacementComponentTypeInfo::initWithType(v13, a1, v18, v17, v16, v15);
  std::__function::__value_func<RESRT ()(REComponent *)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<BOOL ()(REComponent *)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::~__value_func[abi:ne200100](v18);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_261849058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  std::__function::__value_func<RESRT ()(REComponent *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(REComponent *)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::~__value_func[abi:ne200100](v6 - 88);

  _Unwind_Resume(a1);
}

void std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740ADA0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740AE30;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740AEC0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740AF40;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t rf::detail::insertRoomAnchorsInto@<X0>(uint64_t result@<X0>, rf::data_flow::RFUUID **a2@<X1>, const void **a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = result;
    do
    {
      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*v6 + 248), v4);
      v8 = rf::realityFusionLogObject(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          rf::data_flow::RFUUID::string(v4, __p);
          v10 = __p;
          if (v28 < 0)
          {
            v10 = __p[0];
          }

          *buf = 136446210;
          v30 = v10;
          v11 = v8;
          v12 = "ARState: Adding Room Anchor Again %{public}s";
LABEL_12:
          _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v9)
      {
        rf::data_flow::RFUUID::string(v4, __p);
        v13 = __p;
        if (v28 < 0)
        {
          v13 = __p[0];
        }

        *buf = 136446210;
        v30 = v13;
        v11 = v8;
        v12 = "ARState: Adding Room Anchor %{public}s";
        goto LABEL_12;
      }

      v14 = a3[1];
      v15 = a3[2];
      if (v14 >= v15)
      {
        v18 = *a3;
        v19 = v14 - *a3;
        v20 = v19 >> 5;
        v21 = (v19 >> 5) + 1;
        if (v21 >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v22 = v15 - v18;
        if (v22 >> 4 > v21)
        {
          v21 = v22 >> 4;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFE0)
        {
          v21 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v21);
        }

        v23 = (32 * v20);
        v24 = *(v4 + 1);
        *v23 = *v4;
        v23[1] = v24;
        v17 = 32 * v20 + 32;
        memcpy(0, v18, v19);
        v25 = *a3;
        *a3 = 0;
        a3[1] = v17;
        a3[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v16 = *(v4 + 1);
        *v14 = *v4;
        *(v14 + 1) = v16;
        v17 = (v14 + 32);
      }

      a3[1] = v17;
      result = std::unordered_map<rf::data_flow::RFUUID,rf::data_flow::Room,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,rf::data_flow::Room>>>::insert_or_assign[abi:ne200100]<rf::data_flow::Room&>((*v6 + 248), v4, v4);
      v4 = (v4 + 912);
    }

    while (v4 != v5);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261849A28(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<rf::data_flow::RFUUID,rf::data_flow::Room,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,rf::data_flow::Room>>>::insert_or_assign[abi:ne200100]<rf::data_flow::Room&>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (!v6)
  {
    if (*(a2 + 16))
    {
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v6 = ((*v15 >> 2) + (*v15 << 6) + v15[1] + 2654435769) ^ *v15;
    *(a2 + 24) = v6;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v12 + 2), a2))
  {
    goto LABEL_18;
  }

  return rf::data_flow::Room::operator=((v12 + 6), a3);
}

void sub_261849D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void rf::detail::updateRoomAnchorsAt(uint64_t a1@<X0>, rf::data_flow::RFUUID **a2@<X1>, const void **a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*a1 + 248), v4))
      {
        v7 = a3[1];
        v8 = a3[2];
        if (v7 >= v8)
        {
          v13 = *a3;
          v14 = v7 - *a3;
          v15 = v14 >> 5;
          v16 = (v14 >> 5) + 1;
          if (v16 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v17 = v8 - v13;
          if (v17 >> 4 > v16)
          {
            v16 = v17 >> 4;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFE0)
          {
            v16 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v16)
          {
            std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v16);
          }

          v18 = (32 * v15);
          v19 = *(v4 + 1);
          *v18 = *v4;
          v18[1] = v19;
          v10 = 32 * v15 + 32;
          memcpy(0, v13, v14);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v10;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          v9 = *(v4 + 1);
          *v7 = *v4;
          *(v7 + 1) = v9;
          v10 = (v7 + 32);
        }

        a3[1] = v10;
        std::unordered_map<rf::data_flow::RFUUID,rf::data_flow::Room,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,rf::data_flow::Room>>>::insert_or_assign[abi:ne200100]<rf::data_flow::Room&>((*a1 + 248), v4, v4);
      }

      else
      {
        v11 = rf::realityFusionLogObject(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(v4, __p);
          v12 = __p;
          if (v23 < 0)
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v25 = v12;
          _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, "ARState: Updating Room Anchor %{public}s that doesn't exist in ARState.", buf, 0xCu);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v4 = (v4 + 912);
    }

    while (v4 != v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_261849F60(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

rf *rf::detail::removeRoomAnchorsFrom@<X0>(rf *result@<X0>, rf::data_flow::RFUUID **a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_64;
  }

  v6 = result;
  v38 = a2[1];
  v37 = result;
  do
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v6 + 248), v4);
    v7 = result;
    if (!result)
    {
      goto LABEL_55;
    }

    v8 = rf::realityFusionLogObject(result);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      rf::data_flow::RFUUID::string(v4, __p);
      v9 = v40 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v42 = v9;
      _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Removing Room Anchors %{public}s", buf, 0xCu);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = *(v7 + 5);
    if (!v10)
    {
      if (*(v7 + 32))
      {
        v35 = *(v7 + 2);
      }

      else
      {
        v35 = (v7 + 16);
      }

      v10 = ((*v35 >> 2) + (*v35 << 6) + v35[1] + 2654435769) ^ *v35;
      *(v7 + 5) = v10;
    }

    v11 = *(a3 + 8);
    if (!*&v11)
    {
      goto LABEL_27;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v10;
      if (v10 >= *&v11)
      {
        v14 = v10 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v10;
    }

    v15 = *(*a3 + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v10)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v17 >= *&v11)
        {
          v17 %= *&v11;
        }
      }

      else
      {
        v17 &= *&v11 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_27;
      }

LABEL_26:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    if (!rf::data_flow::RFUUID::Equality::operator()(a3, (v16 + 2), v7 + 16))
    {
      goto LABEL_26;
    }

    v29 = *(v7 + 4);
    *(v16 + 3) = *(v7 + 3);
    *(v16 + 4) = v29;
    v30 = *(v7 + 5);
    v31 = *(v7 + 6);
    v32 = *(v7 + 8);
    *(v16 + 7) = *(v7 + 7);
    *(v16 + 8) = v32;
    *(v16 + 5) = v30;
    *(v16 + 6) = v31;
    v33 = *(v7 + 9);
    *(v7 + 18) = 0;
    *(v7 + 19) = 0;
    v34 = v16[19];
    *(v16 + 9) = v33;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 20), v7 + 20);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 24), v7 + 24);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 28), v7 + 28);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 32), v7 + 32);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 36), v7 + 36);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 40), v7 + 40);
    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>((v16 + 44), v7 + 352);
    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>((v16 + 69), v7 + 552);
    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>((v16 + 94), v7 + 752);
    v6 = v37;
    v5 = v38;
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>(&(*v37)[319], v4);
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>(&(*v37)[324], v4);
    v18 = *v37;
    v19 = (*v37)[32];
    v20 = *(v7 + 1);
    v21 = vcnt_s8(v19);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      if (v20 >= *&v19)
      {
        v20 %= *&v19;
      }
    }

    else
    {
      v20 &= *&v19 - 1;
    }

    v22 = v18[31];
    v23 = *(*&v22 + 8 * v20);
    do
    {
      v24 = v23;
      v23 = *v23;
    }

    while (v23 != v7);
    if (v24 == &v18[33])
    {
      goto LABEL_45;
    }

    v25 = *(v24 + 1);
    if (v21.u32[0] > 1uLL)
    {
      if (v25 >= *&v19)
      {
        v25 %= *&v19;
      }
    }

    else
    {
      v25 &= *&v19 - 1;
    }

    if (v25 != v20)
    {
LABEL_45:
      if (!*v7)
      {
        goto LABEL_46;
      }

      v26 = *(*v7 + 8);
      if (v21.u32[0] > 1uLL)
      {
        if (v26 >= *&v19)
        {
          v26 %= *&v19;
        }
      }

      else
      {
        v26 &= *&v19 - 1;
      }

      if (v26 != v20)
      {
LABEL_46:
        *(*&v22 + 8 * v20) = 0;
      }
    }

    v27 = *v7;
    if (*v7)
    {
      v28 = *(v27 + 8);
      if (v21.u32[0] > 1uLL)
      {
        if (v28 >= *&v19)
        {
          v28 %= *&v19;
        }
      }

      else
      {
        v28 &= *&v19 - 1;
      }

      if (v28 != v20)
      {
        *(*&v18[31] + 8 * v28) = v24;
        v27 = *v7;
      }
    }

    *v24 = v27;
    *v7 = 0;
    --*&v18[34];
    __p[0] = v7;
    __p[1] = &v18[31];
    LOBYTE(v40) = 1;
    memset(&v40 + 1, 0, 7);
    result = std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](__p);
LABEL_55:
    v4 = (v4 + 32);
  }

  while (v4 != v5);
LABEL_64:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26184A548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(v6);
  _Unwind_Resume(a1);
}

void std::__optional_destruct_base<rf::data_flow::RoomMesh,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    if (*(a1 + 184) == 1)
    {
    }

    if (*(a1 + 152) == 1)
    {
    }

    if (*(a1 + 120) == 1)
    {
    }

    if (*(a1 + 88) == 1)
    {
    }

    if (*(a1 + 56) == 1)
    {
    }

    if (*(a1 + 24) == 1)
    {
    }

    *(a1 + 192) = 0;
  }
}

uint64_t std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__construct[abi:ne200100]<rf::data_flow::RoomMesh>(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    *(result + 8) = *(a2 + 1);
    *(result + 24) = 1;
  }

  *(result + 32) = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[4];
    a2[4] = 0;
    *(result + 32) = v3;
    *(result + 40) = *(a2 + 5);
    *(result + 56) = 1;
  }

  *(result + 64) = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[8];
    a2[8] = 0;
    *(result + 64) = v4;
    *(result + 72) = *(a2 + 9);
    *(result + 88) = 1;
  }

  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v5 = a2[12];
    a2[12] = 0;
    *(result + 96) = v5;
    *(result + 104) = *(a2 + 13);
    *(result + 120) = 1;
  }

  *(result + 128) = 0;
  *(result + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    v6 = a2[16];
    a2[16] = 0;
    *(result + 128) = v6;
    *(result + 136) = *(a2 + 17);
    *(result + 152) = 1;
  }

  *(result + 160) = 0;
  *(result + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v7 = a2[20];
    a2[20] = 0;
    *(result + 160) = v7;
    *(result + 168) = *(a2 + 21);
    *(result + 184) = 1;
  }

  *(result + 192) = 1;
  return result;
}

__n128 std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *a1;
      *a1 = v4;

      result = *(a2 + 1);
      *(a1 + 8) = result;
    }
  }

  else if (*(a1 + 24))
  {

    *(a1 + 24) = 0;
  }

  else
  {
    v7 = *a2;
    *a2 = 0;
    *a1 = v7;
    result = *(a2 + 1);
    *(a1 + 8) = result;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 192) == *(a2 + 192))
  {
    if (*(a1 + 192))
    {
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1, a2);
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 32, (a2 + 32));
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 64, (a2 + 64));
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 96, (a2 + 96));
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 128, (a2 + 128));

      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 160, (a2 + 160));
    }
  }

  else if (*(a1 + 192))
  {

    std::__optional_destruct_base<rf::data_flow::RoomMesh,false>::reset[abi:ne200100](a1);
  }

  else
  {

    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__construct[abi:ne200100]<rf::data_flow::RoomMesh>(a1, a2);
  }
}

rf::data_flow::consumer::AnchorManagementConsumer *rf::data_flow::consumer::AnchorManagementConsumer::AnchorManagementConsumer(rf::data_flow::consumer::AnchorManagementConsumer *this, const rf::data_flow::consumer::AnchorManagementConfig *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28740AFD0;
  *(this + 24) = 0;
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__value_func[abi:ne200100](this + 32, a2);
  v4 = *(a2 + 8);
  *(this + 67) = *(a2 + 35);
  *(this + 16) = v4;
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__value_func[abi:ne200100](this + 72, a2 + 40);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](this + 104, a2 + 72);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](this + 136, a2 + 104);
  v5 = *(a2 + 20);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5 != (a2 + 136))
  {
    v5 = (*(*v5 + 16))(v5);
LABEL_4:
    *(this + 24) = v5;
    goto LABEL_6;
  }

  *(this + 24) = this + 168;
  (*(**(a2 + 20) + 24))(*(a2 + 20), this + 168);
LABEL_6:
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::__value_func[abi:ne200100](this + 200, a2 + 168);
  v6 = *(a2 + 25);
  v7 = *(a2 + 208);
  *(this + 248) = 0u;
  *(this + 240) = v7;
  *(this + 29) = v6;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 1065353216;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1065353216;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1065353216;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 128) = 1065353216;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 1065353216;
  *(this + 70) = 0;
  *(this + 284) = 0;
  *(this + 72) = &__block_literal_global_18;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  rf::UserDefaults::UserDefaults(&v24, v22);
  std::string::basic_string[abi:ne200100]<0>(__p, "anchorDirtyThreshold");
  v8 = rf::UserDefaults::floatValue(&v24, __p);
  if ((v8 & 0x100000000) != 0)
  {
    v9 = *&v8;
  }

  else
  {
    v9 = 0.001;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v24);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *(this + 156) = v9;
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  rf::UserDefaults::UserDefaults(&v24, v22);
  std::string::basic_string[abi:ne200100]<0>(__p, "anchoringUpdateCountThreshold");
  v10 = rf::UserDefaults::uintValue(&v24, __p);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 50;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v24);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *(this + 79) = v12;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  v13 = rf::UserDefaults::UserDefaults(__p, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v14 = rf::helpers::kCameraIdentifier(v13);
  v15 = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(this + 65, v14);
  v16 = rf::helpers::kHeadIdentifier(v15);
  v17 = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(this + 65, v16);
  v18 = rf::helpers::kBodyIdentifier(v17);
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(this + 65, v18);
  rf::UserDefaults::~UserDefaults(__p);
  return this;
}

void sub_26184ABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v22 + 136);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v22 + 104);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](v22 + 72);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](v22 + 32);
  _Unwind_Resume(a1);
}

__n128 ___ZN2rf9data_flow8consumer24AnchorManagementConsumerC2ERKNS1_22AnchorManagementConfigE_block_invoke()
{
  result = *MEMORY[0x277D860B8];
  v1 = *(MEMORY[0x277D860B8] + 16);
  v2 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::registerShadowClusterUpdateHandler(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  result = MEMORY[0x26670CB90](*(a2 + 8));
  if (result)
  {
    result = REShadowManagerSetShadowClusterRootUpdateHandlerWithDirection();
    *(a1 + 312) = 1;
  }

  return result;
}

uint64_t ___ZN2rf9data_flow8consumer24AnchorManagementConsumer34registerShadowClusterUpdateHandlerERKNS_15ConsumerRequestE_block_invoke(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 32) + 16);
  REComponentGetEntity();
  if (*(v6 + 1680) == 1)
  {
    v7 = *(v6 + 1696);
  }

  else
  {
    v7 = 0;
  }

  REAnchorShadowMarkerComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REShadowClusterRootComponentGetClusterBound();
  v16 = vsubq_f32(v15, v14).u64[0];
  v16.f32[0] = fmaxf(vmuls_lane_f32(0.5, v16, 1), 0.03);
  v17 = vaddq_f32(v15, v14);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v18 = vmlsq_lane_f32(vmulq_f32(v17, v15), a2, v16, 0);
  v19 = 0xFF0201u >> (8 * a5);
  v28[0] = v18;
  v28[1] = a2;
  if (a5 >= 3)
  {
    LOBYTE(v19) = 0;
  }

  v29 = v19;
  v30 = -1;
  v31 = 0;
  rf::helpers::getNearestPlaneAnchor(v28, v6 + 144, v8, v9, v10, v11, v12, v13, v32, v18);
  if (v34 == 1)
  {
    if (v33 == 1)
    {
      v20 = v32;
      goto LABEL_11;
    }

LABEL_13:
    result = REAnchorShadowMarkerSetPlaneExists();
    goto LABEL_14;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = (v6 + 1424);
LABEL_11:
  v21 = *(v20 + 3);
  v22 = *(v20 + 5);
  result = REAnchorShadowMarkerSetPointAndNormal();
  if (v7)
  {
    v24 = *(v6 + 1504);
    v25 = *(v6 + 1472);
    result = REAnchorShadowMarkerSetFloorPlane();
  }

LABEL_14:
  if (v34 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v32);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26184AF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a55 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::doAnchoring(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[69] == 1 && (a1[232] & 1) == 0)
  {
    rf::data_flow::consumer::AnchorManagementConsumer::removeLocalPeerAnchorComponents(a1);
  }

  if (*(a4 + 3984) == 1)
  {
    a1[568] = 1;
  }

  result = rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorComponents(a1, *(a2 + 8), *(a2 + 16), a3, a4);
  if (a1[569] == 1)
  {
    *(a1 + 284) = 0;
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::removeLocalPeerAnchorComponents(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  REAnchorComponentGetComponentType();
  result = RESceneGetComponentsOfClass();
  if (v3)
  {
    v4 = v3;
    v5 = result - 8;
    do
    {
      v6 = *(v5 + 8 * v4);
      result = REAnchorComponentGetAnchoredLocally();
      if ((result & 1) == 0)
      {
        Entity = REComponentGetEntity();
        result = rf::helpers::isRemotelyOwned();
        if ((result & 1) == 0)
        {
          v8 = rf::realityFusionLogObject(result);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            Name = REEntityGetName();
            *buf = 136315138;
            v12 = Name;
            _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "Entity %s anchor added/modified by local peer - removing.", buf, 0xCu);
          }

          result = rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, Entity, 1u);
        }
      }

      --v4;
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorComponents(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (re::internal::enableSignposts(0, 0))
  {
    v9 = *(a5 + 2816);
    kdebug_trace();
  }

  RESceneUnderstandingRootComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v12 = v11;
  if (RESceneGetECSManagerNullable())
  {
    if (REECSManagerGetServiceLocator())
    {
      if (MEMORY[0x26670CB90]())
      {
        ShadowPatchFlatteningEnabled = REShadowManagerGetShadowPatchFlatteningEnabled();
        if ((ShadowPatchFlatteningEnabled & 1) == 0)
        {
          if (v12)
          {
            v14 = *ComponentsOfClass;
            REComponentGetEntity();
            RESceneUnderstandingRenderOptionsComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              RESceneUnderstandingRenderOptionsComponentIsShadowEnabled();
              goto LABEL_16;
            }

            v15 = rf::realityFusionLogObject(0);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            *buf = 0;
            v16 = "The root entity should have render option component!";
          }

          else
          {
            v15 = rf::realityFusionLogObject(ShadowPatchFlatteningEnabled);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
LABEL_15:

              goto LABEL_16;
            }

            *buf = 0;
            v16 = "We should have a root entity!";
          }

          _os_log_impl(&dword_2617CB000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  REAnchoringComponentGetComponentType();
  v17 = RESceneGetComponentsOfClass();
  v19 = v17;
  v20 = v18;
  if (v18)
  {
    v21 = 8 * v18;
    v22 = v17;
    do
    {
      v23 = *v22++;
      REAnchoringComponentInitializeWorldTransformIfNeeded();
      v21 -= 8;
    }

    while (v21);
  }

  if ((*(a1 + 232) & 1) == 0)
  {
    RECoordinateSpaceDefinitionComponentGetComponentType();
    v24 = RESceneGetComponentsOfClass();
    *buf = 0;
    if (v25)
    {
      v26 = v24;
      v27 = 8 * v25;
      do
      {
        v28 = *v26;
        Entity = REComponentGetEntity();
        REAnchorComponentGetComponentType();
        ComponentByClass = REEntityGetComponentByClass();
        REAnchoringComponentGetComponentType();
        v31 = REEntityGetComponentByClass();
        if (v31)
        {
          rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(a1, a4, Entity, ComponentByClass, v31, a5, buf);
        }

        ++v26;
        v27 -= 8;
      }

      while (v27);
    }
  }

  v93 = 0;
  if ((a3 & 1) != 0 && MEMORY[0x26670CB30](a2))
  {
    v88 = 0;
    v32 = REDepthMitigationServiceIsEnabled() ^ 1;
    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v88 = 1;
    v32 = 1;
    if (!v20)
    {
      goto LABEL_28;
    }
  }

  v90 = 0;
  v33 = &v19[v20];
  do
  {
    v34 = *v19;
    v35 = REComponentGetEntity();
    RECoordinateSpaceDefinitionComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      REAnchorComponentGetComponentType();
      v36 = REEntityGetComponentByClass();
      REAnchorComponentGetComponentType();
      v37 = REEntityGetComponentByClass();
      IsAnchoredOnClientForComponent = rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(a1, v35, v37);
      if (((*(a1 + 232) | v32) & 1) == 0)
      {
        v39 = rf::PlacementComponentTypeInfo::instance(IsAnchoredOnClientForComponent);
        if (*v39)
        {
          v40 = v39;
          CustomComponent = REEntityGetCustomComponent();
          if (v36)
          {
            if (CustomComponent)
            {
              v90 += std::function<BOOL ()(REComponent *)>::operator()((v40 + 5), CustomComponent);
            }
          }
        }
      }

      v42 = rf::helpers::needAnchoringInClientProcessForEntity((a1 + 233), v35);
      v43 = rf::helpers::needAnchoringInServerProcessForEntity(v35);
      REClientAnchorSyncComponentGetComponentType();
      v44 = REEntityGetComponentByClass();
      if (*(a1 + 232))
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v45 == 1)
      {
        rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(a1, a4, v35, v36, *v19, a5, &v93);
      }

      else if ((*(a1 + 232) & 1) == 0 && v44)
      {
        isAnchoringTypeAuthorizedForPeer = rf::helpers::isAnchoringTypeAuthorizedForPeer(*v19, (a5 + 208));
        if (REClientAnchorSyncComponentIsAnchored() && isAnchoringTypeAuthorizedForPeer)
        {
          if (rf::CoordinateSpaceTracker::findCoordinateSpaceDefinitionEntity(v35))
          {
            REAnchoringComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              if (REAnchoringComponentGetDescriptorType() - 1 <= 4)
              {
                REEntityCalculateWorldMatrix4x4F();
                v83 = v47;
                v85 = v48;
                v81 = v50;
                v82 = v49;
                REClientAnchorSyncComponentGetAnchorTransform();
                v51 = 0;
                v94[0] = v52;
                v94[1] = v53;
                v94[2] = v54;
                v94[3] = v55;
                do
                {
                  *&buf[v51 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(v94[v51])), v85, *&v94[v51], 1), v82, v94[v51], 2), v81, v94[v51], 3);
                  ++v51;
                }

                while (v51 != 4);
                rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorComponentFromClientAnchorSyncComponent(REEntity *,REComponent *)::appManagedAnchorIdentifier = -1;
                *algn_27FEB9ED8 = -1;
                REAnchorComponentGetComponentType();
                v56 = REEntityGetComponentByClass();
                if (v56)
                {
                  RERetain();
                  v57 = v56;
                }

                else
                {
                  REAnchorComponentGetComponentType();
                  v57 = REComponentCreateByClass();
                  rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(a1, v35, v57);
                }

                REAnchorComponentSetAnchoredLocally();
                REAnchorComponentSetWorldTransform();
                REAnchorComponentSetAnchorIdentifier();
                if (!v56)
                {
                  RENetworkComponentGetComponentType();
                  v58 = REEntityGetComponentByClass();
                  if (v58)
                  {
                    MEMORY[0x26670C630](v58, v57);
                  }

                  REEntityAddExistingComponent();
                  rf::helpers::publishAnchorStateEventDidAnchor(v35, 0);
                }

                IsAnchorExternal = REAnchorComponentGetIsAnchorExternal();
                IsExternal = REClientAnchorSyncComponentIsExternal();
                if (IsAnchorExternal != IsExternal)
                {
                  if (IsExternal)
                  {
                    rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(a1, v35, v57, 0);
                  }

                  else
                  {
                    rf::data_flow::consumer::AnchorManagementConsumer::relocalizeEntity(a1, v35, v57, 0);
                  }
                }

                RERelease();
              }
            }
          }
        }

        else
        {
          REAnchorComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {
            rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, v35, 1u);
          }
        }
      }
    }

    ++v19;
  }

  while (v19 != v33);
LABEL_28:
  if (((v88 | *(a1 + 232)) & 1) == 0)
  {
    REDepthMitigationServiceSetPlacementComponentUpdateCount();
    if ((*(a1 + 232) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_70;
  }

  if (*(a1 + 232))
  {
LABEL_70:
    REAnchoringComponentGetComponentType();
    v61 = RESceneGetComponentsOfClass();
    if (!v62)
    {
      goto LABEL_87;
    }

    v63 = v61;
    v64 = 8 * v62;
    v84 = vdupq_n_s32(0x3727C5ACu);
    do
    {
      v65 = *v63;
      DescriptorType = REAnchoringComponentGetDescriptorType();
      v67 = *v63;
      v68 = REComponentGetEntity();
      if (!rf::helpers::needAnchoringInClientProcessForEntity((a1 + 233), v68))
      {
        goto LABEL_74;
      }

      RECoordinateSpaceDefinitionComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        goto LABEL_74;
      }

      REClientAnchorSyncComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      REAnchorComponentGetComponentType();
      v69 = REEntityGetComponentByClass();
      if ((v69 != 0) != REClientAnchorSyncComponentIsAnchored())
      {
        REClientAnchorSyncComponentSetIsAnchored();
        RENetworkMarkComponentDirty();
      }

      v70 = REClientAnchorSyncComponentIsExternal();
      if (v69)
      {
        if (v70 == REAnchorComponentGetIsAnchorExternal())
        {
          if ((DescriptorType - 1) <= 4)
          {
            goto LABEL_85;
          }

          goto LABEL_74;
        }
      }

      else if ((v70 & 1) == 0)
      {
        goto LABEL_74;
      }

      REClientAnchorSyncComponentSetIsExternal();
      RENetworkMarkComponentDirty();
      if ((DescriptorType - 1) <= 4 && v69)
      {
LABEL_85:
        REAnchorComponentGetWorldTransform();
        v87 = v72;
        v89 = v71;
        v86 = v73;
        v91 = v74;
        REClientAnchorSyncComponentGetAnchorTransform();
        if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v84, vabdq_f32(v89, v75)), vcgeq_f32(v84, vabdq_f32(v87, v76))), vandq_s8(vcgeq_f32(v84, vabdq_f32(v86, v77)), vcgeq_f32(v84, vabdq_f32(v91, v78))))) & 0x80000000) == 0)
        {
          REClientAnchorSyncComponentSetAnchorTransform();
          RENetworkMarkComponentDirty();
        }
      }

LABEL_74:
      ++v63;
      v64 -= 8;
    }

    while (v64);
  }

LABEL_87:
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    v80 = *(a5 + 2816);
    return kdebug_trace();
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::consumeLatestUpdate(uint64_t result, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) != 1)
  {
    goto LABEL_29;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = *(a2 + 24);
  if (*(a2 + 16) == 1)
  {
    result = rf::data_flow::consumer::AnchorManagementConsumer::setUpSceneEventSubscriptions(result, *(a2 + 8), v5);
  }

  if ((v3[29].i8[0] & 1) == 0)
  {
    v6 = *(a2 + 16);
    if (v3[39].i8[0] & 1) == 0 && (*(a2 + 16))
    {
      result = rf::data_flow::consumer::AnchorManagementConsumer::registerShadowClusterUpdateHandler(v3, a2);
      v6 = *(a2 + 16);
    }

    if (v6)
    {
      result = *(a2 + 8);
      if (result)
      {
        result = MEMORY[0x26670CB30]();
        if (result)
        {
          if ((*(a2 + 32) & 1) == 0)
          {
            goto LABEL_30;
          }

          v7 = *(a2 + 24);
          if (rf::helpers::getInternalActiveCamera())
          {
            REEntityGetComponent();
            RETransformComponentGetWorldMatrix4x4F();
            v8 = *a2;
            result = REDepthMitigationServiceSetCameraTransform();
          }

          else
          {
            CameraAnchor = rf::helpers::getCameraAnchor((v4 + 144));
            v11 = *(CameraAnchor + 1);
            v10 = *(CameraAnchor + 2);
            v35 = *CameraAnchor;
            v36 = v11;
            v37 = v10;
            v13 = *(CameraAnchor + 4);
            v12 = *(CameraAnchor + 5);
            v14 = *(CameraAnchor + 3);
            *(v40 + 9) = *(CameraAnchor + 89);
            v39 = v13;
            v40[0] = v12;
            v38 = v14;
            v41 = CameraAnchor[14];
            v42 = *(CameraAnchor + 8);
            v15 = *(CameraAnchor + 9);
            v16 = *(CameraAnchor + 10);
            v17 = *(CameraAnchor + 12);
            v45 = *(CameraAnchor + 11);
            v46 = v17;
            v43 = v15;
            v44 = v16;
            v47 = 0;
            rf::helpers::getTransformFromAnchor(&v35);
            v18 = *a2;
            REDepthMitigationServiceSetCameraTransform();
            result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
          }
        }
      }
    }

    if (*(a2 + 16) != 1)
    {
      goto LABEL_22;
    }

    result = *(a2 + 8);
    if (!result)
    {
      goto LABEL_22;
    }

    result = MEMORY[0x26670CB60]();
    if (!result)
    {
      goto LABEL_22;
    }

    if (*(a2 + 32))
    {
      v19 = *(a2 + 24);
      if (rf::helpers::getInternalActiveCamera())
      {
        REEntityGetComponent();
        RETransformComponentGetWorldMatrix4x4F();
        result = REOcclusionServiceSetCameraPoseForCurrentFrame();
      }

      else
      {
        v20 = rf::helpers::getCameraAnchor((v4 + 144));
        v22 = *(v20 + 1);
        v21 = *(v20 + 2);
        v35 = *v20;
        v36 = v22;
        v37 = v21;
        v24 = *(v20 + 4);
        v23 = *(v20 + 5);
        v25 = *(v20 + 3);
        *(v40 + 9) = *(v20 + 89);
        v39 = v24;
        v40[0] = v23;
        v38 = v25;
        v41 = v20[14];
        v42 = *(v20 + 8);
        v26 = *(v20 + 9);
        v27 = *(v20 + 10);
        v28 = *(v20 + 12);
        v45 = *(v20 + 11);
        v46 = v28;
        v43 = v26;
        v44 = v27;
        v47 = 0;
        rf::helpers::getTransformFromAnchor(&v35);
        REOcclusionServiceSetCameraPoseForCurrentFrame();
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
      }

LABEL_22:
      rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(result, v5, (v4 + 144));
      goto LABEL_23;
    }

LABEL_30:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

LABEL_23:
  rf::data_flow::consumer::AnchorManagementConsumer::updateImageAnchorReference(v3);
  result = rf::data_flow::consumer::AnchorManagementConsumer::doAnchoring(v3, a2, v5, v4 + 64);
  if (v3[29].i8[0] == 1)
  {
    REClientAnchorSyncComponentGetComponentType();
    result = RESceneGetComponentsOfClass();
    if (v29)
    {
      v30 = result;
      v31 = 8 * v29;
      do
      {
        v32 = *v30;
        Entity = REComponentGetEntity();
        result = rf::helpers::needAnchoringInClientProcessForEntity(&v3[29] + 1, Entity);
        if ((result & 1) == 0)
        {
          REClientAnchorSyncComponentGetComponentType();
          result = REEntityRemoveComponentByClass();
        }

        ++v30;
        v31 -= 8;
      }

      while (v31);
    }
  }

LABEL_29:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26184BBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *rf::data_flow::consumer::AnchorManagementConsumer::setUpSceneEventSubscriptions(void *result, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  if (a2 && a3)
  {
    v4 = result;
    if (!std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::find<REScene *>(result + 80, &v11))
    {
      goto LABEL_6;
    }

    result = std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>((v4 + 640), &v11);
    if ((result[15] & 1) == 0)
    {
      std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__erase_unique<REScene *>((v4 + 640), &v11);
LABEL_6:
      MEMORY[0x26670CB50](a2);
      REEngineGetEventBus();
      RESceneGetEventBus();
      v5 = rf::data_flow::consumer::AnchorManagementConsumer::sceneRemovalEventHandle(v4, v11);
      v7 = v6;
      rf::data_flow::consumer::AnchorManagementConsumer::anchorComponentEventHandles(v8);
      v10 = v11;
      v8[8] = v5;
      v8[9] = v7;
      v9 = 1;
      std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<REScene *>,std::tuple<REEventBus *,REEventBus *,std::array<RESubscriptionHandle,4ul>,RESubscriptionHandle,BOOL>>();
    }
  }

  return result;
}

rf::AnchorDefinitionComponent *rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(rf::AnchorDefinitionComponent *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  result = rf::AnchorDefinitionComponent::instance(a1);
  if (*result)
  {
    v5 = *rf::AnchorDefinitionComponent::instance(result);
    ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
    v8 = &ComponentsOfCustomType[v7];
    result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_0>,std::identity>(ComponentsOfCustomType, v8);
    if (v8 != result)
    {
      v9 = result;
      do
      {
        v10 = *v9;
        Object = RECustomComponentGetObject();
        v11 = *v9;
        Entity = REComponentGetEntity();
        v12 = Object;
        v30 = 0;
        v31 = 0;
        uuid_clear(uu);
        *uu = v12;
        v30 = 1;
        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, uu))
        {
          v13 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, uu);
          if (!v13)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v26, (v13 + 6));
          SelfEnabled = REEntityGetSelfEnabled();
          if ((SelfEnabled & 1) == 0)
          {
            v15 = rf::realityFusionLogObject(SelfEnabled);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              Name = REEntityGetName();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = Name;
              _os_log_impl(&dword_2617CB000, v15, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Enabling %s (a redefined anchor found).", &buf, 0xCu);
            }

            MEMORY[0x26670C3A0](Entity, 1);
            RENetworkMarkEntityMetadataDirty();
          }

          *&buf = &Object;
          *(&buf + 1) = &Entity;
          v25 = v9;
          if (v28 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          p_buf = &buf;
          (off_28740B038[v28])(&p_buf, v26);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
        }

        else
        {
          MEMORY[0x26670C3A0](Entity, 0);
          v17 = RENetworkMarkEntityMetadataDirty();
          v18 = rf::realityFusionLogObject(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = REEntityGetName();
            *v26 = 136315138;
            v27 = v19;
            _os_log_impl(&dword_2617CB000, v18, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Disabling %s because it needs redifinition and there's no matching anchor in the state.", v26, 0xCu);
          }
        }

        result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_0>,std::identity>(v9 + 1, v8);
        v9 = result;
      }

      while (v8 != result);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26184BFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::AnchorManagementConsumer::updateImageAnchorReference(int8x8_t *a1)
{
  v122 = *MEMORY[0x277D85DE8];
  if (!*&a1[28])
  {
    goto LABEL_165;
  }

  UniqueName = RESceneGetUniqueName();
  std::string::basic_string[abi:ne200100]<0>(v110, UniqueName);
  v2 = a1 + 73;
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&a1[73], v110);
  v4 = a1[74];
  if (v4)
  {
    v5 = v3;
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = v3;
      if (v3 >= *&v4)
      {
        v8 = v3 % *&v4;
      }
    }

    else
    {
      v8 = (*&v4 - 1) & v3;
    }

    v9 = *(*v2 + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v5 == v11)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v2, i + 2, v110))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v7 > 1)
          {
            if (v11 >= *&v4)
            {
              v11 %= *&v4;
            }
          }

          else
          {
            v11 &= *&v4 - 1;
          }

          if (v11 != v8)
          {
            break;
          }
        }
      }
    }
  }

  v107 = 0u;
  v108 = 0u;
  v109 = 1065353216;
  if (SHIBYTE(v111) < 0)
  {
    std::string::__init_copy_ctor_external(v118, v110[0], v110[1]);
    v14 = *(&v107 + 1);
    v15 = v107;
    v12 = *(&v108 + 1);
    v13 = v108;
    v16 = *&v109;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    *v118 = *v110;
    *&v118[16] = v111;
    v16 = 1.0;
  }

  v107 = 0uLL;
  *&v118[24] = v15;
  *&v119 = v14;
  *(&v119 + 1) = v13;
  *&v120 = v12;
  *(&v120 + 2) = v16;
  if (v12)
  {
    v17 = *(v13 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v17 >= v14)
      {
        v17 %= v14;
      }
    }

    else
    {
      v17 &= v14 - 1;
    }

    *(v15 + 8 * v17) = &v119 + 8;
    v108 = 0uLL;
  }

  v18 = std::__string_hash<char>::operator()[abi:ne200100](v2, v118);
  v19 = v18;
  v20 = a1[74];
  if (!*&v20)
  {
    goto LABEL_44;
  }

  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v18;
    if (v18 >= *&v20)
    {
      v23 = v18 % *&v20;
    }
  }

  else
  {
    v23 = (*&v20 - 1) & v18;
  }

  v24 = *(*v2 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_44:
    operator new();
  }

  while (1)
  {
    v26 = v25[1];
    if (v26 == v19)
    {
      break;
    }

    if (v22 > 1)
    {
      if (v26 >= *&v20)
      {
        v26 %= *&v20;
      }
    }

    else
    {
      v26 &= *&v20 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_44;
    }

LABEL_43:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_44;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v2, v25 + 2, v118))
  {
    goto LABEL_43;
  }

  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(&v118[24]);
  if ((v118[23] & 0x80000000) != 0)
  {
    operator delete(*v118);
  }

  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(&v107);
LABEL_48:
  v107 = 0u;
  v108 = 0u;
  v109 = 1065353216;
  REAnchoringComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v29 = v28;
  if (!v28)
  {
    v105 = 0;
    goto LABEL_110;
  }

  v30 = ComponentsOfClass;
  v105 = 0;
  v31 = 0;
  v101 = ComponentsOfClass;
  while (2)
  {
    v32 = *(v30 + 8 * v31);
    if (REAnchoringComponentGetDescriptorType() != 4)
    {
      goto LABEL_107;
    }

    REComponentGetEntity();
    REClientAnchorSyncComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if ((a1[29].i8[0] & 1) == 0)
    {
      if (ComponentByClass)
      {
        goto LABEL_107;
      }
    }

    if (!REEntityIsEnabledInHierarchy())
    {
      goto LABEL_107;
    }

    v34 = REAnchoringComponentGetTrackingImageMTLTexture();
    if (!v34)
    {
      goto LABEL_106;
    }

    v103 = v34;
    if (!REAnchoringComponentGetDescriptorResourceStyle())
    {
      rf::getMessage("AnchorManagementConsumer: Image anchoring target should not have kREAnchoringResourceNone", &v114);
      rf::internal::logAssert(&v114);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(v114);
      }

      rf::internal::debugBreakHandler(v98);
      v113 = 0;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      memset(v118, 0, sizeof(v118));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      rf::getMessage("AnchorManagementConsumer: Image anchoring target should not have kREAnchoringResourceNone", &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v116 = 136315138;
      v117 = p_p;
      _os_log_send_and_compose_impl();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      _os_crash_msg();
      __break(1u);
    }

    DescriptorResourceGroup = REAnchoringComponentGetDescriptorResourceGroup();
    v36 = strlen(DescriptorResourceGroup);
    DescriptorResourceName = REAnchoringComponentGetDescriptorResourceName();
    v38 = strlen(DescriptorResourceName);
    rf::helpers::getFullPath(DescriptorResourceGroup, v36, DescriptorResourceName, v38, &__p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v107, &__p.__r_.__value_.__l.__data_);
    *v118 = v110;
    v39 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, v110);
    v40 = std::__string_hash<char>::operator()[abi:ne200100]((v39 + 5), &__p);
    v41 = v39[6];
    if (v41)
    {
      v42 = v40;
      v43 = vcnt_s8(v41);
      v43.i16[0] = vaddlv_u8(v43);
      v44 = v43.u32[0];
      if (v43.u32[0] > 1uLL)
      {
        v45 = v40;
        if (v40 >= *&v41)
        {
          v45 = v40 % *&v41;
        }
      }

      else
      {
        v45 = (*&v41 - 1) & v40;
      }

      v46 = *(v39[5] + v45);
      if (v46)
      {
        for (j = *v46; j; j = *j)
        {
          v48 = j[1];
          if (v42 == v48)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100]((v39 + 5), j + 2, &__p.__r_.__value_.__l.__data_))
            {
              v34 = v103;
              goto LABEL_103;
            }
          }

          else
          {
            if (v44 > 1)
            {
              if (v48 >= *&v41)
              {
                v48 %= *&v41;
              }
            }

            else
            {
              v48 &= *&v41 - 1;
            }

            if (v48 != v45)
            {
              break;
            }
          }
        }
      }
    }

    REAnchoringComponentGetTrackingImageWidth();
    v50 = v49;
    v51 = [MEMORY[0x277CBF758] imageWithMTLTexture:v103 options:0];
    v52 = a1[70];
    if (!v52)
    {
      v53 = [MEMORY[0x277CBF740] context];
      v54 = a1[70];
      a1[70] = v53;

      v52 = a1[70];
    }

    [v51 extent];
    v55 = [v52 createCGImage:v51 fromRect:?];
    *v118 = v110;
    v56 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[73], v110);
    v57 = [objc_alloc(MEMORY[0x277CE5348]) initWithCGImage:v55 orientation:2 physicalWidth:v50];
    v58 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = __p.__r_.__value_.__r.__words[0];
    }

    v106 = v51;
    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v58];
    [v57 setName:v59];

    v61 = rf::realityFusionLogObject(v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = __p.__r_.__value_.__r.__words[0];
      }

      *v118 = 136315138;
      *&v118[4] = v62;
      _os_log_impl(&dword_2617CB000, v61, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Adding reference image %s", v118, 0xCu);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v118, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v118 = __p;
    }

    v100 = v57;
    *&v118[24] = v100;
    v63 = std::__string_hash<char>::operator()[abi:ne200100]((v56 + 5), v118);
    v64 = v63;
    v65 = v56[6];
    if (!*&v65)
    {
      goto LABEL_99;
    }

    v66 = vcnt_s8(v65);
    v66.i16[0] = vaddlv_u8(v66);
    v67 = v66.u32[0];
    if (v66.u32[0] > 1uLL)
    {
      v68 = v63;
      if (v63 >= *&v65)
      {
        v68 = v63 % *&v65;
      }
    }

    else
    {
      v68 = (*&v65 - 1) & v63;
    }

    v69 = *(v56[5] + v68);
    if (!v69 || (v70 = *v69) == 0)
    {
LABEL_99:
      operator new();
    }

    while (2)
    {
      v71 = v70[1];
      if (v71 != v64)
      {
        if (v67 > 1)
        {
          if (v71 >= *&v65)
          {
            v71 %= *&v65;
          }
        }

        else
        {
          v71 &= *&v65 - 1;
        }

        if (v71 != v68)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100]((v56 + 5), v70 + 2, v118))
      {
LABEL_98:
        v70 = *v70;
        if (!v70)
        {
          goto LABEL_99;
        }

        continue;
      }

      break;
    }

    v34 = v103;
    if ((v118[23] & 0x80000000) != 0)
    {
      operator delete(*v118);
    }

    v105 = 1;
LABEL_103:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = a1 + 73;
LABEL_106:

    v30 = v101;
LABEL_107:
    if (++v31 != v29)
    {
      continue;
    }

    break;
  }

LABEL_110:
  *v118 = v110;
  v72 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, v110);
  v102 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v74 = v72 + 7;
  v73 = v72[7];
  if (v73)
  {
    v75 = v72 + 5;
    while (1)
    {
      v76 = std::__string_hash<char>::operator()[abi:ne200100](&v107, (v73 + 2));
      v77 = *(&v107 + 1);
      if (*(&v107 + 1))
      {
        v78 = v76;
        v79 = vcnt_s8(*(&v107 + 8));
        v79.i16[0] = vaddlv_u8(v79);
        v80 = v79.u32[0];
        if (v79.u32[0] > 1uLL)
        {
          v81 = v76;
          if (v76 >= *(&v107 + 1))
          {
            v81 = v76 % *(&v107 + 1);
          }
        }

        else
        {
          v81 = (*(&v107 + 1) - 1) & v76;
        }

        v82 = *(v107 + 8 * v81);
        if (v82)
        {
          for (k = *v82; k; k = *k)
          {
            v84 = k[1];
            if (v78 == v84)
            {
              v76 = std::equal_to<std::string>::operator()[abi:ne200100](&v107, k + 2, v73 + 2);
              if (v76)
              {
                v96 = *v73;
                goto LABEL_157;
              }
            }

            else
            {
              if (v80 > 1)
              {
                if (v84 >= v77)
                {
                  v84 %= v77;
                }
              }

              else
              {
                v84 &= v77 - 1;
              }

              if (v84 != v81)
              {
                break;
              }
            }
          }
        }
      }

      v85 = rf::realityFusionLogObject(v76);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = [v73[5] name];
        *v118 = 138412290;
        *&v118[4] = v86;
        _os_log_impl(&dword_2617CB000, v85, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Removing reference image %@", v118, 0xCu);
      }

      v87 = v72[6];
      v88 = v73[1];
      v89 = vcnt_s8(v87);
      v89.i16[0] = vaddlv_u8(v89);
      if (v89.u32[0] > 1uLL)
      {
        if (v88 >= *&v87)
        {
          v88 %= *&v87;
        }
      }

      else
      {
        v88 &= *&v87 - 1;
      }

      v96 = *v73;
      v90 = *(*v75 + 8 * v88);
      do
      {
        v91 = v90;
        v90 = *v90;
      }

      while (v90 != v73);
      if (v91 != v74)
      {
        v92 = v91[1];
        if (v89.u32[0] > 1uLL)
        {
          if (v92 >= *&v87)
          {
            v92 %= *&v87;
          }
        }

        else
        {
          v92 &= *&v87 - 1;
        }

        v93 = *v73;
        if (v92 == v88)
        {
          goto LABEL_149;
        }
      }

      if (!v96)
      {
        break;
      }

      v94 = v96[1];
      if (v89.u32[0] > 1uLL)
      {
        if (v94 >= *&v87)
        {
          v94 %= *&v87;
        }
      }

      else
      {
        v94 &= *&v87 - 1;
      }

      v93 = *v73;
      if (v94 != v88)
      {
        break;
      }

LABEL_150:
      v95 = v93[1];
      if (v89.u32[0] > 1uLL)
      {
        if (v95 >= *&v87)
        {
          v95 %= *&v87;
        }
      }

      else
      {
        v95 &= *&v87 - 1;
      }

      if (v95 != v88)
      {
        *(*v75 + 8 * v95) = v91;
        v93 = *v73;
      }

LABEL_156:
      *v91 = v93;
      *v73 = 0;
      v72[8] = v72[8] - 1;
      *v118 = v73;
      *&v118[8] = v72 + 5;
      v105 = 1;
      v118[16] = 1;
      *&v118[17] = 0;
      *&v118[20] = 0;
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v118);
LABEL_157:
      v73 = v96;
      if (!v96)
      {
        goto LABEL_158;
      }
    }

    *(*v75 + 8 * v88) = 0;
    v93 = *v73;
LABEL_149:
    if (!v93)
    {
      goto LABEL_156;
    }

    goto LABEL_150;
  }

LABEL_158:
  if (v105)
  {
    while (1)
    {
      v74 = *v74;
      if (!v74)
      {
        break;
      }

      [v102 addObject:v74[5]];
    }

    if (a1[28])
    {
      std::function<void ()(NSSet<ARReferenceImage *> *)>::operator()(&a1[25], v102);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v107);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110[0]);
  }

LABEL_165:
  v97 = *MEMORY[0x277D85DE8];
}

void sub_26184D0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  REAnchorComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    rf::getMessage("Anchor component should not be null.", uu);
    rf::internal::logAssert(uu);
    if (v26 < 0)
    {
      operator delete(*uu);
    }

    ComponentByClass = rf::internal::debugBreakHandler(v21);
  }

  v7 = rf::realityFusionLogObject(ComponentByClass);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    Name = REEntityGetName();
    AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
    v25 = 0;
    v27 = 0;
    uuid_clear(uu);
    *uu = AnchorIdentifier;
    v25 = 1;
    rf::data_flow::RFUUID::string(uu, __p);
    v10 = v23 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v29 = Name;
    v30 = 2082;
    v31 = v10;
    _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Unanchoring entity %s from anchor %{public}s", buf, 0x16u);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  rf::helpers::publishAnchorStateEventWillUnanchor(a2, a3);
  if (rf::helpers::isRemotelyOwned())
  {
    v11 = REAnchorComponentSetAnchoredLocally();
  }

  else
  {
    REAnchorComponentGetComponentType();
    v11 = REEntityRemoveComponentByClass();
  }

  CustomComponent = rf::AnchorMetadataComponent::instance(v11);
  if (*CustomComponent)
  {
    v13 = *rf::AnchorMetadataComponent::instance(CustomComponent);
    CustomComponent = REEntityGetCustomComponent();
    if (CustomComponent)
    {
      v14 = *rf::AnchorMetadataComponent::instance(CustomComponent);
      CustomComponent = REEntityRemoveComponentByClass();
    }
  }

  v15 = rf::AnchorSourceComponent::instance(CustomComponent);
  if (*v15)
  {
    v16 = *rf::AnchorSourceComponent::instance(v15);
    v17 = REEntityGetCustomComponent();
    if (v17)
    {
      v18 = *rf::AnchorSourceComponent::instance(v17);
      REEntityRemoveComponentByClass();
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    result = std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 2);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26184D434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::function<void ()(NSSet<ARReferenceImage *> *)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

void rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  ComponentByClass = a4;
  v165 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 568);
  v13 = *(a6 + 4000);
  if (v12 == 1 && v13 == 2)
  {
    *(a1 + 569) = 1;
    rf::helpers::cacheAnchorBeforeTravelMode(a4, a5);
    v13 = *(a6 + 4000);
    LOBYTE(v12) = *(a1 + 568);
  }

  v130 = a6;
  if ((v12 & 1) != 0 && !v13)
  {
    *(a1 + 569) = 1;
    if (ComponentByClass && REAnchoringComponentGetDescriptorType() == 1)
    {
      DescriptorCachedAnchorIdentifier = REAnchoringComponentGetDescriptorCachedAnchorIdentifier();
      if (uuid_compare(UUID_NULL, DescriptorCachedAnchorIdentifier) && (uu[16] = 0, *&uu[24] = 0, uuid_clear(uu), *uu = DescriptorCachedAnchorIdentifier, uu[16] = 1, AnchorFromAllAnchors = rf::helpers::tryGetAnchorFromAllAnchors(v130, uu), (v17 & 1) != 0))
      {
        v18 = AnchorFromAllAnchors;
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v152, AnchorFromAllAnchors);
        rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(a1, a3, v152, a5, (v130 + 80), 1);
        v19 = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v152);
        v20 = rf::realityFusionLogObject(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          rf::helpers::getRFUUIDFromAnchor(v18, v132);
          rf::data_flow::RFUUID::string(v132, __p);
          v21 = v135;
          v22 = __p[0];
          Name = REEntityGetName();
          v24 = __p;
          if (v21 < 0)
          {
            v24 = v22;
          }

          *buf = 136446466;
          v138 = v24;
          v139 = 2080;
          v140 = Name;
          _os_log_impl(&dword_2617CB000, v20, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Restoring cached anchor %{public}s for entity %s.", buf, 0x16u);
          if (v135 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v130 + 120), uu))
        {
          rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(a1, a3, ComponentByClass, 1);
        }

        else
        {
          v60 = *(a1 + 56);
          if (v60)
          {
            *&v132[0] = a3;
            LODWORD(__p[0]) = 1;
            (*(*v60 + 48))(v60, v132, __p);
          }
        }
      }

      else
      {
        rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, a3, 0);
        REAnchoringComponentSetDescriptorCachedAnchorIdentifier();
      }
    }

    REAnchorComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
  }

  isRemotelyOwned = rf::helpers::isRemotelyOwned();
  AnchoredLocally = 0;
  if ((isRemotelyOwned & 1) == 0 && ComponentByClass)
  {
    AnchoredLocally = REAnchorComponentGetAnchoredLocally();
  }

  REAnchoringComponentGetDescriptorType();
  v131[0] = a7;
  v131[1] = a1;
  REEntityIsEnabledInHierarchy();
  if (isRemotelyOwned)
  {
    DescriptorType = REAnchoringComponentGetDescriptorType();
    if (DescriptorType <= 0xD && ((1 << DescriptorType) & 0x2003) != 0)
    {
      goto LABEL_212;
    }

    v128 = rf::helpers::needAnchoringInClientProcessForEntity((a1 + 233), a3);
    if (!ComponentByClass)
    {
      goto LABEL_212;
    }
  }

  else
  {
    v128 = rf::helpers::needAnchoringInClientProcessForEntity((a1 + 233), a3);
    if (!ComponentByClass)
    {
      goto LABEL_131;
    }
  }

  AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
  v134 = 0;
  v136 = 0;
  uuid_clear(__p);
  __p[0] = AnchorIdentifier;
  v134 = 1;
  v126 = rf::PlacementComponentTypeInfo::instance(v29);
  if (*v126)
  {
    CustomComponent = REEntityGetCustomComponent();
  }

  else
  {
    CustomComponent = 0;
  }

  REClientAnchorSyncComponentGetComponentType();
  v31 = REEntityGetComponentByClass();
  if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v130 + 120), __p))
  {
    v127 = REAnchorComponentGetIsAnchorExternal() ^ 1;
    if (isRemotelyOwned)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v127 = 0;
    if (isRemotelyOwned)
    {
LABEL_36:
      if ((REAnchorComponentGetRequiresLocalAnchoring() & 1) == 0)
      {
        REAnchorComponentSetRequiresLocalAnchoring();
      }

      goto LABEL_41;
    }
  }

  if (AnchoredLocally & 1 | ((v128 & 1) == 0))
  {
    v32 = rf::helpers::validateAnchorState(a5, ComponentByClass, v130);
    if ((v32 & 1) == 0)
    {
      v34 = rf::realityFusionLogObject(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v152[0].i16[0] = 0;
        _os_log_impl(&dword_2617CB000, v34, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Failed to validate anchor state.", v152, 2u);
      }

      goto LABEL_44;
    }
  }

LABEL_41:
  isAnchoringTypeAuthorizedForSelf = (*(*a1 + 32))(a1, a5, v128);
  if (isAnchoringTypeAuthorizedForSelf)
  {
    v34 = rf::realityFusionLogObject(isAnchoringTypeAuthorizedForSelf);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = REEntityGetName();
      LocalId = REEntityGetLocalId();
      v152[0].i32[0] = 136315394;
      *(v152 + 4) = v35;
      v152[1].i16[2] = 2048;
      *(&v152[1] + 6) = LocalId;
      _os_log_impl(&dword_2617CB000, v34, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Entity %s(%llu) failed capabilities check.", v152, 0x16u);
    }

LABEL_44:

    rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, a3, 0);
    goto LABEL_119;
  }

  if (*(a1 + 232) == 1)
  {
    isAnchoringTypeAuthorizedForSelf = rf::helpers::isAnchoringTypeAuthorizedForSelf(a5, *(v130 + 200));
    if (!isAnchoringTypeAuthorizedForSelf)
    {
      goto LABEL_60;
    }

    if (*(a1 + 232))
    {
LABEL_50:
      v37 = rf::helpers::kCameraIdentifier(isAnchoringTypeAuthorizedForSelf);
      v38 = __p;
      if (v134)
      {
        v38 = __p[0];
      }

      if (*(v37 + 16))
      {
        v39 = *v37;
      }

      else
      {
        v39 = v37;
      }

      if (!uuid_compare(v38, v39) && rf::helpers::getInternalActiveCamera())
      {
        REEntityGetComponent();
        RETransformComponentGetWorldMatrix4x4F();
        CameraComponentTransformInScene = rf::helpers::getCameraComponentTransformInScene(v132);
        v49 = rf::helpers::kCameraIdentifier(CameraComponentTransformInScene);
        v50 = v49[1];
        *uu = *v49;
        *&uu[16] = v50;
        v142 = v132[0];
        v143 = v132[1];
        v144 = v132[2];
        *v145 = v132[3];
        *&v145[16] = 16842752;
        *&v145[20] = 0;
        v145[24] = 0;
        v146 = 0;
        LOBYTE(v147) = 0;
        BYTE8(v148) = 0;
        *&v149 = 0;
        uuid_clear(&v147 + 8);
        BYTE8(v149) = 0;
        BYTE8(v151) = 0;
        v155 = v144;
        v156[0] = *v145;
        *(v156 + 9) = *&v145[9];
        *v152[0].i8 = *uu;
        *v152[2].i8 = *&uu[16];
        v153 = v142;
        v154 = v143;
        v51 = v146;
        v146 = 0;
        v157 = v51;
        v160 = v149;
        v161 = v150;
        v162 = v151;
        v158 = v147;
        v159 = v148;
        v163 = 0;
        rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(a1, a3, v152, (v130 + 80));
        rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(v131);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v152);
        goto LABEL_212;
      }

      v124 = CustomComponent;
      v40 = v136;
      if (!v136)
      {
        v122 = __p;
        if (v134)
        {
          v122 = __p[0];
        }

        v40 = (v122[1] + 64 * *v122 + (*v122 >> 2) + 2654435769u) ^ *v122;
        v136 = v40;
      }

      v41 = *(v130 + 3352);
      if (v41)
      {
        v125 = (v130 + 3344);
        v42 = vcnt_s8(v41);
        v42.i16[0] = vaddlv_u8(v42);
        v43 = v42.u32[0];
        if (v42.u32[0] > 1uLL)
        {
          v44 = v40;
          if (v40 >= *&v41)
          {
            v44 = v40 % *&v41;
          }
        }

        else
        {
          v44 = (*&v41 - 1) & v40;
        }

        v52 = *(*v125 + 8 * v44);
        if (v52)
        {
          v53 = *v52;
          if (*v52)
          {
            do
            {
              v54 = v53[1];
              if (v40 == v54)
              {
                if (rf::data_flow::RFUUID::Equality::operator()(v125, (v53 + 2), __p))
                {
                  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v152, v53[6]);
                  updated = rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(a1, a3, v152, (v130 + 80));
                  v68 = *a7 + 1;
                  *a7 = v68;
                  if (v68 >= *(a1 + 632))
                  {
                    v69 = rf::realityFusionLogObject(updated);
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                    {
                      v120 = *a7;
                      v121 = *(a1 + 632);
                      *uu = 134218240;
                      *&uu[4] = v120;
                      *&uu[12] = 2048;
                      *&uu[14] = v121;
                      _os_log_error_impl(&dword_2617CB000, v69, OS_LOG_TYPE_ERROR, "AnchorManagementConsumer: %llu anchoring updated this frame, which more than %llu, this could cause backboardd hang", uu, 0x16u);
                    }
                  }

                  if (v124)
                  {
                    if (std::function<BOOL ()(REComponent *)>::operator()((v126 + 5), v124))
                    {
                      std::function<void ()(REComponent *)>::operator()((v126 + 9), v124);
                      v70 = *(a1 + 56);
                      if (v70)
                      {
                        std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(v70, a3, 3);
                      }
                    }
                  }

                  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v152);
                  goto LABEL_119;
                }
              }

              else
              {
                if (v43 > 1)
                {
                  if (v54 >= *&v41)
                  {
                    v54 %= *&v41;
                  }
                }

                else
                {
                  v54 &= *&v41 - 1;
                }

                if (v54 != v44)
                {
                  break;
                }
              }

              v53 = *v53;
            }

            while (v53);
          }
        }
      }

      v55 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v130 + 3384), __p);
      if (v55)
      {
        if ((isRemotelyOwned & 1) != 0 || (rf::data_flow::consumer::AnchorManagementConsumer::matchAndReanchorEntity(a1, a3, (v55 + 6), (v130 + 80)) & 1) == 0)
        {
          v56 = rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, a3, 0);
          if (v124)
          {
            v57 = *rf::PlacementComponentTypeInfo::instance(v56);
            REEntityRemoveComponentByClass();
          }
        }
      }

      else
      {
        v58 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v130 + 3424), __p);
        if (v58)
        {
          v59 = *(v58 + 12);
          if (v59 - 1 >= 2)
          {
            if (v59 != 7)
            {
              goto LABEL_119;
            }

            v59 = 0;
          }

          rf::helpers::publishAnchorStateEventDidFailToAnchor(a3, v59);
          goto LABEL_119;
        }

        if (v127)
        {
          v61 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = REEntityGetName();
            v63 = REEntityGetLocalId();
            rf::data_flow::RFUUID::string(__p, uu);
            v64 = uu[23] >= 0 ? uu : *uu;
            v152[0].i32[0] = 136315650;
            *(v152 + 4) = v62;
            v152[1].i16[2] = 2048;
            *(&v152[1] + 6) = v63;
            v152[2].i16[3] = 2082;
            v152[3] = v64;
            _os_log_impl(&dword_2617CB000, v61, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Marking entity external %s, %llu, holding anchor with identifier %{public}s", v152, 0x20u);
            if ((uu[23] & 0x80000000) != 0)
            {
              operator delete(*uu);
            }
          }

          rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(a1, a3, ComponentByClass, 1);
        }

        else if (v124 && std::function<BOOL ()(REComponent *)>::operator()((v126 + 5), v124))
        {
          v65 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v130 + 80), __p);
          if (v65)
          {
            rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(a1, a3, (v65 + 6), (v130 + 80));
            rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(v131);
            std::function<void ()(REComponent *)>::operator()((v126 + 9), v124);
            v66 = *(a1 + 56);
            if (v66)
            {
              std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(v66, a3, 3);
            }
          }
        }

        else if (isRemotelyOwned)
        {
          if ((REAnchorComponentGetAnchoredLocally() & 1) == 0)
          {
            v71 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v130 + 80), __p);
            if (v71)
            {
              rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(a1, a3, (v71 + 6), (v130 + 80));
              rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(v131);
            }
          }
        }
      }

      goto LABEL_119;
    }
  }

  if (!v31)
  {
    goto LABEL_50;
  }

  isAnchoringTypeAuthorizedForSelf = rf::helpers::isAnchoringTypeAuthorizedForPeer(a5, (v130 + 208));
  if (isAnchoringTypeAuthorizedForSelf)
  {
    goto LABEL_50;
  }

LABEL_60:
  v45 = rf::realityFusionLogObject(isAnchoringTypeAuthorizedForSelf);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = REEntityGetName();
    v47 = REEntityGetLocalId();
    v152[0].i32[0] = 136315394;
    *(v152 + 4) = v46;
    v152[1].i16[2] = 2048;
    *(&v152[1] + 6) = v47;
    _os_log_impl(&dword_2617CB000, v45, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Entity %s(%llu) is no longer authorized to be anchored.", v152, 0x16u);
  }

  rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, a3, 1u);
LABEL_119:
  REAnchorComponentGetComponentType();
  v72 = REEntityGetComponentByClass();
  v73 = REEntityGetName();
  if (!strcmp(v73, "Reality Simulation System Portal"))
  {
    v74 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    v74 = 0;
  }

  v75 = REEntityGetName();
  if (a5)
  {
    v76 = strcmp(v75, "AccessibilityMRServer-main-world-anchor") == 0;
    v77 = REAnchoringComponentGetDescriptorType();
    if (((v74 | v76) & 1) != 0 && v77 == 1)
    {
      if (v72)
      {
        if ((*(v130 + 4000) | 2) == 2)
        {
          IsAnchorExternal = REAnchorComponentGetIsAnchorExternal();
          if (IsAnchorExternal)
          {
            v79 = rf::realityFusionLogObject(IsAnchorExternal);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = REEntityGetName();
              v81 = REEntityGetLocalId();
              v152[0].i32[0] = 136315394;
              *(v152 + 4) = v80;
              v152[1].i16[2] = 2048;
              *(&v152[1] + 6) = v81;
              _os_log_impl(&dword_2617CB000, v79, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Relocalizing entity %s, %llu, because tracking is regained", v152, 0x16u);
            }

            rf::data_flow::consumer::AnchorManagementConsumer::relocalizeEntity(a1, a3, v72, 1);
            rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, a3, 0);
          }
        }
      }
    }
  }

LABEL_131:
  REAnchorComponentGetComponentType();
  v82 = REEntityGetComponentByClass();
  IsAnchored = REEntityIsAnchored();
  if (v82)
  {
    v84 = REAnchorComponentGetIsAnchorExternal();
    if ((isRemotelyOwned & 1) == 0)
    {
      v85 = REAnchorComponentGetAnchoredLocally();
      goto LABEL_136;
    }
  }

  else
  {
    v84 = 0;
  }

  v85 = 0;
LABEL_136:
  if (*(a1 + 232) & v128)
  {
    v86 = rf::helpers::isAnchoringTypeAuthorizedForSelf(a5, *(v130 + 200)) ^ 1;
    if (!IsAnchored)
    {
      goto LABEL_138;
    }

LABEL_141:
    if ((v86 | v85 | v84))
    {
      goto LABEL_212;
    }

    goto LABEL_142;
  }

  v86 = 1;
  if (IsAnchored)
  {
    goto LABEL_141;
  }

LABEL_138:
  if (v84)
  {
    goto LABEL_212;
  }

LABEL_142:
  if (!(*(*a1 + 40))(a1, a5))
  {
    goto LABEL_212;
  }

  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v87 = REAnchoringComponentGetDescriptorType();
    v88 = v87;
    if (*(v130 + 4004) != 1 && v87 == 13)
    {
      goto LABEL_212;
    }
  }

  else
  {
    v88 = 11;
  }

  if (*(a1 + 232) == 1)
  {
    if ((rf::helpers::shouldAnchorEntityInClientProcess(a3, (a1 + 233), *(*(a1 + 16) + 264)) & 1) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_195;
  }

  REClientAnchorSyncComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
LABEL_172:
    if ((*(a1 + 68) & 1) != 0 || (*(a1 + 66) & 1) != 0 || *(a1 + 67) == 1)
    {
      RENetworkComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (*(a1 + 68) == 1)
        {
          Parent = a3;
          do
          {
            v99 = Parent != 0;
            if (!Parent)
            {
              break;
            }

            __p[0] = REEntityGetLocalId();
            Parent = REEntityGetParent();
            v100 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>((a1 + 400), __p[0]);
            v101 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>((a1 + 480), __p);
            if (v101)
            {
              *&v132[0] = __p;
              v102 = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 480), __p);
              LODWORD(v101) = rf::helpers::authorizedTypeForEntitledAnchoringTypesConfig(v88, v102 + 24);
            }
          }

          while (!v100 && !v101);
        }

        else
        {
          v99 = 0;
        }

        v104 = 0;
        if ((*(a1 + 66) & 1) != 0 || *(a1 + 67) == 1)
        {
          v103 = RENetworkComponentOwnerPeerID();
          if (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>((a1 + 320), v103) || std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>((a1 + 360), v103))
          {
            v104 = 1;
          }
        }

        v105 = REEntityGetParent();
        v106 = v104;
        if (!v105)
        {
          v106 = v104 | *(a1 + 66);
        }

        if (!v99 && ((v104 | v106) & 1) == 0)
        {
          goto LABEL_212;
        }
      }
    }

LABEL_195:
    REAnchoringComponentGetComponentType();
    v107 = REEntityGetComponentByClass();
    if (!v107)
    {
      rf::getMessage("Anchoring component should not be null.", v152);
      rf::internal::logAssert(v152);
      if (v152[2].i8[7] < 0)
      {
        operator delete(*v152);
      }

      rf::internal::debugBreakHandler(v123);
    }

    SceneNullable = REEntityGetSceneNullable();
    v109 = rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(v152, a1, SceneNullable, v107, v130);
    if (v164 == 1)
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uu, v152);
      rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(a1, a3, uu, v107, (v130 + 80), 1);
      v110 = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
      v111 = rf::realityFusionLogObject(v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = REEntityGetName();
        if ((v164 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v113 = v112;
        rf::helpers::getRFUUIDFromAnchor(v152, v132);
        rf::data_flow::RFUUID::string(v132, __p);
        if (v135 >= 0)
        {
          v114 = __p;
        }

        else
        {
          v114 = __p[0];
        }

        *buf = 136315394;
        v138 = v113;
        v139 = 2082;
        v140 = v114;
        _os_log_impl(&dword_2617CB000, v111, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Anchoring entity %s to anchor %{public}s.", buf, 0x16u);
        if (v135 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v109 = *(a1 + 56);
      if (v109)
      {
        *&v132[0] = a3;
        LODWORD(__p[0]) = 1;
        v109 = (*(*v109 + 48))(v109, v132, __p);
      }
    }

    if (v164 == 1)
    {
      v109 = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v152);
    }

    v115 = *a7 + 1;
    *a7 = v115;
    if (v115 >= *(a1 + 632))
    {
      v116 = rf::realityFusionLogObject(v109);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v118 = *a7;
        v119 = *(a1 + 632);
        v152[0].i32[0] = 134218240;
        *(v152 + 4) = v118;
        v152[1].i16[2] = 2048;
        *(&v152[1] + 6) = v119;
        _os_log_error_impl(&dword_2617CB000, v116, OS_LOG_TYPE_ERROR, "AnchorManagementConsumer: %llu anchoring updated this frame, which more than %llu, this could cause backboardd hang", v152, 0x16u);
      }
    }

    goto LABEL_212;
  }

  v89 = *(a1 + 16);
  memset(v152, 0, sizeof(v152));
  LODWORD(v153) = *(v89 + 304);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(v152, *(v89 + 280));
  v90 = *(v89 + 288);
  if (!v90)
  {
    goto LABEL_171;
  }

  do
  {
    v91 = v90[2];
    if (!*&v152[1])
    {
      goto LABEL_169;
    }

    v92 = vcnt_s8(v152[1]);
    v92.i16[0] = vaddlv_u8(v92);
    if (v92.u32[0] > 1uLL)
    {
      v93 = v90[2];
      if (*&v152[1] <= v91)
      {
        v93 = v91 % *&v152[1];
      }
    }

    else
    {
      v93 = (*&v152[1] - 1) & v91;
    }

    v94 = *(*v152 + 8 * v93);
    if (!v94 || (v95 = *v94) == 0)
    {
LABEL_169:
      operator new();
    }

    while (1)
    {
      v96 = v95[1];
      if (v96 == v91)
      {
        break;
      }

      if (v92.u32[0] > 1uLL)
      {
        if (v96 >= *&v152[1])
        {
          v96 %= *&v152[1];
        }
      }

      else
      {
        v96 &= *&v152[1] - 1;
      }

      if (v96 != v93)
      {
        goto LABEL_169;
      }

LABEL_168:
      v95 = *v95;
      if (!v95)
      {
        goto LABEL_169;
      }
    }

    if (v95[2] != v91)
    {
      goto LABEL_168;
    }

    v90 = *v90;
  }

  while (v90);
LABEL_171:
  shouldAnchorEntityRequiringClientAnchoring = rf::helpers::shouldAnchorEntityRequiringClientAnchoring(a3, v152);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v152);
  if (shouldAnchorEntityRequiringClientAnchoring)
  {
    goto LABEL_172;
  }

LABEL_212:
  v117 = *MEMORY[0x277D85DE8];
}

void sub_26184E870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(result + 232) == 1)
    {
      v4 = rf::helpers::needAnchoringInClientProcessForEntity((result + 233), a2) ^ 1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x2821536A8](a3, v4);
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, rf::helpers *a5, int a6)
{
  v196 = *MEMORY[0x277D85DE8];
  v155 = a4;
  REAnchorComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v152 = ComponentByClass;
  if (ComponentByClass)
  {
    v11 = ComponentByClass;
    RERetain();
  }

  else
  {
    REAnchorComponentGetComponentType();
    v11 = REComponentCreateByClass();
    REAnchoringComponentGetComponentType();
    v12 = REEntityGetComponentByClass();
    if (v11)
    {
      if (v12)
      {
        REClientAnchorSyncComponentGetComponentType();
        v13 = REEntityGetComponentByClass();
        if ((*(a1 + 232) & 1) == 0 && !v13)
        {
          DescriptorType = REAnchoringComponentGetDescriptorType();
          if (DescriptorType <= 4 && ((1 << DescriptorType) & 0x16) != 0)
          {
            REAnchorComponentSetSendIsAnchoredToClient();
          }
        }
      }
    }

    rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(a1, a2, v11);
  }

  REAnchorComponentSetAnchoredLocally();
  CameraAnchor = rf::helpers::getCameraAnchor(a5);
  rf::helpers::getTransformFromAnchor(a3, &v155, (CameraAnchor + 4), a1 + 288, *(a1 + 576), &v154);
  REAnchorComponentSetWorldTransform();
  if (REAnchoringComponentGetMode() || (rf::helpers::isWorldAnchoringType() & 1) != 0)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v169, a3);
  }

  else
  {
    uu[16] = 0;
    *&uu[24] = 0;
    uuid_clear(uu);
    uuid_generate_random(uu);
    v180 = v154.columns[0];
    v181 = v154.columns[1];
    v182 = v154.columns[2];
    *v183 = v154.columns[3];
    *&v183[16] = 16842752;
    *&v183[20] = 0;
    v183[24] = 0;
    v184 = 0;
    v185.columns[0].i8[0] = 0;
    v185.columns[1].i8[8] = 0;
    v185.columns[2].i64[0] = 0;
    uuid_clear(&v185.columns[0].u8[8]);
    v185.columns[2].i8[8] = 0;
    BYTE8(v186) = 0;
    v173 = v182;
    v174[0] = *v183;
    *(v174 + 9) = *&v183[9];
    v169 = *uu;
    v170 = *&uu[16];
    v171 = v180;
    v172 = v181;
    v117 = v184;
    v184 = 0;
    v175 = v117;
    v176 = v185;
    v177 = v186;
    v178 = 0;
    if (*(a1 + 96))
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uu, &v169);
      v118 = *(a1 + 96);
      if (!v118)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v118 + 48))(v192);
      if (v178)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v169 = *v192;
      v170 = v193;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
    }

    v119 = *(a1 + 128);
    if (v119)
    {
      std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator()(v119, &v169);
    }

    REAnchoringComponentSetDescriptorTransform();
  }

  rf::helpers::getRFUUIDFromAnchor(&v169, uu);
  v16 = REAnchorComponentSetAnchorIdentifier();
  v17 = rf::PlacementComponentTypeInfo::instance(v16);
  if (*v17)
  {
    CustomComponent = REEntityGetCustomComponent();
  }

  else
  {
    CustomComponent = 0;
  }

  PreviousWorldTransform = REAnchoringComponentGetPreviousWorldTransform();
  if (PreviousWorldTransform)
  {
    v132 = PreviousWorldTransform[1];
    v137 = *PreviousWorldTransform;
    v144 = PreviousWorldTransform[3];
    v148 = PreviousWorldTransform[2];
    v197 = __invert_f4(v154);
    v20 = 0;
    *v192 = v137;
    v193 = v132;
    v194 = v148;
    v195 = v144;
    do
    {
      *&uu[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v197.columns[0], COERCE_FLOAT(*&v192[v20])), v197.columns[1], *&v192[v20], 1), v197.columns[2], *&v192[v20], 2), v197.columns[3], *&v192[v20], 3);
      v20 += 16;
    }

    while (v20 != 64);
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      v21 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        Name = REEntityGetName();
        rf::helpers::getBaseAnchorProperties(a3);
        rf::data_flow::RFUUID::string(uu, v192);
        if (v193.i8[7] >= 0)
        {
          v23 = v192;
        }

        else
        {
          v23 = *v192;
        }

        buf.columns[0].i32[0] = 136315394;
        *(buf.columns[0].i64 + 4) = Name;
        buf.columns[0].i16[6] = 2082;
        *(&buf.columns[0].i64[1] + 6) = v23;
        _os_log_impl(&dword_2617CB000, v21, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer::anchorEntity(): Transform component not found when attempting to anchor entity %s to anchor %{public}s, adding one now", &buf, 0x16u);
        if (v193.i8[7] < 0)
        {
          operator delete(*v192);
        }
      }

      RETransformComponentGetComponentType();
      REEntityAddComponentByClass();
    }

    REMakeSRTFromMatrix();
    RETransformComponentSetLocalSRT();
    RENetworkMarkComponentDirty();
    goto LABEL_30;
  }

  if (*(a3 + 256) != 1 || CustomComponent || !a6)
  {
LABEL_30:
    if (CustomComponent)
    {
      std::function<void ()(REComponent *)>::operator()((v17 + 9), CustomComponent);
    }

    goto LABEL_66;
  }

  v24 = *(a3 + 80);
  v182 = *(a3 + 64);
  *v183 = v24;
  *&v183[9] = *(a3 + 89);
  v25 = *(a3 + 16);
  *uu = *a3;
  *&uu[16] = v25;
  v26 = *(a3 + 48);
  v180 = *(a3 + 32);
  v181 = v26;
  v184 = *(a3 + 112);
  v27 = *(a3 + 176);
  v185.columns[2] = *(a3 + 160);
  v185.columns[3] = v27;
  v186 = *(a3 + 192);
  v28 = *(a3 + 144);
  v185.columns[0] = *(a3 + 128);
  v185.columns[1] = v28;
  v29 = *(a3 + 216);
  v187 = *(a3 + 208);
  v188 = 0;
  v30 = *(a3 + 224);
  v190 = 0;
  v189 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v188, v29, v30, (v30 - v29) >> 4);
  REAnchoringComponentGetDescriptorBounds();
  v149 = v31;
  v160 = v182;
  v161[0] = *v183;
  *(v161 + 9) = *&v183[9];
  v156 = *uu;
  v157 = *&uu[16];
  v158 = v180;
  v159 = v181;
  v162 = v184;
  v163 = v185;
  v164 = v186;
  v165 = v187;
  __p = 0;
  v167 = 0;
  v168 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v188, v189, (v189 - v188) >> 4);
  v145 = __PAIR64__(DWORD2(v164), v164);
  v32 = 0.0;
  if (!v165)
  {
    v33 = 0;
    v34 = v158;
    v35 = v159;
    v36 = v160;
    v37 = v161[0];
    v38 = v163.columns[0];
    v39 = v163.columns[1];
    v40 = v163.columns[2];
    v41 = v163.columns[3];
    buf = v163;
    do
    {
      *&v192[v33 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*&buf.columns[v33])), v35, *buf.columns[v33].f32, 1), v36, buf.columns[v33], 2), v37, buf.columns[v33], 3);
      ++v33;
    }

    while (v33 != 4);
    v42 = 0;
    v133 = v194;
    v138 = v195;
    v127 = v193;
    v129 = vmulq_f32(*v192, 0);
    buf.columns[0] = v38;
    buf.columns[1] = v39;
    buf.columns[2] = v40;
    buf.columns[3] = v41;
    do
    {
      *&v192[v42 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*&buf.columns[v42])), v35, *buf.columns[v42].f32, 1), v36, buf.columns[v42], 2), v37, buf.columns[v42], 3);
      ++v42;
    }

    while (v42 != 4);
    v120 = v193;
    v121 = *v192;
    v123 = v194;
    v125 = v195;
    v43 = rf::helpers::getCameraAnchor(a5);
    v44 = vmlaq_f32(vaddq_f32(v133, vmlaq_f32(v129, 0, v127)), 0, v138);
    v130 = vmlaq_f32(vmlaq_f32(vaddq_f32(v120, vmulq_f32(v121, 0)), 0, v123), 0, v125);
    v134 = v44;
    v45 = vextq_s8(vuzp1q_s32(v130, v130), v130, 0xCuLL);
    v46 = vmlaq_f32(vmulq_f32(v45, vnegq_f32(v43[4])), v130, vextq_s8(vuzp1q_s32(v43[4], v43[4]), v43[4], 0xCuLL));
    v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
    v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), vnegq_f32(v130)), v47, v45);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmulq_f32(v48, v48);
    v45.f32[0] = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
    *v50.f32 = vrsqrte_f32(v45.u32[0]);
    *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v50.f32, *v50.f32)));
    v139 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v50.f32, *v50.f32))).f32[0]);
    v51 = vmulq_f32(v44, v139);
    v52 = acosf(fminf(fmaxf(v51.f32[2] + vaddv_f32(*v51.f32), -1.0), 1.0));
    v53 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL), vnegq_f32(v134)), v139, vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL));
    v54 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
    v55 = vmulq_f32(v53, v53);
    *&v56 = v55.f32[1] + (v55.f32[2] + v55.f32[0]);
    *v55.f32 = vrsqrte_f32(v56);
    *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
    v57 = vmulq_f32(v130, vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]));
    if ((v57.f32[2] + vaddv_f32(*v57.f32)) <= 0.0)
    {
      v52 = -v52;
    }

    v32 = rf::helpers::rotationThatFitsRect(v52, v149, *&v145);
    v58 = sqrtf(vaddv_f32(vmul_f32(v149, v149)));
    if (v58 >= 0.00000011921)
    {
      v59 = acosf(v149.f32[0] / v58);
      v140 = fabsf(v58 * cosf(v59 + v32));
      v60 = acosf(v149.f32[1] / v58);
      v149 = __PAIR64__(COERCE_UNSIGNED_INT(fabsf(v58 * cosf(v60 + v32))), LODWORD(v140));
    }
  }

  v61 = rf::helpers::getCameraAnchor(a5);
  v62 = vmulq_f32(v159, vnegq_f32(v61[4]));
  v63 = v62.f32[2] + vaddv_f32(*v62.f32);
  if (v63 <= -0.00000011921)
  {
    v64 = vmulq_f32(v159, vsubq_f32(v161[0], v61[5]));
    v65 = (v64.f32[2] + vaddv_f32(*v64.f32)) / v63;
    if (v65 >= 0.0)
    {
      v131 = v65;
      v135 = v61[5];
      v141 = v61[4];
      v198 = __invert_f4(v163);
      v126 = v198.columns[0];
      v128 = v198.columns[1];
      v122 = v198.columns[3];
      v124 = v198.columns[2];
      v198.columns[0] = v158;
      v198.columns[1] = v159;
      v198.columns[2] = v160;
      v198.columns[3] = v161[0];
      v199 = __invert_f4(v198);
      v66 = 0;
      buf = v199;
      do
      {
        *&v192[v66 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*&buf.columns[v66])), v128, *buf.columns[v66].f32, 1), v124, buf.columns[v66], 2), v122, buf.columns[v66], 3);
        ++v66;
      }

      while (v66 != 4);
      v67 = vsubq_f32(v135, vmulq_n_f32(v141, v131));
      v68 = &v195;
      v69 = *vld2_f32(v68).val;
      v70 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v192, v67.f32[0]), v193, *v67.f32, 1), v194, v67, 2);
      v71 = vextq_s8(v70, v70, 8uLL);
      *v71.i8 = vadd_f32(v69, vzip1_s32(*v70.i8, *v71.i8));
      v72 = vmul_f32(v149, 0x3F0000003F000000);
      *v70.i8 = vmul_f32(v145, 0x3F0000003F000000);
      *v71.i8 = vminnm_f32(vmaxnm_f32(*v71.i8, vsub_f32(v72, *v70.i8)), vsub_f32(*v70.i8, v72));
      v150 = vtrn2q_s32(vzip1q_s32(xmmword_26185E1B0, v71), xmmword_26185E1B0);
      *v70.i8 = vrsqrte_f32(1065353216);
      *v70.i8 = vmul_f32(*v70.i8, vrsqrts_f32(1065353216, vmul_f32(*v70.i8, *v70.i8)));
      v73 = vmulq_n_f32(xmmword_26185DD10, vmul_f32(*v70.i8, vrsqrts_f32(1065353216, vmul_f32(*v70.i8, *v70.i8))).f32[0]);
      v74 = v73.f32[1];
      v75 = v73.f32[2];
      v142 = v73;
      v146 = vmulq_f32(v73, v73).f32[0];
      v76 = vmuls_lane_f32(v73.f32[1], *v73.f32, 1);
      v77 = vmuls_lane_f32(v73.f32[0], *v73.f32, 1);
      v78 = vmuls_lane_f32(v73.f32[0], v73, 2);
      v79 = __sincosf_stret(v32);
      v80 = 0;
      v81 = vmuls_lane_f32(v79.__sinval, *v142.f32, 1);
      v82 = vmuls_lane_f32(v79.__sinval, v142, 2);
      v83 = 1.0 - v79.__cosval;
      v84.i32[3] = 0;
      v85 = v163.columns[0];
      v86 = v163.columns[1];
      v87 = v163.columns[2];
      v88 = v163.columns[3];
      buf.columns[0] = xmmword_26185DD00;
      buf.columns[1] = xmmword_26185DD10;
      buf.columns[2] = xmmword_26185DD20;
      buf.columns[3] = v150;
      do
      {
        *&v192[v80 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, COERCE_FLOAT(*&buf.columns[v80])), v86, *buf.columns[v80].f32, 1), v87, buf.columns[v80], 2), v88, buf.columns[v80], 3);
        ++v80;
      }

      while (v80 != 4);
      v89 = 0;
      v84.f32[1] = v76 + (v79.__cosval * (1.0 - v76));
      v90.i32[3] = 0;
      v91.f32[0] = v146 + (v79.__cosval * (1.0 - v146));
      v91.f32[1] = v82 + (v77 * v83);
      v91.i64[1] = COERCE_UNSIGNED_INT(-(v81 - (v78 * (1.0 - v79.__cosval))));
      v84.f32[2] = (v79.__sinval * v142.f32[0]) + ((v74 * v75) * v83);
      v90.f32[0] = v81 + (v78 * v83);
      v90.f32[1] = -((v79.__sinval * v142.f32[0]) - ((v74 * v75) * v83));
      v90.f32[2] = (v75 * v75) + (v79.__cosval * (1.0 - (v75 * v75)));
      v92 = *v192;
      v93 = v193;
      v94 = v194;
      v95 = v195;
      buf.columns[0] = v91;
      v84.f32[0] = -(v82 - (v77 * (1.0 - v79.__cosval)));
      buf.columns[1] = v84;
      buf.columns[2] = v90;
      buf.columns[3] = xmmword_26185E1B0;
      do
      {
        *&v192[v89 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*&buf.columns[v89])), v93, *buf.columns[v89].f32, 1), v94, buf.columns[v89], 2), v95, buf.columns[v89], 3);
        ++v89;
      }

      while (v89 != 4);
      v147 = v193;
      v151 = *v192;
      v136 = v195;
      v143 = v194;
      RETransformComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        v96 = rf::realityFusionLogObject(0);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *v192 = 0;
          _os_log_impl(&dword_2617CB000, v96, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Plane Anchor entity require Transform component to function", v192, 2u);
        }

        v98 = rf::realityFusionLogObject(v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *v192 = 0;
          _os_log_impl(&dword_2617CB000, v98, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Adding Transform component", v192, 2u);
        }

        RETransformComponentGetComponentType();
        REEntityAddComponentByClass();
      }

      RETransformComponentGetLocalSRT();
      RESRTMatrix();
      v99 = 0;
      buf.columns[0] = v100;
      buf.columns[1] = v101;
      buf.columns[2] = v102;
      buf.columns[3] = v103;
      do
      {
        *&v192[v99 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, COERCE_FLOAT(*&buf.columns[v99])), v147, *buf.columns[v99].f32, 1), v143, buf.columns[v99], 2), v136, buf.columns[v99], 3);
        ++v99;
      }

      while (v99 != 4);
      REMakeSRTFromMatrix();
      RETransformComponentSetLocalSRT();
      RENetworkMarkComponentDirty();
    }
  }

  if (__p)
  {
    v167 = __p;
    operator delete(__p);
  }

  if (v188)
  {
    v189 = v188;
    operator delete(v188);
  }

LABEL_66:
  v104 = (*(a3 + 256) - 1);
  REAnchorComponentSetEnableShadows();
  if (!v152)
  {
    REClientAnchorSyncComponentGetComponentType();
    v105 = REEntityGetComponentByClass();
    v106 = rf::helpers::needAnchoringInClientProcessForEntity((a1 + 233), a2);
    rf::helpers::isRemotelyOwned();
    if (*(a1 + 232))
    {
      v107 = v106 ^ 1;
    }

    else
    {
      v107 = v105 == 0;
    }

    if ((v107 & 1) == 0)
    {
      RENetworkComponentGetComponentType();
      v108 = REEntityGetComponentByClass();
      if (v108)
      {
        MEMORY[0x26670C630](v108, v11);
      }
    }

    REEntityAddExistingComponent();
  }

  rf::helpers::getRFUUIDFromAnchor(a3, v192);
  v109 = relocalizeEntityIfNeeded(a2, v192, a5, v11, 0);
  if (v109)
  {
    v110 = rf::realityFusionLogObject(v109);
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      v111 = REEntityGetName();
      LocalId = REEntityGetLocalId();
      rf::data_flow::RFUUID::string(v192, &buf);
      v113 = buf.columns[1].i8[7] >= 0 ? &buf : buf.columns[0].i64[0];
      *uu = 136315650;
      *&uu[4] = v111;
      *&uu[12] = 2048;
      *&uu[14] = LocalId;
      *&uu[22] = 2082;
      *&uu[24] = v113;
      _os_log_impl(&dword_2617CB000, v110, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Relocalizing entity %s, %llu anchored to a new identifier %{public}s", uu, 0x20u);
      if (buf.columns[1].i8[7] < 0)
      {
        operator delete(buf.columns[0].i64[0]);
      }
    }

    v114 = *(a1 + 56);
    if (v114)
    {
      *uu = a2;
      buf.columns[0].i32[0] = 1;
      (*(*v114 + 48))(v114, uu, &buf);
    }
  }

  else
  {
    rf::helpers::publishAnchorStateEventDidAnchor(a2, 0);
  }

  RERelease();
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v169);
  v116 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = REAnchorComponentGetIsAnchorExternal();
  if ((result & 1) == 0)
  {
    REAnchorComponentSetIsAnchorExternal();
    if (a4 && REAnchorComponentGetSendIsAnchoredToClient())
    {
      RENetworkMarkComponentDirty();
    }

    rf::helpers::publishAnchorStateEventWillUnanchor(a2, 0);
    result = *(a1 + 56);
    if (result)
    {

      return std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 4);
    }
  }

  return result;
}

uint64_t std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = *MEMORY[0x277D85DE8];
  v88 = a4;
  v89 = a3;
  v122[0] = &unk_28740B138;
  v122[1] = &v88;
  v123 = v122;
  DescriptorType = REAnchoringComponentGetDescriptorType();
  v9 = (a5 + 80);
  if (DescriptorType > 3)
  {
    if (DescriptorType > 5)
    {
      if (DescriptorType == 6)
      {
        v27 = *(a5 + 96);
        if (!v27)
        {
          goto LABEL_45;
        }

        while (*(v27 + 76) != 4 || (*(v27 + 147) & 1) == 0)
        {
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if (DescriptorType != 7)
        {
LABEL_40:
          *a1 = 0;
          *(a1 + 272) = 0;
          goto LABEL_85;
        }

        v27 = *(a5 + 96);
        if (!v27)
        {
          goto LABEL_45;
        }

        while (*(v27 + 76) != 5 || (*(v27 + 147) & 1) == 0)
        {
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_45;
          }
        }
      }

      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v27 + 6));
      goto LABEL_51;
    }

    if (DescriptorType == 4)
    {
      *uu = a5 + 80;
      *&uu[8] = &v88;
      v125 = 0uLL;
      if (std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_7> &>(uu))
      {
        v41 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_7> &>(uu);
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v41 + 6));
        goto LABEL_51;
      }
    }

    else
    {
      *uu = a5 + 80;
      *&uu[8] = &v88;
      v125 = 0uLL;
      if (std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_8> &>(uu))
      {
        v20 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_8> &>(uu);
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v20 + 6));
LABEL_51:
        v45 = 1;
        goto LABEL_52;
      }
    }

LABEL_45:
    v45 = 0;
    *a1 = 0;
LABEL_52:
    *(a1 + 272) = v45;
    goto LABEL_85;
  }

  if (DescriptorType <= 1)
  {
    if (DescriptorType)
    {
      if (DescriptorType == 1)
      {
        rf::helpers::createRFWorldAnchor(&v88, uu);
        if (a2[12])
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v121, uu);
          v10 = a2[12];
          if (!v10)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v10 + 48))(&v105);
          if (v136)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          *uu = v105;
          v125 = v106;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v121);
        }

        REComponentGetEntity();
        v11 = a2[16];
        if (v11)
        {
          std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator()(v11, uu);
          *&v105 = &v89;
          v12 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(a2 + 31, &v89);
          Entity = REComponentGetEntity();
          v14 = 0x9DDFEA08EB382D69 * ((8 * (Entity & 0x1FFFFFFF) + 8) ^ HIDWORD(Entity));
          v15 = 0x9DDFEA08EB382D69 * (HIDWORD(Entity) ^ (v14 >> 47) ^ v14);
          v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
          v17 = v12[4];
          if (v17)
          {
            v18 = vcnt_s8(v17);
            v18.i16[0] = vaddlv_u8(v18);
            if (v18.u32[0] > 1uLL)
            {
              v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
              if (v16 >= *&v17)
              {
                v19 = v16 % *&v17;
              }
            }

            else
            {
              v19 = (*&v17 - 1) & v16;
            }

            v76 = *(v12[3] + 8 * v19);
            if (v76)
            {
              for (i = *v76; i; i = *i)
              {
                v78 = i[1];
                if (v78 == v16)
                {
                  if (i[2] == Entity)
                  {
                    goto LABEL_83;
                  }
                }

                else
                {
                  if (v18.u32[0] > 1uLL)
                  {
                    if (v78 >= *&v17)
                    {
                      v78 %= *&v17;
                    }
                  }

                  else
                  {
                    v78 &= *&v17 - 1;
                  }

                  if (v78 != v19)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

LABEL_83:
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, uu);
        *(a1 + 272) = 1;
        goto LABEL_84;
      }

      goto LABEL_40;
    }

    if (rf::helpers::getInternalActiveCamera())
    {
      REEntityGetComponent();
      WorldMatrix4x4F = RETransformComponentGetWorldMatrix4x4F();
      v83 = v30;
      v84 = v29;
      v81 = v32;
      v82 = v31;
      v33 = rf::helpers::kCameraIdentifier(WorldMatrix4x4F);
      v34 = v33[1];
      *uu = *v33;
      v125 = v34;
      v126 = v84;
      v127 = v83;
      v128 = v82;
      *v129 = v81;
      *&v129[16] = 16842752;
      *&v129[20] = 0;
      v129[24] = 0;
      v130 = 0;
      LOBYTE(v131) = 0;
      BYTE8(v132) = 0;
      *&v133 = 0;
      uuid_clear(&v131 + 8);
      BYTE8(v133) = 0;
      BYTE8(v135) = 0;
      v35 = v127;
      v36 = *v129;
      *(a1 + 64) = v128;
      *(a1 + 80) = v36;
      *(a1 + 89) = *&v129[9];
      v37 = v125;
      *a1 = *uu;
      *(a1 + 16) = v37;
      *(a1 + 32) = v126;
      *(a1 + 48) = v35;
      v38 = v130;
      v130 = 0;
      *(a1 + 112) = v38;
      v39 = v134;
      *(a1 + 160) = v133;
      *(a1 + 176) = v39;
      *(a1 + 192) = v135;
      v40 = v132;
      *(a1 + 128) = v131;
      *(a1 + 144) = v40;
    }

    else
    {
      CameraAnchor = rf::helpers::getCameraAnchor((a5 + 80));
      v58 = *CameraAnchor;
      v59 = *(CameraAnchor + 2);
      *(a1 + 16) = *(CameraAnchor + 1);
      *(a1 + 32) = v59;
      *a1 = v58;
      v60 = *(CameraAnchor + 3);
      v61 = *(CameraAnchor + 4);
      v62 = *(CameraAnchor + 5);
      *(a1 + 89) = *(CameraAnchor + 89);
      *(a1 + 64) = v61;
      *(a1 + 80) = v62;
      *(a1 + 48) = v60;
      *(a1 + 112) = CameraAnchor[14];
      *(a1 + 128) = *(CameraAnchor + 8);
      v63 = *(CameraAnchor + 9);
      v64 = *(CameraAnchor + 10);
      v65 = *(CameraAnchor + 12);
      *(a1 + 176) = *(CameraAnchor + 11);
      *(a1 + 192) = v65;
      *(a1 + 144) = v63;
      *(a1 + 160) = v64;
    }

    *(a1 + 256) = 0;
    goto LABEL_51;
  }

  if (DescriptorType == 2)
  {
    DescriptorAnchorIdentifier = REAnchoringComponentGetDescriptorAnchorIdentifier();
    v90[0].n128_u64[0] = a5 + 80;
    v90[0].n128_u64[1] = &DescriptorAnchorIdentifier;
    v90[1] = 0uLL;
    if (std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_1> &>(v90))
    {
      v42 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_1> &>(v90);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uu, (v42 + 6));
      if (v136 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      *&v105 = &v93;
      (off_28740B068[v136])(v118, &v105, uu);
      v96 = v118[3];
      v97 = v118[4];
      v98[0] = v119[0];
      *(v98 + 9) = *(v119 + 9);
      v93 = v118[0];
      v94 = v118[1];
      v95 = v118[2];
      v99 = v120;
      LOBYTE(v100) = 0;
      BYTE8(v101) = 0;
      *&v102 = 0;
      uuid_clear(&v100 + 8);
      BYTE8(v102) = 0;
      BYTE8(v104) = 0;
      v108 = v96;
      v109 = v97;
      v110[0] = v98[0];
      *(v110 + 9) = *(v98 + 9);
      v105 = v93;
      v106 = v94;
      v107 = v95;
      v43 = v99;
      v99 = 0;
      v111 = v43;
      v114 = v102;
      v115 = v103;
      v116 = v104;
      v112 = v100;
      v113 = v101;
      v117 = 0;
      if (!v123)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v123 + 48))(v123, &v105))
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, &v105);
        v44 = 1;
      }

      else
      {
        v44 = 0;
        *a1 = 0;
      }

      *(a1 + 272) = v44;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v105);

LABEL_84:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  v21 = REComponentGetEntity();
  v22 = rf::PlacementComponentTypeInfo::instance(v21);
  if (*v22)
  {
    v23 = v22;
    CustomComponent = REEntityGetCustomComponent();
    if (CustomComponent)
    {
      v25 = std::function<unsigned char const* ()(REComponent *)>::operator()((v23 + 1), CustomComponent);
      LOBYTE(v125) = 0;
      *(&v125 + 1) = 0;
      uuid_clear(uu);
      *uu = *v25;
      v26 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(v9, uu);
      if (v26)
      {
        if (!v123)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v123 + 48))(v123, v26 + 6))
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v26 + 6));
          goto LABEL_51;
        }
      }

      goto LABEL_45;
    }
  }

  if (rf::helpers::getInternalActiveCamera())
  {
    REEntityGetComponent();
    RETransformComponentGetWorldMatrix4x4F();
    *uu = v52;
    v125 = v53;
    v54 = uu;
    v126 = v55;
    v127 = v56;
  }

  else
  {
    uu[0] = 0;
    v54 = (rf::helpers::getCameraAnchor(v9) + 4);
  }

  v66 = *(v54 + 1);
  v93 = *v54;
  v94 = v66;
  v67 = *(v54 + 3);
  v95 = *(v54 + 2);
  v96 = v67;
  *&v105 = a5 + 80;
  *(&v105 + 1) = &v93;
  *&v106 = a5 + 80;
  *(&v106 + 1) = v88;
  LOBYTE(v107) = 0;
  BYTE8(v107) = 0;
  v108 = 0u;
  v109 = 0u;
  v86 = 0;
  v87 = 0;
  DescriptorAnchorIdentifier = 0;
  std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5> &>(uu, &v105, v46, v47, v48, v49, v50, v51);
  if (*&uu[8])
  {
    v74 = 0;
    do
    {
      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>::__iterator::operator++[abi:ne200100](uu);
      ++v74;
    }

    while (*&uu[8]);
  }

  else
  {
    v74 = 0;
  }

  std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5> &>(v90, &v105, v68, v69, v70, v71, v72, v73);
  p_DescriptorAnchorIdentifier = &DescriptorAnchorIdentifier;
  v92 = 0;
  if (v74)
  {
    if (v74 < 0xE38E38E38E38E4)
    {
      operator new();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,false>(DescriptorAnchorIdentifier, v86, 0, 1);
  if (v86 == DescriptorAnchorIdentifier)
  {
    v75 = 0;
    *a1 = 0;
  }

  else
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, DescriptorAnchorIdentifier);
    v75 = 1;
  }

  *(a1 + 272) = v75;
  *uu = &DescriptorAnchorIdentifier;
  std::vector<std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>>::__destroy_vector::operator()[abi:ne200100](uu);
LABEL_85:
  result = std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](v122);
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

rf *rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(uint64_t a1, uint64_t a2, uint64_t a3, rf::helpers *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  REAnchorComponentGetComponentType();
  v8 = REEntityGetOrAddComponentByClass();
  REAnchoringComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  rf::helpers::getRFUUIDFromAnchor(a3, v25);
  v9 = relocalizeEntityIfNeeded(a2, v25, a4, v8, 1u);
  if (v9)
  {
    v10 = rf::realityFusionLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Name = REEntityGetName();
      LocalId = REEntityGetLocalId();
      rf::data_flow::RFUUID::string(v25, __p);
      v13 = v30 >= 0 ? __p : *__p;
      *buf = 136315650;
      *&buf[4] = Name;
      *&buf[12] = 2048;
      *&buf[14] = LocalId;
      v23 = 2082;
      v24 = v13;
      _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Relocalizing entity %s, %llu, holding anchor with identifier %{public}s", buf, 0x20u);
      if (v30 < 0)
      {
        operator delete(*__p);
      }
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      *buf = a2;
      *__p = 5;
      (*(*v14 + 48))(v14, buf, __p);
    }
  }

  CameraAnchor = rf::helpers::getCameraAnchor(a4);
  rf::helpers::getTransformFromAnchor(a3, &ComponentByClass, (CameraAnchor + 4), a1 + 288, *(a1 + 576), buf);
  REAnchorComponentSetWorldTransform();
  if (REAnchorComponentGetAnchoredLocally())
  {
    result = rf::helpers::isRemotelyOwned();
  }

  else
  {
    REAnchorComponentSetAnchoredLocally();
    result = rf::helpers::isRemotelyOwned();
    if (result)
    {
      v17 = rf::realityFusionLogObject(result);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = REEntityGetName();
        rf::helpers::getRFUUIDFromAnchor(a3, buf);
        rf::data_flow::RFUUID::string(buf, v25);
        v19 = v26 >= 0 ? v25 : v25[0];
        *__p = 136315394;
        *&__p[4] = v18;
        v28 = 2082;
        v29 = v19;
        _os_log_impl(&dword_2617CB000, v17, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Anchoring remote entity %s to anchor %{public}s.", __p, 0x16u);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }
      }

      result = *(a1 + 56);
      if (result)
      {
        result = std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 1);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(unint64_t **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = **a1 + 1;
  **a1 = v2;
  if (v2 >= v1[79])
  {
    v4 = rf::realityFusionLogObject(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = **a1;
      v7 = v1[79];
      v8 = 134218240;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "AnchorManagementConsumer: %llu anchoring updated this frame, which more than %llu, this could cause backboardd hang", &v8, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::matchAndReanchorEntity(uint64_t a1, uint64_t a2, uint64_t a3, rf::helpers *a4)
{
  v108 = *MEMORY[0x277D85DE8];
  if (*(a3 + 256) != 1 || *rf::PlacementComponentTypeInfo::instance(a1) && REEntityGetCustomComponent())
  {
    v8 = 0;
    goto LABEL_52;
  }

  if (*(a3 + 256) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = *(a3 + 80);
  v96 = *(a3 + 64);
  v97[0] = v9;
  *(v97 + 9) = *(a3 + 89);
  v10 = *(a3 + 16);
  v92 = *a3;
  v93 = v10;
  v11 = *(a3 + 32);
  v95 = *(a3 + 48);
  v94 = v11;
  v98 = *(a3 + 112);
  v12 = *(a3 + 176);
  v101 = *(a3 + 160);
  v102 = v12;
  v103 = *(a3 + 192);
  v13 = *(a3 + 144);
  v99 = *(a3 + 128);
  v100 = v13;
  v14 = *(a3 + 216);
  v104 = *(a3 + 208);
  v105 = 0;
  v15 = *(a3 + 224);
  v107 = 0;
  v106 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v105, v14, v15, (v15 - v14) >> 4);
  REAnchoringComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (REAnchoringComponentGetDescriptorType() == 3)
  {
    DescriptorAlignment = REAnchoringComponentGetDescriptorAlignment();
    DescriptorClassification = REAnchoringComponentGetDescriptorClassification();
    REAnchoringComponentGetDescriptorBounds();
    v52 = v17;
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      v18 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = REEntityGetName();
        _os_log_impl(&dword_2617CB000, v18, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer::matchAndReanchorEntity(): Transform component not found when attempting to match & reanchor entity %s, adding one", buf, 0xCu);
      }

      RETransformComponentGetComponentType();
      REEntityAddComponentByClass();
    }

    RETransformComponentGetLocalSRT();
    v48 = v19;
    CameraAnchor = rf::helpers::getCameraAnchor(a4);
    rf::helpers::getTransformFromAnchor(a3, &ComponentByClass, (CameraAnchor + 4), a1 + 288, *(a1 + 576), &v53);
    v21 = *(a4 + 2);
    if (v21)
    {
      v22 = vaddq_f32(v56, vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v53, v48.f32[0]), 0, v54), v55, v48, 2));
      v46 = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
      v47 = vmlaq_f32(vaddq_f32(vmulq_f32(v53, 0), v54), 0, v55);
      v49 = vnegq_f32(v47);
      v50 = vaddq_f32(v46, vmulq_f32(v47, vdupq_n_s32(0x3D4CCCCDu)));
      while (1)
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](buf, (v21 + 6));
        if (v91 != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
          goto LABEL_31;
        }

        v64 = v80;
        v65[0] = *v81;
        *(v65 + 9) = *&v81[9];
        v60 = *buf;
        v61 = v77;
        v62 = v78;
        v63 = v79;
        v66 = v82;
        v69 = v85;
        v70 = v86;
        v71 = v87;
        v67 = v83;
        v68 = v84;
        v72 = v88;
        __p = 0;
        v74 = 0;
        v75 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v89, v90, (v90 - v89) >> 4);
        v23 = v61 ? v60 : &v60;
        v24 = v93 ? v92 : &v92;
        if (!uuid_compare(v23, v24))
        {
          break;
        }

        if (DescriptorAlignment != 255)
        {
          if (v72)
          {
            if (v72 != 1 || (DescriptorAlignment & 2) == 0)
            {
              break;
            }
          }

          else if ((DescriptorAlignment & 1) == 0)
          {
            break;
          }
        }

        v26 = rf::helpers::classificationMatches(SHIDWORD(v72), DescriptorClassification);
        v25 = 1;
        if (v26)
        {
          if (*&v71 >= *&v52 && *(&v71 + 2) >= *(&v52 + 1))
          {
            v34 = rf::helpers::rayPlaneHitTestInBounds(v50, v49, v62, v63, v64, v65[0], v26, v27, v28, v29, v30, v31, v32, v33, v69, v70, v67, v68, v69);
            if ((v34 & 0x100000000) != 0 && *&v34 >= 0.0)
            {
              v35 = 0;
              v36 = v62;
              v37 = v63;
              v38 = v64;
              v39 = v65[0];
              v58[0] = v67;
              v58[1] = v68;
              v58[2] = v69;
              v58[3] = v70;
              do
              {
                v58[v35 + 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(v58[v35])), v37, *&v58[v35], 1), v38, v58[v35], 2), v39, v58[v35], 3);
                ++v35;
              }

              while (v35 != 4);
              v40 = vmlaq_f32(vaddq_f32(vmulq_f32(v36, 0), v37), 0, v38);
              v41 = vabdq_f32(v47, v40);
              v25 = 1;
              if (v41.f32[0] <= 0.1 && v41.f32[1] <= 0.1 && v41.f32[2] <= 0.1)
              {
                v42 = vmulq_f32(v40, vsubq_f32(v46, v58[7]));
                if (fabsf(v42.f32[2] + vaddv_f32(*v42.f32)) <= 0.05)
                {
                  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v59, buf);
                  rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(a1, a2, v59, ComponentByClass, a4, 0);
                  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v59);
                  v43 = *(a1 + 56);
                  if (v43)
                  {
                    std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(v43, a2, 1);
                  }

                  RETransformComponentGetLocalSRT();
                  RETransformComponentSetLocalSRT();
                  v25 = 0;
                }
              }
            }
          }
        }

LABEL_26:
        if (__p)
        {
          v74 = __p;
          operator delete(__p);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
        if ((v25 & 1) == 0)
        {
          v8 = 1;
          goto LABEL_49;
        }

LABEL_31:
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_48;
        }
      }

      v25 = 1;
      goto LABEL_26;
    }
  }

LABEL_48:
  v8 = 0;
LABEL_49:
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

LABEL_52:
  v44 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_261851118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a61);
  rf::data_flow::PlaneAnchor::~PlaneAnchor(&STACK[0x2B0]);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x3A0]);
  rf::data_flow::PlaneAnchor::~PlaneAnchor(&STACK[0x4B0]);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::relocalizeEntity(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = REAnchorComponentGetIsAnchorExternal();
  if (result)
  {
    REAnchorComponentSetIsAnchorExternal();
    if (a4 && REAnchorComponentGetSendIsAnchoredToClient())
    {
      RENetworkMarkComponentDirty();
    }

    rf::helpers::publishAnchorStateEventDidAnchor(a2, 1u);
    result = *(a1 + 56);
    if (result)
    {

      return std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 5);
    }
  }

  return result;
}

uint64_t std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_1> &>(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    i = *(a1 + 16);
  }

  else
  {
    for (i = *(*a1 + 16); i; i = *i)
    {
      rf::helpers::getRFUUIDFromAnchor((i + 6), v6);
      if (v7)
      {
        v3 = v6[0];
      }

      else
      {
        v3 = v6;
      }

      if (!uuid_compare(v3, **(a1 + 8)))
      {
        break;
      }
    }

    *(a1 + 16) = i;
    *(a1 + 24) = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return i;
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_7> &>(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  for (i = *(*a1 + 16); i; i = *i)
  {
    if (rf::helpers::imageAnchorMatches((i + 6), **(a1 + 8), 1))
    {
      break;
    }
  }

  *(a1 + 16) = i;
  *(a1 + 24) = 1;
  return i;
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_8> &>(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  for (i = *(*a1 + 16); i; i = *i)
  {
    v3 = **(a1 + 8);
    if (rf::helpers::objectAnchorMatches((i + 6)))
    {
      break;
    }
  }

  *(a1 + 16) = i;
  *(a1 + 24) = 1;
  return i;
}

void *rf::data_flow::consumer::AnchorManagementConsumer::setEntitledAnchoringTypeAllowedForEntity(void *result, unint64_t a2, int a3, char a4)
{
  v6 = a2;
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 60, &v6);
        v5 = result + 27;
        break;
      case 8:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 60, &v6);
        v5 = result + 28;
        break;
      case 12:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 60, &v6);
        v5 = result + 29;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 60, &v6);
        v5 = result + 3;
        break;
      case 3:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 60, &v6);
        v5 = result + 25;
        break;
      case 4:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 60, &v6);
        v5 = result + 26;
        break;
      default:
        return result;
    }
  }

  *v5 = a4;
  return result;
}

void *rf::data_flow::consumer::AnchorManagementConsumer::getEntitledAnchoringTypeAllowedForEntity(uint64_t a1, unint64_t a2, int a3)
{
  v7[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>((a1 + 480), v7);
  if (result)
  {
    v7[2] = v7;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 480), v7);
    return rf::helpers::authorizedTypeForEntitledAnchoringTypesConfig(a3, v6 + 24);
  }

  return result;
}

void *std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<void ()(NSSet<ARReferenceImage *> *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t relocalizeEntityIfNeeded(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  result = REAnchorComponentGetIsAnchorExternal();
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, a2);
    if (result)
    {
      REAnchorComponentSetIsAnchorExternal();
      if (REAnchorComponentGetSendIsAnchoredToClient())
      {
        RENetworkMarkComponentDirty();
      }

      rf::helpers::publishAnchorStateEventDidAnchor(a1, a5);
      return 1;
    }
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::sceneRemovalEventHandle(uint64_t a1, uint64_t a2)
{
  UniqueName = RESceneGetUniqueName();
  std::string::basic_string[abi:ne200100]<0>(&v10, UniqueName);
  *&v8 = a1;
  *(&v8 + 1) = a2;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = v10;
  }

  MEMORY[0x26670C400]("RESceneWillRemoveEvent");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = ___ZZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusENK3__0cvU13block_pointerF20REEventHandlerResultPvPKvEEv_block_invoke;
  v11[3] = &__block_descriptor_72_ea8_32c108_ZTSKZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusE3__0_e14_I24__0_v8r_v16l;
  v12 = v8;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v9;
  }

  v5 = MEMORY[0x26670D530](v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = REEventBusSubscribeBlock();

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_2618519E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL rf::data_flow::consumer::AnchorManagementConsumer::addOrUpdateAnchorSourceComponentData(rf::AnchorSourceComponent *a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*rf::AnchorSourceComponent::instance(a1))
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *uu = 0u;
    uuid_clear(uu);
    v26 = xmmword_26185DD00;
    v27 = xmmword_26185DD10;
    v28 = xmmword_26185DD20;
    v29 = xmmword_26185E1B0;
    *&v30 = 16842752;
    BYTE8(v30) = 0;
    *&v31 = 0;
    LOBYTE(v32) = 0;
    BYTE8(v33) = 0;
    *&v34 = 0;
    uuid_clear(&v32 + 8);
    BYTE8(v34) = 0;
    BYTE8(v36) = 0;
    v37 = 0;
    REAnchorComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
      v21 = 0;
      v22 = 0;
      uuid_clear(v20);
      *v20 = AnchorIdentifier;
      v21 = 1;
      v5 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3 + 10, v20);
      v6 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3 + 15, v20);
      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, v20);
      if (v5 || (v5 = v6) != 0)
      {
        v7 = std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> const&>(uu, (v5 + 6));
        v8 = 0;
        v9 = 0;
LABEL_6:
        v10 = *rf::AnchorSourceComponent::instance(v7);
        v11 = REEntityGetOrAddComponentByClass();
        v12 = v11 != 0;
        if (v11)
        {
          Object = RECustomComponentGetObject();
          v14 = Object;
          if (v9)
          {
            objc_storeStrong(Object, *(v9 + 416));
            v15 = 1;
          }

          else
          {
            rf::helpers::getBaseAnchorProperties(uu);
            objc_storeStrong(v14, obj);

            v15 = 0;
            v16 = v37;
            if (v37 == 5)
            {
              v17 = 5;
            }

            else
            {
              v17 = 0;
            }

            if (v37 >= 5)
            {
              v16 = v17;
            }

            *(v14 + 2) = v16;
          }

          *(v14 + 12) = v15;
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_23;
      }

      if (v7)
      {
        v9 = *(v7 + 6);
        v8 = *(v7 + 7);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_6;
      }
    }

    v12 = 0;
LABEL_23:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
    goto LABEL_24;
  }

  v12 = 0;
LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_261851C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::anchorComponentEventHandles@<X0>(uint64_t *a1@<X8>)
{
  MEMORY[0x26670C400]("REComponentDidAddEvent");
  REAnchorComponentGetComponentType();
  v2 = REEventBusSubscribeWithMatch();
  v12 = v3;
  MEMORY[0x26670C400]("REComponentDidChangeEvent");
  REAnchorComponentGetComponentType();
  v4 = REEventBusSubscribeWithMatch();
  v6 = v5;
  MEMORY[0x26670C400]("REComponentDidChangeEvent");
  RESceneUnderstandingComponentGetComponentType();
  v7 = REEventBusSubscribeWithMatch();
  v9 = v8;
  MEMORY[0x26670C400]("REComponentWillRemoveEvent");
  REAnchorComponentGetComponentType();
  result = REEventBusSubscribeWithMatch();
  *a1 = v2;
  a1[1] = v12;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v9;
  a1[6] = result;
  a1[7] = v11;
  return result;
}

uint64_t ___ZN2rf9data_flow8consumer24AnchorManagementConsumer27anchorComponentEventHandlesEP7RESceneP10REEventBusRKNS_11ARStateDataE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  REEntityGetComponentByClass();
  SourceType = RESceneUnderstandingComponentGetSourceType();
  if (SourceType == 1)
  {
    rf::data_flow::consumer::AnchorManagementConsumer::addOrUpdateAnchorSourceComponentData(SourceType, *a3, *(a1 + 40));
  }

  return 0;
}

uint64_t ___ZN2rf9data_flow8consumer24AnchorManagementConsumer27anchorComponentEventHandlesEP7RESceneP10REEventBusRKNS_11ARStateDataE_block_invoke_4(rf::AnchorSourceComponent *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 4);
  v6 = rf::AnchorSourceComponent::instance(a1);
  if (*v6)
  {
    v7 = *a3;
    v8 = *rf::AnchorSourceComponent::instance(v6);
    CustomComponent = REEntityGetCustomComponent();
    if (CustomComponent)
    {
      v10 = *a3;
      v11 = *rf::AnchorSourceComponent::instance(CustomComponent);
      REEntityRemoveComponentByClass();
    }
  }

  v12 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>((v5 + 248), a1 + 5);
  v13 = v12[4];
  if (v13)
  {
    v14 = 0x9DDFEA08EB382D69 * ((8 * (*a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a3));
    v15 = 0x9DDFEA08EB382D69 * (HIDWORD(*a3) ^ (v14 >> 47) ^ v14);
    v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
    v17 = vcnt_s8(v13);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = v16;
      if (v16 >= *&v13)
      {
        v18 = v16 % *&v13;
      }
    }

    else
    {
      v18 = v16 & (*&v13 - 1);
    }

    v19 = *(v12[3] + 8 * v18);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = i[1];
        if (v21 == v16)
        {
          if (i[2] == *a3)
          {
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(v12 + 3, i);
            return 0;
          }
        }

        else
        {
          if (v17.u32[0] > 1uLL)
          {
            if (v21 >= *&v13)
            {
              v21 %= *&v13;
            }
          }

          else
          {
            v21 &= *&v13 - 1;
          }

          if (v21 != v18)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::addAnchorSourceComponentDataForWorldAnchorEntities(uint64_t result, void *a2, void *a3)
{
  for (i = a2[2]; i; i = *i)
  {
    while (1)
    {
      result = rf::data_flow::consumer::AnchorManagementConsumer::addOrUpdateAnchorSourceComponentData(result, i[2], a3);
      if (!result)
      {
        break;
      }

      result = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(a2, i);
      i = result;
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_0>,std::identity>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v4 = *v3;
      Object = RECustomComponentGetObject();
      REComponentGetEntity();
      if (*(Object + 21) == 1 && !rf::helpers::isRemotelyOwned())
      {
        break;
      }

      if (++v3 == v2)
      {
        return v2;
      }
    }

    return v3;
  }

  return v2;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = **(*a1 + 8);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v3 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1)[1];
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  RENetworkMarkComponentDirty();
  v9 = **v3;
  *(v9 + 72) = 0;
  v14 = *(a2 + 192);
  v15 = 0u;
  v10 = *(a2 + 176);
  v11 = v14;
  DWORD1(v11) = DWORD1(v15);
  *(v9 + 16) = 1;
  *(v9 + 32) = v10;
  *(**v3 + 48) = v11;
  v12 = *v3[2];

  return RENetworkMarkComponentDirty();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = **(*a1 + 8);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v3 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = **(*a1 + 8);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v3 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = **(*a1 + 8);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v3 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = **(*a1 + 8);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v3 + 72) = 0;
  return result;
}

uint64_t std::pair<std::string const,std::unordered_map<std::string,ARReferenceImage * {__strong}>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,ARReferenceImage * {__strong}>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

__n128 std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5> &>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 72) & 1) == 0)
  {
    if (*(a2 + 40) == 1)
    {
      i = *(a2 + 32);
    }

    else
    {
      for (i = *(*(a2 + 16) + 16); i; i = *i)
      {
        v11 = *(a2 + 24);
        if (rf::helpers::planeAnchorMatches((i + 6)))
        {
          break;
        }
      }

      *(a2 + 32) = i;
      *(a2 + 40) = 1;
    }

    v16[0] = a2;
    v16[1] = i;
    v16[2] = a2 + 16;
    v15[0] = a2;
    v15[1] = 0;
    v15[2] = a2 + 16;
    std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>,std::identity>(&v13, v16, v15, a4, a5, a6, a7, a8);
    *(a2 + 48) = v13;
    *(a2 + 64) = v14;
    *(a2 + 72) = 1;
  }

  result = *(a2 + 48);
  *a1 = result;
  a1[1].n128_u64[0] = *(a2 + 64);
  a1[1].n128_u64[1] = a2;
  return result;
}

uint64_t std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>::__iterator::operator++[abi:ne200100](uint64_t a1)
{
  v2 = std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator++[abi:ne200100](a1);
  v13 = *v2;
  v3 = *(v2 + 24);
  v14 = *(v2 + 16);
  v12[0] = v3;
  v12[1] = 0;
  v12[2] = v3 + 16;
  std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>,std::identity>(&v10, &v13, v12, v4, v5, v6, v7, v8);
  *a1 = v10;
  *(a1 + 16) = v11;
  return a1;
}

uint64_t std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator++[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  *(a1 + 8) = *v2;
  if (v3)
  {
    v4 = *(a1 + 16);
    do
    {
      v5 = *(v4 + 8);
      if (rf::helpers::planeAnchorMatches((v3 + 6)))
      {
        break;
      }

      v3 = *v3;
    }

    while (v3);
  }

  *(a1 + 8) = v3;
  return a1;
}

__n128 std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>,std::identity>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x277D85DE8];
  for (i = a2[1]; i != *(a3 + 8); i = a2[1])
  {
    std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator*[abi:ne200100](v15, *a2, i, a4, a5, a6, a7, a8);
    v12 = v15[276];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
    if (v12)
    {
      break;
    }

    std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator++[abi:ne200100](a2);
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[2];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator*[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 304) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v12 = *(a3 + 224);
  v13 = *(a3 + 240);
  v10 = rf::helpers::rayPlaneHitTestInBounds(*(*(a2 + 8) + 48), vnegq_f32(*(*(a2 + 8) + 32)), *(a3 + 80), *(a3 + 96), *(a3 + 112), *(a3 + 128), a1, a2, a3, a4, a5, a6, a7, a8, *(a3 + 176), *(a3 + 192), *(a3 + 176), *(a3 + 192), *(a3 + 208));
  result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, a3 + 48);
  *(a1 + 272) = v10 & 0xFFFFFFFFFFLL;
  return result;
}

void std::vector<std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 288;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__introsort<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,false>(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v107 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v7 = a2;
    v101 = a2 - 288;
    v8 = v6;
    while (1)
    {
      while (1)
      {
        v6 = v8;
        v9 = v7 - v8;
        v10 = 0x8E38E38E38E38E39 * ((v7 - v8) >> 5);
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              result = std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v6 + 288, v101);
              goto LABEL_164;
            case 4:
              result = std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v6 + 288, v6 + 576, v101);
              goto LABEL_164;
            case 5:
              result = std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v6 + 288, v6 + 576, v6 + 864, v101);
              goto LABEL_164;
          }
        }

        else
        {
          if (v10 < 2)
          {
            goto LABEL_164;
          }

          v7 = a2;
          if (v10 == 2)
          {
            if ((*(a2 - 12) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if ((*(v6 + 276) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if (*(a2 - 16) < *(v6 + 272))
            {
              result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v6, v101);
            }

            goto LABEL_164;
          }
        }

        if (v9 <= 6911)
        {
          if (a4)
          {
            if (v6 != v7)
            {
              v49 = v6 + 288;
              if (v6 + 288 != a2)
              {
                v50 = 0;
                v51 = v6;
                do
                {
                  v52 = v49;
                  if ((*(v51 + 564) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v53 = a2;
                  if ((*(v51 + 276) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (*(v51 + 560) < *(v51 + 272))
                  {
                    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v105, v49);
                    v106 = *(v51 + 560);
                    v54 = v50;
                    while (1)
                    {
                      v55 = v54;
                      v56 = v6 + v54;
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v6 + v54 + 288, v6 + v54);
                      *(v56 + 560) = *(v56 + 272);
                      *(v56 + 564) = *(v56 + 276);
                      if (!v55)
                      {
                        break;
                      }

                      if (BYTE4(v106) != 1 || (*(v6 + v55 - 12) & 1) == 0)
                      {
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v54 = v55 - 288;
                      if (*&v106 >= *(v6 + v55 - 16))
                      {
                        v57 = v6 + v55;
                        goto LABEL_101;
                      }
                    }

                    v57 = v6;
LABEL_101:
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v57, v105);
                    v58 = v6 + v55 + 272;
                    v59 = v106;
                    *(v58 + 4) = BYTE4(v106);
                    *v58 = v59;
                    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
                    v53 = a2;
                  }

                  v49 = v52 + 288;
                  v50 += 288;
                  v51 = v52;
                }

                while (v52 + 288 != v53);
              }
            }
          }

          else if (v6 != v7)
          {
            v94 = v6 + 288;
            if (v6 + 288 != a2)
            {
              v95 = v6 - 16;
              do
              {
                v96 = v94;
                if ((*(v6 + 564) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if ((*(v6 + 276) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if (*(v6 + 560) < *(v6 + 272))
                {
                  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v105, v94);
                  v106 = *(v6 + 560);
                  v97 = v95;
                  do
                  {
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v97 + 304, v97 + 16);
                    *(v97 + 576) = *(v97 + 288);
                    *(v97 + 580) = *(v97 + 292);
                    if (BYTE4(v106) != 1 || (*(v97 + 4) & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    v98 = *v97;
                    v97 -= 288;
                  }

                  while (*&v106 < v98);
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v97 + 304, v105);
                  v99 = v106;
                  *(v97 + 580) = BYTE4(v106);
                  *(v97 + 576) = v99;
                  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
                }

                v94 = v96 + 288;
                v95 += 288;
                v6 = v96;
              }

              while (v96 + 288 != a2);
            }
          }

          goto LABEL_164;
        }

        if (!a3)
        {
          if (v6 != v7)
          {
            v60 = v11 >> 1;
            v61 = v11 >> 1;
            do
            {
              v62 = v61;
              if (v60 >= v61)
              {
                v63 = (2 * v61) | 1;
                v64 = v6 + 288 * v63;
                if (2 * v61 + 2 < v10)
                {
                  if ((*(v64 + 276) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if ((*(v64 + 564) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (*(v64 + 272) < *(v64 + 560))
                  {
                    v64 += 288;
                    v63 = 2 * v61 + 2;
                  }
                }

                if ((*(v64 + 276) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v65 = v6 + 288 * v61;
                if ((*(v65 + 276) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if (*(v64 + 272) >= *(v65 + 272))
                {
                  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v105, v6 + 288 * v61);
                  v106 = *(v65 + 272);
                  do
                  {
                    v66 = v64;
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v65, v64);
                    v67 = *(v64 + 272);
                    *(v65 + 276) = *(v64 + 276);
                    *(v65 + 272) = v67;
                    if (v60 < v63)
                    {
                      break;
                    }

                    v68 = 2 * v63;
                    v63 = (2 * v63) | 1;
                    v64 = v6 + 288 * v63;
                    v69 = v68 + 2;
                    if (v69 < v10)
                    {
                      if (*(v64 + 276) != 1 || *(v64 + 564) != 1)
                      {
LABEL_169:
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      if (*(v64 + 272) < *(v64 + 560))
                      {
                        v64 += 288;
                        v63 = v69;
                      }
                    }

                    if (*(v64 + 276) != 1 || (v106 & 0x100000000) == 0)
                    {
                      goto LABEL_169;
                    }

                    v65 = v66;
                  }

                  while (*(v64 + 272) >= *&v106);
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v66, v105);
                  v70 = v106;
                  *(v66 + 276) = BYTE4(v106);
                  *(v66 + 272) = v70;
                  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
                }
              }

              v61 = v62 - 1;
            }

            while (v62);
            v71 = 0x8E38E38E38E38E39 * (v9 >> 5);
            do
            {
              v72 = a2;
              std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v103, v6);
              v73 = 0;
              v104 = *(v6 + 272);
              v74 = v6;
              do
              {
                v75 = v74 + 288 * v73;
                v76 = v75 + 288;
                if (2 * v73 + 2 >= v71)
                {
                  v73 = (2 * v73) | 1;
                }

                else
                {
                  if (*(v75 + 564) != 1 || *(v75 + 852) != 1)
                  {
                    goto LABEL_167;
                  }

                  v77 = *(v75 + 560);
                  v78 = *(v75 + 848);
                  v79 = v75 + 576;
                  if (v77 >= v78)
                  {
                    v73 = (2 * v73) | 1;
                  }

                  else
                  {
                    v76 = v79;
                    v73 = 2 * v73 + 2;
                  }
                }

                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v74, v76);
                v80 = *(v76 + 272);
                *(v74 + 276) = *(v76 + 276);
                *(v74 + 272) = v80;
                v74 = v76;
              }

              while (v73 <= ((v71 - 2) >> 1));
              v81 = (v76 + 272);
              v82 = a2 - 288;
              a2 -= 288;
              if (v76 == v72 - 288)
              {
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v76, v103);
                v92 = v104;
                *(v76 + 276) = BYTE4(v104);
                *v81 = v92;
              }

              else
              {
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v76, v72 - 288);
                v84 = *(v72 - 16);
                v83 = v72 - 16;
                *(v76 + 276) = *(v83 + 4);
                *v81 = v84;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v82, v103);
                v85 = v104;
                *(v83 + 4) = BYTE4(v104);
                *v83 = v85;
                v86 = v76 - v6 + 288;
                if (v86 >= 289)
                {
                  v87 = (-2 - 0x71C71C71C71C71C7 * (v86 >> 5)) >> 1;
                  v88 = v6 + 288 * v87;
                  if (*(v88 + 276) != 1 || (*(v76 + 276) & 1) == 0)
                  {
LABEL_167:
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (*(v88 + 272) < *v81)
                  {
                    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v105, v76);
                    v106 = *(v76 + 272);
                    do
                    {
                      v89 = v88;
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v76, v88);
                      v90 = *(v88 + 272);
                      *(v76 + 276) = *(v88 + 276);
                      *(v76 + 272) = v90;
                      if (!v87)
                      {
                        break;
                      }

                      v87 = (v87 - 1) >> 1;
                      v88 = v6 + 288 * v87;
                      if (*(v88 + 276) != 1 || (v106 & 0x100000000) == 0)
                      {
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v76 = v89;
                    }

                    while (*(v88 + 272) < *&v106);
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v89, v105);
                    v91 = v106;
                    *(v89 + 276) = BYTE4(v106);
                    *(v89 + 272) = v91;
                    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
                  }
                }
              }

              result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v103);
            }

            while (v71-- > 2);
          }

          goto LABEL_164;
        }

        v12 = v10 >> 1;
        v13 = v6 + 288 * (v10 >> 1);
        if (v9 <= 0x9000)
        {
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v13, v6, v101);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v13, v101);
          v14 = v6 + 288 * v12 - 288;
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6 + 288, v14, a2 - 576);
          v15 = v6 + 288 * v12;
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6 + 576, v15 + 288, a2 - 864);
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v14, v13, v15 + 288);
          std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v6, v13);
        }

        --a3;
        if (a4)
        {
          break;
        }

        if ((*(v6 - 12) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if ((*(v6 + 276) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (*(v6 - 16) < *(v6 + 272))
        {
          break;
        }

        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v105, v6);
        v35 = *(v6 + 272);
        v106 = v35;
        if ((v35 & 0x100000000) == 0 || *(v7 - 12) != 1)
        {
          goto LABEL_168;
        }

        v36 = *&v35;
        if (*(v7 - 16) > *&v35)
        {
          v37 = v6;
          while (*(v37 + 564) == 1)
          {
            v8 = v37 + 288;
            v38 = *(v37 + 560);
            v37 += 288;
            if (v38 > v36)
            {
              goto LABEL_61;
            }
          }

LABEL_168:
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v39 = v6 + 288;
        do
        {
          v8 = v39;
          if (v39 >= v7)
          {
            break;
          }

          if (*(v39 + 276) != 1)
          {
            goto LABEL_168;
          }

          v39 += 288;
        }

        while (*(v8 + 272) <= v36);
LABEL_61:
        v40 = v7;
        if (v8 < v7)
        {
          v41 = v7;
          while (*(v41 - 12) == 1)
          {
            v40 = v41 - 288;
            v42 = *(v41 - 16);
            v41 -= 288;
            if (v42 <= v36)
            {
              goto LABEL_73;
            }
          }

          goto LABEL_168;
        }

LABEL_73:
        if (v8 < v40)
        {
          std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v8, v40);
          if (BYTE4(v106) == 1)
          {
            v43 = v8;
            do
            {
              if (*(v43 + 564) != 1)
              {
                goto LABEL_168;
              }

              v8 = v43 + 288;
              v44 = *(v43 + 560);
              v43 += 288;
            }

            while (*&v106 >= v44);
            v45 = v40;
            while ((*(v45 - 12) & 1) != 0)
            {
              v40 = v45 - 288;
              v46 = *(v45 - 16);
              v45 -= 288;
              if (*&v106 >= v46)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_168;
        }

        if (v8 - 288 != v6)
        {
          std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v6, v8 - 288);
          v47 = *(v8 - 16);
          *(v6 + 276) = *(v8 - 12);
          *(v6 + 272) = v47;
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v8 - 288, v105);
        v48 = v106;
        *(v8 - 12) = BYTE4(v106);
        *(v8 - 16) = v48;
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
LABEL_77:
        a4 = 0;
      }

      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v105, v6);
      v16 = *(v6 + 272);
      v106 = v16;
      if ((v16 & 0x100000000) == 0)
      {
        goto LABEL_166;
      }

      v17 = 0;
      v18 = *&v16;
      do
      {
        if (*(v6 + v17 + 564) != 1)
        {
          goto LABEL_166;
        }

        v19 = *(v6 + v17 + 560);
        v17 += 288;
      }

      while (v19 < *&v16);
      v20 = v6 + v17;
      v21 = a2;
      if (v17 != 288)
      {
        while ((*(v21 - 12) & 1) != 0)
        {
          v22 = v21 - 288;
          v23 = *(v21 - 16);
          v21 -= 288;
          if (v23 < v18)
          {
            goto LABEL_33;
          }
        }

LABEL_166:
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v24 = a2;
      while (v20 < v24)
      {
        if (*(v24 - 12) != 1)
        {
          goto LABEL_166;
        }

        v22 = v24 - 288;
        v25 = *(v24 - 16);
        v24 -= 288;
        if (v25 < v18)
        {
          goto LABEL_33;
        }
      }

      v22 = v24;
LABEL_33:
      v8 = v20;
      if (v20 < v22)
      {
        v26 = v22;
        do
        {
          std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v8, v26);
          if ((v106 & 0x100000000) == 0)
          {
LABEL_165:
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v27 = v8;
          do
          {
            if (*(v27 + 564) != 1)
            {
              goto LABEL_165;
            }

            v8 = v27 + 288;
            v28 = *(v27 + 560);
            v27 += 288;
          }

          while (v28 < *&v106);
          v29 = v26;
          do
          {
            if ((*(v29 - 12) & 1) == 0)
            {
              goto LABEL_165;
            }

            v26 = v29 - 288;
            v30 = *(v29 - 16);
            v29 -= 288;
          }

          while (v30 >= *&v106);
        }

        while (v8 < v26);
      }

      if (v8 - 288 != v6)
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v6, v8 - 288);
        v31 = *(v8 - 16);
        *(v6 + 276) = *(v8 - 12);
        *(v6 + 272) = v31;
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v8 - 288, v105);
      v32 = v106;
      *(v8 - 12) = BYTE4(v106);
      *(v8 - 16) = v32;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
      v33 = v20 >= v22;
      v7 = a2;
      if (!v33)
      {
LABEL_49:
        result = std::__introsort<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,false>(v6, v8 - 288, a3, a4 & 1);
        goto LABEL_77;
      }

      v34 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *>(v6, v8 - 288);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *>(v8, a2);
      if (result)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_49;
      }
    }

    a2 = v8 - 288;
    if (!v34)
    {
      continue;
    }

    break;
  }

LABEL_164:
  v100 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2618538D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  v3 = result;
  if ((*(result + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  v6 = *(a2 + 272);
  v7 = *(a3 + 276);
  if (v6 < *(result + 272))
  {
    if (*(a3 + 276))
    {
      if (*(a3 + 272) < v6)
      {
LABEL_10:
        v8 = a3;
        goto LABEL_17;
      }

      result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](result, a2);
      if (*(a3 + 276) & 1) != 0 && (*(a2 + 276))
      {
        if (*(a3 + 272) >= *(a2 + 272))
        {
          return result;
        }

        result = a2;
        goto LABEL_10;
      }
    }

LABEL_21:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a3 + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(a3 + 272) >= v6)
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a2, a3);
  if ((*(a2 + 276) & 1) == 0 || (*(v3 + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(a2 + 272) >= *(v3 + 272))
  {
    return result;
  }

  result = v3;
  v8 = a2;
LABEL_17:

  return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](result, v8);
}

uint64_t std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a2, a3);
  if ((*(a4 + 276) & 1) == 0 || (*(a3 + 276) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a4 + 272) >= *(a3 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a3, a4);
  if ((*(a3 + 276) & 1) == 0 || (*(a2 + 276) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a3 + 272) >= *(a2 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a2, a3);
  if ((*(a2 + 276) & 1) == 0 || (*(a1 + 276) & 1) == 0)
  {
LABEL_14:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(a2 + 272) < *(a1 + 272))
  {

    return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a1, a2);
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a2, a3, a4);
  if ((*(a5 + 276) & 1) == 0 || (*(a4 + 276) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a5 + 272) >= *(a4 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a4, a5);
  if ((*(a4 + 276) & 1) == 0 || (*(a3 + 276) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a4 + 272) >= *(a3 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a3, a4);
  if ((*(a3 + 276) & 1) == 0 || (*(a2 + 276) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a3 + 272) >= *(a2 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a2, a3);
  if ((*(a2 + 276) & 1) == 0 || (*(a1 + 276) & 1) == 0)
  {
LABEL_17:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(a2 + 272) < *(a1 + 272))
  {

    return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a1, a2);
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *>(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a2 - 288);
        goto LABEL_30;
      case 4:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a1 + 576, a2 - 288);
        goto LABEL_30;
      case 5:
        std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a1 + 576, a1 + 864, a2 - 288);
        goto LABEL_30;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_30;
    }

    if (v4 == 2)
    {
      if ((*(a2 - 12) & 1) == 0 || (*(a1 + 276) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (*(a2 - 16) < *(a1 + 272))
      {
        std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a1, a2 - 288);
      }

      goto LABEL_30;
    }
  }

  v5 = a1 + 576;
  std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a1 + 576);
  v6 = a1 + 864;
  if (a1 + 864 != a2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if ((*(v6 + 276) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if ((*(v5 + 276) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (*(v6 + 272) < *(v5 + 272))
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v17, v6);
        v18 = *(v6 + 272);
        v9 = v7;
        while (1)
        {
          v10 = v9;
          v11 = a1 + v9;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(a1 + v9 + 864, a1 + v9 + 576);
          *(v11 + 1136) = *(v11 + 848);
          *(v11 + 1140) = *(v11 + 852);
          if (v10 == -576)
          {
            break;
          }

          if (BYTE4(v18) != 1 || (*(a1 + v10 + 564) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v9 = v10 - 288;
          if (*&v18 >= *(a1 + v10 + 560))
          {
            v12 = a1 + v9 + 864;
            goto LABEL_25;
          }
        }

        v12 = a1;
LABEL_25:
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v12, v17);
        v13 = a1 + v10 + 848;
        *v13 = v18;
        *(v13 + 4) = BYTE4(v18);
        if (++v8 == 8)
        {
          v14 = v6 + 288 == a2;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
          goto LABEL_31;
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
      }

      v5 = v6;
      v7 += 288;
      v6 += 288;
    }

    while (v6 != a2);
  }

LABEL_30:
  v14 = 1;
LABEL_31:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_261853EF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v11[35] = *MEMORY[0x277D85DE8];
  v4 = *(result + 256);
  v5 = *(a2 + 256);
  if (v4 != -1 || v5 != -1)
  {
    v7 = v4 == -1;
    if (v4 == -1)
    {
      v4 = -1;
    }

    if (v5 == -1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4 == v5;
    }

    if (v8)
    {
      result = (off_28740B098[v4])(v11, result, a2);
    }

    else
    {
      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v11, a2);
      std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(a2, v3);
      std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(v3, v11);
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
    }
  }

  if (*(v3 + 276) == *(a2 + 276))
  {
    if (*(v3 + 276))
    {
      v9 = *(v3 + 272);
      *(v3 + 272) = *(a2 + 272);
      *(a2 + 272) = v9;
    }
  }

  else if (*(v3 + 276))
  {
    *(a2 + 272) = *(v3 + 272);
    *(a2 + 276) = 1;
    if (*(v3 + 276) == 1)
    {
      *(v3 + 276) = 0;
    }
  }

  else
  {
    *(v3 + 272) = *(a2 + 272);
    *(v3 + 276) = 1;
    if (*(a2 + 276) == 1)
    {
      *(a2 + 276) = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261854078(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 256);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_28740B0C8[v5])(&v6, a2);
    *(a1 + 256) = v5;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = a2[3];
  v28 = a2[4];
  *v29 = a2[5];
  *&v29[9] = *(a2 + 89);
  v24 = *a2;
  v25 = a2[1];
  v26 = a2[2];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v19 = a2[8];
  v20 = a2[9];
  v22 = a2[11];
  v23 = a2[12];
  v21 = a2[10];
  v6 = *a3;
  v7 = a3[2];
  a2[1] = a3[1];
  a2[2] = v7;
  *a2 = v6;
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v9;
  a2[5] = v10;
  a2[3] = v8;
  v11 = *(a3 + 14);
  *(a3 + 14) = 0;
  v12 = *(a2 + 14);
  *(a2 + 14) = v11;

  a2[8] = a3[8];
  v13 = a3[9];
  v14 = a3[10];
  v15 = a3[12];
  a2[11] = a3[11];
  a2[12] = v15;
  a2[9] = v13;
  a2[10] = v14;
  a3[4] = v28;
  a3[5] = *v29;
  *(a3 + 89) = *&v29[9];
  *a3 = v24;
  a3[1] = v25;
  a3[2] = v26;
  a3[3] = v27;
  v16 = *(a3 + 14);
  *(a3 + 14) = v5;

  result = v20;
  a3[10] = v21;
  a3[11] = v22;
  a3[12] = v23;
  a3[8] = v19;
  a3[9] = v20;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a2[4];
  *v35 = a2[5];
  *&v35[9] = *(a2 + 89);
  v30 = *a2;
  v31 = a2[1];
  v32 = a2[2];
  v33 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v25 = a2[9];
  v24 = a2[8];
  v29 = *(a2 + 26);
  v28 = a2[12];
  v27 = a2[11];
  v26 = a2[10];
  v6 = a2 + 216;
  v23 = *(a2 + 216);
  v7 = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v8 = *a3;
  v9 = a3[2];
  a2[1] = a3[1];
  a2[2] = v9;
  *a2 = v8;
  v10 = a3[3];
  v11 = a3[4];
  v12 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v11;
  a2[5] = v12;
  a2[3] = v10;
  v13 = *(a3 + 14);
  *(a3 + 14) = 0;
  v14 = *(a2 + 14);
  *(a2 + 14) = v13;

  v15 = a3[9];
  a2[8] = a3[8];
  a2[9] = v15;
  v16 = a3[10];
  v17 = a3[11];
  v18 = a3[12];
  *(a2 + 26) = *(a3 + 26);
  a2[11] = v17;
  a2[12] = v18;
  a2[10] = v16;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(v6, (a3 + 216));
  a3[4] = v34;
  a3[5] = *v35;
  *(a3 + 89) = *&v35[9];
  *a3 = v30;
  a3[1] = v31;
  a3[2] = v32;
  a3[3] = v33;
  v19 = *(a3 + 14);
  *(a3 + 14) = v5;

  a3[10] = v26;
  a3[11] = v27;
  a3[12] = v28;
  *(a3 + 26) = v29;
  a3[8] = v24;
  a3[9] = v25;
  v20 = *(a3 + 27);
  if (v20)
  {
    *(a3 + 28) = v20;
    operator delete(v20);
  }

  result = v23;
  *(a3 + 216) = v23;
  *(a3 + 29) = v7;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  *v33 = a2[5];
  *&v33[9] = *(a2 + 89);
  v28 = *a2;
  v29 = a2[1];
  v31 = a2[3];
  v32 = a2[4];
  v30 = a2[2];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v6 = *(a2 + 128);
  v7 = a2 + 136;
  v8 = *(a2 + 17);
  *v27 = *(a2 + 18);
  *&v27[7] = *(a2 + 151);
  v9 = *(a2 + 159);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  v10 = a2 + 10;
  v24 = *(a2 + 20);
  *v26 = *(a2 + 21);
  *&v26[7] = *(a2 + 175);
  v11 = *(a2 + 183);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 20) = 0;
  v25 = a2[12];
  v12 = *a3;
  v13 = a3[2];
  a2[1] = a3[1];
  a2[2] = v13;
  *a2 = v12;
  v14 = a3[3];
  v15 = a3[4];
  v16 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v15;
  a2[5] = v16;
  a2[3] = v14;
  v17 = *(a3 + 14);
  *(a3 + 14) = 0;
  v18 = *(a2 + 14);
  *(a2 + 14) = v17;

  *(a2 + 128) = *(a3 + 128);
  if (*(a2 + 159) < 0)
  {
    operator delete(*v7);
  }

  v19 = *(a3 + 136);
  *(v7 + 16) = *(a3 + 19);
  *v7 = v19;
  *(a3 + 159) = 0;
  *(a3 + 136) = 0;
  if (*(a2 + 183) < 0)
  {
    operator delete(*v10);
  }

  v20 = a3[10];
  *(v10 + 2) = *(a3 + 22);
  *v10 = v20;
  *(a3 + 183) = 0;
  *(a3 + 160) = 0;
  a2[12] = a3[12];
  a3[4] = v32;
  a3[5] = *v33;
  *(a3 + 89) = *&v33[9];
  *a3 = v28;
  a3[1] = v29;
  a3[2] = v30;
  a3[3] = v31;
  v21 = *(a3 + 14);
  *(a3 + 14) = v5;

  *(a3 + 128) = v6;
  if (*(a3 + 159) < 0)
  {
    operator delete(*(a3 + 17));
  }

  *(a3 + 17) = v8;
  *(a3 + 18) = *v27;
  *(a3 + 151) = *&v27[7];
  *(a3 + 159) = v9;
  if (*(a3 + 183) < 0)
  {
    operator delete(*(a3 + 20));
  }

  *(a3 + 20) = v24;
  *(a3 + 21) = *v26;
  *(a3 + 175) = *&v26[7];
  *(a3 + 183) = v11;
  result = *&v25;
  a3[12] = v25;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = a2[4];
  *v38 = a2[5];
  *&v38[9] = *(a2 + 89);
  v33 = *a2;
  v34 = a2[1];
  v35 = a2[2];
  v36 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v7 = a2 + 8;
  v6 = *(a2 + 16);
  *&v32[7] = *(a2 + 143);
  *v32 = *(a2 + 17);
  v8 = *(a2 + 151);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v10 = a2 + 152;
  v9 = *(a2 + 19);
  *v31 = *(a2 + 20);
  *&v31[7] = *(a2 + 167);
  v11 = *(a2 + 175);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 19) = 0;
  v29 = a2[13];
  v30 = a2[14];
  v27 = a2[11];
  v28 = a2[12];
  v12 = *a3;
  v13 = a3[2];
  a2[1] = a3[1];
  a2[2] = v13;
  *a2 = v12;
  v14 = a3[3];
  v15 = a3[4];
  v16 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v15;
  a2[5] = v16;
  a2[3] = v14;
  v17 = *(a3 + 14);
  *(a3 + 14) = 0;
  v18 = *(a2 + 14);
  *(a2 + 14) = v17;

  if (*(a2 + 151) < 0)
  {
    operator delete(*v7);
  }

  v19 = a3[8];
  *(v7 + 2) = *(a3 + 18);
  *v7 = v19;
  *(a3 + 151) = 0;
  *(a3 + 128) = 0;
  if (*(a2 + 175) < 0)
  {
    operator delete(*v10);
  }

  v20 = *(a3 + 152);
  *(v10 + 16) = *(a3 + 21);
  *v10 = v20;
  *(a3 + 175) = 0;
  *(a3 + 152) = 0;
  v21 = a3[11];
  v22 = a3[12];
  v23 = a3[14];
  a2[13] = a3[13];
  a2[14] = v23;
  a2[11] = v21;
  a2[12] = v22;
  a3[4] = v37;
  a3[5] = *v38;
  *(a3 + 89) = *&v38[9];
  *a3 = v33;
  a3[1] = v34;
  a3[2] = v35;
  a3[3] = v36;
  v24 = *(a3 + 14);
  *(a3 + 14) = v5;

  if (*(a3 + 151) < 0)
  {
    operator delete(*(a3 + 16));
  }

  *(a3 + 16) = v6;
  *(a3 + 17) = *v32;
  *(a3 + 143) = *&v32[7];
  *(a3 + 151) = v8;
  if (*(a3 + 175) < 0)
  {
    operator delete(*(a3 + 19));
  }

  *(a3 + 19) = v9;
  *(a3 + 20) = *v31;
  *(a3 + 167) = *&v31[7];
  *(a3 + 175) = v11;
  a3[11] = v27;
  a3[12] = v28;
  result = v29;
  a3[13] = v29;
  a3[14] = v30;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a2[4];
  *v35 = a2[5];
  *&v35[9] = *(a2 + 89);
  v30 = *a2;
  v31 = a2[1];
  v32 = a2[2];
  v33 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v24 = a2[10];
  v25 = a2[11];
  v22 = a2[8];
  v23 = a2[9];
  v28 = a2[14];
  v29 = a2[15];
  v26 = a2[12];
  v27 = a2[13];
  v6 = *a3;
  v7 = a3[2];
  a2[1] = a3[1];
  a2[2] = v7;
  *a2 = v6;
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v9;
  a2[5] = v10;
  a2[3] = v8;
  v11 = *(a3 + 14);
  *(a3 + 14) = 0;
  v12 = *(a2 + 14);
  *(a2 + 14) = v11;

  v13 = a3[8];
  v14 = a3[9];
  v15 = a3[11];
  a2[10] = a3[10];
  a2[11] = v15;
  a2[8] = v13;
  a2[9] = v14;
  v16 = a3[12];
  v17 = a3[13];
  v18 = a3[15];
  a2[14] = a3[14];
  a2[15] = v18;
  a2[12] = v16;
  a2[13] = v17;
  a3[4] = v34;
  a3[5] = *v35;
  *(a3 + 89) = *&v35[9];
  *a3 = v30;
  a3[1] = v31;
  a3[2] = v32;
  a3[3] = v33;
  v19 = *(a3 + 14);
  *(a3 + 14) = v5;

  a3[12] = v26;
  a3[13] = v27;
  a3[14] = v28;
  a3[15] = v29;
  a3[8] = v22;
  a3[9] = v23;
  result = v24;
  a3[10] = v24;
  a3[11] = v25;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = a2[4];
  *v21 = a2[5];
  *&v21[9] = *(a2 + 89);
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v6 = *(a2 + 32);
  v7 = *a3;
  v8 = a3[2];
  a2[1] = a3[1];
  a2[2] = v8;
  *a2 = v7;
  v9 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v10;
  a2[5] = v11;
  a2[3] = v9;
  v12 = *(a3 + 14);
  *(a3 + 14) = 0;
  v13 = *(a2 + 14);
  *(a2 + 14) = v12;

  *(a2 + 32) = *(a3 + 32);
  a3[4] = v20;
  a3[5] = *v21;
  *(a3 + 89) = *&v21[9];
  *a3 = v16;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  v14 = *(a3 + 14);
  *(a3 + 14) = v5;

  *(a3 + 32) = v6;
  v15 = *MEMORY[0x277D85DE8];
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  *(v2 + 128) = a2[8];
  result = a2[9];
  v10 = a2[10];
  v11 = a2[12];
  *(v2 + 176) = a2[11];
  *(v2 + 192) = v11;
  *(v2 + 144) = result;
  *(v2 + 160) = v10;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  v9 = a2[9];
  *(v2 + 128) = a2[8];
  *(v2 + 144) = v9;
  v10 = a2[10];
  v11 = a2[12];
  v12 = *(a2 + 26);
  *(v2 + 176) = a2[11];
  *(v2 + 192) = v11;
  *(v2 + 160) = v10;
  *(v2 + 208) = v12;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  result = *(a2 + 216);
  *(v2 + 216) = result;
  *(v2 + 232) = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  *(v2 + 128) = *(a2 + 128);
  v9 = *(a2 + 136);
  *(v2 + 152) = *(a2 + 19);
  *(v2 + 136) = v9;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 17) = 0;
  v10 = a2[10];
  *(v2 + 176) = *(a2 + 22);
  *(v2 + 160) = v10;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 20) = 0;
  result = a2[12];
  *(v2 + 192) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  v9 = a2[8];
  *(v2 + 144) = *(a2 + 18);
  *(v2 + 128) = v9;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 16) = 0;
  v10 = *(a2 + 152);
  *(v2 + 168) = *(a2 + 21);
  *(v2 + 152) = v10;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 19) = 0;
  result = a2[11];
  v12 = a2[12];
  v13 = a2[14];
  *(v2 + 208) = a2[13];
  *(v2 + 224) = v13;
  *(v2 + 176) = result;
  *(v2 + 192) = v12;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[11];
  *(v2 + 160) = a2[10];
  *(v2 + 176) = v11;
  *(v2 + 128) = v9;
  *(v2 + 144) = v10;
  result = a2[12];
  v13 = a2[13];
  v14 = a2[15];
  *(v2 + 224) = a2[14];
  *(v2 + 240) = v14;
  *(v2 + 192) = result;
  *(v2 + 208) = v13;
  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  result = *(a2 + 32);
  *(v2 + 128) = result;
  return result;
}

uint64_t ___ZZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusENK3__0cvU13block_pointerF20REEventHandlerResultPvPKvEEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 73;
  v4 = (a1 + 48);
  v38 = (a1 + 48);
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2 + 73, (a1 + 48))[8])
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((v2 + 73), v4);
    v6 = v2[74];
    if (v6)
    {
      v7 = v5;
      v8 = vcnt_s8(v6);
      v8.i16[0] = vaddlv_u8(v8);
      v9 = v8.u32[0];
      if (v8.u32[0] > 1uLL)
      {
        v10 = v5;
        if (v5 >= *&v6)
        {
          v10 = v5 % *&v6;
        }
      }

      else
      {
        v10 = (*&v6 - 1) & v5;
      }

      v11 = *(*v3 + 8 * v10);
      if (v11)
      {
        for (i = *v11; i; i = *i)
        {
          v13 = i[1];
          if (v13 == v7)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100]((v2 + 73), i + 2, v4))
            {
              v14 = v2[74];
              v15 = i[1];
              v16 = vcnt_s8(v14);
              v16.i16[0] = vaddlv_u8(v16);
              if (v16.u32[0] > 1uLL)
              {
                if (v15 >= *&v14)
                {
                  v15 %= *&v14;
                }
              }

              else
              {
                v15 &= *&v14 - 1;
              }

              v17 = *(*v3 + 8 * v15);
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17 != i);
              if (v18 == v2 + 75)
              {
                goto LABEL_36;
              }

              v19 = v18[1];
              if (v16.u32[0] > 1uLL)
              {
                if (v19 >= *&v14)
                {
                  v19 %= *&v14;
                }
              }

              else
              {
                v19 &= *&v14 - 1;
              }

              if (v19 != v15)
              {
LABEL_36:
                if (!*i)
                {
                  goto LABEL_37;
                }

                v20 = *(*i + 8);
                if (v16.u32[0] > 1uLL)
                {
                  if (v20 >= *&v14)
                  {
                    v20 %= *&v14;
                  }
                }

                else
                {
                  v20 &= *&v14 - 1;
                }

                if (v20 != v15)
                {
LABEL_37:
                  *(*v3 + 8 * v15) = 0;
                }
              }

              v21 = *i;
              if (*i)
              {
                v22 = v21[1];
                if (v16.u32[0] > 1uLL)
                {
                  if (v22 >= *&v14)
                  {
                    v22 %= *&v14;
                  }
                }

                else
                {
                  v22 &= *&v14 - 1;
                }

                if (v22 != v15)
                {
                  *(*v3 + 8 * v22) = v18;
                  v21 = *i;
                }
              }

              *v18 = v21;
              *i = 0;
              --v2[76];
              v38 = i;
              v39 = v2 + 73;
              v40 = 1;
              memset(v41, 0, sizeof(v41));
              std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](&v38);
              break;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= *&v6)
              {
                v13 %= *&v6;
              }
            }

            else
            {
              v13 &= *&v6 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }
        }
      }
    }

    if (v2[28])
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
      std::function<void ()(NSSet<ARReferenceImage *> *)>::operator()((v2 + 25), v23);
    }
  }

  v24 = v2 + 31;
  v25 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(v2 + 31, (a1 + 40));
  if (v25)
  {
    v26 = v2[32];
    v27 = v25[1];
    v28 = vcnt_s8(v26);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      if (v27 >= *&v26)
      {
        v27 %= *&v26;
      }
    }

    else
    {
      v27 &= *&v26 - 1;
    }

    v29 = *(*v24 + 8 * v27);
    do
    {
      v30 = v29;
      v29 = *v29;
    }

    while (v29 != v25);
    if (v30 == v2 + 33)
    {
      goto LABEL_66;
    }

    v31 = v30[1];
    if (v28.u32[0] > 1uLL)
    {
      if (v31 >= *&v26)
      {
        v31 %= *&v26;
      }
    }

    else
    {
      v31 &= *&v26 - 1;
    }

    if (v31 != v27)
    {
LABEL_66:
      if (!*v25)
      {
        goto LABEL_67;
      }

      v32 = *(*v25 + 8);
      if (v28.u32[0] > 1uLL)
      {
        if (v32 >= *&v26)
        {
          v32 %= *&v26;
        }
      }

      else
      {
        v32 &= *&v26 - 1;
      }

      if (v32 != v27)
      {
LABEL_67:
        *(*v24 + 8 * v27) = 0;
      }
    }

    v33 = *v25;
    if (*v25)
    {
      v34 = *(v33 + 8);
      if (v28.u32[0] > 1uLL)
      {
        if (v34 >= *&v26)
        {
          v34 %= *&v26;
        }
      }

      else
      {
        v34 &= *&v26 - 1;
      }

      if (v34 != v27)
      {
        *(*v24 + 8 * v34) = v30;
        v33 = *v25;
      }
    }

    *v30 = v33;
    *v25 = 0;
    --v2[34];
    v38 = v25;
    v39 = v2 + 31;
    v40 = 1;
    memset(v41, 0, sizeof(v41));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>>>>::~unique_ptr[abi:ne200100](&v38);
  }

  v35 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(v2 + 80, (a1 + 40));
  if (v35)
  {
    v36 = v35;
    rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::unsubscribeComponentEvents((v35 + 3));
    *(v36 + 120) = 0;
  }

  return 1;
}