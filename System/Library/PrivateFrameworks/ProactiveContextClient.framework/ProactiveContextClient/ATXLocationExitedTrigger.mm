@interface ATXLocationExitedTrigger
- (ATXLocationExitedTrigger)initWithCoder:(id)coder;
- (ATXLocationExitedTrigger)initWithLocationIdentifier:(id)identifier namedLOI:(unint64_t)i;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXLocationExitedTrigger

- (ATXLocationExitedTrigger)initWithLocationIdentifier:(id)identifier namedLOI:(unint64_t)i
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = ATXLocationExitedTrigger;
  v8 = [(ATXLocationExitedTrigger *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationIdentifier, identifier);
    v9->_namedLOI = i;
    v10 = v9;
  }

  return v9;
}

- (ATXLocationExitedTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v6 = [coderCopy decodeIntegerForKey:@"namedLOI"];

  v7 = [(ATXLocationExitedTrigger *)self initWithLocationIdentifier:v5 namedLOI:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  locationIdentifier = self->_locationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:locationIdentifier forKey:@"location"];
  [coderCopy encodeInteger:self->_namedLOI forKey:@"namedLOI"];
}

@end