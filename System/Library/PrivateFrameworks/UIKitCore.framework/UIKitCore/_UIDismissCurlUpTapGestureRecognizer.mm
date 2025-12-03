@interface _UIDismissCurlUpTapGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch forEvent:(id)event recognizerView:(id)view;
@end

@implementation _UIDismissCurlUpTapGestureRecognizer

- (BOOL)_shouldReceiveTouch:(id)touch forEvent:(id)event recognizerView:(id)view
{
  touchCopy = touch;
  eventCopy = event;
  viewCopy = view;
  if (_IsKindOfUIView(viewCopy))
  {
    v11 = viewCopy;
    [touchCopy locationInView:v11];
    v13 = v12;
    v15 = v14;
    [v11 bounds];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v20 = CGRectGetHeight(v29);
    [(_UIDismissCurlUpTapGestureRecognizer *)self _curlUpDY];
    if (v13 < 0.0 || (v24 = v21, v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, v13 > CGRectGetWidth(v30)) || v15 < 0.0)
    {
    }

    else
    {
      v25 = v20 - v24;
      v26 = v25 - v13 * tanf(0.17453);
      if (v26 >= 40.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 40.0;
      }

      if (v15 <= v27)
      {
        v28.receiver = self;
        v28.super_class = _UIDismissCurlUpTapGestureRecognizer;
        v22 = [(UIGestureRecognizer *)&v28 _shouldReceiveTouch:touchCopy forEvent:eventCopy recognizerView:v11];
        goto LABEL_5;
      }
    }
  }

  v22 = 0;
LABEL_5:

  return v22;
}

@end