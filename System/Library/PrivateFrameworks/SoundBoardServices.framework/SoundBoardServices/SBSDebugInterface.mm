@interface SBSDebugInterface
- (SBSDebugInterface)initWithTarget:(id)a3;
- (void)dealloc;
- (void)getAllDebugInfo:(id)a3;
- (void)getFeatureFlags:(id)a3;
- (void)getTuningInfo:(id)a3;
- (void)getUserDefaults:(id)a3;
@end

@implementation SBSDebugInterface

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSDebugInterface;
  [(SBSDebugInterface *)&v3 dealloc];
}

- (void)getFeatureFlags:(id)a3
{
  if (a3)
  {
    sbProxy = self->_sbProxy;

    [(SBSDebugInfoImplementer *)sbProxy getFeatureFlags:?];
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

- (void)getUserDefaults:(id)a3
{
  if (a3)
  {
    sbProxy = self->_sbProxy;

    [(SBSDebugInfoImplementer *)sbProxy getUserDefaults:?];
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

- (void)getTuningInfo:(id)a3
{
  if (a3)
  {
    sbProxy = self->_sbProxy;

    [(SBSDebugInfoImplementer *)sbProxy getTuningInfo:?];
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

- (void)getAllDebugInfo:(id)a3
{
  if (a3)
  {
    sbProxy = self->_sbProxy;

    [(SBSDebugInfoImplementer *)sbProxy getAllDebugInfo:?];
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

- (SBSDebugInterface)initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSDebugInterface;
  v5 = [(SBSDebugInterface *)&v9 init];
  if (v5)
  {
    if ([v4 isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:v4];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end