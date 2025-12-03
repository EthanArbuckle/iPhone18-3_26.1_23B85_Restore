@interface TAVisitStateSettings
- (BOOL)isEqual:(id)equal;
- (TAVisitStateSettings)initWithCoder:(id)coder;
- (TAVisitStateSettings)initWithDefaults;
- (TAVisitStateSettings)initWithVisitSnapshotCapacity:(unint64_t)capacity visitDisplayBufferCapacity:(unint64_t)bufferCapacity interVisitMetricSnapshotCapacity:(unint64_t)snapshotCapacity interVisitSnapshotUpdateInterval:(double)interval thresholdOfLocationRelevance:(double)relevance snapshotBufferTimeIntervalOfRetention:(double)retention loiBufferPerTypeCapacity:(unint64_t)typeCapacity loiBufferTimeIntervalOfRetention:(double)self0 maxNSigmaBetweenLastLocationAndVisit:(unint64_t)self1 qualitySnapshotDwellDuration:(double)self2 qualitySnapshotDisplayOnDuration:(double)self3 uniqueUTObservationCapPerVisit:(unint64_t)self4 sensitiveLOITypes:(id)self5;
- (TAVisitStateSettings)initWithVisitSnapshotCapacityOrDefault:(id)default visitDisplayBufferCapacityOrDefault:(id)orDefault interVisitMetricSnapshotCapacityOrDefault:(id)capacityOrDefault interVisitSnapshotUpdateIntervalOrDefault:(id)intervalOrDefault thresholdOfLocationRelevanceOrDefault:(id)relevanceOrDefault snapshotBufferTimeIntervalOfRetentionOrDefault:(id)retentionOrDefault loiBufferPerTypeCapacityOrDefault:(id)typeCapacityOrDefault loiBufferTimeIntervalOfRetentionOrDefault:(id)self0 maxNSigmaBetweenLastLocationAndVisitOrDefault:(id)self1 qualitySnapshotDwellDurationOrDefault:(id)self2 qualitySnapshotDisplayOnDurationOrDefault:(id)self3 uniqueUTObservationCapPerVisitOrDefault:(id)self4 sensitiveLOITypesOrDefault:(id)self5;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAVisitStateSettings

- (TAVisitStateSettings)initWithVisitSnapshotCapacity:(unint64_t)capacity visitDisplayBufferCapacity:(unint64_t)bufferCapacity interVisitMetricSnapshotCapacity:(unint64_t)snapshotCapacity interVisitSnapshotUpdateInterval:(double)interval thresholdOfLocationRelevance:(double)relevance snapshotBufferTimeIntervalOfRetention:(double)retention loiBufferPerTypeCapacity:(unint64_t)typeCapacity loiBufferTimeIntervalOfRetention:(double)self0 maxNSigmaBetweenLastLocationAndVisit:(unint64_t)self1 qualitySnapshotDwellDuration:(double)self2 qualitySnapshotDisplayOnDuration:(double)self3 uniqueUTObservationCapPerVisit:(unint64_t)self4 sensitiveLOITypes:(id)self5
{
  typesCopy = types;
  v32.receiver = self;
  v32.super_class = TAVisitStateSettings;
  v29 = [(TAVisitStateSettings *)&v32 init];
  v30 = v29;
  if (v29)
  {
    v29->_visitSnapshotCapacity = capacity;
    v29->_visitDisplayBufferCapacity = bufferCapacity;
    v29->_interVisitMetricSnapshotCapacity = snapshotCapacity;
    v29->_thresholdOfLocationRelevance = relevance;
    v29->_interVisitSnapshotUpdateInterval = interval;
    v29->_snapshotBufferTimeIntervalOfRetention = retention;
    v29->_loiBufferPerTypeCapacity = typeCapacity;
    v29->_loiBufferTimeIntervalOfRetention = ofRetention;
    v29->_maxNSigmaBetweenLastLocationAndVisit = visit;
    v29->_qualitySnapshotDwellDuration = duration;
    v29->_qualitySnapshotDisplayOnDuration = onDuration;
    v29->_uniqueUTObservationCapPerVisit = perVisit;
    objc_storeStrong(&v29->_sensitiveLOITypes, types);
  }

  return v30;
}

- (TAVisitStateSettings)initWithVisitSnapshotCapacityOrDefault:(id)default visitDisplayBufferCapacityOrDefault:(id)orDefault interVisitMetricSnapshotCapacityOrDefault:(id)capacityOrDefault interVisitSnapshotUpdateIntervalOrDefault:(id)intervalOrDefault thresholdOfLocationRelevanceOrDefault:(id)relevanceOrDefault snapshotBufferTimeIntervalOfRetentionOrDefault:(id)retentionOrDefault loiBufferPerTypeCapacityOrDefault:(id)typeCapacityOrDefault loiBufferTimeIntervalOfRetentionOrDefault:(id)self0 maxNSigmaBetweenLastLocationAndVisitOrDefault:(id)self1 qualitySnapshotDwellDurationOrDefault:(id)self2 qualitySnapshotDisplayOnDurationOrDefault:(id)self3 uniqueUTObservationCapPerVisitOrDefault:(id)self4 sensitiveLOITypesOrDefault:(id)self5
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  capacityOrDefaultCopy = capacityOrDefault;
  intervalOrDefaultCopy = intervalOrDefault;
  relevanceOrDefaultCopy = relevanceOrDefault;
  retentionOrDefaultCopy = retentionOrDefault;
  typeCapacityOrDefaultCopy = typeCapacityOrDefault;
  ofRetentionOrDefaultCopy = ofRetentionOrDefault;
  visitOrDefaultCopy = visitOrDefault;
  durationOrDefaultCopy = durationOrDefault;
  onDurationOrDefaultCopy = onDurationOrDefault;
  perVisitOrDefaultCopy = perVisitOrDefault;
  typesOrDefaultCopy = typesOrDefault;
  if (defaultCopy)
  {
    unsignedIntegerValue = [defaultCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 288;
  }

  v27 = orDefaultCopy;
  if (orDefaultCopy)
  {
    unsignedIntegerValue2 = [orDefaultCopy unsignedIntegerValue];
    if (capacityOrDefaultCopy)
    {
LABEL_6:
      unsignedIntegerValue3 = [capacityOrDefaultCopy unsignedIntegerValue];
      goto LABEL_9;
    }
  }

  else
  {
    unsignedIntegerValue2 = 200;
    if (capacityOrDefaultCopy)
    {
      goto LABEL_6;
    }
  }

  unsignedIntegerValue3 = 288;
LABEL_9:
  if (intervalOrDefaultCopy)
  {
    [intervalOrDefaultCopy doubleValue];
    v29 = v28;
    if (relevanceOrDefaultCopy)
    {
LABEL_11:
      [relevanceOrDefaultCopy doubleValue];
      v31 = v30;
      goto LABEL_14;
    }
  }

  else
  {
    v29 = 900.0;
    if (relevanceOrDefaultCopy)
    {
      goto LABEL_11;
    }
  }

  initWithDefaults = [[TAFilterGeneralSettings alloc] initWithDefaults];
  [(TAFilterGeneralSettings *)initWithDefaults thresholdOfLocationRelevance];
  v31 = v32;
LABEL_14:
  if (retentionOrDefaultCopy)
  {
    [retentionOrDefaultCopy doubleValue];
    v34 = v33;
  }

  else
  {
    v34 = 86400.0;
  }

  v57 = capacityOrDefaultCopy;
  if (typeCapacityOrDefaultCopy)
  {
    unsignedIntegerValue4 = [typeCapacityOrDefaultCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue4 = 3;
  }

  if (ofRetentionOrDefaultCopy)
  {
    [ofRetentionOrDefaultCopy doubleValue];
    v37 = v36;
  }

  else
  {
    v37 = 86400.0;
  }

  if (visitOrDefaultCopy)
  {
    unsignedIntValue = [visitOrDefaultCopy unsignedIntValue];
    if (durationOrDefaultCopy)
    {
LABEL_25:
      [durationOrDefaultCopy doubleValue];
      v40 = v39;
      goto LABEL_28;
    }
  }

  else
  {
    unsignedIntValue = 2;
    if (durationOrDefaultCopy)
    {
      goto LABEL_25;
    }
  }

  v40 = 600.0;
LABEL_28:
  v41 = onDurationOrDefaultCopy;
  if (onDurationOrDefaultCopy)
  {
    v42 = durationOrDefaultCopy;
    v43 = v41;
    [v41 doubleValue];
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v42 = durationOrDefaultCopy;
    v45 = 120.0;
  }

  v46 = typeCapacityOrDefaultCopy;
  if (perVisitOrDefaultCopy)
  {
    unsignedIntegerValue5 = [perVisitOrDefaultCopy unsignedIntegerValue];
    if (typesOrDefaultCopy)
    {
      goto LABEL_33;
    }

LABEL_37:
    +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
    v51 = v50 = defaultCopy;
    v48 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:unsignedIntegerValue visitDisplayBufferCapacity:unsignedIntegerValue2 interVisitMetricSnapshotCapacity:unsignedIntegerValue3 interVisitSnapshotUpdateInterval:unsignedIntegerValue4 thresholdOfLocationRelevance:unsignedIntValue snapshotBufferTimeIntervalOfRetention:unsignedIntegerValue5 loiBufferPerTypeCapacity:v29 loiBufferTimeIntervalOfRetention:v31 maxNSigmaBetweenLastLocationAndVisit:v34 qualitySnapshotDwellDuration:v37 qualitySnapshotDisplayOnDuration:v40 uniqueUTObservationCapPerVisit:v45 sensitiveLOITypes:v51];

    defaultCopy = v50;
    v27 = orDefaultCopy;
    if (relevanceOrDefaultCopy)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  unsignedIntegerValue5 = 200;
  if (!typesOrDefaultCopy)
  {
    goto LABEL_37;
  }

LABEL_33:
  v48 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:unsignedIntegerValue visitDisplayBufferCapacity:unsignedIntegerValue2 interVisitMetricSnapshotCapacity:unsignedIntegerValue3 interVisitSnapshotUpdateInterval:unsignedIntegerValue4 thresholdOfLocationRelevance:unsignedIntValue snapshotBufferTimeIntervalOfRetention:unsignedIntegerValue5 loiBufferPerTypeCapacity:v29 loiBufferTimeIntervalOfRetention:v31 maxNSigmaBetweenLastLocationAndVisit:v34 qualitySnapshotDwellDuration:v37 qualitySnapshotDisplayOnDuration:v40 uniqueUTObservationCapPerVisit:v45 sensitiveLOITypes:typesOrDefaultCopy];
  if (!relevanceOrDefaultCopy)
  {
LABEL_34:
  }

LABEL_35:

  return v48;
}

- (TAVisitStateSettings)initWithDefaults
{
  initWithDefaults = [[TAFilterGeneralSettings alloc] initWithDefaults];
  [(TAFilterGeneralSettings *)initWithDefaults thresholdOfLocationRelevance];
  v5 = v4;
  v6 = +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
  v7 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:288 visitDisplayBufferCapacity:200 interVisitMetricSnapshotCapacity:288 interVisitSnapshotUpdateInterval:3 thresholdOfLocationRelevance:2 snapshotBufferTimeIntervalOfRetention:200 loiBufferPerTypeCapacity:900.0 loiBufferTimeIntervalOfRetention:v5 maxNSigmaBetweenLastLocationAndVisit:86400.0 qualitySnapshotDwellDuration:86400.0 qualitySnapshotDisplayOnDuration:600.0 uniqueUTObservationCapPerVisit:120.0 sensitiveLOITypes:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v33 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      visitSnapshotCapacity = [(TAVisitStateSettings *)self visitSnapshotCapacity];
      if (visitSnapshotCapacity != [(TAVisitStateSettings *)v5 visitSnapshotCapacity])
      {
        goto LABEL_18;
      }

      visitDisplayBufferCapacity = [(TAVisitStateSettings *)self visitDisplayBufferCapacity];
      if (visitDisplayBufferCapacity != [(TAVisitStateSettings *)v5 visitDisplayBufferCapacity])
      {
        goto LABEL_18;
      }

      interVisitMetricSnapshotCapacity = [(TAVisitStateSettings *)self interVisitMetricSnapshotCapacity];
      if (interVisitMetricSnapshotCapacity != [(TAVisitStateSettings *)v5 interVisitMetricSnapshotCapacity])
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

      loiBufferPerTypeCapacity = [(TAVisitStateSettings *)self loiBufferPerTypeCapacity];
      if (loiBufferPerTypeCapacity != [(TAVisitStateSettings *)v5 loiBufferPerTypeCapacity])
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

      maxNSigmaBetweenLastLocationAndVisit = [(TAVisitStateSettings *)self maxNSigmaBetweenLastLocationAndVisit];
      if (maxNSigmaBetweenLastLocationAndVisit == [(TAVisitStateSettings *)v5 maxNSigmaBetweenLastLocationAndVisit]&& ([(TAVisitStateSettings *)self qualitySnapshotDwellDuration], v24 = v23, [(TAVisitStateSettings *)v5 qualitySnapshotDwellDuration], v24 == v25) && ([(TAVisitStateSettings *)self qualitySnapshotDisplayOnDuration], v27 = v26, [(TAVisitStateSettings *)v5 qualitySnapshotDisplayOnDuration], v27 == v28))
      {
        sensitiveLOITypes = [(TAVisitStateSettings *)self sensitiveLOITypes];
        sensitiveLOITypes2 = [(TAVisitStateSettings *)v5 sensitiveLOITypes];
        if (sensitiveLOITypes == sensitiveLOITypes2)
        {
          v33 = 1;
        }

        else
        {
          sensitiveLOITypes3 = [(TAVisitStateSettings *)self sensitiveLOITypes];
          sensitiveLOITypes4 = [(TAVisitStateSettings *)v5 sensitiveLOITypes];
          v33 = [sensitiveLOITypes3 isEqual:sensitiveLOITypes4];
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

- (TAVisitStateSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"VisitCap"];
  v6 = [coderCopy decodeIntegerForKey:@"VisitDisplayCap"];
  v7 = [coderCopy decodeIntegerForKey:@"InterCap"];
  [coderCopy decodeDoubleForKey:@"InterUpdateInterval"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"ThresLocRel"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"SnapshotRetention"];
  v13 = v12;
  v14 = [coderCopy decodeIntegerForKey:@"LOICap"];
  [coderCopy decodeDoubleForKey:@"LOIRetention"];
  v16 = v15;
  v17 = [coderCopy decodeIntegerForKey:@"MaxNSigma"];
  [coderCopy decodeDoubleForKey:@"MinDwell"];
  v19 = v18;
  [coderCopy decodeDoubleForKey:@"MinDisplay"];
  v21 = v20;
  v22 = [coderCopy decodeIntegerForKey:@"PerVisitCacheCap"];
  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"SensitiveLOITypes"];

  v27 = [(TAVisitStateSettings *)self initWithVisitSnapshotCapacity:v5 visitDisplayBufferCapacity:v6 interVisitMetricSnapshotCapacity:v7 interVisitSnapshotUpdateInterval:v14 thresholdOfLocationRelevance:v17 snapshotBufferTimeIntervalOfRetention:v22 loiBufferPerTypeCapacity:v9 loiBufferTimeIntervalOfRetention:v11 maxNSigmaBetweenLastLocationAndVisit:v13 qualitySnapshotDwellDuration:v16 qualitySnapshotDisplayOnDuration:v19 uniqueUTObservationCapPerVisit:v21 sensitiveLOITypes:v26];
  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  visitSnapshotCapacity = self->_visitSnapshotCapacity;
  coderCopy = coder;
  [coderCopy encodeInteger:visitSnapshotCapacity forKey:@"VisitCap"];
  [coderCopy encodeInteger:self->_visitDisplayBufferCapacity forKey:@"VisitDisplayCap"];
  [coderCopy encodeInteger:self->_interVisitMetricSnapshotCapacity forKey:@"InterCap"];
  [coderCopy encodeDouble:@"InterUpdateInterval" forKey:self->_interVisitSnapshotUpdateInterval];
  [coderCopy encodeDouble:@"ThresLocRel" forKey:self->_thresholdOfLocationRelevance];
  [coderCopy encodeDouble:@"SnapshotRetention" forKey:self->_snapshotBufferTimeIntervalOfRetention];
  [coderCopy encodeInteger:self->_loiBufferPerTypeCapacity forKey:@"LOICap"];
  [coderCopy encodeDouble:@"LOIRetention" forKey:self->_loiBufferTimeIntervalOfRetention];
  [coderCopy encodeInteger:self->_maxNSigmaBetweenLastLocationAndVisit forKey:@"MaxNSigma"];
  [coderCopy encodeDouble:@"MinDwell" forKey:self->_qualitySnapshotDwellDuration];
  [coderCopy encodeDouble:@"MinDisplay" forKey:self->_qualitySnapshotDisplayOnDuration];
  [coderCopy encodeInteger:self->_uniqueUTObservationCapPerVisit forKey:@"PerVisitCacheCap"];
  [coderCopy encodeObject:self->_sensitiveLOITypes forKey:@"SensitiveLOITypes"];
}

@end