@interface SWFailureMessage
- (SWFailureMessage)initWithContentDomain:(id)a3 embedName:(id)a4 errorType:(id)a5;
@end

@implementation SWFailureMessage

- (SWFailureMessage)initWithContentDomain:(id)a3 embedName:(id)a4 errorType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SWFailureMessage;
  v11 = [(SWFailureMessage *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    contentDomain = v11->_contentDomain;
    v11->_contentDomain = v12;

    v14 = [v9 copy];
    embedName = v11->_embedName;
    v11->_embedName = v14;

    v16 = [v10 copy];
    errorType = v11->_errorType;
    v11->_errorType = v16;
  }

  return v11;
}

@end