@interface SYShowBacklinkIndicatorCommand
- (BOOL)isActive;
- (SYShowBacklinkIndicatorCommand)initWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4;
- (void)invalidate;
- (void)runWithCompletion:(id)a3;
@end

@implementation SYShowBacklinkIndicatorCommand

- (SYShowBacklinkIndicatorCommand)initWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v11 = [objc_alloc(*v10) initWithDomainIdentifiers:v6 linkIdentifiers:v7];
    impl = v8->__impl;
    v8->__impl = v11;
  }

  return v8;
}

- (BOOL)isActive
{
  v2 = [(SYShowBacklinkIndicatorCommand *)self _impl];
  v3 = [v2 isActive];

  return v3;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SYShowBacklinkIndicatorCommand *)self _impl];
  [v5 runWithCompletion:v4];
}

- (void)invalidate
{
  v2 = [(SYShowBacklinkIndicatorCommand *)self _impl];
  [v2 invalidate];
}

@end