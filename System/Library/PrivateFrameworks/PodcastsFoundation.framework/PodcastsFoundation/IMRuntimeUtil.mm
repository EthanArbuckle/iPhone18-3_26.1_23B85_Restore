@interface IMRuntimeUtil
+ (BOOL)associatedBoolValueForKey:(id)key onObject:(id)object withDefault:(BOOL)default;
+ (double)associatedDoubleValueForKey:(id)key onObject:(id)object withDefault:(double)default;
+ (float)associatedFloatValueForKey:(id)key onObject:(id)object withDefault:(float)default;
+ (id)associatedValueForKey:(id)key onObject:(id)object withDefault:(id)default;
+ (int64_t)associatedIntValueForKey:(id)key onObject:(id)object withDefault:(int64_t)default;
+ (void)associateDoubleValue:(double)value forKey:(id)key onObject:(id)object withPolicy:(unint64_t)policy;
+ (void)associateFloatValue:(float)value forKey:(id)key onObject:(id)object withPolicy:(unint64_t)policy;
+ (void)associateIntValue:(int64_t)value forKey:(id)key onObject:(id)object withPolicy:(unint64_t)policy;
+ (void)swizzleClassMethod:(SEL)method onClass:(Class)class withReplacementBlock:(id)block;
+ (void)swizzleMethod:(SEL)method onClass:(Class)class withReplacementBlock:(id)block;
@end

@implementation IMRuntimeUtil

+ (void)swizzleMethod:(SEL)method onClass:(Class)class withReplacementBlock:(id)block
{
  blockCopy = block;
  if (method)
  {
    if (class)
    {
      v12 = blockCopy;
      InstanceMethod = class_getInstanceMethod(class, method);
      blockCopy = v12;
      if (InstanceMethod)
      {
        Implementation = method_getImplementation(InstanceMethod);
        v10 = (*(v12 + 2))(v12, Implementation);
        TypeEncoding = method_getTypeEncoding(InstanceMethod);
        class_replaceMethod(class, method, v10, TypeEncoding);
        blockCopy = v12;
      }
    }
  }
}

+ (void)swizzleClassMethod:(SEL)method onClass:(Class)class withReplacementBlock:(id)block
{
  blockCopy = block;
  if (method)
  {
    if (class)
    {
      v11 = blockCopy;
      ClassMethod = class_getClassMethod(class, method);
      blockCopy = v11;
      if (ClassMethod)
      {
        Implementation = method_getImplementation(ClassMethod);
        v10 = (*(v11 + 2))(v11, Implementation);
        method_setImplementation(ClassMethod, v10);
        blockCopy = v11;
      }
    }
  }
}

+ (void)associateIntValue:(int64_t)value forKey:(id)key onObject:(id)object withPolicy:(unint64_t)policy
{
  v10 = MEMORY[0x1E696AD98];
  objectCopy = object;
  keyCopy = key;
  v13 = [v10 numberWithInteger:value];
  [self associateValue:v13 forKey:keyCopy onObject:objectCopy withPolicy:policy];
}

+ (void)associateFloatValue:(float)value forKey:(id)key onObject:(id)object withPolicy:(unint64_t)policy
{
  v10 = MEMORY[0x1E696AD98];
  objectCopy = object;
  keyCopy = key;
  *&v13 = value;
  v14 = [v10 numberWithFloat:v13];
  [self associateValue:v14 forKey:keyCopy onObject:objectCopy withPolicy:policy];
}

+ (void)associateDoubleValue:(double)value forKey:(id)key onObject:(id)object withPolicy:(unint64_t)policy
{
  v10 = MEMORY[0x1E696AD98];
  objectCopy = object;
  keyCopy = key;
  v13 = [v10 numberWithDouble:value];
  [self associateValue:v13 forKey:keyCopy onObject:objectCopy withPolicy:policy];
}

+ (id)associatedValueForKey:(id)key onObject:(id)object withDefault:(id)default
{
  defaultCopy = default;
  v8 = objc_getAssociatedObject(object, key);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = defaultCopy;
  }

  v11 = v10;

  return v11;
}

+ (BOOL)associatedBoolValueForKey:(id)key onObject:(id)object withDefault:(BOOL)default
{
  v6 = [self associatedValueForKey:key onObject:object];
  v7 = v6;
  if (v6)
  {
    default = [v6 BOOLValue];
  }

  return default;
}

+ (int64_t)associatedIntValueForKey:(id)key onObject:(id)object withDefault:(int64_t)default
{
  v6 = [self associatedValueForKey:key onObject:object];
  v7 = v6;
  if (v6)
  {
    default = [v6 integerValue];
  }

  return default;
}

+ (float)associatedFloatValueForKey:(id)key onObject:(id)object withDefault:(float)default
{
  v6 = [self associatedValueForKey:key onObject:object];
  v7 = v6;
  if (v6)
  {
    [v6 floatValue];
    default = v8;
  }

  return default;
}

+ (double)associatedDoubleValueForKey:(id)key onObject:(id)object withDefault:(double)default
{
  v6 = [self associatedValueForKey:key onObject:object];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    default = v8;
  }

  return default;
}

@end