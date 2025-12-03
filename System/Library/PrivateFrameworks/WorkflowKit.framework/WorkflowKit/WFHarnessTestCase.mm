@interface WFHarnessTestCase
- (WFHarnessTestCase)initWithIdentifier:(id)identifier name:(id)name workflowRunDescriptor:(id)descriptor input:(id)input automationType:(id)type interactions:(id)interactions siriInteractions:(id)siriInteractions conditions:(id)self0 resultExpectation:(id)self1;
- (id)description;
@end

@implementation WFHarnessTestCase

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = self->_identifier;
  v7 = [v3 stringWithFormat:@"%@ %p: name: %@, identifier: %@, runDescriptor: %@"], v5, self, self->_name, identifier, self->_runDescriptor);

  return v7;
}

- (WFHarnessTestCase)initWithIdentifier:(id)identifier name:(id)name workflowRunDescriptor:(id)descriptor input:(id)input automationType:(id)type interactions:(id)interactions siriInteractions:(id)siriInteractions conditions:(id)self0 resultExpectation:(id)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptorCopy = descriptor;
  inputCopy = input;
  typeCopy = type;
  interactionsCopy = interactions;
  siriInteractionsCopy = siriInteractions;
  conditionsCopy = conditions;
  selfCopy = self;
  expectationCopy = expectation;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"WFHarnessTestCase.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"WFHarnessTestCase.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  if (descriptorCopy)
  {
    if (interactionsCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"WFHarnessTestCase.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"runDescriptor"}];

    if (interactionsCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"WFHarnessTestCase.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"interactions"}];

LABEL_5:
  v23 = interactionsCopy;
  if (!conditionsCopy)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:@"WFHarnessTestCase.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"conditions"}];
  }

  v49.receiver = selfCopy;
  v49.super_class = WFHarnessTestCase;
  v24 = [(WFHarnessTestCase *)&v49 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [nameCopy copy];
    name = v24->_name;
    v24->_name = v27;

    objc_storeStrong(&v24->_runDescriptor, descriptor);
    objc_storeStrong(&v24->_input, input);
    v29 = [typeCopy copy];
    automationType = v24->_automationType;
    v24->_automationType = v29;

    objc_storeStrong(&v24->_interactions, interactions);
    objc_storeStrong(&v24->_siriInteractions, siriInteractions);
    objc_storeStrong(&v24->_conditions, conditions);
    objc_storeStrong(&v24->_resultExpectation, expectation);
    v31 = objc_opt_new();
    handledInteractions = v24->_handledInteractions;
    v24->_handledInteractions = v31;

    v33 = objc_opt_new();
    handledSiriInteractions = v24->_handledSiriInteractions;
    v24->_handledSiriInteractions = v33;

    v35 = objc_opt_new();
    handledConditions = v24->_handledConditions;
    v24->_handledConditions = v35;

    v37 = v24;
  }

  return v24;
}

@end