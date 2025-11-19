@interface PSEVideoProcessor
+ (BOOL)needsProcessing;
+ (uint64_t)needsProcessing;
+ (void)initialize;
- (BOOL)canProcessSurface:(__IOSurface *)a3;
- (KernelData)_prepare_contrast_kernels;
- (PSEVideoProcessor)init;
- (id)_prepare_gamma_kernel:(float)a3 shape:(float)a4 scale:(float)a5;
- (int)_colorSpaceFromSurface:(__IOSurface *)a3;
- (int)_colorSpaceValueForName:(__CFString *)a3;
- (int)_computeFrameRateIndexSelection;
- (unint64_t)_pixelFormatForSurface:(__IOSurface *)a3;
- (void)_computeDisplaySizeIndexSelection;
- (void)_computeFrameRateIndexSelection;
- (void)_initialize;
- (void)_initializeProtectedBuffers:(unint64_t)a3;
- (void)_processFrame:(id)a3 sourceSurface:(__IOSurface *)a4 outSurface:(__IOSurface *)a5;
- (void)_processSurface:(__IOSurface *)a3 withTimestamp:(double)a4 destinationSurface:(__IOSurface *)a5 options:(id)a6;
- (void)_resetState:(unint64_t)a3;
- (void)_sourceCopyDebuggingChanged:(id)a3;
- (void)_visualDebuggingChanged:(id)a3;
- (void)processSourceSurface:(__IOSurface *)a3 withTimestamp:(double)a4 toDestinationSurface:(__IOSurface *)a5 options:(id)a6;
- (void)setValidationCallback:(id)a3;
@end

@implementation PSEVideoProcessor

+ (BOOL)needsProcessing
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v2 = get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr;
  v16 = get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr;
  if (!get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke;
    v11 = &unk_279A34A78;
    v12 = &v13;
    v3 = libAccessibilityLibrary();
    v14[3] = dlsym(v3, "_AXSPhotosensitiveMitigationEnabled");
    get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr = *(v12[1] + 24);
    v2 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v2)
  {
    +[PSEVideoProcessor needsProcessing];
    goto LABEL_11;
  }

  v4 = v2();
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v5 = getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_ptr;
    v16 = getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_ptr;
    if (!getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_ptr)
    {
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_block_invoke;
      v11 = &unk_279A34A78;
      v12 = &v13;
      __getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_block_invoke(&v8);
      v5 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (v5)
    {
      LOBYTE(v4) = v5();
      return v4;
    }

LABEL_11:
    v6 = +[PSEVideoProcessor needsProcessing];
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v6);
  }

  return v4;
}

+ (void)initialize
{
  PSELog = os_log_create("com.apple.Accessibility", "Photosensitivity");

  MEMORY[0x2821F96F8]();
}

- (PSEVideoProcessor)init
{
  v17.receiver = self;
  v17.super_class = PSEVideoProcessor;
  v2 = [(PSEVideoProcessor *)&v17 init];
  v2->_needsInitialization = 1;
  v3 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v3;

  if (!v2->_swiftProcessor)
  {
    v5 = objc_opt_new();
    swiftProcessor = v2->_swiftProcessor;
    v2->_swiftProcessor = v5;
  }

  [(PSEVideoProcessor *)v2 _visualDebuggingChanged:0];
  [(PSEVideoProcessor *)v2 _sourceCopyDebuggingChanged:0];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_ptr;
  v26 = getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_ptr;
  if (!getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_ptr)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_block_invoke;
    v21 = &unk_279A34A78;
    v22 = &v23;
    v9 = libAccessibilityLibrary();
    v10 = dlsym(v9, "kAXSPhotosensitiveVisualDebuggingEnabledNotification");
    *(v22[1] + 24) = v10;
    getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_ptr = *(v22[1] + 24);
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    +[PSEVideoProcessor needsProcessing];
    goto LABEL_11;
  }

  [v7 addObserver:v2 selector:sel__visualDebuggingChanged_ name:*v8 object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v12 = getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_ptr;
  v26 = getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_ptr;
  if (!getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_ptr)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_block_invoke;
    v21 = &unk_279A34A78;
    v22 = &v23;
    v13 = libAccessibilityLibrary();
    v14 = dlsym(v13, "kAXSPhotosensitiveSourceCopyDebuggingEnabledNotification");
    *(v22[1] + 24) = v14;
    getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_ptr = *(v22[1] + 24);
    v12 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v12)
  {
LABEL_11:
    v16 = +[PSEVideoProcessor needsProcessing];
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v16);
  }

  [v11 addObserver:v2 selector:sel__sourceCopyDebuggingChanged_ name:*v12 object:0];

  return v2;
}

- (void)_visualDebuggingChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  self->_bufferConstants.bDebug = soft_AXSPhotosensitiveVisualDebuggingEnabled() != 0;
  [(SwiftVideoProcessor *)self->_swiftProcessor setDebugMode:soft_AXSPhotosensitiveVisualDebuggingEnabled() != 0];
  if (a3)
  {
    v5 = PSELog;
    if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CCABB0];
      bCopyOnly = self->_bufferConstants.bCopyOnly;
      v8 = v5;
      v9 = [v6 numberWithBool:bCopyOnly];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_25E78C000, v8, OS_LOG_TYPE_DEFAULT, "Visual debug mode: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sourceCopyDebuggingChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  self->_bufferConstants.bCopyOnly = soft_AXSPhotosensitiveSourceCopyDebuggingEnabled() != 0;
  [(SwiftVideoProcessor *)self->_swiftProcessor setCopySourceOnlyDebugging:soft_AXSPhotosensitiveSourceCopyDebuggingEnabled() != 0];
  if (a3)
  {
    v5 = PSELog;
    if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CCABB0];
      bCopyOnly = self->_bufferConstants.bCopyOnly;
      v8 = v5;
      v9 = [v6 numberWithBool:bCopyOnly];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_25E78C000, v8, OS_LOG_TYPE_DEFAULT, "Source copy only mode: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setValidationCallback:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(v4);
  validationCallback = self->_validationCallback;
  self->_validationCallback = v5;

  [(SwiftVideoProcessor *)self->_swiftProcessor setValidationCallback:v4];
  self->_bufferConstants.bCallbackValues = v4 != 0;
}

- (void)_initialize
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25E78C000, v0, v1, "error creating cs_compute_risk_pass3 %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__PSEVideoProcessor__initialize__block_invoke()
{
  v0 = UFMKernels;
  UFMKernels = &unk_287078128;

  v1 = qword_27FD068B8;
  qword_27FD068B8 = &unk_287078140;

  v2 = qword_27FD068C0;
  qword_27FD068C0 = &unk_287078158;

  v3 = qword_27FD068C8;
  qword_27FD068C8 = &unk_287078170;

  v4 = qword_27FD068D0;
  qword_27FD068D0 = &unk_287078188;

  v5 = qword_27FD068D8;
  qword_27FD068D8 = &unk_2870781A0;

  v6 = qword_27FD068E0;
  qword_27FD068E0 = &unk_2870781B8;

  v7 = qword_27FD068E8;
  qword_27FD068E8 = &unk_2870781D0;

  v8 = qword_27FD068F0;
  qword_27FD068F0 = &unk_2870781E8;

  v9 = qword_27FD068F8;
  qword_27FD068F8 = &unk_287078200;

  v10 = qword_27FD06900;
  qword_27FD06900 = &unk_287078218;

  v11 = qword_27FD06908;
  qword_27FD06908 = &unk_287078230;

  v12 = qword_27FD06910;
  qword_27FD06910 = &unk_287078248;

  v13 = qword_27FD06918;
  qword_27FD06918 = &unk_287078260;

  v14 = qword_27FD06920;
  qword_27FD06920 = &unk_287078278;

  v15 = qword_27FD06928;
  qword_27FD06928 = &unk_287078290;

  v16 = qword_27FD06930;
  qword_27FD06930 = &unk_2870782A8;

  v17 = qword_27FD06938;
  qword_27FD06938 = &unk_2870782C0;

  v18 = qword_27FD06940;
  qword_27FD06940 = &unk_2870782D8;

  v19 = qword_27FD06948;
  qword_27FD06948 = &unk_2870782F0;

  v20 = qword_27FD06950;
  qword_27FD06950 = &unk_287078308;

  v21 = qword_27FD06958;
  qword_27FD06958 = &unk_287078320;

  v22 = qword_27FD06960;
  qword_27FD06960 = &unk_287078338;

  v23 = qword_27FD06968;
  qword_27FD06968 = &unk_287078350;

  v24 = qword_27FD06970;
  qword_27FD06970 = &unk_287078368;

  v25 = qword_27FD06978;
  qword_27FD06978 = &unk_287078380;

  v26 = qword_27FD06980;
  qword_27FD06980 = &unk_287078398;

  v27 = qword_27FD06988;
  qword_27FD06988 = &unk_2870783B0;

  v28 = qword_27FD06990;
  qword_27FD06990 = &unk_2870783C8;

  v29 = qword_27FD06998;
  qword_27FD06998 = &unk_2870783E0;

  v30 = qword_27FD069A0;
  qword_27FD069A0 = &unk_2870783F8;

  v31 = qword_27FD069A8;
  qword_27FD069A8 = &unk_287078410;

  v32 = qword_27FD069B0;
  qword_27FD069B0 = &unk_287078428;

  v33 = qword_27FD069B8;
  qword_27FD069B8 = &unk_287078440;

  v34 = qword_27FD069C0;
  qword_27FD069C0 = &unk_287078458;

  v35 = qword_27FD069C8;
  qword_27FD069C8 = &unk_287078470;

  v36 = qword_27FD069D0;
  qword_27FD069D0 = &unk_287078488;

  v37 = qword_27FD069D8;
  qword_27FD069D8 = &unk_2870784A0;

  v38 = qword_27FD069E0;
  qword_27FD069E0 = &unk_2870784B8;

  v39 = qword_27FD069E8;
  qword_27FD069E8 = &unk_2870784D0;

  v40 = qword_27FD069F0;
  qword_27FD069F0 = &unk_2870784E8;

  v41 = qword_27FD069F8;
  qword_27FD069F8 = &unk_287078500;

  v42 = qword_27FD06A00;
  qword_27FD06A00 = &unk_287078518;

  v43 = qword_27FD06A08;
  qword_27FD06A08 = &unk_287078530;

  v44 = qword_27FD06A10;
  qword_27FD06A10 = &unk_287078548;

  v45 = qword_27FD06A18;
  qword_27FD06A18 = &unk_287078560;

  v46 = qword_27FD06A20;
  qword_27FD06A20 = &unk_287078578;

  v47 = qword_27FD06A28;
  qword_27FD06A28 = &unk_287078590;

  v48 = qword_27FD06A30;
  qword_27FD06A30 = &unk_2870785A8;

  v49 = qword_27FD06A38;
  qword_27FD06A38 = &unk_2870785C0;

  v50 = qword_27FD06A40;
  qword_27FD06A40 = &unk_2870785D8;

  v51 = qword_27FD06A48;
  qword_27FD06A48 = &unk_2870785F0;

  v52 = qword_27FD06A50;
  qword_27FD06A50 = &unk_287078608;

  v53 = qword_27FD06A58;
  qword_27FD06A58 = &unk_287078620;

  v54 = qword_27FD06A60;
  qword_27FD06A60 = &unk_287078638;

  v55 = qword_27FD06A68;
  qword_27FD06A68 = &unk_287078650;

  v56 = qword_27FD06A70;
  qword_27FD06A70 = &unk_287078668;

  v57 = qword_27FD06A78;
  qword_27FD06A78 = &unk_287078680;

  v58 = qword_27FD06A80;
  qword_27FD06A80 = &unk_287078698;

  v59 = qword_27FD06A88;
  qword_27FD06A88 = &unk_2870786B0;

  v60 = qword_27FD06A90;
  qword_27FD06A90 = &unk_2870786C8;

  v61 = qword_27FD06A98;
  qword_27FD06A98 = &unk_2870786E0;

  v62 = qword_27FD06AA0;
  qword_27FD06AA0 = &unk_2870786F8;

  v63 = qword_27FD06AA8;
  qword_27FD06AA8 = &unk_287078710;

  v64 = qword_27FD06AB0;
  qword_27FD06AB0 = &unk_287078728;

  v65 = qword_27FD06AB8;
  qword_27FD06AB8 = &unk_287078740;

  v66 = qword_27FD06AC0;
  qword_27FD06AC0 = &unk_287078758;

  v67 = qword_27FD06AC8;
  qword_27FD06AC8 = &unk_287078770;

  v68 = qword_27FD06AD0;
  qword_27FD06AD0 = &unk_287078788;

  v69 = qword_27FD06AD8;
  qword_27FD06AD8 = &unk_2870787A0;

  v70 = qword_27FD06AE0;
  qword_27FD06AE0 = &unk_2870787B8;

  v71 = qword_27FD06AE8;
  qword_27FD06AE8 = &unk_2870787D0;

  v72 = qword_27FD06AF0;
  qword_27FD06AF0 = &unk_2870787E8;

  v73 = qword_27FD06AF8;
  qword_27FD06AF8 = &unk_287078800;

  v74 = qword_27FD06B00;
  qword_27FD06B00 = &unk_287078818;

  v75 = qword_27FD06B08;
  qword_27FD06B08 = &unk_287078830;

  v76 = qword_27FD06B10;
  qword_27FD06B10 = &unk_287078848;

  v77 = qword_27FD06B18;
  qword_27FD06B18 = &unk_287078860;

  v78 = qword_27FD06B20;
  qword_27FD06B20 = &unk_287078878;

  v79 = qword_27FD06B28;
  qword_27FD06B28 = &unk_287078890;

  v80 = qword_27FD06B30;
  qword_27FD06B30 = &unk_2870788A8;

  v81 = qword_27FD06B38;
  qword_27FD06B38 = &unk_2870788C0;

  v82 = qword_27FD06B40;
  qword_27FD06B40 = &unk_2870788D8;

  v83 = qword_27FD06B48;
  qword_27FD06B48 = &unk_2870788F0;

  v84 = qword_27FD06B50;
  qword_27FD06B50 = &unk_287078908;

  v85 = qword_27FD06B58;
  qword_27FD06B58 = &unk_287078920;

  v86 = qword_27FD06B60;
  qword_27FD06B60 = &unk_287078938;

  v87 = qword_27FD06B68;
  qword_27FD06B68 = &unk_287078950;

  v88 = qword_27FD06B70;
  qword_27FD06B70 = &unk_287078968;

  v89 = qword_27FD06B78;
  qword_27FD06B78 = &unk_287078980;

  v90 = qword_27FD06B80;
  qword_27FD06B80 = &unk_287078998;

  v91 = qword_27FD06B88;
  qword_27FD06B88 = &unk_2870789B0;

  v92 = qword_27FD06B90;
  qword_27FD06B90 = &unk_2870789C8;

  v93 = qword_27FD06B98;
  qword_27FD06B98 = &unk_2870789E0;

  v94 = qword_27FD06BA0;
  qword_27FD06BA0 = &unk_2870789F8;

  v95 = qword_27FD06BA8;
  qword_27FD06BA8 = &unk_287078A10;

  v96 = qword_27FD06BB0;
  qword_27FD06BB0 = &unk_287078A28;

  v97 = qword_27FD06BB8;
  qword_27FD06BB8 = &unk_287078A40;

  v98 = qword_27FD06BC0;
  qword_27FD06BC0 = &unk_287078A58;

  v99 = qword_27FD06BC8;
  qword_27FD06BC8 = &unk_287078A70;

  v100 = qword_27FD06BD0;
  qword_27FD06BD0 = &unk_287078A88;

  v101 = qword_27FD06BD8;
  qword_27FD06BD8 = &unk_287078AA0;

  v102 = qword_27FD06BE0;
  qword_27FD06BE0 = &unk_287078AB8;

  v103 = qword_27FD06BE8;
  qword_27FD06BE8 = &unk_287078AD0;

  v104 = qword_27FD06BF0;
  qword_27FD06BF0 = &unk_287078AE8;

  v105 = PSELog;
  if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    _os_log_impl(&dword_25E78C000, v105, OS_LOG_TYPE_DEFAULT, "UMF Kernels Initialized", v106, 2u);
  }
}

- (void)_initializeProtectedBuffers:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  v63 = *MEMORY[0x277D85DE8];
  do
  {
    v7 = [(MTLDevice *)self->_device heapBufferSizeAndAlignWithLength:qword_25E79DAA0[v5] options:544];
    v6 += (v8 + v7 - 1) & -v8;
    ++v5;
  }

  while (v5 != 11);
  v9 = objc_opt_new();
  [v9 setSize:v6];
  [v9 setHazardTrackingMode:2];
  v10 = [(MTLDevice *)self->_device newHeapWithDescriptor:v9];
  [v9 setProtectionOptions:a3];
  v11 = [(MTLDevice *)self->_device newHeapWithDescriptor:v9];
  v12 = PSELog;
  if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = v12;
    v15 = [v13 numberWithUnsignedLongLong:a3];
    v61 = 138412290;
    v62 = v15;
    _os_log_impl(&dword_25E78C000, v14, OS_LOG_TYPE_DEFAULT, "Making new protected heap with %@", &v61, 0xCu);
  }

  v16 = [v10 newBufferWithLength:4 options:544];
  v17 = self->_bufferFrameLumaSum[0];
  self->_bufferFrameLumaSum[0] = v16;

  v18 = [v10 newBufferWithLength:56 options:544];
  v19 = self->_bufferData[0];
  self->_bufferData[0] = v18;

  v20 = [v10 newBufferWithLength:144 options:544];
  v21 = self->_bufferCurState[0];
  self->_bufferCurState[0] = v20;

  v22 = [v10 newBufferWithLength:1024 options:544];
  v23 = self->_bufferGammaKernel[0];
  self->_bufferGammaKernel[0] = v22;

  v24 = [v10 newBufferWithLength:5120 options:544];
  v25 = self->_bufferEnergy[0];
  self->_bufferEnergy[0] = v24;

  v26 = [v10 newBufferWithLength:5120 options:544];
  v27 = self->_bufferEnergy2[0];
  self->_bufferEnergy2[0] = v26;

  v28 = [v10 newBufferWithLength:640 options:544];
  v29 = self->_bufferContrastKernel[0];
  self->_bufferContrastKernel[0] = v28;

  v30 = [v10 newBufferWithLength:640 options:544];
  v31 = self->_bufferContrast[0];
  self->_bufferContrast[0] = v30;

  v32 = [v10 newBufferWithLength:20 options:544];
  v33 = self->_bufferResponses[0];
  self->_bufferResponses[0] = v32;

  v34 = [v10 newBufferWithLength:20 options:544];
  v35 = self->_bufferResponsesNorm[0];
  self->_bufferResponsesNorm[0] = v34;

  v36 = [v10 newBufferWithLength:40 options:544];
  v37 = self->_bufferResults[0];
  self->_bufferResults[0] = v36;

  if (v11)
  {
    v38 = [v11 newBufferWithLength:4 options:544];
    v39 = self->_bufferFrameLumaSum[1];
    self->_bufferFrameLumaSum[1] = v38;

    v40 = [v11 newBufferWithLength:56 options:544];
    v41 = self->_bufferData[1];
    self->_bufferData[1] = v40;

    v42 = [v11 newBufferWithLength:144 options:544];
    v43 = self->_bufferCurState[1];
    self->_bufferCurState[1] = v42;

    v44 = [v11 newBufferWithLength:1024 options:544];
    v45 = self->_bufferGammaKernel[1];
    self->_bufferGammaKernel[1] = v44;

    v46 = [v11 newBufferWithLength:5120 options:544];
    v47 = self->_bufferEnergy[1];
    self->_bufferEnergy[1] = v46;

    v48 = [v11 newBufferWithLength:5120 options:544];
    v49 = self->_bufferEnergy2[1];
    self->_bufferEnergy2[1] = v48;

    v50 = [v11 newBufferWithLength:640 options:544];
    v51 = self->_bufferContrastKernel[1];
    self->_bufferContrastKernel[1] = v50;

    v52 = [v11 newBufferWithLength:640 options:544];
    v53 = self->_bufferContrast[1];
    self->_bufferContrast[1] = v52;

    v54 = [v11 newBufferWithLength:20 options:544];
    v55 = self->_bufferResponses[1];
    self->_bufferResponses[1] = v54;

    v56 = [v11 newBufferWithLength:20 options:544];
    v57 = self->_bufferResponsesNorm[1];
    self->_bufferResponsesNorm[1] = v56;

    v58 = [v11 newBufferWithLength:40 options:544];
    v59 = self->_bufferResults[1];
    self->_bufferResults[1] = v58;

    self->_protectionStatus = a3;
    self->_madeProtectedBuffers = self->_bufferFrameLumaSum[1] != 0;
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (BOOL)canProcessSurface:(__IOSurface *)a3
{
  v5 = PSELog;
  if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEBUG))
  {
    [(PSEVideoProcessor *)v5 canProcessSurface:a3];
  }

  self->_anon_15c[12] = 0;
  PixelFormat = IOSurfaceGetPixelFormat(a3);
  result = 1;
  if (PixelFormat <= 1380401728)
  {
    if (PixelFormat > 645428783)
    {
      if (PixelFormat > 875704437)
      {
        if (PixelFormat == 875704438)
        {
          return result;
        }

        v8 = 1111970369;
      }

      else
      {
        if (PixelFormat == 645428784)
        {
          return result;
        }

        v8 = 875704422;
      }

      goto LABEL_28;
    }

    if ((PixelFormat - 645166640) <= 4 && ((1 << (PixelFormat - 48)) & 0x15) != 0)
    {
      return [(MTLDevice *)self->_device supportsYCBCRPackedFormats12];
    }

    if (PixelFormat == 641230384)
    {
      return result;
    }

    v8 = 641234480;
LABEL_28:
    if (PixelFormat != v8)
    {
      return 0;
    }

    return result;
  }

  if (PixelFormat > 1953903151)
  {
    if (PixelFormat <= 1999843441)
    {
      if (PixelFormat == 1953903152)
      {
        return result;
      }

      v8 = 1953903154;
      goto LABEL_28;
    }

    if (PixelFormat == 1999843442 || PixelFormat == 2016686640)
    {
      return result;
    }

    v8 = 2019963440;
    goto LABEL_28;
  }

  if (PixelFormat <= 1815162993)
  {
    if (PixelFormat == 1380401729)
    {
      return result;
    }

    v8 = 1380411457;
    goto LABEL_28;
  }

  if (PixelFormat != 1815162994 && PixelFormat != 1882468912)
  {
    v8 = 1885745712;
    goto LABEL_28;
  }

  return result;
}

- (unint64_t)_pixelFormatForSurface:(__IOSurface *)a3
{
  PixelFormat = IOSurfaceGetPixelFormat(a3);
  result = 70;
  if (PixelFormat <= 1882468911)
  {
    if (PixelFormat > 875704421)
    {
      if (PixelFormat <= 1111970368)
      {
        if (PixelFormat != 875704422 && PixelFormat != 875704438)
        {
          return result;
        }

        return 500;
      }

      v5 = 1111970369;
      v6 = 80;
      v7 = PixelFormat == 1380411457;
      v8 = 115;
      goto LABEL_22;
    }

    if (PixelFormat == 641230384 || PixelFormat == 641234480)
    {
      return 500;
    }

    if (PixelFormat != 645428784)
    {
      return result;
    }

    return 508;
  }

  if (PixelFormat <= 1953903153)
  {
    if (PixelFormat == 1882468912 || PixelFormat == 1885745712)
    {
      return 508;
    }

    if (PixelFormat == 1953903152)
    {
      return 580;
    }
  }

  else
  {
    if (PixelFormat <= 2016686639)
    {
      v5 = 1953903154;
      v6 = 581;
      v7 = PixelFormat == 1999843442;
      v8 = 554;
LABEL_22:
      if (!v7)
      {
        v8 = 70;
      }

      if (PixelFormat == v5)
      {
        return v6;
      }

      else
      {
        return v8;
      }
    }

    if (PixelFormat == 2016686640 || PixelFormat == 2019963440)
    {
      return 505;
    }
  }

  return result;
}

- (void)_computeDisplaySizeIndexSelection
{
  v3 = [(PSEVideoProcessor *)self _deviceClass]- 1;
  if (v3 > 5)
  {
    v5 = 3;
    v4 = 2;
    v6 = 1265.6;
  }

  else
  {
    v4 = dword_25E79DBD0[v3];
    v5 = dword_25E79DBE8[v3];
    v6 = flt_25E79DC00[v3];
  }

  self->_idxEquivalentKernelIndex = v4;
  self->_idxEquivalentSize = v5;
  self->_area = v6;
}

- (int)_computeFrameRateIndexSelection
{
  v2 = 0;
  v3 = 0;
  v4 = 1000.0;
  do
  {
    v5 = vabds_f32(*&standardFrameRates[v2], self->_fps);
    if (v5 <= v4)
    {
      v4 = v5;
      v3 = v2;
    }

    ++v2;
  }

  while (v2 != 7);
  v6 = PSELog;
  if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEBUG))
  {
    [(PSEVideoProcessor *)v3 _computeFrameRateIndexSelection];
  }

  return v3;
}

- (KernelData)_prepare_contrast_kernels
{
  v5 = malloc_type_malloc(0x280uLL, 0x100004052888210uLL);
  bzero(v5, 0x280uLL);
  v6 = 0;
  *retstr->var0 = 0;
  *&retstr->var0[2] = 0;
  retstr->var0[4] = 0;
  v14 = v5;
  do
  {
    v7 = [UFMKernels[35 * self->_idxEquivalentKernelIndex + 7 * v6 + self->_idxFrameRate] objectEnumerator];
    v8 = [v7 nextObject];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      do
      {
        [v9 floatValue];
        *&v5[4 * v10] = v11;
        v12 = [v7 nextObject];

        ++v10;
        v9 = v12;
      }

      while (v12);
    }

    else
    {
      LODWORD(v10) = 0;
    }

    retstr->var0[v6] = v10;

    ++v6;
    v5 += 128;
  }

  while (v6 != 5);
  *&retstr->var0[5] = v14;
  return result;
}

- (id)_prepare_gamma_kernel:(float)a3 shape:(float)a4 scale:(float)a5
{
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:1024];
  [v8 resetBytesInRange:{0, objc_msgSend(v8, "length")}];
  v9 = a4 + -1.0;
  v19 = flt_25E79DB14[(a4 + -1.0)];
  v10 = a3;
  v18 = 1.0 / a3;
  v11 = powf(a5, -a4);
  v12 = 0.0;
  v13 = 256;
  v14 = 0.0;
  do
  {
    if ((v12 / v10) > 0.99 && v14 >= 2.0)
    {
      break;
    }

    v14 = v18 + v14;
    v16 = v11 * expf(-v14 / a5);
    v20 = (powf(v14, v9) * v16) / v19;
    v12 = v12 + v20;
    [v8 appendBytes:&v20 length:4];
    --v13;
  }

  while (v13);

  return v8;
}

- (int)_colorSpaceFromSurface:(__IOSurface *)a3
{
  v5 = IOSurfaceCopyValue(a3, *MEMORY[0x277CD29C0]);
  if (!v5 || (v6 = v5, v7 = CGColorSpaceCreateWithPropertyList(v5), Name = CGColorSpaceGetName(v7), CFRelease(v6), CGColorSpaceRelease(v7), !Name))
  {
    v9 = IOSurfaceCopyValue(a3, *MEMORY[0x277CD2A30]);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDataGetTypeID())
      {
        v12 = CGColorSpaceCreateWithICCData(v10);
        Name = CGColorSpaceGetName(v12);
        CGColorSpaceRelease(v12);
        CFRelease(v10);
        if (Name)
        {
          goto LABEL_6;
        }
      }

      else
      {
        CFRelease(v10);
      }
    }

    if (IOSurfaceGetBulkAttachments())
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

LABEL_6:

  return [(PSEVideoProcessor *)self _colorSpaceValueForName:Name];
}

- (int)_colorSpaceValueForName:(__CFString *)a3
{
  if (_colorSpaceValueForName__onceToken != -1)
  {
    [PSEVideoProcessor _colorSpaceValueForName:];
  }

  v4 = [_colorSpaceValueForName__Values objectForKey:a3];
  v5 = [v4 intValue];

  return v5;
}

void __45__PSEVideoProcessor__colorSpaceValueForName___block_invoke()
{
  v16[25] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBF3E8];
  v15[0] = *MEMORY[0x277CBF3E0];
  v15[1] = v0;
  v16[0] = &unk_2870740C0;
  v16[1] = &unk_2870740D8;
  v1 = *MEMORY[0x277CBF4B8];
  v15[2] = *MEMORY[0x277CBF410];
  v15[3] = v1;
  v16[2] = &unk_2870740F0;
  v16[3] = &unk_287074108;
  v2 = *MEMORY[0x277CBF430];
  v15[4] = *MEMORY[0x277CBF4A8];
  v15[5] = v2;
  v16[4] = &unk_287074120;
  v16[5] = &unk_287074138;
  v3 = *MEMORY[0x277CBF448];
  v15[6] = *MEMORY[0x277CBF428];
  v15[7] = v3;
  v16[6] = &unk_287074150;
  v16[7] = &unk_287074168;
  v4 = *MEMORY[0x277CBF400];
  v15[8] = *MEMORY[0x277CBF498];
  v15[9] = v4;
  v16[8] = &unk_287074180;
  v16[9] = &unk_287074198;
  v5 = *MEMORY[0x277CBF460];
  v15[10] = *MEMORY[0x277CBF418];
  v15[11] = v5;
  v16[10] = &unk_2870741B0;
  v16[11] = &unk_2870741C8;
  v6 = *MEMORY[0x277CBF468];
  v15[12] = *MEMORY[0x277CBF438];
  v15[13] = v6;
  v16[12] = &unk_2870741E0;
  v16[13] = &unk_2870741F8;
  v7 = *MEMORY[0x277CBF3C8];
  v15[14] = *MEMORY[0x277CBF450];
  v15[15] = v7;
  v16[14] = &unk_287074210;
  v16[15] = &unk_287074228;
  v8 = *MEMORY[0x277CBF3D8];
  v15[16] = *MEMORY[0x277CBF3D0];
  v15[17] = v8;
  v16[16] = &unk_287074240;
  v16[17] = &unk_287074258;
  v9 = *MEMORY[0x277CBF4B0];
  v15[18] = *MEMORY[0x277CBF488];
  v15[19] = v9;
  v16[18] = &unk_287074270;
  v16[19] = &unk_287074288;
  v10 = *MEMORY[0x277CBF420];
  v15[20] = *MEMORY[0x277CBF470];
  v15[21] = v10;
  v16[20] = &unk_2870742A0;
  v16[21] = &unk_2870742B8;
  v11 = *MEMORY[0x277CBF440];
  v15[22] = *MEMORY[0x277CBF458];
  v15[23] = v11;
  v16[22] = &unk_2870742D0;
  v16[23] = &unk_2870742E8;
  v15[24] = *MEMORY[0x277CBF480];
  v16[24] = &unk_287074300;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:25];
  v13 = _colorSpaceValueForName__Values;
  _colorSpaceValueForName__Values = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processSourceSurface:(__IOSurface *)a3 withTimestamp:(double)a4 toDestinationSurface:(__IOSurface *)a5 options:(id)a6
{
  v10 = a6;
  if (v10)
  {
    [(SwiftVideoProcessor *)self->_swiftProcessor processSurfaceWithSourceSurface:a3 timestamp:a5 destinationSurface:v10 options:a4];
  }

  else
  {
    v11 = PSELog;
    if (os_log_type_enabled(PSELog, OS_LOG_TYPE_ERROR))
    {
      [PSEVideoProcessor processSourceSurface:v11 withTimestamp:? toDestinationSurface:? options:?];
    }
  }
}

- (void)_processSurface:(__IOSurface *)a3 withTimestamp:(double)a4 destinationSurface:(__IOSurface *)a5 options:(id)a6
{
  v86 = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (self->_needsInitialization)
  {
    [(PSEVideoProcessor *)self _initialize];
    v11 = PSELog;
    if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E78C000, v11, OS_LOG_TYPE_DEFAULT, "PSE V8.1 Initialization Called", buf, 2u);
    }
  }

  if (a3)
  {
    v12 = 0;
    v13 = a4 - self->_previousSurfaceTime;
    if (v13 < 0.00833333333)
    {
      v13 = 0.00833333333;
    }

    *&v14 = fmin(v13, 0.0416666667);
    v15 = FramePoolIdx;
    FrameDeltas[FramePoolIdx] = v14;
    FramePoolIdx = (v15 + 1) % 0xAu;
    v16 = 0.0;
    v17 = 10.0;
    v18 = 0.001;
    do
    {
      v19 = *&FrameDeltas[v12];
      if (v17 >= v19)
      {
        v17 = *&FrameDeltas[v12];
      }

      if (v18 < v19)
      {
        v18 = *&FrameDeltas[v12];
      }

      v16 = v16 + v19;
      ++v12;
    }

    while (v12 != 10);
    v20 = 0;
    v21 = 0.0;
    v22 = v16 / 10.0;
    do
    {
      v21 = (*&FrameDeltas[v20] - v22) * (*&FrameDeltas[v20] - v22) / 10.0 + v21;
      ++v20;
    }

    while (v20 != 10);
    fps = self->_fps;
    self->_fps = 8.0 / ((v16 - v17) - v18);
    self->_previousSurfaceTime = a4;
    v24 = PSELog;
    if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEBUG))
    {
      v31 = fabs(sqrt(v21));
      if (v21 == -INFINITY)
      {
        v31 = INFINITY;
      }

      v32 = v31 / v22;
      v33 = MEMORY[0x277CCABB0];
      v34 = v24;
      *&v35 = v32;
      v36 = [v33 numberWithFloat:v35];
      *&v37 = self->_fps;
      v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_previousSurfaceTime];
      *buf = 138412802;
      v81 = v36;
      v82 = 2112;
      v83 = v38;
      v84 = 2112;
      v85 = v39;
      _os_log_debug_impl(&dword_25E78C000, v34, OS_LOG_TYPE_DEBUG, "PSE stdDelta value: %@, fps: %@ %@", buf, 0x20u);
    }

    Width = IOSurfaceGetWidth(a3);
    Height = IOSurfaceGetHeight(a3);
    v27 = [(PSEVideoProcessor *)self _colorSpaceFromSurface:a3];
    v28 = 1;
    v29 = 1;
    switch(v27)
    {
      case 0:
      case 9:
      case 10:
      case 11:
      case 12:
      case 14:
      case 15:
      case 16:
      case 19:
      case 21:
      case 26:
      case 27:
      case 29:
      case 31:
      case 32:
        v30 = PSELog;
        if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEBUG))
        {
          [PSEVideoProcessor _processSurface:v30 withTimestamp:v27 destinationSurface:? options:?];
        }

        v29 = 0;
        v28 = 1;
        goto LABEL_32;
      case 1:
      case 2:
        goto LABEL_32;
      case 4:
      case 33:
        v28 = 0;
        goto LABEL_32;
      case 5:
      case 7:
      case 20:
      case 30:
        goto LABEL_21;
      case 6:
      case 8:
      case 13:
        v28 = 0;
LABEL_21:
        v29 = 0;
        goto LABEL_32;
      case 17:
      case 25:
        v28 = 0;
        goto LABEL_31;
      case 18:
      case 34:
        goto LABEL_31;
      case 22:
        v28 = 2;
LABEL_31:
        v29 = 2;
        goto LABEL_32;
      case 24:
      case 28:
        v29 = 2;
        goto LABEL_29;
      case 35:
        v29 = 0;
LABEL_29:
        v28 = 3;
LABEL_32:
        self->_bufferConstants.uEOTF = v28;
        self->_bufferConstants.uColSpace = v29;
        break;
      default:
        break;
    }

    ProtectionOptions = IOSurfaceGetProtectionOptions();
    v41 = ProtectionOptions;
    if (ProtectionOptions && ProtectionOptions != self->_protectionStatus)
    {
      [(PSEVideoProcessor *)self _initializeProtectedBuffers:ProtectionOptions];
    }

    else
    {
      if (a4 - self->_previousSurfaceTime <= 1.0 && vabds_f32(self->_fps, fps) < 5.0)
      {
LABEL_41:
        if (self->_anon_15c[12] == 1)
        {
          WidthOfPlane = IOSurfaceGetWidthOfPlane(a3, 0);
          v50 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(a3 mipmapped:0), 0];
          [v50 setUsage:2];
          [v50 setProtectionOptions:v41];
          v51 = [(MTLDevice *)self->_device newTextureWithDescriptor:v50 iosurface:a5 plane:0];
          processedTexture = self->_processedTexture;
          self->_processedTexture = v51;

          [v50 setUsage:1];
          [v50 setPixelFormat:20];
          v53 = [(MTLDevice *)self->_device newTextureWithDescriptor:v50 iosurface:a3 plane:0];
          sourceTexture = self->_sourceTexture;
          self->_sourceTexture = v53;

          [v50 setWidth:{IOSurfaceGetWidthOfPlane(a3, 1uLL)}];
          [v50 setHeight:{IOSurfaceGetHeightOfPlane(a3, 1uLL)}];
          [v50 setPixelFormat:60];
          v55 = [(MTLDevice *)self->_device newTextureWithDescriptor:v50 iosurface:a3 plane:1];
          v56 = 296;
        }

        else
        {
          v50 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[PSEVideoProcessor _pixelFormatForSurface:](self width:"_pixelFormatForSurface:" height:a3) mipmapped:Width, Height, 0];
          [v50 setUsage:1];
          [v50 setProtectionOptions:v41];
          v57 = [(MTLDevice *)self->_device newTextureWithDescriptor:v50 iosurface:a3 plane:0];
          v58 = self->_sourceTexture;
          self->_sourceTexture = v57;

          [v50 setUsage:2];
          [v50 setPixelFormat:-[PSEVideoProcessor _pixelFormatForSurface:](self, "_pixelFormatForSurface:", a5)];
          v55 = [(MTLDevice *)self->_device newTextureWithDescriptor:v50 iosurface:a5 plane:0];
          v56 = 304;
        }

        v59 = *(&self->super.isa + v56);
        *(&self->super.isa + v56) = v55;

        v60 = [v10 objectForKey:@"displayMaxNits"];
        [v60 floatValue];
        self->_bufferConstants.maxNits = v61;

        v62 = [v10 objectForKey:@"sourceSurfaceEDR"];
        [v62 floatValue];
        self->_bufferConstants.edr = v63;

        v64 = [v10 objectForKey:@"displayEDRFactor"];
        v65 = v64;
        if (v64)
        {
          [v64 floatValue];
        }

        else
        {
          v66 = 1.0;
        }

        self->_bufferConstants.displayEDR = v66;
        v67 = [v10 objectForKey:@"currentFPS"];
        [v67 floatValue];
        v69 = v68;

        if (v69 <= 0.0)
        {
          v69 = self->_fps;
        }

        self->_bufferConstants.fps = v69;
        v70 = dispatch_semaphore_create(0);
        v71 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
        [v71 setProtectionOptions:v41];
        v74 = MEMORY[0x277D85DD0];
        v75 = 3221225472;
        v76 = __78__PSEVideoProcessor__processSurface_withTimestamp_destinationSurface_options___block_invoke;
        v77 = &unk_279A34A50;
        v78 = self;
        v79 = v70;
        v72 = v70;
        [v71 addCompletedHandler:&v74];
        [(PSEVideoProcessor *)self _processFrame:v71 sourceSurface:a3 outSurface:a5, v74, v75, v76, v77, v78];
        [v71 commit];
        dispatch_semaphore_wait(v72, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_50;
      }

      v42 = PSELog;
      if (os_log_type_enabled(PSELog, OS_LOG_TYPE_INFO))
      {
        v43 = MEMORY[0x277CCABB0];
        v44 = a4 - self->_previousSurfaceTime;
        v45 = v42;
        v46 = [v43 numberWithDouble:v44];
        *&v47 = vabds_f32(self->_fps, fps);
        v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
        *buf = 138412546;
        v81 = v46;
        v82 = 2112;
        v83 = v48;
        _os_log_impl(&dword_25E78C000, v45, OS_LOG_TYPE_INFO, "Resetting state due to time %@ or fps: %@", buf, 0x16u);
      }
    }

    [(PSEVideoProcessor *)self _resetState:v41];
    goto LABEL_41;
  }

LABEL_50:

  v73 = *MEMORY[0x277D85DE8];
}

void __78__PSEVideoProcessor__processSurface_withTimestamp_destinationSurface_options___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 318) & 1) != 0 || (*(v4 + 317)) && (*(v4 + 321) & 1) == 0)
  {
    v5 = [*(v4 + 280) contents];
    v6 = *(a1 + 32);
    if (v6[317] == 1)
    {
      v7 = PSELog;
      if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *v5;
        v9 = v5[1];
        v10 = v5[2];
        v11 = v5[3];
        v12 = v5[4];
        v13 = v5[5];
        v14 = v5[6];
        v15 = v5[7];
        v16 = v5[13];
        v17 = v5[8];
        v18 = v5[11];
        v19 = v5[12];
        v20 = v5[9];
        v21 = v5[10];
        v25 = 134221312;
        v26 = v8;
        v27 = 2048;
        v28 = v9;
        v29 = 2048;
        v30 = v10;
        v31 = 2048;
        v32 = v11;
        v33 = 2048;
        v34 = v12;
        v35 = 2048;
        v36 = v13;
        v37 = 2048;
        v38 = v14;
        v39 = 2048;
        v40 = v15;
        v41 = 2048;
        v42 = v16;
        v43 = 2048;
        v44 = v17;
        v45 = 2048;
        v46 = v18;
        v47 = 2048;
        v48 = v19;
        v49 = 2048;
        v50 = v20;
        v51 = 2048;
        v52 = v21;
        _os_log_impl(&dword_25E78C000, v7, OS_LOG_TYPE_DEFAULT, "APL:%7.2fnits, AdaptLevel:%5.1fnits, Contrast:%6.2f, Response:%7.2f, Response2:%6.2f, Energy:%6.1f, E2:%4.2f, Risk:%6.2f, VFML:%6.2f, MitigateCF:%5.2f, MuAdapt:%5.3f, FPS:%3.0f, EDR:%4.2f, DisplayEDR:%4.2f", &v25, 0x8Eu);
      }

      v6 = *(a1 + 32);
    }

    v22 = [v6 validationCallback];

    if (v22)
    {
      v23 = [*(a1 + 32) validationCallback];
      v23[2](*v5, v5[7], (v5[8] * 100.0));
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_resetState:(unint64_t)a3
{
  self->_idxFrameRate = [(PSEVideoProcessor *)self _computeFrameRateIndexSelection];
  [(PSEVideoProcessor *)self _computeDisplaySizeIndexSelection];
  v5 = PSELog;
  if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEBUG))
  {
    [(PSEVideoProcessor *)self _resetState:v5];
  }

  *&v6 = self->_fps;
  *&v7 = self->_energyPoolGammaShape;
  *&v8 = self->_energyPoolGammaScale;
  v9 = [(PSEVideoProcessor *)self _prepare_gamma_kernel:v6 shape:v7 scale:v8];
  memset(v36, 0, 28);
  [(PSEVideoProcessor *)self _prepare_contrast_kernels];
  v32[1] = [v9 length] >> 2;
  *&v32[2] = self->_nits * self->_avl;
  fps = self->_fps;
  v11 = 1.0 - exp(-1.0 / (self->_tauadapt * fps));
  *&v32[3] = v11;
  v12 = 1.0 - exp(-1.0 / (fps * self->_taumitigation));
  *&v32[4] = v12;
  v13 = pow(sqrt(self->_area * 1.6) / *&standardSizes[self->_idxEquivalentSize], self->_cA + self->_cA);
  gain = self->_gain;
  v15 = v13 * (gain / pow(fps, 1.0 / self->_energypoolexponent));
  *&v32[5] = v15;
  v32[14] = 1065353216;
  v33 = 0uLL;
  v34 = 0;
  v16 = PSELog;
  if (os_log_type_enabled(PSELog, OS_LOG_TYPE_DEBUG))
  {
    [(PSEVideoProcessor *)v16 _resetState:v11];
  }

  v17 = 0;
  v18 = 0;
  v19 = *(&v36[2] + 4);
  v20 = &NormEnergyThreshold + 20 * self->_idxFrameRate;
  do
  {
    v21 = *(v36 + v18);
    v35[v18] = v21;
    v22 = 0.0;
    if (v21)
    {
      v23 = v17;
      do
      {
        v24 = *(v19 + 4 * v23);
        v22 = v24 * v24 + v22;
        ++v23;
        --v21;
      }

      while (v21);
    }

    *&v35[v18 + 5] = v22;
    v35[v18 + 10] = *&v20[4 * v18];
    ++v18;
    v17 += 32;
  }

  while (v18 != 5);
  v25 = [(MTLDevice *)self->_device newBufferWithBytes:v19 length:640 options:0];
  free(*(&v36[2] + 4));
  v26 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v9 bytes], objc_msgSend(v9, "length"), 0);
  v27 = [(MTLDevice *)self->_device newBufferWithBytes:v32 length:144 options:0];
  v28 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v29 = [v28 blitCommandEncoder];
  [v29 copyFromBuffer:v27 sourceOffset:0 toBuffer:self->_bufferCurState[0] destinationOffset:0 size:144];
  [v29 copyFromBuffer:v26 sourceOffset:0 toBuffer:self->_bufferGammaKernel[0] destinationOffset:0 size:{objc_msgSend(v9, "length")}];
  [v29 copyFromBuffer:v25 sourceOffset:0 toBuffer:self->_bufferContrastKernel[0] destinationOffset:0 size:640];
  [v29 fillBuffer:self->_bufferContrast[0] range:0 value:{640, 0}];
  [v29 fillBuffer:self->_bufferEnergy[0] range:0 value:{objc_msgSend(v9, "length"), 0}];
  [v29 fillBuffer:self->_bufferEnergy2[0] range:0 value:{objc_msgSend(v9, "length"), 0}];
  [v29 fillBuffer:self->_bufferDataDebug range:0 value:{56, 0}];
  [v29 endEncoding];
  [v28 commit];
  if (![(PSEVideoProcessor *)self inTestingMode]&& self->_madeProtectedBuffers)
  {
    v30 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

    [v30 setProtectionOptions:a3];
    v31 = [v30 blitCommandEncoder];

    [v31 copyFromBuffer:v27 sourceOffset:0 toBuffer:self->_bufferCurState[1] destinationOffset:0 size:144];
    [v31 copyFromBuffer:v26 sourceOffset:0 toBuffer:self->_bufferGammaKernel[1] destinationOffset:0 size:{objc_msgSend(v9, "length")}];
    [v31 copyFromBuffer:v25 sourceOffset:0 toBuffer:self->_bufferContrastKernel[1] destinationOffset:0 size:640];
    [v31 fillBuffer:self->_bufferContrast[1] range:0 value:{640, 0}];
    [v31 fillBuffer:self->_bufferEnergy[1] range:0 value:{objc_msgSend(v9, "length"), 0}];
    [v31 fillBuffer:self->_bufferEnergy2[1] range:0 value:{objc_msgSend(v9, "length"), 0}];
    [v31 endEncoding];
    [v30 commit];
    v29 = v31;
    v28 = v30;
  }
}

- (void)_processFrame:(id)a3 sourceSurface:(__IOSurface *)a4 outSurface:(__IOSurface *)a5
{
  v7 = a3;
  v8 = [v7 protectionOptions] != 0;
  self->_bufferConstants.bProtected = v8;
  Width = IOSurfaceGetWidth(a4);
  Height = IOSurfaceGetHeight(a4);
  v11 = Width * Height;
  self->_bufferConstants.fPixelCnt = v11;
  v12 = [v7 blitCommandEncoder];
  [v12 fillBuffer:self->_bufferFrameLumaSum[v8] range:0 value:{-[MTLBuffer length](self->_bufferFrameLumaSum[v8], "length"), 0}];
  [v12 endEncoding];
  v13 = [v7 computeCommandEncoder];
  [v13 setLabel:@"Primary Compute Encoder"];
  [v13 setComputePipelineState:self->_cptPSO_RiskComputePass0];
  [v13 setTexture:self->_sourceTexture atIndex:0];
  [v13 setTexture:self->_sourceCbCrTexture atIndex:1];
  [v13 setTexture:self->_processedTexture atIndex:2];
  [v13 setBytes:&self->_bufferConstants length:56 atIndex:0];
  [v13 setBuffer:self->_bufferFrameLumaSum[v8] offset:0 atIndex:1];
  bufferData = self->_bufferData;
  [v13 setBuffer:self->_bufferData[v8] offset:0 atIndex:2];
  bufferGammaKernel = self->_bufferGammaKernel;
  [v13 setBuffer:self->_bufferGammaKernel[v8] offset:0 atIndex:3];
  bufferCurState = self->_bufferCurState;
  [v13 setBuffer:self->_bufferCurState[v8] offset:0 atIndex:4];
  v17 = [(MTLComputePipelineState *)self->_cptPSO_RiskComputePass0 threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_cptPSO_RiskComputePass0 maxTotalThreadsPerThreadgroup];
  *v23 = Width;
  *&v23[8] = Height;
  *&v23[16] = 1;
  *v22 = v17;
  *&v22[8] = v18 / v17;
  *&v22[16] = 1;
  [v13 dispatchThreads:v23 threadsPerThreadgroup:v22];
  if (!self->_bufferConstants.bCopyOnly)
  {
    [v13 setComputePipelineState:self->_cptPSO_RiskComputePass1];
    [v13 setBytes:&self->_bufferConstants length:56 atIndex:0];
    [v13 setBuffer:self->_bufferFrameLumaSum[v8] offset:0 atIndex:1];
    [v13 setBuffer:bufferData[v8] offset:0 atIndex:2];
    [v13 setBuffer:bufferGammaKernel[v8] offset:0 atIndex:3];
    [v13 setBuffer:bufferCurState[v8] offset:0 atIndex:4];
    v19 = &self->super.isa + v8;
    [v13 setBuffer:v19[23] offset:0 atIndex:5];
    [v13 setBuffer:v19[25] offset:0 atIndex:6];
    [v13 setBuffer:v19[27] offset:0 atIndex:7];
    [v13 setBuffer:v19[29] offset:0 atIndex:8];
    *v23 = 160;
    v21 = vdupq_n_s64(1uLL);
    *&v23[8] = v21;
    *v22 = 32;
    *&v22[8] = v21;
    [v13 dispatchThreads:v23 threadsPerThreadgroup:v22];
    [v13 setComputePipelineState:self->_cptPSO_RiskComputePass2];
    [v13 setBytes:&self->_bufferConstants length:56 atIndex:0];
    [v13 setBuffer:bufferData[v8] offset:0 atIndex:2];
    [v13 setBuffer:bufferGammaKernel[v8] offset:0 atIndex:3];
    [v13 setBuffer:bufferCurState[v8] offset:0 atIndex:4];
    [v13 setBuffer:v19[27] offset:0 atIndex:7];
    [v13 setBuffer:v19[29] offset:0 atIndex:8];
    [v13 setBuffer:v19[19] offset:0 atIndex:9];
    [v13 setBuffer:v19[21] offset:0 atIndex:10];
    [v13 setBuffer:v19[31] offset:0 atIndex:11];
    *v23 = 1280;
    *&v23[8] = v21;
    *v22 = 256;
    *&v22[8] = v21;
    [v13 dispatchThreads:v23 threadsPerThreadgroup:v22];
    [v13 setComputePipelineState:self->_cptPSO_RiskComputePass3];
    [v13 setBytes:&self->_bufferConstants length:56 atIndex:0];
    [v13 setBuffer:bufferCurState[v8] offset:0 atIndex:4];
    [v13 setBuffer:bufferData[v8] offset:0 atIndex:2];
    [v13 setBuffer:v19[31] offset:0 atIndex:11];
    *v23 = v21;
    *&v23[16] = 1;
    *v22 = v21;
    *&v22[16] = 1;
    [v13 dispatchThreads:v23 threadsPerThreadgroup:v22];
  }

  [v13 endEncoding];
  if ((self->_bufferConstants.bCallbackValues || self->_bufferConstants.bDebug) && !self->_bufferConstants.bProtected)
  {
    v20 = [v7 blitCommandEncoder];
    [v20 copyFromBuffer:self->_bufferData[0] sourceOffset:0 toBuffer:self->_bufferDataDebug destinationOffset:0 size:56];
    [v20 endEncoding];
  }
}

+ (uint64_t)needsProcessing
{
  dlerror();
  v0 = abort_report_np();
  return [(PSEVideoProcessor *)v0 _initialize];
}

- (void)canProcessSurface:(void *)a1 .cold.1(void *a1, __IOSurface *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInt:IOSurfaceGetPixelFormat(a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_computeFrameRateIndexSelection
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = standardFrameRates[a1];
  v4 = a2;
  LODWORD(v5) = v3;
  v6 = [v2 numberWithFloat:v5];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25E78C000, v7, v8, "Choosing standard FPS: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processSurface:(void *)a1 withTimestamp:(uint64_t)a2 destinationSurface:options:.cold.1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInt:a2];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetState:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = standardSizes[*(a1 + 428)];
  v5 = a2;
  LODWORD(v6) = v4;
  v7 = [v3 numberWithFloat:v6];
  LODWORD(v8) = *(a1 + 368);
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x16u);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_resetState:(void *)a1 .cold.2(void *a1, float a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  *&v5 = a2;
  v6 = [v3 numberWithFloat:v5];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25E78C000, v7, v8, "Current value for mu: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end