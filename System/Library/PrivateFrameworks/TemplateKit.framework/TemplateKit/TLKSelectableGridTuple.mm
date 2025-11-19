@interface TLKSelectableGridTuple
+ (id)tupleWithTitle:(id)a3 subtitle:(id)a4;
+ (id)tuplesForTitles:(id)a3 subtitles:(id)a4;
- (id)description;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation TLKSelectableGridTuple

- (void)setTitle:(id)a3
{
  v10 = a3;
  if (self->_title != v10)
  {
    objc_storeStrong(&self->_title, a3);
    v5 = [(TLKObject *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKObject *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKObject *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setSubtitle:(id)a3
{
  v10 = a3;
  if (self->_subtitle != v10)
  {
    objc_storeStrong(&self->_subtitle, a3);
    v5 = [(TLKObject *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKObject *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKObject *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

+ (id)tupleWithTitle:(id)a3 subtitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TLKSelectableGridTuple);
  [(TLKSelectableGridTuple *)v7 setTitle:v6];

  [(TLKSelectableGridTuple *)v7 setSubtitle:v5];

  return v7;
}

+ (id)tuplesForTitles:(id)a3 subtitles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 count])
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = [TLKSelectableGridTuple tupleWithTitle:v9 subtitle:v10];
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [v5 count]);
  }

  v12 = [v7 copy];

  return v12;
}

- (id)description
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = TLKSelectableGridTuple;
  v4 = [(TLKSelectableGridTuple *)&v8 description];
  [v3 appendString:v4];

  v5 = [(TLKSelectableGridTuple *)self title];
  v6 = [(TLKSelectableGridTuple *)self subtitle];
  [v3 appendFormat:@" (Title: '%@', Subtitle: '%@')", v5, v6];

  return v3;
}

@end