@interface _PXStoryScrubberClipViewConfiguration
- (BOOL)isEqual:(id)a3;
- (_PXStoryScrubberClipViewConfiguration)initWithConfiguration:(id)a3;
- (unint64_t)hash;
@end

@implementation _PXStoryScrubberClipViewConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v11.receiver = self;
      v11.super_class = _PXStoryScrubberClipViewConfiguration;
      if ([(PXGFocusEffectViewConfiguration *)&v11 isEqual:v5]&& (v6 = [(_PXStoryScrubberClipViewConfiguration *)self isCurrent], v6 == [(_PXStoryScrubberClipViewConfiguration *)v5 isCurrent]) && (v7 = [(_PXStoryScrubberClipViewConfiguration *)self shouldAdjustContent], v7 == [(_PXStoryScrubberClipViewConfiguration *)v5 shouldAdjustContent]))
      {
        v10 = [(_PXStoryScrubberClipViewConfiguration *)self segmentIdentifier];
        v8 = v10 == [(_PXStoryScrubberClipViewConfiguration *)v5 segmentIdentifier];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _PXStoryScrubberClipViewConfiguration;
  return [(PXGFocusEffectViewConfiguration *)&v3 hash]^ self->_isCurrent ^ (2 * self->_shouldAdjustContent) ^ (4 * self->_segmentIdentifier);
}

- (_PXStoryScrubberClipViewConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _PXStoryScrubberClipViewConfiguration;
  v5 = [(PXGFocusEffectViewConfiguration *)&v7 initWithConfiguration:v4];
  if (v5)
  {
    v5->_isCurrent = [v4 isCurrent];
    v5->_shouldAdjustContent = [v4 shouldAdjustContent];
    v5->_segmentIdentifier = [v4 segmentIdentifier];
  }

  return v5;
}

@end