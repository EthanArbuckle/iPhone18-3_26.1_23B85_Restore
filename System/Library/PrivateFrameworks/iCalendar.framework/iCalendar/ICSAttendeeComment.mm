@interface ICSAttendeeComment
- (ICSAttendeeComment)initWithComment:(id)comment;
@end

@implementation ICSAttendeeComment

- (ICSAttendeeComment)initWithComment:(id)comment
{
  v4.receiver = self;
  v4.super_class = ICSAttendeeComment;
  return [(ICSProperty *)&v4 initWithValue:comment type:5007];
}

@end