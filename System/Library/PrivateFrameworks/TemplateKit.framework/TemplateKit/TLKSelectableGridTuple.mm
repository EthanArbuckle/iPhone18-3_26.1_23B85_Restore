@interface TLKSelectableGridTuple
+ (id)tupleWithTitle:(id)title subtitle:(id)subtitle;
+ (id)tuplesForTitles:(id)titles subtitles:(id)subtitles;
- (id)description;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation TLKSelectableGridTuple

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    objc_storeStrong(&self->_title, title);
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (self->_subtitle != subtitleCopy)
  {
    objc_storeStrong(&self->_subtitle, subtitle);
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

+ (id)tupleWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v7 = objc_alloc_init(TLKSelectableGridTuple);
  [(TLKSelectableGridTuple *)v7 setTitle:titleCopy];

  [(TLKSelectableGridTuple *)v7 setSubtitle:subtitleCopy];

  return v7;
}

+ (id)tuplesForTitles:(id)titles subtitles:(id)subtitles
{
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  v7 = objc_opt_new();
  if ([titlesCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [titlesCopy objectAtIndexedSubscript:v8];
      v10 = [subtitlesCopy objectAtIndexedSubscript:v8];
      v11 = [TLKSelectableGridTuple tupleWithTitle:v9 subtitle:v10];
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [titlesCopy count]);
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

  title = [(TLKSelectableGridTuple *)self title];
  subtitle = [(TLKSelectableGridTuple *)self subtitle];
  [v3 appendFormat:@" (Title: '%@', Subtitle: '%@')", title, subtitle];

  return v3;
}

@end