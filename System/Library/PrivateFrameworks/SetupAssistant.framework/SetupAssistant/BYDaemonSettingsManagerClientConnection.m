@interface BYDaemonSettingsManagerClientConnection
- (void)hasStashedValuesOnDisk:(id)a3;
@end

@implementation BYDaemonSettingsManagerClientConnection

- (void)hasStashedValuesOnDisk:(id)a3
{
  if (a3)
  {
    v4 = a3;
    (*(a3 + 2))(v4, +[BFFSettingsManager hasStashedValuesOnDisk]);
  }
}

@end