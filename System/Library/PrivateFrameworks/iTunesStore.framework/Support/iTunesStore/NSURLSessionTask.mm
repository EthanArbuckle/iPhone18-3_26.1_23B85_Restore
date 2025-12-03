@interface NSURLSessionTask
- (int64_t)ITunesStoreCancelReason;
- (void)cancelWithITunesStoreReason:(int64_t)reason error:(id)error;
@end

@implementation NSURLSessionTask

- (void)cancelWithITunesStoreReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  value = [[NSNumber alloc] initWithInteger:reason];
  objc_setAssociatedObject(self, "com.apple.itunesstored.cancelError", errorCopy, 0x301);

  objc_setAssociatedObject(self, "com.apple.itunesstored.cancelReason", value, 0x301);
  [(NSURLSessionTask *)self cancel];
}

- (int64_t)ITunesStoreCancelReason
{
  v2 = objc_getAssociatedObject(self, "com.apple.itunesstored.cancelReason");
  integerValue = [v2 integerValue];

  return integerValue;
}

@end