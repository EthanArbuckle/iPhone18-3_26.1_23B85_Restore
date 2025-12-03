@interface MOContextFetchOptions
- (MOContextFetchOptions)init;
- (MOContextFetchOptions)initWithCoder:(id)coder;
- (MOContextFetchOptions)initWithContextFormat:(unint64_t)format contextRetrieval:(unint64_t)retrieval contextCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextFetchOptions

- (MOContextFetchOptions)init
{
  v3.receiver = self;
  v3.super_class = MOContextFetchOptions;
  return [(MOContextFetchOptions *)&v3 init];
}

- (MOContextFetchOptions)initWithContextFormat:(unint64_t)format contextRetrieval:(unint64_t)retrieval contextCount:(unint64_t)count
{
  v20 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MOContextFetchOptions;
  v8 = [(MOContextFetchOptions *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_contextFormat = format;
    v8->_contextRetrieval = retrieval;
    v8->_contextCount = count;
    v10 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      formatCopy = format;
      v16 = 2048;
      retrievalCopy = retrieval;
      v18 = 2048;
      countCopy = count;
      _os_log_impl(&dword_25E48F000, v10, OS_LOG_TYPE_INFO, "ContextFetchOptions contextFormat,%lu,contextRetrieval,%lu,contextCount,%lu", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextFetchOptions alloc];
  contextFormat = [(MOContextFetchOptions *)self contextFormat];
  contextRetrieval = [(MOContextFetchOptions *)self contextRetrieval];
  contextCount = [(MOContextFetchOptions *)self contextCount];

  return [(MOContextFetchOptions *)v4 initWithContextFormat:contextFormat contextRetrieval:contextRetrieval contextCount:contextCount];
}

- (void)encodeWithCoder:(id)coder
{
  contextFormat = self->_contextFormat;
  coderCopy = coder;
  [coderCopy encodeInteger:contextFormat forKey:@"contextFormat"];
  [coderCopy encodeInteger:self->_contextRetrieval forKey:@"contextRetrieval"];
  [coderCopy encodeInteger:self->_contextCount forKey:@"contextCount"];
}

- (MOContextFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"contextFormat"];
  v6 = [coderCopy decodeIntegerForKey:@"contextRetrieval"];
  v7 = [coderCopy decodeIntegerForKey:@"contextCount"];

  return [(MOContextFetchOptions *)self initWithContextFormat:v5 contextRetrieval:v6 contextCount:v7];
}

@end