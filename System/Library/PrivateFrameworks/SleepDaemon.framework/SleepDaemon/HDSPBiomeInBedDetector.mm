@interface HDSPBiomeInBedDetector
+ (double)hoursOfSleepForResult:(id)a3;
+ (id)inBedDetector;
+ (id)inBedDetectorWithProvider:(id)a3;
- (HDSPBiomeInBedDetector)initWithProvider:(id)a3;
- (id)detectInBedTimesDuringInterval:(id)a3;
- (id)detectInBedTimesHelperDuringInterval:(id)a3;
- (id)findLastTimeDeviceWasLockedDuringInterval:(id)a3 error:(id *)a4;
- (id)findLastTimeDeviceWasUnlockedDuringInterval:(id)a3 error:(id *)a4;
- (id)findLatestEndOfMovementDuringInterval:(id)a3 error:(id *)a4;
- (id)lockedTimesDuringInterval:(id)a3 error:(id *)a4;
@end

@implementation HDSPBiomeInBedDetector

+ (id)inBedDetector
{
  v3 = objc_alloc_init(HDSPBiomeInBedDetectionProvider);
  v4 = [a1 inBedDetectorWithProvider:v3];

  return v4;
}

+ (id)inBedDetectorWithProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProvider:v4];

  return v5;
}

- (HDSPBiomeInBedDetector)initWithProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDSPBiomeInBedDetector;
  v6 = [(HDSPBiomeInBedDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeProvider, a3);
  }

  return v7;
}

+ (double)hoursOfSleepForResult:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) duration];
        v7 = v7 + v9 / 3600.0;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)detectInBedTimesDuringInterval:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HDSPBiomeInBedDetector *)self detectInBedTimesHelperDuringInterval:v4];
  objc_autoreleasePoolPop(v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HDSPBiomeInBedDetector_detectInBedTimesDuringInterval___block_invoke;
  v9[3] = &unk_279C7B7B8;
  v9[4] = self;
  v7 = [v6 addSuccessBlock:v9];

  return v6;
}

void __57__HDSPBiomeInBedDetector_detectInBedTimesDuringInterval___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    [objc_opt_class() hoursOfSleepForResult:v3];
    v11 = 138543618;
    v12 = v6;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] calculated time in bed hours: %f", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)detectInBedTimesHelperDuringInterval:(id)a3
{
  v136 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v4 endDate];

  v7 = HKSPLogForCategory();
  v8 = &off_269B98000;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v129 = objc_opt_class();
    v130 = 2112;
    v131 = v5;
    v132 = 2112;
    v133 = v6;
    v9 = v129;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for in-bed intervals between %@ and %@", buf, 0x20u);
  }

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543362;
    v129 = v11;
    v12 = v11;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Establishing night start..", buf, 0xCu);
  }

  v13 = [v5 dateByAddingTimeInterval:14400.0];
  v14 = [v6 dateByAddingTimeInterval:-60.0];
  v15 = objc_alloc(MEMORY[0x277CCA970]);
  v116 = v13;
  v16 = [v13 earlierDate:v14];
  v17 = [v15 initWithStartDate:v5 endDate:v16];

  v127 = 0;
  v114 = v17;
  v18 = [(HDSPBiomeInBedDetector *)self findLatestEndOfMovementDuringInterval:v17 error:&v127];
  v19 = v127;
  if (v19)
  {
    v20 = v19;
    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v92 = objc_opt_class();
      *buf = 138543618;
      v129 = v92;
      v130 = 2112;
      v131 = v20;
      v93 = v92;
      _os_log_error_impl(&dword_269B11000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding last end of movement: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v65 = HKSPLogForCategory();
  v20 = v65;
  if (v18)
  {
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      *buf = 138543618;
      v129 = v66;
      v130 = 2112;
      v131 = v18;
      v21 = v66;
      _os_log_impl(&dword_269B11000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Night start is %@", buf, 0x16u);
LABEL_8:
    }
  }

  else if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_opt_class();
    *buf = 138543618;
    v129 = v70;
    v130 = 2112;
    v131 = v5;
    v21 = v70;
    _os_log_error_impl(&dword_269B11000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find last end of movement. Falling back to provided start time (%@).", buf, 0x16u);
    goto LABEL_8;
  }

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v5;
  }

  v23 = v22;

  v24 = HKSPLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    *buf = 138543362;
    v129 = v25;
    v26 = v25;
    _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Establishing final bedtime..", buf, 0xCu);
  }

  v27 = v23;
  v113 = [v27 dateByAddingTimeInterval:5400.0];
  v118 = [v113 earlierDate:v14];
  v126[1] = 0;
  v120 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v27 endDate:v118];
  v28 = [HDSPBiomeInBedDetector findLastTimeDeviceWasLockedDuringInterval:"findLastTimeDeviceWasLockedDuringInterval:error:" error:?];
  v29 = 0;
  v121 = v28;
  if (v29)
  {
    v30 = v29;
    v31 = HKSPLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v94 = objc_opt_class();
      *buf = 138544130;
      v129 = v94;
      v130 = 2112;
      v131 = v27;
      v132 = 2112;
      v133 = v118;
      v134 = 2112;
      v135 = v30;
      v95 = v27;
      v96 = v94;
      _os_log_error_impl(&dword_269B11000, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding last lock date between %@ and %@: %@", buf, 0x2Au);

      v27 = v95;
      v28 = v121;
    }
  }

  v32 = HKSPLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_opt_class();
    *buf = 138543618;
    v129 = v33;
    v130 = 2112;
    v131 = v28;
    v34 = v33;
    _os_log_impl(&dword_269B11000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last lock was %@", buf, 0x16u);
  }

  v123 = v27;
  if (v28)
  {
    v123 = [v27 laterDate:v28];
  }

  biomeProvider = self->_biomeProvider;
  v126[0] = 0;
  v122 = [(HDSPBiomeInBedDetectionProviding *)biomeProvider findLastTimeDeviceWasPluggedInDuringInterval:v120 error:v126];
  v36 = v126[0];
  if (v36)
  {
    v37 = v36;
    v38 = HKSPLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v97 = objc_opt_class();
      *buf = 138544130;
      v129 = v97;
      v130 = 2112;
      v131 = v27;
      v132 = 2112;
      v133 = v118;
      v134 = 2112;
      v135 = v37;
      v98 = v27;
      v99 = v97;
      _os_log_error_impl(&dword_269B11000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding last date device was plugged in between %@ and %@: %@", buf, 0x2Au);

      v27 = v98;
      v28 = v121;
    }
  }

  v39 = HKSPLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = objc_opt_class();
    *buf = 138543618;
    v129 = v40;
    v130 = 2112;
    v131 = v122;
    v41 = v40;
    _os_log_impl(&dword_269B11000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last plugin was %@", buf, 0x16u);
  }

  if (v122)
  {
    v42 = [v123 laterDate:?];

    v123 = v42;
  }

  v43 = HKSPLogForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_opt_class();
    *buf = 138543618;
    v129 = v44;
    v130 = 2112;
    v131 = v123;
    v45 = v44;
    _os_log_impl(&dword_269B11000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Final bedtime is %@", buf, 0x16u);
  }

  v46 = HKSPLogForCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_opt_class();
    *buf = 138543362;
    v129 = v47;
    v48 = v47;
    _os_log_impl(&dword_269B11000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Establing night end..", buf, 0xCu);
  }

  v49 = [v6 dateByAddingTimeInterval:-3600.0];
  [v49 timeIntervalSinceReferenceDate];
  v51 = v50;
  [v123 timeIntervalSinceReferenceDate];
  v53 = v52;
  v54 = HKSPLogForCategory();
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
  v115 = v14;
  v119 = v49;
  if (v51 <= v53)
  {
    if (!v55)
    {
LABEL_55:
      v59 = 0;
      goto LABEL_56;
    }

    v63 = objc_opt_class();
    *buf = 138543362;
    v129 = v63;
    v64 = v63;
    _os_log_impl(&dword_269B11000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bedtime started less than an hour before end date, not performing further movement based changes on end date.", buf, 0xCu);
LABEL_54:

    goto LABEL_55;
  }

  if (v55)
  {
    v56 = objc_opt_class();
    *buf = 138543874;
    v129 = v56;
    v130 = 2112;
    v131 = v49;
    v132 = 2112;
    v133 = v6;
    v57 = v56;
    _os_log_impl(&dword_269B11000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for earliest start of movement between %@ and %@", buf, 0x20u);

    v49 = v119;
  }

  v54 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v49 endDate:v6];
  v58 = self->_biomeProvider;
  v125 = 0;
  v59 = [(HDSPBiomeInBedDetectionProviding *)v58 findMotionTerminusDuringInterval:v54 latest:0 error:&v125];
  v60 = v125;
  if (v60)
  {
    v61 = v60;
    v62 = HKSPLogForCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v103 = objc_opt_class();
      *buf = 138543618;
      v129 = v103;
      v130 = 2112;
      v131 = v61;
      v104 = v59;
      v105 = v103;
      _os_log_error_impl(&dword_269B11000, v62, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding first start of movement: %@", buf, 0x16u);

      v59 = v104;
      v8 = &off_269B98000;
    }

    v28 = v121;
    goto LABEL_56;
  }

  v67 = HKSPLogForCategory();
  v64 = v67;
  if (!v59)
  {
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v106 = objc_opt_class();
      *buf = 138543618;
      v129 = v106;
      v130 = 2112;
      v131 = v6;
      v107 = v27;
      v108 = v106;
      _os_log_error_impl(&dword_269B11000, v64, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find first start of movement. Falling back to provided end time (%@).", buf, 0x16u);

      v27 = v107;
      v28 = v121;
    }

    goto LABEL_54;
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = objc_opt_class();
    *buf = 138543618;
    v129 = v68;
    v130 = 2112;
    v131 = v59;
    v69 = v68;
    _os_log_impl(&dword_269B11000, v64, OS_LOG_TYPE_DEFAULT, "[%{public}@] Night end is %@", buf, 0x16u);

    v28 = v121;
  }

LABEL_56:
  v117 = v5;

  if (v59)
  {
    v71 = v59;
  }

  else
  {
    v71 = v6;
  }

  v72 = v71;

  v73 = HKSPLogForCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = objc_opt_class();
    *buf = *(v8 + 71);
    v129 = v74;
    v130 = 2112;
    v131 = v123;
    v132 = 2112;
    v133 = v72;
    v75 = v74;
    _os_log_impl(&dword_269B11000, v73, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detecting in-bed intervals between night start (%@) and end (%@)", buf, 0x20u);

    v28 = v121;
  }

  v76 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v123 endDate:v72];
  v124 = 0;
  v77 = [(HDSPBiomeInBedDetector *)self lockedTimesDuringInterval:v76 error:&v124];
  v78 = v124;
  if (v78)
  {
    v79 = HKSPLogForCategory();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v100 = objc_opt_class();
      *buf = 138544130;
      v129 = v100;
      v130 = 2112;
      v131 = v123;
      v132 = 2112;
      v133 = v72;
      v134 = 2112;
      v135 = v78;
      v101 = v59;
      v102 = v100;
      _os_log_error_impl(&dword_269B11000, v79, OS_LOG_TYPE_ERROR, "[%{public}@] Error identifying locked times between %@ and %@: %@", buf, 0x2Au);

      v59 = v101;
    }

    v28 = v121;
  }

  v112 = v59;
  v80 = HKSPLogForCategory();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    v81 = objc_opt_class();
    v82 = MEMORY[0x277CCABB0];
    v109 = v81;
    [v82 numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];
    v83 = v110 = v76;
    v84 = [v77 firstObject];
    [v84 startDate];
    v111 = v72;
    v86 = v85 = v27;
    v87 = [v77 lastObject];
    v88 = [v87 endDate];
    *buf = 138544130;
    v129 = v81;
    v130 = 2112;
    v131 = v83;
    v132 = 2112;
    v133 = v86;
    v134 = 2112;
    v135 = v88;
    _os_log_impl(&dword_269B11000, v80, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %@ in-bed intervals between %@ & %@", buf, 0x2Au);

    v27 = v85;
    v72 = v111;

    v28 = v121;
    v76 = v110;
  }

  if (v78)
  {
    [MEMORY[0x277D2C900] futureWithError:v78];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:v77];
  }
  v89 = ;

  v90 = *MEMORY[0x277D85DE8];

  return v89;
}

- (id)lockedTimesDuringInterval:(id)a3 error:(id *)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v85 = objc_opt_class();
    v86 = 2112;
    v87 = v6;
    v8 = v85;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for times device was locked in %@", buf, 0x16u);
  }

  v9 = [v6 startDate];
  v10 = [v6 endDate];
  biomeProvider = self->_biomeProvider;
  v81 = 0;
  v12 = [(HDSPBiomeInBedDetectionProviding *)biomeProvider findTimesDeviceWasUnlockedDuringInterval:v6 error:&v81];
  v13 = v81;
  v14 = v13;
  if (a4 && v13)
  {
    v15 = v13;
    v71 = 0;
    *a4 = v14;
    v16 = v14;
  }

  else
  {
    v80 = v13;
    v17 = [(HDSPBiomeInBedDetector *)self findLastTimeDeviceWasUnlockedDuringInterval:v6 error:&v80];
    v16 = v80;

    if (a4 && v16)
    {
      v18 = v16;
      v71 = 0;
      *a4 = v16;
    }

    else
    {
      if (v17)
      {
        if (![v12 count] || (objc_msgSend(v12, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "endDate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "compare:", v17), v20, v19, v21 == -1))
        {
          v22 = HKSPLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            *buf = 138543618;
            v85 = v23;
            v86 = 2112;
            v87 = v17;
            v24 = v23;
            _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Limited search for locked events to last lock end %@", buf, 0x16u);
          }

          v25 = v17;
          v10 = v25;
        }
      }

      if ([v12 count])
      {
        v67 = v6;
        v68 = v16;
        v65 = v10;
        v71 = [MEMORY[0x277CBEB18] array];
        v66 = v9;
        v26 = v9;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v69 = v12;
        obj = v12;
        v27 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
        v64 = v17;
        if (v27)
        {
          v28 = v27;
          v73 = *v77;
          v29 = v26;
          v74 = v26;
          do
          {
            v30 = 0;
            v31 = v29;
            do
            {
              if (*v77 != v73)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v76 + 1) + 8 * v30);
              v33 = HKSPLogForCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = objc_opt_class();
                v35 = v34;
                v36 = [v32 startDate];
                v37 = [v32 endDate];
                *buf = 138543874;
                v85 = v34;
                v86 = 2112;
                v87 = v36;
                v88 = 2112;
                v89 = v37;
                _os_log_impl(&dword_269B11000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] found not locked event between %@ and %@", buf, 0x20u);

                v26 = v74;
              }

              v38 = objc_alloc(MEMORY[0x277CCA970]);
              v39 = [v32 startDate];
              v40 = [v39 laterDate:v26];
              v41 = [v38 initWithStartDate:v31 endDate:v40];

              v42 = HKSPLogForCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = objc_opt_class();
                v44 = v43;
                v45 = [v41 startDate];
                v46 = [v41 endDate];
                *buf = 138543874;
                v85 = v43;
                v86 = 2112;
                v87 = v45;
                v88 = 2112;
                v89 = v46;
                _os_log_impl(&dword_269B11000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] inferring locked event between %@ and %@", buf, 0x20u);

                v26 = v74;
              }

              [v41 duration];
              if (v47 > 0.0)
              {
                [v71 addObject:v41];
              }

              v29 = [v32 endDate];

              ++v30;
              v31 = v29;
            }

            while (v28 != v30);
            v28 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v28);
        }

        else
        {
          v29 = v26;
        }

        v10 = v65;
        v54 = [v29 earlierDate:v65];
        v55 = [v54 isEqualToDate:v29];

        v6 = v67;
        v16 = v68;
        if (v55)
        {
          v56 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v29 endDate:v65];
          v57 = HKSPLogForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = objc_opt_class();
            v59 = v58;
            v60 = [v56 startDate];
            v61 = [v56 endDate];
            *buf = 138543874;
            v85 = v58;
            v86 = 2112;
            v87 = v60;
            v88 = 2112;
            v89 = v61;
            _os_log_impl(&dword_269B11000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding last locked event between %@ and %@", buf, 0x20u);

            v16 = v68;
          }

          [v71 addObject:v56];
        }

        v9 = v66;
        v12 = v69;
        v17 = v64;
      }

      else
      {
        v48 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v10];
        v49 = HKSPLogForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_opt_class();
          v75 = v50;
          [v48 startDate];
          v51 = v70 = v12;
          [v48 endDate];
          v53 = v52 = v16;
          *buf = 138543874;
          v85 = v50;
          v86 = 2112;
          v87 = v51;
          v88 = 2112;
          v89 = v53;
          _os_log_impl(&dword_269B11000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] no unlocked events, device was locked between %@ and %@", buf, 0x20u);

          v16 = v52;
          v12 = v70;
        }

        v83 = v48;
        v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
      }
    }
  }

  v62 = *MEMORY[0x277D85DE8];

  return v71;
}

- (id)findLatestEndOfMovementDuringInterval:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v6 startDate];
    v11 = [v6 endDate];
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for latest end of movement between %@ and %@", &v15, 0x20u);
  }

  v12 = [(HDSPBiomeInBedDetectionProviding *)self->_biomeProvider findMotionTerminusDuringInterval:v6 latest:1 error:a4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)findLastTimeDeviceWasUnlockedDuringInterval:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v6 startDate];
    v11 = [v6 endDate];
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for last time device was unlocked between %@ and %@", &v15, 0x20u);
  }

  v12 = [(HDSPBiomeInBedDetectionProviding *)self->_biomeProvider findLastTimeDeviceLockChangedDuringInterval:v6 isLocked:0 error:a4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)findLastTimeDeviceWasLockedDuringInterval:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v6 startDate];
    v11 = [v6 endDate];
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for last time device was locked between %@ and %@", &v15, 0x20u);
  }

  v12 = [(HDSPBiomeInBedDetectionProviding *)self->_biomeProvider findLastTimeDeviceLockChangedDuringInterval:v6 isLocked:1 error:a4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end