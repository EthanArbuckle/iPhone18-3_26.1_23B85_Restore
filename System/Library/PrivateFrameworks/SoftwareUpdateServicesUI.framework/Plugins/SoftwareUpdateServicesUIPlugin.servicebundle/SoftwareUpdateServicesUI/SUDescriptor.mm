@interface SUDescriptor
- (BOOL)isEqualToDescriptor:(id)a3;
@end

@implementation SUDescriptor

- (BOOL)isEqualToDescriptor:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(SUDescriptor *)v8 humanReadableUpdateName];
  v4 = [location[0] humanReadableUpdateName];
  v6 = [v5 isEqualToString:?];

  objc_storeStrong(location, 0);
  return v6;
}

@end