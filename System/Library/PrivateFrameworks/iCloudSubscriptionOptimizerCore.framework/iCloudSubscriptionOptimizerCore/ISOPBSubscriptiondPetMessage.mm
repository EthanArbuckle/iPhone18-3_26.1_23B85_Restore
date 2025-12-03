@interface ISOPBSubscriptiondPetMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDayOfWeek:(id)week;
- (int)StringAsIcloudNotificationActionLabel:(id)label;
- (int)StringAsOBSOLETETrafficType:(id)type;
- (int)StringAsTrafficType:(id)type;
- (int)StringAsUserTier:(id)tier;
- (int)dayOfWeek;
- (int)icloudNotificationActionLabel;
- (int)oBSOLETETrafficType;
- (int)trafficType;
- (int)userTier;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAppLaunchCount2wMedian:(BOOL)median;
- (void)setHasAppLaunchCountSameSlot:(BOOL)slot;
- (void)setHasAvgWeeklyScreenTimeSeconds2w:(BOOL)seconds2w;
- (void)setHasBuyLabel:(BOOL)label;
- (void)setHasCameraAppLaunchCount1w:(BOOL)count1w;
- (void)setHasCameraLaunchCountSameSlot:(BOOL)slot;
- (void)setHasDaemonVersion:(BOOL)version;
- (void)setHasDailyScreenTimeSeconds:(BOOL)seconds;
- (void)setHasDayOfWeek:(BOOL)week;
- (void)setHasDiskStorageCapacityBytes:(BOOL)bytes;
- (void)setHasDropboxAppLaunchCount1w:(BOOL)count1w;
- (void)setHasFilesAppLaunchCount1w:(BOOL)count1w;
- (void)setHasFilesLaunchCountSameSlot:(BOOL)slot;
- (void)setHasGoogleDriveAppLaunchCount1w:(BOOL)count1w;
- (void)setHasGooglePhotoAppLaunchCount1w:(BOOL)count1w;
- (void)setHasHourOfDay:(BOOL)day;
- (void)setHasIcloudNotificationActionLabel:(BOOL)label;
- (void)setHasIsDoNotDisturbOn:(BOOL)on;
- (void)setHasIsDoNotDisturbOnCount2w:(BOOL)count2w;
- (void)setHasIsDoNotDisturbOnSameSlot:(BOOL)slot;
- (void)setHasIsDrivingModeOn:(BOOL)on;
- (void)setHasIsDrivingModeOnCount2w:(BOOL)count2w;
- (void)setHasIsDrivingModeOnSameSlot:(BOOL)slot;
- (void)setHasIsSleepModeOn:(BOOL)on;
- (void)setHasIsSleepModeOnCount2w:(BOOL)count2w;
- (void)setHasIsSleepModeOnSameSlot:(BOOL)slot;
- (void)setHasLastOpenedAppHour24h:(BOOL)hour24h;
- (void)setHasMinsSinceLastCameraAppLaunch1w:(BOOL)launch1w;
- (void)setHasMinsSinceLastFilesAppLaunch1w:(BOOL)launch1w;
- (void)setHasMinsSinceLastPhotosAppLaunch1w:(BOOL)launch1w;
- (void)setHasMinsUntilICloudBuy:(BOOL)buy;
- (void)setHasMinsUntilICloudNotificationOpened:(BOOL)opened;
- (void)setHasMinsUntilICloudOpenedSubStream:(BOOL)stream;
- (void)setHasMlServerScore:(BOOL)score;
- (void)setHasNumNotificationsSameSlot:(BOOL)slot;
- (void)setHasNumOpenedNotificationsSameSlot:(BOOL)slot;
- (void)setHasOBSOLETETrafficType:(BOOL)type;
- (void)setHasOffsetMins:(BOOL)mins;
- (void)setHasOpenLabelSubStream:(BOOL)stream;
- (void)setHasOpenedICloudNotificationRatio1w:(BOOL)ratio1w;
- (void)setHasOpenedICloudNotificationRatio2w:(BOOL)ratio2w;
- (void)setHasOpenedNotificationCount2wMax:(BOOL)max;
- (void)setHasOpenedNotificationCount2wMedian:(BOOL)median;
- (void)setHasOpenedNotificationRatio1w:(BOOL)ratio1w;
- (void)setHasOpenedNotificationRatio24h:(BOOL)ratio24h;
- (void)setHasOsVersionMajorVersion:(BOOL)version;
- (void)setHasOsVersionMinorVersion:(BOOL)version;
- (void)setHasOsVersionPatchVersion:(BOOL)version;
- (void)setHasPhotosAppLaunchCount1w:(BOOL)count1w;
- (void)setHasPhotosLaunchCount2wMax:(BOOL)max;
- (void)setHasPhotosLaunchCount2wMedian:(BOOL)median;
- (void)setHasPhotosLaunchCountSameSlot:(BOOL)slot;
- (void)setHasTimestampMillis:(BOOL)millis;
- (void)setHasTotalNotificationCount1w:(BOOL)count1w;
- (void)setHasTotalNotificationCount2wMax:(BOOL)max;
- (void)setHasTotalNotificationCount2wMedian:(BOOL)median;
- (void)setHasTotalOpenedNotificationCount1w:(BOOL)count1w;
- (void)setHasTrafficType:(BOOL)type;
- (void)setHasUsedDiskCapacityBytes:(BOOL)bytes;
- (void)setHasUserTier:(BOOL)tier;
- (void)writeTo:(id)to;
@end

@implementation ISOPBSubscriptiondPetMessage

- (void)setHasTimestampMillis:(BOOL)millis
{
  v3 = 0x20000000000;
  if (!millis)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasHourOfDay:(BOOL)day
{
  v3 = 0x1000000000000;
  if (!day)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasLastOpenedAppHour24h:(BOOL)hour24h
{
  v3 = 0x20000;
  if (!hour24h)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasIsSleepModeOn:(BOOL)on
{
  v3 = 0x400000000000000;
  if (!on)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDoNotDisturbOn:(BOOL)on
{
  v3 = 0x40000000000000;
  if (!on)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDrivingModeOn:(BOOL)on
{
  v3 = 0x100000000000000;
  if (!on)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationRatio24h:(BOOL)ratio24h
{
  v3 = 0x200000000;
  if (!ratio24h)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasGoogleDriveAppLaunchCount1w:(BOOL)count1w
{
  v3 = 4096;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasGooglePhotoAppLaunchCount1w:(BOOL)count1w
{
  v3 = 0x2000;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasDropboxAppLaunchCount1w:(BOOL)count1w
{
  v3 = 512;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasCameraAppLaunchCount1w:(BOOL)count1w
{
  v3 = 16;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasPhotosAppLaunchCount1w:(BOOL)count1w
{
  v3 = 0x2000000000;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasFilesAppLaunchCount1w:(BOOL)count1w
{
  v3 = 1024;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTotalNotificationCount1w:(BOOL)count1w
{
  v3 = 0x40000000000;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTotalOpenedNotificationCount1w:(BOOL)count1w
{
  v3 = 0x200000000000;
  if (!count1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationRatio1w:(BOOL)ratio1w
{
  v3 = 0x100000000;
  if (!ratio1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasOpenedICloudNotificationRatio1w:(BOOL)ratio1w
{
  v3 = 0x10000000;
  if (!ratio1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasMlServerScore:(BOOL)score
{
  v3 = 0x1000000;
  if (!score)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasDiskStorageCapacityBytes:(BOOL)bytes
{
  v3 = 256;
  if (!bytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasUsedDiskCapacityBytes:(BOOL)bytes
{
  v3 = 0x400000000000;
  if (!bytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasOpenedICloudNotificationRatio2w:(BOOL)ratio2w
{
  v3 = 0x20000000;
  if (!ratio2w)
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

- (void)setHasTrafficType:(BOOL)type
{
  v3 = 0x8000000000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (int)StringAsTrafficType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"REAL"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SYNTHESIZED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDailyScreenTimeSeconds:(BOOL)seconds
{
  v3 = 128;
  if (!seconds)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasAvgWeeklyScreenTimeSeconds2w:(BOOL)seconds2w
{
  v3 = 8;
  if (!seconds2w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasDaemonVersion:(BOOL)version
{
  v3 = 64;
  if (!version)
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

- (void)setHasDayOfWeek:(BOOL)week
{
  v3 = 0x800000000000;
  if (!week)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (int)StringAsDayOfWeek:(id)week
{
  weekCopy = week;
  if ([weekCopy isEqualToString:@"UNAVAILABLE"])
  {
    v4 = 0;
  }

  else if ([weekCopy isEqualToString:@"SUNDAY"])
  {
    v4 = 1;
  }

  else if ([weekCopy isEqualToString:@"MONDAY"])
  {
    v4 = 2;
  }

  else if ([weekCopy isEqualToString:@"TUESDAY"])
  {
    v4 = 3;
  }

  else if ([weekCopy isEqualToString:@"WEDNESDAY"])
  {
    v4 = 4;
  }

  else if ([weekCopy isEqualToString:@"THURSDAY"])
  {
    v4 = 5;
  }

  else if ([weekCopy isEqualToString:@"FRIDAY"])
  {
    v4 = 6;
  }

  else if ([weekCopy isEqualToString:@"SATURDAY"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOsVersionMajorVersion:(BOOL)version
{
  v3 = 0x400000000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasOsVersionMinorVersion:(BOOL)version
{
  v3 = 0x800000000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasOsVersionPatchVersion:(BOOL)version
{
  v3 = 0x1000000000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasOffsetMins:(BOOL)mins
{
  v3 = 0x8000000;
  if (!mins)
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

- (void)setHasIcloudNotificationActionLabel:(BOOL)label
{
  v3 = 0x2000000000000;
  if (!label)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (int)StringAsIcloudNotificationActionLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"LABEL_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([labelCopy isEqualToString:@"CLICK"])
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:@"CLEAR"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMinsUntilICloudNotificationOpened:(BOOL)opened
{
  v3 = 0x400000;
  if (!opened)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasAppLaunchCountSameSlot:(BOOL)slot
{
  v3 = 4;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasCameraLaunchCountSameSlot:(BOOL)slot
{
  v3 = 32;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasPhotosLaunchCountSameSlot:(BOOL)slot
{
  v3 = 0x10000000000;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasFilesLaunchCountSameSlot:(BOOL)slot
{
  v3 = 2048;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasIsSleepModeOnSameSlot:(BOOL)slot
{
  v3 = 0x800000000000000;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDoNotDisturbOnSameSlot:(BOOL)slot
{
  v3 = 0x80000000000000;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsDrivingModeOnSameSlot:(BOOL)slot
{
  v3 = 0x200000000000000;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasNumNotificationsSameSlot:(BOOL)slot
{
  v3 = 0x2000000;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasNumOpenedNotificationsSameSlot:(BOOL)slot
{
  v3 = 0x4000000;
  if (!slot)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasMinsSinceLastCameraAppLaunch1w:(BOOL)launch1w
{
  v3 = 0x40000;
  if (!launch1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasMinsSinceLastPhotosAppLaunch1w:(BOOL)launch1w
{
  v3 = 0x100000;
  if (!launch1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasMinsSinceLastFilesAppLaunch1w:(BOOL)launch1w
{
  v3 = 0x80000;
  if (!launch1w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasIsSleepModeOnCount2w:(BOOL)count2w
{
  v3 = 0x10000;
  if (!count2w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasIsDoNotDisturbOnCount2w:(BOOL)count2w
{
  v3 = 0x4000;
  if (!count2w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasIsDrivingModeOnCount2w:(BOOL)count2w
{
  v3 = 0x8000;
  if (!count2w)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasAppLaunchCount2wMedian:(BOOL)median
{
  v3 = 2;
  if (!median)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasPhotosLaunchCount2wMedian:(BOOL)median
{
  v3 = 0x8000000000;
  if (!median)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasPhotosLaunchCount2wMax:(BOOL)max
{
  v3 = 0x4000000000;
  if (!max)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTotalNotificationCount2wMedian:(BOOL)median
{
  v3 = 0x100000000000;
  if (!median)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasTotalNotificationCount2wMax:(BOOL)max
{
  v3 = 0x80000000000;
  if (!max)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationCount2wMedian:(BOOL)median
{
  v3 = 0x80000000;
  if (!median)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasOpenedNotificationCount2wMax:(BOOL)max
{
  v3 = 0x40000000;
  if (!max)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasBuyLabel:(BOOL)label
{
  v3 = 0x20000000000000;
  if (!label)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasMinsUntilICloudBuy:(BOOL)buy
{
  v3 = 0x200000;
  if (!buy)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasOpenLabelSubStream:(BOOL)stream
{
  v3 = 0x1000000000000000;
  if (!stream)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3);
}

- (void)setHasMinsUntilICloudOpenedSubStream:(BOOL)stream
{
  v3 = 0x800000;
  if (!stream)
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

- (void)setHasUserTier:(BOOL)tier
{
  v3 = 0x10000000000000;
  if (!tier)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (int)StringAsUserTier:(id)tier
{
  tierCopy = tier;
  if ([tierCopy isEqualToString:@"USERTIER_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([tierCopy isEqualToString:@"FREE"])
  {
    v4 = 1;
  }

  else if ([tierCopy isEqualToString:@"PAID"])
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

- (void)setHasOBSOLETETrafficType:(BOOL)type
{
  v3 = 0x4000000000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (int)StringAsOBSOLETETrafficType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"REAL"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SYNTHESIZED"])
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
  dictionaryRepresentation = [(ISOPBSubscriptiondPetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestampMillis];
    [dictionary setObject:v5 forKey:@"timestampMillis"];

    has = self->_has;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_hourOfDay];
    [dictionary setObject:v6 forKey:@"hourOfDay"];
  }

  lastOpenedAppId24h = self->_lastOpenedAppId24h;
  if (lastOpenedAppId24h)
  {
    [dictionary setObject:lastOpenedAppId24h forKey:@"lastOpenedAppId24h"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x20000) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastOpenedAppHour24h];
    [dictionary setObject:v24 forKey:@"lastOpenedAppHour24h"];

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
  [dictionary setObject:v25 forKey:@"isSleepModeOn"];

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
  [dictionary setObject:v26 forKey:@"isDoNotDisturbOn"];

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
  [dictionary setObject:v27 forKey:@"isDrivingModeOn"];

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
  [dictionary setObject:v28 forKey:@"openedNotificationRatio24h"];

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
  [dictionary setObject:v29 forKey:@"googleDriveAppLaunchCount1w"];

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
  [dictionary setObject:v30 forKey:@"googlePhotoAppLaunchCount1w"];

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
  [dictionary setObject:v31 forKey:@"dropboxAppLaunchCount1w"];

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
  [dictionary setObject:v32 forKey:@"cameraAppLaunchCount1w"];

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
  [dictionary setObject:v33 forKey:@"photosAppLaunchCount1w"];

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
  [dictionary setObject:v34 forKey:@"filesAppLaunchCount1w"];

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
  [dictionary setObject:v35 forKey:@"totalNotificationCount1w"];

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
  [dictionary setObject:v36 forKey:@"totalOpenedNotificationCount1w"];

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
  [dictionary setObject:v37 forKey:@"openedNotificationRatio1w"];

  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_22:
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_openedICloudNotificationRatio1w];
    [dictionary setObject:v9 forKey:@"openedICloudNotificationRatio1w"];
  }

LABEL_23:
  notificationUsageTypeTop1 = self->_notificationUsageTypeTop1;
  if (notificationUsageTypeTop1)
  {
    [dictionary setObject:notificationUsageTypeTop1 forKey:@"notificationUsageTypeTop1"];
  }

  notificationUsageTypeTop2 = self->_notificationUsageTypeTop2;
  if (notificationUsageTypeTop2)
  {
    [dictionary setObject:notificationUsageTypeTop2 forKey:@"notificationUsageTypeTop2"];
  }

  notificationUsageTypeTop3 = self->_notificationUsageTypeTop3;
  if (notificationUsageTypeTop3)
  {
    [dictionary setObject:notificationUsageTypeTop3 forKey:@"notificationUsageTypeTop3"];
  }

  iCloudNotificationUsageTypeTop1 = self->_iCloudNotificationUsageTypeTop1;
  if (iCloudNotificationUsageTypeTop1)
  {
    [dictionary setObject:iCloudNotificationUsageTypeTop1 forKey:@"iCloudNotificationUsageTypeTop1"];
  }

  iCloudNotificationUsageTypeTop2 = self->_iCloudNotificationUsageTypeTop2;
  if (iCloudNotificationUsageTypeTop2)
  {
    [dictionary setObject:iCloudNotificationUsageTypeTop2 forKey:@"iCloudNotificationUsageTypeTop2"];
  }

  iCloudNotificationUsageTypeTop3 = self->_iCloudNotificationUsageTypeTop3;
  if (iCloudNotificationUsageTypeTop3)
  {
    [dictionary setObject:iCloudNotificationUsageTypeTop3 forKey:@"iCloudNotificationUsageTypeTop3"];
  }

  if (*(&self->_has + 3))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mlServerScore];
    [dictionary setObject:v16 forKey:@"mlServerScore"];
  }

  labelMessage = self->_labelMessage;
  if (labelMessage)
  {
    dictionaryRepresentation = [(ISOPBSubscriptionLabelMessage *)labelMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"labelMessage"];
  }

  v19 = self->_has;
  if ((*&v19 & 0x100) != 0)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_diskStorageCapacityBytes];
    [dictionary setObject:v38 forKey:@"diskStorageCapacityBytes"];

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
  [dictionary setObject:v39 forKey:@"usedDiskCapacityBytes"];

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
  [dictionary setObject:v40 forKey:@"openedICloudNotificationRatio2w"];

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

  [dictionary setObject:v42 forKey:@"trafficType"];

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
  [dictionary setObject:v45 forKey:@"dailyScreenTimeSeconds"];

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
  [dictionary setObject:v46 forKey:@"avgWeeklyScreenTimeSeconds2w"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_daemonVersion];
    [dictionary setObject:v20 forKey:@"daemonVersion"];
  }

LABEL_47:
  oBSOLETEDayOfWeek = self->_oBSOLETEDayOfWeek;
  if (oBSOLETEDayOfWeek)
  {
    [dictionary setObject:oBSOLETEDayOfWeek forKey:@"OBSOLETE_dayOfWeek"];
  }

  deviceModelName = self->_deviceModelName;
  if (deviceModelName)
  {
    [dictionary setObject:deviceModelName forKey:@"deviceModelName"];
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

    [dictionary setObject:v44 forKey:@"dayOfWeek"];

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
  [dictionary setObject:v47 forKey:@"osVersionMajorVersion"];

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
  [dictionary setObject:v48 forKey:@"osVersionMinorVersion"];

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
  [dictionary setObject:v49 forKey:@"osVersionPatchVersion"];

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
  [dictionary setObject:v50 forKey:@"offsetMins"];

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

  [dictionary setObject:v52 forKey:@"icloudNotificationActionLabel"];

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
  [dictionary setObject:v53 forKey:@"minsUntilICloudNotificationOpened"];

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
  [dictionary setObject:v54 forKey:@"appLaunchCountSameSlot"];

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
  [dictionary setObject:v55 forKey:@"cameraLaunchCountSameSlot"];

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
  [dictionary setObject:v56 forKey:@"photosLaunchCountSameSlot"];

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
  [dictionary setObject:v57 forKey:@"filesLaunchCountSameSlot"];

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
  [dictionary setObject:v58 forKey:@"isSleepModeOnSameSlot"];

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
  [dictionary setObject:v59 forKey:@"isDoNotDisturbOnSameSlot"];

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
  [dictionary setObject:v60 forKey:@"isDrivingModeOnSameSlot"];

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
  [dictionary setObject:v61 forKey:@"numNotificationsSameSlot"];

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
  [dictionary setObject:v62 forKey:@"numOpenedNotificationsSameSlot"];

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
  [dictionary setObject:v63 forKey:@"minsSinceLastCameraAppLaunch1w"];

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
  [dictionary setObject:v64 forKey:@"minsSinceLastPhotosAppLaunch1w"];

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
  [dictionary setObject:v65 forKey:@"minsSinceLastFilesAppLaunch1w"];

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
  [dictionary setObject:v66 forKey:@"isSleepModeOnCount2w"];

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
  [dictionary setObject:v67 forKey:@"isDoNotDisturbOnCount2w"];

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
  [dictionary setObject:v68 forKey:@"isDrivingModeOnCount2w"];

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
  [dictionary setObject:v69 forKey:@"appLaunchCount2wMedian"];

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
  [dictionary setObject:v70 forKey:@"appLaunchCount2wMax"];

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
  [dictionary setObject:v71 forKey:@"photosLaunchCount2wMedian"];

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
  [dictionary setObject:v72 forKey:@"photosLaunchCount2wMax"];

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
  [dictionary setObject:v73 forKey:@"totalNotificationCount2wMedian"];

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
  [dictionary setObject:v74 forKey:@"totalNotificationCount2wMax"];

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
  [dictionary setObject:v75 forKey:@"openedNotificationCount2wMedian"];

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
  [dictionary setObject:v76 forKey:@"openedNotificationCount2wMax"];

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
  [dictionary setObject:v77 forKey:@"buyLabel"];

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
  [dictionary setObject:v78 forKey:@"minsUntilICloudBuy"];

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
  [dictionary setObject:v79 forKey:@"openLabelSubStream"];

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
  [dictionary setObject:v80 forKey:@"minsUntilICloudOpenedSubStream"];

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

  [dictionary setObject:v82 forKey:@"userTier"];

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

    [dictionary setObject:v84 forKey:@"OBSOLETE_trafficType"];
  }

LABEL_161:
  v85 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x20000000000) != 0)
  {
    toCopy[42] = self->_timestampMillis;
    *(toCopy + 508) |= 0x20000000000uLL;
    has = self->_has;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    *(toCopy + 100) = self->_hourOfDay;
    *(toCopy + 508) |= 0x1000000000000uLL;
  }

  v9 = toCopy;
  if (self->_lastOpenedAppId24h)
  {
    [toCopy setLastOpenedAppId24h:?];
    toCopy = v9;
  }

  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    toCopy[18] = self->_lastOpenedAppHour24h;
    *(toCopy + 508) |= 0x20000uLL;
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

  *(toCopy + 505) = self->_isSleepModeOn;
  *(toCopy + 508) |= 0x400000000000000uLL;
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
  *(toCopy + 501) = self->_isDoNotDisturbOn;
  *(toCopy + 508) |= 0x40000000000000uLL;
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
  *(toCopy + 503) = self->_isDrivingModeOn;
  *(toCopy + 508) |= 0x100000000000000uLL;
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
  toCopy[34] = *&self->_openedNotificationRatio24h;
  *(toCopy + 508) |= 0x200000000uLL;
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
  toCopy[13] = self->_googleDriveAppLaunchCount1w;
  *(toCopy + 508) |= 0x1000uLL;
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
  toCopy[14] = self->_googlePhotoAppLaunchCount1w;
  *(toCopy + 508) |= 0x2000uLL;
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
  toCopy[10] = self->_dropboxAppLaunchCount1w;
  *(toCopy + 508) |= 0x200uLL;
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
  toCopy[5] = self->_cameraAppLaunchCount1w;
  *(toCopy + 508) |= 0x10uLL;
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
  toCopy[38] = self->_photosAppLaunchCount1w;
  *(toCopy + 508) |= 0x2000000000uLL;
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
  toCopy[11] = self->_filesAppLaunchCount1w;
  *(toCopy + 508) |= 0x400uLL;
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
  toCopy[43] = self->_totalNotificationCount1w;
  *(toCopy + 508) |= 0x40000000000uLL;
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
  toCopy[46] = self->_totalOpenedNotificationCount1w;
  *(toCopy + 508) |= 0x200000000000uLL;
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
  toCopy[33] = *&self->_openedNotificationRatio1w;
  *(toCopy + 508) |= 0x100000000uLL;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_22:
    toCopy[29] = *&self->_openedICloudNotificationRatio1w;
    *(toCopy + 508) |= 0x10000000uLL;
  }

LABEL_23:
  if (self->_notificationUsageTypeTop1)
  {
    [v9 setNotificationUsageTypeTop1:?];
    toCopy = v9;
  }

  if (self->_notificationUsageTypeTop2)
  {
    [v9 setNotificationUsageTypeTop2:?];
    toCopy = v9;
  }

  if (self->_notificationUsageTypeTop3)
  {
    [v9 setNotificationUsageTypeTop3:?];
    toCopy = v9;
  }

  if (self->_iCloudNotificationUsageTypeTop1)
  {
    [v9 setICloudNotificationUsageTypeTop1:?];
    toCopy = v9;
  }

  if (self->_iCloudNotificationUsageTypeTop2)
  {
    [v9 setICloudNotificationUsageTypeTop2:?];
    toCopy = v9;
  }

  if (self->_iCloudNotificationUsageTypeTop3)
  {
    [v9 setICloudNotificationUsageTypeTop3:?];
    toCopy = v9;
  }

  if (*(&self->_has + 3))
  {
    toCopy[25] = *&self->_mlServerScore;
    *(toCopy + 508) |= 0x1000000uLL;
  }

  if (self->_labelMessage)
  {
    [v9 setLabelMessage:?];
    toCopy = v9;
  }

  v7 = self->_has;
  if ((*&v7 & 0x100) != 0)
  {
    toCopy[9] = self->_diskStorageCapacityBytes;
    *(toCopy + 508) |= 0x100uLL;
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

  toCopy[47] = self->_usedDiskCapacityBytes;
  *(toCopy + 508) |= 0x400000000000uLL;
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
  toCopy[30] = *&self->_openedICloudNotificationRatio2w;
  *(toCopy + 508) |= 0x20000000uLL;
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
  *(toCopy + 123) = self->_trafficType;
  *(toCopy + 508) |= 0x8000000000000uLL;
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
  toCopy[8] = self->_dailyScreenTimeSeconds;
  *(toCopy + 508) |= 0x80uLL;
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
  toCopy[4] = self->_avgWeeklyScreenTimeSeconds2w;
  *(toCopy + 508) |= 8uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    toCopy[7] = self->_daemonVersion;
    *(toCopy + 508) |= 0x40uLL;
  }

LABEL_47:
  if (self->_oBSOLETEDayOfWeek)
  {
    [v9 setOBSOLETEDayOfWeek:?];
    toCopy = v9;
  }

  if (self->_deviceModelName)
  {
    [v9 setDeviceModelName:?];
    toCopy = v9;
  }

  v8 = self->_has;
  if ((*&v8 & 0x800000000000) != 0)
  {
    *(toCopy + 96) = self->_dayOfWeek;
    *(toCopy + 508) |= 0x800000000000uLL;
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

  toCopy[35] = self->_osVersionMajorVersion;
  *(toCopy + 508) |= 0x400000000uLL;
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
  toCopy[36] = self->_osVersionMinorVersion;
  *(toCopy + 508) |= 0x800000000uLL;
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
  toCopy[37] = self->_osVersionPatchVersion;
  *(toCopy + 508) |= 0x1000000000uLL;
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
  toCopy[28] = self->_offsetMins;
  *(toCopy + 508) |= 0x8000000uLL;
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
  *(toCopy + 108) = self->_icloudNotificationActionLabel;
  *(toCopy + 508) |= 0x2000000000000uLL;
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
  toCopy[23] = self->_minsUntilICloudNotificationOpened;
  *(toCopy + 508) |= 0x400000uLL;
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
  toCopy[3] = self->_appLaunchCountSameSlot;
  *(toCopy + 508) |= 4uLL;
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
  toCopy[6] = self->_cameraLaunchCountSameSlot;
  *(toCopy + 508) |= 0x20uLL;
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
  toCopy[41] = self->_photosLaunchCountSameSlot;
  *(toCopy + 508) |= 0x10000000000uLL;
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
  toCopy[12] = self->_filesLaunchCountSameSlot;
  *(toCopy + 508) |= 0x800uLL;
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
  *(toCopy + 506) = self->_isSleepModeOnSameSlot;
  *(toCopy + 508) |= 0x800000000000000uLL;
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
  *(toCopy + 502) = self->_isDoNotDisturbOnSameSlot;
  *(toCopy + 508) |= 0x80000000000000uLL;
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
  *(toCopy + 504) = self->_isDrivingModeOnSameSlot;
  *(toCopy + 508) |= 0x200000000000000uLL;
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
  toCopy[26] = self->_numNotificationsSameSlot;
  *(toCopy + 508) |= 0x2000000uLL;
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
  toCopy[27] = self->_numOpenedNotificationsSameSlot;
  *(toCopy + 508) |= 0x4000000uLL;
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
  toCopy[19] = self->_minsSinceLastCameraAppLaunch1w;
  *(toCopy + 508) |= 0x40000uLL;
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
  toCopy[21] = self->_minsSinceLastPhotosAppLaunch1w;
  *(toCopy + 508) |= 0x100000uLL;
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
  toCopy[20] = self->_minsSinceLastFilesAppLaunch1w;
  *(toCopy + 508) |= 0x80000uLL;
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
  toCopy[17] = self->_isSleepModeOnCount2w;
  *(toCopy + 508) |= 0x10000uLL;
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
  toCopy[15] = self->_isDoNotDisturbOnCount2w;
  *(toCopy + 508) |= 0x4000uLL;
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
  toCopy[16] = self->_isDrivingModeOnCount2w;
  *(toCopy + 508) |= 0x8000uLL;
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
  toCopy[2] = self->_appLaunchCount2wMedian;
  *(toCopy + 508) |= 2uLL;
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
  toCopy[1] = self->_appLaunchCount2wMax;
  *(toCopy + 508) |= 1uLL;
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
  toCopy[40] = self->_photosLaunchCount2wMedian;
  *(toCopy + 508) |= 0x8000000000uLL;
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
  toCopy[39] = self->_photosLaunchCount2wMax;
  *(toCopy + 508) |= 0x4000000000uLL;
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
  toCopy[45] = self->_totalNotificationCount2wMedian;
  *(toCopy + 508) |= 0x100000000000uLL;
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
  toCopy[44] = self->_totalNotificationCount2wMax;
  *(toCopy + 508) |= 0x80000000000uLL;
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
  toCopy[32] = self->_openedNotificationCount2wMedian;
  *(toCopy + 508) |= 0x80000000uLL;
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
  toCopy[31] = self->_openedNotificationCount2wMax;
  *(toCopy + 508) |= 0x40000000uLL;
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
  *(toCopy + 500) = self->_buyLabel;
  *(toCopy + 508) |= 0x20000000000000uLL;
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
  toCopy[22] = self->_minsUntilICloudBuy;
  *(toCopy + 508) |= 0x200000uLL;
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
  *(toCopy + 507) = self->_openLabelSubStream;
  *(toCopy + 508) |= 0x1000000000000000uLL;
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
  toCopy[24] = self->_minsUntilICloudOpenedSubStream;
  *(toCopy + 508) |= 0x800000uLL;
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
  *(toCopy + 124) = self->_userTier;
  *(toCopy + 508) |= 0x10000000000000uLL;
  if ((*&self->_has & 0x4000000000000) != 0)
  {
LABEL_87:
    *(toCopy + 122) = self->_oBSOLETETrafficType;
    *(toCopy + 508) |= 0x4000000000000uLL;
  }

LABEL_88:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_lastOpenedAppId24h copyWithZone:zone];
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
  v11 = [(NSString *)self->_notificationUsageTypeTop1 copyWithZone:zone];
  v12 = *(v6 + 456);
  *(v6 + 456) = v11;

  v13 = [(NSString *)self->_notificationUsageTypeTop2 copyWithZone:zone];
  v14 = *(v6 + 464);
  *(v6 + 464) = v13;

  v15 = [(NSString *)self->_notificationUsageTypeTop3 copyWithZone:zone];
  v16 = *(v6 + 472);
  *(v6 + 472) = v15;

  v17 = [(NSString *)self->_iCloudNotificationUsageTypeTop1 copyWithZone:zone];
  v18 = *(v6 + 408);
  *(v6 + 408) = v17;

  v19 = [(NSString *)self->_iCloudNotificationUsageTypeTop2 copyWithZone:zone];
  v20 = *(v6 + 416);
  *(v6 + 416) = v19;

  v21 = [(NSString *)self->_iCloudNotificationUsageTypeTop3 copyWithZone:zone];
  v22 = *(v6 + 424);
  *(v6 + 424) = v21;

  if (*(&self->_has + 3))
  {
    *(v6 + 200) = self->_mlServerScore;
    *(v6 + 508) |= 0x1000000uLL;
  }

  v23 = [(ISOPBSubscriptionLabelMessage *)self->_labelMessage copyWithZone:zone];
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
  v26 = [(NSString *)self->_oBSOLETEDayOfWeek copyWithZone:zone];
  v27 = *(v6 + 480);
  *(v6 + 480) = v26;

  v28 = [(NSString *)self->_deviceModelName copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_353;
  }

  has = self->_has;
  v6 = *(equalCopy + 508);
  if ((*&has & 0x20000000000) != 0)
  {
    if ((v6 & 0x20000000000) == 0 || self->_timestampMillis != *(equalCopy + 42))
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
    if ((v6 & 0x1000000000000) == 0 || self->_hourOfDay != *(equalCopy + 100))
    {
      goto LABEL_353;
    }
  }

  else if ((v6 & 0x1000000000000) != 0)
  {
    goto LABEL_353;
  }

  lastOpenedAppId24h = self->_lastOpenedAppId24h;
  if (lastOpenedAppId24h | *(equalCopy + 56))
  {
    if (![(NSString *)lastOpenedAppId24h isEqual:?])
    {
      goto LABEL_353;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 508);
  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_lastOpenedAppHour24h != *(equalCopy + 18))
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

    v9 = equalCopy[505];
    if (self->_isSleepModeOn)
    {
      if ((equalCopy[505] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[505])
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

    v10 = equalCopy[501];
    if (self->_isDoNotDisturbOn)
    {
      if ((equalCopy[501] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[501])
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

    v11 = equalCopy[503];
    if (self->_isDrivingModeOn)
    {
      if ((equalCopy[503] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[503])
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
    if ((v8 & 0x200000000) == 0 || self->_openedNotificationRatio24h != *(equalCopy + 34))
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
    if ((v8 & 0x1000) == 0 || self->_googleDriveAppLaunchCount1w != *(equalCopy + 13))
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
    if ((v8 & 0x2000) == 0 || self->_googlePhotoAppLaunchCount1w != *(equalCopy + 14))
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
    if ((v8 & 0x200) == 0 || self->_dropboxAppLaunchCount1w != *(equalCopy + 10))
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
    if ((v8 & 0x10) == 0 || self->_cameraAppLaunchCount1w != *(equalCopy + 5))
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
    if ((v8 & 0x2000000000) == 0 || self->_photosAppLaunchCount1w != *(equalCopy + 38))
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
    if ((v8 & 0x400) == 0 || self->_filesAppLaunchCount1w != *(equalCopy + 11))
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
    if ((v8 & 0x40000000000) == 0 || self->_totalNotificationCount1w != *(equalCopy + 43))
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
    if ((v8 & 0x200000000000) == 0 || self->_totalOpenedNotificationCount1w != *(equalCopy + 46))
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
    if ((v8 & 0x100000000) == 0 || self->_openedNotificationRatio1w != *(equalCopy + 33))
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
    if ((v8 & 0x10000000) == 0 || self->_openedICloudNotificationRatio1w != *(equalCopy + 29))
    {
      goto LABEL_353;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_353;
  }

  notificationUsageTypeTop1 = self->_notificationUsageTypeTop1;
  if (notificationUsageTypeTop1 | *(equalCopy + 57) && ![(NSString *)notificationUsageTypeTop1 isEqual:?])
  {
    goto LABEL_353;
  }

  notificationUsageTypeTop2 = self->_notificationUsageTypeTop2;
  if (notificationUsageTypeTop2 | *(equalCopy + 58))
  {
    if (![(NSString *)notificationUsageTypeTop2 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  notificationUsageTypeTop3 = self->_notificationUsageTypeTop3;
  if (notificationUsageTypeTop3 | *(equalCopy + 59))
  {
    if (![(NSString *)notificationUsageTypeTop3 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  iCloudNotificationUsageTypeTop1 = self->_iCloudNotificationUsageTypeTop1;
  if (iCloudNotificationUsageTypeTop1 | *(equalCopy + 51))
  {
    if (![(NSString *)iCloudNotificationUsageTypeTop1 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  iCloudNotificationUsageTypeTop2 = self->_iCloudNotificationUsageTypeTop2;
  if (iCloudNotificationUsageTypeTop2 | *(equalCopy + 52))
  {
    if (![(NSString *)iCloudNotificationUsageTypeTop2 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  iCloudNotificationUsageTypeTop3 = self->_iCloudNotificationUsageTypeTop3;
  if (iCloudNotificationUsageTypeTop3 | *(equalCopy + 53))
  {
    if (![(NSString *)iCloudNotificationUsageTypeTop3 isEqual:?])
    {
      goto LABEL_353;
    }
  }

  v18 = self->_has;
  v19 = *(equalCopy + 508);
  if ((*&v18 & 0x1000000) != 0)
  {
    if ((v19 & 0x1000000) == 0 || self->_mlServerScore != *(equalCopy + 25))
    {
      goto LABEL_353;
    }
  }

  else if ((v19 & 0x1000000) != 0)
  {
    goto LABEL_353;
  }

  labelMessage = self->_labelMessage;
  if (labelMessage | *(equalCopy + 55))
  {
    if (![(ISOPBSubscriptionLabelMessage *)labelMessage isEqual:?])
    {
      goto LABEL_353;
    }

    v18 = self->_has;
  }

  v21 = *(equalCopy + 508);
  if ((*&v18 & 0x100) != 0)
  {
    if ((v21 & 0x100) == 0 || self->_diskStorageCapacityBytes != *(equalCopy + 9))
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
    if ((v21 & 0x400000000000) == 0 || self->_usedDiskCapacityBytes != *(equalCopy + 47))
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
    if ((v21 & 0x20000000) == 0 || self->_openedICloudNotificationRatio2w != *(equalCopy + 30))
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
    if ((v21 & 0x8000000000000) == 0 || self->_trafficType != *(equalCopy + 123))
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
    if ((v21 & 0x80) == 0 || self->_dailyScreenTimeSeconds != *(equalCopy + 8))
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
    if ((v21 & 8) == 0 || self->_avgWeeklyScreenTimeSeconds2w != *(equalCopy + 4))
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
    if ((v21 & 0x40) == 0 || self->_daemonVersion != *(equalCopy + 7))
    {
      goto LABEL_353;
    }
  }

  else if ((v21 & 0x40) != 0)
  {
    goto LABEL_353;
  }

  oBSOLETEDayOfWeek = self->_oBSOLETEDayOfWeek;
  if (oBSOLETEDayOfWeek | *(equalCopy + 60) && ![(NSString *)oBSOLETEDayOfWeek isEqual:?])
  {
    goto LABEL_353;
  }

  deviceModelName = self->_deviceModelName;
  if (deviceModelName | *(equalCopy + 49))
  {
    if (![(NSString *)deviceModelName isEqual:?])
    {
      goto LABEL_353;
    }
  }

  v24 = self->_has;
  v25 = *(equalCopy + 508);
  if ((*&v24 & 0x800000000000) != 0)
  {
    if ((v25 & 0x800000000000) == 0 || self->_dayOfWeek != *(equalCopy + 96))
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
    if ((v25 & 0x400000000) == 0 || self->_osVersionMajorVersion != *(equalCopy + 35))
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
    if ((v25 & 0x800000000) == 0 || self->_osVersionMinorVersion != *(equalCopy + 36))
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
    if ((v25 & 0x1000000000) == 0 || self->_osVersionPatchVersion != *(equalCopy + 37))
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
    if ((v25 & 0x8000000) == 0 || self->_offsetMins != *(equalCopy + 28))
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
    if ((v25 & 0x2000000000000) == 0 || self->_icloudNotificationActionLabel != *(equalCopy + 108))
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
    if ((v25 & 0x400000) == 0 || self->_minsUntilICloudNotificationOpened != *(equalCopy + 23))
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
    if ((v25 & 4) == 0 || self->_appLaunchCountSameSlot != *(equalCopy + 3))
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
    if ((v25 & 0x20) == 0 || self->_cameraLaunchCountSameSlot != *(equalCopy + 6))
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
    if ((v25 & 0x10000000000) == 0 || self->_photosLaunchCountSameSlot != *(equalCopy + 41))
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
    if ((v25 & 0x800) == 0 || self->_filesLaunchCountSameSlot != *(equalCopy + 12))
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

    v26 = equalCopy[506];
    if (self->_isSleepModeOnSameSlot)
    {
      if ((equalCopy[506] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[506])
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

    v27 = equalCopy[502];
    if (self->_isDoNotDisturbOnSameSlot)
    {
      if ((equalCopy[502] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[502])
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

    v28 = equalCopy[504];
    if (self->_isDrivingModeOnSameSlot)
    {
      if ((equalCopy[504] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[504])
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
    if ((v25 & 0x2000000) == 0 || self->_numNotificationsSameSlot != *(equalCopy + 26))
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
    if ((v25 & 0x4000000) == 0 || self->_numOpenedNotificationsSameSlot != *(equalCopy + 27))
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
    if ((v25 & 0x40000) == 0 || self->_minsSinceLastCameraAppLaunch1w != *(equalCopy + 19))
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
    if ((v25 & 0x100000) == 0 || self->_minsSinceLastPhotosAppLaunch1w != *(equalCopy + 21))
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
    if ((v25 & 0x80000) == 0 || self->_minsSinceLastFilesAppLaunch1w != *(equalCopy + 20))
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
    if ((v25 & 0x10000) == 0 || self->_isSleepModeOnCount2w != *(equalCopy + 17))
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
    if ((v25 & 0x4000) == 0 || self->_isDoNotDisturbOnCount2w != *(equalCopy + 15))
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
    if ((v25 & 0x8000) == 0 || self->_isDrivingModeOnCount2w != *(equalCopy + 16))
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
    if ((v25 & 2) == 0 || self->_appLaunchCount2wMedian != *(equalCopy + 2))
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
    if ((v25 & 1) == 0 || self->_appLaunchCount2wMax != *(equalCopy + 1))
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
    if ((v25 & 0x8000000000) == 0 || self->_photosLaunchCount2wMedian != *(equalCopy + 40))
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
    if ((v25 & 0x4000000000) == 0 || self->_photosLaunchCount2wMax != *(equalCopy + 39))
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
    if ((v25 & 0x100000000000) == 0 || self->_totalNotificationCount2wMedian != *(equalCopy + 45))
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
    if ((v25 & 0x80000000000) == 0 || self->_totalNotificationCount2wMax != *(equalCopy + 44))
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
    if ((v25 & 0x80000000) == 0 || self->_openedNotificationCount2wMedian != *(equalCopy + 32))
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
    if ((v25 & 0x40000000) == 0 || self->_openedNotificationCount2wMax != *(equalCopy + 31))
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

    v29 = equalCopy[500];
    if (self->_buyLabel)
    {
      if ((equalCopy[500] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (equalCopy[500])
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
    if ((v25 & 0x200000) == 0 || self->_minsUntilICloudBuy != *(equalCopy + 22))
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
      v30 = equalCopy[507];
      if (self->_openLabelSubStream)
      {
        if ((equalCopy[507] & 1) == 0)
        {
          goto LABEL_353;
        }

        goto LABEL_338;
      }

      if ((equalCopy[507] & 1) == 0)
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
    if ((v25 & 0x800000) == 0 || self->_minsUntilICloudOpenedSubStream != *(equalCopy + 24))
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
    if ((v25 & 0x10000000000000) == 0 || self->_userTier != *(equalCopy + 124))
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
    if ((v25 & 0x4000000000000) == 0 || self->_oBSOLETETrafficType != *(equalCopy + 122))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 508);
  if ((v6 & 0x20000000000) != 0)
  {
    self->_timestampMillis = *(fromCopy + 42);
    *&self->_has |= 0x20000000000uLL;
    v6 = *(fromCopy + 508);
  }

  if ((v6 & 0x1000000000000) != 0)
  {
    self->_hourOfDay = *(fromCopy + 100);
    *&self->_has |= 0x1000000000000uLL;
  }

  v12 = fromCopy;
  if (*(fromCopy + 56))
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