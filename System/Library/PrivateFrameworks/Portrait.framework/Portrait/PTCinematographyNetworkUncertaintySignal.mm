@interface PTCinematographyNetworkUncertaintySignal
- (PTCinematographyNetworkUncertaintySignal)initWithModelDictionary:(id)a3;
- (float)_timerUncertaintyForPayload:(id)a3;
- (void)writePayload:(id)a3 toStream:(id)a4;
@end

@implementation PTCinematographyNetworkUncertaintySignal

- (PTCinematographyNetworkUncertaintySignal)initWithModelDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PTCinematographyNetworkUncertaintySignal;
  v5 = [(PTCinematographyNetworkSignal *)&v10 initWithModelDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"params"];
    v7 = [v6 objectForKeyedSubscript:@"timer_seconds_divisor"];
    [v7 floatValue];
    v5->_timerSecondsDivisor = v8;
  }

  return v5;
}

- (void)writePayload:(id)a3 toStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PTCinematographyNetworkSignal *)self checkSignalForStream:v7])
  {
    [(PTCinematographyNetworkUncertaintySignal *)self _timerUncertaintyForPayload:v6];
    [v7 writeFloat:?];
  }

  else
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetworkNamedSignal writePayload:v8 toStream:?];
    }
  }
}

- (float)_timerUncertaintyForPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 detection];
  v6 = v5;
  if (v5)
  {
    [v5 time];

    v7 = 0.0;
    if ((BYTE4(v17) & 0x1D) == 1)
    {
      memset(&v15, 0, sizeof(v15));
      if (v4)
      {
        [v4 time];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      v8 = [v4 detection];
      v9 = v8;
      if (v8)
      {
        [v8 time];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      CMTimeSubtract(&v15, &lhs, &rhs);

      lhs = v15;
      Seconds = CMTimeGetSeconds(&lhs);
      if (Seconds >= 0.0)
      {
        timerSecondsDivisor = self->_timerSecondsDivisor;
        if (timerSecondsDivisor > 0.0)
        {
          v7 = Seconds / timerSecondsDivisor;
        }
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;

    v7 = 0.0;
  }

  return v7;
}

@end