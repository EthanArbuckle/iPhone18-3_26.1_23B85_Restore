@interface BCRemovePersistentIDPlistProducer
- (BCRemovePersistentIDPlistProducer)initWithPath:(id)path persistentIDs:(id)ds;
- (BOOL)shouldRetry;
- (id)produceData;
- (void)dealloc;
@end

@implementation BCRemovePersistentIDPlistProducer

- (BCRemovePersistentIDPlistProducer)initWithPath:(id)path persistentIDs:(id)ds
{
  v5 = [(BCPlistProducer *)self initWithPath:path];
  if (v5)
  {
    v5->_persistentIDs = ds;
  }

  return v5;
}

- (void)dealloc
{
  self->_persistentIDs = 0;
  v3.receiver = self;
  v3.super_class = BCRemovePersistentIDPlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)shouldRetry
{
  v3 = [(NSArray *)self->_persistentIDs count];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = BCRemovePersistentIDPlistProducer;
    LOBYTE(v3) = [(BCPlistProducer *)&v5 shouldRetry];
  }

  return v3;
}

- (id)produceData
{
  if (![(NSArray *)self->_persistentIDs count])
  {
    v3 = 0;
LABEL_6:
    self->super._dataUnchanged = 1;
    return v3;
  }

  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = objc_opt_class();
  v5 = BCDynamicCast(v4, [(NSMutableDictionary *)v3 objectForKey:@"Books"]);
  v6 = [v5 arrayRemovingObjectsByKey:@"Persistent ID" matchingStrings:self->_persistentIDs];
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    goto LABEL_6;
  }

  [(NSMutableDictionary *)v3 setObject:v6 forKey:@"Books"];
  return v3;
}

@end