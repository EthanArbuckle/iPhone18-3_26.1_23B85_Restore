@interface WFHarnessTestCase
- (WFHarnessTestCase)initWithIdentifier:(id)a3 name:(id)a4 workflowRunDescriptor:(id)a5 input:(id)a6 automationType:(id)a7 interactions:(id)a8 siriInteractions:(id)a9 conditions:(id)a10 resultExpectation:(id)a11;
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

- (WFHarnessTestCase)initWithIdentifier:(id)a3 name:(id)a4 workflowRunDescriptor:(id)a5 input:(id)a6 automationType:(id)a7 interactions:(id)a8 siriInteractions:(id)a9 conditions:(id)a10 resultExpectation:(id)a11
{
  v17 = a3;
  v18 = a4;
  v48 = a5;
  v47 = a6;
  v19 = a7;
  v20 = a8;
  v46 = a9;
  v21 = a10;
  v22 = self;
  v45 = a11;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:v22 file:@"WFHarnessTestCase.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v40 = [MEMORY[0x1E696AAA8] currentHandler];
  [v40 handleFailureInMethod:a2 object:v22 file:@"WFHarnessTestCase.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  if (v48)
  {
    if (v20)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:v22 file:@"WFHarnessTestCase.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"runDescriptor"}];

    if (v20)
    {
      goto LABEL_5;
    }
  }

  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  [v42 handleFailureInMethod:a2 object:v22 file:@"WFHarnessTestCase.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"interactions"}];

LABEL_5:
  v23 = v20;
  if (!v21)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:v22 file:@"WFHarnessTestCase.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"conditions"}];
  }

  v49.receiver = v22;
  v49.super_class = WFHarnessTestCase;
  v24 = [(WFHarnessTestCase *)&v49 init];
  if (v24)
  {
    v25 = [v17 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v18 copy];
    name = v24->_name;
    v24->_name = v27;

    objc_storeStrong(&v24->_runDescriptor, a5);
    objc_storeStrong(&v24->_input, a6);
    v29 = [v19 copy];
    automationType = v24->_automationType;
    v24->_automationType = v29;

    objc_storeStrong(&v24->_interactions, a8);
    objc_storeStrong(&v24->_siriInteractions, a9);
    objc_storeStrong(&v24->_conditions, a10);
    objc_storeStrong(&v24->_resultExpectation, a11);
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