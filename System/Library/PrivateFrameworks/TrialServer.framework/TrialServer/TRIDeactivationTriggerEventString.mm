@interface TRIDeactivationTriggerEventString
+ (id)categoricalValueForTriggerEvent:(unint64_t)a3;
@end

@implementation TRIDeactivationTriggerEventString

+ (id)categoricalValueForTriggerEvent:(unint64_t)a3
{
  if (a3 - 1 > 0x18)
  {
    return @"legacy-standard";
  }

  else
  {
    return off_279DE3C68[a3 - 1];
  }
}

@end