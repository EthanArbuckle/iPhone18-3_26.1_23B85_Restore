@interface MOContextFetchOptions
- (MOContextFetchOptions)init;
- (MOContextFetchOptions)initWithCoder:(id)a3;
- (MOContextFetchOptions)initWithContextFormat:(unint64_t)a3 contextRetrieval:(unint64_t)a4 contextCount:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextFetchOptions

- (MOContextFetchOptions)init
{
  v3.receiver = self;
  v3.super_class = MOContextFetchOptions;
  return [(MOContextFetchOptions *)&v3 init];
}

- (MOContextFetchOptions)initWithContextFormat:(unint64_t)a3 contextRetrieval:(unint64_t)a4 contextCount:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MOContextFetchOptions;
  v8 = [(MOContextFetchOptions *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_contextFormat = a3;
    v8->_contextRetrieval = a4;
    v8->_contextCount = a5;
    v10 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      v18 = 2048;
      v19 = a5;
      _os_log_impl(&dword_25E48F000, v10, OS_LOG_TYPE_INFO, "ContextFetchOptions contextFormat,%lu,contextRetrieval,%lu,contextCount,%lu", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextFetchOptions alloc];
  v5 = [(MOContextFetchOptions *)self contextFormat];
  v6 = [(MOContextFetchOptions *)self contextRetrieval];
  v7 = [(MOContextFetchOptions *)self contextCount];

  return [(MOContextFetchOptions *)v4 initWithContextFormat:v5 contextRetrieval:v6 contextCount:v7];
}

- (void)encodeWithCoder:(id)a3
{
  contextFormat = self->_contextFormat;
  v5 = a3;
  [v5 encodeInteger:contextFormat forKey:@"contextFormat"];
  [v5 encodeInteger:self->_contextRetrieval forKey:@"contextRetrieval"];
  [v5 encodeInteger:self->_contextCount forKey:@"contextCount"];
}

- (MOContextFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"contextFormat"];
  v6 = [v4 decodeIntegerForKey:@"contextRetrieval"];
  v7 = [v4 decodeIntegerForKey:@"contextCount"];

  return [(MOContextFetchOptions *)self initWithContextFormat:v5 contextRetrieval:v6 contextCount:v7];
}

@end