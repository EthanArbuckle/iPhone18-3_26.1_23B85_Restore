@interface MADAutoAssetTimed
- (MADAutoAssetTimed)initWithCoder:(id)a3;
- (id)initForRequest:(id)a3 withTimeout:(int64_t)a4;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetTimed

- (id)initForRequest:(id)a3 withTimeout:(int64_t)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = MADAutoAssetTimed;
  v8 = [(MADAutoAssetTimed *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestBeingTimed, a3);
    v9->_timeoutSecs = a4;
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    timerUUID = v9->_timerUUID;
    v9->_timerUUID = v11;

    timerInstance = v9->_timerInstance;
    v9->_timerInstance = 0;

    v9->_timerInvalidated = 0;
  }

  return v9;
}

- (MADAutoAssetTimed)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADAutoAssetTimed;
  v5 = [(MADAutoAssetTimed *)&v11 init];
  if (v5)
  {
    v5->_timeoutSecs = [v4 decodeIntegerForKey:@"timeoutSecs"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerUUID"];
    timerUUID = v5->_timerUUID;
    v5->_timerUUID = v6;

    v5->_timerInvalidated = [v4 decodeBoolForKey:@"timerInvalidated"];
    requestBeingTimed = v5->_requestBeingTimed;
    v5->_requestBeingTimed = 0;

    timerInstance = v5->_timerInstance;
    v5->_timerInstance = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[MADAutoAssetTimed timeoutSecs](self forKey:{"timeoutSecs"), @"timeoutSecs"}];
  v4 = [(MADAutoAssetTimed *)self timerUUID];
  [v5 encodeObject:v4 forKey:@"timerUUID"];

  [v5 encodeBool:-[MADAutoAssetTimed timerInvalidated](self forKey:{"timerInvalidated"), @"timerInvalidated"}];
}

- (id)summary
{
  v3 = [(MADAutoAssetTimed *)self requestBeingTimed];
  if (v3)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v5 = [(MADAutoAssetTimed *)self timeoutSecs];
  v6 = [(MADAutoAssetTimed *)self timerUUID];
  v7 = [(MADAutoAssetTimed *)self timerInstance];
  if (v7)
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

  v10 = [NSString stringWithFormat:@"|request:%@|timeout:%ld|timerUUID:%@|instance:%@|invalidated:%@|", v4, v5, v6, v8, v9];

  return v10;
}

@end