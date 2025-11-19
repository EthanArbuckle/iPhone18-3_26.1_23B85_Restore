@interface TSUMediaUploadWarning
- (TSUMediaUploadWarning)initWithKind:(int64_t)a3 message:(id)a4 isFromUploader:(BOOL)a5;
@end

@implementation TSUMediaUploadWarning

- (TSUMediaUploadWarning)initWithKind:(int64_t)a3 message:(id)a4 isFromUploader:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = TSUMediaUploadWarning;
  result = [(TSUWarning *)&v7 initWithKind:a3 message:a4];
  if (result)
  {
    result->_isFromUploader = a5;
  }

  return result;
}

@end