@interface TSKSearch
- (TSKSearch)initWithString:(id)string options:(unint64_t)options hitBlock:(id)block;
- (void)dealloc;
@end

@implementation TSKSearch

- (TSKSearch)initWithString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  v11.receiver = self;
  v11.super_class = TSKSearch;
  v8 = [(TSKSearch *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TSKSearch *)v8 setString:string];
    [(TSKSearch *)v9 setOptions:options];
    [(TSKSearch *)v9 setHitBlock:block];
    [(TSKSearch *)v9 setIsComplete:0];
  }

  return v9;
}

- (void)dealloc
{
  [(TSKSearch *)self setString:0];
  [(TSKSearch *)self setHitBlock:0];
  v3.receiver = self;
  v3.super_class = TSKSearch;
  [(TSKSearch *)&v3 dealloc];
}

@end