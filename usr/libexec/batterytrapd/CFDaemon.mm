@interface CFDaemon
- (CFDaemon)init;
- (void)_handleLocaleChange;
- (void)_handleTimeZoneChange;
- (void)_updateLocaleChange;
- (void)clearAllVariables;
- (void)set24hMode;
- (void)setDST;
- (void)setLanguageDirection;
- (void)setNumberingSystem;
- (void)setUTCOffset;
- (void)writeAllVariables;
@end

@implementation CFDaemon

- (void)set24hMode
{
  nvramHelper = self->nvramHelper;
  read24HrMode = [(CFHelper *)self->cfPrefsHelper read24HrMode];
  [(NVRAMHelper *)nvramHelper writeNVRAM:@"alpm-24h-mode"];
}

- (void)setDST
{
  cfPrefsHelper = self->cfPrefsHelper;
  v6 = 0;
  v7 = 0;
  [(CFHelper *)cfPrefsHelper readDST:&v7];
  v4 = v7;
  v5 = v6;
  [(NVRAMHelper *)self->nvramHelper writeNVRAM:@"alpm-next-dst"];
  [(NVRAMHelper *)self->nvramHelper writeNVRAM:@"alpm-dst-offset"];
}

- (void)setUTCOffset
{
  nvramHelper = self->nvramHelper;
  readUTCOffset = [(CFHelper *)self->cfPrefsHelper readUTCOffset];
  [(NVRAMHelper *)nvramHelper writeNVRAM:@"utc-offset"];
}

- (void)setNumberingSystem
{
  nvramHelper = self->nvramHelper;
  readNumberingSystem = [(CFHelper *)self->cfPrefsHelper readNumberingSystem];
  [(NVRAMHelper *)nvramHelper writeNVRAM:@"alpm-number-system"];
}

- (void)setLanguageDirection
{
  nvramHelper = self->nvramHelper;
  readLanguageDirection = [(CFHelper *)self->cfPrefsHelper readLanguageDirection];
  [(NVRAMHelper *)nvramHelper writeNVRAM:@"alpm-language-direction"];
}

- (void)writeAllVariables
{
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_DEBUG))
  {
    sub_1000028C8(logs, v4, v5, v6, v7, v8, v9, v10);
  }

  [(CFDaemon *)self setDST];
  [(CFDaemon *)self setUTCOffset];
  [(CFDaemon *)self set24hMode];
  [(CFDaemon *)self setNumberingSystem];
  [(CFDaemon *)self setLanguageDirection];
  [(NVRAMHelper *)self->nvramHelper syncNVRAM];
}

- (void)clearAllVariables
{
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_DEBUG))
  {
    sub_100002900(logs, v4, v5, v6, v7, v8, v9, v10);
  }

  [(NVRAMHelper *)self->nvramHelper clearNVRAM:@"alpm-next-dst"];
  [(NVRAMHelper *)self->nvramHelper clearNVRAM:@"alpm-dst-offset"];
  [(NVRAMHelper *)self->nvramHelper clearNVRAM:@"utc-offset"];
  [(NVRAMHelper *)self->nvramHelper clearNVRAM:@"alpm-24h-mode"];
  [(NVRAMHelper *)self->nvramHelper clearNVRAM:@"alpm-language-direction"];
  [(NVRAMHelper *)self->nvramHelper clearNVRAM:@"alpm-number-system"];
  [(NVRAMHelper *)self->nvramHelper syncNVRAM];
}

- (void)_updateLocaleChange
{
  [(CFDaemon *)self set24hMode];
  [(CFDaemon *)self setLanguageDirection];
  [(CFDaemon *)self setNumberingSystem];
  nvramHelper = self->nvramHelper;

  [(NVRAMHelper *)nvramHelper syncNVRAM];
}

- (void)_handleTimeZoneChange
{
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, logs, OS_LOG_TYPE_DEFAULT, "com.apple.notifyd.matching notification from com.apple.system.timezone/SignificantTimeChangeNotification", v4, 2u);
  }

  [(CFDaemon *)self setDST];
  [(CFDaemon *)self setUTCOffset];
  [(NVRAMHelper *)self->nvramHelper syncNVRAM];
}

- (void)_handleLocaleChange
{
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logs, OS_LOG_TYPE_DEFAULT, "com.apple.notifyd.matching notification from AppleTimePreferencesChangedNotification", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = sub_100002060;
  v12 = sub_100002070;
  v13 = os_transaction_create();
  v4 = +[NSNotificationCenter defaultCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002078;
  v7[3] = &unk_100008258;
  v7[4] = self;
  v7[5] = buf;
  v5 = [v4 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v7];
  token = self->token;
  self->token = v5;

  _Block_object_dispose(buf, 8);
}

- (CFDaemon)init
{
  v10.receiver = self;
  v10.super_class = CFDaemon;
  v2 = [(CFDaemon *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("CoreFirmwareAgent", "com.apple.batterytrapd");
    logs = v2->logs;
    v2->logs = v3;

    v5 = [[NVRAMHelper alloc] initWithLog:v2->logs];
    nvramHelper = v2->nvramHelper;
    v2->nvramHelper = v5;

    v7 = [[CFHelper alloc] initWithLog:v2->logs];
    cfPrefsHelper = v2->cfPrefsHelper;
    v2->cfPrefsHelper = v7;

    [(CFDaemon *)v2 writeAllVariables];
  }

  return v2;
}

@end