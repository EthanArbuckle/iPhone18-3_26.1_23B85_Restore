@interface BYDaemonSettingsManagerClientConnection
- (void)hasStashedValuesOnDisk:(id)disk;
@end

@implementation BYDaemonSettingsManagerClientConnection

- (void)hasStashedValuesOnDisk:(id)disk
{
  if (disk)
  {
    diskCopy = disk;
    (*(disk + 2))(diskCopy, +[BFFSettingsManager hasStashedValuesOnDisk]);
  }
}

@end