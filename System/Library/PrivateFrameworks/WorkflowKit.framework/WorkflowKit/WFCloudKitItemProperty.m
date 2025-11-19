@interface WFCloudKitItemProperty
+ (id)itemPropertyWithName:(id)a3 itemClass:(Class)a4;
+ (id)itemReferencePropertyWithName:(id)a3 itemClass:(Class)a4;
+ (id)objectPropertyWithName:(id)a3 constantValue:(id)a4;
+ (id)objectPropertyWithName:(id)a3 constantValue:(id)a4 encrypted:(BOOL)a5;
+ (id)scalarPropertyWithName:(id)a3 constantValue:(id)a4;
- (WFCloudKitItemProperty)initWithType:(unint64_t)a3 name:(id)a4 itemClass:(Class)a5 ignoredByDefault:(BOOL)a6 nilValue:(id)a7 hasConstantValue:(BOOL)a8 constantValue:(id)a9 fileType:(id)a10 encrypted:(BOOL)a11;
@end

@implementation WFCloudKitItemProperty

- (WFCloudKitItemProperty)initWithType:(unint64_t)a3 name:(id)a4 itemClass:(Class)a5 ignoredByDefault:(BOOL)a6 nilValue:(id)a7 hasConstantValue:(BOOL)a8 constantValue:(id)a9 fileType:(id)a10 encrypted:(BOOL)a11
{
  v15 = a4;
  v16 = a7;
  v17 = a9;
  v18 = a10;
  if (!v15)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"WFCloudKitItemProperty.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v29.receiver = self;
  v29.super_class = WFCloudKitItemProperty;
  v19 = [(WFCloudKitItemProperty *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = a3;
    v21 = [v15 copy];
    name = v20->_name;
    v20->_name = v21;

    objc_storeStrong(&v20->_itemClass, a5);
    v20->_ignoredByDefault = a6;
    objc_storeStrong(&v20->_nilValue, a7);
    v20->_hasConstantValue = a8;
    objc_storeStrong(&v20->_constantValue, a9);
    objc_storeStrong(&v20->_fileType, a10);
    v20->_encrypted = a11;
    v23 = v20;
  }

  return v20;
}

+ (id)itemPropertyWithName:(id)a3 itemClass:(Class)a4
{
  v7 = a3;
  if (([(objc_class *)a4 conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitItemProperty.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"[itemClass conformsToProtocol:@protocol(WFCloudKitItem)]"}];
  }

  LOBYTE(v11) = 0;
  v8 = [[a1 alloc] initWithType:3 name:v7 itemClass:a4 ignoredByDefault:0 nilValue:0 hasConstantValue:0 constantValue:0 fileType:0 encrypted:v11];

  return v8;
}

+ (id)itemReferencePropertyWithName:(id)a3 itemClass:(Class)a4
{
  v7 = a3;
  if (([(objc_class *)a4 conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitItemProperty.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"[itemClass conformsToProtocol:@protocol(WFCloudKitItem)]"}];
  }

  LOBYTE(v11) = 0;
  v8 = [[a1 alloc] initWithType:4 name:v7 itemClass:a4 ignoredByDefault:0 nilValue:0 hasConstantValue:0 constantValue:0 fileType:0 encrypted:v11];

  return v8;
}

+ (id)objectPropertyWithName:(id)a3 constantValue:(id)a4 encrypted:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(v12) = a5;
  v10 = [[a1 alloc] initWithType:1 name:v9 itemClass:0 ignoredByDefault:0 nilValue:0 hasConstantValue:1 constantValue:v8 fileType:0 encrypted:v12];

  return v10;
}

+ (id)objectPropertyWithName:(id)a3 constantValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(v10) = 0;
  v8 = [[a1 alloc] initWithType:1 name:v7 itemClass:0 ignoredByDefault:0 nilValue:0 hasConstantValue:1 constantValue:v6 fileType:0 encrypted:v10];

  return v8;
}

+ (id)scalarPropertyWithName:(id)a3 constantValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(v10) = 0;
  v8 = [[a1 alloc] initWithType:0 name:v7 itemClass:0 ignoredByDefault:0 nilValue:0 hasConstantValue:1 constantValue:v6 fileType:0 encrypted:v10];

  return v8;
}

@end