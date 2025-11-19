@interface UNSNotificationContactServiceRecord
- (BOOL)isEqual:(id)a3;
@end

@implementation UNSNotificationContactServiceRecord

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  bundleIdentifier = self->_bundleIdentifier;
  v8 = [v5 bundleIdentifier];
  LODWORD(bundleIdentifier) = [(NSString *)bundleIdentifier isEqualToString:v8];

  if (!bundleIdentifier)
  {
    goto LABEL_7;
  }

  contact = self->_contact;
  v10 = [v6 contact];
  v11 = [(_UNNotificationContact *)contact isSimilar:v10];

LABEL_8:
  return v11;
}

@end