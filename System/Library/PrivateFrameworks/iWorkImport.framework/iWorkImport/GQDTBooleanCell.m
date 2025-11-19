@interface GQDTBooleanCell
- (__CFString)createStringValue;
@end

@implementation GQDTBooleanCell

- (__CFString)createStringValue
{
  v3 = [(GQDTBooleanCell *)self BOOLValue];
  mProcessorBundle = self->mProcessorBundle;
  if (v3)
  {
    v5 = @"TRUE";
  }

  else
  {
    v5 = @"FALSE";
  }

  return CFBundleCopyLocalizedString(mProcessorBundle, v5, v5, 0);
}

@end