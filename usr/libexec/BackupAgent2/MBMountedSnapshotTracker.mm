@interface MBMountedSnapshotTracker
- (MBMountedSnapshotTracker)init;
- (void)trackSnapshotForVolume:(id)a3 snapshotName:(id)a4 mountPoint:(id)a5;
@end

@implementation MBMountedSnapshotTracker

- (MBMountedSnapshotTracker)init
{
  v8.receiver = self;
  v8.super_class = MBMountedSnapshotTracker;
  v2 = [(MBMountedSnapshotTracker *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mountedSnapshots = v2->_mountedSnapshots;
    v2->_mountedSnapshots = v3;

    v5 = objc_opt_new();
    snapshotMountPointsByVolume = v2->_snapshotMountPointsByVolume;
    v2->_snapshotMountPointsByVolume = v5;
  }

  return v2;
}

- (void)trackSnapshotForVolume:(id)a3 snapshotName:(id)a4 mountPoint:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setSnapshotName:v8];
  [v10 setVolumeMountPoint:v11];
  [v10 setSnapshotMountPoint:v9];
  [(NSMutableArray *)self->_mountedSnapshots addObject:v10];
  [(NSMutableDictionary *)self->_snapshotMountPointsByVolume objectForKeyedSubscript:v11];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_1000A0560();
  }

  [(NSMutableDictionary *)self->_snapshotMountPointsByVolume setObject:v9 forKeyedSubscript:v11];
}

@end