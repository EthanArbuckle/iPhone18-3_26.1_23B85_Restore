@interface _TSF_TSDgPTPFDPtPPort
- (BOOL)_measuringPDelay;
- (BOOL)_multipleRemotes;
- (char)_localPDelayLogMeanInterval;
- (char)_remotePDelayLogMeanInterval;
- (id)_statistics;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPFDPtPPort

- (void)updateProperties
{
  v16.receiver = self;
  v16.super_class = _TSF_TSDgPTPFDPtPPort;
  [(_TSF_TSDgPTPNetworkPort *)&v16 updateProperties];
  v3 = [(_TSF_TSDgPTPFDPtPPort *)self _statistics];
  v4 = [(_TSF_TSDgPTPFDPtPPort *)self _localPDelayLogMeanInterval];
  v5 = [(_TSF_TSDgPTPFDPtPPort *)self _remotePDelayLogMeanInterval];
  v6 = [(_TSF_TSDgPTPFDPtPPort *)self _multipleRemotes];
  v7 = [(_TSF_TSDgPTPFDPtPPort *)self _measuringPDelay];
  v8 = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___TSF_TSDgPTPFDPtPPort_updateProperties__block_invoke;
  block[3] = &unk_279DBD8E8;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v11 = v3;
  v9 = v3;
  dispatch_async(v8, block);
}

- (id)_statistics
{
  v2 = [[_TSF_TSDgPTPPortStatistics alloc] initWithPort:self];

  return v2;
}

- (char)_localPDelayLogMeanInterval
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalPDelayLogMeanInterval"];

  if (v3)
  {
    v4 = [v3 charValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)_remotePDelayLogMeanInterval
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemotePDelayLogMeanInterval"];

  if (v3)
  {
    v4 = [v3 charValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_multipleRemotes
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"MultipleRemotes"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_measuringPDelay
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"MeasuringPDelay"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end