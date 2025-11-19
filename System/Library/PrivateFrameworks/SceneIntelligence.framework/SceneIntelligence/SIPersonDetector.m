@interface SIPersonDetector
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SIPersonDetector)initWithNetworkConfiguration:(id)a3;
- (int64_t)copyResultsToData:(id)a3;
- (int64_t)evaluateForInput:(__CVBuffer *)a3;
- (int64_t)evaluateForInput:(id)a3 output:(id)a4;
@end

@implementation SIPersonDetector

- (SIPersonDetector)initWithNetworkConfiguration:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v11.receiver = self;
  v11.super_class = SIPersonDetector;
  v5 = [(SIModel *)&v11 initWithNetworkConfiguration:v4];
  if (v5)
  {
    v12 = kSIME5PersonDetectorInputTensorName;
    v6 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(SIModel *)v5 setInputs:v7];

    kdebug_trace();
    v8 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (CGSize)getInputResolution
{
  v3 = [(SIModel *)self network];
  v4 = [v3 getInputWidth:kSIME5PersonDetectorInputTensorName];
  v5 = [(SIModel *)self network];
  v6 = [v5 getInputHeight:kSIME5PersonDetectorInputTensorName];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)getOutputResolution
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)evaluateForInput:(__CVBuffer *)a3
{
  v5 = [(SIModel *)self inputs];
  v6 = [v5 objectForKeyedSubscript:kSIME5PersonDetectorInputTensorName];
  [v6 setPixelBuffer:a3];

  v7 = [(SIModel *)self inputs];
  v8 = [(SIModel *)self outputs];
  [(SIModel *)self evaluateWithInput:v7 outputs:v8];

  return 0;
}

- (int64_t)evaluateForInput:(id)a3 output:(id)a4
{
  v5 = a3;
  v6 = -[SIPersonDetector evaluateForInput:](self, "evaluateForInput:", [v5 inputImageBuffer]);

  return v6;
}

- (int64_t)copyResultsToData:(id)a3
{
  v110 = *MEMORY[0x277D85DE8];
  v98 = [a3 boundingBoxes];
  kdebug_trace();
  v4 = [(SIModel *)self network];
  v99 = [v4 getOutputHeight:kSIME5PersonDetectorOutputHeatMapTensorName];

  v5 = [(SIModel *)self network];
  v6 = [v5 getOutputWidth:kSIME5PersonDetectorOutputHeatMapTensorName];

  v7 = [(SIModel *)self network];
  v8 = [v7 getRawOutput:kSIME5PersonDetectorOutputHeatMapTensorName];

  v9 = [(SIModel *)self network];
  v10 = [v9 getRawOutput:kSIME5PersonDetectorOutputHeatMapMaxPoolTensorName];

  v11 = [(SIModel *)self network];
  v96 = [v11 getRawOutput:kSIME5PersonDetectorOutputBoundingBoxSizeTensorName];

  v12 = [(SIModel *)self network];
  v95 = [v12 getRawOutput:kSIME5PersonDetectorOutputBoundingBoxCenterTensorName];

  v13 = [(SIModel *)self network];
  v14 = [v13 supportFloat16IO];

  v97 = v98;
  if (v14)
  {
    v104 = 0;
    v105 = 0;
    v103 = &v104;
    v15 = &v104;
    if (v99)
    {
      v16 = 0;
      v17 = 2 * v6;
      do
      {
        v18 = v8;
        v19 = v6;
        v20 = v10;
        for (i = v16; v19; --v19)
        {
          _H0 = *v18;
          __asm { FCVT            D1, H0 }

          if (_D1 > 0.36)
          {
            __asm { FCVT            S1, H0 }

            _H2 = *v20;
            __asm { FCVT            S2, H2 }

            if ((_S1 - _S2) == 0.0)
            {
              v100 = i;
              LOWORD(v101) = _H0;
              std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int>,half>>(&v103, &v100);
            }
          }

          i += 0x100000000;
          ++v20;
          ++v18;
        }

        ++v16;
        v10 += v17;
        v8 += v17;
      }

      while (v16 != v99);
      v15 = v103;
    }

    v100 = 0;
    v101 = 0;
    v102 = 0;
    std::__copy_impl::operator()[abi:nn200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::back_insert_iterator<std::vector<std::pair<std::pair<int,int>,half>>>>(buf, v15, &v104, &v100);
    v31 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 2));
    if (v101 == v100)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    std::__introsort<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,false>(v100, v101, v32, 1);
    v33 = v105;
    if (v105 >= 100)
    {
      v33 = 100;
    }

    v34 = v97;
    std::vector<std::pair<std::pair<int,int>,half>>::resize(&v100, v33);
    v35 = v100;
    if (v101 != v100)
    {
      v36 = 0;
      v37 = 0;
      v38 = v99 * v6;
      v39 = v6;
      v40 = v99;
      do
      {
        v42 = *&v35[v36];
        v41 = *&v35[v36 + 4];
        v43 = v41 + v6 * v42;
        _H13 = *(v95 + 2 * (v43 + v38));
        _H1 = *(v95 + 2 * v43);
        __asm { FCVT            S1, H1 }

        v47 = v41 + _S1;
        LOWORD(_S1) = *(v96 + 2 * v43);
        __asm { FCVT            S11, H1 }

        _H14 = *(v96 + 2 * (v43 + v38));
        v50 = v47 - (_S11 * 0.5);
        if (v50 < 0.0)
        {
          v51 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 182;
            _os_log_impl(&dword_21DE0D000, v51, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] negative origin x received from the model. Set to 0 ***", buf, 0x12u);
          }

          v50 = 0.0;
        }

        __asm
        {
          FCVT            S1, H13
          FCVT            S13, H14
        }

        v54 = (v42 + _S1) - (_S13 * 0.5);
        if (v54 < 0.0)
        {
          v55 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 187;
            _os_log_impl(&dword_21DE0D000, v55, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] negative origin y received from the model. Set to 0 ***", buf, 0x12u);
          }

          v54 = 0.0;
        }

        if (_S11 > v39)
        {
          v56 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 192;
            _os_log_impl(&dword_21DE0D000, v56, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] out of bound width received from the model. Set to max_width ***", buf, 0x12u);
          }

          _S11 = v6;
        }

        if (_S13 > v40)
        {
          v57 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 197;
            _os_log_impl(&dword_21DE0D000, v57, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] out of bound height received from the model. Set to max_height ***", buf, 0x12u);
          }

          _S13 = v99;
        }

        v58 = [SIPersonDetectorBoundingBox alloc];
        _H4 = *&v100[v36 + 8];
        __asm { FCVT            S4, H4 }

        v61 = [(SIPersonDetectorBoundingBox *)v58 initWithBoundingBox:(v50 / v39) confidence:(v54 / v40), (_S11 / v39), (_S13 / v40), _D4];
        [v97 addObject:v61];

        ++v37;
        v35 = v100;
        v36 += 12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 2) > v37);
    }
  }

  else
  {
    v104 = 0;
    v105 = 0;
    v103 = &v104;
    v62 = &v104;
    if (v99)
    {
      v63 = 0;
      v64 = 4 * v6;
      do
      {
        v65 = v8;
        v66 = v6;
        v67 = v10;
        for (j = v63; v66; --v66)
        {
          v69 = *v65;
          if (*v65 > 0.36 && (v69 - *v67) == 0.0)
          {
            v100 = j;
            *&v101 = v69;
            std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int>,float>>(&v103, &v100);
          }

          j += 0x100000000;
          ++v67;
          ++v65;
        }

        ++v63;
        v10 += v64;
        v8 += v64;
      }

      while (v63 != v99);
      v62 = v103;
    }

    v100 = 0;
    v101 = 0;
    v102 = 0;
    std::__copy_impl::operator()[abi:nn200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::back_insert_iterator<std::vector<std::pair<std::pair<int,int>,float>>>>(buf, v62, &v104, &v100);
    v70 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 2));
    if (v101 == v100)
    {
      v71 = 0;
    }

    else
    {
      v71 = v70;
    }

    std::__introsort<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,false>(v100, v101, v71, 1);
    v72 = v105;
    if (v105 >= 100)
    {
      v72 = 100;
    }

    v34 = v97;
    std::vector<std::pair<std::pair<int,int>,float>>::resize(&v100, v72);
    v35 = v100;
    if (v101 != v100)
    {
      v73 = 0;
      v74 = 0;
      v75 = v99 * v6;
      v76 = v6;
      v77 = v99;
      do
      {
        v79 = *&v35[v73];
        v78 = *&v35[v73 + 4];
        v80 = v78 + v6 * v79;
        v81 = *(v95 + 4 * (v80 + v75));
        v82 = *(v96 + 4 * v80);
        v83 = *(v96 + 4 * (v80 + v75));
        v84 = (*(v95 + 4 * v80) + v78) - (v82 * 0.5);
        if (v84 < 0.0)
        {
          v85 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 182;
            _os_log_impl(&dword_21DE0D000, v85, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] negative origin x received from the model. Set to 0 ***", buf, 0x12u);
          }

          v84 = 0.0;
        }

        v86 = (v81 + v79) - (v83 * 0.5);
        if (v86 < 0.0)
        {
          v87 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 187;
            _os_log_impl(&dword_21DE0D000, v87, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] negative origin y received from the model. Set to 0 ***", buf, 0x12u);
          }

          v86 = 0.0;
        }

        if (v82 > v76)
        {
          v88 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 192;
            _os_log_impl(&dword_21DE0D000, v88, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] out of bound width received from the model. Set to max_width ***", buf, 0x12u);
          }

          v82 = v6;
        }

        if (v83 > v77)
        {
          v89 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            *buf = 136380931;
            v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetector.mm";
            v108 = 1025;
            v109 = 197;
            _os_log_impl(&dword_21DE0D000, v89, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] out of bound height received from the model. Set to max_height ***", buf, 0x12u);
          }

          v83 = v99;
        }

        v90 = [SIPersonDetectorBoundingBox alloc];
        LODWORD(v91) = *&v100[v73 + 8];
        v92 = [(SIPersonDetectorBoundingBox *)v90 initWithBoundingBox:(v84 / v76) confidence:(v86 / v77), (v82 / v76), (v83 / v77), v91];
        [v97 addObject:v92];

        ++v74;
        v35 = v100;
        v73 += 12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 2) > v74);
    }
  }

  if (v35)
  {
    v101 = v35;
    operator delete(v35);
  }

  std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::destroy(&v103, v104);

  kdebug_trace();
  v93 = *MEMORY[0x277D85DE8];
  return 0;
}

@end