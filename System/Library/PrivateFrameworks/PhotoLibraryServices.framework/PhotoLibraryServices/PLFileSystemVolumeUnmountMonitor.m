@interface PLFileSystemVolumeUnmountMonitor
- (PLFileSystemVolumeUnmountMonitor)initWithVolumeURL:(id)a3;
- (void)addVolumeUnmountObserver:(id)a3;
- (void)dealloc;
- (void)removeVolumeUnmountObserver:(id)a3;
@end

@implementation PLFileSystemVolumeUnmountMonitor

- (void)removeVolumeUnmountObserver:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

- (void)addVolumeUnmountObserver:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLFileSystemVolumeUnmountMonitor;
  [(PLFileSystemVolumeUnmountMonitor *)&v2 dealloc];
}

- (PLFileSystemVolumeUnmountMonitor)initWithVolumeURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLFileSystemVolumeUnmountMonitor;
  v5 = [(PLFileSystemVolumeUnmountMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = [v4 copy];
    volumeURL = v6->_volumeURL;
    v6->_volumeURL = v9;

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v6->_volumeURL;
      *buf = 134218242;
      v16 = v6;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Initialized Volume Unmount Monitor %p for %@", buf, 0x16u);
    }
  }

  return v6;
}

@end