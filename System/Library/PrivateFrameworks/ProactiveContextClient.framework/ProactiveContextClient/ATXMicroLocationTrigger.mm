@interface ATXMicroLocationTrigger
- (ATXMicroLocationTrigger)initWithCoder:(id)coder;
- (ATXMicroLocationTrigger)initWithLocationUUID:(id)d;
@end

@implementation ATXMicroLocationTrigger

- (ATXMicroLocationTrigger)initWithLocationUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ATXMicroLocationTrigger;
  v6 = [(ATXMicroLocationTrigger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
    v8 = v7;
  }

  return v7;
}

- (ATXMicroLocationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"microLocationUUID"];

  v6 = [(ATXMicroLocationTrigger *)self initWithLocationUUID:v5];
  return v6;
}

@end