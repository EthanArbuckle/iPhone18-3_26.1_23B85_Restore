@interface GQDBezierPath
+ (__CFString)createCFStringFromPath:(CGPath *)a3;
- (BOOL)isRectangular;
- (CGPath)createBezierPath;
- (CGPath)path;
- (GQDBezierPath)initWithPathString:(const char *)a3;
- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4;
- (void)dealloc;
@end

@implementation GQDBezierPath

- (GQDBezierPath)initWithPathString:(const char *)a3
{
  v7.receiver = self;
  v7.super_class = GQDBezierPath;
  v4 = [(GQDBezierPath *)&v7 init];
  if (v4)
  {
    v5 = xmlStrdup(a3);
    v4->mPathStr = v5;
    v4->mPath = sub_42ABC(v5);
  }

  return v4;
}

- (void)dealloc
{
  mPath = self->mPath;
  if (mPath)
  {
    CFRelease(mPath);
  }

  mPathStr = self->mPathStr;
  if (mPathStr)
  {
    free(mPathStr);
    self->mPathStr = 0;
  }

  v5.receiver = self;
  v5.super_class = GQDBezierPath;
  [(GQDPath *)&v5 dealloc];
}

- (BOOL)isRectangular
{
  v30 = CGPointZero;
  v33 = 0;
  v34 = 0;
  CGPathApply([(GQDBezierPath *)self path], &v30, sub_2CB0);
  result = 0;
  if ((v34 & 0x100) == 0 && v33 == 4)
  {
    if (v34 == 1)
    {
      v3 = 0;
      v4 = v32;
      while (v3 != 4)
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v7 = v3 + 1;
        v8 = &v32[2 * ((v3 + 1) & 3) - 1];
        v9 = *v8;
        v10 = v8[1];
        v11 = &v32[2 * (v3 ^ 2) - 1];
        v12 = *v11;
        v13 = v11[1];
        v14 = sub_4F980(v5, *v4, *v8, v10);
        LODWORD(v9) = sub_4F980(v9, v10, v12, v13);
        v15 = sub_4F980(v5, v6, v12, v13);
        v4 += 2;
        v3 = v7;
        if (vabds_f32(v15, sqrtf((*&v9 * *&v9) + (v14 * v14))) > 0.001)
        {
          return 0;
        }
      }

      v16 = v32;
      v17 = sub_4FA74(v31, v32[0], v32[1]);
      v21 = sub_4FAB8(v17, v18, v19, v20, v32[3]);
      v25 = sub_4FAB8(v21, v22, v23, v24, v32[5]);
      v27 = v26;
      v28 = 3;
      do
      {
        v29 = v28;
        result = sub_4FB0C(*(v16 - 1), *v16, v25, v27);
        if (result)
        {
          break;
        }

        v28 = v29 - 1;
        v16 += 2;
      }

      while (v29);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGPath)path
{
  result = self->mPath;
  if (!result)
  {
    result = self->mPathStr;
    if (result)
    {
      result = sub_42ABC(result);
      self->mPath = result;
    }
  }

  return result;
}

- (CGPath)createBezierPath
{
  v2 = [(GQDBezierPath *)self path];

  return CGPathCreateCopy(v2);
}

+ (__CFString)createCFStringFromPath:(CGPath *)a3
{
  Mutable = CFStringCreateMutable(0, 0);
  CGPathApply(a3, Mutable, sub_2EB0);
  return Mutable;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  mPathStr = self->mPathStr;
  if (mPathStr)
  {
    free(mPathStr);
    self->mPathStr = 0;
  }

  AttributeNs = xmlTextReaderGetAttributeNs(a3, "path", *(qword_A35E0 + 16));
  self->mPathStr = AttributeNs;
  if (self->mPath)
  {
    CFRelease(self->mPath);
    self->mPath = 0;
    AttributeNs = self->mPathStr;
  }

  if (AttributeNs)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end