@interface NSUserDefaults(ReminderKitAdditions)
- (id)objectIDForKey:()ReminderKitAdditions;
- (void)setObjectID:()ReminderKitAdditions forKey:;
@end

@implementation NSUserDefaults(ReminderKitAdditions)

- (id)objectIDForKey:()ReminderKitAdditions
{
  v1 = [a1 stringForKey:?];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  if (v2)
  {
    v3 = [REMObjectID objectIDWithURL:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setObjectID:()ReminderKitAdditions forKey:
{
  v6 = a4;
  v8 = [a3 urlRepresentation];
  v7 = [v8 absoluteString];
  [a1 setObject:v7 forKey:v6];
}

@end