@interface NSDictionary
- (int64_t)sortPatchworkAscendingHorizontal:(id)horizontal;
- (int64_t)sortPatchworkAscendingVertical:(id)vertical;
- (int64_t)sortPatchworkDescendingHorizontal:(id)horizontal;
- (int64_t)sortPatchworkDescendingVertical:(id)vertical;
@end

@implementation NSDictionary

- (int64_t)sortPatchworkAscendingVertical:(id)vertical
{
  [-[NSDictionary objectForKey:](self objectForKey:{@"rectangle", "CGRectValue"}];
  v5 = v4;
  [objc_msgSend(vertical objectForKey:{@"rectangle", "CGRectValue"}];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (int64_t)sortPatchworkDescendingVertical:(id)vertical
{
  [-[NSDictionary objectForKey:](self objectForKey:{@"rectangle", "CGRectValue"}];
  v5 = v4;
  [objc_msgSend(vertical objectForKey:{@"rectangle", "CGRectValue"}];
  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

- (int64_t)sortPatchworkAscendingHorizontal:(id)horizontal
{
  [-[NSDictionary objectForKey:](self objectForKey:{@"rectangle", "CGRectValue"}];
  v5 = v4;
  [objc_msgSend(horizontal objectForKey:{@"rectangle", "CGRectValue"}];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (int64_t)sortPatchworkDescendingHorizontal:(id)horizontal
{
  [-[NSDictionary objectForKey:](self objectForKey:{@"rectangle", "CGRectValue"}];
  v5 = v4;
  [objc_msgSend(horizontal objectForKey:{@"rectangle", "CGRectValue"}];
  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

@end