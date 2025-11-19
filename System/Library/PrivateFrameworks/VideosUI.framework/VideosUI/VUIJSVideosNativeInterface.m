@interface VUIJSVideosNativeInterface
- (NSString)language;
- (NSString)locale;
- (id)generateHash:(id)a3;
- (id)locStringForKey:(id)a3;
- (id)locStringForKeyWithCounts:(id)a3 :(id)a4;
- (void)setLocDictionary:(id)a3;
@end

@implementation VUIJSVideosNativeInterface

- (NSString)language
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 arrayForKey:@"AppleLanguages"];

  v4 = [v3 firstObject];

  return v4;
}

- (NSString)locale
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (id)locStringForKey:(id)a3
{
  v3 = a3;
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:v3];

  return v5;
}

- (id)locStringForKeyWithCounts:(id)a3 :(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:v6 withCounts:v5];

  return v8;
}

- (void)setLocDictionary:(id)a3
{
  v3 = a3;
  v4 = +[VUILocalizationManager sharedInstance];
  [v4 updateWithJSDictionary:v3];
}

- (id)generateHash:(id)a3
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:0 error:0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{crc32(0, objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"))}];

  return v4;
}

@end