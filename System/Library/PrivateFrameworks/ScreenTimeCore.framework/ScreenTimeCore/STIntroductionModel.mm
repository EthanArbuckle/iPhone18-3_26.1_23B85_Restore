@interface STIntroductionModel
- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)enabled downtimeStartTime:(id)time downtimeEndTime:(id)endTime restrictions:(id)restrictions passcode:(id)passcode communicationSafetyEnabled:(id)safetyEnabled eyeReliefEnabled:(id)reliefEnabled;
- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)enabled downtimeStartTime:(id)time downtimeEndTime:(id)endTime restrictions:(id)restrictions passcode:(id)passcode communicationSafetyEnabled:(id)safetyEnabled eyeReliefEnabled:(id)reliefEnabled imageGenerationRestriction:(int64_t)self0;
- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)enabled downtimeStartTime:(id)time downtimeEndTime:(id)endTime restrictions:(id)restrictions passcode:(id)passcode communicationSafetyEnabled:(id)safetyEnabled eyeReliefEnabled:(id)reliefEnabled imageGenerationRestriction:(int64_t)self0 communicationPolicy:(int64_t)self1 communicationWhileLimitedPolicy:(int64_t)self2 contactEditingDisabled:(id)self3 contactManagementEnabled:(id)self4;
- (STIntroductionModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STIntroductionModel

- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)enabled downtimeStartTime:(id)time downtimeEndTime:(id)endTime restrictions:(id)restrictions passcode:(id)passcode communicationSafetyEnabled:(id)safetyEnabled eyeReliefEnabled:(id)reliefEnabled imageGenerationRestriction:(int64_t)self0
{
  enabledCopy = enabled;
  safetyEnabledCopy = safetyEnabled;
  reliefEnabledCopy = reliefEnabled;
  v38.receiver = self;
  v38.super_class = STIntroductionModel;
  passcodeCopy = passcode;
  restrictionsCopy = restrictions;
  endTimeCopy = endTime;
  timeCopy = time;
  v23 = [(STIntroductionModel *)&v38 init];
  isAppAndWebsiteActivityEnabled = v23->_isAppAndWebsiteActivityEnabled;
  v23->_isAppAndWebsiteActivityEnabled = enabledCopy;
  v25 = enabledCopy;

  v26 = [timeCopy copy];
  downtimeStartTime = v23->_downtimeStartTime;
  v23->_downtimeStartTime = v26;

  v28 = [endTimeCopy copy];
  downtimeEndTime = v23->_downtimeEndTime;
  v23->_downtimeEndTime = v28;

  v30 = [restrictionsCopy copy];
  restrictions = v23->_restrictions;
  v23->_restrictions = v30;

  v32 = [passcodeCopy copy];
  passcode = v23->_passcode;
  v23->_passcode = v32;

  isCommunicationSafetyEnabled = v23->_isCommunicationSafetyEnabled;
  v23->_isCommunicationSafetyEnabled = safetyEnabledCopy;
  v35 = safetyEnabledCopy;

  isEyeReliefEnabled = v23->_isEyeReliefEnabled;
  v23->_isEyeReliefEnabled = reliefEnabledCopy;

  v23->_imageGenerationRestriction = restriction;
  return v23;
}

- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)enabled downtimeStartTime:(id)time downtimeEndTime:(id)endTime restrictions:(id)restrictions passcode:(id)passcode communicationSafetyEnabled:(id)safetyEnabled eyeReliefEnabled:(id)reliefEnabled imageGenerationRestriction:(int64_t)self0 communicationPolicy:(int64_t)self1 communicationWhileLimitedPolicy:(int64_t)self2 contactEditingDisabled:(id)self3 contactManagementEnabled:(id)self4
{
  disabledCopy = disabled;
  managementEnabledCopy = managementEnabled;
  v21 = [(STIntroductionModel *)self initWithAppAndWebsiteActivityEnabled:enabled downtimeStartTime:time downtimeEndTime:endTime restrictions:restrictions passcode:passcode communicationSafetyEnabled:safetyEnabled eyeReliefEnabled:reliefEnabled imageGenerationRestriction:restriction];
  v21->_communicationPolicy = policy;
  v21->_communicationWhileLimitedPolicy = limitedPolicy;
  isContactEditingDisabled = v21->_isContactEditingDisabled;
  v21->_isContactEditingDisabled = disabledCopy;
  v23 = disabledCopy;

  isContactManagementEnabled = v21->_isContactManagementEnabled;
  v21->_isContactManagementEnabled = managementEnabledCopy;

  return v21;
}

- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)enabled downtimeStartTime:(id)time downtimeEndTime:(id)endTime restrictions:(id)restrictions passcode:(id)passcode communicationSafetyEnabled:(id)safetyEnabled eyeReliefEnabled:(id)reliefEnabled
{
  reliefEnabledCopy = reliefEnabled;
  safetyEnabledCopy = safetyEnabled;
  passcodeCopy = passcode;
  restrictionsCopy = restrictions;
  endTimeCopy = endTime;
  timeCopy = time;
  enabledCopy = enabled;
  v23 = +[STLog persistence];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_INFO, "Deprecated API called. Using unspecified restriction case for imageGenerationRestriction.", buf, 2u);
  }

  v24 = [(STIntroductionModel *)self initWithAppAndWebsiteActivityEnabled:enabledCopy downtimeStartTime:timeCopy downtimeEndTime:endTimeCopy restrictions:restrictionsCopy passcode:passcodeCopy communicationSafetyEnabled:safetyEnabledCopy eyeReliefEnabled:reliefEnabledCopy imageGenerationRestriction:0];
  return v24;
}

- (STIntroductionModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppAndWebsiteActivity"];
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DowntimeStartTime"];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DowntimeEndTime"];
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v37 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  v30 = [coderCopy decodeObjectOfClasses:v37 forKey:@"Restrictions"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Passcode"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactEditingDisabled"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactManagementEnabled"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CommunicationSafety"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EyeRelief"];
  v38.receiver = self;
  v38.super_class = STIntroductionModel;
  v11 = [(STIntroductionModel *)&v38 init];
  isAppAndWebsiteActivityEnabled = v11->_isAppAndWebsiteActivityEnabled;
  v11->_isAppAndWebsiteActivityEnabled = v4;
  v36 = v4;

  v13 = [v33 copy];
  downtimeStartTime = v11->_downtimeStartTime;
  v11->_downtimeStartTime = v13;

  v15 = [v34 copy];
  downtimeEndTime = v11->_downtimeEndTime;
  v11->_downtimeEndTime = v15;

  v17 = [v30 copy];
  restrictions = v11->_restrictions;
  v11->_restrictions = v17;

  v11->_imageGenerationRestriction = [coderCopy decodeInt64ForKey:@"ImageGenerationRestriction"];
  v19 = [v31 copy];
  passcode = v11->_passcode;
  v11->_passcode = v19;

  v11->_communicationPolicy = [coderCopy decodeInt64ForKey:@"CommunicationPolicy"];
  v21 = [coderCopy decodeInt64ForKey:@"CommunicationWhileLimitedPolicy"];

  isContactEditingDisabled = v11->_isContactEditingDisabled;
  v11->_communicationWhileLimitedPolicy = v21;
  v11->_isContactEditingDisabled = v8;
  v23 = v8;

  isContactManagementEnabled = v11->_isContactManagementEnabled;
  v11->_isContactManagementEnabled = v9;
  v25 = v9;

  isCommunicationSafetyEnabled = v11->_isCommunicationSafetyEnabled;
  v11->_isCommunicationSafetyEnabled = v10;
  v27 = v10;

  isEyeReliefEnabled = v11->_isEyeReliefEnabled;
  v11->_isEyeReliefEnabled = v32;

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  isAppAndWebsiteActivityEnabled = self->_isAppAndWebsiteActivityEnabled;
  coderCopy = coder;
  [coderCopy encodeObject:isAppAndWebsiteActivityEnabled forKey:@"AppAndWebsiteActivity"];
  [coderCopy encodeObject:self->_downtimeStartTime forKey:@"DowntimeStartTime"];
  [coderCopy encodeObject:self->_downtimeEndTime forKey:@"DowntimeEndTime"];
  [coderCopy encodeObject:self->_restrictions forKey:@"Restrictions"];
  [coderCopy encodeInt64:self->_imageGenerationRestriction forKey:@"ImageGenerationRestriction"];
  [coderCopy encodeObject:self->_passcode forKey:@"Passcode"];
  [coderCopy encodeInt64:self->_communicationPolicy forKey:@"CommunicationPolicy"];
  [coderCopy encodeInt64:self->_communicationWhileLimitedPolicy forKey:@"CommunicationWhileLimitedPolicy"];
  [coderCopy encodeObject:self->_isContactEditingDisabled forKey:@"ContactEditingDisabled"];
  [coderCopy encodeObject:self->_isContactManagementEnabled forKey:@"ContactManagementEnabled"];
  [coderCopy encodeObject:self->_isCommunicationSafetyEnabled forKey:@"CommunicationSafety"];
  [coderCopy encodeObject:self->_isEyeReliefEnabled forKey:@"EyeRelief"];
}

@end