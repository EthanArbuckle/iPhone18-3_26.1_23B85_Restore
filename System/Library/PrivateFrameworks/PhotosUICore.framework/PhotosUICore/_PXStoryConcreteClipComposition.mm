@interface _PXStoryConcreteClipComposition
- (_PXStoryConcreteClipComposition)initWithNumberOfClips:(int64_t)clips primaryEdge:(unsigned int)edge splitRatio:(double)ratio secondaryEdge:(unsigned int)secondaryEdge splitRatio:(double)splitRatio label:(id)label;
- (id)description;
@end

@implementation _PXStoryConcreteClipComposition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(_PXStoryConcreteClipComposition *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p; %@>", v5, self, label];

  return v7;
}

- (_PXStoryConcreteClipComposition)initWithNumberOfClips:(int64_t)clips primaryEdge:(unsigned int)edge splitRatio:(double)ratio secondaryEdge:(unsigned int)secondaryEdge splitRatio:(double)splitRatio label:(id)label
{
  labelCopy = label;
  if (clips >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipComposition.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"numberOfClips <= 3"}];
  }

  v19.receiver = self;
  v19.super_class = _PXStoryConcreteClipComposition;
  v16 = [(_PXStoryConcreteClipComposition *)&v19 init];
  if (v16)
  {
    v16->_numberOfClips = clips;
    v16->_numberOfAssets = clips;
    v16->_edges[0] = edge;
    v16->_edges[1] = secondaryEdge;
    v16->_splitRatios[0] = ratio;
    v16->_splitRatios[1] = splitRatio;
    PXRectEdgeAxis();
  }

  return 0;
}

@end