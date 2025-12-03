@interface TSUMediaUploadWarning
- (TSUMediaUploadWarning)initWithKind:(int64_t)kind message:(id)message isFromUploader:(BOOL)uploader;
@end

@implementation TSUMediaUploadWarning

- (TSUMediaUploadWarning)initWithKind:(int64_t)kind message:(id)message isFromUploader:(BOOL)uploader
{
  v7.receiver = self;
  v7.super_class = TSUMediaUploadWarning;
  result = [(TSUWarning *)&v7 initWithKind:kind message:message];
  if (result)
  {
    result->_isFromUploader = uploader;
  }

  return result;
}

@end