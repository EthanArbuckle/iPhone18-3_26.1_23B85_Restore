@interface PGChapterTitle
- (BOOL)isEqual:(id)a3;
- (PGChapterTitle)initWithLocalizedTitleString:(id)a3 chapterDateInterval:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation PGChapterTitle

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(PGChapterTitle *)self localizedTitleString];
  [v3 setObject:v4 forKeyedSubscript:@"title"];

  v5 = [(PGChapterTitle *)self chapterDateInterval];
  v6 = [v5 startDate];
  [v3 setObject:v6 forKeyedSubscript:@"startDate"];

  v7 = [(PGChapterTitle *)self chapterDateInterval];
  v8 = [v7 endDate];
  [v3 setObject:v8 forKeyedSubscript:@"endDate"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      chapterDateInterval = self->_chapterDateInterval;
      v9 = [(PGChapterTitle *)v7 chapterDateInterval];
      if ([(NSDateInterval *)chapterDateInterval isEqualToDateInterval:v9])
      {
        localizedTitleString = self->_localizedTitleString;
        v11 = [(PGChapterTitle *)v7 localizedTitleString];
        v6 = [(NSString *)localizedTitleString isEqualToString:v11];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PGChapterTitle)initWithLocalizedTitleString:(id)a3 chapterDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PGChapterTitle;
  v8 = [(PGChapterTitle *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    localizedTitleString = v8->_localizedTitleString;
    v8->_localizedTitleString = v9;

    v11 = [v7 copy];
    chapterDateInterval = v8->_chapterDateInterval;
    v8->_chapterDateInterval = v11;
  }

  return v8;
}

@end