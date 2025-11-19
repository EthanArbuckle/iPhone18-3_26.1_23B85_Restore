@interface BKTouchDestination
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)appendSuccinctDescriptionToFormatter:(id)a3;
@end

@implementation BKTouchDestination

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100096BEC;
  v3[3] = &unk_1000FD128;
  v3[4] = self;
  v3[5] = a3;
  [a3 appendProem:self block:v3];
}

- (void)appendSuccinctDescriptionToFormatter:(id)a3
{
  predicate = self->_predicate;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = v6;
  if ((predicate & 1) == 0)
  {
    if ((predicate & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v7 addObject:@"touchStream"];
    if ((predicate & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v6 addObject:@"hitTest"];
  if ((predicate & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((predicate & 4) != 0)
  {
LABEL_4:
    [v7 addObject:@"filterDetachedTouches"];
  }

LABEL_5:
  v8 = [v7 componentsJoinedByString:@"|"];
  v9 = [NSString stringWithFormat:@"(%@)", v8];

  [a3 appendString:v9 withName:0];
  v10.receiver = self;
  v10.super_class = BKTouchDestination;
  [(BKCAContextDestination *)&v10 appendSuccinctDescriptionToFormatter:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = BKTouchDestination;
  v4 = [(BKCAContextDestination *)&v7 copyWithZone:a3];
  *(v4 + 4) = self->_predicate;
  WeakRetained = objc_loadWeakRetained(&self->_touchStream);
  objc_storeWeak(v4 + 5, WeakRetained);

  return v4;
}

@end