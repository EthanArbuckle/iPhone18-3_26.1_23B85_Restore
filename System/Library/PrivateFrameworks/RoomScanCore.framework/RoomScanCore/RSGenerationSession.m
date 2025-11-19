@interface RSGenerationSession
- (RSGenerationSession)init;
- (RSGenerationSession)initWithConfiguration:(id)a3;
- (id)generatePointListsWithFloorplan:(id)a3;
- (id)getDebugInfo;
- (id)processMultiLevelWithMultiFloorPlan:(id)a3 withKeyframes:(id)a4;
- (id)processWithKeyframes:(id)a3 initialAsset:(id)a4;
- (id)processWithKeyframes:(id)a3 initialAsset:(id)a4 error:(id *)a5;
- (id)processWithMultiFloorPlan:(id)a3;
- (id)processWithMultiFloorPlan:(id)a3 error:(id *)a4;
- (id)standardizeFloorPlan:(id)a3;
- (void)dealloc;
- (void)generatePointListsWithFloorplan:(id)a3 completionHandler:(id)a4;
- (void)processMultiLevelWithMultiFloorPlan:(id)a3 withKeyframes:(id)a4 completionHandler:(id)a5;
- (void)processMultiLevelWithMultiFloorPlan:(id)a3 withKeyframes:(id)a4 completionHandlerWithError:(id)a5;
- (void)processWithKeyframes:(id)a3 initialAsset:(id)a4 completionHandler:(id)a5;
- (void)processWithKeyframes:(id)a3 initialAsset:(id)a4 completionHandlerWithError:(id)a5;
- (void)processWithMultiFloorPlan:(id)a3 completionHandler:(id)a4;
- (void)processWithMultiFloorPlan:(id)a3 completionHandlerWithError:(id)a4;
- (void)processWithMultiFloorPlanDict:(id)a3 completionHandler:(id)a4;
- (void)processWithMultiFloorPlanDict:(id)a3 completionHandlerWithError:(id)a4;
- (void)setupOfflineDumpWithLogDir:(id)a3;
- (void)updateLcnnParams:(id)a3;
@end

@implementation RSGenerationSession

- (void)generatePointListsWithFloorplan:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2622A0AF4;
    v9[3] = &unk_279B30740;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)generatePointListsWithFloorplan:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RSPointLists);
  v7 = objc_msgSend_walls(v3, v5, v6);
  objc_msgSend_generateRSPointListsWithWalls_(v4, v8, v7);

  return v4;
}

- (void)processWithMultiFloorPlanDict:(id)a3 completionHandlerWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2622A0DA4;
    v9[3] = &unk_279B30740;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)processWithMultiFloorPlanDict:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2622A1008;
    v9[3] = &unk_279B30740;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)processWithMultiFloorPlan:(id)a3 completionHandlerWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2622A125C;
    v9[3] = &unk_279B30740;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)processWithMultiFloorPlan:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2622A140C;
    v9[3] = &unk_279B30740;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)processWithMultiFloorPlan:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(RSMultiRoom);
  v7 = sub_262362E58(v6, v5, a4);

  return v7;
}

- (id)processWithMultiFloorPlan:(id)a3
{
  v5 = 0;
  v3 = objc_msgSend_processWithMultiFloorPlan_error_(self, a2, a3, &v5);

  return v3;
}

- (id)processMultiLevelWithMultiFloorPlan:(id)a3 withKeyframes:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(RSMultiRoom);
  v6 = v4;
  if (v5)
  {
    v9 = 0;
    v7 = sub_262362E58(v5, v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)processMultiLevelWithMultiFloorPlan:(id)a3 withKeyframes:(id)a4 completionHandlerWithError:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2622A1724;
    v10[3] = &unk_279B30740;
    objc_copyWeak(&v13, &location);
    v11 = v7;
    v12 = v8;
    dispatch_async(queue, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)processMultiLevelWithMultiFloorPlan:(id)a3 withKeyframes:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2622A195C;
    block[3] = &unk_279B306F0;
    objc_copyWeak(&v16, &location);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (id)getDebugInfo
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (self->_fpGenerator)
  {
    v7 = objc_msgSend_dictionaryRepresentation(self->_configuration, v4, v5);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v8, v7, @"offlineConfig");

    v10 = sub_262287EF4(&self->_fpGenerator->super.super.isa, v9);
    objc_msgSend_addEntriesFromDictionary_(v6, v11, v10);
  }

  return v6;
}

- (void)updateLcnnParams:(id)a3
{
  v4 = a3;
  fpGenerator = self->_fpGenerator;
  if (fpGenerator)
  {
    v9 = v4;
    v6 = v4;
    wallOpeningDetector = fpGenerator->_wallOpeningDetector;
    v8 = v6;
    if (wallOpeningDetector)
    {
      sub_2622171BC(v10);
    }

    v4 = v9;
  }
}

- (void)setupOfflineDumpWithLogDir:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self->_fpGenerator)
    {
      v7 = v5;
      objc_storeStrong(&self->_logDir, a3);
      v5 = v7;
      fpGenerator = self->_fpGenerator;
      if (fpGenerator)
      {
        fpGenerator->_enableOfflineDump = 1;
      }
    }
  }
}

- (id)standardizeFloorPlan:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_26229CF80(v23);
  v8 = objc_msgSend_copy(v4, v6, v7, v5);
  v9 = sub_2621CD3A4(&self->_fpGenerator->_geometryEstimator->super.isa);
  sub_262241864(v23, v8, v9, &self->_fpGenerator->_wallOpeningDetector[1]._lcnnDetector._unet_fpn_backbone._lcnn_fc2._fc2_0_bias);

  fpGenerator = self->_fpGenerator;
  v13 = objc_msgSend_objects(v4, v11, v12);
  v16 = v8;
  if (fpGenerator)
  {
    v17 = objc_msgSend_render(fpGenerator, v14, v15);
    v18 = sub_2621CD3A4(fpGenerator[6]);
    fpGenerator = sub_26229D500(v17, v13, v16, v18);
  }

  objc_msgSend_updateObjects_(v16, v19, fpGenerator);
  sub_262241820(v25);
  v20 = __p;
  __p = 0;
  if (v20)
  {
    operator delete(v20);
  }

  sub_26229D160(v23);

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)processWithKeyframes:(id)a3 initialAsset:(id)a4 completionHandlerWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2622A2334;
    block[3] = &unk_279B306F0;
    objc_copyWeak(&v16, &location);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)processWithKeyframes:(id)a3 initialAsset:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!dispatch_semaphore_wait(self->_generationSemaphore, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2622A250C;
    block[3] = &unk_279B306F0;
    objc_copyWeak(&v16, &location);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27FF0C0C0 != -1)
  {
    dispatch_once(&qword_27FF0C0C0, &unk_2874EE1C0);
  }

  v3 = qword_27FF0C0B8;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_2621C3000, v3, OS_LOG_TYPE_INFO, "%{public}@: dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = RSGenerationSession;
  [(RSGenerationSession *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)processWithKeyframes:(id)a3 initialAsset:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_msgSend_clear(self->_fpGenerator, v9, v10);
  sub_2622A294C(self, self->_configuration);
  v11 = sub_262287F84(self->_fpGenerator, v7, v8);
  offlineInfoDumper = self->_offlineInfoDumper;
  v15 = objc_msgSend_getDebugInfo(self, v13, v14);
  logDir = self->_logDir;
  v17 = v15;
  v18 = logDir;
  v21 = v18;
  if (offlineInfoDumper && v18)
  {
    v33 = 0;
    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v22, v23, v21, &v33);

    if (!isDirectory || (v33 & 1) == 0)
    {
      v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26);
      objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v27, v28, v21, 1, 0, 0);
    }

    save_log_queue = offlineInfoDumper->_save_log_queue;
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v35 = sub_2621ECFF8;
    v36 = &unk_279B30598;
    v37 = v17;
    v38 = v21;
    dispatch_async(save_log_queue, &block);
  }

  if (qword_27FF0C0C0 != -1)
  {
    dispatch_once(&qword_27FF0C0C0, &unk_2874EE1C0);
  }

  v30 = qword_27FF0C0B8;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    LODWORD(block) = 138543362;
    *(&block + 4) = self;
    _os_log_impl(&dword_2621C3000, v30, OS_LOG_TYPE_INFO, "%{public}@: processWithKeyframes", &block, 0xCu);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)processWithKeyframes:(id)a3 initialAsset:(id)a4
{
  v6 = 0;
  v4 = objc_msgSend_processWithKeyframes_initialAsset_error_(self, a2, a3, a4, &v6);

  return v4;
}

- (RSGenerationSession)init
{
  v3 = objc_alloc_init(RSGenerationConfiguration);
  v5 = objc_msgSend_initWithConfiguration_(self, v4, v3);

  return v5;
}

- (RSGenerationSession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RSGenerationSession;
  v7 = [(RSGenerationSession *)&v22 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = objc_msgSend_copy(v4, v5, v6);
  configuration = v7->_configuration;
  v7->_configuration = v8;

  v10 = objc_alloc_init(RSOfflineFloorPlanGenerator);
  fpGenerator = v7->_fpGenerator;
  v7->_fpGenerator = v10;

  if (v7->_fpGenerator)
  {
    sub_2622A294C(v7, v7->_configuration);
    v12 = dispatch_semaphore_create(1);
    generationSemaphore = v7->_generationSemaphore;
    v7->_generationSemaphore = v12;

    v14 = dispatch_queue_create("com.apple.RoomScanCore.offlineFloorPlanGeneration", 0);
    queue = v7->_queue;
    v7->_queue = v14;

    v16 = objc_alloc_init(RSOfflineInfoDumper);
    offlineInfoDumper = v7->_offlineInfoDumper;
    v7->_offlineInfoDumper = v16;

LABEL_4:
    v18 = v7;
    goto LABEL_10;
  }

  if (qword_27FF0C0C0 != -1)
  {
    dispatch_once(&qword_27FF0C0C0, &unk_2874EE1C0);
  }

  v19 = qword_27FF0C0B8;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_error_impl(&dword_2621C3000, v19, OS_LOG_TYPE_ERROR, "Offline floorplan generator init failed", v21, 2u);
  }

  v18 = 0;
LABEL_10:

  return v18;
}

@end