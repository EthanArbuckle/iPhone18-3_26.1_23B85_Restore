@interface TSAManagedTemporarySupportDirectory
- (TSAManagedTemporarySupportDirectory)initWithURL:(id)l;
@end

@implementation TSAManagedTemporarySupportDirectory

- (TSAManagedTemporarySupportDirectory)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = TSAManagedTemporarySupportDirectory;
  v7 = [(TSUManagedTemporaryDirectory *)&v11 initWithURL:lCopy];
  if (v7)
  {
    v8 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v5, @"Support.bundle", v6);
    supportURL = v7->_supportURL;
    v7->_supportURL = v8;
  }

  return v7;
}

@end