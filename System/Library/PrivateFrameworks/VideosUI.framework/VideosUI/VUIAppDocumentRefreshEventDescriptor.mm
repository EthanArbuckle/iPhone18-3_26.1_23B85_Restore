@interface VUIAppDocumentRefreshEventDescriptor
- (BOOL)isEqual:(id)equal;
- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)type;
- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)type delayInSeconds:(unint64_t)seconds name:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentRefreshEventDescriptor

- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)type
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)type delayInSeconds:(unint64_t)seconds name:(id)name
{
  nameCopy = name;
  if (!seconds)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The delayInSeconds parameter must be greater than 0"];
  }

  if (type >= 3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The eventType for refresh must be either foregroundTTL, refreshTTL or activeTTL"}];
  }

  v14.receiver = self;
  v14.super_class = VUIAppDocumentRefreshEventDescriptor;
  v9 = [(VUIAppDocumentUpdateEventDescriptor *)&v14 initWithEventType:type];
  v10 = v9;
  if (v9)
  {
    v9->_delayInSeconds = seconds;
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  type = [(VUIAppDocumentUpdateEventDescriptor *)self type];
  v4 = type ^ (2 * [(VUIAppDocumentRefreshEventDescriptor *)self delayInSeconds]);
  name = [(VUIAppDocumentRefreshEventDescriptor *)self name];
  v6 = [name hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUIAppDocumentUpdateEventDescriptor *)self type];
    if (type == [(VUIAppDocumentUpdateEventDescriptor *)v6 type]&& (v8 = [(VUIAppDocumentRefreshEventDescriptor *)self delayInSeconds], v8 == [(VUIAppDocumentRefreshEventDescriptor *)v6 delayInSeconds]))
    {
      name = [(VUIAppDocumentRefreshEventDescriptor *)self name];
      name2 = [(VUIAppDocumentRefreshEventDescriptor *)v6 name];
      v11 = name;
      v12 = name2;
      v13 = v12;
      if (v11 == v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = 0;
        if (v11 && v12)
        {
          v14 = [v11 isEqual:v12];
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIAppDocumentRefreshEventDescriptor;
  v4 = [(VUIAppDocumentUpdateEventDescriptor *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIAppDocumentRefreshEventDescriptor delayInSeconds](self, "delayInSeconds")}];
  v7 = [v5 stringWithFormat:@"%@=%@", @"delayInSeconds", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  name = [(VUIAppDocumentRefreshEventDescriptor *)self name];
  v10 = [v8 stringWithFormat:@"%@=%@", @"name", name];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end