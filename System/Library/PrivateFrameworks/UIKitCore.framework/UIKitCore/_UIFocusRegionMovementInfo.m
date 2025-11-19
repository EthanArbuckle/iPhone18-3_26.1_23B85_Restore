@interface _UIFocusRegionMovementInfo
+ (id)_movementWithHeading:(unint64_t)a3 linearHeading:(unint64_t)a4 originatingHeading:(unint64_t)a5 isInitial:(BOOL)a6 inputType:(unint64_t)a7;
@end

@implementation _UIFocusRegionMovementInfo

+ (id)_movementWithHeading:(unint64_t)a3 linearHeading:(unint64_t)a4 originatingHeading:(unint64_t)a5 isInitial:(BOOL)a6 inputType:(unint64_t)a7
{
  v8 = [[a1 alloc] initWithHeading:a3 linearHeading:a4 isInitial:a6 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:a7];
  [v8 setOriginatingHeading:a5];

  return v8;
}

@end