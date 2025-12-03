@interface Process
+ (id)fetchRequest;
- (NSString)name;
@end

@implementation Process

- (NSString)name
{
  extensionName = [(Process *)self extensionName];

  if (extensionName)
  {
    extensionName2 = [(Process *)self extensionName];
  }

  else
  {
    bundleName = [(Process *)self bundleName];

    if (bundleName)
    {
      [(Process *)self bundleName];
    }

    else
    {
      [(Process *)self procName];
    }
    extensionName2 = ;
  }

  return extensionName2;
}

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[Process entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end