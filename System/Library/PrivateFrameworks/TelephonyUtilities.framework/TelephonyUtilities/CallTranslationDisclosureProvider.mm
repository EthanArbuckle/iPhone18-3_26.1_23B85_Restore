@interface CallTranslationDisclosureProvider
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
@end

@implementation CallTranslationDisclosureProvider

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_10044B7EC(v5);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_10044C018(v6, a4);
}

@end