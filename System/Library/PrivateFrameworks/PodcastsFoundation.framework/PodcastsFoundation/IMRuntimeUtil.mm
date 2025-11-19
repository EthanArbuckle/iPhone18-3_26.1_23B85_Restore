@interface IMRuntimeUtil
+ (BOOL)associatedBoolValueForKey:(id)a3 onObject:(id)a4 withDefault:(BOOL)a5;
+ (double)associatedDoubleValueForKey:(id)a3 onObject:(id)a4 withDefault:(double)a5;
+ (float)associatedFloatValueForKey:(id)a3 onObject:(id)a4 withDefault:(float)a5;
+ (id)associatedValueForKey:(id)a3 onObject:(id)a4 withDefault:(id)a5;
+ (int64_t)associatedIntValueForKey:(id)a3 onObject:(id)a4 withDefault:(int64_t)a5;
+ (void)associateDoubleValue:(double)a3 forKey:(id)a4 onObject:(id)a5 withPolicy:(unint64_t)a6;
+ (void)associateFloatValue:(float)a3 forKey:(id)a4 onObject:(id)a5 withPolicy:(unint64_t)a6;
+ (void)associateIntValue:(int64_t)a3 forKey:(id)a4 onObject:(id)a5 withPolicy:(unint64_t)a6;
+ (void)swizzleClassMethod:(SEL)a3 onClass:(Class)a4 withReplacementBlock:(id)a5;
+ (void)swizzleMethod:(SEL)a3 onClass:(Class)a4 withReplacementBlock:(id)a5;
@end

@implementation IMRuntimeUtil

+ (void)swizzleMethod:(SEL)a3 onClass:(Class)a4 withReplacementBlock:(id)a5
{
  v7 = a5;
  if (a3)
  {
    if (a4)
    {
      v12 = v7;
      InstanceMethod = class_getInstanceMethod(a4, a3);
      v7 = v12;
      if (InstanceMethod)
      {
        Implementation = method_getImplementation(InstanceMethod);
        v10 = (*(v12 + 2))(v12, Implementation);
        TypeEncoding = method_getTypeEncoding(InstanceMethod);
        class_replaceMethod(a4, a3, v10, TypeEncoding);
        v7 = v12;
      }
    }
  }
}

+ (void)swizzleClassMethod:(SEL)a3 onClass:(Class)a4 withReplacementBlock:(id)a5
{
  v7 = a5;
  if (a3)
  {
    if (a4)
    {
      v11 = v7;
      ClassMethod = class_getClassMethod(a4, a3);
      v7 = v11;
      if (ClassMethod)
      {
        Implementation = method_getImplementation(ClassMethod);
        v10 = (*(v11 + 2))(v11, Implementation);
        method_setImplementation(ClassMethod, v10);
        v7 = v11;
      }
    }
  }
}

+ (void)associateIntValue:(int64_t)a3 forKey:(id)a4 onObject:(id)a5 withPolicy:(unint64_t)a6
{
  v10 = MEMORY[0x1E696AD98];
  v11 = a5;
  v12 = a4;
  v13 = [v10 numberWithInteger:a3];
  [a1 associateValue:v13 forKey:v12 onObject:v11 withPolicy:a6];
}

+ (void)associateFloatValue:(float)a3 forKey:(id)a4 onObject:(id)a5 withPolicy:(unint64_t)a6
{
  v10 = MEMORY[0x1E696AD98];
  v11 = a5;
  v12 = a4;
  *&v13 = a3;
  v14 = [v10 numberWithFloat:v13];
  [a1 associateValue:v14 forKey:v12 onObject:v11 withPolicy:a6];
}

+ (void)associateDoubleValue:(double)a3 forKey:(id)a4 onObject:(id)a5 withPolicy:(unint64_t)a6
{
  v10 = MEMORY[0x1E696AD98];
  v11 = a5;
  v12 = a4;
  v13 = [v10 numberWithDouble:a3];
  [a1 associateValue:v13 forKey:v12 onObject:v11 withPolicy:a6];
}

+ (id)associatedValueForKey:(id)a3 onObject:(id)a4 withDefault:(id)a5
{
  v7 = a5;
  v8 = objc_getAssociatedObject(a4, a3);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  return v11;
}

+ (BOOL)associatedBoolValueForKey:(id)a3 onObject:(id)a4 withDefault:(BOOL)a5
{
  v6 = [a1 associatedValueForKey:a3 onObject:a4];
  v7 = v6;
  if (v6)
  {
    a5 = [v6 BOOLValue];
  }

  return a5;
}

+ (int64_t)associatedIntValueForKey:(id)a3 onObject:(id)a4 withDefault:(int64_t)a5
{
  v6 = [a1 associatedValueForKey:a3 onObject:a4];
  v7 = v6;
  if (v6)
  {
    a5 = [v6 integerValue];
  }

  return a5;
}

+ (float)associatedFloatValueForKey:(id)a3 onObject:(id)a4 withDefault:(float)a5
{
  v6 = [a1 associatedValueForKey:a3 onObject:a4];
  v7 = v6;
  if (v6)
  {
    [v6 floatValue];
    a5 = v8;
  }

  return a5;
}

+ (double)associatedDoubleValueForKey:(id)a3 onObject:(id)a4 withDefault:(double)a5
{
  v6 = [a1 associatedValueForKey:a3 onObject:a4];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    a5 = v8;
  }

  return a5;
}

@end