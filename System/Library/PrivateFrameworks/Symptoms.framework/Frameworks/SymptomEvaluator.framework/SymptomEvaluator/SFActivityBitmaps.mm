@interface SFActivityBitmaps
+ (void)adjustStartTime:(unint64_t *)time endTime:(unint64_t *)endTime currMachAbsTime:(unint64_t)absTime;
- (BOOL)isEqual:(id)equal;
- (SFActivityBitmaps)init;
- (SFActivityBitmaps)initWithName:(id)name;
- (id)description;
- (id)getWrappedBitmapsFromTime:(unint64_t)time toTime:(unint64_t)toTime;
- (unint64_t)adjustStartTime:(unint64_t)time;
- (unint64_t)endTime;
- (unint64_t)getAlignedBitmapStartingAtTime:(unint64_t)time;
- (unint64_t)getHammingWeight;
- (unint64_t)getLongestContiguousHammingWeight;
- (void)addActivityWithFlowId:(unint64_t)id startTime:(unint64_t)time part1:(unint64_t)part1 part2:(unint64_t)part2;
- (void)clearAndSetNewActivityWithStartTime:(unint64_t)time part1:(unint64_t)part1 part:(unint64_t)part;
- (void)freeUpBufferSpace;
- (void)resetAllActivities;
- (void)resetStartTimeToEarlierTime:(unint64_t)time;
- (void)setActivityWithStartTime:(unint64_t)time part1:(unint64_t)part1 part2:(unint64_t)part2;
- (void)setAlignedBitmap:(unint64_t)bitmap withStartTime:(unint64_t)time;
- (void)tallyUpHammingWeightTo:(id)to;
@end

@implementation SFActivityBitmaps

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  if ([(SFActivityBitmaps *)self isUpdated])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = boottime_secs();
    v6 = timeStringMillisecondsFromReferenceInterval(([(SFActivityBitmaps *)self startTime]+ v5) + -978307200.0);
    v7 = [v4 stringWithFormat:@"[Activity startTime: %@ (%llu), endTime: %llu] ", v6, -[SFActivityBitmaps startTime](self, "startTime"), -[SFActivityBitmaps endTime](self, "endTime")];

    [string appendString:v7];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[wordOffset: %llu, numOfWords:%llu] <", -[SFActivityBitmaps wordOffset](self, "wordOffset"), -[SFActivityBitmaps numOfWords](self, "numOfWords")];
  [string appendString:v8];
  if ([(SFActivityBitmaps *)self numOfWords])
  {
    v9 = 0;
    do
    {
      v10 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v9];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llX ", v10];
      [string appendString:v11];

      ++v9;
    }

    while (v9 < [(SFActivityBitmaps *)self numOfWords]);
  }

  [string appendString:@">"];

  return string;
}

- (unint64_t)endTime
{
  if (![(SFActivityBitmaps *)self isUpdated])
  {
    return -1;
  }

  startTime = self->_startTime;
  return startTime + ([(SFActivityBitmaps *)self numOfWords]<< 9);
}

- (SFActivityBitmaps)init
{
  v5.receiver = self;
  v5.super_class = SFActivityBitmaps;
  v2 = [(SFActivityBitmaps *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFActivityBitmaps *)v2 setStartTime:-1];
    [(SFActivityBitmaps *)v3 setWordOffset:0];
    [(SFActivityBitmaps *)v3 setNumOfWords:0];
  }

  return v3;
}

- (SFActivityBitmaps)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = SFActivityBitmaps;
  v5 = [(SFActivityBitmaps *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SFActivityBitmaps *)v5 setAppName:nameCopy];
    [(SFActivityBitmaps *)v6 setStartTime:-1];
    [(SFActivityBitmaps *)v6 setWordOffset:0];
    [(SFActivityBitmaps *)v6 setNumOfWords:0];
  }

  return v6;
}

- (void)addActivityWithFlowId:(unint64_t)id startTime:(unint64_t)time part1:(unint64_t)part1 part2:(unint64_t)part2
{
  v60 = *MEMORY[0x277D85DE8];
  v11 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    appName = self->_appName;
    v13 = v11;
    v14 = [(SFActivityBitmaps *)self description];
    v52 = 134218498;
    idCopy5 = id;
    v54 = 2112;
    v55 = appName;
    v56 = 2112;
    timeCopy3 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "[Bitmap] flow id %llu, %@: current bitmaps stored before adding new bitmap: %@", &v52, 0x20u);
  }

  if (![(SFActivityBitmaps *)self isUpdated])
  {
    goto LABEL_58;
  }

  time = [(SFActivityBitmaps *)self adjustStartTime:time];
  v15 = time + 1024;
  startTime = [(SFActivityBitmaps *)self startTime];
  if ([(SFActivityBitmaps *)self startTime]> time)
  {
    [(SFActivityBitmaps *)self freeUpBufferSpace];
    v17 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      appName = [(SFActivityBitmaps *)self appName];
      startTime2 = [(SFActivityBitmaps *)self startTime];
      v52 = 134218754;
      idCopy5 = id;
      v54 = 2112;
      v55 = appName;
      v56 = 2048;
      timeCopy3 = time;
      v58 = 2048;
      v59 = startTime2;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "[Bitmap] flow id %llu, %@: the activity bitmap to add with start time %llu is smaller than existing startTime %llu.", &v52, 0x2Au);
    }

    if ([(SFActivityBitmaps *)self startTime]>= v15)
    {
      v21 = [(SFActivityBitmaps *)self startTime]- v15;
      if (v21 >= 4096 - ([(SFActivityBitmaps *)self numOfWords]<< 9))
      {
        v44 = flowLogHandle;
        if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_59;
        }

        v41 = v44;
        appName2 = [(SFActivityBitmaps *)self appName];
        startTime3 = [(SFActivityBitmaps *)self startTime];
        v52 = 134218754;
        idCopy5 = id;
        v54 = 2112;
        v55 = appName2;
        v56 = 2048;
        timeCopy3 = time;
        v58 = 2048;
        v59 = startTime3;
        _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_INFO, "[Bitmap] flow %llu, %@: the activity bitmap with start time %llu is discarded, current earliest startTime: %llu.", &v52, 0x2Au);

        goto LABEL_53;
      }
    }

    startTime4 = [(SFActivityBitmaps *)self startTime];
    v23 = startTime4 - time;
    if (time >= startTime4)
    {
      v23 = time - startTime4;
    }

    if ((v23 & 7) <= 4)
    {
      v24 = v23 >> 3;
    }

    else
    {
      v24 = (v23 >> 3) + 1;
    }

    if ((v24 & 0x3F) != 0)
    {
      v25 = (v24 >> 6) + 1;
    }

    else
    {
      v25 = v24 >> 6;
    }

    numOfWords = [(SFActivityBitmaps *)self numOfWords];
    if (v25 >= 8 - numOfWords)
    {
      v25 = 8 - numOfWords;
    }

    if ([(SFActivityBitmaps *)self startTime]< v25 << 9)
    {
      [(SFActivityBitmaps *)self resetStartTimeToEarlierTime:time];
      goto LABEL_51;
    }

    if (v25)
    {
      v38 = -1;
      v39 = v25;
      do
      {
        [(SFActivityBitmaps *)self writeWord:0 atOffset:([(SFActivityBitmaps *)self wordOffset]+ v38--) & 7];
        --v39;
      }

      while (v39);
    }

    [(SFActivityBitmaps *)self setWordOffset:([(SFActivityBitmaps *)self wordOffset]- v25) & 7];
    [(SFActivityBitmaps *)self setNumOfWords:[(SFActivityBitmaps *)self numOfWords]+ v25];
    v31 = [(SFActivityBitmaps *)self startTime]- (v25 << 9);
    goto LABEL_50;
  }

  v27 = v15 - (startTime + 4096);
  if (v15 > startTime + 4096)
  {
    if (((time - startTime) & 7u) <= 4uLL)
    {
      v28 = v27 >> 3;
    }

    else
    {
      v28 = (v27 >> 3) + 1;
    }

    if ((v28 & 0x3F) != 0)
    {
      v29 = (v28 >> 6) + 1;
    }

    else
    {
      v29 = v28 >> 6;
    }

    if (v29 <= 7)
    {
      if (v29)
      {
        for (i = 0; i != v29; ++i)
        {
          [(SFActivityBitmaps *)self writeWord:0 atOffset:[(SFActivityBitmaps *)self wordOffset]+ i];
        }
      }

      [(SFActivityBitmaps *)self setWordOffset:([(SFActivityBitmaps *)self wordOffset]+ v29) & 7];
      [(SFActivityBitmaps *)self setNumOfWords:8];
      v31 = [(SFActivityBitmaps *)self startTime]+ (v29 << 9);
LABEL_50:
      [(SFActivityBitmaps *)self setStartTime:v31];
      goto LABEL_51;
    }

    v47 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      appName3 = [(SFActivityBitmaps *)self appName];
      startTime5 = [(SFActivityBitmaps *)self startTime];
      v52 = 134218754;
      idCopy5 = id;
      v54 = 2112;
      v55 = appName3;
      v56 = 2048;
      timeCopy3 = time;
      v58 = 2048;
      v59 = startTime5;
      _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "[Bitmap] flow id %llu, %@: the activity bitmap to add with start time %llu will replace all previous bitmaps with startTime %llu", &v52, 0x2Au);
    }

LABEL_58:
    [(SFActivityBitmaps *)self clearAndSetNewActivityWithStartTime:time part1:part1 part:part2];
    goto LABEL_59;
  }

  if ([(SFActivityBitmaps *)self numOfWords]<= 7)
  {
    startTime6 = [(SFActivityBitmaps *)self startTime];
    v33 = v15 - startTime6;
    if (startTime6 >= v15)
    {
      v33 = startTime6 - v15;
    }

    if ((v33 & 7) <= 4)
    {
      v34 = v33 >> 3;
    }

    else
    {
      v34 = (v33 >> 3) + 1;
    }

    if ((v34 & 0x3F) != 0)
    {
      v35 = (v34 >> 6) + 1;
    }

    else
    {
      v35 = v34 >> 6;
    }

    numOfWords2 = [(SFActivityBitmaps *)self numOfWords];
    if (numOfWords2 <= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = numOfWords2;
    }

    [(SFActivityBitmaps *)self setNumOfWords:v37];
  }

LABEL_51:
  [(SFActivityBitmaps *)self setActivityWithStartTime:time part1:part1 part2:part2];
  v40 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v41 = v40;
    appName4 = [(SFActivityBitmaps *)self appName];
    v43 = [(SFActivityBitmaps *)self description];
    v52 = 134218498;
    idCopy5 = id;
    v54 = 2112;
    v55 = appName4;
    v56 = 2112;
    timeCopy3 = v43;
    _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "[Bitmap] flow id %llu, %@: current bitmaps stored after adding new bitmap: %@", &v52, 0x20u);

LABEL_53:
  }

LABEL_59:
  v51 = *MEMORY[0x277D85DE8];
}

- (void)setActivityWithStartTime:(unint64_t)time part1:(unint64_t)part1 part2:(unint64_t)part2
{
  v8 = [(SFActivityBitmaps *)self adjustStartTime:time];
  [(SFActivityBitmaps *)self setAlignedBitmap:part1 withStartTime:v8];

  [(SFActivityBitmaps *)self setAlignedBitmap:part2 withStartTime:v8 + 512];
}

- (unint64_t)getAlignedBitmapStartingAtTime:(unint64_t)time
{
  startTime = [(SFActivityBitmaps *)self startTime];
  v6 = startTime + ([(SFActivityBitmaps *)self numOfWords]<< 9);
  if (v6 <= time)
  {
    return 0;
  }

  v7 = time + 512;
  if (time + 512 <= [(SFActivityBitmaps *)self startTime])
  {
    return 0;
  }

  if ([(SFActivityBitmaps *)self startTime]<= time)
  {
    v12 = v7 - v6;
    if (v7 <= v6)
    {
      startTime2 = [(SFActivityBitmaps *)self startTime];
      v15 = time - startTime2;
      if (startTime2 >= time)
      {
        v15 = startTime2 - time;
      }

      if ((v15 & 7) <= 4)
      {
        v16 = v15 >> 3;
      }

      else
      {
        v16 = (v15 >> 3) + 1;
      }

      v17 = v16 >> 6;
      if ((v16 & 0x3F) != 0)
      {
        v18 = -v16;
        v19 = ([(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v17]>> (v16 & 0x3F)) & ~(-1 << -v16);
        return ([(SFActivityBitmaps *)self getWordAtOffset:v17 + [(SFActivityBitmaps *)self wordOffset]+ 1]<< v18) | v19;
      }

      else
      {
        v20 = [(SFActivityBitmaps *)self wordOffset]+ v17;

        return [(SFActivityBitmaps *)self getWordAtOffset:v20];
      }
    }

    else
    {
      if ((v12 & 7) <= 4)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v12 >> 3) + 1;
      }

      return ([(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ [(SFActivityBitmaps *)self numOfWords]- 1]>> v13) & ~(-1 << -v13);
    }
  }

  else
  {
    startTime3 = [(SFActivityBitmaps *)self startTime];
    v9 = time - startTime3;
    if (startTime3 > time)
    {
      v9 = startTime3 - time;
    }

    if ((v9 & 7) <= 4)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = (v9 >> 3) + 1;
    }

    return [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]]<< v10;
  }
}

- (void)setAlignedBitmap:(unint64_t)bitmap withStartTime:(unint64_t)time
{
  v7 = [(SFActivityBitmaps *)self startTime]+ 4096;
  if (v7 > time)
  {
    v8 = time + 512;
    if (time + 512 > [(SFActivityBitmaps *)self startTime])
    {
      if ([(SFActivityBitmaps *)self startTime]<= time)
      {
        v16 = v8 - v7;
        if (v8 <= v7)
        {
          startTime = [(SFActivityBitmaps *)self startTime];
          v21 = time - startTime;
          if (startTime >= time)
          {
            v21 = startTime - time;
          }

          if ((v21 & 7) <= 4)
          {
            v22 = v21 >> 3;
          }

          else
          {
            v22 = (v21 >> 3) + 1;
          }

          v23 = v22 >> 6;
          v24 = v22 & 0x3F;
          if (v24)
          {
            v25 = bitmap << v24;
            v26 = (bitmap >> -v24) & ~(-1 << v24);
            v27 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v23];
            v28 = [(SFActivityBitmaps *)self getWordAtOffset:v23 + 1 + [(SFActivityBitmaps *)self wordOffset]];
            [(SFActivityBitmaps *)self writeWord:v27 | v25 atOffset:[(SFActivityBitmaps *)self wordOffset]+ v23];
            wordOffset = [(SFActivityBitmaps *)self wordOffset];
            v15 = v28 | v26;
            wordOffset4 = v23 + 1 + wordOffset;
          }

          else
          {
            v30 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v23];
            wordOffset2 = [(SFActivityBitmaps *)self wordOffset];
            v15 = v30 | bitmap;
            wordOffset4 = wordOffset2 + v23;
          }
        }

        else
        {
          if ((v16 & 7) <= 4)
          {
            v16 >>= 3;
          }

          else
          {
            LOBYTE(v16) = (v16 >> 3) + 1;
          }

          v17 = bitmap << v16;
          v18 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ 8];
          wordOffset3 = [(SFActivityBitmaps *)self wordOffset];
          v15 = v18 | v17;
          wordOffset4 = wordOffset3 + 8;
        }
      }

      else
      {
        startTime2 = [(SFActivityBitmaps *)self startTime];
        v10 = time - startTime2;
        if (startTime2 > time)
        {
          v10 = startTime2 - time;
        }

        if ((v10 & 7) <= 4)
        {
          v11 = v10 >> 3;
        }

        else
        {
          v11 = (v10 >> 3) + 1;
        }

        v12 = (bitmap >> v11) & ~(-1 << -v11);
        v13 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]];
        wordOffset4 = [(SFActivityBitmaps *)self wordOffset];
        v15 = v12 | v13;
      }

      [(SFActivityBitmaps *)self writeWord:v15 atOffset:wordOffset4];
    }
  }
}

- (void)resetStartTimeToEarlierTime:(unint64_t)time
{
  if ([(SFActivityBitmaps *)self isUpdated]&& [(SFActivityBitmaps *)self startTime]> time)
  {
    startTime = [(SFActivityBitmaps *)self startTime];
    v6 = time - startTime;
    if (startTime > time)
    {
      v6 = startTime - time;
    }

    if ((v6 & 7) <= 4)
    {
      v7 = v6 >> 3;
    }

    else
    {
      v7 = (v6 >> 3) + 1;
    }

    if (v7 < 0x200)
    {
      v8 = v7 >> 6;
      v9 = v7 & 0x3F;
      if ((v7 & 0x3F) != 0)
      {
        if ([(SFActivityBitmaps *)self numOfWords])
        {
          v10 = 0;
          v11 = 0;
          do
          {
            v12 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v10];
            [(SFActivityBitmaps *)self writeWord:(v12 << v9) | v11 atOffset:[(SFActivityBitmaps *)self wordOffset]+ v10];
            v11 = (v12 >> (64 - v9)) & ~(-1 << v9);
            ++v10;
          }

          while (v10 < [(SFActivityBitmaps *)self numOfWords]);
          v8 = v7 >> 6;
          if (v11)
          {
            if ([(SFActivityBitmaps *)self numOfWords]<= 7)
            {
              [(SFActivityBitmaps *)self writeWord:v11 atOffset:[(SFActivityBitmaps *)self numOfWords]+ [(SFActivityBitmaps *)self wordOffset]];
              [(SFActivityBitmaps *)self setNumOfWords:[(SFActivityBitmaps *)self numOfWords]+ 1];
            }
          }
        }
      }

      if (v7 >= 0x40)
      {
        if (v8 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v8;
        }

        v14 = -1;
        do
        {
          [(SFActivityBitmaps *)self writeWord:0 atOffset:([(SFActivityBitmaps *)self wordOffset]+ v14--) & 7];
          --v13;
        }

        while (v13);
      }

      [(SFActivityBitmaps *)self setNumOfWords:([(SFActivityBitmaps *)self numOfWords]+ v8) & 7];
      [(SFActivityBitmaps *)self setWordOffset:([(SFActivityBitmaps *)self wordOffset]- v8) & 7];

      [(SFActivityBitmaps *)self setStartTime:time];
    }

    else
    {

      [(SFActivityBitmaps *)self clearAndSetNewActivityWithStartTime:time part1:0 part:0];
    }
  }
}

- (void)freeUpBufferSpace
{
  if ([(SFActivityBitmaps *)self isUpdated]&& [(SFActivityBitmaps *)self numOfWords])
  {
    v3 = [(SFActivityBitmaps *)self numOfWords]- 1;
    v4 = 1;
    do
    {
      v5 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v3--];
      --v4;
    }

    while (!v5);
    v6 = [(SFActivityBitmaps *)self numOfWords]+ v4;

    [(SFActivityBitmaps *)self setNumOfWords:v6];
  }
}

- (void)clearAndSetNewActivityWithStartTime:(unint64_t)time part1:(unint64_t)part1 part:(unint64_t)part
{
  [(SFActivityBitmaps *)self setStartTime:time];
  [(SFActivityBitmaps *)self setWordOffset:0];
  [(SFActivityBitmaps *)self setNumOfWords:2];
  *self->_bitmapsBuffer = 0u;
  *&self->_bitmapsBuffer[48] = 0u;
  *&self->_bitmapsBuffer[32] = 0u;
  *&self->_bitmapsBuffer[16] = 0u;
  *self->_bitmapsBuffer = part1;
  *&self->_bitmapsBuffer[8] = part;
}

- (id)getWrappedBitmapsFromTime:(unint64_t)time toTime:(unint64_t)toTime
{
  if ([(SFActivityBitmaps *)self isUpdated]&& [(SFActivityBitmaps *)self numOfWords])
  {
    startTime = [(SFActivityBitmaps *)self startTime];
    endTime = [(SFActivityBitmaps *)self endTime];
    if (time == -1)
    {
      i = [(SFActivityBitmaps *)self getWrappedBitmapsFromTime:startTime toTime:endTime];
    }

    else
    {
      i = 0;
      if (startTime < toTime && endTime > time)
      {
        v10 = ((toTime - time) & 0x1FF) != 0 ? ((toTime - time) >> 9) + 1 : (toTime - time) >> 9;
        v11 = [(SFActivityBitmaps *)self adjustStartTime:time, endTime];
        for (i = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:8 * v10]; v10; --v10)
        {
          v13 = [(SFActivityBitmaps *)self getAlignedBitmapStartingAtTime:v11];
          [i appendBytes:&v13 length:8];
          v11 += 512;
        }
      }
    }
  }

  else
  {
    i = 0;
  }

  return i;
}

- (unint64_t)adjustStartTime:(unint64_t)time
{
  if ([(SFActivityBitmaps *)self isUpdated])
  {
    startTime = [(SFActivityBitmaps *)self startTime];
    if (startTime >= time)
    {
      v6 = startTime - time;
    }

    else
    {
      v6 = time - startTime;
    }

    startTime2 = [(SFActivityBitmaps *)self startTime];
    startTime3 = [(SFActivityBitmaps *)self startTime];
    v9 = (v6 + 8 * ((v6 & 7) > 4)) & 0xFFFFFFFFFFFFFFF8;
    if (startTime2 <= time)
    {
      return startTime3 + v9;
    }

    else
    {
      return startTime3 - v9;
    }
  }

  return time;
}

- (void)resetAllActivities
{
  [(SFActivityBitmaps *)self setStartTime:-1];
  [(SFActivityBitmaps *)self setWordOffset:0];
  [(SFActivityBitmaps *)self setNumOfWords:0];
  *&self->_bitmapsBuffer[48] = 0u;
  *&self->_bitmapsBuffer[32] = 0u;
  *&self->_bitmapsBuffer[16] = 0u;
  *self->_bitmapsBuffer = 0u;
}

- (unint64_t)getHammingWeight
{
  v3 = 0;
  if ([(SFActivityBitmaps *)self numOfWords])
  {
    v4 = 0;
    do
    {
      v5 = vcnt_s8([(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v4]);
      v5.i16[0] = vaddlv_u8(v5);
      v3 += v5.u32[0];
      ++v4;
    }

    while (v4 < [(SFActivityBitmaps *)self numOfWords]);
  }

  return v3;
}

- (unint64_t)getLongestContiguousHammingWeight
{
  v3 = 0;
  if ([(SFActivityBitmaps *)self numOfWords])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v5];
      v7 = ~v6;
      v8 = __clz(__rbit64(~v6)) + v4;
      if (v8 <= v3)
      {
        v8 = v3;
      }

      if (!v4)
      {
        v8 = v3;
      }

      for (i = 0; v6; ++i)
      {
        v6 &= 2 * v6;
      }

      if (i <= v8)
      {
        v3 = v8;
      }

      else
      {
        v3 = i;
      }

      v4 = __clz(v7);
      ++v5;
    }

    while (v5 < [(SFActivityBitmaps *)self numOfWords]);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self != v5)
    {
      startTime = [(SFActivityBitmaps *)self startTime];
      if (startTime != [(SFActivityBitmaps *)v5 startTime]|| ([(SFActivityBitmaps *)self freeUpBufferSpace], [(SFActivityBitmaps *)v5 freeUpBufferSpace], v7 = [(SFActivityBitmaps *)self numOfWords], v7 != [(SFActivityBitmaps *)v5 numOfWords]))
      {
        v10 = 0;
LABEL_14:

        goto LABEL_15;
      }

      if ([(SFActivityBitmaps *)self numOfWords])
      {
        v8 = 0;
        do
        {
          v9 = [(SFActivityBitmaps *)self getWordAtOffset:[(SFActivityBitmaps *)self wordOffset]+ v8];
          v10 = v9 == [(SFActivityBitmaps *)v5 getWordAtOffset:[(SFActivityBitmaps *)v5 wordOffset]+ v8];
          if (!v10)
          {
            break;
          }

          ++v8;
        }

        while (v8 < [(SFActivityBitmaps *)self numOfWords]);
        goto LABEL_14;
      }
    }

    v10 = 1;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

+ (void)adjustStartTime:(unint64_t *)time endTime:(unint64_t *)endTime currMachAbsTime:(unint64_t)absTime
{
  if (*time != -1)
  {
    v9 = [self alignToBitmapTimeline:?];
    v10 = [self alignToBitmapTimeline:*endTime];
    v11 = [self alignToBitmapTimeline:absTime];
    v12 = v9 + 4096;
    *time = v9;
    if (v9 + 4096 >= v11)
    {
      v12 = v11;
    }

    if (v10 < v12)
    {
      v12 = v10;
    }

    *endTime = v12;
  }
}

- (void)tallyUpHammingWeightTo:(id)to
{
  toCopy = to;
  getHammingWeight = [(SFActivityBitmaps *)self getHammingWeight];
  if (getHammingWeight)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:getHammingWeight];
    [toCopy setObject:v5 forKey:self->_appName];
  }
}

@end