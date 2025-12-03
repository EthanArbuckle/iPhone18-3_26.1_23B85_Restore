@interface PLDuetActivitySchedulerUsageSnapshot
- (id)description;
@end

@implementation PLDuetActivitySchedulerUsageSnapshot

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(PLDuetActivitySchedulerUsageSnapshot *)self startDate];
  stopDate = [(PLDuetActivitySchedulerUsageSnapshot *)self stopDate];
  [(PLDuetActivitySchedulerUsageSnapshot *)self numberOfBytesUploadedCell];
  v7 = v6;
  [(PLDuetActivitySchedulerUsageSnapshot *)self numberOfBytesDownloadedCell];
  v9 = v8;
  [(PLDuetActivitySchedulerUsageSnapshot *)self numberOfBytesUploadedWiFi];
  v11 = v10;
  [(PLDuetActivitySchedulerUsageSnapshot *)self numberOfBytesDownloadedWiFi];
  v13 = v12;
  bundleID = [(PLDuetActivitySchedulerUsageSnapshot *)self bundleID];
  v15 = [v3 stringWithFormat:@"PLDuetActivitySchedulerUsageSnapshot (%@, %@, %f, %f, %f, %f, %@)", startDate, stopDate, v7, v9, v11, v13, bundleID];

  return v15;
}

@end