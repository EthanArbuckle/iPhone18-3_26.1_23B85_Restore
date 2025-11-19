@interface TAVisitStateSettings
- (BOOL)isEqual:(id)a3;
- (TAVisitStateSettings)initWithCoder:(id)a3;
- (TAVisitStateSettings)initWithDefaults;
- (TAVisitStateSettings)initWithVisitSnapshotCapacity:(unint64_t)a3 visitDisplayBufferCapacity:(unint64_t)a4 interVisitMetricSnapshotCapacity:(unint64_t)a5 interVisitSnapshotUpdateInterval:(double)a6 thresholdOfLocationRelevance:(double)a7 snapshotBufferTimeIntervalOfRetention:(double)a8 loiBufferPerTypeCapacity:(unint64_t)a9 loiBufferTimeIntervalOfRetention:(double)a10 maxNSigmaBetweenLastLocationAndVisit:(unint64_t)a11 qualitySnapshotDwellDuration:(double)a12 qualitySnapshotDisplayOnDuration:(double)a13 uniqueUTObservationCapPerVisit:(unint64_t)a14 sensitiveLOITypes:(id)a15;
- (TAVisitStateSettings)initWithVisitSnapshotCapacityOrDefault:(id)a3 visitDisplayBufferCapacityOrDefault:(id)a4 interVisitMetricSnapshotCapacityOrDefault:(id)a5 interVisitSnapshotUpdateIntervalOrDefault:(id)a6 thresholdOfLocationRelevanceOrDefault:(id)a7 snapshotBufferTimeIntervalOfRetentionOrDefault:(id)a8 loiBufferPerTypeCapacityOrDefault:(id)a9 loiBufferTimeIntervalOfRetentionOrDefault:(id)a10 maxNSigmaBetweenLastLocationAndVisitOrDefault:(id)a11 qualitySnapshotDwellDurationOrDefault:(id)a12 qualitySnapshotDisplayOnDurationOrDefault:(id)a13 uniqueUTObservationCapPerVisitOrDefault:(id)a14 sensitiveLOITypesOrDefault:(id)a15;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAVisitStateSettings

- (TAVisitStateSettings)initWithVisitSnapshotCapacity:(unint64_t)a3 visitDisplayBufferCapacity:(unint64_t)a4 interVisitMetricSnapshotCapacity:(unint64_t)a5 interVisitSnapshotUpdateInterval:(double)a6 thresholdOfLocationRelevance:(double)a7 snapshotBufferTimeIntervalOfRetention:(double)a8 loiBufferPerTypeCapacity:(unint64_t)a9 loiBufferTimeIntervalOfRetention:(double)a10 maxNSigmaBetweenLastLocationAndVisit:(unint64_t)a11 qualitySnapshotDwellDuration:(double)a12 qualitySnapshotDisplayOnDuration:(double)a13 uniqueUTObservationCapPerVisit:(unint64_t)a14 sensitiveLOITypes:(id)a15
{
  v28 = a15;
  v32.receiver = self;
  v32.super_class = TAVisitStateSettings;
  v29 = [(TAVisitStateSettings *)&v32 init];
  v30 = v29;
  if (v29)
  {
    v29->_visitSnapshotCapacity = a3;
    v29->_visitDisplayBufferCapacity = a4;
    v29->_interVisitMetricSnapshotCapacity = a5;
    v29->_thresholdOfLocationRelevance = a7;
    v29->_interVisitSnapshotUpdateInterval = a6;
    v29->_snapshotBufferTimeIntervalOfRetention = a8;
    v29->_loiBufferPerTypeCapacity = a9;
    v29->_loiBufferTimeIntervalOfRetention = a10;
    v29->_maxNSigmaBetweenLastLocationAndVisit = a11;
    v29->_qualitySnapshotDwellDuration = a12;
    v29->_qualitySnapshotDisplayOnDuration = a13;
    v29->_uniqueUTObservationCapPerVisit = a14;
    objc_storeStrong(&v29->_sensitiveLOITypes, a15);
  }

  return v30;
}

- (TAVisitStateSettings)initWithVisitSnapshotCapacityOrDefault:(id)a3 visitDisplayBufferCapacityOrDefault:(id)a4 interVisitMetricSnapshotCapacityOrDefault:(id)a5 interVisitSnapshotUpdateIntervalOrDefault:(id)a6 thresholdOfLocationRelevanceOrDefault:(id)a7 snapshotBufferTimeIntervalOfRetentionOrDefault:(id)a8 loiBufferPerTypeCapacityOrDefault:(id)a9 loiBufferTimeIntervalOfRetentionOrDefault:(id)a10 maxNSigmaBetweenLastLocationAndVisitOrDefault:(id)a11 qualitySnapshotDwellDurationOrDefault:(id)a12 qualitySnapshotDisplayOnDurationOrDefault:(id)a13 uniqueUTObservationCapPerVisitOrDefault:(id)a14 sensitiveLOITypesOrDefault:(id)a15
{
  v20 = a3;
  v58 = a4;
  v21 = a5;
  v63 = a6;
  v22 = a7;
  v62 = a8;
  v23 = a9;
  v61 = a10;
  v60 = a11;
  v24 = a12;
  v25 = a13;
  v59 = a14;
  v26 = a15;
  if (v20)
  {
    v55 = [v20 unsignedIntegerValue];
  }

  else
  {
    v55 = 288;
  }

  v27 = v58;
  if (v58)
  {
    v54 = [v58 unsignedIntegerValue];
    if (v21)
    {
LABEL_6:
      v53 = [v21 unsignedIntegerValue];
      goto LABEL_9;
    }
  }

  else
  {
    v54 = 200;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  v53 = 288;
LABEL_9:
  if (v63)
  {
    [v63 doubleValue];
    v29 = v28;
    if (v22)
    {
LABEL_11:
      [v22 doubleValue];
      v31 = v30;
      goto LABEL_14;
    }
  }

  else
  {
    v29 = 900.0;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  v52 = [[TAFilterGeneralSettings alloc] initWithDefaults];
  [(TAFilterGeneralSettings *)v52 thresholdOfLocationRelevance];
  v31 = v32;
LABEL_14:
  if (v62)
  {
    [v62 doubleValue];
    v34 = v33;
  }

  else
  {
    v34 = 86400.0;
  }

  v57 = v21;
  if (v23)
  {
    v35 = [v23 unsignedIntegerValue];
  }

  else
  {
    v35 = 3;
  }

  if (v61)
  {
    [v61 doubleValue];
    v37 = v36;
  }

  else
  {
    v37 = 86400.0;
  }

  if (v60)
  {
    v38 = [v60 unsignedIntValue];
    if (v24)
    {
LABEL_25:
      [v24 doubleValue];
      v40 = v39;
      goto LABEL_28;
    }
  }

  else
  {
    v38 = 2;
    if (v24)
    {
      goto LABEL_25;
    }
  }

  v40 = 600.0;
LABEL_28:
  v41 = v25;
  if (v25)
  {
    v42 = v24;
    v43 = v41;
    [v41 doubleValue];
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v42 = v24;
    v45 = 120.0;
  }

  v46 = v23;
  if (v59)
  {
    v47 = [v59 unsignedIntegerValue];
    if (v26)
    {
      goto LABEL_33;
    }

LABEL_37:
    +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
    v51 = v50 = v20;
    v48 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:v55 visitDisplayBufferCapacity:v54 interVisitMetricSnapshotCapacity:v53 interVisitSnapshotUpdateInterval:v35 thresholdOfLocationRelevance:v38 snapshotBufferTimeIntervalOfRetention:v47 loiBufferPerTypeCapacity:v29 loiBufferTimeIntervalOfRetention:v31 maxNSigmaBetweenLastLocationAndVisit:v34 qualitySnapshotDwellDuration:v37 qualitySnapshotDisplayOnDuration:v40 uniqueUTObservationCapPerVisit:v45 sensitiveLOITypes:v51];

    v20 = v50;
    v27 = v58;
    if (v22)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v47 = 200;
  if (!v26)
  {
    goto LABEL_37;
  }

LABEL_33:
  v48 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:v55 visitDisplayBufferCapacity:v54 interVisitMetricSnapshotCapacity:v53 interVisitSnapshotUpdateInterval:v35 thresholdOfLocationRelevance:v38 snapshotBufferTimeIntervalOfRetention:v47 loiBufferPerTypeCapacity:v29 loiBufferTimeIntervalOfRetention:v31 maxNSigmaBetweenLastLocationAndVisit:v34 qualitySnapshotDwellDuration:v37 qualitySnapshotDisplayOnDuration:v40 uniqueUTObservationCapPerVisit:v45 sensitiveLOITypes:v26];
  if (!v22)
  {
LABEL_34:
  }

LABEL_35:

  return v48;
}

- (TAVisitStateSettings)initWithDefaults
{
  v3 = [[TAFilterGeneralSettings alloc] initWithDefaults];
  [(TAFilterGeneralSettings *)v3 thresholdOfLocationRelevance];
  v5 = v4;
  v6 = +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
  v7 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:288 visitDisplayBufferCapacity:200 interVisitMetricSnapshotCapacity:288 interVisitSnapshotUpdateInterval:3 thresholdOfLocationRelevance:2 snapshotBufferTimeIntervalOfRetention:200 loiBufferPerTypeCapacity:900.0 loiBufferTimeIntervalOfRetention:v5 maxNSigmaBetweenLastLocationAndVisit:86400.0 qualitySnapshotDwellDuration:86400.0 qualitySnapshotDisplayOnDuration:600.0 uniqueUTObservationCapPerVisit:120.0 sensitiveLOITypes:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v33 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TAVisitStateSettings *)self visitSnapshotCapacity];
      if (v6 != [(TAVisitStateSettings *)v5 visitSnapshotCapacity])
      {
        goto LABEL_18;
      }

      v7 = [(TAVisitStateSettings *)self visitDisplayBufferCapacity];
      if (v7 != [(TAVisitStateSettings *)v5 visitDisplayBufferCapacity])
      {
        goto LABEL_18;
      }

      v8 = [(TAVisitStateSettings *)self interVisitMetricSnapshotCapacity];
      if (v8 != [(TAVisitStateSettings *)v5 interVisitMetricSnapshotCapacity])
      {
        goto LABEL_18;
      }

      [(TAVisitStateSettings *)self interVisitSnapshotUpdateInterval];
      v10 = v9;
      [(TAVisitStateSettings *)v5 interVisitSnapshotUpdateInterval];
      if (v10 != v11)
      {
        goto LABEL_18;
      }

      [(TAVisitStateSettings *)self thresholdOfLocationRelevance];
      v13 = v12;
      [(TAVisitStateSettings *)v5 thresholdOfLocationRelevance];
      if (v13 != v14)
      {
        goto LABEL_18;
      }

      [(TAVisitStateSettings *)self snapshotBufferTimeIntervalOfRetention];
      v16 = v15;
      [(TAVisitStateSettings *)v5 snapshotBufferTimeIntervalOfRetention];
      if (v16 != v17)
      {
        goto LABEL_18;
      }

      v18 = [(TAVisitStateSettings *)self loiBufferPerTypeCapacity];
      if (v18 != [(TAVisitStateSettings *)v5 loiBufferPerTypeCapacity])
      {
        goto LABEL_18;
      }

      [(TAVisitStateSettings *)self loiBufferTimeIntervalOfRetention];
      v20 = v19;
      [(TAVisitStateSettings *)v5 loiBufferTimeIntervalOfRetention];
      if (v20 != v21)
      {
        goto LABEL_18;
      }

      v22 = [(TAVisitStateSettings *)self maxNSigmaBetweenLastLocationAndVisit];
      if (v22 == [(TAVisitStateSettings *)v5 maxNSigmaBetweenLastLocationAndVisit]&& ([(TAVisitStateSettings *)self qualitySnapshotDwellDuration], v24 = v23, [(TAVisitStateSettings *)v5 qualitySnapshotDwellDuration], v24 == v25) && ([(TAVisitStateSettings *)self qualitySnapshotDisplayOnDuration], v27 = v26, [(TAVisitStateSettings *)v5 qualitySnapshotDisplayOnDuration], v27 == v28))
      {
        v29 = [(TAVisitStateSettings *)self sensitiveLOITypes];
        v30 = [(TAVisitStateSettings *)v5 sensitiveLOITypes];
        if (v29 == v30)
        {
          v33 = 1;
        }

        else
        {
          v31 = [(TAVisitStateSettings *)self sensitiveLOITypes];
          v32 = [(TAVisitStateSettings *)v5 sensitiveLOITypes];
          v33 = [v31 isEqual:v32];
        }
      }

      else
      {
LABEL_18:
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

- (TAVisitStateSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"VisitCap"];
  v6 = [v4 decodeIntegerForKey:@"VisitDisplayCap"];
  v7 = [v4 decodeIntegerForKey:@"InterCap"];
  [v4 decodeDoubleForKey:@"InterUpdateInterval"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"ThresLocRel"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"SnapshotRetention"];
  v13 = v12;
  v14 = [v4 decodeIntegerForKey:@"LOICap"];
  [v4 decodeDoubleForKey:@"LOIRetention"];
  v16 = v15;
  v17 = [v4 decodeIntegerForKey:@"MaxNSigma"];
  [v4 decodeDoubleForKey:@"MinDwell"];
  v19 = v18;
  [v4 decodeDoubleForKey:@"MinDisplay"];
  v21 = v20;
  v22 = [v4 decodeIntegerForKey:@"PerVisitCacheCap"];
  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = [v4 decodeObjectOfClasses:v25 forKey:@"SensitiveLOITypes"];

  v27 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:v5 visitDisplayBufferCapacity:v6 interVisitMetricSnapshotCapacity:v7 interVisitSnapshotUpdateInterval:v14 thresholdOfLocationRelevance:v17 snapshotBufferTimeIntervalOfRetention:v22 loiBufferPerTypeCapacity:v9 loiBufferTimeIntervalOfRetention:v11 maxNSigmaBetweenLastLocationAndVisit:v13 qualitySnapshotDwellDuration:v16 qualitySnapshotDisplayOnDuration:v19 uniqueUTObservationCapPerVisit:v21 sensitiveLOITypes:v26];
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  visitSnapshotCapacity = self->_visitSnapshotCapacity;
  v5 = a3;
  [v5 encodeInteger:visitSnapshotCapacity forKey:@"VisitCap"];
  [v5 encodeInteger:self->_visitDisplayBufferCapacity forKey:@"VisitDisplayCap"];
  [v5 encodeInteger:self->_interVisitMetricSnapshotCapacity forKey:@"InterCap"];
  [v5 encodeDouble:@"InterUpdateInterval" forKey:self->_interVisitSnapshotUpdateInterval];
  [v5 encodeDouble:@"ThresLocRel" forKey:self->_thresholdOfLocationRelevance];
  [v5 encodeDouble:@"SnapshotRetention" forKey:self->_snapshotBufferTimeIntervalOfRetention];
  [v5 encodeInteger:self->_loiBufferPerTypeCapacity forKey:@"LOICap"];
  [v5 encodeDouble:@"LOIRetention" forKey:self->_loiBufferTimeIntervalOfRetention];
  [v5 encodeInteger:self->_maxNSigmaBetweenLastLocationAndVisit forKey:@"MaxNSigma"];
  [v5 encodeDouble:@"MinDwell" forKey:self->_qualitySnapshotDwellDuration];
  [v5 encodeDouble:@"MinDisplay" forKey:self->_qualitySnapshotDisplayOnDuration];
  [v5 encodeInteger:self->_uniqueUTObservationCapPerVisit forKey:@"PerVisitCacheCap"];
  [v5 encodeObject:self->_sensitiveLOITypes forKey:@"SensitiveLOITypes"];
}

@end