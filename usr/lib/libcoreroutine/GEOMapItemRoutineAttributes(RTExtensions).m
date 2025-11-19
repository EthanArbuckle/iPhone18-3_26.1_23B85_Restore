@interface GEOMapItemRoutineAttributes(RTExtensions)
- (void)initWithLOIType:()RTExtensions event:;
@end

@implementation GEOMapItemRoutineAttributes(RTExtensions)

- (void)initWithLOIType:()RTExtensions event:
{
  v6 = a4;
  v14.receiver = a1;
  v14.super_class = &off_284638F90;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = 2 * (a3 == 1);
    }

    else
    {
      v9 = 1;
    }

    [v7 setLoiType:v9];
    if (v6)
    {
      v10 = [v6 title];
      [v8 setEventName:v10];

      [v8 setIsEventAllDay:{objc_msgSend(v6, "isAllDay")}];
      v11 = [v6 startDate];
      [v11 timeIntervalSinceReferenceDate];
      [v8 setEventDate:?];
    }

    v12 = v8;
  }

  return v8;
}

@end