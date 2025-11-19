@interface DefaultSpamFilterSettingsProvider
- (void)updateExtensions;
@end

@implementation DefaultSpamFilterSettingsProvider

- (void)updateExtensions
{
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);

  sub_21B91E3CC();

  v3 = *(**self->_extensionObserver + 312);

  v3(v4);
}

@end