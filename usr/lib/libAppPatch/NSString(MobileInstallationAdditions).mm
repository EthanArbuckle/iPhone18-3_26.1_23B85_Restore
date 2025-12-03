@interface NSString(MobileInstallationAdditions)
+ (id)stringWithFileSystemRepresentation:()MobileInstallationAdditions length:;
+ (uint64_t)stringWithFileSystemRepresentation:()MobileInstallationAdditions;
- (uint64_t)containsDotDotPathComponents;
@end

@implementation NSString(MobileInstallationAdditions)

+ (id)stringWithFileSystemRepresentation:()MobileInstallationAdditions length:
{
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v7 = [defaultManager stringWithFileSystemRepresentation:a3 length:a4];

  return v7;
}

+ (uint64_t)stringWithFileSystemRepresentation:()MobileInstallationAdditions
{
  v4 = strlen(__s);
  v5 = MEMORY[0x29EDBA0F8];

  return [v5 stringWithFileSystemRepresentation:__s length:v4];
}

- (uint64_t)containsDotDotPathComponents
{
  v14 = *MEMORY[0x29EDCA608];
  [self pathComponents];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v9 + 1) + 8 * v5) isEqualToString:{@"..", v9}])
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

@end