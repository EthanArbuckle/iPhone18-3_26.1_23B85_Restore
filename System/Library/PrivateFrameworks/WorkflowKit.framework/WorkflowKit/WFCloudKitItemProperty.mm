@interface WFCloudKitItemProperty
+ (id)itemPropertyWithName:(id)name itemClass:(Class)class;
+ (id)itemReferencePropertyWithName:(id)name itemClass:(Class)class;
+ (id)objectPropertyWithName:(id)name constantValue:(id)value;
+ (id)objectPropertyWithName:(id)name constantValue:(id)value encrypted:(BOOL)encrypted;
+ (id)scalarPropertyWithName:(id)name constantValue:(id)value;
- (WFCloudKitItemProperty)initWithType:(unint64_t)type name:(id)name itemClass:(Class)class ignoredByDefault:(BOOL)default nilValue:(id)value hasConstantValue:(BOOL)constantValue constantValue:(id)a9 fileType:(id)self0 encrypted:(BOOL)self1;
@end

@implementation WFCloudKitItemProperty

- (WFCloudKitItemProperty)initWithType:(unint64_t)type name:(id)name itemClass:(Class)class ignoredByDefault:(BOOL)default nilValue:(id)value hasConstantValue:(BOOL)constantValue constantValue:(id)a9 fileType:(id)self0 encrypted:(BOOL)self1
{
  nameCopy = name;
  valueCopy = value;
  v17 = a9;
  fileTypeCopy = fileType;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitItemProperty.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v29.receiver = self;
  v29.super_class = WFCloudKitItemProperty;
  v19 = [(WFCloudKitItemProperty *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = type;
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    objc_storeStrong(&v20->_itemClass, class);
    v20->_ignoredByDefault = default;
    objc_storeStrong(&v20->_nilValue, value);
    v20->_hasConstantValue = constantValue;
    objc_storeStrong(&v20->_constantValue, a9);
    objc_storeStrong(&v20->_fileType, fileType);
    v20->_encrypted = encrypted;
    v23 = v20;
  }

  return v20;
}

+ (id)itemPropertyWithName:(id)name itemClass:(Class)class
{
  nameCopy = name;
  if (([(objc_class *)class conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitItemProperty.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"[itemClass conformsToProtocol:@protocol(WFCloudKitItem)]"}];
  }

  LOBYTE(v11) = 0;
  v8 = [[self alloc] initWithType:3 name:nameCopy itemClass:class ignoredByDefault:0 nilValue:0 hasConstantValue:0 constantValue:0 fileType:0 encrypted:v11];

  return v8;
}

+ (id)itemReferencePropertyWithName:(id)name itemClass:(Class)class
{
  nameCopy = name;
  if (([(objc_class *)class conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitItemProperty.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"[itemClass conformsToProtocol:@protocol(WFCloudKitItem)]"}];
  }

  LOBYTE(v11) = 0;
  v8 = [[self alloc] initWithType:4 name:nameCopy itemClass:class ignoredByDefault:0 nilValue:0 hasConstantValue:0 constantValue:0 fileType:0 encrypted:v11];

  return v8;
}

+ (id)objectPropertyWithName:(id)name constantValue:(id)value encrypted:(BOOL)encrypted
{
  valueCopy = value;
  nameCopy = name;
  LOBYTE(v12) = encrypted;
  v10 = [[self alloc] initWithType:1 name:nameCopy itemClass:0 ignoredByDefault:0 nilValue:0 hasConstantValue:1 constantValue:valueCopy fileType:0 encrypted:v12];

  return v10;
}

+ (id)objectPropertyWithName:(id)name constantValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  LOBYTE(v10) = 0;
  v8 = [[self alloc] initWithType:1 name:nameCopy itemClass:0 ignoredByDefault:0 nilValue:0 hasConstantValue:1 constantValue:valueCopy fileType:0 encrypted:v10];

  return v8;
}

+ (id)scalarPropertyWithName:(id)name constantValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  LOBYTE(v10) = 0;
  v8 = [[self alloc] initWithType:0 name:nameCopy itemClass:0 ignoredByDefault:0 nilValue:0 hasConstantValue:1 constantValue:valueCopy fileType:0 encrypted:v10];

  return v8;
}

@end