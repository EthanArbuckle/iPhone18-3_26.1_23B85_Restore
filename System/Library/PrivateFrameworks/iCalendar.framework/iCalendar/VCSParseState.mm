@interface VCSParseState
- (VCSParseState)init;
@end

@implementation VCSParseState

- (VCSParseState)init
{
  v7.receiver = self;
  v7.super_class = VCSParseState;
  v2 = [(VCSParseState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_context = xmmword_2754F54A0;
    v2->_lineNumber = 0;
    v2->_palmImport = 0;
    v2->_status = 0;
    v4 = objc_opt_new();
    calendars = v3->_calendars;
    v3->_calendars = v4;
  }

  return v3;
}

@end