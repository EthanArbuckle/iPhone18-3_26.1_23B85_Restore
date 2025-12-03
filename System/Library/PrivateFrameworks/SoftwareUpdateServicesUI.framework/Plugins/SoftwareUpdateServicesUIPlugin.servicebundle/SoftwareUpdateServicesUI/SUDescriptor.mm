@interface SUDescriptor
- (BOOL)isEqualToDescriptor:(id)descriptor;
@end

@implementation SUDescriptor

- (BOOL)isEqualToDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  humanReadableUpdateName = [(SUDescriptor *)selfCopy humanReadableUpdateName];
  humanReadableUpdateName2 = [location[0] humanReadableUpdateName];
  v6 = [humanReadableUpdateName isEqualToString:?];

  objc_storeStrong(location, 0);
  return v6;
}

@end