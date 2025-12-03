@interface SBKeyboardFocusTarget
+ (id)targetForFBScene:(id)scene;
+ (id)targetForSBWindowScene:(id)scene;
+ (id)targetForSceneIdentityToken:(id)token pid:(int)pid;
- (BOOL)isEqual:(id)equal;
- (_DWORD)_initWithSceneIdentityToken:(int)token pid:;
- (id)deferringTarget;
- (id)deferringToken;
- (id)focusChange;
- (unint64_t)hash;
@end

@implementation SBKeyboardFocusTarget

- (id)deferringTarget
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CF0748]);
    [v2 setPid:*(self + 16)];
    deferringToken = [(SBKeyboardFocusTarget *)self deferringToken];
    [v2 setToken:deferringToken];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)deferringToken
{
  if (self && (v1 = *(self + 8)) != 0)
  {
    v2 = MEMORY[0x277CF0650];
    stringRepresentation = [v1 stringRepresentation];
    v4 = [v2 tokenForString:stringRepresentation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_DWORD)_initWithSceneIdentityToken:(int)token pid:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = SBKeyboardFocusTarget;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      if (token <= 0)
      {
        [SBKeyboardFocusTarget _initWithSceneIdentityToken:v7 pid:?];
      }

      objc_storeStrong(v7 + 1, a2);
      self[4] = token;
    }
  }

  return self;
}

+ (id)targetForSceneIdentityToken:(id)token pid:(int)pid
{
  tokenCopy = token;
  v6 = [[SBKeyboardFocusTarget alloc] _initWithSceneIdentityToken:tokenCopy pid:pid];

  return v6;
}

+ (id)targetForFBScene:(id)scene
{
  sceneCopy = scene;
  v4 = sceneCopy;
  if (sceneCopy)
  {
    clientHandle = [sceneCopy clientHandle];
    processHandle = [clientHandle processHandle];
    v7 = [processHandle pid];

    if (v7 > 0)
    {
      identityToken = [v4 identityToken];
      v9 = [SBKeyboardFocusTarget targetForSceneIdentityToken:identityToken pid:v7];

      goto LABEL_8;
    }

    v10 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBKeyboardFocusTarget *)v4 targetForFBScene:v10];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)targetForSBWindowScene:(id)scene
{
  if (scene)
  {
    _FBSScene = [scene _FBSScene];
    identityToken = [_FBSScene identityToken];

    v6 = [self targetForSceneIdentityToken:identityToken pid:getpid()];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)focusChange
{
  v2 = [objc_alloc(MEMORY[0x277D22AC0]) initWithSceneIdentity:self->_sceneIdentityToken pid:self->_pid];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (BSEqualObjects())
    {
      v6 = v5[4] == self->_pid;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(FBSSceneIdentityToken *)self->_sceneIdentityToken hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_pid];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (void)_initWithSceneIdentityToken:(const char *)a1 pid:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"pid > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusTarget.m";
    v16 = 1024;
    v17 = 33;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)targetForFBScene:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "invalid pid for scene %{public}@, returning nil target", &v2, 0xCu);
}

@end