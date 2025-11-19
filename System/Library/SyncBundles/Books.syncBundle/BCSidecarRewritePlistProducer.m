@interface BCSidecarRewritePlistProducer
- (BCSidecarRewritePlistProducer)initWithPath:(id)a3 deletes:(id)a4;
- (BOOL)shouldRetry;
- (id)produceData;
- (void)dealloc;
@end

@implementation BCSidecarRewritePlistProducer

- (BCSidecarRewritePlistProducer)initWithPath:(id)a3 deletes:(id)a4
{
  v5 = [(BCPlistProducer *)self initWithPath:a3];
  if (v5)
  {
    v5->_deletes = a4;
  }

  return v5;
}

- (void)dealloc
{
  self->_deletes = 0;
  v3.receiver = self;
  v3.super_class = BCSidecarRewritePlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)shouldRetry
{
  if ([(NSArray *)self->_deletes count])
  {
    v4.receiver = self;
    v4.super_class = BCSidecarRewritePlistProducer;
    return [(BCPlistProducer *)&v4 shouldRetry];
  }

  else
  {
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:self->super._path, 0];
    return 0;
  }
}

- (id)produceData
{
  if ([(NSArray *)self->_deletes count])
  {
    v3 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
    if (!v3)
    {
      v3 = +[NSMutableDictionary dictionary];
    }

    [(NSMutableDictionary *)v3 setObject:self->_deletes forKey:@"Deletes"];
  }

  else
  {
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:self->super._path, 0];

    v3 = 0;
    self->_deletes = 0;
  }

  return v3;
}

@end