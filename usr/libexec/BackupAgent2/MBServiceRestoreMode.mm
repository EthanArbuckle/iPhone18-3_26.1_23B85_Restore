@interface MBServiceRestoreMode
+ (id)backgroundAppGroupRestoreModeWithBundleID:(id)d;
+ (id)backgroundAppPluginRestoreModeWithBundleID:(id)d;
+ (id)backgroundAppRestoreModeWithBundleID:(id)d;
+ (id)backgroundContainerRestoreModeWithContainer:(id)container;
+ (id)backgroundDataSeparatedAppRestoreModeWithBundleID:(id)d;
+ (id)backgroundFileRestoreModeWithPath:(id)path;
+ (id)backgroundFilesRestoreModeWithPaths:(id)paths;
+ (id)foregroundDataSeparatedRestoreMode;
+ (id)foregroundRestoreMode;
+ (id)stringForErrorCode:(int)code;
+ (id)stringForType:(int)type;
- (BOOL)didFail;
- (BOOL)isEqual:(id)equal;
- (BOOL)wasCancelled;
- (NSArray)paths;
- (NSString)bundleID;
- (NSString)path;
- (id)_initWithType:(int)type value:(id)value errorCode:(int)code;
- (id)_initWithType:(int)type values:(id)values errorCode:(int)code;
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

+ (id)backgroundAppRestoreModeWithBundleID:(id)d
{
  dCopy = d;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:1 value:dCopy errorCode:0];

  return v4;
}

+ (id)backgroundDataSeparatedAppRestoreModeWithBundleID:(id)d
{
  dCopy = d;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:7 value:dCopy errorCode:0];

  return v4;
}

+ (id)backgroundAppPluginRestoreModeWithBundleID:(id)d
{
  dCopy = d;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:2 value:dCopy errorCode:0];

  return v4;
}

+ (id)backgroundAppGroupRestoreModeWithBundleID:(id)d
{
  dCopy = d;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:3 value:dCopy errorCode:0];

  return v4;
}

+ (id)backgroundContainerRestoreModeWithContainer:(id)container
{
  containerCopy = container;
  v4 = +[MBServiceRestoreMode restoreTypeForContainerType:](MBServiceRestoreMode, "restoreTypeForContainerType:", [containerCopy containerType]);
  v5 = [MBServiceRestoreMode alloc];
  identifier = [containerCopy identifier];

  v7 = [(MBServiceRestoreMode *)v5 _initWithType:v4 value:identifier errorCode:0];

  return v7;
}

+ (id)backgroundFileRestoreModeWithPath:(id)path
{
  pathCopy = path;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:4 value:pathCopy errorCode:0];

  return v4;
}

+ (id)backgroundFilesRestoreModeWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [[MBServiceRestoreMode alloc] _initWithType:5 values:pathsCopy errorCode:0];

  return v4;
}

+ (id)stringForType:(int)type
{
  if ((type - 1) > 6)
  {
    return @"foreground restore";
  }

  else
  {
    return *(&off_1000FD270 + (type - 1));
  }
}

+ (id)stringForErrorCode:(int)code
{
  if (code > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1000FD2A8 + code);
  }
}

- (id)_initWithType:(int)type value:(id)value errorCode:(int)code
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = MBServiceRestoreMode;
  v10 = [(MBServiceRestoreMode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_value, value);
    v11->_errorCode = code;
  }

  return v11;
}

- (id)_initWithType:(int)type values:(id)values errorCode:(int)code
{
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = MBServiceRestoreMode;
  v10 = [(MBServiceRestoreMode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_values, values);
    v11->_errorCode = code;
  }

  return v11;
}

- (id)_typeString
{
  type = [(MBServiceRestoreMode *)self type];

  return [MBServiceRestoreMode stringForType:type];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equalCopy type], v5 == -[MBServiceRestoreMode type](self, "type")))
  {
    value = [equalCopy value];
    value2 = [(MBServiceRestoreMode *)self value];
    v8 = [value isEqualToString:value2];
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
  _typeString = [(MBServiceRestoreMode *)self _typeString];
  v5 = [NSString stringWithFormat:@"<%@: type='%@', value=%@, values=%@, errorCode=%d>", v3, _typeString, self->_value, self->_values, self->_errorCode];

  return v5;
}

@end