@interface RBSLaunchRequest
- (BOOL)execute:(id *)execute assertion:(id *)assertion error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSLaunchRequest)initWithContext:(id)context;
- (RBSLaunchRequest)initWithRBSXPCCoder:(id)coder;
- (id)executeRequest;
@end

@implementation RBSLaunchRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identity = [(RBSLaunchContext *)self->_context identity];
  explanation = [(RBSLaunchContext *)self->_context explanation];
  v7 = [v3 stringWithFormat:@"<%@| %@ %@>", v4, identity, explanation];;

  return v7;
}

- (id)executeRequest
{
  v3 = +[RBSConnection sharedInstance];
  v4 = [v3 executeLaunchRequest:self];

  return v4;
}

- (RBSLaunchRequest)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = RBSLaunchRequest;
  _init = [(RBSRequest *)&v9 _init];
  if (_init)
  {
    v6 = [contextCopy copy];
    context = _init->_context;
    _init->_context = v6;
  }

  return _init;
}

- (BOOL)execute:(id *)execute assertion:(id *)assertion error:(id *)error
{
  attributes = [(RBSLaunchContext *)self->_context attributes];
  v11 = [attributes count];

  if (!assertion && v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RBSLaunchRequest.m" lineNumber:39 description:@"Cannot attempt to create an assertion during launch if the client will not retain the assertion"];
  }

  v13 = +[RBSConnection sharedInstance];
  v14 = [v13 executeLaunchRequest:self];

  process = [v14 process];
  v16 = process;
  if (execute)
  {
    v17 = process;
    *execute = v16;
  }

  assertion = [v14 assertion];
  v19 = assertion;
  if (!assertion)
  {
    [assertion invalidate];
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = assertion;
  *assertion = v19;
  if (error)
  {
LABEL_8:
    *error = [v14 error];
  }

LABEL_9:

  return v16 != 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 1;
  if (self != equalCopy)
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class() || (context = self->_context, context != equalCopy->_context) && ![(RBSLaunchContext *)context isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (RBSLaunchRequest)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSLaunchRequest;
  _init = [(RBSRequest *)&v9 _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = _init->_context;
    _init->_context = v6;
  }

  return _init;
}

@end