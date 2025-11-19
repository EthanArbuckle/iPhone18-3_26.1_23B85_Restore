@interface ISPropertyListProvider
- (BOOL)processDialogFromPropertyList:(id)a3 returningError:(id *)a4;
- (BOOL)processPropertyList:(id)a3 returningError:(id *)a4;
- (ISPropertyListProvider)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ISPropertyListProvider

- (ISPropertyListProvider)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v4 copyWithZone:a3];
}

- (BOOL)processDialogFromPropertyList:(id)a3 returningError:(id *)a4
{
  v5.receiver = self;
  v5.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v5 processDialogFromDictionary:a3 error:a4];
}

- (BOOL)processPropertyList:(id)a3 returningError:(id *)a4
{
  v5.receiver = self;
  v5.super_class = ISPropertyListProvider;
  return [(ISProtocolDataProvider *)&v5 processDictionary:a3 error:a4];
}

@end