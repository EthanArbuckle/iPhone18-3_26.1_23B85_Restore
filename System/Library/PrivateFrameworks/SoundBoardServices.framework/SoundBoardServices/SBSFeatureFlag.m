@interface SBSFeatureFlag
- (NSDictionary)dictionaryRepresentation;
- (SBSFeatureFlag)initWith:(id)a3 andFeature:(id)a4 andValue:(id)a5;
- (SBSFeatureFlag)initWithDictionaryRepresentation:(id)a3;
@end

@implementation SBSFeatureFlag

- (NSDictionary)dictionaryRepresentation
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *&self->_domain;
  v6[0] = @"domain";
  v6[1] = @"feature";
  v7 = v2;
  v6[2] = @"value";
  value = self->_value;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:v6 count:3];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SBSFeatureFlag)initWithDictionaryRepresentation:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SBSFeatureFlag;
  v5 = [(SBSFeatureFlag *)&v20 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 objectForKeyedSubscript:@"domain"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [v4 objectForKeyedSubscript:@"feature"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v8 = [v4 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v4 objectForKeyedSubscript:@"domain"];
    domain = v5->_domain;
    v5->_domain = v10;

    v12 = [v4 objectForKeyedSubscript:@"feature"];
    feature = v5->_feature;
    v5->_feature = v12;

    v14 = [v4 objectForKeyedSubscript:@"value"];
    value = v5->_value;
    v5->_value = v14;

LABEL_6:
    v16 = v5;
    goto LABEL_12;
  }

LABEL_9:
  v17 = _SBSLoggingFacility();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "[SBSFeatureFlag initWithDictionaryRepresentation:]";
    v23 = 2112;
    v24 = v4;
    _os_log_error_impl(&dword_26B246000, v17, OS_LOG_TYPE_ERROR, "%s: Trying to set feature flag with incorrect entry: %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (SBSFeatureFlag)initWith:(id)a3 andFeature:(id)a4 andValue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBSFeatureFlag;
  v12 = [(SBSFeatureFlag *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domain, a3);
    objc_storeStrong(&v13->_feature, a4);
    objc_storeStrong(&v13->_value, a5);
  }

  return v13;
}

@end