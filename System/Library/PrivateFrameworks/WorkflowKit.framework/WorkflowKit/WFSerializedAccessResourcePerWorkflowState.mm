@interface WFSerializedAccessResourcePerWorkflowState
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WFSerializedAccessResourcePerWorkflowState)initWithDictionary:(id)dictionary;
- (WFSerializedAccessResourcePerWorkflowState)initWithIdentifier:(id)identifier data:(id)data;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation WFSerializedAccessResourcePerWorkflowState

- (unint64_t)hash
{
  identifier = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
  v4 = [identifier hash];
  data = [(WFSerializedAccessResourcePerWorkflowState *)self data];
  v6 = [data hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
      identifier2 = [(WFSerializedAccessResourcePerWorkflowState *)v6 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        data = [(WFSerializedAccessResourcePerWorkflowState *)self data];
        data2 = [(WFSerializedAccessResourcePerWorkflowState *)v6 data];
        v11 = [data isEqualToData:data2];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (compareCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
    identifier2 = [compareCopy identifier];
    v7 = [identifier compare:identifier2];
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
  identifier = [(WFSerializedAccessResourcePerWorkflowState *)self identifier];
  v8[1] = @"data";
  v9[0] = identifier;
  data = [(WFSerializedAccessResourcePerWorkflowState *)self data];
  v9[1] = data;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WFSerializedAccessResourcePerWorkflowState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"data"];

  selfCopy = 0;
  if (v5 && v6)
  {
    self = [(WFSerializedAccessResourcePerWorkflowState *)self initWithIdentifier:v5 data:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFSerializedAccessResourcePerWorkflowState)initWithIdentifier:(id)identifier data:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v9 = dataCopy;
  if (identifierCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSerializedAccessResourcePerWorkflowState.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSerializedAccessResourcePerWorkflowState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"data"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFSerializedAccessResourcePerWorkflowState;
  v10 = [(WFSerializedAccessResourcePerWorkflowState *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
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