@interface PXStoryTVWatchNextCellConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXStoryTVWatchNextCellConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v15.receiver = self;
      v15.super_class = PXStoryTVWatchNextCellConfiguration;
      if ([(PXGFocusEffectViewConfiguration *)&v15 isEqual:v5])
      {
        title = [(PXStoryTVWatchNextCellConfiguration *)self title];
        title2 = [(PXStoryTVWatchNextCellConfiguration *)v5 title];
        if (title == title2 || [title isEqualToString:title2])
        {
          subtitle = [(PXStoryTVWatchNextCellConfiguration *)self subtitle];
          subtitle2 = [(PXStoryTVWatchNextCellConfiguration *)v5 subtitle];
          if (subtitle == subtitle2 || [subtitle isEqualToString:subtitle2])
          {
            spec = [(PXStoryTVWatchNextCellConfiguration *)self spec];
            spec2 = [(PXStoryTVWatchNextCellConfiguration *)v5 spec];
            if (spec == spec2 || [spec isEqual:spec2])
            {
              countdownValue = [(PXStoryTVWatchNextCellConfiguration *)self countdownValue];
              v13 = countdownValue == [(PXStoryTVWatchNextCellConfiguration *)v5 countdownValue];
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXStoryTVWatchNextCellConfiguration;
  v3 = [(PXGFocusEffectViewConfiguration *)&v7 hash];
  v4 = v3 ^ (2 * [(NSString *)self->_title hash]);
  v5 = v4 ^ (4 * [(NSString *)self->_subtitle hash]);
  return v5 ^ (8 * [(PXStoryTVCellSpec *)self->_spec hash]) ^ (16 * self->_countdownValue);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  delegate = [(PXGFocusableViewConfiguration *)self delegate];
  [v4 setDelegate:delegate];

  [(PXGFocusEffectViewConfiguration *)self cornerRadius];
  [v4 setCornerRadius:?];
  [(PXGFocusEffectViewConfiguration *)self contentMotionRotation];
  [v4 setContentMotionRotation:?];
  [(PXGFocusEffectViewConfiguration *)self contentMotionTranslation];
  [v4 setContentMotionTranslation:?];
  [(PXGFocusEffectViewConfiguration *)self focusedSizeIncrease];
  [v4 setFocusedSizeIncrease:?];
  v6 = [(NSString *)self->_title copy];
  v7 = v4[13];
  v4[13] = v6;

  v8 = [(NSString *)self->_subtitle copy];
  v9 = v4[14];
  v4[14] = v8;

  objc_storeStrong(v4 + 12, self->_spec);
  v4[15] = self->_countdownValue;
  return v4;
}

@end