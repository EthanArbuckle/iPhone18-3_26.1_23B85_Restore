@interface BCAddEntriesPlistProducer
- (BCAddEntriesPlistProducer)initWithPath:(id)path entries:(id)entries;
- (BOOL)shouldRetry;
- (id)produceData;
- (void)dealloc;
@end

@implementation BCAddEntriesPlistProducer

- (BCAddEntriesPlistProducer)initWithPath:(id)path entries:(id)entries
{
  v5 = [(BCPlistProducer *)self initWithPath:path];
  if (v5)
  {
    v5->_entries = entries;
  }

  return v5;
}

- (void)dealloc
{
  self->_entries = 0;
  v3.receiver = self;
  v3.super_class = BCAddEntriesPlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)shouldRetry
{
  if ([(NSArray *)self->_entries count])
  {
    v5.receiver = self;
    v5.super_class = BCAddEntriesPlistProducer;
    return [(BCPlistProducer *)&v5 shouldRetry];
  }

  else
  {
    return self->_replace;
  }
}

- (id)produceData
{
  if ([(NSArray *)self->_entries count]|| self->_replace)
  {
    v3 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
    if (!v3)
    {
      v3 = +[NSMutableDictionary dictionary];
    }

    v4 = objc_opt_class();
    v5 = BCDynamicCast(v4, [(NSMutableDictionary *)v3 objectForKey:@"Books"]);
    v6 = v5;
    if (self->_replace)
    {
      v7 = self->_entries;
      if (!v7)
      {
        v7 = objc_alloc_init(NSArray);
      }

      if ([v6 isEqualToArray:v7])
      {
        self->super._dataUnchanged = 1;
      }
    }

    else
    {
      if ([v5 count])
      {
        v8 = [[NSMutableArray alloc] initWithArray:v6];
      }

      else
      {
        v8 = objc_alloc_init(NSMutableArray);
      }

      v7 = v8;
      [(NSArray *)v8 addObjectsFromArray:self->_entries];
    }

    [(NSMutableDictionary *)v3 setObject:v7 forKey:@"Books"];
  }

  else
  {
    v3 = 0;
    self->super._dataUnchanged = 1;
  }

  return v3;
}

@end