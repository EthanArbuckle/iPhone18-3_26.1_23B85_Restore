@interface RSOfflineFloorPlanGenerator
- (RSOfflineFloorPlanGenerator)init;
- (void)clear;
@end

@implementation RSOfflineFloorPlanGenerator

- (void)clear
{
  v19.receiver = self;
  v19.super_class = RSOfflineFloorPlanGenerator;
  [(RSFloorPlanGeneratorBase *)&v19 clear];
  accumulator = self->_accumulator;
  if (accumulator)
  {
    objc_msgSend_reset(accumulator->_worldpc, v3, v4);
    sub_26229CE70(accumulator->_accMeta, v8, v9);
  }

  sub_2621CD3D4(self->_geometryEstimator, v5, v6);
  projector = self->_projector;
  if (projector)
  {
    image = projector->_image;
    if (image)
    {
      sub_2622C5BB4(image);
    }

    heightImage = projector->_heightImage;
    if (heightImage)
    {
      sub_2622C5BB4(heightImage);
    }

    cameraImage = projector->_cameraImage;
    if (cameraImage)
    {
      sub_2622C5BB4(cameraImage);
    }
  }

  sub_2621E188C(self->_heightEstimator);
  sub_262361768(self->_floorEstimator);
  sub_262316F74(self->_roomNodeGenerator, v14, v15);
  openingHeightAlignment = self->_openingHeightAlignment;
  if (openingHeightAlignment)
  {
    sub_2621CD7C8(&openingHeightAlignment->_openingHeightAlignment._opening_fixed);
    openingHeightAlignment->_openingHeightAlignment._floor_v = 1.0;
  }

  objc_msgSend_removeAllObjects(self->_debugInfo, v16, v17);
}

- (RSOfflineFloorPlanGenerator)init
{
  v60[7] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = RSOfflineFloorPlanGenerator;
  v2 = [(RSFloorPlanGeneratorBase *)&v51 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSDoorWindowOfflineDetector);
    doorWindowDetector = v2->_doorWindowDetector;
    v2->_doorWindowDetector = v3;

    v5 = objc_alloc_init(RSOfflineProjection2DZNode);
    projector = v2->_projector;
    v2->_projector = v5;

    v7 = [RSWallOpeningOfflineDetector alloc];
    v8 = sub_2621CD3A4(&v2->_projector->super.isa);
    v49 = v8;
    if (v8 && *(v8 + 64) == 1)
    {
      v48 = *(v8 + 8);
    }

    if (v7)
    {
      v53.receiver = v7;
      v53.super_class = RSWallOpeningOfflineDetector;
      if ([(RSFloorPlanGeneratorBase *)&v53 init])
      {
        v9 = MEMORY[0x277CCA8D8];
        v10 = objc_opt_class();
        v50 = objc_msgSend_bundleForClass_(v9, v11, v10);
        v47 = objc_msgSend_stringByAppendingPathComponent_(@"PrecompiledModels", v12, @"lcnn_floorplan_offline_model.bundle");
        sub_262381FB4(v47, 0, v50);
        objc_claimAutoreleasedReturnValue();
        sub_2621D0F64(&__src, "0_weight.npy");
        sub_2621D0F64(&v55 + 8, "1_weight.npy");
        sub_2621D0F64(v56, "2_weight.npy");
        sub_2621D0F64(v57, "0_bias.npy");
        sub_2621D0F64(v58, "1_bias.npy");
        sub_2621D0F64(v59, "2_bias.npy");
        memset(v52, 0, sizeof(v52));
        sub_2622C70D0(v52, &__src, v60, 6uLL);
      }

      v7 = 0;
    }

    wallOpeningDetector = v2->_wallOpeningDetector;
    v2->_wallOpeningDetector = v7;

    if (!v2->_wallOpeningDetector)
    {
      v44 = 0;
      goto LABEL_13;
    }

    v14 = objc_alloc_init(RSOfflineKeyframeAccumulation);
    accumulator = v2->_accumulator;
    v2->_accumulator = v14;

    v16 = objc_alloc_init(RSOfflineGeometryCalculation);
    geometryEstimator = v2->_geometryEstimator;
    v2->_geometryEstimator = v16;

    v18 = objc_alloc_init(RSCurvedWallDetection);
    curvedWallDetector = v2->_curvedWallDetector;
    v2->_curvedWallDetector = v18;

    v20 = objc_alloc_init(RSBayWindowFPRemoval);
    baywindowFPRemoval = v2->_baywindowFPRemoval;
    v2->_baywindowFPRemoval = v20;

    v22 = objc_alloc_init(RSStructurePostProcess);
    structurePostprocess = v2->_structurePostprocess;
    v2->_structurePostprocess = v22;

    v24 = objc_alloc_init(RSDeduplicateOpeningOpenDoor);
    deduplicateOpeningOpenDoor = v2->_deduplicateOpeningOpenDoor;
    v2->_deduplicateOpeningOpenDoor = v24;

    v26 = objc_alloc_init(RSOnlineOfflineAssociation);
    onlineOfflineAssociation = v2->_onlineOfflineAssociation;
    v2->_onlineOfflineAssociation = v26;

    v28 = objc_alloc_init(RSNonUniformHeightEstimation);
    heightEstimator = v2->_heightEstimator;
    v2->_heightEstimator = v28;

    v30 = objc_alloc_init(RSFloorEstimation);
    floorEstimator = v2->_floorEstimator;
    v2->_floorEstimator = v30;

    v32 = objc_alloc_init(RSRoomTypeGenerator);
    roomNodeGenerator = v2->_roomNodeGenerator;
    v2->_roomNodeGenerator = v32;

    v34 = objc_alloc_init(RSOpeningHeightAlignment);
    openingHeightAlignment = v2->_openingHeightAlignment;
    v2->_openingHeightAlignment = v34;

    v36 = objc_alloc_init(RSOutsideObjectRemoval);
    removeOutsideObject = v2->_removeOutsideObject;
    v2->_removeOutsideObject = v36;

    v38 = objc_alloc_init(RSDoorWindowPostProcessor);
    doorWindowPostProcessor = v2->_doorWindowPostProcessor;
    v2->_doorWindowPostProcessor = v38;

    v2->_wallOpeningMergeEnabled = 1;
    v2->_openingReplaceOpendoorEnabled = 0;
    v2->_opendoorReplaceOpeningEnabled = 1;
    v2->_roomTypeEnabled = 1;
    v42 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v40, v41);
    debugInfo = v2->_debugInfo;
    v2->_debugInfo = v42;

    v2->_enableOfflineDump = 0;
  }

  v44 = v2;
LABEL_13:

  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

@end