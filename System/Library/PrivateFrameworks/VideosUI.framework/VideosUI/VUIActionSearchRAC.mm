@interface VUIActionSearchRAC
- (VUIActionSearchRAC)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionSearchRAC

- (VUIActionSearchRAC)initWithContextData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = VUIActionSearchRAC;
  v5 = [(VUIActionSearchRAC *)&v9 init];
  if (v5)
  {
    if (dataCopy)
    {
      v6 = dataCopy;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    additionalSubmissionParameters = v5->_additionalSubmissionParameters;
    v5->_additionalSubmissionParameters = v6;
  }

  return v5;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[VUIJSDevice isSearchEnabled])
  {
    [_TtC8VideosUI22SearchRACViewPresenter launchRACSheetWithAdditionalParameters:self->_additionalSubmissionParameters];
  }

  else
  {
    NSLog(&cfstr_IgnoringSearch.isa);
  }

  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v5 = handlerCopy;
  }
}

@end