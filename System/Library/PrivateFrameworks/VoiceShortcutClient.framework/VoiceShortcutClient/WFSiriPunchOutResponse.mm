@interface WFSiriPunchOutResponse
- (WFSiriPunchOutResponse)initWithCoder:(id)coder;
- (WFSiriPunchOutResponse)initWithShouldPunchOut:(BOOL)out;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriPunchOutResponse

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFSiriPunchOutResponse;
  coderCopy = coder;
  [(WFSiriActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFSiriPunchOutResponse shouldPunchOut](self forKey:{"shouldPunchOut", v5.receiver, v5.super_class), @"shouldPunchOut"}];
}

- (WFSiriPunchOutResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFSiriPunchOutResponse;
  v5 = [(WFSiriActionResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldPunchOut = [coderCopy decodeBoolForKey:@"shouldPunchOut"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriPunchOutResponse)initWithShouldPunchOut:(BOOL)out
{
  v8.receiver = self;
  v8.super_class = WFSiriPunchOutResponse;
  v4 = [(WFSiriActionResponse *)&v8 initWithError:0];
  v5 = v4;
  if (v4)
  {
    v4->_shouldPunchOut = out;
    v6 = v4;
  }

  return v5;
}

@end