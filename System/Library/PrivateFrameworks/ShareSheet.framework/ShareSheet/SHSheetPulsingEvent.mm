@interface SHSheetPulsingEvent
+ (id)startPulsingEventWithActivityUUID:(id)a3 localizedTitle:(id)a4;
+ (id)stopPulsingEventWithActivityUUID:(id)a3;
- (SHSheetPulsingEvent)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SHSheetPulsingEvent

+ (id)startPulsingEventWithActivityUUID:(id)a3 localizedTitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SHSheetPulsingEvent);
  [(SHSheetPulsingEvent *)v7 setActivityUUID:v6];

  [(SHSheetPulsingEvent *)v7 setLocalizedTitle:v5];
  [(SHSheetPulsingEvent *)v7 setIsPulsing:1];

  return v7;
}

+ (id)stopPulsingEventWithActivityUUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SHSheetPulsingEvent);
  [(SHSheetPulsingEvent *)v4 setActivityUUID:v3];

  [(SHSheetPulsingEvent *)v4 setIsPulsing:0];

  return v4;
}

- (SHSheetPulsingEvent)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHSheetPulsingEvent;
  v5 = [(SHSheetPulsingEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityUUID"];
    [(SHSheetPulsingEvent *)v5 setActivityUUID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(SHSheetPulsingEvent *)v5 setLocalizedTitle:v7];

    -[SHSheetPulsingEvent setIsPulsing:](v5, "setIsPulsing:", [v4 decodeBoolForKey:@"isPulsing"]);
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6 = a3;
  v4 = [(SHSheetPulsingEvent *)self activityUUID];
  [v6 encodeObject:v4 forKey:@"activityUUID"];

  v5 = [(SHSheetPulsingEvent *)self localizedTitle];
  [v6 encodeObject:v5 forKey:@"localizedTitle"];

  [v6 encodeBool:-[SHSheetPulsingEvent isPulsing](self forKey:{"isPulsing"), @"isPulsing"}];
}

@end