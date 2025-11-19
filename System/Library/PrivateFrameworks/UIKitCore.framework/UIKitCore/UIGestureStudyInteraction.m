@interface UIGestureStudyInteraction
@end

@implementation UIGestureStudyInteraction

id __50___UIGestureStudyInteraction__handleMetricsEvent___block_invoke(uint64_t a1)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [*(a1 + 32) eventName];
    [v6 setValue:v7 forKey:@"gesture_type"];

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  v28[0] = @"total_duration";
  [*(a1 + 32) duration];
  v9 = MEMORY[0x1E696AD98];
  v10 = 0.0;
  v11 = 0.0;
  if (v8 != 0.0)
  {
    v12 = fabs(v8);
    v13 = v8 / v12;
    v14 = log10(v12);
    v15 = __exp10(2.0 - vcvtpd_s64_f64(v14));
    v11 = v13 * (round(v12 * v15) / v15);
  }

  v16 = [v9 numberWithDouble:v11];
  v29[0] = v16;
  v28[1] = @"total_movement";
  [*(a1 + 32) movement];
  v18 = MEMORY[0x1E696AD98];
  if (v17 != 0.0)
  {
    v19 = fabs(v17);
    v20 = v17 / v19;
    v21 = log10(v19);
    v22 = __exp10(2.0 - vcvtpd_s64_f64(v21));
    v10 = v20 * (round(v19 * v22) / v22);
  }

  v23 = [v18 numberWithDouble:v10];
  v29[1] = v23;
  v28[2] = @"total_touch_count";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "observedTouchCount")}];
  v29[2] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [v2 addEntriesFromDictionary:v25];

  v26 = *(*(*(a1 + 40) + 8) + 40);

  return v26;
}

void __66___UIGestureStudyInteraction__reportEventForTriggeredParticipant___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v7 objCType];
    v6 = v7;
    if (*v8 == 100)
    {
      v6 = v7;
      if (!v8[1])
      {
        [v7 doubleValue];
        v10 = MEMORY[0x1E696AD98];
        if (v9 == 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v11 = fabs(v9);
          v12 = v9 / v11;
          v13 = log10(v11);
          v14 = __exp10(2.0 - vcvtpd_s64_f64(v13));
          v15 = v12 * (round(v11 * v14) / v14);
        }

        v6 = [v10 numberWithDouble:v15];
      }
    }
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v16];
}

@end