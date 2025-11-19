@interface UIKBArbiterClientFocusContext
+ (id)focusContextForSceneIdentity:(id)a3 contextID:(unsigned int)a4;
+ (id)focusContextForSceneIdentity:(id)a3 window:(id)a4;
- (BOOL)isEqual:(id)a3;
- (UIKBArbiterClientFocusContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForLog;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIKBArbiterClientFocusContext

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(UIKBArbiterClientFocusContext *)self contextID])
  {
    [v3 appendFormat:@"; contextID = %x", -[UIKBArbiterClientFocusContext contextID](self, "contextID")];
  }

  v4 = [(UIKBArbiterClientFocusContext *)self sceneIdentity];

  if (v4)
  {
    v5 = [(UIKBArbiterClientFocusContext *)self sceneIdentity];
    [v3 appendFormat:@"; sceneIdentity = %@", v5];
  }

  v6 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];

  if (v6)
  {
    v7 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
    [v3 appendFormat:@"; layeringSceneIdentity = %@", v7];
  }

  [v3 appendString:@" >"];

  return v3;
}

- (id)descriptionForLog
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(UIKBArbiterClientFocusContext *)self contextID];
  v5 = [(UIKBArbiterClientFocusContext *)self sceneIdentity];
  v6 = [v5 description];
  v7 = _UISceneIdentityToLogString(v6);
  v8 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
    v11 = [v9 stringWithFormat:@"layerSceneID:%@", v10];
    v12 = [v3 initWithFormat:@"<contextID:%u sceneID:%@%@>", v4, v7, v11];
  }

  else
  {
    v12 = [v3 initWithFormat:@"<contextID:%u sceneID:%@%@>", v4, v7, &stru_1EFB14550];
  }

  return v12;
}

+ (id)focusContextForSceneIdentity:(id)a3 contextID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_alloc_init(UIKBArbiterClientFocusContext);
  [(UIKBArbiterClientFocusContext *)v6 setSceneIdentity:v5];

  [(UIKBArbiterClientFocusContext *)v6 setContextID:v4];

  return v6;
}

+ (id)focusContextForSceneIdentity:(id)a3 window:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIKBArbiterClientFocusContext);
  [(UIKBArbiterClientFocusContext *)v7 setSceneIdentity:v6];

  if (v5)
  {
    v8 = [v5 _contextId];
  }

  else
  {
    v8 = 0;
  }

  [(UIKBArbiterClientFocusContext *)v7 setContextID:v8];
  v9 = [v5 windowScene];
  v10 = [v9 keyboardSceneDelegate];
  v11 = [v10 responder];

  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 _layeringSceneIdentity];
    [(UIKBArbiterClientFocusContext *)v7 setLayeringSceneIdentity:v12];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  contextID = self->_contextID;
  if (contextID)
  {
    [v8 encodeInt32:contextID forKey:@"ctxId"];
  }

  sceneIdentity = self->_sceneIdentity;
  v6 = v8;
  if (sceneIdentity)
  {
    [v8 encodeObject:sceneIdentity forKey:@"sceneId"];
    v6 = v8;
  }

  layeringSceneIdentity = self->_layeringSceneIdentity;
  if (layeringSceneIdentity)
  {
    [v8 encodeObject:layeringSceneIdentity forKey:@"layeringSceneId"];
    v6 = v8;
  }
}

- (UIKBArbiterClientFocusContext)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v11.receiver = self;
  v11.super_class = UIKBArbiterClientFocusContext;
  v5 = [(UIKBArbiterClientFocusContext *)&v11 init];
  if (v5)
  {
    v5->_contextID = [v4 decodeInt32ForKey:@"ctxId"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneId"];
    sceneIdentity = v5->_sceneIdentity;
    v5->_sceneIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layeringSceneId"];
    layeringSceneIdentity = v5->_layeringSceneIdentity;
    v5->_layeringSceneIdentity = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIKBArbiterClientFocusContext *)self contextID];
      if (v6 == -[UIKBArbiterClientFocusContext contextID](v5, "contextID") && (-[UIKBArbiterClientFocusContext sceneIdentity](self, "sceneIdentity"), v7 = objc_claimAutoreleasedReturnValue(), -[UIKBArbiterClientFocusContext sceneIdentity](v5, "sceneIdentity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
      {
        v10 = [(UIKBArbiterClientFocusContext *)self layeringSceneIdentity];
        v11 = [(UIKBArbiterClientFocusContext *)v5 layeringSceneIdentity];
        v12 = [v10 isEqual:v11];
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