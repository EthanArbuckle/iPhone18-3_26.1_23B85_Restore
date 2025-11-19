@interface MBServiceRestoreMode
+ (id)backgroundAppGroupRestoreModeWithBundleID:(id)a3;
+ (id)backgroundAppPluginRestoreModeWithBundleID:(id)a3;
+ (id)backgroundAppRestoreModeWithBundleID:(id)a3;
+ (id)backgroundContainerRestoreModeWithContainer:(id)a3;
+ (id)backgroundDataSeparatedAppRestoreModeWithBundleID:(id)a3;
+ (id)backgroundFileRestoreModeWithPath:(id)a3;
+ (id)backgroundFilesRestoreModeWithPaths:(id)a3;
+ (id)foregroundDataSeparatedRestoreMode;
+ (id)foregroundRestoreMode;
+ (id)stringForErrorCode:(int)a3;
+ (id)stringForType:(int)a3;
- (BOOL)didFail;
- (BOOL)isEqual:(id)a3;
- (BOOL)wasCancelled;
- (NSArray)paths;
- (NSString)bundleID;
- (NSString)path;
- (id)_initWithType:(int)a3 value:(id)a4 errorCode:(int)a5;
- (id)_initWithType:(int)a3 values:(id)a4 errorCode:(int)a5;
- (id)_typeString;
- (id)description;
@end

@implementation MBServiceRestoreMode

+ (id)foregroundRestoreMode
{
  v2 = [[MBServiceRestoreMode alloc] _initWithType:0 value:0 errorCode:0];

  return v2;
}

+ (id)foregroundDataSeparatedRestoreMode
{
  v2 = [[MBServiceRestoreMode alloc] _initWithType:6 value:0 errorCode:0];

  return v2;
}

+ (id)backgroundAppRestoreModeWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:1 value:v3 errorCode:0];

  return v4;
}

+ (id)backgroundDataSeparatedAppRestoreModeWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:7 value:v3 errorCode:0];

  return v4;
}

+ (id)backgroundAppPluginRestoreModeWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:2 value:v3 errorCode:0];

  return v4;
}

+ (id)backgroundAppGroupRestoreModeWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:3 value:v3 errorCode:0];

  return v4;
}

+ (id)backgroundContainerRestoreModeWithContainer:(id)a3
{
  v3 = a3;
  v4 = +[MBServiceRestoreMode restoreTypeForContainerType:](MBServiceRestoreMode, "restoreTypeForContainerType:", [v3 containerType]);
  v5 = [MBServiceRestoreMode alloc];
  v6 = [v3 identifier];

  v7 = [(MBServiceRestoreMode *)v5 _initWithType:v4 value:v6 errorCode:0];

  return v7;
}

+ (id)backgroundFileRestoreModeWithPath:(id)a3
{
  v3 = a3;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:4 value:v3 errorCode:0];

  return v4;
}

+ (id)backgroundFilesRestoreModeWithPaths:(id)a3
{
  v3 = a3;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:5 values:v3 errorCode:0];

  return v4;
}

+ (id)stringForType:(int)a3
{
  if ((a3 - 1) > 6)
  {
    return @"foreground restore";
  }

  else
  {
    return *(&off_1000FD270 + (a3 - 1));
  }
}

+ (id)stringForErrorCode:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1000FD2A8 + a3);
  }
}

- (id)_initWithType:(int)a3 value:(id)a4 errorCode:(int)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MBServiceRestoreMode;
  v10 = [(MBServiceRestoreMode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    objc_storeStrong(&v10->_value, a4);
    v11->_errorCode = a5;
  }

  return v11;
}

- (id)_initWithType:(int)a3 values:(id)a4 errorCode:(int)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MBServiceRestoreMode;
  v10 = [(MBServiceRestoreMode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    objc_storeStrong(&v10->_values, a4);
    v11->_errorCode = a5;
  }

  return v11;
}

- (id)_typeString
{
  v2 = [(MBServiceRestoreMode *)self type];

  return [MBServiceRestoreMode stringForType:v2];
}

- (NSString)bundleID
{
  if (![(MBServiceRestoreMode *)self isBackgroundApp])
  {
    sub_10009AED4();
  }

  value = self->_value;

  return value;
}

- (NSString)path
{
  if (![(MBServiceRestoreMode *)self isBackgroundFile])
  {
    sub_10009AF40();
  }

  value = self->_value;

  return value;
}

- (NSArray)paths
{
  if (![(MBServiceRestoreMode *)self isBackgroundFiles])
  {
    sub_10009AFAC();
  }

  values = self->_values;

  return values;
}

- (BOOL)didFail
{
  if (![(MBServiceRestoreMode *)self isBackgroundApp])
  {
    sub_10009B018();
  }

  return self->_errorCode == 1;
}

- (BOOL)wasCancelled
{
  if (![(MBServiceRestoreMode *)self isBackgroundApp])
  {
    sub_10009B084();
  }

  return self->_errorCode == 2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 type], v5 == -[MBServiceRestoreMode type](self, "type")))
  {
    v6 = [v4 value];
    v7 = [(MBServiceRestoreMode *)self value];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MBServiceRestoreMode *)self _typeString];
  v5 = [NSString stringWithFormat:@"<%@: type='%@', value=%@, values=%@, errorCode=%d>", v3, v4, self->_value, self->_values, self->_errorCode];

  return v5;
}

@end