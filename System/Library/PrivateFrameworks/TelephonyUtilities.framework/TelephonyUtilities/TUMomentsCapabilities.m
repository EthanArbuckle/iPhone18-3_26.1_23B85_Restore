@interface TUMomentsCapabilities
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilities:(id)a3;
- (TUMomentsCapabilities)initWithAvailability:(int)a3 supportedMediaTypes:(id)a4;
- (TUMomentsCapabilities)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMomentsCapabilities

- (TUMomentsCapabilities)initWithAvailability:(int)a3 supportedMediaTypes:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TUMomentsCapabilities;
  v7 = [(TUMomentsCapabilities *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_availability = a3;
    v9 = [v6 copy];
    supportedMediaTypes = v8->_supportedMediaTypes;
    v8->_supportedMediaTypes = v9;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUMomentsCapabilities *)self availability];
  v6 = [(TUMomentsCapabilities *)self supportedMediaTypes];
  v7 = [v6 allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@ %p availability=%d supportedMediaTypes=%@>", v4, self, v5, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(TUMomentsCapabilities *)self availability];
  v4 = [(TUMomentsCapabilities *)self supportedMediaTypes];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMomentsCapabilities *)self isEqualToCapabilities:v4];

  return v5;
}

- (BOOL)isEqualToCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsCapabilities *)self availability];
  if (v5 == [v4 availability])
  {
    v6 = [(TUMomentsCapabilities *)self supportedMediaTypes];
    v7 = [v4 supportedMediaTypes];
    v8 = [v6 isEqualToSet:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TUMomentsCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_availability);
  v6 = [v4 decodeIntForKey:v5];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = NSStringFromSelector(sel_supportedMediaTypes);
  v11 = [v4 decodeObjectOfClasses:v9 forKey:v10];

  v12 = [(TUMomentsCapabilities *)self initWithAvailability:v6 supportedMediaTypes:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsCapabilities *)self availability];
  v6 = NSStringFromSelector(sel_availability);
  [v4 encodeInt:v5 forKey:v6];

  v8 = [(TUMomentsCapabilities *)self supportedMediaTypes];
  v7 = NSStringFromSelector(sel_supportedMediaTypes);
  [v4 encodeObject:v8 forKey:v7];
}

@end