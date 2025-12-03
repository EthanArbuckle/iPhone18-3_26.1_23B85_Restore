@interface MRAction
- (MRAction)initWithAction:(id)action andTarget:(id)target;
- (MRAction)initWithAction:(id)action inRenderer:(id)renderer;
- (MRAction)initWithBlock:(id)block andSender:(id)sender;
- (MRAction)initWithSelector:(SEL)selector sender:(id)sender andTargetPath:(id)path inRenderer:(id)renderer;
- (MRLayer)resolvedTarget;
- (double)invoke;
- (void)_resolveTargetPath:(id)path;
- (void)dealloc;
@end

@implementation MRAction

- (MRAction)initWithAction:(id)action inRenderer:(id)renderer
{
  v9.receiver = self;
  v9.super_class = MRAction;
  v6 = [(MRAction *)&v9 init];
  if (v6)
  {
    actionCopy = action;
    v6->_renderer = renderer;
    v6->_mcAction = actionCopy;
    v6->_targetPath = [(NSString *)[(MCAction *)actionCopy targetObjectID] copy];
  }

  return v6;
}

- (MRAction)initWithAction:(id)action andTarget:(id)target
{
  v8.receiver = self;
  v8.super_class = MRAction;
  v6 = [(MRAction *)&v8 init];
  if (v6)
  {
    v6->_mcAction = action;
    v6->_resolvedTarget = target;
  }

  return v6;
}

- (MRAction)initWithSelector:(SEL)selector sender:(id)sender andTargetPath:(id)path inRenderer:(id)renderer
{
  v14.receiver = self;
  v14.super_class = MRAction;
  v10 = [(MRAction *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_renderer = renderer;
    v12 = [NSInvocation invocationWithMethodSignature:[NSMethodSignature signatureWithObjCTypes:"d@:@"]];
    v11->_invocation = v12;
    [(NSInvocation *)v12 setSelector:selector];
    v11->_sender = sender;
    v11->_targetPath = [path copy];
  }

  return v11;
}

- (MRAction)initWithBlock:(id)block andSender:(id)sender
{
  v8.receiver = self;
  v8.super_class = MRAction;
  v6 = [(MRAction *)&v8 init];
  if (v6)
  {
    v6->_block = [block copy];
    v6->_sender = sender;
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
  selfCopy = self;
  block = self->_block;
  if (block)
  {
    v4 = *(block + 2);

    v4();
  }

  else if (self->_invocation)
  {
    [(NSInvocation *)self->_invocation setTarget:[(MRAction *)self resolvedTarget]];
    [(NSInvocation *)self->_invocation setArgument:&selfCopy atIndex:2];
    [(NSInvocation *)selfCopy->_invocation invoke];
    [(NSInvocation *)selfCopy->_invocation getReturnValue:&v6];
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

- (void)_resolveTargetPath:(id)path
{
  sender = self->_sender;
  if (![path length])
  {
    goto LABEL_21;
  }

  v6 = [path componentsSeparatedByString:@"/"];
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
        superlayer = [sender superlayer];
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
          superlayer = [sender currentSublayer];
        }

        else
        {
LABEL_10:
          superlayer = [sender sublayerForKey:v11];
        }

LABEL_11:
        sender = superlayer;
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
    NSLog(@"Error: could not resolve action target path '%@'.", path);
  }
}

@end