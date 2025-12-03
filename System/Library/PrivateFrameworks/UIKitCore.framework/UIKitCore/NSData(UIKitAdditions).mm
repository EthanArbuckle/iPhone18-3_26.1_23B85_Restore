@interface NSData(UIKitAdditions)
- (id)_uiSaveContentsToTemporaryFile;
@end

@implementation NSData(UIKitAdditions)

- (id)_uiSaveContentsToTemporaryFile
{
  v5 = -1;
  v2 = _UITemporaryFileWithUniqueName(@"uidata", 0, &v5);
  if (v5 == -1)
  {
    v3 = 0;
  }

  else
  {
    write(v5, [self bytes], objc_msgSend(self, "length"));
    close(v5);
    v3 = v2;
  }

  return v3;
}

@end