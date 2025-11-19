@interface TRISQLiteCKQueryCursor
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TRISQLiteCKQueryCursor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(TRISQLiteCKQueryCursor *)self query];
  v6 = [v5 copy];
  [v4 setQuery:v6];

  [v4 setOffset:{-[TRISQLiteCKQueryCursor offset](self, "offset")}];
  return v4;
}

@end