@interface ICDAAPPropertyInfo
+ (ICDAAPPropertyInfo)sharedContainerPropertyInfo;
+ (ICDAAPPropertyInfo)sharedItemPropertyInfo;
- (BOOL)hasInfoForProperty:(id)property;
- (id)_init;
- (int64_t)valueTypeForProperty:(id)property;
- (unsigned)elementCodeForProperty:(id)property;
@end

@implementation ICDAAPPropertyInfo

- (id)_init
{
  v8.receiver = self;
  v8.super_class = ICDAAPPropertyInfo;
  v2 = [(ICDAAPPropertyInfo *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    codeMap = v2->_codeMap;
    v2->_codeMap = v3;

    v5 = +[NSMutableDictionary dictionary];
    valueTypeMap = v2->_valueTypeMap;
    v2->_valueTypeMap = v5;
  }

  return v2;
}

- (int64_t)valueTypeForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_valueTypeMap objectForKeyedSubscript:property];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)elementCodeForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_codeMap objectForKeyedSubscript:property];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)hasInfoForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_codeMap objectForKeyedSubscript:property];
  v4 = v3 != 0;

  return v4;
}

+ (ICDAAPPropertyInfo)sharedContainerPropertyInfo
{
  if (qword_100213D08 != -1)
  {
    dispatch_once(&qword_100213D08, &stru_1001DD2E0);
  }

  v3 = qword_100213D00;

  return v3;
}

+ (ICDAAPPropertyInfo)sharedItemPropertyInfo
{
  if (qword_100213CF8 != -1)
  {
    dispatch_once(&qword_100213CF8, &stru_1001DD2C0);
  }

  v3 = qword_100213CF0;

  return v3;
}

@end