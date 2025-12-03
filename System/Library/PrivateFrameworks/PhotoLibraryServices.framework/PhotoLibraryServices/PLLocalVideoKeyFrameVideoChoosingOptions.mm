@interface PLLocalVideoKeyFrameVideoChoosingOptions
- (PLLocalVideoKeyFrameVideoChoosingOptions)initWithStreamingAllowed:(BOOL)allowed;
@end

@implementation PLLocalVideoKeyFrameVideoChoosingOptions

- (PLLocalVideoKeyFrameVideoChoosingOptions)initWithStreamingAllowed:(BOOL)allowed
{
  result = [(PLLocalVideoKeyFrameVideoChoosingOptions *)self init];
  if (result)
  {
    result->_streamingAllowed = allowed;
  }

  return result;
}

@end