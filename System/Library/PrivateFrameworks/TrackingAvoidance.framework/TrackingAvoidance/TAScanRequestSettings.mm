@interface TAScanRequestSettings
- (BOOL)isEqual:(id)equal;
- (TAScanRequestSettings)initWithCoder:(id)coder;
- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDuration:(double)duration minInterVisitDisplayOnDuration:(double)onDuration interVisitScanDelay:(double)delay maxInterVisitScanRequests:(unint64_t)requests;
- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDurationOrDefault:(id)default minInterVisitDisplayOnDurationOrDefault:(id)orDefault interVisitScanDelayOrDefault:(id)delayOrDefault maxInterVisitScanRequestsOrDefault:(id)requestsOrDefault;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAScanRequestSettings

- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDuration:(double)duration minInterVisitDisplayOnDuration:(double)onDuration interVisitScanDelay:(double)delay maxInterVisitScanRequests:(unint64_t)requests
{
  v11.receiver = self;
  v11.super_class = TAScanRequestSettings;
  result = [(TAScanRequestSettings *)&v11 init];
  if (result)
  {
    result->_minVisitEntryDisplayOnDuration = duration;
    result->_minInterVisitDisplayOnDuration = onDuration;
    result->_interVisitScanDelay = delay;
    result->_maxInterVisitScanRequests = requests;
  }

  return result;
}

- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDurationOrDefault:(id)default minInterVisitDisplayOnDurationOrDefault:(id)orDefault interVisitScanDelayOrDefault:(id)delayOrDefault maxInterVisitScanRequestsOrDefault:(id)requestsOrDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  delayOrDefaultCopy = delayOrDefault;
  requestsOrDefaultCopy = requestsOrDefault;
  v14 = 90.0;
  v15 = 90.0;
  if (defaultCopy)
  {
    [defaultCopy doubleValue];
    v15 = v16;
  }

  if (orDefaultCopy)
  {
    [orDefaultCopy doubleValue];
    v14 = v17;
  }

  if (!delayOrDefaultCopy)
  {
    v19 = 660.0;
    if (requestsOrDefaultCopy)
    {
      goto LABEL_7;
    }

LABEL_9:
    unsignedIntegerValue = 2;
    goto LABEL_10;
  }

  [delayOrDefaultCopy doubleValue];
  v19 = v18;
  if (!requestsOrDefaultCopy)
  {
    goto LABEL_9;
  }

LABEL_7:
  unsignedIntegerValue = [requestsOrDefaultCopy unsignedIntegerValue];
LABEL_10:
  v21 = [(TAScanRequestSettings *)self initWithMinVisitEntryDisplayOnDuration:unsignedIntegerValue minInterVisitDisplayOnDuration:v15 interVisitScanDelay:v14 maxInterVisitScanRequests:v19];

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAScanRequestSettings allocWithZone:zone];
  minVisitEntryDisplayOnDuration = self->_minVisitEntryDisplayOnDuration;
  minInterVisitDisplayOnDuration = self->_minInterVisitDisplayOnDuration;
  interVisitScanDelay = self->_interVisitScanDelay;
  maxInterVisitScanRequests = self->_maxInterVisitScanRequests;

  return [(TAScanRequestSettings *)v4 initWithMinVisitEntryDisplayOnDuration:maxInterVisitScanRequests minInterVisitDisplayOnDuration:minVisitEntryDisplayOnDuration interVisitScanDelay:minInterVisitDisplayOnDuration maxInterVisitScanRequests:interVisitScanDelay];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(TAScanRequestSettings *)self minVisitEntryDisplayOnDuration];
      v7 = v6;
      [(TAScanRequestSettings *)v5 minVisitEntryDisplayOnDuration];
      if (v7 == v8 && ([(TAScanRequestSettings *)self minInterVisitDisplayOnDuration], v10 = v9, [(TAScanRequestSettings *)v5 minInterVisitDisplayOnDuration], v10 == v11) && ([(TAScanRequestSettings *)self interVisitScanDelay], v13 = v12, [(TAScanRequestSettings *)v5 interVisitScanDelay], v13 == v14))
      {
        maxInterVisitScanRequests = [(TAScanRequestSettings *)self maxInterVisitScanRequests];
        v16 = maxInterVisitScanRequests == [(TAScanRequestSettings *)v5 maxInterVisitScanRequests];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (TAScanRequestSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"VisitDisplayOn"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"IntervisitDisplayOn"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"ScanDelay"];
  v10 = v9;
  v11 = [coderCopy decodeIntegerForKey:@"MaxScanReqs"];

  return [(TAScanRequestSettings *)self initWithMinVisitEntryDisplayOnDuration:v11 minInterVisitDisplayOnDuration:v6 interVisitScanDelay:v8 maxInterVisitScanRequests:v10];
}

- (void)encodeWithCoder:(id)coder
{
  minVisitEntryDisplayOnDuration = self->_minVisitEntryDisplayOnDuration;
  coderCopy = coder;
  [coderCopy encodeDouble:@"VisitDisplayOn" forKey:minVisitEntryDisplayOnDuration];
  [coderCopy encodeDouble:@"IntervisitDisplayOn" forKey:self->_minInterVisitDisplayOnDuration];
  [coderCopy encodeDouble:@"ScanDelay" forKey:self->_interVisitScanDelay];
  [coderCopy encodeInteger:self->_maxInterVisitScanRequests forKey:@"MaxScanReqs"];
}

@end