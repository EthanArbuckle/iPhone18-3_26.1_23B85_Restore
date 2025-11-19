@interface _PXStoryConcreteClipComposition
- (_PXStoryConcreteClipComposition)initWithNumberOfClips:(int64_t)a3 primaryEdge:(unsigned int)a4 splitRatio:(double)a5 secondaryEdge:(unsigned int)a6 splitRatio:(double)a7 label:(id)a8;
- (id)description;
@end

@implementation _PXStoryConcreteClipComposition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_PXStoryConcreteClipComposition *)self label];
  v7 = [v3 initWithFormat:@"<%@: %p; %@>", v5, self, v6];

  return v7;
}

- (_PXStoryConcreteClipComposition)initWithNumberOfClips:(int64_t)a3 primaryEdge:(unsigned int)a4 splitRatio:(double)a5 secondaryEdge:(unsigned int)a6 splitRatio:(double)a7 label:(id)a8
{
  v15 = a8;
  if (a3 >= 4)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXStoryClipComposition.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"numberOfClips <= 3"}];
  }

  v19.receiver = self;
  v19.super_class = _PXStoryConcreteClipComposition;
  v16 = [(_PXStoryConcreteClipComposition *)&v19 init];
  if (v16)
  {
    v16->_numberOfClips = a3;
    v16->_numberOfAssets = a3;
    v16->_edges[0] = a4;
    v16->_edges[1] = a6;
    v16->_splitRatios[0] = a5;
    v16->_splitRatios[1] = a7;
    PXRectEdgeAxis();
  }

  return 0;
}

@end