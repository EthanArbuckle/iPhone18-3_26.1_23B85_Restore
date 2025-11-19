@interface WFFileState
- (WFFileState)initWithCoder:(id)a3;
- (WFFileState)initWithIdentifier:(id)a3 lastModifiedDate:(id)a4 path:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileState

- (WFFileState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"identifier"];
  v6 = [v4 decodeObjectForKey:@"lastModifiedDate"];
  v7 = [v4 decodeObjectForKey:@"path"];

  v8 = [(WFFileState *)self initWithIdentifier:v5 lastModifiedDate:v6 path:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFileState *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFFileState *)self lastModifiedDate];
  [v4 encodeObject:v6 forKey:@"lastModifiedDate"];

  v7 = [(WFFileState *)self path];
  [v4 encodeObject:v7 forKey:@"path"];
}

- (WFFileState)initWithIdentifier:(id)a3 lastModifiedDate:(id)a4 path:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFFileState.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"WFFileState.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = WFFileState;
  v13 = [(WFFileState *)&v24 init];
  if (v13)
  {
    v14 = [v9 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v10 copy];
    lastModifiedDate = v13->_lastModifiedDate;
    v13->_lastModifiedDate = v16;

    v18 = [v12 copy];
    path = v13->_path;
    v13->_path = v18;

    v20 = v13;
  }

  return v13;
}

@end