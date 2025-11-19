@interface SPZKWSession
- (id)queryTaskWithContext:(id)a3;
@end

@implementation SPZKWSession

- (id)queryTaskWithContext:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D4BED0]) initWithSearchQueryContext:v3];
  [v4 setQuery:v5];

  return v4;
}

@end