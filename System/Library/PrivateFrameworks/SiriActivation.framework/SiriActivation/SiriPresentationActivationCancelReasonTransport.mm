@interface SiriPresentationActivationCancelReasonTransport
- (SiriPresentationActivationCancelReasonTransport)initWithCoder:(id)coder;
- (SiriPresentationActivationCancelReasonTransport)initWithSiriPresentationActivationCancelReason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)cancelReason;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriPresentationActivationCancelReasonTransport

- (SiriPresentationActivationCancelReasonTransport)initWithSiriPresentationActivationCancelReason:(unint64_t)reason
{
  v7.receiver = self;
  v7.super_class = SiriPresentationActivationCancelReasonTransport;
  v4 = [(SiriPresentationActivationCancelReasonTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
    [(SiriPresentationActivationCancelReasonTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  transport = [(SiriPresentationActivationCancelReasonTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SiriPresentationActivationCancelReason:%@", transport];

  return v4;
}

- (unint64_t)cancelReason
{
  transport = [(SiriPresentationActivationCancelReasonTransport *)self transport];
  integerValue = [transport integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  cancelReason = [(SiriPresentationActivationCancelReasonTransport *)self cancelReason];

  return [v4 initWithSiriPresentationActivationCancelReason:cancelReason];
}

- (SiriPresentationActivationCancelReasonTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SiriPresentationActivationCancelReasonTransport;
  v5 = [(SiriPresentationActivationCancelReasonTransport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
    transport = v5->_transport;
    v5->_transport = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transport = [(SiriPresentationActivationCancelReasonTransport *)self transport];
  [coderCopy encodeObject:transport forKey:@"transport"];
}

@end