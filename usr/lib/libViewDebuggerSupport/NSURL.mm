@interface NSURL
- (id)fallback_debugHierarchyValueWithOutOptions:(id *)a3 outError:(id *)a4;
@end

@implementation NSURL

- (id)fallback_debugHierarchyValueWithOutOptions:(id *)a3 outError:(id *)a4
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

  v16[0] = @"propertyFormat";
  v16[1] = @"propertyRuntimeType";
  v17[0] = @"public.plain-text";
  v17[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  *a3 = v13;
  v14 = [(NSURL *)self absoluteString];

  return v14;
}

@end