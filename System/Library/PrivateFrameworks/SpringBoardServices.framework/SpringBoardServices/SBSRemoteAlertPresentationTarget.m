@interface SBSRemoteAlertPresentationTarget
- (SBSRemoteAlertPresentationTarget)initWithCoder:(id)a3;
- (SBSRemoteAlertPresentationTarget)initWithTargetPredicate:(id)a3;
- (SBSRemoteAlertPresentationTarget)initWithTargetProcess:(id)a3;
- (SBSRemoteAlertPresentationTarget)initWithXPCDictionary:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSRemoteAlertPresentationTarget

- (SBSRemoteAlertPresentationTarget)initWithTargetProcess:(id)a3
{
  v4 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:a3];
  v5 = [(SBSRemoteAlertPresentationTarget *)self initWithTargetPredicate:v4];

  return v5;
}

- (SBSRemoteAlertPresentationTarget)initWithTargetPredicate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSRemoteAlertPresentationTarget;
  v6 = [(SBSRemoteAlertPresentationTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetPredicate, a3);
    v7->_shouldDismissInSwitcher = 1;
  }

  return v7;
}

- (SBSRemoteAlertPresentationTarget)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  if (v5 && (self = [(SBSRemoteAlertPresentationTarget *)self initWithTargetPredicate:v5]) != 0)
  {
    [(SBSRemoteAlertPresentationTarget *)self setShouldDismissOnUILock:xpc_dictionary_get_BOOL(v4, "shouldDismissOnUILock")];
    [(SBSRemoteAlertPresentationTarget *)self setShouldDismissInSwitcher:xpc_dictionary_get_BOOL(v4, "shouldDismissInSwitcher")];
    [(SBSRemoteAlertPresentationTarget *)self setRequiresFullscreenPresentation:xpc_dictionary_get_BOOL(v4, "requiresFullscreenPresentation")];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "shouldDismissOnUILock", self->_shouldDismissOnUILock);
  xpc_dictionary_set_BOOL(xdict, "shouldDismissInSwitcher", self->_shouldDismissInSwitcher);
  xpc_dictionary_set_BOOL(xdict, "requiresFullscreenPresentation", self->_requiresFullscreenPresentation);
}

- (SBSRemoteAlertPresentationTarget)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v5 = NSStringFromClass(v10);
    v11 = objc_opt_class();
    v6 = NSStringFromClass(v11);
    [v8 raise:v9 format:{@"An %@ can only be decoded with an instance of NSXPCCoder; attempting to decode with %@", v5, v6}];
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"targetPredicate"];
  if (!v6)
  {
    goto LABEL_6;
  }

  self = [(SBSRemoteAlertPresentationTarget *)self initWithTargetPredicate:v6];
  if (!self)
  {
    goto LABEL_6;
  }

  -[SBSRemoteAlertPresentationTarget setShouldDismissOnUILock:](self, "setShouldDismissOnUILock:", [v5 decodeBoolForKey:@"shouldDismissOnUILock"]);
  -[SBSRemoteAlertPresentationTarget setShouldDismissInSwitcher:](self, "setShouldDismissInSwitcher:", [v5 decodeBoolForKey:@"shouldDismissInSwitcher"]);
  -[SBSRemoteAlertPresentationTarget setRequiresFullscreenPresentation:](self, "setRequiresFullscreenPresentation:", [v5 decodeBoolForKey:@"requiresFullscreenPresentation"]);
  v7 = self;
LABEL_7:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
    v5 = v4;
    targetPredicate = self->_targetPredicate;
    if (targetPredicate)
    {
      [v4 encodeObject:targetPredicate forKey:@"targetPredicate"];
    }

    [v5 encodeBool:self->_shouldDismissOnUILock forKey:@"shouldDismissOnUILock"];
    [v5 encodeBool:self->_shouldDismissInSwitcher forKey:@"shouldDismissInSwitcher"];
    [v5 encodeBool:self->_requiresFullscreenPresentation forKey:@"requiresFullscreenPresentation"];
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v5 = NSStringFromClass(v9);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v7 raise:v8 format:{@"An %@ can only be encoded with an instance of NSXPCCoder; attempting to encode with %@", v5, v11}];
  }
}

- (id)succinctDescription
{
  v2 = [(SBSRemoteAlertPresentationTarget *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSRemoteAlertPresentationTarget *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSRemoteAlertPresentationTarget *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_targetPredicate withName:0];
  v6 = [v4 appendBool:self->_shouldDismissOnUILock withName:@"shouldDismissOnUILock"];
  v7 = [v4 appendBool:self->_shouldDismissInSwitcher withName:@"shouldDismissInSwitcher"];
  v8 = [v4 appendBool:self->_requiresFullscreenPresentation withName:@"requiresFullscreenPresentation"];

  return v4;
}

@end