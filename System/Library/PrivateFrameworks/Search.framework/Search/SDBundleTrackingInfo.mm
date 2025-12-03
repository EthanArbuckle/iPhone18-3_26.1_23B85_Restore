@interface SDBundleTrackingInfo
+ (id)_trackingInfoDir;
- (BOOL)shouldContinueIndexingAfterTransitioToState:(int)state;
- (SDBundleTrackingInfo)initWithCompositeIdentifier:(id)identifier;
- (void)_loadFromPlist;
- (void)_saveToPlist;
- (void)save;
@end

@implementation SDBundleTrackingInfo

+ (id)_trackingInfoDir
{
  v2 = qword_1000A81D8;
  if (!qword_1000A81D8)
  {
    v3 = SPSpotlightSupportDirectoryPath();
    v4 = [v3 stringByAppendingPathComponent:@"BundleTrackingInfo"];
    v5 = qword_1000A81D8;
    qword_1000A81D8 = v4;

    v2 = qword_1000A81D8;
  }

  return v2;
}

- (void)_saveToPlist
{
  _dictionaryRepresentation = [(SDBundleTrackingInfo *)self _dictionaryRepresentation];
  if (_dictionaryRepresentation)
  {
    v12 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:_dictionaryRepresentation format:200 options:0 error:&v12];
    v5 = v12;
    if (v4)
    {
      v6 = +[SDBundleTrackingInfo _trackingInfoDir];
      v7 = +[NSFileManager defaultManager];
      v8 = [v7 fileExistsAtPath:v6];

      if ((v8 & 1) == 0)
      {
        v9 = +[NSFileManager defaultManager];
        [v9 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
      }

      _filename = [(SDBundleTrackingInfo *)self _filename];
      v11 = [v6 stringByAppendingPathComponent:_filename];

      [v4 writeToFile:v11 atomically:0];
    }

    else
    {
      v6 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10006201C(self, v5, v6);
      }
    }
  }
}

- (void)_loadFromPlist
{
  v3 = +[SDBundleTrackingInfo _trackingInfoDir];
  _filename = [(SDBundleTrackingInfo *)self _filename];
  v5 = [v3 stringByAppendingPathComponent:_filename];

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = [[NSData alloc] initWithContentsOfFile:v5];
    v12 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v12];
    v10 = v12;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SDBundleTrackingInfo *)self _copyInfoFromDictionary:v9];
LABEL_10:

        goto LABEL_11;
      }

      v11 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062098(v9, v11);
      }
    }

    else
    {
      v11 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100062130(v5, v10, v11);
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (SDBundleTrackingInfo)initWithCompositeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SDBundleTrackingInfo;
  v6 = [(SDBundleTrackingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compositeIdentifier, identifier);
    [(SDBundleTrackingInfo *)v7 _loadFromPlist];
  }

  return v7;
}

- (void)save
{
  if (self->_isDirty)
  {
    [(SDBundleTrackingInfo *)self _saveToPlist];
  }
}

- (BOOL)shouldContinueIndexingAfterTransitioToState:(int)state
{
  state = self->_state;
  if (state > 2)
  {
    if (state != 3)
    {
      if (state != 4)
      {
        if (state != 5 || state != 6)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (state == 4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (state)
    {
      if (state != 1)
      {
        if (state != 2 || (state - 3) >= 2)
        {
          goto LABEL_22;
        }

LABEL_21:
        self->_state = state;
        return 1;
      }

      if (state == 2)
      {
        goto LABEL_21;
      }

LABEL_20:
      if (state == 5)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (state == 1)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  v7 = [NSNumber numberWithInt:?];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"kTransitioningState", 0];
  [(SDBundleTrackingInfo *)self recordEvent:5 info:v8 forBundleWithKey:self->_compositeIdentifier inState:self->_state];

  return 0;
}

@end