@interface UITextRangeImpl
+ (id)wrapDOMRange:(id)a3 withAffinity:(int64_t)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)end;
- (id)start;
- (void)adjustAffinityOfPosition:(id)a3 isStart:(BOOL)a4;
@end

@implementation UITextRangeImpl

+ (id)wrapDOMRange:(id)a3 withAffinity:(int64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(UITextRangeImpl);
    [(UITextRangeImpl *)v6 setDomRange:v5];

    [(UITextRangeImpl *)v6 setAffinity:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UITextRangeImpl *)self start];
  v6 = [(UITextRangeImpl *)self end];
  v7 = [v3 stringWithFormat:@"%@(%p) - start:%@, end:%@", v4, self, v5, v6];

  return v7;
}

- (void)adjustAffinityOfPosition:(id)a3 isStart:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(UITextRangeImpl *)self isEmpty])
  {
    v4 = [(UITextRangeImpl *)self affinity]== 0;
  }

  v6 = [v7 webVisiblePosition];
  [v6 setAffinity:v4];
}

- (id)start
{
  WebThreadLock();
  v3 = objc_alloc_init(UITextPositionImpl);
  v4 = [(UITextRangeImpl *)self domRange];
  v5 = [v4 startPosition];
  [(UITextPositionImpl *)v3 setWebVisiblePosition:v5];

  [(UITextRangeImpl *)self adjustAffinityOfPosition:v3 isStart:1];

  return v3;
}

- (id)end
{
  WebThreadLock();
  v3 = objc_alloc_init(UITextPositionImpl);
  v4 = [(UITextRangeImpl *)self domRange];
  v5 = [v4 endPosition];
  [(UITextPositionImpl *)v3 setWebVisiblePosition:v5];

  [(UITextRangeImpl *)self adjustAffinityOfPosition:v3 isStart:0];

  return v3;
}

- (BOOL)isEmpty
{
  WebThreadLock();
  v3 = [(UITextRangeImpl *)self domRange];
  v4 = [v3 collapsed];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  WebThreadLock();
  v5 = v4;
  if (self == v5)
  {
    v10 = 1;
    goto LABEL_6;
  }

  v6 = [(UITextRangeImpl *)self domRange];
  v7 = [(UITextRangeImpl *)v5 domRange];
  v8 = [v6 startContainer];
  v9 = [v7 startContainer];

  if (v8 != v9)
  {
    goto LABEL_3;
  }

  if (![v6 collapsed])
  {
    if (v6 != v7)
    {
      if (([v7 collapsed] & 1) == 0 && !objc_msgSend(v6, "compareBoundaryPoints:sourceRange:", 2, v7))
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

LABEL_16:
    v10 = 1;
    goto LABEL_4;
  }

  v12 = [(UITextRangeImpl *)self affinity];
  if (v12 != [(UITextRangeImpl *)v5 affinity])
  {
    goto LABEL_3;
  }

  if (v6 == v7)
  {
    goto LABEL_16;
  }

  if ([v7 collapsed])
  {
LABEL_15:
    v10 = [v6 compareBoundaryPoints:0 sourceRange:v7] == 0;
    goto LABEL_4;
  }

LABEL_3:
  v10 = 0;
LABEL_4:

LABEL_6:
  return v10;
}

@end