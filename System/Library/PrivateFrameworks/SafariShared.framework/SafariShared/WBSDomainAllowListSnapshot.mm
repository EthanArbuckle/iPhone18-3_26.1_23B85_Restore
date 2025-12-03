@interface WBSDomainAllowListSnapshot
- (BOOL)isEqual:(id)equal;
- (WBSDomainAllowListSnapshot)initWithDomains:(id)domains;
- (WBSDomainAllowListSnapshot)initWithSnapshotData:(id)data error:(id *)error;
- (id)snapshotData;
@end

@implementation WBSDomainAllowListSnapshot

- (WBSDomainAllowListSnapshot)initWithSnapshotData:(id)data error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DEC8] safari_arrayWithPropertyListData:data options:0];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:{0, v16}];
            }

            selfCopy = 0;
            goto LABEL_14;
          }

          [v7 addObject:{v13, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    self = [(WBSDomainAllowListSnapshot *)self initWithDomains:v7];
    selfCopy = self;
LABEL_14:
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSDomainAllowListSnapshot)initWithDomains:(id)domains
{
  domainsCopy = domains;
  v10.receiver = self;
  v10.super_class = WBSDomainAllowListSnapshot;
  v5 = [(WBSDomainAllowListSnapshot *)&v10 init];
  if (v5)
  {
    v6 = [domainsCopy copy];
    allowedDomains = v5->_allowedDomains;
    v5->_allowedDomains = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSet *)self->_allowedDomains isEqualToSet:equalCopy[1]];

  return v5;
}

- (id)snapshotData
{
  v2 = MEMORY[0x1E696AE40];
  allObjects = [(NSSet *)self->_allowedDomains allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v5 = [v2 dataWithPropertyList:v4 format:200 options:0 error:0];

  return v5;
}

@end