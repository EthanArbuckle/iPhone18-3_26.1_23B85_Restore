@interface NDFNetworkRecord
- (NDFNetworkRecord)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation NDFNetworkRecord

- (NDFNetworkRecord)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NDFNetworkRecord();
  return [(NDFNetworkRecord *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end