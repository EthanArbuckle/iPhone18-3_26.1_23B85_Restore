@interface SBSRemoteAlertPresentationTarget
- (SBSRemoteAlertPresentationTarget)initWithCoder:(id)coder;
- (SBSRemoteAlertPresentationTarget)initWithTargetPredicate:(id)predicate;
- (SBSRemoteAlertPresentationTarget)initWithTargetProcess:(id)process;
- (SBSRemoteAlertPresentationTarget)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSRemoteAlertPresentationTarget

- (SBSRemoteAlertPresentationTarget)initWithTargetProcess:(id)process
{
  v4 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:process];
  v5 = [(SBSRemoteAlertPresentationTarget *)self initWithTargetPredicate:v4];

  return v5;
}

- (SBSRemoteAlertPresentationTarget)initWithTargetPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = SBSRemoteAlertPresentationTarget;
  v6 = [(SBSRemoteAlertPresentationTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetPredicate, predicate);
    v7->_shouldDismissInSwitcher = 1;
  }

  return v7;
}

- (SBSRemoteAlertPresentationTarget)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  if (v5 && (self = [(SBSRemoteAlertPresentationTarget *)self initWithTargetPredicate:v5]) != 0)
  {
    [(SBSRemoteAlertPresentationTarget *)self setShouldDismissOnUILock:xpc_dictionary_get_BOOL(dictionaryCopy, "shouldDismissOnUILock")];
    [(SBSRemoteAlertPresentationTarget *)self setShouldDismissInSwitcher:xpc_dictionary_get_BOOL(dictionaryCopy, "shouldDismissInSwitcher")];
    [(SBSRemoteAlertPresentationTarget *)self setRequiresFullscreenPresentation:xpc_dictionary_get_BOOL(dictionaryCopy, "requiresFullscreenPresentation")];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "shouldDismissOnUILock", self->_shouldDismissOnUILock);
  xpc_dictionary_set_BOOL(xdict, "shouldDismissInSwitcher", self->_shouldDismissInSwitcher);
  xpc_dictionary_set_BOOL(xdict, "requiresFullscreenPresentation", self->_requiresFullscreenPresentation);
}

- (SBSRemoteAlertPresentationTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    selfCopy = 0;
    goto LABEL_7;
  }

  v5 = coderCopy;
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
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = coderCopy;
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
  succinctDescriptionBuilder = [(SBSRemoteAlertPresentationTarget *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSRemoteAlertPresentationTarget *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSRemoteAlertPresentationTarget *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_targetPredicate withName:0];
  v6 = [succinctDescriptionBuilder appendBool:self->_shouldDismissOnUILock withName:@"shouldDismissOnUILock"];
  v7 = [succinctDescriptionBuilder appendBool:self->_shouldDismissInSwitcher withName:@"shouldDismissInSwitcher"];
  v8 = [succinctDescriptionBuilder appendBool:self->_requiresFullscreenPresentation withName:@"requiresFullscreenPresentation"];

  return succinctDescriptionBuilder;
}

@end