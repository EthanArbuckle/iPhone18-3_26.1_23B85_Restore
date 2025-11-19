void sub_1B32680F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  std::__shared_weak_count::~__shared_weak_count(v39);
  operator delete(v43);

  _Unwind_Resume(a1);
}

double md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

_BYTE *md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x37F8C546A65FE3EELL && (v4 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SettingsContext>(*(a2 + 8));
    v9[1] = v7;
    return (*(*a1 + 160))(a1, a2, v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SettingsContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1AF456233693CD46uLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x1AF456233693CD46))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xC97B9E962ADF4AD4);
  return v4;
}

uint64_t md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x37F8C546A65FE3EELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SettingsContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x37F8C546A65FE3EELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SettingsContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x37F8C546A65FE3EELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SettingsContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x37F8C546A65FE3EELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SettingsContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

void sub_1B32689BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a13);
  MEMORY[0x1B8C62190](v20, v21);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::ARLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARLogicContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARLogicContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A4B3C8;
  v2 = a1[4];
  if (v2)
  {

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 24);
    MEMORY[0x1B8C62190](v2, 0x10A0C40144CC075);
  }

  return a1;
}

void md::ARLogic::createDebugNode(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "AR Logic");
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "ARMode");
  v4 = *(a1 + 257);
  if (v4 > 3)
  {
    v5 = "<Invalid>";
  }

  else
  {
    v5 = off_1E7B3CF88[v4];
  }

  gdc::DebugTreeValue::DebugTreeValue(v123, v5);
  gdc::DebugTreeNode::addProperty(a2, __p, v123);
  if (v125 < 0)
  {
    operator delete(v124);
  }

  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "ARSceneType");
  v6 = *(a1 + 256);
  if (v6 > 2)
  {
    v7 = "<Invalid>";
  }

  else
  {
    v7 = off_1E7B3CFA8[v6];
  }

  gdc::DebugTreeValue::DebugTreeValue(v120, v7);
  gdc::DebugTreeNode::addProperty(a2, __p, v120);
  if (v122 < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v50 = *(a1 + 160);
  if (!v50)
  {
    goto LABEL_136;
  }

  v49 = a2;
  std::string::basic_string[abi:nn200100]<0>(__p, "Identifier");
  v8 = [v50 identifier];
  v9 = [v8 UUIDString];
  gdc::DebugTreeValue::DebugTreeValue(v117, [v9 UTF8String]);
  gdc::DebugTreeNode::addProperty(a2, __p, v117);
  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "InterfaceOrientation");
  v10 = *(a1 + 176) - 1;
  if (v10 > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E7B3CFC0[v10];
  }

  gdc::DebugTreeValue::DebugTreeValue(v114, [(__CFString *)v11 UTF8String]);
  gdc::DebugTreeNode::addProperty(a2, __p, v114);
  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "SessionState");
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v50, "state")];
  gdc::DebugTreeValue::DebugTreeValue(v111, [v12 UTF8String]);
  gdc::DebugTreeNode::addProperty(a2, __p, v111);
  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "FrameTimeHistogram");
  ChildNode = gdc::DebugTreeNode::createChildNode(a2, __p);
  if (SHIBYTE(v101.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 0;
  v14 = *MEMORY[0x1E69E54E8];
  v52 = *(MEMORY[0x1E69E54E8] + 24);
  v15 = 0.0;
  do
  {
    std::ostringstream::basic_ostringstream[abi:nn200100](__p);
    v16 = exp2(v13) * 4.0;
    if (v13)
    {
      if (v13 == 7)
      {
        v17 = __p;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ">= ", 3);
        goto LABEL_42;
      }

      v17 = MEMORY[0x1B8C61C60](__p, v15);
      v18 = " - ";
    }

    else
    {
      v17 = __p;
      v18 = "<= ";
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, v18, 3);
    v15 = v16;
LABEL_42:
    v19 = MEMORY[0x1B8C61C60](v17, v15);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, " ms", 3);
    if ((v109 & 0x10) != 0)
    {
      v21 = v108;
      if (v108 < v105)
      {
        v108 = v105;
        v21 = v105;
      }

      v22 = __src;
    }

    else
    {
      if ((v109 & 8) == 0)
      {
        v20 = 0;
        v92 = 0;
        goto LABEL_55;
      }

      v22 = v102;
      v21 = v103;
    }

    v20 = v21 - v22;
    if (v21 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v92 = v21 - v22;
    if (v20)
    {
      memmove(&__dst, v22, v20);
    }

LABEL_55:
    *(&__dst + v20) = 0;
    gdc::DebugTreeValue::DebugTreeValue(v97, *(a1 + 272 + 8 * v13));
    gdc::DebugTreeNode::addProperty(ChildNode, &__dst, v97);
    if (v99 < 0)
    {
      operator delete(v98);
    }

    if (v92 < 0)
    {
      operator delete(__dst);
    }

    __p[0] = v14;
    *(__p + *(v14 - 3)) = v52;
    __p[1] = (MEMORY[0x1E69E5548] + 16);
    if (v107 < 0)
    {
      operator delete(v106);
    }

    __p[1] = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&v101);
    std::ostream::~ostream();
    MEMORY[0x1B8C620C0](&v110);
    ++v13;
    v15 = v16;
  }

  while (v13 != 8);
  v23 = [v50 currentFrame];
  if (v23)
  {
    std::string::basic_string[abi:nn200100]<0>(&__dst, "Frame");
    gdc::DebugTreeNode::DebugTreeNode(__p, &__dst);
    if (v92 < 0)
    {
      operator delete(__dst);
    }

    std::string::basic_string[abi:nn200100]<0>(v87, "GeoTracking");
    gdc::DebugTreeNode::DebugTreeNode(&__dst, v87);
    if (v88 < 0)
    {
      operator delete(v87[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(v83, "Accuracy");
    v24 = MEMORY[0x1E696AEC0];
    v25 = [v23 geoTrackingStatus];
    v26 = [v24 stringWithFormat:@"%ld", objc_msgSend(v25, "accuracy")];
    gdc::DebugTreeValue::DebugTreeValue(v87, [v26 UTF8String]);
    gdc::DebugTreeNode::addProperty(&__dst, v83, v87);
    if (v90 < 0)
    {
      operator delete(v89);
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(v79, "State");
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v23 geoTrackingStatus];
    v29 = [v27 stringWithFormat:@"%ld", objc_msgSend(v28, "state")];
    gdc::DebugTreeValue::DebugTreeValue(v83, [v29 UTF8String]);
    gdc::DebugTreeNode::addProperty(&__dst, v79, v83);
    if (v86 < 0)
    {
      operator delete(v85);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(v75, "StateReason");
    v30 = MEMORY[0x1E696AEC0];
    v31 = [v23 geoTrackingStatus];
    v32 = [v30 stringWithFormat:@"%ld", objc_msgSend(v31, "stateReason")];
    gdc::DebugTreeValue::DebugTreeValue(v79, [v32 UTF8String]);
    gdc::DebugTreeNode::addProperty(&__dst, v75, v79);
    if (v82 < 0)
    {
      operator delete(v81);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    gdc::DebugTreeNode::addChildNode(__p, &__dst);
    v75[0] = v96;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v75);
    v75[0] = v95;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v75);
    if (v94 < 0)
    {
      operator delete(v93);
    }

    if (v92 < 0)
    {
      operator delete(__dst);
    }

    v33 = [v23 camera];

    if (v33)
    {
      v34 = [v23 camera];
      std::string::basic_string[abi:nn200100]<0>(v75, "CameraTracking");
      gdc::DebugTreeNode::DebugTreeNode(&__dst, v75);
      if (v76 < 0)
      {
        operator delete(v75[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(v71, "State");
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v34, "trackingState")];
      gdc::DebugTreeValue::DebugTreeValue(v75, [v35 UTF8String]);
      gdc::DebugTreeNode::addProperty(&__dst, v71, v75);
      if (v78 < 0)
      {
        operator delete(v77);
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(v67, "Reason");
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v34, "trackingStateReason")];
      gdc::DebugTreeValue::DebugTreeValue(v71, [v36 UTF8String]);
      gdc::DebugTreeNode::addProperty(&__dst, v67, v71);
      if (v74 < 0)
      {
        operator delete(v73);
      }

      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      gdc::DebugTreeNode::addChildNode(__p, &__dst);
      v67[0] = v96;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v67);
      v67[0] = v95;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v67);
      if (v94 < 0)
      {
        operator delete(v93);
      }

      if (v92 < 0)
      {
        operator delete(__dst);
      }
    }

    v37 = [v23 location];
    if (v37)
    {

      goto LABEL_102;
    }

    v38 = [v23 rawLocation];

    if (v38)
    {
LABEL_102:
      v39 = [v23 location];
      if (v39)
      {
        [v23 location];
      }

      else
      {
        [v23 rawLocation];
      }
      v40 = ;

      [v40 coordinate];
      v42 = v41;
      [v40 coordinate];
      v44 = v43;
      [v40 altitude];
      v46 = v45;
      std::string::basic_string[abi:nn200100]<0>(v67, "Location");
      gdc::DebugTreeNode::DebugTreeNode(&__dst, v67);
      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(v63, "isRawLocation");
      v47 = [v23 rawLocation];
      if (v40 == v47)
      {
        v48 = "True";
      }

      else
      {
        v48 = "False";
      }

      gdc::DebugTreeValue::DebugTreeValue(v67, v48);
      gdc::DebugTreeNode::addProperty(&__dst, v63, v67);
      if (v70 < 0)
      {
        operator delete(v69);
      }

      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(v59, "Latitutde");
      gdc::DebugTreeValue::DebugTreeValue(v63, v42);
      gdc::DebugTreeNode::addProperty(&__dst, v59, v63);
      if (v66 < 0)
      {
        operator delete(v65);
      }

      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(v53, "Longitude");
      gdc::DebugTreeValue::DebugTreeValue(v59, v44);
      gdc::DebugTreeNode::addProperty(&__dst, v53, v59);
      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(v57, "Altitude");
      gdc::DebugTreeValue::DebugTreeValue(v53, v46);
      gdc::DebugTreeNode::addProperty(&__dst, v57, v53);
      if (v56 < 0)
      {
        operator delete(v55);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      gdc::DebugTreeNode::addChildNode(__p, &__dst);
      v57[0] = v96;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v57);
      v57[0] = v95;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v57);
      if (v94 < 0)
      {
        operator delete(v93);
      }

      if (v92 < 0)
      {
        operator delete(__dst);
      }
    }

    gdc::DebugTreeNode::addChildNode(v49, __p);
    *&__dst = &v106;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__dst);
    *&__dst = &__src;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__dst);
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v102);
    }

    if (SHIBYTE(v101.__locale_) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_136:
}

void sub_1B3269760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  STACK[0x280] = &STACK[0x368];
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x280]);
  STACK[0x280] = &STACK[0x350];
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x280]);
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  STACK[0x280] = a10 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x280]);
  STACK[0x280] = a10 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x280]);
  if (*(a10 + 47) < 0)
  {
    operator delete(*(a10 + 24));
  }

  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void md::ARLogic::didBecomeActive(md::ARLogic *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    v2 = *(this + 24);
    v3 = v1;
    [v2 setSession:?];
  }
}

void md::ARLogic::~ARLogic(md::ARLogic *this)
{
  md::ARLogic::~ARLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4B158;
  *(this + 15) = &unk_1F2A4B228;
  [*(this + 24) setSession:0];
  [*(this + 24) setObserver:0];

  v2 = *(this + 55);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  *(this + 23) = &unk_1F2A4B348;

  *(this + 19) = &unk_1F2A4C1F8;
  v4 = *(this + 17);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B3269D54(_Unwind_Exception *a1)
{
  v3 = *(v1 + 440);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 424);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 208);
  *(v1 + 184) = &unk_1F2A4B348;

  *(v1 + 152) = &unk_1F2A4C1F8;
  v5 = *(v1 + 136);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<MDARSessionObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B348;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<MDARSessionObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B348;

  return a1;
}

void md::ARLogic::setARSession(id *this, ARSession *a2)
{
  v3 = a2;
  if (this[20] != v3)
  {
    v7 = v3;
    [this[24] setSession:0];
    if (v7)
    {
      geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((this + 19), v7);
    }

    else
    {
      v4 = this[20];
      if (v4)
      {
        this[20] = 0;
      }
    }

    v5 = this[24];
    v6 = this[20];
    [v5 setSession:v6];

    v3 = v7;
  }
}

void md::SelectedDaVinciRoadsLayerDataSource::~SelectedDaVinciRoadsLayerDataSource(md::SelectedDaVinciRoadsLayerDataSource *this)
{
  *this = &unk_1F2A4B3F0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 840);
  *this = &unk_1F2A4B498;
  std::unique_ptr<md::ElevationRequestUpdater>::~unique_ptr[abi:nn200100](this + 104);
  std::__function::__value_func<BOOL ()(md::GEOVectorTileResource const&,GeoCodecsRoadFeature const&,md::MapDataType)>::~__value_func[abi:nn200100](this + 792);

  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4B3F0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 840);
  *this = &unk_1F2A4B498;
  std::unique_ptr<md::ElevationRequestUpdater>::~unique_ptr[abi:nn200100](this + 104);
  std::__function::__value_func<BOOL ()(md::GEOVectorTileResource const&,GeoCodecsRoadFeature const&,md::MapDataType)>::~__value_func[abi:nn200100](this + 792);

  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

uint64_t anonymous namespace::shouldFilterFeature(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(a1 + 8) + 16);
  v4 = *(a2 + 40);
  if (a3 != 48)
  {
    return v4 != v3;
  }

  if (v4 == v3)
  {
    return 0;
  }

  if (!*(a2 + 74))
  {
    return 1;
  }

  v6 = *(a2 + 64);
  v7 = *(*(a1 + 144) + 3488);
  v8 = *(a2 + 74) - 1;
  do
  {
    v9 = *(v7 + 8 * v6);
    v11 = v8-- != 0;
    result = v9 != v3;
    if (v9 == v3)
    {
      break;
    }

    ++v6;
  }

  while (v11);
  return result;
}

void md::SatelliteMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  md::CartographicMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v5 = 23;
  md::MapEngineSettings::set(a4, &v5, 0);
}

void md::SatelliteMapEngineMode::~SatelliteMapEngineMode(md::SatelliteMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

md::SatelliteMapEngineMode *md::SatelliteMapEngineMode::SatelliteMapEngineMode(md::SatelliteMapEngineMode *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = md::CartographicMapEngineMode::CartographicMapEngineMode(this, 3);
  *v2 = &unk_1F2A4B588;
  *(v2 + 616) = 100;
  *(v2 + 49) = 0;
  *(v2 + 52) = 18;
  LOWORD(v4) = 4608;
  *(&v4 + 1) = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((v2 + 464), &v4);
  LOWORD(v4) = 4608;
  *(&v4 + 1) = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 64, &v4);
  LOWORD(v4) = 4608;
  *(&v4 + 1) = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 61, &v4);
  *(this + 112) = 0;
  LODWORD(v4) = 151139072;
  md::MapEngineMode::addRequiredRenderLayers(this, &v4, 4);
  LOBYTE(v4) = 3;
  md::MapEngineMode::addRequiredRenderLayers(this, &v4, 1);
  LOWORD(v4) = 4648;
  md::MapEngineMode::addOptionalRenderLayers(this, &v4, 2);
  LOWORD(v4) = 10793;
  md::MapEngineMode::addAllowedRenderLayers(this, &v4, 2);
  LODWORD(v4) = 40;
  md::MapEngineMode::addAllowedMapDataTypes(this, &v4, 1);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteOverlayLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SkyLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RegistryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NonTiledAssetLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingRegistryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::OverlaysLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DebugDrawLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>(this + 29);
  LODWORD(v4) = 10;
  md::MapEngineMode::addRequiredMapDataTypes(this, &v4, 1);
  v4 = xmmword_1B33B2260;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v4, 4);
  v4 = xmmword_1B33B2270;
  md::MapEngineMode::addAllowedMapDataTypes(this, &v4, 4);
  return this;
}

uint64_t md::VKMRenderResourcesStore::_disconnect<geo::handle<md::PipelineStateItem>>(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 71, a2);
  if (result != a1[76])
  {
    v4 = (*(a1[78] + ((((result - a1[75]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[75]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::Tile::View,md::VoidKeyType>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v46[0] = a2;
  v46[1] = a2;
  v47 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 6976);
  v5 = *(a1 + 6992);
  if (*(a1 + 6968) == v4)
  {
    v6 = ((*(a1 + 7000) - v5) >> 3) | 0x100000000;
    v49.i64[0] = v6;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 6992, &v49);
  }

  else
  {
    v6 = *(v5 + 8 * *(v4 - 8));
    *(a1 + 6976) = v4 - 8;
  }

  v48 = v6;
  v49 = vdupq_n_s64(1uLL);
  LOWORD(v50) = 1;
  v7 = v6 >> 6;
  v8 = *(a1 + 6824);
  v9 = *(a1 + 6816);
  if (v7 >= (v8 - v9) >> 3)
  {
    v10 = v7 + 1;
    v11 = v7 + 1 - ((v8 - v9) >> 3);
    v12 = *(a1 + 6832);
    if (v11 > (v12 - v8) >> 3)
    {
      v13 = v12 - v9;
      if (v13 >> 2 > v10)
      {
        v10 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v10;
      }

      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_55;
    }

    bzero(*(a1 + 6824), 8 * v11);
    *(a1 + 6824) = v8 + 8 * v11;
    v9 = *(a1 + 6816);
  }

  v15 = *(v9 + 8 * v7);
  if (!v15)
  {
    operator new();
  }

  v16 = (v15 + 16 * (v6 & 0x3F));
  if (*v16 == -1 && v16[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 6840, &v48);
    v18 = ((*(a1 + 6848) - *(a1 + 6840)) >> 3) - 1;
    *v16 = HIDWORD(v6);
    v16[1] = v18;
    v51 = v46;
    v19 = v18 & 0x3F;
    v20 = *(*(a1 + 6864) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 6864), v18)) + 24 * (v18 & 0x3F);
    *v20 = v49;
    v21 = v51;
    *(v20 + 16) = v50;
    v22 = v18 >> 6;
    v23 = *(a1 + 6920);
    v24 = *(a1 + 6912);
    v25 = v23 - v24;
    if (v18 >> 6 >= (v23 - v24) >> 3)
    {
      v26 = v22 + 1;
      v27 = v22 + 1 - (v25 >> 3);
      v28 = *(a1 + 6928);
      v45 = v23 - v24;
      if (v27 > (v28 - v23) >> 3)
      {
        v29 = v28 - v24;
        v30 = (v28 - v24) >> 2;
        if (v30 <= v26)
        {
          v30 = v22 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (!(v31 >> 61))
        {
          operator new();
        }

        goto LABEL_55;
      }

      v32 = 0;
      v33 = (v27 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v34 = vdupq_n_s64(v33);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1B33B0560)));
        if (v35.i8[0])
        {
          *(v23 + 8 * v32) = 0;
        }

        if (v35.i8[4])
        {
          *(v23 + 8 * v32 + 8) = 0;
        }

        v32 += 2;
      }

      while (v33 - ((v27 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v32);
      *(a1 + 6920) = v23 + 8 * v27;
      v36 = *(a1 + 6944);
      v37 = *(a1 + 6936);
      v38 = (v36 - v37) >> 4;
      if (v38 <= v22)
      {
        v39 = v26 - v38;
        v40 = *(a1 + 6952);
        if (v39 > (v40 - v36) >> 4)
        {
          v41 = v40 - v37;
          v42 = v41 >> 3;
          if (v41 >> 3 <= v26)
          {
            v42 = v22 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_55:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 6944), 16 * v39);
        *(a1 + 6944) = v36 + 16 * v39;
        v25 = v45;
      }

      else if (v26 < v38)
      {
        *(a1 + 6944) = v37 + 16 * v26;
      }

      v24 = *(a1 + 6912);
      if (v25 < (*(a1 + 6920) - v24))
      {
        operator new();
      }
    }

    v43 = *(v24 + 8 * v22) + 24 * v19;
    *v43 = *v21;
    *(v43 + 16) = v21[2];
    v21[1] = 0;
    v21[2] = 0;
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  return v6;
}

void sub_1B326AB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::Tile::LinearDepth,md::VoidKeyType>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v46[0] = a2;
  v46[1] = a2;
  v47 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 7184);
  v5 = *(a1 + 7200);
  if (*(a1 + 7176) == v4)
  {
    v6 = ((*(a1 + 7208) - v5) >> 3) | 0x100000000;
    v49.i64[0] = v6;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 7200, &v49);
  }

  else
  {
    v6 = *(v5 + 8 * *(v4 - 8));
    *(a1 + 7184) = v4 - 8;
  }

  v48 = v6;
  v49 = vdupq_n_s64(1uLL);
  LOWORD(v50) = 1;
  v7 = v6 >> 6;
  v8 = *(a1 + 7032);
  v9 = *(a1 + 7024);
  if (v7 >= (v8 - v9) >> 3)
  {
    v10 = v7 + 1;
    v11 = v7 + 1 - ((v8 - v9) >> 3);
    v12 = *(a1 + 7040);
    if (v11 > (v12 - v8) >> 3)
    {
      v13 = v12 - v9;
      if (v13 >> 2 > v10)
      {
        v10 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v10;
      }

      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_55;
    }

    bzero(*(a1 + 7032), 8 * v11);
    *(a1 + 7032) = v8 + 8 * v11;
    v9 = *(a1 + 7024);
  }

  v15 = *(v9 + 8 * v7);
  if (!v15)
  {
    operator new();
  }

  v16 = (v15 + 16 * (v6 & 0x3F));
  if (*v16 == -1 && v16[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 7048, &v48);
    v18 = ((*(a1 + 7056) - *(a1 + 7048)) >> 3) - 1;
    *v16 = HIDWORD(v6);
    v16[1] = v18;
    v51 = v46;
    v19 = v18 & 0x3F;
    v20 = *(*(a1 + 7072) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 7072), v18)) + 24 * (v18 & 0x3F);
    *v20 = v49;
    v21 = v51;
    *(v20 + 16) = v50;
    v22 = v18 >> 6;
    v23 = *(a1 + 7128);
    v24 = *(a1 + 7120);
    v25 = v23 - v24;
    if (v18 >> 6 >= (v23 - v24) >> 3)
    {
      v26 = v22 + 1;
      v27 = v22 + 1 - (v25 >> 3);
      v28 = *(a1 + 7136);
      v45 = v23 - v24;
      if (v27 > (v28 - v23) >> 3)
      {
        v29 = v28 - v24;
        v30 = (v28 - v24) >> 2;
        if (v30 <= v26)
        {
          v30 = v22 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (!(v31 >> 61))
        {
          operator new();
        }

        goto LABEL_55;
      }

      v32 = 0;
      v33 = (v27 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v34 = vdupq_n_s64(v33);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1B33B0560)));
        if (v35.i8[0])
        {
          *(v23 + 8 * v32) = 0;
        }

        if (v35.i8[4])
        {
          *(v23 + 8 * v32 + 8) = 0;
        }

        v32 += 2;
      }

      while (v33 - ((v27 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v32);
      *(a1 + 7128) = v23 + 8 * v27;
      v36 = *(a1 + 7152);
      v37 = *(a1 + 7144);
      v38 = (v36 - v37) >> 4;
      if (v38 <= v22)
      {
        v39 = v26 - v38;
        v40 = *(a1 + 7160);
        if (v39 > (v40 - v36) >> 4)
        {
          v41 = v40 - v37;
          v42 = v41 >> 3;
          if (v41 >> 3 <= v26)
          {
            v42 = v22 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_55:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 7152), 16 * v39);
        *(a1 + 7152) = v36 + 16 * v39;
        v25 = v45;
      }

      else if (v26 < v38)
      {
        *(a1 + 7152) = v37 + 16 * v26;
      }

      v24 = *(a1 + 7120);
      if (v25 < (*(a1 + 7128) - v24))
      {
        operator new();
      }
    }

    v43 = *(v24 + 8 * v22) + 24 * v19;
    *v43 = *v21;
    *(v43 + 16) = v21[2];
    v21[1] = 0;
    v21[2] = 0;
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  return v6;
}

void sub_1B326B13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::Tile::Transform,md::VoidKeyType>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v46[0] = a2;
  v46[1] = a2;
  v47 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 6768);
  v5 = *(a1 + 6784);
  if (*(a1 + 6760) == v4)
  {
    v6 = ((*(a1 + 6792) - v5) >> 3) | 0x100000000;
    v49.i64[0] = v6;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 6784, &v49);
  }

  else
  {
    v6 = *(v5 + 8 * *(v4 - 8));
    *(a1 + 6768) = v4 - 8;
  }

  v48 = v6;
  v49 = vdupq_n_s64(1uLL);
  LOWORD(v50) = 1;
  v7 = v6 >> 6;
  v8 = *(a1 + 6616);
  v9 = *(a1 + 6608);
  if (v7 >= (v8 - v9) >> 3)
  {
    v10 = v7 + 1;
    v11 = v7 + 1 - ((v8 - v9) >> 3);
    v12 = *(a1 + 6624);
    if (v11 > (v12 - v8) >> 3)
    {
      v13 = v12 - v9;
      if (v13 >> 2 > v10)
      {
        v10 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v10;
      }

      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_55;
    }

    bzero(*(a1 + 6616), 8 * v11);
    *(a1 + 6616) = v8 + 8 * v11;
    v9 = *(a1 + 6608);
  }

  v15 = *(v9 + 8 * v7);
  if (!v15)
  {
    operator new();
  }

  v16 = (v15 + 16 * (v6 & 0x3F));
  if (*v16 == -1 && v16[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 6632, &v48);
    v18 = ((*(a1 + 6640) - *(a1 + 6632)) >> 3) - 1;
    *v16 = HIDWORD(v6);
    v16[1] = v18;
    v51 = v46;
    v19 = v18 & 0x3F;
    v20 = *(*(a1 + 6656) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 6656), v18)) + 24 * (v18 & 0x3F);
    *v20 = v49;
    v21 = v51;
    *(v20 + 16) = v50;
    v22 = v18 >> 6;
    v23 = *(a1 + 6712);
    v24 = *(a1 + 6704);
    v25 = v23 - v24;
    if (v18 >> 6 >= (v23 - v24) >> 3)
    {
      v26 = v22 + 1;
      v27 = v22 + 1 - (v25 >> 3);
      v28 = *(a1 + 6720);
      v45 = v23 - v24;
      if (v27 > (v28 - v23) >> 3)
      {
        v29 = v28 - v24;
        v30 = (v28 - v24) >> 2;
        if (v30 <= v26)
        {
          v30 = v22 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (!(v31 >> 61))
        {
          operator new();
        }

        goto LABEL_55;
      }

      v32 = 0;
      v33 = (v27 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v34 = vdupq_n_s64(v33);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1B33B0560)));
        if (v35.i8[0])
        {
          *(v23 + 8 * v32) = 0;
        }

        if (v35.i8[4])
        {
          *(v23 + 8 * v32 + 8) = 0;
        }

        v32 += 2;
      }

      while (v33 - ((v27 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v32);
      *(a1 + 6712) = v23 + 8 * v27;
      v36 = *(a1 + 6736);
      v37 = *(a1 + 6728);
      v38 = (v36 - v37) >> 4;
      if (v38 <= v22)
      {
        v39 = v26 - v38;
        v40 = *(a1 + 6744);
        if (v39 > (v40 - v36) >> 4)
        {
          v41 = v40 - v37;
          v42 = v41 >> 3;
          if (v41 >> 3 <= v26)
          {
            v42 = v22 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_55:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 6736), 16 * v39);
        *(a1 + 6736) = v36 + 16 * v39;
        v25 = v45;
      }

      else if (v26 < v38)
      {
        *(a1 + 6736) = v37 + 16 * v26;
      }

      v24 = *(a1 + 6704);
      if (v25 < (*(a1 + 6712) - v24))
      {
        operator new();
      }
    }

    v43 = *(v24 + 8 * v22) + 24 * v19;
    *v43 = *v21;
    *(v43 + 16) = v21[2];
    v21[1] = 0;
    v21[2] = 0;
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  return v6;
}

void sub_1B326B708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::Tile::Clipping,md::VoidKeyType>(uint64_t a1)
{
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v2 = *(a1 + 7392);
  v3 = *(a1 + 7408);
  if (*(a1 + 7384) == v2)
  {
    v4 = ((*(a1 + 7416) - v3) >> 3) | 0x100000000;
    v47.i64[0] = v4;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 7408, &v47);
  }

  else
  {
    v4 = *(v3 + 8 * *(v2 - 8));
    *(a1 + 7392) = v2 - 8;
  }

  v46 = v4;
  v47 = vdupq_n_s64(1uLL);
  LOWORD(v48) = 1;
  v5 = v4 >> 6;
  v6 = *(a1 + 7240);
  v7 = *(a1 + 7232);
  if (v5 >= (v6 - v7) >> 3)
  {
    v8 = v5 + 1;
    v9 = v5 + 1 - ((v6 - v7) >> 3);
    v10 = *(a1 + 7248);
    if (v9 > (v10 - v6) >> 3)
    {
      v11 = v10 - v7;
      if (v11 >> 2 > v8)
      {
        v8 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v8;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      goto LABEL_53;
    }

    bzero(*(a1 + 7240), 8 * v9);
    *(a1 + 7240) = v6 + 8 * v9;
    v7 = *(a1 + 7232);
  }

  v13 = *(v7 + 8 * v5);
  if (!v13)
  {
    operator new();
  }

  v14 = (v13 + 16 * (v4 & 0x3F));
  if (*v14 == -1 && v14[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 7256, &v46);
    v16 = ((*(a1 + 7264) - *(a1 + 7256)) >> 3) - 1;
    *v14 = HIDWORD(v4);
    v14[1] = v16;
    v49 = v44;
    v17 = v16 & 0x3F;
    v18 = *(*(a1 + 7280) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 7280), v16)) + 24 * (v16 & 0x3F);
    *v18 = v47;
    v19 = v49;
    *(v18 + 16) = v48;
    v20 = v16 >> 6;
    v21 = *(a1 + 7336);
    v22 = *(a1 + 7328);
    v23 = v21 - v22;
    if (v16 >> 6 >= (v21 - v22) >> 3)
    {
      v24 = v20 + 1;
      v25 = v20 + 1 - (v23 >> 3);
      v26 = *(a1 + 7344);
      v43 = v21 - v22;
      if (v25 > (v26 - v21) >> 3)
      {
        v27 = v26 - v22;
        v28 = (v26 - v22) >> 2;
        if (v28 <= v24)
        {
          v28 = v20 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (!(v29 >> 61))
        {
          operator new();
        }

        goto LABEL_53;
      }

      v30 = 0;
      v31 = (v25 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v32 = vdupq_n_s64(v31);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v30), xmmword_1B33B0560)));
        if (v33.i8[0])
        {
          *(v21 + 8 * v30) = 0;
        }

        if (v33.i8[4])
        {
          *(v21 + 8 * v30 + 8) = 0;
        }

        v30 += 2;
      }

      while (v31 - ((v25 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v30);
      *(a1 + 7336) = v21 + 8 * v25;
      v34 = *(a1 + 7360);
      v35 = *(a1 + 7352);
      v36 = (v34 - v35) >> 4;
      if (v36 <= v20)
      {
        v37 = v24 - v36;
        v38 = *(a1 + 7368);
        if (v37 > (v38 - v34) >> 4)
        {
          v39 = v38 - v35;
          v40 = v39 >> 3;
          if (v39 >> 3 <= v24)
          {
            v40 = v20 + 1;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFF0)
          {
            v40 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v40 >> 60))
          {
            operator new();
          }

LABEL_53:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 7360), 16 * v37);
        *(a1 + 7360) = v34 + 16 * v37;
        v23 = v43;
      }

      else if (v24 < v36)
      {
        *(a1 + 7360) = v35 + 16 * v24;
      }

      v22 = *(a1 + 7328);
      if (v23 < (*(a1 + 7336) - v22))
      {
        operator new();
      }
    }

    v41 = *(v22 + 8 * v20) + 24 * v17;
    *v41 = *v19;
    *(v41 + 16) = v19[2];
    v19[1] = 0;
    v19[2] = 0;
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  return v4;
}

void sub_1B326BCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::addToStorage(uint64_t a1, uint64_t a2, __int8 a3)
{
  v7 = *(a1 + 232);
  v5 = a1 + 232;
  v6 = v7;
  v8 = *(v5 - 16);
  if (*(v5 - 24) == v8)
  {
    v9 = ((*(a1 + 240) - v6) >> 3) | 0x100000000;
    v72 = v9;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v5, &v72);
  }

  else
  {
    v9 = *(v6 + 8 * *(v8 - 8));
    *(a1 + 216) = v8 - 8;
  }

  v71 = v9;
  v10 = v9 >> 6;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (v10 >= (v12 - v11) >> 3)
  {
    v13 = v10 + 1;
    v14 = v10 + 1 - ((v12 - v11) >> 3);
    v15 = *(a1 + 24);
    if (v14 > (v15 - v12) >> 3)
    {
      v16 = v15 - v11;
      if (v16 >> 2 > v13)
      {
        v13 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v13;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v17);
    }

    bzero(*(a1 + 16), 8 * v14);
    *(a1 + 16) = v12 + 8 * v14;
    v11 = *(a1 + 8);
  }

  v18 = *(v11 + 8 * v10);
  if (!v18)
  {
    operator new();
  }

  v19 = (v18 + 16 * (v9 & 0x3F));
  if (*v19 == -1 && v19[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 32, &v71);
    v21 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
    *v19 = HIDWORD(v9);
    v19[1] = v21;
    v22 = v21 & 0x3F;
    v23 = (*(*(a1 + 56) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 56), v21)) + 24 * v22);
    *v23 = vdupq_n_s64(1uLL);
    v23[1].i8[0] = 1;
    v23[1].i8[1] = a3;
    v24 = v21 >> 6;
    v26 = *(a1 + 104);
    v25 = *(a1 + 112);
    v27 = v25 - v26;
    v69 = v22;
    if (v21 >> 6 >= (v25 - v26) >> 3)
    {
      v28 = v24 + 1;
      v29 = v24 + 1 - (v27 >> 3);
      v30 = *(a1 + 120);
      if (v29 > (v30 - v25) >> 3)
      {
        v31 = v30 - v26;
        v32 = (v30 - v26) >> 2;
        if (v32 <= v28)
        {
          v32 = v24 + 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v32;
        }

        if (!(v33 >> 61))
        {
          operator new();
        }

        goto LABEL_80;
      }

      v34 = 0;
      v35 = (v29 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v36 = vdupq_n_s64(v35);
      do
      {
        v37 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(vdupq_n_s64(v34), xmmword_1B33B0560)));
        if (v37.i8[0])
        {
          *(v25 + 8 * v34) = 0;
        }

        if (v37.i8[4])
        {
          *(v25 + 8 * v34 + 8) = 0;
        }

        v34 += 2;
      }

      while (v35 - ((v29 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v34);
      *(a1 + 112) = v25 + 8 * v29;
      v38 = *(a1 + 128);
      v39 = *(a1 + 136);
      v40 = (v39 - v38) >> 4;
      if (v40 <= v24)
      {
        v41 = v28 - v40;
        v42 = *(a1 + 144);
        if (v41 > (v42 - v39) >> 4)
        {
          v43 = v42 - v38;
          v44 = v43 >> 3;
          if (v43 >> 3 <= v28)
          {
            v44 = v24 + 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF0)
          {
            v45 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v44;
          }

          if (!(v45 >> 60))
          {
            operator new();
          }

          goto LABEL_80;
        }

        bzero(*(a1 + 136), 16 * v41);
        *(a1 + 136) = v39 + 16 * v41;
        v22 = v21 & 0x3F;
      }

      else if (v28 < v40)
      {
        *(a1 + 136) = v38 + 16 * v28;
      }

      v26 = *(a1 + 104);
      if (v27 < (*(a1 + 112) - v26))
      {
        operator new();
      }
    }

    v46 = *(v26 + 8 * v24) + 24 * v22;
    *v46 = *a2;
    *(v46 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v48 = *(a1 + 152);
    v47 = *(a1 + 160);
    v49 = v47 - v48;
    if (v24 < (v47 - v48) >> 3)
    {
LABEL_78:
      *(*(v48 + 8 * v24) + 8 * v22) = 0;
      return v9;
    }

    v50 = v24 + 1;
    v51 = v24 + 1 - (v49 >> 3);
    v52 = *(a1 + 168);
    if (v51 > (v52 - v47) >> 3)
    {
      v53 = v52 - v48;
      v54 = (v52 - v48) >> 2;
      if (v54 <= v50)
      {
        v54 = v24 + 1;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v54;
      }

      if (!(v55 >> 61))
      {
        operator new();
      }

      goto LABEL_80;
    }

    v56 = 0;
    v57 = (v51 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v58 = vdupq_n_s64(v57);
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(vdupq_n_s64(v56), xmmword_1B33B0560)));
      if (v59.i8[0])
      {
        *(v47 + 8 * v56) = 0;
      }

      if (v59.i8[4])
      {
        *(v47 + 8 * v56 + 8) = 0;
      }

      v56 += 2;
    }

    while (v57 - ((v51 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v56);
    *(a1 + 160) = v47 + 8 * v51;
    v60 = *(a1 + 176);
    v61 = *(a1 + 184);
    v62 = (v61 - v60) >> 4;
    if (v62 > v24)
    {
      if (v50 < v62)
      {
        *(a1 + 184) = v60 + 16 * v50;
      }

      goto LABEL_76;
    }

    v63 = v50 - v62;
    v64 = *(a1 + 192);
    if (v63 <= (v64 - v61) >> 4)
    {
      bzero(*(a1 + 184), 16 * v63);
      *(a1 + 184) = v61 + 16 * v63;
      v22 = v69;
LABEL_76:
      v48 = *(a1 + 152);
      if (v49 < (*(a1 + 160) - v48))
      {
        operator new();
      }

      goto LABEL_78;
    }

    v65 = v64 - v60;
    v66 = v65 >> 3;
    if (v65 >> 3 <= v50)
    {
      v66 = v24 + 1;
    }

    if (v65 >= 0x7FFFFFFFFFFFFFF0)
    {
      v67 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = v66;
    }

    if (!(v67 >> 60))
    {
      operator new();
    }

LABEL_80:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return v9;
}

void sub_1B326C4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::Shadow,md::VoidKeyType>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v46[0] = a2;
  v46[1] = a2;
  v47 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 7600);
  v5 = *(a1 + 7616);
  if (*(a1 + 7592) == v4)
  {
    v6 = ((*(a1 + 7624) - v5) >> 3) | 0x100000000;
    v49.i64[0] = v6;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 7616, &v49);
  }

  else
  {
    v6 = *(v5 + 8 * *(v4 - 8));
    *(a1 + 7600) = v4 - 8;
  }

  v48 = v6;
  v49 = vdupq_n_s64(1uLL);
  LOWORD(v50) = 1;
  v7 = v6 >> 6;
  v8 = *(a1 + 7448);
  v9 = *(a1 + 7440);
  if (v7 >= (v8 - v9) >> 3)
  {
    v10 = v7 + 1;
    v11 = v7 + 1 - ((v8 - v9) >> 3);
    v12 = *(a1 + 7456);
    if (v11 > (v12 - v8) >> 3)
    {
      v13 = v12 - v9;
      if (v13 >> 2 > v10)
      {
        v10 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v10;
      }

      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_55;
    }

    bzero(*(a1 + 7448), 8 * v11);
    *(a1 + 7448) = v8 + 8 * v11;
    v9 = *(a1 + 7440);
  }

  v15 = *(v9 + 8 * v7);
  if (!v15)
  {
    operator new();
  }

  v16 = (v15 + 16 * (v6 & 0x3F));
  if (*v16 == -1 && v16[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 7464, &v48);
    v18 = ((*(a1 + 7472) - *(a1 + 7464)) >> 3) - 1;
    *v16 = HIDWORD(v6);
    v16[1] = v18;
    v51 = v46;
    v19 = v18 & 0x3F;
    v20 = *(*(a1 + 7488) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 7488), v18)) + 24 * (v18 & 0x3F);
    *v20 = v49;
    v21 = v51;
    *(v20 + 16) = v50;
    v22 = v18 >> 6;
    v23 = *(a1 + 7544);
    v24 = *(a1 + 7536);
    v25 = v23 - v24;
    if (v18 >> 6 >= (v23 - v24) >> 3)
    {
      v26 = v22 + 1;
      v27 = v22 + 1 - (v25 >> 3);
      v28 = *(a1 + 7552);
      v45 = v23 - v24;
      if (v27 > (v28 - v23) >> 3)
      {
        v29 = v28 - v24;
        v30 = (v28 - v24) >> 2;
        if (v30 <= v26)
        {
          v30 = v22 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (!(v31 >> 61))
        {
          operator new();
        }

        goto LABEL_55;
      }

      v32 = 0;
      v33 = (v27 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v34 = vdupq_n_s64(v33);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1B33B0560)));
        if (v35.i8[0])
        {
          *(v23 + 8 * v32) = 0;
        }

        if (v35.i8[4])
        {
          *(v23 + 8 * v32 + 8) = 0;
        }

        v32 += 2;
      }

      while (v33 - ((v27 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v32);
      *(a1 + 7544) = v23 + 8 * v27;
      v36 = *(a1 + 7568);
      v37 = *(a1 + 7560);
      v38 = (v36 - v37) >> 4;
      if (v38 <= v22)
      {
        v39 = v26 - v38;
        v40 = *(a1 + 7576);
        if (v39 > (v40 - v36) >> 4)
        {
          v41 = v40 - v37;
          v42 = v41 >> 3;
          if (v41 >> 3 <= v26)
          {
            v42 = v22 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_55:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 7568), 16 * v39);
        *(a1 + 7568) = v36 + 16 * v39;
        v25 = v45;
      }

      else if (v26 < v38)
      {
        *(a1 + 7568) = v37 + 16 * v26;
      }

      v24 = *(a1 + 7536);
      if (v25 < (*(a1 + 7544) - v24))
      {
        operator new();
      }
    }

    v43 = *(v24 + 8 * v22) + 24 * v19;
    *v43 = *v21;
    *(v43 + 16) = v21[2];
    v21[1] = 0;
    v21[2] = 0;
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  return v6;
}

void sub_1B326CAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>>(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 929, a2);
  if (result != a1[934])
  {
    v4 = (*(a1[936] + ((((result - a1[933]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[933]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::StyleCameraLighting,md::VoidKeyType>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v46[0] = a2;
  v46[1] = a2;
  v47 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 9536);
  v5 = *(a1 + 9552);
  if (*(a1 + 9528) == v4)
  {
    v6 = ((*(a1 + 9560) - v5) >> 3) | 0x100000000;
    v49.i64[0] = v6;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 9552, &v49);
  }

  else
  {
    v6 = *(v5 + 8 * *(v4 - 8));
    *(a1 + 9536) = v4 - 8;
  }

  v48 = v6;
  v49 = vdupq_n_s64(1uLL);
  LOWORD(v50) = 1;
  v7 = v6 >> 6;
  v8 = *(a1 + 9384);
  v9 = *(a1 + 9376);
  if (v7 >= (v8 - v9) >> 3)
  {
    v10 = v7 + 1;
    v11 = v7 + 1 - ((v8 - v9) >> 3);
    v12 = *(a1 + 9392);
    if (v11 > (v12 - v8) >> 3)
    {
      v13 = v12 - v9;
      if (v13 >> 2 > v10)
      {
        v10 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v10;
      }

      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_55;
    }

    bzero(*(a1 + 9384), 8 * v11);
    *(a1 + 9384) = v8 + 8 * v11;
    v9 = *(a1 + 9376);
  }

  v15 = *(v9 + 8 * v7);
  if (!v15)
  {
    operator new();
  }

  v16 = (v15 + 16 * (v6 & 0x3F));
  if (*v16 == -1 && v16[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 9400, &v48);
    v18 = ((*(a1 + 9408) - *(a1 + 9400)) >> 3) - 1;
    *v16 = HIDWORD(v6);
    v16[1] = v18;
    v51 = v46;
    v19 = v18 & 0x3F;
    v20 = *(*(a1 + 9424) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 9424), v18)) + 24 * (v18 & 0x3F);
    *v20 = v49;
    v21 = v51;
    *(v20 + 16) = v50;
    v22 = v18 >> 6;
    v23 = *(a1 + 9480);
    v24 = *(a1 + 9472);
    v25 = v23 - v24;
    if (v18 >> 6 >= (v23 - v24) >> 3)
    {
      v26 = v22 + 1;
      v27 = v22 + 1 - (v25 >> 3);
      v28 = *(a1 + 9488);
      v45 = v23 - v24;
      if (v27 > (v28 - v23) >> 3)
      {
        v29 = v28 - v24;
        v30 = (v28 - v24) >> 2;
        if (v30 <= v26)
        {
          v30 = v22 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (!(v31 >> 61))
        {
          operator new();
        }

        goto LABEL_55;
      }

      v32 = 0;
      v33 = (v27 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v34 = vdupq_n_s64(v33);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1B33B0560)));
        if (v35.i8[0])
        {
          *(v23 + 8 * v32) = 0;
        }

        if (v35.i8[4])
        {
          *(v23 + 8 * v32 + 8) = 0;
        }

        v32 += 2;
      }

      while (v33 - ((v27 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v32);
      *(a1 + 9480) = v23 + 8 * v27;
      v36 = *(a1 + 9504);
      v37 = *(a1 + 9496);
      v38 = (v36 - v37) >> 4;
      if (v38 <= v22)
      {
        v39 = v26 - v38;
        v40 = *(a1 + 9512);
        if (v39 > (v40 - v36) >> 4)
        {
          v41 = v40 - v37;
          v42 = v41 >> 3;
          if (v41 >> 3 <= v26)
          {
            v42 = v22 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_55:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 9504), 16 * v39);
        *(a1 + 9504) = v36 + 16 * v39;
        v25 = v45;
      }

      else if (v26 < v38)
      {
        *(a1 + 9504) = v37 + 16 * v26;
      }

      v24 = *(a1 + 9472);
      if (v25 < (*(a1 + 9480) - v24))
      {
        operator new();
      }
    }

    v43 = *(v24 + 8 * v22) + 24 * v19;
    *v43 = *v21;
    *(v43 + 16) = v21[2];
    v21[1] = 0;
    v21[2] = 0;
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  return v6;
}

void sub_1B326D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1, a2);
  if (v3 == a1[5])
  {
    return 0;
  }

  v5 = (((v3 - a1[4]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = 3 * (((v3 - a1[4]) >> 3) & 0x3F);
  result = *(a1[13] + v5) + 24 * (((v3 - a1[4]) >> 3) & 0x3F);
  ++*(*(a1[7] + v5) + 8 * v6);
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(void *a1, uint64_t a2)
{
  v4 = std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>::operator()[abi:nn200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (*(i + 10) == *(a2 + 24) && *(i + 28) == *(a2 + 12) && *(i + 9) == *(a2 + 20))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 24);
  do
  {
    v4 = *(a1 + 12 + v1);
    v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
    if (v4 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v2 ^= (v2 >> 2) + (v2 << 6) + v5;
    v1 += 4;
  }

  while (v1 != 12);
  v6 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v6 = 0;
  }

  return ((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + v2) ^ v6;
}

uint64_t md::updateRetainedCounter(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1, a2);
  if (result != a1[5])
  {
    v4 = (*(a1[7] + ((((result - a1[4]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[4]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::__unordered_map_hasher<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,md::PlanarParametersCacheKeyHasher,std::equal_to<md::PlanarParametersCacheKey>,true>,std::__unordered_map_equal<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::equal_to<md::PlanarParametersCacheKey>,md::PlanarParametersCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>>>::find<md::PlanarParametersCacheKey>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(a2 + v2);
    v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
    if (v4 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v3 ^= (v3 >> 2) + (v3 << 6) + v5;
    v2 += 4;
  }

  while (v2 != 16);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v3 - 0x61C8864680B583EBLL;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v6)
    {
      v9 = v7 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v7;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
    do
    {
      v12 = result[1];
      if (v12 == v7)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= *&v6)
          {
            v12 %= *&v6;
          }
        }

        else
        {
          v12 &= *&v6 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(void *a1, uint64_t a2)
{
  v4 = geo::Color<float,3,(geo::ColorSpace)0>::hash(a2 + 8);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 - 0x61C8864680B583EBLL;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 - 0x61C8864680B583EBLL;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v6;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[3] == *(a2 + 8) && *(result + 8) == *(a2 + 16))
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t geo::Color<float,3,(geo::ColorSpace)0>::hash(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = *(a1 + v1);
    v4 = LODWORD(v3) - 0x61C8864680B583EBLL;
    if (v3 == 0.0)
    {
      v4 = 0x9E3779B97F4A7C15;
    }

    v2 ^= (v2 >> 2) + (v2 << 6) + v4;
    v1 += 4;
  }

  while (v1 != 12);
  return ((v2 << 6) - 0x61C8864680B583EBLL + (v2 >> 2)) ^ v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>,std::__unordered_map_hasher<md::StyleGroundOcclusionCacheKey,std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>,md::StyleGroundOcclusionCacheKeyHasher,std::equal_to<md::StyleGroundOcclusionCacheKey>,true>,std::__unordered_map_equal<md::StyleGroundOcclusionCacheKey,std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>,std::equal_to<md::StyleGroundOcclusionCacheKey>,md::StyleGroundOcclusionCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>>>::find<md::StyleGroundOcclusionCacheKey>(void *a1, int a2, int a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (((a2 - 0x61C8864680B583EBLL) << 6) + a3 + ((a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (((a2 - 0x61C8864680B583EBLL) << 6) + a3 + ((a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 4) == a2 && *(result + 5) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1447, a2);
  if (result != a1[1452])
  {
    v4 = (*(a1[1454] + ((((result - a1[1451]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[1451]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,std::__unordered_map_hasher<md::ElevatedStrokeCacheKey,std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,md::ElevatedStrokeCacheKeyHasher,std::equal_to<md::ElevatedStrokeCacheKey>,true>,std::__unordered_map_equal<md::ElevatedStrokeCacheKey,std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,std::equal_to<md::ElevatedStrokeCacheKey>,md::ElevatedStrokeCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>>>::find<md::ElevatedStrokeCacheKey>(void *a1, uint64_t a2)
{
  v4 = md::DaVinciGroundRenderLayer::ElevatedStrokeCacheKeyHasher::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (*(i + 4) == *a2 && *(i + 20) == *(a2 + 4))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 10720);
  v4 = *(a1 + 10736);
  if (*(a1 + 10712) == v3)
  {
    v5 = ((*(a1 + 10744) - v4) >> 3) | 0x100000000;
    v80 = v5;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 10736, &v80);
  }

  else
  {
    v5 = *(v4 + 8 * *(v3 - 8));
    *(a1 + 10720) = v3 - 8;
  }

  v80 = v5;
  v6 = v5 >> 6;
  v7 = *(a1 + 10520);
  v8 = *(a1 + 10512);
  if (v6 >= (v7 - v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((v7 - v8) >> 3);
    v11 = *(a1 + 10528);
    if (v10 > (v11 - v7) >> 3)
    {
      v12 = v11 - v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
    }

    bzero(*(a1 + 10520), 8 * v10);
    *(a1 + 10520) = v7 + 8 * v10;
    v8 = *(a1 + 10512);
  }

  v14 = *(v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 10536, &v80);
    v17 = ((*(a1 + 10544) - *(a1 + 10536)) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v18 = v17 & 0x3F;
    v19 = *(*(a1 + 10560) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 10560), v17)) + 24 * v18;
    *v19 = xmmword_1B33B09D0;
    *(v19 + 16) = 0;
    v20 = v17 >> 6;
    v21 = *(a1 + 10616);
    v22 = *(a1 + 10608);
    v23 = v21 - v22;
    v78 = v18;
    if (v17 >> 6 >= (v21 - v22) >> 3)
    {
      v24 = v20 + 1;
      v25 = v20 + 1 - (v23 >> 3);
      v26 = *(a1 + 10624);
      if (v25 > (v26 - v21) >> 3)
      {
        v27 = v26 - v22;
        v28 = (v26 - v22) >> 2;
        if (v28 <= v24)
        {
          v28 = v20 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (!(v29 >> 61))
        {
          operator new();
        }

        goto LABEL_116;
      }

      v30 = 0;
      v31 = (v25 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v32 = vdupq_n_s64(v31);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v30), xmmword_1B33B0560)));
        if (v33.i8[0])
        {
          *(v21 + 8 * v30) = 0;
        }

        if (v33.i8[4])
        {
          *(v21 + 8 * v30 + 8) = 0;
        }

        v30 += 2;
      }

      while (v31 - ((v25 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v30);
      *(a1 + 10616) = v21 + 8 * v25;
      v34 = *(a1 + 10640);
      v35 = *(a1 + 10632);
      v36 = (v34 - v35) >> 4;
      if (v36 <= v20)
      {
        v37 = v24 - v36;
        v38 = *(a1 + 10648);
        if (v37 > (v38 - v34) >> 4)
        {
          v39 = v38 - v35;
          v40 = v39 >> 3;
          if (v39 >> 3 <= v24)
          {
            v40 = v20 + 1;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFF0)
          {
            v41 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          if (!(v41 >> 60))
          {
            operator new();
          }

          goto LABEL_116;
        }

        bzero(*(a1 + 10640), 16 * v37);
        *(a1 + 10640) = v34 + 16 * v37;
        v18 = v78;
      }

      else if (v24 < v36)
      {
        *(a1 + 10640) = v35 + 16 * v24;
      }

      v22 = *(a1 + 10608);
      if (v23 < (*(a1 + 10616) - v22))
      {
        operator new();
      }
    }

    v42 = *(v22 + 8 * v20) + 24 * v18;
    *v42 = 0uLL;
    *(v42 + 16) = 0;
    v43 = *(a1 + 10664);
    v44 = *(a1 + 10656);
    v45 = v43 - v44;
    if (v20 < (v43 - v44) >> 3)
    {
LABEL_78:
      *(*(v44 + 8 * v20) + 8 * v18) = 0;
      goto LABEL_79;
    }

    v46 = v20 + 1;
    v47 = v20 + 1 - (v45 >> 3);
    v48 = *(a1 + 10672);
    if (v47 > (v48 - v43) >> 3)
    {
      v49 = v48 - v44;
      v50 = (v48 - v44) >> 2;
      if (v50 <= v46)
      {
        v50 = v20 + 1;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v51 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v50;
      }

      if (!(v51 >> 61))
      {
        operator new();
      }

      goto LABEL_116;
    }

    v52 = 0;
    v53 = (v47 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v54 = vdupq_n_s64(v53);
    do
    {
      v55 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(vdupq_n_s64(v52), xmmword_1B33B0560)));
      if (v55.i8[0])
      {
        *(v43 + 8 * v52) = 0;
      }

      if (v55.i8[4])
      {
        *(v43 + 8 * v52 + 8) = 0;
      }

      v52 += 2;
    }

    while (v53 - ((v47 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v52);
    *(a1 + 10664) = v43 + 8 * v47;
    v56 = *(a1 + 10688);
    v57 = *(a1 + 10680);
    v58 = (v56 - v57) >> 4;
    if (v58 > v20)
    {
      if (v46 < v58)
      {
        *(a1 + 10688) = v57 + 16 * v46;
      }

      goto LABEL_76;
    }

    v59 = v46 - v58;
    v60 = *(a1 + 10696);
    if (v59 <= (v60 - v56) >> 4)
    {
      bzero(*(a1 + 10688), 16 * v59);
      *(a1 + 10688) = v56 + 16 * v59;
      v18 = v78;
LABEL_76:
      v44 = *(a1 + 10656);
      if (v45 < (*(a1 + 10664) - v44))
      {
        operator new();
      }

      goto LABEL_78;
    }

    v61 = v60 - v57;
    v62 = v61 >> 3;
    if (v61 >> 3 <= v46)
    {
      v62 = v20 + 1;
    }

    if (v61 >= 0x7FFFFFFFFFFFFFF0)
    {
      v63 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v63 = v62;
    }

    if (!(v63 >> 60))
    {
      operator new();
    }

LABEL_116:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_79:
  v64 = md::DaVinciGroundRenderLayer::ElevatedStrokeCacheKeyHasher::operator()(a2);
  v65 = *(a1 + 10864);
  if (!*&v65)
  {
    goto LABEL_97;
  }

  v66 = vcnt_s8(v65);
  v66.i16[0] = vaddlv_u8(v66);
  if (v66.u32[0] > 1uLL)
  {
    v67 = v64;
    if (v64 >= *&v65)
    {
      v67 = v64 % *&v65;
    }
  }

  else
  {
    v67 = (*&v65 - 1) & v64;
  }

  v68 = *(*(a1 + 10856) + 8 * v67);
  if (!v68 || (v69 = *v68) == 0)
  {
LABEL_97:
    operator new();
  }

  while (1)
  {
    v70 = v69[1];
    if (v70 == v64)
    {
      break;
    }

    if (v66.u32[0] > 1uLL)
    {
      if (v70 >= *&v65)
      {
        v70 %= *&v65;
      }
    }

    else
    {
      v70 &= *&v65 - 1;
    }

    if (v70 != v67)
    {
      goto LABEL_97;
    }

LABEL_96:
    v69 = *v69;
    if (!v69)
    {
      goto LABEL_97;
    }
  }

  if (*(v69 + 4) != *a2 || *(v69 + 20) != *(a2 + 4))
  {
    goto LABEL_96;
  }

  v69[4] = v5;
  v71 = *(a1 + 10904);
  if (!*&v71)
  {
    goto LABEL_115;
  }

  v72 = vcnt_s8(v71);
  v72.i16[0] = vaddlv_u8(v72);
  if (v72.u32[0] > 1uLL)
  {
    v73 = v5;
    if (v5 >= *&v71)
    {
      v73 = v5 % *&v71;
    }
  }

  else
  {
    v73 = (*&v71 - 1) & v5;
  }

  v74 = *(*(a1 + 10896) + 8 * v73);
  if (!v74 || (v75 = *v74) == 0)
  {
LABEL_115:
    operator new();
  }

  while (2)
  {
    v76 = v75[1];
    if (v76 != v5)
    {
      if (v72.u32[0] > 1uLL)
      {
        if (v76 >= *&v71)
        {
          v76 %= *&v71;
        }
      }

      else
      {
        v76 &= *&v71 - 1;
      }

      if (v76 != v73)
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    if (v75[2] != v5)
    {
LABEL_114:
      v75 = *v75;
      if (!v75)
      {
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  *(v75 + 6) = *a2;
  *(v75 + 7) = *(a2 + 4);
  *(v75 + 8) = *(a2 + 8);
  return v5;
}

void sub_1B326E83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  operator delete(v15);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

unint64_t md::VKMRenderResourcesStore::pop<ggl::DaVinci::ElevatedStroke>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1313, a2);
  if (v3 != a1[1318])
  {
    v5 = v3;
    v6 = a1[1317];
    v7 = a1[1351];
    if (a1[1350] == v7)
    {
      v8 = a1[1356];
      if (!v8)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v4 = (*(*v8 + 48))(v8);
    }

    else
    {
      v4 = *(v7 - 8);
      a1[1351] = v7 - 8;
    }

    v9 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v9 >> 47) ^ v9);
    v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    v12 = a1[1346];
    if (!*&v12)
    {
      goto LABEL_24;
    }

    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      if (v11 >= *&v12)
      {
        v14 = v11 % *&v12;
      }
    }

    else
    {
      v14 = v11 & (*&v12 - 1);
    }

    v15 = *(a1[1345] + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v11)
      {
        if (v16[2] == v4)
        {
          v18 = (((v5 - v6) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
          v19 = *(a1[1320] + v18);
          v20 = ((v5 - v6) >> 3) & 0x3F;
          v21 = *(a1[1326] + v18);
          v22 = *(a1[1332] + v18);
          *(v21 + 24 * v20) = v4;
          ++*(v19 + 24 * v20);
          *(v22 + 8 * v20) = v4;
          return v4;
        }
      }

      else
      {
        if (v13.u32[0] > 1uLL)
        {
          if (v17 >= *&v12)
          {
            v17 %= *&v12;
          }
        }

        else
        {
          v17 &= *&v12 - 1;
        }

        if (v17 != v14)
        {
          goto LABEL_24;
        }
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_24;
      }
    }
  }

  return 0;
}

unint64_t md::VKMRenderResourcesStore::addKey<md::StyleCacheKey>(uint64_t a1, _OWORD *a2, void *a3)
{
  v6 = *(a1 + 1632);
  v7 = *(a1 + 1648);
  if (*(a1 + 1624) == v6)
  {
    v8 = ((*(a1 + 1656) - v7) >> 3) | 0x100000000;
    v84 = v8;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 1648, &v84);
  }

  else
  {
    v8 = *(v7 + 8 * *(v6 - 8));
    *(a1 + 1632) = v6 - 8;
  }

  v84 = v8;
  v9 = v8 >> 6;
  v10 = *(a1 + 1432);
  v11 = *(a1 + 1424);
  if (v9 >= (v10 - v11) >> 3)
  {
    v12 = v9 + 1;
    v13 = v9 + 1 - ((v10 - v11) >> 3);
    v14 = *(a1 + 1440);
    if (v13 > (v14 - v10) >> 3)
    {
      v15 = v14 - v11;
      if (v15 >> 2 > v12)
      {
        v12 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v12;
      }

      if (!(v16 >> 61))
      {
        operator new();
      }

      goto LABEL_117;
    }

    bzero(*(a1 + 1432), 8 * v13);
    *(a1 + 1432) = v10 + 8 * v13;
    v11 = *(a1 + 1424);
  }

  v17 = *(v11 + 8 * v9);
  if (!v17)
  {
    operator new();
  }

  v18 = (v17 + 16 * (v8 & 0x3F));
  if (*v18 != -1 || v18[1] != 0)
  {
    goto LABEL_81;
  }

  v83 = a3;
  std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 1448, &v84);
  v20 = ((*(a1 + 1456) - *(a1 + 1448)) >> 3) - 1;
  *v18 = HIDWORD(v8);
  v18[1] = v20;
  v21 = v20 & 0x3F;
  v22 = (*(*(a1 + 1472) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 1472), v20)) + 24 * v21);
  *v22 = vdupq_n_s64(1uLL);
  v22[1].i16[0] = 1;
  v23 = v20 >> 6;
  v24 = *(a1 + 1528);
  v25 = *(a1 + 1520);
  v26 = v24 - v25;
  if (v20 >> 6 >= (v24 - v25) >> 3)
  {
    v27 = v23 + 1;
    v28 = v23 + 1 - (v26 >> 3);
    v29 = *(a1 + 1536);
    if (v28 > (v29 - v24) >> 3)
    {
      v30 = v29 - v25;
      v31 = (v29 - v25) >> 2;
      if (v31 <= v27)
      {
        v31 = v23 + 1;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        v32 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v32);
    }

    v33 = 0;
    v34 = (v28 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v35 = vdupq_n_s64(v34);
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v33), xmmword_1B33B0560)));
      if (v36.i8[0])
      {
        *(v24 + 8 * v33) = 0;
      }

      if (v36.i8[4])
      {
        *(v24 + 8 * v33 + 8) = 0;
      }

      v33 += 2;
    }

    while (v34 - ((v28 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v33);
    *(a1 + 1528) = v24 + 8 * v28;
    v37 = *(a1 + 1552);
    v38 = *(a1 + 1544);
    v39 = (v37 - v38) >> 4;
    if (v39 <= v23)
    {
      v41 = v27 - v39;
      v42 = *(a1 + 1560);
      if (v41 > (v42 - v37) >> 4)
      {
        v43 = v42 - v38;
        v44 = v43 >> 3;
        if (v43 >> 3 <= v27)
        {
          v44 = v23 + 1;
        }

        if (v43 >= 0x7FFFFFFFFFFFFFF0)
        {
          v45 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (!(v45 >> 60))
        {
          operator new();
        }

        goto LABEL_117;
      }

      bzero(*(a1 + 1552), 16 * v41);
      v40 = v37 + 16 * v41;
    }

    else
    {
      if (v27 >= v39)
      {
        goto LABEL_48;
      }

      v40 = v38 + 16 * v27;
    }

    *(a1 + 1552) = v40;
LABEL_48:
    v25 = *(a1 + 1520);
    if (v26 < (*(a1 + 1528) - v25))
    {
      operator new();
    }
  }

  *(*(v25 + 8 * v23) + 16 * v21) = *a2;
  v46 = *(a1 + 1576);
  v47 = *(a1 + 1568);
  v48 = v46 - v47;
  if (v23 >= (v46 - v47) >> 3)
  {
    v49 = v23 + 1;
    v50 = v23 + 1 - (v48 >> 3);
    v51 = *(a1 + 1584);
    if (v50 > (v51 - v46) >> 3)
    {
      v52 = v51 - v47;
      v53 = (v51 - v47) >> 2;
      if (v53 <= v49)
      {
        v53 = v23 + 1;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        v54 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v53;
      }

      if (!(v54 >> 61))
      {
        operator new();
      }

      goto LABEL_117;
    }

    v55 = 0;
    v56 = (v50 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v57 = vdupq_n_s64(v56);
    do
    {
      v58 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(vdupq_n_s64(v55), xmmword_1B33B0560)));
      if (v58.i8[0])
      {
        *(v46 + 8 * v55) = 0;
      }

      if (v58.i8[4])
      {
        *(v46 + 8 * v55 + 8) = 0;
      }

      v55 += 2;
    }

    while (v56 - ((v50 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v55);
    *(a1 + 1576) = v46 + 8 * v50;
    v59 = *(a1 + 1600);
    v60 = *(a1 + 1592);
    v61 = (v59 - v60) >> 4;
    if (v61 > v23)
    {
      if (v49 >= v61)
      {
        goto LABEL_78;
      }

      v62 = v60 + 16 * v49;
LABEL_77:
      *(a1 + 1600) = v62;
LABEL_78:
      v47 = *(a1 + 1568);
      if (v48 < (*(a1 + 1576) - v47))
      {
        operator new();
      }

      goto LABEL_80;
    }

    v63 = v49 - v61;
    v64 = *(a1 + 1608);
    if (v63 <= (v64 - v59) >> 4)
    {
      bzero(*(a1 + 1600), 16 * v63);
      v62 = v59 + 16 * v63;
      goto LABEL_77;
    }

    v65 = v64 - v60;
    v66 = v65 >> 3;
    if (v65 >> 3 <= v49)
    {
      v66 = v23 + 1;
    }

    if (v65 >= 0x7FFFFFFFFFFFFFF0)
    {
      v67 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = v66;
    }

    if (!(v67 >> 60))
    {
      operator new();
    }

LABEL_117:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_80:
  v68 = *(v47 + 8 * v23);
  a3 = v83;
  *(v68 + 8 * v21) = 0;
LABEL_81:
  v69 = *a3;
  v70 = *(a1 + 1776);
  if (!*&v70)
  {
    goto LABEL_98;
  }

  v71 = vcnt_s8(v70);
  v71.i16[0] = vaddlv_u8(v71);
  if (v71.u32[0] > 1uLL)
  {
    v72 = *a3;
    if (v69 >= *&v70)
    {
      v72 = v69 % *&v70;
    }
  }

  else
  {
    v72 = (*&v70 - 1) & v69;
  }

  v73 = *(*(a1 + 1768) + 8 * v72);
  if (!v73 || (v74 = *v73) == 0)
  {
LABEL_98:
    operator new();
  }

  while (1)
  {
    v75 = v74[1];
    if (v75 == v69)
    {
      break;
    }

    if (v71.u32[0] > 1uLL)
    {
      if (v75 >= *&v70)
      {
        v75 %= *&v70;
      }
    }

    else
    {
      v75 &= *&v70 - 1;
    }

    if (v75 != v72)
    {
      goto LABEL_98;
    }

LABEL_97:
    v74 = *v74;
    if (!v74)
    {
      goto LABEL_98;
    }
  }

  if (v74[2] != v69)
  {
    goto LABEL_97;
  }

  v74[3] = v8;
  v76 = *(a1 + 1816);
  if (!*&v76)
  {
    goto LABEL_116;
  }

  v77 = vcnt_s8(v76);
  v77.i16[0] = vaddlv_u8(v77);
  if (v77.u32[0] > 1uLL)
  {
    v78 = v8;
    if (v8 >= *&v76)
    {
      v78 = v8 % *&v76;
    }
  }

  else
  {
    v78 = (*&v76 - 1) & v8;
  }

  v79 = *(*(a1 + 1808) + 8 * v78);
  if (!v79 || (v80 = *v79) == 0)
  {
LABEL_116:
    operator new();
  }

  while (2)
  {
    v81 = v80[1];
    if (v81 != v8)
    {
      if (v77.u32[0] > 1uLL)
      {
        if (v81 >= *&v76)
        {
          v81 %= *&v76;
        }
      }

      else
      {
        v81 &= *&v76 - 1;
      }

      if (v81 != v78)
      {
        goto LABEL_116;
      }

      goto LABEL_115;
    }

    if (v80[2] != v8)
    {
LABEL_115:
      v80 = *v80;
      if (!v80)
      {
        goto LABEL_116;
      }

      continue;
    }

    break;
  }

  v80[3] = *a3;
  return v8;
}

uint64_t md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1, a2);
  if (v3 == a1[5])
  {
    return 0;
  }

  v5 = (((v3 - a1[4]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = ((v3 - a1[4]) >> 3) & 0x3F;
  result = *(a1[13] + v5) + 32 * v6;
  ++*(*(a1[7] + v5) + 24 * v6);
  return result;
}

unint64_t md::VKMRenderResourcesStore::addKey<md::StyleEmissiveColorCacheKey>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 4224);
  v7 = *(a1 + 4240);
  if (*(a1 + 4216) == v6)
  {
    v8 = ((*(a1 + 4248) - v7) >> 3) | 0x100000000;
    v86 = v8;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 4240, &v86);
  }

  else
  {
    v8 = *(v7 + 8 * *(v6 - 8));
    *(a1 + 4224) = v6 - 8;
  }

  v86 = v8;
  v9 = v8 >> 6;
  v10 = *(a1 + 4024);
  v11 = *(a1 + 4016);
  if (v9 >= (v10 - v11) >> 3)
  {
    v12 = v9 + 1;
    v13 = v9 + 1 - ((v10 - v11) >> 3);
    v14 = *(a1 + 4032);
    if (v13 > (v14 - v10) >> 3)
    {
      v15 = v14 - v11;
      if (v15 >> 2 > v12)
      {
        v12 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v16);
    }

    bzero(*(a1 + 4024), 8 * v13);
    *(a1 + 4024) = v10 + 8 * v13;
    v11 = *(a1 + 4016);
  }

  v17 = *(v11 + 8 * v9);
  if (!v17)
  {
    operator new();
  }

  v18 = (v17 + 16 * (v8 & 0x3F));
  if (*v18 == -1 && v18[1] == 0)
  {
    v85 = a3;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 4040, &v86);
    v20 = ((*(a1 + 4048) - *(a1 + 4040)) >> 3) - 1;
    *v18 = HIDWORD(v8);
    v18[1] = v20;
    v21 = v20 & 0x3F;
    v22 = (*(*(a1 + 4064) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 4064), v20)) + 24 * v21);
    *v22 = vdupq_n_s64(1uLL);
    v22[1].i16[0] = 1;
    v23 = v20 >> 6;
    v24 = *(a1 + 4120);
    v25 = *(a1 + 4112);
    v26 = v24 - v25;
    if (v20 >> 6 >= (v24 - v25) >> 3)
    {
      v27 = v23 + 1;
      v28 = v23 + 1 - (v26 >> 3);
      v29 = *(a1 + 4128);
      if (v28 > (v29 - v24) >> 3)
      {
        v30 = v29 - v25;
        v31 = (v29 - v25) >> 2;
        if (v31 <= v27)
        {
          v31 = v23 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v32);
      }

      v33 = 0;
      v34 = (v28 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v35 = vdupq_n_s64(v34);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v33), xmmword_1B33B0560)));
        if (v36.i8[0])
        {
          *(v24 + 8 * v33) = 0;
        }

        if (v36.i8[4])
        {
          *(v24 + 8 * v33 + 8) = 0;
        }

        v33 += 2;
      }

      while (v34 - ((v28 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v33);
      *(a1 + 4120) = v24 + 8 * v28;
      v37 = *(a1 + 4144);
      v38 = *(a1 + 4136);
      v39 = &v37[-v38] >> 4;
      if (v39 <= v23)
      {
        v83 = v21;
        v40 = v27 - v39;
        v41 = *(a1 + 4152);
        if (v40 > (v41 - v37) >> 4)
        {
          v42 = v41 - v38;
          v43 = v42 >> 3;
          if (v42 >> 3 <= v27)
          {
            v43 = v23 + 1;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFF0)
          {
            v44 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v43;
          }

          if (!(v44 >> 60))
          {
            operator new();
          }

          goto LABEL_114;
        }

        bzero(v37, 16 * v40);
        *(a1 + 4144) = &v37[16 * v40];
        v21 = v83;
      }

      else if (v27 < v39)
      {
        *(a1 + 4144) = v38 + 16 * v27;
      }

      v25 = *(a1 + 4112);
      if (v26 < (*(a1 + 4120) - v25))
      {
        operator new();
      }
    }

    v45 = *(v25 + 8 * v23) + 24 * v21;
    *v45 = *a2;
    v46 = *(a2 + 8);
    *(v45 + 16) = *(a2 + 16);
    *(v45 + 8) = v46;
    v47 = *(a1 + 4168);
    v48 = *(a1 + 4160);
    v49 = v47 - v48;
    if (v23 < (v47 - v48) >> 3)
    {
LABEL_77:
      v68 = *(v48 + 8 * v23);
      a3 = v85;
      *(v68 + 8 * v21) = 0;
      goto LABEL_78;
    }

    v50 = v23 + 1;
    v51 = v23 + 1 - (v49 >> 3);
    v52 = *(a1 + 4176);
    if (v51 > (v52 - v47) >> 3)
    {
      v53 = v52 - v48;
      v54 = (v52 - v48) >> 2;
      if (v54 <= v50)
      {
        v54 = v23 + 1;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v54;
      }

      if (!(v55 >> 61))
      {
        operator new();
      }

      goto LABEL_114;
    }

    v56 = 0;
    v57 = (v51 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v58 = vdupq_n_s64(v57);
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v58, vorrq_s8(vdupq_n_s64(v56), xmmword_1B33B0560)));
      if (v59.i8[0])
      {
        *(v47 + 8 * v56) = 0;
      }

      if (v59.i8[4])
      {
        *(v47 + 8 * v56 + 8) = 0;
      }

      v56 += 2;
    }

    while (v57 - ((v51 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v56);
    *(a1 + 4168) = v47 + 8 * v51;
    v60 = *(a1 + 4192);
    v61 = *(a1 + 4184);
    v62 = &v60[-v61] >> 4;
    if (v62 > v23)
    {
      if (v50 < v62)
      {
        *(a1 + 4192) = v61 + 16 * v50;
      }

      goto LABEL_75;
    }

    v84 = v21;
    v63 = v50 - v62;
    v64 = *(a1 + 4200);
    if (v63 <= (v64 - v60) >> 4)
    {
      bzero(v60, 16 * v63);
      *(a1 + 4192) = &v60[16 * v63];
      v21 = v84;
LABEL_75:
      v48 = *(a1 + 4160);
      if (v49 < (*(a1 + 4168) - v48))
      {
        operator new();
      }

      goto LABEL_77;
    }

    v65 = v64 - v61;
    v66 = v65 >> 3;
    if (v65 >> 3 <= v50)
    {
      v66 = v23 + 1;
    }

    if (v65 >= 0x7FFFFFFFFFFFFFF0)
    {
      v67 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = v66;
    }

    if (!(v67 >> 60))
    {
      operator new();
    }

LABEL_114:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_78:
  v69 = *a3;
  v70 = *(a1 + 4368);
  if (!*&v70)
  {
    goto LABEL_95;
  }

  v71 = vcnt_s8(v70);
  v71.i16[0] = vaddlv_u8(v71);
  if (v71.u32[0] > 1uLL)
  {
    v72 = *a3;
    if (v69 >= *&v70)
    {
      v72 = v69 % *&v70;
    }
  }

  else
  {
    v72 = (*&v70 - 1) & v69;
  }

  v73 = *(*(a1 + 4360) + 8 * v72);
  if (!v73 || (v74 = *v73) == 0)
  {
LABEL_95:
    operator new();
  }

  while (1)
  {
    v75 = v74[1];
    if (v75 == v69)
    {
      break;
    }

    if (v71.u32[0] > 1uLL)
    {
      if (v75 >= *&v70)
      {
        v75 %= *&v70;
      }
    }

    else
    {
      v75 &= *&v70 - 1;
    }

    if (v75 != v72)
    {
      goto LABEL_95;
    }

LABEL_94:
    v74 = *v74;
    if (!v74)
    {
      goto LABEL_95;
    }
  }

  if (v74[2] != v69)
  {
    goto LABEL_94;
  }

  v74[3] = v8;
  v76 = *(a1 + 4408);
  if (!*&v76)
  {
    goto LABEL_113;
  }

  v77 = vcnt_s8(v76);
  v77.i16[0] = vaddlv_u8(v77);
  if (v77.u32[0] > 1uLL)
  {
    v78 = v8;
    if (v8 >= *&v76)
    {
      v78 = v8 % *&v76;
    }
  }

  else
  {
    v78 = (*&v76 - 1) & v8;
  }

  v79 = *(*(a1 + 4400) + 8 * v78);
  if (!v79 || (v80 = *v79) == 0)
  {
LABEL_113:
    operator new();
  }

  while (2)
  {
    v81 = v80[1];
    if (v81 != v8)
    {
      if (v77.u32[0] > 1uLL)
      {
        if (v81 >= *&v76)
        {
          v81 %= *&v76;
        }
      }

      else
      {
        v81 &= *&v76 - 1;
      }

      if (v81 != v78)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    if (v80[2] != v8)
    {
LABEL_112:
      v80 = *v80;
      if (!v80)
      {
        goto LABEL_113;
      }

      continue;
    }

    break;
  }

  v80[3] = *a3;
  return v8;
}

uint64_t md::getStorage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1, a2);
  if (v3 == a1[5])
  {
    return 0;
  }

  v5 = (v3 - a1[4]) >> 3;
  v6 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  LODWORD(v5) = v5 & 0x3F;
  result = *(a1[13] + v6) + 20 * v5;
  ++*(*(a1[7] + v6) + 24 * v5);
  return result;
}

uint64_t md::getStorage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1, a2);
  if (v3 == a1[5])
  {
    return 0;
  }

  v5 = (((v3 - a1[4]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = ((v3 - a1[4]) >> 3) & 0x3F;
  result = *(a1[13] + v5) + 16 * v6;
  ++*(*(a1[7] + v5) + 24 * v6);
  return result;
}

void md::VKMRenderResourcesStore::clearRenderItemGroup(void *a1, unint64_t *a2, int a3)
{
  v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1 + 24, *a2);
  if (v6)
  {
    v7 = v6;
    v8 = v6[3];
    v9 = v6[4];
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8 && a1[31])
        {
          (**v10)(*v8);
          *v10 = a1[34];
          a1[34] = v10;
        }

        ++v8;
      }

      while (v8 != v9);
      v8 = v7[3];
    }

    v7[4] = v8;
  }

  if (a3)
  {
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1 + 24, *a2);
    if (v11)
    {
      v12 = a1[25];
      v13 = v11[1];
      v14 = vcnt_s8(v12);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        if (v13 >= *&v12)
        {
          v13 %= *&v12;
        }
      }

      else
      {
        v13 &= *&v12 - 1;
      }

      v15 = a1[24];
      v16 = *(v15 + 8 * v13);
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16 != v11);
      if (v17 == a1 + 26)
      {
        goto LABEL_29;
      }

      v18 = v17[1];
      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *&v12)
        {
          v18 %= *&v12;
        }
      }

      else
      {
        v18 &= *&v12 - 1;
      }

      if (v18 != v13)
      {
LABEL_29:
        if (!*v11)
        {
          goto LABEL_30;
        }

        v19 = *(*v11 + 8);
        if (v14.u32[0] > 1uLL)
        {
          if (v19 >= *&v12)
          {
            v19 %= *&v12;
          }
        }

        else
        {
          v19 &= *&v12 - 1;
        }

        if (v19 != v13)
        {
LABEL_30:
          *(v15 + 8 * v13) = 0;
        }
      }

      v20 = *v11;
      if (*v11)
      {
        v21 = *(v20 + 8);
        if (v14.u32[0] > 1uLL)
        {
          if (v21 >= *&v12)
          {
            v21 %= *&v12;
          }
        }

        else
        {
          v21 &= *&v12 - 1;
        }

        if (v21 != v13)
        {
          *(a1[24] + 8 * v21) = v17;
          v20 = *v11;
        }
      }

      *v17 = v20;
      *v11 = 0;
      --a1[27];

      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v11);
    }
  }
}

unint64_t md::VKMRenderResourcesStore::createRenderableRegistryHandle(md::VKMRenderResourcesStore *this, const gdc::Registry *a2)
{
  v45 = a2;
  v3 = *(this + 1685);
  v4 = *(this + 1687);
  if (*(this + 1684) == v3)
  {
    v5 = ((*(this + 1688) - v4) >> 3) | 0x100000000;
    v47.i64[0] = v5;
    std::vector<geo::handle<gdc::tf::Taskflow>>::emplace_back<geo::handle<gdc::tf::Taskflow>>(this + 13496, &v47);
  }

  else
  {
    v5 = *(v4 + 8 * *(v3 - 8));
    *(this + 1685) = v3 - 8;
  }

  v46 = v5;
  v47 = vdupq_n_s64(1uLL);
  LOWORD(v48) = 1;
  v6 = v5 >> 6;
  v7 = *(this + 1666);
  v8 = *(this + 1665);
  if (v6 >= (v7 - v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((v7 - v8) >> 3);
    v11 = *(this + 1667);
    if (v10 > (v11 - v7) >> 3)
    {
      v12 = v11 - v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      goto LABEL_52;
    }

    bzero(*(this + 1666), 8 * v10);
    *(this + 1666) = v7 + 8 * v10;
    v8 = *(this + 1665);
  }

  v14 = *(v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::handle<gdc::tf::Taskflow>>::emplace_back<geo::handle<gdc::tf::Taskflow>>(this + 13344, &v46);
    v17 = ((*(this + 1669) - *(this + 1668)) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v49 = &v45;
    v18 = v17 & 0x3F;
    v19 = *(*(this + 1671) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(this + 1671, v17)) + 24 * v18;
    v20 = v49;
    *(v19 + 16) = v48;
    *v19 = v47;
    v21 = v17 >> 6;
    v22 = *(this + 1678);
    v23 = *(this + 1677);
    v24 = v22 - v23;
    if (v17 >> 6 >= (v22 - v23) >> 3)
    {
      v25 = v21 + 1;
      v26 = v21 + 1 - (v24 >> 3);
      v27 = *(this + 1679);
      if (v26 > (v27 - v22) >> 3)
      {
        v28 = v27 - v23;
        v29 = (v27 - v23) >> 2;
        if (v29 <= v25)
        {
          v29 = v21 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (!(v30 >> 61))
        {
          operator new();
        }

        goto LABEL_52;
      }

      v31 = 0;
      v32 = (v26 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v33 = vdupq_n_s64(v32);
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_1B33B0560)));
        if (v34.i8[0])
        {
          *(v22 + 8 * v31) = 0;
        }

        if (v34.i8[4])
        {
          *(v22 + 8 * v31 + 8) = 0;
        }

        v31 += 2;
      }

      while (v32 - ((v26 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v31);
      *(this + 1678) = v22 + 8 * v26;
      v35 = *(this + 1681);
      v36 = *(this + 1680);
      v37 = &v35[-v36] >> 4;
      if (v37 <= v21)
      {
        v44 = v18;
        v38 = v25 - v37;
        v39 = *(this + 1682);
        if (v38 > (v39 - v35) >> 4)
        {
          v40 = v39 - v36;
          v41 = v40 >> 3;
          if (v40 >> 3 <= v25)
          {
            v41 = v21 + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_52:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v35, 16 * v38);
        *(this + 1681) = &v35[16 * v38];
        v18 = v44;
      }

      else if (v25 < v37)
      {
        *(this + 1681) = v36 + 16 * v25;
      }

      v23 = *(this + 1677);
      if (v24 < (*(this + 1678) - v23))
      {
        operator new();
      }
    }

    *(*(v23 + 8 * v21) + 8 * v18) = *v20;
  }

  return v5;
}

unint64_t md::VKMRenderResourcesStore::createBaseMapRenderableItemHandle(md::VKMRenderResourcesStore *this, md::BaseMapTileDataRenderable *a2)
{
  v45 = a2;
  v3 = *(this + 1711);
  v4 = *(this + 1713);
  if (*(this + 1710) == v3)
  {
    v5 = ((*(this + 1714) - v4) >> 3) | 0x100000000;
    v47.i64[0] = v5;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this + 13704, &v47);
  }

  else
  {
    v5 = *(v4 + 8 * *(v3 - 8));
    *(this + 1711) = v3 - 8;
  }

  v46 = v5;
  v47 = vdupq_n_s64(1uLL);
  LOWORD(v48) = 1;
  v6 = v5 >> 6;
  v7 = *(this + 1692);
  v8 = *(this + 1691);
  if (v6 >= (v7 - v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((v7 - v8) >> 3);
    v11 = *(this + 1693);
    if (v10 > (v11 - v7) >> 3)
    {
      v12 = v11 - v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      goto LABEL_52;
    }

    bzero(*(this + 1692), 8 * v10);
    *(this + 1692) = v7 + 8 * v10;
    v8 = *(this + 1691);
  }

  v14 = *(v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this + 13552, &v46);
    v17 = ((*(this + 1695) - *(this + 1694)) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v49 = &v45;
    v18 = v17 & 0x3F;
    v19 = *(*(this + 1697) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(this + 1697, v17)) + 24 * v18;
    v20 = v49;
    *(v19 + 16) = v48;
    *v19 = v47;
    v21 = v17 >> 6;
    v22 = *(this + 1704);
    v23 = *(this + 1703);
    v24 = v22 - v23;
    if (v17 >> 6 >= (v22 - v23) >> 3)
    {
      v25 = v21 + 1;
      v26 = v21 + 1 - (v24 >> 3);
      v27 = *(this + 1705);
      if (v26 > (v27 - v22) >> 3)
      {
        v28 = v27 - v23;
        v29 = (v27 - v23) >> 2;
        if (v29 <= v25)
        {
          v29 = v21 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (!(v30 >> 61))
        {
          operator new();
        }

        goto LABEL_52;
      }

      v31 = 0;
      v32 = (v26 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v33 = vdupq_n_s64(v32);
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_1B33B0560)));
        if (v34.i8[0])
        {
          *(v22 + 8 * v31) = 0;
        }

        if (v34.i8[4])
        {
          *(v22 + 8 * v31 + 8) = 0;
        }

        v31 += 2;
      }

      while (v32 - ((v26 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v31);
      *(this + 1704) = v22 + 8 * v26;
      v35 = *(this + 1707);
      v36 = *(this + 1706);
      v37 = &v35[-v36] >> 4;
      if (v37 <= v21)
      {
        v44 = v18;
        v38 = v25 - v37;
        v39 = *(this + 1708);
        if (v38 > (v39 - v35) >> 4)
        {
          v40 = v39 - v36;
          v41 = v40 >> 3;
          if (v40 >> 3 <= v25)
          {
            v41 = v21 + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_52:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v35, 16 * v38);
        *(this + 1707) = &v35[16 * v38];
        v18 = v44;
      }

      else if (v25 < v37)
      {
        *(this + 1707) = v36 + 16 * v25;
      }

      v23 = *(this + 1703);
      if (v24 < (*(this + 1704) - v23))
      {
        operator new();
      }
    }

    *(*(v23 + 8 * v21) + 8 * v18) = *v20;
  }

  return v5;
}

unint64_t md::VKMRenderResourcesStore::createAssociationtemHandle(md::VKMRenderResourcesStore *this)
{
  v53 = 0;
  v51 = 0u;
  *__p = 0u;
  *v50 = 0u;
  v2 = *(this + 1737);
  v3 = *(this + 1739);
  if (*(this + 1736) == v2)
  {
    v4 = ((*(this + 1740) - v3) >> 3) | 0x100000000;
    v55.i64[0] = v4;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this + 13912, &v55);
  }

  else
  {
    v4 = *(v3 + 8 * *(v2 - 8));
    *(this + 1737) = v2 - 8;
  }

  v54 = v4;
  v55 = vdupq_n_s64(1uLL);
  LOWORD(v56) = 1;
  v5 = v4 >> 6;
  v6 = *(this + 1718);
  v7 = *(this + 1717);
  if (v5 >= (v6 - v7) >> 3)
  {
    v8 = v5 + 1;
    v9 = v5 + 1 - ((v6 - v7) >> 3);
    v10 = *(this + 1719);
    if (v9 > (v10 - v6) >> 3)
    {
      v11 = v10 - v7;
      if (v11 >> 2 > v8)
      {
        v8 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v8;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      goto LABEL_72;
    }

    bzero(*(this + 1718), 8 * v9);
    *(this + 1718) = v6 + 8 * v9;
    v7 = *(this + 1717);
  }

  v13 = *(v7 + 8 * v5);
  if (!v13)
  {
    operator new();
  }

  v14 = (v13 + 16 * (v4 & 0x3F));
  if (*v14 != -1 || v14[1] != 0)
  {
    goto LABEL_50;
  }

  std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this + 13760, &v54);
  v16 = ((*(this + 1721) - *(this + 1720)) >> 3) - 1;
  *v14 = HIDWORD(v4);
  v14[1] = v16;
  v57 = v50;
  v17 = v16 & 0x3F;
  v18 = *(*(this + 1723) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(this + 1723, v16)) + 24 * (v16 & 0x3F);
  *v18 = v55;
  *(v18 + 16) = v56;
  v19 = v57;
  v20 = v16 >> 6;
  v21 = *(this + 1730);
  v22 = *(this + 1729);
  v23 = v21 - v22;
  if (v16 >> 6 >= (v21 - v22) >> 3)
  {
    v24 = v20 + 1;
    v25 = v20 + 1 - (v23 >> 3);
    v26 = *(this + 1731);
    v49 = v21 - v22;
    if (v25 > (v26 - v21) >> 3)
    {
      v27 = v26 - v22;
      v28 = (v26 - v22) >> 2;
      if (v28 <= v24)
      {
        v28 = v20 + 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

      goto LABEL_72;
    }

    v30 = 0;
    v31 = (v25 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v32 = vdupq_n_s64(v31);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v30), xmmword_1B33B0560)));
      if (v33.i8[0])
      {
        *(v21 + 8 * v30) = 0;
      }

      if (v33.i8[4])
      {
        *(v21 + 8 * v30 + 8) = 0;
      }

      v30 += 2;
    }

    while (v31 - ((v25 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v30);
    *(this + 1730) = v21 + 8 * v25;
    v34 = *(this + 1733);
    v35 = *(this + 1732);
    v36 = (v34 - v35) >> 4;
    if (v36 <= v20)
    {
      v37 = v24 - v36;
      v38 = *(this + 1734);
      if (v37 > (v38 - v34) >> 4)
      {
        v39 = v38 - v35;
        v40 = v39 >> 3;
        if (v39 >> 3 <= v24)
        {
          v40 = v20 + 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF0)
        {
          v40 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (!(v40 >> 60))
        {
          operator new();
        }

LABEL_72:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(this + 1733), 16 * v37);
      *(this + 1733) = v34 + 16 * v37;
      v23 = v49;
    }

    else if (v24 < v36)
    {
      *(this + 1733) = v35 + 16 * v24;
    }

    v22 = *(this + 1729);
    if (v23 < (*(this + 1730) - v22))
    {
      operator new();
    }
  }

  v41 = (*(v22 + 8 * v20) + 56 * v17);
  *v41 = *v19;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = 0;
  *(v41 + 1) = *(v19 + 1);
  v41[3] = v19[3];
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
  v41[4] = 0;
  v41[5] = 0;
  v41[6] = 0;
  *(v41 + 2) = *(v19 + 2);
  v41[6] = v19[6];
  v19[4] = 0;
  v19[5] = 0;
  v19[6] = 0;
LABEL_50:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50[1])
  {
    *&v51 = v50[1];
    operator delete(v50[1]);
  }

  v42 = *(this + 200);
  if (!*&v42)
  {
    goto LABEL_71;
  }

  v43 = vcnt_s8(v42);
  v43.i16[0] = vaddlv_u8(v43);
  if (v43.u32[0] > 1uLL)
  {
    v44 = v4;
    if (v4 >= *&v42)
    {
      v44 = v4 % *&v42;
    }
  }

  else
  {
    v44 = (*&v42 - 1) & v4;
  }

  v45 = *(*(this + 24) + 8 * v44);
  if (!v45 || (v46 = *v45) == 0)
  {
LABEL_71:
    operator new();
  }

  while (1)
  {
    v47 = v46[1];
    if (v47 == v4)
    {
      break;
    }

    if (v43.u32[0] > 1uLL)
    {
      if (v47 >= *&v42)
      {
        v47 %= *&v42;
      }
    }

    else
    {
      v47 &= *&v42 - 1;
    }

    if (v47 != v44)
    {
      goto LABEL_71;
    }

LABEL_70:
    v46 = *v46;
    if (!v46)
    {
      goto LABEL_71;
    }
  }

  if (v46[2] != v4)
  {
    goto LABEL_70;
  }

  return v4;
}

unint64_t md::VKMRenderResourcesStore::getGlobeMatrix(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1561];
  if (v2 < (a1[1562] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[1564];
    v7 = v6 + 8 * v5[1];
  }

  else
  {
    v7 = a1[1565];
    v6 = a1[1564];
  }

  v8 = (v7 - v6) >> 3;
  v9 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v10 = v8 & 0x3F;
  v11 = *(a1[1573] + v9) + ((v8 & 0x3F) << 7);
  ++*(*(a1[1567] + v9) + 24 * v10);
  return v11;
}

unint64_t md::VKMRenderResourcesStore::createSharedTileMatrix(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v62[4] = *(a2 + 64);
  v62[5] = v3;
  v4 = *(a2 + 112);
  v62[6] = *(a2 + 96);
  v62[7] = v4;
  v5 = *(a2 + 16);
  v62[0] = *a2;
  v62[1] = v5;
  v6 = *(a2 + 48);
  v62[2] = *(a2 + 32);
  v62[3] = v6;
  gm::inverse<double>(&v63, a2);
  v7 = *(a1 + 12856);
  v8 = *(a1 + 12872);
  if (*(a1 + 12848) == v7)
  {
    v9 = ((*(a1 + 12880) - v8) >> 3) | 0x100000000;
    v65.i64[0] = v9;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 12872, &v65);
  }

  else
  {
    v9 = *(v8 + 8 * *(v7 - 8));
    *(a1 + 12856) = v7 - 8;
  }

  v64 = v9;
  v65 = vdupq_n_s64(1uLL);
  LOWORD(v66) = 1;
  v10 = v9 >> 6;
  v11 = *(a1 + 12704);
  v12 = *(a1 + 12696);
  if (v10 >= (v11 - v12) >> 3)
  {
    v13 = v10 + 1;
    v14 = v10 + 1 - ((v11 - v12) >> 3);
    v15 = *(a1 + 12712);
    if (v14 > (v15 - v11) >> 3)
    {
      v16 = v15 - v12;
      if (v16 >> 2 > v13)
      {
        v13 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v13;
      }

      if (!(v17 >> 61))
      {
        operator new();
      }

      goto LABEL_52;
    }

    bzero(*(a1 + 12704), 8 * v14);
    *(a1 + 12704) = v11 + 8 * v14;
    v12 = *(a1 + 12696);
  }

  v18 = *(v12 + 8 * v10);
  if (!v18)
  {
    operator new();
  }

  v19 = (v18 + 16 * (v9 & 0x3F));
  if (*v19 == -1 && v19[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 12720, &v64);
    v21 = ((*(a1 + 12728) - *(a1 + 12720)) >> 3) - 1;
    *v19 = HIDWORD(v9);
    v19[1] = v21;
    v67 = v62;
    v61 = v21 & 0x3F;
    v22 = *(*(a1 + 12744) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 12744), v21)) + 24 * v61;
    *(v22 + 16) = v66;
    *v22 = v65;
    v23 = v67;
    v24 = v21 >> 6;
    v25 = *(a1 + 12800);
    v26 = *(a1 + 12792);
    v27 = v25 - v26;
    if (v21 >> 6 >= (v25 - v26) >> 3)
    {
      v28 = v24 + 1;
      v29 = v24 + 1 - (v27 >> 3);
      v30 = *(a1 + 12808);
      v60 = v25 - v26;
      if (v29 > (v30 - v25) >> 3)
      {
        v31 = v30 - v26;
        v32 = (v30 - v26) >> 2;
        if (v32 <= v28)
        {
          v32 = v24 + 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v32;
        }

        if (!(v33 >> 61))
        {
          operator new();
        }

        goto LABEL_52;
      }

      v34 = 0;
      v35 = (v29 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v36 = vdupq_n_s64(v35);
      do
      {
        v37 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(vdupq_n_s64(v34), xmmword_1B33B0560)));
        if (v37.i8[0])
        {
          *(v25 + 8 * v34) = 0;
        }

        if (v37.i8[4])
        {
          *(v25 + 8 * v34 + 8) = 0;
        }

        v34 += 2;
      }

      while (v35 - ((v29 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v34);
      *(a1 + 12800) = v25 + 8 * v29;
      v38 = *(a1 + 12824);
      v39 = *(a1 + 12816);
      v40 = (v38 - v39) >> 4;
      if (v40 <= v24)
      {
        v41 = v28 - v40;
        v42 = *(a1 + 12832);
        if (v41 > (v42 - v38) >> 4)
        {
          v43 = v42 - v39;
          v44 = v43 >> 3;
          if (v43 >> 3 <= v28)
          {
            v44 = v24 + 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF0)
          {
            v45 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v44;
          }

          if (!(v45 >> 60))
          {
            operator new();
          }

LABEL_52:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 12824), 16 * v41);
        *(a1 + 12824) = v38 + 16 * v41;
        v27 = v60;
      }

      else if (v28 < v40)
      {
        *(a1 + 12824) = v39 + 16 * v28;
      }

      v26 = *(a1 + 12792);
      if (v27 < (*(a1 + 12800) - v26))
      {
        operator new();
      }
    }

    v46 = (*(v26 + 8 * v24) + (v61 << 8));
    v47 = *v23;
    v48 = v23[1];
    v49 = v23[3];
    v46[2] = v23[2];
    v46[3] = v49;
    *v46 = v47;
    v46[1] = v48;
    v50 = v23[4];
    v51 = v23[5];
    v52 = v23[7];
    v46[6] = v23[6];
    v46[7] = v52;
    v46[4] = v50;
    v46[5] = v51;
    v53 = v23[8];
    v54 = v23[9];
    v55 = v23[11];
    v46[10] = v23[10];
    v46[11] = v55;
    v46[8] = v53;
    v46[9] = v54;
    v56 = v23[12];
    v57 = v23[13];
    v58 = v23[15];
    v46[14] = v23[14];
    v46[15] = v58;
    v46[12] = v56;
    v46[13] = v57;
  }

  return v9;
}

unint64_t md::VKMRenderResourcesStore::createRenderableData(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = *(a1 + 13064);
  v4 = *(a1 + 13080);
  if (*(a1 + 13056) == v3)
  {
    v5 = ((*(a1 + 13088) - v4) >> 3) | 0x100000000;
    v47.i64[0] = v5;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 13080, &v47);
  }

  else
  {
    v5 = *(v4 + 8 * *(v3 - 8));
    *(a1 + 13064) = v3 - 8;
  }

  v46 = v5;
  v47 = vdupq_n_s64(1uLL);
  LOWORD(v48) = 1;
  v6 = v5 >> 6;
  v7 = *(a1 + 12912);
  v8 = *(a1 + 12904);
  if (v6 >= (v7 - v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((v7 - v8) >> 3);
    v11 = *(a1 + 12920);
    if (v10 > (v11 - v7) >> 3)
    {
      v12 = v11 - v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      goto LABEL_53;
    }

    bzero(*(a1 + 12912), 8 * v10);
    *(a1 + 12912) = v7 + 8 * v10;
    v8 = *(a1 + 12904);
  }

  v14 = *(v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 12928, &v46);
    v17 = ((*(a1 + 12936) - *(a1 + 12928)) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v49 = __dst;
    v18 = v17 & 0x3F;
    v19 = *(*(a1 + 12952) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 12952), v17)) + 24 * (v17 & 0x3F);
    v20 = v49;
    *(v19 + 16) = v48;
    *v19 = v47;
    v21 = v17 >> 6;
    v22 = *(a1 + 13008);
    v23 = *(a1 + 13000);
    v24 = v22 - v23;
    if (v17 >> 6 < (v22 - v23) >> 3)
    {
LABEL_51:
      memcpy((*(v23 + 8 * v21) + 292 * v18), v20, 0x124uLL);
      return v5;
    }

    v25 = v21 + 1;
    v26 = v21 + 1 - (v24 >> 3);
    v27 = *(a1 + 13016);
    if (v26 > (v27 - v22) >> 3)
    {
      v28 = v27 - v23;
      v29 = (v27 - v23) >> 2;
      if (v29 <= v25)
      {
        v29 = v21 + 1;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v29;
      }

      if (!(v30 >> 61))
      {
        operator new();
      }

      goto LABEL_53;
    }

    v31 = 0;
    v32 = (v26 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v33 = vdupq_n_s64(v32);
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_1B33B0560)));
      if (v34.i8[0])
      {
        *(v22 + 8 * v31) = 0;
      }

      if (v34.i8[4])
      {
        *(v22 + 8 * v31 + 8) = 0;
      }

      v31 += 2;
    }

    while (v32 - ((v26 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v31);
    *(a1 + 13008) = v22 + 8 * v26;
    v35 = *(a1 + 13032);
    v36 = *(a1 + 13024);
    v37 = (v35 - v36) >> 4;
    if (v37 <= v21)
    {
      v39 = v25 - v37;
      v40 = *(a1 + 13040);
      if (v39 > (v40 - v35) >> 4)
      {
        v41 = v40 - v36;
        v42 = v41 >> 3;
        if (v41 >> 3 <= v25)
        {
          v42 = v21 + 1;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF0)
        {
          v43 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        if (!(v43 >> 60))
        {
          operator new();
        }

LABEL_53:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(a1 + 13032), 16 * v39);
      v38 = v35 + 16 * v39;
    }

    else
    {
      if (v25 >= v37)
      {
        goto LABEL_49;
      }

      v38 = v36 + 16 * v25;
    }

    *(a1 + 13032) = v38;
LABEL_49:
    v23 = *(a1 + 13000);
    if (v24 < (*(a1 + 13008) - v23))
    {
      operator new();
    }

    goto LABEL_51;
  }

  return v5;
}

uint64_t std::__shared_ptr_pointer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> *,std::shared_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::__shared_ptr_default_delete<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,std::allocator<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> *,std::shared_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::__shared_ptr_default_delete<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,std::allocator<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::VKMRenderResourcesStore::getDefaultRenderStateHandle(md::VKMRenderResourcesStore *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = md::DaVinciRenderStateCache::renderState((*(this + 1774) + 2568), 3, 1, 1, 0, 0, 0, 3);
    *(this + 2) = v3;
    v4 = v3;
    v5 = &v4;
    result = md::add2(this + 776, &v5, 1);
    *(this + 6) = result;
  }

  return result;
}

void sub_1B3273CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<md::StyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>>,std::__unordered_map_hasher<md::StyleCacheKey,std::__hash_value_type<md::StyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>>,md::StyleCacheKeyHasher,std::equal_to<md::StyleCacheKey>,true>,std::__unordered_map_equal<md::StyleCacheKey,std::__hash_value_type<md::StyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>>,std::equal_to<md::StyleCacheKey>,md::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>>>>::__erase_unique<md::StyleCacheKey>(uint64_t *a1, float *a2)
{
  v4 = md::StyleCacheKeyHasher::operator()(a2);
  v5 = a1[1];
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 + 0x7FFFFFFFFFFFFFFFLL) & v4;
    }

    v10 = *a1;
    v11 = *(*a1 + 8 * v9);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *&v5 - 1;
        do
        {
          v14 = *(v12 + 1);
          if (v14 == v6)
          {
            if (md::StyleCacheKey::operator==(v12 + 4, a2))
            {
              if (v8 > 1)
              {
                if (v6 >= *&v5)
                {
                  v6 %= *&v5;
                }
              }

              else
              {
                v6 &= v13;
              }

              v15 = *(v10 + 8 * v6);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v12);
              if (v16 == (a1 + 2))
              {
                goto LABEL_36;
              }

              v17 = *(v16 + 1);
              if (v8 > 1)
              {
                if (v17 >= *&v5)
                {
                  v17 %= *&v5;
                }
              }

              else
              {
                v17 &= v13;
              }

              if (v17 != v6)
              {
LABEL_36:
                if (!*v12)
                {
                  goto LABEL_37;
                }

                v18 = *(*v12 + 8);
                if (v8 > 1)
                {
                  if (v18 >= *&v5)
                  {
                    v18 %= *&v5;
                  }
                }

                else
                {
                  v18 &= v13;
                }

                if (v18 != v6)
                {
LABEL_37:
                  *(v10 + 8 * v6) = 0;
                }
              }

              v19 = *v12;
              if (*v12)
              {
                v20 = *(v19 + 8);
                if (v8 > 1)
                {
                  if (v20 >= *&v5)
                  {
                    v20 %= *&v5;
                  }
                }

                else
                {
                  v20 &= v13;
                }

                if (v20 != v6)
                {
                  *(*a1 + 8 * v20) = v16;
                  v19 = *v12;
                }
              }

              *v16 = v19;
              *v12 = 0;
              --a1[3];

              operator delete(v12);
              return;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v14 >= *&v5)
              {
                v14 %= *&v5;
              }
            }

            else
            {
              v14 &= v13;
            }

            if (v14 != v9)
            {
              return;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>>>::__erase_unique<unsigned long>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (*&v2 <= a2)
      {
        v4 = a2 % *&v2;
      }
    }

    else
    {
      v4 = (*&v2 - 1) & a2;
    }

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = *&v2 - 1;
        do
        {
          v9 = v7[1];
          if (v9 == a2)
          {
            if (v7[2] == a2)
            {
              v10 = v7[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v10 >= *&v2)
                {
                  v10 %= *&v2;
                }
              }

              else
              {
                v10 &= v8;
              }

              v11 = *(v5 + 8 * v10);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == a1 + 2)
              {
                goto LABEL_36;
              }

              v13 = v12[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != v10)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v14 >= *&v2)
                  {
                    v14 %= *&v2;
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != v10)
                {
LABEL_37:
                  *(v5 + 8 * v10) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v16 >= *&v2)
                  {
                    v16 %= *&v2;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != v10)
                {
                  *(*a1 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              operator delete(v7);
              return;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v9 >= *&v2)
              {
                v9 %= *&v2;
              }
            }

            else
            {
              v9 &= v8;
            }

            if (v9 != v4)
            {
              return;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::__erase_unique<md::StyleSSAOKey>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::__erase_unique<md::StyleEmissiveColorCacheKey>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,std::allocator<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>::__emplace_back_slow_path<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *&>(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void std::__optional_storage_base<md::ColorRampData,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::ColorRampData,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      v3 = 0;
      v4 = 0;
      v5 = *a2;
      v6 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v6;
      *a1 = v5;
      v7 = a1 + 48;
      v8 = a2 + 3;
      do
      {
        v9 = v3;
        v10 = v7 + 16 * v4;
        v11 = &v8[v4];
        v12 = *v11;
        *v11 = 0;
        *(v11 + 1) = 0;
        v13 = *(v10 + 8);
        *v10 = v12;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v3 = 1;
        v4 = 1;
      }

      while ((v9 & 1) == 0);
    }
  }

  else
  {
    if (*(a1 + 80))
    {
      for (i = 72; i != 40; i -= 16)
      {
        v15 = *(a1 + i);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      v16 = 0;
    }

    else
    {
      v17 = *a2;
      v18 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v18;
      *a1 = v17;
      *(a1 + 48) = a2[3];
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      *(a1 + 64) = a2[4];
      *(a2 + 8) = 0;
      *(a2 + 9) = 0;
      v16 = 1;
    }

    *(a1 + 80) = v16;
  }
}

unint64_t md::VKMRenderResourcesStore::createDeviceDataHandle(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = *(a1 + 14152);
  v4 = *(a1 + 14168);
  if (*(a1 + 14144) == v3)
  {
    v5 = ((*(a1 + 14176) - v4) >> 3) | 0x100000000;
    v47.i64[0] = v5;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 14168, &v47);
  }

  else
  {
    v5 = *(v4 + 8 * *(v3 - 8));
    *(a1 + 14152) = v3 - 8;
  }

  v46 = v5;
  v47 = vdupq_n_s64(1uLL);
  LOWORD(v48) = 1;
  v6 = v5 >> 6;
  v7 = *(a1 + 14000);
  v8 = *(a1 + 13992);
  if (v6 >= (v7 - v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((v7 - v8) >> 3);
    v11 = *(a1 + 14008);
    if (v10 > (v11 - v7) >> 3)
    {
      v12 = v11 - v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
    }

    bzero(*(a1 + 14000), 8 * v10);
    *(a1 + 14000) = v7 + 8 * v10;
    v8 = *(a1 + 13992);
  }

  v14 = *(v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 14016, &v46);
    v17 = ((*(a1 + 14024) - *(a1 + 14016)) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v49 = &v45;
    v18 = v17 & 0x3F;
    v19 = *(*(a1 + 14040) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 14040), v17)) + 24 * v18;
    v20 = v49;
    *(v19 + 16) = v48;
    *v19 = v47;
    v21 = v17 >> 6;
    v22 = *(a1 + 14096);
    v23 = *(a1 + 14088);
    v24 = v22 - v23;
    if (v17 >> 6 >= (v22 - v23) >> 3)
    {
      v25 = v21 + 1;
      v26 = v21 + 1 - (v24 >> 3);
      v27 = *(a1 + 14104);
      if (v26 > (v27 - v22) >> 3)
      {
        v28 = v27 - v23;
        v29 = (v27 - v23) >> 2;
        if (v29 <= v25)
        {
          v29 = v21 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (!(v30 >> 61))
        {
          operator new();
        }

        goto LABEL_51;
      }

      v31 = 0;
      v32 = (v26 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v33 = vdupq_n_s64(v32);
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_1B33B0560)));
        if (v34.i8[0])
        {
          *(v22 + 8 * v31) = 0;
        }

        if (v34.i8[4])
        {
          *(v22 + 8 * v31 + 8) = 0;
        }

        v31 += 2;
      }

      while (v32 - ((v26 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v31);
      *(a1 + 14096) = v22 + 8 * v26;
      v35 = *(a1 + 14120);
      v36 = *(a1 + 14112);
      v37 = &v35[-v36] >> 4;
      if (v37 <= v21)
      {
        v44 = v18;
        v38 = v25 - v37;
        v39 = *(a1 + 14128);
        if (v38 > (v39 - v35) >> 4)
        {
          v40 = v39 - v36;
          v41 = v40 >> 3;
          if (v40 >> 3 <= v25)
          {
            v41 = v21 + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (!(v42 >> 60))
          {
            operator new();
          }

LABEL_51:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v35, 16 * v38);
        *(a1 + 14120) = &v35[16 * v38];
        v18 = v44;
      }

      else if (v25 < v37)
      {
        *(a1 + 14120) = v36 + 16 * v25;
      }

      v23 = *(a1 + 14088);
      if (v24 < (*(a1 + 14096) - v23))
      {
        operator new();
      }
    }

    *(*(v23 + 8 * v21) + 8 * v18) = *v20;
  }

  return v5;
}

uint64_t md::VKMRenderResourcesStore::getDeviceData(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1749];
  if (v2 < (a1[1750] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[1752];
    v7 = v6 + 8 * v5[1];
    v8 = a1[1753];
  }

  else
  {
    v8 = a1[1753];
    v6 = a1[1752];
    v7 = v8;
  }

  if (v7 == v8)
  {
    return 0;
  }

  v10 = (v7 - v6) >> 3;
  v11 = v10 & 0x3F;
  v12 = (v10 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v13 = *(a1[1755] + v12);
  v14 = *(a1[1761] + v12);
  ++*(v13 + 24 * v11);
  return *(v14 + 8 * v11);
}

unint64_t md::VKMRenderResourcesStore::getConstantDataHandle<ggl::Tile::Transform,md::VKMRenderResourcesStore::VKMSplineKey>(void *a1, uint64_t a2)
{
  v2 = a1[1792];
  if (!*&v2)
  {
    goto LABEL_17;
  }

  v5 = *(a2 + 24);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(a2 + 24);
    if (v5 >= *&v2)
    {
      v8 = v5 % *&v2;
    }
  }

  else
  {
    v8 = (*&v2 - 1) & v5;
  }

  v9 = *(a1[1791] + 8 * v8);
  if (v9)
  {
    v10 = *v9;
    if (!*v9)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (md::VKMRenderResourcesStore::VKMSplineKey::operator==((v10 + 2), a2))
        {
          if (md::VKMRenderResourcesStore::getConstantData<ggl::Tile::Transform>(a1, v10[6]))
          {
            v9 = v10[6] & 0xFFFFFFFFFFFFFF00;
            v12 = v10[6];
            return v12 | v9;
          }

LABEL_17:
          v9 = 0;
          break;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v2)
          {
            v11 %= *&v2;
          }
        }

        else
        {
          v11 &= *&v2 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_17;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = 0;
  return v12 | v9;
}

uint64_t md::VKMRenderResourcesStore::getConstantDataPtr<ggl::Tile::Transform>(void *a1, void *a2, unint64_t a3)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a2 + 825, a3);
  if (result == a2[830] || (v6 = (result - a2[829]) >> 3, v7 = v6 & 0x3F, v8 = (v6 >> 3) & 0x1FFFFFFFFFFFFFF8, v9 = *(a2[832] + v8), v10 = *(a2[838] + v8), ++*(v9 + 24 * v7), !v10))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v11 = v10 + 24 * v7;
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    *a1 = v13;
    a1[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void std::__shared_ptr_pointer<md::RegionalResourceSet *,std::shared_ptr<md::RegionalResourceSet>::__shared_ptr_default_delete<md::RegionalResourceSet,md::RegionalResourceSet>,std::allocator<md::RegionalResourceSet>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RegionalAttributionsDecoder::decode(uint64_t *a1@<X2>, void *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1[14])
  {
    v5 = *a1;
    v6 = *(*a1 + 16);
    md::LabelExternalPointFeature::incident(v6);
    objc_claimAutoreleasedReturnValue();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = *(v5 + 16);
      md::LabelExternalPointFeature::incident(v8);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E69A2450]);
      if ((a1[14] & 1) == 0)
      {
        v12 = std::__throw_bad_optional_access[abi:nn200100]();

        v17 = v2;
        std::vector<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v17);
        v13 = v6[1];
        if (v13 != v6[3])
        {
          free(v13);
        }

        MEMORY[0x1B8C62190](v6, 0x1030C407A41FE88);
        _Unwind_Resume(v12);
      }

      v10 = v9;
      v18[0] = *a1[3];
      v11 = *(v5 + 16);
      md::LabelExternalPointFeature::incident(v11);
      objc_claimAutoreleasedReturnValue();
      v8 = [v10 decodeTile:v11 forKey:v18];

      if (([v8 isMemberOfClass:objc_opt_class()] & 1) == 0)
      {
        *a2 = 0;
        a2[1] = 0;

        return;
      }
    }

    if (v8)
    {
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

md::RegionalAttributions **std::unique_ptr<md::RegionalAttributions>::~unique_ptr[abi:nn200100](md::RegionalAttributions **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::RegionalAttributions::~RegionalAttributions(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void md::RegionalAttributions::~RegionalAttributions(md::RegionalAttributions *this)
{
  v3 = (this + 144);
  std::vector<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 1);
  if (v2 != *(this + 3))
  {
    free(v2);
  }
}

md::RegionalAttributions *std::__shared_ptr_pointer<md::RegionalAttributions *,std::shared_ptr<md::RegionalAttributions>::__shared_ptr_default_delete<md::RegionalAttributions,md::RegionalAttributions>,std::allocator<md::RegionalAttributions>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::RegionalAttributions::~RegionalAttributions(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::RegionalAttributions *,std::shared_ptr<md::RegionalAttributions>::__shared_ptr_default_delete<md::RegionalAttributions,md::RegionalAttributions>,std::allocator<md::RegionalAttributions>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::StylesheetVendor::resetStylesheetCache(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 6);
  v3 = *&this[10]._os_unfair_lock_opaque;
  for (i = *&this[12]._os_unfair_lock_opaque; i != v3; std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>(i))
  {
    i -= 48;
  }

  *&this[12]._os_unfair_lock_opaque = v3;
  v5 = *&this[16]._os_unfair_lock_opaque;
  for (j = *&this[18]._os_unfair_lock_opaque; j != v5; std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>(j))
  {
    j -= 48;
  }

  *&this[18]._os_unfair_lock_opaque = v5;
  os_unfair_lock_unlock(this + 6);
  os_unfair_lock_lock(this + 7);
  LOBYTE(this[22]._os_unfair_lock_opaque) = 0;
  v6 = *&this[26]._os_unfair_lock_opaque;
  *&this[24]._os_unfair_lock_opaque = 0;
  *&this[26]._os_unfair_lock_opaque = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  os_unfair_lock_unlock(this + 7);
  os_unfair_lock_lock(this + 8);
  LOBYTE(this[28]._os_unfair_lock_opaque) = 0;
  v7 = *&this[32]._os_unfair_lock_opaque;
  *&this[30]._os_unfair_lock_opaque = 0;
  *&this[32]._os_unfair_lock_opaque = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  os_unfair_lock_unlock(this + 8);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::string,int>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](gss::zone_mallocator *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>(v3, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,int>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>>::__on_zero_shared(gss::zone_mallocator *a1)
{
  v2 = *(a1 + 6);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      v4 = gss::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>(v4, v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v5)
  {
    v6 = gss::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,int>,void *> *> *>(v6, v5);
  }
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitTileDataRenderable::~TransitTileDataRenderable(id *this)
{
  md::TransitTileDataRenderable::~TransitTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4B9C0;
  md::TransitTileDataRenderable::clearAnimation(this);
  this[51] = &unk_1F2A4BA00;

  md::MapTileDataRenderable<md::TransitTileData>::~MapTileDataRenderable(this);
}

void sub_1B32771D0(_Unwind_Exception *a1)
{
  *(v1 + 408) = &unk_1F2A4BA00;

  md::MapTileDataRenderable<md::TransitTileData>::~MapTileDataRenderable(v1);
  _Unwind_Resume(a1);
}

void md::TransitTileDataRenderable::clearAnimation(md::TransitTileDataRenderable *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    [v2 stop];
    v3 = *(this + 52);
    if (v3)
    {
      *(this + 52) = 0;
    }
  }
}

void md::MapTileDataRenderable<md::TransitTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A4B9E0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::TransitTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::TransitTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TransitTileDataRenderable::setAlpha(uint64_t this, double a2)
{
  *(this + 1352) = LODWORD(a2);
  *(this + 1376) = 1;
  v2 = *(this + 872);
  for (i = *(this + 880); v2 != i; v2 += 104)
  {
    if (*(v2 + 52) != *&a2)
    {
      *(v2 + 52) = LODWORD(a2);
      v4 = *(v2 + 64);
      v5 = *(v2 + 72);
      if (v4 != v5)
      {
        v6 = 0;
        v7 = (v5 - v4 - 184) / 0xB8uLL;
        v8 = vdupq_n_s64(v7);
        do
        {
          v9 = vdupq_n_s64(v6);
          v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B0560)));
          if (vuzp1_s8(vuzp1_s16(v10, *&a2), *&a2).u8[0])
          {
            v4[177] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(v10, *&a2), *&a2).i8[1])
          {
            v4[361] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B0550)))), *&a2).i8[2])
          {
            v4[545] = 1;
            v4[729] = 1;
          }

          v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B0C10)));
          if (vuzp1_s8(*&a2, vuzp1_s16(v11, *&a2)).i32[1])
          {
            v4[913] = 1;
          }

          if (vuzp1_s8(*&a2, vuzp1_s16(v11, *&a2)).i8[5])
          {
            v4[1097] = 1;
          }

          if (vuzp1_s8(*&a2, vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B0C00))))).i8[6])
          {
            v4[1281] = 1;
            v4[1465] = 1;
          }

          v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B13A0)));
          if (vuzp1_s8(vuzp1_s16(v12, *&a2), *&a2).u8[0])
          {
            v4[1649] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(v12, *&a2), *&a2).i8[1])
          {
            v4[1833] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B1390)))), *&a2).i8[2])
          {
            v4[2017] = 1;
            v4[2201] = 1;
          }

          v13 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B1380)));
          if (vuzp1_s8(*&a2, vuzp1_s16(v13, *&a2)).i32[1])
          {
            v4[2385] = 1;
          }

          if (vuzp1_s8(*&a2, vuzp1_s16(v13, *&a2)).i8[5])
          {
            v4[2569] = 1;
          }

          if (vuzp1_s8(*&a2, vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_1B33B1370))))).i8[6])
          {
            v4[2753] = 1;
            v4[2937] = 1;
          }

          v6 += 16;
          v4 += 2944;
        }

        while (((v7 + 16) & 0x3FFFFFFFFFFFFF0) != v6);
      }
    }
  }

  return this;
}

void ggl::DiffuseBuilding::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineOverlayGroup::addPolyline(md::RouteLineOverlayGroup *this, VKPolylineOverlay *a2)
{
  v3 = a2;
  if (!std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(this + 6, v3))
  {
    operator new();
  }
}

void sub_1B3277D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v13);
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<md::Anchor *,float>,std::__unordered_map_hasher<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::hash<md::Anchor *>,std::equal_to<md::Anchor *>,true>,std::__unordered_map_equal<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::equal_to<md::Anchor *>,std::hash<md::Anchor *>,true>,std::allocator<std::__hash_value_type<md::Anchor *,float>>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
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

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

void md::MercatorTerrainHeightCache::invalidateRect(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v5 = a2 + 16;
    do
    {
      (*(**(v2 + 16) + 56))(*(v2 + 16));
      v8 = 0;
      v9 = 1;
      while (v6 >= *(a2 + 8 * v8) && v6 < *(v5 + 8 * v8))
      {
        v10 = v9;
        v9 = 0;
        v6 = v7;
        v8 = 1;
        if ((v10 & 1) == 0)
        {
          std::__hash_table<std::__hash_value_type<md::Anchor *,float>,std::__unordered_map_hasher<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::hash<md::Anchor *>,std::equal_to<md::Anchor *>,true>,std::__unordered_map_equal<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::equal_to<md::Anchor *>,std::hash<md::Anchor *>,true>,std::allocator<std::__hash_value_type<md::Anchor *,float>>>::erase(a1, v2);
          operator new();
        }
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_1B3278084(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<md::Anchor *,float>,std::__unordered_map_hasher<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::hash<md::Anchor *>,std::equal_to<md::Anchor *>,true>,std::__unordered_map_equal<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::equal_to<md::Anchor *>,std::hash<md::Anchor *>,true>,std::allocator<std::__hash_value_type<md::Anchor *,float>>>::__emplace_unique_key_args<md::Anchor *,std::piecewise_construct_t const&,std::tuple<md::Anchor * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void md::IconLabelPart::populateDebugNode(md::IconLabelPart *this, gdc::DebugTreeNode *a2)
{
  md::ImageLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&v19, "IconLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v19);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v5 = *(this + 80);
  if (v5)
  {
    if (*(v5 + 32))
    {
      std::string::basic_string[abi:nn200100]<0>(&v19, "Icon Image Size");
      grl::SizeGroupToString(&v14, *(*(*(this + 80) + 32) + 168));
      gdc::DebugTreeValue::DebugTreeValue(v11, &v14);
      gdc::DebugTreeNode::addProperty(v4, &v19, v11);
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      v5 = *(this + 80);
    }

    std::string::basic_string[abi:nn200100]<0>(&v19, "LabelIcon");
    v6 = gdc::DebugTreeNode::createChildNode(a2, &v19);
    if (v20 < 0)
    {
      operator delete(v19);
    }

    std::string::basic_string[abi:nn200100]<0>(&v14, "Width");
    v7 = atomic_load((v5 + 144));
    if (v7)
    {
      v8 = *(v5 + 56) - *(v5 + 48);
    }

    else
    {
      v8 = -INFINITY;
    }

    gdc::DebugTreeValue::DebugTreeValue(&v19, v8);
    gdc::DebugTreeNode::addProperty(v6, &v14, &v19);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v17, "Height");
    v9 = atomic_load((v5 + 144));
    if (v9)
    {
      v10 = *(v5 + 60) - *(v5 + 52);
    }

    else
    {
      v10 = -INFINITY;
    }

    gdc::DebugTreeValue::DebugTreeValue(&v14, v10);
    gdc::DebugTreeNode::addProperty(v6, v17, &v14);
    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }
}

uint64_t md::IconLabelPart::debugString@<X0>(md::IconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v37);
  md::ImageLabelPart::debugString(this, &__p);
  if (SHIBYTE(v48[0].__locale_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(v48[0].__locale_) >= 0)
  {
    locale_high = HIBYTE(v48[0].__locale_);
  }

  else
  {
    locale_high = v47;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v37, p_p, locale_high);
  if (SHIBYTE(v48[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v6 = *(this + 80);
  if (v6 && *(v6 + 32))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v37, " ", 1);
    v7 = *(*(this + 80) + 32);
    std::ostringstream::basic_ostringstream[abi:nn200100](&__p);
    v8 = *(v7 + 113);
    switch(v8)
    {
      case 8:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "attr[", 5);
        v12 = MEMORY[0x1B8C61C80](&__p, *(v7 + 60));
        v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "=", 1);
        v14 = MEMORY[0x1B8C61C80](v13, *(v7 + 64));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "]", 1);
        if (*(v7 + 72) != *(v7 + 80))
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " extattr[", 9);
          v15 = *(v7 + 72);
          v16 = *(v7 + 80);
          while (v15 != v16)
          {
            MEMORY[0x1B8C61C80](&__p, *v15++);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "]", 1);
        }

        break;
      case 10:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "DEBUG_FALLBACK_ICON", 19);
        break;
      case 9:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "name=", 5);
        v9 = *(v7 + 39);
        if (v9 >= 0)
        {
          v10 = v7 + 16;
        }

        else
        {
          v10 = *(v7 + 16);
        }

        if (v9 >= 0)
        {
          v11 = *(v7 + 39);
        }

        else
        {
          v11 = *(v7 + 24);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, v10, v11);
        break;
      default:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "resolvedKeyType=", 16);
        MEMORY[0x1B8C61C80](&__p, *(v7 + 113));
        break;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " ID=", 4);
    MEMORY[0x1B8C61C90](&__p, *(v7 + 208));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " size=", 6);
    MEMORY[0x1B8C61C80](&__p, *(v7 + 168));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " variant=", 9);
    v17 = MEMORY[0x1B8C61C90](&__p, *(v7 + 172));
    v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ",", 1);
    v19 = MEMORY[0x1B8C61C90](v18, *(v7 + 176));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " dataPack=", 10);
    v20 = *(v7 + 239);
    if (v20 >= 0)
    {
      v21 = v7 + 216;
    }

    else
    {
      v21 = *(v7 + 216);
    }

    if (v20 >= 0)
    {
      v22 = *(v7 + 239);
    }

    else
    {
      v22 = *(v7 + 224);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, v21, v22);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " configPack=", 12);
    v23 = *(v7 + 263);
    if (v23 >= 0)
    {
      v24 = v7 + 240;
    }

    else
    {
      v24 = *(v7 + 240);
    }

    if (v23 >= 0)
    {
      v25 = *(v7 + 263);
    }

    else
    {
      v25 = *(v7 + 248);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, v24, v25);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " hasCustomImageProvider=", 24);
    MEMORY[0x1B8C61C50](&__p, *(v7 + 296) != 0);
    if ((v53 & 0x10) != 0)
    {
      v27 = v52;
      if (v52 < v49)
      {
        v52 = v49;
        v27 = v49;
      }

      locale = v48[4].__locale_;
    }

    else
    {
      if ((v53 & 8) == 0)
      {
        v26 = 0;
        v36 = 0;
LABEL_53:
        *(__dst + v26) = 0;
        __p = *MEMORY[0x1E69E54E8];
        *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54E8] + 24);
        v47 = MEMORY[0x1E69E5548] + 16;
        if (v51 < 0)
        {
          operator delete(v50);
        }

        v47 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v48);
        std::ostream::~ostream();
        MEMORY[0x1B8C620C0](&v54);
        if ((v36 & 0x80u) == 0)
        {
          v29 = __dst;
        }

        else
        {
          v29 = __dst[0];
        }

        if ((v36 & 0x80u) == 0)
        {
          v30 = v36;
        }

        else
        {
          v30 = __dst[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v37, v29, v30);
        if (v36 < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_63;
      }

      locale = v48[1].__locale_;
      v27 = v48[3].__locale_;
    }

    v26 = v27 - locale;
    if ((v27 - locale) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_79;
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    v36 = v27 - locale;
    if (v26)
    {
      memmove(__dst, locale, v26);
    }

    goto LABEL_53;
  }

LABEL_63:
  if ((v44 & 0x10) != 0)
  {
    v32 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v32 = v40;
    }

    v33 = v39[4].__locale_;
  }

  else
  {
    if ((v44 & 8) == 0)
    {
      v31 = 0;
      a2[23] = 0;
      goto LABEL_76;
    }

    v33 = v39[1].__locale_;
    v32 = v39[3].__locale_;
  }

  v31 = v32 - v33;
  if ((v32 - v33) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_79:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v31 >= 0x17)
  {
    operator new();
  }

  a2[23] = v31;
  if (v31)
  {
    memmove(a2, v33, v31);
  }

LABEL_76:
  a2[v31] = 0;
  v37 = *MEMORY[0x1E69E54E8];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v38 = MEMORY[0x1E69E5548] + 16;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  v38 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v39);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v45);
}

void sub_1B3278E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::locale a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  a49 = *MEMORY[0x1E69E54E8];
  *(&a49 + *(a49 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a50 = MEMORY[0x1E69E5548] + 16;
  if (a63 < 0)
  {
    operator delete(__p);
  }

  a50 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a51);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a66);
  a13 = *MEMORY[0x1E69E54E8];
  *(&a13 + *(a13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a14 = MEMORY[0x1E69E5548] + 16;
  if (a27 < 0)
  {
    operator delete(a22);
  }

  a14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a15);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a30);
  _Unwind_Resume(a1);
}

uint64_t md::IconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3 && *(a1 + 707))
  {
    return md::LabelIconStyleMonitor::needsCrossfade(a1 + 656, **(a1 + 32), a4);
  }

  else
  {
    return 0;
  }
}

void md::IconLabelPart::populateImageInfos(float32x2_t *a1, std::__shared_weak_count *a2)
{
  v2 = a1[80];
  if (v2)
  {
    v3 = *(*&v2 + 32);
    if (v3)
    {
      v5 = *(*&v2 + 40);
      v10 = v3;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = vmla_f32(a1[45], 0x3F0000003F000000, vsub_f32(a1[46], a1[45]));
      v12 = v6;
      shared_owners = a2->__shared_owners_;
      if (shared_owners >= a2->__shared_weak_owners_)
      {
        v8 = std::vector<md::LabelImageInfo,geo::allocator_adapter<md::LabelImageInfo,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelImageInfo>(a2, &v10);
        v9 = v11;
        a2->__shared_owners_ = v8;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }
      }

      else
      {
        *shared_owners = v3;
        shared_owners[1] = v5;
        shared_owners[2] = v6;
        a2->__shared_owners_ = (shared_owners + 3);
      }
    }
  }
}

void sub_1B3279110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void md::IconLabelPart::calloutAnchorRect(md::IconLabelPart *this, int a2)
{
  v2 = *(this + 80);
  if (v2)
  {
    v3 = atomic_load(&v2[18]);
    if (v3)
    {
      v4 = v2[7].f32[1] - v2[6].f32[1];
      v5 = v2[7].f32[0] - v2[6].f32[0];
      v7 = v2[10];
      v6 = v2[11];
      v8 = fminf(v6.f32[1], v4 - v6.f32[1]);
      v9 = v4 * 0.5;
      v10 = v5 * 0.5;
      v11 = fminf(v6.f32[0], v5 - v6.f32[0]);
      if (a2)
      {
        v9 = v8;
        v11 = v10;
      }

      v13[0] = -v11;
      v13[1] = -v9;
      v13[2] = v11;
      v13[3] = v9;
      v12 = vsub_f32(v6, v7);
      gm::Box<float,2>::operator+(v13, &v12);
    }
  }
}

uint64_t md::IconLabelPart::populateCollisionObjects(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2 + 8;
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(a2 + 8, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 16) - *(a2 + 8)) >> 4) + 1);
  v11 = *(v10 + 8);
  v12 = (a1 + 8);
  v13 = vld1_dup_f32(v12);
  *(v11 - 112) = vadd_f32(*(a1 + 168), v13);
  *(v11 - 9) = *(a1 + 271);
  v14 = *a8;
  *(v11 - 192) = *a8;
  *(v11 - 188) = *(a8 + 4);
  *(v11 - 12) = fabsf(v14 + -1.0) > 0.000001;
  (*(*a1 + 920))(a1, 0, a1 + 640, v11 - 208);
  *(v11 - 176) = vmla_f32(vsub_f32(__PAIR64__(LODWORD(a4), LODWORD(a3)), *(v11 - 208)), 0xBF000000BF000000, vsub_f32(*(v11 - 200), *(v11 - 208)));

  return md::CollisionObject::setupShapeData(v11 - 208);
}

double md::IconLabelPart::populateHoverBounds(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 568) & 1) == 0)
  {
    v2 = *(a1 + 640);
    if (v2)
    {
      v3 = *(v2 + 96);
      if (v3)
      {
        v4 = *(v3 + 57);
        v5 = *(v3 + 58);
        if (v4 == 1 && v5 == 0)
        {
          v7 = *(a1 + 24);
          v8 = vsub_f32(v7[50], v7[49]);
          v10 = *v7[49].f32;
          v11 = sqrtf(vaddv_f32(vmul_f32(v8, v8))) * 0.5;
        }

        else
        {
          v10 = *(*(a1 + 24) + 392);
          v11 = 0.0;
        }

        *&result = geo::small_vector_base<std::pair<gm::Box<float,2>,float>>::push_back(a2, &v10).n128_u64[0];
      }
    }
  }

  return result;
}

__n128 geo::small_vector_base<std::pair<gm::Box<float,2>,float>>::push_back(uint64_t a1, __n128 *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - *a1;
  v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 2) + 1;
  v8 = *(a1 + 24);
  if (v8 < v7)
  {
    v9 = *(a1 + 16);
    v10 = (1 << -__clz(v8 + 1));
    if (v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = 1;
    }

    if (v10 <= v7)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 2) + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc_type_malloc(20 * v11, 0x1000040A86A77D5uLL);
    v13 = v12;
    v14 = *a1;
    v15 = *(a1 + 8);
    if (*a1 != v15)
    {
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 4) = v14[4];
        *v16 = v17;
        v16 += 20;
        v14 += 5;
      }

      while (v14 != v15);
    }

    if (v5 != v9)
    {
      free(*a1);
    }

    v4 = &v13[v6];
    *a1 = v13;
    *(a1 + 8) = &v13[v6];
    *(a1 + 24) = v11;
  }

  result = *a2;
  v4[1].n128_u32[0] = a2[1].n128_u32[0];
  *v4 = result;
  *(a1 + 8) += 20;
  return result;
}

float32x2_t md::IconLabelPart::partAnimationOrigin(md::IconLabelPart *this)
{
  v1 = *(this + 80);
  if (v1)
  {
    return vsub_f32(v1[11], v1[10]);
  }

  else
  {
    return 0;
  }
}

BOOL md::IconLabelPart::isVisuallySimilar(md::IconLabelPart *this, const md::LabelPart *a2)
{
  result = 0;
  if (*(this + 143) == *(a2 + 143) && *(this + 144) == *(a2 + 144) && *(this + 145) == *(a2 + 145))
  {
    v3 = *(this + 80);
    if (!v3)
    {
      return 1;
    }

    v4 = *(a2 + 80);
    if (!v4 || !md::LabelIcon::compareImage(v3, v4))
    {
      return 1;
    }
  }

  return result;
}

float32x2_t md::LabelAnimation::translation(float32x2_t *this)
{
  v1 = this[11];
  if (v1)
  {
    return vmla_n_f32(this[12], vsub_f32(this[13], this[12]), *(**&v1 + 32 * *(*&v1 + 32) + 8));
  }

  else
  {
    return this[13];
  }
}

float md::LabelAnimation::rotation(md::LabelAnimation *this)
{
  v1 = *(this + 15);
  if (!v1)
  {
    return *(this + 33);
  }

  v2 = *v1 + 32 * *(v1 + 32);
  v3 = *(v2 + 8);
  v4 = *(this + 34);
  if (v4 == 0.0)
  {
    return *(this + 32) + ((*(this + 33) - *(this + 32)) * v3);
  }

  v6 = *(v2 + 12);
  if (v6 > 0.0)
  {
    if (v6 < 1.0)
    {
      return v4 * v3;
    }

    return *(this + 33);
  }

  return *(this + 32);
}

void md::IconLabelPart::generateModelMatrix(uint64_t a1, uint64_t a2, int a3, float32x2_t *a4, float a5, float32x2_t a6, float a7, float a8)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      a8 = 1.0;
    }

    v11 = a8 * a7;
    v12 = fabsf((a8 * a7) + -1.0);
    if (a5 != 0.0)
    {
      a3 = 1;
    }

    *&v54 = 0;
    if (*a4 || (a3 & 1) != 0 || v12 > 0.000001)
    {
      if (a3)
      {
        if (a5 != 0.0)
        {
          v45 = a6;
          v21 = __sincosf_stret(a5);
          v22 = vrev64_s32(vmul_n_f32(v45, v21.__sinval));
          v23 = vmul_n_f32(v45, v21.__cosval);
          a6.i32[0] = vsub_f32(v23, v22).u32[0];
          a6.i32[1] = vadd_f32(v23, v22).i32[1];
        }

        v62 = vcvtq_f64_f32(a6);
        *&v63 = 0;
        *(&v63 + 1) = -a6.f32[1];
        v64 = *&v62.f64[0];
        v66 = 0;
        v67 = 0;
        v65 = 0;
      }

      else
      {
        v63 = 0uLL;
        v66 = 0;
        v67 = 0;
        v62 = 0x3FF0000000000000uLL;
        v64 = 0x3FF0000000000000;
        v65 = 0;
      }

      v68 = 0x3FF0000000000000;
      if (v12 > 0.000001)
      {
        for (i = 0; i != 9; ++i)
        {
          v62.f64[i] = v62.f64[i] * v11;
        }
      }

      v25 = 0;
      v26 = *a4;
      v27 = &v54;
      v28 = &v62;
      do
      {
        v29 = 0;
        v30 = v27;
        do
        {
          *v30 = v28->f64[v29];
          v30 += 2;
          v29 += 3;
        }

        while (v29 != 9);
        ++v25;
        v27 = (v27 + 8);
        v28 = (v28 + 8);
      }

      while (v25 != 3);
      *(&v55 + 1) = 0;
      *(&v57 + 1) = 0;
      *(&v59 + 1) = 0;
      v60 = vcvtq_f64_f32(v26);
      v61 = xmmword_1B33B0740;
      if (v9)
      {
        for (j = 0; j != 4; ++j)
        {
          v32 = 0;
          v33 = &v54;
          do
          {
            v34 = 0;
            v35 = 0.0;
            v36 = v9;
            do
            {
              v37 = *v36;
              v36 += 4;
              v35 = v35 + *(v33 + v34) * v37;
              v34 += 8;
            }

            while (v34 != 32);
            *(&v46 + 4 * v32++ + j) = v35;
            v33 += 2;
          }

          while (v32 != 4);
          ++v9;
        }
      }

      else
      {
        v50 = v58;
        v51 = v59;
        v52 = v60;
        v53 = v61;
        v46 = v54;
        v47 = v55;
        v48 = v56;
        v49 = v57;
      }

      v38 = v51;
      *(a1 + 64) = v50;
      *(a1 + 80) = v38;
      v39 = v53;
      *(a1 + 96) = v52;
      *(a1 + 112) = v39;
      v40 = v47;
      *a1 = v46;
      *(a1 + 16) = v40;
      v41 = v49;
      *(a1 + 32) = v48;
      *(a1 + 48) = v41;
    }

    else
    {
      if (a2)
      {
        v14 = *a2;
        v15 = *(a2 + 24);
        v54 = *(a2 + 8);
        v55 = v15;
        v16 = *(a2 + 40);
        v17 = *(a2 + 64);
        v46 = *(a2 + 48);
        v47 = v17;
        v18 = *(a2 + 80);
        v19 = *(a2 + 104);
        v62 = *(a2 + 88);
        v63 = v19;
        v20 = *(a2 + 120);
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
        v46 = 0u;
        v47 = 0u;
        v62 = 0u;
        v63 = 0u;
        v16 = 1.0;
        v18 = 1.0;
        v20 = 1.0;
        v14 = 1.0;
      }

      *a1 = v14;
      v42 = v55;
      *(a1 + 8) = v54;
      *(a1 + 24) = v42;
      *(a1 + 40) = v16;
      v43 = v47;
      *(a1 + 48) = v46;
      *(a1 + 64) = v43;
      *(a1 + 80) = v18;
      v44 = v63;
      *(a1 + 88) = v62;
      *(a1 + 104) = v44;
      *(a1 + 120) = v20;
    }
  }
}

uint64_t md::IconLabelPart::IconLabelPart(uint64_t a1, void *a2, int a3, md::LabelStyle *a4)
{
  md::ImageLabelPart::ImageLabelPart(a1);
  *v8 = &unk_1F2A5A040;
  v9 = a2[1];
  v8[80] = *a2;
  v8[81] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  md::LabelIconStyleMonitor::LabelIconStyleMonitor(a1 + 656, a3, a4);
  *(a1 + 713) = 117440512;
  *(a1 + 718) = 16842752;
  *(a1 + 722) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 258;
  *(a1 + 750) = 0;
  *(a1 + 758) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 1065353216;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 820) = 0;
  *(a1 + 812) = 0;
  *(a1 + 752) = 1;
  *(a1 + 712) = *(a1 + 557);
  return a1;
}

void sub_1B3279ACC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 648);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *v1 = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject((v1 + 312));
  md::CollisionObject::~CollisionObject((v1 + 72));
  _Unwind_Resume(a1);
}

void md::AttributesLayerDataSource::createLayerData(uint64_t a1@<X0>, unsigned __int16 **a2@<X2>, void *a3@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v15, *(a1 + 592), *a2, a2[1]);
  if (v15)
  {
    v5 = *(v15 + 144);
    v6 = *(v15 + 152);
    __p[3] = v5;
    __p[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = *grl::IconMetricsRenderResult::getFillRect(v5);
      if (v7)
      {
        v8 = *(v7 + 33);
        if (*(v7 + 33))
        {
          v9 = *v7;
          if (*v9 != 41)
          {
            v10 = 0;
            v11 = v9 + 2;
            do
            {
              if (v8 - 1 == v10)
              {
                break;
              }

              v12 = *v11;
              v11 += 2;
              ++v10;
            }

            while (v12 != 41);
          }
        }
      }
    }

    memset(__p, 0, 24);
    gdc::LayerDataSource::populateLoadMetadataListFromMap(*a2, a2[1], __p);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  v13 = v16;
  if (v16)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }
}

void sub_1B3279CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::AttributesTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4BFB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::AttributesLayerDataSource::~AttributesLayerDataSource(md::AttributesLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureMarker::maxZoomRank(md::LabelFeatureMarker *this)
{
  v1 = *(this + 4);
  v3 = 1;
  return (*(*v1 + 248))(v1, &v3);
}

uint64_t md::LabelFeatureMarker::minZoomRank(md::LabelFeatureMarker *this)
{
  v1 = *(this + 4);
  v3 = 1;
  return (*(*v1 + 240))(v1, &v3);
}

void *md::LabelFeatureMarker::name@<X0>(void *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  if (a2)
  {
    *(a3 + 24) = *(this + 96);
    if ((*(this + 95) & 0x80000000) == 0)
    {
      *a3 = *(this + 9);
      *(a3 + 16) = this[11];
      return this;
    }

    v6 = this[9];
    v7 = this[10];
LABEL_12:

    return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(a3, v6, v7);
  }

  if ((*(*this[4] + 480))(this[4], 0))
  {
    this = (*(*v3[4] + 480))(v3[4], 0);
    *(a3 + 24) = *(this + 24);
    if ((*(this + 23) & 0x80000000) == 0)
    {
      v5 = *this;
      *(a3 + 16) = this[2];
      *a3 = v5;
      return this;
    }

    v6 = *this;
    v7 = this[1];
    goto LABEL_12;
  }

  return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(a3, "");
}

void md::LabelFeatureMarker::~LabelFeatureMarker(md::LabelFeatureMarker *this)
{
  md::LabelFeatureMarker::~LabelFeatureMarker(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4BFF0;
  if (*(this + 95) < 0)
  {
    v2 = *(this + 9);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    std::default_delete<md::MarkerFeatureHandle>::operator()[abi:nn200100](v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void std::default_delete<md::MarkerFeatureHandle>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::ClearRenderLayer::constSelector(md::CommandBufferLocation const&)::{lambda(md::LayoutContext const&)#1},std::allocator<md::ClearRenderLayer::constSelector(md::CommandBufferLocation const&)::{lambda(md::LayoutContext const&)#1}>,std::vector<md::CommandBufferLocation> ()(md::LayoutContext const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A4C0F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

id md::ARWalkingRouteLockedMapEngineMode::getSession(md::ARWalkingRouteLockedMapEngineMode *this)
{
  v1 = +[MDARSession newPositionalTrackingSession];

  return v1;
}

uint64_t md::ARWalkingRouteLockedMapEngineMode::buildScene(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    operator new();
  }

  v6 = *(a1 + 696);

  return v6;
}

void std::__function::__func<md::ARWalkingRouteLockedMapEngineMode::buildLocationProvider(md::MapEngine &)::$_0,std::allocator<md::ARWalkingRouteLockedMapEngineMode::buildLocationProvider(md::MapEngine &)::$_0>,void ()(geo::PolylineCoordinate)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained injectDebugARUserRouteCoordinate:v2];
}

uint64_t std::__function::__func<md::ARWalkingRouteLockedMapEngineMode::buildLocationProvider(md::MapEngine &)::$_0,std::allocator<md::ARWalkingRouteLockedMapEngineMode::buildLocationProvider(md::MapEngine &)::$_0>,void ()(geo::PolylineCoordinate)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4C278;
  a2[1] = v2;
  return result;
}

uint64_t md::ARWalkingRouteLockedMapEngineMode::willBecomeInactive(int a1, int8x8_t **a2, double a3, double a4, double a5)
{
  md::ARWalkingMapEngineMode::willBecomeInactive(a1, a2, a3, a4, a5);
  result = md::LogicManager::logic<md::ARCameraRouteLocationProviderLogic>(a2[5241]);
  *(result + 128) = 0;
  return result;
}

uint64_t md::LogicManager::logic<md::ARCameraRouteLocationProviderLogic>(int8x8_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = vcnt_s8(v1);
    v2.i16[0] = vaddlv_u8(v2);
    if (v2.u32[0] > 1uLL)
    {
      v3 = 0xEACB5D682A22B993;
      if (*&v1 <= 0xEACB5D682A22B993)
      {
        v3 = 0xEACB5D682A22B993 % *&v1;
      }
    }

    else
    {
      v3 = (*&v1 - 1) & 0xEACB5D682A22B993;
    }

    v4 = *(*&a1[2] + 8 * v3);
    if (v4)
    {
      v5 = *v4;
      if (v5)
      {
        while (1)
        {
          v6 = v5[1];
          if (v6 == 0xEACB5D682A22B993)
          {
            if (v5[2] == 0xEACB5D682A22B993)
            {
              return v5[5];
            }
          }

          else
          {
            if (v2.u32[0] > 1uLL)
            {
              if (v6 >= *&v1)
              {
                v6 %= *&v1;
              }
            }

            else
            {
              v6 &= *&v1 - 1;
            }

            if (v6 != v3)
            {
              return 0;
            }
          }

          result = 0;
          v5 = *v5;
          if (!v5)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t md::ARWalkingRouteLockedMapEngineMode::didBecomeActive(uint64_t a1, int8x8_t **a2, double a3, double a4, double a5)
{
  md::ARWalkingMapEngineMode::didBecomeActive(a1, a2, a3, a4, a5);
  result = md::LogicManager::logic<md::ARCameraRouteLocationProviderLogic>(a2[5241]);
  *(result + 128) = *(a1 + 656);
  return result;
}

void md::ARWalkingRouteLockedMapEngineMode::~ARWalkingRouteLockedMapEngineMode(md::ARWalkingRouteLockedMapEngineMode *this)
{
  *this = &unk_1F2A4C138;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v3 = *(this + 82);
  *(this + 82) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 78);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C138;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v3 = *(this + 82);
  *(this + 82) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 78);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

uint64_t md::LabelPart::populatePointOcclusionQuery(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16) + 616;
  *v2 = 2;
  geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v2 + 80));
  v4 = 0;
  v5 = *(v2 + 80);
  do
  {
    *(v5 + v4) = *(v3 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  geo::small_vector_base<md::OcclusionProbe>::resize(v2 + 8, 1uLL);
  return 1;
}

void md::LabelPart::debugDraw(uint64_t a1, ggl::DebugConsole *this, double a3)
{
  if (*(a1 + 232))
  {
    *(this + 26) = 1056964608;
    if (*(a1 + 248))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(a1 + 256) + v5);
        v17 = vneg_f32(v7[1]);
        v18 = v7[1];
        gm::Box<float,2>::operator+=(&v17, v7);
        v8 = v18.f32[0];
        v9 = v17.f32[0];
        if (v18.f32[0] > v17.f32[0])
        {
          v10 = v17.i32[1];
          if (v18.f32[1] > v17.f32[1])
          {
            *(this + 24) = -16776961;
            *(this + 2) = v9;
            *(this + 3) = v10;
            ggl::DebugConsole::drawRectangle(this, &v18);
            v8 = v18.f32[0];
            v9 = v17.f32[0];
          }
        }

        if (v8 > v9)
        {
          v11 = v17.i32[1];
          if (v18.f32[1] > v17.f32[1])
          {
            *(this + 24) = -12549889;
            *(this + 2) = v9;
            *(this + 3) = v11;
            ggl::DebugConsole::drawRectangle(this, &v18);
          }
        }

        ++v6;
        v5 += 24;
      }

      while (v6 < *(a1 + 248));
    }
  }

  else if (*(a1 + 240))
  {
    *(this + 26) = 1065353216;
    if (*(a1 + 248))
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *(a1 + 256) + v12;
        v15 = *(v14 + 8);
        if (v15 > 0.0)
        {
          *(this + 24) = -16776961;
          v16 = *v14;
          *(this + 1) = *v14;
          *&v16 = v15;
          ggl::DebugConsole::drawCircle(this, v16);
        }

        *&a3 = v15 - *(a1 + 168);
        if (*&a3 > 0.0)
        {
          *(this + 24) = -12549889;
          *(this + 1) = *v14;
          ggl::DebugConsole::drawCircle(this, a3);
        }

        ++v13;
        v12 += 24;
      }

      while (v13 < *(a1 + 248));
    }
  }
}

uint64_t md::LabelPart::intersectsDisplayFrustum(uint64_t a1, double *a2)
{
  if (*(a1 + 565) == 1)
  {
    return md::CollisionObject::intersectsWorldFrustum(a1 + 312, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t md::LabelPart::intersectsStagingFrustum(uint64_t a1, double *a2)
{
  if (*(a1 + 565) == 1 && *(a1 + 566) == 1)
  {
    return md::CollisionObject::intersectsWorldFrustum(a1 + 312, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t md::LabelPart::collidesWithDisplayObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  v2 = a2;
  if (*(this + 472) == 0 || (*(a2 + 200) & *(this + 512)) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 21);
  if (*(this + 60))
  {
    v5 = (this + 312);
    if (v4)
    {
      return md::CollisionObject::circlesCollideWithCircles(v5, a2);
    }

    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if (v4)
  {
    a2 = (this + 312);
    v5 = v2;
    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if ((*(this + 508) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 312), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 312), a2);
  }
}

md::LabelPart *md::LabelPart::LabelPart(md::LabelPart *this, const md::LabelPart *a2)
{
  *this = &unk_1F2A5B190;
  *(this + 2) = 1065353216;
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = *(a2 + 4);
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = xmmword_1B33B0730;
  *(this + 11) = 1065353216;
  *(this + 24) = 1065353216;
  *(this + 29) = 0;
  *(this + 100) = 0;
  *(this + 108) = 0;
  *(this + 120) = xmmword_1B33B0730;
  *(this + 136) = xmmword_1B33B0730;
  *(this + 152) = xmmword_1B33B0730;
  *(this + 168) = xmmword_1B33B0720;
  *(this + 224) = 0;
  *(this + 232) = 0u;
  v4 = (this + 232);
  *(this + 200) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 248) = 0u;
  *(this + 257) = 0u;
  *(this + 30) = *(a2 + 30);
  *(this + 31) = *(a2 + 31);
  *(this + 32) = *(a2 + 32);
  *(this + 33) = *(a2 + 33);
  *(this + 38) = *(a2 + 38);
  *(this + 39) = *(a2 + 39);
  *(this + 40) = *(a2 + 40);
  *(this + 41) = *(a2 + 41);
  *(this + 18) = *(a2 + 18);
  *(this + 19) = *(a2 + 19);
  *(this + 20) = *(a2 + 20);
  *(this + 21) = *(a2 + 21);
  *(this + 26) = *(a2 + 26);
  *(this + 27) = *(a2 + 27);
  *(this + 28) = *(a2 + 28);
  *(this + 29) = *(a2 + 29);
  *(this + 21) = *(a2 + 21);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = *(a2 + 23);
  *(this + 44) = *(a2 + 44);
  *(this + 270) = *(a2 + 270);
  *(this + 271) = *(a2 + 271);
  *(this + 66) = 0;
  *(this + 30) = 0;
  *(this + 29) = 0;
  *(this + 62) = 0;
  if (*(a2 + 32))
  {
    v5 = 24 * *(a2 + 66);
    v6 = malloc_type_malloc(v5, 0x1000040504FFAC1uLL);
    *(this + 32) = v6;
    if (v6)
    {
      *(this + 66) = *(a2 + 66);
      memcpy(v6, *(a2 + 32), v5);
    }
  }

  if (*(a2 + 29))
  {
    v7 = 16 * *(a2 + 62);
    v8 = malloc_type_malloc(v7, 0x1000040451B5BE8uLL);
    *v4 = v8;
    if (v8)
    {
      *(this + 62) = *(a2 + 62);
      v9 = *(a2 + 29);
LABEL_10:
      memcpy(v8, v9, v7);
    }
  }

  else if (*(a2 + 30))
  {
    v7 = 12 * *(a2 + 62);
    v8 = malloc_type_malloc(v7, 0x10000403E1C8BA9uLL);
    *(this + 30) = v8;
    if (v8)
    {
      *(this + 62) = *(a2 + 62);
      v9 = *(a2 + 30);
      goto LABEL_10;
    }
  }

  v10 = *(a2 + 296);
  *(this + 280) = *(a2 + 280);
  *(this + 296) = v10;
  *(this + 312) = xmmword_1B33B0730;
  *(this + 41) = 1065353216;
  *(this + 84) = 1065353216;
  *(this + 340) = 0u;
  *(this + 89) = 0;
  *(this + 360) = xmmword_1B33B0730;
  *(this + 376) = xmmword_1B33B0730;
  *(this + 392) = xmmword_1B33B0730;
  *(this + 408) = xmmword_1B33B0720;
  *(this + 464) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 497) = 0u;
  *(this + 520) = xmmword_1B33B0AD0;
  *(this + 134) = 1065353216;
  *(this + 540) = 0u;
  *(this + 278) = *(a2 + 278);
  *(this + 279) = 0;
  *(this + 560) = 0;
  *(this + 561) = *(a2 + 561);
  *(this + 563) = -1;
  *(this + 565) = *(a2 + 565);
  *(this + 283) = 0;
  *(this + 568) = 0;
  *(this + 3) = this;
  return this;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != a3)
  {
    do
    {
      v6 = v3;
      v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
      v3 = v7;
    }

    while (v7 != v6);
    if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v3;
    }
  }

  if (v3 == a3)
  {
    return v3;
  }

  v9 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    v12 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(v12, v13, v14);
  }

  else
  {
    v8 = v7;
    while (v8 != a3 && *v8 == 124)
    {
      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
      if (v10 == v8 + 1)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    return v8;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    v9 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(v9, v10, v11);
  }

  else
  {
    do
    {
      v7 = v6;
      v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
    }

    while (v6 != v7);
    return v7;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_26;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!this->__open_count_)
    {
      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v15);
      v11 = a2 + 1;
      goto LABEL_38;
    }
  }

  else
  {
LABEL_13:
    if ((v8 - 123) >= 2)
    {
      v15 = *a2;
      goto LABEL_15;
    }
  }

LABEL_4:
  v10 = a2 + 1;
  v11 = a2;
  if (a2 + 1 == a3)
  {
LABEL_22:
    v12 = *v11;
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if (((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x5800000080004F1) == 0) && (v13 - 123) >= 3)
  {
    if ((this->__flags_ & 0x1F0) == 0x40)
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, v10, a3, 0);
      v11 = v16;
    }

    else
    {
      v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v14);
      v18 = 2;
      if (!v17)
      {
        v18 = 0;
      }

      v11 = &a2[v18];
    }

    if (v11 != a2)
    {
LABEL_26:
      if (v11 == a2 && v11 != a3)
      {
        v19 = *v11;
        switch(v19)
        {
          case '$':
            std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
            break;
          case '(':
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
            v20 = this->__marked_count_;
            ++this->__open_count_;
            v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this);
            if (v21 == a3 || (v11 = v21, *v21 != 41))
            {
              v24 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
              return std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v24, v25, v26);
            }

            std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v20);
            --this->__open_count_;
            break;
          case '^':
            std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
            break;
          default:
            goto LABEL_37;
        }

        ++v11;
      }

LABEL_37:
      if (v11 == a2)
      {
        return v11;
      }

      goto LABEL_38;
    }

    goto LABEL_22;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v14);
  v11 = a2 + 2;
LABEL_38:
  v22 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v22);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(_BYTE *result, _BYTE *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            v6 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
            return std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(v6, v7, v8, v9);
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  }

  else
  {
    std::regex_traits<char>::__lookup_collatename<char const*>(&v13, a1, __src, v6);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v13;
    v9 = v14;
    *(a4 + 16) = v14;
    v10 = HIBYTE(v9);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (v10 - 1 < 2)
    {
      return v6 + 2;
    }
  }

  v12 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(v12);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_76;
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }
  }

  else if (v5 != 92)
  {
    if (v5 == 97)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return;
    }

    if (v5 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return;
      }

      v5 = 8;
      goto LABEL_57;
    }

LABEL_39:
    if ((v5 & 0xFFFFFFF8) == 0x30)
    {
      v6 = v5 - 48;
      if (a2 + 1 != a3)
      {
        v7 = a2[1];
        if ((v7 & 0xF8) == 0x30)
        {
          v6 = v7 + 8 * v6 - 48;
          v8 = a2 + 2;
          if (a2 + 2 != a3 && (*v8 & 0xF8) == 0x30)
          {
            v6 = *v8 + 8 * v6 - 48;
          }
        }
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v6;
        *(a4 + 1) = 0;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      }

      return;
    }

LABEL_76:
    v10 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::regex_traits<char>::__lookup_collatename<char const*>(v10, v11, v12, v13);
    return;
  }

  if (!a4)
  {
    goto LABEL_57;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v5;
  *(a4 + 1) = 0;
}