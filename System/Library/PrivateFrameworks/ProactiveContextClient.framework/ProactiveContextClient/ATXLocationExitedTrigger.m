@interface ATXLocationExitedTrigger
- (ATXLocationExitedTrigger)initWithCoder:(id)a3;
- (ATXLocationExitedTrigger)initWithLocationIdentifier:(id)a3 namedLOI:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXLocationExitedTrigger

- (ATXLocationExitedTrigger)initWithLocationIdentifier:(id)a3 namedLOI:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ATXLocationExitedTrigger;
  v8 = [(ATXLocationExitedTrigger *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationIdentifier, a3);
    v9->_namedLOI = a4;
    v10 = v9;
  }

  return v9;
}

- (ATXLocationExitedTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v6 = [v4 decodeIntegerForKey:@"namedLOI"];

  v7 = [(ATXLocationExitedTrigger *)self initWithLocationIdentifier:v5 namedLOI:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  locationIdentifier = self->_locationIdentifier;
  v5 = a3;
  [v5 encodeObject:locationIdentifier forKey:@"location"];
  [v5 encodeInteger:self->_namedLOI forKey:@"namedLOI"];
}

@end