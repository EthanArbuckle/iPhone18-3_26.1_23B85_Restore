@interface UITextRangeImpl
+ (id)wrapDOMRange:(id)range withAffinity:(int64_t)affinity;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)end;
- (id)start;
- (void)adjustAffinityOfPosition:(id)position isStart:(BOOL)start;
@end

@implementation UITextRangeImpl

+ (id)wrapDOMRange:(id)range withAffinity:(int64_t)affinity
{
  if (range)
  {
    rangeCopy = range;
    v6 = objc_alloc_init(UITextRangeImpl);
    [(UITextRangeImpl *)v6 setDomRange:rangeCopy];

    [(UITextRangeImpl *)v6 setAffinity:affinity];
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
  start = [(UITextRangeImpl *)self start];
  v6 = [(UITextRangeImpl *)self end];
  v7 = [v3 stringWithFormat:@"%@(%p) - start:%@, end:%@", v4, self, start, v6];

  return v7;
}

- (void)adjustAffinityOfPosition:(id)position isStart:(BOOL)start
{
  startCopy = start;
  positionCopy = position;
  if ([(UITextRangeImpl *)self isEmpty])
  {
    startCopy = [(UITextRangeImpl *)self affinity]== 0;
  }

  webVisiblePosition = [positionCopy webVisiblePosition];
  [webVisiblePosition setAffinity:startCopy];
}

- (id)start
{
  WebThreadLock();
  v3 = objc_alloc_init(UITextPositionImpl);
  domRange = [(UITextRangeImpl *)self domRange];
  startPosition = [domRange startPosition];
  [(UITextPositionImpl *)v3 setWebVisiblePosition:startPosition];

  [(UITextRangeImpl *)self adjustAffinityOfPosition:v3 isStart:1];

  return v3;
}

- (id)end
{
  WebThreadLock();
  v3 = objc_alloc_init(UITextPositionImpl);
  domRange = [(UITextRangeImpl *)self domRange];
  endPosition = [domRange endPosition];
  [(UITextPositionImpl *)v3 setWebVisiblePosition:endPosition];

  [(UITextRangeImpl *)self adjustAffinityOfPosition:v3 isStart:0];

  return v3;
}

- (BOOL)isEmpty
{
  WebThreadLock();
  domRange = [(UITextRangeImpl *)self domRange];
  collapsed = [domRange collapsed];

  return collapsed;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  WebThreadLock();
  v5 = equalCopy;
  if (self == v5)
  {
    v10 = 1;
    goto LABEL_6;
  }

  domRange = [(UITextRangeImpl *)self domRange];
  domRange2 = [(UITextRangeImpl *)v5 domRange];
  startContainer = [domRange startContainer];
  startContainer2 = [domRange2 startContainer];

  if (startContainer != startContainer2)
  {
    goto LABEL_3;
  }

  if (![domRange collapsed])
  {
    if (domRange != domRange2)
    {
      if (([domRange2 collapsed] & 1) == 0 && !objc_msgSend(domRange, "compareBoundaryPoints:sourceRange:", 2, domRange2))
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

LABEL_16:
    v10 = 1;
    goto LABEL_4;
  }

  affinity = [(UITextRangeImpl *)self affinity];
  if (affinity != [(UITextRangeImpl *)v5 affinity])
  {
    goto LABEL_3;
  }

  if (domRange == domRange2)
  {
    goto LABEL_16;
  }

  if ([domRange2 collapsed])
  {
LABEL_15:
    v10 = [domRange compareBoundaryPoints:0 sourceRange:domRange2] == 0;
    goto LABEL_4;
  }

LABEL_3:
  v10 = 0;
LABEL_4:

LABEL_6:
  return v10;
}

@end