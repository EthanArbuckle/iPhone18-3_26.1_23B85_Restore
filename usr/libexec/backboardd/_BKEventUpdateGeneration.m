@interface _BKEventUpdateGeneration
- (_BKEventUpdateGeneration)init;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _BKEventUpdateGeneration

- (void)appendDescriptionToStream:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002B56C;
  v6[3] = &unk_1000FD128;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:0 block:v6];
  v5 = [a3 appendObject:self->_clients withName:@"clients"];
}

- (_BKEventUpdateGeneration)init
{
  v6.receiver = self;
  v6.super_class = _BKEventUpdateGeneration;
  v2 = [(_BKEventUpdateGeneration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    clients = v2->_clients;
    v2->_clients = v3;
  }

  return v2;
}

@end