@interface SiriAnalyticsXPCLargeMessageEnvelope
- (SiriAnalyticsXPCLargeMessageEnvelope)initWithCoder:(id)coder;
- (SiriAnalyticsXPCLargeMessageEnvelope)initWithLargeMessagePath:(id)path requestIdentifier:(id)identifier serializedDataUploadMessage:(id)message;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriAnalyticsXPCLargeMessageEnvelope

- (SiriAnalyticsXPCLargeMessageEnvelope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SiriAnalyticsXPCLargeMessageEnvelope;
  v5 = [(SiriAnalyticsXPCLargeMessageEnvelope *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"largeMessagePath"];
    largeMessagePath = v5->_largeMessagePath;
    v5->_largeMessagePath = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedDataUploadMessage"];
    serializedDataUploadMessage = v5->_serializedDataUploadMessage;
    v5->_serializedDataUploadMessage = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  largeMessagePath = self->_largeMessagePath;
  coderCopy = coder;
  [coderCopy encodeObject:largeMessagePath forKey:@"largeMessagePath"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [coderCopy encodeObject:self->_serializedDataUploadMessage forKey:@"serializedDataUploadMessage"];
}

- (SiriAnalyticsXPCLargeMessageEnvelope)initWithLargeMessagePath:(id)path requestIdentifier:(id)identifier serializedDataUploadMessage:(id)message
{
  pathCopy = path;
  identifierCopy = identifier;
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = SiriAnalyticsXPCLargeMessageEnvelope;
  v11 = [(SiriAnalyticsXPCLargeMessageEnvelope *)&v19 init];
  if (v11)
  {
    v12 = [pathCopy copy];
    largeMessagePath = v11->_largeMessagePath;
    v11->_largeMessagePath = v12;

    v14 = [identifierCopy copy];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v14;

    v16 = [messageCopy copy];
    serializedDataUploadMessage = v11->_serializedDataUploadMessage;
    v11->_serializedDataUploadMessage = v16;
  }

  return v11;
}

@end