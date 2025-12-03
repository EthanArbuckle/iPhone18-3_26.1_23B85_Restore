@interface GQDTBooleanCell
- (__CFString)createStringValue;
@end

@implementation GQDTBooleanCell

- (__CFString)createStringValue
{
  bOOLValue = [(GQDTBooleanCell *)self BOOLValue];
  mProcessorBundle = self->mProcessorBundle;
  if (bOOLValue)
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