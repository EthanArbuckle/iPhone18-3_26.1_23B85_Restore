@interface Process
+ (id)fetchRequest;
- (NSString)name;
@end

@implementation Process

- (NSString)name
{
  v3 = [(Process *)self extensionName];

  if (v3)
  {
    v4 = [(Process *)self extensionName];
  }

  else
  {
    v5 = [(Process *)self bundleName];

    if (v5)
    {
      [(Process *)self bundleName];
    }

    else
    {
      [(Process *)self procName];
    }
    v4 = ;
  }

  return v4;
}

+ (id)fetchRequest
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[Process entityName];
  v4 = [v2 initWithEntityName:v3];

  return v4;
}

@end