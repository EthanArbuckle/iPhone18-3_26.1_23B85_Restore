@interface ISOPBSubscriptiondPetMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDayOfWeek:(id)a3;
- (int)StringAsIcloudNotificationActionLabel:(id)a3;
- (int)StringAsOBSOLETETrafficType:(id)a3;
- (int)StringAsTrafficType:(id)a3;
- (int)StringAsUserTier:(id)a3;
- (int)dayOfWeek;
- (int)icloudNotificationActionLabel;
- (int)oBSOLETETrafficType;
- (int)trafficType;
- (int)userTier;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppLaunchCount2wMedian:(BOOL)a3;
- (void)setHasAppLaunchCountSameSlot:(BOOL)a3;
- (void)setHasAvgWeeklyScreenTimeSeconds2w:(BOOL)a3;
- (void)setHasBuyLabel:(BOOL)a3;
- (void)setHasCameraAppLaunchCount1w:(BOOL)a3;
- (void)setHasCameraLaunchCountSameSlot:(BOOL)a3;
- (void)setHasDaemonVersion:(BOOL)a3;
- (void)setHasDailyScreenTimeSeconds:(BOOL)a3;
- (void)setHasDayOfWeek:(BOOL)a3;
- (void)setHasDiskStorageCapacityBytes:(BOOL)a3;
- (void)setHasDropboxAppLaunchCount1w:(BOOL)a3;
- (void)setHasFilesAppLaunchCount1w:(BOOL)a3;
- (void)setHasFilesLaunchCountSameSlot:(BOOL)a3;
- (void)setHasGoogleDriveAppLaunchCount1w:(BOOL)a3;
- (void)setHasGooglePhotoAppLaunchCount1w:(BOOL)a3;
- (void)setHasHourOfDay:(BOOL)a3;
- (void)setHasIcloudNotificationActionLabel:(BOOL)a3;
- (void)setHasIsDoNotDisturbOn:(BOOL)a3;
- (void)setHasIsDoNotDisturbOnCount2w:(BOOL)a3;
- (void)setHasIsDoNotDisturbOnSameSlot:(BOOL)a3;
- (void)setHasIsDrivingModeOn:(BOOL)a3;
- (void)setHasIsDrivingModeOnCount2w:(BOOL)a3;
- (void)setHasIsDrivingModeOnSameSlot:(BOOL)a3;
- (void)setHasIsSleepModeOn:(BOOL)a3;
- (void)setHasIsSleepModeOnCount2w:(BOOL)a3;
- (void)setHasIsSleepModeOnSameSlot:(BOOL)a3;
- (void)setHasLastOpenedAppHour24h:(BOOL)a3;
- (void)setHasMinsSinceLastCameraAppLaunch1w:(BOOL)a3;
- (void)setHasMinsSinceLastFilesAppLaunch1w:(BOOL)a3;
- (void)setHasMinsSinceLastPhotosAppLaunch1w:(BOOL)a3;
- (void)setHasMinsUntilICloudBuy:(BOOL)a3;
- (void)setHasMinsUntilICloudNotificationOpened:(BOOL)a3;
- (void)setHasMinsUntilICloudOpenedSubStream:(BOOL)a3;
- (void)setHasMlServerScore:(BOOL)a3;
- (void)setHasNumNotificationsSameSlot:(BOOL)a3;
- (void)setHasNumOpenedNotificationsSameSlot:(BOOL)a3;
- (void)setHasOBSOLETETrafficType:(BOOL)a3;
- (void)setHasOffsetMins:(BOOL)a3;
- (void)setHasOpenLabelSubStream:(BOOL)a3;
- (void)setHasOpenedICloudNotificationRatio1w:(BOOL)a3;
- (void)setHasOpenedICloudNotificationRatio2w:(BOOL)a3;
- (void)setHasOpenedNotificationCount2wMax:(BOOL)a3;
- (void)setHasOpenedNotificationCount2wMedian:(BOOL)a3;
- (void)setHasOpenedNotificationRatio1w:(BOOL)a3;
- (void)setHasOpenedNotificationRatio24h:(BOOL)a3;
- (void)setHasOsVersionMajorVersion:(BOOL)a3;
- (void)setHasOsVersionMinorVersion:(BOOL)a3;
- (void)setHasOsVersionPatchVersion:(BOOL)a3;
- (void)setHasPhotosAppLaunchCount1w:(BOOL)a3;
- (void)setHasPhotosLaunchCount2wMax:(BOOL)a3;
- (void)setHasPhotosLaunchCount2wMedian:(BOOL)a3;
- (void)setHasPhotosLaunchCountSameSlot:(BOOL)a3;
- (void)setHasTimestampMillis:(BOOL)a3;
- (void)setHasTotalNotificationCount1w:(BOOL)a3;
- (void)setHasTotalNotificationCount2wMax:(BOOL)a3;
- (void)setHasTotalNotificationCount2wMedian:(BOOL)a3;
- (void)setHasTotalOpenedNotificationCount1w:(BOOL)a3;
- (void)setHasTrafficType:(BOOL)a3;
- (void)setHasUsedDiskCapacityBytes:(BOOL)a3;
- (void)setHasUserTier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ISOPBSubscriptiondPetMessage

- (void)setHasTimestampMillis:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasHourOfDay:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasLastOpenedAppHour24h:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasIsSleepModeOn:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDoNotDisturbOn:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDrivingModeOn:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationRatio24h:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasGoogleDriveAppLaunchCount1w:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasGooglePhotoAppLaunchCount1w:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasDropboxAppLaunchCount1w:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasCameraAppLaunchCount1w:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasPhotosAppLaunchCount1w:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasFilesAppLaunchCount1w:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTotalNotificationCount1w:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTotalOpenedNotificationCount1w:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationRatio1w:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasOpenedICloudNotificationRatio1w:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasMlServerScore:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasDiskStorageCapacityBytes:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasUsedDiskCapacityBytes:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasOpenedICloudNotificationRatio2w:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (int)trafficType
{
  if ((*(&self->_has + 6) & 8) != 0)
  {
    return self->_trafficType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTrafficType:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (int)StringAsTrafficType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"REAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYNTHESIZED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDailyScreenTimeSeconds:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasAvgWeeklyScreenTimeSeconds2w:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasDaemonVersion:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (int)dayOfWeek
{
  if ((*(&self->_has + 5) & 0x80) != 0)
  {
    return self->_dayOfWeek;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDayOfWeek:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (int)StringAsDayOfWeek:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNAVAILABLE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SUNDAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MONDAY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TUESDAY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WEDNESDAY"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"THURSDAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FRIDAY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SATURDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOsVersionMajorVersion:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasOsVersionMinorVersion:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasOsVersionPatchVersion:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasOffsetMins:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (int)icloudNotificationActionLabel
{
  if ((*(&self->_has + 6) & 2) != 0)
  {
    return self->_icloudNotificationActionLabel;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIcloudNotificationActionLabel:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (int)StringAsIcloudNotificationActionLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LABEL_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CLICK"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CLEAR"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMinsUntilICloudNotificationOpened:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasAppLaunchCountSameSlot:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasCameraLaunchCountSameSlot:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasPhotosLaunchCountSameSlot:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasFilesLaunchCountSameSlot:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasIsSleepModeOnSameSlot:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDoNotDisturbOnSameSlot:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDrivingModeOnSameSlot:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasNumNotificationsSameSlot:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasNumOpenedNotificationsSameSlot:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasMinsSinceLastCameraAppLaunch1w:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasMinsSinceLastPhotosAppLaunch1w:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasMinsSinceLastFilesAppLaunch1w:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasIsSleepModeOnCount2w:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasIsDoNotDisturbOnCount2w:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasIsDrivingModeOnCount2w:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasAppLaunchCount2wMedian:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasPhotosLaunchCount2wMedian:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasPhotosLaunchCount2wMax:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTotalNotificationCount2wMedian:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasTotalNotificationCount2wMax:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationCount2wMedian:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationCount2wMax:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasBuyLabel:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasMinsUntilICloudBuy:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasOpenLabelSubStream:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasMinsUntilICloudOpenedSubStream:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (int)userTier
{
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    return self->_userTier;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUserTier:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (int)StringAsUserTier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"USERTIER_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FREE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)oBSOLETETrafficType
{
  if ((*(&self->_has + 6) & 4) != 0)
  {
    return self->_oBSOLETETrafficType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOBSOLETETrafficType:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (int)StringAsOBSOLETETrafficType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"REAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYNTHESIZED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ISOPBSubscriptiondPetMessage;
  v4 = [(ISOPBSubscriptiondPetMessage *)&v8 description];
  v5 = [(ISOPBSubscriptiondPetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestampMillis];
    [v3 setObject:v5 forKey:@"timestampMillis"];

    has = self->_has;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_hourOfDay];
    [v3 setObject:v6 forKey:@"hourOfDay"];
  }

  lastOpenedAppId24h = self->_lastOpenedAppId24h;
  if (lastOpenedAppId24h)
  {
    [v3 setObject:lastOpenedAppId24h forKey:@"lastOpenedAppId24h"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x20000) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastOpenedAppHour24h];
    [v3 setObject:v24 forKey:@"lastOpenedAppHour24h"];

    v8 = self->_has;
    if ((*&v8 & 0x400000000000000) == 0)
    {
LABEL_9:
      if ((*&v8 & 0x40000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_90;
    }
  }

  else if ((*&v8 & 0x400000000000000) == 0)
  {
    goto LABEL_9;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSleepModeOn];
  [v3 setObject:v25 forKey:@"isSleepModeOn"];

  v8 = self->_has;
  if ((*&v8 & 0x40000000000000) == 0)
  {
LABEL_10:
    if ((*&v8 & 0x100000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_91;
  }

LABEL_90:
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDoNotDisturbOn];
  [v3 setObject:v26 forKey:@"isDoNotDisturbOn"];

  v8 = self->_has;
  if ((*&v8 & 0x100000000000000) == 0)
  {
LABEL_11:
    if ((*&v8 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_92;
  }

LABEL_91:
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDrivingModeOn];
  [v3 setObject:v27 forKey:@"isDrivingModeOn"];

  v8 = self->_has;
  if ((*&v8 & 0x200000000) == 0)
  {
LABEL_12:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_93;
  }

LABEL_92:
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_openedNotificationRatio24h];
  [v3 setObject:v28 forKey:@"openedNotificationRatio24h"];

  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_93:
  v29 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_googleDriveAppLaunchCount1w];
  [v3 setObject:v29 forKey:@"googleDriveAppLaunchCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  v30 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_googlePhotoAppLaunchCount1w];
  [v3 setObject:v30 forKey:@"googlePhotoAppLaunchCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  v31 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dropboxAppLaunchCount1w];
  [v3 setObject:v31 forKey:@"dropboxAppLaunchCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x2000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_96:
  v32 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cameraAppLaunchCount1w];
  [v3 setObject:v32 forKey:@"cameraAppLaunchCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x2000000000) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_98;
  }

LABEL_97:
  v33 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_photosAppLaunchCount1w];
  [v3 setObject:v33 forKey:@"photosAppLaunchCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x40000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_99;
  }

LABEL_98:
  v34 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_filesAppLaunchCount1w];
  [v3 setObject:v34 forKey:@"filesAppLaunchCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x40000000000) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_100;
  }

LABEL_99:
  v35 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_totalNotificationCount1w];
  [v3 setObject:v35 forKey:@"totalNotificationCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x200000000000) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_101;
  }

LABEL_100:
  v36 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_totalOpenedNotificationCount1w];
  [v3 setObject:v36 forKey:@"totalOpenedNotificationCount1w"];

  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_101:
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_openedNotificationRatio1w];
  [v3 setObject:v37 forKey:@"openedNotificationRatio1w"];

  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_22:
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_openedICloudNotificationRatio1w];
    [v3 setObject:v9 forKey:@"openedICloudNotificationRatio1w"];
  }

LABEL_23:
  notificationUsageTypeTop1 = self->_notificationUsageTypeTop1;
  if (notificationUsageTypeTop1)
  {
    [v3 setObject:notificationUsageTypeTop1 forKey:@"notificationUsageTypeTop1"];
  }

  notificationUsageTypeTop2 = self->_notificationUsageTypeTop2;
  if (notificationUsageTypeTop2)
  {
    [v3 setObject:notificationUsageTypeTop2 forKey:@"notificationUsageTypeTop2"];
  }

  notificationUsageTypeTop3 = self->_notificationUsageTypeTop3;
  if (notificationUsageTypeTop3)
  {
    [v3 setObject:notificationUsageTypeTop3 forKey:@"notificationUsageTypeTop3"];
  }

  iCloudNotificationUsageTypeTop1 = self->_iCloudNotificationUsageTypeTop1;
  if (iCloudNotificationUsageTypeTop1)
  {
    [v3 setObject:iCloudNotificationUsageTypeTop1 forKey:@"iCloudNotificationUsageTypeTop1"];
  }

  iCloudNotificationUsageTypeTop2 = self->_iCloudNotificationUsageTypeTop2;
  if (iCloudNotificationUsageTypeTop2)
  {
    [v3 setObject:iCloudNotificationUsageTypeTop2 forKey:@"iCloudNotificationUsageTypeTop2"];
  }

  iCloudNotificationUsageTypeTop3 = self->_iCloudNotificationUsageTypeTop3;
  if (iCloudNotificationUsageTypeTop3)
  {
    [v3 setObject:iCloudNotificationUsageTypeTop3 forKey:@"iCloudNotificationUsageTypeTop3"];
  }

  if (*(&self->_has + 3))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mlServerScore];
    [v3 setObject:v16 forKey:@"mlServerScore"];
  }

  labelMessage = self->_labelMessage;
  if (labelMessage)
  {
    v18 = [(ISOPBSubscriptionLabelMessage *)labelMessage dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"labelMessage"];
  }

  v19 = self->_has;
  if ((*&v19 & 0x100) != 0)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_diskStorageCapacityBytes];
    [v3 setObject:v38 forKey:@"diskStorageCapacityBytes"];

    v19 = self->_has;
    if ((*&v19 & 0x400000000000) == 0)
    {
LABEL_41:
      if ((*&v19 & 0x20000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_105;
    }
  }

  else if ((*&v19 & 0x400000000000) == 0)
  {
    goto LABEL_41;
  }

  v39 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_usedDiskCapacityBytes];
  [v3 setObject:v39 forKey:@"usedDiskCapacityBytes"];

  v19 = self->_has;
  if ((*&v19 & 0x20000000) == 0)
  {
LABEL_42:
    if ((*&v19 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_106;
  }

LABEL_105:
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_openedICloudNotificationRatio2w];
  [v3 setObject:v40 forKey:@"openedICloudNotificationRatio2w"];

  v19 = self->_has;
  if ((*&v19 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((*&v19 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_112;
  }

LABEL_106:
  trafficType = self->_trafficType;
  if (trafficType >= 3)
  {
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_trafficType];
  }

  else
  {
    v42 = off_27A66B1C8[trafficType];
  }

  [v3 setObject:v42 forKey:@"trafficType"];

  v19 = self->_has;
  if ((*&v19 & 0x80) == 0)
  {
LABEL_44:
    if ((*&v19 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_113;
  }

LABEL_112:
  v45 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dailyScreenTimeSeconds];
  [v3 setObject:v45 forKey:@"dailyScreenTimeSeconds"];

  v19 = self->_has;
  if ((*&v19 & 8) == 0)
  {
LABEL_45:
    if ((*&v19 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_113:
  v46 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_avgWeeklyScreenTimeSeconds2w];
  [v3 setObject:v46 forKey:@"avgWeeklyScreenTimeSeconds2w"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_daemonVersion];
    [v3 setObject:v20 forKey:@"daemonVersion"];
  }

LABEL_47:
  oBSOLETEDayOfWeek = self->_oBSOLETEDayOfWeek;
  if (oBSOLETEDayOfWeek)
  {
    [v3 setObject:oBSOLETEDayOfWeek forKey:@"OBSOLETE_dayOfWeek"];
  }

  deviceModelName = self->_deviceModelName;
  if (deviceModelName)
  {
    [v3 setObject:deviceModelName forKey:@"deviceModelName"];
  }

  v23 = self->_has;
  if ((*&v23 & 0x800000000000) != 0)
  {
    dayOfWeek = self->_dayOfWeek;
    if (dayOfWeek >= 8)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dayOfWeek];
    }

    else
    {
      v44 = off_27A66B158[dayOfWeek];
    }

    [v3 setObject:v44 forKey:@"dayOfWeek"];

    v23 = self->_has;
    if ((*&v23 & 0x400000000) == 0)
    {
LABEL_53:
      if ((*&v23 & 0x800000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_118;
    }
  }

  else if ((*&v23 & 0x400000000) == 0)
  {
    goto LABEL_53;
  }

  v47 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_osVersionMajorVersion];
  [v3 setObject:v47 forKey:@"osVersionMajorVersion"];

  v23 = self->_has;
  if ((*&v23 & 0x800000000) == 0)
  {
LABEL_54:
    if ((*&v23 & 0x1000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_119;
  }

LABEL_118:
  v48 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_osVersionMinorVersion];
  [v3 setObject:v48 forKey:@"osVersionMinorVersion"];

  v23 = self->_has;
  if ((*&v23 & 0x1000000000) == 0)
  {
LABEL_55:
    if ((*&v23 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_120;
  }

LABEL_119:
  v49 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_osVersionPatchVersion];
  [v3 setObject:v49 forKey:@"osVersionPatchVersion"];

  v23 = self->_has;
  if ((*&v23 & 0x8000000) == 0)
  {
LABEL_56:
    if ((*&v23 & 0x2000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_121;
  }

LABEL_120:
  v50 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_offsetMins];
  [v3 setObject:v50 forKey:@"offsetMins"];

  v23 = self->_has;
  if ((*&v23 & 0x2000000000000) == 0)
  {
LABEL_57:
    if ((*&v23 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_125;
  }

LABEL_121:
  icloudNotificationActionLabel = self->_icloudNotificationActionLabel;
  if (icloudNotificationActionLabel >= 3)
  {
    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_icloudNotificationActionLabel];
  }

  else
  {
    v52 = off_27A66B198[icloudNotificationActionLabel];
  }

  [v3 setObject:v52 forKey:@"icloudNotificationActionLabel"];

  v23 = self->_has;
  if ((*&v23 & 0x400000) == 0)
  {
LABEL_58:
    if ((*&v23 & 4) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_126;
  }

LABEL_125:
  v53 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsUntilICloudNotificationOpened];
  [v3 setObject:v53 forKey:@"minsUntilICloudNotificationOpened"];

  v23 = self->_has;
  if ((*&v23 & 4) == 0)
  {
LABEL_59:
    if ((*&v23 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_127;
  }

LABEL_126:
  v54 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_appLaunchCountSameSlot];
  [v3 setObject:v54 forKey:@"appLaunchCountSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x20) == 0)
  {
LABEL_60:
    if ((*&v23 & 0x10000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_128;
  }

LABEL_127:
  v55 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cameraLaunchCountSameSlot];
  [v3 setObject:v55 forKey:@"cameraLaunchCountSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((*&v23 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_129;
  }

LABEL_128:
  v56 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_photosLaunchCountSameSlot];
  [v3 setObject:v56 forKey:@"photosLaunchCountSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x800) == 0)
  {
LABEL_62:
    if ((*&v23 & 0x800000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_130;
  }

LABEL_129:
  v57 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_filesLaunchCountSameSlot];
  [v3 setObject:v57 forKey:@"filesLaunchCountSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x800000000000000) == 0)
  {
LABEL_63:
    if ((*&v23 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_131;
  }

LABEL_130:
  v58 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSleepModeOnSameSlot];
  [v3 setObject:v58 forKey:@"isSleepModeOnSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x80000000000000) == 0)
  {
LABEL_64:
    if ((*&v23 & 0x200000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_132;
  }

LABEL_131:
  v59 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDoNotDisturbOnSameSlot];
  [v3 setObject:v59 forKey:@"isDoNotDisturbOnSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x200000000000000) == 0)
  {
LABEL_65:
    if ((*&v23 & 0x2000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_133;
  }

LABEL_132:
  v60 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDrivingModeOnSameSlot];
  [v3 setObject:v60 forKey:@"isDrivingModeOnSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x2000000) == 0)
  {
LABEL_66:
    if ((*&v23 & 0x4000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_134;
  }

LABEL_133:
  v61 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numNotificationsSameSlot];
  [v3 setObject:v61 forKey:@"numNotificationsSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x4000000) == 0)
  {
LABEL_67:
    if ((*&v23 & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_135;
  }

LABEL_134:
  v62 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numOpenedNotificationsSameSlot];
  [v3 setObject:v62 forKey:@"numOpenedNotificationsSameSlot"];

  v23 = self->_has;
  if ((*&v23 & 0x40000) == 0)
  {
LABEL_68:
    if ((*&v23 & 0x100000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_136;
  }

LABEL_135:
  v63 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsSinceLastCameraAppLaunch1w];
  [v3 setObject:v63 forKey:@"minsSinceLastCameraAppLaunch1w"];

  v23 = self->_has;
  if ((*&v23 & 0x100000) == 0)
  {
LABEL_69:
    if ((*&v23 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_137;
  }

LABEL_136:
  v64 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsSinceLastPhotosAppLaunch1w];
  [v3 setObject:v64 forKey:@"minsSinceLastPhotosAppLaunch1w"];

  v23 = self->_has;
  if ((*&v23 & 0x80000) == 0)
  {
LABEL_70:
    if ((*&v23 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_138;
  }

LABEL_137:
  v65 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsSinceLastFilesAppLaunch1w];
  [v3 setObject:v65 forKey:@"minsSinceLastFilesAppLaunch1w"];

  v23 = self->_has;
  if ((*&v23 & 0x10000) == 0)
  {
LABEL_71:
    if ((*&v23 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_139;
  }

LABEL_138:
  v66 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isSleepModeOnCount2w];
  [v3 setObject:v66 forKey:@"isSleepModeOnCount2w"];

  v23 = self->_has;
  if ((*&v23 & 0x4000) == 0)
  {
LABEL_72:
    if ((*&v23 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_140;
  }

LABEL_139:
  v67 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isDoNotDisturbOnCount2w];
  [v3 setObject:v67 forKey:@"isDoNotDisturbOnCount2w"];

  v23 = self->_has;
  if ((*&v23 & 0x8000) == 0)
  {
LABEL_73:
    if ((*&v23 & 2) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_141;
  }

LABEL_140:
  v68 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isDrivingModeOnCount2w];
  [v3 setObject:v68 forKey:@"isDrivingModeOnCount2w"];

  v23 = self->_has;
  if ((*&v23 & 2) == 0)
  {
LABEL_74:
    if ((*&v23 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_142;
  }

LABEL_141:
  v69 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_appLaunchCount2wMedian];
  [v3 setObject:v69 forKey:@"appLaunchCount2wMedian"];

  v23 = self->_has;
  if ((*&v23 & 1) == 0)
  {
LABEL_75:
    if ((*&v23 & 0x8000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_143;
  }

LABEL_142:
  v70 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_appLaunchCount2wMax];
  [v3 setObject:v70 forKey:@"appLaunchCount2wMax"];

  v23 = self->_has;
  if ((*&v23 & 0x8000000000) == 0)
  {
LABEL_76:
    if ((*&v23 & 0x4000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_144;
  }

LABEL_143:
  v71 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_photosLaunchCount2wMedian];
  [v3 setObject:v71 forKey:@"photosLaunchCount2wMedian"];

  v23 = self->_has;
  if ((*&v23 & 0x4000000000) == 0)
  {
LABEL_77:
    if ((*&v23 & 0x100000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_145;
  }

LABEL_144:
  v72 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_photosLaunchCount2wMax];
  [v3 setObject:v72 forKey:@"photosLaunchCount2wMax"];

  v23 = self->_has;
  if ((*&v23 & 0x100000000000) == 0)
  {
LABEL_78:
    if ((*&v23 & 0x80000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_146;
  }

LABEL_145:
  v73 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_totalNotificationCount2wMedian];
  [v3 setObject:v73 forKey:@"totalNotificationCount2wMedian"];

  v23 = self->_has;
  if ((*&v23 & 0x80000000000) == 0)
  {
LABEL_79:
    if ((*&v23 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_147;
  }

LABEL_146:
  v74 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_totalNotificationCount2wMax];
  [v3 setObject:v74 forKey:@"totalNotificationCount2wMax"];

  v23 = self->_has;
  if ((*&v23 & 0x80000000) == 0)
  {
LABEL_80:
    if ((*&v23 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_148;
  }

LABEL_147:
  v75 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_openedNotificationCount2wMedian];
  [v3 setObject:v75 forKey:@"openedNotificationCount2wMedian"];

  v23 = self->_has;
  if ((*&v23 & 0x40000000) == 0)
  {
LABEL_81:
    if ((*&v23 & 0x20000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_149;
  }

LABEL_148:
  v76 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_openedNotificationCount2wMax];
  [v3 setObject:v76 forKey:@"openedNotificationCount2wMax"];

  v23 = self->_has;
  if ((*&v23 & 0x20000000000000) == 0)
  {
LABEL_82:
    if ((*&v23 & 0x200000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_150;
  }

LABEL_149:
  v77 = [MEMORY[0x277CCABB0] numberWithBool:self->_buyLabel];
  [v3 setObject:v77 forKey:@"buyLabel"];

  v23 = self->_has;
  if ((*&v23 & 0x200000) == 0)
  {
LABEL_83:
    if ((*&v23 & 0x1000000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_151;
  }

LABEL_150:
  v78 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsUntilICloudBuy];
  [v3 setObject:v78 forKey:@"minsUntilICloudBuy"];

  v23 = self->_has;
  if ((*&v23 & 0x1000000000000000) == 0)
  {
LABEL_84:
    if ((*&v23 & 0x800000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_152;
  }

LABEL_151:
  v79 = [MEMORY[0x277CCABB0] numberWithBool:self->_openLabelSubStream];
  [v3 setObject:v79 forKey:@"openLabelSubStream"];

  v23 = self->_has;
  if ((*&v23 & 0x800000) == 0)
  {
LABEL_85:
    if ((*&v23 & 0x10000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_153;
  }

LABEL_152:
  v80 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsUntilICloudOpenedSubStream];
  [v3 setObject:v80 forKey:@"minsUntilICloudOpenedSubStream"];

  v23 = self->_has;
  if ((*&v23 & 0x10000000000000) == 0)
  {
LABEL_86:
    if ((*&v23 & 0x4000000000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_157;
  }

LABEL_153:
  userTier = self->_userTier;
  if (userTier >= 3)
  {
    v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_userTier];
  }

  else
  {
    v82 = off_27A66B1B0[userTier];
  }

  [v3 setObject:v82 forKey:@"userTier"];

  if ((*&self->_has & 0x4000000000000) != 0)
  {
LABEL_157:
    oBSOLETETrafficType = self->_oBSOLETETrafficType;
    if (oBSOLETETrafficType >= 3)
    {
      v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_oBSOLETETrafficType];
    }

    else
    {
      v84 = off_27A66B1C8[oBSOLETETrafficType];
    }

    [v3 setObject:v84 forKey:@"OBSOLETE_trafficType"];
  }

LABEL_161:
  v85 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v69 = a3;
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    timestampMillis = self->_timestampMillis;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    hourOfDay = self->_hourOfDay;
    PBDataWriterWriteInt32Field();
  }

  if (self->_lastOpenedAppId24h)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x20000) != 0)
  {
    lastOpenedAppHour24h = self->_lastOpenedAppHour24h;
    PBDataWriterWriteInt64Field();
    v7 = self->_has;
    if ((*&v7 & 0x400000000000000) == 0)
    {
LABEL_9:
      if ((*&v7 & 0x40000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_93;
    }
  }

  else if ((*&v7 & 0x400000000000000) == 0)
  {
    goto LABEL_9;
  }

  isSleepModeOn = self->_isSleepModeOn;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x40000000000000) == 0)
  {
LABEL_10:
    if ((*&v7 & 0x100000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_94;
  }

LABEL_93:
  isDoNotDisturbOn = self->_isDoNotDisturbOn;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x100000000000000) == 0)
  {
LABEL_11:
    if ((*&v7 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_95;
  }

LABEL_94:
  isDrivingModeOn = self->_isDrivingModeOn;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x200000000) == 0)
  {
LABEL_12:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_96;
  }

LABEL_95:
  openedNotificationRatio24h = self->_openedNotificationRatio24h;
  PBDataWriterWriteDoubleField();
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_13:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_97;
  }

LABEL_96:
  googleDriveAppLaunchCount1w = self->_googleDriveAppLaunchCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_14:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_98;
  }

LABEL_97:
  googlePhotoAppLaunchCount1w = self->_googlePhotoAppLaunchCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_99;
  }

LABEL_98:
  dropboxAppLaunchCount1w = self->_dropboxAppLaunchCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_16:
    if ((*&v7 & 0x2000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_100;
  }

LABEL_99:
  cameraAppLaunchCount1w = self->_cameraAppLaunchCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x2000000000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_101;
  }

LABEL_100:
  photosAppLaunchCount1w = self->_photosAppLaunchCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x40000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_102;
  }

LABEL_101:
  filesAppLaunchCount1w = self->_filesAppLaunchCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x40000000000) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_103;
  }

LABEL_102:
  totalNotificationCount1w = self->_totalNotificationCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x200000000000) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_104;
  }

LABEL_103:
  totalOpenedNotificationCount1w = self->_totalOpenedNotificationCount1w;
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x100000000) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_104:
  openedNotificationRatio1w = self->_openedNotificationRatio1w;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_22:
    openedICloudNotificationRatio1w = self->_openedICloudNotificationRatio1w;
    PBDataWriterWriteDoubleField();
  }

LABEL_23:
  if (self->_notificationUsageTypeTop1)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationUsageTypeTop2)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationUsageTypeTop3)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iCloudNotificationUsageTypeTop1)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iCloudNotificationUsageTypeTop2)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iCloudNotificationUsageTypeTop3)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 3))
  {
    mlServerScore = self->_mlServerScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_labelMessage)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = self->_has;
  if ((*&v10 & 0x100) != 0)
  {
    diskStorageCapacityBytes = self->_diskStorageCapacityBytes;
    PBDataWriterWriteInt64Field();
    v10 = self->_has;
    if ((*&v10 & 0x400000000000) == 0)
    {
LABEL_41:
      if ((*&v10 & 0x20000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_108;
    }
  }

  else if ((*&v10 & 0x400000000000) == 0)
  {
    goto LABEL_41;
  }

  usedDiskCapacityBytes = self->_usedDiskCapacityBytes;
  PBDataWriterWriteInt64Field();
  v10 = self->_has;
  if ((*&v10 & 0x20000000) == 0)
  {
LABEL_42:
    if ((*&v10 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_109;
  }

LABEL_108:
  openedICloudNotificationRatio2w = self->_openedICloudNotificationRatio2w;
  PBDataWriterWriteDoubleField();
  v10 = self->_has;
  if ((*&v10 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_110;
  }

LABEL_109:
  trafficType = self->_trafficType;
  PBDataWriterWriteInt32Field();
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_44:
    if ((*&v10 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_111;
  }

LABEL_110:
  dailyScreenTimeSeconds = self->_dailyScreenTimeSeconds;
  PBDataWriterWriteInt64Field();
  v10 = self->_has;
  if ((*&v10 & 8) == 0)
  {
LABEL_45:
    if ((*&v10 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_111:
  avgWeeklyScreenTimeSeconds2w = self->_avgWeeklyScreenTimeSeconds2w;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    daemonVersion = self->_daemonVersion;
    PBDataWriterWriteInt64Field();
  }

LABEL_47:
  if (self->_oBSOLETEDayOfWeek)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceModelName)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x800000000000) != 0)
  {
    dayOfWeek = self->_dayOfWeek;
    PBDataWriterWriteInt32Field();
    v12 = self->_has;
    if ((*&v12 & 0x400000000) == 0)
    {
LABEL_53:
      if ((*&v12 & 0x800000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_115;
    }
  }

  else if ((*&v12 & 0x400000000) == 0)
  {
    goto LABEL_53;
  }

  osVersionMajorVersion = self->_osVersionMajorVersion;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x800000000) == 0)
  {
LABEL_54:
    if ((*&v12 & 0x1000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_116;
  }

LABEL_115:
  osVersionMinorVersion = self->_osVersionMinorVersion;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x1000000000) == 0)
  {
LABEL_55:
    if ((*&v12 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_117;
  }

LABEL_116:
  osVersionPatchVersion = self->_osVersionPatchVersion;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x8000000) == 0)
  {
LABEL_56:
    if ((*&v12 & 0x2000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_118;
  }

LABEL_117:
  offsetMins = self->_offsetMins;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x2000000000000) == 0)
  {
LABEL_57:
    if ((*&v12 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_119;
  }

LABEL_118:
  icloudNotificationActionLabel = self->_icloudNotificationActionLabel;
  PBDataWriterWriteInt32Field();
  v12 = self->_has;
  if ((*&v12 & 0x400000) == 0)
  {
LABEL_58:
    if ((*&v12 & 4) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_120;
  }

LABEL_119:
  minsUntilICloudNotificationOpened = self->_minsUntilICloudNotificationOpened;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 4) == 0)
  {
LABEL_59:
    if ((*&v12 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_121;
  }

LABEL_120:
  appLaunchCountSameSlot = self->_appLaunchCountSameSlot;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x20) == 0)
  {
LABEL_60:
    if ((*&v12 & 0x10000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_122;
  }

LABEL_121:
  cameraLaunchCountSameSlot = self->_cameraLaunchCountSameSlot;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((*&v12 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_123;
  }

LABEL_122:
  photosLaunchCountSameSlot = self->_photosLaunchCountSameSlot;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x800) == 0)
  {
LABEL_62:
    if ((*&v12 & 0x800000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_124;
  }

LABEL_123:
  filesLaunchCountSameSlot = self->_filesLaunchCountSameSlot;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x800000000000000) == 0)
  {
LABEL_63:
    if ((*&v12 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_125;
  }

LABEL_124:
  isSleepModeOnSameSlot = self->_isSleepModeOnSameSlot;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x80000000000000) == 0)
  {
LABEL_64:
    if ((*&v12 & 0x200000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_126;
  }

LABEL_125:
  isDoNotDisturbOnSameSlot = self->_isDoNotDisturbOnSameSlot;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x200000000000000) == 0)
  {
LABEL_65:
    if ((*&v12 & 0x2000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_127;
  }

LABEL_126:
  isDrivingModeOnSameSlot = self->_isDrivingModeOnSameSlot;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x2000000) == 0)
  {
LABEL_66:
    if ((*&v12 & 0x4000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_128;
  }

LABEL_127:
  numNotificationsSameSlot = self->_numNotificationsSameSlot;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x4000000) == 0)
  {
LABEL_67:
    if ((*&v12 & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_129;
  }

LABEL_128:
  numOpenedNotificationsSameSlot = self->_numOpenedNotificationsSameSlot;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x40000) == 0)
  {
LABEL_68:
    if ((*&v12 & 0x100000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_130;
  }

LABEL_129:
  minsSinceLastCameraAppLaunch1w = self->_minsSinceLastCameraAppLaunch1w;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x100000) == 0)
  {
LABEL_69:
    if ((*&v12 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_131;
  }

LABEL_130:
  minsSinceLastPhotosAppLaunch1w = self->_minsSinceLastPhotosAppLaunch1w;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x80000) == 0)
  {
LABEL_70:
    if ((*&v12 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_132;
  }

LABEL_131:
  minsSinceLastFilesAppLaunch1w = self->_minsSinceLastFilesAppLaunch1w;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x10000) == 0)
  {
LABEL_71:
    if ((*&v12 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_133;
  }

LABEL_132:
  isSleepModeOnCount2w = self->_isSleepModeOnCount2w;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x4000) == 0)
  {
LABEL_72:
    if ((*&v12 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_134;
  }

LABEL_133:
  isDoNotDisturbOnCount2w = self->_isDoNotDisturbOnCount2w;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x8000) == 0)
  {
LABEL_73:
    if ((*&v12 & 2) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_135;
  }

LABEL_134:
  isDrivingModeOnCount2w = self->_isDrivingModeOnCount2w;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 2) == 0)
  {
LABEL_74:
    if ((*&v12 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_136;
  }

LABEL_135:
  appLaunchCount2wMedian = self->_appLaunchCount2wMedian;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 1) == 0)
  {
LABEL_75:
    if ((*&v12 & 0x8000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_137;
  }

LABEL_136:
  appLaunchCount2wMax = self->_appLaunchCount2wMax;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x8000000000) == 0)
  {
LABEL_76:
    if ((*&v12 & 0x4000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_138;
  }

LABEL_137:
  photosLaunchCount2wMedian = self->_photosLaunchCount2wMedian;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x4000000000) == 0)
  {
LABEL_77:
    if ((*&v12 & 0x100000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_139;
  }

LABEL_138:
  photosLaunchCount2wMax = self->_photosLaunchCount2wMax;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x100000000000) == 0)
  {
LABEL_78:
    if ((*&v12 & 0x80000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_140;
  }

LABEL_139:
  totalNotificationCount2wMedian = self->_totalNotificationCount2wMedian;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x80000000000) == 0)
  {
LABEL_79:
    if ((*&v12 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_141;
  }

LABEL_140:
  totalNotificationCount2wMax = self->_totalNotificationCount2wMax;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x80000000) == 0)
  {
LABEL_80:
    if ((*&v12 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_142;
  }

LABEL_141:
  openedNotificationCount2wMedian = self->_openedNotificationCount2wMedian;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x40000000) == 0)
  {
LABEL_81:
    if ((*&v12 & 0x20000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_143;
  }

LABEL_142:
  openedNotificationCount2wMax = self->_openedNotificationCount2wMax;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x20000000000000) == 0)
  {
LABEL_82:
    if ((*&v12 & 0x200000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_144;
  }

LABEL_143:
  buyLabel = self->_buyLabel;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x200000) == 0)
  {
LABEL_83:
    if ((*&v12 & 0x1000000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_145;
  }

LABEL_144:
  minsUntilICloudBuy = self->_minsUntilICloudBuy;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x1000000000000000) == 0)
  {
LABEL_84:
    if ((*&v12 & 0x800000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_146;
  }

LABEL_145:
  openLabelSubStream = self->_openLabelSubStream;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x800000) == 0)
  {
LABEL_85:
    if ((*&v12 & 0x10000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_147;
  }

LABEL_146:
  minsUntilICloudOpenedSubStream = self->_minsUntilICloudOpenedSubStream;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x10000000000000) == 0)
  {
LABEL_86:
    if ((*&v12 & 0x4000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_147:
  userTier = self->_userTier;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x4000000000000) != 0)
  {
LABEL_87:
    oBSOLETETrafficType = self->_oBSOLETETrafficType;
    PBDataWriterWriteInt32Field();
  }

LABEL_88:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    v4[42] = self->_timestampMillis;
    *(v4 + 508) |= 0x20000000000uLL;
    has = self->_has;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    *(v4 + 100) = self->_hourOfDay;
    *(v4 + 508) |= 0x1000000000000uLL;
  }

  v9 = v4;
  if (self->_lastOpenedAppId24h)
  {
    [v4 setLastOpenedAppId24h:?];
    v4 = v9;
  }

  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    v4[18] = self->_lastOpenedAppHour24h;
    *(v4 + 508) |= 0x20000uLL;
    v6 = self->_has;
    if ((*&v6 & 0x400000000000000) == 0)
    {
LABEL_9:
      if ((*&v6 & 0x40000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_93;
    }
  }

  else if ((*&v6 & 0x400000000000000) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 505) = self->_isSleepModeOn;
  *(v4 + 508) |= 0x400000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000000000) == 0)
  {
LABEL_10:
    if ((*&v6 & 0x100000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v4 + 501) = self->_isDoNotDisturbOn;
  *(v4 + 508) |= 0x40000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000000000) == 0)
  {
LABEL_11:
    if ((*&v6 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v4 + 503) = self->_isDrivingModeOn;
  *(v4 + 508) |= 0x100000000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000000) == 0)
  {
LABEL_12:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_96;
  }

LABEL_95:
  v4[34] = *&self->_openedNotificationRatio24h;
  *(v4 + 508) |= 0x200000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_97;
  }

LABEL_96:
  v4[13] = self->_googleDriveAppLaunchCount1w;
  *(v4 + 508) |= 0x1000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_98;
  }

LABEL_97:
  v4[14] = self->_googlePhotoAppLaunchCount1w;
  *(v4 + 508) |= 0x2000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_99;
  }

LABEL_98:
  v4[10] = self->_dropboxAppLaunchCount1w;
  *(v4 + 508) |= 0x200uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x2000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_100;
  }

LABEL_99:
  v4[5] = self->_cameraAppLaunchCount1w;
  *(v4 + 508) |= 0x10uLL;
  v6 = self->_has;
  if ((*&v6 & 0x2000000000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_101;
  }

LABEL_100:
  v4[38] = self->_photosAppLaunchCount1w;
  *(v4 + 508) |= 0x2000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x40000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_102;
  }

LABEL_101:
  v4[11] = self->_filesAppLaunchCount1w;
  *(v4 + 508) |= 0x400uLL;
  v6 = self->_has;
  if ((*&v6 & 0x40000000000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_103;
  }

LABEL_102:
  v4[43] = self->_totalNotificationCount1w;
  *(v4 + 508) |= 0x40000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000000000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_104;
  }

LABEL_103:
  v4[46] = self->_totalOpenedNotificationCount1w;
  *(v4 + 508) |= 0x200000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x100000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_104:
  v4[33] = *&self->_openedNotificationRatio1w;
  *(v4 + 508) |= 0x100000000uLL;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_22:
    v4[29] = *&self->_openedICloudNotificationRatio1w;
    *(v4 + 508) |= 0x10000000uLL;
  }

LABEL_23:
  if (self->_notificationUsageTypeTop1)
  {
    [v9 setNotificationUsageTypeTop1:?];
    v4 = v9;
  }

  if (self->_notificationUsageTypeTop2)
  {
    [v9 setNotificationUsageTypeTop2:?];
    v4 = v9;
  }

  if (self->_notificationUsageTypeTop3)
  {
    [v9 setNotificationUsageTypeTop3:?];
    v4 = v9;
  }

  if (self->_iCloudNotificationUsageTypeTop1)
  {
    [v9 setICloudNotificationUsageTypeTop1:?];
    v4 = v9;
  }

  if (self->_iCloudNotificationUsageTypeTop2)
  {
    [v9 setICloudNotificationUsageTypeTop2:?];
    v4 = v9;
  }

  if (self->_iCloudNotificationUsageTypeTop3)
  {
    [v9 setICloudNotificationUsageTypeTop3:?];
    v4 = v9;
  }

  if (*(&self->_has + 3))
  {
    v4[25] = *&self->_mlServerScore;
    *(v4 + 508) |= 0x1000000uLL;
  }

  if (self->_labelMessage)
  {
    [v9 setLabelMessage:?];
    v4 = v9;
  }

  v7 = self->_has;
  if ((*&v7 & 0x100) != 0)
  {
    v4[9] = self->_diskStorageCapacityBytes;
    *(v4 + 508) |= 0x100uLL;
    v7 = self->_has;
    if ((*&v7 & 0x400000000000) == 0)
    {
LABEL_41:
      if ((*&v7 & 0x20000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_108;
    }
  }

  else if ((*&v7 & 0x400000000000) == 0)
  {
    goto LABEL_41;
  }

  v4[47] = self->_usedDiskCapacityBytes;
  *(v4 + 508) |= 0x400000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x20000000) == 0)
  {
LABEL_42:
    if ((*&v7 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_109;
  }

LABEL_108:
  v4[30] = *&self->_openedICloudNotificationRatio2w;
  *(v4 + 508) |= 0x20000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v4 + 123) = self->_trafficType;
  *(v4 + 508) |= 0x8000000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_44:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_111;
  }

LABEL_110:
  v4[8] = self->_dailyScreenTimeSeconds;
  *(v4 + 508) |= 0x80uLL;
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_45:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_111:
  v4[4] = self->_avgWeeklyScreenTimeSeconds2w;
  *(v4 + 508) |= 8uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    v4[7] = self->_daemonVersion;
    *(v4 + 508) |= 0x40uLL;
  }

LABEL_47:
  if (self->_oBSOLETEDayOfWeek)
  {
    [v9 setOBSOLETEDayOfWeek:?];
    v4 = v9;
  }

  if (self->_deviceModelName)
  {
    [v9 setDeviceModelName:?];
    v4 = v9;
  }

  v8 = self->_has;
  if ((*&v8 & 0x800000000000) != 0)
  {
    *(v4 + 96) = self->_dayOfWeek;
    *(v4 + 508) |= 0x800000000000uLL;
    v8 = self->_has;
    if ((*&v8 & 0x400000000) == 0)
    {
LABEL_53:
      if ((*&v8 & 0x800000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_115;
    }
  }

  else if ((*&v8 & 0x400000000) == 0)
  {
    goto LABEL_53;
  }

  v4[35] = self->_osVersionMajorVersion;
  *(v4 + 508) |= 0x400000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000000) == 0)
  {
LABEL_54:
    if ((*&v8 & 0x1000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_116;
  }

LABEL_115:
  v4[36] = self->_osVersionMinorVersion;
  *(v4 + 508) |= 0x800000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000000000) == 0)
  {
LABEL_55:
    if ((*&v8 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_117;
  }

LABEL_116:
  v4[37] = self->_osVersionPatchVersion;
  *(v4 + 508) |= 0x1000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000000) == 0)
  {
LABEL_56:
    if ((*&v8 & 0x2000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_118;
  }

LABEL_117:
  v4[28] = self->_offsetMins;
  *(v4 + 508) |= 0x8000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000000000) == 0)
  {
LABEL_57:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(v4 + 108) = self->_icloudNotificationActionLabel;
  *(v4 + 508) |= 0x2000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_58:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_120;
  }

LABEL_119:
  v4[23] = self->_minsUntilICloudNotificationOpened;
  *(v4 + 508) |= 0x400000uLL;
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_59:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_121;
  }

LABEL_120:
  v4[3] = self->_appLaunchCountSameSlot;
  *(v4 + 508) |= 4uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_60:
    if ((*&v8 & 0x10000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_122;
  }

LABEL_121:
  v4[6] = self->_cameraLaunchCountSameSlot;
  *(v4 + 508) |= 0x20uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_123;
  }

LABEL_122:
  v4[41] = self->_photosLaunchCountSameSlot;
  *(v4 + 508) |= 0x10000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_62:
    if ((*&v8 & 0x800000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_124;
  }

LABEL_123:
  v4[12] = self->_filesLaunchCountSameSlot;
  *(v4 + 508) |= 0x800uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000000000000) == 0)
  {
LABEL_63:
    if ((*&v8 & 0x80000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(v4 + 506) = self->_isSleepModeOnSameSlot;
  *(v4 + 508) |= 0x800000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000000000000) == 0)
  {
LABEL_64:
    if ((*&v8 & 0x200000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(v4 + 502) = self->_isDoNotDisturbOnSameSlot;
  *(v4 + 508) |= 0x80000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000000000000) == 0)
  {
LABEL_65:
    if ((*&v8 & 0x2000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_127;
  }

LABEL_126:
  *(v4 + 504) = self->_isDrivingModeOnSameSlot;
  *(v4 + 508) |= 0x200000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000) == 0)
  {
LABEL_66:
    if ((*&v8 & 0x4000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_128;
  }

LABEL_127:
  v4[26] = self->_numNotificationsSameSlot;
  *(v4 + 508) |= 0x2000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000) == 0)
  {
LABEL_67:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_129;
  }

LABEL_128:
  v4[27] = self->_numOpenedNotificationsSameSlot;
  *(v4 + 508) |= 0x4000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_68:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_130;
  }

LABEL_129:
  v4[19] = self->_minsSinceLastCameraAppLaunch1w;
  *(v4 + 508) |= 0x40000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_69:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_131;
  }

LABEL_130:
  v4[21] = self->_minsSinceLastPhotosAppLaunch1w;
  *(v4 + 508) |= 0x100000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_70:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_132;
  }

LABEL_131:
  v4[20] = self->_minsSinceLastFilesAppLaunch1w;
  *(v4 + 508) |= 0x80000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_71:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_133;
  }

LABEL_132:
  v4[17] = self->_isSleepModeOnCount2w;
  *(v4 + 508) |= 0x10000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_72:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_134;
  }

LABEL_133:
  v4[15] = self->_isDoNotDisturbOnCount2w;
  *(v4 + 508) |= 0x4000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_73:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_135;
  }

LABEL_134:
  v4[16] = self->_isDrivingModeOnCount2w;
  *(v4 + 508) |= 0x8000uLL;
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_74:
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_136;
  }

LABEL_135:
  v4[2] = self->_appLaunchCount2wMedian;
  *(v4 + 508) |= 2uLL;
  v8 = self->_has;
  if ((*&v8 & 1) == 0)
  {
LABEL_75:
    if ((*&v8 & 0x8000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_137;
  }

LABEL_136:
  v4[1] = self->_appLaunchCount2wMax;
  *(v4 + 508) |= 1uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000000000) == 0)
  {
LABEL_76:
    if ((*&v8 & 0x4000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_138;
  }

LABEL_137:
  v4[40] = self->_photosLaunchCount2wMedian;
  *(v4 + 508) |= 0x8000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000000) == 0)
  {
LABEL_77:
    if ((*&v8 & 0x100000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_139;
  }

LABEL_138:
  v4[39] = self->_photosLaunchCount2wMax;
  *(v4 + 508) |= 0x4000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000000000) == 0)
  {
LABEL_78:
    if ((*&v8 & 0x80000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_140;
  }

LABEL_139:
  v4[45] = self->_totalNotificationCount2wMedian;
  *(v4 + 508) |= 0x100000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000000000) == 0)
  {
LABEL_79:
    if ((*&v8 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_141;
  }

LABEL_140:
  v4[44] = self->_totalNotificationCount2wMax;
  *(v4 + 508) |= 0x80000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000000) == 0)
  {
LABEL_80:
    if ((*&v8 & 0x40000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_142;
  }

LABEL_141:
  v4[32] = self->_openedNotificationCount2wMedian;
  *(v4 + 508) |= 0x80000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40000000) == 0)
  {
LABEL_81:
    if ((*&v8 & 0x20000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_143;
  }

LABEL_142:
  v4[31] = self->_openedNotificationCount2wMax;
  *(v4 + 508) |= 0x40000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20000000000000) == 0)
  {
LABEL_82:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v4 + 500) = self->_buyLabel;
  *(v4 + 508) |= 0x20000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_83:
    if ((*&v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_145;
  }

LABEL_144:
  v4[22] = self->_minsUntilICloudBuy;
  *(v4 + 508) |= 0x200000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000000000000000) == 0)
  {
LABEL_84:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v4 + 507) = self->_openLabelSubStream;
  *(v4 + 508) |= 0x1000000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_85:
    if ((*&v8 & 0x10000000000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_147;
  }

LABEL_146:
  v4[24] = self->_minsUntilICloudOpenedSubStream;
  *(v4 + 508) |= 0x800000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10000000000000) == 0)
  {
LABEL_86:
    if ((*&v8 & 0x4000000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_147:
  *(v4 + 124) = self->_userTier;
  *(v4 + 508) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x4000000000000) != 0)
  {
LABEL_87:
    *(v4 + 122) = self->_oBSOLETETrafficType;
    *(v4 + 508) |= 0x4000000000000uLL;
  }

LABEL_88:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    *(v5 + 336) = self->_timestampMillis;
    *(v5 + 508) |= 0x20000000000uLL;
    has = self->_has;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    *(v5 + 400) = self->_hourOfDay;
    *(v5 + 508) |= 0x1000000000000uLL;
  }

  v8 = [(NSString *)self->_lastOpenedAppId24h copyWithZone:a3];
  v9 = *(v6 + 448);
  *(v6 + 448) = v8;

  v10 = self->_has;
  if ((*&v10 & 0x20000) != 0)
  {
    *(v6 + 144) = self->_lastOpenedAppHour24h;
    *(v6 + 508) |= 0x20000uLL;
    v10 = self->_has;
    if ((*&v10 & 0x400000000000000) == 0)
    {
LABEL_7:
      if ((*&v10 & 0x40000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v10 & 0x400000000000000) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 505) = self->_isSleepModeOn;
  *(v6 + 508) |= 0x400000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000000000) == 0)
  {
LABEL_8:
    if ((*&v10 & 0x100000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v6 + 501) = self->_isDoNotDisturbOn;
  *(v6 + 508) |= 0x40000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000000000) == 0)
  {
LABEL_9:
    if ((*&v10 & 0x200000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 503) = self->_isDrivingModeOn;
  *(v6 + 508) |= 0x100000000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000000) == 0)
  {
LABEL_10:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 272) = self->_openedNotificationRatio24h;
  *(v6 + 508) |= 0x200000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000) == 0)
  {
LABEL_11:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 104) = self->_googleDriveAppLaunchCount1w;
  *(v6 + 508) |= 0x1000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_12:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v6 + 112) = self->_googlePhotoAppLaunchCount1w;
  *(v6 + 508) |= 0x2000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_13:
    if ((*&v10 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v6 + 80) = self->_dropboxAppLaunchCount1w;
  *(v6 + 508) |= 0x200uLL;
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_14:
    if ((*&v10 & 0x2000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v6 + 40) = self->_cameraAppLaunchCount1w;
  *(v6 + 508) |= 0x10uLL;
  v10 = self->_has;
  if ((*&v10 & 0x2000000000) == 0)
  {
LABEL_15:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v6 + 304) = self->_photosAppLaunchCount1w;
  *(v6 + 508) |= 0x2000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_16:
    if ((*&v10 & 0x40000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 88) = self->_filesAppLaunchCount1w;
  *(v6 + 508) |= 0x400uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000000) == 0)
  {
LABEL_17:
    if ((*&v10 & 0x200000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 344) = self->_totalNotificationCount1w;
  *(v6 + 508) |= 0x40000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x200000000000) == 0)
  {
LABEL_18:
    if ((*&v10 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 368) = self->_totalOpenedNotificationCount1w;
  *(v6 + 508) |= 0x200000000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000000) == 0)
  {
LABEL_19:
    if ((*&v10 & 0x10000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_82:
  *(v6 + 264) = self->_openedNotificationRatio1w;
  *(v6 + 508) |= 0x100000000uLL;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_20:
    *(v6 + 232) = self->_openedICloudNotificationRatio1w;
    *(v6 + 508) |= 0x10000000uLL;
  }

LABEL_21:
  v11 = [(NSString *)self->_notificationUsageTypeTop1 copyWithZone:a3];
  v12 = *(v6 + 456);
  *(v6 + 456) = v11;

  v13 = [(NSString *)self->_notificationUsageTypeTop2 copyWithZone:a3];
  v14 = *(v6 + 464);
  *(v6 + 464) = v13;

  v15 = [(NSString *)self->_notificationUsageTypeTop3 copyWithZone:a3];
  v16 = *(v6 + 472);
  *(v6 + 472) = v15;

  v17 = [(NSString *)self->_iCloudNotificationUsageTypeTop1 copyWithZone:a3];
  v18 = *(v6 + 408);
  *(v6 + 408) = v17;

  v19 = [(NSString *)self->_iCloudNotificationUsageTypeTop2 copyWithZone:a3];
  v20 = *(v6 + 416);
  *(v6 + 416) = v19;

  v21 = [(NSString *)self->_iCloudNotificationUsageTypeTop3 copyWithZone:a3];
  v22 = *(v6 + 424);
  *(v6 + 424) = v21;

  if (*(&self->_has + 3))
  {
    *(v6 + 200) = self->_mlServerScore;
    *(v6 + 508) |= 0x1000000uLL;
  }

  v23 = [(ISOPBSubscriptionLabelMessage *)self->_labelMessage copyWithZone:a3];
  v24 = *(v6 + 440);
  *(v6 + 440) = v23;

  v25 = self->_has;
  if ((*&v25 & 0x100) != 0)
  {
    *(v6 + 72) = self->_diskStorageCapacityBytes;
    *(v6 + 508) |= 0x100uLL;
    v25 = self->_has;
    if ((*&v25 & 0x400000000000) == 0)
    {
LABEL_25:
      if ((*&v25 & 0x20000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v25 & 0x400000000000) == 0)
  {
    goto LABEL_25;
  }

  *(v6 + 376) = self->_usedDiskCapacityBytes;
  *(v6 + 508) |= 0x400000000000uLL;
  v25 = self->_has;
  if ((*&v25 & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&v25 & 0x8000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v6 + 240) = self->_openedICloudNotificationRatio2w;
  *(v6 + 508) |= 0x20000000uLL;
  v25 = self->_has;
  if ((*&v25 & 0x8000000000000) == 0)
  {
LABEL_27:
    if ((*&v25 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v6 + 492) = self->_trafficType;
  *(v6 + 508) |= 0x8000000000000uLL;
  v25 = self->_has;
  if ((*&v25 & 0x80) == 0)
  {
LABEL_28:
    if ((*&v25 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v6 + 64) = self->_dailyScreenTimeSeconds;
  *(v6 + 508) |= 0x80uLL;
  v25 = self->_has;
  if ((*&v25 & 8) == 0)
  {
LABEL_29:
    if ((*&v25 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_89:
  *(v6 + 32) = self->_avgWeeklyScreenTimeSeconds2w;
  *(v6 + 508) |= 8uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_30:
    *(v6 + 56) = self->_daemonVersion;
    *(v6 + 508) |= 0x40uLL;
  }

LABEL_31:
  v26 = [(NSString *)self->_oBSOLETEDayOfWeek copyWithZone:a3];
  v27 = *(v6 + 480);
  *(v6 + 480) = v26;

  v28 = [(NSString *)self->_deviceModelName copyWithZone:a3];
  v29 = *(v6 + 392);
  *(v6 + 392) = v28;

  v30 = self->_has;
  if ((*&v30 & 0x800000000000) != 0)
  {
    *(v6 + 384) = self->_dayOfWeek;
    *(v6 + 508) |= 0x800000000000uLL;
    v30 = self->_has;
    if ((*&v30 & 0x400000000) == 0)
    {
LABEL_33:
      if ((*&v30 & 0x800000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_93;
    }
  }

  else if ((*&v30 & 0x400000000) == 0)
  {
    goto LABEL_33;
  }

  *(v6 + 280) = self->_osVersionMajorVersion;
  *(v6 + 508) |= 0x400000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x800000000) == 0)
  {
LABEL_34:
    if ((*&v30 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 288) = self->_osVersionMinorVersion;
  *(v6 + 508) |= 0x800000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((*&v30 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 296) = self->_osVersionPatchVersion;
  *(v6 + 508) |= 0x1000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&v30 & 0x2000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 224) = self->_offsetMins;
  *(v6 + 508) |= 0x8000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x2000000000000) == 0)
  {
LABEL_37:
    if ((*&v30 & 0x400000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v6 + 432) = self->_icloudNotificationActionLabel;
  *(v6 + 508) |= 0x2000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x400000) == 0)
  {
LABEL_38:
    if ((*&v30 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v6 + 184) = self->_minsUntilICloudNotificationOpened;
  *(v6 + 508) |= 0x400000uLL;
  v30 = self->_has;
  if ((*&v30 & 4) == 0)
  {
LABEL_39:
    if ((*&v30 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v6 + 24) = self->_appLaunchCountSameSlot;
  *(v6 + 508) |= 4uLL;
  v30 = self->_has;
  if ((*&v30 & 0x20) == 0)
  {
LABEL_40:
    if ((*&v30 & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v6 + 48) = self->_cameraLaunchCountSameSlot;
  *(v6 + 508) |= 0x20uLL;
  v30 = self->_has;
  if ((*&v30 & 0x10000000000) == 0)
  {
LABEL_41:
    if ((*&v30 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v6 + 328) = self->_photosLaunchCountSameSlot;
  *(v6 + 508) |= 0x10000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x800) == 0)
  {
LABEL_42:
    if ((*&v30 & 0x800000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v6 + 96) = self->_filesLaunchCountSameSlot;
  *(v6 + 508) |= 0x800uLL;
  v30 = self->_has;
  if ((*&v30 & 0x800000000000000) == 0)
  {
LABEL_43:
    if ((*&v30 & 0x80000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v6 + 506) = self->_isSleepModeOnSameSlot;
  *(v6 + 508) |= 0x800000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x80000000000000) == 0)
  {
LABEL_44:
    if ((*&v30 & 0x200000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v6 + 502) = self->_isDoNotDisturbOnSameSlot;
  *(v6 + 508) |= 0x80000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x200000000000000) == 0)
  {
LABEL_45:
    if ((*&v30 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v6 + 504) = self->_isDrivingModeOnSameSlot;
  *(v6 + 508) |= 0x200000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x2000000) == 0)
  {
LABEL_46:
    if ((*&v30 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v6 + 208) = self->_numNotificationsSameSlot;
  *(v6 + 508) |= 0x2000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x4000000) == 0)
  {
LABEL_47:
    if ((*&v30 & 0x40000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v6 + 216) = self->_numOpenedNotificationsSameSlot;
  *(v6 + 508) |= 0x4000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x40000) == 0)
  {
LABEL_48:
    if ((*&v30 & 0x100000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v6 + 152) = self->_minsSinceLastCameraAppLaunch1w;
  *(v6 + 508) |= 0x40000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x100000) == 0)
  {
LABEL_49:
    if ((*&v30 & 0x80000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v6 + 168) = self->_minsSinceLastPhotosAppLaunch1w;
  *(v6 + 508) |= 0x100000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x80000) == 0)
  {
LABEL_50:
    if ((*&v30 & 0x10000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v6 + 160) = self->_minsSinceLastFilesAppLaunch1w;
  *(v6 + 508) |= 0x80000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x10000) == 0)
  {
LABEL_51:
    if ((*&v30 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v6 + 136) = self->_isSleepModeOnCount2w;
  *(v6 + 508) |= 0x10000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x4000) == 0)
  {
LABEL_52:
    if ((*&v30 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v6 + 120) = self->_isDoNotDisturbOnCount2w;
  *(v6 + 508) |= 0x4000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x8000) == 0)
  {
LABEL_53:
    if ((*&v30 & 2) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v6 + 128) = self->_isDrivingModeOnCount2w;
  *(v6 + 508) |= 0x8000uLL;
  v30 = self->_has;
  if ((*&v30 & 2) == 0)
  {
LABEL_54:
    if ((*&v30 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v6 + 16) = self->_appLaunchCount2wMedian;
  *(v6 + 508) |= 2uLL;
  v30 = self->_has;
  if ((*&v30 & 1) == 0)
  {
LABEL_55:
    if ((*&v30 & 0x8000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v6 + 8) = self->_appLaunchCount2wMax;
  *(v6 + 508) |= 1uLL;
  v30 = self->_has;
  if ((*&v30 & 0x8000000000) == 0)
  {
LABEL_56:
    if ((*&v30 & 0x4000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(v6 + 320) = self->_photosLaunchCount2wMedian;
  *(v6 + 508) |= 0x8000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x4000000000) == 0)
  {
LABEL_57:
    if ((*&v30 & 0x100000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v6 + 312) = self->_photosLaunchCount2wMax;
  *(v6 + 508) |= 0x4000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x100000000000) == 0)
  {
LABEL_58:
    if ((*&v30 & 0x80000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v6 + 360) = self->_totalNotificationCount2wMedian;
  *(v6 + 508) |= 0x100000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x80000000000) == 0)
  {
LABEL_59:
    if ((*&v30 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(v6 + 352) = self->_totalNotificationCount2wMax;
  *(v6 + 508) |= 0x80000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x80000000) == 0)
  {
LABEL_60:
    if ((*&v30 & 0x40000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(v6 + 256) = self->_openedNotificationCount2wMedian;
  *(v6 + 508) |= 0x80000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x40000000) == 0)
  {
LABEL_61:
    if ((*&v30 & 0x20000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(v6 + 248) = self->_openedNotificationCount2wMax;
  *(v6 + 508) |= 0x40000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x20000000000000) == 0)
  {
LABEL_62:
    if ((*&v30 & 0x200000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(v6 + 500) = self->_buyLabel;
  *(v6 + 508) |= 0x20000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x200000) == 0)
  {
LABEL_63:
    if ((*&v30 & 0x1000000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v6 + 176) = self->_minsUntilICloudBuy;
  *(v6 + 508) |= 0x200000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x1000000000000000) == 0)
  {
LABEL_64:
    if ((*&v30 & 0x800000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(v6 + 507) = self->_openLabelSubStream;
  *(v6 + 508) |= 0x1000000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x800000) == 0)
  {
LABEL_65:
    if ((*&v30 & 0x10000000000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_125:
    *(v6 + 496) = self->_userTier;
    *(v6 + 508) |= 0x10000000000000uLL;
    if ((*&self->_has & 0x4000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_124:
  *(v6 + 192) = self->_minsUntilICloudOpenedSubStream;
  *(v6 + 508) |= 0x800000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x10000000000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_66:
  if ((*&v30 & 0x4000000000000) != 0)
  {
LABEL_67:
    *(v6 + 488) = self->_oBSOLETETrafficType;
    *(v6 + 508) |= 0x4000000000000uLL;
  }

LABEL_68:
  v31 = v6;

  return v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_353;
  }

  has = self->_has;
  v6 = *(v4 + 508);
  if ((*&has & 0x20000000000) != 0)
  {
    if ((v6 & 0x20000000000) == 0 || self->_timestampMillis != *(v4 + 42))
    {
      goto LABEL_353;
    }
  }

  else if ((v6 & 0x20000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v6 & 0x1000000000000) == 0 || self->_hourOfDay != *(v4 + 100))
    {
      goto LABEL_353;
    }
  }

  else if ((v6 & 0x1000000000000) != 0)
  {
    goto LABEL_353;
  }

  lastOpenedAppId24h = self->_lastOpenedAppId24h;
  if (lastOpenedAppId24h | *(v4 + 56))
  {
    if (![(NSString *)lastOpenedAppId24h isEqual:?])
    {
      goto LABEL_353;
    }

    has = self->_has;
  }

  v8 = *(v4 + 508);
  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_lastOpenedAppHour24h != *(v4 + 18))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x400000000000000) != 0)
  {
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_353;
    }

    v9 = v4[505];
    if (self->_isSleepModeOn)
    {
      if ((v4[505] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[505])
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x400000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x40000000000000) != 0)
  {
    if ((v8 & 0x40000000000000) == 0)
    {
      goto LABEL_353;
    }

    v10 = v4[501];
    if (self->_isDoNotDisturbOn)
    {
      if ((v4[501] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[501])
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x40000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x100000000000000) != 0)
  {
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_353;
    }

    v11 = v4[503];
    if (self->_isDrivingModeOn)
    {
      if ((v4[503] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[503])
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x100000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v8 & 0x200000000) == 0 || self->_openedNotificationRatio24h != *(v4 + 34))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x200000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_googleDriveAppLaunchCount1w != *(v4 + 13))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_googlePhotoAppLaunchCount1w != *(v4 + 14))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_dropboxAppLaunchCount1w != *(v4 + 10))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_cameraAppLaunchCount1w != *(v4 + 5))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v8 & 0x2000000000) == 0 || self->_photosAppLaunchCount1w != *(v4 + 38))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x2000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_filesAppLaunchCount1w != *(v4 + 11))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v8 & 0x40000000000) == 0 || self->_totalNotificationCount1w != *(v4 + 43))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x40000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v8 & 0x200000000000) == 0 || self->_totalOpenedNotificationCount1w != *(v4 + 46))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x200000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) == 0 || self->_openedNotificationRatio1w != *(v4 + 33))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0 || self->_openedICloudNotificationRatio1w != *(v4 + 29))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_353;
  }

  notificationUsageTypeTop1 = self->_notificationUsageTypeTop1;
  if (notificationUsageTypeTop1 | *(v4 + 57) && ![(NSString *)notificationUsageTypeTop1 isEqual:?])
  {
    goto LABEL_353;
  }

  notificationUsageTypeTop2 = self->_notificationUsageTypeTop2;
  if (notificationUsageTypeTop2 | *(v4 + 58))
  {
    if (![(NSString *)notificationUsageTypeTop2 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  notificationUsageTypeTop3 = self->_notificationUsageTypeTop3;
  if (notificationUsageTypeTop3 | *(v4 + 59))
  {
    if (![(NSString *)notificationUsageTypeTop3 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  iCloudNotificationUsageTypeTop1 = self->_iCloudNotificationUsageTypeTop1;
  if (iCloudNotificationUsageTypeTop1 | *(v4 + 51))
  {
    if (![(NSString *)iCloudNotificationUsageTypeTop1 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  iCloudNotificationUsageTypeTop2 = self->_iCloudNotificationUsageTypeTop2;
  if (iCloudNotificationUsageTypeTop2 | *(v4 + 52))
  {
    if (![(NSString *)iCloudNotificationUsageTypeTop2 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  iCloudNotificationUsageTypeTop3 = self->_iCloudNotificationUsageTypeTop3;
  if (iCloudNotificationUsageTypeTop3 | *(v4 + 53))
  {
    if (![(NSString *)iCloudNotificationUsageTypeTop3 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  v18 = self->_has;
  v19 = *(v4 + 508);
  if ((*&v18 & 0x1000000) != 0)
  {
    if ((v19 & 0x1000000) == 0 || self->_mlServerScore != *(v4 + 25))
    {
      goto LABEL_353;
    }
  }

  else if ((v19 & 0x1000000) != 0)
  {
    goto LABEL_353;
  }

  labelMessage = self->_labelMessage;
  if (labelMessage | *(v4 + 55))
  {
    if (![(ISOPBSubscriptionLabelMessage *)labelMessage isEqual:?])
    {
      goto LABEL_353;
    }

    v18 = self->_has;
  }

  v21 = *(v4 + 508);
  if ((*&v18 & 0x100) != 0)
  {
    if ((v21 & 0x100) == 0 || self->_diskStorageCapacityBytes != *(v4 + 9))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x100) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v18 & 0x400000000000) != 0)
  {
    if ((v21 & 0x400000000000) == 0 || self->_usedDiskCapacityBytes != *(v4 + 47))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x400000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v18 & 0x20000000) != 0)
  {
    if ((v21 & 0x20000000) == 0 || self->_openedICloudNotificationRatio2w != *(v4 + 30))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x20000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v18 & 0x8000000000000) != 0)
  {
    if ((v21 & 0x8000000000000) == 0 || self->_trafficType != *(v4 + 123))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x8000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v18 & 0x80) != 0)
  {
    if ((v21 & 0x80) == 0 || self->_dailyScreenTimeSeconds != *(v4 + 8))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x80) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v18 & 8) != 0)
  {
    if ((v21 & 8) == 0 || self->_avgWeeklyScreenTimeSeconds2w != *(v4 + 4))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 8) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v18 & 0x40) != 0)
  {
    if ((v21 & 0x40) == 0 || self->_daemonVersion != *(v4 + 7))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x40) != 0)
  {
    goto LABEL_353;
  }

  oBSOLETEDayOfWeek = self->_oBSOLETEDayOfWeek;
  if (oBSOLETEDayOfWeek | *(v4 + 60) && ![(NSString *)oBSOLETEDayOfWeek isEqual:?])
  {
    goto LABEL_353;
  }

  deviceModelName = self->_deviceModelName;
  if (deviceModelName | *(v4 + 49))
  {
    if (![(NSString *)deviceModelName isEqual:?])
    {
      goto LABEL_353;
    }
  }

  v24 = self->_has;
  v25 = *(v4 + 508);
  if ((*&v24 & 0x800000000000) != 0)
  {
    if ((v25 & 0x800000000000) == 0 || self->_dayOfWeek != *(v4 + 96))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x800000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x400000000) != 0)
  {
    if ((v25 & 0x400000000) == 0 || self->_osVersionMajorVersion != *(v4 + 35))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x400000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x800000000) != 0)
  {
    if ((v25 & 0x800000000) == 0 || self->_osVersionMinorVersion != *(v4 + 36))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x800000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x1000000000) != 0)
  {
    if ((v25 & 0x1000000000) == 0 || self->_osVersionPatchVersion != *(v4 + 37))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x1000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x8000000) != 0)
  {
    if ((v25 & 0x8000000) == 0 || self->_offsetMins != *(v4 + 28))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x8000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x2000000000000) != 0)
  {
    if ((v25 & 0x2000000000000) == 0 || self->_icloudNotificationActionLabel != *(v4 + 108))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x2000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x400000) != 0)
  {
    if ((v25 & 0x400000) == 0 || self->_minsUntilICloudNotificationOpened != *(v4 + 23))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x400000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 4) != 0)
  {
    if ((v25 & 4) == 0 || self->_appLaunchCountSameSlot != *(v4 + 3))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 4) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x20) != 0)
  {
    if ((v25 & 0x20) == 0 || self->_cameraLaunchCountSameSlot != *(v4 + 6))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x20) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x10000000000) != 0)
  {
    if ((v25 & 0x10000000000) == 0 || self->_photosLaunchCountSameSlot != *(v4 + 41))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x10000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x800) != 0)
  {
    if ((v25 & 0x800) == 0 || self->_filesLaunchCountSameSlot != *(v4 + 12))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x800) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x800000000000000) != 0)
  {
    if ((v25 & 0x800000000000000) == 0)
    {
      goto LABEL_353;
    }

    v26 = v4[506];
    if (self->_isSleepModeOnSameSlot)
    {
      if ((v4[506] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[506])
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x800000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x80000000000000) != 0)
  {
    if ((v25 & 0x80000000000000) == 0)
    {
      goto LABEL_353;
    }

    v27 = v4[502];
    if (self->_isDoNotDisturbOnSameSlot)
    {
      if ((v4[502] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[502])
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x80000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x200000000000000) != 0)
  {
    if ((v25 & 0x200000000000000) == 0)
    {
      goto LABEL_353;
    }

    v28 = v4[504];
    if (self->_isDrivingModeOnSameSlot)
    {
      if ((v4[504] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[504])
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x200000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x2000000) != 0)
  {
    if ((v25 & 0x2000000) == 0 || self->_numNotificationsSameSlot != *(v4 + 26))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x2000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x4000000) != 0)
  {
    if ((v25 & 0x4000000) == 0 || self->_numOpenedNotificationsSameSlot != *(v4 + 27))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x4000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x40000) != 0)
  {
    if ((v25 & 0x40000) == 0 || self->_minsSinceLastCameraAppLaunch1w != *(v4 + 19))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x40000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x100000) != 0)
  {
    if ((v25 & 0x100000) == 0 || self->_minsSinceLastPhotosAppLaunch1w != *(v4 + 21))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x100000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x80000) != 0)
  {
    if ((v25 & 0x80000) == 0 || self->_minsSinceLastFilesAppLaunch1w != *(v4 + 20))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x80000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x10000) != 0)
  {
    if ((v25 & 0x10000) == 0 || self->_isSleepModeOnCount2w != *(v4 + 17))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x10000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x4000) != 0)
  {
    if ((v25 & 0x4000) == 0 || self->_isDoNotDisturbOnCount2w != *(v4 + 15))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x4000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x8000) != 0)
  {
    if ((v25 & 0x8000) == 0 || self->_isDrivingModeOnCount2w != *(v4 + 16))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x8000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 2) != 0)
  {
    if ((v25 & 2) == 0 || self->_appLaunchCount2wMedian != *(v4 + 2))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 2) != 0)
  {
    goto LABEL_353;
  }

  if (*&v24)
  {
    if ((v25 & 1) == 0 || self->_appLaunchCount2wMax != *(v4 + 1))
    {
      goto LABEL_353;
    }
  }

  else if (v25)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x8000000000) != 0)
  {
    if ((v25 & 0x8000000000) == 0 || self->_photosLaunchCount2wMedian != *(v4 + 40))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x8000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x4000000000) != 0)
  {
    if ((v25 & 0x4000000000) == 0 || self->_photosLaunchCount2wMax != *(v4 + 39))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x4000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x100000000000) != 0)
  {
    if ((v25 & 0x100000000000) == 0 || self->_totalNotificationCount2wMedian != *(v4 + 45))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x100000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x80000000000) != 0)
  {
    if ((v25 & 0x80000000000) == 0 || self->_totalNotificationCount2wMax != *(v4 + 44))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x80000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x80000000) != 0)
  {
    if ((v25 & 0x80000000) == 0 || self->_openedNotificationCount2wMedian != *(v4 + 32))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x40000000) != 0)
  {
    if ((v25 & 0x40000000) == 0 || self->_openedNotificationCount2wMax != *(v4 + 31))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x20000000000000) != 0)
  {
    if ((v25 & 0x20000000000000) == 0)
    {
      goto LABEL_353;
    }

    v29 = v4[500];
    if (self->_buyLabel)
    {
      if ((v4[500] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[500])
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x20000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x200000) != 0)
  {
    if ((v25 & 0x200000) == 0 || self->_minsUntilICloudBuy != *(v4 + 22))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x200000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x1000000000000000) != 0)
  {
    if ((v25 & 0x1000000000000000) != 0)
    {
      v30 = v4[507];
      if (self->_openLabelSubStream)
      {
        if ((v4[507] & 1) == 0)
        {
          goto LABEL_353;
        }

        goto LABEL_338;
      }

      if ((v4[507] & 1) == 0)
      {
        goto LABEL_338;
      }
    }

LABEL_353:
    v31 = 0;
    goto LABEL_354;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    goto LABEL_353;
  }

LABEL_338:
  if ((*&v24 & 0x800000) != 0)
  {
    if ((v25 & 0x800000) == 0 || self->_minsUntilICloudOpenedSubStream != *(v4 + 24))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x800000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x10000000000000) != 0)
  {
    if ((v25 & 0x10000000000000) == 0 || self->_userTier != *(v4 + 124))
    {
      goto LABEL_353;
    }
  }

  else if ((v25 & 0x10000000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&v24 & 0x4000000000000) != 0)
  {
    if ((v25 & 0x4000000000000) == 0 || self->_oBSOLETETrafficType != *(v4 + 122))
    {
      goto LABEL_353;
    }

    v31 = 1;
  }

  else
  {
    v31 = (v25 & 0x4000000000000) == 0;
  }

LABEL_354:

  return v31;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    v104 = 2654435761 * self->_timestampMillis;
    if ((*&has & 0x1000000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = 0;
    if ((*&has & 0x1000000000000) != 0)
    {
LABEL_3:
      v103 = 2654435761 * self->_hourOfDay;
      goto LABEL_6;
    }
  }

  v103 = 0;
LABEL_6:
  v102 = [(NSString *)self->_lastOpenedAppId24h hash];
  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    v101 = 2654435761 * self->_lastOpenedAppHour24h;
    if ((*&v6 & 0x400000000000000) != 0)
    {
LABEL_8:
      v100 = 2654435761 * self->_isSleepModeOn;
      if ((*&v6 & 0x40000000000000) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v101 = 0;
    if ((*&v6 & 0x400000000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  v100 = 0;
  if ((*&v6 & 0x40000000000000) != 0)
  {
LABEL_9:
    v99 = 2654435761 * self->_isDoNotDisturbOn;
    if ((*&v6 & 0x100000000000000) != 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v98 = 0;
    if ((*&v6 & 0x200000000) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

LABEL_17:
  v99 = 0;
  if ((*&v6 & 0x100000000000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v98 = 2654435761 * self->_isDrivingModeOn;
  if ((*&v6 & 0x200000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  openedNotificationRatio24h = self->_openedNotificationRatio24h;
  if (openedNotificationRatio24h < 0.0)
  {
    openedNotificationRatio24h = -openedNotificationRatio24h;
  }

  *v4.i64 = floor(openedNotificationRatio24h + 0.5);
  v8 = (openedNotificationRatio24h - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_20:
  if ((*&v6 & 0x1000) != 0)
  {
    v96 = 2654435761 * self->_googleDriveAppLaunchCount1w;
    if ((*&v6 & 0x2000) != 0)
    {
LABEL_22:
      v95 = 2654435761 * self->_googlePhotoAppLaunchCount1w;
      if ((*&v6 & 0x200) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v96 = 0;
    if ((*&v6 & 0x2000) != 0)
    {
      goto LABEL_22;
    }
  }

  v95 = 0;
  if ((*&v6 & 0x200) != 0)
  {
LABEL_23:
    v94 = 2654435761 * self->_dropboxAppLaunchCount1w;
    if ((*&v6 & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  v94 = 0;
  if ((*&v6 & 0x10) != 0)
  {
LABEL_24:
    v93 = 2654435761 * self->_cameraAppLaunchCount1w;
    if ((*&v6 & 0x2000000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  v93 = 0;
  if ((*&v6 & 0x2000000000) != 0)
  {
LABEL_25:
    v92 = 2654435761 * self->_photosAppLaunchCount1w;
    if ((*&v6 & 0x400) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  v92 = 0;
  if ((*&v6 & 0x400) != 0)
  {
LABEL_26:
    v91 = 2654435761 * self->_filesAppLaunchCount1w;
    if ((*&v6 & 0x40000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  v91 = 0;
  if ((*&v6 & 0x40000000000) != 0)
  {
LABEL_27:
    v90 = 2654435761 * self->_totalNotificationCount1w;
    if ((*&v6 & 0x200000000000) != 0)
    {
      goto LABEL_28;
    }

LABEL_40:
    v89 = 0;
    if ((*&v6 & 0x100000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_41:
    v14 = 0;
    goto LABEL_42;
  }

LABEL_39:
  v90 = 0;
  if ((*&v6 & 0x200000000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_28:
  v89 = 2654435761 * self->_totalOpenedNotificationCount1w;
  if ((*&v6 & 0x100000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_29:
  openedNotificationRatio1w = self->_openedNotificationRatio1w;
  if (openedNotificationRatio1w < 0.0)
  {
    openedNotificationRatio1w = -openedNotificationRatio1w;
  }

  *v4.i64 = floor(openedNotificationRatio1w + 0.5);
  v12 = (openedNotificationRatio1w - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v13), v5, v4);
  v14 = 2654435761u * *v4.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_42:
  v97 = v10;
  v88 = v14;
  if ((*&v6 & 0x10000000) != 0)
  {
    openedICloudNotificationRatio1w = self->_openedICloudNotificationRatio1w;
    if (openedICloudNotificationRatio1w < 0.0)
    {
      openedICloudNotificationRatio1w = -openedICloudNotificationRatio1w;
    }

    *v4.i64 = floor(openedICloudNotificationRatio1w + 0.5);
    v17 = (openedICloudNotificationRatio1w - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v5, v4).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  v87 = v15;
  v86 = [(NSString *)self->_notificationUsageTypeTop1 hash];
  v85 = [(NSString *)self->_notificationUsageTypeTop2 hash];
  v84 = [(NSString *)self->_notificationUsageTypeTop3 hash];
  v83 = [(NSString *)self->_iCloudNotificationUsageTypeTop1 hash];
  v82 = [(NSString *)self->_iCloudNotificationUsageTypeTop2 hash];
  v81 = [(NSString *)self->_iCloudNotificationUsageTypeTop3 hash];
  if (*(&self->_has + 3))
  {
    mlServerScore = self->_mlServerScore;
    if (mlServerScore < 0.0)
    {
      mlServerScore = -mlServerScore;
    }

    *v19.i64 = floor(mlServerScore + 0.5);
    v23 = (mlServerScore - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v20, v19).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  v80 = v21;
  v79 = [(ISOPBSubscriptionLabelMessage *)self->_labelMessage hash];
  v27 = self->_has;
  if ((*&v27 & 0x100) == 0)
  {
    v78 = 0;
    if ((*&v27 & 0x400000000000) != 0)
    {
      goto LABEL_64;
    }

LABEL_70:
    v77 = 0;
    if ((*&v27 & 0x20000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_71:
    v31 = 0;
    goto LABEL_72;
  }

  v78 = 2654435761 * self->_diskStorageCapacityBytes;
  if ((*&v27 & 0x400000000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_64:
  v77 = 2654435761 * self->_usedDiskCapacityBytes;
  if ((*&v27 & 0x20000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_65:
  openedICloudNotificationRatio2w = self->_openedICloudNotificationRatio2w;
  if (openedICloudNotificationRatio2w < 0.0)
  {
    openedICloudNotificationRatio2w = -openedICloudNotificationRatio2w;
  }

  *v25.i64 = floor(openedICloudNotificationRatio2w + 0.5);
  v29 = (openedICloudNotificationRatio2w - *v25.i64) * 1.84467441e19;
  *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
  v30.f64[0] = NAN;
  v30.f64[1] = NAN;
  v31 = 2654435761u * *vbslq_s8(vnegq_f64(v30), v26, v25).i64;
  if (v29 >= 0.0)
  {
    if (v29 > 0.0)
    {
      v31 += v29;
    }
  }

  else
  {
    v31 -= fabs(v29);
  }

LABEL_72:
  if ((*&v27 & 0x8000000000000) == 0)
  {
    v75 = 0;
    if ((*&v27 & 0x80) != 0)
    {
      goto LABEL_74;
    }

LABEL_77:
    v74 = 0;
    if ((*&v27 & 8) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_78;
  }

  v75 = 2654435761 * self->_trafficType;
  if ((*&v27 & 0x80) == 0)
  {
    goto LABEL_77;
  }

LABEL_74:
  v74 = 2654435761 * self->_dailyScreenTimeSeconds;
  if ((*&v27 & 8) != 0)
  {
LABEL_75:
    v73 = 2654435761 * self->_avgWeeklyScreenTimeSeconds2w;
    goto LABEL_79;
  }

LABEL_78:
  v73 = 0;
LABEL_79:
  v76 = v31;
  if ((*&v27 & 0x40) != 0)
  {
    v72 = 2654435761 * self->_daemonVersion;
  }

  else
  {
    v72 = 0;
  }

  v71 = [(NSString *)self->_oBSOLETEDayOfWeek hash];
  v70 = [(NSString *)self->_deviceModelName hash];
  v32 = self->_has;
  if ((*&v32 & 0x800000000000) != 0)
  {
    v69 = 2654435761 * self->_dayOfWeek;
    if ((*&v32 & 0x400000000) != 0)
    {
LABEL_84:
      v68 = 2654435761 * self->_osVersionMajorVersion;
      if ((*&v32 & 0x800000000) != 0)
      {
        goto LABEL_85;
      }

      goto LABEL_121;
    }
  }

  else
  {
    v69 = 0;
    if ((*&v32 & 0x400000000) != 0)
    {
      goto LABEL_84;
    }
  }

  v68 = 0;
  if ((*&v32 & 0x800000000) != 0)
  {
LABEL_85:
    v67 = 2654435761 * self->_osVersionMinorVersion;
    if ((*&v32 & 0x1000000000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_122;
  }

LABEL_121:
  v67 = 0;
  if ((*&v32 & 0x1000000000) != 0)
  {
LABEL_86:
    v66 = 2654435761 * self->_osVersionPatchVersion;
    if ((*&v32 & 0x8000000) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_123;
  }

LABEL_122:
  v66 = 0;
  if ((*&v32 & 0x8000000) != 0)
  {
LABEL_87:
    v65 = 2654435761 * self->_offsetMins;
    if ((*&v32 & 0x2000000000000) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_124;
  }

LABEL_123:
  v65 = 0;
  if ((*&v32 & 0x2000000000000) != 0)
  {
LABEL_88:
    v64 = 2654435761 * self->_icloudNotificationActionLabel;
    if ((*&v32 & 0x400000) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_125;
  }

LABEL_124:
  v64 = 0;
  if ((*&v32 & 0x400000) != 0)
  {
LABEL_89:
    v63 = 2654435761 * self->_minsUntilICloudNotificationOpened;
    if ((*&v32 & 4) != 0)
    {
      goto LABEL_90;
    }

    goto LABEL_126;
  }

LABEL_125:
  v63 = 0;
  if ((*&v32 & 4) != 0)
  {
LABEL_90:
    v62 = 2654435761 * self->_appLaunchCountSameSlot;
    if ((*&v32 & 0x20) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_127;
  }

LABEL_126:
  v62 = 0;
  if ((*&v32 & 0x20) != 0)
  {
LABEL_91:
    v61 = 2654435761 * self->_cameraLaunchCountSameSlot;
    if ((*&v32 & 0x10000000000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_128;
  }

LABEL_127:
  v61 = 0;
  if ((*&v32 & 0x10000000000) != 0)
  {
LABEL_92:
    v60 = 2654435761 * self->_photosLaunchCountSameSlot;
    if ((*&v32 & 0x800) != 0)
    {
      goto LABEL_93;
    }

    goto LABEL_129;
  }

LABEL_128:
  v60 = 0;
  if ((*&v32 & 0x800) != 0)
  {
LABEL_93:
    v33 = 2654435761 * self->_filesLaunchCountSameSlot;
    if ((*&v32 & 0x800000000000000) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_130;
  }

LABEL_129:
  v33 = 0;
  if ((*&v32 & 0x800000000000000) != 0)
  {
LABEL_94:
    v34 = 2654435761 * self->_isSleepModeOnSameSlot;
    if ((*&v32 & 0x80000000000000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_131;
  }

LABEL_130:
  v34 = 0;
  if ((*&v32 & 0x80000000000000) != 0)
  {
LABEL_95:
    v35 = 2654435761 * self->_isDoNotDisturbOnSameSlot;
    if ((*&v32 & 0x200000000000000) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_132;
  }

LABEL_131:
  v35 = 0;
  if ((*&v32 & 0x200000000000000) != 0)
  {
LABEL_96:
    v36 = 2654435761 * self->_isDrivingModeOnSameSlot;
    if ((*&v32 & 0x2000000) != 0)
    {
      goto LABEL_97;
    }

    goto LABEL_133;
  }

LABEL_132:
  v36 = 0;
  if ((*&v32 & 0x2000000) != 0)
  {
LABEL_97:
    v37 = 2654435761 * self->_numNotificationsSameSlot;
    if ((*&v32 & 0x4000000) != 0)
    {
      goto LABEL_98;
    }

    goto LABEL_134;
  }

LABEL_133:
  v37 = 0;
  if ((*&v32 & 0x4000000) != 0)
  {
LABEL_98:
    v38 = 2654435761 * self->_numOpenedNotificationsSameSlot;
    if ((*&v32 & 0x40000) != 0)
    {
      goto LABEL_99;
    }

    goto LABEL_135;
  }

LABEL_134:
  v38 = 0;
  if ((*&v32 & 0x40000) != 0)
  {
LABEL_99:
    v39 = 2654435761 * self->_minsSinceLastCameraAppLaunch1w;
    if ((*&v32 & 0x100000) != 0)
    {
      goto LABEL_100;
    }

    goto LABEL_136;
  }

LABEL_135:
  v39 = 0;
  if ((*&v32 & 0x100000) != 0)
  {
LABEL_100:
    v40 = 2654435761 * self->_minsSinceLastPhotosAppLaunch1w;
    if ((*&v32 & 0x80000) != 0)
    {
      goto LABEL_101;
    }

    goto LABEL_137;
  }

LABEL_136:
  v40 = 0;
  if ((*&v32 & 0x80000) != 0)
  {
LABEL_101:
    v41 = 2654435761 * self->_minsSinceLastFilesAppLaunch1w;
    if ((*&v32 & 0x10000) != 0)
    {
      goto LABEL_102;
    }

    goto LABEL_138;
  }

LABEL_137:
  v41 = 0;
  if ((*&v32 & 0x10000) != 0)
  {
LABEL_102:
    v42 = 2654435761 * self->_isSleepModeOnCount2w;
    if ((*&v32 & 0x4000) != 0)
    {
      goto LABEL_103;
    }

    goto LABEL_139;
  }

LABEL_138:
  v42 = 0;
  if ((*&v32 & 0x4000) != 0)
  {
LABEL_103:
    v43 = 2654435761 * self->_isDoNotDisturbOnCount2w;
    if ((*&v32 & 0x8000) != 0)
    {
      goto LABEL_104;
    }

    goto LABEL_140;
  }

LABEL_139:
  v43 = 0;
  if ((*&v32 & 0x8000) != 0)
  {
LABEL_104:
    v44 = 2654435761 * self->_isDrivingModeOnCount2w;
    if ((*&v32 & 2) != 0)
    {
      goto LABEL_105;
    }

    goto LABEL_141;
  }

LABEL_140:
  v44 = 0;
  if ((*&v32 & 2) != 0)
  {
LABEL_105:
    v45 = 2654435761 * self->_appLaunchCount2wMedian;
    if (*&v32)
    {
      goto LABEL_106;
    }

    goto LABEL_142;
  }

LABEL_141:
  v45 = 0;
  if (*&v32)
  {
LABEL_106:
    v46 = 2654435761 * self->_appLaunchCount2wMax;
    if ((*&v32 & 0x8000000000) != 0)
    {
      goto LABEL_107;
    }

    goto LABEL_143;
  }

LABEL_142:
  v46 = 0;
  if ((*&v32 & 0x8000000000) != 0)
  {
LABEL_107:
    v47 = 2654435761 * self->_photosLaunchCount2wMedian;
    if ((*&v32 & 0x4000000000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_144;
  }

LABEL_143:
  v47 = 0;
  if ((*&v32 & 0x4000000000) != 0)
  {
LABEL_108:
    v48 = 2654435761 * self->_photosLaunchCount2wMax;
    if ((*&v32 & 0x100000000000) != 0)
    {
      goto LABEL_109;
    }

    goto LABEL_145;
  }

LABEL_144:
  v48 = 0;
  if ((*&v32 & 0x100000000000) != 0)
  {
LABEL_109:
    v49 = 2654435761 * self->_totalNotificationCount2wMedian;
    if ((*&v32 & 0x80000000000) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_146;
  }

LABEL_145:
  v49 = 0;
  if ((*&v32 & 0x80000000000) != 0)
  {
LABEL_110:
    v50 = 2654435761 * self->_totalNotificationCount2wMax;
    if ((*&v32 & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

    goto LABEL_147;
  }

LABEL_146:
  v50 = 0;
  if ((*&v32 & 0x80000000) != 0)
  {
LABEL_111:
    v51 = 2654435761 * self->_openedNotificationCount2wMedian;
    if ((*&v32 & 0x40000000) != 0)
    {
      goto LABEL_112;
    }

    goto LABEL_148;
  }

LABEL_147:
  v51 = 0;
  if ((*&v32 & 0x40000000) != 0)
  {
LABEL_112:
    v52 = 2654435761 * self->_openedNotificationCount2wMax;
    if ((*&v32 & 0x20000000000000) != 0)
    {
      goto LABEL_113;
    }

    goto LABEL_149;
  }

LABEL_148:
  v52 = 0;
  if ((*&v32 & 0x20000000000000) != 0)
  {
LABEL_113:
    v53 = 2654435761 * self->_buyLabel;
    if ((*&v32 & 0x200000) != 0)
    {
      goto LABEL_114;
    }

    goto LABEL_150;
  }

LABEL_149:
  v53 = 0;
  if ((*&v32 & 0x200000) != 0)
  {
LABEL_114:
    v54 = 2654435761 * self->_minsUntilICloudBuy;
    if ((*&v32 & 0x1000000000000000) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_151;
  }

LABEL_150:
  v54 = 0;
  if ((*&v32 & 0x1000000000000000) != 0)
  {
LABEL_115:
    v55 = 2654435761 * self->_openLabelSubStream;
    if ((*&v32 & 0x800000) != 0)
    {
      goto LABEL_116;
    }

    goto LABEL_152;
  }

LABEL_151:
  v55 = 0;
  if ((*&v32 & 0x800000) != 0)
  {
LABEL_116:
    v56 = 2654435761 * self->_minsUntilICloudOpenedSubStream;
    if ((*&v32 & 0x10000000000000) != 0)
    {
      goto LABEL_117;
    }

LABEL_153:
    v57 = 0;
    if ((*&v32 & 0x4000000000000) != 0)
    {
      goto LABEL_118;
    }

LABEL_154:
    v58 = 0;
    return v103 ^ v104 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v102 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v58;
  }

LABEL_152:
  v56 = 0;
  if ((*&v32 & 0x10000000000000) == 0)
  {
    goto LABEL_153;
  }

LABEL_117:
  v57 = 2654435761 * self->_userTier;
  if ((*&v32 & 0x4000000000000) == 0)
  {
    goto LABEL_154;
  }

LABEL_118:
  v58 = 2654435761 * self->_oBSOLETETrafficType;
  return v103 ^ v104 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v102 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v55 ^ v56 ^ v57 ^ v58;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 508);
  if ((v6 & 0x20000000000) != 0)
  {
    self->_timestampMillis = *(v4 + 42);
    *&self->_has |= 0x20000000000uLL;
    v6 = *(v4 + 508);
  }

  if ((v6 & 0x1000000000000) != 0)
  {
    self->_hourOfDay = *(v4 + 100);
    *&self->_has |= 0x1000000000000uLL;
  }

  v12 = v4;
  if (*(v4 + 56))
  {
    [(ISOPBSubscriptiondPetMessage *)self setLastOpenedAppId24h:?];
    v5 = v12;
  }

  v7 = *(v5 + 508);
  if ((v7 & 0x20000) != 0)
  {
    self->_lastOpenedAppHour24h = *(v5 + 18);
    *&self->_has |= 0x20000uLL;
    v7 = *(v5 + 508);
    if ((v7 & 0x400000000000000) == 0)
    {
LABEL_9:
      if ((v7 & 0x40000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_42;
    }
  }

  else if ((v7 & 0x400000000000000) == 0)
  {
    goto LABEL_9;
  }

  self->_isSleepModeOn = v5[505];
  *&self->_has |= 0x400000000000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x40000000000000) == 0)
  {
LABEL_10:
    if ((v7 & 0x100000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_isDoNotDisturbOn = v5[501];
  *&self->_has |= 0x40000000000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x100000000000000) == 0)
  {
LABEL_11:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_isDrivingModeOn = v5[503];
  *&self->_has |= 0x100000000000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x200000000) == 0)
  {
LABEL_12:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_openedNotificationRatio24h = *(v5 + 34);
  *&self->_has |= 0x200000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x1000) == 0)
  {
LABEL_13:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_googleDriveAppLaunchCount1w = *(v5 + 13);
  *&self->_has |= 0x1000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x2000) == 0)
  {
LABEL_14:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_googlePhotoAppLaunchCount1w = *(v5 + 14);
  *&self->_has |= 0x2000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x200) == 0)
  {
LABEL_15:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_dropboxAppLaunchCount1w = *(v5 + 10);
  *&self->_has |= 0x200uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x10) == 0)
  {
LABEL_16:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_cameraAppLaunchCount1w = *(v5 + 5);
  *&self->_has |= 0x10uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x2000000000) == 0)
  {
LABEL_17:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_photosAppLaunchCount1w = *(v5 + 38);
  *&self->_has |= 0x2000000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x400) == 0)
  {
LABEL_18:
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_filesAppLaunchCount1w = *(v5 + 11);
  *&self->_has |= 0x400uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_19:
    if ((v7 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_totalNotificationCount1w = *(v5 + 43);
  *&self->_has |= 0x40000000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x200000000000) == 0)
  {
LABEL_20:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_totalOpenedNotificationCount1w = *(v5 + 46);
  *&self->_has |= 0x200000000000uLL;
  v7 = *(v5 + 508);
  if ((v7 & 0x100000000) == 0)
  {
LABEL_21:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_53:
  self->_openedNotificationRatio1w = *(v5 + 33);
  *&self->_has |= 0x100000000uLL;
  if ((*(v5 + 508) & 0x10000000) != 0)
  {
LABEL_22:
    self->_openedICloudNotificationRatio1w = *(v5 + 29);
    *&self->_has |= 0x10000000uLL;
  }

LABEL_23:
  if (*(v5 + 57))
  {
    [(ISOPBSubscriptiondPetMessage *)self setNotificationUsageTypeTop1:?];
    v5 = v12;
  }

  if (*(v5 + 58))
  {
    [(ISOPBSubscriptiondPetMessage *)self setNotificationUsageTypeTop2:?];
    v5 = v12;
  }

  if (*(v5 + 59))
  {
    [(ISOPBSubscriptiondPetMessage *)self setNotificationUsageTypeTop3:?];
    v5 = v12;
  }

  if (*(v5 + 51))
  {
    [(ISOPBSubscriptiondPetMessage *)self setICloudNotificationUsageTypeTop1:?];
    v5 = v12;
  }

  if (*(v5 + 52))
  {
    [(ISOPBSubscriptiondPetMessage *)self setICloudNotificationUsageTypeTop2:?];
    v5 = v12;
  }

  if (*(v5 + 53))
  {
    [(ISOPBSubscriptiondPetMessage *)self setICloudNotificationUsageTypeTop3:?];
    v5 = v12;
  }

  if (v5[511])
  {
    self->_mlServerScore = *(v5 + 25);
    *&self->_has |= 0x1000000uLL;
  }

  labelMessage = self->_labelMessage;
  v9 = *(v5 + 55);
  if (labelMessage)
  {
    if (!v9)
    {
      goto LABEL_58;
    }

    [(ISOPBSubscriptionLabelMessage *)labelMessage mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_58;
    }

    [(ISOPBSubscriptiondPetMessage *)self setLabelMessage:?];
  }

  v5 = v12;
LABEL_58:
  v10 = *(v5 + 508);
  if ((v10 & 0x100) != 0)
  {
    self->_diskStorageCapacityBytes = *(v5 + 9);
    *&self->_has |= 0x100uLL;
    v10 = *(v5 + 508);
    if ((v10 & 0x400000000000) == 0)
    {
LABEL_60:
      if ((v10 & 0x20000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_112;
    }
  }

  else if ((v10 & 0x400000000000) == 0)
  {
    goto LABEL_60;
  }

  self->_usedDiskCapacityBytes = *(v5 + 47);
  *&self->_has |= 0x400000000000uLL;
  v10 = *(v5 + 508);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_61:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_113;
  }

LABEL_112:
  self->_openedICloudNotificationRatio2w = *(v5 + 30);
  *&self->_has |= 0x20000000uLL;
  v10 = *(v5 + 508);
  if ((v10 & 0x8000000000000) == 0)
  {
LABEL_62:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_114;
  }

LABEL_113:
  self->_trafficType = *(v5 + 123);
  *&self->_has |= 0x8000000000000uLL;
  v10 = *(v5 + 508);
  if ((v10 & 0x80) == 0)
  {
LABEL_63:
    if ((v10 & 8) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_115;
  }

LABEL_114:
  self->_dailyScreenTimeSeconds = *(v5 + 8);
  *&self->_has |= 0x80uLL;
  v10 = *(v5 + 508);
  if ((v10 & 8) == 0)
  {
LABEL_64:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_115:
  self->_avgWeeklyScreenTimeSeconds2w = *(v5 + 4);
  *&self->_has |= 8uLL;
  if ((*(v5 + 508) & 0x40) != 0)
  {
LABEL_65:
    self->_daemonVersion = *(v5 + 7);
    *&self->_has |= 0x40uLL;
  }

LABEL_66:
  if (*(v5 + 60))
  {
    [(ISOPBSubscriptiondPetMessage *)self setOBSOLETEDayOfWeek:?];
    v5 = v12;
  }

  if (*(v5 + 49))
  {
    [(ISOPBSubscriptiondPetMessage *)self setDeviceModelName:?];
    v5 = v12;
  }

  v11 = *(v5 + 508);
  if ((v11 & 0x800000000000) != 0)
  {
    self->_dayOfWeek = *(v5 + 96);
    *&self->_has |= 0x800000000000uLL;
    v11 = *(v5 + 508);
    if ((v11 & 0x400000000) == 0)
    {
LABEL_72:
      if ((v11 & 0x800000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_119;
    }
  }

  else if ((v11 & 0x400000000) == 0)
  {
    goto LABEL_72;
  }

  self->_osVersionMajorVersion = *(v5 + 35);
  *&self->_has |= 0x400000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x800000000) == 0)
  {
LABEL_73:
    if ((v11 & 0x1000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_osVersionMinorVersion = *(v5 + 36);
  *&self->_has |= 0x800000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x1000000000) == 0)
  {
LABEL_74:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_121;
  }

LABEL_120:
  self->_osVersionPatchVersion = *(v5 + 37);
  *&self->_has |= 0x1000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_offsetMins = *(v5 + 28);
  *&self->_has |= 0x8000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x2000000000000) == 0)
  {
LABEL_76:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_icloudNotificationActionLabel = *(v5 + 108);
  *&self->_has |= 0x2000000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x400000) == 0)
  {
LABEL_77:
    if ((v11 & 4) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_minsUntilICloudNotificationOpened = *(v5 + 23);
  *&self->_has |= 0x400000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 4) == 0)
  {
LABEL_78:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_125;
  }

LABEL_124:
  self->_appLaunchCountSameSlot = *(v5 + 3);
  *&self->_has |= 4uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x20) == 0)
  {
LABEL_79:
    if ((v11 & 0x10000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_126;
  }

LABEL_125:
  self->_cameraLaunchCountSameSlot = *(v5 + 6);
  *&self->_has |= 0x20uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x10000000000) == 0)
  {
LABEL_80:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_127;
  }

LABEL_126:
  self->_photosLaunchCountSameSlot = *(v5 + 41);
  *&self->_has |= 0x10000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x800) == 0)
  {
LABEL_81:
    if ((v11 & 0x800000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_128;
  }

LABEL_127:
  self->_filesLaunchCountSameSlot = *(v5 + 12);
  *&self->_has |= 0x800uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x800000000000000) == 0)
  {
LABEL_82:
    if ((v11 & 0x80000000000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_129;
  }

LABEL_128:
  self->_isSleepModeOnSameSlot = v5[506];
  *&self->_has |= 0x800000000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x80000000000000) == 0)
  {
LABEL_83:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_130;
  }

LABEL_129:
  self->_isDoNotDisturbOnSameSlot = v5[502];
  *&self->_has |= 0x80000000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x200000000000000) == 0)
  {
LABEL_84:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_131;
  }

LABEL_130:
  self->_isDrivingModeOnSameSlot = v5[504];
  *&self->_has |= 0x200000000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_85:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_132;
  }

LABEL_131:
  self->_numNotificationsSameSlot = *(v5 + 26);
  *&self->_has |= 0x2000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_86:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_133;
  }

LABEL_132:
  self->_numOpenedNotificationsSameSlot = *(v5 + 27);
  *&self->_has |= 0x4000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x40000) == 0)
  {
LABEL_87:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_134;
  }

LABEL_133:
  self->_minsSinceLastCameraAppLaunch1w = *(v5 + 19);
  *&self->_has |= 0x40000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x100000) == 0)
  {
LABEL_88:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_minsSinceLastPhotosAppLaunch1w = *(v5 + 21);
  *&self->_has |= 0x100000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x80000) == 0)
  {
LABEL_89:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_minsSinceLastFilesAppLaunch1w = *(v5 + 20);
  *&self->_has |= 0x80000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x10000) == 0)
  {
LABEL_90:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_isSleepModeOnCount2w = *(v5 + 17);
  *&self->_has |= 0x10000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x4000) == 0)
  {
LABEL_91:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_isDoNotDisturbOnCount2w = *(v5 + 15);
  *&self->_has |= 0x4000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x8000) == 0)
  {
LABEL_92:
    if ((v11 & 2) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_isDrivingModeOnCount2w = *(v5 + 16);
  *&self->_has |= 0x8000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 2) == 0)
  {
LABEL_93:
    if ((v11 & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_appLaunchCount2wMedian = *(v5 + 2);
  *&self->_has |= 2uLL;
  v11 = *(v5 + 508);
  if ((v11 & 1) == 0)
  {
LABEL_94:
    if ((v11 & 0x8000000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_appLaunchCount2wMax = *(v5 + 1);
  *&self->_has |= 1uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x8000000000) == 0)
  {
LABEL_95:
    if ((v11 & 0x4000000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_photosLaunchCount2wMedian = *(v5 + 40);
  *&self->_has |= 0x8000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x4000000000) == 0)
  {
LABEL_96:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_photosLaunchCount2wMax = *(v5 + 39);
  *&self->_has |= 0x4000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x100000000000) == 0)
  {
LABEL_97:
    if ((v11 & 0x80000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_totalNotificationCount2wMedian = *(v5 + 45);
  *&self->_has |= 0x100000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x80000000000) == 0)
  {
LABEL_98:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_totalNotificationCount2wMax = *(v5 + 44);
  *&self->_has |= 0x80000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_99:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_openedNotificationCount2wMedian = *(v5 + 32);
  *&self->_has |= 0x80000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x40000000) == 0)
  {
LABEL_100:
    if ((v11 & 0x20000000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_openedNotificationCount2wMax = *(v5 + 31);
  *&self->_has |= 0x40000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x20000000000000) == 0)
  {
LABEL_101:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_buyLabel = v5[500];
  *&self->_has |= 0x20000000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x200000) == 0)
  {
LABEL_102:
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_minsUntilICloudBuy = *(v5 + 22);
  *&self->_has |= 0x200000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x1000000000000000) == 0)
  {
LABEL_103:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_openLabelSubStream = v5[507];
  *&self->_has |= 0x1000000000000000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x800000) == 0)
  {
LABEL_104:
    if ((v11 & 0x10000000000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_minsUntilICloudOpenedSubStream = *(v5 + 24);
  *&self->_has |= 0x800000uLL;
  v11 = *(v5 + 508);
  if ((v11 & 0x10000000000000) == 0)
  {
LABEL_105:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_151:
  self->_userTier = *(v5 + 124);
  *&self->_has |= 0x10000000000000uLL;
  if ((*(v5 + 508) & 0x4000000000000) != 0)
  {
LABEL_106:
    self->_oBSOLETETrafficType = *(v5 + 122);
    *&self->_has |= 0x4000000000000uLL;
  }

LABEL_107:

  MEMORY[0x2821F96F8]();
}

@end