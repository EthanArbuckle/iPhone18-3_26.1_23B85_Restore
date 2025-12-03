@interface TVPChapterCollection
- (TVPChapterCollection)init;
- (id)chapterForDate:(id)date;
- (id)chapterForTime:(double)time;
- (id)nearestChapterForDate:(id)date;
- (id)nearestChapterForTime:(double)time;
@end

@implementation TVPChapterCollection

- (TVPChapterCollection)init
{
  v3.receiver = self;
  v3.super_class = TVPChapterCollection;
  result = [(TVPChapterCollection *)&v3 init];
  if (result)
  {
    result->_shouldDisplayChapterMarkers = 1;
  }

  return result;
}

- (id)chapterForTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v5 = [chapters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(chapters);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        timeRange = [v8 timeRange];
        v10 = [timeRange containsTime:time];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [chapters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)nearestChapterForTime:(double)time
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v5 = [chapters countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    v9 = *"";
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(chapters);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        timeRange = [v11 timeRange];
        if ([timeRange containsTime:time])
        {
          v22 = v11;

          v7 = v22;
          goto LABEL_24;
        }

        [timeRange startTime];
        v14 = v13 - time;
        if (v14 >= 0.0)
        {
          v15 = v14;
        }

        else
        {
          v15 = -v14;
        }

        if (v15 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v16 = v11;

          v7 = v16;
        }

        [timeRange startTime];
        v18 = v17;
        [timeRange duration];
        v20 = v18 + v19 - time;
        if (v20 >= 0.0)
        {
          v9 = v20;
        }

        else
        {
          v9 = -v20;
        }

        if (v9 >= v15)
        {
          v9 = v15;
        }

        else
        {
          v21 = v11;

          v7 = v21;
        }
      }

      v6 = [chapters countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)chapterForDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v6 = [chapters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(chapters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        dateRange = [v9 dateRange];
        v11 = [dateRange containsDate:dateCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [chapters countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)nearestChapterForDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v6 = [chapters countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    v10 = *"";
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(chapters);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        dateRange = [v12 dateRange];
        if ([dateRange containsDate:dateCopy])
        {
          v23 = v12;

          v8 = v23;
          goto LABEL_25;
        }

        if (dateRange)
        {
          startDate = [dateRange startDate];
          [startDate timeIntervalSinceDate:dateCopy];
          v16 = v15;

          if (v16 >= 0.0)
          {
            v17 = v16;
          }

          else
          {
            v17 = -v16;
          }

          if (v17 >= v10)
          {
            v17 = v10;
          }

          else
          {
            v18 = v12;

            v8 = v18;
          }

          endDate = [dateRange endDate];
          [endDate timeIntervalSinceDate:dateCopy];
          v21 = v20;

          if (v21 >= 0.0)
          {
            v10 = v21;
          }

          else
          {
            v10 = -v21;
          }

          if (v10 >= v17)
          {
            v10 = v17;
          }

          else
          {
            v22 = v12;

            v8 = v22;
          }
        }
      }

      v7 = [chapters countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_25:

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

@end