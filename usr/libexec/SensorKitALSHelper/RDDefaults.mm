@interface RDDefaults
+ (void)initialize;
- (RDDefaults)init;
- (void)dealloc;
- (void)setAuthorizationVersions:(id)versions forBundleId:(id)id;
- (void)updateAuthorizationVersions:(id)versions forBundleId:(id)id;
@end

@implementation RDDefaults

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10002B290 = os_log_create("com.apple.SensorKit", "RDDefaults");
  }
}

- (RDDefaults)init
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if (self)
  {
    v4 = v3;
    v73.receiver = self;
    v73.super_class = RDDefaults;
    self = [(RDDefaults *)&v73 init];
    if (self)
    {
      v5 = @"SegmentSizeBytes";
      self->_defaults = v4;
      v78[0] = @"Enabled";
      v78[1] = @"SegmentSizeBytes";
      v79[0] = &off_100026A50;
      v79[1] = &off_100026A68;
      v79[2] = &off_100026A80;
      v78[2] = @"MetadataSizeBytes";
      v78[3] = @"MaxAllowedMappedPages";
      v79[3] = [NSNumber numberWithUnsignedInteger:0x2000000 / NSPageSize()];
      v79[4] = &off_1000270D8;
      v78[4] = @"SegmentResizeFactor";
      v78[5] = @"SegmentPaddingFactor";
      v79[5] = &off_1000270E8;
      v79[6] = &off_100026A98;
      v78[6] = @"ArchiverBufferSizeBytes";
      v78[7] = @"ArchiveCompressionEnabled";
      v79[7] = &__kCFBooleanFalse;
      v79[8] = &off_100026AB0;
      v78[8] = @"ProtectionClass";
      v78[9] = @"DataProtectionLengthSeconds";
      v79[9] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS];
      v78[10] = @"TombstoneDataRetentionLengthSeconds";
      v79[10] = [NSNumber numberWithLongLong:60 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v78[11] = @"KeyProtectionLengthSeconds";
      v72 = 2 * XPC_ACTIVITY_INTERVAL_7_DAYS;
      v79[11] = [NSNumber numberWithLongLong:?];
      v79[12] = &__kCFBooleanFalse;
      v78[12] = @"Curated";
      v78[13] = @"DatastoreVersion";
      v79[13] = &off_100026AC8;
      v78[14] = @"UpdateCompanionIntervalSeconds";
      v79[14] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v78[15] = @"PrepareArchivesIntervalSeconds";
      v79[15] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v79[16] = &__kCFBooleanFalse;
      v78[16] = @"PrepareArchivesCPUIntensive";
      v78[17] = @"PrepareArchivesDiskIntensive";
      v79[17] = &__kCFBooleanFalse;
      v78[18] = @"HoldingPeriod";
      v79[18] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
      v78[19] = @"SyncCompanionStateToGizmoInterval";
      v79[19] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_30_MIN];
      v78[20] = @"ResourceSendTimeout";
      v79[20] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v79[21] = &__kCFBooleanTrue;
      v78[21] = @"AnalyticsEnabled";
      v78[22] = @"ResendArchivesDelay";
      v79[22] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_15_MIN];
      v78[23] = @"ReminderAlertThresholdSecs";
      v79[23] = [NSNumber numberWithLongLong:30 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v79[24] = &off_100026AE0;
      v78[24] = @"SendResourcePriority";
      v78[25] = @"FirstReminderAlertThresholdSecs";
      v79[25] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
      v78[26] = @"ArchiveResendThresholdSecs";
      v79[26] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR + 3 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v79[27] = &off_100027158;
      v78[27] = @"LegacyResearchStudyBundleIDs";
      v78[28] = @"LegacyResearchStudyEntitlement";
      v79[28] = @"com.apple.SensorAndUsageData";
      v78[29] = @"PreferWifiAssertionDurationSecs";
      v79[29] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_15_MIN];
      v79[30] = &off_1000270F8;
      v78[30] = @"StateCacheSendDebounceIntervalSecs";
      v78[31] = @"AdditionalDiagnosticsEnabled";
      v79[31] = &__kCFBooleanFalse;
      v78[32] = @"TimeSyncSendDebounceIntervalSecs";
      v79[32] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v79[33] = &off_100026AF8;
      v78[33] = @"PendingMessageResendLimit";
      v78[34] = @"TimeSyncMessageTimeoutSecs";
      v79[34] = &off_100027108;
      v79[35] = &off_100026B10;
      v78[35] = @"MaxArchiveBytes";
      v78[36] = @"CacheDeleteAgeLimit";
      v76[0] = [&off_100026B28 stringValue];
      v77[0] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS];
      v76[1] = [&off_100026B40 stringValue];
      v77[1] = [NSNumber numberWithLongLong:?];
      v76[2] = [&off_100026B58 stringValue];
      v77[2] = [NSNumber numberWithLongLong:5 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v76[3] = [&off_100026B70 stringValue];
      v77[3] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v76[4] = [&off_100026B88 stringValue];
      v77[4] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v79[36] = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:5];
      v78[37] = @"RTCResetTimestampThresholdSecs";
      v79[37] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v79[38] = &off_100026BA0;
      v78[38] = @"FaceMetricsReminderWeekday";
      v78[39] = @"FaceMetricsReminderHour";
      v79[39] = &off_100026BB8;
      v79[40] = &off_100026BD0;
      v78[40] = @"FaceMetricsReminderMinute";
      v78[41] = @"SegmentFillDurationSecs";
      v78[42] = @"SegmentSizeMinimumFactor";
      v79[41] = &off_100026BE8;
      v79[42] = &off_100027118;
      if ([SRSensorRotationRate length])
      {
        v5 = [SRSensorRotationRate stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[43] = v5;
      v79[43] = &off_100026C00;
      v6 = [SRSensorAccelerometer length];
      v7 = @"SegmentSizeBytes";
      if (v6)
      {
        v7 = [SRSensorAccelerometer stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[44] = v7;
      v79[44] = &off_100026C00;
      v8 = [SRSensorPedometerData length];
      v9 = @"SegmentSizeBytes";
      if (v8)
      {
        v9 = [SRSensorPedometerData stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[45] = v9;
      v79[45] = &off_100026C00;
      v10 = [SRSensorAmbientPressure length];
      v11 = @"SegmentSizeBytes";
      if (v10)
      {
        v11 = [SRSensorAmbientPressure stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[46] = v11;
      v79[46] = &off_100026C00;
      v12 = SRSensorElevation;
      v13 = [SRSensorElevation length];
      v14 = @"SegmentSizeBytes";
      if (v13)
      {
        v14 = [v12 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[47] = v14;
      v79[47] = &off_100026C00;
      v15 = [SRSensorOdometer length];
      v16 = @"SegmentSizeBytes";
      if (v15)
      {
        v16 = [SRSensorOdometer stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[48] = v16;
      v79[48] = &off_100026C00;
      v17 = [SRSensorPedometerData length];
      v18 = @"SegmentPaddingFactor";
      if (v17)
      {
        v18 = [SRSensorPedometerData stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[49] = v18;
      v79[49] = &off_1000270D8;
      v19 = [SRSensorHeartRate length];
      v20 = @"SegmentPaddingFactor";
      if (v19)
      {
        v20 = [SRSensorHeartRate stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[50] = v20;
      v79[50] = &off_1000270D8;
      v21 = [SRSensorOdometer length];
      v22 = @"SegmentPaddingFactor";
      if (v21)
      {
        v22 = [SRSensorOdometer stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[51] = v22;
      v79[51] = &off_1000270D8;
      v23 = [SRSensorAmbientLightSensor length];
      v24 = @"SegmentSizeBytes";
      if (v23)
      {
        v24 = [SRSensorAmbientLightSensor stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[52] = v24;
      v79[52] = &off_100026C00;
      v25 = [SRSensorOnWristState length];
      v26 = @"SegmentSizeBytes";
      if (v25)
      {
        v26 = [SRSensorOnWristState stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[53] = v26;
      v79[53] = &off_100026A98;
      v27 = SRSensorPPG;
      v28 = [SRSensorPPG length];
      v29 = @"SegmentSizeBytes";
      if (v28)
      {
        v29 = [v27 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[54] = v29;
      v79[54] = &off_100026C00;
      v30 = [v27 length];
      v31 = @"MaxAllowedMappedPages";
      if (v30)
      {
        v31 = [v27 stringByAppendingFormat:@".%@", @"MaxAllowedMappedPages"];
      }

      v78[55] = v31;
      v79[55] = [NSNumber numberWithUnsignedInteger:0x3200000 / NSPageSize()];
      v32 = [SRSensorVisits length];
      v33 = @"SegmentSizeBytes";
      if (v32)
      {
        v33 = [SRSensorVisits stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[56] = v33;
      v79[56] = &off_100026A98;
      v34 = SRSensorStrideCalibration;
      v35 = [SRSensorStrideCalibration length];
      v36 = @"SegmentSizeBytes";
      if (v35)
      {
        v36 = [v34 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[57] = v36;
      v79[57] = &off_100026A98;
      v37 = SRSensorFacialMetrics;
      v38 = [SRSensorFacialMetrics length];
      v39 = @"SegmentSizeBytes";
      if (v38)
      {
        v39 = [v37 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[58] = v39;
      v79[58] = &off_100026C00;
      v40 = [v37 length];
      v41 = @"HoldingPeriod";
      if (v40)
      {
        v41 = [v37 stringByAppendingFormat:@".%@", @"HoldingPeriod"];
      }

      v78[59] = v41;
      v79[59] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS + XPC_ACTIVITY_INTERVAL_1_DAY / 2];
      v42 = [v37 length];
      v43 = @"DataProtectionLengthSeconds";
      if (v42)
      {
        v43 = [v37 stringByAppendingFormat:@".%@", @"DataProtectionLengthSeconds"];
      }

      v78[60] = v43;
      v79[60] = [NSNumber numberWithLongLong:v72];
      v44 = [v37 length];
      v45 = @"CacheDeleteAgeLimit";
      if (v44)
      {
        v45 = [v37 stringByAppendingFormat:@".%@", @"CacheDeleteAgeLimit"];
      }

      v78[61] = v45;
      v74[0] = [&off_100026B28 stringValue];
      v75[0] = [NSNumber numberWithLongLong:v72];
      v74[1] = [&off_100026B40 stringValue];
      v75[1] = [NSNumber numberWithLongLong:6 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
      v74[2] = [&off_100026B58 stringValue];
      v75[2] = [NSNumber numberWithLongLong:5 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
      v74[3] = [&off_100026B70 stringValue];
      v75[3] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
      v74[4] = [&off_100026B88 stringValue];
      v75[4] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v79[61] = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:5];
      v46 = SRSensorECG;
      v47 = [SRSensorECG length];
      v48 = @"MetadataSizeBytes";
      if (v47)
      {
        v48 = [v46 stringByAppendingFormat:@".%@", @"MetadataSizeBytes"];
      }

      v78[62] = v48;
      v79[62] = &off_100026C18;
      v49 = [SRSensorTelephonySpeechMetrics length];
      v50 = @"SegmentSizeBytes";
      if (v49)
      {
        v50 = [SRSensorTelephonySpeechMetrics stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[63] = v50;
      v79[63] = &off_100026C30;
      v51 = SRSensorTelephonySoundDetection;
      v52 = [SRSensorTelephonySoundDetection length];
      v53 = @"SegmentSizeBytes";
      if (v52)
      {
        v53 = [v51 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[64] = v53;
      v79[64] = &off_100026C30;
      v54 = SRSensorTelephonySpeechEmotion;
      v55 = [SRSensorTelephonySpeechEmotion length];
      v56 = @"SegmentSizeBytes";
      if (v55)
      {
        v56 = [v54 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[65] = v56;
      v79[65] = &off_100026C30;
      v57 = [SRSensorTelephonySpeechMetrics length];
      v58 = @"SegmentPaddingFactor";
      if (v57)
      {
        v58 = [SRSensorTelephonySpeechMetrics stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[66] = v58;
      v79[66] = &off_100027128;
      v59 = [v51 length];
      v60 = @"SegmentPaddingFactor";
      if (v59)
      {
        v60 = [v51 stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[67] = v60;
      v79[67] = &off_100027128;
      v61 = [v54 length];
      v62 = @"SegmentPaddingFactor";
      if (v61)
      {
        v62 = [v54 stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[68] = v62;
      v79[68] = &off_100027128;
      v63 = [SRSensorMediaEvents length];
      v64 = @"SegmentSizeBytes";
      if (v63)
      {
        v64 = [SRSensorMediaEvents stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[69] = v64;
      v79[69] = &off_100026C00;
      v65 = [SRSensorMediaEvents length];
      v66 = @"SegmentPaddingFactor";
      if (v65)
      {
        v66 = [SRSensorMediaEvents stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v78[70] = v66;
      v79[70] = &off_100027128;
      v67 = [SRSensorDeviceUsageReport length];
      v68 = @"SegmentSizeBytes";
      if (v67)
      {
        v68 = [SRSensorDeviceUsageReport stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v78[71] = v68;
      v79[71] = &off_100026C00;
      v69 = [SRSensorDeviceUsageReport length];
      v70 = @"SegmentSizeMinimumFactor";
      if (v69)
      {
        v70 = [SRSensorDeviceUsageReport stringByAppendingFormat:@".%@", @"SegmentSizeMinimumFactor"];
      }

      v78[72] = v70;
      v79[72] = &off_100027138;
      [(NSUserDefaults *)self->_defaults registerDefaults:[NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:73]];
    }
  }

  return self;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 24);
  }

  v3.receiver = self;
  v3.super_class = RDDefaults;
  [(RDDefaults *)&v3 dealloc];
}

- (void)setAuthorizationVersions:(id)versions forBundleId:(id)id
{
  v7 = [NSMutableDictionary alloc];
  if (self)
  {
    v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"AuthorizationVersions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 initWithDictionary:v8];
  [v9 setObject:versions forKeyedSubscript:id];
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"AuthorizationVersions"];
}

- (void)updateAuthorizationVersions:(id)versions forBundleId:(id)id
{
  v7 = [NSMutableDictionary alloc];
  if (self)
  {
    v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"AuthorizationVersions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 initWithDictionary:v8];
  v10 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(v9, "objectForKeyedSubscript:", id)}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [versions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(versions);
        }

        [v10 setObject:objc_msgSend(versions forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v15 + 1) + 8 * v14)), *(*(&v15 + 1) + 8 * v14)}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [versions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [v9 setObject:v10 forKeyedSubscript:id];
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"AuthorizationVersions"];
}

@end