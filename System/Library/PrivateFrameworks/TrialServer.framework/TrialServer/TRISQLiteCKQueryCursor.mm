@interface TRISQLiteCKQueryCursor
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TRISQLiteCKQueryCursor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  query = [(TRISQLiteCKQueryCursor *)self query];
  v6 = [query copy];
  [v4 setQuery:v6];

  [v4 setOffset:{-[TRISQLiteCKQueryCursor offset](self, "offset")}];
  return v4;
}

@end