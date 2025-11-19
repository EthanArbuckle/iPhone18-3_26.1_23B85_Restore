@interface _SBAmbientOverridableDateProvider
- (_SBAmbientOverridableDateProvider)init;
@end

@implementation _SBAmbientOverridableDateProvider

- (_SBAmbientOverridableDateProvider)init
{
  v8.receiver = self;
  v8.super_class = _SBAmbientOverridableDateProvider;
  v2 = [(_SBAmbientOverridableDateProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D65F08]);
    v4 = [MEMORY[0x277D67D50] sharedInstance];
    v5 = [v3 initWithDateProvider:v4];
    dateProvider = v2->_dateProvider;
    v2->_dateProvider = v5;
  }

  return v2;
}

@end