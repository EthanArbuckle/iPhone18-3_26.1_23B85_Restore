@interface ATXMicroLocationTrigger
- (ATXMicroLocationTrigger)initWithCoder:(id)a3;
- (ATXMicroLocationTrigger)initWithLocationUUID:(id)a3;
@end

@implementation ATXMicroLocationTrigger

- (ATXMicroLocationTrigger)initWithLocationUUID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXMicroLocationTrigger;
  v6 = [(ATXMicroLocationTrigger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
    v8 = v7;
  }

  return v7;
}

- (ATXMicroLocationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"microLocationUUID"];

  v6 = [(ATXMicroLocationTrigger *)self initWithLocationUUID:v5];
  return v6;
}

@end