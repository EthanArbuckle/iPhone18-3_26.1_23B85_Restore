@interface _PXStoryScrubberClipViewConfiguration
- (BOOL)isEqual:(id)equal;
- (_PXStoryScrubberClipViewConfiguration)initWithConfiguration:(id)configuration;
- (unint64_t)hash;
@end

@implementation _PXStoryScrubberClipViewConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v11.receiver = self;
      v11.super_class = _PXStoryScrubberClipViewConfiguration;
      if ([(PXGFocusEffectViewConfiguration *)&v11 isEqual:v5]&& (v6 = [(_PXStoryScrubberClipViewConfiguration *)self isCurrent], v6 == [(_PXStoryScrubberClipViewConfiguration *)v5 isCurrent]) && (v7 = [(_PXStoryScrubberClipViewConfiguration *)self shouldAdjustContent], v7 == [(_PXStoryScrubberClipViewConfiguration *)v5 shouldAdjustContent]))
      {
        segmentIdentifier = [(_PXStoryScrubberClipViewConfiguration *)self segmentIdentifier];
        v8 = segmentIdentifier == [(_PXStoryScrubberClipViewConfiguration *)v5 segmentIdentifier];
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

- (_PXStoryScrubberClipViewConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = _PXStoryScrubberClipViewConfiguration;
  v5 = [(PXGFocusEffectViewConfiguration *)&v7 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v5->_isCurrent = [configurationCopy isCurrent];
    v5->_shouldAdjustContent = [configurationCopy shouldAdjustContent];
    v5->_segmentIdentifier = [configurationCopy segmentIdentifier];
  }

  return v5;
}

@end