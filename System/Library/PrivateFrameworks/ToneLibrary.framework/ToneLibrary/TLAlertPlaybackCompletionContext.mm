@interface TLAlertPlaybackCompletionContext
- (id)description;
@end

@implementation TLAlertPlaybackCompletionContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = NSStringFromTLAlertPlaybackCompletionType(self->_playbackCompletionType);
  [v6 appendFormat:@"; playbackCompletionType = %@", v7];

  error = self->_error;
  if (error)
  {
    v9 = [(NSError *)error tl_nonRedundantDescription];
    [v6 appendFormat:@"; error = %@", v9];
  }

  if (self->_completionHandler)
  {
    [v6 appendString:@"; completionHandler != NULL"];
  }

  [v6 appendString:@">"];

  return v6;
}

@end