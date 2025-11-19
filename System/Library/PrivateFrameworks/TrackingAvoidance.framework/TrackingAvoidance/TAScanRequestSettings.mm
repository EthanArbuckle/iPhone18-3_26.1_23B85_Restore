@interface TAScanRequestSettings
- (BOOL)isEqual:(id)a3;
- (TAScanRequestSettings)initWithCoder:(id)a3;
- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDuration:(double)a3 minInterVisitDisplayOnDuration:(double)a4 interVisitScanDelay:(double)a5 maxInterVisitScanRequests:(unint64_t)a6;
- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDurationOrDefault:(id)a3 minInterVisitDisplayOnDurationOrDefault:(id)a4 interVisitScanDelayOrDefault:(id)a5 maxInterVisitScanRequestsOrDefault:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAScanRequestSettings

- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDuration:(double)a3 minInterVisitDisplayOnDuration:(double)a4 interVisitScanDelay:(double)a5 maxInterVisitScanRequests:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = TAScanRequestSettings;
  result = [(TAScanRequestSettings *)&v11 init];
  if (result)
  {
    result->_minVisitEntryDisplayOnDuration = a3;
    result->_minInterVisitDisplayOnDuration = a4;
    result->_interVisitScanDelay = a5;
    result->_maxInterVisitScanRequests = a6;
  }

  return result;
}

- (TAScanRequestSettings)initWithMinVisitEntryDisplayOnDurationOrDefault:(id)a3 minInterVisitDisplayOnDurationOrDefault:(id)a4 interVisitScanDelayOrDefault:(id)a5 maxInterVisitScanRequestsOrDefault:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 90.0;
  v15 = 90.0;
  if (v10)
  {
    [v10 doubleValue];
    v15 = v16;
  }

  if (v11)
  {
    [v11 doubleValue];
    v14 = v17;
  }

  if (!v12)
  {
    v19 = 660.0;
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = 2;
    goto LABEL_10;
  }

  [v12 doubleValue];
  v19 = v18;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = [v13 unsignedIntegerValue];
LABEL_10:
  v21 = [(TAScanRequestSettings *)self initWithMinVisitEntryDisplayOnDuration:v20 minInterVisitDisplayOnDuration:v15 interVisitScanDelay:v14 maxInterVisitScanRequests:v19];

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TAScanRequestSettings allocWithZone:a3];
  minVisitEntryDisplayOnDuration = self->_minVisitEntryDisplayOnDuration;
  minInterVisitDisplayOnDuration = self->_minInterVisitDisplayOnDuration;
  interVisitScanDelay = self->_interVisitScanDelay;
  maxInterVisitScanRequests = self->_maxInterVisitScanRequests;

  return [(TAScanRequestSettings *)v4 initWithMinVisitEntryDisplayOnDuration:maxInterVisitScanRequests minInterVisitDisplayOnDuration:minVisitEntryDisplayOnDuration interVisitScanDelay:minInterVisitDisplayOnDuration maxInterVisitScanRequests:interVisitScanDelay];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(TAScanRequestSettings *)self minVisitEntryDisplayOnDuration];
      v7 = v6;
      [(TAScanRequestSettings *)v5 minVisitEntryDisplayOnDuration];
      if (v7 == v8 && ([(TAScanRequestSettings *)self minInterVisitDisplayOnDuration], v10 = v9, [(TAScanRequestSettings *)v5 minInterVisitDisplayOnDuration], v10 == v11) && ([(TAScanRequestSettings *)self interVisitScanDelay], v13 = v12, [(TAScanRequestSettings *)v5 interVisitScanDelay], v13 == v14))
      {
        v15 = [(TAScanRequestSettings *)self maxInterVisitScanRequests];
        v16 = v15 == [(TAScanRequestSettings *)v5 maxInterVisitScanRequests];
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

- (TAScanRequestSettings)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"VisitDisplayOn"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"IntervisitDisplayOn"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"ScanDelay"];
  v10 = v9;
  v11 = [v4 decodeIntegerForKey:@"MaxScanReqs"];

  return [(TAScanRequestSettings *)self initWithMinVisitEntryDisplayOnDuration:v11 minInterVisitDisplayOnDuration:v6 interVisitScanDelay:v8 maxInterVisitScanRequests:v10];
}

- (void)encodeWithCoder:(id)a3
{
  minVisitEntryDisplayOnDuration = self->_minVisitEntryDisplayOnDuration;
  v5 = a3;
  [v5 encodeDouble:@"VisitDisplayOn" forKey:minVisitEntryDisplayOnDuration];
  [v5 encodeDouble:@"IntervisitDisplayOn" forKey:self->_minInterVisitDisplayOnDuration];
  [v5 encodeDouble:@"ScanDelay" forKey:self->_interVisitScanDelay];
  [v5 encodeInteger:self->_maxInterVisitScanRequests forKey:@"MaxScanReqs"];
}

@end