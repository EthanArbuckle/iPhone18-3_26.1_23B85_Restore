@interface RTFusedInferredMapItem
+ (id)sortFusedInferredMapItems:(id)a3 confidenceEqualityEpsilon:(double)a4 referenceLocation:(id)a5 distanceCalculator:(id)a6 ascending:(BOOL)a7;
- (BOOL)isEqual:(id)a3;
- (RTFusedInferredMapItem)initWithInferredMapItem:(id)a3;
- (RTFusedInferredMapItem)initWithMapItem:(id)a3 confidence:(double)a4 source:(unint64_t)a5;
- (id)convertToInferredMapItem;
- (id)description;
- (unint64_t)hash;
@end

@implementation RTFusedInferredMapItem

- (id)convertToInferredMapItem
{
  if (self->_mapItem)
  {
    v3 = [objc_alloc(MEMORY[0x277D01128]) initWithMapItem:self->_mapItem confidence:self->_source source:self->_confidence];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RTFusedInferredMapItem)initWithMapItem:(id)a3 confidence:(double)a4 source:(unint64_t)a5
{
  v9 = a3;
  if (a4 < 0.0 || a4 > 1.0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: kRTFusedInferredMapItemConfidenceMin <= confidence && confidence <= kRTFusedInferredMapItemConfidenceMax", buf, 2u);
    }

    goto LABEL_10;
  }

  if ((a5 & 0xFFFFFFFFFFC00020) != 0)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v16.receiver = self;
  v16.super_class = RTFusedInferredMapItem;
  v14 = [(RTFusedInferredMapItem *)&v16 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mapItem, a3);
    v15->_confidence = a4;
    v15->_source = a5;
  }

  self = v15;
  v12 = self;
LABEL_11:

  return v12;
}

- (RTFusedInferredMapItem)initWithInferredMapItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mapItem];
    [v5 confidence];
    self = -[RTFusedInferredMapItem initWithMapItem:confidence:source:](self, "initWithMapItem:confidence:source:", v6, [v5 source], v7);

    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(RTFusedInferredMapItem *)self mapItem];

  if (v3)
  {
    v4 = [(RTMapItem *)self->_mapItem hash];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    v6 = [v5 hash] ^ v4;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    v6 = [v5 hash];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_source];
  v8 = v6 ^ [v7 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTFusedInferredMapItem *)self mapItem];
      v7 = [(RTFusedInferredMapItem *)v5 mapItem];
      v8 = [v6 isEqual:v7];

      v9 = [(RTFusedInferredMapItem *)self mapItem];
      if (!v9)
      {
        v10 = [(RTFusedInferredMapItem *)v5 mapItem];
        v11 = v10 == 0;

        v8 |= v11;
      }

      [(RTFusedInferredMapItem *)self confidence];
      v13 = v12;
      [(RTFusedInferredMapItem *)v5 confidence];
      v15 = v14;
      v16 = [(RTFusedInferredMapItem *)self source];
      if (v16 == [(RTFusedInferredMapItem *)v5 source])
      {
        v17 = v8 & (v13 == v15);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTFusedInferredMapItem *)self mapItem];
  [(RTFusedInferredMapItem *)self confidence];
  v6 = v5;
  v7 = [MEMORY[0x277D011A0] sourceToString:{-[RTFusedInferredMapItem source](self, "source")}];
  v8 = [v3 stringWithFormat:@"mapItem, %@, confidence, %.3f, source, %@", v4, v6, v7];

  return v8;
}

+ (id)sortFusedInferredMapItems:(id)a3 confidenceEqualityEpsilon:(double)a4 referenceLocation:(id)a5 distanceCalculator:(id)a6 ascending:(BOOL)a7
{
  v7 = a7;
  v28[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: fusedInferredMapItems";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_15;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: RTCommonValidConfidence(confidenceEqualityEpsilon)";
    goto LABEL_14;
  }

  if (!v12)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: referenceLocation";
    goto LABEL_14;
  }

  if (v13)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __125__RTFusedInferredMapItem_sortFusedInferredMapItems_confidenceEqualityEpsilon_referenceLocation_distanceCalculator_ascending___block_invoke;
    v26[3] = &__block_descriptor_40_e31_q24__0__NSNumber_8__NSNumber_16l;
    *&v26[4] = a4;
    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:v7 comparator:v26];
    v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"mapItem" ascending:v7 comparator:&__block_literal_global_45];
    v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"mapItem" ascending:v7 comparator:&__block_literal_global_32];
    v17 = MEMORY[0x277CCAC98];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __125__RTFusedInferredMapItem_sortFusedInferredMapItems_confidenceEqualityEpsilon_referenceLocation_distanceCalculator_ascending___block_invoke_4;
    v23[3] = &unk_2788C9B48;
    v24 = v13;
    v25 = v12;
    v18 = [v17 sortDescriptorWithKey:@"mapItem" ascending:v7 comparator:v23];
    v28[0] = v14;
    v28[1] = v15;
    v28[2] = v16;
    v28[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    v20 = [v11 sortedArrayUsingDescriptors:v19];

    goto LABEL_16;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v21 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_14;
  }

LABEL_15:
  v20 = 0;
LABEL_16:

  return v20;
}

uint64_t __125__RTFusedInferredMapItem_sortFusedInferredMapItems_confidenceEqualityEpsilon_referenceLocation_distanceCalculator_ascending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 doubleValue];
  v8 = v7;
  [v6 doubleValue];
  if (vabdd_f64(v8, v9) >= *(a1 + 32))
  {
    [v5 doubleValue];
    v12 = v11;
    [v6 doubleValue];
    if (v12 > v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __125__RTFusedInferredMapItem_sortFusedInferredMapItems_confidenceEqualityEpsilon_referenceLocation_distanceCalculator_ascending___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return a3 == 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __125__RTFusedInferredMapItem_sortFusedInferredMapItems_confidenceEqualityEpsilon_referenceLocation_distanceCalculator_ascending___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mapItemPlaceType];
  v6 = [v4 mapItemPlaceType];

  v7 = 1;
  v8 = -1;
  v9 = 1;
  if (v5 != 2)
  {
    v9 = -1;
  }

  if (v6 != 1)
  {
    v8 = v9;
  }

  if (v5 != 1)
  {
    v7 = v8;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t __125__RTFusedInferredMapItem_sortFusedInferredMapItems_confidenceEqualityEpsilon_referenceLocation_distanceCalculator_ascending___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 location];
  [v5 distanceFromLocation:v7 toLocation:*(a1 + 40) error:0];
  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [v6 location];

  [v10 distanceFromLocation:v11 toLocation:*(a1 + 40) error:0];
  v13 = v12;

  v14 = -1;
  if (v9 < v13)
  {
    v14 = 1;
  }

  if (v9 == v13)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

@end