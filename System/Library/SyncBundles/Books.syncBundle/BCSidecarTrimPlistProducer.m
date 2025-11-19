@interface BCSidecarTrimPlistProducer
- (BCSidecarTrimPlistProducer)initWithPath:(id)a3 removePaths:(id)a4;
- (BOOL)shouldRetry;
- (id)produceData;
- (void)dealloc;
@end

@implementation BCSidecarTrimPlistProducer

- (BCSidecarTrimPlistProducer)initWithPath:(id)a3 removePaths:(id)a4
{
  v5 = [(BCPlistProducer *)self initWithPath:a3];
  if (v5)
  {
    v5->_removePaths = a4;
  }

  return v5;
}

- (void)dealloc
{
  self->_removePaths = 0;
  v3.receiver = self;
  v3.super_class = BCSidecarTrimPlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)shouldRetry
{
  v3 = [(NSArray *)self->_removePaths count];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = BCSidecarTrimPlistProducer;
    LOBYTE(v3) = [(BCPlistProducer *)&v5 shouldRetry];
  }

  return v3;
}

- (id)produceData
{
  if (![(NSString *)self->super._path length])
  {
    sub_132C4(&self->super._path, a2, self);
  }

  if (![(NSArray *)self->_removePaths count])
  {
    v4 = 0;
LABEL_8:
    self->super._dataUnchanged = 1;
    return v4;
  }

  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [(NSMutableDictionary *)v4 objectForKey:@"Deletes"]);
  v7 = [v6 arrayRemovingMatchingStrings:self->_removePaths];
  v8 = [v6 count];
  if (v8 <= [v7 count])
  {
    goto LABEL_8;
  }

  [(NSMutableDictionary *)v4 setObject:v7 forKey:@"Deletes"];
  return v4;
}

@end