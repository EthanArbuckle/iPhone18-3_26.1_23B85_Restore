@interface WFWorkflowQuery
- (BOOL)isEqual:(id)equal;
- (WFWorkflowQuery)initWithCoder:(id)coder;
- (WFWorkflowQuery)initWithCollectionIdentifier:(id)identifier;
- (WFWorkflowQuery)initWithFolderIdentifier:(id)identifier;
- (WFWorkflowQuery)initWithLocation:(unint64_t)location;
- (WFWorkflowQuery)initWithWorkflowType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowQuery

- (unint64_t)hash
{
  location = [(WFWorkflowQuery *)self location];
  workflowType = [(WFWorkflowQuery *)self workflowType];
  v5 = [workflowType hash] ^ location;
  folderIdentifier = [(WFWorkflowQuery *)self folderIdentifier];
  v7 = [folderIdentifier hash];
  v8 = v7 ^ [(WFWorkflowQuery *)self resultsLimit];

  return v5 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    v8 = 0;
    v15 = 0;
    LOBYTE(v11) = 0;
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    LOBYTE(v11) = 0;
    v8 = equalCopy;
    goto LABEL_23;
  }

  location = [(WFWorkflowQuery *)self location];
  if (location == [equalCopy location])
  {
    folderIdentifier = [(WFWorkflowQuery *)self folderIdentifier];
    folderIdentifier2 = [equalCopy folderIdentifier];
    v8 = folderIdentifier;
    v9 = folderIdentifier2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_21;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(v11) = 0;
LABEL_22:

        v15 = equalCopy;
        goto LABEL_23;
      }
    }

    workflowType = [(WFWorkflowQuery *)self workflowType];
    workflowType2 = [equalCopy workflowType];
    v13 = workflowType;
    v18 = workflowType2;
    v12 = v18;
    if (v13 == v18)
    {
    }

    else
    {
      if (!v13 || !v18)
      {

        LOBYTE(v11) = 0;
        goto LABEL_21;
      }

      v11 = [v13 isEqualToString:v18];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    resultsLimit = [(WFWorkflowQuery *)self resultsLimit];
    LOBYTE(v11) = resultsLimit == [equalCopy resultsLimit];
LABEL_21:

    goto LABEL_22;
  }

  LOBYTE(v11) = 0;
  v15 = equalCopy;
LABEL_24:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFWorkflowQuery location](self forKey:{"location"), @"location"}];
  folderIdentifier = [(WFWorkflowQuery *)self folderIdentifier];
  [coderCopy encodeObject:folderIdentifier forKey:@"folderIdentifier"];

  workflowType = [(WFWorkflowQuery *)self workflowType];
  [coderCopy encodeObject:workflowType forKey:@"workflowType"];

  [coderCopy encodeInteger:-[WFWorkflowQuery resultsLimit](self forKey:{"resultsLimit"), @"resultsLimit"}];
}

- (WFWorkflowQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFWorkflowQuery;
  v5 = [(WFWorkflowQuery *)&v12 init];
  if (v5)
  {
    v5->_location = [coderCopy decodeIntegerForKey:@"location"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"folderIdentifier"];
    folderIdentifier = v5->_folderIdentifier;
    v5->_folderIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowType"];
    workflowType = v5->_workflowType;
    v5->_workflowType = v8;

    v5->_resultsLimit = [coderCopy decodeIntegerForKey:@"resultsLimit"];
    v10 = v5;
  }

  return v5;
}

- (WFWorkflowQuery)initWithFolderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(WFWorkflowQuery *)self initWithLocation:3];
  if (v5)
  {
    v6 = [identifierCopy copy];
    folderIdentifier = v5->_folderIdentifier;
    v5->_folderIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (WFWorkflowQuery)initWithCollectionIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(WFWorkflowQuery *)self initWithFolderIdentifier:?];
  }

  else
  {
    v3 = [(WFWorkflowQuery *)self initWithLocation:1];
  }

  v4 = v3;

  return v4;
}

- (WFWorkflowQuery)initWithWorkflowType:(id)type
{
  typeCopy = type;
  v5 = [(WFWorkflowQuery *)self initWithLocation:2];
  if (v5)
  {
    v6 = [typeCopy copy];
    workflowType = v5->_workflowType;
    v5->_workflowType = v6;

    v8 = v5;
  }

  return v5;
}

- (WFWorkflowQuery)initWithLocation:(unint64_t)location
{
  v8.receiver = self;
  v8.super_class = WFWorkflowQuery;
  v4 = [(WFWorkflowQuery *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_location = location;
    v6 = v4;
  }

  return v5;
}

@end