@interface SYShowBacklinkIndicatorCommand
- (BOOL)isActive;
- (SYShowBacklinkIndicatorCommand)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers;
- (void)invalidate;
- (void)runWithCompletion:(id)completion;
@end

@implementation SYShowBacklinkIndicatorCommand

- (SYShowBacklinkIndicatorCommand)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers
{
  identifiersCopy = identifiers;
  linkIdentifiersCopy = linkIdentifiers;
  v14.receiver = self;
  v14.super_class = SYShowBacklinkIndicatorCommand;
  v8 = [(SYShowBacklinkIndicatorCommand *)&v14 init];
  if (v8)
  {
    v9 = SYIsPhone();
    v10 = off_27856B058;
    if (!v9)
    {
      v10 = off_27856B060;
    }

    v11 = [objc_alloc(*v10) initWithDomainIdentifiers:identifiersCopy linkIdentifiers:linkIdentifiersCopy];
    impl = v8->__impl;
    v8->__impl = v11;
  }

  return v8;
}

- (BOOL)isActive
{
  _impl = [(SYShowBacklinkIndicatorCommand *)self _impl];
  isActive = [_impl isActive];

  return isActive;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  _impl = [(SYShowBacklinkIndicatorCommand *)self _impl];
  [_impl runWithCompletion:completionCopy];
}

- (void)invalidate
{
  _impl = [(SYShowBacklinkIndicatorCommand *)self _impl];
  [_impl invalidate];
}

@end