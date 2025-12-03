@interface PLVolumeInfo
- (PLVolumeInfo)initWithMountPoint:(id)point;
- (PLVolumeInfo)initWithPath:(id)path;
- (unint64_t)desiredDiskThreshold;
- (unint64_t)lowDiskThreshold;
- (unint64_t)nearLowDiskThreshold;
- (unint64_t)veryLowDiskThreshold;
@end

@implementation PLVolumeInfo

- (unint64_t)veryLowDiskThreshold
{
  v15 = *MEMORY[0x1E69E9840];
  result = self->_veryLowDiskThreshold;
  if (!result)
  {
    v8 = 0;
    if (fsctl([(NSString *)self->_mountPoint fileSystemRepresentation], 0x4004681BuLL, &v8, 0))
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        volumeSize = self->_volumeSize;
        *buf = 136315650;
        v10 = v6;
        v11 = 2048;
        v12 = 524288000;
        v13 = 2048;
        v14 = volumeSize;
        _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED very low threshold %llu for volume_size: %llu", buf, 0x20u);
      }

      result = 524288000;
    }

    else
    {
      result = self->_blockSize * v8;
    }

    self->_veryLowDiskThreshold = result;
  }

  return result;
}

- (unint64_t)lowDiskThreshold
{
  v15 = *MEMORY[0x1E69E9840];
  result = self->_lowDiskThreshold;
  if (!result)
  {
    v8 = 0;
    if (fsctl([(NSString *)self->_mountPoint fileSystemRepresentation], 0x4004681CuLL, &v8, 0))
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        volumeSize = self->_volumeSize;
        *buf = 136315650;
        v10 = v6;
        v11 = 2048;
        v12 = 734003200;
        v13 = 2048;
        v14 = volumeSize;
        _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED low threshold %llu for volume_size: %llu", buf, 0x20u);
      }

      result = 734003200;
    }

    else
    {
      result = self->_blockSize * v8;
    }

    self->_lowDiskThreshold = result;
  }

  return result;
}

- (unint64_t)nearLowDiskThreshold
{
  v15 = *MEMORY[0x1E69E9840];
  result = self->_nearLowDiskThreshold;
  if (!result)
  {
    v8 = 0;
    if (fsctl([(NSString *)self->_mountPoint fileSystemRepresentation], 0x40044A12uLL, &v8, 0))
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        volumeSize = self->_volumeSize;
        *buf = 136315650;
        v10 = v6;
        v11 = 2048;
        v12 = 0x40000000;
        v13 = 2048;
        v14 = volumeSize;
        _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED near low threshold %llu for volume_size: %llu", buf, 0x20u);
      }

      result = 0x40000000;
    }

    else
    {
      result = self->_blockSize * v8;
    }

    self->_nearLowDiskThreshold = result;
  }

  return result;
}

- (unint64_t)desiredDiskThreshold
{
  v15 = *MEMORY[0x1E69E9840];
  result = self->_desiredDiskThreshold;
  if (!result)
  {
    v8 = 0;
    if (fsctl([(NSString *)self->_mountPoint fileSystemRepresentation], 0x4004681DuLL, &v8, 0))
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        volumeSize = self->_volumeSize;
        *buf = 136315650;
        v10 = v6;
        v11 = 2048;
        v12 = 1283457024;
        v13 = 2048;
        v14 = volumeSize;
        _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED desired threshold %llu for volume_size: %llu", buf, 0x20u);
      }

      result = 1283457024;
    }

    else
    {
      result = self->_blockSize * v8;
    }

    self->_desiredDiskThreshold = result;
  }

  return result;
}

- (PLVolumeInfo)initWithMountPoint:(id)point
{
  v17 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v6 = [(PLVolumeInfo *)self init];
  if (v6)
  {
    if (pointCopy)
    {
      bzero(&v16, 0x878uLL);
      if (!statfs([pointCopy fileSystemRepresentation], &v16))
      {
        f_bsize = v16.f_bsize;
        v6->_blockSize = v16.f_bsize;
        v6->_volumeSize = v16.f_blocks * f_bsize;
        objc_storeStrong(&v6->_mountPoint, point);
        goto LABEL_9;
      }

      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = __error();
        v9 = strerror(*v8);
        v12 = 138412546;
        v13 = pointCopy;
        v14 = 2080;
        v15 = v9;
        _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "unable to stat volume %@: %s", &v12, 0x16u);
      }
    }

    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (PLVolumeInfo)initWithPath:(id)path
{
  v4 = [PLDiskController mountPointForPath:path];
  v5 = [(PLVolumeInfo *)self initWithMountPoint:v4];

  return v5;
}

@end