@interface ICSAttendeeComment
- (ICSAttendeeComment)initWithComment:(id)a3;
@end

@implementation ICSAttendeeComment

- (ICSAttendeeComment)initWithComment:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICSAttendeeComment;
  return [(ICSProperty *)&v4 initWithValue:a3 type:5007];
}

@end