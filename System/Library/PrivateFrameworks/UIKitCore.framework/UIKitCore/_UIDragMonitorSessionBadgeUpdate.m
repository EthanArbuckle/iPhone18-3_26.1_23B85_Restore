@interface _UIDragMonitorSessionBadgeUpdate
- (_UIDragMonitorSessionBadgeUpdate)initWithDragBadgeStyle:(int64_t)a3;
@end

@implementation _UIDragMonitorSessionBadgeUpdate

- (_UIDragMonitorSessionBadgeUpdate)initWithDragBadgeStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIDragMonitorSessionBadgeUpdate;
  result = [(_UIDragMonitorSessionBadgeUpdate *)&v5 init];
  if (result)
  {
    result->_badgeStyle = a3;
  }

  return result;
}

@end