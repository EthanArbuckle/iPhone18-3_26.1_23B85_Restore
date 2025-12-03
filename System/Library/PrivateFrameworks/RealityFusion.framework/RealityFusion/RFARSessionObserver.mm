@interface RFARSessionObserver
- (RFARSessionObserver)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)processAddedAnchors:(id)anchors;
- (void)processRemovedAnchors:(id)anchors;
- (void)processUpdatedAnchors:(id)anchors;
- (void)processUpdatedExternalAnchors:(id)anchors;
- (void)setCallback:(function<void (rf::data_flow::provider::InputData)&&;
- (void)updateSession:(id)session withTime:(double)time;
@end

@implementation RFARSessionObserver

- (RFARSessionObserver)init
{
  v3.receiver = self;
  v3.super_class = RFARSessionObserver;
  return [(RFARSessionObserver *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RFARSessionObserver;
  [(RFARSessionObserver *)&v2 dealloc];
}

- (void)processAddedAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__RFARSessionObserver_processAddedAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __43__RFARSessionObserver_processAddedAnchors___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v100 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 1065353216;
  v49 = 0;
  v69 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v68 = 0;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v74 = 0;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  memset(v27, 0, 24);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v0;
  v1 = *(v0 + 32);
  v2 = [v1 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v2)
  {
    v3 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(v1);
        }

        *&v29 = *(*(&v23 + 1) + 8 * v4);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v27, &v29);

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v2);
  }

  v33[0] = &unk_287408190;
  v33[3] = v33;
  std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(&v29, v33, *(v16 + 32));
  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(&v35);
  v35 = v29;
  *&v36 = v30;
  v30 = 0;
  v29 = 0uLL;
  rf::data_flow::provider::InputData::~InputData(&v29);
  *(&v29 + 1) = v27;
  v31 = 0;
  v32 = 0;
  std::vector<rf::data_flow::EnvironmentProbe>::vector[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>,rf::data_flow::EnvironmentProbe (*)(ARAnchor *)>>(&v17, &v29);
  std::vector<rf::data_flow::EnvironmentProbe>::__vdeallocate(&v50);
  v50 = v17;
  *&v51 = v18;
  v18 = 0;
  v17 = 0uLL;
  v99 = &v17;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v99);
  v5 = *(v16 + 40);
  *(&v17 + 1) = v27;
  v15 = v5;
  *&v17 = v15;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v21 = 0uLL;
  v7 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v17 + 8);
  v8 = *(*(&v17 + 1) + 8);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v9 = v6;
    v10 = 0;
    do
    {
      v11 = v7 + 1;
      v7 = *(*v9 + 1);
      while (v11 != v7)
      {
        if (v9[1](*v11))
        {
          v7 = v11;
          break;
        }

        ++v11;
      }

      ++v10;
    }

    while (v7 != v8);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v17 + 8);
  v12 = *(*(&v17 + 1) + 8);
  v27[3] = &v21;
  v28 = 0;
  if (v10)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v21, v10);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(v39 + 1);
  *(v39 + 8) = v21;
  *(&v39[1] + 1) = v22;
  v22 = 0;
  v21 = 0uLL;
  *&v29 = &v21;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&v29);

  v13 = *(*(v16 + 40) + 32);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, &v35);
  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](v33);
  *&v29 = v27;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v29);
  rf::data_flow::provider::InputData::~InputData(&v35);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)processUpdatedAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__RFARSessionObserver_processUpdatedAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __45__RFARSessionObserver_processUpdatedAnchors___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v82 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  v48 = 0;
  v52 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0u;
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  memset(v27, 0, 24);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v1 = *(v0 + 32);
  v2 = [v1 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v2)
  {
    v3 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v29[0] = *(*(&v23 + 1) + 8 * v4);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v27, v29);

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v2);
  }

  v32[0] = &unk_287408220;
  v32[3] = v32;
  std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(v29, v32, *(v0 + 32));
  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(&v34[1] + 1);
  *(&v34[1] + 8) = v30;
  *(&v34[2] + 1) = v31;
  v31 = 0;
  v30 = 0uLL;
  rf::data_flow::provider::InputData::~InputData(v29);
  v29[1] = v27;
  LOBYTE(v30) = 0;
  BYTE8(v30) = 0;
  std::vector<rf::data_flow::EnvironmentProbe>::vector[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>,rf::data_flow::EnvironmentProbe (*)(ARAnchor *)>>(&v17, v29);
  std::vector<rf::data_flow::EnvironmentProbe>::__vdeallocate(v50 + 1);
  *(v50 + 8) = v17;
  *(&v50[1] + 1) = v18;
  v18 = 0;
  v17 = 0uLL;
  *&v21 = &v17;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v21);
  v5 = *(v0 + 40);
  *(&v17 + 1) = v27;
  v6 = v5;
  *&v17 = v6;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v21 = 0uLL;
  v8 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v17 + 8);
  v9 = *(*(&v17 + 1) + 8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    do
    {
      v12 = v8 + 1;
      v8 = *(*v10 + 1);
      while (v12 != v8)
      {
        if (v10[1](*v12))
        {
          v8 = v12;
          break;
        }

        ++v12;
      }

      ++v11;
    }

    while (v8 != v9);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v17 + 8);
  v13 = v0;
  v14 = *(*(&v17 + 1) + 8);
  v27[3] = &v21;
  v28 = 0;
  if (v11)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v21, v11);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v35);
  v35 = v21;
  *&v36 = v22;
  v22 = 0;
  v21 = 0uLL;
  v29[0] = &v21;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v29);

  v15 = *(*(v13 + 40) + 32);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(v15, v34);
  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](v32);
  v29[0] = v27;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v29);
  rf::data_flow::provider::InputData::~InputData(v34);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)processRemovedAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__RFARSessionObserver_processRemovedAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __45__RFARSessionObserver_processRemovedAnchors___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v110 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  memset(v44, 0, sizeof(v44));
  __p = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v50 = 0u;
  v51 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 1065353216;
  v60 = 0;
  v80 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v85 = 0;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  memset(v35, 0, 24);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v0;
  v1 = *(v0 + 32);
  v2 = [v1 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v2)
  {
    v3 = *v32;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v32 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v39[0] = *(*(&v31 + 1) + 8 * i);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v35, v39);
      }

      v2 = [v1 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v2);
  }

  v42[0] = &unk_2874082A0;
  v42[3] = v42;
  std::function<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(v39, v42, *(v23 + 32));
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v40;
  *&v46 = v41;
  v41 = 0;
  v40 = 0uLL;
  rf::data_flow::provider::InputData::~InputData(v39);
  v24 = v35;
  LOBYTE(v26) = 0;
  v27 = 0;
  v38 = 0;
  v37 = 0uLL;
  v6 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v24);
  v7 = v24[1];
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v8 = v5;
    v9 = 0;
    do
    {
      v10 = v6 + 1;
      v6 = *(*v8 + 1);
      while (v10 != v6)
      {
        if (v8[1](*v10))
        {
          v6 = v10;
          break;
        }

        ++v10;
      }

      ++v9;
    }

    while (v6 != v7);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v24);
  if (v9)
  {
    v11 = v24[1];
    std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](&v37, v9);
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  v64 = v37;
  *&v65 = v38;
  v12 = *(v23 + 40);
  v25 = v35;
  v13 = v12;
  v24 = v13;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v29 = 0uLL;
  v15 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v25);
  v16 = *(v25 + 1);
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v17 = v14;
    v18 = 0;
    do
    {
      v19 = v15 + 1;
      v15 = *(*v17 + 1);
      while (v19 != v15)
      {
        if (v17[1](*v19))
        {
          v15 = v19;
          break;
        }

        ++v19;
      }

      ++v18;
    }

    while (v15 != v16);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](&v25);
  v20 = *(v25 + 1);
  v35[3] = &v29;
  v36 = 0;
  if (v18)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v29, v18);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v49[1]);
  *&v49[1] = v29;
  v49[3] = v30;
  v30 = 0;
  v29 = 0uLL;
  v39[0] = &v29;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v39);

  v21 = *(*(v23 + 40) + 32);
  if (!v21)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v21 + 48))(v21, v44);
  std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](v42);
  v39[0] = v35;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v39);
  rf::data_flow::provider::InputData::~InputData(v44);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)processUpdatedExternalAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v5 = *(self + 21);
  v6 = *(self + 22);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__RFARSessionObserver_processUpdatedExternalAnchors___block_invoke;
  v8[3] = &unk_279AED1A0;
  v9 = anchorsCopy;
  selfCopy = self;
  v7 = anchorsCopy;
  dispatch_group_async(v5, v6, v8);
}

void __53__RFARSessionObserver_processUpdatedExternalAnchors___block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0u;
  v31 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 1065353216;
  v40 = 0;
  v60 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v65 = 0;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  memset(v26, 0, 24);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v2)
  {
    v3 = *v23;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v90[0] = *(*(&v22 + 1) + 8 * i);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v26, v90);
      }

      v2 = [v1 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v2);
  }

  v5 = *(a1 + 40);
  v17[0] = v26;
  v15 = v5;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0uLL;
  v7 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v8 = *(v17[0] + 8);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v9 = v6;
    v10 = 0;
    do
    {
      v11 = v7 + 1;
      v7 = *(*v9 + 1);
      while (v11 != v7)
      {
        if (v9[1](*v11))
        {
          v7 = v11;
          break;
        }

        ++v11;
      }

      ++v10;
    }

    while (v7 != v8);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v12 = *(v17[0] + 8);
  v26[3] = &v20;
  v27 = 0;
  if (v10)
  {
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vallocate[abi:ne200100](&v20, v10);
  }

  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v30);
  v30 = v20;
  v31 = v21;
  v21 = 0;
  v20 = 0uLL;
  v90[0] = &v20;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](v90);

  v13 = *(*(a1 + 40) + 32);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, v29);
  v90[0] = v26;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v90);
  rf::data_flow::provider::InputData::~InputData(v29);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCallback:(function<void (rf::data_flow::provider::InputData)&&
{
  v11[3] = *MEMORY[0x277D85DE8];
  f = a3->__f_.__f_;
  if (f)
  {
    if (f == a3)
    {
      v10 = v9;
      (*(*f->__f_.__buf_.__data + 24))(f, v9);
    }

    else
    {
      v10 = (*(*f->__f_.__buf_.__data + 16))(f, a2);
    }
  }

  else
  {
    v10 = 0;
  }

  v5 = self + 8;
  if (v9 != self + 8)
  {
    v6 = v10;
    v7 = *(self + 4);
    if (v10 == v9)
    {
      if (v7 == v5)
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = 0;
        (*(**(self + 4) + 24))(*(self + 4), v9);
        (*(**(self + 4) + 32))(*(self + 4));
        *(self + 4) = 0;
        v10 = v9;
        (*(v11[0] + 24))(v11, self + 8);
        (*(v11[0] + 32))(v11);
      }

      else
      {
        (*(*v10 + 24))();
        (*(*v10 + 32))(v10);
        v10 = *(self + 4);
      }

      *(self + 4) = v5;
    }

    else if (v7 == v5)
    {
      (*(*v7 + 24))(*(self + 4), v9);
      (*(**(self + 4) + 32))(*(self + 4));
      *(self + 4) = v10;
      v10 = v9;
    }

    else
    {
      v10 = *(self + 4);
      *(self + 4) = v6;
    }
  }

  std::__function::__value_func<void ()(rf::data_flow::provider::InputData &&)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateSession:(id)session withTime:(double)time
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  std::mutex::lock((self + 96));
  v7 = *(self + 10);
  if (*(self + 88) == 1 && v7 != 0)
  {
    v9 = v7 - 1;
    do
    {
      v10 = rf::realityFusionLogObject(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [*(*(*(self + 6) + ((*(self + 9) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(self + 9) & 0x1FFLL)) identifier];
        uUIDString = [identifier UUIDString];
        v13 = uUIDString;
        uTF8String = [uUIDString UTF8String];
        *buf = 136446210;
        v20 = uTF8String;
        _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "RFARSessionObserver: Attempting to re-add anchor %{public}s in queue to ARKit", buf, 0xCu);
      }

      [sessionCopy addAnchor:*(*(*(self + 6) + ((*(self + 9) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(self + 9) & 0x1FFLL))];
      v15 = vaddq_s64(*(self + 72), xmmword_261864070);
      *(self + 72) = v15;
      if (v15.i64[0] >= 0x400uLL)
      {
        operator delete(**(self + 6));
        *(self + 6) += 8;
        *(self + 9) -= 512;
      }

      v17 = v9-- != 0;
    }

    while (*(self + 88) == 1 && v17);
  }

  std::mutex::unlock((self + 96));

  v18 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 850045863;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 19) = 0;
  return self;
}

@end