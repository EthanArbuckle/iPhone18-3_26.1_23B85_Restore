@interface VUIMPMediaLibraryIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VUIMPMediaLibraryIdentifier)init;
- (VUIMPMediaLibraryIdentifier)initWithIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation VUIMPMediaLibraryIdentifier

- (VUIMPMediaLibraryIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaLibraryIdentifier)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIMPMediaLibraryIdentifier;
  v5 = [(VUIMPMediaLibraryIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(VUIMPMediaLibraryIdentifier *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIMPMediaLibraryIdentifier *)self identifier];
    v8 = [(VUIMPMediaLibraryIdentifier *)v6 identifier];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [v9 isEqual:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIMPMediaLibraryIdentifier;
  v4 = [(VUIMPMediaLibraryIdentifier *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMPMediaLibraryIdentifier *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end