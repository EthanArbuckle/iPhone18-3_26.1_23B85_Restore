@interface REMAuxiliaryChangeInfoType
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (REMAuxiliaryChangeInfoType)initWithREMObjectID:(id)d;
- (id)valueForUndefinedKey:(id)key;
@end

@implementation REMAuxiliaryChangeInfoType

+ (NSString)cdEntityName
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Abstract method called -[%@ %@]", v5, v6}];

  return 0;
}

- (REMAuxiliaryChangeInfoType)initWithREMObjectID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = REMAuxiliaryChangeInfoType;
  v5 = [(REMAuxiliaryChangeInfoType *)&v8 init];
  v6 = v5;
  if (dCopy && v5)
  {
    [(REMAuxiliaryChangeInfoType *)v5 setRemObjectID:dCopy];
  }

  return v6;
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMAuxiliaryChangeInfoType *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v4 = objc_opt_class();
  class_addMethod(v4, method, dynamicMethodIMP, "@@:");
  return 1;
}

@end