@interface UNSNotificationContactServiceRecord
- (BOOL)isEqual:(id)equal;
@end

@implementation UNSNotificationContactServiceRecord

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }
  }

  v5 = equalCopy;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  bundleIdentifier = self->_bundleIdentifier;
  bundleIdentifier = [v5 bundleIdentifier];
  LODWORD(bundleIdentifier) = [(NSString *)bundleIdentifier isEqualToString:bundleIdentifier];

  if (!bundleIdentifier)
  {
    goto LABEL_7;
  }

  contact = self->_contact;
  contact = [v6 contact];
  v11 = [(_UNNotificationContact *)contact isSimilar:contact];

LABEL_8:
  return v11;
}

@end