@interface NSObject(REMHumanReadableIdentifier)
- (__CFString)rem_humanReadableIdentifier;
@end

@implementation NSObject(REMHumanReadableIdentifier)

- (__CFString)rem_humanReadableIdentifier
{
  v3 = ([self hash] % 0xF0uLL) | 0x1F300;
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v3 length:4 encoding:2617245952];
  if (!v1)
  {
    v1 = @"❓";
  }

  return v1;
}

@end