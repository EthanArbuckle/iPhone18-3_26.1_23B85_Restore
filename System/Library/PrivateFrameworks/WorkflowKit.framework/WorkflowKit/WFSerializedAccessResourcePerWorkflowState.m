@interface WFSerializedAccessResourcePerWorkflowState
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WFSerializedAccessResourcePerWorkflowState)initWithDictionary:(id)a3;
- (WFSerializedAccessResourcePerWorkflowState)initWithIdentifier:(id)a3 data:(id)a4;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation WFSerializedAccessResourcePerWorkflowState

- (unint64_t)hash
{
  v3 = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
  v4 = [v3 hash];
  v5 = [(WFSerializedAccessResourcePerWorkflowState *)self data];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
      v8 = [(WFSerializedAccessResourcePerWorkflowState *)v6 identifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(WFSerializedAccessResourcePerWorkflowState *)self data];
        v10 = [(WFSerializedAccessResourcePerWorkflowState *)v6 data];
        v11 = [v9 isEqualToData:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 compare:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"identifier";
  v3 = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
  v8[1] = @"data";
  v9[0] = v3;
  v4 = [(WFSerializedAccessResourcePerWorkflowState *)self data];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WFSerializedAccessResourcePerWorkflowState)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  v6 = [v4 objectForKeyedSubscript:@"data"];

  v7 = 0;
  if (v5 && v6)
  {
    self = [(WFSerializedAccessResourcePerWorkflowState *)self initWithIdentifier:v5 data:v6];
    v7 = self;
  }

  return v7;
}

- (WFSerializedAccessResourcePerWorkflowState)initWithIdentifier:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFSerializedAccessResourcePerWorkflowState.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFSerializedAccessResourcePerWorkflowState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"data"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFSerializedAccessResourcePerWorkflowState;
  v10 = [(WFSerializedAccessResourcePerWorkflowState *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    data = v10->_data;
    v10->_data = v13;

    v15 = v10;
  }

  return v10;
}

@end