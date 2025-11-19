@interface SiriPresentationActivationCancelReasonTransport
- (SiriPresentationActivationCancelReasonTransport)initWithCoder:(id)a3;
- (SiriPresentationActivationCancelReasonTransport)initWithSiriPresentationActivationCancelReason:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)cancelReason;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriPresentationActivationCancelReasonTransport

- (SiriPresentationActivationCancelReasonTransport)initWithSiriPresentationActivationCancelReason:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SiriPresentationActivationCancelReasonTransport;
  v4 = [(SiriPresentationActivationCancelReasonTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(SiriPresentationActivationCancelReasonTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SiriPresentationActivationCancelReasonTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SiriPresentationActivationCancelReason:%@", v3];

  return v4;
}

- (unint64_t)cancelReason
{
  v2 = [(SiriPresentationActivationCancelReasonTransport *)self transport];
  v3 = [v2 integerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SiriPresentationActivationCancelReasonTransport *)self cancelReason];

  return [v4 initWithSiriPresentationActivationCancelReason:v5];
}

- (SiriPresentationActivationCancelReasonTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SiriPresentationActivationCancelReasonTransport;
  v5 = [(SiriPresentationActivationCancelReasonTransport *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
    transport = v5->_transport;
    v5->_transport = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SiriPresentationActivationCancelReasonTransport *)self transport];
  [v4 encodeObject:v5 forKey:@"transport"];
}

@end