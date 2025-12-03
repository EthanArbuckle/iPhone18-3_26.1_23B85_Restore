@interface RTLearnedPlaceVersions
- (id)copyWithZone:(_NSZone *)zone;
- (id)trueVersion;
- (void)setExistingVersion:(id)version;
- (void)setInferredVersion:(id)version;
- (void)setTruthfulCounterpart:(id)counterpart;
@end

@implementation RTLearnedPlaceVersions

- (void)setInferredVersion:(id)version
{
  v19 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  identifier = [(RTLearnedPlace *)versionCopy identifier];
  existingVersion = [(RTLearnedPlaceVersions *)self existingVersion];
  identifier2 = [existingVersion identifier];
  v8 = [identifier isEqual:identifier2];
  if (!versionCopy || v8)
  {

LABEL_7:
    goto LABEL_8;
  }

  existingVersion2 = [(RTLearnedPlaceVersions *)self existingVersion];

  if (existingVersion2)
  {
    identifier = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[RTLearnedPlaceVersions setInferredVersion:]";
      v17 = 1024;
      v18 = 110;
      _os_log_error_impl(&dword_2304B3000, identifier, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [inferredVersion.identifier isEqual:self.existingVersion.identifier] || inferredVersion == nil || self.existingVersion == nil (in %s:%d)", &v15, 0x12u);
    }

    goto LABEL_7;
  }

LABEL_8:
  type = [(RTLearnedPlace *)versionCopy type];
  truthfulCounterpart = [(RTLearnedPlaceVersions *)self truthfulCounterpart];
  type2 = [truthfulCounterpart type];
  if (!versionCopy || type == type2)
  {
LABEL_13:

    goto LABEL_14;
  }

  truthfulCounterpart2 = [(RTLearnedPlaceVersions *)self truthfulCounterpart];

  if (truthfulCounterpart2)
  {
    truthfulCounterpart = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(truthfulCounterpart, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[RTLearnedPlaceVersions setInferredVersion:]";
      v17 = 1024;
      v18 = 113;
      _os_log_error_impl(&dword_2304B3000, truthfulCounterpart, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredVersion.type == self.truthfulCounterpart.type || inferredVersion == nil || self.truthfulCounterpart == nil (in %s:%d)", &v15, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
  inferredVersion = self->_inferredVersion;
  self->_inferredVersion = versionCopy;
}

- (void)setExistingVersion:(id)version
{
  v14 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  inferredVersion = [(RTLearnedPlaceVersions *)self inferredVersion];
  identifier = [inferredVersion identifier];
  identifier2 = [(RTLearnedPlace *)versionCopy identifier];
  if ([identifier isEqual:identifier2])
  {

LABEL_7:
    goto LABEL_8;
  }

  inferredVersion2 = [(RTLearnedPlaceVersions *)self inferredVersion];

  if (versionCopy && inferredVersion2)
  {
    inferredVersion = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(inferredVersion, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTLearnedPlaceVersions setExistingVersion:]";
      v12 = 1024;
      v13 = 122;
      _os_log_error_impl(&dword_2304B3000, inferredVersion, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [self.inferredVersion.identifier isEqual:existingVersion.identifier] || self.inferredVersion == nil || existingVersion == nil (in %s:%d)", &v10, 0x12u);
    }

    goto LABEL_7;
  }

LABEL_8:
  existingVersion = self->_existingVersion;
  self->_existingVersion = versionCopy;
}

- (void)setTruthfulCounterpart:(id)counterpart
{
  v13 = *MEMORY[0x277D85DE8];
  counterpartCopy = counterpart;
  inferredVersion = [(RTLearnedPlaceVersions *)self inferredVersion];
  type = [inferredVersion type];
  if (type == [(RTLearnedPlace *)counterpartCopy type])
  {
LABEL_6:

    goto LABEL_7;
  }

  inferredVersion2 = [(RTLearnedPlaceVersions *)self inferredVersion];

  if (counterpartCopy && inferredVersion2)
  {
    inferredVersion = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(inferredVersion, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTLearnedPlaceVersions setTruthfulCounterpart:]";
      v11 = 1024;
      v12 = 131;
      _os_log_error_impl(&dword_2304B3000, inferredVersion, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.inferredVersion.type == truthfulCounterpart.type || self.inferredVersion == nil || truthfulCounterpart == nil (in %s:%d)", &v9, 0x12u);
    }

    goto LABEL_6;
  }

LABEL_7:
  truthfulCounterpart = self->_truthfulCounterpart;
  self->_truthfulCounterpart = counterpartCopy;
}

- (id)trueVersion
{
  existingVersion = [(RTLearnedPlaceVersions *)self existingVersion];
  v4 = [existingVersion typeSource] & 6;

  if (v4)
  {
    existingVersion2 = [(RTLearnedPlaceVersions *)self existingVersion];
  }

  else
  {
    inferredVersion = [(RTLearnedPlaceVersions *)self inferredVersion];
    v7 = [inferredVersion typeSource] & 6;

    if (v7)
    {
      existingVersion2 = [(RTLearnedPlaceVersions *)self inferredVersion];
    }

    else
    {
      existingVersion2 = 0;
    }
  }

  return existingVersion2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  inferredVersion = [(RTLearnedPlaceVersions *)self inferredVersion];
  [v4 setInferredVersion:inferredVersion];

  existingVersion = [(RTLearnedPlaceVersions *)self existingVersion];
  [v4 setExistingVersion:existingVersion];

  truthfulCounterpart = [(RTLearnedPlaceVersions *)self truthfulCounterpart];
  [v4 setTruthfulCounterpart:truthfulCounterpart];

  return v4;
}

@end