@interface UIDraggingSystemSessionInfo
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (UIDraggingSystemSessionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAuditToken:(id *)a3;
@end

@implementation UIDraggingSystemSessionInfo

- (UIDraggingSystemSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIDraggingSystemSessionInfo;
  v5 = [(UIDraggingSystemSessionInfo *)&v13 init];
  if (v5)
  {
    v5->_sessionIdentifier = [v4 decodeInt32ForKey:@"sessionIdentifier"];
    v5->_processIdentifier = [v4 decodeInt32ForKey:@"processIdentifier"];
    v5->_supportsSystemDrag = [v4 decodeBoolForKey:@"supportsSystemDrag"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
    v11 = 0u;
    v12 = 0u;
    [v6 getValue:&v11 size:32];
    v7 = v12;
    *v5->_auditToken.val = v11;
    *&v5->_auditToken.val[4] = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentSceneIdentifier"];
    persistentSceneIdentifier = v5->_persistentSceneIdentifier;
    v5->_persistentSceneIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeInt32:sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeInt32:self->_processIdentifier forKey:@"processIdentifier"];
  [v5 encodeBool:self->_supportsSystemDrag forKey:@"supportsSystemDrag"];
  v6 = [MEMORY[0x1E696B098] value:&self->_auditToken withObjCType:"{?=[8I]}"];
  [v5 encodeObject:v6 forKey:@"auditToken"];
  [v5 encodeObject:self->_persistentSceneIdentifier forKey:@"persistentSceneIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UIDraggingSystemSessionInfo *)self sessionIdentifier];
    v7 = [v5 sessionIdentifier];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_auditToken.val = *a3->var0;
  *&self->_auditToken.val[4] = v3;
}

@end