@interface TRIAllocationStatus
+ (id)_defaultProviderImpl;
+ (id)activeExperimentInformationWithEnvironments:(id)a3 error:(id *)a4;
+ (id)categoricalValueForExperimentAllocationStatus:(unsigned __int8)a3;
+ (id)categoricalValueForRolloutAllocationStatus:(unsigned __int8)a3;
+ (id)internalToExternalStatusMapping;
+ (id)sampleAllocationStatuses:(id)a3 correlationId:(id)a4 nrSamples:(unsigned int)a5;
+ (id)syncProxyWithErrorHandler:(id)a3;
+ (void)resetDefaultProvider;
- (TRIAllocationStatus)initWithCoder:(id)a3;
- (TRIAllocationStatus)initWithType:(unsigned __int8)a3 date:(id)a4;
- (unint64_t)hash;
@end

@implementation TRIAllocationStatus

+ (id)_defaultProviderImpl
{
  v3 = a1;
  objc_sync_enter(v3);
  v4 = _sharedDefaultProvider;
  if (!_sharedDefaultProvider)
  {
    v5 = objc_opt_new();
    v6 = _sharedDefaultProvider;
    _sharedDefaultProvider = v5;

    v4 = _sharedDefaultProvider;
    if (!_sharedDefaultProvider)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:v3 file:@"TRIAllocationStatusProvider.m" lineNumber:664 description:{@"Invalid parameter not satisfying: %@", @"_sharedDefaultProvider"}];

      v4 = _sharedDefaultProvider;
    }
  }

  v7 = v4;
  objc_sync_exit(v3);

  return v7;
}

- (TRIAllocationStatus)initWithType:(unsigned __int8)a3 date:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TRIAllocationStatus;
  v8 = [(TRIAllocationStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_date, a4);
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
  obj = a1;
  objc_sync_enter(obj);
  v2 = _sharedDefaultProvider;
  _sharedDefaultProvider = 0;

  objc_sync_exit(obj);
}

+ (id)syncProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultProviderImpl];
  v6 = [v5 syncProxyWithErrorHandler:v4];

  return v6;
}

+ (id)activeExperimentInformationWithEnvironments:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _defaultProviderImpl];
  v8 = [v7 activeExperimentInformationWithEnvironments:v6 error:a4];

  return v8;
}

+ (id)sampleAllocationStatuses:(id)a3 correlationId:(id)a4 nrSamples:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  if ([v9 count] <= a5)
  {
    v16 = v9;
  }

  else
  {
    if ([v10 length])
    {
      v12 = [v10 dataUsingEncoding:4];
      v13 = [v12 triSha256];
      if ([v13 length] <= 7)
      {
        v19 = [MEMORY[0x277CCA890] currentHandler];
        [v19 handleFailureInMethod:a2 object:a1 file:@"TRIAllocationStatusProvider.m" lineNumber:707 description:{@"Digest too small for correlation ID: %@", v10}];
      }

      v14 = *[v13 bytes];
      v15 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:v14];
    }

    else
    {
      v15 = 0;
    }

    v17 = [v9 _pas_shuffledArrayUsingRng:v15];
    v16 = [v17 subarrayWithRange:{0, a5}];
  }

  objc_autoreleasePoolPop(v11);

  return v16;
}

+ (id)categoricalValueForExperimentAllocationStatus:(unsigned __int8)a3
{
  if ((a3 - 1) > 8)
  {
    return @"experiment-state-unknown";
  }

  else
  {
    return off_27885EFD0[(a3 - 1)];
  }
}

+ (id)categoricalValueForRolloutAllocationStatus:(unsigned __int8)a3
{
  if ((a3 - 1) > 7u)
  {
    return @"rollout-state-unknown";
  }

  else
  {
    return off_27885F018[(a3 - 1)];
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

- (TRIAllocationStatus)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

@end