@interface VideosExtrasVideoTimeline
- (VideosExtrasVideoTimeline)initWithTimelineElements:(id)a3;
- (id)description;
- (id)eventForTime:(double)a3;
@end

@implementation VideosExtrasVideoTimeline

- (VideosExtrasVideoTimeline)initWithTimelineElements:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v18.receiver = self;
    v18.super_class = VideosExtrasVideoTimeline;
    v7 = [(VideosExtrasVideoTimeline *)&v18 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_timelineElements, a3);
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = [(NSArray *)v8->_timelineElements firstObject];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 events];
        if (v12)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__VideosExtrasVideoTimeline_initWithTimelineElements___block_invoke;
          v16[3] = &unk_1E8735DA8;
          v17 = v9;
          [v12 enumerateObjectsUsingBlock:v16];
        }
      }

      events = v8->_events;
      v8->_events = v9;
    }

    self = v8;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __54__VideosExtrasVideoTimeline_initWithTimelineElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [[VideosExtrasVideoTimelineEvent alloc] initWithElement:v7 prev:v5];
  [(VideosExtrasVideoTimelineEvent *)v6 setIsFirstEvent:a3 == 0];
  [v5 setNext:v6];
  [*(a1 + 32) addObject:v6];
}

- (id)eventForTime:(double)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_events;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 offset];
        if (v9 <= a3)
        {
          [v8 offset];
          v11 = v10;
          [v8 duration];
          if (v11 + v12 > a3)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<VideoTimeline numEvents:%ld>\n", -[NSArray count](self->_events, "count")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_events;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) description];
        [v3 appendFormat:@"%@\n", v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"<VideoTimeline>"];

  return v3;
}

@end