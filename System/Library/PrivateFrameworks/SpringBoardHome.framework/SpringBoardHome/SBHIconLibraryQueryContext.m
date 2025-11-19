@interface SBHIconLibraryQueryContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQueryContext:(id)a3;
- (SBHIconLibraryQueryContext)initWithQuery:(id)a3;
- (id)description;
@end

@implementation SBHIconLibraryQueryContext

- (SBHIconLibraryQueryContext)initWithQuery:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBHIconLibraryQueryContext;
  v5 = [(SBHIconLibraryQueryContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    query = v5->_query;
    v5->_query = v6;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_new();
    contextStorage = v5->_contextStorage;
    v5->_contextStorage = v10;

    v12 = _gQueryContextIdx++;
    v5->_queryContextIdx = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_query withName:@"query"];
  v5 = [v3 appendObject:self->_UUID withName:@"UUID"];
  [v3 appendDictionarySection:self->_contextStorage withName:@"contextStorage" skipIfEmpty:1];
  v6 = [v3 appendInteger:self->_queryContextIdx withName:@"queryContextIdx"];
  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHIconLibraryQueryContext *)self isEqualToQueryContext:v4];
  }

  return v5;
}

- (BOOL)isEqualToQueryContext:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = [(SBHIconLibraryQueryContext *)v4 UUID];
    v7 = [(SBHIconLibraryQueryContext *)self UUID];
    v8 = [v6 isEqual:v7];

    if (v8 && ([p_isa query], v9 = objc_claimAutoreleasedReturnValue(), -[SBHIconLibraryQueryContext query](self, "query"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11))
    {
      v12 = [p_isa[1] isEqual:self->_contextStorage];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end