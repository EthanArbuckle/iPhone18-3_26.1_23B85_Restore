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
  v19 = [(_LSUserActivityWasContinuedInfo *)self bundleIdentifier];
  v3 = [(_LSUserActivityWasContinuedInfo *)self activityType];
  if ([(_LSUserActivityWasContinuedInfo *)self isBrowserFallback])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(_LSUserActivityWasContinuedInfo *)self payloadSize];
  [(_LSUserActivityWasContinuedInfo *)self transferSpeed];
  v7 = v6;
  [(_LSUserActivityWasContinuedInfo *)self transferDuration];
  v9 = v8;
  v10 = [(_LSUserActivityWasContinuedInfo *)self error];
  if ([(_LSUserActivityWasContinuedInfo *)self isCancelled])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(_LSUserActivityWasContinuedInfo *)self interactionType];
  v13 = [(_LSUserActivityWasContinuedInfo *)self webToNative];
  v14 = [(_LSUserActivityWasContinuedInfo *)self supportsContinuityStreams];
  if (v13)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (v14)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [NSString stringWithFormat:@"%@(%@ %@ browserFallback=%@ %ld/%.2fk/%.4f sec %@ %@ %lx w2n=%@ scs=%@)", v20, v19, v3, v4, v5, v7 * 0.0009765625, v9, v10, v11, v12, v15, v16];

  return v17;
}

@end