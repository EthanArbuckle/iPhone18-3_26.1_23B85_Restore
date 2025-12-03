@interface SWFailureMessage
- (SWFailureMessage)initWithContentDomain:(id)domain embedName:(id)name errorType:(id)type;
@end

@implementation SWFailureMessage

- (SWFailureMessage)initWithContentDomain:(id)domain embedName:(id)name errorType:(id)type
{
  domainCopy = domain;
  nameCopy = name;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = SWFailureMessage;
  v11 = [(SWFailureMessage *)&v19 init];
  if (v11)
  {
    v12 = [domainCopy copy];
    contentDomain = v11->_contentDomain;
    v11->_contentDomain = v12;

    v14 = [nameCopy copy];
    embedName = v11->_embedName;
    v11->_embedName = v14;

    v16 = [typeCopy copy];
    errorType = v11->_errorType;
    v11->_errorType = v16;
  }

  return v11;
}

@end