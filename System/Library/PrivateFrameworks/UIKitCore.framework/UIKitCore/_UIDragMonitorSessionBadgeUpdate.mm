@interface _UIDragMonitorSessionBadgeUpdate
- (_UIDragMonitorSessionBadgeUpdate)initWithDragBadgeStyle:(int64_t)style;
@end

@implementation _UIDragMonitorSessionBadgeUpdate

- (_UIDragMonitorSessionBadgeUpdate)initWithDragBadgeStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = _UIDragMonitorSessionBadgeUpdate;
  result = [(_UIDragMonitorSessionBadgeUpdate *)&v5 init];
  if (result)
  {
    result->_badgeStyle = style;
  }

  return result;
}

@end