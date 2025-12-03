@interface SBHIconLibraryQueryContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQueryContext:(id)context;
- (SBHIconLibraryQueryContext)initWithQuery:(id)query;
- (id)description;
@end

@implementation SBHIconLibraryQueryContext

- (SBHIconLibraryQueryContext)initWithQuery:(id)query
{
  queryCopy = query;
  v14.receiver = self;
  v14.super_class = SBHIconLibraryQueryContext;
  v5 = [(SBHIconLibraryQueryContext *)&v14 init];
  if (v5)
  {
    v6 = [queryCopy copy];
    query = v5->_query;
    v5->_query = v6;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

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
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHIconLibraryQueryContext *)self isEqualToQueryContext:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToQueryContext:(id)context
{
  contextCopy = context;
  p_isa = &contextCopy->super.isa;
  if (self == contextCopy)
  {
    v12 = 1;
  }

  else
  {
    uUID = [(SBHIconLibraryQueryContext *)contextCopy UUID];
    uUID2 = [(SBHIconLibraryQueryContext *)self UUID];
    v8 = [uUID isEqual:uUID2];

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