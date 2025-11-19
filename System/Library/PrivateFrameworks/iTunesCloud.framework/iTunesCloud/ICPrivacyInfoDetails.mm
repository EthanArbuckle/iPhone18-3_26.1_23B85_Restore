@interface ICPrivacyInfoDetails
- (BOOL)isEqual:(id)a3;
@end

@implementation ICPrivacyInfoDetails

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      acknowledgementNeeded = self->_acknowledgementNeeded;
      if (acknowledgementNeeded == [(ICPrivacyInfoDetails *)v5 acknowledgementNeeded]&& (previouslyAcknowledged = self->_previouslyAcknowledged, previouslyAcknowledged == [(ICPrivacyInfoDetails *)v5 previouslyAcknowledged]) && (rejected = self->_rejected, rejected == [(ICPrivacyInfoDetails *)v5 rejected]))
      {
        acceptedVersion = self->_acceptedVersion;
        v10 = [(ICPrivacyInfoDetails *)v5 acceptedVersion];
        if (acceptedVersion == v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSNumber *)acceptedVersion isEqual:v10];
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

@end