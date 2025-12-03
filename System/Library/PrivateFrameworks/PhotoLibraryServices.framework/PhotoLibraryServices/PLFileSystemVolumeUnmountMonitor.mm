@interface PLFileSystemVolumeUnmountMonitor
- (PLFileSystemVolumeUnmountMonitor)initWithVolumeURL:(id)l;
- (void)addVolumeUnmountObserver:(id)observer;
- (void)dealloc;
- (void)removeVolumeUnmountObserver:(id)observer;
@end

@implementation PLFileSystemVolumeUnmountMonitor

- (void)removeVolumeUnmountObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  PLRunWithUnfairLock();
}

- (void)addVolumeUnmountObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  PLRunWithUnfairLock();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLFileSystemVolumeUnmountMonitor;
  [(PLFileSystemVolumeUnmountMonitor *)&v2 dealloc];
}

- (PLFileSystemVolumeUnmountMonitor)initWithVolumeURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v14.receiver = self;
  v14.super_class = PLFileSystemVolumeUnmountMonitor;
  v5 = [(PLFileSystemVolumeUnmountMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    v9 = [lCopy copy];
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