@interface VLLocalizationDebugInfo
- ($91CD28BF998EF1D34D1F6E7D57520290)_location;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_heading;
- (BOOL)isEqual:(id)equal;
- (VLLocalizationDebugInfo)initWithCoder:(id)coder;
- (VLLocalizationDebugInfo)initWithPixelBuffer:(double)buffer monotonicTimestamp:(double)timestamp timestamp:(double)a5 duration:(double)duration location:(uint64_t)location clLocation:(__CVBuffer *)clLocation heading:(__int128 *)heading gravity:(void *)self0 transform:(__int128 *)self1 cameraIntrinsics:(uint64_t)self2 radialDistortion:(unint64_t)self3 exposureTargetOffset:(double)self4 statistics:(double)self5 resultStatus:(double)self6 resultPose:(__int128)self7 preserveImageData:(__int128)self8;
- (__n128)_gravity;
- (double)points3D;
- (float)_fusedConfidences;
- (float)_solverConfidences;
- (float)points2D;
- (id)analyticsInformationWithSessionStartMonotonicTime:(double)time;
- (id)inputParameters;
- (id)results;
- (int)_inlierIndices;
- (unint64_t)_solutionsCount;
- (unint64_t)inliersCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VLLocalizationDebugInfo

- (VLLocalizationDebugInfo)initWithPixelBuffer:(double)buffer monotonicTimestamp:(double)timestamp timestamp:(double)a5 duration:(double)duration location:(uint64_t)location clLocation:(__CVBuffer *)clLocation heading:(__int128 *)heading gravity:(void *)self0 transform:(__int128 *)self1 cameraIntrinsics:(uint64_t)self2 radialDistortion:(unint64_t)self3 exposureTargetOffset:(double)self4 statistics:(double)self5 resultStatus:(double)self6 resultPose:(__int128)self7 preserveImageData:(__int128)self8
{
  v119 = *MEMORY[0x277D85DE8];
  v91 = transform[1];
  v92 = *transform;
  gravityCopy = gravity;
  v102.receiver = self;
  v102.super_class = VLLocalizationDebugInfo;
  v34 = [(VLLocalizationDebugInfo *)&v102 init];
  if (!v34)
  {
    goto LABEL_42;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  identifier = v34->_identifier;
  v34->_identifier = uUID;

  if (a27)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(clLocation);
    if (PixelFormatType > 1714696751)
    {
      if (PixelFormatType != 2033463856 && PixelFormatType != 1714696752)
      {
        goto LABEL_15;
      }
    }

    else if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_15;
    }

    CVPixelBufferLockBaseAddress(clLocation, 1uLL);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(clLocation, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(clLocation, 0);
    if (CVPixelBufferGetBytesPerRowOfPlane(clLocation, 0) == WidthOfPlane)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(clLocation, 0);
      space = CGColorSpaceCreateDeviceGray();
      context = CGBitmapContextCreate(BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, 8uLL, WidthOfPlane, space, 0);
      Image = CGBitmapContextCreateImage(context);
      data = [MEMORY[0x277CBEB28] data];
      v115 = *MEMORY[0x277CD3438];
      v113 = *MEMORY[0x277CD3428];
      v114 = &unk_2881031C8;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v116 = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];

      identifier = [*MEMORY[0x277CE1E10] identifier];
      v46 = CGImageDestinationCreateWithData(data, identifier, 1uLL, 0);

      CGImageDestinationAddImage(v46, Image, v44);
      if (CGImageDestinationFinalize(v46))
      {
        v47 = data;
      }

      else
      {
        v47 = 0;
      }

      CFRelease(v46);
      CGImageRelease(Image);
      CGContextRelease(context);
      CGColorSpaceRelease(space);

      CVPixelBufferUnlockBaseAddress(clLocation, 1uLL);
      if (v47)
      {
        goto LABEL_33;
      }
    }

    else
    {
      CVPixelBufferUnlockBaseAddress(clLocation, 1uLL);
    }

LABEL_15:
    v108 = 0;
    v109 = &v108;
    v110 = 0x2050000000;
    v48 = _MergedGlobals_0;
    v111 = _MergedGlobals_0;
    if (!_MergedGlobals_0)
    {
      v103 = MEMORY[0x277D85DD0];
      v104 = 3221225472;
      v105 = __getCIImageClass_block_invoke;
      v106 = &unk_279E2D710;
      v107 = &v108;
      v112 = 0;
      if (!qword_281181C58)
      {
        *&v94 = MEMORY[0x277D85DD0];
        *(&v94 + 1) = 3221225472;
        *&v95 = __CoreImageLibraryCore_block_invoke;
        *(&v95 + 1) = &__block_descriptor_40_e5_v8__0l;
        *&v96 = &v112;
        v117 = xmmword_279E2D730;
        v118 = 0;
        qword_281181C58 = _sl_dlopen();
        if (!qword_281181C58)
        {
          goto LABEL_43;
        }

        if (v112)
        {
          free(v112);
        }
      }

      Class = objc_getClass("CIImage");
      *(v107[1] + 24) = Class;
      if (!*(v107[1] + 24))
      {
        goto LABEL_43;
      }

      _MergedGlobals_0 = *(v107[1] + 24);
      v48 = v109[3];
    }

    v50 = v48;
    _Block_object_dispose(&v108, 8);
    v51 = [[v48 alloc] initWithCVPixelBuffer:clLocation];
    v108 = 0;
    v109 = &v108;
    v110 = 0x2050000000;
    v52 = qword_281181C60;
    v111 = qword_281181C60;
    if (qword_281181C60)
    {
LABEL_29:
      v54 = v52;
      _Block_object_dispose(&v108, 8);
      context = [v52 context];
      [v51 extent];
      v56 = [context createCGImage:v51 fromRect:?];

      data2 = [MEMORY[0x277CBEB28] data];
      identifier2 = [*MEMORY[0x277CE1E10] identifier];
      v59 = CGImageDestinationCreateWithData(data2, identifier2, 1uLL, 0);

      CGImageDestinationAddImage(v59, v56, 0);
      if (CGImageDestinationFinalize(v59))
      {
        v47 = data2;
      }

      else
      {
        v47 = 0;
      }

      CFRelease(v59);
      CGImageRelease(v56);

LABEL_33:
      imageData = v34->_imageData;
      v34->_imageData = v47;

      goto LABEL_34;
    }

    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = __getCIContextClass_block_invoke;
    v106 = &unk_279E2D710;
    v107 = &v108;
    v112 = 0;
    if (!qword_281181C58)
    {
      *&v94 = MEMORY[0x277D85DD0];
      *(&v94 + 1) = 3221225472;
      *&v95 = __CoreImageLibraryCore_block_invoke;
      *(&v95 + 1) = &__block_descriptor_40_e5_v8__0l;
      *&v96 = &v112;
      v117 = xmmword_279E2D730;
      v118 = 0;
      qword_281181C58 = _sl_dlopen();
      if (!qword_281181C58)
      {
        goto LABEL_43;
      }

      if (v112)
      {
        free(v112);
      }
    }

    v53 = objc_getClass("CIContext");
    *(v107[1] + 24) = v53;
    if (*(v107[1] + 24))
    {
      qword_281181C60 = *(v107[1] + 24);
      v52 = v109[3];
      goto LABEL_29;
    }

LABEL_43:
    abort_report_np();
    __break(1u);
  }

LABEL_34:
  *(&v61 + 1) = *(&a19 + 1);
  *(&v62 + 1) = *(&a20 + 1);
  *(&v63 + 1) = *(&a21 + 1);
  v34->_monotonicTimestamp = a2;
  v34->_timestamp = buffer;
  v34->_duration = timestamp;
  v64 = *heading;
  v65 = heading[1];
  *&v34->_location.type = *(heading + 4);
  *v34->_location.pos_geoc = v64;
  *&v34->_location.pos_geoc[2] = v65;
  v34->_heading.trueHeading = a5;
  v34->_heading.accuracy = duration;
  *v34->_gravity = v92;
  *&v34->_gravity[16] = v91;
  *v34->_anon_90 = pose;
  *&v34->_anon_90[16] = data;
  *&v34->_anon_90[32] = a19;
  *&v34->_anon_90[48] = a20;
  *v34->_anon_d0 = a21;
  *&v34->_anon_d0[16] = a22;
  *&v34->_anon_d0[32] = a23;
  *v34->_radialDistortion = a24;
  v34->_exposureTargetOffset = a25;
  v34->_resultStatus = distortion;
  if (intrinsics)
  {
    v66 = [[_VLStatistics alloc] initWithStats:intrinsics];
    statistics = v34->_statistics;
    v34->_statistics = v66;
  }

  v34->_hasResultPose = a26 != 0;
  if (a26)
  {
    *&v68 = *a26;
    *&v69 = *(a26 + 8);
    *&v70 = *(a26 + 16);
    v71 = *(a26 + 72);
    *(&v68 + 1) = *(a26 + 24);
    *(&v69 + 1) = *(a26 + 32);
    *&v61 = *(a26 + 48);
    *&v62 = *(a26 + 56);
    *(&v70 + 1) = *(a26 + 40);
    *&v63 = *(a26 + 64);
    __asm { FMOV            V7.2D, #1.0 }

    *&_Q7 = *(a26 + 88);
    *v34->_anon_130 = v68;
    *&v34->_anon_130[16] = v61;
    *&v34->_anon_130[32] = v69;
    *&v34->_anon_130[48] = v62;
    *&v34->_anon_130[64] = v70;
    *&v34->_anon_130[80] = v63;
    *&v34->_anon_130[96] = v71;
    *&v34->_anon_130[112] = _Q7;
    *&v69 = *(a26 + 88);
    *v34->_anon_1b0 = *(a26 + 72);
    *&v34->_anon_1b0[16] = v69;
    *&v34->_anon_1b0[32] = 0xBFF0000000000000;
    v34->_resultConfidence = *(a26 + 96);
    v34->_resultCovariance.v[0][0] = *(a26 + 100);
    v34->_resultCovariance.v[0][1] = *(a26 + 104);
    v34->_resultCovariance.v[0][2] = *(a26 + 108);
    v34->_resultCovariance.v[0][3] = *(a26 + 112);
    v34->_resultCovariance.v[0][4] = *(a26 + 116);
    v34->_resultCovariance.v[0][5] = *(a26 + 120);
    v34->_resultCovariance.v[1][0] = *(a26 + 124);
    v34->_resultCovariance.v[1][1] = *(a26 + 128);
    v34->_resultCovariance.v[1][2] = *(a26 + 132);
    v34->_resultCovariance.v[1][3] = *(a26 + 136);
    v34->_resultCovariance.v[1][4] = *(a26 + 140);
    v34->_resultCovariance.v[1][5] = *(a26 + 144);
    v34->_resultCovariance.v[2][0] = *(a26 + 148);
    v34->_resultCovariance.v[2][1] = *(a26 + 152);
    v34->_resultCovariance.v[2][2] = *(a26 + 156);
    v34->_resultCovariance.v[2][3] = *(a26 + 160);
    v34->_resultCovariance.v[2][4] = *(a26 + 164);
    v34->_resultCovariance.v[2][5] = *(a26 + 168);
    v34->_resultCovariance.v[3][0] = *(a26 + 172);
    v34->_resultCovariance.v[3][1] = *(a26 + 176);
    v34->_resultCovariance.v[3][2] = *(a26 + 180);
    v34->_resultCovariance.v[3][3] = *(a26 + 184);
    v34->_resultCovariance.v[3][4] = *(a26 + 188);
    v34->_resultCovariance.v[3][5] = *(a26 + 192);
    v34->_resultCovariance.v[4][0] = *(a26 + 196);
    v34->_resultCovariance.v[4][1] = *(a26 + 200);
    v34->_resultCovariance.v[4][2] = *(a26 + 204);
    v34->_resultCovariance.v[4][3] = *(a26 + 208);
    v34->_resultCovariance.v[4][4] = *(a26 + 212);
    v34->_resultCovariance.v[4][5] = *(a26 + 216);
    v34->_resultCovariance.v[5][0] = *(a26 + 220);
    v34->_resultCovariance.v[5][1] = *(a26 + 224);
    v34->_resultCovariance.v[5][2] = *(a26 + 228);
    v34->_resultCovariance.v[5][3] = *(a26 + 232);
    v34->_resultCovariance.v[5][4] = *(a26 + 236);
    v34->_resultCovariance.v[5][5] = *(a26 + 240);
  }

  v77 = [objc_alloc(MEMORY[0x277D0EDF8]) initWithCLLocation:gravityCopy location:heading heading:a5];
  analyticsLocation = v34->_analyticsLocation;
  v34->_analyticsLocation = v77;

  if (v34->_statistics && v34->_hasResultPose)
  {
    v79 = [VLLocalizationCrowdsourcingDetails alloc];
    v80 = v34->_statistics;
    v81 = *&v34->_anon_130[80];
    v98 = *&v34->_anon_130[64];
    v99 = v81;
    v82 = *&v34->_anon_130[112];
    v100 = *&v34->_anon_130[96];
    v101 = v82;
    v83 = *&v34->_anon_130[16];
    v94 = *v34->_anon_130;
    v95 = v83;
    v84 = *&v34->_anon_130[48];
    v96 = *&v34->_anon_130[32];
    v97 = v84;
    v85 = [(VLLocalizationCrowdsourcingDetails *)v79 initWithStats:v80 resultTransform:&v94];
    crowdsourcingDetails = v34->_crowdsourcingDetails;
    v34->_crowdsourcingDetails = v85;
  }

  v87 = v34;
LABEL_42:

  return v34;
}

- (VLLocalizationDebugInfo)initWithCoder:(id)coder
{
  v77[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v71.receiver = self;
  v71.super_class = VLLocalizationDebugInfo;
  v5 = [(VLLocalizationDebugInfo *)&v71 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  imageData = v5->_imageData;
  v5->_imageData = v8;

  [coderCopy decodeDoubleForKey:@"monotonicTimestamp"];
  v5->_monotonicTimestamp = v10;
  [coderCopy decodeDoubleForKey:@"timestamp"];
  v5->_timestamp = v11;
  [coderCopy decodeDoubleForKey:@"duration"];
  v5->_duration = v12;
  [coderCopy decodeDoubleForKey:@"location_x"];
  v5->_location.pos_geoc[0] = v13;
  [coderCopy decodeDoubleForKey:@"location_y"];
  v5->_location.pos_geoc[1] = v14;
  [coderCopy decodeDoubleForKey:@"location_z"];
  v5->_location.pos_geoc[2] = v15;
  [coderCopy decodeFloatForKey:@"location_accuracy"];
  v5->_location.horz_accuracy = v16;
  v5->_location.is_vl_fused = [coderCopy decodeIntForKey:@"location_fused"];
  v5->_location.type = [coderCopy decodeIntForKey:@"location_type"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"full_location"];
  analyticsLocation = v5->_analyticsLocation;
  v5->_analyticsLocation = v17;

  [coderCopy decodeDoubleForKey:@"heading"];
  v5->_heading.trueHeading = v19;
  [coderCopy decodeDoubleForKey:@"heading_accuracy"];
  v5->_heading.accuracy = v20;
  [coderCopy decodeDoubleForKey:@"gravity_x"];
  v65 = v21;
  [coderCopy decodeDoubleForKey:@"gravity_y"];
  v63 = v22;
  [coderCopy decodeDoubleForKey:@"gravity_z"];
  *&v23 = v65;
  *(&v23 + 1) = v63;
  *v5->_gravity = v23;
  *&v5->_gravity[16] = v24;
  v70 = 0;
  v25 = [coderCopy decodeBytesForKey:@"transform" returnedLength:&v70];
  if (!v25 || v70 != 64)
  {
    v55 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA050];
    v76 = *MEMORY[0x277CBEE28];
    v77[0] = @"transform bytes were not the expected length";
    v57 = MEMORY[0x277CBEAC0];
    v58 = v77;
    v59 = &v76;
LABEL_18:
    v60 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:1];
    v61 = [v55 errorWithDomain:v56 code:4864 userInfo:v60];
    [coderCopy failWithError:v61];

LABEL_19:
    v54 = 0;
    goto LABEL_20;
  }

  v26 = v25[1];
  v27 = v25[2];
  v28 = v25[3];
  *v5->_anon_90 = *v25;
  *&v5->_anon_90[16] = v26;
  *&v5->_anon_90[32] = v27;
  *&v5->_anon_90[48] = v28;
  v69 = 0;
  v29 = [coderCopy decodeBytesForKey:@"camera_intrinsics" returnedLength:&v69];
  if (!v29 || v69 != 36)
  {
    v55 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA050];
    v74 = *MEMORY[0x277CBEE28];
    v75 = @"cameraIntrinsics bytes were not the expected length";
    v57 = MEMORY[0x277CBEAC0];
    v58 = &v75;
    v59 = &v74;
    goto LABEL_18;
  }

  v30 = *v29;
  v31 = *(v29 + 12);
  v32 = *(v29 + 20);
  v33 = *(v29 + 24);
  v34 = *(v29 + 32);
  *&v5->_anon_d0[8] = *(v29 + 8);
  *v5->_anon_d0 = v30;
  *&v5->_anon_d0[24] = v32;
  *&v5->_anon_d0[16] = v31;
  *&v5->_anon_d0[40] = v34;
  *&v5->_anon_d0[32] = v33;
  v68 = 0;
  v35 = [coderCopy decodeBytesForKey:@"radial_distortion" returnedLength:&v68];
  if (!v35 || v68 != 8)
  {
    v55 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA050];
    v72 = *MEMORY[0x277CBEE28];
    v73 = @"radialDistortion bytes were not the expected length";
    v57 = MEMORY[0x277CBEAC0];
    v58 = &v73;
    v59 = &v72;
    goto LABEL_18;
  }

  *v5->_radialDistortion = *v35;
  [coderCopy decodeDoubleForKey:@"exposure_target_offset"];
  v5->_exposureTargetOffset = v36;
  v5->_resultStatus = [coderCopy decodeIntegerForKey:@"status"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statistics"];
  statistics = v5->_statistics;
  v5->_statistics = v37;

  v39 = [coderCopy containsValueForKey:@"result_transform"];
  v5->_hasResultPose = v39;
  if (v39)
  {
    [coderCopy decodeDoubleForKey:@"result_location_x"];
    v66 = v40;
    [coderCopy decodeDoubleForKey:@"result_location_y"];
    v64 = v41;
    [coderCopy decodeDoubleForKey:@"result_location_z"];
    *&v42 = v66;
    *(&v42 + 1) = v64;
    *v5->_anon_1b0 = v42;
    *&v5->_anon_1b0[16] = v43;
    [coderCopy decodeDoubleForKey:@"result_location_accuracy"];
    *&v5->_anon_1b0[32] = v44;
    if (![coderCopy _vl_decodeSimdDouble4x4:v5->_anon_130 forKey:@"result_transform"])
    {
      goto LABEL_19;
    }

    [coderCopy decodeFloatForKey:@"result_confidence"];
    v5->_resultConfidence = v45;
    if (![coderCopy _vl_decodeFloat6x6:&v5->_resultCovariance forKey:@"result_covariance"])
    {
      goto LABEL_19;
    }
  }

  if (v5->_statistics && v5->_hasResultPose)
  {
    v46 = [VLLocalizationCrowdsourcingDetails alloc];
    v47 = v5->_statistics;
    v48 = *&v5->_anon_130[80];
    v67[4] = *&v5->_anon_130[64];
    v67[5] = v48;
    v49 = *&v5->_anon_130[112];
    v67[6] = *&v5->_anon_130[96];
    v67[7] = v49;
    v50 = *&v5->_anon_130[16];
    v67[0] = *v5->_anon_130;
    v67[1] = v50;
    v51 = *&v5->_anon_130[48];
    v67[2] = *&v5->_anon_130[32];
    v67[3] = v51;
    v52 = [(VLLocalizationCrowdsourcingDetails *)v46 initWithStats:v47 resultTransform:v67];
    crowdsourcingDetails = v5->_crowdsourcingDetails;
    v5->_crowdsourcingDetails = v52;
  }

  v54 = v5;
LABEL_20:

  return v54;
}

- (unint64_t)inliersCount
{
  result = self->_statistics;
  if (result)
  {
    stats = [result stats];
    return *(stats + 88) & ~(*(stats + 88) >> 31);
  }

  return result;
}

- (int)_inlierIndices
{
  result = self->_statistics;
  if (result)
  {
    return *([result stats] + 16);
  }

  return result;
}

- (float)points2D
{
  result = self->_statistics;
  if (result)
  {
    return *([result stats] + 8);
  }

  return result;
}

- (double)points3D
{
  result = self->_statistics;
  if (result)
  {
    return *[result stats];
  }

  return result;
}

- (unint64_t)_solutionsCount
{
  result = self->_statistics;
  if (result)
  {
    stats = [result stats];
    return *(stats + 80) & ~(*(stats + 80) >> 31);
  }

  return result;
}

- (float)_solverConfidences
{
  result = self->_statistics;
  if (result)
  {
    return *([result stats] + 64);
  }

  return result;
}

- (float)_fusedConfidences
{
  result = self->_statistics;
  if (result)
  {
    return *([result stats] + 72);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v35 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"uuid"];
  imageData = self->_imageData;
  if (imageData)
  {
    [coderCopy encodeObject:imageData forKey:@"image"];
  }

  [coderCopy encodeDouble:@"monotonicTimestamp" forKey:self->_monotonicTimestamp];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeDouble:@"location_x" forKey:self->_location.pos_geoc[0]];
  [coderCopy encodeDouble:@"location_y" forKey:self->_location.pos_geoc[1]];
  [coderCopy encodeDouble:@"location_z" forKey:self->_location.pos_geoc[2]];
  *&v6 = self->_location.horz_accuracy;
  [coderCopy encodeFloat:@"location_accuracy" forKey:v6];
  [coderCopy encodeInt:self->_location.is_vl_fused forKey:@"location_fused"];
  [coderCopy encodeInt:self->_location.type forKey:@"location_type"];
  [coderCopy encodeObject:self->_analyticsLocation forKey:@"full_location"];
  [coderCopy encodeDouble:@"heading" forKey:self->_heading.trueHeading];
  [coderCopy encodeDouble:@"heading_accuracy" forKey:self->_heading.accuracy];
  [coderCopy encodeDouble:@"gravity_x" forKey:*self->_gravity];
  [coderCopy encodeDouble:@"gravity_y" forKey:*&self->_gravity[8]];
  [coderCopy encodeDouble:@"gravity_z" forKey:*&self->_gravity[16]];
  v7 = *&self->_anon_90[16];
  v34[0] = *self->_anon_90;
  v34[1] = v7;
  v8 = *&self->_anon_90[48];
  v34[2] = *&self->_anon_90[32];
  v34[3] = v8;
  [coderCopy encodeBytes:v34 length:64 forKey:@"transform"];
  v9 = *self->_anon_d0;
  HIDWORD(v9) = *&self->_anon_d0[16];
  v10 = *&self->_anon_d0[32];
  v11 = vextq_s8(vextq_s8(*&self->_anon_d0[16], *&self->_anon_d0[16], 0xCuLL), v10, 8uLL);
  v32[0] = v9;
  v32[1] = v11;
  v33 = v10.i32[2];
  [coderCopy encodeBytes:v32 length:36 forKey:@"camera_intrinsics"];
  v31 = *self->_radialDistortion;
  [coderCopy encodeBytes:&v31 length:8 forKey:@"radial_distortion"];
  [coderCopy encodeDouble:@"exposure_target_offset" forKey:self->_exposureTargetOffset];
  statistics = self->_statistics;
  if (statistics)
  {
    [coderCopy encodeObject:statistics forKey:@"statistics"];
  }

  if (self->_hasResultPose)
  {
    [coderCopy encodeDouble:@"result_location_x" forKey:*self->_anon_1b0];
    [coderCopy encodeDouble:@"result_location_y" forKey:*&self->_anon_1b0[8]];
    [coderCopy encodeDouble:@"result_location_z" forKey:*&self->_anon_1b0[16]];
    [coderCopy encodeDouble:@"result_location_accuracy" forKey:*&self->_anon_1b0[32]];
    v13 = *&self->_anon_130[80];
    v26 = *&self->_anon_130[64];
    v27 = v13;
    v14 = *&self->_anon_130[112];
    v28 = *&self->_anon_130[96];
    v29 = v14;
    v15 = *&self->_anon_130[16];
    v22 = *self->_anon_130;
    v23 = v15;
    v16 = *&self->_anon_130[48];
    v24 = *&self->_anon_130[32];
    v25 = v16;
    [coderCopy _vl_encodeSimdDouble4x4:&v22 forKey:@"result_transform"];
    *&v17 = self->_resultConfidence;
    [coderCopy encodeFloat:@"result_confidence" forKey:v17];
    v18 = *&self->_resultCovariance.v[4][4];
    v28 = *&self->_resultCovariance.v[4][0];
    v29 = v18;
    v30 = *&self->_resultCovariance.v[5][2];
    v19 = *&self->_resultCovariance.v[2][0];
    v24 = *&self->_resultCovariance.v[1][2];
    v25 = v19;
    v20 = *&self->_resultCovariance.v[3][2];
    v26 = *&self->_resultCovariance.v[2][4];
    v27 = v20;
    v21 = *&self->_resultCovariance.v[0][4];
    v22 = *&self->_resultCovariance.v[0][0];
    v23 = v21;
    [coderCopy _vl_encodeFloat6x6:&v22 forKey:@"result_covariance"];
  }

  [coderCopy encodeInteger:self->_resultStatus forKey:@"status"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {

    return 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(NSUUID *)self->_identifier isEqual:v5->_identifier];

      return v6;
    }

    else
    {

      return 0;
    }
  }
}

- (id)inputParameters
{
  v98 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [dictionary setObject:v4 forKeyedSubscript:@"timestamp"];

  v5 = MGCopyAnswer();
  [dictionary setObject:v5 forKeyedSubscript:@"device_name"];

  v90[0] = @"K";
  LODWORD(v6) = *self->_anon_d0;
  __ya = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v89[0] = __ya;
  LODWORD(v7) = *&self->_anon_d0[16];
  v73 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v89[1] = v73;
  LODWORD(v8) = *&self->_anon_d0[32];
  v70 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v89[2] = v70;
  LODWORD(v9) = *&self->_anon_d0[4];
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v89[3] = v68;
  LODWORD(v10) = *&self->_anon_d0[20];
  v67 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v89[4] = v67;
  LODWORD(v11) = *&self->_anon_d0[36];
  v66 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v89[5] = v66;
  LODWORD(v12) = *&self->_anon_d0[8];
  v65 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v89[6] = v65;
  LODWORD(v13) = *&self->_anon_d0[24];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v89[7] = v14;
  LODWORD(v15) = *&self->_anon_d0[40];
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v89[8] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:9];
  v90[1] = @"radial";
  v91[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_radialDistortion];
  v88[0] = v18;
  LODWORD(v19) = *&self->_radialDistortion[4];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v88[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
  v91[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  [dictionary setObject:v22 forKeyedSubscript:@"lens"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_exposureTargetOffset];
  [dictionary setObject:v23 forKeyedSubscript:@"exposure_target_offset"];

  v25 = self->_location.pos_geoc[0];
  v24 = self->_location.pos_geoc[1];
  v26 = sqrt(v24 * v24 + v25 * v25);
  v27 = v26 * 0.99330562;
  v28 = 0.0;
  v29 = 1.57079633;
  v72 = dictionary;
  if (v26 * 0.99330562 != 0.0)
  {
    v69 = self->_location.pos_geoc[1];
    v30 = 0;
    __y = self->_location.pos_geoc[2];
    v29 = 0.0;
    v31 = 0.0;
    do
    {
      v33 = v29;
      v29 = atan2(__y, v27);
      v34 = __sincos_stret(v29);
      v35 = 6378137.0 / sqrt(v34.__sinval * -0.00669437999 * v34.__sinval + 1.0);
      v28 = v26 / v34.__cosval - v35;
      if (vabdd_f64(v33, v29) < 0.000001)
      {
        if (vabdd_f64(v31, v28) < 0.001 || v30 >= 9)
        {
          goto LABEL_12;
        }
      }

      else if (v30 > 8)
      {
        goto LABEL_12;
      }

      ++v30;
      v27 = v26 * (v35 / (v35 + v28) * -0.00669437999 + 1.0);
      v31 = v26 / v34.__cosval - v35;
    }

    while (v27 != 0.0);
    v29 = 1.57079633;
LABEL_12:
    v24 = v69;
  }

  v36 = atan2(v24, v25) / 0.0174532925;
  v86[0] = @"pos_geoc";
  v84[0] = @"x";
  __yb = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  v85[0] = __yb;
  v84[1] = @"y";
  v74 = [MEMORY[0x277CCABB0] numberWithDouble:self->_location.pos_geoc[1]];
  v85[1] = v74;
  v84[2] = @"z";
  v71 = [MEMORY[0x277CCABB0] numberWithDouble:self->_location.pos_geoc[2]];
  v85[2] = v71;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v87[0] = v37;
  v86[1] = @"lat";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v29 / 0.0174532925];
  v87[1] = v38;
  v86[2] = @"lon";
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  v87[2] = v39;
  v86[3] = @"alt";
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  v87[3] = v40;
  v86[4] = @"horz_accuracy";
  *&v41 = self->_location.horz_accuracy;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v87[4] = v42;
  v86[5] = @"is_vl_fused";
  v43 = [MEMORY[0x277CCABB0] numberWithInt:self->_location.is_vl_fused];
  v87[5] = v43;
  v86[6] = @"type";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_location.type];
  v87[6] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:7];
  [v72 setObject:v45 forKeyedSubscript:@"gps"];

  v82[0] = @"grav";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:*self->_gravity];
  v81[0] = v46;
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:*&self->_gravity[8]];
  v81[1] = v47;
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:*&self->_gravity[16]];
  v81[2] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
  v83[0] = v49;
  v82[1] = @"true_heading";
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_heading.trueHeading, -1.0}];
  v83[1] = v50;
  v82[2] = @"heading_accuracy";
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:self->_heading.accuracy];
  v83[2] = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  [v72 setObject:v52 forKeyedSubscript:@"ori"];

  v53 = *self->_anon_90;
  v54 = *&self->_anon_90[16];
  v55 = *&self->_anon_90[32];
  __yc = *&self->_anon_90[48];
  v56 = vzip2_s32(*v54.i8, *&v55);
  v57 = COERCE_FLOAT(*&self->_anon_90[40]);
  DWORD1(v55) = HIDWORD(*self->_anon_90);
  v96[0] = vcvtq_f64_f32(vzip1_s32(*v53.i8, *v54.i8));
  v96[1] = vcvtq_f64_f32(*&v55);
  v79 = @"pose";
  v96[2] = vcvtq_f64_f32(v56);
  v96[3] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)));
  v97 = v57;
  v58 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v96 length:72 freeWhenDone:0];
  v59 = [v58 base64EncodedStringWithOptions:0];

  v94 = vcvtq_f64_f32(*&__yc);
  v95 = *(&__yc + 2);
  v60 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v94 length:24 freeWhenDone:0];
  v61 = [v60 base64EncodedStringWithOptions:0];

  v92[0] = @"R";
  v92[1] = @"t";
  v93[0] = v59;
  v93[1] = v61;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];

  v80 = v62;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  [v72 setObject:v63 forKeyedSubscript:@"vio"];

  return v72;
}

- (id)results
{
  v101 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_resultStatus];
  [dictionary setObject:v4 forKeyedSubscript:@"status"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [dictionary setObject:v5 forKeyedSubscript:@"duration"];

  if (self->_statistics)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[_VLStatistics stats](self->_statistics, "stats")[88]}];
    [dictionary2 setObject:v7 forKeyedSubscript:@"num_inliers"];

    if ([(_VLStatistics *)self->_statistics stats][88] >= 1)
    {
      v8 = MEMORY[0x277CBEA90];
      v9 = [(_VLStatistics *)self->_statistics stats][8];
      stats = [(_VLStatistics *)self->_statistics stats];
      v11 = [v8 dataWithBytesNoCopy:v9 length:8 * (stats->var12 & ~(stats->var12 >> 31)) freeWhenDone:0];
      v12 = [v11 base64EncodedStringWithOptions:0];

      [dictionary2 setObject:v12 forKeyedSubscript:@"points2D"];
      v13 = MEMORY[0x277CBEA90];
      v14 = *[(_VLStatistics *)self->_statistics stats];
      stats2 = [(_VLStatistics *)self->_statistics stats];
      v16 = [v13 dataWithBytesNoCopy:v14 length:24 * (stats2->var12 & ~(stats2->var12 >> 31)) freeWhenDone:0];
      v17 = [v16 base64EncodedStringWithOptions:0];

      [dictionary2 setObject:v17 forKeyedSubscript:@"points3D"];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithInt:{-[_VLStatistics stats](self->_statistics, "stats")[92]}];
    [dictionary2 setObject:v18 forKeyedSubscript:@"num_keypoints"];

    v19 = [MEMORY[0x277CCABB0] numberWithInt:{-[_VLStatistics stats](self->_statistics, "stats")[96]}];
    [dictionary2 setObject:v19 forKeyedSubscript:@"num_tracks"];

    v20 = [MEMORY[0x277CCABB0] numberWithInt:{-[_VLStatistics stats](self->_statistics, "stats")[100]}];
    [dictionary2 setObject:v20 forKeyedSubscript:@"num_matches"];

    v21 = [MEMORY[0x277CCABB0] numberWithInt:{-[_VLStatistics stats](self->_statistics, "stats")[56]}];
    [dictionary2 setObject:v21 forKeyedSubscript:@"status_ps"];

    if ([(_VLStatistics *)self->_statistics stats][136] >= 1)
    {
      v22 = [(_VLStatistics *)self->_statistics stats][104];
      v23 = v22 + 16 * [(_VLStatistics *)self->_statistics stats][136];
      v24 = *(v23 - 16);
      v25 = *(v23 - 12);
      v27 = *(v23 - 8);
      v26 = *(v23 - 4);
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      v29 = [MEMORY[0x277CCABB0] numberWithInt:v25];
      [dictionary3 setObject:v29 forKeyedSubscript:@"x"];

      v30 = [MEMORY[0x277CCABB0] numberWithInt:v27];
      [dictionary3 setObject:v30 forKeyedSubscript:@"y"];

      v31 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      [dictionary3 setObject:v31 forKeyedSubscript:@"level"];

      v32 = [MEMORY[0x277CCABB0] numberWithInt:v26];
      [dictionary3 setObject:v32 forKeyedSubscript:@"uncertainty"];

      [dictionary2 setObject:dictionary3 forKeyedSubscript:@"tile"];
    }

    v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[_VLStatistics stats](self->_statistics, "stats")[488]}];
    [dictionary2 setObject:v33 forKeyedSubscript:@"tracks_file_size"];

    [dictionary setObject:dictionary2 forKeyedSubscript:@"statistics"];
  }

  if (self->_hasResultPose)
  {
    v34 = *&self->_anon_130[16];
    v36 = *&self->_anon_130[32];
    v35 = *&self->_anon_130[48];
    v37 = *&self->_anon_130[64];
    v38 = *&self->_anon_130[80];
    v39 = *&self->_anon_130[112];
    v40 = vzip1q_s64(*self->_anon_130, v36);
    v41 = vzip2q_s64(v36, v37);
    v37.i64[1] = *&self->_anon_130[8];
    __ya = *&self->_anon_130[96];
    v83 = v40;
    v84 = v37;
    v85 = v41;
    v86 = vzip1q_s64(v34, v35);
    *&v87 = v38;
    v42 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v83 length:72 freeWhenDone:0];
    v43 = [v42 base64EncodedStringWithOptions:0];

    v99 = __ya;
    v100 = v39;
    v44 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v99 length:24 freeWhenDone:0];
    v45 = [v44 base64EncodedStringWithOptions:0];

    v97[0] = @"R";
    v97[1] = @"t";
    v98[0] = v43;
    v98[1] = v45;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];

    [dictionary setObject:v46 forKeyedSubscript:@"pose"];
    *&v47 = self->_resultConfidence;
    v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
    [dictionary setObject:v48 forKeyedSubscript:@"confidence"];

    v49 = *self->_anon_1b0;
    v50 = *&self->_anon_1b0[8];
    v51 = sqrt(vmuld_lane_f64(v50, v49, 1) + v49.f64[0] * v49.f64[0]);
    v52 = v51 * 0.99330562;
    v53 = 0.0;
    v54 = 1.57079633;
    v80 = v49.f64[0];
    if (v51 * 0.99330562 != 0.0)
    {
      v79 = *&self->_anon_1b0[8];
      v55 = 0;
      __y = *&self->_anon_1b0[16];
      v54 = 0.0;
      v56 = 0.0;
      do
      {
        v58 = v54;
        v54 = atan2(__y, v52);
        v59 = __sincos_stret(v54);
        v60 = 6378137.0 / sqrt(v59.__sinval * -0.00669437999 * v59.__sinval + 1.0);
        v53 = v51 / v59.__cosval - v60;
        if (vabdd_f64(v58, v54) < 0.000001)
        {
          if (vabdd_f64(v56, v53) < 0.001 || v55 >= 9)
          {
LABEL_17:
            v49.f64[0] = v80;
            goto LABEL_19;
          }
        }

        else if (v55 > 8)
        {
          goto LABEL_17;
        }

        ++v55;
        v52 = v51 * (v60 / (v60 + v53) * -0.00669437999 + 1.0);
        v56 = v51 / v59.__cosval - v60;
      }

      while (v52 != 0.0);
      v49.f64[0] = v80;
      v54 = 1.57079633;
LABEL_19:
      v50 = v79;
    }

    v61 = atan2(v50, v49.f64[0]) / 0.0174532925;
    v95[0] = @"pos_geoc";
    v93[0] = @"x";
    v62 = [MEMORY[0x277CCABB0] numberWithDouble:v80];
    v94[0] = v62;
    v93[1] = @"y";
    v63 = [MEMORY[0x277CCABB0] numberWithDouble:*&self->_anon_1b0[8]];
    v94[1] = v63;
    v93[2] = @"z";
    v64 = [MEMORY[0x277CCABB0] numberWithDouble:*&self->_anon_1b0[16]];
    v94[2] = v64;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
    v96[0] = v65;
    v95[1] = @"lat";
    v66 = [MEMORY[0x277CCABB0] numberWithDouble:v54 / 0.0174532925];
    v96[1] = v66;
    v95[2] = @"lon";
    v67 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
    v96[2] = v67;
    v95[3] = @"alt";
    v68 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
    v96[3] = v68;
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:4];
    [dictionary setObject:v69 forKeyedSubscript:@"location"];

    v91 = @"heading";
    v70 = *&self->_anon_130[80];
    v87 = *&self->_anon_130[64];
    v88 = v70;
    v71 = *&self->_anon_130[112];
    v89 = *&self->_anon_130[96];
    v90 = v71;
    v72 = *&self->_anon_130[16];
    v83 = *self->_anon_130;
    v84 = v72;
    v73 = *&self->_anon_130[48];
    v85 = *&self->_anon_130[32];
    v86 = v73;
    v74 = [MEMORY[0x277CCABB0] numberWithDouble:VLHeadingForTransform(&v83)];
    v92 = v74;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    [dictionary setObject:v75 forKeyedSubscript:@"ori"];

    v76 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&self->_resultCovariance length:144 freeWhenDone:0];
    v77 = [v76 base64EncodedStringWithOptions:0];

    [dictionary setObject:v77 forKeyedSubscript:@"covariance"];
  }

  return dictionary;
}

- (id)analyticsInformationWithSessionStartMonotonicTime:(double)time
{
  v5 = objc_alloc_init(MEMORY[0x277D0EDF0]);
  [v5 setRelativeTimestampMs:((self->_monotonicTimestamp - time) * 1000.0)];
  [v5 setRunTimeMs:(self->_duration * 1000.0)];
  v6 = objc_alloc_init(MEMORY[0x277D0EDD8]);
  [v6 setX:*self->_gravity];
  [v6 setY:*&self->_gravity[8]];
  [v6 setZ:*&self->_gravity[16]];
  [v5 setGravityVector:v6];
  [v5 setExposureTargetOffset:self->_exposureTargetOffset];
  [v5 setLocation:self->_analyticsLocation];
  statistics = self->_statistics;
  if (statistics)
  {
    resultStatus = self->_resultStatus;
    if (resultStatus > 0x10 || ((1 << resultStatus) & 0x10110) == 0)
    {
      v32 = [(_VLStatistics *)statistics stats][136];
      statistics = self->_statistics;
      if (v32 >= 1)
      {
        v33 = [(_VLStatistics *)statistics stats][104];
        v34 = v33 + 16 * [(_VLStatistics *)self->_statistics stats][136];
        v35 = *(v34 - 12);
        v36 = *(v34 - 8);
        v37 = *(v34 - 4);
        v38 = objc_alloc_init(MEMORY[0x277D0EE18]);
        v39 = objc_alloc_init(MEMORY[0x277D0EE20]);
        [v38 setTileId:v39];

        tileId = [v38 tileId];
        [tileId setXCoordinate:v35];

        tileId2 = [v38 tileId];
        [tileId2 setYCoordinate:v36];

        tileId3 = [v38 tileId];
        [tileId3 setUncertainty:v37];

        [v38 setTileSizeBytes:{-[_VLStatistics stats](self->_statistics, "stats")[488]}];
        [v5 setTileDetails:v38];

        statistics = self->_statistics;
      }
    }

    if ([(_VLStatistics *)statistics stats][136] < 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = [(_VLStatistics *)self->_statistics stats][24];
      v10 = *(v9 + 2 * [(_VLStatistics *)self->_statistics stats][136] - 2);
    }

    v11 = objc_alloc_init(MEMORY[0x277D0EDE8]);
    [v11 setNumberOfInliers:v10];
    stats = [(_VLStatistics *)self->_statistics stats];
    [v11 setNumberOfKeypoints:stats->var13 & ~(stats->var13 >> 31)];
    stats2 = [(_VLStatistics *)self->_statistics stats];
    [v11 setNumberOfMatches:stats2->var15 & ~(stats2->var15 >> 31)];
    if ([(_VLStatistics *)self->_statistics stats][80] >= 1 && [(_VLStatistics *)self->_statistics stats][80])
    {
      v14 = 0;
      do
      {
        [v11 addSolverConfidence:{*(-[_VLStatistics stats](self->_statistics, "stats")[64] + 4 * v14)}];
        [v11 addFusedConfidence:{*(-[_VLStatistics stats](self->_statistics, "stats")[72] + 4 * v14++)}];
      }

      while (v14 < [(_VLStatistics *)self->_statistics stats][80]);
    }

    [v11 setTKptsMs:{(-[_VLStatistics stats](self->_statistics, "stats")[304] * 1000.0)}];
    [v11 setTMatchMs:{(-[_VLStatistics stats](self->_statistics, "stats")[368] * 1000.0)}];
    [v11 setTPoseMs:{(-[_VLStatistics stats](self->_statistics, "stats")[400] * 1000.0)}];
    [v5 setAlgorithmDetails:v11];
  }

  if (self->_resultStatus != 1)
  {
    v29 = objc_alloc_init(MEMORY[0x277D0EDC8]);
    v15 = v29;
    v30 = self->_resultStatus;
    if (v30 <= 1023)
    {
      if (v30 <= 31)
      {
        if (v30 > 7)
        {
          if (v30 != 8)
          {
            if (v30 == 16)
            {
              v31 = 3;
              goto LABEL_86;
            }

            goto LABEL_41;
          }
        }

        else
        {
          if (v30 == 2)
          {
            v31 = 1;
            goto LABEL_86;
          }

          if (v30 != 4)
          {
            goto LABEL_41;
          }
        }

        v31 = 2;
        goto LABEL_86;
      }

      if (v30 <= 127)
      {
        if (v30 == 32)
        {
          v31 = 4;
          goto LABEL_86;
        }

        if (v30 == 64)
        {
          v31 = 5;
          goto LABEL_86;
        }
      }

      else
      {
        switch(v30)
        {
          case 128:
            v31 = 6;
            goto LABEL_86;
          case 256:
            v31 = 7;
            goto LABEL_86;
          case 512:
            v31 = 8;
            goto LABEL_86;
        }
      }
    }

    else if (v30 > 0x4000)
    {
      if (v30 <= 16386)
      {
        if (v30 == 16385)
        {
          v31 = 14;
        }

        else
        {
          v31 = 15;
        }

        goto LABEL_86;
      }

      if (v30 == 16387)
      {
        v31 = 16;
        goto LABEL_86;
      }

      if (v30 == 16388)
      {
        v31 = 17;
        goto LABEL_86;
      }
    }

    else if (v30 <= 4095)
    {
      if (v30 == 1024)
      {
        v31 = 9;
        goto LABEL_86;
      }

      if (v30 == 2048)
      {
        v31 = 10;
        goto LABEL_86;
      }
    }

    else
    {
      switch(v30)
      {
        case 0x1000:
          v31 = 11;
          goto LABEL_86;
        case 0x2000:
          v31 = 12;
          goto LABEL_86;
        case 0x4000:
          v31 = 13;
LABEL_86:
          [v29 setFailureReason:v31];
          [v5 setFailureDetails:v15];
          goto LABEL_87;
      }
    }

LABEL_41:
    v31 = 0;
    goto LABEL_86;
  }

  v15 = objc_alloc_init(MEMORY[0x277D0EE10]);
  v17 = self->_location.pos_geoc[0];
  v16 = self->_location.pos_geoc[1];
  v18 = sqrt(v16 * v16 + v17 * v17);
  v19 = v18 * 0.99330562;
  v20 = 0.0;
  v21 = 0.0;
  if (v18 * 0.99330562 == 0.0)
  {
    goto LABEL_47;
  }

  v67 = self->_location.pos_geoc[1];
  __x = self->_location.pos_geoc[0];
  v22 = 0;
  __y = self->_location.pos_geoc[2];
  v23 = 0.0;
  v24 = 0.0;
  while (1)
  {
    v26 = v23;
    v23 = atan2(__y, v19);
    v27 = __sincos_stret(v23);
    v28 = 6378137.0 / sqrt(v27.__sinval * -0.00669437999 * v27.__sinval + 1.0);
    v21 = v18 / v27.__cosval - v28;
    if (vabdd_f64(v26, v23) < 0.000001)
    {
      break;
    }

    if (v22 > 8)
    {
      goto LABEL_46;
    }

LABEL_19:
    ++v22;
    v19 = v18 * (v28 / (v28 + v21) * -0.00669437999 + 1.0);
    v24 = v18 / v27.__cosval - v28;
    if (v19 == 0.0)
    {
      goto LABEL_46;
    }
  }

  if (vabdd_f64(v24, v21) >= 0.001 && v22 < 9)
  {
    goto LABEL_19;
  }

LABEL_46:
  v16 = v67;
  v17 = __x;
LABEL_47:
  v43 = atan2(v16, v17) / 0.0174532925;
  v68 = *&self->_anon_1b0[8];
  __xa = *self->_anon_1b0;
  v44 = sqrt(vmuld_lane_f64(v68, __xa, 1) + *self->_anon_1b0 * *self->_anon_1b0);
  v45 = v44 * 0.99330562;
  if (v44 * 0.99330562 != 0.0)
  {
    v65 = 0x3F91DF46A2529D39;
    v66 = v43;
    v46 = 0;
    __ya = *&self->_anon_1b0[16];
    v47 = 0.0;
    v48 = 0.0;
    do
    {
      v49 = v47;
      v47 = atan2(__ya, v45);
      v50 = __sincos_stret(v47);
      v51 = 6378137.0 / sqrt(v50.__sinval * -0.00669437999 * v50.__sinval + 1.0);
      v20 = v44 / v50.__cosval - v51;
      if (vabdd_f64(v49, v47) >= 0.000001)
      {
        if (v46 > 8)
        {
          break;
        }
      }

      else if (vabdd_f64(v48, v20) < 0.001 || v46 >= 9)
      {
        break;
      }

      ++v46;
      v45 = v44 * (v51 / (v51 + v20) * -0.00669437999 + 1.0);
      v48 = v44 / v50.__cosval - v51;
    }

    while (v45 != 0.0);
  }

  atan2(v68, __xa.f64[0]);
  v53 = objc_alloc_init(MEMORY[0x277D0EDC0]);
  GEOCalculateDistance();
  [v53 setLocationCorrectionMagnitude:v54];
  v55 = v20 - v21;
  if (v20 - v21 < 0.0)
  {
    v55 = -(v20 - v21);
  }

  [v53 setAltitudeCorrectionMagnitude:{v55, v65, *&v66}];
  v56 = *&self->_anon_130[80];
  v73[4] = *&self->_anon_130[64];
  v73[5] = v56;
  v57 = *&self->_anon_130[112];
  v73[6] = *&self->_anon_130[96];
  v73[7] = v57;
  v58 = *&self->_anon_130[16];
  v73[0] = *self->_anon_130;
  v73[1] = v58;
  v59 = *&self->_anon_130[48];
  v73[2] = *&self->_anon_130[32];
  v73[3] = v59;
  VLHeadingForTransform(v73);
  GEOAngleDifferenceDegrees();
  [v53 setHeadingCorrectionMagnitude:v60];
  [v15 setCorrection:v53];
  [v15 setPoseConfidence:self->_resultConfidence];
  v61 = self->_statistics;
  if (v61 && [(_VLStatistics *)v61 stats][88] >= 1)
  {
    v62 = 0;
    do
    {
      [v15 addInlierSuccessIndices:{*(-[_VLStatistics stats](self->_statistics, "stats")[16] + 4 * v62++)}];
      stats3 = [(_VLStatistics *)self->_statistics stats];
    }

    while (v62 < (stats3->var12 & ~(stats3->var12 >> 31)));
  }

  [v5 setSuccessDetails:v15];

LABEL_87:

  return v5;
}

- ($91CD28BF998EF1D34D1F6E7D57520290)_location
{
  v3 = *&self[1].var1;
  *retstr->var0 = *&self[1].var0[1];
  *&retstr->var0[2] = v3;
  *&retstr->var3 = self[2].var0[0];
  return self;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_heading
{
  trueHeading = self->_heading.trueHeading;
  accuracy = self->_heading.accuracy;
  result.var1 = accuracy;
  result.var0 = trueHeading;
  return result;
}

- (__n128)_gravity
{
  result = self[7];
  a2[1].n128_u64[0] = self[8].n128_u64[0];
  *a2 = result;
  return result;
}

@end