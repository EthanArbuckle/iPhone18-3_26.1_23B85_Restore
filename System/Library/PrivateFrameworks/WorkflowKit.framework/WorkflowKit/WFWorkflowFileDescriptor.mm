@interface WFWorkflowFileDescriptor
- (WFWorkflowFileDescriptor)initWithCoder:(id)a3;
- (WFWorkflowFileDescriptor)initWithFile:(id)a3 name:(id)a4 sourceAppIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowFileDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowFileDescriptor *)self file];
  [v4 encodeObject:v5 forKey:@"file"];

  v6 = [(WFWorkflowFileDescriptor *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(WFWorkflowFileDescriptor *)self sourceAppIdentifier];
  [v4 encodeObject:v7 forKey:@"sourceAppIdentifier"];
}

- (WFWorkflowFileDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFWorkflowFileDescriptor;
  v5 = [(WFWorkflowFileDescriptor *)&v14 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
  file = v5->_file;
  v5->_file = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = v5->_name;
  v5->_name = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppIdentifier"];
  sourceAppIdentifier = v5->_sourceAppIdentifier;
  v5->_sourceAppIdentifier = v10;

  if (!v5->_file)
  {
    goto LABEL_5;
  }

  if (v5->_name)
  {
    v12 = v5;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (WFWorkflowFileDescriptor)initWithFile:(id)a3 name:(id)a4 sourceAppIdentifier:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFWorkflowFile.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"file"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFWorkflowFile.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFWorkflowFileDescriptor;
  v13 = [(WFWorkflowFileDescriptor *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_file, a3);
    v15 = [v11 copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [v12 copy];
    sourceAppIdentifier = v14->_sourceAppIdentifier;
    v14->_sourceAppIdentifier = v17;

    v19 = v14;
  }

  return v14;
}

@end