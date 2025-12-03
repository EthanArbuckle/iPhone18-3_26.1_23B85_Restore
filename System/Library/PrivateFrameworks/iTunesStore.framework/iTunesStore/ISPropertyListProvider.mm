@interface ISPropertyListProvider
- (BOOL)processDialogFromPropertyList:(id)list returningError:(id *)error;
- (BOOL)processPropertyList:(id)list returningError:(id *)error;
- (ISPropertyListProvider)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ISPropertyListProvider

- (ISPropertyListProvider)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v4 copyWithZone:zone];
}

- (BOOL)processDialogFromPropertyList:(id)list returningError:(id *)error
{
  v5.receiver = self;
  v5.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v5 processDialogFromDictionary:list error:error];
}

- (BOOL)processPropertyList:(id)list returningError:(id *)error
{
  v5.receiver = self;
  v5.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v5 processDictionary:list error:error];
}

@end