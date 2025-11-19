@interface STIntroductionModel
- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)a3 downtimeStartTime:(id)a4 downtimeEndTime:(id)a5 restrictions:(id)a6 passcode:(id)a7 communicationSafetyEnabled:(id)a8 eyeReliefEnabled:(id)a9;
- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)a3 downtimeStartTime:(id)a4 downtimeEndTime:(id)a5 restrictions:(id)a6 passcode:(id)a7 communicationSafetyEnabled:(id)a8 eyeReliefEnabled:(id)a9 imageGenerationRestriction:(int64_t)a10;
- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)a3 downtimeStartTime:(id)a4 downtimeEndTime:(id)a5 restrictions:(id)a6 passcode:(id)a7 communicationSafetyEnabled:(id)a8 eyeReliefEnabled:(id)a9 imageGenerationRestriction:(int64_t)a10 communicationPolicy:(int64_t)a11 communicationWhileLimitedPolicy:(int64_t)a12 contactEditingDisabled:(id)a13 contactManagementEnabled:(id)a14;
- (STIntroductionModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STIntroductionModel

- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)a3 downtimeStartTime:(id)a4 downtimeEndTime:(id)a5 restrictions:(id)a6 passcode:(id)a7 communicationSafetyEnabled:(id)a8 eyeReliefEnabled:(id)a9 imageGenerationRestriction:(int64_t)a10
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v38.receiver = self;
  v38.super_class = STIntroductionModel;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = [(STIntroductionModel *)&v38 init];
  isAppAndWebsiteActivityEnabled = v23->_isAppAndWebsiteActivityEnabled;
  v23->_isAppAndWebsiteActivityEnabled = v16;
  v25 = v16;

  v26 = [v22 copy];
  downtimeStartTime = v23->_downtimeStartTime;
  v23->_downtimeStartTime = v26;

  v28 = [v21 copy];
  downtimeEndTime = v23->_downtimeEndTime;
  v23->_downtimeEndTime = v28;

  v30 = [v20 copy];
  restrictions = v23->_restrictions;
  v23->_restrictions = v30;

  v32 = [v19 copy];
  passcode = v23->_passcode;
  v23->_passcode = v32;

  isCommunicationSafetyEnabled = v23->_isCommunicationSafetyEnabled;
  v23->_isCommunicationSafetyEnabled = v17;
  v35 = v17;

  isEyeReliefEnabled = v23->_isEyeReliefEnabled;
  v23->_isEyeReliefEnabled = v18;

  v23->_imageGenerationRestriction = a10;
  return v23;
}

- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)a3 downtimeStartTime:(id)a4 downtimeEndTime:(id)a5 restrictions:(id)a6 passcode:(id)a7 communicationSafetyEnabled:(id)a8 eyeReliefEnabled:(id)a9 imageGenerationRestriction:(int64_t)a10 communicationPolicy:(int64_t)a11 communicationWhileLimitedPolicy:(int64_t)a12 contactEditingDisabled:(id)a13 contactManagementEnabled:(id)a14
{
  v19 = a13;
  v20 = a14;
  v21 = [(STIntroductionModel *)self initWithAppAndWebsiteActivityEnabled:a3 downtimeStartTime:a4 downtimeEndTime:a5 restrictions:a6 passcode:a7 communicationSafetyEnabled:a8 eyeReliefEnabled:a9 imageGenerationRestriction:a10];
  v21->_communicationPolicy = a11;
  v21->_communicationWhileLimitedPolicy = a12;
  isContactEditingDisabled = v21->_isContactEditingDisabled;
  v21->_isContactEditingDisabled = v19;
  v23 = v19;

  isContactManagementEnabled = v21->_isContactManagementEnabled;
  v21->_isContactManagementEnabled = v20;

  return v21;
}

- (STIntroductionModel)initWithAppAndWebsiteActivityEnabled:(id)a3 downtimeStartTime:(id)a4 downtimeEndTime:(id)a5 restrictions:(id)a6 passcode:(id)a7 communicationSafetyEnabled:(id)a8 eyeReliefEnabled:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = +[STLog persistence];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_INFO, "Deprecated API called. Using unspecified restriction case for imageGenerationRestriction.", buf, 2u);
  }

  v24 = [(STIntroductionModel *)self initWithAppAndWebsiteActivityEnabled:v22 downtimeStartTime:v21 downtimeEndTime:v20 restrictions:v19 passcode:v18 communicationSafetyEnabled:v17 eyeReliefEnabled:v16 imageGenerationRestriction:0];
  return v24;
}

- (STIntroductionModel)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AppAndWebsiteActivity"];
  v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DowntimeStartTime"];
  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DowntimeEndTime"];
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v37 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  v30 = [v3 decodeObjectOfClasses:v37 forKey:@"Restrictions"];
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Passcode"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ContactEditingDisabled"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ContactManagementEnabled"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CommunicationSafety"];
  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"EyeRelief"];
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

  v11->_imageGenerationRestriction = [v3 decodeInt64ForKey:@"ImageGenerationRestriction"];
  v19 = [v31 copy];
  passcode = v11->_passcode;
  v11->_passcode = v19;

  v11->_communicationPolicy = [v3 decodeInt64ForKey:@"CommunicationPolicy"];
  v21 = [v3 decodeInt64ForKey:@"CommunicationWhileLimitedPolicy"];

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

- (void)encodeWithCoder:(id)a3
{
  isAppAndWebsiteActivityEnabled = self->_isAppAndWebsiteActivityEnabled;
  v5 = a3;
  [v5 encodeObject:isAppAndWebsiteActivityEnabled forKey:@"AppAndWebsiteActivity"];
  [v5 encodeObject:self->_downtimeStartTime forKey:@"DowntimeStartTime"];
  [v5 encodeObject:self->_downtimeEndTime forKey:@"DowntimeEndTime"];
  [v5 encodeObject:self->_restrictions forKey:@"Restrictions"];
  [v5 encodeInt64:self->_imageGenerationRestriction forKey:@"ImageGenerationRestriction"];
  [v5 encodeObject:self->_passcode forKey:@"Passcode"];
  [v5 encodeInt64:self->_communicationPolicy forKey:@"CommunicationPolicy"];
  [v5 encodeInt64:self->_communicationWhileLimitedPolicy forKey:@"CommunicationWhileLimitedPolicy"];
  [v5 encodeObject:self->_isContactEditingDisabled forKey:@"ContactEditingDisabled"];
  [v5 encodeObject:self->_isContactManagementEnabled forKey:@"ContactManagementEnabled"];
  [v5 encodeObject:self->_isCommunicationSafetyEnabled forKey:@"CommunicationSafety"];
  [v5 encodeObject:self->_isEyeReliefEnabled forKey:@"EyeRelief"];
}

@end