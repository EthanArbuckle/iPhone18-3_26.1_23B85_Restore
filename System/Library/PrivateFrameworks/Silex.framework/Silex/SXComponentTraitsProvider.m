@interface SXComponentTraitsProvider
- (SXComponentTraitsProvider)initWithDOMObjectProvider:(id)a3;
- (unint64_t)traitsForComponent:(id)a3;
@end

@implementation SXComponentTraitsProvider

- (SXComponentTraitsProvider)initWithDOMObjectProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXComponentTraitsProvider;
  v6 = [(SXComponentTraitsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DOMObjectProvider, a3);
  }

  return v7;
}

- (unint64_t)traitsForComponent:(id)a3
{
  v4 = a3;
  v5 = [v4 traits];
  v6 = [v4 style];

  if (v6)
  {
    v7 = [(SXComponentTraitsProvider *)self DOMObjectProvider];
    v8 = [v7 componentStyleForComponent:v4];

    if (([v8 traits] & 6) != 0)
    {
      v5 |= 0x2AuLL;
    }
  }

  return v5;
}

@end