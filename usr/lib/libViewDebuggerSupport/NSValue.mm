@interface NSValue
- (id)debugHierarchyValueForObjCType_CATransform3D;
- (id)debugHierarchyValueForObjCType_CGAffineTransform;
- (id)debugHierarchyValueForObjCType_CGPoint;
- (id)debugHierarchyValueForObjCType_CGRect;
- (id)debugHierarchyValueForObjCType_CGSize;
- (id)debugHierarchyValueForObjCType_CGVector;
- (id)debugHierarchyValueForObjCType_NSDirectionalEdgeInsets;
- (id)debugHierarchyValueForObjCType_UIEdgeInsets;
- (id)debugHierarchyValueForObjCType_UIOffset;
- (id)fallback_debugHierarchyValueWithOutOptions:(id *)a3 outError:(id *)a4;
@end

@implementation NSValue

- (id)debugHierarchyValueForObjCType_CGVector
{
  [(NSValue *)self CGVectorValue];
  valuePtr = v2;
  v8 = v3;
  v4 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
  *v4 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  v4[1] = CFNumberCreate(0, kCFNumberCGFloatType, &v8);
  v5 = CFArrayCreate(0, v4, 2, &kCFTypeArrayCallBacks);
  CFRelease(*v4);
  CFRelease(v4[1]);
  free(v4);

  return v5;
}

- (id)debugHierarchyValueForObjCType_CGAffineTransform
{
  [(NSValue *)self CGAffineTransformValue];
  v2 = [NSNumber numberWithDouble:0.0];
  v10[0] = v2;
  v3 = [NSNumber numberWithDouble:0.0];
  v10[1] = v3;
  v4 = [NSNumber numberWithDouble:0.0];
  v10[2] = v4;
  v5 = [NSNumber numberWithDouble:0.0];
  v10[3] = v5;
  v6 = [NSNumber numberWithDouble:0.0];
  v10[4] = v6;
  v7 = [NSNumber numberWithDouble:0.0];
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];

  return v8;
}

- (id)debugHierarchyValueForObjCType_UIEdgeInsets
{
  [(NSValue *)self UIEdgeInsetsValue];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [NSNumber numberWithDouble:?];
  v14[0] = v8;
  v9 = [NSNumber numberWithDouble:v3];
  v14[1] = v9;
  v10 = [NSNumber numberWithDouble:v5];
  v14[2] = v10;
  v11 = [NSNumber numberWithDouble:v7];
  v14[3] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:4];

  return v12;
}

- (id)debugHierarchyValueForObjCType_NSDirectionalEdgeInsets
{
  [(NSValue *)self directionalEdgeInsetsValue];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [NSNumber numberWithDouble:?];
  v14[0] = v8;
  v9 = [NSNumber numberWithDouble:v3];
  v14[1] = v9;
  v10 = [NSNumber numberWithDouble:v5];
  v14[2] = v10;
  v11 = [NSNumber numberWithDouble:v7];
  v14[3] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:4];

  return v12;
}

- (id)debugHierarchyValueForObjCType_UIOffset
{
  [(NSValue *)self UIOffsetValue];
  v3 = v2;
  v4 = [NSNumber numberWithDouble:?];
  v8[0] = v4;
  v5 = [NSNumber numberWithDouble:v3];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (id)fallback_debugHierarchyValueWithOutOptions:(id *)a3 outError:(id *)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = self;
  }

  else
  {
    v6 = [NSString stringWithCString:[(NSValue *)self objCType] encoding:4];
    v7 = [v6 rangeOfString:@"="];
    if ([v6 hasPrefix:@"{"])
    {
      v8 = v7 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = [v6 substringWithRange:{1, v7 - 1}];

      v6 = v9;
    }

    v10 = [@"debugHierarchyValueForObjCType_" stringByAppendingString:v6];
    v11 = NSSelectorFromString(v10);
    if (objc_opt_respondsToSelector())
    {
      a4 = [(NSValue *)self performSelector:v11];
    }

    else if (a4)
    {
      v12 = [NSString stringWithFormat:@"Unable to provide DebugHierarchy value for NSValue (%@). Dynamic method look up failed for: -%@.", v6, v10];
      if (self)
      {
        v13 = [NSString stringWithFormat:@"%@", self];
      }

      else
      {
        v13 = &stru_3C768;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_3C768;
      }

      v20[0] = @"propertyName";
      v20[1] = @"objectDescription";
      v21[0] = &stru_3C768;
      v21[1] = v13;
      v20[2] = @"errorDescription";
      v21[2] = v14;
      v15 = v14;
      v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
      v17 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:101 userInfo:v16];

      v18 = v17;
      *a4 = v17;

      a4 = 0;
    }
  }

  return a4;
}

- (id)debugHierarchyValueForObjCType_CGPoint
{
  [(NSValue *)self CGPointValue];
  valuePtr = v2;
  v8 = v3;
  v4 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
  *v4 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  v4[1] = CFNumberCreate(0, kCFNumberCGFloatType, &v8);
  v5 = CFArrayCreate(0, v4, 2, &kCFTypeArrayCallBacks);
  CFRelease(*v4);
  CFRelease(v4[1]);
  free(v4);

  return v5;
}

- (id)debugHierarchyValueForObjCType_CGSize
{
  [(NSValue *)self CGSizeValue];
  valuePtr = v2;
  v8 = v3;
  v4 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
  *v4 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  v4[1] = CFNumberCreate(0, kCFNumberCGFloatType, &v8);
  v5 = CFArrayCreate(0, v4, 2, &kCFTypeArrayCallBacks);
  CFRelease(*v4);
  CFRelease(v4[1]);
  free(v4);

  return v5;
}

- (id)debugHierarchyValueForObjCType_CGRect
{
  [(NSValue *)self CGRectValue];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v6 = malloc_type_malloc(0x20uLL, 0x6004044C4A2DFuLL);
  for (i = 0; i != 4; ++i)
  {
    v6[i] = CFNumberCreate(0, kCFNumberCGFloatType, &v11[i]);
  }

  v8 = CFArrayCreate(0, v6, 4, &kCFTypeArrayCallBacks);
  for (j = 0; j != 4; ++j)
  {
    CFRelease(v6[j]);
  }

  free(v6);

  return v8;
}

- (id)debugHierarchyValueForObjCType_CATransform3D
{
  [(NSValue *)self CATransform3DValue];
  v19 = [NSNumber numberWithDouble:v20];
  v36[0] = v19;
  v18 = [NSNumber numberWithDouble:v21];
  v36[1] = v18;
  v17 = [NSNumber numberWithDouble:v22];
  v36[2] = v17;
  v16 = [NSNumber numberWithDouble:v23];
  v36[3] = v16;
  v15 = [NSNumber numberWithDouble:v24];
  v36[4] = v15;
  v14 = [NSNumber numberWithDouble:v25];
  v36[5] = v14;
  v13 = [NSNumber numberWithDouble:v26];
  v36[6] = v13;
  v2 = [NSNumber numberWithDouble:v27];
  v36[7] = v2;
  v3 = [NSNumber numberWithDouble:v28];
  v36[8] = v3;
  v4 = [NSNumber numberWithDouble:v29];
  v36[9] = v4;
  v5 = [NSNumber numberWithDouble:v30];
  v36[10] = v5;
  v6 = [NSNumber numberWithDouble:v31];
  v36[11] = v6;
  v7 = [NSNumber numberWithDouble:v32];
  v36[12] = v7;
  v8 = [NSNumber numberWithDouble:v33];
  v36[13] = v8;
  v9 = [NSNumber numberWithDouble:v34];
  v36[14] = v9;
  v10 = [NSNumber numberWithDouble:v35];
  v36[15] = v10;
  v11 = [NSArray arrayWithObjects:v36 count:16];

  return v11;
}

@end