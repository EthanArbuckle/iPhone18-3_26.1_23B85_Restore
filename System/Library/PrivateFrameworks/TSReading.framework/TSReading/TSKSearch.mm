@interface TSKSearch
- (TSKSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5;
- (void)dealloc;
@end

@implementation TSKSearch

- (TSKSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5
{
  v11.receiver = self;
  v11.super_class = TSKSearch;
  v8 = [(TSKSearch *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TSKSearch *)v8 setString:a3];
    [(TSKSearch *)v9 setOptions:a4];
    [(TSKSearch *)v9 setHitBlock:a5];
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