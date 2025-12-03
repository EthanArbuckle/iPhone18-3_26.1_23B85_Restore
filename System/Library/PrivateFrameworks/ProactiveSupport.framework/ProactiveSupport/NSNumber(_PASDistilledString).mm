@interface NSNumber(_PASDistilledString)
- (id)_pas_revivedString;
@end

@implementation NSNumber(_PASDistilledString)

- (id)_pas_revivedString
{
  v2 = [self compare:&unk_1F1B2FF10];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v2 == -1)
  {
    v4 = [v3 initWithFormat:@"%lld", objc_msgSend(self, "longLongValue")];
  }

  else
  {
    v4 = [v3 initWithFormat:@"%llu", objc_msgSend(self, "unsignedLongLongValue")];
  }

  return v4;
}

@end