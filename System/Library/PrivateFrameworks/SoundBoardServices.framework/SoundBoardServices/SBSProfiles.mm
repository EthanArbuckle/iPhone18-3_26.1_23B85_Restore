@interface SBSProfiles
- (SBSProfiles)initWithTarget:(id)target;
- (void)dealloc;
- (void)getInstalledProfiles:(id)profiles;
@end

@implementation SBSProfiles

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSProfiles;
  [(SBSProfiles *)&v3 dealloc];
}

- (void)getInstalledProfiles:(id)profiles
{
  if (profiles)
  {
    sbProxy = self->_sbProxy;

    [(SBSProfilesImplementer *)sbProxy getInstalledProfiles:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Reply completion handler is nil", v7, 2u);
    }
  }
}

- (SBSProfiles)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = SBSProfiles;
  v5 = [(SBSProfiles *)&v9 init];
  if (v5)
  {
    if ([targetCopy isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:targetCopy];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end