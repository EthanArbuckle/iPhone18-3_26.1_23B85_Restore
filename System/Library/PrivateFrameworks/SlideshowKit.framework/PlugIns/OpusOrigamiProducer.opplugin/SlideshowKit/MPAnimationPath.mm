@interface MPAnimationPath
+ (id)animationPath;
- (MPAnimationPath)init;
- (id)animatedKey;
- (id)animatedParent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)key;
- (id)parentDocument;
- (void)dealloc;
- (void)setAnimationPath:(id)path;
- (void)setIsTriggered:(BOOL)triggered;
- (void)setParent:(id)parent;
@end

@implementation MPAnimationPath

+ (id)animationPath
{
  v2 = objc_alloc_init(MPAnimationPathKeyframed);

  return v2;
}

- (MPAnimationPath)init
{
  v3.receiver = self;
  v3.super_class = MPAnimationPath;
  result = [(MPAnimationPath *)&v3 init];
  if (result)
  {
    result->_parentObject = 0;
    result->_animationPath = 0;
  }

  return result;
}

- (void)dealloc
{
  animationPath = self->_animationPath;
  if (animationPath)
  {

    self->_animationPath = 0;
  }

  v4.receiver = self;
  v4.super_class = MPAnimationPath;
  [(MPAnimationPath *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsTriggered:{-[MPAnimationPath isTriggered](self, "isTriggered")}];
  return v4;
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"=========================== Animation Path Description =========================\n"];
  if (self->_animationPath)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [(NSString *)v3 stringByAppendingFormat:@"\t           Has MCAnimationPath: %@\n", v4];
}

- (id)key
{
  v2 = [-[MPAnimationSupport animationPaths](self->_parentObject "animationPaths")];

  return [v2 lastObject];
}

- (void)setIsTriggered:(BOOL)triggered
{
  self->_isTriggered = triggered;
  animationPath = self->_animationPath;
  if (animationPath)
  {
    [(MCAnimationPath *)animationPath setIsTriggered:?];
  }
}

- (void)setParent:(id)parent
{
  if (parent && self->_parentObject)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A animation path may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentObject = parent;
}

- (id)animatedParent
{
  for (i = self->_parentObject; i; i = [(MPAnimationSupport *)i parent])
  {
    if (([(MPAnimationSupport *)i conformsToProtocol:&OBJC_PROTOCOL___MPAnimationSupport]& 1) != 0)
    {
      break;
    }
  }

  return i;
}

- (id)animatedKey
{
  selfCopy = self;
  for (i = self->_parentObject; i; selfCopy = [(MPAnimationPath *)selfCopy parent])
  {
    if (([(MPAnimationSupport *)i conformsToProtocol:&OBJC_PROTOCOL___MPAnimationSupport]& 1) != 0)
    {
      break;
    }

    i = [(MPAnimationSupport *)i parent];
  }

  return [(MPAnimationPath *)selfCopy key];
}

- (id)parentDocument
{
  if (!self->_parentObject)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentEffect = [(MPAnimationSupport *)self->_parentObject parentEffect];
LABEL_4:
    parentObject = [-[MPAnimationSupport parentContainer](parentEffect "parentContainer")];
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  parentObject = self->_parentObject;
  if ((isKindOfClass & 1) == 0)
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
          parentEffect = self->_parentObject;
          goto LABEL_4;
        }

        objc_opt_class();
        v9 = objc_opt_isKindOfClass();
        parentObject = self->_parentObject;
        if (v9)
        {
          goto LABEL_8;
        }

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

LABEL_8:

  return [(MPAnimationSupport *)parentObject parentDocument];
}

- (void)setAnimationPath:(id)path
{
  animationPath = self->_animationPath;
  if (animationPath)
  {

    self->_animationPath = 0;
  }

  pathCopy = path;
  self->_animationPath = pathCopy;
  if (pathCopy)
  {
    isTriggered = self->_isTriggered;

    [(MCAnimationPath *)pathCopy setIsTriggered:isTriggered];
  }
}

@end