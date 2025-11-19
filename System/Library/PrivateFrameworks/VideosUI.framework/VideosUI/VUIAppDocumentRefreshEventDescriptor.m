@interface VUIAppDocumentRefreshEventDescriptor
- (BOOL)isEqual:(id)a3;
- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)a3;
- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)a3 delayInSeconds:(unint64_t)a4 name:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentRefreshEventDescriptor

- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentRefreshEventDescriptor)initWithEventType:(unint64_t)a3 delayInSeconds:(unint64_t)a4 name:(id)a5
{
  v8 = a5;
  if (!a4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The delayInSeconds parameter must be greater than 0"];
  }

  if (a3 >= 3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The eventType for refresh must be either foregroundTTL, refreshTTL or activeTTL"}];
  }

  v14.receiver = self;
  v14.super_class = VUIAppDocumentRefreshEventDescriptor;
  v9 = [(VUIAppDocumentUpdateEventDescriptor *)&v14 initWithEventType:a3];
  v10 = v9;
  if (v9)
  {
    v9->_delayInSeconds = a4;
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(VUIAppDocumentUpdateEventDescriptor *)self type];
  v4 = v3 ^ (2 * [(VUIAppDocumentRefreshEventDescriptor *)self delayInSeconds]);
  v5 = [(VUIAppDocumentRefreshEventDescriptor *)self name];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIAppDocumentUpdateEventDescriptor *)self type];
    if (v7 == [(VUIAppDocumentUpdateEventDescriptor *)v6 type]&& (v8 = [(VUIAppDocumentRefreshEventDescriptor *)self delayInSeconds], v8 == [(VUIAppDocumentRefreshEventDescriptor *)v6 delayInSeconds]))
    {
      v9 = [(VUIAppDocumentRefreshEventDescriptor *)self name];
      v10 = [(VUIAppDocumentRefreshEventDescriptor *)v6 name];
      v11 = v9;
      v12 = v10;
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
  v9 = [(VUIAppDocumentRefreshEventDescriptor *)self name];
  v10 = [v8 stringWithFormat:@"%@=%@", @"name", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end