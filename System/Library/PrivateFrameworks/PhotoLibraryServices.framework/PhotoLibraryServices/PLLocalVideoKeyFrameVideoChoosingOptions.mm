@interface PLLocalVideoKeyFrameVideoChoosingOptions
- (PLLocalVideoKeyFrameVideoChoosingOptions)initWithStreamingAllowed:(BOOL)a3;
@end

@implementation PLLocalVideoKeyFrameVideoChoosingOptions

- (PLLocalVideoKeyFrameVideoChoosingOptions)initWithStreamingAllowed:(BOOL)a3
{
  result = [(PLLocalVideoKeyFrameVideoChoosingOptions *)self init];
  if (result)
  {
    result->_streamingAllowed = a3;
  }

  return result;
}

@end