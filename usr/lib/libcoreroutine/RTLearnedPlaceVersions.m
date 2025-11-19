@interface RTLearnedPlaceVersions
- (id)copyWithZone:(_NSZone *)a3;
- (id)trueVersion;
- (void)setExistingVersion:(id)a3;
- (void)setInferredVersion:(id)a3;
- (void)setTruthfulCounterpart:(id)a3;
@end

@implementation RTLearnedPlaceVersions

- (void)setInferredVersion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTLearnedPlace *)v4 identifier];
  v6 = [(RTLearnedPlaceVersions *)self existingVersion];
  v7 = [v6 identifier];
  v8 = [v5 isEqual:v7];
  if (!v4 || v8)
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [(RTLearnedPlaceVersions *)self existingVersion];

  if (v9)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[RTLearnedPlaceVersions setInferredVersion:]";
      v17 = 1024;
      v18 = 110;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [inferredVersion.identifier isEqual:self.existingVersion.identifier] || inferredVersion == nil || self.existingVersion == nil (in %s:%d)", &v15, 0x12u);
    }

    goto LABEL_7;
  }

LABEL_8:
  v10 = [(RTLearnedPlace *)v4 type];
  v11 = [(RTLearnedPlaceVersions *)self truthfulCounterpart];
  v12 = [v11 type];
  if (!v4 || v10 == v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = [(RTLearnedPlaceVersions *)self truthfulCounterpart];

  if (v13)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[RTLearnedPlaceVersions setInferredVersion:]";
      v17 = 1024;
      v18 = 113;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredVersion.type == self.truthfulCounterpart.type || inferredVersion == nil || self.truthfulCounterpart == nil (in %s:%d)", &v15, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
  inferredVersion = self->_inferredVersion;
  self->_inferredVersion = v4;
}

- (void)setExistingVersion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTLearnedPlaceVersions *)self inferredVersion];
  v6 = [v5 identifier];
  v7 = [(RTLearnedPlace *)v4 identifier];
  if ([v6 isEqual:v7])
  {

LABEL_7:
    goto LABEL_8;
  }

  v8 = [(RTLearnedPlaceVersions *)self inferredVersion];

  if (v4 && v8)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTLearnedPlaceVersions setExistingVersion:]";
      v12 = 1024;
      v13 = 122;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [self.inferredVersion.identifier isEqual:existingVersion.identifier] || self.inferredVersion == nil || existingVersion == nil (in %s:%d)", &v10, 0x12u);
    }

    goto LABEL_7;
  }

LABEL_8:
  existingVersion = self->_existingVersion;
  self->_existingVersion = v4;
}

- (void)setTruthfulCounterpart:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTLearnedPlaceVersions *)self inferredVersion];
  v6 = [v5 type];
  if (v6 == [(RTLearnedPlace *)v4 type])
  {
LABEL_6:

    goto LABEL_7;
  }

  v7 = [(RTLearnedPlaceVersions *)self inferredVersion];

  if (v4 && v7)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTLearnedPlaceVersions setTruthfulCounterpart:]";
      v11 = 1024;
      v12 = 131;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.inferredVersion.type == truthfulCounterpart.type || self.inferredVersion == nil || truthfulCounterpart == nil (in %s:%d)", &v9, 0x12u);
    }

    goto LABEL_6;
  }

LABEL_7:
  truthfulCounterpart = self->_truthfulCounterpart;
  self->_truthfulCounterpart = v4;
}

- (id)trueVersion
{
  v3 = [(RTLearnedPlaceVersions *)self existingVersion];
  v4 = [v3 typeSource] & 6;

  if (v4)
  {
    v5 = [(RTLearnedPlaceVersions *)self existingVersion];
  }

  else
  {
    v6 = [(RTLearnedPlaceVersions *)self inferredVersion];
    v7 = [v6 typeSource] & 6;

    if (v7)
    {
      v5 = [(RTLearnedPlaceVersions *)self inferredVersion];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(RTLearnedPlaceVersions *)self inferredVersion];
  [v4 setInferredVersion:v5];

  v6 = [(RTLearnedPlaceVersions *)self existingVersion];
  [v4 setExistingVersion:v6];

  v7 = [(RTLearnedPlaceVersions *)self truthfulCounterpart];
  [v4 setTruthfulCounterpart:v7];

  return v4;
}

@end