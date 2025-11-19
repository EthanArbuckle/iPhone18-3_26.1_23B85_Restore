@interface MPAction
+ (id)action;
- (MPAction)init;
- (NSObject)targetObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)key;
- (id)parentDocument;
- (void)configureTarget;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setParent:(id)a3;
- (void)setTargetObject:(id)a3;
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
  v3 = [(MPAction *)self parentDocument];
  if (!v3)
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
    v6 = [v3 actionableObjectForID:targetObject];
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

- (void)setTargetObject:(id)a3
{
  targetObject = self->_targetObject;
  if (targetObject)
  {

    self->_targetObject = 0;
  }

  self->_targetObject = a3;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)setParent:(id)a3
{
  if (a3 && self->_parentObject)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"An action may have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentObject = a3;
}

- (void)configureTarget
{
  v3 = [(MPAction *)self parentDocument];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v3)
  {
    v4 = [v3 actionableObjectForID:self->_targetObject];
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
      v6 = [self->_targetObject objectID];
      action = self->_action;

      [(MCAction *)action setTargetObjectID:v6];
    }
  }
}

- (void)setAction:(id)a3
{
  action = self->_action;
  if (action)
  {

    self->_action = 0;
  }

  v6 = a3;
  self->_action = v6;
  if (v6)
  {

    [(MPAction *)self configureTarget];
  }
}

@end