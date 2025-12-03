@interface MADAutoAssetTimed
- (MADAutoAssetTimed)initWithCoder:(id)coder;
- (id)initForRequest:(id)request withTimeout:(int64_t)timeout;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetTimed

- (id)initForRequest:(id)request withTimeout:(int64_t)timeout
{
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = MADAutoAssetTimed;
  v8 = [(MADAutoAssetTimed *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestBeingTimed, request);
    v9->_timeoutSecs = timeout;
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
    timerUUID = v9->_timerUUID;
    v9->_timerUUID = uUIDString;

    timerInstance = v9->_timerInstance;
    v9->_timerInstance = 0;

    v9->_timerInvalidated = 0;
  }

  return v9;
}

- (MADAutoAssetTimed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADAutoAssetTimed;
  v5 = [(MADAutoAssetTimed *)&v11 init];
  if (v5)
  {
    v5->_timeoutSecs = [coderCopy decodeIntegerForKey:@"timeoutSecs"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerUUID"];
    timerUUID = v5->_timerUUID;
    v5->_timerUUID = v6;

    v5->_timerInvalidated = [coderCopy decodeBoolForKey:@"timerInvalidated"];
    requestBeingTimed = v5->_requestBeingTimed;
    v5->_requestBeingTimed = 0;

    timerInstance = v5->_timerInstance;
    v5->_timerInstance = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MADAutoAssetTimed timeoutSecs](self forKey:{"timeoutSecs"), @"timeoutSecs"}];
  timerUUID = [(MADAutoAssetTimed *)self timerUUID];
  [coderCopy encodeObject:timerUUID forKey:@"timerUUID"];

  [coderCopy encodeBool:-[MADAutoAssetTimed timerInvalidated](self forKey:{"timerInvalidated"), @"timerInvalidated"}];
}

- (id)summary
{
  requestBeingTimed = [(MADAutoAssetTimed *)self requestBeingTimed];
  if (requestBeingTimed)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  timeoutSecs = [(MADAutoAssetTimed *)self timeoutSecs];
  timerUUID = [(MADAutoAssetTimed *)self timerUUID];
  timerInstance = [(MADAutoAssetTimed *)self timerInstance];
  if (timerInstance)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MADAutoAssetTimed *)self timerInvalidated])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v10 = [NSString stringWithFormat:@"|request:%@|timeout:%ld|timerUUID:%@|instance:%@|invalidated:%@|", v4, timeoutSecs, timerUUID, v8, v9];

  return v10;
}

@end