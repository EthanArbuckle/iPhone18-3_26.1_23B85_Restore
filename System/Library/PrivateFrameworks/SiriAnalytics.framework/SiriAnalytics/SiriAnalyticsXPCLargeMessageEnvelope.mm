@interface SiriAnalyticsXPCLargeMessageEnvelope
- (SiriAnalyticsXPCLargeMessageEnvelope)initWithCoder:(id)a3;
- (SiriAnalyticsXPCLargeMessageEnvelope)initWithLargeMessagePath:(id)a3 requestIdentifier:(id)a4 serializedDataUploadMessage:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriAnalyticsXPCLargeMessageEnvelope

- (SiriAnalyticsXPCLargeMessageEnvelope)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SiriAnalyticsXPCLargeMessageEnvelope;
  v5 = [(SiriAnalyticsXPCLargeMessageEnvelope *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"largeMessagePath"];
    largeMessagePath = v5->_largeMessagePath;
    v5->_largeMessagePath = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedDataUploadMessage"];
    serializedDataUploadMessage = v5->_serializedDataUploadMessage;
    v5->_serializedDataUploadMessage = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  largeMessagePath = self->_largeMessagePath;
  v5 = a3;
  [v5 encodeObject:largeMessagePath forKey:@"largeMessagePath"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [v5 encodeObject:self->_serializedDataUploadMessage forKey:@"serializedDataUploadMessage"];
}

- (SiriAnalyticsXPCLargeMessageEnvelope)initWithLargeMessagePath:(id)a3 requestIdentifier:(id)a4 serializedDataUploadMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SiriAnalyticsXPCLargeMessageEnvelope;
  v11 = [(SiriAnalyticsXPCLargeMessageEnvelope *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    largeMessagePath = v11->_largeMessagePath;
    v11->_largeMessagePath = v12;

    v14 = [v9 copy];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v14;

    v16 = [v10 copy];
    serializedDataUploadMessage = v11->_serializedDataUploadMessage;
    v11->_serializedDataUploadMessage = v16;
  }

  return v11;
}

@end