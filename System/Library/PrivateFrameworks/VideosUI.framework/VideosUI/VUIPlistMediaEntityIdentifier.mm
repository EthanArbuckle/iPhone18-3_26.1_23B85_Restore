@interface VUIPlistMediaEntityIdentifier
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VUIPlistMediaEntityIdentifier)init;
- (VUIPlistMediaEntityIdentifier)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation VUIPlistMediaEntityIdentifier

- (VUIPlistMediaEntityIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIPlistMediaEntityIdentifier)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = VUIPlistMediaEntityIdentifier;
  v7 = [(VUIPlistMediaEntityIdentifier *)&v13 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    if (type > 2)
    {
      switch(type)
      {
        case 3uLL:
          v10 = +[VUIMediaEntityType homeVideo];
          goto LABEL_16;
        case 4uLL:
          v10 = +[VUIMediaEntityType show];
          goto LABEL_16;
        case 5uLL:
          v10 = +[VUIMediaEntityType season];
          goto LABEL_16;
      }
    }

    else
    {
      switch(type)
      {
        case 0uLL:
          v10 = +[VUIMediaEntityType movie];
          goto LABEL_16;
        case 1uLL:
          v10 = +[VUIMediaEntityType movieRental];
          goto LABEL_16;
        case 2uLL:
          v10 = +[VUIMediaEntityType episode];
LABEL_16:
          mediaEntityType = v7->_mediaEntityType;
          v7->_mediaEntityType = v10;

          goto LABEL_17;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected type passed to -initWithIdentifier:type:"];
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  identifier = [(VUIPlistMediaEntityIdentifier *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = [(VUIPlistMediaEntityIdentifier *)self identifier];
    identifier2 = [(VUIPlistMediaEntityIdentifier *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
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
  v12.super_class = VUIPlistMediaEntityIdentifier;
  v4 = [(VUIPlistMediaEntityIdentifier *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  identifier = [(VUIPlistMediaEntityIdentifier *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", identifier];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end