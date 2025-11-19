@interface NSURLSessionTask
- (int64_t)ITunesStoreCancelReason;
- (void)cancelWithITunesStoreReason:(int64_t)a3 error:(id)a4;
@end

@implementation NSURLSessionTask

- (void)cancelWithITunesStoreReason:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  value = [[NSNumber alloc] initWithInteger:a3];
  objc_setAssociatedObject(self, "com.apple.itunesstored.cancelError", v6, 0x301);

  objc_setAssociatedObject(self, "com.apple.itunesstored.cancelReason", value, 0x301);
  [(NSURLSessionTask *)self cancel];
}

- (int64_t)ITunesStoreCancelReason
{
  v2 = objc_getAssociatedObject(self, "com.apple.itunesstored.cancelReason");
  v3 = [v2 integerValue];

  return v3;
}

@end