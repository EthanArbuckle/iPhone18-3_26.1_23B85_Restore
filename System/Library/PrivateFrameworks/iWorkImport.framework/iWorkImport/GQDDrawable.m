@interface GQDDrawable
- (CGPath)createBezierPath;
- (__CFString)urlString;
- (const)wrapPoints;
- (int)collectWrapPointsForState:(id)a3 graphicStyle:(id)a4;
- (void)addWrapPoint:(id)a3;
- (void)clearWrapPoints;
- (void)collectWrapPoints:(id)a3 forPath:(CGPath *)a4 context:(FindLinesContext *)a5;
- (void)dealloc;
@end

@implementation GQDDrawable

- (void)dealloc
{
  mUrl = self->mUrl;
  if (mUrl)
  {
    CFRelease(mUrl);
  }

  mUid = self->mUid;
  if (mUid)
  {
    free(mUid);
  }

  mInnerWrapPoints = self->mInnerWrapPoints;
  if (mInnerWrapPoints)
  {
    sub_97AC(self->mInnerWrapPoints, mInnerWrapPoints[1]);
    operator delete();
  }

  v6.receiver = self;
  v6.super_class = GQDDrawable;
  [(GQDDrawable *)&v6 dealloc];
}

- (__CFString)urlString
{
  result = self->mUrl;
  if (result)
  {
    return CFURLGetString(result);
  }

  return result;
}

- (int)collectWrapPointsForState:(id)a3 graphicStyle:(id)a4
{
  v14 = 0;
  cf[0] = 0;
  memset(v12, 0, sizeof(v12));
  cf[1] = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v11 = 0;
  v7 = [a4 hasValueForObjectProperty:72 value:&v11];
  v8 = 0;
  if (!v7 || !v11)
  {
    goto LABEL_9;
  }

  v8 = [v11 floatingWrapType];
  switch(v8)
  {
    case 2u:
      v8 = 0;
      goto LABEL_9;
    case 1u:
LABEL_9:
      HIDWORD(v14) = v8;
      break;
    case 0u:
      v9 = [v11 wrapDirection];
      if (v9 < 3)
      {
        v8 = dword_5E9F4[v9];
        goto LABEL_9;
      }

      break;
  }

  -[GQDDrawable collectWrapPoints:forPath:context:](self, "collectWrapPoints:forPath:context:", [a3 currentWrapPointGenerator], -[GQDBezierPath path](self->mWrapPath, "path"), v12);
  CFRelease(cf[1]);
  return 1;
}

- (void)addWrapPoint:(id)a3
{
  mInnerWrapPoints = self->mInnerWrapPoints;
  v5 = a3;
  v4 = a3;
  sub_9828(mInnerWrapPoints, &v5);
}

- (const)wrapPoints
{
  result = self->mInnerWrapPoints;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)clearWrapPoints
{
  mInnerWrapPoints = self->mInnerWrapPoints;
  sub_97AC(mInnerWrapPoints, *(mInnerWrapPoints + 1));
  *mInnerWrapPoints = mInnerWrapPoints + 8;
  *(mInnerWrapPoints + 2) = 0;
  *(mInnerWrapPoints + 1) = 0;
}

- (CGPath)createBezierPath
{
  Mutable = CGPathCreateMutable();
  [(GQDAffineGeometry *)self->mGeometry position];
  v5 = v4;
  [(GQDAffineGeometry *)self->mGeometry position];
  v7 = v6;
  [(GQDAffineGeometry *)self->mGeometry size];
  v9 = v8;
  [(GQDAffineGeometry *)self->mGeometry size];
  v12.size.height = v10;
  v12.origin.x = v5;
  v12.origin.y = v7;
  v12.size.width = v9;
  CGPathAddRect(Mutable, 0, v12);
  return Mutable;
}

- (void)collectWrapPoints:(id)a3 forPath:(CGPath *)a4 context:(FindLinesContext *)a5
{
  mGeometry = self->mGeometry;
  CGPathApply(a4, a5, sub_950C);
  [(GQDAffineGeometry *)mGeometry position];
  v11 = v10;
  v13 = v12;
  BoundingBox = CGPathGetBoundingBox(a4);
  v14 = (10 * ((v13 + -20.0) / 10));
  v15 = (10 * ((v13 + BoundingBox.size.height + 30.0) / 10));
  if (v14 < v15)
  {
    v16 = v11 + BoundingBox.size.width * 0.5;
    do
    {
      __src = 0;
      v59 = 0;
      v60 = 0;
      Count = CFArrayGetCount(a5->var3);
      v18 = Count;
      if (Count)
      {
        v19 = 0;
        v20 = v14;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a5->var3, v19);
          v22 = ValueAtIndex[2];
          if (v22 <= v20)
          {
            v23 = ValueAtIndex[4];
            if (v23 >= v20)
            {
              v24 = ValueAtIndex[1];
              v25 = ValueAtIndex[3] - v24;
              v26 = v23 - v22;
              v27 = v24 + (v20 - v22) * v25 / v26;
              v28 = v59;
              if (v59 >= v60)
              {
                v30 = __src;
                v31 = v59 - __src;
                v32 = (v59 - __src) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  sub_9D48();
                }

                v34 = v60 - __src;
                if ((v60 - __src) >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v35 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_A028(&__src, v35);
                }

                *(4 * v32) = v27;
                v29 = 4 * v32 + 4;
                memcpy(0, v30, v31);
                v36 = __src;
                __src = 0;
                v59 = v29;
                v60 = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v59 = v27;
                v29 = (v28 + 1);
              }

              v59 = v29;
            }
          }

          ++v19;
        }

        while (v18 != v19);
      }

      if (v59 != __src)
      {
        v37 = (v59 - __src) >> 2;
        var5 = a5->var5;
        if (var5 - 2 < 2)
        {
          if (v37 <= 1)
          {
            v52 = *__src;
            v53 = 0.0;
          }

          else
          {
            std::__sort<std::__less<float,float> &,float *>();
            if (var5 == 2)
            {
              v51 = *(v59 - 1);
              v52 = *__src;
            }

            else
            {
              v51 = *__src;
              v52 = *(v59 - 1);
            }

            v53 = v51 - v52;
          }

          v54 = [GQDWrapPoint alloc];
          *&v55 = v52;
          *&v56 = v14;
          v57 = [(GQDWrapPoint *)v54 initWithX:2 * (var5 != 2) y:self flowType:v55 drawable:v56];
          v57[6] = v53;
          [a3 addWrapPoint:v57];
        }

        else if (var5 <= 1)
        {
          if (v37 < 2)
          {
            v40 = *__src;
            v46 = [GQDWrapPoint alloc];
            if (var5)
            {
              v49 = 2 * (v40 >= v16);
            }

            else
            {
              v49 = 1;
            }
          }

          else
          {
            std::__sort<std::__less<float,float> &,float *>();
            v39 = *__src;
            v40 = *(v59 - 1);
            v41 = a5->var5;
            v42 = [GQDWrapPoint alloc];
            *&v43 = v39;
            *&v44 = v14;
            v45 = [(GQDWrapPoint *)v42 initWithX:v41 != 0 y:self flowType:v43 drawable:v44];
            [a3 addWrapPoint:v45];

            LODWORD(v45) = a5->var5;
            v46 = [GQDWrapPoint alloc];
            if (v45)
            {
              v49 = 1;
            }

            else
            {
              v49 = 2;
            }
          }

          *&v47 = v40;
          *&v48 = v14;
          v50 = [(GQDWrapPoint *)v46 initWithX:v49 y:self flowType:v47 drawable:v48, __src];
          [a3 addWrapPoint:v50];
        }
      }

      if (__src)
      {
        v59 = __src;
        operator delete(__src);
      }

      v14 = v14 + 10.0;
    }

    while (v14 < v15);
  }
}

@end