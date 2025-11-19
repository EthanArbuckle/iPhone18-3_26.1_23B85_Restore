@interface _PXStoryPrecomposedTimelineSegment
- (_PXStoryPrecomposedTimelineSegment)initWithClipComposition:(id)a3 transitionKind:(char)a4;
@end

@implementation _PXStoryPrecomposedTimelineSegment

- (_PXStoryPrecomposedTimelineSegment)initWithClipComposition:(id)a3 transitionKind:(char)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PXStoryPrecomposedTimelineSegment;
  v8 = [(_PXStoryPrecomposedTimelineSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clipComposition, a3);
    v9->_transitionKind = a4;
  }

  return v9;
}

@end