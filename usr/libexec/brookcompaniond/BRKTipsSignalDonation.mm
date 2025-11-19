@interface BRKTipsSignalDonation
- (BRKTipsSignalDonation)init;
- (void)_makeTipsSignalDonationUpdate;
@end

@implementation BRKTipsSignalDonation

- (BRKTipsSignalDonation)init
{
  v7.receiver = self;
  v7.super_class = BRKTipsSignalDonation;
  v2 = [(BRKTipsSignalDonation *)&v7 init];
  if (v2)
  {
    v3 = +[BRKSettings settingsForActiveDevice];
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_makeTipsSignalDonationUpdate" name:BRKSettingsDidUpdateNotification object:0];

    [(BRKTipsSignalDonation *)v2 _makeTipsSignalDonationUpdate];
  }

  return v2;
}

- (void)_makeTipsSignalDonationUpdate
{
  v3 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[BRKTipsSignalDonation _makeTipsSignalDonationUpdate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v4 = +[BMStreams discoverabilitySignal];
  v5 = [v4 source];
  v6 = [BMDiscoverabilitySignalEvent alloc];
  if ([(BRKSettings *)self->_settings isEnabled])
  {
    v7 = @"on";
  }

  else
  {
    v7 = @"off";
  }

  v8 = [v6 initWithIdentifier:@"com.apple.health.handwashing" bundleID:@"com.apple.brook" context:v7];
  [v5 sendEvent:v8];
  v9 = [BMDiscoverabilitySignalEvent alloc];
  if ([(BRKSettings *)self->_settings areRemindersEnabled])
  {
    v10 = @"on";
  }

  else
  {
    v10 = @"off";
  }

  v11 = [v9 initWithIdentifier:@"com.apple.health.handwashing.home-reminders" bundleID:@"com.apple.brook" context:v10];
  [v5 sendEvent:v11];
}

@end