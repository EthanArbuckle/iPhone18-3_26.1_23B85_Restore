@interface NSIndexPath
+ (NSIndexPath)indexPathWithDebugHierarchyValue:(id)value;
- (id)fallback_debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error;
@end

@implementation NSIndexPath

+ (NSIndexPath)indexPathWithDebugHierarchyValue:(id)value
{
  v4 = [value componentsSeparatedByString:@"."];
  v5 = [v4 count];
  v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  if (v5)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      v8 = [v4 objectAtIndexedSubscript:i];
      v6[i] = [v8 integerValue];
    }
  }

  v9 = [self indexPathWithIndexes:v6 length:v5];
  free(v6);

  return v9;
}

- (id)fallback_debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error
{
  v6 = objc_opt_class();
  if (!v6 || (v7 = v6, !object_isClass(v6)))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v8 = NSStringFromClass(v7);
  v9 = v8;
  if (!v8)
  {
LABEL_4:
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    goto LABEL_7;
  }

  v11 = v8;
LABEL_7:
  v12 = v11;

  v18[0] = @"propertyFormat";
  v18[1] = @"propertyRuntimeType";
  v19[0] = @"public.plain-text";
  v19[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  *options = v13;
  v14 = [NSString stringWithFormat:@"%lu", [(NSIndexPath *)self indexAtPosition:0]];
  if ([(NSIndexPath *)self length]< 2)
  {
    v16 = v14;
  }

  else
  {
    v15 = 1;
    do
    {
      v16 = [NSString stringWithFormat:@"%@.%lu", v14, [(NSIndexPath *)self indexAtPosition:v15]];

      ++v15;
      v14 = v16;
    }

    while ([(NSIndexPath *)self length]> v15);
  }

  return v16;
}

@end