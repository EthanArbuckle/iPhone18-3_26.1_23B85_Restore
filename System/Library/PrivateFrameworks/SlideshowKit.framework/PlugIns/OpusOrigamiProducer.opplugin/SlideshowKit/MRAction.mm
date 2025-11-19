@interface MRAction
- (MRAction)initWithAction:(id)a3 andTarget:(id)a4;
- (MRAction)initWithAction:(id)a3 inRenderer:(id)a4;
- (MRAction)initWithBlock:(id)a3 andSender:(id)a4;
- (MRAction)initWithSelector:(SEL)a3 sender:(id)a4 andTargetPath:(id)a5 inRenderer:(id)a6;
- (MRLayer)resolvedTarget;
- (double)invoke;
- (void)_resolveTargetPath:(id)a3;
- (void)dealloc;
@end

@implementation MRAction

- (MRAction)initWithAction:(id)a3 inRenderer:(id)a4
{
  v9.receiver = self;
  v9.super_class = MRAction;
  v6 = [(MRAction *)&v9 init];
  if (v6)
  {
    v7 = a3;
    v6->_renderer = a4;
    v6->_mcAction = v7;
    v6->_targetPath = [(NSString *)[(MCAction *)v7 targetObjectID] copy];
  }

  return v6;
}

- (MRAction)initWithAction:(id)a3 andTarget:(id)a4
{
  v8.receiver = self;
  v8.super_class = MRAction;
  v6 = [(MRAction *)&v8 init];
  if (v6)
  {
    v6->_mcAction = a3;
    v6->_resolvedTarget = a4;
  }

  return v6;
}

- (MRAction)initWithSelector:(SEL)a3 sender:(id)a4 andTargetPath:(id)a5 inRenderer:(id)a6
{
  v14.receiver = self;
  v14.super_class = MRAction;
  v10 = [(MRAction *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_renderer = a6;
    v12 = [NSInvocation invocationWithMethodSignature:[NSMethodSignature signatureWithObjCTypes:"d@:@"]];
    v11->_invocation = v12;
    [(NSInvocation *)v12 setSelector:a3];
    v11->_sender = a4;
    v11->_targetPath = [a5 copy];
  }

  return v11;
}

- (MRAction)initWithBlock:(id)a3 andSender:(id)a4
{
  v8.receiver = self;
  v8.super_class = MRAction;
  v6 = [(MRAction *)&v8 init];
  if (v6)
  {
    v6->_block = [a3 copy];
    v6->_sender = a4;
  }

  return v6;
}

- (void)dealloc
{
  self->_renderer = 0;
  self->_mcAction = 0;

  self->_invocation = 0;
  self->_block = 0;

  self->_sender = 0;
  self->_resolvedTarget = 0;

  self->_states = 0;
  self->_specificObject = 0;
  v3.receiver = self;
  v3.super_class = MRAction;
  [(MRAction *)&v3 dealloc];
}

- (double)invoke
{
  v6 = 0.0;
  v7 = self;
  block = self->_block;
  if (block)
  {
    v4 = *(block + 2);

    v4();
  }

  else if (self->_invocation)
  {
    [(NSInvocation *)self->_invocation setTarget:[(MRAction *)self resolvedTarget]];
    [(NSInvocation *)self->_invocation setArgument:&v7 atIndex:2];
    [(NSInvocation *)v7->_invocation invoke];
    [(NSInvocation *)v7->_invocation getReturnValue:&v6];
    return v6;
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (MRLayer)resolvedTarget
{
  if (!self->_resolvedTarget)
  {
    if ([(NSString *)self->_targetPath hasPrefix:@"/"])
    {
      renderer = self->_renderer;
      if (renderer)
      {
        v4 = [(MRRenderer *)renderer _layerForPlugObjectID:self->_targetPath];
        self->_resolvedTarget = v4;
        if (!v4)
        {
          goto LABEL_8;
        }
      }

      else if (!self->_resolvedTarget)
      {
LABEL_8:
        NSLog(@"Error: could not resolve action target path '%@'.", self->_targetPath);
      }
    }

    else
    {
      [(MRAction *)self _resolveTargetPath:self->_targetPath];
    }
  }

  return self->_resolvedTarget;
}

- (void)_resolveTargetPath:(id)a3
{
  sender = self->_sender;
  if (![a3 length])
  {
    goto LABEL_21;
  }

  v6 = [a3 componentsSeparatedByString:@"/"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *v16;
  do
  {
    v10 = 0;
    do
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      if ([v11 isEqualToString:@".."])
      {
        v12 = [sender superlayer];
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 isEqualToString:@"@currentSublayer"])
        {
          v12 = [sender currentSublayer];
        }

        else
        {
LABEL_10:
          v12 = [sender sublayerForKey:v11];
        }

LABEL_11:
        sender = v12;
        goto LABEL_12;
      }

      if (self->_resolvedTarget)
      {
        sender = 0;
      }

      else
      {
        NSLog(@"Consistency error: non-terminal layer in action target path is not a collection layer.");
      }

LABEL_12:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v13 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v8 = v13;
  }

  while (v13);
LABEL_21:
  if (sender)
  {
    self->_resolvedTarget = sender;
  }

  else
  {
    NSLog(@"Error: could not resolve action target path '%@'.", a3);
  }
}

@end