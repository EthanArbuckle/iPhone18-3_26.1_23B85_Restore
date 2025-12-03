@interface RTStateTransitionMotionActivityTypeHistogram
- (RTStateTransitionMotionActivityTypeHistogram)init;
- (unint64_t)getDominantMotionActivityType;
- (void)addMotionActivityType:(unint64_t)type;
- (void)show;
@end

@implementation RTStateTransitionMotionActivityTypeHistogram

- (unint64_t)getDominantMotionActivityType
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  motionActivityTypeBins = [(RTStateTransitionMotionActivityTypeHistogram *)self motionActivityTypeBins];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__RTStateTransitionMotionActivityTypeHistogram_getDominantMotionActivityType__block_invoke;
  v10[3] = &unk_2788CF2B0;
  v10[4] = v11;
  v10[5] = &v16;
  v10[6] = &v12;
  [motionActivityTypeBins enumerateKeysAndObjectsUsingBlock:v10];

  v3 = v17;
  if (*(v13 + 24) == 1)
  {
    v17[3] = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [MEMORY[0x277D011B8] motionActivityTypeToString:v17[3]];
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@ detected multimodal distribution, defaulting dominant motionActivityType to %@", buf, 0x16u);
      }

      v3 = v17;
    }
  }

  v5 = v3[3];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v5;
}

void __77__RTStateTransitionMotionActivityTypeHistogram_getDominantMotionActivityType__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  if (v6 >= 2)
  {
    v8 = *(*(a1[4] + 8) + 24);
    if (v7 <= v8)
    {
      if (v7 != v8)
      {
        return;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
      *(*(a1[5] + 8) + 24) = v6;
      *(*(a1[4] + 8) + 24) = v7;
    }

    *(*(a1[6] + 8) + 24) = v9;
  }
}

- (RTStateTransitionMotionActivityTypeHistogram)init
{
  v6.receiver = self;
  v6.super_class = RTStateTransitionMotionActivityTypeHistogram;
  v2 = [(RTStateTransitionMotionActivityTypeHistogram *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    motionActivityTypeBins = v2->_motionActivityTypeBins;
    v2->_motionActivityTypeBins = v3;
  }

  return v2;
}

- (void)addMotionActivityType:(unint64_t)type
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  motionActivityTypeBins = [(RTStateTransitionMotionActivityTypeHistogram *)self motionActivityTypeBins];
  v5 = [motionActivityTypeBins objectForKey:v8];

  motionActivityTypeBins2 = [(RTStateTransitionMotionActivityTypeHistogram *)self motionActivityTypeBins];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "integerValue") + 1}];
  [motionActivityTypeBins2 setObject:v7 forKey:v8];
}

- (void)show
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    motionActivityTypeBins = [(RTStateTransitionMotionActivityTypeHistogram *)self motionActivityTypeBins];
    v4 = [motionActivityTypeBins count];

    if (v4)
    {
      motionActivityTypeBins2 = [(RTStateTransitionMotionActivityTypeHistogram *)self motionActivityTypeBins];
      [motionActivityTypeBins2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_106];
    }
  }
}

void __52__RTStateTransitionMotionActivityTypeHistogram_show__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a2 integerValue];
  v6 = [v4 integerValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277D011B8] motionActivityTypeToString:v5];
      v9 = 138412546;
      v10 = v8;
      v11 = 2048;
      v12 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "motionActivityType, %@, frequency, %lu", &v9, 0x16u);
    }
  }
}

@end