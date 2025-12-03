@interface _PXStoryPrecomposedTimelineSegment
- (_PXStoryPrecomposedTimelineSegment)initWithClipComposition:(id)composition transitionKind:(char)kind;
@end

@implementation _PXStoryPrecomposedTimelineSegment

- (_PXStoryPrecomposedTimelineSegment)initWithClipComposition:(id)composition transitionKind:(char)kind
{
  compositionCopy = composition;
  v11.receiver = self;
  v11.super_class = _PXStoryPrecomposedTimelineSegment;
  v8 = [(_PXStoryPrecomposedTimelineSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clipComposition, composition);
    v9->_transitionKind = kind;
  }

  return v9;
}

@end