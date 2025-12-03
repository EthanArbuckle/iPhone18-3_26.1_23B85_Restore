@interface TSDgPTPFDPtPPort
- (BOOL)_measuringPDelay;
- (BOOL)_multipleRemotes;
- (char)_localPDelayLogMeanInterval;
- (char)_remotePDelayLogMeanInterval;
- (id)_statistics;
- (void)updateProperties;
@end

@implementation TSDgPTPFDPtPPort

- (void)updateProperties
{
  v16.receiver = self;
  v16.super_class = TSDgPTPFDPtPPort;
  [(TSDgPTPNetworkPort *)&v16 updateProperties];
  _statistics = [(TSDgPTPFDPtPPort *)self _statistics];
  _localPDelayLogMeanInterval = [(TSDgPTPFDPtPPort *)self _localPDelayLogMeanInterval];
  _remotePDelayLogMeanInterval = [(TSDgPTPFDPtPPort *)self _remotePDelayLogMeanInterval];
  _multipleRemotes = [(TSDgPTPFDPtPPort *)self _multipleRemotes];
  _measuringPDelay = [(TSDgPTPFDPtPPort *)self _measuringPDelay];
  propertyUpdateQueue = [(TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001169C;
  block[3] = &unk_10004CA30;
  v12 = _localPDelayLogMeanInterval;
  v13 = _remotePDelayLogMeanInterval;
  v14 = _multipleRemotes;
  v15 = _measuringPDelay;
  block[4] = self;
  v11 = _statistics;
  v9 = _statistics;
  dispatch_async(propertyUpdateQueue, block);
}

- (id)_statistics
{
  v2 = [[TSDgPTPPortStatistics alloc] initWithPort:self];

  return v2;
}

- (char)_localPDelayLogMeanInterval
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalPDelayLogMeanInterval"];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (char)_remotePDelayLogMeanInterval
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemotePDelayLogMeanInterval"];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (BOOL)_multipleRemotes
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"MultipleRemotes"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_measuringPDelay
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"MeasuringPDelay"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end