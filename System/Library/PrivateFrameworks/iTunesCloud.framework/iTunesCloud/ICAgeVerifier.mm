@interface ICAgeVerifier
- (BOOL)isEqual:(id)equal;
- (ICAgeVerifier)initWithExpirationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)runAgeVerification;
@end

@implementation ICAgeVerifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  verificationExpirationDate = [(ICAgeVerifier *)self verificationExpirationDate];
  status = [(ICAgeVerifier *)self status];
  if ((status - 1) > 2)
  {
    v6 = @"Age verification status unknown";
  }

  else
  {
    v6 = off_1E7BF5898[status - 1];
  }

  v7 = [v3 stringWithFormat:@"ICAgeVerifier %p - verificationExpirationDate: %@ - status: %@", self, verificationExpirationDate, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      status = [(ICAgeVerifier *)v5 status];
      if (status == [(ICAgeVerifier *)self status])
      {
        verificationExpirationDate = [(ICAgeVerifier *)v5 verificationExpirationDate];
        verificationExpirationDate2 = [(ICAgeVerifier *)self verificationExpirationDate];
        if (verificationExpirationDate == verificationExpirationDate2)
        {
          v11 = 1;
        }

        else
        {
          verificationExpirationDate3 = [(ICAgeVerifier *)v5 verificationExpirationDate];
          verificationExpirationDate4 = [(ICAgeVerifier *)self verificationExpirationDate];
          v11 = [verificationExpirationDate3 isEqual:verificationExpirationDate4];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v5[1] = [(ICAgeVerifier *)self status];
    verificationExpirationDate = [(ICAgeVerifier *)self verificationExpirationDate];
    v7 = [verificationExpirationDate copyWithZone:zone];
    v8 = v5[2];
    v5[2] = v7;
  }

  return v5;
}

- (void)runAgeVerification
{
  v12 = *MEMORY[0x1E69E9840];
  [(ICAgeVerifier *)self setStatus:0];
  verificationExpirationDate = [(ICAgeVerifier *)self verificationExpirationDate];

  if (verificationExpirationDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    verificationExpirationDate2 = [(ICAgeVerifier *)self verificationExpirationDate];
    [verificationExpirationDate2 timeIntervalSinceDate:date];
    v7 = v6;

    if (v7 >= 0.0)
    {
      [(ICAgeVerifier *)self setStatus:3];
      v8 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        selfCopy3 = self;
        v9 = "%{public}@ - Age verification status is current";
        goto LABEL_9;
      }
    }

    else
    {
      [(ICAgeVerifier *)self setStatus:2];
      v8 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        selfCopy3 = self;
        v9 = "%{public}@ - Age verification status has expired";
LABEL_9:
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_INFO, v9, &v10, 0xCu);
      }
    }

    goto LABEL_11;
  }

  [(ICAgeVerifier *)self setStatus:2];
  date = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
  if (os_log_type_enabled(date, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B4491000, date, OS_LOG_TYPE_INFO, "%{public}@ - Provided expiration date is nil", &v10, 0xCu);
  }

LABEL_11:
}

- (ICAgeVerifier)initWithExpirationDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = ICAgeVerifier;
  v6 = [(ICAgeVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_verificationExpirationDate, date);
  }

  return v7;
}

@end