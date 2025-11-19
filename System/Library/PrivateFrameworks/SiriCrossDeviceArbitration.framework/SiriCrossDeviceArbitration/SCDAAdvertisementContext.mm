@interface SCDAAdvertisementContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCDAAdvertisementContext)initWithBuilder:(id)a3;
- (SCDAAdvertisementContext)initWithCoder:(id)a3;
- (SCDAAdvertisementContext)initWithGeneration:(unint64_t)a3 contextData:(id)a4 contextFetchDelay:(double)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCDAAdvertisementContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  generation = self->_generation;
  v6 = a3;
  v7 = [v4 numberWithUnsignedLongLong:generation];
  [v6 encodeObject:v7 forKey:@"SCDAAdvertisementContext::generation"];

  [v6 encodeObject:self->_contextData forKey:@"SCDAAdvertisementContext::contextData"];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_contextFetchDelay];
  [v6 encodeObject:v8 forKey:@"SCDAAdvertisementContext::contextFetchDelay"];
}

- (SCDAAdvertisementContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAdvertisementContext::generation"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAdvertisementContext::contextData"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAdvertisementContext::contextFetchDelay"];

  [v8 doubleValue];
  v10 = v9;

  v11 = [(SCDAAdvertisementContext *)self initWithGeneration:v6 contextData:v7 contextFetchDelay:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      generation = self->_generation;
      if (generation == [(SCDAAdvertisementContext *)v5 generation]&& (contextFetchDelay = self->_contextFetchDelay, [(SCDAAdvertisementContext *)v5 contextFetchDelay], contextFetchDelay == v8))
      {
        v11 = [(SCDAAdvertisementContext *)v5 contextData];
        contextData = self->_contextData;
        v9 = contextData == v11 || [(NSData *)contextData isEqual:v11];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSData *)self->_contextData hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_contextFetchDelay];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = SCDAAdvertisementContext;
  v5 = [(SCDAAdvertisementContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, contextData = (%llu bytes), contextFetchDelay = %f}", v5, self->_generation, -[NSData length](self->_contextData, "length"), *&self->_contextFetchDelay];

  return v6;
}

- (SCDAAdvertisementContext)initWithGeneration:(unint64_t)a3 contextData:(id)a4 contextFetchDelay:(double)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__SCDAAdvertisementContext_initWithGeneration_contextData_contextFetchDelay___block_invoke;
  v12[3] = &unk_1E85D2EC8;
  v13 = v8;
  v14 = a3;
  v15 = a5;
  v9 = v8;
  v10 = [(SCDAAdvertisementContext *)self initWithBuilder:v12];

  return v10;
}

void __77__SCDAAdvertisementContext_initWithGeneration_contextData_contextFetchDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setContextData:*(a1 + 32)];
  [v4 setContextFetchDelay:*(a1 + 48)];
}

- (SCDAAdvertisementContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCDAAdvertisementContext;
  v5 = [(SCDAAdvertisementContext *)&v13 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SCDAAdvertisementContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SCDAAdvertisementContextMutation *)v7 isDirty])
    {
      v6->_generation = [(_SCDAAdvertisementContextMutation *)v7 getGeneration];
      v8 = [(_SCDAAdvertisementContextMutation *)v7 getContextData];
      v9 = [v8 copy];
      contextData = v6->_contextData;
      v6->_contextData = v9;

      [(_SCDAAdvertisementContextMutation *)v7 getContextFetchDelay];
      v6->_contextFetchDelay = v11;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SCDAAdvertisementContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SCDAAdvertisementContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SCDAAdvertisementContext);
      v6->_generation = [(_SCDAAdvertisementContextMutation *)v5 getGeneration];
      v7 = [(_SCDAAdvertisementContextMutation *)v5 getContextData];
      v8 = [v7 copy];
      contextData = v6->_contextData;
      v6->_contextData = v8;

      [(_SCDAAdvertisementContextMutation *)v5 getContextFetchDelay];
      v6->_contextFetchDelay = v10;
    }

    else
    {
      v6 = [(SCDAAdvertisementContext *)self copy];
    }
  }

  else
  {
    v6 = [(SCDAAdvertisementContext *)self copy];
  }

  return v6;
}

@end