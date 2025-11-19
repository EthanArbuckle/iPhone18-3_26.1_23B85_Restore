@interface HKCategorySample(HDSPSleep)
+ (id)hdsp_categorySampleForSleepSessionInterval:()HDSPSleep metadata:;
@end

@implementation HKCategorySample(HDSPSleep)

+ (id)hdsp_categorySampleForSleepSessionInterval:()HDSPSleep metadata:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
    [v7 maximumAllowedDuration];
    v9 = v8;
    v10 = [v5 interval];
    [v10 duration];
    v12 = v11;

    if (v12 <= v9)
    {
      v17 = [v5 type];
      if ((v17 - 1) > 4)
      {
        v18 = 2;
      }

      else
      {
        v18 = qword_269B982D0[v17 - 1];
      }

      v19 = MEMORY[0x277CCD0B0];
      v20 = [v5 interval];
      v21 = [v20 startDate];
      v22 = [v5 interval];
      v23 = [v22 endDate];
      v24 = [MEMORY[0x277CCD2E8] localDevice];
      v16 = [v19 categorySampleWithType:v7 value:v18 startDate:v21 endDate:v23 device:v24 metadata:v6];

      goto LABEL_13;
    }

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 interval];
      [v14 duration];
      v27 = 134218240;
      v28 = v15;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "Sleep interval: %f greater than allowed: %f. Will not be used", &v27, 0x16u);
    }
  }

  else
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "sleepInterval is nil", &v27, 2u);
    }
  }

  v16 = 0;
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

@end