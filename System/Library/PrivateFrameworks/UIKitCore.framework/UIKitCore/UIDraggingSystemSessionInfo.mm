@interface UIDraggingSystemSessionInfo
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (UIDraggingSystemSessionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAuditToken:(id *)token;
@end

@implementation UIDraggingSystemSessionInfo

- (UIDraggingSystemSessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UIDraggingSystemSessionInfo;
  v5 = [(UIDraggingSystemSessionInfo *)&v13 init];
  if (v5)
  {
    v5->_sessionIdentifier = [coderCopy decodeInt32ForKey:@"sessionIdentifier"];
    v5->_processIdentifier = [coderCopy decodeInt32ForKey:@"processIdentifier"];
    v5->_supportsSystemDrag = [coderCopy decodeBoolForKey:@"supportsSystemDrag"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
    v11 = 0u;
    v12 = 0u;
    [v6 getValue:&v11 size:32];
    v7 = v12;
    *v5->_auditToken.val = v11;
    *&v5->_auditToken.val[4] = v7;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentSceneIdentifier"];
    persistentSceneIdentifier = v5->_persistentSceneIdentifier;
    v5->_persistentSceneIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeInt32:sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeInt32:self->_processIdentifier forKey:@"processIdentifier"];
  [coderCopy encodeBool:self->_supportsSystemDrag forKey:@"supportsSystemDrag"];
  v6 = [MEMORY[0x1E696B098] value:&self->_auditToken withObjCType:"{?=[8I]}"];
  [coderCopy encodeObject:v6 forKey:@"auditToken"];
  [coderCopy encodeObject:self->_persistentSceneIdentifier forKey:@"persistentSceneIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sessionIdentifier = [(UIDraggingSystemSessionInfo *)self sessionIdentifier];
    sessionIdentifier2 = [v5 sessionIdentifier];

    v8 = sessionIdentifier == sessionIdentifier2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setSessionIdentifier:{-[UIDraggingSystemSessionInfo sessionIdentifier](self, "sessionIdentifier")}];
  [v4 setProcessIdentifier:{-[UIDraggingSystemSessionInfo processIdentifier](self, "processIdentifier")}];
  [v4 setSupportsSystemDrag:{-[UIDraggingSystemSessionInfo supportsSystemDrag](self, "supportsSystemDrag")}];
  return v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_auditToken.val = *token->var0;
  *&self->_auditToken.val[4] = v3;
}

@end