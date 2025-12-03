@interface ICPrivacyInfoDetails
- (BOOL)isEqual:(id)equal;
@end

@implementation ICPrivacyInfoDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      acknowledgementNeeded = self->_acknowledgementNeeded;
      if (acknowledgementNeeded == [(ICPrivacyInfoDetails *)v5 acknowledgementNeeded]&& (previouslyAcknowledged = self->_previouslyAcknowledged, previouslyAcknowledged == [(ICPrivacyInfoDetails *)v5 previouslyAcknowledged]) && (rejected = self->_rejected, rejected == [(ICPrivacyInfoDetails *)v5 rejected]))
      {
        acceptedVersion = self->_acceptedVersion;
        acceptedVersion = [(ICPrivacyInfoDetails *)v5 acceptedVersion];
        if (acceptedVersion == acceptedVersion)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSNumber *)acceptedVersion isEqual:acceptedVersion];
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