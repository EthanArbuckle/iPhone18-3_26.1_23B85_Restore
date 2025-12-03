@interface MPAction
+ (id)action;
- (MPAction)init;
- (NSObject)targetObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)key;
- (id)parentDocument;
- (void)configureTarget;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setParent:(id)parent;
- (void)setTargetObject:(id)object;
@end

@implementation MPAction

+ (id)action
{
  v2 = objc_alloc_init(MPAction);

  return v2;
}

- (MPAction)init
{
  v3.receiver = self;
  v3.super_class = MPAction;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_parentObject = 0;
    result->_action = 0;
  }

  return result;
}

- (NSObject)targetObject
{
  parentDocument = [(MPAction *)self parentDocument];
  if (!parentDocument)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 0;
    }
  }

  if (!self->_targetObject)
  {
    return 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  targetObject = self->_targetObject;
  if (isKindOfClass)
  {
    v6 = [parentDocument actionableObjectForID:targetObject];
    if (v6)
    {
      v7 = v6;

      targetObject = v7;
      self->_targetObject = targetObject;
      return targetObject;
    }

    return 0;
  }

  return targetObject;
}

- (void)setTargetObject:(id)object
{
  targetObject = self->_targetObject;
  if (targetObject)
  {

    self->_targetObject = 0;
  }

  self->_targetObject = object;

  [(MPAction *)self configureTarget];
}

- (void)dealloc
{
  self->_action = 0;

  self->_targetObject = 0;
  v3.receiver = self;
  v3.super_class = MPAction;
  [(MPAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTargetObject:self->_targetObject];
  return v4;
}

- (id)key
{
  v2 = [-[MPActionSupport actions](self->_parentObject "actions")];

  return [v2 lastObject];
}

- (id)parentDocument
{
  if (!self->_parentObject)
  {
    return 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  parentObject = self->_parentObject;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass();
    parentObject = self->_parentObject;
    if ((v5 & 1) == 0)
    {
      objc_opt_class();
      v6 = objc_opt_isKindOfClass();
      parentObject = self->_parentObject;
      if ((v6 & 1) == 0)
      {
        objc_opt_class();
        v7 = objc_opt_isKindOfClass();
        parentObject = self->_parentObject;
        if ((v7 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            parentObject = self->_parentObject;
            goto LABEL_8;
          }

          return 0;
        }
      }
    }
  }

LABEL_8:

  return [(MPActionSupport *)parentObject parentDocument];
}

- (void)setParent:(id)parent
{
  if (parent && self->_parentObject)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"An action may have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentObject = parent;
}

- (void)configureTarget
{
  parentDocument = [(MPAction *)self parentDocument];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && parentDocument)
  {
    v4 = [parentDocument actionableObjectForID:self->_targetObject];
    if (!v4)
    {
      return;
    }

    v5 = v4;

    self->_targetObject = v5;
  }

  if (self->_action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objectID = [self->_targetObject objectID];
      action = self->_action;

      [(MCAction *)action setTargetObjectID:objectID];
    }
  }
}

- (void)setAction:(id)action
{
  action = self->_action;
  if (action)
  {

    self->_action = 0;
  }

  actionCopy = action;
  self->_action = actionCopy;
  if (actionCopy)
  {

    [(MPAction *)self configureTarget];
  }
}

@end