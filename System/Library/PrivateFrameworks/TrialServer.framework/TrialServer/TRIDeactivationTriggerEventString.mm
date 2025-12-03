@interface TRIDeactivationTriggerEventString
+ (id)categoricalValueForTriggerEvent:(unint64_t)event;
@end

@implementation TRIDeactivationTriggerEventString

+ (id)categoricalValueForTriggerEvent:(unint64_t)event
{
  if (event - 1 > 0x18)
  {
    return @"legacy-standard";
  }

  else
  {
    return off_279DE3C68[event - 1];
  }
}

@end