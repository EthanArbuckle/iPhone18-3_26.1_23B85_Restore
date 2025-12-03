@interface TVRUIDateUtilities
+ (id)localizedPlaybackTimeForInterval:(double)interval;
@end

@implementation TVRUIDateUtilities

+ (id)localizedPlaybackTimeForInterval:(double)interval
{
  if (localizedPlaybackTimeForInterval__onceToken != -1)
  {
    +[TVRUIDateUtilities localizedPlaybackTimeForInterval:];
  }

  v4 = localizedPlaybackTimeForInterval__formatter;

  return [v4 stringFromTimeInterval:interval];
}

uint64_t __55__TVRUIDateUtilities_localizedPlaybackTimeForInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = localizedPlaybackTimeForInterval__formatter;
  localizedPlaybackTimeForInterval__formatter = v0;

  [localizedPlaybackTimeForInterval__formatter setUnitsStyle:1];
  v2 = localizedPlaybackTimeForInterval__formatter;

  return [v2 setAllowedUnits:96];
}

@end