@interface PGChapterTitle
- (BOOL)isEqual:(id)equal;
- (PGChapterTitle)initWithLocalizedTitleString:(id)string chapterDateInterval:(id)interval;
- (id)dictionaryRepresentation;
@end

@implementation PGChapterTitle

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  localizedTitleString = [(PGChapterTitle *)self localizedTitleString];
  [v3 setObject:localizedTitleString forKeyedSubscript:@"title"];

  chapterDateInterval = [(PGChapterTitle *)self chapterDateInterval];
  startDate = [chapterDateInterval startDate];
  [v3 setObject:startDate forKeyedSubscript:@"startDate"];

  chapterDateInterval2 = [(PGChapterTitle *)self chapterDateInterval];
  endDate = [chapterDateInterval2 endDate];
  [v3 setObject:endDate forKeyedSubscript:@"endDate"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      chapterDateInterval = self->_chapterDateInterval;
      chapterDateInterval = [(PGChapterTitle *)v7 chapterDateInterval];
      if ([(NSDateInterval *)chapterDateInterval isEqualToDateInterval:chapterDateInterval])
      {
        localizedTitleString = self->_localizedTitleString;
        localizedTitleString = [(PGChapterTitle *)v7 localizedTitleString];
        v6 = [(NSString *)localizedTitleString isEqualToString:localizedTitleString];
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

- (PGChapterTitle)initWithLocalizedTitleString:(id)string chapterDateInterval:(id)interval
{
  stringCopy = string;
  intervalCopy = interval;
  v14.receiver = self;
  v14.super_class = PGChapterTitle;
  v8 = [(PGChapterTitle *)&v14 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    localizedTitleString = v8->_localizedTitleString;
    v8->_localizedTitleString = v9;

    v11 = [intervalCopy copy];
    chapterDateInterval = v8->_chapterDateInterval;
    v8->_chapterDateInterval = v11;
  }

  return v8;
}

@end