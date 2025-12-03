@interface TSDFPSCounter
- (TSDFPSCounter)init;
- (id)p_fpsSummaryStringIncludingGraph:(BOOL)graph;
- (id)p_getFPSInfo:(BOOL)info;
- (void)addFrame;
- (void)addFrameAtDrawTime:(double)time duration:(double)duration;
- (void)dealloc;
- (void)writeFPSInfoToLog:(id)log identifier:(id)identifier type:(id)type direction:(id)direction duration:(double)duration graphing:(BOOL)graphing slide:(int64_t)slide;
@end

@implementation TSDFPSCounter

- (TSDFPSCounter)init
{
  v4.receiver = self;
  v4.super_class = TSDFPSCounter;
  v2 = [(TSDFPSCounter *)&v4 init];
  if (v2)
  {
    v2->_dateArray = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDFPSCounter;
  [(TSDFPSCounter *)&v3 dealloc];
}

- (void)addFrame
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  [TSDFPSCounter addFrameAtDrawTime:"addFrameAtDrawTime:duration:" duration:?];
}

- (void)addFrameAtDrawTime:(double)time duration:(double)duration
{
  v6[2] = *MEMORY[0x277D85DE8];
  dateArray = self->_dateArray;
  v6[0] = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v6[1] = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  -[NSMutableArray addObject:](dateArray, "addObject:", [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2]);
}

- (id)p_fpsSummaryStringIncludingGraph:(BOOL)graph
{
  graphCopy = graph;
  v56 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_dateArray count]< 2)
  {
    return @"FPSCounter error: not enough frames";
  }

  v45 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_287D36338];
  if (graphCopy)
  {
    [v45 appendString:@"\n===== FPS LOGGING BEGIN =====\n"];
  }

  v5 = [-[NSMutableArray firstObject](self->_dateArray "firstObject")];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  dateArray = self->_dateArray;
  v7 = [(NSMutableArray *)dateArray countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v49 = graphCopy;
    v9 = 1.79769313e308;
    v10 = *v52;
    v11 = 0.0;
    v12 = v5;
    v50 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v13 = 1.79769313e308;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(dateArray);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v16 = [v15 objectAtIndexedSubscript:0];
        [objc_msgSend(v15 objectAtIndexedSubscript:{1), "doubleValue"}];
        v18 = v17;
        if (v16 != v5 || v17 != 0.0)
        {
          [v16 doubleValue];
          v20 = v19;
          [v12 doubleValue];
          v22 = v20 - v21;
          v23 = 0.0;
          if (v22 > 0.0)
          {
            v23 = 1.0 / v22;
            if (v13 >= 1.0 / v22)
            {
              v13 = 1.0 / v22;
            }

            if (v48 <= v23)
            {
              v24 = 1.0 / v22;
            }

            else
            {
              v24 = v48;
            }

            v47 = v47 + v23;
            v48 = v24;
          }

          if (v18 != 0.0)
          {
            if (v9 >= v18)
            {
              v9 = v18;
            }

            v25 = v50;
            if (v50 <= v18)
            {
              v25 = v18;
            }

            v50 = v25;
            v11 = v11 + v18;
          }

          if (!v49)
          {
            v12 = v16;
            continue;
          }

          v46 = v9;
          v26 = v13;
          v27 = v11;
          if (v23 / 60.0 <= 1.0)
          {
            v28 = v23 / 60.0;
          }

          else
          {
            v28 = 1.0;
          }

          v29 = 0.0;
          v30 = -7;
          v31 = &stru_287D36338;
          while (1)
          {
            if (v28 <= v29 / 7.0)
            {
              goto LABEL_33;
            }

            if (v30 == -1)
            {
              v32 = @"*";
              goto LABEL_34;
            }

            v32 = @"*";
            if (v28 >= (v30 + 8) / 7.0)
            {
LABEL_33:
              v32 = @" ";
            }

LABEL_34:
            v29 = v29 + 1.0;
            v31 = [(__CFString *)v31 stringByAppendingString:v32];
            if (__CFADD__(v30++, 1))
            {
              v34 = MEMORY[0x277CCACA8];
              [v16 doubleValue];
              v36 = v35;
              [v5 doubleValue];
              v38 = [v34 stringWithFormat:@"FPS(%0.2f): |%@| %0.0f", v36 - v37, v31, *&v23];
              v39 = &stru_287D36338;
              if (v18 != 0.0)
              {
                v39 = [MEMORY[0x277CCACA8] stringWithFormat:@" ... duration:%2.0fms (%4.0f FPS)", v18 * 1000.0, 1.0 / v18];
              }

              [v45 appendFormat:@"%@%@\n", v38, v39];
              v12 = v16;
              v11 = v27;
              v13 = v26;
              v9 = v46;
              break;
            }
          }
        }
      }

      v8 = [(NSMutableArray *)dateArray countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (!v8)
      {
        v40 = v9 * 1000.0;
        v41 = v50 * 1000.0;
        graphCopy = v49;
        v42 = v47;
        v43 = v48;
        goto LABEL_46;
      }
    }
  }

  v11 = 0.0;
  v13 = 1.79769313e308;
  v40 = INFINITY;
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
LABEL_46:
  [v45 appendFormat:@"FPS(min/avg/max): %0.0f/%0.0f/%0.0f (%d frames)", *&v13, v42 / -[NSMutableArray count](self->_dateArray, "count"), *&v43, -[NSMutableArray count](self->_dateArray, "count") - 1];
  if (v11 > 0.0)
  {
    [v45 appendFormat:@"\nDuration(min/avg/max): %0.0f/%0.0f/%0.0fms (%d frames)", *&v40, v11 / -[NSMutableArray count](self->_dateArray, "count") * 1000.0, *&v41, -[NSMutableArray count](self->_dateArray, "count") - 1];
  }

  if (graphCopy)
  {
    [v45 appendString:@"\n============================="];
  }

  return v45;
}

- (void)writeFPSInfoToLog:(id)log identifier:(id)identifier type:(id)type direction:(id)direction duration:(double)duration graphing:(BOOL)graphing slide:(int64_t)slide
{
  graphingCopy = graphing;
  v40 = *MEMORY[0x277D85DE8];
  v16 = [(TSDFPSCounter *)self p_getFPSInfo:graphing];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  [objc_msgSend(v16 objectForKeyedSubscript:{@"min", "floatValue"}];
  v19 = v18;
  [objc_msgSend(v17 objectForKeyedSubscript:{@"avg", "floatValue"}];
  v21 = v20;
  [objc_msgSend(v17 objectForKeyedSubscript:{@"max", "floatValue"}];
  v23 = v22;
  v24 = [v17 objectForKeyedSubscript:@"array"];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"\nKNAnimTest"];
  [string appendString:@"**"];
  if (!log)
  {
    if (!identifier)
    {
      [string appendString:@"UnknownAnimation"];
      if (!type)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [string appendString:identifier];
    goto LABEL_7;
  }

  [string appendString:log];
  if (identifier)
  {
LABEL_7:
    [string appendString:@"**"];
    [string appendFormat:@"Identifier:::%@", identifier];
  }

  if (type)
  {
LABEL_9:
    [string appendString:@"**"];
    [string appendFormat:@"Type:::%@", type];
  }

LABEL_10:
  v26 = v19;
  v27 = v21;
  v28 = v23;
  if (direction)
  {
    [string appendString:@"**"];
    [string appendFormat:@"Direction:::%@", direction];
  }

  [string appendString:@"**"];
  [string appendFormat:@"Duration:::%.2f", *&duration];
  [string appendString:@"**"];
  [string appendFormat:@"Slide:::%ld", slide];
  [string appendString:@"**"];
  [string appendFormat:@"FPS:::%.2f %.2f %.2f", *&v26, *&v27, *&v28];
  if (graphingCopy)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v29)
    {
      v30 = *v36;
      do
      {
        v31 = 0;
        do
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v24);
          }

          [string appendFormat:@" %d", objc_msgSend(*(*(&v35 + 1) + 8 * v31++), "intValue")];
        }

        while (v29 != v31);
        v29 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v29);
    }
  }

  [string appendString:@"\n"];
  1uLL = [-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSDocumentDirectory 1uLL];
  v33 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:1uLL];
  v34 = v33;
  if (v33)
  {
    [v33 seekToEndOfFile];
    [v34 writeData:{objc_msgSend(string, "dataUsingEncoding:", 4)}];
    [v34 closeFile];
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }
}

- (id)p_getFPSInfo:(BOOL)info
{
  infoCopy = info;
  v36 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_dateArray count]< 2)
  {
    return 0;
  }

  v6 = [-[NSMutableArray firstObject](self->_dateArray "firstObject")];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  dateArray = self->_dateArray;
  v9 = [(NSMutableArray *)dateArray countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v12 = 0.0;
    v13 = 1.79769313e308;
    v14 = v6;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(dateArray);
        }

        v17 = [*(*(&v31 + 1) + 8 * i) objectAtIndexedSubscript:0];
        if (v17 != v6)
        {
          v18 = v17;
          [v17 doubleValue];
          v20 = v19;
          [v14 doubleValue];
          v22 = v20 - v21;
          if (v22 > 0.0)
          {
            v23 = 1.0 / v22;
            if (v13 >= v23)
            {
              v13 = v23;
            }

            if (v15 <= v23)
            {
              v15 = v23;
            }

            v12 = v12 + v23;
            if (infoCopy)
            {
              [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:")}];
            }

            v14 = v18;
          }
        }
      }

      v10 = [(NSMutableArray *)dateArray countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
    v13 = 1.79769313e308;
    v15 = 0.0;
  }

  v24 = [(NSMutableArray *)selfCopy->_dateArray count];
  v25 = MEMORY[0x277CBEB38];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v12 / v24];
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v28 = [v25 dictionaryWithObjectsAndKeys:{v26, @"avg", v27, @"min", objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v15), @"max", 0}];
  v5 = v28;
  if (infoCopy)
  {
    [v28 setObject:array forKeyedSubscript:@"array"];
  }

  return v5;
}

@end