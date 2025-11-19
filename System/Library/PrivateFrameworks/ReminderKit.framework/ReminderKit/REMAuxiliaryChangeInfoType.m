@interface REMAuxiliaryChangeInfoType
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (REMAuxiliaryChangeInfoType)initWithREMObjectID:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
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

- (REMAuxiliaryChangeInfoType)initWithREMObjectID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMAuxiliaryChangeInfoType;
  v5 = [(REMAuxiliaryChangeInfoType *)&v8 init];
  v6 = v5;
  if (v4 && v5)
  {
    [(REMAuxiliaryChangeInfoType *)v5 setRemObjectID:v4];
  }

  return v6;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMAuxiliaryChangeInfoType *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v4 = objc_opt_class();
  class_addMethod(v4, a3, dynamicMethodIMP, "@@:");
  return 1;
}

@end