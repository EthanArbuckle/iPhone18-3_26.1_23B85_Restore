@interface WFWorkflowQuery
- (BOOL)isEqual:(id)a3;
- (WFWorkflowQuery)initWithCoder:(id)a3;
- (WFWorkflowQuery)initWithCollectionIdentifier:(id)a3;
- (WFWorkflowQuery)initWithFolderIdentifier:(id)a3;
- (WFWorkflowQuery)initWithLocation:(unint64_t)a3;
- (WFWorkflowQuery)initWithWorkflowType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowQuery

- (unint64_t)hash
{
  v3 = [(WFWorkflowQuery *)self location];
  v4 = [(WFWorkflowQuery *)self workflowType];
  v5 = [v4 hash] ^ v3;
  v6 = [(WFWorkflowQuery *)self folderIdentifier];
  v7 = [v6 hash];
  v8 = v7 ^ [(WFWorkflowQuery *)self resultsLimit];

  return v5 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v8 = v4;
    goto LABEL_23;
  }

  v5 = [(WFWorkflowQuery *)self location];
  if (v5 == [v4 location])
  {
    v6 = [(WFWorkflowQuery *)self folderIdentifier];
    v7 = [v4 folderIdentifier];
    v8 = v6;
    v9 = v7;
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

        v15 = v4;
        goto LABEL_23;
      }
    }

    v16 = [(WFWorkflowQuery *)self workflowType];
    v17 = [v4 workflowType];
    v13 = v16;
    v18 = v17;
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

    v19 = [(WFWorkflowQuery *)self resultsLimit];
    LOBYTE(v11) = v19 == [v4 resultsLimit];
LABEL_21:

    goto LABEL_22;
  }

  LOBYTE(v11) = 0;
  v15 = v4;
LABEL_24:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:-[WFWorkflowQuery location](self forKey:{"location"), @"location"}];
  v4 = [(WFWorkflowQuery *)self folderIdentifier];
  [v6 encodeObject:v4 forKey:@"folderIdentifier"];

  v5 = [(WFWorkflowQuery *)self workflowType];
  [v6 encodeObject:v5 forKey:@"workflowType"];

  [v6 encodeInteger:-[WFWorkflowQuery resultsLimit](self forKey:{"resultsLimit"), @"resultsLimit"}];
}

- (WFWorkflowQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFWorkflowQuery;
  v5 = [(WFWorkflowQuery *)&v12 init];
  if (v5)
  {
    v5->_location = [v4 decodeIntegerForKey:@"location"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"folderIdentifier"];
    folderIdentifier = v5->_folderIdentifier;
    v5->_folderIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowType"];
    workflowType = v5->_workflowType;
    v5->_workflowType = v8;

    v5->_resultsLimit = [v4 decodeIntegerForKey:@"resultsLimit"];
    v10 = v5;
  }

  return v5;
}

- (WFWorkflowQuery)initWithFolderIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowQuery *)self initWithLocation:3];
  if (v5)
  {
    v6 = [v4 copy];
    folderIdentifier = v5->_folderIdentifier;
    v5->_folderIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (WFWorkflowQuery)initWithCollectionIdentifier:(id)a3
{
  if (a3)
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

- (WFWorkflowQuery)initWithWorkflowType:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowQuery *)self initWithLocation:2];
  if (v5)
  {
    v6 = [v4 copy];
    workflowType = v5->_workflowType;
    v5->_workflowType = v6;

    v8 = v5;
  }

  return v5;
}

- (WFWorkflowQuery)initWithLocation:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFWorkflowQuery;
  v4 = [(WFWorkflowQuery *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_location = a3;
    v6 = v4;
  }

  return v5;
}

@end