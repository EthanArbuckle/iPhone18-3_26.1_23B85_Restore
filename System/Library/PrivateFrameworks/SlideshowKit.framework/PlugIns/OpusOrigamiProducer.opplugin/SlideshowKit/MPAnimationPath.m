@interface MPAnimationPath
+ (id)animationPath;
- (MPAnimationPath)init;
- (id)animatedKey;
- (id)animatedParent;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)key;
- (id)parentDocument;
- (void)dealloc;
- (void)setAnimationPath:(id)a3;
- (void)setIsTriggered:(BOOL)a3;
- (void)setParent:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)setIsTriggered:(BOOL)a3
{
  self->_isTriggered = a3;
  animationPath = self->_animationPath;
  if (animationPath)
  {
    [(MCAnimationPath *)animationPath setIsTriggered:?];
  }
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parentObject)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A animation path may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentObject = a3;
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
  v2 = self;
  for (i = self->_parentObject; i; v2 = [(MPAnimationPath *)v2 parent])
  {
    if (([(MPAnimationSupport *)i conformsToProtocol:&OBJC_PROTOCOL___MPAnimationSupport]& 1) != 0)
    {
      break;
    }

    i = [(MPAnimationSupport *)i parent];
  }

  return [(MPAnimationPath *)v2 key];
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
    v3 = [(MPAnimationSupport *)self->_parentObject parentEffect];
LABEL_4:
    parentObject = [-[MPAnimationSupport parentContainer](v3 "parentContainer")];
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
          v3 = self->_parentObject;
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

- (void)setAnimationPath:(id)a3
{
  animationPath = self->_animationPath;
  if (animationPath)
  {

    self->_animationPath = 0;
  }

  v6 = a3;
  self->_animationPath = v6;
  if (v6)
  {
    isTriggered = self->_isTriggered;

    [(MCAnimationPath *)v6 setIsTriggered:isTriggered];
  }
}

@end