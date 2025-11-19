@interface DefaultSpamFilterSettingsProvider
- (void)updateExtensions;
@end

@implementation DefaultSpamFilterSettingsProvider

- (void)updateExtensions
{
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);

  sub_7DEC();

  v3 = *(**self->_extensionObserver + 312);

  v3(v4);
}

@end