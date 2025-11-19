@interface VUIActionSearchRAC
- (VUIActionSearchRAC)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionSearchRAC

- (VUIActionSearchRAC)initWithContextData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIActionSearchRAC;
  v5 = [(VUIActionSearchRAC *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (+[VUIJSDevice isSearchEnabled])
  {
    [_TtC8VideosUI22SearchRACViewPresenter launchRACSheetWithAdditionalParameters:self->_additionalSubmissionParameters];
  }

  else
  {
    NSLog(&cfstr_IgnoringSearch.isa);
  }

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 1);
    v5 = v6;
  }
}

@end