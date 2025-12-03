@interface TUMomentsCapabilities
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCapabilities:(id)capabilities;
- (TUMomentsCapabilities)initWithAvailability:(int)availability supportedMediaTypes:(id)types;
- (TUMomentsCapabilities)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMomentsCapabilities

- (TUMomentsCapabilities)initWithAvailability:(int)availability supportedMediaTypes:(id)types
{
  typesCopy = types;
  v12.receiver = self;
  v12.super_class = TUMomentsCapabilities;
  v7 = [(TUMomentsCapabilities *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_availability = availability;
    v9 = [typesCopy copy];
    supportedMediaTypes = v8->_supportedMediaTypes;
    v8->_supportedMediaTypes = v9;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  availability = [(TUMomentsCapabilities *)self availability];
  supportedMediaTypes = [(TUMomentsCapabilities *)self supportedMediaTypes];
  allObjects = [supportedMediaTypes allObjects];
  v8 = [allObjects componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@ %p availability=%d supportedMediaTypes=%@>", v4, self, availability, v8];

  return v9;
}

- (unint64_t)hash
{
  availability = [(TUMomentsCapabilities *)self availability];
  supportedMediaTypes = [(TUMomentsCapabilities *)self supportedMediaTypes];
  v5 = [supportedMediaTypes hash];

  return v5 ^ availability;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMomentsCapabilities *)self isEqualToCapabilities:equalCopy];

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  availability = [(TUMomentsCapabilities *)self availability];
  if (availability == [capabilitiesCopy availability])
  {
    supportedMediaTypes = [(TUMomentsCapabilities *)self supportedMediaTypes];
    supportedMediaTypes2 = [capabilitiesCopy supportedMediaTypes];
    v8 = [supportedMediaTypes isEqualToSet:supportedMediaTypes2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TUMomentsCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_availability);
  v6 = [coderCopy decodeIntForKey:v5];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = NSStringFromSelector(sel_supportedMediaTypes);
  v11 = [coderCopy decodeObjectOfClasses:v9 forKey:v10];

  v12 = [(TUMomentsCapabilities *)self initWithAvailability:v6 supportedMediaTypes:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  availability = [(TUMomentsCapabilities *)self availability];
  v6 = NSStringFromSelector(sel_availability);
  [coderCopy encodeInt:availability forKey:v6];

  supportedMediaTypes = [(TUMomentsCapabilities *)self supportedMediaTypes];
  v7 = NSStringFromSelector(sel_supportedMediaTypes);
  [coderCopy encodeObject:supportedMediaTypes forKey:v7];
}

@end