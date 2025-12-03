@interface LIFSPreVolume
+ (id)errorForCheckOrMountReturnValue:(int)value;
+ (id)newWithDevice:(id)device forID:(unint64_t)d opsTable:(_UVFSFSOps *)table;
- (int)checkVolumeWithCreds:(_UVFSVolumeCredential *)creds;
- (int)mountVolumeWithCreds:(_UVFSVolumeCredential *)creds resultRootNode:(void *)node;
@end

@implementation LIFSPreVolume

+ (id)newWithDevice:(id)device forID:(unint64_t)d opsTable:(_UVFSFSOps *)table
{
  deviceCopy = device;
  v9 = objc_opt_new();
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 8), device);
    v10[2] = d;
    v10[3] = table;
  }

  return v10;
}

- (int)checkVolumeWithCreds:(_UVFSVolumeCredential *)creds
{
  v5 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100023198(self, v5);
  }

  p_volumeRawDevice = &self->_volumeRawDevice;
  deviceFD = [(LiveFSRawDevice *)self->_volumeRawDevice deviceFD];
  v8 = (self->_ops->var26)(deviceFD, self->_volID, creds, 1);
  v9 = userfs_log_default;
  result = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO);
  if (v8 == 45)
  {
    if (result)
    {
      v15 = *p_volumeRawDevice;
      v16 = v9;
      deviceName = [(LiveFSRawDevice *)v15 deviceName];
      v25 = 136315394;
      v26 = "[LIFSPreVolume checkVolumeWithCreds:]";
      v27 = 2112;
      v28 = deviceName;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:QUICK_CHECK:ENOTSUP:%@", &v25, 0x16u);
    }

    return 45;
  }

  else
  {
    if (!v8)
    {
      if (!result)
      {
        return result;
      }

      v11 = *p_volumeRawDevice;
      v12 = v9;
      deviceName2 = [(LiveFSRawDevice *)v11 deviceName];
      v25 = 136315394;
      v26 = "[LIFSPreVolume checkVolumeWithCreds:]";
      v27 = 2112;
      v28 = deviceName2;
      v14 = "%s:QUICK_CHECK:pass:%@";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, &v25, 0x16u);

      return 0;
    }

    if (result)
    {
      v18 = *p_volumeRawDevice;
      v19 = v9;
      deviceName3 = [(LiveFSRawDevice *)v18 deviceName];
      v25 = 136315394;
      v26 = "[LIFSPreVolume checkVolumeWithCreds:]";
      v27 = 2112;
      v28 = deviceName3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:QUICK_CHECK:failed:%@", &v25, 0x16u);
    }

    v21 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002323C(&self->_volumeRawDevice, v21);
    }

    v22 = (self->_ops->var26)(deviceFD, self->_volID, creds, 3);
    v23 = userfs_log_default;
    if (!v22)
    {
      result = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v24 = *p_volumeRawDevice;
      v12 = v23;
      deviceName2 = [(LiveFSRawDevice *)v24 deviceName];
      v25 = 136315394;
      v26 = "[LIFSPreVolume checkVolumeWithCreds:]";
      v27 = 2112;
      v28 = deviceName2;
      v14 = "%s:CHECK_AND_REPAIR:pass:%@";
      goto LABEL_20;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000232E0(&self->_volumeRawDevice, v23);
    }

    return -1;
  }
}

- (int)mountVolumeWithCreds:(_UVFSVolumeCredential *)creds resultRootNode:(void *)node
{
  deviceFD = [(LiveFSRawDevice *)self->_volumeRawDevice deviceFD];
  deviceIsReadOnly = [(LiveFSRawDevice *)self->_volumeRawDevice deviceIsReadOnly];
  v11 = 0;
  v9 = (self->_ops->var4)(deviceFD, self->_volID, deviceIsReadOnly, creds, &v11);
  if (v9)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002338C();
    }
  }

  else
  {
    *node = v11;
  }

  return v9;
}

+ (id)errorForCheckOrMountReturnValue:(int)value
{
  if (value > 0)
  {
    if (value == 1 || value == 80)
    {
      v3 = +[LIFSPreVolume errorForAuthError];
      goto LABEL_8;
    }
  }

  else if (!value)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = getNSErrorFromLiveFSErrno();
LABEL_8:

  return v3;
}

@end