@interface PGSinglePersonWallpaperAssetSuggesterFilteringContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)initForAmbient;
- (id)initForCameraStyleable;
- (id)initForPeopleInOrientation:(int64_t)a3;
- (id)initForPeopleInOrientation:(int64_t)a3 deviceAspectRatio:(double)a4;
- (id)initForTopPeople:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5;
- (id)initForTopPeopleInOrientation:(int64_t)a3;
- (id)initForTopPeopleInOrientation:(int64_t)a3 deviceAspectRatio:(double)a4;
- (void)_commonInitInOrientation:(int64_t)a3;
- (void)updateFilteringContextWithDictionary:(id)a3;
@end

@implementation PGSinglePersonWallpaperAssetSuggesterFilteringContext

- (id)dictionaryRepresentation
{
  v20[13] = *MEMORY[0x277D85DE8];
  v19[0] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextTimeIntervalForCandidateDeduping";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeIntervalForCandidateDeduping];
  v20[0] = v18;
  v19[1] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextRequiresSmile";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresSmile];
  v20[1] = v17;
  v19[2] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextRequiresNoBlink";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresNoBlink];
  v20[2] = v16;
  v19[3] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumFaceQuality";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumFaceQuality];
  v20[3] = v15;
  v19[4] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextFaceQualityPenaltyCutOff";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_faceQualityPenaltyCutOff];
  v20[4] = v3;
  v19[5] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumFaceSize";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumFaceSize];
  v20[5] = v4;
  v19[6] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumFaceSize";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumFaceSize];
  v20[6] = v5;
  v19[7] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumFaceRoll";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumFaceRoll];
  v20[7] = v6;
  v19[8] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumWallpaperScore";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumWallpaperScore];
  v20[8] = v7;
  v19[9] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextAbsoluteMinimumWallpaperScore";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_absoluteMinimumWallpaperScore];
  v20[9] = v8;
  v19[10] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumCropScore";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumCropScore];
  v20[10] = v9;
  v19[11] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumLowLightScore";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumLowLightScore];
  v20[11] = v10;
  v19[12] = @"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumCropZoomRatio";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumCropZoomRatio];
  v20[12] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:13];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v6 = v7->_timeIntervalForCandidateDeduping == self->_timeIntervalForCandidateDeduping && v7->_requiresSmile == self->_requiresSmile && v7->_requiresNoBlink == self->_requiresNoBlink && v7->_minimumFaceQuality == self->_minimumFaceQuality && v7->_faceQualityPenaltyCutOff == self->_faceQualityPenaltyCutOff && v7->_minimumFaceSize == self->_minimumFaceSize && v7->_maximumFaceSize == self->_maximumFaceSize && v7->_maximumFaceRoll == self->_maximumFaceRoll && v7->_minimumWallpaperScore == self->_minimumWallpaperScore && v7->_absoluteMinimumWallpaperScore == self->_absoluteMinimumWallpaperScore && v7->_minimumCropScore == self->_minimumCropScore && v7->_maximumLowLightScore == self->_maximumLowLightScore && v7->_maximumCropZoomRatio == self->_maximumCropZoomRatio;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [PGSinglePersonWallpaperAssetSuggesterFilteringContext allocWithZone:a3];
  *(result + 4) = *&self->_timeIntervalForCandidateDeduping;
  *(result + 8) = self->_requiresSmile;
  *(result + 9) = self->_requiresNoBlink;
  *(result + 5) = *&self->_minimumFaceQuality;
  *(result + 6) = *&self->_faceQualityPenaltyCutOff;
  *(result + 7) = *&self->_minimumFaceSize;
  *(result + 8) = *&self->_maximumFaceSize;
  *(result + 9) = *&self->_maximumFaceRoll;
  *(result + 10) = *&self->_minimumWallpaperScore;
  *(result + 11) = *&self->_absoluteMinimumWallpaperScore;
  *(result + 12) = *&self->_minimumCropScore;
  *(result + 13) = *&self->_maximumLowLightScore;
  *(result + 14) = *&self->_maximumCropZoomRatio;
  return result;
}

- (id)initForTopPeople:(BOOL)a3 withDictionary:(id)a4 orientation:(int64_t)a5
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)self initForTopPeopleInOrientation:a5];
  }

  else
  {
    v9 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)self initForPeopleInOrientation:a5];
  }

  v10 = v9;
  if (v9)
  {
    [v9 updateFilteringContextWithDictionary:v8];
  }

  return v10;
}

- (void)updateFilteringContextWithDictionary:(id)a3
{
  v41 = a3;
  v4 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextTimeIntervalForCandidateDeduping"];
  if (v4)
  {
    v5 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextTimeIntervalForCandidateDeduping"];
    [v5 doubleValue];
    self->_timeIntervalForCandidateDeduping = v6;
  }

  v7 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextRequiresSmile"];
  if (v7)
  {
    v8 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextRequiresSmile"];
    self->_requiresSmile = [v8 BOOLValue];
  }

  v9 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextRequiresNoBlink"];
  if (v9)
  {
    v10 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextRequiresNoBlink"];
    self->_requiresNoBlink = [v10 BOOLValue];
  }

  v11 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumFaceQuality"];
  if (v11)
  {
    v12 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumFaceQuality"];
    [v12 doubleValue];
    self->_minimumFaceQuality = v13;
  }

  v14 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextFaceQualityPenaltyCutOff"];
  if (v14)
  {
    v15 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextFaceQualityPenaltyCutOff"];
    [v15 doubleValue];
    self->_faceQualityPenaltyCutOff = v16;
  }

  v17 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumFaceSize"];
  if (v17)
  {
    v18 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumFaceSize"];
    [v18 doubleValue];
    self->_minimumFaceSize = v19;
  }

  v20 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumFaceSize"];
  if (v20)
  {
    v21 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumFaceSize"];
    [v21 doubleValue];
    self->_maximumFaceSize = v22;
  }

  v23 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumFaceRoll"];
  if (v23)
  {
    v24 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumFaceRoll"];
    [v24 doubleValue];
    self->_maximumFaceRoll = v25;
  }

  v26 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumWallpaperScore"];
  if (v26)
  {
    v27 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumWallpaperScore"];
    [v27 doubleValue];
    self->_minimumWallpaperScore = v28;
  }

  v29 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextAbsoluteMinimumWallpaperScore"];
  if (v29)
  {
    v30 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextAbsoluteMinimumWallpaperScore"];
    [v30 doubleValue];
    self->_absoluteMinimumWallpaperScore = v31;
  }

  v32 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumCropScore"];
  if (v32)
  {
    v33 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMinimumCropScore"];
    [v33 doubleValue];
    self->_minimumCropScore = v34;
  }

  v35 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumLowLightScore"];
  if (v35)
  {
    v36 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumLowLightScore"];
    [v36 doubleValue];
    self->_maximumLowLightScore = v37;
  }

  v38 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumCropZoomRatio"];
  if (v38)
  {
    v39 = [v41 objectForKeyedSubscript:@"PGSinglePersonWallpaperAssetSuggesterFilteringContextMaximumCropZoomRatio"];
    [v39 doubleValue];
    self->_maximumCropZoomRatio = v40;
  }
}

- (void)_commonInitInOrientation:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  self->_orientation = a3;
  PFDeviceScreenSize();
  v6 = v4;
  v7 = v5;
  if (v4 == 0.0 || v5 == 0.0 || (v4 == *MEMORY[0x277D3A858] ? (_ZF = v5 == *(MEMORY[0x277D3A858] + 8)) : (_ZF = 0), _ZF))
  {
    v9 = 1.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v15 = 134218496;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", &v15, 0x20u);
    }
  }

  else
  {
    v9 = fabs(v4 / v5);
  }

  self->_deviceAspectRatio = v9;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78BF90;
  *&self->_faceQualityPenaltyCutOff = xmmword_22F78BFA0;
  __asm { FMOV            V1.2D, #-1.0 }

  *&self->_maximumFaceSize = xmmword_22F78BFB0;
  *&self->_minimumWallpaperScore = _Q1;
  *&self->_minimumCropScore = xmmword_22F78BFC0;
  self->_maximumCropZoomRatio = 1.45;
  *&self->_requiresSmile = 257;
  v14 = *MEMORY[0x277D85DE8];
}

- (id)initForCameraStyleable
{
  v5.receiver = self;
  v5.super_class = PGSinglePersonWallpaperAssetSuggesterFilteringContext;
  v2 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v2 _commonInitInOrientation:1];
    v3->_minimumFaceQuality = 0.0;
    v3->_minimumWallpaperScore = 0.0;
    v3->_absoluteMinimumWallpaperScore = 0.0;
    v3->_maximumLowLightScore = 1.79769313e308;
    v3->_maximumFaceRoll = 1.57079633;
    *&v3->_requiresSmile = 16842752;
  }

  return v3;
}

- (id)initForAmbient
{
  v5.receiver = self;
  v5.super_class = PGSinglePersonWallpaperAssetSuggesterFilteringContext;
  v2 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v2 _commonInitInOrientation:2];
    v3->_bypassCropScoreCheck = 1;
  }

  return v3;
}

- (id)initForPeopleInOrientation:(int64_t)a3 deviceAspectRatio:(double)a4
{
  v9.receiver = self;
  v9.super_class = PGSinglePersonWallpaperAssetSuggesterFilteringContext;
  v6 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v6 _commonInitInOrientation:a3];
    v7[3] = a4;
  }

  return v7;
}

- (id)initForPeopleInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGSinglePersonWallpaperAssetSuggesterFilteringContext;
  v4 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v4 _commonInitInOrientation:a3];
  }

  return v5;
}

- (id)initForTopPeopleInOrientation:(int64_t)a3 deviceAspectRatio:(double)a4
{
  v9.receiver = self;
  v9.super_class = PGSinglePersonWallpaperAssetSuggesterFilteringContext;
  v6 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v6 _commonInitForTopPeopleInOrientation:a3];
    v7[3] = a4;
  }

  return v7;
}

- (id)initForTopPeopleInOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGSinglePersonWallpaperAssetSuggesterFilteringContext;
  v4 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v4 _commonInitForTopPeopleInOrientation:a3];
  }

  return v5;
}

@end