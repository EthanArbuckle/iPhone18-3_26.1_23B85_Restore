@interface SHSheetPulsingEvent
+ (id)startPulsingEventWithActivityUUID:(id)d localizedTitle:(id)title;
+ (id)stopPulsingEventWithActivityUUID:(id)d;
- (SHSheetPulsingEvent)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetPulsingEvent

+ (id)startPulsingEventWithActivityUUID:(id)d localizedTitle:(id)title
{
  titleCopy = title;
  dCopy = d;
  v7 = objc_alloc_init(SHSheetPulsingEvent);
  [(SHSheetPulsingEvent *)v7 setActivityUUID:dCopy];

  [(SHSheetPulsingEvent *)v7 setLocalizedTitle:titleCopy];
  [(SHSheetPulsingEvent *)v7 setIsPulsing:1];

  return v7;
}

+ (id)stopPulsingEventWithActivityUUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(SHSheetPulsingEvent);
  [(SHSheetPulsingEvent *)v4 setActivityUUID:dCopy];

  [(SHSheetPulsingEvent *)v4 setIsPulsing:0];

  return v4;
}

- (SHSheetPulsingEvent)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SHSheetPulsingEvent;
  v5 = [(SHSheetPulsingEvent *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityUUID"];
    [(SHSheetPulsingEvent *)v5 setActivityUUID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(SHSheetPulsingEvent *)v5 setLocalizedTitle:v7];

    -[SHSheetPulsingEvent setIsPulsing:](v5, "setIsPulsing:", [coderCopy decodeBoolForKey:@"isPulsing"]);
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  activityUUID = [(SHSheetPulsingEvent *)self activityUUID];
  [coderCopy encodeObject:activityUUID forKey:@"activityUUID"];

  localizedTitle = [(SHSheetPulsingEvent *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  [coderCopy encodeBool:-[SHSheetPulsingEvent isPulsing](self forKey:{"isPulsing"), @"isPulsing"}];
}

@end