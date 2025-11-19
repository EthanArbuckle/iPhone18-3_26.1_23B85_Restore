@interface RBSLaunchRequest
- (BOOL)execute:(id *)a3 assertion:(id *)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSLaunchRequest)initWithContext:(id)a3;
- (RBSLaunchRequest)initWithRBSXPCCoder:(id)a3;
- (id)executeRequest;
@end

@implementation RBSLaunchRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(RBSLaunchContext *)self->_context identity];
  v6 = [(RBSLaunchContext *)self->_context explanation];
  v7 = [v3 stringWithFormat:@"<%@| %@ %@>", v4, v5, v6];;

  return v7;
}

- (id)executeRequest
{
  v3 = +[RBSConnection sharedInstance];
  v4 = [v3 executeLaunchRequest:self];

  return v4;
}

- (RBSLaunchRequest)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSLaunchRequest;
  v5 = [(RBSRequest *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (BOOL)execute:(id *)a3 assertion:(id *)a4 error:(id *)a5
{
  v10 = [(RBSLaunchContext *)self->_context attributes];
  v11 = [v10 count];

  if (!a4 && v11)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"RBSLaunchRequest.m" lineNumber:39 description:@"Cannot attempt to create an assertion during launch if the client will not retain the assertion"];
  }

  v13 = +[RBSConnection sharedInstance];
  v14 = [v13 executeLaunchRequest:self];

  v15 = [v14 process];
  v16 = v15;
  if (a3)
  {
    v17 = v15;
    *a3 = v16;
  }

  v18 = [v14 assertion];
  v19 = v18;
  if (!a4)
  {
    [v18 invalidate];
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v20 = v18;
  *a4 = v19;
  if (a5)
  {
LABEL_8:
    *a5 = [v14 error];
  }

LABEL_9:

  return v16 != 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class() || (context = self->_context, context != v4->_context) && ![(RBSLaunchContext *)context isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (RBSLaunchRequest)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSLaunchRequest;
  v5 = [(RBSRequest *)&v9 _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end