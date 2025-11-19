@interface ICAgeVerifier
- (BOOL)isEqual:(id)a3;
- (ICAgeVerifier)initWithExpirationDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)runAgeVerification;
@end

@implementation ICAgeVerifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICAgeVerifier *)self verificationExpirationDate];
  v5 = [(ICAgeVerifier *)self status];
  if ((v5 - 1) > 2)
  {
    v6 = @"Age verification status unknown";
  }

  else
  {
    v6 = off_1E7BF5898[v5 - 1];
  }

  v7 = [v3 stringWithFormat:@"ICAgeVerifier %p - verificationExpirationDate: %@ - status: %@", self, v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICAgeVerifier *)v5 status];
      if (v6 == [(ICAgeVerifier *)self status])
      {
        v7 = [(ICAgeVerifier *)v5 verificationExpirationDate];
        v8 = [(ICAgeVerifier *)self verificationExpirationDate];
        if (v7 == v8)
        {
          v11 = 1;
        }

        else
        {
          v9 = [(ICAgeVerifier *)v5 verificationExpirationDate];
          v10 = [(ICAgeVerifier *)self verificationExpirationDate];
          v11 = [v9 isEqual:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v5[1] = [(ICAgeVerifier *)self status];
    v6 = [(ICAgeVerifier *)self verificationExpirationDate];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[2];
    v5[2] = v7;
  }

  return v5;
}

- (void)runAgeVerification
{
  v12 = *MEMORY[0x1E69E9840];
  [(ICAgeVerifier *)self setStatus:0];
  v3 = [(ICAgeVerifier *)self verificationExpirationDate];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [(ICAgeVerifier *)self verificationExpirationDate];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6;

    if (v7 >= 0.0)
    {
      [(ICAgeVerifier *)self setStatus:3];
      v8 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = self;
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
        v11 = self;
        v9 = "%{public}@ - Age verification status has expired";
LABEL_9:
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_INFO, v9, &v10, 0xCu);
      }
    }

    goto LABEL_11;
  }

  [(ICAgeVerifier *)self setStatus:2];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_INFO, "%{public}@ - Provided expiration date is nil", &v10, 0xCu);
  }

LABEL_11:
}

- (ICAgeVerifier)initWithExpirationDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICAgeVerifier;
  v6 = [(ICAgeVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_verificationExpirationDate, a3);
  }

  return v7;
}

@end