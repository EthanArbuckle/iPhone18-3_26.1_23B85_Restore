@interface WFFileState
- (WFFileState)initWithCoder:(id)coder;
- (WFFileState)initWithIdentifier:(id)identifier lastModifiedDate:(id)date path:(id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileState

- (WFFileState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"identifier"];
  v6 = [coderCopy decodeObjectForKey:@"lastModifiedDate"];
  v7 = [coderCopy decodeObjectForKey:@"path"];

  v8 = [(WFFileState *)self initWithIdentifier:v5 lastModifiedDate:v6 path:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFFileState *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  lastModifiedDate = [(WFFileState *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];

  path = [(WFFileState *)self path];
  [coderCopy encodeObject:path forKey:@"path"];
}

- (WFFileState)initWithIdentifier:(id)identifier lastModifiedDate:(id)date path:(id)path
{
  identifierCopy = identifier;
  dateCopy = date;
  pathCopy = path;
  v12 = pathCopy;
  if (identifierCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileState.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFFileState.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = WFFileState;
  v13 = [(WFFileState *)&v24 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [dateCopy copy];
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