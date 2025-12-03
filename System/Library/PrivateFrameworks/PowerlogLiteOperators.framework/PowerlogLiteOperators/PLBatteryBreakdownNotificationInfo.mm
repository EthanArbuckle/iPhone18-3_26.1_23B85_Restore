@interface PLBatteryBreakdownNotificationInfo
+ (double)representativeDisplayPower;
- (PLBatteryBreakdownNotificationInfo)initWithEntry:(id)entry;
- (double)activeEnergy;
- (double)calculateActiveEnergyForNSEDuration:(double)duration andCount:(unint64_t)count withNominalEnergy:(double)energy;
- (double)notificationEnergy;
- (id)description;
- (void)combineWith:(id)with;
@end

@implementation PLBatteryBreakdownNotificationInfo

- (PLBatteryBreakdownNotificationInfo)initWithEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = [entryCopy objectForKeyedSubscript:@"NotificationBundleID"];
  if (!selfCopy)
  {
    goto LABEL_14;
  }

  v6 = [entryCopy objectForKeyedSubscript:@"NotificationType"];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [entryCopy objectForKeyedSubscript:@"BgWakingCount"];
  if (!v8)
  {

LABEL_10:
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [entryCopy objectForKeyedSubscript:@"BgWakingNSEDuration"];

  if (!v10)
  {
LABEL_11:
    selfCopy = 0;
    goto LABEL_14;
  }

  v27.receiver = self;
  v27.super_class = PLBatteryBreakdownNotificationInfo;
  v11 = [(PLBatteryBreakdownNotificationInfo *)&v27 init];
  if (v11)
  {
    v12 = [entryCopy objectForKeyedSubscript:@"NotificationBundleID"];
    [(PLBatteryBreakdownNotificationInfo *)v11 setBundleID:v12];

    bundleID = [(PLBatteryBreakdownNotificationInfo *)v11 bundleID];
    -[PLBatteryBreakdownNotificationInfo setIsFirstParty:](v11, "setIsFirstParty:", [bundleID hasPrefix:@"com.apple."]);

    v14 = [entryCopy objectForKeyedSubscript:@"NotificationType"];
    -[PLBatteryBreakdownNotificationInfo setNotificationType:](v11, "setNotificationType:", [v14 intValue]);

    if (![(PLBatteryBreakdownNotificationInfo *)v11 notificationType]|| [(PLBatteryBreakdownNotificationInfo *)v11 notificationType]== -1)
    {
      [(PLBatteryBreakdownNotificationInfo *)v11 setBgWakingCount:0];
      [(PLBatteryBreakdownNotificationInfo *)v11 setBgWakingNSEDuration:0.0];
      [(PLBatteryBreakdownNotificationInfo *)v11 setFgWakingCount:0];
      [(PLBatteryBreakdownNotificationInfo *)v11 setFgWakingNSEDuration:0.0];
      [(PLBatteryBreakdownNotificationInfo *)v11 setNonWakingCount:0];
      [(PLBatteryBreakdownNotificationInfo *)v11 setNonWakingNSEDuration:0.0];
      v21 = [entryCopy objectForKeyedSubscript:@"BgWakingCount"];
      intValue = [v21 intValue];
      v23 = [entryCopy objectForKeyedSubscript:@"FgWakingCount"];
      v24 = [v23 intValue] + intValue;
      v25 = [entryCopy objectForKeyedSubscript:@"NonWakingCount"];
      -[PLBatteryBreakdownNotificationInfo setLocalCount:](v11, "setLocalCount:", (v24 + [v25 intValue]));
    }

    else
    {
      v15 = [entryCopy objectForKeyedSubscript:@"BgWakingCount"];
      -[PLBatteryBreakdownNotificationInfo setBgWakingCount:](v11, "setBgWakingCount:", [v15 intValue]);

      v16 = [entryCopy objectForKeyedSubscript:@"BgWakingNSEDuration"];
      [v16 doubleValue];
      [(PLBatteryBreakdownNotificationInfo *)v11 setBgWakingNSEDuration:?];

      v17 = [entryCopy objectForKeyedSubscript:@"FgWakingCount"];
      -[PLBatteryBreakdownNotificationInfo setFgWakingCount:](v11, "setFgWakingCount:", [v17 intValue]);

      v18 = [entryCopy objectForKeyedSubscript:@"FgWakingNSEDuration"];
      [v18 doubleValue];
      [(PLBatteryBreakdownNotificationInfo *)v11 setFgWakingNSEDuration:?];

      v19 = [entryCopy objectForKeyedSubscript:@"NonWakingCount"];
      -[PLBatteryBreakdownNotificationInfo setNonWakingCount:](v11, "setNonWakingCount:", [v19 intValue]);

      v20 = [entryCopy objectForKeyedSubscript:@"NonWakingNSEDuration"];
      [v20 doubleValue];
      [(PLBatteryBreakdownNotificationInfo *)v11 setNonWakingNSEDuration:?];

      [(PLBatteryBreakdownNotificationInfo *)v11 setLocalCount:0];
    }
  }

  self = v11;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  fgWakingCount = [(PLBatteryBreakdownNotificationInfo *)self fgWakingCount];
  [(PLBatteryBreakdownNotificationInfo *)self fgWakingNSEDuration];
  v6 = v5;
  bgWakingCount = [(PLBatteryBreakdownNotificationInfo *)self bgWakingCount];
  [(PLBatteryBreakdownNotificationInfo *)self bgWakingNSEDuration];
  v9 = v8;
  nonWakingCount = [(PLBatteryBreakdownNotificationInfo *)self nonWakingCount];
  [(PLBatteryBreakdownNotificationInfo *)self nonWakingNSEDuration];
  v12 = v11;
  localCount = [(PLBatteryBreakdownNotificationInfo *)self localCount];
  [(PLBatteryBreakdownNotificationInfo *)self activeEnergy];
  v15 = v14;
  [(PLBatteryBreakdownNotificationInfo *)self baseEnergy];
  v17 = v16;
  [(PLBatteryBreakdownNotificationInfo *)self displayEnergy];
  return [v3 stringWithFormat:@"FG Wake: %zu %.2fs, BG Wake: %zu %.2fs, Non-Wake: %zu %.2fs, Local: %zu, active: %.2f, base: %.2f, disp: %.2f", fgWakingCount, v6, bgWakingCount, v9, nonWakingCount, v12, localCount, v15, v17, v18];
}

- (void)combineWith:(id)with
{
  if (with)
  {
    withCopy = with;
    -[PLBatteryBreakdownNotificationInfo setBgWakingCount:](self, "setBgWakingCount:", -[PLBatteryBreakdownNotificationInfo bgWakingCount](self, "bgWakingCount") + [withCopy bgWakingCount]);
    [withCopy bgWakingNSEDuration];
    v6 = v5;
    [(PLBatteryBreakdownNotificationInfo *)self bgWakingNSEDuration];
    [(PLBatteryBreakdownNotificationInfo *)self setBgWakingNSEDuration:v6 + v7];
    -[PLBatteryBreakdownNotificationInfo setFgWakingCount:](self, "setFgWakingCount:", -[PLBatteryBreakdownNotificationInfo fgWakingCount](self, "fgWakingCount") + [withCopy fgWakingCount]);
    [withCopy fgWakingNSEDuration];
    v9 = v8;
    [(PLBatteryBreakdownNotificationInfo *)self fgWakingNSEDuration];
    [(PLBatteryBreakdownNotificationInfo *)self setFgWakingNSEDuration:v9 + v10];
    -[PLBatteryBreakdownNotificationInfo setNonWakingCount:](self, "setNonWakingCount:", -[PLBatteryBreakdownNotificationInfo nonWakingCount](self, "nonWakingCount") + [withCopy nonWakingCount]);
    [withCopy nonWakingNSEDuration];
    v12 = v11;
    [(PLBatteryBreakdownNotificationInfo *)self nonWakingNSEDuration];
    [(PLBatteryBreakdownNotificationInfo *)self setNonWakingNSEDuration:v12 + v13];
    localCount = [withCopy localCount];

    v15 = [(PLBatteryBreakdownNotificationInfo *)self localCount]+ localCount;

    [(PLBatteryBreakdownNotificationInfo *)self setLocalCount:v15];
  }
}

- (double)activeEnergy
{
  [(PLBatteryBreakdownNotificationInfo *)self fgWakingNSEDuration];
  v3 = 0.1;
  [(PLBatteryBreakdownNotificationInfo *)self calculateActiveEnergyForNSEDuration:[(PLBatteryBreakdownNotificationInfo *)self fgWakingCount] andCount:v4 withNominalEnergy:0.1];
  v6 = v5;
  [(PLBatteryBreakdownNotificationInfo *)self bgWakingNSEDuration];
  [(PLBatteryBreakdownNotificationInfo *)self calculateActiveEnergyForNSEDuration:[(PLBatteryBreakdownNotificationInfo *)self bgWakingCount] andCount:v7 withNominalEnergy:0.1];
  v9 = v8;
  [(PLBatteryBreakdownNotificationInfo *)self nonWakingNSEDuration];
  [(PLBatteryBreakdownNotificationInfo *)self calculateActiveEnergyForNSEDuration:[(PLBatteryBreakdownNotificationInfo *)self nonWakingCount] andCount:v10 withNominalEnergy:0.1];
  v12 = v11;
  if ([(PLBatteryBreakdownNotificationInfo *)self isFirstParty])
  {
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"com.apple.MobileSMS", @"com.apple.mobilemail", @"com.apple.mobilecal", 0}];
    bundleID = [(PLBatteryBreakdownNotificationInfo *)self bundleID];
    v15 = [v13 containsObject:bundleID];

    if (v15)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.2;
    }
  }

  [(PLBatteryBreakdownNotificationInfo *)self calculateActiveEnergyForNSEDuration:[(PLBatteryBreakdownNotificationInfo *)self localCount] andCount:0.0 withNominalEnergy:v3];
  return v6 + 0.0 + v9 + v12 + v16;
}

- (double)calculateActiveEnergyForNSEDuration:(double)duration andCount:(unint64_t)count withNominalEnergy:(double)energy
{
  if (duration > 0.0)
  {
    countCopy = duration / 3600.0;
    energy = 750.0;
    return countCopy * energy;
  }

  if (count)
  {
    countCopy = count;
    return countCopy * energy;
  }

  return 0.0;
}

- (double)notificationEnergy
{
  [(PLBatteryBreakdownNotificationInfo *)self baseEnergy];
  v4 = v3;
  [(PLBatteryBreakdownNotificationInfo *)self activeEnergy];
  v6 = v4 + v5;
  [(PLBatteryBreakdownNotificationInfo *)self displayEnergy];
  return v6 + v7;
}

+ (double)representativeDisplayPower
{
  if (_MergedGlobals_115 != -1)
  {
    dispatch_once(&_MergedGlobals_115, &__block_literal_global_66);
  }

  return *&qword_2811F80C8;
}

void __64__PLBatteryBreakdownNotificationInfo_representativeDisplayPower__block_invoke()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D3F430];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT AVG(%@) AS %@ FROM %@ WHERE %@=%@ AND %@>0 LIMIT %d", *MEMORY[0x277D3F430], *MEMORY[0x277D3F430], @"%@", *MEMORY[0x277D3F438], @"%d", *MEMORY[0x277D3F430], 100];
  v2 = *MEMORY[0x277D3F428];
  v3 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F428]];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:v1, v3, 10];
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "displayPower: running query %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277D3F2A0] sharedCore];
  v7 = [v6 storage];
  v8 = [v7 entriesForKey:v3 withQuery:v4];

  v9 = [v8 firstObject];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:v0];
    [v11 doubleValue];
    v13 = v12 / 1000.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:v2];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:v1, v14, 56];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "dynamicDisplayPower: running query %@", buf, 0xCu);
  }

  v17 = [MEMORY[0x277D3F2A0] sharedCore];
  v18 = [v17 storage];
  v19 = [v18 entriesForKey:v14 withQuery:v15];

  v20 = [v19 firstObject];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:v0];
    [v21 doubleValue];
    v23 = v22 / 1000.0;
  }

  else
  {
    v23 = 0.0;
  }

  *&qword_2811F80C8 = v13 + v23;

  v24 = *MEMORY[0x277D85DE8];
}

@end