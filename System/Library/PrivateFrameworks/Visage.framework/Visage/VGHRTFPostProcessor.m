@interface VGHRTFPostProcessor
- (VGHRTFPostProcessor)initWithConfig:(id)a3 error:(id *)a4;
- (id)processCaptureUpdateData:(id)a3 error:(id *)a4;
@end

@implementation VGHRTFPostProcessor

- (VGHRTFPostProcessor)initWithConfig:(id)a3 error:(id *)a4
{
  v42[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39.receiver = self;
  v39.super_class = VGHRTFPostProcessor;
  v7 = [(VGHRTFPostProcessor *)&v39 init];
  if (v7)
  {
    v8 = [v6 version];
    version = v7->_version;
    v7->_version = v8;

    v10 = [v6 debugDataRootPath];
    debugPath = v7->_debugPath;
    v7->_debugPath = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.visage"];
    if ([v12 BOOLForKey:@"useLocalHRTFModels"])
    {
      v13 = __VGLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_INFO, " Using hrtf models from the Visage framework ", buf, 2u);
      }

      v14 = [MEMORY[0x277CCA8D8] vg_bundle];
      v15 = [v14 resourcePath];
      modelsRootPath = v7->_modelsRootPath;
      v7->_modelsRootPath = v15;
    }

    else
    {
      v18 = [v6 modelsRootPath];
      v19 = v18 == 0;

      if (v19)
      {
        v27 = __VGLogSharedInstance();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_ERROR, " No hrtf models root path received! ", buf, 2u);
        }

        vg::hrtf::setError(a4, @"Failed to initialize VGHRTFPostProcessor with nil models path");
        goto LABEL_22;
      }

      v20 = MEMORY[0x277CCACA8];
      v14 = [v6 modelsRootPath];
      v42[0] = v14;
      v42[1] = @"HRTFModels";
      modelsRootPath = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v21 = [v20 pathWithComponents:modelsRootPath];
      v22 = v7->_modelsRootPath;
      v7->_modelsRootPath = v21;
    }

    v23 = __VGLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v7->_modelsRootPath;
      *buf = 138412290;
      v41 = v24;
      _os_log_impl(&dword_270F06000, v23, OS_LOG_TYPE_INFO, " Using HRTFModels at path: %@ ", buf, 0xCu);
    }

    if (![v6 writeDebugData])
    {
      goto LABEL_16;
    }

    if (v7->_debugPath)
    {
LABEL_13:
      v25 = __VGLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = v7->_debugPath;
        *buf = 138412290;
        v41 = v26;
        _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_DEBUG, " Using dump path for HRTF post processor data: %@ ", buf, 0xCu);
      }

LABEL_16:
      v7->_finished = 0;
      v17 = v7;
LABEL_23:

      goto LABEL_24;
    }

    v28 = objc_opt_new();
    [v28 setDateFormat:@"yyyyMMdd_HHmmss_SSS"];
    v29 = [MEMORY[0x277CBEAA8] date];
    v30 = [v28 stringFromDate:v29];

    v31 = [@"/private/var/mobile/Library/Caches/VisageTestApp/HRTF/" stringByAppendingPathComponent:v30];
    v32 = v7->_debugPath;
    v7->_debugPath = v31;

    v33 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = v7->_debugPath;
    v38 = 0;
    [v33 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:0 error:&v38];
    v35 = v38;

    if (!v35)
    {

      goto LABEL_13;
    }

    vg::hrtf::setError(a4, @"Failed to create debug path.");

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  vg::hrtf::setError(a4, @"Failed to initialize VGHRTFPostProcessor.");
  v17 = 0;
LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)processCaptureUpdateData:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v68 = a3;
  v4 = __VGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v4, OS_LOG_TYPE_DEBUG, " Started HRTF model processing... ", buf, 2u);
  }

  v5 = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
  [v5 setState:0];
  std::string::basic_string[abi:ne200100]<0>(buf, -[NSString UTF8String](self->_modelsRootPath, "UTF8String"));
  vg::hrtf::HRTFModel::create(buf, &v78);
  if (SBYTE7(v74[0]) < 0)
  {
    operator delete(*buf);
  }

  if (!v78)
  {
    v39 = @"Failed to create HRTFModel.";
LABEL_33:
    vg::hrtf::setError(a4, v39);
    v58 = 0;
    goto LABEL_34;
  }

  v6 = [v68 faceCaptureUpdateData];
  if (!v6)
  {
    v39 = @"Face capture update data unavailable.";
    goto LABEL_33;
  }

  v64 = v5;
  v7 = [v68 faceCaptureUpdateData];
  v8 = [v7 result];
  v9 = v8 == 0;

  if (v9)
  {
    v39 = @"Face capture update data unavailable.";
LABEL_32:
    v5 = v64;
    goto LABEL_33;
  }

  v5 = v64;
  v10 = [v68 earCaptureUpdateData];
  if (!v10)
  {
    v39 = @"Ear capture update data unavailable.";
    goto LABEL_33;
  }

  v11 = [v68 earCaptureUpdateData];
  v12 = [v11 result];
  v13 = v12 == 0;

  if (v13)
  {
    v39 = @"Ear capture update data unavailable.";
    goto LABEL_32;
  }

  *__p = 0u;
  v77 = 0u;
  v75 = 0u;
  *buf = 0u;
  memset(v74, 0, sizeof(v74));
  v14 = [v68 faceCaptureUpdateData];
  v67 = [v14 result];

  for (i = 0; i < [v67 count]; ++i)
  {
    v72 = [v67 objectAtIndexedSubscript:i];
    *&v80 = [v72 rgbImage];
    v16 = [v67 objectAtIndexedSubscript:i];
    *(&v80 + 1) = [v16 depthImage];
    v17 = [v67 objectAtIndexedSubscript:i];
    [v17 depthIntrinsics];
    v19 = v18;
    HIDWORD(v19) = v71;
    HIDWORD(v20) = v70;
    HIDWORD(v21) = v69;
    v81 = v19;
    v82 = v20;
    v83 = v21;
    v22 = [v67 objectAtIndexedSubscript:i];
    v23 = [v22 landmarks];
    v24 = [v23 count];
    v25 = (((4 * v24) & 0x3FFFFFFF8) + 31) & 0x7FFFFFFE0;
    v84 = 0;
    v85 = v25 >> 2;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v25, 0xE1AC2527uLL);
    v26 = memptr[0];
    v84 = memptr[0];
    v86 = v24 >> 1;
    if (v86)
    {
      v27 = 0;
      v28 = v24 & 0x1FFFFFFFELL;
      do
      {
        v29 = [v23 objectAtIndexedSubscript:v27];
        [v29 floatValue];
        v26[v27] = v30;

        v31 = [v23 objectAtIndexedSubscript:(v27 + 1)];
        [v31 floatValue];
        v26[(v27 + 1)] = v32;

        v27 += 2;
      }

      while (v28 != v27);
    }

    v33 = *&buf[8];
    if (*&buf[8] >= *&v74[0])
    {
      v38 = std::vector<vg::hrtf::FaceFrameData>::__emplace_back_slow_path<vg::hrtf::FaceFrameData>(buf, &v80);
      v34 = v84;
    }

    else
    {
      v34 = 0;
      v35 = v80;
      v80 = 0u;
      **&buf[8] = v35;
      v36 = v82;
      v37 = v83;
      *(v33 + 16) = v81;
      *(v33 + 32) = v36;
      *(v33 + 48) = v37;
      *(v33 + 64) = 0u;
      *(v33 + 64) = v84;
      *(v33 + 72) = v85;
      *(v33 + 80) = v86;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v38 = v33 + 96;
    }

    *&buf[8] = v38;
    free(v34);
  }

  v40 = [v68 earCaptureUpdateData];
  v41 = [v40 result];
  v42 = [v41 leftEarFrames];

  v43 = [v68 earCaptureUpdateData];
  v44 = [v43 result];
  v45 = [v44 rightEarFrames];

  for (j = 0; j < [v42 count]; ++j)
  {
    v47 = [v42 objectAtIndexedSubscript:j];
    *&v80 = [v47 rgbImage];
    v48 = [v42 objectAtIndexedSubscript:j];
    *(&v80 + 1) = [v48 depthImage];
    v49 = [v42 objectAtIndexedSubscript:j];
    [v49 earBox];
    v81 = v50;
    std::vector<vg::hrtf::EarFrameData>::push_back[abi:ne200100](v74 + 8, &v80);
  }

  for (k = 0; k < [v45 count]; ++k)
  {
    v52 = [v45 objectAtIndexedSubscript:k];
    *&v80 = [v52 rgbImage];
    v53 = [v45 objectAtIndexedSubscript:k];
    *(&v80 + 1) = [v53 depthImage];
    v54 = [v45 objectAtIndexedSubscript:k];
    [v54 earBox];
    v81 = v55;
    std::vector<vg::hrtf::EarFrameData>::push_back[abi:ne200100](&v75, &v80);
  }

  version = self->_version;
  if (version)
  {
    v57 = [(NSString *)version UTF8String];
  }

  else
  {
    v57 = "";
  }

  std::string::__assign_external(&__p[1], v57);
  LOBYTE(v80) = 0;
  BYTE8(v81) = 0;
  debugPath = self->_debugPath;
  if (debugPath)
  {
    memptr[0] = [(NSString *)debugPath UTF8String];
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v80, memptr);
  }

  v62 = vg::hrtf::HRTFModel::predict(v78, buf, &v80);
  if (v62)
  {
    [v64 setState:1];
    [v64 setResult:v62];
    v63 = __VGLogSharedInstance();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(memptr[0]) = 0;
      _os_log_impl(&dword_270F06000, v63, OS_LOG_TYPE_DEBUG, " Successfully finished HRTF model processing ", memptr, 2u);
    }

    self->_finished = 1;
    v58 = v64;
  }

  else
  {
    vg::hrtf::setError(a4, @"Failed to predict HRTF results.");
    v58 = 0;
  }

  if (BYTE8(v81) == 1 && SBYTE7(v81) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p[1]);
  }

  *&v80 = &v75;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v80);
  *&v80 = v74 + 8;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v80);
  *&v80 = buf;
  std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](&v80);
  v5 = v64;
LABEL_34:
  std::unique_ptr<vg::hrtf::HRTFModel>::~unique_ptr[abi:ne200100](&v78);

  v59 = *MEMORY[0x277D85DE8];

  return v58;
}

@end