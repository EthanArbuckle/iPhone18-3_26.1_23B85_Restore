@interface TRIAllocationStatus
+ (id)_defaultProviderImpl;
+ (id)activeExperimentInformationWithEnvironments:(id)environments error:(id *)error;
+ (id)categoricalValueForExperimentAllocationStatus:(unsigned __int8)status;
+ (id)categoricalValueForRolloutAllocationStatus:(unsigned __int8)status;
+ (id)internalToExternalStatusMapping;
+ (id)sampleAllocationStatuses:(id)statuses correlationId:(id)id nrSamples:(unsigned int)samples;
+ (id)syncProxyWithErrorHandler:(id)handler;
+ (void)resetDefaultProvider;
- (TRIAllocationStatus)initWithCoder:(id)coder;
- (TRIAllocationStatus)initWithType:(unsigned __int8)type date:(id)date;
- (unint64_t)hash;
@end

@implementation TRIAllocationStatus

+ (id)_defaultProviderImpl
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = _sharedDefaultProvider;
  if (!_sharedDefaultProvider)
  {
    v5 = objc_opt_new();
    v6 = _sharedDefaultProvider;
    _sharedDefaultProvider = v5;

    v4 = _sharedDefaultProvider;
    if (!_sharedDefaultProvider)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"TRIAllocationStatusProvider.m" lineNumber:664 description:{@"Invalid parameter not satisfying: %@", @"_sharedDefaultProvider"}];

      v4 = _sharedDefaultProvider;
    }
  }

  v7 = v4;
  objc_sync_exit(selfCopy);

  return v7;
}

- (TRIAllocationStatus)initWithType:(unsigned __int8)type date:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = TRIAllocationStatus;
  v8 = [(TRIAllocationStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_date, date);
  }

  return v9;
}

- (unint64_t)hash
{
  type = self->_type;
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  return v3 + 37 * type;
}

+ (void)resetDefaultProvider
{
  obj = self;
  objc_sync_enter(obj);
  v2 = _sharedDefaultProvider;
  _sharedDefaultProvider = 0;

  objc_sync_exit(obj);
}

+ (id)syncProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _defaultProviderImpl = [self _defaultProviderImpl];
  v6 = [_defaultProviderImpl syncProxyWithErrorHandler:handlerCopy];

  return v6;
}

+ (id)activeExperimentInformationWithEnvironments:(id)environments error:(id *)error
{
  environmentsCopy = environments;
  _defaultProviderImpl = [self _defaultProviderImpl];
  v8 = [_defaultProviderImpl activeExperimentInformationWithEnvironments:environmentsCopy error:error];

  return v8;
}

+ (id)sampleAllocationStatuses:(id)statuses correlationId:(id)id nrSamples:(unsigned int)samples
{
  statusesCopy = statuses;
  idCopy = id;
  v11 = objc_autoreleasePoolPush();
  if ([statusesCopy count] <= samples)
  {
    v16 = statusesCopy;
  }

  else
  {
    if ([idCopy length])
    {
      v12 = [idCopy dataUsingEncoding:4];
      triSha256 = [v12 triSha256];
      if ([triSha256 length] <= 7)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:707 description:{@"Digest too small for correlation ID: %@", idCopy}];
      }

      v14 = *[triSha256 bytes];
      v15 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:v14];
    }

    else
    {
      v15 = 0;
    }

    v17 = [statusesCopy _pas_shuffledArrayUsingRng:v15];
    v16 = [v17 subarrayWithRange:{0, samples}];
  }

  objc_autoreleasePoolPop(v11);

  return v16;
}

+ (id)categoricalValueForExperimentAllocationStatus:(unsigned __int8)status
{
  if ((status - 1) > 8)
  {
    return @"experiment-state-unknown";
  }

  else
  {
    return off_27885EFD0[(status - 1)];
  }
}

+ (id)categoricalValueForRolloutAllocationStatus:(unsigned __int8)status
{
  if ((status - 1) > 7u)
  {
    return @"rollout-state-unknown";
  }

  else
  {
    return off_27885F018[(status - 1)];
  }
}

+ (id)internalToExternalStatusMapping
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28436F9E0;
  v5[1] = &unk_28436F9F8;
  v6[0] = &unk_28436F9E0;
  v6[1] = &unk_28436F9F8;
  v5[2] = &unk_28436FA10;
  v6[2] = &unk_28436FA10;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (TRIAllocationStatus)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

@end