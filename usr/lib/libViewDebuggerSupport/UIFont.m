@interface UIFont
- (id)fallback_debugHierarchyValueWithOutOptions:(id *)a3 outError:(id *)a4;
@end

@implementation UIFont

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
  v28 = v11;

  v33[0] = @"propertyFormat";
  v33[1] = @"propertyRuntimeType";
  v34[0] = @"font";
  v34[1] = v12;
  v30 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  *a3 = v30;
  v31[0] = @"familyName";
  v13 = [(UIFont *)self familyName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_3C768;
  }

  v32[0] = v15;
  v31[1] = @"fontName";
  v16 = [(UIFont *)self fontName];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_3C768;
  }

  v32[1] = v18;
  v31[2] = @"pointSize";
  [(UIFont *)self pointSize];
  v19 = [NSNumber numberWithDouble:?];
  v32[2] = v19;
  v31[3] = @"ascender";
  [(UIFont *)self ascender];
  v20 = [NSNumber numberWithDouble:?];
  v32[3] = v20;
  v31[4] = @"descender";
  [(UIFont *)self descender];
  v21 = [NSNumber numberWithDouble:?];
  v32[4] = v21;
  v31[5] = @"capHeight";
  [(UIFont *)self capHeight];
  v22 = [NSNumber numberWithDouble:?];
  v32[5] = v22;
  v31[6] = @"xHeight";
  [(UIFont *)self xHeight];
  v23 = [NSNumber numberWithDouble:?];
  v32[6] = v23;
  v31[7] = @"lineHeight";
  [(UIFont *)self lineHeight];
  v24 = [NSNumber numberWithDouble:?];
  v32[7] = v24;
  v31[8] = @"leading";
  [(UIFont *)self leading];
  v25 = [NSNumber numberWithDouble:?];
  v32[8] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

  return v26;
}

@end