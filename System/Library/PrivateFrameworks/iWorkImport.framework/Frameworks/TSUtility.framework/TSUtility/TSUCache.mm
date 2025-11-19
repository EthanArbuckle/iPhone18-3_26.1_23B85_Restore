@interface TSUCache
- (TSUCache)initWithName:(id)a3;
@end

@implementation TSUCache

- (TSUCache)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSUCache;
  v5 = [(TSUCache *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(TSUCache *)v5 setName:v4];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2770FBC8C;
    v8[3] = &unk_27A7026E0;
    v9 = v6;
    [TSUExecutionContext performWithApplication:v8];
  }

  return v6;
}

@end