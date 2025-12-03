@interface PTCinematographyFocusFrames
- (PTCinematographyFocusFrames)initWithFrames:(id)frames options:(id)options;
- (int64_t)_framesIndex:(unint64_t)index earlierBy:(id *)by;
- (int64_t)startIndexForLinearRackFocusPullToFrameAtIndex:(unint64_t)index;
@end

@implementation PTCinematographyFocusFrames

- (PTCinematographyFocusFrames)initWithFrames:(id)frames options:(id)options
{
  framesCopy = frames;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = PTCinematographyFocusFrames;
  v9 = [(PTCinematographyFocusFrames *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_frames, frames);
    if (optionsCopy)
    {
      v11 = [optionsCopy copy];
    }

    else
    {
      v11 = objc_opt_new();
    }

    options = v10->_options;
    v10->_options = v11;
  }

  return v10;
}

- (int64_t)startIndexForLinearRackFocusPullToFrameAtIndex:(unint64_t)index
{
  memset(&v35[1], 0, sizeof(CMTime));
  options = self->_options;
  if (options && ([(PTCinematographyFocusFramesOptions *)options minimumRackFocusPullTime], v6 = self->_options, memset(v35, 0, 24), v6))
  {
    [(PTCinematographyFocusFramesOptions *)v6 maximumRackFocusPullTime];
    v7 = self->_options;
  }

  else
  {
    v7 = 0;
    memset(v35, 0, 24);
  }

  [(PTCinematographyFocusFramesOptions *)v7 maximumDisparityPerSecond];
  v9 = v8;
  time1 = v35[1];
  v10 = [(PTCinematographyFocusFrames *)self _framesIndex:index earlierBy:&time1];
  time1 = v35[1];
  time2 = v35[0];
  if (CMTimeCompare(&time1, &time2))
  {
    memset(&time1, 0, sizeof(time1));
    v11 = [(NSArray *)self->_frames objectAtIndexedSubscript:index];
    v12 = v11;
    if (v11)
    {
      [v11 time];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    rhs = v35[0];
    CMTimeSubtract(&time1, &time2, &rhs);

    v13 = [(NSArray *)self->_frames objectAtIndexedSubscript:index];
    [v13 focusDistance];
    v15 = v14;

    if (v10 < 0)
    {
      v28 = v10;
LABEL_27:
      if (v28 != -1)
      {
        [PTCinematographyFocusFrames startIndexForLinearRackFocusPullToFrameAtIndex:];
      }

      return 0;
    }

    else
    {
      while (1)
      {
        v16 = [(NSArray *)self->_frames objectAtIndexedSubscript:v10];
        v17 = v16;
        if (v16)
        {
          [v16 time];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        rhs = time1;
        v18 = CMTimeCompare(&time2, &rhs);

        if (v18 < 0)
        {
          break;
        }

        v19 = [(NSArray *)self->_frames objectAtIndexedSubscript:index];
        v20 = v19;
        if (v19)
        {
          [v19 time];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        v21 = [(NSArray *)self->_frames objectAtIndexedSubscript:v10];
        v22 = v21;
        if (v21)
        {
          [v21 time];
        }

        else
        {
          memset(&v31, 0, sizeof(v31));
        }

        CMTimeSubtract(&time2, &rhs, &v31);
        Seconds = CMTimeGetSeconds(&time2);

        if (Seconds > 0.0)
        {
          v24 = [(NSArray *)self->_frames objectAtIndexedSubscript:v10];
          [v24 focusDistance];
          v26 = v25;

          v27 = fabsf((v15 - v26) / Seconds);
          v10 -= v27 <= v9;
          if (v27 <= v9)
          {
            break;
          }
        }

        v28 = v10 - 1;
        if (v10-- <= 0)
        {
          goto LABEL_27;
        }
      }

      ++v10;
    }
  }

  return v10;
}

- (int64_t)_framesIndex:(unint64_t)index earlierBy:(id *)by
{
  indexCopy = index;
  if ([(NSArray *)self->_frames count]<= index)
  {
    [PTCinematographyFocusFrames _framesIndex:earlierBy:];
  }

  memset(&v16, 0, sizeof(v16));
  v7 = [(NSArray *)self->_frames objectAtIndexedSubscript:indexCopy];
  v8 = v7;
  if (v7)
  {
    [v7 time];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v14 = *by;
  CMTimeSubtract(&v16, &lhs, &v14);

  if (indexCopy < 0)
  {
    [PTCinematographyFocusFrames _framesIndex:earlierBy:];
  }

  while (1)
  {
    v9 = [(NSArray *)self->_frames objectAtIndexedSubscript:indexCopy];
    v10 = v9;
    if (v9)
    {
      [v9 time];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    v14 = v16;
    v11 = CMTimeCompare(&lhs, &v14);

    if (v11 < 0)
    {
      break;
    }

    if (indexCopy-- <= 0)
    {
      return 0;
    }
  }

  return indexCopy + 1;
}

@end