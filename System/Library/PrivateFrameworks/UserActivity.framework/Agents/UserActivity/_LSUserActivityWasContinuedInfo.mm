@interface _LSUserActivityWasContinuedInfo
- (id)description;
- (void)submit;
@end

@implementation _LSUserActivityWasContinuedInfo

- (void)submit
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_submitted)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_submitted = 1;
    objc_sync_exit(obj);

    v2 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v2);
  }
}

- (id)description
{
  v21.receiver = self;
  v21.super_class = _LSUserActivityWasContinuedInfo;
  v20 = [(_LSUserActivityWasContinuedInfo *)&v21 description];
  bundleIdentifier = [(_LSUserActivityWasContinuedInfo *)self bundleIdentifier];
  activityType = [(_LSUserActivityWasContinuedInfo *)self activityType];
  if ([(_LSUserActivityWasContinuedInfo *)self isBrowserFallback])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  payloadSize = [(_LSUserActivityWasContinuedInfo *)self payloadSize];
  [(_LSUserActivityWasContinuedInfo *)self transferSpeed];
  v7 = v6;
  [(_LSUserActivityWasContinuedInfo *)self transferDuration];
  v9 = v8;
  error = [(_LSUserActivityWasContinuedInfo *)self error];
  if ([(_LSUserActivityWasContinuedInfo *)self isCancelled])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  interactionType = [(_LSUserActivityWasContinuedInfo *)self interactionType];
  webToNative = [(_LSUserActivityWasContinuedInfo *)self webToNative];
  supportsContinuityStreams = [(_LSUserActivityWasContinuedInfo *)self supportsContinuityStreams];
  if (webToNative)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (supportsContinuityStreams)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [NSString stringWithFormat:@"%@(%@ %@ browserFallback=%@ %ld/%.2fk/%.4f sec %@ %@ %lx w2n=%@ scs=%@)", v20, bundleIdentifier, activityType, v4, payloadSize, v7 * 0.0009765625, v9, error, v11, interactionType, v15, v16];

  return v17;
}

@end