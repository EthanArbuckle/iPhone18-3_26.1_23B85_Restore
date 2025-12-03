@interface RMModelStatusDynamic
+ (id)buildWithStatusItemType:(id)type;
- (BOOL)isArrayValue;
- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type;
- (RMModelStatusDynamic)initWithSchema:(id)schema;
- (id)copyWithZone:(_NSZone *)zone;
- (id)statusItemType;
@end

@implementation RMModelStatusDynamic

+ (id)buildWithStatusItemType:(id)type
{
  typeCopy = type;
  v4 = +[RMModelStatusSchema schemas];
  v5 = [v4 objectForKeyedSubscript:typeCopy];

  if (v5)
  {
    v6 = [[RMModelStatusDynamic alloc] initWithSchema:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RMModelStatusDynamic)initWithSchema:(id)schema
{
  schemaCopy = schema;
  v9.receiver = self;
  v9.super_class = RMModelStatusDynamic;
  v6 = [(RMModelStatusDynamic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schema, schema);
  }

  return v7;
}

- (id)statusItemType
{
  schema = [(RMModelStatusDynamic *)self schema];
  statusType = [schema statusType];

  return statusType;
}

- (BOOL)isArrayValue
{
  schema = [(RMModelStatusDynamic *)self schema];
  isArrayValue = [schema isArrayValue];

  return isArrayValue;
}

- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type
{
  schema = [(RMModelStatusDynamic *)self schema];
  LOBYTE(type) = [schema isSupportedForPlatform:platform scope:scope enrollmentType:type];

  return type;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = RMModelStatusDynamic;
  v4 = [(RMModelPayloadBase *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_schema);
  return v4;
}

@end