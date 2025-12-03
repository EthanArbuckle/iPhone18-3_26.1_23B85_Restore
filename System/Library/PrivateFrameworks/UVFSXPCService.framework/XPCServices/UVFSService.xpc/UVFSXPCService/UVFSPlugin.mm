@interface UVFSPlugin
- (UVFSPlugin)initWithFSName:(id)name andWithError:(id *)error;
- (int)loadFileSystemDyLib;
- (void)checkAndUnloadPlugin;
- (void)takeAReference;
- (void)unloadFileSystemDyLib;
@end

@implementation UVFSPlugin

- (int)loadFileSystemDyLib
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  if (self->dyLibHandle)
  {
    return 17;
  }

  v4 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
  {
    fileSystemName = self->_fileSystemName;
    *buf = 138412290;
    v16 = fileSystemName;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "loadFileSystemDylibPassingParameterDict:start:%@", buf, 0xCu);
  }

  p_fileSystemName = &self->_fileSystemName;
  if (snprintf(__str, 0x60uLL, "/System/Library/PrivateFrameworks/UserFS.framework/PlugIns/livefiles_%s.dylib", [(NSString *)self->_fileSystemName UTF8String]) > 0x5F)
  {
    return 12;
  }

  v7 = dlopen(__str, 262);
  self->dyLibHandle = v7;
  if (!v7)
  {
    if (snprintf(__str, 0x60uLL, "/AppleInternal/Library/Frameworks/UserFSInternal.framework/PlugIns/livefiles_%s.dylib", [(NSString *)*p_fileSystemName UTF8String]) > 0x5F)
    {
      return 12;
    }

    v13 = dlopen(__str, 262);
    self->dyLibHandle = v13;
    if (!v13)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001E2F8();
      }

      return 2;
    }
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E084(&self->_fileSystemName);
  }

  v8 = dlsym(self->dyLibHandle, "livefiles_plugin_init");
  if (!v8)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001E2BC();
    }

    dlclose(self->dyLibHandle);
    self->dyLibHandle = 0;
    return 2;
  }

  v8(&self->_FSOps);
  if (self->_FSOps)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E0EC(&self->_fileSystemName);
    }

    FSOps = self->_FSOps;
    if (FSOps->var1 && FSOps->var2 && FSOps->var3 && FSOps->var4 && FSOps->var5 && FSOps->var7 && FSOps->var8 && FSOps->var9 && FSOps->var10 && FSOps->var11 && FSOps->var12 && FSOps->var13 && FSOps->var14 && FSOps->var15 && FSOps->var16 && FSOps->var17 && FSOps->var18 && FSOps->var19 && FSOps->var20 && FSOps->var21 && FSOps->var22 && FSOps->var23 && FSOps->var24 && FSOps->var25 && FSOps->var30 && FSOps->var0 == &_mh_execute_header && FSOps->var32)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E154(&self->_fileSystemName);
      }

      v10 = (self->_FSOps->var1)();
      v11 = userfs_log_default;
      if (v10)
      {
        v12 = v10;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10001E1BC();
        }

        dlclose(self->dyLibHandle);
        self->dyLibHandle = 0;
        return v12;
      }

      else
      {
        result = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO);
        if (result)
        {
          v14 = *p_fileSystemName;
          *buf = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "loadFileSystemDylibPassingParameterDict:finish:%@", buf, 0xCu);
          return 0;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001E1F8(&self->_FSOps);
      }

      return 22;
    }
  }

  else
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001E280();
    }

    dlclose(self->dyLibHandle);
    self->dyLibHandle = 0;
    return 45;
  }

  return result;
}

- (UVFSPlugin)initWithFSName:(id)name andWithError:(id *)error
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = UVFSPlugin;
  v8 = [(UVFSPlugin *)&v14 init];
  if (v8)
  {
    v9 = v8;
    objc_storeStrong(&v8->_fileSystemName, name);
    loadFileSystemDyLib = [(UVFSPlugin *)v9 loadFileSystemDyLib];
    if (!loadFileSystemDyLib)
    {
      ++v9->refcount;
      if (!error)
      {
        goto LABEL_12;
      }

      v12 = 0;
LABEL_11:
      *error = v12;
      goto LABEL_12;
    }

    v11 = loadFileSystemDyLib;

    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
    v9 = 0;
    goto LABEL_11;
  }

  if (error)
  {
    v11 = 12;
    goto LABEL_7;
  }

LABEL_8:
  v9 = 0;
LABEL_12:

  return v9;
}

- (void)takeAReference
{
  refcount = self->refcount;
  if (refcount)
  {
    goto LABEL_2;
  }

  if (![(UVFSPlugin *)self loadFileSystemDyLib])
  {
    refcount = self->refcount;
LABEL_2:
    self->refcount = refcount + 1;
  }
}

- (void)unloadFileSystemDyLib
{
  (self->_FSOps->var2)();
  self->_FSOps = 0;
  dyLibHandle = self->dyLibHandle;
  if (dyLibHandle)
  {
    dlclose(dyLibHandle);
    self->dyLibHandle = 0;
  }
}

- (void)checkAndUnloadPlugin
{
  if (self->refcount)
  {
    v3 = self->refcount - 1;
    self->refcount = v3;
    if (!v3)
    {

      [(UVFSPlugin *)self unloadFileSystemDyLib];
    }
  }

  else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10001E368(self);
  }
}

@end