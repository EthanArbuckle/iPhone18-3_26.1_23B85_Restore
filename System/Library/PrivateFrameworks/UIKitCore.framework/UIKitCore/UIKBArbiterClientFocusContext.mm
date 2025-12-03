@interface UIKBArbiterClientFocusContext
+ (id)focusContextForSceneIdentity:(id)identity contextID:(unsigned int)d;
+ (id)focusContextForSceneIdentity:(id)identity window:(id)window;
- (BOOL)isEqual:(id)equal;
- (UIKBArbiterClientFocusContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForLog;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIKBArbiterClientFocusContext

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(UIKBArbiterClientFocusContext *)self contextID])
  {
    [v3 appendFormat:@"; contextID = %x", -[UIKBArbiterClientFocusContext contextID](self, "contextID")];
  }

  sceneIdentity = [(UIKBArbiterClientFocusContext *)self sceneIdentity];

  if (sceneIdentity)
  {
    sceneIdentity2 = [(UIKBArbiterClientFocusContext *)self sceneIdentity];
    [v3 appendFormat:@"; sceneIdentity = %@", sceneIdentity2];
  }

  layeringSceneIdentity = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];

  if (layeringSceneIdentity)
  {
    layeringSceneIdentity2 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
    [v3 appendFormat:@"; layeringSceneIdentity = %@", layeringSceneIdentity2];
  }

  [v3 appendString:@" >"];

  return v3;
}

- (id)descriptionForLog
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  contextID = [(UIKBArbiterClientFocusContext *)self contextID];
  sceneIdentity = [(UIKBArbiterClientFocusContext *)self sceneIdentity];
  v6 = [sceneIdentity description];
  v7 = _UISceneIdentityToLogString(v6);
  layeringSceneIdentity = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
  if (layeringSceneIdentity)
  {
    v9 = MEMORY[0x1E696AEC0];
    layeringSceneIdentity2 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
    v11 = [v9 stringWithFormat:@"layerSceneID:%@", layeringSceneIdentity2];
    v12 = [v3 initWithFormat:@"<contextID:%u sceneID:%@%@>", contextID, v7, v11];
  }

  else
  {
    v12 = [v3 initWithFormat:@"<contextID:%u sceneID:%@%@>", contextID, v7, &stru_1EFB14550];
  }

  return v12;
}

+ (id)focusContextForSceneIdentity:(id)identity contextID:(unsigned int)d
{
  v4 = *&d;
  identityCopy = identity;
  v6 = objc_alloc_init(UIKBArbiterClientFocusContext);
  [(UIKBArbiterClientFocusContext *)v6 setSceneIdentity:identityCopy];

  [(UIKBArbiterClientFocusContext *)v6 setContextID:v4];

  return v6;
}

+ (id)focusContextForSceneIdentity:(id)identity window:(id)window
{
  windowCopy = window;
  identityCopy = identity;
  v7 = objc_alloc_init(UIKBArbiterClientFocusContext);
  [(UIKBArbiterClientFocusContext *)v7 setSceneIdentity:identityCopy];

  if (windowCopy)
  {
    _contextId = [windowCopy _contextId];
  }

  else
  {
    _contextId = 0;
  }

  [(UIKBArbiterClientFocusContext *)v7 setContextID:_contextId];
  windowScene = [windowCopy windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  responder = [keyboardSceneDelegate responder];

  if (objc_opt_respondsToSelector())
  {
    _layeringSceneIdentity = [responder _layeringSceneIdentity];
    [(UIKBArbiterClientFocusContext *)v7 setLayeringSceneIdentity:_layeringSceneIdentity];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  contextID = self->_contextID;
  if (contextID)
  {
    [coderCopy encodeInt32:contextID forKey:@"ctxId"];
  }

  sceneIdentity = self->_sceneIdentity;
  v6 = coderCopy;
  if (sceneIdentity)
  {
    [coderCopy encodeObject:sceneIdentity forKey:@"sceneId"];
    v6 = coderCopy;
  }

  layeringSceneIdentity = self->_layeringSceneIdentity;
  if (layeringSceneIdentity)
  {
    [coderCopy encodeObject:layeringSceneIdentity forKey:@"layeringSceneId"];
    v6 = coderCopy;
  }
}

- (UIKBArbiterClientFocusContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v11.receiver = self;
  v11.super_class = UIKBArbiterClientFocusContext;
  v5 = [(UIKBArbiterClientFocusContext *)&v11 init];
  if (v5)
  {
    v5->_contextID = [coderCopy decodeInt32ForKey:@"ctxId"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneId"];
    sceneIdentity = v5->_sceneIdentity;
    v5->_sceneIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layeringSceneId"];
    layeringSceneIdentity = v5->_layeringSceneIdentity;
    v5->_layeringSceneIdentity = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UIKBArbiterClientFocusContext allocWithZone:?]];
  v4->_contextID = self->_contextID;
  v5 = [(FBSSceneIdentityToken *)self->_sceneIdentity copy];
  sceneIdentity = v4->_sceneIdentity;
  v4->_sceneIdentity = v5;

  v7 = [(FBSSceneIdentityToken *)self->_layeringSceneIdentity copy];
  layeringSceneIdentity = v4->_layeringSceneIdentity;
  v4->_layeringSceneIdentity = v7;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contextID = [(UIKBArbiterClientFocusContext *)self contextID];
      if (contextID == -[UIKBArbiterClientFocusContext contextID](v5, "contextID") && (-[UIKBArbiterClientFocusContext sceneIdentity](self, "sceneIdentity"), v7 = objc_claimAutoreleasedReturnValue(), -[UIKBArbiterClientFocusContext sceneIdentity](v5, "sceneIdentity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
      {
        layeringSceneIdentity = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
        layeringSceneIdentity2 = [(UIKBArbiterClientFocusContext *)v5 layeringSceneIdentity];
        v12 = [layeringSceneIdentity isEqual:layeringSceneIdentity2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end