@interface PXStoryTVWatchNextCellConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXStoryTVWatchNextCellConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v15.receiver = self;
      v15.super_class = PXStoryTVWatchNextCellConfiguration;
      if ([(PXGFocusEffectViewConfiguration *)&v15 isEqual:v5])
      {
        v6 = [(PXStoryTVWatchNextCellConfiguration *)self title];
        v7 = [(PXStoryTVWatchNextCellConfiguration *)v5 title];
        if (v6 == v7 || [v6 isEqualToString:v7])
        {
          v8 = [(PXStoryTVWatchNextCellConfiguration *)self subtitle];
          v9 = [(PXStoryTVWatchNextCellConfiguration *)v5 subtitle];
          if (v8 == v9 || [v8 isEqualToString:v9])
          {
            v10 = [(PXStoryTVWatchNextCellConfiguration *)self spec];
            v11 = [(PXStoryTVWatchNextCellConfiguration *)v5 spec];
            if (v10 == v11 || [v10 isEqual:v11])
            {
              v12 = [(PXStoryTVWatchNextCellConfiguration *)self countdownValue];
              v13 = v12 == [(PXStoryTVWatchNextCellConfiguration *)v5 countdownValue];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXGFocusableViewConfiguration *)self delegate];
  [v4 setDelegate:v5];

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