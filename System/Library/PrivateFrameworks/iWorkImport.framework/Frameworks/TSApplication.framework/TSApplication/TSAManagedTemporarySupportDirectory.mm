@interface TSAManagedTemporarySupportDirectory
- (TSAManagedTemporarySupportDirectory)initWithURL:(id)a3;
@end

@implementation TSAManagedTemporarySupportDirectory

- (TSAManagedTemporarySupportDirectory)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSAManagedTemporarySupportDirectory;
  v7 = [(TSUManagedTemporaryDirectory *)&v11 initWithURL:v4];
  if (v7)
  {
    v8 = objc_msgSend_URLByAppendingPathComponent_(v4, v5, @"Support.bundle", v6);
    supportURL = v7->_supportURL;
    v7->_supportURL = v8;
  }

  return v7;
}

@end